import math
import re
from collections import defaultdict
from typing import Dict, List, Tuple

from gpu_common import GPUArchitecture


class InstInfo:
    def __init__(self, op:str, args:List[str]):
        self.op = op
        self.args = args # 存储用到的寄存器编号列表

    def __str__(self):
        args = ""
        for s in self.args:
            args += s + " "
        return self.op + " " + args

class LLVMAnalyzer:
    """
    针对天数智芯 (Iluvatar) 的 LLVM IR 性能分析器
    功能：从 .ll 文件中提取计算、访存和控制流信息，用于性能建模。
    """

    def __init__(self, llvm_code: str, arch, block_x: int, block_y: int, config: dict = None, kernel_param:dict = None):
        self.kernel_part_name = self._generate_mangled_name(
            kernel_param["template_param"],
            kernel_param["data_type"]
        )
        self.llvm_code,self.params = self._preprocess_llvm(llvm_code,self.kernel_part_name)
        self.arch = arch
        self.block_x = block_x
        self.block_y = block_y
        self.config = config or {}
        self.kernel_param = kernel_param or {}

        # 硬件参数初始化 (适配天数智芯)
        self.regs_per_thread = 0  # LLVM IR 中为虚拟寄存器，后续需估算
        self.shared_mem_used = 0
        self.calib = arch.calibration_data if hasattr(arch, 'calibration_data') else {}

        # 核心数据结构
        self.labels: Dict[str, int] = {}
        self.cfg: Dict[int, List[int]] = defaultdict(list)
        self.basic_blocks: List[List[str]] = []
        self.line_to_block: Dict[int, int] = {}
        self.block_weights: Dict[int, int] = {}
        self.block_probs: Dict[int, float] = {}
        self.reg_map: Dict[str, InstInfo] = {}

        self.occupancy_factor = 1.0
        self.shared_bank_conflict_factor = 1.0
        self.instr_counts = defaultdict(int)

        # 经验修正因子
        self.occupancy_factor = 1.0
        self.shared_bank_conflict_factor = 1.0

        # llvm分析
        self.llvm_analysis:list[str] = []

        # 模拟寄存器分配
        self.reg_use:Dict[int,set[str]] = defaultdict(set)
        self.reg_def:Dict[int,set[str]] = defaultdict(set)
        self.reg_in:Dict[int,set[str]] = defaultdict(set)
        self.reg_out:Dict[int,set[str]] = defaultdict(set)


    def analyze(self):
        print(self.kernel_part_name)
        self._extract_kernel_analyses(self.kernel_part_name)

        self._build_label_map()
        print(self.labels)

        self._split_basic_blocks()
        print(self.line_to_block)
        self._connect_blocks()
        self._parse_llvm_resource_usage()

        for b_idx in range(len(self.basic_blocks)):
            # 这里提前构建寄存器图
            self._count_block_insts(b_idx)

        self._analyze_branch_conditions()
        print(self.block_probs)

        loops = self._detect_loops()
        loop_info = self._get_loop_info(loops)
        print(loop_info)
        self._calculate_block_weights(loops)

        self.occupancy_factor = self._estimate_occupancy_factor()
        self.shared_bank_conflict_factor = self._estimate_shared_bank_conflicts()

        inst_counts = self._accumulate_kernel_totals()
        mem_coal, mem_un, mem_part = self._coalescing_breakdown(inst_counts['ldg'] + inst_counts['stg'])

        total_compute = inst_counts['fpc'] + inst_counts['inc'] + inst_counts['fpc'] + inst_counts['alc']
        total_insts = (mem_coal + mem_un + mem_part +
                       inst_counts['loc'] + inst_counts['shr'] + inst_counts['sy'] + total_compute)
        self._debug_pressure()


        from gpu_common import KernelAnalysis
        return KernelAnalysis(
            mem_coal=int(mem_coal),
            mem_uncoal=int(mem_un),
            mem_partial=int(mem_part),
            local_insts=int(inst_counts['loc']),
            shared_insts=int(inst_counts['shr']),
            synch_insts=int(inst_counts['sy']),
            fp_insts=int(inst_counts['fpc']),
            int_insts=int(inst_counts['inc']),
            sfu_insts=int(inst_counts['sfc']),
            alu_insts=int(inst_counts['alc']),
            total_insts=int(total_insts),
            registers_per_thread=self.regs_per_thread,
            shared_mem_bytes=self.shared_mem_used,
            block_x=self.block_x,
            block_y=self.block_y
        )

    def _generate_mangled_name(self, template_param: list, data_types: list) -> str:
        """
        根据 Itanium ABI 混淆规则生成 add_rmsnormKernel 的全称
        """
        # 基础类型映射
        type_map = {
            "float": "f",
            "half": "6__half",
            "bfloat16": "13__nv_bfloat16"
        }

        # 1. 处理模板部分 (ILj...E)
        block_size = template_param[0]
        mangled = f"ILj{block_size}E"

        # 2. 处理类型序列并执行压缩逻辑 (Substitution)
        raw_types = [type_map.get(t, "f") for t in data_types]
        seen_types = []
        final_types = ""

        for i, t in enumerate(raw_types):
            if t in seen_types:
                # 如果类型之前出现过，使用压缩符号
                idx = seen_types.index(t)
                if idx == 0:
                    final_types += "S0_"  # 第一个重复通常是 S_ 或 S0_，根据编译器实现有细微差别
                else:
                    final_types += f"S{idx - 1}_"
            else:
                final_types += t
                seen_types.append(t)

        # 组装完整的函数名前缀（匹配 define @ 后的内容）
        return f"{mangled}{final_types}"

    def _preprocess_llvm(self, raw_llvm_code: str, target_fingerprint: str) -> Tuple[List[str], List[str]]:
        # 1. 生成精准的部分匹配指纹
        # 2. 精准匹配与清洗
        clean_lines = []
        is_extracting = False
        raw_lines = raw_llvm_code.splitlines()
        params = []

        for line in raw_lines:
            # 只有匹配到生成的精准全称才开始提取
            if is_extracting:
                content = line.split(';')[0].strip()
                if content:
                    clean_lines.append(content)
                if line.strip() == "}":
                    break

            if not is_extracting:
                if f"{target_fingerprint}" in line:
                    parts = re.split(r'[\s(),]+', line)
                    if parts[0] == 'define':
                        param_section_match = re.search(r'\((.*)\)', line, re.DOTALL)
                        param_section = param_section_match.group(1)
                        reg_pattern = re.compile(r'%([\w.]+)')
                        params = reg_pattern.findall(param_section)
                        for p in parts:
                            if f"{target_fingerprint}" in p and p[0] == '@':
                                is_extracting = True
                                break

        if not clean_lines:
            raise ValueError(f"Match Failed! Could not find kernel: {target_fingerprint}")

        return clean_lines,params

    def _parse_llvm_resource_usage(self):

        # 1. 估计寄存器使用数目
        self._build_use_def()
        self.regs_per_thread = int(self._estimate_registers_precise())

        # 2. 统计共享内存
        self.shared_mem_used = self._extract_shm_from_ir()

    def _extract_shm_from_ir(self) -> int:
        total_bytes = 0
        type_size_map = {
            "float": 4,
            "double": 8,
            "i64": 8,
            "i32": 4,
            "i16": 2,
            "i8": 1,
            "half": 2,
            "bfloat": 2,  # 天数智芯常用的 bf16
            "__nv_bfloat16": 2,
            "v2bf16": 4
        }

        # 寻找 addrspace(3) 且带有数组定义的行 [1024 x float]
        shm_pattern = re.compile(r"addrspace\(3\)\s+global\s+\[(\d+)\s+x\s+([\w_]+)]")

        # 遍历全文（注意：Shared Memory 定义通常在函数体外，即文件头部）
        for line in self.llvm_code:
            if "addrspace(3)" in line:
                match = shm_pattern.search(line)
                if match:
                    count = int(match.group(1))
                    dtype = match.group(2)
                    # 获取该类型的字节数，默认为 4 字节
                    size = type_size_map.get(dtype, 4)
                    total_bytes += count * size

        return total_bytes

    def _build_label_map(self):
        label_pattern = re.compile(r"^([\w._]+):$")
        self.labels["-1"] = 0
        for idx, line in enumerate(self.llvm_code):
            match = label_pattern.match(line)
            if match:
                label_name = match.group(1)
                self.labels[label_name] = idx

        print(f"[LLVM Analysis] Mapped {len(self.labels)} labels.")

    def _split_basic_blocks(self):
        """
        根据 self.labels 提供的索引，将指令流切割为基本块。
        更新：
        - self.basic_blocks: List[List[str]]，存储每个块的指令
        - self.line_to_block: Dict[int, int]，记录每一行指令属于哪个块索引
        """
        # 将标签按行索引排序，确保切割顺序正确
        sorted_labels = sorted(self.labels.items(), key=lambda x: x[1])
        num_labels = len(sorted_labels)

        self.basic_blocks = []
        self.line_to_block = {}

        for i in range(num_labels):
            # 如果是最后一个标签，截取到列表末尾；否则截取到下一个标签之前
            start_idx = sorted_labels[i][1]
            end_idx = sorted_labels[i + 1][1] if i + 1 < num_labels else len(self.llvm_code)

            # 提取块指令 (排除掉标签行本身)
            block_content = []
            for line_idx in range(start_idx, end_idx):
                line = self.llvm_code[line_idx]
                block_content.append(line)
                self.line_to_block[line_idx] = i

            self.basic_blocks.append(block_content)

        print(f"[LLVM Analysis] Successfully split {len(self.basic_blocks)} basic blocks.")

    def _connect_blocks(self):
        for bid,block in enumerate(self.basic_blocks):
            if not block: continue
            last_inst = block[-1]  # 取最后一条指令
            successors = []
            # 情况 A: 有条件跳转
            if "br i1" in last_inst:
                # 正则提取两个 label (例如 %15, %20)
                matches = re.findall(r"label %([\w.]+)", last_inst)
                for bra_labels in matches:
                    successors.append(self.line_to_block[self.labels[bra_labels]+1])
            # 情况 B: 无条件跳转
            elif "br label" in last_inst:
                match = re.search(r"label %([\w.]+)", last_inst)
                if match:
                    successors.append(self.line_to_block[self.labels[match.group(1)]+1])
            # 情况 C: 返回指令 (没有后续)
            elif "ret" in last_inst:
                pass
            print(f"building: {bid} {successors}")
            self.cfg[bid] = successors

    def _detect_loops(self) -> List[Tuple[int, int]]:
        """
        检测 CFG 中的回边，识别循环结构
        """
        visited = set()
        stack = set()  # 使用 set 加快查询速度
        loops = []

        def dfs(u):
            visited.add(u)
            stack.add(u)
            for v in sorted(self.cfg[u]):
                if v not in visited:
                    dfs(v)
                elif v in stack:
                    # 发现回边：v 是之前的祖先节点，说明存在循环
                    print(f"[LLVM Analysis] Found Loop: Entry B{v} <- Source B{u}")
                    loops.append((v, u))
            stack.remove(u)

        for bid in range(len(self.basic_blocks)):
            if bid not in visited:
                dfs(bid)

        return loops


    def _get_blocks_in_loop(self, head: int, tail: int) -> set:
        """
        给定回边 (tail -> head)，找出循环体中的所有块。
        逻辑：从 tail 开始在 CFG 上反向搜索，直到到达 head 为止的所有路径。
        """
        loop_blocks = {head, tail}
        stack = [tail]

        while stack:
            curr = stack.pop()
            # 查找所有能到达 curr 的前驱块 (Predecessors)
            for prev_bid, successors in self.cfg.items():
                if curr in successors and prev_bid not in loop_blocks:
                    # 只有在 head 之后的块才属于这个自然循环
                    if prev_bid >= head:
                        loop_blocks.add(prev_bid)
                        stack.append(prev_bid)

        return loop_blocks

    def _estimate_loop_iterations(self, loops: List[Tuple[int, int]]) -> Dict[Tuple[int, int], int]:
        loop_iters = {}
        user_loops = self.config.get("loop_iterations", {})

        def block_start_line(b_idx: int) -> int:
            """获取基本块在 self.llvm_code 中的起始行索引"""
            # 这里的逻辑假设你的 line_to_block 已经填满
            for i, blk in self.line_to_block.items():
                if blk == b_idx:
                    return i
            return -1

        def line_if_label(line_idx: int) -> str:
            """检查指定行是否是标签，并返回标签名"""
            # self.labels 结构为 {name: line_index}
            for lbl, li in self.labels.items():
                if li == line_idx:
                    return lbl
            return None

        for head, tail in loops:
            b_line = block_start_line(head)
            label_name = line_if_label(b_line)

            # 使用 (head, tail) 作为 Key，避免 head 被覆盖
            if label_name and label_name in user_loops:
                loop_iters[(head, tail)] = user_loops[label_name]
            else:
                loop_iters[(head, tail)] = 1

        return loop_iters

    def _calculate_block_weights(self, loops: list[Tuple[int, int]]) -> None:
        """
        计算每个基本块的执行权重，自动处理嵌套循环。
        """
        # 1. 初始化每个块的权重为 1
        self.block_weights = {bid: self.block_probs[bid] for bid in range(len(self.basic_blocks))}

        # 2. 识别所有循环及其对应的迭代次数
        loop_iters = self._estimate_loop_iterations(loops)  # 返回 {head: count}

        # 3. 遍历每个循环，更新其内部块的权重
        for head, tail in loops:
            # 获取该循环包含的所有基本块 ID
            loop_members = self._get_blocks_in_loop(head, tail)
            count = loop_iters.get((head,tail), 1)

            print(f"[LLVM Analysis] Applying weight {count} to Loop starting at Block {head}")
            for bid in loop_members:
                self.block_weights[bid] *= count


    def _accumulate_kernel_totals(self) -> Dict[str, float]:
        """
        结合循环权重，统计整个内核全路径的指令压力
        """
        # 1. 定义分类标签（必须与 _count_block_insts 返回的 tuple 顺序一致）
        keys = ['ldg', 'stg', 'loc', 'shr', 'sy', 'fpc', 'inc', 'sfc', 'alc']
        totals = {k: 0.0 for k in keys}

        # 3. 遍历每一个基本块进行加权累加
        for b_idx in range(len(self.basic_blocks)):
            # 获取该块的静态指令计数 (例如: (2, 1, 0, 0, ...))
            counts_tuple = self._count_block_insts(b_idx)
            iteration_factor = self.block_weights.get(b_idx, 1)

            for i, key in enumerate(keys):
                # 核心逻辑：该块的指令数 * 它要执行的次数
                totals[key] += counts_tuple[i] * iteration_factor

        return totals

    def _count_block_insts(self, b_idx: int) -> Tuple[int, ...]:
        block_lines = self.basic_blocks[b_idx]
        ldg = stg = loc = shr = sy = fpc = inc = sfc = alc = 0

        for ln in block_lines:
            orig_ln = ln.split(';')[0].strip()  # 纯净原行用于关键字搜索
            if not orig_ln or orig_ln.endswith(':'): continue

            parts = orig_ln.split()
            if not parts: continue

            # --- 情况 A: 第一个元素没有 % (操作符开头) ---
            if not parts[0].startswith('%'):
                op = parts[0].lower()
                if op == 'store':
                    if "addrspace(1)" in orig_ln:
                        stg += 1
                    elif "addrspace(3)" in orig_ln:
                        shr += 1
                    elif "addrspace(5)" in orig_ln:
                        loc += 1
                    else:
                        alc += 1
                elif op in ['br', 'ret']:
                    alc += 1
                elif "barrier" in orig_ln:
                    sy += 1
                elif "llvm.bi.slb.shfl" in orig_ln or "read.ptx.sreg" in orig_ln:
                    alc += 1
                else:
                    alc += 1  # 其他如 switch, fence 等

            # --- 情况 B: 第一个元素有 % (赋值开头，操作符在第三位) ---
            else:
                res_reg = parts[0].replace('%', '')
                if len(parts) < 3:
                    alc += 1
                    continue
                op = parts[2].lower()  # 提取第三个单词作为操作符
                if "read.ptx.sreg.tid.x" in orig_ln:
                    self.reg_map[res_reg] = InstInfo("tid_get", [])
                else:
                    # 提取所有操作数：%寄存器 + 纯数字
                    args = []
                    for p in parts[3:]:
                        cleaned = p.strip(',')
                        if cleaned.startswith('%'):
                            args.append(cleaned.replace('%', ''))
                        elif cleaned.lstrip('-').isdigit():  # 匹配 0, 1, -1, 4096 等
                            args.append(cleaned)
                        elif cleaned.startswith('0x'):  # 匹配 0x3810000000000000 等十六进制
                            args.append(cleaned)
                    # 注意：这里仍然没有存 float 字面量（如 0.000000e+00）
                    # 但对于分支条件分析来说，float 比较不会直接出现在 br i1 的条件中
                    self.reg_map[res_reg] = InstInfo(op, args)

                if op == 'load':
                    if "addrspace(1)" in orig_ln:
                        ldg += 1
                    elif "addrspace(3)" in orig_ln:
                        shr += 1
                    elif "addrspace(5)" in orig_ln:
                        loc += 1
                    else:
                        alc += 1
                elif op in ['fadd', 'fmul', 'fma', 'fsub', 'fneg']:
                    fpc += 1
                elif op in ['add', 'sub', 'shl', 'lshr', 'ashr', 'and', 'or', 'xor', 'icmp', 'zext', 'sext']:
                    inc += 1
                elif op == 'tail':
                    full_line = orig_ln.lower()
                    if 'fma' in full_line:
                        fpc += 1  # 乘加指令是浮点运算的核心
                    elif any(x in full_line for x in ['.sin', '.exp', '.sqrt', '.log', '.pow']):
                        sfc += 1  # 特殊函数单元 (Special Function Unit)
                    elif "llvm.bi.slb.shfl" in full_line or "read.ptx.sreg" in full_line:
                        alc += 1  # 基础算术/系统寄存器
                    else:
                        alc += 1  # 默认归入普通算术逻辑
                elif op in ['getelementptr', 'extractelement', 'insertelement', 'shufflevector', 'phi', 'select']:
                    alc += 1
                else:
                    alc += 1

        return ldg, stg, loc, shr, sy, fpc, inc, sfc, alc

    class InstInfo:
        def __init__(self, op, args):
            self.op = op
            self.args = args  # 存储用到的寄存器编号列表

    def _analyze_memory_strides(self) -> float:
        tid_regs = set()
        total_mem_ops = 0
        stride1_count = 0

        for reg,info in self.reg_map.items():
            if info.op == 'tid_get':
                tid_regs.add(reg)

        # 递归回溯函数：判断某个寄存器是否最终源于 tid.x
        def is_from_tid(reg_name, depth=0):
            if depth > 10: return False  # 防止无限循环
            if reg_name in tid_regs: return True
            if reg_name not in self.reg_map: return False

            # 只要有一个操作数源自 tid，且操作不是大步长乘法，就认为有关联
            info = self.reg_map[reg_name]
            # 排除掉可能导致非连续访问的操作 (比如乘以一个很大的常数步长)
            if info.op == "mul" : return False
            return any(is_from_tid(arg, depth + 1) for arg in info.args)

        # 第二遍扫描：利用映射表判定访存
        for block in self.basic_blocks:
            for ln in block:
                if ("load " in ln or "store " in ln) and "addrspace(1)" in ln:
                    total_mem_ops += 1
                    # 提取指令中引用的地址寄存器
                    addr_regs = [p.replace('%', '').strip(',') for p in ln.split() if p.startswith('%')]

                    if any(is_from_tid(r) for r in addr_regs):
                        stride1_count += 1

        return 1.0 - (stride1_count / total_mem_ops) if total_mem_ops > 0 else 0.0

    def _coalescing_breakdown(self, global_ops: float) -> Tuple[float, float, float]:
        """
        基于 LLVM SSA 回溯结果的访存合并分解模型
        """
        if global_ops <= 0:
            return 0.0, 0.0, 0.0

        # 1. 获取硬件参数
        warp_size = self.arch.attrs.get('WARP_SIZE', 32)
        cache_line_size = self.arch.attrs.get('CACHE_LINE_SIZE', 128)  # 天数智芯通常为 128
        # warp_size = 32
        # cache_line_size = 128  # 天数智芯通常为 128

        # 2. stride = 0.0 代表 100% 合并，stride = 1.0 代表完全离散
        stride_factor = self._analyze_memory_strides()

        # 3. 计算内存事务压力 (Transactions)
        # 如果 stride_factor 为 0，说明是连续访问，每个 Warp 触发的事务极少
        # 这里我们假设一个平均步长，用于估算 Transactions 数量
        # 逻辑：如果是离散访问，transactions 数量会激增
        avg_element_size = 4  # 默认 float
        estimated_stride = 1.0 if stride_factor == 0 else (1.0 / (1.0 - stride_factor + 1e-6))
        transactions = math.ceil(warp_size * estimated_stride * avg_element_size / cache_line_size)

        # 4. 划分访存类型
        # 完全合并部分
        mem_coal = global_ops * (1.0 - stride_factor)

        # 部分合并部分：基于事务数判定
        # 如果事务数在硬件处理窗口内 (<=8)，则认为具有一定的局部性
        part_slope = 1.0 if transactions <= 8 else 0.5
        mem_part = global_ops * stride_factor * part_slope

        # 完全不合并部分
        mem_un = global_ops - mem_coal - mem_part

        return mem_coal, mem_un, mem_part

    def _estimate_occupancy_factor(self) -> float:
        """
        估算活跃度因子：反映硬件隐藏延迟的能力
        """
        # 从校准配置中获取形状修正因子
        shape_factor = float(self.calib.get("shape_occupancy_factor", 0.2))
        da = self.arch.attrs

        # 获取硬件限制，例如天数智芯单个计算单元的最大线程数
        max_thr_sm = da.get('MAX_THREADS_PER_MULTIPROCESSOR', 1536)

        # 这里的 block_x/y 应该是你在解析 LLVM 算子时提取的参数
        thr_block = self.block_x * self.block_y
        if thr_block == 0:
            return 1.0

        # 1. 计算每个 SM 最多能跑多少个 Block
        tlim = max_thr_sm // thr_block

        # 2. 计算每个 Block 包含多少个 Warp
        warp_size = da.get('WARP_SIZE', 32)
        warps_per_block = math.ceil(thr_block / warp_size)

        # 3. 计算每个 SM 上的总 Warp 数
        total_warps_psm = tlim * warps_per_block

        # 4. 计算相对于理想状态（通常为 32 个 Warp）的比例
        ideal_warps = 32.0
        ratio = min(max(total_warps_psm / ideal_warps, 0.25), 1.5)

        # 5. 形状修正：Block 形状越“瘦长”，对缓存的局部性可能越不友好
        aspect_ratio = self.block_x / self.block_y if self.block_y > 0 else 1.0
        final_val = ratio - shape_factor * math.log(max(aspect_ratio, 1e-6))

        return max(0.1, min(final_val, 2.0))

    def _estimate_shared_bank_conflicts(self) -> float:
        """
        估算 Shared Memory 的 Bank 冲突概率
        """
        base_conflict = float(self.calib.get("base_bank_conflict", 1.0))
        warp_size = self.arch.attrs.get('WARP_SIZE', 32)

        # 逻辑：如果 Block 的宽度大于 WarpSize，且涉及 Shared Memory 访问，
        # 往往意味着在进行数据规约或交换，Bank 冲突概率增加。
        # 我们可以通过分析指令中是否有 addrspace(3) 来决定是否触发 1.2x 的惩罚
        has_shared = any("addrspace(3)" in "".join(block) for block in self.basic_blocks)

        if has_shared and self.block_x > warp_size:
            return base_conflict * 1.2
        return base_conflict

    def _normalize_reg(self, token: str) -> str:
        """提取寄存器编号，例如从 '%120' 提取 '120'"""
        m = re.search(r"%([\w.]+)", token)
        return m.group(1) if m else "None"

    def _get_def_from_inst(self, inst: str) -> str:
        """
        获取指令定义的寄存器 (等号左侧)
        """
        # 预处理：去掉注释
        clean_inst = inst.split(';')[0].strip()
        if "=" in clean_inst:
            lhs = clean_inst.split("=")[0].strip()
            return self._normalize_reg(lhs)
        return None

    def _get_uses_from_inst(self, inst: str) -> List[str]:
        """
        获取指令使用的所有寄存器 (等号右侧或无等号指令)
        """
        clean_inst = inst.split(';')[0].strip()
        # 如果有等号，只分析等号右侧的操作数
        rhs = clean_inst.split("=")[1] if "=" in clean_inst else clean_inst

        # 匹配所有 % 开头的寄存器名
        reg_pattern = re.compile(r"%([\w._]+)")
        matches = reg_pattern.findall(rhs)
        return matches

    def _build_use_def(self):
        """
        构建每个基本块的 USE 和 DEF 集合
        用于数据流分析
        """
        self.reg_use.clear()
        self.reg_def.clear()

        for block_id, block in enumerate(self.basic_blocks):
            defined_in_block = set()
            used_in_block = set()

            for inst in block:
                # 提取这一行的使用情况
                uses = self._get_uses_from_inst(inst)
                for u in uses:
                    # 如果该变量在块内还没被定义就被使用了，它是入口活跃的（USE 集合）
                    if u not in defined_in_block:
                        used_in_block.add(u)

                # 提取这一行的定义情况
                d = self._get_def_from_inst(inst)
                if d:
                    defined_in_block.add(d)

            self.reg_use[block_id] = used_in_block
            self.reg_def[block_id] = defined_in_block

    def _estimate_registers_precise(self) -> int:
        """
        精确估算寄存器压力：基于 Live-Out 集合进行逆序行扫描
        """
        max_reg_peak = 0

        for b_idx, block in enumerate(self.basic_blocks):
            # 初始活跃集合为块出口的存活变量
            current_live = set(self.reg_out[b_idx])

            # 初始峰值（边界处）
            block_peak = len(current_live)

            # 从后往前扫描每一行指令
            for inst in reversed(block):
                # 1. 移除在此行被定义的寄存器（它在这一行之前是死的）
                d = self._get_def_from_inst(inst)
                if d:
                    current_live.discard(d)

                # 2. 加入在此行被使用的寄存器（它从这一行向上开始存活）
                uses = self._get_uses_from_inst(inst)
                for u in uses:
                    current_live.add(u)

                # 3. 更新该块内的瞬时压力峰值
                block_peak = max(block_peak, len(current_live))

            # 更新全局峰值
            max_reg_peak = max(max_reg_peak, block_peak)

        return max_reg_peak

    def _debug_pressure(self):
        """
        打印调试信息，检查每个块的活跃度
        """
        print("\n[Register Pressure Debug]")
        for b in range(len(self.basic_blocks)):
            # 这里的 LIVE 应该理解为“经过该块的活跃变量”
            # 为了更准，我们打印入口和出口的数量
            in_set = self.reg_in[b]
            out_set = self.reg_out[b]
            print(f"Block {b}: IN={len(in_set)}, OUT={len(out_set)}, DEF={len(self.reg_def[b])}")

    def _extract_kernel_analyses(self,kernel_name:str):
        inside_block = False

        # 匹配 "Classifying expressions for: @" 开头的行
        start_pattern = "Classifying expressions for: @"

        try:
            with open("analysis.txt", 'r', encoding='utf-8') as f:
                for line in f:
                    if inside_block:
                        if start_pattern in line:
                            break
                        else:
                            self.llvm_analysis.append(line)
                    else:
                        if start_pattern in line and kernel_name in line:
                            inside_block = True
                            self.llvm_analysis.append(line)

        except FileNotFoundError:
            print("错误：找不到文件")

    def _get_loop_info(self,loops:List[Tuple[int, int]]):
        pattern = r"Loop\s+%([\.\w]+):\s+Predicated backedge-taken count is\s+(.*)"
        res = []
        for line in self.llvm_analysis:
            line = line.strip()
            match = re.search(pattern, line)
            if match:
                # 提取两个捕获组
                label_name = match.group(1)
                expression = match.group(2)

                # 获取label在的block
                label_line = self.labels[label_name]
                label_block_id = self.line_to_block[label_line]

                # 化简表达式
                flag_removed = re.sub(r'<[a-z]+>', '', expression)
                conv_pattern = r"\((?:zext|sext|trunc)\s+[\w\d]+\s+([%\.\w\d]+)\s+to\s+[\w\d]+\)"
                conv_removed = flag_removed
                while True:
                    # 将整个转换结构替换为捕获的变量名
                    new_expr = re.sub(conv_pattern, r"\1", conv_removed)
                    if new_expr == conv_removed:
                        break
                    conv_removed = new_expr
                op_suffix_pattern = r"([\+\-\*/])[us]\s+"
                sign_removed = re.sub(op_suffix_pattern, r"\1", conv_removed)

                for loop in loops:
                    if loop[0] == label_block_id:
                        res.append({
                            "loop_id": loop,
                            "expression": sign_removed
                        })
                        break

        return res



