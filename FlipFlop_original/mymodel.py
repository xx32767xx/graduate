import argparse

import kernel_tuner
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

def compile_kernel(kernel_path: str, arch_options:list[str]):
    with open(kernel_path, 'r') as f:
        source = f.read()

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


def prepare_kernel_args(batch_size, seq_length, dim_feature, nhead):
    """Generate kernel arguments for given configuration"""
    scale = np.float32(1.0 / np.sqrt(dim_feature // nhead))

    q = np.random.randn(batch_size, dim_feature).astype(np.float32)
    k = np.random.randn(batch_size, seq_length, dim_feature).astype(np.float32)
    v = np.random.randn(batch_size, seq_length, dim_feature).astype(np.float32)
    out = np.zeros_like(q)

    return [
        q, k, v,
        np.int32(batch_size),
        np.int32(seq_length),
        np.int32(dim_feature),
        np.int32(dim_feature),
        np.int32(nhead),
        scale,
        np.int32(64),  # threshold
        out,
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
    """Run energy model predictions and measurements for all valid block sizes"""
    (maj, minr) = kernel_arch.compute_capability
    arch_options = [
        f"-arch=sm_{maj}{minr}",
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

    nvml_observer = NVMLObserver(["nvml_energy", "nvml_power"])
    dim_feature = nhead * dim_per_head
    kernel_args = prepare_kernel_args(batch_size, seq_length, dim_feature, nhead)
    block_combos = generate_block_combinations()
    bench_results = []
    shared_mem_size = (dim_per_head + seq_length) * 4
    with open(kernel_path) as f:
        kernel_src = f.read()

    for block_x, block_y in block_combos:
        mod, ptx_str, ptxas_log, kname = compile_kernel(kernel_path,arch_options)
        analyzer = PTXAnalyzer(ptx_str, ptxas_log, kernel_arch, block_x, block_y, {})
        analysis = analyzer.analyze()

        time_model = HongKimExecutionTimeModel(
            kernel_arch, analysis, (batch_size * nhead, 1), (block_x, block_y))
        est_time_ns = time_model.estimate_time_ns()

        result, _ = kernel_tuner.tune_kernel(
            kernel_name=kname,
            kernel_source=kernel_src,
            problem_size=(batch_size * nhead, 1),
            arguments=kernel_args,
            tune_params={"block_size_x": [block_x], "block_size_y": [block_y]},
            compiler_options=arch_options,
            smem_args={"size": shared_mem_size},
            observers=[nvml_observer],
            metrics={"time_ns": lambda p: p["time"] * 1e6},
            iterations=iterations,
            verbose=False
        )

        entry = {
            "seq_len": seq_length,
            "block_x": block_x,
            "block_y": block_y,
            "thread_count": block_x * block_y,
            "predicted_time_ns": est_time_ns,
            "predicted_power": 0,
            "actual_time_ns": result[0]["time_ns"],
            "actual_power": np.mean(result[0]["nvml_power"]),
            **analysis.__dict__
        }

        results.append(entry)

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
        results = run_configuration( args.kernel_file, arch, args.batch_size, seq_len,
            args.nhead, args.dim_per_head, args.iterations
        )
        print(results)




