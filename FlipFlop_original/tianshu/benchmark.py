import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

import infinicore  # 先导入 infinicore
import torch
from framework import (
    BaseOperatorTest,
    TensorSpec,
    TestCase,
    GenericTestRunner,
    is_broadcast,
)

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


# ==============================================================================
# 1. 展开原有的逻辑：用于正确性验证[cite: 2]
# ==============================================================================
def parse_test_cases():
    test_cases = []
    for data in _TEST_CASES_DATA:
        y_shape, a_shape, b_shape, w_shape = data[0], data[1], data[2], data[3]
        y_strides = data[4] if len(data) > 4 else None
        a_strides = data[5] if len(data) > 5 else None
        b_strides = data[6] if len(data) > 6 else None

        for input_dtype in _INPUT_DTYPES:
            for weight_dtype in _WEIGHT_DTYPES:
                tolerance = _TOLERANCE_MAP.get(input_dtype, {"atol": 1e-5, "rtol": 1e-4})
                a_spec = TensorSpec.from_tensor(a_shape, a_strides, input_dtype)
                b_spec = TensorSpec.from_tensor(b_shape, b_strides, input_dtype)
                w_spec = TensorSpec.from_tensor(w_shape, None, weight_dtype)

                # 标准测试用例
                test_cases.append(
                    TestCase(
                        inputs=[a_spec, b_spec, w_spec],
                        kwargs={"epsilon": _EPSILON},
                        output_specs=None,
                        output_count=2,
                        tolerance=tolerance,
                        description=f"AddRMSNorm - {input_dtype}",
                    )
                )
    return test_cases


class OpTest(BaseOperatorTest):
    def __init__(self):
        super().__init__("AddRMSNorm")

    def get_test_cases(self):
        return parse_test_cases()

    def torch_operator(self, a, b, weight, epsilon=_EPSILON, **kwargs):
        input_dtype = a.dtype
        sum_tensor = a.to(torch.float32) + b.to(torch.float32)
        variance = sum_tensor.pow(2).mean(-1, keepdim=True)
        normalized_result = sum_tensor * torch.rsqrt(variance + epsilon) * weight.to(torch.float32)
        return (normalized_result.to(input_dtype), sum_tensor.to(input_dtype))

    def infinicore_operator(self, a, b, weight, epsilon=_EPSILON, **kwargs):
        # 直接调用底层的算子实现[cite: 2]
        return infinicore.add_rms_norm(a, b, weight, epsilon, **kwargs)


# ==============================================================================
# 2. 性能剖析入口：避开 GenericTestRunner 的海量 API 干扰
# ==============================================================================
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
    # 如果命令行参数包含 --profile，则运行精简的剖析逻辑[cite: 1]
    if "--profile" in sys.argv:
        run_profile_mode()
    else:
        # 否则运行完整的测试框架[cite: 2]
        runner = GenericTestRunner(OpTest)
        runner.run_and_exit()