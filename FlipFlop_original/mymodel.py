import sys
import math
import pycuda.autoinit
import pycuda.driver as cuda
from pycuda.compiler import SourceModule, compile
import numpy as np
from typing import Dict, Tuple
import re
from dataclasses import dataclass
import os
import json

from gpu_common import GPUArchitecture
from PTXAnalyzer import PTXAnalyzer
from time_model import HongKimExecutionTimeModel

def compile_kernel(kernel_path: str, arch: GPUArchitecture, arch_options:str):
    with open(kernel_path, 'r') as f:
        source = f.read()
    cc = arch.compute_capability
    arch_opt = arch_options + [ 
        f"-arch=sm_{cc[0]}{cc[1]}",
        "--ptxas-options=-v"
    ]
    ptx_bytes = compile(source, target="ptx", options=arch_opt, no_extern_c=True)
    ptx_str = ptx_bytes.decode()
    m = re.search(r"\.entry\s+(\w+)", ptx_str)
    if not m:
        raise RuntimeError("No .entry <kernel> found in PTX!")
    with open(kernel_path+".ptx",'w') as ff:
        ff.write(ptx_str)
    
    mod = SourceModule(source, options=arch_opt, no_extern_c=True)
    kernel_name = m.group(1)
    compile_log = getattr(mod, "_compile_log", "")
    
    return mod, ptx_str, compile_log, kernel_name


def benchmark_kernel(kernel_func, args, grid:Tuple[int,int], block:Tuple[int,int], runs:int=50)->float:    # 转换为 3D 元组以适配 PyCUDA
    grid_3d = (grid[0], grid[1], 1)
    block_3d = (block[0], block[1], 1)
    start = cuda.Event()
    end = cuda.Event()

    for _ in range(10):
        kernel_func(*args, block=block_3d, grid=grid_3d)
    cuda.Context.synchronize()

    start.record()
    for _ in range(runs):
        kernel_func(*args, block=block_3d, grid=grid_3d)
    end.record()
    end.synchronize()

    total_ms = start.time_till(end)
    avg_ns = (total_ms * 1e6) / runs
    return float(avg_ns)

#############################################################################
# 5) MAIN
#############################################################################

if __name__=="__main__":
    if len(sys.argv)!=6:
        print("Usage: python time_model.py <kernel.cu> <grid_x> <block_x> <data_size> <runs>")
        sys.exit(1)

    kernel_path= sys.argv[1]
    grid_size= int(sys.argv[2])
    block_size= int(sys.argv[3])
    data_size= int(sys.argv[4])
    runs= int(sys.argv[5])

    # 1) Create the arch
    arch = GPUArchitecture(device_id=0,calibration_file="calibration.json")
    (maj, minr) = arch.compute_capability

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
    ]

    # 2) Compile
    mod, ptx, ptx_log, kernel_name = compile_kernel(kernel_path, arch, arch_options)
    kernel_func= mod.get_function(kernel_name)

    # 3) Prepare data
    a_np= np.random.randn(data_size).astype(np.float32)
    b_np= np.random.randn(data_size).astype(np.float32)
    d_a= cuda.mem_alloc(a_np.nbytes)
    d_b= cuda.mem_alloc(b_np.nbytes)
    d_c= cuda.mem_alloc(a_np.nbytes)
    cuda.memcpy_htod(d_a,a_np)
    cuda.memcpy_htod(d_b,b_np)
    args= [d_a,d_b,d_c, np.int32(data_size)]

    # 4) PTX analysis
    analysis_obj= PTXAnalyzer(ptx,ptx_log,arch,block_size,1,{})
    analysis= analysis_obj.analyze()

    # 5) Construct the estimator & estimate
    estimator = HongKimExecutionTimeModel(arch, analysis, (data_size/block_size,1), (block_size,1))
    estimated_ns= estimator.estimate_time_ns()

    # 6) Actual benchmark
    actual_ns= benchmark_kernel(kernel_func, args, (grid_size,1), (block_size,1), runs)

    diff= abs(estimated_ns- actual_ns)/ max(actual_ns,1e-9)*100.0
    print(f"Kernel: {kernel_name}")
    print(f"EstimatedTime(ns): {estimated_ns:.2f}")
    print(f"ActualTime(ns):    {actual_ns:.2f}")
    print(f"Diff(%%):          {diff:.2f}")
