import argparse

import numpy as np
import re
import os

os.environ['TORCH_CUDA_ARCH_LIST'] = 'ivcore11'
os.environ['TORCH_NVCC_FLAGS'] = '-x ivcore --cuda-gpu-arch=ivcore11'

import subprocess
import torch
from torch.utils.cpp_extension import load_inline


from gpu_common import GPUArchitecture
from PTXAnalyzer import PTXAnalyzer
from time_model import HongKimExecutionTimeModel

# ============ 禁用编译缓存，使用独立临时目录 ============
import tempfile
import atexit

_CALIB_BUILD_DIR = tempfile.mkdtemp(prefix="calib_run_")
os.environ['TORCH_EXTENSIONS_DIR'] = _CALIB_BUILD_DIR

def _cleanup_build_dir():
    import shutil
    shutil.rmtree(_CALIB_BUILD_DIR, ignore_errors=True)
atexit.register(_cleanup_build_dir)

print(f"[INFO] Using temp build directory: {_CALIB_BUILD_DIR}")
# ========================================================


def get_launch_func(kernel_source_path):
    import subprocess, os, re

    kernel_dir = os.path.dirname(os.path.abspath(kernel_source_path))
    # kernel_dir = .../add_rms_norm/nvidia/
    cuda_kernel_path = os.path.join(os.path.dirname(kernel_dir), "cuda", "kernel.cuh")
    # cuda_kernel_path = .../add_rms_norm/cuda/kernel.cuh

    # 直接 include cuda/kernel.cuh，只实例化 float 版本
    cuda_source = f'''
    #include <cuda_runtime.h>
    #include <cub/block/block_reduce.cuh>
    #include "{cuda_kernel_path}"

    // 只实例化 float 版本（避开 half/bf16 兼容问题）
    template __device__ void add_rmsnormBlock<1024, float, float, float>(
        float *__restrict__ y,
        float *__restrict__ residual_out,
        ptrdiff_t, ptrdiff_t, ptrdiff_t, ptrdiff_t,
        const float *__restrict__ a,
        ptrdiff_t, ptrdiff_t,
        const float *__restrict__ b,
        ptrdiff_t, ptrdiff_t,
        const float *__restrict__ w,
        size_t, size_t, float);

    __global__ void add_rmsnorm_float_kernel(
        float *__restrict__ y,
        float *__restrict__ residual_out,
        ptrdiff_t stride_y_batch,
        ptrdiff_t stride_y_nhead,
        ptrdiff_t stride_residual_out_batch,
        ptrdiff_t stride_residual_out_nhead,
        const float *__restrict__ a,
        ptrdiff_t stride_a_batch,
        ptrdiff_t stride_a_nhead,
        const float *__restrict__ b,
        ptrdiff_t stride_b_batch,
        ptrdiff_t stride_b_nhead,
        const float *__restrict__ w,
        size_t nhead,
        size_t dim,
        float epsilon) {{

        add_rmsnormBlock<1024, float, float, float>(
            y, residual_out,
            stride_y_batch, stride_y_nhead,
            stride_residual_out_batch, stride_residual_out_nhead,
            a, stride_a_batch, stride_a_nhead,
            b, stride_b_batch, stride_b_nhead,
            w, nhead, dim, epsilon);
    }}

    extern "C" void launch_add_rmsnorm(
        long y_ptr, long res_ptr,
        long s_b1, long s_n1, long s_b2, long s_n2,
        long a_ptr, long s_ba, long s_na,
        long b_ptr, long s_bb, long s_nb,
        long w_ptr, long nhead, long dim, float eps,
        int grid_x, int block_x)
    {{
        add_rmsnorm_float_kernel<<<grid_x, block_x>>>(
            (float*)y_ptr, (float*)res_ptr,
            s_b1, s_n1, s_b2, s_n2,
            (float*)a_ptr, s_ba, s_na,
            (float*)b_ptr, s_bb, s_nb,
            (float*)w_ptr,
            nhead, dim, eps
        );
    }}
    '''

    cpp_source = """
    extern "C" void launch_add_rmsnorm(
        long y_ptr, long res_ptr,
        long s_b1, long s_n1, long s_b2, long s_n2,
        long a_ptr, long s_ba, long s_na,
        long b_ptr, long s_bb, long s_nb,
        long w_ptr, long nhead, long dim, float eps,
        int grid_x, int block_x);
    """

    # 包含路径：cuda/ 目录 + cub 所在目录
    cuda_dir = os.path.dirname(cuda_kernel_path)
    cub_include = "/usr/local/corex-4.3.0/include/cub"

    custom_module = load_inline(
        name='rmsnorm_float_clean',
        cpp_sources=[cpp_source],
        cuda_sources=[cuda_source],
        functions=['launch_add_rmsnorm'],
        extra_cuda_cflags=[
            "-x", "ivcore",
            "--cuda-gpu-arch=ivcore11",
            "-O3",
            "-I", cuda_dir,
            "-I", cub_include,
        ],
        verbose=True
    )

    return custom_module.launch_add_rmsnorm


