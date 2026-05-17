import re
from collections import defaultdict


class AffineExpr:
    """表示 a * tid + b 形式的仿射表达式"""

    def __init__(self, a: int = 0, b: int = 0):
        self.a = a
        self.b = b

    def __str__(self):
        if self.a == 0:
            return str(self.b)
        elif self.b == 0:
            return f"{self.a}*tid"
        else:
            return f"{self.a}*tid + {self.b}"

    def __repr__(self):
        return self.__str__()

    def is_constant(self) -> bool:
        return self.a == 0


class DivergenceAnalyzer:
    """
    分支发散分析器
    功能：
    1. 构建 D-CFG（删除循环回边）
    2. 仿射常量传播
    3. 分支发散判定
    4. 计算每个基本块的活跃线程数和发散惩罚系数
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

        # D-CFG：删除循环回边后的控制流图 {block_id: [successors]}
        self.d_cfg = defaultdict(list)

        # 仿射表达式映射：寄存器名称（以%开头） -> AffineExpr
        self.affine_map = {}

        # 线程ID寄存器集合
        self.tid_regs = set()

    def build_d_cfg(self, cfg: dict, basic_blocks: list, labels: dict, line_to_block: dict) -> dict:
        """
        构建 D-CFG（Divergence Control Flow Graph）
        删除循环回边（目标基本块编号 <= 当前基本块编号的边），只保留向前分支

        参数:
            cfg: 原始控制流图 {block_id: [successors]}
            basic_blocks: 基本块列表
            labels: 标签名到行号的映射
            line_to_block: 行号到基本块编号的映射

        返回:
            d_cfg: 删除回边后的控制流图
        """
        self.d_cfg.clear()

        for block_id, successors in cfg.items():
            for succ in successors:
                # 判断是否为回边：后继基本块编号 <= 当前基本块编号
                # 循环回边通常是向后跳转
                is_back_edge = (succ <= block_id)

                # 特殊情况：如果后继是基本块0（入口块），一定是回边
                if succ == 0:
                    is_back_edge = True

                # 只保留向前分支（非回边）
                if not is_back_edge:
                    self.d_cfg[block_id].append(succ)

        print(f"[D-CFG] Built with {len(self.d_cfg)} nodes, removed back edges")

        # 打印调试信息
        for block_id, succs in self.d_cfg.items():
            if succs:
                print(f"[D-CFG] Block {block_id} -> {succs}")

        return self.d_cfg

    def _is_constant(self, operand: str) -> bool:
        """判断操作数是否为整数常数"""
        # 寄存器以%开头，常数是纯数字
        if operand.startswith('%'):
            return False
        if operand.isdigit():
            return True
        if operand.startswith('-') and operand[1:].isdigit():
            return True
        if operand.startswith('0x'):
            try:
                int(operand, 16)
                return True
            except ValueError:
                return False
        return False

    def build_affine_map(self, reg_map: dict):
        """
        构建仿射表达式映射表
        顺序扫描 reg_map（寄存器按定义顺序出现），
        只保留能被 tid 线性表示的寄存器
        """
        self.affine_map.clear()

        for reg_name, inst_info in reg_map.items():
            op = inst_info.op
            args = inst_info.args

            # 情况0：tid_get 指令（起点）
            if op == "tid_get":
                self.affine_map[reg_name] = AffineExpr(a=1, b=0)
                print(f"[Affine] {reg_name} = tid -> 1*tid + 0")

            # 情况1：zext/sext（零扩展/符号扩展）
            elif op in ["zext", "sext"] and len(args) >= 1:
                src = args[0]
                if src in self.affine_map:
                    expr = self.affine_map[src]
                    self.affine_map[reg_name] = AffineExpr(expr.a, expr.b)
                    print(f"[Affine] {reg_name} = {op}({src}) -> {expr}")

            # 情况2：trunc（截断）
            elif op == "trunc" and len(args) >= 1:
                src = args[0]
                if src in self.affine_map:
                    expr = self.affine_map[src]
                    self.affine_map[reg_name] = AffineExpr(expr.a, expr.b)
                    print(f"[Affine] {reg_name} = trunc({src}) -> {expr}")

            # 情况3：add/sub（加减法）
            elif op in ["add", "sub"] and len(args) >= 2:
                left = args[0]
                right = args[1]

                left_expr = self.affine_map.get(left)
                right_expr = self.affine_map.get(right)

                if left_expr is not None and right_expr is not None:
                    if op == "add":
                        new_expr = AffineExpr(left_expr.a + right_expr.a, left_expr.b + right_expr.b)
                    else:
                        new_expr = AffineExpr(left_expr.a - right_expr.a, left_expr.b - right_expr.b)
                    self.affine_map[reg_name] = new_expr
                    print(f"[Affine] {reg_name} = {op} {left} {right} -> {new_expr}")

                elif left_expr is not None and self._is_constant(right):
                    const_val = int(right)
                    if op == "add":
                        new_expr = AffineExpr(left_expr.a, left_expr.b + const_val)
                    else:
                        new_expr = AffineExpr(left_expr.a, left_expr.b - const_val)
                    self.affine_map[reg_name] = new_expr
                    print(f"[Affine] {reg_name} = {op} {left} {right} -> {new_expr}")

                elif right_expr is not None and self._is_constant(left):
                    const_val = int(left)
                    if op == "add":
                        new_expr = AffineExpr(right_expr.a, const_val + right_expr.b)
                    else:
                        new_expr = AffineExpr(-right_expr.a, const_val - right_expr.b)
                    self.affine_map[reg_name] = new_expr
                    print(f"[Affine] {reg_name} = {op} {left} {right} -> {new_expr}")

            # 情况4：mul（乘法，只支持常数乘法）
            elif op == "mul" and len(args) >= 2:
                left = args[0]
                right = args[1]

                left_expr = self.affine_map.get(left)
                right_expr = self.affine_map.get(right)

                if left_expr is not None and self._is_constant(right):
                    const_val = int(right)
                    new_expr = AffineExpr(left_expr.a * const_val, left_expr.b * const_val)
                    self.affine_map[reg_name] = new_expr
                    print(f"[Affine] {reg_name} = mul {left} {right} -> {new_expr}")

                elif right_expr is not None and self._is_constant(left):
                    const_val = int(left)
                    new_expr = AffineExpr(right_expr.a * const_val, right_expr.b * const_val)
                    self.affine_map[reg_name] = new_expr
                    print(f"[Affine] {reg_name} = mul {left} {right} -> {new_expr}")

            # 情况5：phi（控制流汇聚）
            elif op.startswith("phi") and len(args) >= 2:
                # phi 指令的格式：phi %val1, %block1, %val2, %block2, ...
                values = [args[i] for i in range(0, len(args), 2)]

                # 收集所有值对应的仿射表达式
                exprs = []
                for v in values:
                    if v in self.affine_map:
                        exprs.append(self.affine_map[v])
                    else:
                        exprs = None
                        break

                if exprs is not None and len(exprs) == len(values) and len(exprs) > 0:
                    first_expr = exprs[0]
                    all_same = all(e.a == first_expr.a and e.b == first_expr.b for e in exprs)
                    if all_same:
                        self.affine_map[reg_name] = AffineExpr(first_expr.a, first_expr.b)
                        print(f"[Affine] {reg_name} = phi({values}) -> {first_expr}")

        print(f"[Affine] Total {len(self.affine_map)} registers can be expressed as linear functions")

        # 打印结果
        for reg, expr in self.affine_map.items():
            if not expr.is_constant():
                print(f"[AffineMap] {reg} = {expr}")
# ============================================================================================================

    def is_divergent_branch(self, br_inst: str, reg_map: dict) -> tuple:
        """
        判断条件分支是否发散，并返回真/假分支的线程比例
        """
        # 提取条件寄存器
        cond_match = re.search(r"br i1 %([\w.]+)", br_inst)
        if not cond_match:
            return False, 1.0, 0.0

        cond_reg = cond_match.group(1)

        # 查找条件寄存器的定义（应该是 icmp）
        info = reg_map.get(cond_reg)
        if not info or not info.op.startswith("icmp") or len(info.args) < 2:
            return False, 1.0, 0.0

        arg0, arg1 = info.args[0], info.args[1]

        # 检查两个操作数是否来自 tid（即是否在 affine_map 中）
        from_tid_0 = self._is_from_tid(arg0)
        from_tid_1 = self._is_from_tid(arg1)

        # 如果都不来自 tid，则不是发散分支
        if not from_tid_0 and not from_tid_1:
            return False, 1.0, 0.0

        # 获取常数边界
        const_val = None
        tid_expr = None

        if from_tid_0 and self._is_constant(arg1):
            const_val = int(arg1)
            tid_expr = self.affine_map.get(arg0)
        elif from_tid_1 and self._is_constant(arg0):
            const_val = int(arg0)
            tid_expr = self.affine_map.get(arg1)

        if tid_expr is None or const_val is None:
            return False, 1.0, 0.0

        # 获取比较类型
        cmp_kind = self._get_cmp_kind(cond_reg, reg_map)

        # 计算线程比例
        if cmp_kind == "eq":
            if const_val == 0:
                true_threads = 1
            else:
                true_threads = 0
        elif cmp_kind in ["ult", "slt"]:
            true_threads = min(const_val, self.total_threads)
        elif cmp_kind in ["ugt", "sgt"]:
            true_threads = max(0, self.total_threads - const_val - 1)
        else:
            return False, 1.0, 0.0

        true_ratio = true_threads / self.total_threads
        false_ratio = 1.0 - true_ratio

        is_divergent = (0 < true_ratio < 1)

        return is_divergent, true_ratio, false_ratio

    def _is_from_tid(self, reg: str) -> bool:
        """判断寄存器是否来自线程ID（即是否在 affine_map 中）"""
        return reg in self.affine_map

    def _get_cmp_kind(self, cond_reg: str, reg_map: dict) -> str:
        """获取 icmp 的比较类型"""
        info = reg_map.get(cond_reg)
        if not info:
            return "unknown"
        # 从指令字符串中提取比较类型
        # 例如 "icmp eq", "icmp ult"
        parts = info.op.split()
        if len(parts) >= 2:
            return parts[1]
        return "unknown"

# ============================================================================================================

    def compute_active_threads(self, d_cfg: dict, basic_blocks: list, reg_map: dict,
                               labels: dict, line_to_block: dict) -> dict:
        """
        计算每个基本块的活跃线程数（基于D-CFG的数据流传播）

        参数:
            d_cfg: D-CFG（已删除回边的控制流图）
            basic_blocks: 基本块列表
            reg_map: 寄存器映射表
            labels: 标签名到行号的映射
            line_to_block: 行号到基本块编号的映射

        返回:
            active_threads: {block_id: active_thread_count}
        """
        n_blocks = len(basic_blocks)
        # 初始化
        self.active_threads = {i: 0 for i in range(n_blocks)}

        # 入口块（编号0）的活跃线程数为总线程数
        if 0 in self.active_threads:
            self.active_threads[0] = self.total_threads

        # 拓扑排序：按D-CFG的拓扑顺序处理
        topo_order = self._topological_sort(d_cfg, n_blocks)

        # 按拓扑顺序传播活跃线程数
        for block_id in topo_order:
            current_active = self.active_threads.get(block_id, 0)
            if current_active == 0:
                continue

            # 获取当前块的最后一条指令
            if block_id >= len(basic_blocks):
                continue
            block = basic_blocks[block_id]
            if not block:
                continue

            last_inst = block[-1]

            # 条件分支
            if "br i1" in last_inst:
                # 判断是否发散，获取分支比例
                is_divergent, true_ratio, false_ratio = self.is_divergent_branch(last_inst, reg_map)

                # 获取目标基本块
                true_label, false_label = self._extract_branch_targets(last_inst)
                true_block_id = self._get_block_id_from_label(true_label, labels, line_to_block)
                false_block_id = self._get_block_id_from_label(false_label, labels, line_to_block)

                if is_divergent:
                    # 发散分支：按比例分配线程
                    true_active = int(current_active * true_ratio)
                    false_active = int(current_active * false_ratio)
                else:
                    # 不发散：所有线程走同一路径
                    # 需要判断实际走哪个分支（这里简化：默认所有线程走true分支）
                    true_active = current_active
                    false_active = 0

                # 更新后继块的活跃线程数（取最大值）
                if true_block_id is not None and true_block_id < n_blocks:
                    self.active_threads[true_block_id] = max(
                        self.active_threads.get(true_block_id, 0), true_active
                    )
                if false_block_id is not None and false_block_id < n_blocks:
                    self.active_threads[false_block_id] = max(
                        self.active_threads.get(false_block_id, 0), false_active
                    )

            # 无条件分支
            elif "br label" in last_inst:
                target_label = self._extract_uncond_target(last_inst)
                target_block_id = self._get_block_id_from_label(target_label, labels, line_to_block)
                if target_block_id is not None and target_block_id < n_blocks:
                    self.active_threads[target_block_id] = max(
                        self.active_threads.get(target_block_id, 0), current_active
                    )

            # 返回指令：无后继

        print(f"[ActiveThreads] Computed for {n_blocks} blocks")
        for bid, active in self.active_threads.items():
            if active > 0:
                print(f"[ActiveThreads] Block {bid}: {active} threads")

        return self.active_threads

    def _get_block_id_from_label(self, label: str, labels: dict, line_to_block: dict) -> int:
        """将标签名转换为基本块编号"""
        if label is None:
            return None
        line = labels.get(label, -1)
        if line == -1:
            return None
        # 标签所在行是基本块的第一行，该行属于该基本块
        return line_to_block.get(line, -1)

    def _extract_branch_targets(self, br_inst: str) -> tuple:
        """
        从条件分支指令中提取目标标签
        返回: (true_label, false_label)
        """
        # 匹配 br i1 %cond, label %true, label %false
        match = re.search(r"label %([\w.]+).*label %([\w.]+)", br_inst)
        if not match:
            return None, None
        return match.group(1), match.group(2)

    def _extract_uncond_target(self, br_inst: str) -> str:
        """
        从无条件分支指令中提取目标标签
        """
        match = re.search(r"label %([\w.]+)", br_inst)
        if not match:
            return None
        return match.group(1)

    def _topological_sort(self, d_cfg: dict, n_blocks: int) -> list:
        """
        对D-CFG进行拓扑排序（基于入度）
        """
        # 计算入度
        in_degree = [0] * n_blocks
        for block_id, successors in d_cfg.items():
            for succ in successors:
                if succ < n_blocks:
                    in_degree[succ] += 1

        # BFS拓扑排序（只处理有入边的节点，避免孤立块影响）
        queue = [bid for bid in range(n_blocks) if in_degree[bid] == 0]
        topo_order = []

        while queue:
            node = queue.pop(0)
            topo_order.append(node)
            for succ in d_cfg.get(node, []):
                if succ < n_blocks:
                    in_degree[succ] -= 1
                    if in_degree[succ] == 0:
                        queue.append(succ)

        # 添加遗漏的节点（环或孤立节点）
        for bid in range(n_blocks):
            if bid not in topo_order:
                topo_order.append(bid)

        return topo_order