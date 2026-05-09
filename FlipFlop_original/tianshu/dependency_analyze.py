import re
from typing import List


class PureTopologyAnalyzer:
    """
    纯拓扑分析：只根据 LLVM IR 的寄存器依赖关系计算 '依赖因子'。
    该计算结果与硬件频率、发射周期完全无关，反映的是代码的串行程度。
    """

    def __init__(self):
        # 预编译正则，提高解析速度
        self.reg_pattern = re.compile(r'%\d+')

    def _extract_regs(self, inst_str):
        """
        提取寄存器定义和使用。
        LLVM IR 约定：第一个出现的寄存器是 Destination (Def), 后续的是 Sources (Use)。
        """
        regs = self.reg_pattern.findall(inst_str)
        if not regs:
            return None, []
        return regs[0], regs[1:]

    def calculate_dependency_factor(self, instructions:List[str]):
        """
        计算基本块的拓扑依赖因子。
        Factor = 关键路径深度 / 总指令数
        """
        if not instructions:
            return 1.0

        # reg_level 记录每个寄存器所在的逻辑层级 (Level)
        reg_level = {}
        max_depth = 0
        total_insts = len(instructions)

        for inst in instructions:
            dst, srcs = self._extract_regs(inst)

            # 当前指令的层级 = max(所有输入寄存器的层级) + 1
            # 如果没有输入寄存器（如常量加载），层级默认为 1
            current_inst_level = 0
            if srcs:
                current_inst_level = max([reg_level.get(s, 0) for s in srcs])

            # 指令本身占据一个层级
            current_inst_level += 1

            # 更新目标寄存器的层级
            if dst:
                reg_level[dst] = current_inst_level

            # 更新基本块的最大深度
            if current_inst_level > max_depth:
                max_depth = current_inst_level

        # 逻辑深度：这个块最少需要多少步串行操作才能跑完
        # 理想宽度：如果所有指令都并行，深度应该是 1 (忽略发射顺序)
        # 实际上，指令数越多，完全并行的概率越低

        # 因子计算：
        # 如果 Factor = 1.0，说明每条指令都必须等前一条，是完全串行的
        # 如果 Factor 趋近 0，说明指令之间几乎没有依赖，是高度并行的
        # 注意：为了后续方便计算物理 Cycle，我们返回 (逻辑深度 / 总指令数)
        topology_factor = max_depth / total_insts if total_insts > 0 else 1.0

        return {
            "max_depth": max_depth,
            "total_insts": total_insts,
            "topology_factor": topology_factor
        }