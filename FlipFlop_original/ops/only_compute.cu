// compute_only.cu
#include <cuda_fp16.h>
#include <math.h>
extern "C"
__global__ void add_kernel(float* a, float* b, float* c, int N) {
    int idx = threadIdx.x + blockIdx.x * blockDim.x;
    if (idx >= N) return;   //
    c[idx] = a[idx] + b[idx];
}