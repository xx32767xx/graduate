extern "C" __global__
void compute_bound_kernel(float* out, int N) {
    int tid = blockIdx.x * blockDim.x + threadIdx.x;

    if (tid >= N) return;

    float x = (float)tid * 0.001f;
    float y = x + 1.0f;

    #pragma unroll 128
    for (int i = 0; i < 512; i++) {
        x = __fmaf_rn(x, y, 1.0f);
        y = __fmaf_rn(y, x, 0.5f);

        x = x * 1.000001f + 0.000001f;
        y = y * 0.999999f + 0.000002f;
    }

    out[tid] = x + y;
}