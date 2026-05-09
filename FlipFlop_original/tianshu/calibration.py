#!/usr/bin/env python3
import time
import numpy as np
import json
import os

from gpu_common import GPUArchitecture, NVML_ENABLED, nvmlDeviceGetPowerUsage

try:
    import cupy as cp
    HPC_ENABLED = True
except ImportError:
    HPC_ENABLED = False

import torch
import statistics
from torch.utils.cpp_extension import load_inline

os.environ['TORCH_CUDA_ARCH_LIST'] = 'ivcore11'
os.environ['TORCH_NVCC_FLAGS'] = '-x ivcore --cuda-gpu-arch=ivcore11'

# ============ 禁用编译缓存，使用独立临时目录 ============
import tempfile
import atexit

_CALIB_BUILD_DIR = tempfile.mkdtemp(prefix="calib_build_")
os.environ['TORCH_EXTENSIONS_DIR'] = _CALIB_BUILD_DIR

def _cleanup_build_dir():
    import shutil
    shutil.rmtree(_CALIB_BUILD_DIR, ignore_errors=True)
atexit.register(_cleanup_build_dir)

print(f"[INFO] Using temp build directory: {_CALIB_BUILD_DIR}")
# ========================================================

class Calibrator:

    def __init__(self, device_id=0, runs=1, idle_sleep=2.0,
                 calibration_file="calibration.json"):
        self.arch = GPUArchitecture(device_id, calibration_file)
        self.device_name = self.arch.name
        self.arch_key = self.arch.arch_key
        self.runs = runs
        self.idle_sleep = idle_sleep
        self.calibration_file = calibration_file


    def run_extended_calibration(self):
        print(f"[INFO] Running extended calibration for {self.device_name}")

        # Existing latency/throughput measurements
        sync_latency_ns = self._repeat_and_average(self._measure_sync_fixed_latency)
        print(sync_latency_ns)
        overhead_ns   = self._repeat_and_average(self._measure_kernel_launch_overhead)
        lat_coal_ns   = self._repeat_and_average(lambda: self._measure_global_latency(False))
        lat_uncoal_ns = self._repeat_and_average(lambda: self._measure_global_latency(True))
        partial_meas = []
        for off in [64, 128, 256, 512]:
            val = self._repeat_and_average(lambda: self._measure_partial_coalescing_latency(offset=off))
            partial_meas.append((off, val))
        partial_slope, partial_intcp = self._fit_linear_regression(partial_meas)
        lat_shared_ns  = self._repeat_and_average(self._measure_shared_latency)
        lat_local_ns   = self._repeat_and_average(self._measure_local_latency)
        issue_cycles   = self._repeat_and_average(self._measure_issue_cycles)
        eff_bw_gbps    = self._repeat_and_average(self._measure_streaming_bandwidth)
        dep_del_coal_s    = (lat_coal_ns   * 1e-9) / 16.0
        dep_del_uncoal_s  = (lat_uncoal_ns * 1e-9) /  8.0
        occupancy_shape_param = self._measure_shape_occupancy_factor()

        new_info = {
            self.arch_key: {
                "baseline_kernel_overhead_ns": overhead_ns,
                "Mem_LD_coal_ns": lat_coal_ns,
                "Mem_LD_uncoal_ns": lat_uncoal_ns,
                "Mem_LD_partial_ns": 0.5*(partial_meas[0][1] + partial_meas[-1][1]),
                "partial_coalesce_slope": partial_slope,
                "partial_coalesce_intercept": partial_intcp,
                "Mem_LD_shared_ns": lat_shared_ns,
                "Mem_LD_local_ns": lat_local_ns,
                "issue_cycles": issue_cycles,
                "Departure_del_coal_s": dep_del_coal_s,
                "Departure_del_uncoal_s": dep_del_uncoal_s,
                "sync_latency_ns":sync_latency_ns,
                "effective_mem_bw_gbps": eff_bw_gbps,
                "const_sm_power": 0.25,
                "max_power_total": 200.0,
                "shape_occupancy_factor": occupancy_shape_param,
            }
        }

        # Save results
        full_data = {}
        if os.path.isfile(self.calibration_file):
            try:
                with open(self.calibration_file, 'r') as f:
                    full_data = json.load(f)
            except:
                print("[WARNING] Could not parse existing calibration file. Overwriting.")
        full_data.update(new_info)
        with open(self.calibration_file, 'w') as ff:
            json.dump(full_data, ff, indent=2)
        print(f"[INFO] Calibration complete for {self.arch_key}")

    def _measure_idle_power(self, sample_time_s=2.0):
        if not NVML_ENABLED or (self.arch.nvml_handle is None):
            return 50.0
        samples = []
        t0 = time.time()
        while (time.time() - t0) < sample_time_s:
            p_mW = nvmlDeviceGetPowerUsage(self.arch.nvml_handle)
            samples.append(p_mW / 1000.0)
            time.sleep(0.1)
        if samples:
            return float(np.mean(samples))
        return 50.0

    def _fit_linear_regression(self, offset_lat_pairs):
        """
        offset_lat_pairs is a list of (offset, latency_in_ns).
        We'll do a simple y = slope*x + intercept. Return (slope, intercept).
        """
        import numpy as np
        xs = np.array([p[0] for p in offset_lat_pairs], dtype=np.float32)
        ys = np.array([p[1] for p in offset_lat_pairs], dtype=np.float32)
        xmean = xs.mean()
        ymean = ys.mean()
        num = np.sum((xs - xmean)*(ys - ymean))
        den = np.sum((xs - xmean)*(xs - xmean))
        if abs(den) < 1e-9:
            slope = 0.0
        else:
            slope = num / den
        intercept = ymean - slope*xmean
        return float(slope), float(intercept)

    def _measure_shape_occupancy_factor(self):
        # 1. 编译内核 (保持不变)
        cpp_src = "extern \"C\" void launch_shape_test(long data_addr, int N, int loops, int bx, int by, int grid_x);"
        kernel_src = """
            #include <cuda_runtime.h>
            __global__ void shape_test_kernel(float *data, int N, int loops) {
                int tidx = threadIdx.x + blockIdx.x * blockDim.x;
                int tidy = threadIdx.y + blockIdx.y * blockDim.y;
                int tid = tidx * blockDim.y + tidy;
                if(tid >= N) return;
                float val = data[tid];
                for(int i = 0; i < loops; i++) { val = val * 1.0001f + 0.0001f; }
                data[tid] = val;
            }
            extern "C" void launch_shape_test(long data_addr, int N, int loops, int bx, int by, int grid_x) {
                float* data = (float*)data_addr;
                shape_test_kernel<<<dim3(grid_x,1,1), dim3(bx,by,1)>>>(data, N, loops);
            }
            """
        module = load_inline(name="shape_factor_mod", cpp_sources=cpp_src, cuda_sources=kernel_src,
                             functions=["launch_shape_test"], extra_cuda_cflags=["-x ivcore", "-O3"])

        # 2. 测量逻辑
        shapes = [(16, 16), (32, 8), (64, 4), (128, 2), (256, 1), (8, 32), (4, 64), (2, 128)]
        N, loops = 1_048_576, 10_000_000
        d_data = torch.randn(N, dtype=torch.float32).cuda()

        shape_results = []  # 存储: (bx, by, aspect_ratio, time_ms)

        for (bx, by) in shapes:
            grid_x = (N + bx * by - 1) // (bx * by)
            start_evt, end_evt = torch.cuda.Event(enable_timing=True), torch.cuda.Event(enable_timing=True)

            # 预热并运行
            module.launch_shape_test(d_data.data_ptr(), N, loops, bx, by, grid_x)
            torch.cuda.synchronize()

            start_evt.record()
            module.launch_shape_test(d_data.data_ptr(), N, loops, bx, by, grid_x)
            end_evt.record()
            torch.cuda.synchronize()

            t_ms = start_evt.elapsed_time(end_evt)
            aspect = (bx / by) if (bx >= by) else (by / bx)
            shape_results.append((bx, by, aspect, t_ms))

        # 3. 核心计算逻辑：保留原始的 final_factor 拟合
        bxs, bys, aspects, times = zip(*shape_results)

        # 找到 16x16 作为基准时间
        base_time = next(t for bx, by, asp, t in shape_results if bx == 16 and by == 16)

        # 归一化时间 (Normalized Time)
        normalized = [t / base_time for t in times]
        ln_aspects = np.log(aspects)

        # 线性拟合: ln(Aspect) vs NormalizedTime
        coeffs = np.polyfit(ln_aspects, normalized, 1)
        slope = coeffs[0]
        intercept = coeffs[1]

        # 原始逻辑：factor = abs(slope)
        shape_factor = abs(slope)
        final_factor = float(max(0.1, min(shape_factor, 0.5)))

        # 4. 打印原始风格的报告
        print("\n[INFO] Occupancy factor data by shape (Time-based):")
        print("   Shape (bx x by) | Aspect | ExecTime(ms) | NormalizedTime")
        for (bx, by, asp, t), norm in zip(shape_results, normalized):
            print(f"   {bx} x {by:<3}  | {asp:6.2f} | {t:10.3f}   | {norm:8.3f}")

        print(f"\n[INFO] Fitted slope = {slope:.4f}, intercept = {intercept:.4f}")
        print(f"[INFO] final_shape_factor (clamped) = {final_factor:.3f}")

        return final_factor

    def _repeat_and_average(self, func):
        results = []
        for _ in range(self.runs):
            val = func()
            if val is None:
                val = 0.0
            results.append(val)
            time.sleep(self.idle_sleep)
        import numpy as np
        return float(np.mean(results))

    def _measure_kernel_launch_overhead(self) -> float:
        # 1. 手动编写包装函数 launch_empty，避免 PyTorch 自动生成的代码找不到符号
        cpp_src = """
           void launch_empty(); 
           """
        kernel_src = """
           __global__ void emptyKernel() { }
           void launch_empty() {
               emptyKernel<<<1, 1>>>();
           }
           """
        module = load_inline(
            name="empty_kernel_final",
            cpp_sources=cpp_src,
            cuda_sources=kernel_src,
            functions=["launch_empty"],
            extra_cuda_cflags=["-x ivcore"],
            verbose=True,
        )

        func = module.launch_empty
        for _ in range(10):
            func()
        torch.cuda.synchronize()

        times_ms = []
        N = 20
        start = torch.cuda.Event(enable_timing=True)
        end = torch.cuda.Event(enable_timing=True)

        for _ in range(N):
            start.record()
            func()  # 调用包装函数
            end.record()
            torch.cuda.synchronize()
            times_ms.append(start.elapsed_time(end))

        median_ms = statistics.median(times_ms)
        return median_ms * 1e6

    def _measure_global_latency(self,uncoalesced) -> float:
        cpp_src = """
        extern "C" void launch_global_latency(float* buf, int N, int chaseIters, int stride, float* d_out);
        """

        kernel_src = """
        #include <cuda_runtime.h>

        __global__ void global_latency_kernel(float *buf, int N, int chaseIters, int stride, float *d_out) {
            if(threadIdx.x != 0 || blockIdx.x != 0) return;

            int pos = 0;
            float accum = 0;
            for(int i = 0; i < chaseIters; i++) {
                float val = buf[pos];
                // 指针追逐：将浮点数位解释为整数作为下一个索引
                pos = *(int*)&val; 
                pos = pos % N;
                accum += (float)pos;
            }
            d_out[0] = accum;
        }

        extern "C" void launch_global_latency(float* buf, int N, int chaseIters, int stride, float* d_out) {
            global_latency_kernel<<<1, 1>>>(buf, N, chaseIters, stride, d_out);
        }
        """

        # 4. 编译扩展
        module = load_inline(
            name="global_latency_final_ok",  # 换个新名字确保重新编译
            cpp_sources=cpp_src,
            cuda_sources=kernel_src,
            functions=["launch_global_latency"],
            extra_cuda_cflags=["-x ivcore"],
            verbose=True,
        )

        # 5. 数据准备
        N = 128 * 1024
        chaseIters = 200000
        strideVal = 37 if uncoalesced else 1

        # 构建链式追逐数组
        arr = np.zeros(N, dtype=np.float32)
        curr_pos = 0
        for i in range(N):
            next_pos = (curr_pos + strideVal) % N
            # 存入下一个位置的索引，转为 float 存入
            arr[curr_pos] = float(next_pos)
            curr_pos = next_pos

        d_buf = torch.from_numpy(arr).cuda()
        d_out = torch.zeros(1, dtype=torch.float32).cuda()

        # 6. 测量延迟
        # 预热一次
        module.launch_global_latency(d_buf.data_ptr(), N, chaseIters, strideVal, d_out.data_ptr())
        torch.cuda.synchronize()

        start_ev = torch.cuda.Event(enable_timing=True)
        end_ev = torch.cuda.Event(enable_timing=True)

        start_ev.record()
        module.launch_global_latency(d_buf.data_ptr(), N, chaseIters, strideVal, d_out.data_ptr())
        end_ev.record()
        torch.cuda.synchronize()

        ms = start_ev.elapsed_time(end_ev)
        # 单次访问耗时 (ns) = (总毫秒 / 追逐次数) * 1,000,000
        per_load_ns = (ms / chaseIters) * 1e6

        return float(per_load_ns)

    def _measure_partial_coalescing_latency(self, offset=128):
        cpp_src = """
            extern "C" void launch_partial_lat(float* buf, int N, int stride, int chaseIters, float* d_out);
            """
        kernel_src = """
            #include <cuda_runtime.h>
            __global__ void partial_lat_kernel(float *buf, int N, int stride, int chaseIters, float* out) {
                if(threadIdx.x == 0 && blockIdx.x == 0) {
                    int pos = 0;
                    float val = 0.0f;
                    for(int i = 0; i < chaseIters; i++) {
                        float raw_val = buf[pos];
                        pos = *(int*)&raw_val;
                        pos = pos % N;
                        val += (float)pos;
                    }
                    out[0] = val;
                }
            }

            extern "C" void launch_partial_lat(float* buf, int N, int stride, int chaseIters, float* d_out) {
                partial_lat_kernel<<<1, 1>>>(buf, N, stride, chaseIters, d_out);
            }
            """

        module = load_inline(
            name="partial_coalescing_mod",
            cpp_sources=cpp_src,
            cuda_sources=kernel_src,
            functions=["launch_partial_lat"],
            extra_cuda_cflags=["-x ivcore"],
            verbose=True,
        )
        N = 128 * 1024
        chaseIters = 200000
        strideVal = offset // 4

        arr = np.zeros(N, dtype=np.float32)
        curr_pos = 0
        for i in range(N):
            next_pos = (curr_pos + strideVal) % N
            arr[curr_pos] = float(next_pos)
            curr_pos = next_pos

        d_buf = torch.from_numpy(arr).cuda()
        d_out = torch.zeros(1, dtype=torch.float32).cuda()

        module.launch_partial_lat(d_buf.data_ptr(), N, strideVal, chaseIters, d_out.data_ptr())
        torch.cuda.synchronize()
        start_ev = torch.cuda.Event(enable_timing=True)
        end_ev = torch.cuda.Event(enable_timing=True)
        start_ev.record()
        module.launch_partial_lat(d_buf.data_ptr(), N, strideVal, chaseIters, d_out.data_ptr())
        end_ev.record()
        torch.cuda.synchronize()
        ms = start_ev.elapsed_time(end_ev)
        per_load_ns = (ms * 1e6) / chaseIters
        return float(per_load_ns)

    def _measure_shared_latency(self) -> float:
        # 2. C++ 接口声明
        cpp_src = """
            extern "C" void launch_shared_lat(float* d_out, int loops);
            """

        # 3. CUDA 内核实现
        kernel_src = """
            #include <cuda_runtime.h>

            __global__ void shared_lat_kernel(float *out, int loops) {
                // 分配 128 个 float 的共享内存
                __shared__ float sdata[128];

                if(threadIdx.x == 0 && blockIdx.x == 0) {
                    // 初始化共享内存
                    for(int i = 0; i < 128; i++){
                        sdata[i] = (float)i;
                    }

                    // 为了防止编译器优化掉循环，使用 volatile 或者确保结果写回显存
                    float accum = 0.0f;
                    for(int i = 0; i < loops; i++) {
                        // 循环读取 sdata[0] 到 sdata[127]
                        // 这里的取模运算可能会带来额外开销，
                        // 但为了保持与原 PyCUDA 逻辑一致，先保留。
                        accum += sdata[i % 128];
                    }

                    // 写回结果到全局显存
                    out[0] = accum;
                }
            }

            extern "C" void launch_shared_lat(float* d_out, int loops) {
                shared_lat_kernel<<<1, 1>>>(d_out, loops);
            }
            """

        # 4. 编译扩展
        module = load_inline(
            name="shared_latency_mod",
            cpp_sources=cpp_src,
            cuda_sources=kernel_src,
            functions=["launch_shared_lat"],
            extra_cuda_cflags=["-x ivcore"],
            verbose=True,
        )

        # 5. 准备参数
        loops = 2_000_000
        d_out = torch.zeros(1, dtype=torch.float32).cuda()

        # 6. 测量
        # 预热一次
        module.launch_shared_lat(d_out.data_ptr(), loops)
        torch.cuda.synchronize()

        start_ev = torch.cuda.Event(enable_timing=True)
        end_ev = torch.cuda.Event(enable_timing=True)

        start_ev.record()
        module.launch_shared_lat(d_out.data_ptr(), loops)
        end_ev.record()
        torch.cuda.synchronize()

        ms = start_ev.elapsed_time(end_ev)
        # 单次加载耗时 (ns) = (总毫秒 / 循环次数) * 1,000,000
        per_load_ns = (ms / loops) * 1e6

        return float(per_load_ns)

    def _measure_local_latency(self) -> float:
        cpp_src = """
            extern "C" void launch_local_lat_test(float* d_out, int loops);
            """

        # 3. CUDA 内核实现
        kernel_src = """
            #include <cuda_runtime.h>

            __global__ void local_lat_test_kernel(float *out, int loops) {
                // 只用一个线程进行串行指令测试
                if(threadIdx.x == 0 && blockIdx.x == 0) {
                    float accum = 0.0f;
                    for(int i = 0; i < loops; i++){
                        // 寄存器依赖链：下一次循环依赖于上一次 accum 的结果
                        accum += (float)i * 1.1f;
                    }
                    out[0] = accum;
                }
            }

            extern "C" void launch_local_lat_test(float* d_out, int loops) {
                local_lat_test_kernel<<<1, 1>>>(d_out, loops);
            }
            """

        # 4. 编译扩展
        module = load_inline(
            name="instruction_latency_mod",
            cpp_sources=cpp_src,
            cuda_sources=kernel_src,
            functions=["launch_local_lat_test"],
            extra_cuda_cflags=["-x ivcore"],
            verbose=True,
        )

        # 5. 准备参数
        loops = 2_000_000
        d_out = torch.zeros(1, dtype=torch.float32).cuda()

        # 6. 测量
        # 预热
        module.launch_local_lat_test(d_out.data_ptr(), loops)
        torch.cuda.synchronize()

        start_ev = torch.cuda.Event(enable_timing=True)
        end_ev = torch.cuda.Event(enable_timing=True)

        start_ev.record()
        module.launch_local_lat_test(d_out.data_ptr(), loops)
        end_ev.record()
        torch.cuda.synchronize()

        ms = start_ev.elapsed_time(end_ev)
        # 计算单次迭代（包含一次 FMA/FMUL+FADD）的纳秒数
        per_iter_ns = (ms / loops) * 1e6

        return float(per_iter_ns)

    def _measure_issue_cycles(self) -> float:
        # 1. C++ 侧声明：加上 extern "C" 并确保包含基础头文件
        cpp_src = """
            #include <torch/extension.h>
            extern "C" void launch_issue_bench(float* data, int loops);
            """

        # 2. CUDA 实现：手动展开 10 次计算，减少循环跳转开销对指令周期的干扰
        kernel_src = """
            #include <cuda_runtime.h>

            __global__ void issue_bench_kernel(float *data, int loops) {
                if(threadIdx.x > 0 || blockIdx.x > 0) return;

                float x = data[0];
                const float a = 1.000001f;
                const float b = 1.0f;

                for(int i = 0; i < loops; i++){
                    // 手动展开 10 次 FMA 操作，增加计算指令密度
                    x = x * a + b; x = x * a + b; x = x * a + b; x = x * a + b; x = x * a + b;
                    x = x * a + b; x = x * a + b; x = x * a + b; x = x * a + b; x = x * a + b;
                }
                data[0] = x;
            }

            extern "C" void launch_issue_bench(float* data, int loops) {
                issue_bench_kernel<<<1, 1>>>(data, loops);
            }
            """

        # 3. 编译扩展
        # 换个名字 issue_bench_final_v1 确保缓存刷新
        module = load_inline(
            name="issue_bench_final_v1",
            cpp_sources=cpp_src,
            cuda_sources=kernel_src,
            functions=["launch_issue_bench"],
            extra_cuda_cflags=["-x ivcore", "-O3"],
            verbose=True,
        )

        # 4. 数据准备
        arr = np.array([1.0], dtype=np.float32)
        d_arr = torch.from_numpy(arr).cuda()
        # 因为内部展开了 10 倍，循环次数可以适当减少
        loops = 2_000_000

        # 5. 测量
        module.launch_issue_bench(d_arr.data_ptr(), loops)
        torch.cuda.synchronize()

        start_ev = torch.cuda.Event(enable_timing=True)
        end_ev = torch.cuda.Event(enable_timing=True)

        start_ev.record()
        module.launch_issue_bench(d_arr.data_ptr(), loops)
        end_ev.record()
        torch.cuda.synchronize()

        # 6. 计算周期
        ms = start_ev.elapsed_time(end_ev)
        total_s = ms * 1e-3

        # 每次循环现在有 10 个 FMA (每个 FMA 视作 2 条指令: 乘 + 加)
        instructions_per_loop = 10 * 2
        total_instructions = loops * instructions_per_loop
        clock_rate_hz = 1500e6
        time_per_instr = total_s / total_instructions
        cpti = time_per_instr * clock_rate_hz

        return cpti

    def _measure_streaming_bandwidth(self) -> float:
        os.environ['TORCH_CUDA_ARCH_LIST'] = 'ivcore11'
        os.environ['TORCH_NVCC_FLAGS'] = '-x ivcore --cuda-gpu-arch=ivcore11'

        # 1. C++ 部分：使用 long 接收指针地址，避免 pybind11 对 void* 的限制
        cpp_src = """
        #include <torch/extension.h>
        extern "C" void launch_copy_float4(long in_addr, long out_addr, int n);
        """

        # 2. CUDA 部分：将 long 强转为 float4*
        kernel_src = """
        #include <cuda_runtime.h>

        __global__ void copy_float4_kernel(const float4* __restrict__ in, float4* __restrict__ out, int n) {
            int tid = blockDim.x * blockIdx.x + threadIdx.x;
            if(tid < n){
                out[tid] = in[tid];
            }
        }

        extern "C" void launch_copy_float4(long in_addr, long out_addr, int n) {
            int block_size = 256;
            int grid_size = (n + block_size - 1) / block_size;

            // 显式强转
            const float4* in = (const float4*)in_addr;
            float4* out = (float4*)out_addr;

            copy_float4_kernel<<<grid_size, block_size>>>(in, out, n);
        }
        """

        module = load_inline(
            name="bw_test_v4_final",
            cpp_sources=cpp_src,
            cuda_sources=kernel_src,
            functions=["launch_copy_float4"],
            extra_cuda_cflags=["-x ivcore", "-O3"],
        )

        # 4. 数据准备：512MB 总量 (128M 个 float)
        N = 128 * 1024 * 1024
        N_float4 = N // 4

        d_a = torch.randn(N, dtype=torch.float32).cuda()
        d_b = torch.empty(N, dtype=torch.float32).cuda()

        # 5. 预热
        for _ in range(10):
            module.launch_copy_float4(d_a.data_ptr(), d_b.data_ptr(), N_float4)
        torch.cuda.synchronize()

        # 6. 正式测量
        runs = 20
        times_ms = []
        for _ in range(runs):
            start = torch.cuda.Event(enable_timing=True)
            end = torch.cuda.Event(enable_timing=True)

            start.record()
            module.launch_copy_float4(d_a.data_ptr(), d_b.data_ptr(), N_float4)
            end.record()
            torch.cuda.synchronize()
            times_ms.append(start.elapsed_time(end))

        median_ms = statistics.median(times_ms)

        # 7. 带宽计算
        # 读取 + 写入 = 2倍 N * 4 bytes
        total_bytes = N * 4 * 2
        bw_gbps = (total_bytes / 1e9) / (median_ms / 1e3)

        return bw_gbps


    def _measure_sync_fixed_latency(self) -> float:
        """
        测量单个 __syncthreads() 的固定物理周期损耗。
        通过对比 '纯计算循环' 与 '带同步的计算循环' 的耗时差，提取同步指令的硬性延迟。
        """
        cpp_src = """
           void launch_sync_bench(int iterations, int mode); 
           """
        # mode 0: 纯计算 (Base)
        # mode 1: 计算 + 同步 (Test)
        kernel_src = """
               __global__ void syncBenchKernel(int iterations, int mode) {
                   // 使用 volatile 关键字防止编译器优化掉对 a 的操作
                   volatile int a = threadIdx.x; 

                   if (mode == 0) {
                       for(int i = 0; i < iterations; i++) {
                           a = a + 1; 
                       }
                   } else {
                       for(int i = 0; i < iterations; i++) {
                           a = a + 1;
                           __syncthreads();
                       }
                   }
               }

               void launch_sync_bench(int iterations, int mode) {
                   // 保持 1024 线程以测量真实的跨 Warp 同步开销
                   syncBenchKernel<<<1, 1024>>>(iterations, mode);
               }
               """

        # 编译内核
        module = load_inline(
            name="sync_latency_bench",
            cpp_sources=cpp_src,
            cuda_sources=kernel_src,
            functions=["launch_sync_bench"],
            extra_cuda_cflags=["-x ivcore"],
            verbose=False,
        )

        func = module.launch_sync_bench
        iterations = 500  # 循环次数
        N = 15  # 测量重复次数

        def get_time(mode):
            times = []
            for _ in range(N):
                start = torch.cuda.Event(enable_timing=True)
                end = torch.cuda.Event(enable_timing=True)
                start.record()
                func(iterations, mode)
                end.record()
                torch.cuda.synchronize()
                times.append(start.elapsed_time(end))
            return statistics.median(times)

        # 1. 测量基准时间 (Base: 只有计算)
        t_base_ms = get_time(mode=0)

        # 2. 测量实验时间 (Test: 计算 + 同步)
        t_test_ms = get_time(mode=1)

        # 3. 计算单次同步的延迟 (纳秒)
        # (T_test - T_base) / iterations -> 得到单次同步贡献的毫秒数 -> 换算成纳秒
        sync_latency_ns = ((t_test_ms - t_base_ms) / iterations) * 1e6

        print(f"[DEBUG] Sync Bench: Base={t_base_ms:.4f}ms, Test={t_test_ms:.4f}ms")
        return sync_latency_ns

def main():
    import argparse
    parser = argparse.ArgumentParser(description="Run extended GPU calibration for updated time/power models.")
    parser.add_argument("--runs", type=int, default=5, help="Number of measurements per microbenchmark.")
    parser.add_argument("--device", type=int, default=0, help="CUDA device ID.")
    parser.add_argument("--sleep", type=float, default=5.0, help="Sleep time after each measurement.")
    parser.add_argument("--output", type=str, default="calibration.json", help="Output calibration file.")
    args = parser.parse_args()

    calibrator = Calibrator(device_id=args.device,
                            runs=args.runs,
                            idle_sleep=args.sleep,
                            calibration_file=args.output)
    calibrator.run_extended_calibration()

if __name__ == "__main__":
    main()
