import argparse

import numpy as np
import re
import os
import subprocess

from gpu_common import GPUArchitecture
from PTXAnalyzer import PTXAnalyzer
from time_model import HongKimExecutionTimeModel

import torch
from torch.utils.cpp_extension import load_inline

def get_launch_func(kernel_source_path):
    # 读取你原来的 .cu 文件内容
    with open(kernel_source_path, 'r') as f:
        cuda_source = f.read()

    # 定义 C++ 中间层代码：它接收指针并启动内核
    cpp_source = """
    void launch_add_rmsnorm(
        long y_ptr, long res_ptr, 
        long s_b1, long s_n1, long s_b2, long s_n2,
        long a_ptr, long s_ba, long s_na,
        long b_ptr, long s_bb, long s_nb,
        long w_ptr, long nhead, long dim, float eps,
        int grid_x, int block_x) {

        // 将 long 类型的地址转回物理指针
        float* y = (float*)y_ptr;
        float* res = (float*)res_ptr;
        float* a = (float*)a_ptr;
        float* b = (float*)b_ptr;
        float* w = (float*)w_ptr;

        // 3. 调用内核函数
        // 注意：根据 add_rms_norm_nvidia.cu 第 11 行，
        // 这里需要传递模板参数 <BLOCK_SIZE, Tcompute, Tdata, Tweight>
        // 为了方便测试，我们这里假设 T=float，且 BLOCK_SIZE 匹配传入的 block_x
        // 实际上在 BI-V150 上通常需要根据 block_x 动态派发，
        // 这里先展示一个针对当前 block_x 的调用方式（如果 block_x 是常数或预定义的）：
        
        // 简化的调用方式（确保内核名匹配）：
        add_rmsnormKernel<1024, float, float, float><<<grid, block>>>(
            y, res, s_b1, s_n1, s_b2, s_n2, a, s_ba, s_na, b, s_bb, s_nb, w, nhead, dim, eps
        );
    """

    # 动态编译并加载
    # extra_cuda_cflags=["-x", "ivcore"] 是天数智芯 ixcc 的关键参数
    custom_module = load_inline(
        name='bi_v150_launcher',
        cpp_sources=[cpp_source],
        cuda_sources=[cuda_source],
        functions=['launch_add_rmsnorm'],
        extra_cuda_cflags=["-x", "ivcore", "-I/usr/local/corex/include"]
    )

    return custom_module.launch_add_rmsnorm

def compile_kernel(kernel_path: str, arch_options: list):
    # 1. 确定输出路径
    ptx_path = kernel_path + ".ptx"
    # 2. 构建 ixcc 编译命令
    cmd = ["ixcc", "--ptx", "-v"] + arch_options + [kernel_path, "-o", ptx_path]

    try:
        process = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        stdout, stderr = process.communicate()
        compile_log = stdout + stderr
        print(compile_log)

        if process.returncode != 0:
            raise RuntimeError(f"ixcc 编译失败: {stderr}")

        with open(ptx_path, 'r') as f:
            ptx_str = f.read()

        m = re.search(r"\.entry\s+(\w+)", ptx_str)
        kernel_name = m.group(1) if m else "unknown_kernel"

        return None, ptx_str, compile_log, kernel_name

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

        batch_size = 4
        nhead = 32
        dim = 128
        data = prepare_data_torch(batch_size, dim, nhead)
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
        print(f"Avg time: {time_ms:.3f} ns   est_time_ns:{est_time_ns:.3f} ns\n\n\n")

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





