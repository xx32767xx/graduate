__global__ void complex_flow_kernel(float* a, float* b, float* c, int N) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    if (i < N) {
        float val_a = a[i];
        float val_b = b[i];
        float res;

        if (val_a > 0.0f) {
            float temp = __expf(val_a);
            res = __fmaf_rn(temp, val_b, 1.0f);

            for (int j = 0; j < 2; j++) {
                res = __fsqrt_rn(res + (float)j);
            }
        } else {
            if (val_a < -10.0f) {
                res = 0.0f;
            } else {
                res = val_a * val_b + 0.5f;
            }
        }
        c[i] = res;
    }
}