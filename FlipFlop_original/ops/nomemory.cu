extern "C"
__global__ void rms_norm_kernel(float* a, float* b, float* c, int N) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < N) {
        float x = a[i];

        float square = x * x;

        float inv_rms = rsqrtf(square + 1e-6f);

        c[i] = x * inv_rms * b[i];
    }
}