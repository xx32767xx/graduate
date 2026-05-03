from gpu_common import GPUArchitecture,KernelAnalysis
from time_model import HongKimExecutionTimeModel
from LLVMAnalyzer import LLVMAnalyzer

if __name__ == "__main__":
    block_x = 512
    block_y = 1
    kernel_param = {
        "template_param": [1024],
        "data_type": ["float", "half", "half"]
    }
    with open('op.ll', 'r', encoding='utf-8') as f:
        content = f.read()

    arch = GPUArchitecture(device_id = 0, calibration_file="calibration.json")

    analyzer = LLVMAnalyzer(content, arch, block_x, block_y, {}, kernel_param)
    analysis = analyzer.analyze()
    print(analysis)
    time_model = HongKimExecutionTimeModel(
        arch, analysis, (16, 1), (block_x, block_y))
    est_time_ms = time_model.estimate_time_ns() / 1e6
    print(f"time is {est_time_ms} ms")