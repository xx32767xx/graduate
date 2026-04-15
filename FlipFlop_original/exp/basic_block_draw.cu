__global__ void example_kernel(float *data, int n, float threshold) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    while (i < n) {
        float val = data[i];

        if (val > threshold) {
            data[i] = val * val;
        } else {
            data[i] = -1.0f;
        }
        i += gridDim.x * blockDim.x;
    }
}