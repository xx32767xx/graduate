#!/bin/bash

export PATH=/usr/local/corex-4.3.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/corex-4.3.0/lib64:/usr/local/corex-4.3.0/lib:/root/.infini/lib:$LD_LIBRARY_PATH

# 2. 确保 CUDA_HOME 也指向这里，以便 torch.utils.cpp_extension 编译
export CUDA_HOME=/usr/local/corex-4.3.0

# 3. 保持原有的 PYTHONPATH
export PYTHONPATH=$(pwd)/../../..

KERNEL_FILE="/home/anqi/infini/InfiniCore/src/infiniop/ops/add_rms_norm/nvidia/add_rms_norm_nvidia.cu"
BATCH_SIZE=4
SEQ_LENS="512"
NHEAD=16
DIM_PER_HEAD=256
CSV_OUT="rq3_data/full_energy_results.csv"
ITERATIONS=5
CALIB_FILE="calibration.json"

# Create output directory
mkdir -p "$(dirname "$CSV_OUT")"


# Run the Python script
python3 -m mymodel \
    --kernel_file "${KERNEL_FILE}" \
    --batch_size 4 \
    --seq_lens 2048 \
    --nhead 16 \
    --dim_per_head 256 \
    --calib "${CALIB_FILE}" \
    --csv_out     "${CSV_OUT}" \
    --iterations  "${ITERATIONS}"