#============================

    def _analyze_branch_conditions(self):
        """
        分析每个基本块的分支条件，返回每个块的执行概率因子。
        - 1.0：所有线程/Warp 都执行
        - 1/block_size：只有 tid=0 执行
        - 1/warp_count：只有单个 Warp 执行
        - 0.0：死代码
        """
        # 初始化所有块的概率为 1.0
        self.block_probs = {bid: 1.0 for bid in range(len(self.basic_blocks))}

        block_size = self.block_x * self.block_y  # 总线程数
        warp_size = self.arch.attrs.get('WARP_SIZE', 32) if self.arch else 32
        warp_count = block_size // warp_size if block_size > 0 else 1

        # 1. 找到 tid.x 的寄存器名
        tid_reg = None
        for reg, info in self.reg_map.items():
            if info.op == 'tid_get':
                tid_reg = reg
                break

        if not tid_reg:
            print("wtf?")
            return
        print(tid_reg)

        # 2. 提取所有条件分支的目标块及其条件
        for bid, successors in self.cfg.items():
            if len(successors) != 2:
                continue  # 非条件分支，跳过

            block = self.basic_blocks[bid]
            last_inst = block[-1] if block else ""

            if "br i1" not in last_inst:
                continue

            # 提取条件寄存器：br i1 %cond, label %A, label %B
            match = re.search(r"br i1 %([\w.]+)\s*,\s*label %([\w.]+)\s*,\s*label %([\w.]+)", last_inst)
            if not match:
                continue

            cond_reg = match.group(1)
            true_label = match.group(2)
            false_label = match.group(3)

            true_bid = self.line_to_block.get(self.labels.get(true_label) + 1, -1)
            false_bid = self.line_to_block.get(self.labels.get(false_label) + 1, -1)

            if true_bid == -1 or false_bid == -1:
                continue

            # 3. 反向追溯条件寄存器，判断条件类型
            cond_info = self._analyze_condition_type(cond_reg, tid_reg)
            print(cond_info,bid)

            if cond_info["type"] == "tid_equals_zero":
                # tid == 0：只有 1 个线程执行 true 分支
                # true 分支概率 = 1/block_size
                self._propagate_prob(true_bid, 1.0 / block_size)
                self._propagate_prob(false_bid, 1.0 - 1.0 / block_size)

            elif cond_info["type"] == "tid_less_than_bound":
                # tid < bound：部分线程执行
                bound = cond_info.get("bound", block_size)
                ratio = min(1.0, bound / block_size)
                self._propagate_prob(true_bid, ratio)
                self._propagate_prob(false_bid, 1.0 - ratio)

            elif cond_info["type"] == "all_threads":
                # 条件不依赖 tid，所有线程走同一路径（循环边界等）
                # 不修改概率
                pass

        # 4. 对于没有前驱的块（入口块），概率保持 1.0
        # 对于可达性低的块，概率为到达它的所有路径概率之和（取 max）
        self._resolve_prob_conflicts()

    def _analyze_condition_type(self, cond_reg: str, tid_reg: str) -> dict:
        """
        反向追溯条件寄存器，判断条件类型。
        返回 {"type": str, "bound": int(可选)}
        """
        if cond_reg not in self.reg_map:
            return {"type": "unknown"}

        info = self.reg_map[cond_reg]
        print(info)

        # tid == 0 的模式：icmp eq tid, 0
        if info.op == "icmp" and len(info.args) >= 2:
            arg0, arg1 = info.args[0], info.args[1]

            # 检查是否 tid == 0
            if (arg0 == tid_reg and arg1 == "0") or (arg1 == tid_reg and arg0 == "0"):
                # 确认是 eq 指令
                return {"type": "tid_equals_zero"}

            # 检查是否 tid < N（常见模式：icmp ult %tid, %N）
            if arg0 == tid_reg and arg1.isdigit():
                return {"type": "tid_less_than_bound", "bound": int(arg1)}
            if arg1 == tid_reg and arg0.isdigit():
                # 需要检查比较方向：N > tid 等价于 tid < N
                return {"type": "tid_less_than_bound", "bound": int(arg0)}

        # 循环条件（如 icmp ult %iv, %bound）→ 所有线程一致
        if info.op == "icmp":
            return {"type": "all_threads"}

        return {"type": "unknown"}

    def _propagate_prob(self, bid: int, prob: float):
        """
        将概率向下游传播：块的概率 = min(当前概率, 新概率)
        （取交集，因为多个入口路径时，概率取最严格的那个）
        """
        if bid >= len(self.basic_blocks):
            return

        old_prob = self.block_probs.get(bid, 1.0)
        self.block_probs[bid] = min(old_prob, prob)

        # 向所有后继传播
        visited = set()
        self._dfs_propagate(bid, prob, visited)


    def _dfs_propagate(self, bid: int, prob: float, visited: set):
        """DFS 传播概率因子到所有可达后继"""
        if bid in visited:
            return
        visited.add(bid)

        for succ in self.cfg.get(bid, []):
            old_prob = self.block_probs.get(succ, 1.0)
            new_prob = min(old_prob, prob)
            if new_prob < old_prob:
                self.block_probs[succ] = new_prob
                self._dfs_propagate(succ, prob, visited)


    def _resolve_prob_conflicts(self):
        """
        Phi 感知的冲突解决：
        如果块有 phi 节点，检查每条入边是否携带不同的 tid 依赖，
        只对依赖 tid 的入边来源应用概率限制，不传播到不依赖 tid 的路径。

        实际策略：
        - 对每个有多个入边的块，收集所有入边的概率
        - 如果概率不同（说明至少有一条 tid==0 路径），
          则检查 phi 节点的操作数来源
        - 对于来自 tid==0 路径的操作数，其对应的指令仍受概率限制
        - 对于来自全线程路径的操作数，不受限制
        - 最终块级概率取入边概率的最大值（因为块本身被所有入边共享执行）
        """
        # 1. 找有多个入边且概率不同的块
        predecessors = defaultdict(list)
        for bid, successors in self.cfg.items():
            for succ in successors:
                predecessors[succ].append(bid)

        for bid, preds in predecessors.items():
            if len(preds) <= 1:
                continue

            # 收集各入边的概率
            pred_probs = [self.block_probs.get(p, 1.0) for p in preds]

            if all(abs(p - pred_probs[0]) < 1e-9 for p in pred_probs):
                continue  # 所有入边概率相同，无需处理

            # 2. 检查是否有 phi 节点
            block = self.basic_blocks[bid]
            has_phi = any("phi " in inst for inst in block)

            if has_phi:
                # 有 phi 节点 → 块本身不应被 tid==0 路径拉低
                # 取入边概率的最大值（块会被全线程路径完整执行）
                self.block_probs[bid] = max(pred_probs)
                print(f"[Branch] Block {bid}: phi merge, probs={[f'{p:.4f}' for p in pred_probs]}, set to max={max(pred_probs):.4f}")
            else:
                # 无 phi 节点 → 块内指令确实只在某路径执行
                # 保持 min 策略（已在 _propagate_prob 中处理）
                pass


if __name__ == "__main__":
    block_x = 512
    block_y = 1
    kernel_param = {
        "template_param": [4096],
        "data_type": ["float", "half", "half"]
    }
    with open('op.ll', 'r', encoding='utf-8') as f:
        content = f.read()

    arch = None
    analyzer = LLVMAnalyzer(content, arch, block_x, block_y, {}, kernel_param)
    analysis = analyzer.analyze()