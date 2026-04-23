import torch
from torch.utils.cpp_extension import load_inline
import numpy as np
import time

# 1. 定义 CUDA 源代码 (保持逻辑与原 2d_scale.py 一致)
cuda_source = """
__global__ void shape_test_kernel(float *dest, float *src, int width, int height) {
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;

    if (x < width && y < height) {
        int idx = y * width + x;
        float val = src[idx];
        // 增加计算量以验证形状影响
        for(int i = 0; i < 10; i++) {
            val = val * 1.00001f + 0.00001f;
        }
        dest[idx] = val;
    }
}

void launch_shape_test(torch::Tensor dest, torch::Tensor src, int width, int height, int gx, int gy, int bx, int by) {
    dim3 grid(gx, gy);
    dim3 block(bx, by);

    shape_test_kernel<<<grid, block>>>(
        dest.data_ptr<float>(),
        src.data_ptr<float>(),
        width,
        height
    );
}
"""

cpp_source = "void launch_shape_test(torch::Tensor dest, torch::Tensor src, int width, int height, int gx, int gy, int bx, int by);"

# 2. 编译并加载内核 (针对天数智芯配置)
# 使用你在 run.sh 中确认的路径
custom_kernel = load_inline(
    name='shape_test_extension',
    cpp_sources=[cpp_source],
    cuda_sources=[cuda_source],
    functions=['launch_shape_test'],
    extra_cuda_cflags=["-x", "ivcore", "-I/usr/local/corex-4.3.0/include"]
)


def profile_shape(bx, by, width=4096, height=4096):
    # 3. 准备 PyTorch 张量
    a_gpu = torch.randn(width, height, device='cuda', dtype=torch.float32)
    dest_gpu = torch.empty_like(a_gpu)

    # 计算 Grid 尺寸
    gx = (width + bx - 1) // bx
    gy = (height + by - 1) // by

    # 4. 测量时间
    start_event = torch.cuda.Event(enable_timing=True)
    end_event = torch.cuda.Event(enable_timing=True)

    # Warmup
    for _ in range(3):
        custom_kernel.launch_shape_test(dest_gpu, a_gpu, width, height, gx, gy, bx, by)

    torch.cuda.synchronize()
    start_event.record()

    iterations = 10
    for _ in range(iterations):
        custom_kernel.launch_shape_test(dest_gpu, a_gpu, width, height, gx, gy, bx, by)

    end_event.record()
    torch.cuda.synchronize()

    # 单位：毫秒
    avg_time = start_event.elapsed_time(end_event) / iterations
    return avg_time


if __name__ == "__main__":
    # 示例运行
    block_configs = [(2,512),(4,256),(8,128),(16, 64), (32, 32), (64, 16),(128,8),(256,4),(512,2)]
    for bx, by in block_configs:
        t = profile_shape(bx, by)
        print(f"Block({bx}, {by}) - Avg Time: {t:.4f} ms")