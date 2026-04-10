import numpy as np

def prepare_mha_args(batch_size, seq_length, dim_feature, nhead):
    scale = np.float32(1.0 / np.sqrt(dim_feature // nhead))

    q = np.random.randn(batch_size, dim_feature).astype(np.float32)
    k = np.random.randn(batch_size, seq_length, dim_feature).astype(np.float32)
    v = np.random.randn(batch_size, seq_length, dim_feature).astype(np.float32)
    out = np.zeros_like(q)

    return [
        q, k, v,
        np.int32(batch_size),
        np.int32(seq_length),
        np.int32(dim_feature),
        np.int32(dim_feature),
        np.int32(nhead),
        scale,
        np.int32(64),  # threshold
        out,
    ]


def prepare_add_rmsnorm_args(batch_size, dim, nhead):
    a = np.random.randn(batch_size, nhead, dim).astype(np.float32)
    b = np.random.randn(batch_size, nhead, dim).astype(np.float32)
    weight = np.random.randn(dim).astype(np.float32)

    # 2. 准备输出张量占位符
    y = np.zeros_like(a)
    residual_out = np.zeros_like(a)

    # 3. 计算步长 (Strides) - 对应源码中的 _info.a_strides 等
    # 假设内存是连续排布的 (Contiguous)
    stride_batch = nhead * dim
    stride_nhead = dim

    # 4. 配置参数
    epsilon = np.float32(1e-5)

    # 返回列表，顺序对应 CUDA Kernel 的参数顺序
    return [
        y,  # 输出结果
        residual_out,  # 相加后的残差输出
        stride_batch,  # stride_y_batch
        stride_nhead,  # stride_y_nhead
        stride_batch,  # stride_residual_out_batch
        stride_nhead,  # stride_residual_out_nhead
        a,  # 输入 a
        stride_batch,  # stride_a_batch
        stride_nhead,  # stride_a_nhead
        b,  # 输入 b
        stride_batch,  # stride_b_batch
        stride_nhead,  # stride_b_nhead
        weight,  # 权重 w
        np.uint64(nhead),
        np.uint64(dim),
        epsilon
    ]