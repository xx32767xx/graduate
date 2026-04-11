import argparse

import pycuda.driver as cuda
from kernel_tuner.observers.nvml import NVMLObserver
from pycuda.compiler import SourceModule, compile
import numpy as np
from typing import Tuple
import re
import os

from gpu_common import GPUArchitecture
from PTXAnalyzer import PTXAnalyzer
from time_model import HongKimExecutionTimeModel
import pycuda.autoinit
from pycuda.compiler import SourceModule


def compile_kernel(kernel_path: str, arch_options:list[str]):
    with open(kernel_path, 'r') as f:
        source = f.read()

    ctx = cuda.Context.get_current()
    if ctx is None:
        dev = cuda.Device(0)
        ctx = dev.make_context()

    ctx.push()
    try:
        # 这里的代码要比 try 多往后缩进一层
        with open(kernel_path, 'r') as f:
            source = f.read()
        mod = SourceModule(source, options=arch_options, no_extern_c=True)
        # ... 其他逻辑
    finally:
        ctx.pop()

    ptx_bytes = compile(source, target="ptx", options=arch_options, no_extern_c=True)
    ptx_str = ptx_bytes.decode()
    m = re.search(r"\.entry\s+(\w+)", ptx_str)
    if not m:
        raise RuntimeError("No .entry <kernel> found in PTX!")
    with open(kernel_path+".ptx",'w') as ff:
        ff.write(ptx_str)
    
    mod = SourceModule(source, options=arch_options, no_extern_c=True)
    kernel_name = m.group(1)
    compile_log = getattr(mod, "_compile_log", "")
    
    return mod, ptx_str, compile_log, kernel_name

def prepare_add_rmsnorm_args(batch_size, dim, nhead):
    a = np.random.randn(batch_size, nhead, dim).astype(np.float32)
    b = np.random.randn(batch_size, nhead, dim).astype(np.float32)
    weight = np.random.randn(dim).astype(np.float32)

    # 2. 准备输出张量占位符
    y = np.zeros_like(a)
    residual_out = np.zeros_like(a)

    # 3. 计算步长 (Strides) - 对应源码中的 _info.a_strides 等
    # 假设内存是连续排布的 (Contiguous)
    stride_batch = np.int64(nhead * dim)
    stride_nhead = np.int64(dim)

    # 4. 配置参数
    epsilon = np.float32(1e-5)

    return [
        y,  # 输出结果
        residual_out,  # 相加后的残差输出
        stride_batch,  # stride_y_batch
        stride_nhead,  # stride_y_nhead
        stride_batch,  # stride_residual_out_batch
        stride_nhead,  # stride_residual_out_nhead
        a,  # 输入 a
        stride_batch,  # stride_a_batch
        stride_nhead,  # stride_a_nhead
        b,  # 输入 b
        stride_batch,  # stride_b_batch
        stride_nhead,  # stride_b_nhead
        weight,  # 权重 w
        np.int32(nhead),
        np.int32(dim),
        epsilon
    ]

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
        "-std=c++17",
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
    kernel = mod.get_function(kname)

    for block_x, block_y in block_combos:
        analyzer = PTXAnalyzer(ptx_str, ptxas_log, kernel_arch, block_x, block_y, {})
        analysis = analyzer.analyze()

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
        stride_batch = np.int64(nhead * dim)
        stride_nhead = np.int64(dim)
        epsilon = np.float32(1e-5)

        a_gpu = cuda.mem_alloc(a.nbytes)
        b_gpu = cuda.mem_alloc(b.nbytes)
        w_gpu = cuda.mem_alloc(w.nbytes)

        y_gpu = cuda.mem_alloc(y.nbytes)
        res_gpu = cuda.mem_alloc(residual_out.nbytes)

        cuda.memcpy_htod(a_gpu, a)
        cuda.memcpy_htod(b_gpu, b)
        cuda.memcpy_htod(w_gpu, w)

        start = cuda.Event()
        end = cuda.Event()

        kernel.prepare("PPqqqqPPqqPPqqPqqf")
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
        print(f"Avg time: {time_ms:.3f} ns   est_time_ns:{est_time_ns:.3f} ns")

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





