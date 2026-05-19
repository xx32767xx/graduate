import re


class PureTopologyAnalyzer:
    """
    纯拓扑分析器：计算基本块的逻辑依赖深度。
    """

    def __init__(self):
        # 匹配 LLVM IR 中的寄存器，例如 %1, %123, %reg.1
        self.reg_pattern = re.compile(r'%\d+|%[a-zA-Z0-9\._]+')

    def _extract_regs(self, inst_str):
        """
        提取寄存器定义(Def)和使用(Use)。
        LLVM IR 约定：指令左侧或第一个出现的寄存器通常是 Dest。
        """
        regs = self.reg_pattern.findall(inst_str)
        if not regs:
            return None, []
        # 第一个是定义的寄存器，后面的是引用的寄存器
        return regs[0], regs[1:]

    def calculate_topology_depth(self, instructions):
        """
        核心逻辑：通过追踪寄存器依赖链计算最长路径（Max Depth）。
        """
        if not instructions:
            return {"max_depth": 0, "total_insts": 0}

        # reg_level 记录每个寄存器产出时处于第几层逻辑深度
        reg_level = {}
        max_depth = 0
        total_insts = 0

        for inst in instructions:
            # 过滤掉注释、空行或非指令行
            clean_inst = inst.strip()
            if not clean_inst or clean_inst.startswith(';'):
                continue

            total_insts += 1
            dst, srcs = self._extract_regs(clean_inst)

            # 当前指令的层级 = max(输入寄存器层级) + 1
            # 如果没有输入寄存器（例如 %1 = load 10），其层级设为 1
            current_inst_level = 0
            if srcs:
                # 获取所有输入寄存器的已知深度，未知的（如来自块外）默认为 0
                current_inst_level = max([reg_level.get(s, 0) for s in srcs])

            # 指令本身代表一步操作
            current_inst_level += 1

            # 更新定义的寄存器深度
            if dst:
                reg_level[dst] = current_inst_level

            # 更新该基本块观察到的最大深度
            if current_inst_level > max_depth:
                max_depth = current_inst_level

        return {
            "max_depth": max_depth,
            "total_insts": total_insts
        }

    def get_physical_factor(self, instructions, issue_cycles=4.8, avg_latency=12.0):
        """
        物理映射逻辑：确保因子反映的是依赖延迟相对于发射吞吐的倍数，且一定 >= 1.0。
        """
        res = self.calculate_topology_depth(instructions)
        max_depth = res["max_depth"]
        total_insts = res["total_insts"]

        if total_insts == 0:
            return 1.0

        # 1. 发射所有指令所需的保底周期（吞吐量上限）
        issue_bound = total_insts * issue_cycles

        # 2. 跑完关键路径所需的保底周期（延迟下限）
        # avg_latency 反映了指令从发射到结果可用的物理气泡
        latency_bound = max_depth * avg_latency

        # 3. 因子计算：只有当延迟链无法被发射延迟掩盖时，因子才会大于 1.0
        # 这解释了为什么 rms_norm (深度小) 因子是 1，而 softmax (深度大) 因子大于 1
        physical_factor = max(1.0, latency_bound / issue_bound)

        return physical_factor