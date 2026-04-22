#!/usr/bin/env python3
import os
import json
from typing import Dict, Tuple
from dataclasses import dataclass

import torch

try:
    from pynvml import nvmlInit, nvmlDeviceGetHandleByIndex, nvmlDeviceGetPowerUsage
    NVML_ENABLED = True
except ImportError:
    NVML_ENABLED = False
    nvmlInit = None
    nvmlDeviceGetHandleByIndex = None
    nvmlDeviceGetPowerUsage = None

class GPUArchitecture:
    def __init__(self, device_id=0, calibration_file=None):
        # 1. 锁定设备索引
        if not torch.cuda.is_available():
            raise RuntimeError("未检测到天数智芯显卡，请检查 ixsmi")

        torch.cuda.set_device(device_id)
        self.device_id = device_id

        # 2. 获取设备名称 (对应 self.device.name())
        # 返回类似 "Iluvatar BI-V150"s
        self.name = torch.cuda.get_device_name(device_id)

        # 3. 获取计算能力 (对应 self.device.compute_capability())
        # 天数卡通常会返回 (11, 0) 或 (8, 0)
        self.compute_capability = torch.cuda.get_device_capability(device_id)

        # 4. 提取硬件详细属性 (对应 self._fetch_device_attributes())
        self.attrs = self._fetch_device_attributes(device_id)

        # 5. 生成架构 Key (对应 sm_110 或 sm_80)
        self.arch_key = f"sm_{self.compute_capability[0]}{self.compute_capability[1]}"

        # 6. 校准相关
        self.calibration_file = calibration_file
        self.calibration_data = self._load_calibration(calibration_file)
        if NVML_ENABLED:
            try:
                nvmlInit()
                self.nvml_handle = nvmlDeviceGetHandleByIndex(device_id)
            except Exception as e:
                print(f"[WARNING] NVML init failed: {e}")
                self.nvml_handle = None
        else:
            self.nvml_handle = None


        print(f"[SUCCESS] 初始化设备: {self.name} | 架构: {self.arch_key}")

    def _fetch_device_attributes(self,device_id) -> Dict:
        prop = torch.cuda.get_device_properties(device_id)
        mp_count = prop.multi_processor_count
        return {
            'MULTIPROCESSOR_COUNT': 16,
            'CLOCK_RATE': mp_count,  # in kHz
            'GLOBAL_MEMORY_BUS_WIDTH': 4096,
            'MEMORY_CLOCK_RATE': 1600*1000,  # in kHz
            'MAX_THREADS_PER_MULTIPROCESSOR': 2048,
            'MAX_REGISTERS_PER_MULTIPROCESSOR': 65536,
            'MAX_SHARED_MEMORY_PER_MULTIPROCESSOR': 65536,
            'MAX_THREADS_PER_BLOCK': 1024,
            'WARP_SIZE': 32,
            'MAX_BLOCKS_PER_MULTIPROCESSOR': 32  # assume 32 if not provided
        }

    @property
    def sm_count(self) -> int:
        return self.attrs['MULTIPROCESSOR_COUNT']

    @property
    def clock_rate_hz(self) -> float:
        return float(self.attrs['CLOCK_RATE']) * 1e3

    def memory_bandwidth_gbps(self) -> float:
        mem_clk_hz = float(self.attrs['MEMORY_CLOCK_RATE']) * 1e3
        bw_Bps = (self.attrs['GLOBAL_MEMORY_BUS_WIDTH'] * mem_clk_hz * 2.0) / 8.0
        return bw_Bps / 1e9

    def has_calibration(self) -> bool:
        return (len(self.calibration_data) > 0)

    def _load_calibration(self, filename: str) -> Dict:
        if not os.path.isfile(filename):
            print(f"[WARNING] No calibration file '{filename}'. Using empty calibration.")
            return {}
        with open(filename, 'r') as f:
            all_data = json.load(f)
        if self.arch_key in all_data:
            return all_data[self.arch_key]
        else:
            print(f"[WARNING] {self.arch_key} not found in {filename}. Using empty calibration.")
            return {}

    def peak_flops(self):
        sm_count = self.sm_count
        clock = self.clock_rate_hz

        # A100: 每SM 64 FP32/clk
        fp32_per_sm = 64
        return sm_count * fp32_per_sm * clock


@dataclass
class KernelAnalysis:
    mem_coal: int
    mem_uncoal: int
    mem_partial: int
    local_insts: int
    shared_insts: int
    synch_insts: int
    fp_insts: int
    int_insts: int
    sfu_insts: int
    alu_insts: int
    total_insts: int
    registers_per_thread: int
    shared_mem_bytes: int
    block_x: int = 0
    block_y: int = 0


