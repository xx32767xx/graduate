#!/bin/bash


KERNEL_FILE="/root/InfiniGraph/InfiniCore/src/infiniop/ops/add_rms_norm/nvidia/add_rms_norm_nvidia.cu"
BATCH_SIZE=4
SEQ_LENS="512"
NHEAD=16
DIM_PER_HEAD=256
CSV_OUT="rq3_data/full_energy_results.csv"
ITERATIONS=5
CALIB_FILE="calibration.json"


# 添加这一行用于调试，确保输出的是 /usr/local/corex-4.3.0/bin/nvcc
echo "Using nvcc from: $(which nvcc)"
nvcc --version

# 运行 Python 时，建议加上 -u 参数强制刷新日志输出
python3 -u mymodel.py \
    --kernel_file "${KERNEL_FILE}" \
    --batch_size 4 \
    --seq_lens 2048 \
    --nhead 16 \
    --dim_per_head 256 \
    --calib "${CALIB_FILE}" \
    --csv_out     "${CSV_OUT}" \
    --iterations  "${ITERATIONS}"

