import pycuda.autoinit
import pycuda.driver as cuda
from pycuda.compiler import SourceModule
import numpy as np
import time

# CUDA 核函数：简单的二维矩阵元素缩放
# 保持总计算量不变，通过调整 blockDim.x 和 blockDim.y 来验证形状影响
mod = SourceModule("""
__global__ void shape_test_kernel(float *dest, float *src, int width, int height) {
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;

    if (x < width && y < height) {
        int idx = y * width + x;
        // 增加一点计算量，防止算子执行太快
        float val = src[idx];
        for(int i = 0; i < 10; i++) {
            val = val * 1.00001f + 0.00001f;
        }
        dest[idx] = val;
    }
}
""")

shape_test_kernel = mod.get_function("shape_test_kernel")

def profile_shape(bx, by, width=4096, height=4096):
    # 准备数据
    a = np.random.randn(width, height).astype(np.float32)
    a_gpu = cuda.mem_alloc(a.nbytes)
    dest_gpu = cuda.mem_alloc(a.nbytes)
    cuda.memcpy_htod(a_gpu, a)

    # 计算 Grid 尺寸
    gx = (width + bx - 1) // bx
    gy = (height + by - 1) // by

    # 测量时间
    start = cuda.Event()
    end = cuda.Event()

    # Warmup
    for _ in range(3):
        shape_test_kernel(dest_gpu, a_gpu, np.int32(width), np.int32(height),
                          block=(bx, by, 1), grid=(gx, gy, 1))

    start.record()
    for _ in range(10):
        shape_test_kernel(dest_gpu, a_gpu, np.int32(width), np.int32(height),
                          block=(bx, by, 1), grid=(gx, gy, 1))
    end.record()
    end.synchronize()

    msec = start.time_till(end) / 10.0
    print(f"Block Shape: ({bx:4d}, {by:4d}) | Avg Time: {msec:.4f} ms")
    return msec

# 验证方案：保持 bx * by = 1024 (1个Warp到32个Warp的规模)
test_shapes = [
    (1, 1024),   # 极端垂直：最差的访存合并
    (2, 512),
    (4, 256),
    (8, 128),
    (32, 32),    # 对称：通常是平衡点
    (128, 8),
    (512, 2),
    (1024, 1)    # 极端水平：理论上最好的访存合并
]

print("Starting Shape Impact Validation...")
results = []
for bx, by in test_shapes:
    t = profile_shape(bx, by)
    results.append(t)