#!/usr/bin/env python3
import json
import subprocess
import sys
import os
from pathlib import Path
from typing import Dict, Any, Optional


class AutoTester:
    def __init__(self, config_file: str = "test_config.json"):
        """初始化测试器，加载配置文件"""
        self.config_file = config_file
        self.configs = self.load_config()

    def load_config(self) -> Dict[str, Any]:
        """加载JSON配置文件"""
        try:
            with open(self.config_file, 'r', encoding='utf-8') as f:
                return json.load(f)
        except FileNotFoundError:
            print(f"错误: 配置文件 {self.config_file} 不存在")
            sys.exit(1)
        except json.JSONDecodeError as e:
            print(f"错误: 配置文件格式错误 - {e}")
            sys.exit(1)

    def find_config(self, filename: str) -> Optional[Dict[str, Any]]:
        """根据文件名查找配置"""
        # 提取文件名（不包含路径和扩展名）
        base_name = os.path.splitext(os.path.basename(filename))[0]

        # 在配置中查找匹配的项
        for config_name, config in self.configs.items():
            if config_name in filename or base_name == config_name:
                return config

        print(f"警告: 未找到 {filename} 的配置信息")
        return None

    def compile_llvm(self, source_file: str, output_dir: str = "obj") -> bool:
        """执行LLVM编译"""
        os.makedirs(output_dir, exist_ok=True)

        compile_cmd = [
            "/usr/local/corex-4.3.0/bin/clang-18",
            "-S", "-emit-llvm",
            "-x", "ivcore",
            "--cuda-device-only",
            "--offload-arch=ivcore20",
            "-std=c++17",
            "-O3",
            "-DENABLE_ILUVATAR_API",
            "-D__CUDACC__",
            "-I", "/root/InfiniGraph/InfiniCore/include",
            "-I", "/root/InfiniGraph/InfiniCore/src",
            "-I", "/root/InfiniGraph/InfiniCore/third_party/spdlog/include",
            "-I", "/root/InfiniGraph/InfiniCore/third_party/nlohmann_json/single_include",
            "-I", "/usr/local/corex-4.3.0/include",
            source_file,
            "-o", f"{output_dir}/op.ll"
        ]

        print("执行编译命令...")
        print(" ".join(compile_cmd))

        result = subprocess.run(compile_cmd, capture_output=True, text=True)
        if result.returncode != 0:
            print(f"编译失败: {result.stderr}")
            return False
        return True

    def optimize_llvm(self, obj_dir: str = "obj") -> bool:
        """执行O2优化"""
        # 复制op.ll到opt目录
        os.makedirs("opt", exist_ok=True)
        subprocess.run(["cp", f"{obj_dir}/op.ll", "opt/op.ll"], check=True)

        # 执行O2优化
        optimize_cmd = ["opt", "--O2", "-S", f"{obj_dir}/op.ll", "-o", "opt/better.ll"]
        print("执行O2优化...")

        result = subprocess.run(optimize_cmd, capture_output=True, text=True)
        if result.returncode != 0:
            print(f"优化失败: {result.stderr}")
            return False

        # 覆盖原文件
        subprocess.run(["mv", "opt/better.ll", f"{obj_dir}/op.ll"], check=True)
        subprocess.run(["rm", "-rf", "opt"], check=True)
        return True

    def analyze_scalar_evolution(self, output_dir: str = "opt") -> bool:
        """分析scalar evolution"""
        os.makedirs(output_dir, exist_ok=True)

        analyze_cmd = [
            "opt",
            "-passes=print<scalar-evolution>",
            "-disable-output",
            f"{output_dir}/op.ll"
        ]

        print("分析scalar evolution...")

        with open(f"{output_dir}/analysis.txt", 'w') as f:
            result = subprocess.run(analyze_cmd, stderr=f, text=True)

        return result.returncode == 0

    def run_benchmark_analysis(self, config: Dict[str, Any]) -> bool:
        """运行benchmark分析"""
        # 准备分析脚本
        analysis_script = f"""
import sys
sys.path.append('/path/to/your/analysis/module')  # 根据实际情况修改

from gpu_common import GPUArchitecture,KernelAnalysis
from time_model import HongKimExecutionTimeModel
from LLVMAnalyzer import LLVMAnalyzer

block_x = {config['block_x']}
block_y = {config['block_y']}
grid_x = {config['grid_x']}
grid_y = {config['grid_y']}
kernel_param = {json.dumps(config['kernel_param'], indent=4)}

with open('obj/op.ll', 'r', encoding='utf-8') as f:
    content = f.read()

arch = GPUArchitecture(device_id=0, calibration_file="calibration.json")
print(f"GPU Architecture attributes: {{arch.attrs}}")

analyzer = LLVMAnalyzer(content, arch, block_x, block_y, {{}}, kernel_param)
analysis = analyzer.analyze()
print(f"Analysis result: {{analysis}}")

time_model = HongKimExecutionTimeModel(
    arch, analysis, (grid_x, grid_y), (block_x, block_y))
est_time_ms = time_model.estimate_time_ns() / 1e6
print(f"Estimated execution time is {{est_time_ms}} ms")
"""

        # 写入临时脚本
        with open("temp_analysis.py", 'w') as f:
            f.write(analysis_script)

        # 执行分析脚本
        result = subprocess.run(["python3", "temp_analysis.py"],
                                capture_output=True, text=True)
        print(result.stdout)
        if result.returncode != 0:
            print(f"分析失败: {result.stderr}")
            return False

        # 清理临时文件
        os.remove("temp_analysis.py")
        return True

    def run_benchmark(self, benchmark_script: str, num_iterations: int = 10) -> bool:
        """运行实际的benchmark测试"""
        benchmark_cmd = [
            "python3",
            benchmark_script,
            "--bench",
            "--iluvatar",
            "--num_iterations", str(num_iterations)
        ]

        print(f"运行benchmark: {' '.join(benchmark_cmd)}")

        with open("exp.txt", 'a') as f:
            f.write(f"\n{'=' * 60}\n")
            f.write(f"Testing: {benchmark_script}\n")
            f.write(f"{'=' * 60}\n")

            result = subprocess.run(benchmark_cmd, stdout=f, stderr=subprocess.PIPE, text=True)

            if result.returncode != 0:
                print(f"Benchmark失败: {result.stderr}")
                return False

        return True

    def test_file(self, filename: str) -> bool:
        print(f"\n{'=' * 60}")
        print(f"开始测试: {filename}")
        print(f"{'=' * 60}")

        config_entry = self.find_config(filename)
        if not config_entry:
            return False

        # 兼容旧格式：如果没有 configs 数组，包装成单元素数组
        if "configs" not in config_entry:
            configs = [{
                "block_x": config_entry["block_x"],
                "block_y": config_entry["block_y"],
                "grid_x": config_entry["grid_x"],
                "grid_y": config_entry["grid_y"],
                "kernel_param": config_entry.get("kernel_param", {})
            }]
        else:
            configs = config_entry["configs"]

        # 步骤1: 编译（只需一次）
        if not self.compile_llvm(config_entry['source_file'], "obj"):
            return False

        # 步骤2: O2优化（只需一次）
        if not self.optimize_llvm():
            return False

        # 步骤3: 分析scalar evolution（只需一次）
        if not self.analyze_scalar_evolution("obj"):
            return False

        # 步骤4 & 5: 对每组配置分别运行
        for idx, cfg in enumerate(configs):
            print(f"\n--- 配置 {idx + 1}/{len(configs)} ---")
            print(f"  block=({cfg['block_x']},{cfg['block_y']})  grid=({cfg['grid_x']},{cfg['grid_y']})")

            if not self.run_benchmark_analysis(cfg):
                print(f"  配置 {idx + 1} 分析失败")
                continue

            if not self.run_benchmark(f"exp/{config_entry['benchmark_script']}"):
                print(f"  配置 {idx + 1} benchmark失败")
                continue

        print(f"✓ 测试完成: {filename} ({len(configs)} 组配置)")
        return True

def main():
    if len(sys.argv) < 2:
        print("使用方法: python3 auto_test.py <文件名> [配置文件路径]")
        print("示例: python3 auto_test.py add_rms_norm_nvidia.cu")
        sys.exit(1)

    target_file = sys.argv[1]
    config_file = sys.argv[2] if len(sys.argv) > 2 else "test_config.json"
    tester = AutoTester(config_file)

    try:
        success = tester.test_file(target_file)
        if success:
            print("\n所有测试完成!")
            sys.exit(0)
        else:
            print("\n测试失败!")
            sys.exit(1)
    except Exception as e:
        print(f"\n发生错误: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)


if __name__ == "__main__":
    main()