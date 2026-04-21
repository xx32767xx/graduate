#!/usr/bin/env python3
import sys
import time
import numpy as np
import json
import os

import pycuda.driver as cuda

from gpu_common import GPUArchitecture, NVML_ENABLED, nvmlDeviceGetPowerUsage

try:
    import cupy as cp
    HPC_ENABLED = True
except ImportError:
    HPC_ENABLED = False


class Calibrator:

    def __init__(self, device_id=0, runs=3, idle_sleep=2.0,
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
        overhead_ns   = self._repeat_and_average(self._measure_kernel_launch_overhead)
        lat_coal_ns   = self._repeat_and_average(lambda: self._measure_global_latency(uncoalesced=False))
        lat_uncoal_ns = self._repeat_and_average(lambda: self._measure_global_latency(uncoalesced=True))
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

        # Power measurements
        idle_pw = self._repeat_and_average(self._measure_idle_power)

        occupancy_shape_param = self._measure_shape_occupancy_factor(idle_pw)

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

    def _measure_shape_occupancy_factor(self, idle_pw):

        if not NVML_ENABLED or (self.arch.nvml_handle is None):
            print("[WARN] NVML not enabled; returning fallback shape factor=0.2")
            return 0.2

        from pycuda.compiler import SourceModule
        import time

        # We define 8 shapes, each having 256 threads total: (bx*by=256).
        shapes = [
            (16,16), (32,8), (64,4), (128,2), (256,1),
            (8,32),  (4,64), (2,128)
        ]

        kernel_src = r'''
        __global__ void shape_test(float *data, int N, int loops) {
            int tidx = threadIdx.x + blockIdx.x * blockDim.x;
            int tidy = threadIdx.y + blockIdx.y * blockDim.y;
            int tid = tidx * blockDim.y + tidy;
            if(tid >= N) return;
            float val = data[tid];
            for(int i = 0; i < loops; i++) {
                val = val * 1.0001f + 0.0001f;
            }
            data[tid] = val;
        }
        ''';

        mod = SourceModule(kernel_src)
        kernel = mod.get_function("shape_test")

        N = 1_048_576  # e.g. 1 million
        loops = 50_000_000  # ensure a few seconds so that power stabilizes
        d_data = cuda.mem_alloc(N*4)
        import numpy as np

        host_data = np.random.randn(N).astype(np.float32)
        cuda.memcpy_htod(d_data, host_data)

        # WARMUP: e.g. do one shape to get the GPU 'warmed up'
        kernel(d_data, np.int32(N), np.int32(loops),
            block=(16,16,1), grid=((N // 256),1,1))
        cuda.Context.synchronize()

        shape_results = []  # we'll store (bx, by, aspect_ratio, raw_power_w) here

        for (bx, by) in shapes:
            grid_x = (N + bx*by - 1) // (bx*by)
            samples = []

            start_evt = cuda.Event()
            end_evt   = cuda.Event()

            start_evt.record()
            kernel(d_data, np.int32(N), np.int32(loops),
                block=(bx,by,1), grid=(grid_x,1,1))
            end_evt.record()

            # poll power while kernel is running
            while not end_evt.query():
                pwr_w = nvmlDeviceGetPowerUsage(self.arch.nvml_handle)/1000.0
                samples.append(pwr_w)
                time.sleep(0.02)
            end_evt.synchronize()
            cuda.Context.synchronize()

            if not samples:
                print(f"[WARN] No power samples for shape ({bx}x{by}), skipping.")
                continue

            avg_power_w = float(np.mean(samples))
            # Subtract idle to get 'delta', though we can store raw too
            delta_power = avg_power_w - idle_pw
            aspect_ratio = (bx / by) if (bx >= by) else (by / bx)

            shape_results.append((bx, by, aspect_ratio, delta_power))

        d_data.free()

        if not shape_results:
            raise ValueError("[ERROR] No shape data collected. Possibly all shapes got 0 samples?")

        # Identify the 'square' shape data for normalizing
        # We'll store them in arrays for easier fitting/plotting:
        bxs, bys, aspects, delta_powers = zip(*shape_results)

        # Find index of (16,16) among shape_results if present
        sq_idx = None
        for i, (bx,by,_,_) in enumerate(shape_results):
            if bx == 16 and by == 16:
                sq_idx = i
                break

        if sq_idx is None:
            print("[WARN] No valid square block shape data (16,16) found. Using first as baseline.")
            base_power_delta = delta_powers[0]
        else:
            base_power_delta = delta_powers[sq_idx]

        # If the baseline is zero or negative for some reason, clamp it so we don't divide by 0
        if base_power_delta < 1e-5:
            base_power_delta = max(1e-5, base_power_delta)
            print(f"[WARN] The delta power for square shape is very small. Using 1e-5 as fallback baseline.")

        normalized = [dp / base_power_delta for dp in delta_powers]
        ln_aspects = np.log(aspects)

        # If everything is near 1, or if aspect=1 => ln(1)=0 => cluster, that's okay. 
        # We'll just do a linear fit in ln(aspect) vs normalized.
        coeffs = np.polyfit(ln_aspects, normalized, 1)
        slope   = coeffs[0]
        intercept = coeffs[1]
        shape_factor = abs(slope)

        # Print textual table of data
        print("\n[INFO] Occupancy factor data by shape:")
        print("   Shape (bx x by) | Aspect | RawDeltaPower(W) | NormalizedPower")
        for (bx, by, asp, dp), norm in zip(shape_results, normalized):
            print(f"   {bx} x {by:<3}  | {asp:6.2f} | {dp:8.3f}           | {norm:8.3f}")
        print(f"[INFO] Fitted slope in ln(aspect) vs. normalized power = {slope:.4f}, intercept={intercept:.4f}\n")

        # Now produce a more labeled plot
        import matplotlib.pyplot as plt
        x_fit = np.linspace(min(ln_aspects)-0.5, max(ln_aspects)+0.5, 100)
        y_fit = slope * x_fit + intercept

        plt.figure(figsize=(8,5))
        plt.scatter(ln_aspects, normalized, label="Measured Data")
        # Label each point with the shape (bx x by)
        for i,(bx,by) in enumerate(zip(bxs,bys)):
            plt.text(ln_aspects[i]+0.03, normalized[i], f"{bx}x{by}", fontsize=9)

        plt.plot(x_fit, y_fit, 'r--', label=f"Linear Fit: slope={slope:.2f}")
        plt.xlabel("ln(Aspect Ratio)")
        plt.ylabel("Normalized Delta Power")
        plt.title("Non-Square Block Shape Penalty (relative to 16x16)")
        plt.legend()
        plt.grid(True)
        plt.savefig("aspect_ratio_penalty.png", bbox_inches='tight')
        plt.close()
        print("[INFO] Saved aspect_ratio_penalty.png with shape labels.\n")

        # Finally we clamp shape_factor and return it
        final_factor = float(max(0.1, min(shape_factor, 0.5)))

        print(f"[INFO] shape_factor (clamped) = {final_factor:.3f}\n")

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
        from pycuda.compiler import SourceModule
        kernel_src = "__global__ void emptyKernel() {}"
        cc = self.arch.compute_capability
        arch_opt = f"-arch=sm_{cc[0]}{cc[1]}"
        mod = SourceModule(kernel_src, options=[arch_opt])
        func = mod.get_function("emptyKernel")
        for _ in range(10):
            func(block=(1,1,1), grid=(1,1))
        cuda.Context.synchronize()

        import statistics
        times_ms = []
        start = cuda.Event()
        end = cuda.Event()
        N = 200
        for _ in range(N):
            start.record()
            func(block=(1,1,1), grid=(1,1))
            end.record()
            end.synchronize()
            times_ms.append(start.time_till(end))
        median_ms = statistics.median(times_ms)
        return median_ms * 1e6

    def _measure_global_latency(self, uncoalesced=False) -> float:
        from pycuda.compiler import SourceModule
        src = r'''
        __global__ void global_latency(float *buf, int N, int chaseIters, int stride, float *d_out)
        {
            if(threadIdx.x != 0 || blockIdx.x != 0) return;
            int pos = 0;
            float accum = 0;
            for(int i=0; i<chaseIters; i++){
                pos = __float_as_int(buf[pos]);
                pos = pos % N;
                accum += pos;
            }
            d_out[0] = accum;
        }
        '''
        cc = self.arch.compute_capability
        arch_opt = f"-arch=sm_{cc[0]}{cc[1]}"
        mod = SourceModule(src, options=[arch_opt])
        func = mod.get_function("global_latency")
        N = 128*1024
        chaseIters = 200000
        strideVal = 37 if uncoalesced else 1
        arr = np.zeros(N, dtype=np.float32)
        pos = 0
        for i in range(N):
            pos = (pos + strideVal) % N
            arr[i] = float(pos)
        d_arr = cuda.mem_alloc(arr.nbytes)
        cuda.memcpy_htod(d_arr, arr)
        d_out = cuda.mem_alloc(4)
        func(d_arr, np.int32(N), np.int32(chaseIters), np.int32(strideVal), d_out,
             block=(1,1,1), grid=(1,1))
        cuda.Context.synchronize()

        start, end = cuda.Event(), cuda.Event()
        start.record()
        func(d_arr, np.int32(N), np.int32(chaseIters), np.int32(strideVal), d_out,
             block=(1,1,1), grid=(1,1))
        end.record()
        end.synchronize()

        ms = start.time_till(end)
        per_load_ns = (ms / chaseIters) * 1e6
        return float(per_load_ns)

    def _measure_partial_coalescing_latency(self, offset=128):
        from pycuda.compiler import SourceModule
        src = r'''
        __global__ void partial_lat(float *buf, int N, int stride, int chaseIters, float* out)
        {
            if(threadIdx.x == 0 && blockIdx.x == 0) {
                int pos = 0;
                float val = 0.0f;
                for(int i=0; i<chaseIters; i++){
                    pos = __float_as_int(buf[pos]);
                    pos = pos % N;
                    val += pos;
                }
                out[0] = val;
            }
        }
        '''
        cc = self.arch.compute_capability
        arch_opt = f"-arch=sm_{cc[0]}{cc[1]}"
        mod = SourceModule(src, options=[arch_opt])
        func = mod.get_function("partial_lat")
        N = 128 * 1024
        chaseIters = 200000
        strideVal = offset // 4
        arr = np.zeros(N, dtype=np.float32)
        pos = 0
        for i in range(N):
            pos = (pos + strideVal) % N
            arr[i] = float(pos)
        d_arr = cuda.mem_alloc(arr.nbytes)
        cuda.memcpy_htod(d_arr, arr)
        d_out = cuda.mem_alloc(4)
        func(d_arr, np.int32(N), np.int32(strideVal), np.int32(chaseIters), d_out,
             block=(1,1,1), grid=(1,1))
        cuda.Context.synchronize()

        start, end = cuda.Event(), cuda.Event()
        start.record()
        func(d_arr, np.int32(N), np.int32(strideVal), np.int32(chaseIters), d_out,
             block=(1,1,1), grid=(1,1))
        end.record()
        end.synchronize()

        ms = start.time_till(end)
        return (ms * 1e6) / chaseIters

    def _measure_shared_latency(self) -> float:
        from pycuda.compiler import SourceModule
        src = r'''
        __global__ void shared_lat(float *out, int loops)
        {
            __shared__ float sdata[128];
            if(threadIdx.x==0){
                for(int i=0;i<128;i++){
                    sdata[i] = float(i);
                }
                float accum = 0;
                for(int i=0; i<loops; i++){
                    accum += sdata[i % 128];
                }
                out[0] = accum;
            }
        }
        '''
        cc = self.arch.compute_capability
        arch_opt = f"-arch=sm_{cc[0]}{cc[1]}"
        mod = SourceModule(src, options=[arch_opt])
        func = mod.get_function("shared_lat")
        d_out = cuda.mem_alloc(4)
        loops = 2_000_000
        func(d_out, np.int32(loops), block=(1,1,1), grid=(1,1))
        cuda.Context.synchronize()

        start, end = cuda.Event(), cuda.Event()
        start.record()
        func(d_out, np.int32(loops), block=(1,1,1), grid=(1,1))
        end.record()
        end.synchronize()

        ms = start.time_till(end)
        per_load_ns = (ms / loops) * 1e6
        return float(per_load_ns)

    def _measure_local_latency(self) -> float:
        from pycuda.compiler import SourceModule
        src = r'''
        __global__ void local_lat_test(float *out, int loops)
        {
            float accum = 0.0f;
            for(int i=0; i<loops; i++){
                accum += i * 1.1f;
            }
            out[0] = accum;
        }
        '''
        cc = self.arch.compute_capability
        arch_opt = f"-arch=sm_{cc[0]}{cc[1]}"
        mod = SourceModule(src, options=[arch_opt])
        func = mod.get_function("local_lat_test")
        d_out = cuda.mem_alloc(4)
        loops = 2_000_000
        func(d_out, np.int32(loops), block=(1,1,1), grid=(1,1))
        cuda.Context.synchronize()

        start, end = cuda.Event(), cuda.Event()
        start.record()
        func(d_out, np.int32(loops), block=(1,1,1), grid=(1,1))
        end.record()
        end.synchronize()

        ms = start.time_till(end)
        per_iter_ns = (ms / loops) * 1e6
        return per_iter_ns

    def _measure_issue_cycles(self) -> float:
        from pycuda.compiler import SourceModule
        src = r'''
        __global__ void issue_bench(float *data, int loops)
        {
            if(threadIdx.x>0 || blockIdx.x>0) return;
            float x = data[0];
            for(int i=0; i<loops; i++){
                x = x * 1.000001f + 1.0f;
            }
            data[0] = x;
        }
        '''
        cc = self.arch.compute_capability
        arch_opt = f"-arch=sm_{cc[0]}{cc[1]}"
        mod = SourceModule(src, options=[arch_opt])
        func = mod.get_function("issue_bench")
        arr = np.array([1.0], dtype=np.float32)
        d_arr = cuda.mem_alloc(arr.nbytes)
        cuda.memcpy_htod(d_arr, arr)
        loops = 10_000_000

        # Warmup
        func(d_arr, np.int32(loops), block=(1,1,1), grid=(1,1))
        cuda.Context.synchronize()

        start, end = cuda.Event(), cuda.Event()
        start.record()
        func(d_arr, np.int32(loops), block=(1,1,1), grid=(1,1))
        end.record()
        end.synchronize()

        ms = start.time_till(end)
        total_s = ms * 1e-3
        cycles_est = total_s * self.arch.clock_rate_hz

        instructions_per_loop = 2
        cpti = cycles_est / (loops*instructions_per_loop)
        measure_issue_cycles = cpti
        return measure_issue_cycles if measure_issue_cycles>=1.0 else 4.0

    def _measure_streaming_bandwidth(self) -> float:
        from pycuda.compiler import SourceModule
        import statistics
        src = r'''
        __global__ void copy_kernel(const float* __restrict__ in, float* __restrict__ out, int N)
        {
            int tid = blockDim.x * blockIdx.x + threadIdx.x;
            if(tid < N){
                out[tid] = in[tid];
            }
        }
        '''
        cc = self.arch.compute_capability
        arch_opt = f"-arch=sm_{cc[0]}{cc[1]}"
        mod = SourceModule(src, options=[arch_opt])
        func = mod.get_function("copy_kernel")
        N = 16_777_216
        a_host = np.random.randn(N).astype(np.float32)
        b_host = np.zeros_like(a_host)
        d_a = cuda.mem_alloc(a_host.nbytes)
        d_b = cuda.mem_alloc(a_host.nbytes)
        cuda.memcpy_htod(d_a, a_host)

        block_size = 256
        grid_size = (N + block_size - 1)//block_size

        # warmup
        for _ in range(5):
            func(d_a, d_b, np.int32(N),
                 block=(block_size,1,1), grid=(grid_size,1,1))
        cuda.Context.synchronize()

        times_ms = []
        runs = 10
        start, end = cuda.Event(), cuda.Event()
        for _ in range(runs):
            start.record()
            func(d_a, d_b, np.int32(N),
                 block=(block_size,1,1), grid=(grid_size,1,1))
            end.record()
            end.synchronize()
            times_ms.append(start.time_till(end))

        import statistics
        median_ms = statistics.median(times_ms)
        bytes_copied = N * 4
        eff_bw_Bps = (bytes_copied / (median_ms * 1e-3))
        return eff_bw_Bps / 1e9



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
