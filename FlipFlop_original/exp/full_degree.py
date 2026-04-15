import pycuda.autoinit
import pycuda.driver as cuda
from pycuda.compiler import SourceModule
import numpy as np

mod = SourceModule("""
__global__ void saturation_test(float *out) {
    // 增加计算压力，使差异明显
    float val = 0.0f;
    for(int i=0; i<10000; i++) {
        val += sinf((float)i); 
    }
    out[blockIdx.x] = val;
}
""")
func = mod.get_function("saturation_test")


def run_experiment(grid_size):
    out = cuda.mem_alloc(grid_size * 4)
    start = cuda.Event();
    end = cuda.Event()

    start.record()
    func(out, block=(128, 1, 1), grid=(grid_size, 1, 1))
    end.record()
    end.synchronize()

    return start.time_till(end)  # ms


# 假设你的 GPU 有 108 个 SM (A100)
# 我们测试从 1 到 500 个 Block
for g in [1, 10, 50, 100, 108, 120, 216, 324]:
    t = run_experiment(g)
    # 计算平均每个 Block 贡献的耗时
    avg_per_block = t / g
    print(f"Grid Size: {g:3d} | Total: {t:.4f} ms | Avg/Block: {avg_per_block:.6f} ms")