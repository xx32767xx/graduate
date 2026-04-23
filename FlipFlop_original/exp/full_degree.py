import torch
from torch.utils.cpp_extension import load_inline
import numpy as np

# 1. 定义测试内核：通过大量正弦计算增加计算压力，使 SM 饱和效应更明显
cuda_source = """
__global__ void saturation_test(float *out) {
    // 增加计算压力，确保指令调度成为瓶颈，便于观察饱和度影响
    float val = 0.0f;
    for(int i=0; i<10000; i++) {
        val += sinf((float)i); 
    }
    // 每个 Block 写入对应位置
    out[blockIdx.x] = val;
}

void launch_saturation_test(torch::Tensor out, int grid_size, int block_size) {
    saturation_test<<<grid_size, block_size>>>(out.data_ptr<float>());
}
"""

cpp_source = "void launch_saturation_test(torch::Tensor out, int grid_size, int block_size);"

# 2. 编译加载 (适配天数智芯 CoreX 路径)
custom_kernel = load_inline(
    name='saturation_test_ext',
    cpp_sources=[cpp_source],
    cuda_sources=[cuda_source],
    functions=['launch_saturation_test'],
    extra_cuda_cflags=["-x", "ivcore", "-I/usr/local/corex-4.3.0/include"]
)


def run_experiment(grid_size):
    # 分配输出空间
    out = torch.empty(grid_size, device='cuda', dtype=torch.float32)

    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)

    # Warmup 预热
    custom_kernel.launch_saturation_test(out, grid_size, 128)
    torch.cuda.synchronize()

    start.record()
    # 执行内核
    custom_kernel.launch_saturation_test(out, grid_size, 128)
    end.record()

    torch.cuda.synchronize()
    return start.elapsed_time(end)  # 单位：ms


if __name__ == "__main__":
    # 天数智芯 BI-V150 拥有 80 个计算单元 (CU)
    # 测试关键节点：少于 CU 数、等于 CU 数、CU 数的整数倍、非整数倍
    cu_count = 80
    test_grids = [1, 10,20,30,40,60, 80,100, 120,140, 160, 180,200, 240, 280, 320]

    print(f"{'Grid Size':<12} | {'Total Time (ms)':<18} | {'Avg Per Block (ms)':<18}")
    print("-" * 55)

    for g in test_grids:
        t = run_experiment(g)
        avg_per_block = t / g
        print(f"{g:<12} | {t:<18.4f} | {avg_per_block:<18.4f}")