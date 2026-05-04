#!/usr/bin/env python3
import math
from gpu_common import GPUArchitecture, KernelAnalysis

class HongKimExecutionTimeModel:
    """
    Updated Hong–Kim GPU execution time model for modern architectures.
    Reads all required parameters (latencies, departure delays, etc.) from
    calibration.json. Allows shape-based concurrency correction.
    """

    def __init__(self,
                 arch: GPUArchitecture,
                 analysis: KernelAnalysis,
                 grid_xy,
                 block_xy):
        self.arch = arch
        self.analysis = analysis
        self.grid_xy  = grid_xy   # (gdimx, gdimy)
        self.block_xy = block_xy  # (bdimx, bdimy)

        cdata = arch.calibration_data
        # Ensure all required calibration keys are present
        required_keys = [
            "Mem_LD_coal_ns",
            "Mem_LD_uncoal_ns",
            "Mem_LD_partial_ns",
            "Mem_LD_shared_ns",
            "Mem_LD_local_ns",
            "issue_cycles",
            "baseline_kernel_overhead_ns",
            "Departure_del_coal_s",
            "Departure_del_uncoal_s"
        ]
        for key in required_keys:
            if key not in cdata:
                raise KeyError(f"Calibration key '{key}' missing in {arch.calibration_file}. "
                               f"Please re-run calibration.py on your device.")

        self.Mem_coal_ns     = float(cdata["Mem_LD_coal_ns"])
        self.Mem_uncoal_ns   = float(cdata["Mem_LD_uncoal_ns"])
        self.Mem_partial_ns  = float(cdata["Mem_LD_partial_ns"])
        self.Mem_shared_ns   = float(cdata["Mem_LD_shared_ns"])
        self.Mem_local_ns    = float(cdata["Mem_LD_local_ns"])
        self.issue_cycles    = float(cdata["issue_cycles"])
        self.baseline_ns     = float(cdata["baseline_kernel_overhead_ns"])

        self.Dep_coal_s     = float(cdata["Departure_del_coal_s"])
        self.Dep_uncoal_s   = float(cdata["Departure_del_uncoal_s"])
        self.Dep_part_s     = 0.5 * (self.Dep_coal_s + self.Dep_uncoal_s)  # partial = average
        self.Dep_shared_s   = float(cdata.get("Departure_del_shared_s", 1.0/self.arch.clock_rate_hz))
        self.Dep_local_s    = float(cdata.get("Departure_del_local_s",   self.Dep_uncoal_s))

    def estimate_time_ns(self) -> float:
        """
        Estimate total kernel runtime in nanoseconds using the Hong–Kim style concurrency model.
        """
        # Unpack grid & block
        gx, gy = self.grid_xy
        bx, by = self.block_xy
        total_blocks = gx * gy

        warp_size = self.arch.attrs.get('WARP_SIZE', 32)
        threads_per_block = bx * by
        warps_per_block   = (threads_per_block + warp_size - 1) // warp_size
        total_warps       = total_blocks * warps_per_block

        # 访存指令
        mem_coal   = float(self.analysis.mem_coal )
        mem_uncoal = float(self.analysis.mem_uncoal )
        mem_part   = float(self.analysis.mem_partial)
        mem_loc    = float(self.analysis.local_insts)   #局部内存 显存溢出
        mem_shr    = float(self.analysis.shared_insts)   #共享内存 不过显存

        global_count = mem_coal + mem_uncoal + mem_part     #过显存次数
        mem_total    = global_count + mem_loc + mem_shr     #所有访存次数

        # 计算指令
        comp_fp  = float(self.analysis.fp_insts )
        comp_int = float(self.analysis.int_insts)
        comp_sfu = float(self.analysis.sfu_insts)
        comp_alu = float(self.analysis.alu_insts)
        comp_sum = comp_fp + comp_int + comp_sfu + comp_alu

        # 同步指令
        sync_count = float(self.analysis.synch_insts)

        # 换算访存延迟单位到秒
        lat_coal   = self.Mem_coal_ns   * 1e-9
        lat_uncoal = self.Mem_uncoal_ns * 1e-9
        lat_part   = self.Mem_partial_ns* 1e-9
        lat_shared = self.Mem_shared_ns * 1e-9
        lat_local  = self.Mem_local_ns  * 1e-9

        # 计算显存访存延迟
        if global_count > 1e-9:
            global_lat = (
                mem_coal * lat_coal
              + mem_uncoal * lat_uncoal
              + mem_part   * lat_part
            ) / global_count
        else:
            global_lat = 0.0

        if mem_total < 1:
            #单纯计算
            comp_cycles = comp_sum * self.issue_cycles
            time_ns = (comp_cycles / self.arch.clock_rate_hz)*1e9 + self.baseline_ns
            return time_ns

        # 访存次数归一化处理
        frac_global = global_count / mem_total if mem_total>0 else 0.0
        frac_local  = mem_loc / mem_total      if mem_total>0 else 0.0
        frac_shared = mem_shr / mem_total      if mem_total>0 else 0.0

        coalesce_eff = min(1.0, float(bx)/warp_size) if warp_size>0 else 1.0  # 计算线程合并效率
        effective_global_lat = global_lat * coalesce_eff  # 更新有效显存访存延迟

        # 计算所有访存延迟
        avg_mem_lat = (
            effective_global_lat*frac_global
          + lat_local*frac_local
          + lat_shared*frac_shared
        )
        print(f"mem_total:{mem_total}    avg_mem_lat:{avg_mem_lat}")
        mem_cycles  = mem_total*(avg_mem_lat*self.arch.clock_rate_hz)   # 访存周期
        comp_cycles = comp_sum*self.issue_cycles    #计算周期
        # 在estimate_time_ns中添加：
        print(f"clock_rate_hz: {self.arch.clock_rate_hz}")
        print(f"avg_mem_lat * clock_rate = {avg_mem_lat * self.arch.clock_rate_hz}")
        print(f"mem_cycles = {mem_total} * {avg_mem_lat * self.arch.clock_rate_hz} = {mem_cycles}")
        # 计算偏离延迟
        if global_count>1e-9:
            w_coal = mem_coal/global_count
            w_un   = mem_uncoal/global_count
            w_part = mem_part/global_count
            dd_global = (w_coal*self.Dep_coal_s
                       + w_un  *self.Dep_uncoal_s
                       + w_part*self.Dep_part_s)
        else:
            dd_global=0.0

        dd_local  = self.Dep_local_s
        dd_shared = self.Dep_shared_s
        mem_dep   = (dd_global*frac_global
                   + dd_local *frac_local
                   + dd_shared*frac_shared)
        if mem_dep<1e-15:
            mem_dep=1e-15

        # 硬件限制  N:单个SM不考虑其他约束时最多执行的warp数
        blocks_per_sm = self._calc_blocks_per_sm(threads_per_block)
        warps_per_sm  = blocks_per_sm * warps_per_block
        N = float(warps_per_sm)

        # 维持多少个Warp同时进行访存
        MWP_woBW_full = avg_mem_lat/mem_dep
        MWP_woBW = min(MWP_woBW_full, N)

        # 带宽限制
        memBW_Bps = self.arch.memory_bandwidth_gbps()*1e9
        load_bytes_warp = 4.0*warp_size  # approximate
        warp_bw   = (load_bytes_warp/avg_mem_lat) if avg_mem_lat>1e-15 else 1e12  #单个warp带宽
        sm_bw     = memBW_Bps/max(self.arch.sm_count,1)  #单个sm分到的带宽
        MWP_peak_BW = sm_bw/warp_bw if warp_bw>1e-9 else 1e6
        MWP = min(MWP_woBW, MWP_peak_BW, N)
        print(f"blocks_per_sm:{blocks_per_sm} warps_per_block:{warps_per_block} N:{N} MWP_woBW:{MWP_woBW} MWP_peak_BW:{MWP_peak_BW} ")

        # 计算多少warp计算能覆盖访存
        if comp_cycles>1e-9:
            CWP_full = (mem_cycles+comp_cycles)/comp_cycles
        else:
            CWP_full = N
        CWP = min(CWP_full,N)

        comp_p   = comp_cycles/mem_total if mem_total>0 else 0.0
        Mem_cy   = mem_cycles
        Comp_cy  = comp_cycles
        reps     = self._calc_block_reps(total_blocks, blocks_per_sm)  # 理想波数


        if abs(MWP-N)<1e-3 and abs(CWP-N)<1e-3:
            totalCycles = (Mem_cy + Comp_cy + comp_p*(MWP-1)) * reps
            print("abs(MWP-N)<1e-3 and abs(CWP-N)<1e-3")
        elif CWP>=MWP or (Comp_cy>Mem_cy):
            totalCycles = (Mem_cy*(N/MWP) + comp_p*(MWP-1))* reps
            print("CWP>=MWP or (Comp_cy>Mem_cy")
        else:
            Mem_L_cycles = avg_mem_lat*self.arch.clock_rate_hz
            totalCycles  = (Mem_L_cycles + Comp_cy*N) * reps   # 完全串行
            print("else")


        # sync overhead
        if mem_dep>1e-15 and warps_per_sm>1:  #如果一个内核几乎不碰内存，那么 __syncthreads()造成的“等待访存返回”的木桶效应就不存在了
            depCycles   = mem_dep*self.arch.clock_rate_hz
            blocks_psm  = blocks_per_sm
            scount      = sync_count/float(total_blocks) if total_blocks>0 else 0.0
            syncCycles  = depCycles*(MWP-1)*scount*blocks_psm*reps  # 代表因为同步导致的流水线排空损失*平均每个Block的同步次数*波数
            totalCycles+= syncCycles
            print(f"sync_cycle:{syncCycles}")

        # shape factor corrections
        block_dim_x, block_dim_y = bx, by
        ptx_stride_efficiency = self.analysis.mem_coal / max(self.analysis.mem_coal + self.analysis.mem_uncoal, 1)
        ce_x = max(float(bx) / warp_size, ptx_stride_efficiency)

        aspect_ratio = float(block_dim_x)/(block_dim_y if block_dim_y>0 else 1.0)
        calibrated_shape_alpha = self.arch.calibration_data.get("shape_occupancy_factor", 0.2)
        log_ratio = math.log2(max(aspect_ratio, 1.0 / max(aspect_ratio, 1e-6)))
        shape_balance = 1.0 + (calibrated_shape_alpha * log_ratio / 10.0)

        total_compute = (self.analysis.fp_insts
                       + self.analysis.int_insts
                       + self.analysis.sfu_insts
                       + self.analysis.alu_insts)
        total_memory  = (self.analysis.mem_coal
                       + self.analysis.mem_uncoal
                       + self.analysis.mem_partial
                       + self.analysis.local_insts
                       + self.analysis.shared_insts)
        compute_intensity = float(total_compute)/max(total_memory,1.0)  # 并不是所有的算子都对形状一样敏感

        base_factor = (shape_balance/ce_x) if ce_x>1e-9 else shape_balance
        shape_factor = 1.0 + (base_factor-1.0)/(1.0+compute_intensity)
        shape_factor = max(1.0, min(shape_factor,1.5))

        totalCycles*= shape_factor
        # 4. 加上波数
        print(f"N:{N} MWP:{MWP}  CWP:{CWP} mem_cy:{Mem_cy} comp_cy:{Comp_cy}   shapef:{shape_factor} base_ns:{self.baseline_ns} reps:{reps}")
        kernel_ns = (totalCycles / self.arch.clock_rate_hz) * 1e9
        return float(kernel_ns)

    def _calc_blocks_per_sm(self, threads_per_block: int) -> int:   # 计算一个sm能有多少块
        """
        Compute how many blocks can run on one SM concurrently,
        respecting thread-limit, register-limit, shared-memory, etc.
        """
        arch_attrs = self.arch.attrs
        max_thr_sm = arch_attrs['MAX_THREADS_PER_MULTIPROCESSOR']
        if threads_per_block<1:
            return 1
        tlim = max_thr_sm//threads_per_block

        regs_needed = self.analysis.registers_per_thread*threads_per_block
        max_regs_sm = arch_attrs['MAX_REGISTERS_PER_MULTIPROCESSOR']
        rlim = max_regs_sm//regs_needed if regs_needed>0 else tlim

        max_shm_sm = arch_attrs['MAX_SHARED_MEMORY_PER_MULTIPROCESSOR']
        shared_need = self.analysis.shared_mem_bytes
        share_mem_lim = max_shm_sm//shared_need if shared_need>0 else tlim

        hw_blocklim   = arch_attrs.get('MAX_BLOCKS_PER_MULTIPROCESSOR',16)
        blocks_possible = min(tlim, rlim, share_mem_lim, hw_blocklim)
        return max(1, blocks_possible)

    def _calc_block_reps(self, total_blocks: int, blocks_per_sm: int) -> float:
        """
        # times we repeat the concurrency set, e.g. if total blocks = 100
        # blocks_per_sm= 4 and #SM= 10 => 4*10=40 => need 3 rounds
        """
        # 计算满载时的总波数
        sm_count = self.arch.sm_count
        blocks_round = blocks_per_sm*sm_count
        import math
        return float(math.ceil(total_blocks/blocks_round))
