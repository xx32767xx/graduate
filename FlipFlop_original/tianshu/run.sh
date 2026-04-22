#!/bin/bash

export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
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

