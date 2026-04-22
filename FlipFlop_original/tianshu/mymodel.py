import argparse

import numpy as np
import re
import os
import subprocess

from gpu_common import GPUArchitecture
from PTXAnalyzer import PTXAnalyzer
from time_model import HongKimExecutionTimeModel


def compile_kernel(kernel_path: str, arch_options: list):
    # 1. 确定输出路径
    ptx_path = kernel_path + ".ptx"

    # 2. 构建 ixcc 编译命令
    cmd = ["ixcc", "--ptx", "-v"] + arch_options + [kernel_path, "-o", ptx_path]

    try:
        # 捕获编译器输出以获取 ptxas_log (compile_log)
        process = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        stdout, stderr = process.communicate()
        compile_log = stdout + stderr

        if process.returncode != 0:
            raise RuntimeError(f"ixcc 编译失败: {stderr}")

        with open(ptx_path, 'r') as f:
            ptx_str = f.read()

        m = re.search(r"\.entry\s+(\w+)", ptx_str)
        kernel_name = m.group(1) if m else "unknown_kernel"

        # mod 返回 None，因为我们后续用 PyTorch 运行，不在这里加载
        return None, ptx_str, compile_log, kernel_name

    except Exception as e:
        print(f"编译过程中出现错误: {e}")
        raise


def generate_block_combinations():
    """Generate all valid block size combinations based on restrictions"""
    block_sizes = []
    for x in [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]:
        for y in [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]:
            total = x * y
            if 32 <= total <= 1024 and total % 32 == 0:
                block_sizes.append((x, y))
    return block_sizes

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
        a = np.random.randn(batch_size, nhead, dim).astype(np.float32)
        b = np.random.randn(batch_size, nhead, dim).astype(np.float32)
        w = np.random.randn(dim).astype(np.float32)
        y = np.zeros_like(a)
        residual_out = np.zeros_like(a)
        a_gpu = cuda.mem_alloc(a.nbytes)
        b_gpu = cuda.mem_alloc(b.nbytes)
        w_gpu = cuda.mem_alloc(w.nbytes)
        y_gpu = cuda.mem_alloc(y.nbytes)
        res_gpu = cuda.mem_alloc(residual_out.nbytes)
        stride_batch = np.int64(nhead * dim)
        stride_nhead = np.int64(dim)
        epsilon = np.float32(1e-5)

        cuda.memcpy_htod(a_gpu, a)
        cuda.memcpy_htod(b_gpu, b)
        cuda.memcpy_htod(w_gpu, w)

        start = cuda.Event()
        end = cuda.Event()

        kernel.prepare("PPqqqqPqqPqqPqqf")
        grid_dim = (int(batch_size * nhead), 1)
        block_dim = (int(block_x), int(block_y), 1)

        kernel_args = (
            y_gpu, res_gpu,  # Tdata* y, Tdata* residual_out
            stride_batch, stride_nhead,  # ptrdiff_t stride_y_batch, stride_y_nhead
            stride_batch, stride_nhead,  # ptrdiff_t stride_residual_out_batch, nhead
            a_gpu, stride_batch, stride_nhead,  # const Tdata* a, strides...
            b_gpu, stride_batch, stride_nhead,  # const Tdata* b, strides...
            w_gpu,  # const Tweight* w
            np.int64(nhead),  # size_t nhead
            np.int64(dim),  # size_t dim
            np.float32(epsilon)  # float epsilon
        )

        for _ in range(10):
            kernel.prepared_call(grid_dim, block_dim, *kernel_args)

        start.record()
        for _ in range(50):
            kernel.prepared_call(grid_dim, block_dim, *kernel_args)
        end.record()
        end.synchronize()

        time_ms = start.time_till(end) / 50 * 1e6
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