def compile_kernel(kernel_path: str, arch_options: list):
    ptx_path = kernel_path + ".ptx"
    cmd = ["nvcc", "--ptx", "-v"] + arch_options + [kernel_path, "-o", ptx_path]

    try:
        process = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        stdout, stderr = process.communicate()
        compile_log = stdout + stderr
        print(compile_log)

        if process.returncode != 0:
            raise RuntimeError(f"nvcc 编译失败: {stderr}")

        with open(ptx_path, 'r') as f:
            ptx_str = f.read()

        m = re.search(r"\.entry\s+(\w+)", ptx_str)
        kernel_name = m.group(1) if m else "unknown_kernel"

        return None, ptx_str, compile_log, kernel_name

    except Exception as e:
        print(f"编译过程中出现错误: {e}")
        raise

    except Exception as e:
        print(f"编译过程中出现错误: {e}")
        raise


def generate_block_combinations():
    block_sizes = []
    for x in [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]:
        for y in [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]:
            total = x * y
            if 32 <= total <= 1024 and total % 32 == 0:
                block_sizes.append((x, y))
    return block_sizes

def prepare_data_torch(batch_size, dim, nhead):
    a = np.random.randn(batch_size, nhead, dim).astype(np.float32)
    b = np.random.randn(batch_size, nhead, dim).astype(np.float32)
    w = np.random.randn(dim).astype(np.float32)
    y = np.zeros_like(a)
    residual_out = np.zeros_like(a)

    a_gpu = torch.from_numpy(a).cuda()
    b_gpu = torch.from_numpy(b).cuda()
    w_gpu = torch.from_numpy(w).cuda()
    y_gpu = torch.from_numpy(y).cuda()
    res_gpu = torch.from_numpy(residual_out).cuda()

    stride_batch = a_gpu.stride(0)
    stride_nhead = a_gpu.stride(1)
    epsilon = np.float32(1e-5)

    return {
        "ptrs": [
            y_gpu.data_ptr(), res_gpu.data_ptr(),
            stride_batch, stride_nhead, stride_batch, stride_nhead,
            a_gpu.data_ptr(), stride_batch, stride_nhead,
            b_gpu.data_ptr(), stride_batch, stride_nhead,
            w_gpu.data_ptr(), nhead, dim, epsilon  # epsilon
        ],
        "tensors": [a_gpu, b_gpu, w_gpu, y_gpu, res_gpu]
    }

def run_configuration(kernel_path, kernel_arch, batch_size, seq_length, nhead, dim_per_head, iterations):
    arch_options = [
        "--ptxas-options=-v",
        "-std=c++14",
        "--compiler-options=-fPIC",
    ]
    kernel_dir = os.path.dirname(os.path.abspath(kernel_path))
    project_root = os.path.abspath(os.path.join(kernel_dir, "../../../../.."))
    arch_options += [
        f"-I{kernel_dir}",
        f"-I{project_root}/include",
        f"-I{project_root}/src",
        "-I/usr/local/cuda/include",
        "-I/usr/local/cuda/include/cub",
    ]
    launch_func = get_launch_func(args.kernel_file)
    block_combos = generate_block_combinations()
    bench_results = []
    mod, ptx_str, ptxas_log, kname = compile_kernel(kernel_path,arch_options)

    for block_x, block_y in block_combos:
        print(f"blocks: {block_x}, {block_y}  \n\n\n")

        analyzer = PTXAnalyzer(ptx_str, ptxas_log, kernel_arch, block_x, block_y, {})
        analysis = analyzer.analyze()
        print(analysis)
        time_model = HongKimExecutionTimeModel(
            kernel_arch, analysis, (batch_size * nhead, 1), (block_x, block_y))
        est_time_ns = time_model.estimate_time_ns()

        data = prepare_data_torch(batch_size, dim_per_head, nhead)
        grid_size = int(batch_size * nhead)

        for _ in range(50):
            launch_func(*data["ptrs"], grid_size, block_x)

        start = torch.cuda.Event(enable_timing=True)
        end = torch.cuda.Event(enable_timing=True)
        torch.cuda.synchronize()
        start.record()
        for _ in range(50):
            launch_func(*data["ptrs"], grid_size, block_x)
        end.record()
        torch.cuda.synchronize()
        time_ms = start.elapsed_time(end) / 50 * 1e6
        print(f"time: {est_time_ns:.3f} ms")
        print(f"Avg time: {time_ms:.3f} ns \n\n\n")

    return bench_results



#############################################################################
# 5) MAIN
#############################################################################

if __name__=="__main__":

    parser = argparse.ArgumentParser(description="RQ3 Comprehensive Energy Analysis")
    parser.add_argument("--kernel_file", required=True, help="Path to CUDA kernel")
    parser.add_argument("--batch_size", type=int, default=4)
    parser.add_argument("--seq_lens", type=str, help="Comma-separated sequence lengths")
    parser.add_argument("--nhead", type=int, default=16)
    parser.add_argument("--dim_per_head", type=int, default=256)
    parser.add_argument("--calib", required=True, help="Calibration file")
    parser.add_argument("--csv_out", required=True, help="Output CSV path")
    parser.add_argument("--iterations", type=int, default=5)
    args = parser.parse_args()

    arch = GPUArchitecture( device_id = 0, calibration_file=args.calib)
    seq_lens = [int(s) for s in args.seq_lens.split(",")] if args.seq_lens else [128]


    for seq_len in seq_lens:
        print(f"Processing seq_len={seq_len}...")
        run_configuration(args.kernel_file, arch, args.batch_size, seq_len,
            args.nhead, args.dim_per_head, args.iterations
        )





