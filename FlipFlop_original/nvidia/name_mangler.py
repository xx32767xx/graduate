#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
mangle_function
 ├── _mangle_template_args
 │     ├── _mangle_type
 │     ├── _mangle_literal
 │     └── _mangle_nested_name
 │
 ├── _mangle_func_args
 │     └── _mangle_single_arg
 │            ├── _find_template_index
 │            ├── _template_ref
 │            └── _mangle_type
 │
 └── _encode_source_name
"""

from typing import List, Tuple, Union, Any


class NameMangler:

    def __init__(self):
        # 模板参数缓存
        self.template_params = []

        # 基础类型编码
        self.TYPE_ENCODING = {
            "void": "v",
            "bool": "b",
            "char": "c",
            "signed char": "a",
            "unsigned char": "h",
            "short": "s",
            "unsigned short": "t",
            "int": "i",
            "unsigned int": "j",
            "long": "l",
            "unsigned long": "m",
            "long long": "x",
            "unsigned long long": "y",
            "float": "f",
            "double": "d",
            "long double": "e",
            "__half": "6__half",
            "half": "6__half",
            "cuda_bfloat16": "13cuda_bfloat16",
            "wchar_t": "w",
            "...": "z",
        }

        # 非类型模板参数编码
        self.LITERAL_ENCODING = {
            "bool": "b",
            "int": "i",
            "unsigned int": "j",
            "long": "l",
            "unsigned long": "m",
            "long long": "x",
            "unsigned long long": "y",
            "float": "f",
            "double": "d",
        }

    # =========================================================
    # Public API
    # =========================================================

    def mangle_function(
        self,
        func_name: str,
        namespace: List[str] = None,
        template_args: List[Any] = None,
        func_args: List[str] = None,
    ) -> str:
        result = "@_Z"
        # -----------------------------------------------------
        # 名字部分
        # -----------------------------------------------------
        if namespace:
            result += "N"
            for ns in namespace:
                result += self._encode_source_name(ns)
            result += self._encode_source_name(func_name)

            if template_args:
                result += self._mangle_template_args(template_args)
            result += "E"

        else:
            result += self._encode_source_name(func_name)
            if template_args:
                result += self._mangle_template_args(template_args)

        # -----------------------------------------------------
        # 参数列表
        # -----------------------------------------------------
        if func_args:
            result += self._mangle_func_args(func_args)
        return result

    # =========================================================
    # 模板参数
    # =========================================================

    def _mangle_template_args(self, args: List[Any]) -> str:
        result = "I"
        for arg in args:
            self.template_params.append(arg)
            # -------------------------------------------------
            # 类型模板参数
            # -------------------------------------------------
            if isinstance(arg, str):
                result += self._mangle_type(arg)

            # -------------------------------------------------
            # 非类型模板参数
            # (32, "unsigned int")
            # -------------------------------------------------
            elif isinstance(arg, (tuple, list)) and len(arg) == 2:
                value, type_name = arg
                result += self._mangle_literal(
                    value,
                    type_name
                )

            # -------------------------------------------------
            # 嵌套名称
            # ["op", "add", "cuda", "AddOp"]
            # -------------------------------------------------
            elif isinstance(arg, list):
                result += self._mangle_nested_name(arg)
            else:
                raise ValueError(
                    f"Unsupported template arg: {arg}"
                )

        result += "E"
        return result

    # =========================================================
    # Function Args
    # =========================================================

    def _mangle_func_args(self, args: List[str]) -> str:
        # 无参数函数 -> v
        if not args:
            return "v"
        result = ""

        for arg in args:
            arg = arg.strip()
            encoded = self._mangle_single_arg(arg)
            result += encoded

        return result

    def _mangle_single_arg(self, arg: str) -> str:
        # -----------------------------------------------------
        # const
        # -----------------------------------------------------
        is_const = arg.startswith("const ")
        core = arg[6:].strip() if is_const else arg

        # -----------------------------------------------------
        # pointer
        # -----------------------------------------------------
        ptr_depth = 0
        while core.endswith("*"):
            ptr_depth += 1
            core = core[:-1].strip()
        base_type = core

        # -----------------------------------------------------
        # template parameter reference
        # -----------------------------------------------------
        t_idx = self._find_template_index(base_type)
        if t_idx >= 0:
            encoded = self._template_ref(t_idx)
        else:
            encoded = self._mangle_type(base_type)

        # -----------------------------------------------------
        # pointer encoding
        # -----------------------------------------------------
        for _ in range(ptr_depth):
            encoded = "P" + encoded

        # -----------------------------------------------------
        # const encoding
        # -----------------------------------------------------
        if is_const:
            encoded = "K" + encoded

        return encoded

    # =========================================================
    # Template Param Reference
    # =========================================================

    def _template_ref(self, idx: int) -> str:
        # ABI 风格：
        #
        # 第一个模板参数  -> T_
        # 第二个模板参数 -> T0_
        # 第三个模板参数 -> T1_
        if idx == 0:
            return "T_"

        return f"T{idx - 1}_"

    def _find_template_index(self, type_str: str) -> int:
        search = type_str.strip()

        # half / __half 等价
        if search in ("half", "__half"):
            search_set = ("half", "__half")
        else:
            search_set = (search,)

        for i, tp in enumerate(self.template_params):
            if isinstance(tp, str):
                if tp.strip() in search_set:
                    return i

        return -1

    # =========================================================
    # Type Encoding
    # =========================================================

    def _mangle_type(self, type_str: str) -> str:
        type_str = type_str.strip()
        # builtin
        if type_str in self.TYPE_ENCODING:
            return self.TYPE_ENCODING[type_str]
        # user-defined type
        return self._encode_source_name(type_str)

    # =========================================================
    # Literal Encoding
    # =========================================================

    def _mangle_literal(
        self,
        value,
        type_name: str
    ) -> str:
        if type_name not in self.LITERAL_ENCODING:
            raise ValueError(
                f"Unsupported literal type: {type_name}"
            )
        code = self.LITERAL_ENCODING[type_name]

        return f"L{code}{value}E"

    # =========================================================
    # Nested Name
    # =========================================================

    def _mangle_nested_name(
        self,
        parts: List[str]
    ) -> str:
        result = "N"
        for part in parts:
            result += self._encode_source_name(part)
        result += "E"

        return result

    # =========================================================
    # Source Name
    # =========================================================

    def _encode_source_name(self, name: str) -> str:
        return f"{len(name)}{name}"


# =============================================================
# 外部API
# =============================================================

def mangle_cuda_kernel(
    func_name: str,
    template_args: List[Any] = None,
    func_args: List[str] = None,
    namespace: List[str] = None,
) -> str:
    mangler = NameMangler()
    return mangler.mangle_function(
        func_name=func_name,
        namespace=namespace,
        template_args=template_args,
        func_args=func_args,
    )


def mangle_operator(
    func_name: str,
    operator_namespace: List[str],
    template_args: List[Any] = None,
    func_args: List[str] = None,
) -> str:
    mangler = NameMangler()
    return mangler.mangle_function(
        func_name=func_name,
        namespace=operator_namespace,
        template_args=template_args,
        func_args=func_args,
    )


# =============================================================
# Test
# =============================================================

if __name__ == "__main__":

    print("=" * 80)
    print("Lightweight Itanium-style Mangler")
    print("=" * 80)

    # =========================================================
    # Example 1
    # =========================================================

    name1 = mangle_cuda_kernel(
        func_name="warpSoftmax",
        template_args=[
            "half",
            [32, "unsigned int"],
            [32, "unsigned int"],
            [32, "int"],
        ],
    )

    print("\n[warpSoftmax]")
    print(name1)

    # =========================================================
    # Example 2
    # =========================================================

    name2 = mangle_cuda_kernel(
        func_name="add_rmsnormKernel",
        template_args=[
            [4096, "unsigned int"],
            "float",
            "half",
            "float",
        ]
    )

    print("\n[add_rmsnormKernel]")
    print(name2)

    # =========================================================
    # Example 3
    # =========================================================

    name3 = mangle_operator(
        func_name="elementwiseKernel",
        operator_namespace=[
            "op",
            "elementwise",
            "nvidia",
        ],
        template_args=[
            [2, "unsigned long"],
            ["op", "add", "cuda", "AddOp"],
            "double",
        ],
    )

    print("\n[elementwiseKernel]")
    print(name3)

    # =========================================================
    # c++filt helper
    # =========================================================

    print("\n" + "=" * 80)
    print("Verification")
    print("=" * 80)

    print("\nTry:")
    print(f"echo '{name1}' | c++filt")
    print(f"echo '{name2}' | c++filt")
    print(f"echo '{name3}' | c++filt")