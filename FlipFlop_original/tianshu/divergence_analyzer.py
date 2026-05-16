import re

class DivergenceAnalyzer:
    """
    分支发散分析器：计算每个基本块的活跃线程数，并统计指令贡献
    """

    def __init__(self, arch, block_x: int, block_y: int):
        self.arch = arch
        self.block_x = block_x
        self.block_y = block_y
        self.warp_size = arch.attrs.get('WARP_SIZE', 32) if arch else 32
        self.total_threads = block_x * block_y
        self.total_warps = (self.total_threads + self.warp_size - 1) // self.warp_size

        # 存储每个基本块的活跃线程数
        self.active_threads = {}

    def compute_active_threads(self, basic_blocks: list, cfg: dict, reg_map: dict, labels: dict,
                               line_to_block: dict) -> dict:
        """
        计算每个基本块的活跃线程数（数据流分析）

        参数:
            basic_blocks: 基本块列表
            cfg: 控制流图 {block_id: [successors]}
            reg_map: 寄存器映射表
            labels: 标签名到行号的映射
            line_to_block: 行号到基本块编号的映射

        返回:
            active_threads: {block_id: active_thread_count}
        """
        # 初始化
        self.active_threads = {i: 0 for i in range(len(basic_blocks))}

        # 入口块（编号0）的活跃线程数为总线程数
        if 0 in self.active_threads:
            self.active_threads[0] = self.total_threads

        # DFS传播
        visited = set()
        self._propagate(basic_blocks, cfg, reg_map, labels, line_to_block, 0, self.total_threads, visited)

        return self.active_threads

    def _propagate(self, basic_blocks: list, cfg: dict, reg_map: dict, labels: dict, line_to_block: dict,
                   block_id: int, parent_active: int, visited: set):
        """DFS传播活跃线程数"""
        if block_id in visited:
            return
        visited.add(block_id)

        # 更新当前块的活跃线程数（取最大值，可能多条路径到达）
        current = self.active_threads.get(block_id, 0)
        self.active_threads[block_id] = max(current, parent_active)

        # 获取当前块的最后一条指令
        if block_id >= len(basic_blocks):
            return
        block = basic_blocks[block_id]
        if not block:
            return

        last_inst = block[-1]

        # 条件分支
        if "br i1" in last_inst:
            true_active, false_active = self._split_by_condition(last_inst, self.active_threads[block_id], reg_map)
            true_target, false_target = self._extract_branch_targets(last_inst, labels, line_to_block)

            if true_target is not None:
                self._propagate(basic_blocks, cfg, reg_map, labels, line_to_block, true_target, true_active, visited)
            if false_target is not None:
                self._propagate(basic_blocks, cfg, reg_map, labels, line_to_block, false_target, false_active, visited)

        # 无条件分支
        elif "br label" in last_inst:
            target = self._extract_uncond_target(last_inst, labels, line_to_block)
            if target is not None:
                self._propagate(basic_blocks, cfg, reg_map, labels, line_to_block, target,
                                self.active_threads[block_id], visited)

        # 返回指令：无后继
        elif "ret" in last_inst:
            return

    def _split_by_condition(self, br_inst: str, parent_active: int, reg_map: dict) -> tuple:
        """
        根据条件分支指令，计算真分支和假分支的线程分配
        返回：(true_active, false_active)
        """
        # 提取条件寄存器
        cond_match = re.search(r"br i1 %([\w.]+)", br_inst)
        if not cond_match:
            print(f"[DEBUG] No condition register found in: {br_inst}")
            return parent_active, 0

        cond_reg = cond_match.group(1)
        print(f"[DEBUG] Condition register: {cond_reg}")

        # 回溯条件寄存器的定义
        info = reg_map.get(cond_reg)
        if not info or info.op != "icmp":
            print(f"[DEBUG] Register {cond_reg} not found in reg_map")
            print(f"[DEBUG] Available registers: {list(reg_map.keys())[:20]}...")
            return parent_active, 0

        # 分析条件类型（复用原有的 _analyze_condition_type 方法）
        cond_type = self._analyze_condition_type(cond_reg, reg_map)

        if cond_type == "tid_equals_zero":
            # tid == 0：只有1个线程走真分支
            return 1, max(0, parent_active - 1)

        elif cond_type == "tid_less_than_bound":
            bound = self._get_bound_from_condition(cond_reg, reg_map)
            if bound is not None:
                true_active = min(bound, parent_active)
                false_active = max(0, parent_active - true_active)
                return true_active, false_active

        # 无法识别，默认所有线程走真分支
        return parent_active, parent_active

    def _analyze_condition_type(self, cond_reg: str, reg_map: dict) -> str:
        """分析条件寄存器的类型"""
        info = reg_map.get(cond_reg)
        if not info or info.op != "icmp" or len(info.args) < 2:
            return "unknown"

        arg0, arg1 = info.args[0], info.args[1]

        # tid == 0 模式
        if (arg0 == "tid" and arg1 == "0") or (arg1 == "tid" and arg0 == "0"):
            return "tid_equals_zero"

        # tid < bound 模式
        if arg0 == "tid" and arg1.isdigit():
            return "tid_less_than_bound"
        if arg1 == "tid" and arg0.isdigit():
            return "tid_less_than_bound"

        return "unknown"

    def _get_bound_from_condition(self, cond_reg: str, reg_map: dict) -> int:
        """从条件中获取边界值"""
        info = reg_map.get(cond_reg)
        if not info or len(info.args) < 2:
            return None

        arg0, arg1 = info.args[0], info.args[1]

        if arg0 == "tid" and arg1.isdigit():
            return int(arg1)
        if arg1 == "tid" and arg0.isdigit():
            return int(arg0)

        return None

    def _extract_branch_targets(self, br_inst: str, labels: dict, line_to_block: dict) -> tuple:
        """提取条件分支的目标基本块编号"""
        match = re.search(r"label %([\w.]+).*label %([\w.]+)", br_inst)
        if not match:
            return None, None

        true_label = match.group(1)
        false_label = match.group(2)

        true_line = labels.get(true_label, -1)
        false_line = labels.get(false_label, -1)

        true_bid = line_to_block.get(true_line + 1, -1) if true_line != -1 else -1
        false_bid = line_to_block.get(false_line + 1, -1) if false_line != -1 else -1

        return true_bid, false_bid

    def _extract_uncond_target(self, br_inst: str, labels: dict, line_to_block: dict) -> int:
        """提取无条件分支的目标基本块编号"""
        match = re.search(r"label %([\w.]+)", br_inst)
        if not match:
            return None

        label = match.group(1)
        line = labels.get(label, -1)
        if line == -1:
            return None

        return line_to_block.get(line + 1, -1)

    def is_in_divergent_branch(self, block_id: int) -> bool:
        """
        判断基本块是否位于发散分支内部
        """
        total_threads = self.total_threads
        active = self.active_threads.get(block_id, total_threads)

        # 活跃线程数等于总线程数，没有发散
        if active == total_threads:
            return False

        # 活跃线程数为0，死代码
        if active == 0:
            return False

        # 活跃线程数介于两者之间，位于发散分支内部
        return True

