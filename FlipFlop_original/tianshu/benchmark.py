import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

import infinicore  # 先导入 infinicore
import torch

# ==============================================================================
# 配置部分：仅保留大尺寸 Tensor 以获得有意义的剖析数据
# ==============================================================================
_TEST_CASES_DATA = [
    # 较大的形状能让 GPU 负载饱和，从而测得准确的访存周期
    ((16, 2048), (16, 2048), (16, 2048), (2048,), None, None, None),
    ((15, 3584), (15, 3584), (15, 3584), (3584,), None, None, None),
    ((4, 4, 2048), (4, 4, 2048), (4, 4, 2048), (2048,), None, None, None),
]

_TOLERANCE_MAP = {
    infinicore.float16: {"atol": 2e-3, "rtol": 2e-3},
    infinicore.bfloat16: {"atol": 1e-2, "rtol": 1e-2},
    infinicore.float32: {"atol": 1e-5, "rtol": 1e-4},
}

_INPUT_DTYPES = [infinicore.float16]
_WEIGHT_DTYPES = [infinicore.float16, infinicore.float32]
_EPSILON = 1e-5


def run_profile_mode():
    print(">>> 开启剖析专用模式 (Profile Mode) <<<")
    # 预热并准备数据
    shape = (16, 2048)
    a = torch.randn(shape, device='cuda', dtype=torch.float16)
    b = torch.randn(shape, device='cuda', dtype=torch.float16)
    w = torch.randn((2048,), device='cuda', dtype=torch.float16)

    # 执行 50 次循环以稳定硬件计数器[cite: 1]
    for _ in range(10):
        infinicore.add_rms_norm(a, b, w, _EPSILON)

    torch.cuda.synchronize()
    print(">>> 运行结束，正在刷新 ixprof 缓冲区 <<<")


# ==============================================================================
# 3. 主逻辑判断
# ==============================================================================
if __name__ == "__main__":
    run_profile_mode()