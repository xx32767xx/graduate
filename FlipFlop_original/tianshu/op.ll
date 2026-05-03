; ModuleID = '/root/InfiniGraph/InfiniCore/src/infiniop/ops/add_rms_norm/nvidia/add_rms_norm_nvidia.cu'
source_filename = "/root/InfiniGraph/InfiniCore/src/infiniop/ops/add_rms_norm/nvidia/add_rms_norm_nvidia.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5"
target triple = "bi-iluvatar-ilurt"

%"struct.cub::BlockReduce<float, 512>::TempStorage" = type { %"struct.cub::Uninitialized" }
%"struct.cub::Uninitialized" = type { [11 x i32] }
%"struct.cub::BlockReduce<float, 1024>::TempStorage" = type { %"struct.cub::Uninitialized.9" }
%"struct.cub::Uninitialized.9" = type { [21 x i32] }
%"struct.cub::BlockReduce<float, 2048>::TempStorage" = type { %"struct.cub::Uninitialized.23" }
%"struct.cub::Uninitialized.23" = type { [41 x i32] }
%"struct.cub::BlockReduce<float, 4096>::TempStorage" = type { %"struct.cub::Uninitialized.45" }
%"struct.cub::Uninitialized.45" = type { [81 x i32] }
%struct.__half = type { i16 }
%"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage" = type { [8 x %"struct.cub::NullType"], [8 x float], float }
%"struct.cub::NullType" = type { i8 }
%struct.__nv_bfloat16 = type { i16 }
%"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage" = type { [16 x %"struct.cub::NullType"], [16 x float], float }
%"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage" = type { [32 x %"struct.cub::NullType"], [32 x float], float }
%"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage" = type { [64 x %"struct.cub::NullType"], [64 x float], float }

$_Z17add_rmsnormKernelILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf = comdat any

$_Z17add_rmsnormKernelILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf = comdat any

$_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = comdat any

$_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage = comdat any

$_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms = comdat any

@_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 512>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 512>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 512>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 512>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 512>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 512>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 512>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 1024>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 1024>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 1024>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 1024>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 1024>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 1024>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 1024>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 2048>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 2048>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 2048>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 2048>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 2048>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 2048>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 2048>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 4096>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 4096>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 4096>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 4096>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 4096>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 4096>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage = linkonce_odr dso_local local_unnamed_addr addrspace(3) global %"struct.cub::BlockReduce<float, 4096>::TempStorage" undef, comdat, align 4
@_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms = linkonce_odr dso_local local_unnamed_addr addrspace(3) global float undef, comdat, align 4
@gPrintBuf = dso_local addrspace(1) externally_initialized global ptr null, align 8
@gAssertReason = dso_local addrspace(1) externally_initialized global ptr null, align 8
@gMallocHeapBase = addrspace(1) externally_initialized global ptr null, align 8
@gMallocHeapSize = addrspace(1) externally_initialized global i32 0, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr addrspacecast (ptr addrspace(1) @gAssertReason to ptr), ptr addrspacecast (ptr addrspace(1) @gMallocHeapBase to ptr), ptr addrspacecast (ptr addrspace(1) @gMallocHeapSize to ptr), ptr addrspacecast (ptr addrspace(1) @gPrintBuf to ptr)], section "llvm.metadata"

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %104, label %42

42:                                               ; preds = %104, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %117, %104 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !23
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !23
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !23
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !23
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !23
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !23
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !23
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !23
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !23
  %101 = fadd contract float %100, %99
  br label %102

102:                                              ; preds = %87, %85
  %103 = phi float [ %101, %87 ], [ %80, %85 ]
  br i1 %86, label %120, label %156

104:                                              ; preds = %16, %104
  %105 = phi float [ %117, %104 ], [ 0.000000e+00, %16 ]
  %106 = phi i64 [ %118, %104 ], [ %40, %16 ]
  %107 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %106
  %108 = load half, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !9, !noalias !27, !iluvatar.noclobber !18
  %109 = fpext half %108 to float
  %110 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %106
  %111 = load half, ptr addrspace(1) %110, align 2, !tbaa.struct !24, !alias.scope !11, !noalias !28, !iluvatar.noclobber !18
  %112 = fpext half %111 to float
  %113 = fadd contract float %109, %112
  %114 = fptrunc float %113 to half
  %115 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %106
  store half %114, ptr addrspace(1) %115, align 2, !tbaa !25, !alias.scope !7, !noalias !29
  %116 = fmul contract float %113, %113
  %117 = fadd contract float %105, %116
  %118 = add i64 %106, 512
  %119 = icmp ult i64 %118, %14
  br i1 %119, label %104, label %42, !llvm.loop !30

120:                                              ; preds = %102
  %121 = uitofp i64 %14 to float
  %122 = fdiv contract float %103, %121
  %123 = fadd contract float %122, %15
  %124 = tail call float @llvm.fabs.f32(float %123)
  %125 = fcmp contract olt float %124, 0x3810000000000000
  %126 = fmul contract float %123, 0x4170000000000000
  %127 = select i1 %125, float %126, float %123
  %128 = bitcast float %127 to i32
  %129 = add i32 %128, -8388608
  %130 = icmp ult i32 %129, 2130706432
  br i1 %130, label %131, label %152

131:                                              ; preds = %120
  %132 = and i32 %128, 16777215
  %133 = or disjoint i32 %132, 1056964608
  %134 = bitcast i32 %133 to float
  %135 = sub nsw i32 %133, %128
  %136 = add nsw i32 %135, 201326592
  %137 = select i1 %125, i32 %136, i32 %135
  %138 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %134) #7
  %139 = fmul contract float %138, %138
  %140 = fneg contract float %139
  %141 = tail call float @llvm.fma.f32(float %138, float %138, float %140)
  %142 = fneg contract float %134
  %143 = tail call float @llvm.fma.f32(float %139, float %142, float 1.000000e+00)
  %144 = tail call float @llvm.fma.f32(float %141, float %142, float %143)
  %145 = tail call float @llvm.fma.f32(float %144, float 3.750000e-01, float 5.000000e-01)
  %146 = fmul contract float %138, %144
  %147 = tail call float @llvm.fma.f32(float %145, float %146, float %138)
  %148 = ashr i32 %137, 1
  %149 = bitcast float %147 to i32
  %150 = add i32 %148, %149
  %151 = bitcast i32 %150 to float
  br label %154

152:                                              ; preds = %120
  %153 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %127) #7
  br label %154

154:                                              ; preds = %152, %131
  %155 = phi float [ %151, %131 ], [ %153, %152 ]
  store float %155, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !23
  br label %156

156:                                              ; preds = %154, %102
  tail call void @llvm.bi.sl.barrier(), !noalias !23
  br i1 %41, label %157, label %216

157:                                              ; preds = %156
  %158 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !23
  %159 = xor i64 %40, -1
  %160 = add i64 %159, %14
  %161 = lshr i64 %160, 9
  %162 = add nuw nsw i64 %161, 1
  %163 = icmp ult i64 %160, 512
  br i1 %163, label %200, label %164

164:                                              ; preds = %157
  %165 = and i64 %162, 72057594037927934
  %166 = shl i64 %165, 9
  %167 = add i64 %166, %40
  %168 = insertelement <2 x float> poison, float %158, i64 0
  %169 = shufflevector <2 x float> %168, <2 x float> poison, <2 x i32> zeroinitializer
  br label %170

170:                                              ; preds = %170, %164
  %171 = phi i64 [ 0, %164 ], [ %196, %170 ]
  %172 = shl i64 %171, 9
  %173 = add i64 %172, %40
  %174 = add i64 %173, 512
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %173
  %176 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %174
  %177 = load half, ptr addrspace(1) %175, align 2, !tbaa.struct !24, !alias.scope !7, !noalias !29
  %178 = load half, ptr addrspace(1) %176, align 2, !tbaa.struct !24, !alias.scope !7, !noalias !29
  %179 = insertelement <2 x half> poison, half %177, i64 0
  %180 = insertelement <2 x half> %179, half %178, i64 1
  %181 = fpext <2 x half> %180 to <2 x float>
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %173
  %183 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %174
  %184 = load half, ptr addrspace(1) %182, align 2, !tbaa.struct !24, !alias.scope !13, !noalias !32, !iluvatar.noclobber !18
  %185 = load half, ptr addrspace(1) %183, align 2, !tbaa.struct !24, !alias.scope !13, !noalias !32, !iluvatar.noclobber !18
  %186 = insertelement <2 x half> poison, half %184, i64 0
  %187 = insertelement <2 x half> %186, half %185, i64 1
  %188 = fpext <2 x half> %187 to <2 x float>
  %189 = fmul contract <2 x float> %181, %188
  %190 = fmul contract <2 x float> %169, %189
  %191 = fptrunc <2 x float> %190 to <2 x half>
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %173
  %193 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %174
  %194 = extractelement <2 x half> %191, i64 0
  store half %194, ptr addrspace(1) %192, align 2, !tbaa !25, !alias.scope !4, !noalias !33
  %195 = extractelement <2 x half> %191, i64 1
  store half %195, ptr addrspace(1) %193, align 2, !tbaa !25, !alias.scope !4, !noalias !33
  %196 = add nuw i64 %171, 2
  %197 = icmp eq i64 %196, %165
  br i1 %197, label %198, label %170, !llvm.loop !34

198:                                              ; preds = %170
  %199 = icmp eq i64 %162, %165
  br i1 %199, label %216, label %200

200:                                              ; preds = %157, %198
  %201 = phi i64 [ %40, %157 ], [ %167, %198 ]
  br label %202

202:                                              ; preds = %200, %202
  %203 = phi i64 [ %214, %202 ], [ %201, %200 ]
  %204 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %203
  %205 = load half, ptr addrspace(1) %204, align 2, !tbaa.struct !24, !alias.scope !7, !noalias !29
  %206 = fpext half %205 to float
  %207 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %203
  %208 = load half, ptr addrspace(1) %207, align 2, !tbaa.struct !24, !alias.scope !13, !noalias !32, !iluvatar.noclobber !18
  %209 = fpext half %208 to float
  %210 = fmul contract float %206, %209
  %211 = fmul contract float %158, %210
  %212 = fptrunc float %211 to half
  %213 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %203
  store half %212, ptr addrspace(1) %213, align 2, !tbaa !25, !alias.scope !4, !noalias !33
  %214 = add i64 %203, 512
  %215 = icmp ult i64 %214, %14
  br i1 %215, label %202, label %216, !llvm.loop !37

216:                                              ; preds = %202, %198, %156
  ret void
}

; Function Attrs: convergent nounwind
declare void @llvm.bi.sl.barrier() #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

; Function Attrs: nofree nosync nounwind speculatable memory(none)
declare i32 @llvm.bi.lane.id() #3

; Function Attrs: convergent nofree nounwind memory(none)
declare float @llvm.bi.slb.shfl.idx.b32.f32(float, i32) #4

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %104, label %42

42:                                               ; preds = %104, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %117, %104 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !49
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !49
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !49
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !49
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !49
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !49
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !49
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !49
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !49
  %101 = fadd contract float %100, %99
  br label %102

102:                                              ; preds = %87, %85
  %103 = phi float [ %101, %87 ], [ %80, %85 ]
  br i1 %86, label %120, label %156

104:                                              ; preds = %16, %104
  %105 = phi float [ %117, %104 ], [ 0.000000e+00, %16 ]
  %106 = phi i64 [ %118, %104 ], [ %40, %16 ]
  %107 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %106
  %108 = load half, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !43, !noalias !50, !iluvatar.noclobber !18
  %109 = fpext half %108 to float
  %110 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %106
  %111 = load half, ptr addrspace(1) %110, align 2, !tbaa.struct !24, !alias.scope !45, !noalias !51, !iluvatar.noclobber !18
  %112 = fpext half %111 to float
  %113 = fadd contract float %109, %112
  %114 = fptrunc float %113 to half
  %115 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %106
  store half %114, ptr addrspace(1) %115, align 2, !tbaa !25, !alias.scope !41, !noalias !52
  %116 = fmul contract float %113, %113
  %117 = fadd contract float %105, %116
  %118 = add i64 %106, 512
  %119 = icmp ult i64 %118, %14
  br i1 %119, label %104, label %42, !llvm.loop !53

120:                                              ; preds = %102
  %121 = uitofp i64 %14 to float
  %122 = fdiv contract float %103, %121
  %123 = fadd contract float %122, %15
  %124 = tail call float @llvm.fabs.f32(float %123)
  %125 = fcmp contract olt float %124, 0x3810000000000000
  %126 = fmul contract float %123, 0x4170000000000000
  %127 = select i1 %125, float %126, float %123
  %128 = bitcast float %127 to i32
  %129 = add i32 %128, -8388608
  %130 = icmp ult i32 %129, 2130706432
  br i1 %130, label %131, label %152

131:                                              ; preds = %120
  %132 = and i32 %128, 16777215
  %133 = or disjoint i32 %132, 1056964608
  %134 = bitcast i32 %133 to float
  %135 = sub nsw i32 %133, %128
  %136 = add nsw i32 %135, 201326592
  %137 = select i1 %125, i32 %136, i32 %135
  %138 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %134) #7
  %139 = fmul contract float %138, %138
  %140 = fneg contract float %139
  %141 = tail call float @llvm.fma.f32(float %138, float %138, float %140)
  %142 = fneg contract float %134
  %143 = tail call float @llvm.fma.f32(float %139, float %142, float 1.000000e+00)
  %144 = tail call float @llvm.fma.f32(float %141, float %142, float %143)
  %145 = tail call float @llvm.fma.f32(float %144, float 3.750000e-01, float 5.000000e-01)
  %146 = fmul contract float %138, %144
  %147 = tail call float @llvm.fma.f32(float %145, float %146, float %138)
  %148 = ashr i32 %137, 1
  %149 = bitcast float %147 to i32
  %150 = add i32 %148, %149
  %151 = bitcast i32 %150 to float
  br label %154

152:                                              ; preds = %120
  %153 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %127) #7
  br label %154

154:                                              ; preds = %152, %131
  %155 = phi float [ %151, %131 ], [ %153, %152 ]
  store float %155, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !49
  br label %156

156:                                              ; preds = %154, %102
  tail call void @llvm.bi.sl.barrier(), !noalias !49
  br i1 %41, label %157, label %216

157:                                              ; preds = %156
  %158 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !49
  %159 = xor i64 %40, -1
  %160 = add i64 %159, %14
  %161 = lshr i64 %160, 9
  %162 = add nuw nsw i64 %161, 1
  %163 = icmp ult i64 %160, 512
  br i1 %163, label %200, label %164

164:                                              ; preds = %157
  %165 = and i64 %162, 72057594037927934
  %166 = shl i64 %165, 9
  %167 = add i64 %166, %40
  %168 = insertelement <2 x float> poison, float %158, i64 0
  %169 = shufflevector <2 x float> %168, <2 x float> poison, <2 x i32> zeroinitializer
  br label %170

170:                                              ; preds = %170, %164
  %171 = phi i64 [ 0, %164 ], [ %196, %170 ]
  %172 = shl i64 %171, 9
  %173 = add i64 %172, %40
  %174 = add i64 %173, 512
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %173
  %176 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %174
  %177 = load half, ptr addrspace(1) %175, align 2, !tbaa.struct !24, !alias.scope !41, !noalias !52
  %178 = load half, ptr addrspace(1) %176, align 2, !tbaa.struct !24, !alias.scope !41, !noalias !52
  %179 = insertelement <2 x half> poison, half %177, i64 0
  %180 = insertelement <2 x half> %179, half %178, i64 1
  %181 = fpext <2 x half> %180 to <2 x float>
  %182 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %173
  %183 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %174
  %184 = load bfloat, ptr addrspace(1) %182, align 2, !tbaa.struct !24, !alias.scope !47, !noalias !54, !iluvatar.noclobber !18
  %185 = load bfloat, ptr addrspace(1) %183, align 2, !tbaa.struct !24, !alias.scope !47, !noalias !54, !iluvatar.noclobber !18
  %186 = insertelement <2 x bfloat> poison, bfloat %184, i64 0
  %187 = insertelement <2 x bfloat> %186, bfloat %185, i64 1
  %188 = fpext <2 x bfloat> %187 to <2 x float>
  %189 = fmul contract <2 x float> %181, %188
  %190 = fmul contract <2 x float> %169, %189
  %191 = fptrunc <2 x float> %190 to <2 x half>
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %173
  %193 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %174
  %194 = extractelement <2 x half> %191, i64 0
  store half %194, ptr addrspace(1) %192, align 2, !tbaa !25, !alias.scope !38, !noalias !55
  %195 = extractelement <2 x half> %191, i64 1
  store half %195, ptr addrspace(1) %193, align 2, !tbaa !25, !alias.scope !38, !noalias !55
  %196 = add nuw i64 %171, 2
  %197 = icmp eq i64 %196, %165
  br i1 %197, label %198, label %170, !llvm.loop !56

198:                                              ; preds = %170
  %199 = icmp eq i64 %162, %165
  br i1 %199, label %216, label %200

200:                                              ; preds = %157, %198
  %201 = phi i64 [ %40, %157 ], [ %167, %198 ]
  br label %202

202:                                              ; preds = %200, %202
  %203 = phi i64 [ %214, %202 ], [ %201, %200 ]
  %204 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %203
  %205 = load half, ptr addrspace(1) %204, align 2, !tbaa.struct !24, !alias.scope !41, !noalias !52
  %206 = fpext half %205 to float
  %207 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %203
  %208 = load bfloat, ptr addrspace(1) %207, align 2, !tbaa.struct !24, !alias.scope !47, !noalias !54, !iluvatar.noclobber !18
  %209 = fpext bfloat %208 to float
  %210 = fmul contract float %206, %209
  %211 = fmul contract float %158, %210
  %212 = fptrunc float %211 to half
  %213 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %203
  store half %212, ptr addrspace(1) %213, align 2, !tbaa !25, !alias.scope !38, !noalias !55
  %214 = add i64 %203, 512
  %215 = icmp ult i64 %214, %14
  br i1 %215, label %202, label %216, !llvm.loop !57

216:                                              ; preds = %202, %198, %156
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %104, label %42

42:                                               ; preds = %104, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %117, %104 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !69
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !69
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !69
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !69
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !69
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !69
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !69
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !69
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !69
  %101 = fadd contract float %100, %99
  br label %102

102:                                              ; preds = %87, %85
  %103 = phi float [ %101, %87 ], [ %80, %85 ]
  br i1 %86, label %120, label %156

104:                                              ; preds = %16, %104
  %105 = phi float [ %117, %104 ], [ 0.000000e+00, %16 ]
  %106 = phi i64 [ %118, %104 ], [ %40, %16 ]
  %107 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %106
  %108 = load half, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !63, !noalias !70, !iluvatar.noclobber !18
  %109 = fpext half %108 to float
  %110 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %106
  %111 = load half, ptr addrspace(1) %110, align 2, !tbaa.struct !24, !alias.scope !65, !noalias !71, !iluvatar.noclobber !18
  %112 = fpext half %111 to float
  %113 = fadd contract float %109, %112
  %114 = fptrunc float %113 to half
  %115 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %106
  store half %114, ptr addrspace(1) %115, align 2, !tbaa !25, !alias.scope !61, !noalias !72
  %116 = fmul contract float %113, %113
  %117 = fadd contract float %105, %116
  %118 = add i64 %106, 512
  %119 = icmp ult i64 %118, %14
  br i1 %119, label %104, label %42, !llvm.loop !73

120:                                              ; preds = %102
  %121 = uitofp i64 %14 to float
  %122 = fdiv contract float %103, %121
  %123 = fadd contract float %122, %15
  %124 = tail call float @llvm.fabs.f32(float %123)
  %125 = fcmp contract olt float %124, 0x3810000000000000
  %126 = fmul contract float %123, 0x4170000000000000
  %127 = select i1 %125, float %126, float %123
  %128 = bitcast float %127 to i32
  %129 = add i32 %128, -8388608
  %130 = icmp ult i32 %129, 2130706432
  br i1 %130, label %131, label %152

131:                                              ; preds = %120
  %132 = and i32 %128, 16777215
  %133 = or disjoint i32 %132, 1056964608
  %134 = bitcast i32 %133 to float
  %135 = sub nsw i32 %133, %128
  %136 = add nsw i32 %135, 201326592
  %137 = select i1 %125, i32 %136, i32 %135
  %138 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %134) #7
  %139 = fmul contract float %138, %138
  %140 = fneg contract float %139
  %141 = tail call float @llvm.fma.f32(float %138, float %138, float %140)
  %142 = fneg contract float %134
  %143 = tail call float @llvm.fma.f32(float %139, float %142, float 1.000000e+00)
  %144 = tail call float @llvm.fma.f32(float %141, float %142, float %143)
  %145 = tail call float @llvm.fma.f32(float %144, float 3.750000e-01, float 5.000000e-01)
  %146 = fmul contract float %138, %144
  %147 = tail call float @llvm.fma.f32(float %145, float %146, float %138)
  %148 = ashr i32 %137, 1
  %149 = bitcast float %147 to i32
  %150 = add i32 %148, %149
  %151 = bitcast i32 %150 to float
  br label %154

152:                                              ; preds = %120
  %153 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %127) #7
  br label %154

154:                                              ; preds = %152, %131
  %155 = phi float [ %151, %131 ], [ %153, %152 ]
  store float %155, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !69
  br label %156

156:                                              ; preds = %154, %102
  tail call void @llvm.bi.sl.barrier(), !noalias !69
  br i1 %41, label %157, label %172

157:                                              ; preds = %156
  %158 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !69
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i64 [ %40, %157 ], [ %170, %159 ]
  %161 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %160
  %162 = load half, ptr addrspace(1) %161, align 2, !tbaa.struct !24, !alias.scope !61, !noalias !72
  %163 = fpext half %162 to float
  %164 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %160
  %165 = load float, ptr addrspace(1) %164, align 4, !tbaa !19, !alias.scope !67, !noalias !74, !iluvatar.noclobber !18
  %166 = fmul contract float %165, %163
  %167 = fmul contract float %158, %166
  %168 = fptrunc float %167 to half
  %169 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %160
  store half %168, ptr addrspace(1) %169, align 2, !tbaa !25, !alias.scope !58, !noalias !75
  %170 = add i64 %160, 512
  %171 = icmp ult i64 %170, %14
  br i1 %171, label %159, label %172, !llvm.loop !76

172:                                              ; preds = %159, %156
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %104, label %42

42:                                               ; preds = %104, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %117, %104 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !88
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !88
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !88
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !88
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !88
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !88
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !88
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !88
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !88
  %101 = fadd contract float %100, %99
  br label %102

102:                                              ; preds = %87, %85
  %103 = phi float [ %101, %87 ], [ %80, %85 ]
  br i1 %86, label %120, label %156

104:                                              ; preds = %16, %104
  %105 = phi float [ %117, %104 ], [ 0.000000e+00, %16 ]
  %106 = phi i64 [ %118, %104 ], [ %40, %16 ]
  %107 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %106
  %108 = load bfloat, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !82, !noalias !89, !iluvatar.noclobber !18
  %109 = fpext bfloat %108 to float
  %110 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %106
  %111 = load bfloat, ptr addrspace(1) %110, align 2, !tbaa.struct !24, !alias.scope !84, !noalias !90, !iluvatar.noclobber !18
  %112 = fpext bfloat %111 to float
  %113 = fadd contract float %109, %112
  %114 = fptrunc float %113 to bfloat
  %115 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %106
  store bfloat %114, ptr addrspace(1) %115, align 2, !tbaa !25, !alias.scope !80, !noalias !91
  %116 = fmul contract float %113, %113
  %117 = fadd contract float %105, %116
  %118 = add i64 %106, 512
  %119 = icmp ult i64 %118, %14
  br i1 %119, label %104, label %42, !llvm.loop !92

120:                                              ; preds = %102
  %121 = uitofp i64 %14 to float
  %122 = fdiv contract float %103, %121
  %123 = fadd contract float %122, %15
  %124 = tail call float @llvm.fabs.f32(float %123)
  %125 = fcmp contract olt float %124, 0x3810000000000000
  %126 = fmul contract float %123, 0x4170000000000000
  %127 = select i1 %125, float %126, float %123
  %128 = bitcast float %127 to i32
  %129 = add i32 %128, -8388608
  %130 = icmp ult i32 %129, 2130706432
  br i1 %130, label %131, label %152

131:                                              ; preds = %120
  %132 = and i32 %128, 16777215
  %133 = or disjoint i32 %132, 1056964608
  %134 = bitcast i32 %133 to float
  %135 = sub nsw i32 %133, %128
  %136 = add nsw i32 %135, 201326592
  %137 = select i1 %125, i32 %136, i32 %135
  %138 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %134) #7
  %139 = fmul contract float %138, %138
  %140 = fneg contract float %139
  %141 = tail call float @llvm.fma.f32(float %138, float %138, float %140)
  %142 = fneg contract float %134
  %143 = tail call float @llvm.fma.f32(float %139, float %142, float 1.000000e+00)
  %144 = tail call float @llvm.fma.f32(float %141, float %142, float %143)
  %145 = tail call float @llvm.fma.f32(float %144, float 3.750000e-01, float 5.000000e-01)
  %146 = fmul contract float %138, %144
  %147 = tail call float @llvm.fma.f32(float %145, float %146, float %138)
  %148 = ashr i32 %137, 1
  %149 = bitcast float %147 to i32
  %150 = add i32 %148, %149
  %151 = bitcast i32 %150 to float
  br label %154

152:                                              ; preds = %120
  %153 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %127) #7
  br label %154

154:                                              ; preds = %152, %131
  %155 = phi float [ %151, %131 ], [ %153, %152 ]
  store float %155, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !88
  br label %156

156:                                              ; preds = %154, %102
  tail call void @llvm.bi.sl.barrier(), !noalias !88
  br i1 %41, label %157, label %216

157:                                              ; preds = %156
  %158 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !88
  %159 = xor i64 %40, -1
  %160 = add i64 %159, %14
  %161 = lshr i64 %160, 9
  %162 = add nuw nsw i64 %161, 1
  %163 = icmp ult i64 %160, 512
  br i1 %163, label %200, label %164

164:                                              ; preds = %157
  %165 = and i64 %162, 72057594037927934
  %166 = shl i64 %165, 9
  %167 = add i64 %166, %40
  %168 = insertelement <2 x float> poison, float %158, i64 0
  %169 = shufflevector <2 x float> %168, <2 x float> poison, <2 x i32> zeroinitializer
  br label %170

170:                                              ; preds = %170, %164
  %171 = phi i64 [ 0, %164 ], [ %196, %170 ]
  %172 = shl i64 %171, 9
  %173 = add i64 %172, %40
  %174 = add i64 %173, 512
  %175 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %173
  %176 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %174
  %177 = load bfloat, ptr addrspace(1) %175, align 2, !tbaa.struct !24, !alias.scope !80, !noalias !91
  %178 = load bfloat, ptr addrspace(1) %176, align 2, !tbaa.struct !24, !alias.scope !80, !noalias !91
  %179 = insertelement <2 x bfloat> poison, bfloat %177, i64 0
  %180 = insertelement <2 x bfloat> %179, bfloat %178, i64 1
  %181 = fpext <2 x bfloat> %180 to <2 x float>
  %182 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %173
  %183 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %174
  %184 = load bfloat, ptr addrspace(1) %182, align 2, !tbaa.struct !24, !alias.scope !86, !noalias !93, !iluvatar.noclobber !18
  %185 = load bfloat, ptr addrspace(1) %183, align 2, !tbaa.struct !24, !alias.scope !86, !noalias !93, !iluvatar.noclobber !18
  %186 = insertelement <2 x bfloat> poison, bfloat %184, i64 0
  %187 = insertelement <2 x bfloat> %186, bfloat %185, i64 1
  %188 = fpext <2 x bfloat> %187 to <2 x float>
  %189 = fmul contract <2 x float> %181, %188
  %190 = fmul contract <2 x float> %169, %189
  %191 = fptrunc <2 x float> %190 to <2 x bfloat>
  %192 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %173
  %193 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %174
  %194 = extractelement <2 x bfloat> %191, i64 0
  store bfloat %194, ptr addrspace(1) %192, align 2, !tbaa !25, !alias.scope !77, !noalias !94
  %195 = extractelement <2 x bfloat> %191, i64 1
  store bfloat %195, ptr addrspace(1) %193, align 2, !tbaa !25, !alias.scope !77, !noalias !94
  %196 = add nuw i64 %171, 2
  %197 = icmp eq i64 %196, %165
  br i1 %197, label %198, label %170, !llvm.loop !95

198:                                              ; preds = %170
  %199 = icmp eq i64 %162, %165
  br i1 %199, label %216, label %200

200:                                              ; preds = %157, %198
  %201 = phi i64 [ %40, %157 ], [ %167, %198 ]
  br label %202

202:                                              ; preds = %200, %202
  %203 = phi i64 [ %214, %202 ], [ %201, %200 ]
  %204 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %203
  %205 = load bfloat, ptr addrspace(1) %204, align 2, !tbaa.struct !24, !alias.scope !80, !noalias !91
  %206 = fpext bfloat %205 to float
  %207 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %203
  %208 = load bfloat, ptr addrspace(1) %207, align 2, !tbaa.struct !24, !alias.scope !86, !noalias !93, !iluvatar.noclobber !18
  %209 = fpext bfloat %208 to float
  %210 = fmul contract float %206, %209
  %211 = fmul contract float %158, %210
  %212 = fptrunc float %211 to bfloat
  %213 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %203
  store bfloat %212, ptr addrspace(1) %213, align 2, !tbaa !25, !alias.scope !77, !noalias !94
  %214 = add i64 %203, 512
  %215 = icmp ult i64 %214, %14
  br i1 %215, label %202, label %216, !llvm.loop !96

216:                                              ; preds = %202, %198, %156
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %104, label %42

42:                                               ; preds = %104, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %117, %104 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !108
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !108
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !108
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !108
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !108
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !108
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !108
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !108
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !108
  %101 = fadd contract float %100, %99
  br label %102

102:                                              ; preds = %87, %85
  %103 = phi float [ %101, %87 ], [ %80, %85 ]
  br i1 %86, label %120, label %156

104:                                              ; preds = %16, %104
  %105 = phi float [ %117, %104 ], [ 0.000000e+00, %16 ]
  %106 = phi i64 [ %118, %104 ], [ %40, %16 ]
  %107 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %106
  %108 = load bfloat, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !102, !noalias !109, !iluvatar.noclobber !18
  %109 = fpext bfloat %108 to float
  %110 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %106
  %111 = load bfloat, ptr addrspace(1) %110, align 2, !tbaa.struct !24, !alias.scope !104, !noalias !110, !iluvatar.noclobber !18
  %112 = fpext bfloat %111 to float
  %113 = fadd contract float %109, %112
  %114 = fptrunc float %113 to bfloat
  %115 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %106
  store bfloat %114, ptr addrspace(1) %115, align 2, !tbaa !25, !alias.scope !100, !noalias !111
  %116 = fmul contract float %113, %113
  %117 = fadd contract float %105, %116
  %118 = add i64 %106, 512
  %119 = icmp ult i64 %118, %14
  br i1 %119, label %104, label %42, !llvm.loop !112

120:                                              ; preds = %102
  %121 = uitofp i64 %14 to float
  %122 = fdiv contract float %103, %121
  %123 = fadd contract float %122, %15
  %124 = tail call float @llvm.fabs.f32(float %123)
  %125 = fcmp contract olt float %124, 0x3810000000000000
  %126 = fmul contract float %123, 0x4170000000000000
  %127 = select i1 %125, float %126, float %123
  %128 = bitcast float %127 to i32
  %129 = add i32 %128, -8388608
  %130 = icmp ult i32 %129, 2130706432
  br i1 %130, label %131, label %152

131:                                              ; preds = %120
  %132 = and i32 %128, 16777215
  %133 = or disjoint i32 %132, 1056964608
  %134 = bitcast i32 %133 to float
  %135 = sub nsw i32 %133, %128
  %136 = add nsw i32 %135, 201326592
  %137 = select i1 %125, i32 %136, i32 %135
  %138 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %134) #7
  %139 = fmul contract float %138, %138
  %140 = fneg contract float %139
  %141 = tail call float @llvm.fma.f32(float %138, float %138, float %140)
  %142 = fneg contract float %134
  %143 = tail call float @llvm.fma.f32(float %139, float %142, float 1.000000e+00)
  %144 = tail call float @llvm.fma.f32(float %141, float %142, float %143)
  %145 = tail call float @llvm.fma.f32(float %144, float 3.750000e-01, float 5.000000e-01)
  %146 = fmul contract float %138, %144
  %147 = tail call float @llvm.fma.f32(float %145, float %146, float %138)
  %148 = ashr i32 %137, 1
  %149 = bitcast float %147 to i32
  %150 = add i32 %148, %149
  %151 = bitcast i32 %150 to float
  br label %154

152:                                              ; preds = %120
  %153 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %127) #7
  br label %154

154:                                              ; preds = %152, %131
  %155 = phi float [ %151, %131 ], [ %153, %152 ]
  store float %155, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !108
  br label %156

156:                                              ; preds = %154, %102
  tail call void @llvm.bi.sl.barrier(), !noalias !108
  br i1 %41, label %157, label %216

157:                                              ; preds = %156
  %158 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !108
  %159 = xor i64 %40, -1
  %160 = add i64 %159, %14
  %161 = lshr i64 %160, 9
  %162 = add nuw nsw i64 %161, 1
  %163 = icmp ult i64 %160, 512
  br i1 %163, label %200, label %164

164:                                              ; preds = %157
  %165 = and i64 %162, 72057594037927934
  %166 = shl i64 %165, 9
  %167 = add i64 %166, %40
  %168 = insertelement <2 x float> poison, float %158, i64 0
  %169 = shufflevector <2 x float> %168, <2 x float> poison, <2 x i32> zeroinitializer
  br label %170

170:                                              ; preds = %170, %164
  %171 = phi i64 [ 0, %164 ], [ %196, %170 ]
  %172 = shl i64 %171, 9
  %173 = add i64 %172, %40
  %174 = add i64 %173, 512
  %175 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %173
  %176 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %174
  %177 = load bfloat, ptr addrspace(1) %175, align 2, !tbaa.struct !24, !alias.scope !100, !noalias !111
  %178 = load bfloat, ptr addrspace(1) %176, align 2, !tbaa.struct !24, !alias.scope !100, !noalias !111
  %179 = insertelement <2 x bfloat> poison, bfloat %177, i64 0
  %180 = insertelement <2 x bfloat> %179, bfloat %178, i64 1
  %181 = fpext <2 x bfloat> %180 to <2 x float>
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %173
  %183 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %174
  %184 = load half, ptr addrspace(1) %182, align 2, !tbaa.struct !24, !alias.scope !106, !noalias !113, !iluvatar.noclobber !18
  %185 = load half, ptr addrspace(1) %183, align 2, !tbaa.struct !24, !alias.scope !106, !noalias !113, !iluvatar.noclobber !18
  %186 = insertelement <2 x half> poison, half %184, i64 0
  %187 = insertelement <2 x half> %186, half %185, i64 1
  %188 = fpext <2 x half> %187 to <2 x float>
  %189 = fmul contract <2 x float> %181, %188
  %190 = fmul contract <2 x float> %169, %189
  %191 = fptrunc <2 x float> %190 to <2 x bfloat>
  %192 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %173
  %193 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %174
  %194 = extractelement <2 x bfloat> %191, i64 0
  store bfloat %194, ptr addrspace(1) %192, align 2, !tbaa !25, !alias.scope !97, !noalias !114
  %195 = extractelement <2 x bfloat> %191, i64 1
  store bfloat %195, ptr addrspace(1) %193, align 2, !tbaa !25, !alias.scope !97, !noalias !114
  %196 = add nuw i64 %171, 2
  %197 = icmp eq i64 %196, %165
  br i1 %197, label %198, label %170, !llvm.loop !115

198:                                              ; preds = %170
  %199 = icmp eq i64 %162, %165
  br i1 %199, label %216, label %200

200:                                              ; preds = %157, %198
  %201 = phi i64 [ %40, %157 ], [ %167, %198 ]
  br label %202

202:                                              ; preds = %200, %202
  %203 = phi i64 [ %214, %202 ], [ %201, %200 ]
  %204 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %203
  %205 = load bfloat, ptr addrspace(1) %204, align 2, !tbaa.struct !24, !alias.scope !100, !noalias !111
  %206 = fpext bfloat %205 to float
  %207 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %203
  %208 = load half, ptr addrspace(1) %207, align 2, !tbaa.struct !24, !alias.scope !106, !noalias !113, !iluvatar.noclobber !18
  %209 = fpext half %208 to float
  %210 = fmul contract float %206, %209
  %211 = fmul contract float %158, %210
  %212 = fptrunc float %211 to bfloat
  %213 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %203
  store bfloat %212, ptr addrspace(1) %213, align 2, !tbaa !25, !alias.scope !97, !noalias !114
  %214 = add i64 %203, 512
  %215 = icmp ult i64 %214, %14
  br i1 %215, label %202, label %216, !llvm.loop !116

216:                                              ; preds = %202, %198, %156
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %104, label %42

42:                                               ; preds = %104, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %117, %104 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !128
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !128
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !128
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !128
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !128
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !128
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !128
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !128
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !128
  %101 = fadd contract float %100, %99
  br label %102

102:                                              ; preds = %87, %85
  %103 = phi float [ %101, %87 ], [ %80, %85 ]
  br i1 %86, label %120, label %156

104:                                              ; preds = %16, %104
  %105 = phi float [ %117, %104 ], [ 0.000000e+00, %16 ]
  %106 = phi i64 [ %118, %104 ], [ %40, %16 ]
  %107 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %106
  %108 = load bfloat, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !122, !noalias !129, !iluvatar.noclobber !18
  %109 = fpext bfloat %108 to float
  %110 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %106
  %111 = load bfloat, ptr addrspace(1) %110, align 2, !tbaa.struct !24, !alias.scope !124, !noalias !130, !iluvatar.noclobber !18
  %112 = fpext bfloat %111 to float
  %113 = fadd contract float %109, %112
  %114 = fptrunc float %113 to bfloat
  %115 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %106
  store bfloat %114, ptr addrspace(1) %115, align 2, !tbaa !25, !alias.scope !120, !noalias !131
  %116 = fmul contract float %113, %113
  %117 = fadd contract float %105, %116
  %118 = add i64 %106, 512
  %119 = icmp ult i64 %118, %14
  br i1 %119, label %104, label %42, !llvm.loop !132

120:                                              ; preds = %102
  %121 = uitofp i64 %14 to float
  %122 = fdiv contract float %103, %121
  %123 = fadd contract float %122, %15
  %124 = tail call float @llvm.fabs.f32(float %123)
  %125 = fcmp contract olt float %124, 0x3810000000000000
  %126 = fmul contract float %123, 0x4170000000000000
  %127 = select i1 %125, float %126, float %123
  %128 = bitcast float %127 to i32
  %129 = add i32 %128, -8388608
  %130 = icmp ult i32 %129, 2130706432
  br i1 %130, label %131, label %152

131:                                              ; preds = %120
  %132 = and i32 %128, 16777215
  %133 = or disjoint i32 %132, 1056964608
  %134 = bitcast i32 %133 to float
  %135 = sub nsw i32 %133, %128
  %136 = add nsw i32 %135, 201326592
  %137 = select i1 %125, i32 %136, i32 %135
  %138 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %134) #7
  %139 = fmul contract float %138, %138
  %140 = fneg contract float %139
  %141 = tail call float @llvm.fma.f32(float %138, float %138, float %140)
  %142 = fneg contract float %134
  %143 = tail call float @llvm.fma.f32(float %139, float %142, float 1.000000e+00)
  %144 = tail call float @llvm.fma.f32(float %141, float %142, float %143)
  %145 = tail call float @llvm.fma.f32(float %144, float 3.750000e-01, float 5.000000e-01)
  %146 = fmul contract float %138, %144
  %147 = tail call float @llvm.fma.f32(float %145, float %146, float %138)
  %148 = ashr i32 %137, 1
  %149 = bitcast float %147 to i32
  %150 = add i32 %148, %149
  %151 = bitcast i32 %150 to float
  br label %154

152:                                              ; preds = %120
  %153 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %127) #7
  br label %154

154:                                              ; preds = %152, %131
  %155 = phi float [ %151, %131 ], [ %153, %152 ]
  store float %155, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !128
  br label %156

156:                                              ; preds = %154, %102
  tail call void @llvm.bi.sl.barrier(), !noalias !128
  br i1 %41, label %157, label %172

157:                                              ; preds = %156
  %158 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !128
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i64 [ %40, %157 ], [ %170, %159 ]
  %161 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %160
  %162 = load bfloat, ptr addrspace(1) %161, align 2, !tbaa.struct !24, !alias.scope !120, !noalias !131
  %163 = fpext bfloat %162 to float
  %164 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %160
  %165 = load float, ptr addrspace(1) %164, align 4, !tbaa !19, !alias.scope !126, !noalias !133, !iluvatar.noclobber !18
  %166 = fmul contract float %165, %163
  %167 = fmul contract float %158, %166
  %168 = fptrunc float %167 to bfloat
  %169 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %160
  store bfloat %168, ptr addrspace(1) %169, align 2, !tbaa !25, !alias.scope !117, !noalias !134
  %170 = add i64 %160, 512
  %171 = icmp ult i64 %170, %14
  br i1 %171, label %159, label %172, !llvm.loop !135

172:                                              ; preds = %159, %156
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds float, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds float, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds float, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds float, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds float, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %104, label %42

42:                                               ; preds = %104, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %114, %104 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !147
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !147
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !147
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !147
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !147
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !147
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !147
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !147
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !147
  %101 = fadd contract float %100, %99
  br label %102

102:                                              ; preds = %87, %85
  %103 = phi float [ %101, %87 ], [ %80, %85 ]
  br i1 %86, label %117, label %153

104:                                              ; preds = %16, %104
  %105 = phi float [ %114, %104 ], [ 0.000000e+00, %16 ]
  %106 = phi i64 [ %115, %104 ], [ %40, %16 ]
  %107 = getelementptr inbounds float, ptr addrspace(1) %30, i64 %106
  %108 = load float, ptr addrspace(1) %107, align 4, !tbaa !19, !alias.scope !141, !noalias !148, !iluvatar.noclobber !18
  %109 = getelementptr inbounds float, ptr addrspace(1) %34, i64 %106
  %110 = load float, ptr addrspace(1) %109, align 4, !tbaa !19, !alias.scope !143, !noalias !149, !iluvatar.noclobber !18
  %111 = fadd contract float %108, %110
  %112 = getelementptr inbounds float, ptr addrspace(1) %38, i64 %106
  store float %111, ptr addrspace(1) %112, align 4, !tbaa !19, !alias.scope !139, !noalias !150
  %113 = fmul contract float %111, %111
  %114 = fadd contract float %105, %113
  %115 = add i64 %106, 512
  %116 = icmp ult i64 %115, %14
  br i1 %116, label %104, label %42, !llvm.loop !151

117:                                              ; preds = %102
  %118 = uitofp i64 %14 to float
  %119 = fdiv contract float %103, %118
  %120 = fadd contract float %119, %15
  %121 = tail call float @llvm.fabs.f32(float %120)
  %122 = fcmp contract olt float %121, 0x3810000000000000
  %123 = fmul contract float %120, 0x4170000000000000
  %124 = select i1 %122, float %123, float %120
  %125 = bitcast float %124 to i32
  %126 = add i32 %125, -8388608
  %127 = icmp ult i32 %126, 2130706432
  br i1 %127, label %128, label %149

128:                                              ; preds = %117
  %129 = and i32 %125, 16777215
  %130 = or disjoint i32 %129, 1056964608
  %131 = bitcast i32 %130 to float
  %132 = sub nsw i32 %130, %125
  %133 = add nsw i32 %132, 201326592
  %134 = select i1 %122, i32 %133, i32 %132
  %135 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %131) #7
  %136 = fmul contract float %135, %135
  %137 = fneg contract float %136
  %138 = tail call float @llvm.fma.f32(float %135, float %135, float %137)
  %139 = fneg contract float %131
  %140 = tail call float @llvm.fma.f32(float %136, float %139, float 1.000000e+00)
  %141 = tail call float @llvm.fma.f32(float %138, float %139, float %140)
  %142 = tail call float @llvm.fma.f32(float %141, float 3.750000e-01, float 5.000000e-01)
  %143 = fmul contract float %135, %141
  %144 = tail call float @llvm.fma.f32(float %142, float %143, float %135)
  %145 = ashr i32 %134, 1
  %146 = bitcast float %144 to i32
  %147 = add i32 %145, %146
  %148 = bitcast i32 %147 to float
  br label %151

149:                                              ; preds = %117
  %150 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %124) #7
  br label %151

151:                                              ; preds = %149, %128
  %152 = phi float [ %148, %128 ], [ %150, %149 ]
  store float %152, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !147
  br label %153

153:                                              ; preds = %151, %102
  tail call void @llvm.bi.sl.barrier(), !noalias !147
  br i1 %41, label %154, label %167

154:                                              ; preds = %153
  %155 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !147
  br label %156

156:                                              ; preds = %156, %154
  %157 = phi i64 [ %40, %154 ], [ %165, %156 ]
  %158 = getelementptr inbounds float, ptr addrspace(1) %38, i64 %157
  %159 = load float, ptr addrspace(1) %158, align 4, !tbaa !19, !alias.scope !139, !noalias !150
  %160 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %157
  %161 = load float, ptr addrspace(1) %160, align 4, !tbaa !19, !alias.scope !145, !noalias !152, !iluvatar.noclobber !18
  %162 = fmul contract float %159, %161
  %163 = fmul contract float %155, %162
  %164 = getelementptr inbounds float, ptr addrspace(1) %26, i64 %157
  store float %163, ptr addrspace(1) %164, align 4, !tbaa !19, !alias.scope !136, !noalias !153
  %165 = add i64 %157, 512
  %166 = icmp ult i64 %165, %14
  br i1 %166, label %156, label %167, !llvm.loop !154

167:                                              ; preds = %156, %153
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %120, label %42

42:                                               ; preds = %120, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %133, %120 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !166
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !166
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !166
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !166
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !166
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !166
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !166
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !166
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !166
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !166
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !166
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !166
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !166
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !166
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !166
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !166
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !166
  %117 = fadd contract float %116, %115
  br label %118

118:                                              ; preds = %87, %85
  %119 = phi float [ %117, %87 ], [ %80, %85 ]
  br i1 %86, label %136, label %172

120:                                              ; preds = %16, %120
  %121 = phi float [ %133, %120 ], [ 0.000000e+00, %16 ]
  %122 = phi i64 [ %134, %120 ], [ %40, %16 ]
  %123 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %122
  %124 = load half, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !160, !noalias !167, !iluvatar.noclobber !18
  %125 = fpext half %124 to float
  %126 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %122
  %127 = load half, ptr addrspace(1) %126, align 2, !tbaa.struct !24, !alias.scope !162, !noalias !168, !iluvatar.noclobber !18
  %128 = fpext half %127 to float
  %129 = fadd contract float %125, %128
  %130 = fptrunc float %129 to half
  %131 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %122
  store half %130, ptr addrspace(1) %131, align 2, !tbaa !25, !alias.scope !158, !noalias !169
  %132 = fmul contract float %129, %129
  %133 = fadd contract float %121, %132
  %134 = add i64 %122, 1024
  %135 = icmp ult i64 %134, %14
  br i1 %135, label %120, label %42, !llvm.loop !170

136:                                              ; preds = %118
  %137 = uitofp i64 %14 to float
  %138 = fdiv contract float %119, %137
  %139 = fadd contract float %138, %15
  %140 = tail call float @llvm.fabs.f32(float %139)
  %141 = fcmp contract olt float %140, 0x3810000000000000
  %142 = fmul contract float %139, 0x4170000000000000
  %143 = select i1 %141, float %142, float %139
  %144 = bitcast float %143 to i32
  %145 = add i32 %144, -8388608
  %146 = icmp ult i32 %145, 2130706432
  br i1 %146, label %147, label %168

147:                                              ; preds = %136
  %148 = and i32 %144, 16777215
  %149 = or disjoint i32 %148, 1056964608
  %150 = bitcast i32 %149 to float
  %151 = sub nsw i32 %149, %144
  %152 = add nsw i32 %151, 201326592
  %153 = select i1 %141, i32 %152, i32 %151
  %154 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %150) #7
  %155 = fmul contract float %154, %154
  %156 = fneg contract float %155
  %157 = tail call float @llvm.fma.f32(float %154, float %154, float %156)
  %158 = fneg contract float %150
  %159 = tail call float @llvm.fma.f32(float %155, float %158, float 1.000000e+00)
  %160 = tail call float @llvm.fma.f32(float %157, float %158, float %159)
  %161 = tail call float @llvm.fma.f32(float %160, float 3.750000e-01, float 5.000000e-01)
  %162 = fmul contract float %154, %160
  %163 = tail call float @llvm.fma.f32(float %161, float %162, float %154)
  %164 = ashr i32 %153, 1
  %165 = bitcast float %163 to i32
  %166 = add i32 %164, %165
  %167 = bitcast i32 %166 to float
  br label %170

168:                                              ; preds = %136
  %169 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %143) #7
  br label %170

170:                                              ; preds = %168, %147
  %171 = phi float [ %167, %147 ], [ %169, %168 ]
  store float %171, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !166
  br label %172

172:                                              ; preds = %170, %118
  tail call void @llvm.bi.sl.barrier(), !noalias !166
  br i1 %41, label %173, label %232

173:                                              ; preds = %172
  %174 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !166
  %175 = xor i64 %40, -1
  %176 = add i64 %175, %14
  %177 = lshr i64 %176, 10
  %178 = add nuw nsw i64 %177, 1
  %179 = icmp ult i64 %176, 1024
  br i1 %179, label %216, label %180

180:                                              ; preds = %173
  %181 = and i64 %178, 36028797018963966
  %182 = shl i64 %181, 10
  %183 = add i64 %182, %40
  %184 = insertelement <2 x float> poison, float %174, i64 0
  %185 = shufflevector <2 x float> %184, <2 x float> poison, <2 x i32> zeroinitializer
  br label %186

186:                                              ; preds = %186, %180
  %187 = phi i64 [ 0, %180 ], [ %212, %186 ]
  %188 = shl i64 %187, 10
  %189 = add i64 %188, %40
  %190 = add i64 %189, 1024
  %191 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %189
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %190
  %193 = load half, ptr addrspace(1) %191, align 2, !tbaa.struct !24, !alias.scope !158, !noalias !169
  %194 = load half, ptr addrspace(1) %192, align 2, !tbaa.struct !24, !alias.scope !158, !noalias !169
  %195 = insertelement <2 x half> poison, half %193, i64 0
  %196 = insertelement <2 x half> %195, half %194, i64 1
  %197 = fpext <2 x half> %196 to <2 x float>
  %198 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %189
  %199 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %190
  %200 = load half, ptr addrspace(1) %198, align 2, !tbaa.struct !24, !alias.scope !164, !noalias !171, !iluvatar.noclobber !18
  %201 = load half, ptr addrspace(1) %199, align 2, !tbaa.struct !24, !alias.scope !164, !noalias !171, !iluvatar.noclobber !18
  %202 = insertelement <2 x half> poison, half %200, i64 0
  %203 = insertelement <2 x half> %202, half %201, i64 1
  %204 = fpext <2 x half> %203 to <2 x float>
  %205 = fmul contract <2 x float> %197, %204
  %206 = fmul contract <2 x float> %185, %205
  %207 = fptrunc <2 x float> %206 to <2 x half>
  %208 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %189
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %190
  %210 = extractelement <2 x half> %207, i64 0
  store half %210, ptr addrspace(1) %208, align 2, !tbaa !25, !alias.scope !155, !noalias !172
  %211 = extractelement <2 x half> %207, i64 1
  store half %211, ptr addrspace(1) %209, align 2, !tbaa !25, !alias.scope !155, !noalias !172
  %212 = add nuw i64 %187, 2
  %213 = icmp eq i64 %212, %181
  br i1 %213, label %214, label %186, !llvm.loop !173

214:                                              ; preds = %186
  %215 = icmp eq i64 %178, %181
  br i1 %215, label %232, label %216

216:                                              ; preds = %173, %214
  %217 = phi i64 [ %40, %173 ], [ %183, %214 ]
  br label %218

218:                                              ; preds = %216, %218
  %219 = phi i64 [ %230, %218 ], [ %217, %216 ]
  %220 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %219
  %221 = load half, ptr addrspace(1) %220, align 2, !tbaa.struct !24, !alias.scope !158, !noalias !169
  %222 = fpext half %221 to float
  %223 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %219
  %224 = load half, ptr addrspace(1) %223, align 2, !tbaa.struct !24, !alias.scope !164, !noalias !171, !iluvatar.noclobber !18
  %225 = fpext half %224 to float
  %226 = fmul contract float %222, %225
  %227 = fmul contract float %174, %226
  %228 = fptrunc float %227 to half
  %229 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %219
  store half %228, ptr addrspace(1) %229, align 2, !tbaa !25, !alias.scope !155, !noalias !172
  %230 = add i64 %219, 1024
  %231 = icmp ult i64 %230, %14
  br i1 %231, label %218, label %232, !llvm.loop !174

232:                                              ; preds = %218, %214, %172
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %120, label %42

42:                                               ; preds = %120, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %133, %120 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !186
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !186
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !186
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !186
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !186
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !186
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !186
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !186
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !186
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !186
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !186
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !186
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !186
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !186
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !186
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !186
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !186
  %117 = fadd contract float %116, %115
  br label %118

118:                                              ; preds = %87, %85
  %119 = phi float [ %117, %87 ], [ %80, %85 ]
  br i1 %86, label %136, label %172

120:                                              ; preds = %16, %120
  %121 = phi float [ %133, %120 ], [ 0.000000e+00, %16 ]
  %122 = phi i64 [ %134, %120 ], [ %40, %16 ]
  %123 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %122
  %124 = load half, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !180, !noalias !187, !iluvatar.noclobber !18
  %125 = fpext half %124 to float
  %126 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %122
  %127 = load half, ptr addrspace(1) %126, align 2, !tbaa.struct !24, !alias.scope !182, !noalias !188, !iluvatar.noclobber !18
  %128 = fpext half %127 to float
  %129 = fadd contract float %125, %128
  %130 = fptrunc float %129 to half
  %131 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %122
  store half %130, ptr addrspace(1) %131, align 2, !tbaa !25, !alias.scope !178, !noalias !189
  %132 = fmul contract float %129, %129
  %133 = fadd contract float %121, %132
  %134 = add i64 %122, 1024
  %135 = icmp ult i64 %134, %14
  br i1 %135, label %120, label %42, !llvm.loop !190

136:                                              ; preds = %118
  %137 = uitofp i64 %14 to float
  %138 = fdiv contract float %119, %137
  %139 = fadd contract float %138, %15
  %140 = tail call float @llvm.fabs.f32(float %139)
  %141 = fcmp contract olt float %140, 0x3810000000000000
  %142 = fmul contract float %139, 0x4170000000000000
  %143 = select i1 %141, float %142, float %139
  %144 = bitcast float %143 to i32
  %145 = add i32 %144, -8388608
  %146 = icmp ult i32 %145, 2130706432
  br i1 %146, label %147, label %168

147:                                              ; preds = %136
  %148 = and i32 %144, 16777215
  %149 = or disjoint i32 %148, 1056964608
  %150 = bitcast i32 %149 to float
  %151 = sub nsw i32 %149, %144
  %152 = add nsw i32 %151, 201326592
  %153 = select i1 %141, i32 %152, i32 %151
  %154 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %150) #7
  %155 = fmul contract float %154, %154
  %156 = fneg contract float %155
  %157 = tail call float @llvm.fma.f32(float %154, float %154, float %156)
  %158 = fneg contract float %150
  %159 = tail call float @llvm.fma.f32(float %155, float %158, float 1.000000e+00)
  %160 = tail call float @llvm.fma.f32(float %157, float %158, float %159)
  %161 = tail call float @llvm.fma.f32(float %160, float 3.750000e-01, float 5.000000e-01)
  %162 = fmul contract float %154, %160
  %163 = tail call float @llvm.fma.f32(float %161, float %162, float %154)
  %164 = ashr i32 %153, 1
  %165 = bitcast float %163 to i32
  %166 = add i32 %164, %165
  %167 = bitcast i32 %166 to float
  br label %170

168:                                              ; preds = %136
  %169 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %143) #7
  br label %170

170:                                              ; preds = %168, %147
  %171 = phi float [ %167, %147 ], [ %169, %168 ]
  store float %171, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !186
  br label %172

172:                                              ; preds = %170, %118
  tail call void @llvm.bi.sl.barrier(), !noalias !186
  br i1 %41, label %173, label %232

173:                                              ; preds = %172
  %174 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !186
  %175 = xor i64 %40, -1
  %176 = add i64 %175, %14
  %177 = lshr i64 %176, 10
  %178 = add nuw nsw i64 %177, 1
  %179 = icmp ult i64 %176, 1024
  br i1 %179, label %216, label %180

180:                                              ; preds = %173
  %181 = and i64 %178, 36028797018963966
  %182 = shl i64 %181, 10
  %183 = add i64 %182, %40
  %184 = insertelement <2 x float> poison, float %174, i64 0
  %185 = shufflevector <2 x float> %184, <2 x float> poison, <2 x i32> zeroinitializer
  br label %186

186:                                              ; preds = %186, %180
  %187 = phi i64 [ 0, %180 ], [ %212, %186 ]
  %188 = shl i64 %187, 10
  %189 = add i64 %188, %40
  %190 = add i64 %189, 1024
  %191 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %189
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %190
  %193 = load half, ptr addrspace(1) %191, align 2, !tbaa.struct !24, !alias.scope !178, !noalias !189
  %194 = load half, ptr addrspace(1) %192, align 2, !tbaa.struct !24, !alias.scope !178, !noalias !189
  %195 = insertelement <2 x half> poison, half %193, i64 0
  %196 = insertelement <2 x half> %195, half %194, i64 1
  %197 = fpext <2 x half> %196 to <2 x float>
  %198 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %189
  %199 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %190
  %200 = load bfloat, ptr addrspace(1) %198, align 2, !tbaa.struct !24, !alias.scope !184, !noalias !191, !iluvatar.noclobber !18
  %201 = load bfloat, ptr addrspace(1) %199, align 2, !tbaa.struct !24, !alias.scope !184, !noalias !191, !iluvatar.noclobber !18
  %202 = insertelement <2 x bfloat> poison, bfloat %200, i64 0
  %203 = insertelement <2 x bfloat> %202, bfloat %201, i64 1
  %204 = fpext <2 x bfloat> %203 to <2 x float>
  %205 = fmul contract <2 x float> %197, %204
  %206 = fmul contract <2 x float> %185, %205
  %207 = fptrunc <2 x float> %206 to <2 x half>
  %208 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %189
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %190
  %210 = extractelement <2 x half> %207, i64 0
  store half %210, ptr addrspace(1) %208, align 2, !tbaa !25, !alias.scope !175, !noalias !192
  %211 = extractelement <2 x half> %207, i64 1
  store half %211, ptr addrspace(1) %209, align 2, !tbaa !25, !alias.scope !175, !noalias !192
  %212 = add nuw i64 %187, 2
  %213 = icmp eq i64 %212, %181
  br i1 %213, label %214, label %186, !llvm.loop !193

214:                                              ; preds = %186
  %215 = icmp eq i64 %178, %181
  br i1 %215, label %232, label %216

216:                                              ; preds = %173, %214
  %217 = phi i64 [ %40, %173 ], [ %183, %214 ]
  br label %218

218:                                              ; preds = %216, %218
  %219 = phi i64 [ %230, %218 ], [ %217, %216 ]
  %220 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %219
  %221 = load half, ptr addrspace(1) %220, align 2, !tbaa.struct !24, !alias.scope !178, !noalias !189
  %222 = fpext half %221 to float
  %223 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %219
  %224 = load bfloat, ptr addrspace(1) %223, align 2, !tbaa.struct !24, !alias.scope !184, !noalias !191, !iluvatar.noclobber !18
  %225 = fpext bfloat %224 to float
  %226 = fmul contract float %222, %225
  %227 = fmul contract float %174, %226
  %228 = fptrunc float %227 to half
  %229 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %219
  store half %228, ptr addrspace(1) %229, align 2, !tbaa !25, !alias.scope !175, !noalias !192
  %230 = add i64 %219, 1024
  %231 = icmp ult i64 %230, %14
  br i1 %231, label %218, label %232, !llvm.loop !194

232:                                              ; preds = %218, %214, %172
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %120, label %42

42:                                               ; preds = %120, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %133, %120 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !206
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !206
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !206
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !206
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !206
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !206
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !206
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !206
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !206
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !206
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !206
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !206
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !206
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !206
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !206
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !206
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !206
  %117 = fadd contract float %116, %115
  br label %118

118:                                              ; preds = %87, %85
  %119 = phi float [ %117, %87 ], [ %80, %85 ]
  br i1 %86, label %136, label %172

120:                                              ; preds = %16, %120
  %121 = phi float [ %133, %120 ], [ 0.000000e+00, %16 ]
  %122 = phi i64 [ %134, %120 ], [ %40, %16 ]
  %123 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %122
  %124 = load half, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !200, !noalias !207, !iluvatar.noclobber !18
  %125 = fpext half %124 to float
  %126 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %122
  %127 = load half, ptr addrspace(1) %126, align 2, !tbaa.struct !24, !alias.scope !202, !noalias !208, !iluvatar.noclobber !18
  %128 = fpext half %127 to float
  %129 = fadd contract float %125, %128
  %130 = fptrunc float %129 to half
  %131 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %122
  store half %130, ptr addrspace(1) %131, align 2, !tbaa !25, !alias.scope !198, !noalias !209
  %132 = fmul contract float %129, %129
  %133 = fadd contract float %121, %132
  %134 = add i64 %122, 1024
  %135 = icmp ult i64 %134, %14
  br i1 %135, label %120, label %42, !llvm.loop !210

136:                                              ; preds = %118
  %137 = uitofp i64 %14 to float
  %138 = fdiv contract float %119, %137
  %139 = fadd contract float %138, %15
  %140 = tail call float @llvm.fabs.f32(float %139)
  %141 = fcmp contract olt float %140, 0x3810000000000000
  %142 = fmul contract float %139, 0x4170000000000000
  %143 = select i1 %141, float %142, float %139
  %144 = bitcast float %143 to i32
  %145 = add i32 %144, -8388608
  %146 = icmp ult i32 %145, 2130706432
  br i1 %146, label %147, label %168

147:                                              ; preds = %136
  %148 = and i32 %144, 16777215
  %149 = or disjoint i32 %148, 1056964608
  %150 = bitcast i32 %149 to float
  %151 = sub nsw i32 %149, %144
  %152 = add nsw i32 %151, 201326592
  %153 = select i1 %141, i32 %152, i32 %151
  %154 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %150) #7
  %155 = fmul contract float %154, %154
  %156 = fneg contract float %155
  %157 = tail call float @llvm.fma.f32(float %154, float %154, float %156)
  %158 = fneg contract float %150
  %159 = tail call float @llvm.fma.f32(float %155, float %158, float 1.000000e+00)
  %160 = tail call float @llvm.fma.f32(float %157, float %158, float %159)
  %161 = tail call float @llvm.fma.f32(float %160, float 3.750000e-01, float 5.000000e-01)
  %162 = fmul contract float %154, %160
  %163 = tail call float @llvm.fma.f32(float %161, float %162, float %154)
  %164 = ashr i32 %153, 1
  %165 = bitcast float %163 to i32
  %166 = add i32 %164, %165
  %167 = bitcast i32 %166 to float
  br label %170

168:                                              ; preds = %136
  %169 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %143) #7
  br label %170

170:                                              ; preds = %168, %147
  %171 = phi float [ %167, %147 ], [ %169, %168 ]
  store float %171, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !206
  br label %172

172:                                              ; preds = %170, %118
  tail call void @llvm.bi.sl.barrier(), !noalias !206
  br i1 %41, label %173, label %188

173:                                              ; preds = %172
  %174 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !206
  br label %175

175:                                              ; preds = %175, %173
  %176 = phi i64 [ %40, %173 ], [ %186, %175 ]
  %177 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %176
  %178 = load half, ptr addrspace(1) %177, align 2, !tbaa.struct !24, !alias.scope !198, !noalias !209
  %179 = fpext half %178 to float
  %180 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %176
  %181 = load float, ptr addrspace(1) %180, align 4, !tbaa !19, !alias.scope !204, !noalias !211, !iluvatar.noclobber !18
  %182 = fmul contract float %181, %179
  %183 = fmul contract float %174, %182
  %184 = fptrunc float %183 to half
  %185 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %176
  store half %184, ptr addrspace(1) %185, align 2, !tbaa !25, !alias.scope !195, !noalias !212
  %186 = add i64 %176, 1024
  %187 = icmp ult i64 %186, %14
  br i1 %187, label %175, label %188, !llvm.loop !213

188:                                              ; preds = %175, %172
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %120, label %42

42:                                               ; preds = %120, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %133, %120 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !225
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !225
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !225
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !225
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !225
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !225
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !225
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !225
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !225
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !225
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !225
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !225
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !225
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !225
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !225
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !225
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !225
  %117 = fadd contract float %116, %115
  br label %118

118:                                              ; preds = %87, %85
  %119 = phi float [ %117, %87 ], [ %80, %85 ]
  br i1 %86, label %136, label %172

120:                                              ; preds = %16, %120
  %121 = phi float [ %133, %120 ], [ 0.000000e+00, %16 ]
  %122 = phi i64 [ %134, %120 ], [ %40, %16 ]
  %123 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %122
  %124 = load bfloat, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !219, !noalias !226, !iluvatar.noclobber !18
  %125 = fpext bfloat %124 to float
  %126 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %122
  %127 = load bfloat, ptr addrspace(1) %126, align 2, !tbaa.struct !24, !alias.scope !221, !noalias !227, !iluvatar.noclobber !18
  %128 = fpext bfloat %127 to float
  %129 = fadd contract float %125, %128
  %130 = fptrunc float %129 to bfloat
  %131 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %122
  store bfloat %130, ptr addrspace(1) %131, align 2, !tbaa !25, !alias.scope !217, !noalias !228
  %132 = fmul contract float %129, %129
  %133 = fadd contract float %121, %132
  %134 = add i64 %122, 1024
  %135 = icmp ult i64 %134, %14
  br i1 %135, label %120, label %42, !llvm.loop !229

136:                                              ; preds = %118
  %137 = uitofp i64 %14 to float
  %138 = fdiv contract float %119, %137
  %139 = fadd contract float %138, %15
  %140 = tail call float @llvm.fabs.f32(float %139)
  %141 = fcmp contract olt float %140, 0x3810000000000000
  %142 = fmul contract float %139, 0x4170000000000000
  %143 = select i1 %141, float %142, float %139
  %144 = bitcast float %143 to i32
  %145 = add i32 %144, -8388608
  %146 = icmp ult i32 %145, 2130706432
  br i1 %146, label %147, label %168

147:                                              ; preds = %136
  %148 = and i32 %144, 16777215
  %149 = or disjoint i32 %148, 1056964608
  %150 = bitcast i32 %149 to float
  %151 = sub nsw i32 %149, %144
  %152 = add nsw i32 %151, 201326592
  %153 = select i1 %141, i32 %152, i32 %151
  %154 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %150) #7
  %155 = fmul contract float %154, %154
  %156 = fneg contract float %155
  %157 = tail call float @llvm.fma.f32(float %154, float %154, float %156)
  %158 = fneg contract float %150
  %159 = tail call float @llvm.fma.f32(float %155, float %158, float 1.000000e+00)
  %160 = tail call float @llvm.fma.f32(float %157, float %158, float %159)
  %161 = tail call float @llvm.fma.f32(float %160, float 3.750000e-01, float 5.000000e-01)
  %162 = fmul contract float %154, %160
  %163 = tail call float @llvm.fma.f32(float %161, float %162, float %154)
  %164 = ashr i32 %153, 1
  %165 = bitcast float %163 to i32
  %166 = add i32 %164, %165
  %167 = bitcast i32 %166 to float
  br label %170

168:                                              ; preds = %136
  %169 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %143) #7
  br label %170

170:                                              ; preds = %168, %147
  %171 = phi float [ %167, %147 ], [ %169, %168 ]
  store float %171, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !225
  br label %172

172:                                              ; preds = %170, %118
  tail call void @llvm.bi.sl.barrier(), !noalias !225
  br i1 %41, label %173, label %232

173:                                              ; preds = %172
  %174 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !225
  %175 = xor i64 %40, -1
  %176 = add i64 %175, %14
  %177 = lshr i64 %176, 10
  %178 = add nuw nsw i64 %177, 1
  %179 = icmp ult i64 %176, 1024
  br i1 %179, label %216, label %180

180:                                              ; preds = %173
  %181 = and i64 %178, 36028797018963966
  %182 = shl i64 %181, 10
  %183 = add i64 %182, %40
  %184 = insertelement <2 x float> poison, float %174, i64 0
  %185 = shufflevector <2 x float> %184, <2 x float> poison, <2 x i32> zeroinitializer
  br label %186

186:                                              ; preds = %186, %180
  %187 = phi i64 [ 0, %180 ], [ %212, %186 ]
  %188 = shl i64 %187, 10
  %189 = add i64 %188, %40
  %190 = add i64 %189, 1024
  %191 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %189
  %192 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %190
  %193 = load bfloat, ptr addrspace(1) %191, align 2, !tbaa.struct !24, !alias.scope !217, !noalias !228
  %194 = load bfloat, ptr addrspace(1) %192, align 2, !tbaa.struct !24, !alias.scope !217, !noalias !228
  %195 = insertelement <2 x bfloat> poison, bfloat %193, i64 0
  %196 = insertelement <2 x bfloat> %195, bfloat %194, i64 1
  %197 = fpext <2 x bfloat> %196 to <2 x float>
  %198 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %189
  %199 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %190
  %200 = load bfloat, ptr addrspace(1) %198, align 2, !tbaa.struct !24, !alias.scope !223, !noalias !230, !iluvatar.noclobber !18
  %201 = load bfloat, ptr addrspace(1) %199, align 2, !tbaa.struct !24, !alias.scope !223, !noalias !230, !iluvatar.noclobber !18
  %202 = insertelement <2 x bfloat> poison, bfloat %200, i64 0
  %203 = insertelement <2 x bfloat> %202, bfloat %201, i64 1
  %204 = fpext <2 x bfloat> %203 to <2 x float>
  %205 = fmul contract <2 x float> %197, %204
  %206 = fmul contract <2 x float> %185, %205
  %207 = fptrunc <2 x float> %206 to <2 x bfloat>
  %208 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %189
  %209 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %190
  %210 = extractelement <2 x bfloat> %207, i64 0
  store bfloat %210, ptr addrspace(1) %208, align 2, !tbaa !25, !alias.scope !214, !noalias !231
  %211 = extractelement <2 x bfloat> %207, i64 1
  store bfloat %211, ptr addrspace(1) %209, align 2, !tbaa !25, !alias.scope !214, !noalias !231
  %212 = add nuw i64 %187, 2
  %213 = icmp eq i64 %212, %181
  br i1 %213, label %214, label %186, !llvm.loop !232

214:                                              ; preds = %186
  %215 = icmp eq i64 %178, %181
  br i1 %215, label %232, label %216

216:                                              ; preds = %173, %214
  %217 = phi i64 [ %40, %173 ], [ %183, %214 ]
  br label %218

218:                                              ; preds = %216, %218
  %219 = phi i64 [ %230, %218 ], [ %217, %216 ]
  %220 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %219
  %221 = load bfloat, ptr addrspace(1) %220, align 2, !tbaa.struct !24, !alias.scope !217, !noalias !228
  %222 = fpext bfloat %221 to float
  %223 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %219
  %224 = load bfloat, ptr addrspace(1) %223, align 2, !tbaa.struct !24, !alias.scope !223, !noalias !230, !iluvatar.noclobber !18
  %225 = fpext bfloat %224 to float
  %226 = fmul contract float %222, %225
  %227 = fmul contract float %174, %226
  %228 = fptrunc float %227 to bfloat
  %229 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %219
  store bfloat %228, ptr addrspace(1) %229, align 2, !tbaa !25, !alias.scope !214, !noalias !231
  %230 = add i64 %219, 1024
  %231 = icmp ult i64 %230, %14
  br i1 %231, label %218, label %232, !llvm.loop !233

232:                                              ; preds = %218, %214, %172
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %120, label %42

42:                                               ; preds = %120, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %133, %120 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !245
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !245
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !245
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !245
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !245
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !245
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !245
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !245
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !245
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !245
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !245
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !245
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !245
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !245
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !245
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !245
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !245
  %117 = fadd contract float %116, %115
  br label %118

118:                                              ; preds = %87, %85
  %119 = phi float [ %117, %87 ], [ %80, %85 ]
  br i1 %86, label %136, label %172

120:                                              ; preds = %16, %120
  %121 = phi float [ %133, %120 ], [ 0.000000e+00, %16 ]
  %122 = phi i64 [ %134, %120 ], [ %40, %16 ]
  %123 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %122
  %124 = load bfloat, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !239, !noalias !246, !iluvatar.noclobber !18
  %125 = fpext bfloat %124 to float
  %126 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %122
  %127 = load bfloat, ptr addrspace(1) %126, align 2, !tbaa.struct !24, !alias.scope !241, !noalias !247, !iluvatar.noclobber !18
  %128 = fpext bfloat %127 to float
  %129 = fadd contract float %125, %128
  %130 = fptrunc float %129 to bfloat
  %131 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %122
  store bfloat %130, ptr addrspace(1) %131, align 2, !tbaa !25, !alias.scope !237, !noalias !248
  %132 = fmul contract float %129, %129
  %133 = fadd contract float %121, %132
  %134 = add i64 %122, 1024
  %135 = icmp ult i64 %134, %14
  br i1 %135, label %120, label %42, !llvm.loop !249

136:                                              ; preds = %118
  %137 = uitofp i64 %14 to float
  %138 = fdiv contract float %119, %137
  %139 = fadd contract float %138, %15
  %140 = tail call float @llvm.fabs.f32(float %139)
  %141 = fcmp contract olt float %140, 0x3810000000000000
  %142 = fmul contract float %139, 0x4170000000000000
  %143 = select i1 %141, float %142, float %139
  %144 = bitcast float %143 to i32
  %145 = add i32 %144, -8388608
  %146 = icmp ult i32 %145, 2130706432
  br i1 %146, label %147, label %168

147:                                              ; preds = %136
  %148 = and i32 %144, 16777215
  %149 = or disjoint i32 %148, 1056964608
  %150 = bitcast i32 %149 to float
  %151 = sub nsw i32 %149, %144
  %152 = add nsw i32 %151, 201326592
  %153 = select i1 %141, i32 %152, i32 %151
  %154 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %150) #7
  %155 = fmul contract float %154, %154
  %156 = fneg contract float %155
  %157 = tail call float @llvm.fma.f32(float %154, float %154, float %156)
  %158 = fneg contract float %150
  %159 = tail call float @llvm.fma.f32(float %155, float %158, float 1.000000e+00)
  %160 = tail call float @llvm.fma.f32(float %157, float %158, float %159)
  %161 = tail call float @llvm.fma.f32(float %160, float 3.750000e-01, float 5.000000e-01)
  %162 = fmul contract float %154, %160
  %163 = tail call float @llvm.fma.f32(float %161, float %162, float %154)
  %164 = ashr i32 %153, 1
  %165 = bitcast float %163 to i32
  %166 = add i32 %164, %165
  %167 = bitcast i32 %166 to float
  br label %170

168:                                              ; preds = %136
  %169 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %143) #7
  br label %170

170:                                              ; preds = %168, %147
  %171 = phi float [ %167, %147 ], [ %169, %168 ]
  store float %171, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !245
  br label %172

172:                                              ; preds = %170, %118
  tail call void @llvm.bi.sl.barrier(), !noalias !245
  br i1 %41, label %173, label %232

173:                                              ; preds = %172
  %174 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !245
  %175 = xor i64 %40, -1
  %176 = add i64 %175, %14
  %177 = lshr i64 %176, 10
  %178 = add nuw nsw i64 %177, 1
  %179 = icmp ult i64 %176, 1024
  br i1 %179, label %216, label %180

180:                                              ; preds = %173
  %181 = and i64 %178, 36028797018963966
  %182 = shl i64 %181, 10
  %183 = add i64 %182, %40
  %184 = insertelement <2 x float> poison, float %174, i64 0
  %185 = shufflevector <2 x float> %184, <2 x float> poison, <2 x i32> zeroinitializer
  br label %186

186:                                              ; preds = %186, %180
  %187 = phi i64 [ 0, %180 ], [ %212, %186 ]
  %188 = shl i64 %187, 10
  %189 = add i64 %188, %40
  %190 = add i64 %189, 1024
  %191 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %189
  %192 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %190
  %193 = load bfloat, ptr addrspace(1) %191, align 2, !tbaa.struct !24, !alias.scope !237, !noalias !248
  %194 = load bfloat, ptr addrspace(1) %192, align 2, !tbaa.struct !24, !alias.scope !237, !noalias !248
  %195 = insertelement <2 x bfloat> poison, bfloat %193, i64 0
  %196 = insertelement <2 x bfloat> %195, bfloat %194, i64 1
  %197 = fpext <2 x bfloat> %196 to <2 x float>
  %198 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %189
  %199 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %190
  %200 = load half, ptr addrspace(1) %198, align 2, !tbaa.struct !24, !alias.scope !243, !noalias !250, !iluvatar.noclobber !18
  %201 = load half, ptr addrspace(1) %199, align 2, !tbaa.struct !24, !alias.scope !243, !noalias !250, !iluvatar.noclobber !18
  %202 = insertelement <2 x half> poison, half %200, i64 0
  %203 = insertelement <2 x half> %202, half %201, i64 1
  %204 = fpext <2 x half> %203 to <2 x float>
  %205 = fmul contract <2 x float> %197, %204
  %206 = fmul contract <2 x float> %185, %205
  %207 = fptrunc <2 x float> %206 to <2 x bfloat>
  %208 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %189
  %209 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %190
  %210 = extractelement <2 x bfloat> %207, i64 0
  store bfloat %210, ptr addrspace(1) %208, align 2, !tbaa !25, !alias.scope !234, !noalias !251
  %211 = extractelement <2 x bfloat> %207, i64 1
  store bfloat %211, ptr addrspace(1) %209, align 2, !tbaa !25, !alias.scope !234, !noalias !251
  %212 = add nuw i64 %187, 2
  %213 = icmp eq i64 %212, %181
  br i1 %213, label %214, label %186, !llvm.loop !252

214:                                              ; preds = %186
  %215 = icmp eq i64 %178, %181
  br i1 %215, label %232, label %216

216:                                              ; preds = %173, %214
  %217 = phi i64 [ %40, %173 ], [ %183, %214 ]
  br label %218

218:                                              ; preds = %216, %218
  %219 = phi i64 [ %230, %218 ], [ %217, %216 ]
  %220 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %219
  %221 = load bfloat, ptr addrspace(1) %220, align 2, !tbaa.struct !24, !alias.scope !237, !noalias !248
  %222 = fpext bfloat %221 to float
  %223 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %219
  %224 = load half, ptr addrspace(1) %223, align 2, !tbaa.struct !24, !alias.scope !243, !noalias !250, !iluvatar.noclobber !18
  %225 = fpext half %224 to float
  %226 = fmul contract float %222, %225
  %227 = fmul contract float %174, %226
  %228 = fptrunc float %227 to bfloat
  %229 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %219
  store bfloat %228, ptr addrspace(1) %229, align 2, !tbaa !25, !alias.scope !234, !noalias !251
  %230 = add i64 %219, 1024
  %231 = icmp ult i64 %230, %14
  br i1 %231, label %218, label %232, !llvm.loop !253

232:                                              ; preds = %218, %214, %172
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %120, label %42

42:                                               ; preds = %120, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %133, %120 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !265
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !265
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !265
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !265
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !265
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !265
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !265
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !265
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !265
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !265
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !265
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !265
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !265
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !265
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !265
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !265
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !265
  %117 = fadd contract float %116, %115
  br label %118

118:                                              ; preds = %87, %85
  %119 = phi float [ %117, %87 ], [ %80, %85 ]
  br i1 %86, label %136, label %172

120:                                              ; preds = %16, %120
  %121 = phi float [ %133, %120 ], [ 0.000000e+00, %16 ]
  %122 = phi i64 [ %134, %120 ], [ %40, %16 ]
  %123 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %122
  %124 = load bfloat, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !259, !noalias !266, !iluvatar.noclobber !18
  %125 = fpext bfloat %124 to float
  %126 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %122
  %127 = load bfloat, ptr addrspace(1) %126, align 2, !tbaa.struct !24, !alias.scope !261, !noalias !267, !iluvatar.noclobber !18
  %128 = fpext bfloat %127 to float
  %129 = fadd contract float %125, %128
  %130 = fptrunc float %129 to bfloat
  %131 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %122
  store bfloat %130, ptr addrspace(1) %131, align 2, !tbaa !25, !alias.scope !257, !noalias !268
  %132 = fmul contract float %129, %129
  %133 = fadd contract float %121, %132
  %134 = add i64 %122, 1024
  %135 = icmp ult i64 %134, %14
  br i1 %135, label %120, label %42, !llvm.loop !269

136:                                              ; preds = %118
  %137 = uitofp i64 %14 to float
  %138 = fdiv contract float %119, %137
  %139 = fadd contract float %138, %15
  %140 = tail call float @llvm.fabs.f32(float %139)
  %141 = fcmp contract olt float %140, 0x3810000000000000
  %142 = fmul contract float %139, 0x4170000000000000
  %143 = select i1 %141, float %142, float %139
  %144 = bitcast float %143 to i32
  %145 = add i32 %144, -8388608
  %146 = icmp ult i32 %145, 2130706432
  br i1 %146, label %147, label %168

147:                                              ; preds = %136
  %148 = and i32 %144, 16777215
  %149 = or disjoint i32 %148, 1056964608
  %150 = bitcast i32 %149 to float
  %151 = sub nsw i32 %149, %144
  %152 = add nsw i32 %151, 201326592
  %153 = select i1 %141, i32 %152, i32 %151
  %154 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %150) #7
  %155 = fmul contract float %154, %154
  %156 = fneg contract float %155
  %157 = tail call float @llvm.fma.f32(float %154, float %154, float %156)
  %158 = fneg contract float %150
  %159 = tail call float @llvm.fma.f32(float %155, float %158, float 1.000000e+00)
  %160 = tail call float @llvm.fma.f32(float %157, float %158, float %159)
  %161 = tail call float @llvm.fma.f32(float %160, float 3.750000e-01, float 5.000000e-01)
  %162 = fmul contract float %154, %160
  %163 = tail call float @llvm.fma.f32(float %161, float %162, float %154)
  %164 = ashr i32 %153, 1
  %165 = bitcast float %163 to i32
  %166 = add i32 %164, %165
  %167 = bitcast i32 %166 to float
  br label %170

168:                                              ; preds = %136
  %169 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %143) #7
  br label %170

170:                                              ; preds = %168, %147
  %171 = phi float [ %167, %147 ], [ %169, %168 ]
  store float %171, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !265
  br label %172

172:                                              ; preds = %170, %118
  tail call void @llvm.bi.sl.barrier(), !noalias !265
  br i1 %41, label %173, label %188

173:                                              ; preds = %172
  %174 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !265
  br label %175

175:                                              ; preds = %175, %173
  %176 = phi i64 [ %40, %173 ], [ %186, %175 ]
  %177 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %176
  %178 = load bfloat, ptr addrspace(1) %177, align 2, !tbaa.struct !24, !alias.scope !257, !noalias !268
  %179 = fpext bfloat %178 to float
  %180 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %176
  %181 = load float, ptr addrspace(1) %180, align 4, !tbaa !19, !alias.scope !263, !noalias !270, !iluvatar.noclobber !18
  %182 = fmul contract float %181, %179
  %183 = fmul contract float %174, %182
  %184 = fptrunc float %183 to bfloat
  %185 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %176
  store bfloat %184, ptr addrspace(1) %185, align 2, !tbaa !25, !alias.scope !254, !noalias !271
  %186 = add i64 %176, 1024
  %187 = icmp ult i64 %186, %14
  br i1 %187, label %175, label %188, !llvm.loop !272

188:                                              ; preds = %175, %172
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds float, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds float, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds float, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds float, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds float, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %120, label %42

42:                                               ; preds = %120, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %130, %120 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !284
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !284
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !284
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !284
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !284
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !284
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !284
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !284
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !284
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !284
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !284
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !284
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !284
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !284
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !284
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !284
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !284
  %117 = fadd contract float %116, %115
  br label %118

118:                                              ; preds = %87, %85
  %119 = phi float [ %117, %87 ], [ %80, %85 ]
  br i1 %86, label %133, label %169

120:                                              ; preds = %16, %120
  %121 = phi float [ %130, %120 ], [ 0.000000e+00, %16 ]
  %122 = phi i64 [ %131, %120 ], [ %40, %16 ]
  %123 = getelementptr inbounds float, ptr addrspace(1) %30, i64 %122
  %124 = load float, ptr addrspace(1) %123, align 4, !tbaa !19, !alias.scope !278, !noalias !285, !iluvatar.noclobber !18
  %125 = getelementptr inbounds float, ptr addrspace(1) %34, i64 %122
  %126 = load float, ptr addrspace(1) %125, align 4, !tbaa !19, !alias.scope !280, !noalias !286, !iluvatar.noclobber !18
  %127 = fadd contract float %124, %126
  %128 = getelementptr inbounds float, ptr addrspace(1) %38, i64 %122
  store float %127, ptr addrspace(1) %128, align 4, !tbaa !19, !alias.scope !276, !noalias !287
  %129 = fmul contract float %127, %127
  %130 = fadd contract float %121, %129
  %131 = add i64 %122, 1024
  %132 = icmp ult i64 %131, %14
  br i1 %132, label %120, label %42, !llvm.loop !288

133:                                              ; preds = %118
  %134 = uitofp i64 %14 to float
  %135 = fdiv contract float %119, %134
  %136 = fadd contract float %135, %15
  %137 = tail call float @llvm.fabs.f32(float %136)
  %138 = fcmp contract olt float %137, 0x3810000000000000
  %139 = fmul contract float %136, 0x4170000000000000
  %140 = select i1 %138, float %139, float %136
  %141 = bitcast float %140 to i32
  %142 = add i32 %141, -8388608
  %143 = icmp ult i32 %142, 2130706432
  br i1 %143, label %144, label %165

144:                                              ; preds = %133
  %145 = and i32 %141, 16777215
  %146 = or disjoint i32 %145, 1056964608
  %147 = bitcast i32 %146 to float
  %148 = sub nsw i32 %146, %141
  %149 = add nsw i32 %148, 201326592
  %150 = select i1 %138, i32 %149, i32 %148
  %151 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %147) #7
  %152 = fmul contract float %151, %151
  %153 = fneg contract float %152
  %154 = tail call float @llvm.fma.f32(float %151, float %151, float %153)
  %155 = fneg contract float %147
  %156 = tail call float @llvm.fma.f32(float %152, float %155, float 1.000000e+00)
  %157 = tail call float @llvm.fma.f32(float %154, float %155, float %156)
  %158 = tail call float @llvm.fma.f32(float %157, float 3.750000e-01, float 5.000000e-01)
  %159 = fmul contract float %151, %157
  %160 = tail call float @llvm.fma.f32(float %158, float %159, float %151)
  %161 = ashr i32 %150, 1
  %162 = bitcast float %160 to i32
  %163 = add i32 %161, %162
  %164 = bitcast i32 %163 to float
  br label %167

165:                                              ; preds = %133
  %166 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %140) #7
  br label %167

167:                                              ; preds = %165, %144
  %168 = phi float [ %164, %144 ], [ %166, %165 ]
  store float %168, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !284
  br label %169

169:                                              ; preds = %167, %118
  tail call void @llvm.bi.sl.barrier(), !noalias !284
  br i1 %41, label %170, label %183

170:                                              ; preds = %169
  %171 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !284
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i64 [ %40, %170 ], [ %181, %172 ]
  %174 = getelementptr inbounds float, ptr addrspace(1) %38, i64 %173
  %175 = load float, ptr addrspace(1) %174, align 4, !tbaa !19, !alias.scope !276, !noalias !287
  %176 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %173
  %177 = load float, ptr addrspace(1) %176, align 4, !tbaa !19, !alias.scope !282, !noalias !289, !iluvatar.noclobber !18
  %178 = fmul contract float %175, %177
  %179 = fmul contract float %171, %178
  %180 = getelementptr inbounds float, ptr addrspace(1) %26, i64 %173
  store float %179, ptr addrspace(1) %180, align 4, !tbaa !19, !alias.scope !273, !noalias !290
  %181 = add i64 %173, 1024
  %182 = icmp ult i64 %181, %14
  br i1 %182, label %172, label %183, !llvm.loop !291

183:                                              ; preds = %172, %169
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %152, label %42

42:                                               ; preds = %152, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %165, %152 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !303
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !303
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %150

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !303
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !303
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !303
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !303
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !303
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !303
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !303
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !303
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !303
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !303
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !303
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !303
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !303
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !303
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !303
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !303
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !303
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !303
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !303
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !303
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !303
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !303
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !303
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !303
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !303
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !303
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !303
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !303
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !303
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !303
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !303
  %149 = fadd contract float %148, %147
  br label %150

150:                                              ; preds = %87, %85
  %151 = phi float [ %149, %87 ], [ %80, %85 ]
  br i1 %86, label %168, label %204

152:                                              ; preds = %16, %152
  %153 = phi float [ %165, %152 ], [ 0.000000e+00, %16 ]
  %154 = phi i64 [ %166, %152 ], [ %40, %16 ]
  %155 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %154
  %156 = load half, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !297, !noalias !304, !iluvatar.noclobber !18
  %157 = fpext half %156 to float
  %158 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %154
  %159 = load half, ptr addrspace(1) %158, align 2, !tbaa.struct !24, !alias.scope !299, !noalias !305, !iluvatar.noclobber !18
  %160 = fpext half %159 to float
  %161 = fadd contract float %157, %160
  %162 = fptrunc float %161 to half
  %163 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %154
  store half %162, ptr addrspace(1) %163, align 2, !tbaa !25, !alias.scope !295, !noalias !306
  %164 = fmul contract float %161, %161
  %165 = fadd contract float %153, %164
  %166 = add i64 %154, 2048
  %167 = icmp ult i64 %166, %14
  br i1 %167, label %152, label %42, !llvm.loop !307

168:                                              ; preds = %150
  %169 = uitofp i64 %14 to float
  %170 = fdiv contract float %151, %169
  %171 = fadd contract float %170, %15
  %172 = tail call float @llvm.fabs.f32(float %171)
  %173 = fcmp contract olt float %172, 0x3810000000000000
  %174 = fmul contract float %171, 0x4170000000000000
  %175 = select i1 %173, float %174, float %171
  %176 = bitcast float %175 to i32
  %177 = add i32 %176, -8388608
  %178 = icmp ult i32 %177, 2130706432
  br i1 %178, label %179, label %200

179:                                              ; preds = %168
  %180 = and i32 %176, 16777215
  %181 = or disjoint i32 %180, 1056964608
  %182 = bitcast i32 %181 to float
  %183 = sub nsw i32 %181, %176
  %184 = add nsw i32 %183, 201326592
  %185 = select i1 %173, i32 %184, i32 %183
  %186 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %182) #7
  %187 = fmul contract float %186, %186
  %188 = fneg contract float %187
  %189 = tail call float @llvm.fma.f32(float %186, float %186, float %188)
  %190 = fneg contract float %182
  %191 = tail call float @llvm.fma.f32(float %187, float %190, float 1.000000e+00)
  %192 = tail call float @llvm.fma.f32(float %189, float %190, float %191)
  %193 = tail call float @llvm.fma.f32(float %192, float 3.750000e-01, float 5.000000e-01)
  %194 = fmul contract float %186, %192
  %195 = tail call float @llvm.fma.f32(float %193, float %194, float %186)
  %196 = ashr i32 %185, 1
  %197 = bitcast float %195 to i32
  %198 = add i32 %196, %197
  %199 = bitcast i32 %198 to float
  br label %202

200:                                              ; preds = %168
  %201 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %175) #7
  br label %202

202:                                              ; preds = %200, %179
  %203 = phi float [ %199, %179 ], [ %201, %200 ]
  store float %203, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !303
  br label %204

204:                                              ; preds = %202, %150
  tail call void @llvm.bi.sl.barrier(), !noalias !303
  br i1 %41, label %205, label %264

205:                                              ; preds = %204
  %206 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !303
  %207 = xor i64 %40, -1
  %208 = add i64 %207, %14
  %209 = lshr i64 %208, 11
  %210 = add nuw nsw i64 %209, 1
  %211 = icmp ult i64 %208, 2048
  br i1 %211, label %248, label %212

212:                                              ; preds = %205
  %213 = and i64 %210, 18014398509481982
  %214 = shl i64 %213, 11
  %215 = or disjoint i64 %214, %40
  %216 = insertelement <2 x float> poison, float %206, i64 0
  %217 = shufflevector <2 x float> %216, <2 x float> poison, <2 x i32> zeroinitializer
  br label %218

218:                                              ; preds = %218, %212
  %219 = phi i64 [ 0, %212 ], [ %244, %218 ]
  %220 = shl i64 %219, 11
  %221 = or disjoint i64 %220, %40
  %222 = add i64 %221, 2048
  %223 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %221
  %224 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %222
  %225 = load half, ptr addrspace(1) %223, align 2, !tbaa.struct !24, !alias.scope !295, !noalias !306
  %226 = load half, ptr addrspace(1) %224, align 2, !tbaa.struct !24, !alias.scope !295, !noalias !306
  %227 = insertelement <2 x half> poison, half %225, i64 0
  %228 = insertelement <2 x half> %227, half %226, i64 1
  %229 = fpext <2 x half> %228 to <2 x float>
  %230 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %221
  %231 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %222
  %232 = load half, ptr addrspace(1) %230, align 2, !tbaa.struct !24, !alias.scope !301, !noalias !308, !iluvatar.noclobber !18
  %233 = load half, ptr addrspace(1) %231, align 2, !tbaa.struct !24, !alias.scope !301, !noalias !308, !iluvatar.noclobber !18
  %234 = insertelement <2 x half> poison, half %232, i64 0
  %235 = insertelement <2 x half> %234, half %233, i64 1
  %236 = fpext <2 x half> %235 to <2 x float>
  %237 = fmul contract <2 x float> %229, %236
  %238 = fmul contract <2 x float> %217, %237
  %239 = fptrunc <2 x float> %238 to <2 x half>
  %240 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %221
  %241 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %222
  %242 = extractelement <2 x half> %239, i64 0
  store half %242, ptr addrspace(1) %240, align 2, !tbaa !25, !alias.scope !292, !noalias !309
  %243 = extractelement <2 x half> %239, i64 1
  store half %243, ptr addrspace(1) %241, align 2, !tbaa !25, !alias.scope !292, !noalias !309
  %244 = add nuw i64 %219, 2
  %245 = icmp eq i64 %244, %213
  br i1 %245, label %246, label %218, !llvm.loop !310

246:                                              ; preds = %218
  %247 = icmp eq i64 %210, %213
  br i1 %247, label %264, label %248

248:                                              ; preds = %205, %246
  %249 = phi i64 [ %40, %205 ], [ %215, %246 ]
  br label %250

250:                                              ; preds = %248, %250
  %251 = phi i64 [ %262, %250 ], [ %249, %248 ]
  %252 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %251
  %253 = load half, ptr addrspace(1) %252, align 2, !tbaa.struct !24, !alias.scope !295, !noalias !306
  %254 = fpext half %253 to float
  %255 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %251
  %256 = load half, ptr addrspace(1) %255, align 2, !tbaa.struct !24, !alias.scope !301, !noalias !308, !iluvatar.noclobber !18
  %257 = fpext half %256 to float
  %258 = fmul contract float %254, %257
  %259 = fmul contract float %206, %258
  %260 = fptrunc float %259 to half
  %261 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %251
  store half %260, ptr addrspace(1) %261, align 2, !tbaa !25, !alias.scope !292, !noalias !309
  %262 = add i64 %251, 2048
  %263 = icmp ult i64 %262, %14
  br i1 %263, label %250, label %264, !llvm.loop !311

264:                                              ; preds = %250, %246, %204
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %152, label %42

42:                                               ; preds = %152, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %165, %152 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !323
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !323
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %150

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !323
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !323
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !323
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !323
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !323
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !323
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !323
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !323
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !323
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !323
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !323
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !323
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !323
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !323
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !323
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !323
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !323
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !323
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !323
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !323
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !323
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !323
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !323
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !323
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !323
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !323
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !323
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !323
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !323
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !323
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !323
  %149 = fadd contract float %148, %147
  br label %150

150:                                              ; preds = %87, %85
  %151 = phi float [ %149, %87 ], [ %80, %85 ]
  br i1 %86, label %168, label %204

152:                                              ; preds = %16, %152
  %153 = phi float [ %165, %152 ], [ 0.000000e+00, %16 ]
  %154 = phi i64 [ %166, %152 ], [ %40, %16 ]
  %155 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %154
  %156 = load half, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !317, !noalias !324, !iluvatar.noclobber !18
  %157 = fpext half %156 to float
  %158 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %154
  %159 = load half, ptr addrspace(1) %158, align 2, !tbaa.struct !24, !alias.scope !319, !noalias !325, !iluvatar.noclobber !18
  %160 = fpext half %159 to float
  %161 = fadd contract float %157, %160
  %162 = fptrunc float %161 to half
  %163 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %154
  store half %162, ptr addrspace(1) %163, align 2, !tbaa !25, !alias.scope !315, !noalias !326
  %164 = fmul contract float %161, %161
  %165 = fadd contract float %153, %164
  %166 = add i64 %154, 2048
  %167 = icmp ult i64 %166, %14
  br i1 %167, label %152, label %42, !llvm.loop !327

168:                                              ; preds = %150
  %169 = uitofp i64 %14 to float
  %170 = fdiv contract float %151, %169
  %171 = fadd contract float %170, %15
  %172 = tail call float @llvm.fabs.f32(float %171)
  %173 = fcmp contract olt float %172, 0x3810000000000000
  %174 = fmul contract float %171, 0x4170000000000000
  %175 = select i1 %173, float %174, float %171
  %176 = bitcast float %175 to i32
  %177 = add i32 %176, -8388608
  %178 = icmp ult i32 %177, 2130706432
  br i1 %178, label %179, label %200

179:                                              ; preds = %168
  %180 = and i32 %176, 16777215
  %181 = or disjoint i32 %180, 1056964608
  %182 = bitcast i32 %181 to float
  %183 = sub nsw i32 %181, %176
  %184 = add nsw i32 %183, 201326592
  %185 = select i1 %173, i32 %184, i32 %183
  %186 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %182) #7
  %187 = fmul contract float %186, %186
  %188 = fneg contract float %187
  %189 = tail call float @llvm.fma.f32(float %186, float %186, float %188)
  %190 = fneg contract float %182
  %191 = tail call float @llvm.fma.f32(float %187, float %190, float 1.000000e+00)
  %192 = tail call float @llvm.fma.f32(float %189, float %190, float %191)
  %193 = tail call float @llvm.fma.f32(float %192, float 3.750000e-01, float 5.000000e-01)
  %194 = fmul contract float %186, %192
  %195 = tail call float @llvm.fma.f32(float %193, float %194, float %186)
  %196 = ashr i32 %185, 1
  %197 = bitcast float %195 to i32
  %198 = add i32 %196, %197
  %199 = bitcast i32 %198 to float
  br label %202

200:                                              ; preds = %168
  %201 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %175) #7
  br label %202

202:                                              ; preds = %200, %179
  %203 = phi float [ %199, %179 ], [ %201, %200 ]
  store float %203, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !323
  br label %204

204:                                              ; preds = %202, %150
  tail call void @llvm.bi.sl.barrier(), !noalias !323
  br i1 %41, label %205, label %264

205:                                              ; preds = %204
  %206 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !323
  %207 = xor i64 %40, -1
  %208 = add i64 %207, %14
  %209 = lshr i64 %208, 11
  %210 = add nuw nsw i64 %209, 1
  %211 = icmp ult i64 %208, 2048
  br i1 %211, label %248, label %212

212:                                              ; preds = %205
  %213 = and i64 %210, 18014398509481982
  %214 = shl i64 %213, 11
  %215 = or disjoint i64 %214, %40
  %216 = insertelement <2 x float> poison, float %206, i64 0
  %217 = shufflevector <2 x float> %216, <2 x float> poison, <2 x i32> zeroinitializer
  br label %218

218:                                              ; preds = %218, %212
  %219 = phi i64 [ 0, %212 ], [ %244, %218 ]
  %220 = shl i64 %219, 11
  %221 = or disjoint i64 %220, %40
  %222 = add i64 %221, 2048
  %223 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %221
  %224 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %222
  %225 = load half, ptr addrspace(1) %223, align 2, !tbaa.struct !24, !alias.scope !315, !noalias !326
  %226 = load half, ptr addrspace(1) %224, align 2, !tbaa.struct !24, !alias.scope !315, !noalias !326
  %227 = insertelement <2 x half> poison, half %225, i64 0
  %228 = insertelement <2 x half> %227, half %226, i64 1
  %229 = fpext <2 x half> %228 to <2 x float>
  %230 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %221
  %231 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %222
  %232 = load bfloat, ptr addrspace(1) %230, align 2, !tbaa.struct !24, !alias.scope !321, !noalias !328, !iluvatar.noclobber !18
  %233 = load bfloat, ptr addrspace(1) %231, align 2, !tbaa.struct !24, !alias.scope !321, !noalias !328, !iluvatar.noclobber !18
  %234 = insertelement <2 x bfloat> poison, bfloat %232, i64 0
  %235 = insertelement <2 x bfloat> %234, bfloat %233, i64 1
  %236 = fpext <2 x bfloat> %235 to <2 x float>
  %237 = fmul contract <2 x float> %229, %236
  %238 = fmul contract <2 x float> %217, %237
  %239 = fptrunc <2 x float> %238 to <2 x half>
  %240 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %221
  %241 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %222
  %242 = extractelement <2 x half> %239, i64 0
  store half %242, ptr addrspace(1) %240, align 2, !tbaa !25, !alias.scope !312, !noalias !329
  %243 = extractelement <2 x half> %239, i64 1
  store half %243, ptr addrspace(1) %241, align 2, !tbaa !25, !alias.scope !312, !noalias !329
  %244 = add nuw i64 %219, 2
  %245 = icmp eq i64 %244, %213
  br i1 %245, label %246, label %218, !llvm.loop !330

246:                                              ; preds = %218
  %247 = icmp eq i64 %210, %213
  br i1 %247, label %264, label %248

248:                                              ; preds = %205, %246
  %249 = phi i64 [ %40, %205 ], [ %215, %246 ]
  br label %250

250:                                              ; preds = %248, %250
  %251 = phi i64 [ %262, %250 ], [ %249, %248 ]
  %252 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %251
  %253 = load half, ptr addrspace(1) %252, align 2, !tbaa.struct !24, !alias.scope !315, !noalias !326
  %254 = fpext half %253 to float
  %255 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %251
  %256 = load bfloat, ptr addrspace(1) %255, align 2, !tbaa.struct !24, !alias.scope !321, !noalias !328, !iluvatar.noclobber !18
  %257 = fpext bfloat %256 to float
  %258 = fmul contract float %254, %257
  %259 = fmul contract float %206, %258
  %260 = fptrunc float %259 to half
  %261 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %251
  store half %260, ptr addrspace(1) %261, align 2, !tbaa !25, !alias.scope !312, !noalias !329
  %262 = add i64 %251, 2048
  %263 = icmp ult i64 %262, %14
  br i1 %263, label %250, label %264, !llvm.loop !331

264:                                              ; preds = %250, %246, %204
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %152, label %42

42:                                               ; preds = %152, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %165, %152 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !343
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !343
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %150

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !343
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !343
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !343
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !343
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !343
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !343
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !343
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !343
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !343
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !343
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !343
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !343
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !343
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !343
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !343
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !343
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !343
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !343
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !343
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !343
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !343
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !343
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !343
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !343
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !343
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !343
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !343
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !343
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !343
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !343
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !343
  %149 = fadd contract float %148, %147
  br label %150

150:                                              ; preds = %87, %85
  %151 = phi float [ %149, %87 ], [ %80, %85 ]
  br i1 %86, label %168, label %204

152:                                              ; preds = %16, %152
  %153 = phi float [ %165, %152 ], [ 0.000000e+00, %16 ]
  %154 = phi i64 [ %166, %152 ], [ %40, %16 ]
  %155 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %154
  %156 = load half, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !337, !noalias !344, !iluvatar.noclobber !18
  %157 = fpext half %156 to float
  %158 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %154
  %159 = load half, ptr addrspace(1) %158, align 2, !tbaa.struct !24, !alias.scope !339, !noalias !345, !iluvatar.noclobber !18
  %160 = fpext half %159 to float
  %161 = fadd contract float %157, %160
  %162 = fptrunc float %161 to half
  %163 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %154
  store half %162, ptr addrspace(1) %163, align 2, !tbaa !25, !alias.scope !335, !noalias !346
  %164 = fmul contract float %161, %161
  %165 = fadd contract float %153, %164
  %166 = add i64 %154, 2048
  %167 = icmp ult i64 %166, %14
  br i1 %167, label %152, label %42, !llvm.loop !347

168:                                              ; preds = %150
  %169 = uitofp i64 %14 to float
  %170 = fdiv contract float %151, %169
  %171 = fadd contract float %170, %15
  %172 = tail call float @llvm.fabs.f32(float %171)
  %173 = fcmp contract olt float %172, 0x3810000000000000
  %174 = fmul contract float %171, 0x4170000000000000
  %175 = select i1 %173, float %174, float %171
  %176 = bitcast float %175 to i32
  %177 = add i32 %176, -8388608
  %178 = icmp ult i32 %177, 2130706432
  br i1 %178, label %179, label %200

179:                                              ; preds = %168
  %180 = and i32 %176, 16777215
  %181 = or disjoint i32 %180, 1056964608
  %182 = bitcast i32 %181 to float
  %183 = sub nsw i32 %181, %176
  %184 = add nsw i32 %183, 201326592
  %185 = select i1 %173, i32 %184, i32 %183
  %186 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %182) #7
  %187 = fmul contract float %186, %186
  %188 = fneg contract float %187
  %189 = tail call float @llvm.fma.f32(float %186, float %186, float %188)
  %190 = fneg contract float %182
  %191 = tail call float @llvm.fma.f32(float %187, float %190, float 1.000000e+00)
  %192 = tail call float @llvm.fma.f32(float %189, float %190, float %191)
  %193 = tail call float @llvm.fma.f32(float %192, float 3.750000e-01, float 5.000000e-01)
  %194 = fmul contract float %186, %192
  %195 = tail call float @llvm.fma.f32(float %193, float %194, float %186)
  %196 = ashr i32 %185, 1
  %197 = bitcast float %195 to i32
  %198 = add i32 %196, %197
  %199 = bitcast i32 %198 to float
  br label %202

200:                                              ; preds = %168
  %201 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %175) #7
  br label %202

202:                                              ; preds = %200, %179
  %203 = phi float [ %199, %179 ], [ %201, %200 ]
  store float %203, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !343
  br label %204

204:                                              ; preds = %202, %150
  tail call void @llvm.bi.sl.barrier(), !noalias !343
  br i1 %41, label %205, label %220

205:                                              ; preds = %204
  %206 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !343
  br label %207

207:                                              ; preds = %207, %205
  %208 = phi i64 [ %40, %205 ], [ %218, %207 ]
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %208
  %210 = load half, ptr addrspace(1) %209, align 2, !tbaa.struct !24, !alias.scope !335, !noalias !346
  %211 = fpext half %210 to float
  %212 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %208
  %213 = load float, ptr addrspace(1) %212, align 4, !tbaa !19, !alias.scope !341, !noalias !348, !iluvatar.noclobber !18
  %214 = fmul contract float %213, %211
  %215 = fmul contract float %206, %214
  %216 = fptrunc float %215 to half
  %217 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %208
  store half %216, ptr addrspace(1) %217, align 2, !tbaa !25, !alias.scope !332, !noalias !349
  %218 = add i64 %208, 2048
  %219 = icmp ult i64 %218, %14
  br i1 %219, label %207, label %220, !llvm.loop !350

220:                                              ; preds = %207, %204
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %152, label %42

42:                                               ; preds = %152, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %165, %152 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !362
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !362
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %150

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !362
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !362
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !362
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !362
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !362
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !362
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !362
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !362
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !362
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !362
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !362
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !362
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !362
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !362
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !362
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !362
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !362
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !362
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !362
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !362
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !362
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !362
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !362
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !362
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !362
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !362
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !362
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !362
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !362
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !362
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !362
  %149 = fadd contract float %148, %147
  br label %150

150:                                              ; preds = %87, %85
  %151 = phi float [ %149, %87 ], [ %80, %85 ]
  br i1 %86, label %168, label %204

152:                                              ; preds = %16, %152
  %153 = phi float [ %165, %152 ], [ 0.000000e+00, %16 ]
  %154 = phi i64 [ %166, %152 ], [ %40, %16 ]
  %155 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %154
  %156 = load bfloat, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !356, !noalias !363, !iluvatar.noclobber !18
  %157 = fpext bfloat %156 to float
  %158 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %154
  %159 = load bfloat, ptr addrspace(1) %158, align 2, !tbaa.struct !24, !alias.scope !358, !noalias !364, !iluvatar.noclobber !18
  %160 = fpext bfloat %159 to float
  %161 = fadd contract float %157, %160
  %162 = fptrunc float %161 to bfloat
  %163 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %154
  store bfloat %162, ptr addrspace(1) %163, align 2, !tbaa !25, !alias.scope !354, !noalias !365
  %164 = fmul contract float %161, %161
  %165 = fadd contract float %153, %164
  %166 = add i64 %154, 2048
  %167 = icmp ult i64 %166, %14
  br i1 %167, label %152, label %42, !llvm.loop !366

168:                                              ; preds = %150
  %169 = uitofp i64 %14 to float
  %170 = fdiv contract float %151, %169
  %171 = fadd contract float %170, %15
  %172 = tail call float @llvm.fabs.f32(float %171)
  %173 = fcmp contract olt float %172, 0x3810000000000000
  %174 = fmul contract float %171, 0x4170000000000000
  %175 = select i1 %173, float %174, float %171
  %176 = bitcast float %175 to i32
  %177 = add i32 %176, -8388608
  %178 = icmp ult i32 %177, 2130706432
  br i1 %178, label %179, label %200

179:                                              ; preds = %168
  %180 = and i32 %176, 16777215
  %181 = or disjoint i32 %180, 1056964608
  %182 = bitcast i32 %181 to float
  %183 = sub nsw i32 %181, %176
  %184 = add nsw i32 %183, 201326592
  %185 = select i1 %173, i32 %184, i32 %183
  %186 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %182) #7
  %187 = fmul contract float %186, %186
  %188 = fneg contract float %187
  %189 = tail call float @llvm.fma.f32(float %186, float %186, float %188)
  %190 = fneg contract float %182
  %191 = tail call float @llvm.fma.f32(float %187, float %190, float 1.000000e+00)
  %192 = tail call float @llvm.fma.f32(float %189, float %190, float %191)
  %193 = tail call float @llvm.fma.f32(float %192, float 3.750000e-01, float 5.000000e-01)
  %194 = fmul contract float %186, %192
  %195 = tail call float @llvm.fma.f32(float %193, float %194, float %186)
  %196 = ashr i32 %185, 1
  %197 = bitcast float %195 to i32
  %198 = add i32 %196, %197
  %199 = bitcast i32 %198 to float
  br label %202

200:                                              ; preds = %168
  %201 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %175) #7
  br label %202

202:                                              ; preds = %200, %179
  %203 = phi float [ %199, %179 ], [ %201, %200 ]
  store float %203, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !362
  br label %204

204:                                              ; preds = %202, %150
  tail call void @llvm.bi.sl.barrier(), !noalias !362
  br i1 %41, label %205, label %264

205:                                              ; preds = %204
  %206 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !362
  %207 = xor i64 %40, -1
  %208 = add i64 %207, %14
  %209 = lshr i64 %208, 11
  %210 = add nuw nsw i64 %209, 1
  %211 = icmp ult i64 %208, 2048
  br i1 %211, label %248, label %212

212:                                              ; preds = %205
  %213 = and i64 %210, 18014398509481982
  %214 = shl i64 %213, 11
  %215 = or disjoint i64 %214, %40
  %216 = insertelement <2 x float> poison, float %206, i64 0
  %217 = shufflevector <2 x float> %216, <2 x float> poison, <2 x i32> zeroinitializer
  br label %218

218:                                              ; preds = %218, %212
  %219 = phi i64 [ 0, %212 ], [ %244, %218 ]
  %220 = shl i64 %219, 11
  %221 = or disjoint i64 %220, %40
  %222 = add i64 %221, 2048
  %223 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %221
  %224 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %222
  %225 = load bfloat, ptr addrspace(1) %223, align 2, !tbaa.struct !24, !alias.scope !354, !noalias !365
  %226 = load bfloat, ptr addrspace(1) %224, align 2, !tbaa.struct !24, !alias.scope !354, !noalias !365
  %227 = insertelement <2 x bfloat> poison, bfloat %225, i64 0
  %228 = insertelement <2 x bfloat> %227, bfloat %226, i64 1
  %229 = fpext <2 x bfloat> %228 to <2 x float>
  %230 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %221
  %231 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %222
  %232 = load bfloat, ptr addrspace(1) %230, align 2, !tbaa.struct !24, !alias.scope !360, !noalias !367, !iluvatar.noclobber !18
  %233 = load bfloat, ptr addrspace(1) %231, align 2, !tbaa.struct !24, !alias.scope !360, !noalias !367, !iluvatar.noclobber !18
  %234 = insertelement <2 x bfloat> poison, bfloat %232, i64 0
  %235 = insertelement <2 x bfloat> %234, bfloat %233, i64 1
  %236 = fpext <2 x bfloat> %235 to <2 x float>
  %237 = fmul contract <2 x float> %229, %236
  %238 = fmul contract <2 x float> %217, %237
  %239 = fptrunc <2 x float> %238 to <2 x bfloat>
  %240 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %221
  %241 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %222
  %242 = extractelement <2 x bfloat> %239, i64 0
  store bfloat %242, ptr addrspace(1) %240, align 2, !tbaa !25, !alias.scope !351, !noalias !368
  %243 = extractelement <2 x bfloat> %239, i64 1
  store bfloat %243, ptr addrspace(1) %241, align 2, !tbaa !25, !alias.scope !351, !noalias !368
  %244 = add nuw i64 %219, 2
  %245 = icmp eq i64 %244, %213
  br i1 %245, label %246, label %218, !llvm.loop !369

246:                                              ; preds = %218
  %247 = icmp eq i64 %210, %213
  br i1 %247, label %264, label %248

248:                                              ; preds = %205, %246
  %249 = phi i64 [ %40, %205 ], [ %215, %246 ]
  br label %250

250:                                              ; preds = %248, %250
  %251 = phi i64 [ %262, %250 ], [ %249, %248 ]
  %252 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %251
  %253 = load bfloat, ptr addrspace(1) %252, align 2, !tbaa.struct !24, !alias.scope !354, !noalias !365
  %254 = fpext bfloat %253 to float
  %255 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %251
  %256 = load bfloat, ptr addrspace(1) %255, align 2, !tbaa.struct !24, !alias.scope !360, !noalias !367, !iluvatar.noclobber !18
  %257 = fpext bfloat %256 to float
  %258 = fmul contract float %254, %257
  %259 = fmul contract float %206, %258
  %260 = fptrunc float %259 to bfloat
  %261 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %251
  store bfloat %260, ptr addrspace(1) %261, align 2, !tbaa !25, !alias.scope !351, !noalias !368
  %262 = add i64 %251, 2048
  %263 = icmp ult i64 %262, %14
  br i1 %263, label %250, label %264, !llvm.loop !370

264:                                              ; preds = %250, %246, %204
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %152, label %42

42:                                               ; preds = %152, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %165, %152 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !382
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !382
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %150

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !382
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !382
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !382
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !382
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !382
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !382
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !382
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !382
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !382
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !382
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !382
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !382
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !382
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !382
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !382
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !382
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !382
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !382
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !382
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !382
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !382
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !382
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !382
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !382
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !382
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !382
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !382
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !382
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !382
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !382
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !382
  %149 = fadd contract float %148, %147
  br label %150

150:                                              ; preds = %87, %85
  %151 = phi float [ %149, %87 ], [ %80, %85 ]
  br i1 %86, label %168, label %204

152:                                              ; preds = %16, %152
  %153 = phi float [ %165, %152 ], [ 0.000000e+00, %16 ]
  %154 = phi i64 [ %166, %152 ], [ %40, %16 ]
  %155 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %154
  %156 = load bfloat, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !376, !noalias !383, !iluvatar.noclobber !18
  %157 = fpext bfloat %156 to float
  %158 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %154
  %159 = load bfloat, ptr addrspace(1) %158, align 2, !tbaa.struct !24, !alias.scope !378, !noalias !384, !iluvatar.noclobber !18
  %160 = fpext bfloat %159 to float
  %161 = fadd contract float %157, %160
  %162 = fptrunc float %161 to bfloat
  %163 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %154
  store bfloat %162, ptr addrspace(1) %163, align 2, !tbaa !25, !alias.scope !374, !noalias !385
  %164 = fmul contract float %161, %161
  %165 = fadd contract float %153, %164
  %166 = add i64 %154, 2048
  %167 = icmp ult i64 %166, %14
  br i1 %167, label %152, label %42, !llvm.loop !386

168:                                              ; preds = %150
  %169 = uitofp i64 %14 to float
  %170 = fdiv contract float %151, %169
  %171 = fadd contract float %170, %15
  %172 = tail call float @llvm.fabs.f32(float %171)
  %173 = fcmp contract olt float %172, 0x3810000000000000
  %174 = fmul contract float %171, 0x4170000000000000
  %175 = select i1 %173, float %174, float %171
  %176 = bitcast float %175 to i32
  %177 = add i32 %176, -8388608
  %178 = icmp ult i32 %177, 2130706432
  br i1 %178, label %179, label %200

179:                                              ; preds = %168
  %180 = and i32 %176, 16777215
  %181 = or disjoint i32 %180, 1056964608
  %182 = bitcast i32 %181 to float
  %183 = sub nsw i32 %181, %176
  %184 = add nsw i32 %183, 201326592
  %185 = select i1 %173, i32 %184, i32 %183
  %186 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %182) #7
  %187 = fmul contract float %186, %186
  %188 = fneg contract float %187
  %189 = tail call float @llvm.fma.f32(float %186, float %186, float %188)
  %190 = fneg contract float %182
  %191 = tail call float @llvm.fma.f32(float %187, float %190, float 1.000000e+00)
  %192 = tail call float @llvm.fma.f32(float %189, float %190, float %191)
  %193 = tail call float @llvm.fma.f32(float %192, float 3.750000e-01, float 5.000000e-01)
  %194 = fmul contract float %186, %192
  %195 = tail call float @llvm.fma.f32(float %193, float %194, float %186)
  %196 = ashr i32 %185, 1
  %197 = bitcast float %195 to i32
  %198 = add i32 %196, %197
  %199 = bitcast i32 %198 to float
  br label %202

200:                                              ; preds = %168
  %201 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %175) #7
  br label %202

202:                                              ; preds = %200, %179
  %203 = phi float [ %199, %179 ], [ %201, %200 ]
  store float %203, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !382
  br label %204

204:                                              ; preds = %202, %150
  tail call void @llvm.bi.sl.barrier(), !noalias !382
  br i1 %41, label %205, label %264

205:                                              ; preds = %204
  %206 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !382
  %207 = xor i64 %40, -1
  %208 = add i64 %207, %14
  %209 = lshr i64 %208, 11
  %210 = add nuw nsw i64 %209, 1
  %211 = icmp ult i64 %208, 2048
  br i1 %211, label %248, label %212

212:                                              ; preds = %205
  %213 = and i64 %210, 18014398509481982
  %214 = shl i64 %213, 11
  %215 = or disjoint i64 %214, %40
  %216 = insertelement <2 x float> poison, float %206, i64 0
  %217 = shufflevector <2 x float> %216, <2 x float> poison, <2 x i32> zeroinitializer
  br label %218

218:                                              ; preds = %218, %212
  %219 = phi i64 [ 0, %212 ], [ %244, %218 ]
  %220 = shl i64 %219, 11
  %221 = or disjoint i64 %220, %40
  %222 = add i64 %221, 2048
  %223 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %221
  %224 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %222
  %225 = load bfloat, ptr addrspace(1) %223, align 2, !tbaa.struct !24, !alias.scope !374, !noalias !385
  %226 = load bfloat, ptr addrspace(1) %224, align 2, !tbaa.struct !24, !alias.scope !374, !noalias !385
  %227 = insertelement <2 x bfloat> poison, bfloat %225, i64 0
  %228 = insertelement <2 x bfloat> %227, bfloat %226, i64 1
  %229 = fpext <2 x bfloat> %228 to <2 x float>
  %230 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %221
  %231 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %222
  %232 = load half, ptr addrspace(1) %230, align 2, !tbaa.struct !24, !alias.scope !380, !noalias !387, !iluvatar.noclobber !18
  %233 = load half, ptr addrspace(1) %231, align 2, !tbaa.struct !24, !alias.scope !380, !noalias !387, !iluvatar.noclobber !18
  %234 = insertelement <2 x half> poison, half %232, i64 0
  %235 = insertelement <2 x half> %234, half %233, i64 1
  %236 = fpext <2 x half> %235 to <2 x float>
  %237 = fmul contract <2 x float> %229, %236
  %238 = fmul contract <2 x float> %217, %237
  %239 = fptrunc <2 x float> %238 to <2 x bfloat>
  %240 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %221
  %241 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %222
  %242 = extractelement <2 x bfloat> %239, i64 0
  store bfloat %242, ptr addrspace(1) %240, align 2, !tbaa !25, !alias.scope !371, !noalias !388
  %243 = extractelement <2 x bfloat> %239, i64 1
  store bfloat %243, ptr addrspace(1) %241, align 2, !tbaa !25, !alias.scope !371, !noalias !388
  %244 = add nuw i64 %219, 2
  %245 = icmp eq i64 %244, %213
  br i1 %245, label %246, label %218, !llvm.loop !389

246:                                              ; preds = %218
  %247 = icmp eq i64 %210, %213
  br i1 %247, label %264, label %248

248:                                              ; preds = %205, %246
  %249 = phi i64 [ %40, %205 ], [ %215, %246 ]
  br label %250

250:                                              ; preds = %248, %250
  %251 = phi i64 [ %262, %250 ], [ %249, %248 ]
  %252 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %251
  %253 = load bfloat, ptr addrspace(1) %252, align 2, !tbaa.struct !24, !alias.scope !374, !noalias !385
  %254 = fpext bfloat %253 to float
  %255 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %251
  %256 = load half, ptr addrspace(1) %255, align 2, !tbaa.struct !24, !alias.scope !380, !noalias !387, !iluvatar.noclobber !18
  %257 = fpext half %256 to float
  %258 = fmul contract float %254, %257
  %259 = fmul contract float %206, %258
  %260 = fptrunc float %259 to bfloat
  %261 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %251
  store bfloat %260, ptr addrspace(1) %261, align 2, !tbaa !25, !alias.scope !371, !noalias !388
  %262 = add i64 %251, 2048
  %263 = icmp ult i64 %262, %14
  br i1 %263, label %250, label %264, !llvm.loop !390

264:                                              ; preds = %250, %246, %204
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %152, label %42

42:                                               ; preds = %152, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %165, %152 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !402
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !402
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %150

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !402
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !402
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !402
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !402
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !402
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !402
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !402
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !402
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !402
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !402
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !402
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !402
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !402
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !402
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !402
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !402
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !402
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !402
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !402
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !402
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !402
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !402
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !402
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !402
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !402
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !402
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !402
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !402
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !402
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !402
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !402
  %149 = fadd contract float %148, %147
  br label %150

150:                                              ; preds = %87, %85
  %151 = phi float [ %149, %87 ], [ %80, %85 ]
  br i1 %86, label %168, label %204

152:                                              ; preds = %16, %152
  %153 = phi float [ %165, %152 ], [ 0.000000e+00, %16 ]
  %154 = phi i64 [ %166, %152 ], [ %40, %16 ]
  %155 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %154
  %156 = load bfloat, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !396, !noalias !403, !iluvatar.noclobber !18
  %157 = fpext bfloat %156 to float
  %158 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %154
  %159 = load bfloat, ptr addrspace(1) %158, align 2, !tbaa.struct !24, !alias.scope !398, !noalias !404, !iluvatar.noclobber !18
  %160 = fpext bfloat %159 to float
  %161 = fadd contract float %157, %160
  %162 = fptrunc float %161 to bfloat
  %163 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %154
  store bfloat %162, ptr addrspace(1) %163, align 2, !tbaa !25, !alias.scope !394, !noalias !405
  %164 = fmul contract float %161, %161
  %165 = fadd contract float %153, %164
  %166 = add i64 %154, 2048
  %167 = icmp ult i64 %166, %14
  br i1 %167, label %152, label %42, !llvm.loop !406

168:                                              ; preds = %150
  %169 = uitofp i64 %14 to float
  %170 = fdiv contract float %151, %169
  %171 = fadd contract float %170, %15
  %172 = tail call float @llvm.fabs.f32(float %171)
  %173 = fcmp contract olt float %172, 0x3810000000000000
  %174 = fmul contract float %171, 0x4170000000000000
  %175 = select i1 %173, float %174, float %171
  %176 = bitcast float %175 to i32
  %177 = add i32 %176, -8388608
  %178 = icmp ult i32 %177, 2130706432
  br i1 %178, label %179, label %200

179:                                              ; preds = %168
  %180 = and i32 %176, 16777215
  %181 = or disjoint i32 %180, 1056964608
  %182 = bitcast i32 %181 to float
  %183 = sub nsw i32 %181, %176
  %184 = add nsw i32 %183, 201326592
  %185 = select i1 %173, i32 %184, i32 %183
  %186 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %182) #7
  %187 = fmul contract float %186, %186
  %188 = fneg contract float %187
  %189 = tail call float @llvm.fma.f32(float %186, float %186, float %188)
  %190 = fneg contract float %182
  %191 = tail call float @llvm.fma.f32(float %187, float %190, float 1.000000e+00)
  %192 = tail call float @llvm.fma.f32(float %189, float %190, float %191)
  %193 = tail call float @llvm.fma.f32(float %192, float 3.750000e-01, float 5.000000e-01)
  %194 = fmul contract float %186, %192
  %195 = tail call float @llvm.fma.f32(float %193, float %194, float %186)
  %196 = ashr i32 %185, 1
  %197 = bitcast float %195 to i32
  %198 = add i32 %196, %197
  %199 = bitcast i32 %198 to float
  br label %202

200:                                              ; preds = %168
  %201 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %175) #7
  br label %202

202:                                              ; preds = %200, %179
  %203 = phi float [ %199, %179 ], [ %201, %200 ]
  store float %203, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !402
  br label %204

204:                                              ; preds = %202, %150
  tail call void @llvm.bi.sl.barrier(), !noalias !402
  br i1 %41, label %205, label %220

205:                                              ; preds = %204
  %206 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !402
  br label %207

207:                                              ; preds = %207, %205
  %208 = phi i64 [ %40, %205 ], [ %218, %207 ]
  %209 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %208
  %210 = load bfloat, ptr addrspace(1) %209, align 2, !tbaa.struct !24, !alias.scope !394, !noalias !405
  %211 = fpext bfloat %210 to float
  %212 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %208
  %213 = load float, ptr addrspace(1) %212, align 4, !tbaa !19, !alias.scope !400, !noalias !407, !iluvatar.noclobber !18
  %214 = fmul contract float %213, %211
  %215 = fmul contract float %206, %214
  %216 = fptrunc float %215 to bfloat
  %217 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %208
  store bfloat %216, ptr addrspace(1) %217, align 2, !tbaa !25, !alias.scope !391, !noalias !408
  %218 = add i64 %208, 2048
  %219 = icmp ult i64 %218, %14
  br i1 %219, label %207, label %220, !llvm.loop !409

220:                                              ; preds = %207, %204
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds float, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds float, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds float, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds float, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds float, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %152, label %42

42:                                               ; preds = %152, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %162, %152 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !421
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !421
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %150

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !421
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !421
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !421
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !421
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !421
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !421
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !421
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !421
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !421
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !421
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !421
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !421
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !421
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !421
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !421
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !421
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !421
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !421
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !421
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !421
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !421
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !421
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !421
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !421
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !421
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !421
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !421
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !421
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !421
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !421
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !421
  %149 = fadd contract float %148, %147
  br label %150

150:                                              ; preds = %87, %85
  %151 = phi float [ %149, %87 ], [ %80, %85 ]
  br i1 %86, label %165, label %201

152:                                              ; preds = %16, %152
  %153 = phi float [ %162, %152 ], [ 0.000000e+00, %16 ]
  %154 = phi i64 [ %163, %152 ], [ %40, %16 ]
  %155 = getelementptr inbounds float, ptr addrspace(1) %30, i64 %154
  %156 = load float, ptr addrspace(1) %155, align 4, !tbaa !19, !alias.scope !415, !noalias !422, !iluvatar.noclobber !18
  %157 = getelementptr inbounds float, ptr addrspace(1) %34, i64 %154
  %158 = load float, ptr addrspace(1) %157, align 4, !tbaa !19, !alias.scope !417, !noalias !423, !iluvatar.noclobber !18
  %159 = fadd contract float %156, %158
  %160 = getelementptr inbounds float, ptr addrspace(1) %38, i64 %154
  store float %159, ptr addrspace(1) %160, align 4, !tbaa !19, !alias.scope !413, !noalias !424
  %161 = fmul contract float %159, %159
  %162 = fadd contract float %153, %161
  %163 = add i64 %154, 2048
  %164 = icmp ult i64 %163, %14
  br i1 %164, label %152, label %42, !llvm.loop !425

165:                                              ; preds = %150
  %166 = uitofp i64 %14 to float
  %167 = fdiv contract float %151, %166
  %168 = fadd contract float %167, %15
  %169 = tail call float @llvm.fabs.f32(float %168)
  %170 = fcmp contract olt float %169, 0x3810000000000000
  %171 = fmul contract float %168, 0x4170000000000000
  %172 = select i1 %170, float %171, float %168
  %173 = bitcast float %172 to i32
  %174 = add i32 %173, -8388608
  %175 = icmp ult i32 %174, 2130706432
  br i1 %175, label %176, label %197

176:                                              ; preds = %165
  %177 = and i32 %173, 16777215
  %178 = or disjoint i32 %177, 1056964608
  %179 = bitcast i32 %178 to float
  %180 = sub nsw i32 %178, %173
  %181 = add nsw i32 %180, 201326592
  %182 = select i1 %170, i32 %181, i32 %180
  %183 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %179) #7
  %184 = fmul contract float %183, %183
  %185 = fneg contract float %184
  %186 = tail call float @llvm.fma.f32(float %183, float %183, float %185)
  %187 = fneg contract float %179
  %188 = tail call float @llvm.fma.f32(float %184, float %187, float 1.000000e+00)
  %189 = tail call float @llvm.fma.f32(float %186, float %187, float %188)
  %190 = tail call float @llvm.fma.f32(float %189, float 3.750000e-01, float 5.000000e-01)
  %191 = fmul contract float %183, %189
  %192 = tail call float @llvm.fma.f32(float %190, float %191, float %183)
  %193 = ashr i32 %182, 1
  %194 = bitcast float %192 to i32
  %195 = add i32 %193, %194
  %196 = bitcast i32 %195 to float
  br label %199

197:                                              ; preds = %165
  %198 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %172) #7
  br label %199

199:                                              ; preds = %197, %176
  %200 = phi float [ %196, %176 ], [ %198, %197 ]
  store float %200, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !421
  br label %201

201:                                              ; preds = %199, %150
  tail call void @llvm.bi.sl.barrier(), !noalias !421
  br i1 %41, label %202, label %215

202:                                              ; preds = %201
  %203 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !421
  br label %204

204:                                              ; preds = %204, %202
  %205 = phi i64 [ %40, %202 ], [ %213, %204 ]
  %206 = getelementptr inbounds float, ptr addrspace(1) %38, i64 %205
  %207 = load float, ptr addrspace(1) %206, align 4, !tbaa !19, !alias.scope !413, !noalias !424
  %208 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %205
  %209 = load float, ptr addrspace(1) %208, align 4, !tbaa !19, !alias.scope !419, !noalias !426, !iluvatar.noclobber !18
  %210 = fmul contract float %207, %209
  %211 = fmul contract float %203, %210
  %212 = getelementptr inbounds float, ptr addrspace(1) %26, i64 %205
  store float %211, ptr addrspace(1) %212, align 4, !tbaa !19, !alias.scope !410, !noalias !427
  %213 = add i64 %205, 2048
  %214 = icmp ult i64 %213, %14
  br i1 %214, label %204, label %215, !llvm.loop !428

215:                                              ; preds = %204, %201
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %216, label %42

42:                                               ; preds = %216, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %229, %216 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !440
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !440
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %214

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !440
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !440
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !440
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !440
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !440
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !440
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !440
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !440
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !440
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !440
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !440
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !440
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !440
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !440
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !440
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !440
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !440
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !440
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !440
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !440
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !440
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !440
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !440
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !440
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !440
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !440
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !440
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !440
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !440
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !440
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !440
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !440
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !440
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !440
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !440
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !440
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !440
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !440
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !440
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !440
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !440
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !440
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !440
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !440
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !440
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !440
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !440
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !440
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !440
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !440
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !440
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !440
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !440
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !440
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !440
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !440
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !440
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !440
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !440
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !440
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !440
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !440
  %211 = fadd contract float %210, %209
  %212 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !440
  %213 = fadd contract float %212, %211
  br label %214

214:                                              ; preds = %87, %85
  %215 = phi float [ %213, %87 ], [ %80, %85 ]
  br i1 %86, label %232, label %268

216:                                              ; preds = %16, %216
  %217 = phi float [ %229, %216 ], [ 0.000000e+00, %16 ]
  %218 = phi i64 [ %230, %216 ], [ %40, %16 ]
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %218
  %220 = load half, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !434, !noalias !441, !iluvatar.noclobber !18
  %221 = fpext half %220 to float
  %222 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %218
  %223 = load half, ptr addrspace(1) %222, align 2, !tbaa.struct !24, !alias.scope !436, !noalias !442, !iluvatar.noclobber !18
  %224 = fpext half %223 to float
  %225 = fadd contract float %221, %224
  %226 = fptrunc float %225 to half
  %227 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %218
  store half %226, ptr addrspace(1) %227, align 2, !tbaa !25, !alias.scope !432, !noalias !443
  %228 = fmul contract float %225, %225
  %229 = fadd contract float %217, %228
  %230 = add nuw i64 %218, 4096
  %231 = icmp ult i64 %230, %14
  br i1 %231, label %216, label %42, !llvm.loop !444

232:                                              ; preds = %214
  %233 = uitofp i64 %14 to float
  %234 = fdiv contract float %215, %233
  %235 = fadd contract float %234, %15
  %236 = tail call float @llvm.fabs.f32(float %235)
  %237 = fcmp contract olt float %236, 0x3810000000000000
  %238 = fmul contract float %235, 0x4170000000000000
  %239 = select i1 %237, float %238, float %235
  %240 = bitcast float %239 to i32
  %241 = add i32 %240, -8388608
  %242 = icmp ult i32 %241, 2130706432
  br i1 %242, label %243, label %264

243:                                              ; preds = %232
  %244 = and i32 %240, 16777215
  %245 = or disjoint i32 %244, 1056964608
  %246 = bitcast i32 %245 to float
  %247 = sub nsw i32 %245, %240
  %248 = add nsw i32 %247, 201326592
  %249 = select i1 %237, i32 %248, i32 %247
  %250 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %246) #7
  %251 = fmul contract float %250, %250
  %252 = fneg contract float %251
  %253 = tail call float @llvm.fma.f32(float %250, float %250, float %252)
  %254 = fneg contract float %246
  %255 = tail call float @llvm.fma.f32(float %251, float %254, float 1.000000e+00)
  %256 = tail call float @llvm.fma.f32(float %253, float %254, float %255)
  %257 = tail call float @llvm.fma.f32(float %256, float 3.750000e-01, float 5.000000e-01)
  %258 = fmul contract float %250, %256
  %259 = tail call float @llvm.fma.f32(float %257, float %258, float %250)
  %260 = ashr i32 %249, 1
  %261 = bitcast float %259 to i32
  %262 = add i32 %260, %261
  %263 = bitcast i32 %262 to float
  br label %266

264:                                              ; preds = %232
  %265 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %239) #7
  br label %266

266:                                              ; preds = %264, %243
  %267 = phi float [ %263, %243 ], [ %265, %264 ]
  store float %267, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !440
  br label %268

268:                                              ; preds = %266, %214
  tail call void @llvm.bi.sl.barrier(), !noalias !440
  br i1 %41, label %269, label %328

269:                                              ; preds = %268
  %270 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !440
  %271 = xor i64 %40, -1
  %272 = add i64 %271, %14
  %273 = lshr i64 %272, 12
  %274 = add nuw nsw i64 %273, 1
  %275 = icmp ult i64 %272, 4096
  br i1 %275, label %312, label %276

276:                                              ; preds = %269
  %277 = and i64 %274, 9007199254740990
  %278 = shl i64 %277, 12
  %279 = or disjoint i64 %278, %40
  %280 = insertelement <2 x float> poison, float %270, i64 0
  %281 = shufflevector <2 x float> %280, <2 x float> poison, <2 x i32> zeroinitializer
  br label %282

282:                                              ; preds = %282, %276
  %283 = phi i64 [ 0, %276 ], [ %308, %282 ]
  %284 = shl i64 %283, 12
  %285 = or disjoint i64 %284, %40
  %286 = or disjoint i64 %285, 4096
  %287 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %285
  %288 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %286
  %289 = load half, ptr addrspace(1) %287, align 2, !tbaa.struct !24, !alias.scope !432, !noalias !443
  %290 = load half, ptr addrspace(1) %288, align 2, !tbaa.struct !24, !alias.scope !432, !noalias !443
  %291 = insertelement <2 x half> poison, half %289, i64 0
  %292 = insertelement <2 x half> %291, half %290, i64 1
  %293 = fpext <2 x half> %292 to <2 x float>
  %294 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %285
  %295 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %286
  %296 = load half, ptr addrspace(1) %294, align 2, !tbaa.struct !24, !alias.scope !438, !noalias !445, !iluvatar.noclobber !18
  %297 = load half, ptr addrspace(1) %295, align 2, !tbaa.struct !24, !alias.scope !438, !noalias !445, !iluvatar.noclobber !18
  %298 = insertelement <2 x half> poison, half %296, i64 0
  %299 = insertelement <2 x half> %298, half %297, i64 1
  %300 = fpext <2 x half> %299 to <2 x float>
  %301 = fmul contract <2 x float> %293, %300
  %302 = fmul contract <2 x float> %281, %301
  %303 = fptrunc <2 x float> %302 to <2 x half>
  %304 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %285
  %305 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %286
  %306 = extractelement <2 x half> %303, i64 0
  store half %306, ptr addrspace(1) %304, align 2, !tbaa !25, !alias.scope !429, !noalias !446
  %307 = extractelement <2 x half> %303, i64 1
  store half %307, ptr addrspace(1) %305, align 2, !tbaa !25, !alias.scope !429, !noalias !446
  %308 = add nuw i64 %283, 2
  %309 = icmp eq i64 %308, %277
  br i1 %309, label %310, label %282, !llvm.loop !447

310:                                              ; preds = %282
  %311 = icmp eq i64 %274, %277
  br i1 %311, label %328, label %312

312:                                              ; preds = %269, %310
  %313 = phi i64 [ %40, %269 ], [ %279, %310 ]
  br label %314

314:                                              ; preds = %312, %314
  %315 = phi i64 [ %326, %314 ], [ %313, %312 ]
  %316 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %315
  %317 = load half, ptr addrspace(1) %316, align 2, !tbaa.struct !24, !alias.scope !432, !noalias !443
  %318 = fpext half %317 to float
  %319 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %315
  %320 = load half, ptr addrspace(1) %319, align 2, !tbaa.struct !24, !alias.scope !438, !noalias !445, !iluvatar.noclobber !18
  %321 = fpext half %320 to float
  %322 = fmul contract float %318, %321
  %323 = fmul contract float %270, %322
  %324 = fptrunc float %323 to half
  %325 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %315
  store half %324, ptr addrspace(1) %325, align 2, !tbaa !25, !alias.scope !429, !noalias !446
  %326 = add nuw i64 %315, 4096
  %327 = icmp ult i64 %326, %14
  br i1 %327, label %314, label %328, !llvm.loop !448

328:                                              ; preds = %314, %310, %268
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %216, label %42

42:                                               ; preds = %216, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %229, %216 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !460
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !460
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %214

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !460
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !460
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !460
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !460
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !460
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !460
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !460
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !460
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !460
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !460
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !460
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !460
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !460
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !460
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !460
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !460
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !460
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !460
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !460
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !460
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !460
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !460
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !460
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !460
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !460
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !460
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !460
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !460
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !460
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !460
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !460
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !460
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !460
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !460
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !460
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !460
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !460
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !460
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !460
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !460
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !460
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !460
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !460
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !460
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !460
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !460
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !460
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !460
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !460
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !460
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !460
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !460
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !460
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !460
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !460
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !460
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !460
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !460
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !460
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !460
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !460
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !460
  %211 = fadd contract float %210, %209
  %212 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !460
  %213 = fadd contract float %212, %211
  br label %214

214:                                              ; preds = %87, %85
  %215 = phi float [ %213, %87 ], [ %80, %85 ]
  br i1 %86, label %232, label %268

216:                                              ; preds = %16, %216
  %217 = phi float [ %229, %216 ], [ 0.000000e+00, %16 ]
  %218 = phi i64 [ %230, %216 ], [ %40, %16 ]
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %218
  %220 = load half, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !454, !noalias !461, !iluvatar.noclobber !18
  %221 = fpext half %220 to float
  %222 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %218
  %223 = load half, ptr addrspace(1) %222, align 2, !tbaa.struct !24, !alias.scope !456, !noalias !462, !iluvatar.noclobber !18
  %224 = fpext half %223 to float
  %225 = fadd contract float %221, %224
  %226 = fptrunc float %225 to half
  %227 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %218
  store half %226, ptr addrspace(1) %227, align 2, !tbaa !25, !alias.scope !452, !noalias !463
  %228 = fmul contract float %225, %225
  %229 = fadd contract float %217, %228
  %230 = add nuw i64 %218, 4096
  %231 = icmp ult i64 %230, %14
  br i1 %231, label %216, label %42, !llvm.loop !464

232:                                              ; preds = %214
  %233 = uitofp i64 %14 to float
  %234 = fdiv contract float %215, %233
  %235 = fadd contract float %234, %15
  %236 = tail call float @llvm.fabs.f32(float %235)
  %237 = fcmp contract olt float %236, 0x3810000000000000
  %238 = fmul contract float %235, 0x4170000000000000
  %239 = select i1 %237, float %238, float %235
  %240 = bitcast float %239 to i32
  %241 = add i32 %240, -8388608
  %242 = icmp ult i32 %241, 2130706432
  br i1 %242, label %243, label %264

243:                                              ; preds = %232
  %244 = and i32 %240, 16777215
  %245 = or disjoint i32 %244, 1056964608
  %246 = bitcast i32 %245 to float
  %247 = sub nsw i32 %245, %240
  %248 = add nsw i32 %247, 201326592
  %249 = select i1 %237, i32 %248, i32 %247
  %250 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %246) #7
  %251 = fmul contract float %250, %250
  %252 = fneg contract float %251
  %253 = tail call float @llvm.fma.f32(float %250, float %250, float %252)
  %254 = fneg contract float %246
  %255 = tail call float @llvm.fma.f32(float %251, float %254, float 1.000000e+00)
  %256 = tail call float @llvm.fma.f32(float %253, float %254, float %255)
  %257 = tail call float @llvm.fma.f32(float %256, float 3.750000e-01, float 5.000000e-01)
  %258 = fmul contract float %250, %256
  %259 = tail call float @llvm.fma.f32(float %257, float %258, float %250)
  %260 = ashr i32 %249, 1
  %261 = bitcast float %259 to i32
  %262 = add i32 %260, %261
  %263 = bitcast i32 %262 to float
  br label %266

264:                                              ; preds = %232
  %265 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %239) #7
  br label %266

266:                                              ; preds = %264, %243
  %267 = phi float [ %263, %243 ], [ %265, %264 ]
  store float %267, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !460
  br label %268

268:                                              ; preds = %266, %214
  tail call void @llvm.bi.sl.barrier(), !noalias !460
  br i1 %41, label %269, label %328

269:                                              ; preds = %268
  %270 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !460
  %271 = xor i64 %40, -1
  %272 = add i64 %271, %14
  %273 = lshr i64 %272, 12
  %274 = add nuw nsw i64 %273, 1
  %275 = icmp ult i64 %272, 4096
  br i1 %275, label %312, label %276

276:                                              ; preds = %269
  %277 = and i64 %274, 9007199254740990
  %278 = shl i64 %277, 12
  %279 = or disjoint i64 %278, %40
  %280 = insertelement <2 x float> poison, float %270, i64 0
  %281 = shufflevector <2 x float> %280, <2 x float> poison, <2 x i32> zeroinitializer
  br label %282

282:                                              ; preds = %282, %276
  %283 = phi i64 [ 0, %276 ], [ %308, %282 ]
  %284 = shl i64 %283, 12
  %285 = or disjoint i64 %284, %40
  %286 = or disjoint i64 %285, 4096
  %287 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %285
  %288 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %286
  %289 = load half, ptr addrspace(1) %287, align 2, !tbaa.struct !24, !alias.scope !452, !noalias !463
  %290 = load half, ptr addrspace(1) %288, align 2, !tbaa.struct !24, !alias.scope !452, !noalias !463
  %291 = insertelement <2 x half> poison, half %289, i64 0
  %292 = insertelement <2 x half> %291, half %290, i64 1
  %293 = fpext <2 x half> %292 to <2 x float>
  %294 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %285
  %295 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %286
  %296 = load bfloat, ptr addrspace(1) %294, align 2, !tbaa.struct !24, !alias.scope !458, !noalias !465, !iluvatar.noclobber !18
  %297 = load bfloat, ptr addrspace(1) %295, align 2, !tbaa.struct !24, !alias.scope !458, !noalias !465, !iluvatar.noclobber !18
  %298 = insertelement <2 x bfloat> poison, bfloat %296, i64 0
  %299 = insertelement <2 x bfloat> %298, bfloat %297, i64 1
  %300 = fpext <2 x bfloat> %299 to <2 x float>
  %301 = fmul contract <2 x float> %293, %300
  %302 = fmul contract <2 x float> %281, %301
  %303 = fptrunc <2 x float> %302 to <2 x half>
  %304 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %285
  %305 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %286
  %306 = extractelement <2 x half> %303, i64 0
  store half %306, ptr addrspace(1) %304, align 2, !tbaa !25, !alias.scope !449, !noalias !466
  %307 = extractelement <2 x half> %303, i64 1
  store half %307, ptr addrspace(1) %305, align 2, !tbaa !25, !alias.scope !449, !noalias !466
  %308 = add nuw i64 %283, 2
  %309 = icmp eq i64 %308, %277
  br i1 %309, label %310, label %282, !llvm.loop !467

310:                                              ; preds = %282
  %311 = icmp eq i64 %274, %277
  br i1 %311, label %328, label %312

312:                                              ; preds = %269, %310
  %313 = phi i64 [ %40, %269 ], [ %279, %310 ]
  br label %314

314:                                              ; preds = %312, %314
  %315 = phi i64 [ %326, %314 ], [ %313, %312 ]
  %316 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %315
  %317 = load half, ptr addrspace(1) %316, align 2, !tbaa.struct !24, !alias.scope !452, !noalias !463
  %318 = fpext half %317 to float
  %319 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %315
  %320 = load bfloat, ptr addrspace(1) %319, align 2, !tbaa.struct !24, !alias.scope !458, !noalias !465, !iluvatar.noclobber !18
  %321 = fpext bfloat %320 to float
  %322 = fmul contract float %318, %321
  %323 = fmul contract float %270, %322
  %324 = fptrunc float %323 to half
  %325 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %315
  store half %324, ptr addrspace(1) %325, align 2, !tbaa !25, !alias.scope !449, !noalias !466
  %326 = add nuw i64 %315, 4096
  %327 = icmp ult i64 %326, %14
  br i1 %327, label %314, label %328, !llvm.loop !468

328:                                              ; preds = %314, %310, %268
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %216, label %42

42:                                               ; preds = %216, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %229, %216 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !480
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !480
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %214

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !480
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !480
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !480
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !480
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !480
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !480
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !480
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !480
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !480
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !480
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !480
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !480
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !480
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !480
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !480
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !480
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !480
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !480
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !480
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !480
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !480
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !480
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !480
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !480
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !480
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !480
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !480
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !480
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !480
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !480
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !480
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !480
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !480
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !480
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !480
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !480
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !480
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !480
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !480
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !480
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !480
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !480
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !480
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !480
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !480
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !480
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !480
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !480
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !480
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !480
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !480
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !480
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !480
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !480
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !480
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !480
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !480
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !480
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !480
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !480
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !480
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !480
  %211 = fadd contract float %210, %209
  %212 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !480
  %213 = fadd contract float %212, %211
  br label %214

214:                                              ; preds = %87, %85
  %215 = phi float [ %213, %87 ], [ %80, %85 ]
  br i1 %86, label %232, label %268

216:                                              ; preds = %16, %216
  %217 = phi float [ %229, %216 ], [ 0.000000e+00, %16 ]
  %218 = phi i64 [ %230, %216 ], [ %40, %16 ]
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(1) %30, i64 %218
  %220 = load half, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !474, !noalias !481, !iluvatar.noclobber !18
  %221 = fpext half %220 to float
  %222 = getelementptr inbounds %struct.__half, ptr addrspace(1) %34, i64 %218
  %223 = load half, ptr addrspace(1) %222, align 2, !tbaa.struct !24, !alias.scope !476, !noalias !482, !iluvatar.noclobber !18
  %224 = fpext half %223 to float
  %225 = fadd contract float %221, %224
  %226 = fptrunc float %225 to half
  %227 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %218
  store half %226, ptr addrspace(1) %227, align 2, !tbaa !25, !alias.scope !472, !noalias !483
  %228 = fmul contract float %225, %225
  %229 = fadd contract float %217, %228
  %230 = add nuw i64 %218, 4096
  %231 = icmp ult i64 %230, %14
  br i1 %231, label %216, label %42, !llvm.loop !484

232:                                              ; preds = %214
  %233 = uitofp i64 %14 to float
  %234 = fdiv contract float %215, %233
  %235 = fadd contract float %234, %15
  %236 = tail call float @llvm.fabs.f32(float %235)
  %237 = fcmp contract olt float %236, 0x3810000000000000
  %238 = fmul contract float %235, 0x4170000000000000
  %239 = select i1 %237, float %238, float %235
  %240 = bitcast float %239 to i32
  %241 = add i32 %240, -8388608
  %242 = icmp ult i32 %241, 2130706432
  br i1 %242, label %243, label %264

243:                                              ; preds = %232
  %244 = and i32 %240, 16777215
  %245 = or disjoint i32 %244, 1056964608
  %246 = bitcast i32 %245 to float
  %247 = sub nsw i32 %245, %240
  %248 = add nsw i32 %247, 201326592
  %249 = select i1 %237, i32 %248, i32 %247
  %250 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %246) #7
  %251 = fmul contract float %250, %250
  %252 = fneg contract float %251
  %253 = tail call float @llvm.fma.f32(float %250, float %250, float %252)
  %254 = fneg contract float %246
  %255 = tail call float @llvm.fma.f32(float %251, float %254, float 1.000000e+00)
  %256 = tail call float @llvm.fma.f32(float %253, float %254, float %255)
  %257 = tail call float @llvm.fma.f32(float %256, float 3.750000e-01, float 5.000000e-01)
  %258 = fmul contract float %250, %256
  %259 = tail call float @llvm.fma.f32(float %257, float %258, float %250)
  %260 = ashr i32 %249, 1
  %261 = bitcast float %259 to i32
  %262 = add i32 %260, %261
  %263 = bitcast i32 %262 to float
  br label %266

264:                                              ; preds = %232
  %265 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %239) #7
  br label %266

266:                                              ; preds = %264, %243
  %267 = phi float [ %263, %243 ], [ %265, %264 ]
  store float %267, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !480
  br label %268

268:                                              ; preds = %266, %214
  tail call void @llvm.bi.sl.barrier(), !noalias !480
  br i1 %41, label %269, label %284

269:                                              ; preds = %268
  %270 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !480
  br label %271

271:                                              ; preds = %271, %269
  %272 = phi i64 [ %40, %269 ], [ %282, %271 ]
  %273 = getelementptr inbounds %struct.__half, ptr addrspace(1) %38, i64 %272
  %274 = load half, ptr addrspace(1) %273, align 2, !tbaa.struct !24, !alias.scope !472, !noalias !483
  %275 = fpext half %274 to float
  %276 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %272
  %277 = load float, ptr addrspace(1) %276, align 4, !tbaa !19, !alias.scope !478, !noalias !485, !iluvatar.noclobber !18
  %278 = fmul contract float %277, %275
  %279 = fmul contract float %270, %278
  %280 = fptrunc float %279 to half
  %281 = getelementptr inbounds %struct.__half, ptr addrspace(1) %26, i64 %272
  store half %280, ptr addrspace(1) %281, align 2, !tbaa !25, !alias.scope !469, !noalias !486
  %282 = add nuw i64 %272, 4096
  %283 = icmp ult i64 %282, %14
  br i1 %283, label %271, label %284, !llvm.loop !487

284:                                              ; preds = %271, %268
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %216, label %42

42:                                               ; preds = %216, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %229, %216 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !499
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !499
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %214

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !499
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !499
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !499
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !499
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !499
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !499
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !499
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !499
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !499
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !499
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !499
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !499
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !499
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !499
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !499
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !499
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !499
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !499
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !499
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !499
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !499
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !499
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !499
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !499
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !499
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !499
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !499
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !499
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !499
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !499
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !499
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !499
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !499
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !499
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !499
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !499
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !499
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !499
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !499
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !499
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !499
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !499
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !499
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !499
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !499
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !499
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !499
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !499
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !499
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !499
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !499
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !499
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !499
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !499
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !499
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !499
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !499
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !499
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !499
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !499
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !499
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !499
  %211 = fadd contract float %210, %209
  %212 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !499
  %213 = fadd contract float %212, %211
  br label %214

214:                                              ; preds = %87, %85
  %215 = phi float [ %213, %87 ], [ %80, %85 ]
  br i1 %86, label %232, label %268

216:                                              ; preds = %16, %216
  %217 = phi float [ %229, %216 ], [ 0.000000e+00, %16 ]
  %218 = phi i64 [ %230, %216 ], [ %40, %16 ]
  %219 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %218
  %220 = load bfloat, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !493, !noalias !500, !iluvatar.noclobber !18
  %221 = fpext bfloat %220 to float
  %222 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %218
  %223 = load bfloat, ptr addrspace(1) %222, align 2, !tbaa.struct !24, !alias.scope !495, !noalias !501, !iluvatar.noclobber !18
  %224 = fpext bfloat %223 to float
  %225 = fadd contract float %221, %224
  %226 = fptrunc float %225 to bfloat
  %227 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %218
  store bfloat %226, ptr addrspace(1) %227, align 2, !tbaa !25, !alias.scope !491, !noalias !502
  %228 = fmul contract float %225, %225
  %229 = fadd contract float %217, %228
  %230 = add nuw i64 %218, 4096
  %231 = icmp ult i64 %230, %14
  br i1 %231, label %216, label %42, !llvm.loop !503

232:                                              ; preds = %214
  %233 = uitofp i64 %14 to float
  %234 = fdiv contract float %215, %233
  %235 = fadd contract float %234, %15
  %236 = tail call float @llvm.fabs.f32(float %235)
  %237 = fcmp contract olt float %236, 0x3810000000000000
  %238 = fmul contract float %235, 0x4170000000000000
  %239 = select i1 %237, float %238, float %235
  %240 = bitcast float %239 to i32
  %241 = add i32 %240, -8388608
  %242 = icmp ult i32 %241, 2130706432
  br i1 %242, label %243, label %264

243:                                              ; preds = %232
  %244 = and i32 %240, 16777215
  %245 = or disjoint i32 %244, 1056964608
  %246 = bitcast i32 %245 to float
  %247 = sub nsw i32 %245, %240
  %248 = add nsw i32 %247, 201326592
  %249 = select i1 %237, i32 %248, i32 %247
  %250 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %246) #7
  %251 = fmul contract float %250, %250
  %252 = fneg contract float %251
  %253 = tail call float @llvm.fma.f32(float %250, float %250, float %252)
  %254 = fneg contract float %246
  %255 = tail call float @llvm.fma.f32(float %251, float %254, float 1.000000e+00)
  %256 = tail call float @llvm.fma.f32(float %253, float %254, float %255)
  %257 = tail call float @llvm.fma.f32(float %256, float 3.750000e-01, float 5.000000e-01)
  %258 = fmul contract float %250, %256
  %259 = tail call float @llvm.fma.f32(float %257, float %258, float %250)
  %260 = ashr i32 %249, 1
  %261 = bitcast float %259 to i32
  %262 = add i32 %260, %261
  %263 = bitcast i32 %262 to float
  br label %266

264:                                              ; preds = %232
  %265 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %239) #7
  br label %266

266:                                              ; preds = %264, %243
  %267 = phi float [ %263, %243 ], [ %265, %264 ]
  store float %267, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !499
  br label %268

268:                                              ; preds = %266, %214
  tail call void @llvm.bi.sl.barrier(), !noalias !499
  br i1 %41, label %269, label %328

269:                                              ; preds = %268
  %270 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !499
  %271 = xor i64 %40, -1
  %272 = add i64 %271, %14
  %273 = lshr i64 %272, 12
  %274 = add nuw nsw i64 %273, 1
  %275 = icmp ult i64 %272, 4096
  br i1 %275, label %312, label %276

276:                                              ; preds = %269
  %277 = and i64 %274, 9007199254740990
  %278 = shl i64 %277, 12
  %279 = or disjoint i64 %278, %40
  %280 = insertelement <2 x float> poison, float %270, i64 0
  %281 = shufflevector <2 x float> %280, <2 x float> poison, <2 x i32> zeroinitializer
  br label %282

282:                                              ; preds = %282, %276
  %283 = phi i64 [ 0, %276 ], [ %308, %282 ]
  %284 = shl i64 %283, 12
  %285 = or disjoint i64 %284, %40
  %286 = or disjoint i64 %285, 4096
  %287 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %285
  %288 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %286
  %289 = load bfloat, ptr addrspace(1) %287, align 2, !tbaa.struct !24, !alias.scope !491, !noalias !502
  %290 = load bfloat, ptr addrspace(1) %288, align 2, !tbaa.struct !24, !alias.scope !491, !noalias !502
  %291 = insertelement <2 x bfloat> poison, bfloat %289, i64 0
  %292 = insertelement <2 x bfloat> %291, bfloat %290, i64 1
  %293 = fpext <2 x bfloat> %292 to <2 x float>
  %294 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %285
  %295 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %286
  %296 = load bfloat, ptr addrspace(1) %294, align 2, !tbaa.struct !24, !alias.scope !497, !noalias !504, !iluvatar.noclobber !18
  %297 = load bfloat, ptr addrspace(1) %295, align 2, !tbaa.struct !24, !alias.scope !497, !noalias !504, !iluvatar.noclobber !18
  %298 = insertelement <2 x bfloat> poison, bfloat %296, i64 0
  %299 = insertelement <2 x bfloat> %298, bfloat %297, i64 1
  %300 = fpext <2 x bfloat> %299 to <2 x float>
  %301 = fmul contract <2 x float> %293, %300
  %302 = fmul contract <2 x float> %281, %301
  %303 = fptrunc <2 x float> %302 to <2 x bfloat>
  %304 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %285
  %305 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %286
  %306 = extractelement <2 x bfloat> %303, i64 0
  store bfloat %306, ptr addrspace(1) %304, align 2, !tbaa !25, !alias.scope !488, !noalias !505
  %307 = extractelement <2 x bfloat> %303, i64 1
  store bfloat %307, ptr addrspace(1) %305, align 2, !tbaa !25, !alias.scope !488, !noalias !505
  %308 = add nuw i64 %283, 2
  %309 = icmp eq i64 %308, %277
  br i1 %309, label %310, label %282, !llvm.loop !506

310:                                              ; preds = %282
  %311 = icmp eq i64 %274, %277
  br i1 %311, label %328, label %312

312:                                              ; preds = %269, %310
  %313 = phi i64 [ %40, %269 ], [ %279, %310 ]
  br label %314

314:                                              ; preds = %312, %314
  %315 = phi i64 [ %326, %314 ], [ %313, %312 ]
  %316 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %315
  %317 = load bfloat, ptr addrspace(1) %316, align 2, !tbaa.struct !24, !alias.scope !491, !noalias !502
  %318 = fpext bfloat %317 to float
  %319 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %315
  %320 = load bfloat, ptr addrspace(1) %319, align 2, !tbaa.struct !24, !alias.scope !497, !noalias !504, !iluvatar.noclobber !18
  %321 = fpext bfloat %320 to float
  %322 = fmul contract float %318, %321
  %323 = fmul contract float %270, %322
  %324 = fptrunc float %323 to bfloat
  %325 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %315
  store bfloat %324, ptr addrspace(1) %325, align 2, !tbaa !25, !alias.scope !488, !noalias !505
  %326 = add nuw i64 %315, 4096
  %327 = icmp ult i64 %326, %14
  br i1 %327, label %314, label %328, !llvm.loop !507

328:                                              ; preds = %314, %310, %268
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %216, label %42

42:                                               ; preds = %216, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %229, %216 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !519
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !519
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %214

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !519
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !519
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !519
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !519
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !519
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !519
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !519
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !519
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !519
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !519
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !519
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !519
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !519
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !519
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !519
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !519
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !519
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !519
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !519
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !519
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !519
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !519
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !519
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !519
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !519
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !519
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !519
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !519
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !519
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !519
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !519
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !519
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !519
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !519
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !519
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !519
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !519
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !519
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !519
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !519
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !519
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !519
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !519
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !519
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !519
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !519
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !519
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !519
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !519
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !519
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !519
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !519
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !519
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !519
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !519
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !519
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !519
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !519
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !519
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !519
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !519
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !519
  %211 = fadd contract float %210, %209
  %212 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !519
  %213 = fadd contract float %212, %211
  br label %214

214:                                              ; preds = %87, %85
  %215 = phi float [ %213, %87 ], [ %80, %85 ]
  br i1 %86, label %232, label %268

216:                                              ; preds = %16, %216
  %217 = phi float [ %229, %216 ], [ 0.000000e+00, %16 ]
  %218 = phi i64 [ %230, %216 ], [ %40, %16 ]
  %219 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %218
  %220 = load bfloat, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !513, !noalias !520, !iluvatar.noclobber !18
  %221 = fpext bfloat %220 to float
  %222 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %218
  %223 = load bfloat, ptr addrspace(1) %222, align 2, !tbaa.struct !24, !alias.scope !515, !noalias !521, !iluvatar.noclobber !18
  %224 = fpext bfloat %223 to float
  %225 = fadd contract float %221, %224
  %226 = fptrunc float %225 to bfloat
  %227 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %218
  store bfloat %226, ptr addrspace(1) %227, align 2, !tbaa !25, !alias.scope !511, !noalias !522
  %228 = fmul contract float %225, %225
  %229 = fadd contract float %217, %228
  %230 = add nuw i64 %218, 4096
  %231 = icmp ult i64 %230, %14
  br i1 %231, label %216, label %42, !llvm.loop !523

232:                                              ; preds = %214
  %233 = uitofp i64 %14 to float
  %234 = fdiv contract float %215, %233
  %235 = fadd contract float %234, %15
  %236 = tail call float @llvm.fabs.f32(float %235)
  %237 = fcmp contract olt float %236, 0x3810000000000000
  %238 = fmul contract float %235, 0x4170000000000000
  %239 = select i1 %237, float %238, float %235
  %240 = bitcast float %239 to i32
  %241 = add i32 %240, -8388608
  %242 = icmp ult i32 %241, 2130706432
  br i1 %242, label %243, label %264

243:                                              ; preds = %232
  %244 = and i32 %240, 16777215
  %245 = or disjoint i32 %244, 1056964608
  %246 = bitcast i32 %245 to float
  %247 = sub nsw i32 %245, %240
  %248 = add nsw i32 %247, 201326592
  %249 = select i1 %237, i32 %248, i32 %247
  %250 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %246) #7
  %251 = fmul contract float %250, %250
  %252 = fneg contract float %251
  %253 = tail call float @llvm.fma.f32(float %250, float %250, float %252)
  %254 = fneg contract float %246
  %255 = tail call float @llvm.fma.f32(float %251, float %254, float 1.000000e+00)
  %256 = tail call float @llvm.fma.f32(float %253, float %254, float %255)
  %257 = tail call float @llvm.fma.f32(float %256, float 3.750000e-01, float 5.000000e-01)
  %258 = fmul contract float %250, %256
  %259 = tail call float @llvm.fma.f32(float %257, float %258, float %250)
  %260 = ashr i32 %249, 1
  %261 = bitcast float %259 to i32
  %262 = add i32 %260, %261
  %263 = bitcast i32 %262 to float
  br label %266

264:                                              ; preds = %232
  %265 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %239) #7
  br label %266

266:                                              ; preds = %264, %243
  %267 = phi float [ %263, %243 ], [ %265, %264 ]
  store float %267, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !519
  br label %268

268:                                              ; preds = %266, %214
  tail call void @llvm.bi.sl.barrier(), !noalias !519
  br i1 %41, label %269, label %328

269:                                              ; preds = %268
  %270 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !519
  %271 = xor i64 %40, -1
  %272 = add i64 %271, %14
  %273 = lshr i64 %272, 12
  %274 = add nuw nsw i64 %273, 1
  %275 = icmp ult i64 %272, 4096
  br i1 %275, label %312, label %276

276:                                              ; preds = %269
  %277 = and i64 %274, 9007199254740990
  %278 = shl i64 %277, 12
  %279 = or disjoint i64 %278, %40
  %280 = insertelement <2 x float> poison, float %270, i64 0
  %281 = shufflevector <2 x float> %280, <2 x float> poison, <2 x i32> zeroinitializer
  br label %282

282:                                              ; preds = %282, %276
  %283 = phi i64 [ 0, %276 ], [ %308, %282 ]
  %284 = shl i64 %283, 12
  %285 = or disjoint i64 %284, %40
  %286 = or disjoint i64 %285, 4096
  %287 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %285
  %288 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %286
  %289 = load bfloat, ptr addrspace(1) %287, align 2, !tbaa.struct !24, !alias.scope !511, !noalias !522
  %290 = load bfloat, ptr addrspace(1) %288, align 2, !tbaa.struct !24, !alias.scope !511, !noalias !522
  %291 = insertelement <2 x bfloat> poison, bfloat %289, i64 0
  %292 = insertelement <2 x bfloat> %291, bfloat %290, i64 1
  %293 = fpext <2 x bfloat> %292 to <2 x float>
  %294 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %285
  %295 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %286
  %296 = load half, ptr addrspace(1) %294, align 2, !tbaa.struct !24, !alias.scope !517, !noalias !524, !iluvatar.noclobber !18
  %297 = load half, ptr addrspace(1) %295, align 2, !tbaa.struct !24, !alias.scope !517, !noalias !524, !iluvatar.noclobber !18
  %298 = insertelement <2 x half> poison, half %296, i64 0
  %299 = insertelement <2 x half> %298, half %297, i64 1
  %300 = fpext <2 x half> %299 to <2 x float>
  %301 = fmul contract <2 x float> %293, %300
  %302 = fmul contract <2 x float> %281, %301
  %303 = fptrunc <2 x float> %302 to <2 x bfloat>
  %304 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %285
  %305 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %286
  %306 = extractelement <2 x bfloat> %303, i64 0
  store bfloat %306, ptr addrspace(1) %304, align 2, !tbaa !25, !alias.scope !508, !noalias !525
  %307 = extractelement <2 x bfloat> %303, i64 1
  store bfloat %307, ptr addrspace(1) %305, align 2, !tbaa !25, !alias.scope !508, !noalias !525
  %308 = add nuw i64 %283, 2
  %309 = icmp eq i64 %308, %277
  br i1 %309, label %310, label %282, !llvm.loop !526

310:                                              ; preds = %282
  %311 = icmp eq i64 %274, %277
  br i1 %311, label %328, label %312

312:                                              ; preds = %269, %310
  %313 = phi i64 [ %40, %269 ], [ %279, %310 ]
  br label %314

314:                                              ; preds = %312, %314
  %315 = phi i64 [ %326, %314 ], [ %313, %312 ]
  %316 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %315
  %317 = load bfloat, ptr addrspace(1) %316, align 2, !tbaa.struct !24, !alias.scope !511, !noalias !522
  %318 = fpext bfloat %317 to float
  %319 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %315
  %320 = load half, ptr addrspace(1) %319, align 2, !tbaa.struct !24, !alias.scope !517, !noalias !524, !iluvatar.noclobber !18
  %321 = fpext half %320 to float
  %322 = fmul contract float %318, %321
  %323 = fmul contract float %270, %322
  %324 = fptrunc float %323 to bfloat
  %325 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %315
  store bfloat %324, ptr addrspace(1) %325, align 2, !tbaa !25, !alias.scope !508, !noalias !525
  %326 = add nuw i64 %315, 4096
  %327 = icmp ult i64 %326, %14
  br i1 %327, label %314, label %328, !llvm.loop !527

328:                                              ; preds = %314, %310, %268
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %216, label %42

42:                                               ; preds = %216, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %229, %216 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !539
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !539
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %214

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !539
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !539
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !539
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !539
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !539
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !539
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !539
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !539
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !539
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !539
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !539
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !539
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !539
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !539
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !539
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !539
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !539
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !539
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !539
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !539
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !539
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !539
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !539
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !539
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !539
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !539
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !539
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !539
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !539
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !539
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !539
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !539
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !539
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !539
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !539
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !539
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !539
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !539
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !539
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !539
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !539
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !539
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !539
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !539
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !539
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !539
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !539
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !539
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !539
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !539
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !539
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !539
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !539
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !539
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !539
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !539
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !539
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !539
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !539
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !539
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !539
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !539
  %211 = fadd contract float %210, %209
  %212 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !539
  %213 = fadd contract float %212, %211
  br label %214

214:                                              ; preds = %87, %85
  %215 = phi float [ %213, %87 ], [ %80, %85 ]
  br i1 %86, label %232, label %268

216:                                              ; preds = %16, %216
  %217 = phi float [ %229, %216 ], [ 0.000000e+00, %16 ]
  %218 = phi i64 [ %230, %216 ], [ %40, %16 ]
  %219 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %30, i64 %218
  %220 = load bfloat, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !533, !noalias !540, !iluvatar.noclobber !18
  %221 = fpext bfloat %220 to float
  %222 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %34, i64 %218
  %223 = load bfloat, ptr addrspace(1) %222, align 2, !tbaa.struct !24, !alias.scope !535, !noalias !541, !iluvatar.noclobber !18
  %224 = fpext bfloat %223 to float
  %225 = fadd contract float %221, %224
  %226 = fptrunc float %225 to bfloat
  %227 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %218
  store bfloat %226, ptr addrspace(1) %227, align 2, !tbaa !25, !alias.scope !531, !noalias !542
  %228 = fmul contract float %225, %225
  %229 = fadd contract float %217, %228
  %230 = add nuw i64 %218, 4096
  %231 = icmp ult i64 %230, %14
  br i1 %231, label %216, label %42, !llvm.loop !543

232:                                              ; preds = %214
  %233 = uitofp i64 %14 to float
  %234 = fdiv contract float %215, %233
  %235 = fadd contract float %234, %15
  %236 = tail call float @llvm.fabs.f32(float %235)
  %237 = fcmp contract olt float %236, 0x3810000000000000
  %238 = fmul contract float %235, 0x4170000000000000
  %239 = select i1 %237, float %238, float %235
  %240 = bitcast float %239 to i32
  %241 = add i32 %240, -8388608
  %242 = icmp ult i32 %241, 2130706432
  br i1 %242, label %243, label %264

243:                                              ; preds = %232
  %244 = and i32 %240, 16777215
  %245 = or disjoint i32 %244, 1056964608
  %246 = bitcast i32 %245 to float
  %247 = sub nsw i32 %245, %240
  %248 = add nsw i32 %247, 201326592
  %249 = select i1 %237, i32 %248, i32 %247
  %250 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %246) #7
  %251 = fmul contract float %250, %250
  %252 = fneg contract float %251
  %253 = tail call float @llvm.fma.f32(float %250, float %250, float %252)
  %254 = fneg contract float %246
  %255 = tail call float @llvm.fma.f32(float %251, float %254, float 1.000000e+00)
  %256 = tail call float @llvm.fma.f32(float %253, float %254, float %255)
  %257 = tail call float @llvm.fma.f32(float %256, float 3.750000e-01, float 5.000000e-01)
  %258 = fmul contract float %250, %256
  %259 = tail call float @llvm.fma.f32(float %257, float %258, float %250)
  %260 = ashr i32 %249, 1
  %261 = bitcast float %259 to i32
  %262 = add i32 %260, %261
  %263 = bitcast i32 %262 to float
  br label %266

264:                                              ; preds = %232
  %265 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %239) #7
  br label %266

266:                                              ; preds = %264, %243
  %267 = phi float [ %263, %243 ], [ %265, %264 ]
  store float %267, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !539
  br label %268

268:                                              ; preds = %266, %214
  tail call void @llvm.bi.sl.barrier(), !noalias !539
  br i1 %41, label %269, label %284

269:                                              ; preds = %268
  %270 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !539
  br label %271

271:                                              ; preds = %271, %269
  %272 = phi i64 [ %40, %269 ], [ %282, %271 ]
  %273 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %38, i64 %272
  %274 = load bfloat, ptr addrspace(1) %273, align 2, !tbaa.struct !24, !alias.scope !531, !noalias !542
  %275 = fpext bfloat %274 to float
  %276 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %272
  %277 = load float, ptr addrspace(1) %276, align 4, !tbaa !19, !alias.scope !537, !noalias !544, !iluvatar.noclobber !18
  %278 = fmul contract float %277, %275
  %279 = fmul contract float %270, %278
  %280 = fptrunc float %279 to bfloat
  %281 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %26, i64 %272
  store bfloat %280, ptr addrspace(1) %281, align 2, !tbaa !25, !alias.scope !528, !noalias !545
  %282 = add nuw i64 %272, 4096
  %283 = icmp ult i64 %282, %14
  br i1 %283, label %271, label %284, !llvm.loop !546

284:                                              ; preds = %271, %268
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local iluvatar_kernel void @_Z17add_rmsnormKernelILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf(ptr addrspace(1) noalias nocapture noundef writeonly %0, ptr addrspace(1) noalias nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr addrspace(1) noalias nocapture noundef readonly %6, i64 noundef %7, i64 noundef %8, ptr addrspace(1) noalias nocapture noundef readonly %9, i64 noundef %10, i64 noundef %11, ptr addrspace(1) noalias nocapture noundef readonly %12, i64 noundef %13, i64 noundef %14, float noundef %15) local_unnamed_addr #0 comdat {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %17 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x(), !range !15
  %18 = zext nneg i32 %17 to i64
  %19 = freeze i64 %18
  %20 = udiv i64 %19, %13
  %21 = mul i64 %20, %13
  %22 = sub i64 %19, %21
  %23 = mul i64 %20, %2
  %24 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %23
  %25 = mul i64 %22, %3
  %26 = getelementptr inbounds float, ptr addrspace(1) %24, i64 %25
  %27 = mul i64 %20, %7
  %28 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %27
  %29 = mul i64 %22, %8
  %30 = getelementptr inbounds float, ptr addrspace(1) %28, i64 %29
  %31 = mul i64 %20, %10
  %32 = getelementptr inbounds float, ptr addrspace(1) %9, i64 %31
  %33 = mul i64 %22, %11
  %34 = getelementptr inbounds float, ptr addrspace(1) %32, i64 %33
  %35 = mul i64 %20, %4
  %36 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %35
  %37 = mul i64 %22, %5
  %38 = getelementptr inbounds float, ptr addrspace(1) %36, i64 %37
  %39 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %40 = zext nneg i32 %39 to i64
  %41 = icmp ult i64 %40, %14
  br i1 %41, label %216, label %42

42:                                               ; preds = %216, %16
  %43 = phi float [ 0.000000e+00, %16 ], [ %226, %216 ]
  %44 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %45 = icmp ne i32 %44, 63
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %43, i32 %47)
  %49 = select i1 %45, float %43, float -0.000000e+00
  %50 = fadd contract float %48, %49
  %51 = add nuw nsw i32 %44, 2
  %52 = icmp ugt i32 %44, 61
  %53 = select i1 %52, i32 %44, i32 %51
  %54 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %50, i32 %53)
  %55 = select i1 %52, float -0.000000e+00, float %50
  %56 = fadd contract float %54, %55
  %57 = add nuw nsw i32 %44, 4
  %58 = icmp ugt i32 %44, 59
  %59 = select i1 %58, i32 %44, i32 %57
  %60 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %56, i32 %59)
  %61 = select i1 %58, float -0.000000e+00, float %56
  %62 = fadd contract float %60, %61
  %63 = add nuw nsw i32 %44, 8
  %64 = icmp ugt i32 %44, 55
  %65 = select i1 %64, i32 %44, i32 %63
  %66 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %62, i32 %65)
  %67 = select i1 %64, float -0.000000e+00, float %62
  %68 = fadd contract float %66, %67
  %69 = add nuw nsw i32 %44, 16
  %70 = icmp ugt i32 %44, 47
  %71 = select i1 %70, i32 %44, i32 %69
  %72 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %68, i32 %71)
  %73 = select i1 %70, float -0.000000e+00, float %68
  %74 = fadd contract float %72, %73
  %75 = add nuw nsw i32 %44, 32
  %76 = icmp ugt i32 %44, 31
  %77 = select i1 %76, i32 %44, i32 %75
  %78 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %74, i32 %77)
  %79 = select i1 %76, float -0.000000e+00, float %74
  %80 = fadd contract float %78, %79
  %81 = icmp eq i32 %44, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %42
  %83 = lshr i32 %39, 6
  %84 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %83
  store float %80, ptr addrspace(3) %84, align 4, !tbaa !19, !noalias !558
  br label %85

85:                                               ; preds = %82, %42
  tail call void @llvm.bi.sl.barrier(), !noalias !558
  %86 = icmp eq i32 %39, 0
  br i1 %86, label %87, label %214

87:                                               ; preds = %85
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !558
  %89 = fadd contract float %80, %88
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !558
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !558
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !558
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !558
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !558
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !558
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !558
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !558
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !558
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !558
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !558
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !558
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !558
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !558
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !558
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !558
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !558
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !558
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !558
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !558
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !558
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !558
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !558
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !558
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !558
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !558
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !558
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !558
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !558
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !558
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !558
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !558
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !558
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !558
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !558
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !558
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !558
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !558
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !558
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !558
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !558
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !558
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !558
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !558
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !558
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !558
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !558
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !558
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !558
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !558
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !558
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !558
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !558
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !558
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !558
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !558
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !558
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !558
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !558
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !558
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !558
  %211 = fadd contract float %210, %209
  %212 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !558
  %213 = fadd contract float %212, %211
  br label %214

214:                                              ; preds = %87, %85
  %215 = phi float [ %213, %87 ], [ %80, %85 ]
  br i1 %86, label %229, label %265

216:                                              ; preds = %16, %216
  %217 = phi float [ %226, %216 ], [ 0.000000e+00, %16 ]
  %218 = phi i64 [ %227, %216 ], [ %40, %16 ]
  %219 = getelementptr inbounds float, ptr addrspace(1) %30, i64 %218
  %220 = load float, ptr addrspace(1) %219, align 4, !tbaa !19, !alias.scope !552, !noalias !559, !iluvatar.noclobber !18
  %221 = getelementptr inbounds float, ptr addrspace(1) %34, i64 %218
  %222 = load float, ptr addrspace(1) %221, align 4, !tbaa !19, !alias.scope !554, !noalias !560, !iluvatar.noclobber !18
  %223 = fadd contract float %220, %222
  %224 = getelementptr inbounds float, ptr addrspace(1) %38, i64 %218
  store float %223, ptr addrspace(1) %224, align 4, !tbaa !19, !alias.scope !550, !noalias !561
  %225 = fmul contract float %223, %223
  %226 = fadd contract float %217, %225
  %227 = add nuw i64 %218, 4096
  %228 = icmp ult i64 %227, %14
  br i1 %228, label %216, label %42, !llvm.loop !562

229:                                              ; preds = %214
  %230 = uitofp i64 %14 to float
  %231 = fdiv contract float %215, %230
  %232 = fadd contract float %231, %15
  %233 = tail call float @llvm.fabs.f32(float %232)
  %234 = fcmp contract olt float %233, 0x3810000000000000
  %235 = fmul contract float %232, 0x4170000000000000
  %236 = select i1 %234, float %235, float %232
  %237 = bitcast float %236 to i32
  %238 = add i32 %237, -8388608
  %239 = icmp ult i32 %238, 2130706432
  br i1 %239, label %240, label %261

240:                                              ; preds = %229
  %241 = and i32 %237, 16777215
  %242 = or disjoint i32 %241, 1056964608
  %243 = bitcast i32 %242 to float
  %244 = sub nsw i32 %242, %237
  %245 = add nsw i32 %244, 201326592
  %246 = select i1 %234, i32 %245, i32 %244
  %247 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %243) #7
  %248 = fmul contract float %247, %247
  %249 = fneg contract float %248
  %250 = tail call float @llvm.fma.f32(float %247, float %247, float %249)
  %251 = fneg contract float %243
  %252 = tail call float @llvm.fma.f32(float %248, float %251, float 1.000000e+00)
  %253 = tail call float @llvm.fma.f32(float %250, float %251, float %252)
  %254 = tail call float @llvm.fma.f32(float %253, float 3.750000e-01, float 5.000000e-01)
  %255 = fmul contract float %247, %253
  %256 = tail call float @llvm.fma.f32(float %254, float %255, float %247)
  %257 = ashr i32 %246, 1
  %258 = bitcast float %256 to i32
  %259 = add i32 %257, %258
  %260 = bitcast i32 %259 to float
  br label %263

261:                                              ; preds = %229
  %262 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %236) #7
  br label %263

263:                                              ; preds = %261, %240
  %264 = phi float [ %260, %240 ], [ %262, %261 ]
  store float %264, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !558
  br label %265

265:                                              ; preds = %263, %214
  tail call void @llvm.bi.sl.barrier(), !noalias !558
  br i1 %41, label %266, label %279

266:                                              ; preds = %265
  %267 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !558
  br label %268

268:                                              ; preds = %268, %266
  %269 = phi i64 [ %40, %266 ], [ %277, %268 ]
  %270 = getelementptr inbounds float, ptr addrspace(1) %38, i64 %269
  %271 = load float, ptr addrspace(1) %270, align 4, !tbaa !19, !alias.scope !550, !noalias !561
  %272 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %269
  %273 = load float, ptr addrspace(1) %272, align 4, !tbaa !19, !alias.scope !556, !noalias !563, !iluvatar.noclobber !18
  %274 = fmul contract float %271, %273
  %275 = fmul contract float %267, %274
  %276 = getelementptr inbounds float, ptr addrspace(1) %26, i64 %269
  store float %275, ptr addrspace(1) %276, align 4, !tbaa !19, !alias.scope !547, !noalias !564
  %277 = add nuw i64 %269, 4096
  %278 = icmp ult i64 %277, %14
  br i1 %278, label %268, label %279, !llvm.loop !565

279:                                              ; preds = %268, %265
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @llvm.nvvm.rsqrt.approx.ftz.f(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { convergent mustprogress norecurse nounwind "frame-pointer"="all" "kernel"="1" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ivcore20" "target-features"="+async-copy,+fp64,+ivcore20-insts,+mbarrier,+mma-dirconv,+mma-f32-mn16k8,+mma-i8-mn16k32,+mma-slim,+mma-sparse,+named-bar,+v4i8-alu,+vblk-insts" "uniform-work-group-size"="true" }
attributes #1 = { convergent nounwind }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nosync nounwind speculatable memory(none) }
attributes #4 = { convergent nofree nounwind memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 18.1.8 (4.3.0 5a0fa423713e78abbc6f3fb221fc702b511b56c5)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_Z16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!6 = distinct !{!6, !"_Z16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"_Z16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!9 = !{!10}
!10 = distinct !{!10, !6, !"_Z16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!11 = !{!12}
!12 = distinct !{!12, !6, !"_Z16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!13 = !{!14}
!14 = distinct !{!14, !6, !"_Z16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!15 = !{i32 0, i32 2147483647}
!16 = !{i32 0, i32 4096}
!17 = !{i32 0, i32 64}
!18 = !{}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C++ TBAA"}
!23 = !{!5, !8, !10, !12, !14}
!24 = !{i64 0, i64 2, !25}
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !21, i64 0}
!27 = !{!5, !8, !12, !14}
!28 = !{!5, !8, !10, !14}
!29 = !{!5, !10, !12, !14}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!5, !8, !10, !12}
!33 = !{!8, !10, !12, !14}
!34 = distinct !{!34, !31, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !31, !36, !35}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_Z16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 0"}
!40 = distinct !{!40, !"_Z16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"_Z16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 1"}
!43 = !{!44}
!44 = distinct !{!44, !40, !"_Z16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 2"}
!45 = !{!46}
!46 = distinct !{!46, !40, !"_Z16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 3"}
!47 = !{!48}
!48 = distinct !{!48, !40, !"_Z16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 4"}
!49 = !{!39, !42, !44, !46, !48}
!50 = !{!39, !42, !46, !48}
!51 = !{!39, !42, !44, !48}
!52 = !{!39, !44, !46, !48}
!53 = distinct !{!53, !31}
!54 = !{!39, !42, !44, !46}
!55 = !{!42, !44, !46, !48}
!56 = distinct !{!56, !31, !35, !36}
!57 = distinct !{!57, !31, !36, !35}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_Z16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!60 = distinct !{!60, !"_Z16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"_Z16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!63 = !{!64}
!64 = distinct !{!64, !60, !"_Z16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!65 = !{!66}
!66 = distinct !{!66, !60, !"_Z16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!67 = !{!68}
!68 = distinct !{!68, !60, !"_Z16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!69 = !{!59, !62, !64, !66, !68}
!70 = !{!59, !62, !66, !68}
!71 = !{!59, !62, !64, !68}
!72 = !{!59, !64, !66, !68}
!73 = distinct !{!73, !31}
!74 = !{!59, !62, !64, !66}
!75 = !{!62, !64, !66, !68}
!76 = distinct !{!76, !31}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!79 = distinct !{!79, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!80 = !{!81}
!81 = distinct !{!81, !79, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!82 = !{!83}
!83 = distinct !{!83, !79, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!84 = !{!85}
!85 = distinct !{!85, !79, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!86 = !{!87}
!87 = distinct !{!87, !79, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!88 = !{!78, !81, !83, !85, !87}
!89 = !{!78, !81, !85, !87}
!90 = !{!78, !81, !83, !87}
!91 = !{!78, !83, !85, !87}
!92 = distinct !{!92, !31}
!93 = !{!78, !81, !83, !85}
!94 = !{!81, !83, !85, !87}
!95 = distinct !{!95, !31, !35, !36}
!96 = distinct !{!96, !31, !36, !35}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 0"}
!99 = distinct !{!99, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 1"}
!102 = !{!103}
!103 = distinct !{!103, !99, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 2"}
!104 = !{!105}
!105 = distinct !{!105, !99, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 3"}
!106 = !{!107}
!107 = distinct !{!107, !99, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 4"}
!108 = !{!98, !101, !103, !105, !107}
!109 = !{!98, !101, !105, !107}
!110 = !{!98, !101, !103, !107}
!111 = !{!98, !103, !105, !107}
!112 = distinct !{!112, !31}
!113 = !{!98, !101, !103, !105}
!114 = !{!101, !103, !105, !107}
!115 = distinct !{!115, !31, !35, !36}
!116 = distinct !{!116, !31, !36, !35}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!119 = distinct !{!119, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!120 = !{!121}
!121 = distinct !{!121, !119, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!122 = !{!123}
!123 = distinct !{!123, !119, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!124 = !{!125}
!125 = distinct !{!125, !119, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!126 = !{!127}
!127 = distinct !{!127, !119, !"_Z16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!128 = !{!118, !121, !123, !125, !127}
!129 = !{!118, !121, !125, !127}
!130 = !{!118, !121, !123, !127}
!131 = !{!118, !123, !125, !127}
!132 = distinct !{!132, !31}
!133 = !{!118, !121, !123, !125}
!134 = !{!121, !123, !125, !127}
!135 = distinct !{!135, !31}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_Z16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 0"}
!138 = distinct !{!138, !"_Z16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"_Z16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 1"}
!141 = !{!142}
!142 = distinct !{!142, !138, !"_Z16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 2"}
!143 = !{!144}
!144 = distinct !{!144, !138, !"_Z16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 3"}
!145 = !{!146}
!146 = distinct !{!146, !138, !"_Z16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 4"}
!147 = !{!137, !140, !142, !144, !146}
!148 = !{!137, !140, !144, !146}
!149 = !{!137, !140, !142, !146}
!150 = !{!137, !142, !144, !146}
!151 = distinct !{!151, !31}
!152 = !{!137, !140, !142, !144}
!153 = !{!140, !142, !144, !146}
!154 = distinct !{!154, !31}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_Z16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!157 = distinct !{!157, !"_Z16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"_Z16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!160 = !{!161}
!161 = distinct !{!161, !157, !"_Z16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!162 = !{!163}
!163 = distinct !{!163, !157, !"_Z16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!164 = !{!165}
!165 = distinct !{!165, !157, !"_Z16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!166 = !{!156, !159, !161, !163, !165}
!167 = !{!156, !159, !163, !165}
!168 = !{!156, !159, !161, !165}
!169 = !{!156, !161, !163, !165}
!170 = distinct !{!170, !31}
!171 = !{!156, !159, !161, !163}
!172 = !{!159, !161, !163, !165}
!173 = distinct !{!173, !31, !35, !36}
!174 = distinct !{!174, !31, !36, !35}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_Z16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 0"}
!177 = distinct !{!177, !"_Z16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf"}
!178 = !{!179}
!179 = distinct !{!179, !177, !"_Z16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 1"}
!180 = !{!181}
!181 = distinct !{!181, !177, !"_Z16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 2"}
!182 = !{!183}
!183 = distinct !{!183, !177, !"_Z16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 3"}
!184 = !{!185}
!185 = distinct !{!185, !177, !"_Z16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 4"}
!186 = !{!176, !179, !181, !183, !185}
!187 = !{!176, !179, !183, !185}
!188 = !{!176, !179, !181, !185}
!189 = !{!176, !181, !183, !185}
!190 = distinct !{!190, !31}
!191 = !{!176, !179, !181, !183}
!192 = !{!179, !181, !183, !185}
!193 = distinct !{!193, !31, !35, !36}
!194 = distinct !{!194, !31, !36, !35}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_Z16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!197 = distinct !{!197, !"_Z16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!198 = !{!199}
!199 = distinct !{!199, !197, !"_Z16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!200 = !{!201}
!201 = distinct !{!201, !197, !"_Z16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!202 = !{!203}
!203 = distinct !{!203, !197, !"_Z16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!204 = !{!205}
!205 = distinct !{!205, !197, !"_Z16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!206 = !{!196, !199, !201, !203, !205}
!207 = !{!196, !199, !203, !205}
!208 = !{!196, !199, !201, !205}
!209 = !{!196, !201, !203, !205}
!210 = distinct !{!210, !31}
!211 = !{!196, !199, !201, !203}
!212 = !{!199, !201, !203, !205}
!213 = distinct !{!213, !31}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!216 = distinct !{!216, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!217 = !{!218}
!218 = distinct !{!218, !216, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!219 = !{!220}
!220 = distinct !{!220, !216, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!221 = !{!222}
!222 = distinct !{!222, !216, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!223 = !{!224}
!224 = distinct !{!224, !216, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!225 = !{!215, !218, !220, !222, !224}
!226 = !{!215, !218, !222, !224}
!227 = !{!215, !218, !220, !224}
!228 = !{!215, !220, !222, !224}
!229 = distinct !{!229, !31}
!230 = !{!215, !218, !220, !222}
!231 = !{!218, !220, !222, !224}
!232 = distinct !{!232, !31, !35, !36}
!233 = distinct !{!233, !31, !36, !35}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 0"}
!236 = distinct !{!236, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf"}
!237 = !{!238}
!238 = distinct !{!238, !236, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 1"}
!239 = !{!240}
!240 = distinct !{!240, !236, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 2"}
!241 = !{!242}
!242 = distinct !{!242, !236, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 3"}
!243 = !{!244}
!244 = distinct !{!244, !236, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 4"}
!245 = !{!235, !238, !240, !242, !244}
!246 = !{!235, !238, !242, !244}
!247 = !{!235, !238, !240, !244}
!248 = !{!235, !240, !242, !244}
!249 = distinct !{!249, !31}
!250 = !{!235, !238, !240, !242}
!251 = !{!238, !240, !242, !244}
!252 = distinct !{!252, !31, !35, !36}
!253 = distinct !{!253, !31, !36, !35}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!256 = distinct !{!256, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!257 = !{!258}
!258 = distinct !{!258, !256, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!259 = !{!260}
!260 = distinct !{!260, !256, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!261 = !{!262}
!262 = distinct !{!262, !256, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!263 = !{!264}
!264 = distinct !{!264, !256, !"_Z16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!265 = !{!255, !258, !260, !262, !264}
!266 = !{!255, !258, !262, !264}
!267 = !{!255, !258, !260, !264}
!268 = !{!255, !260, !262, !264}
!269 = distinct !{!269, !31}
!270 = !{!255, !258, !260, !262}
!271 = !{!258, !260, !262, !264}
!272 = distinct !{!272, !31}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_Z16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 0"}
!275 = distinct !{!275, !"_Z16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf"}
!276 = !{!277}
!277 = distinct !{!277, !275, !"_Z16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 1"}
!278 = !{!279}
!279 = distinct !{!279, !275, !"_Z16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 2"}
!280 = !{!281}
!281 = distinct !{!281, !275, !"_Z16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 3"}
!282 = !{!283}
!283 = distinct !{!283, !275, !"_Z16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 4"}
!284 = !{!274, !277, !279, !281, !283}
!285 = !{!274, !277, !281, !283}
!286 = !{!274, !277, !279, !283}
!287 = !{!274, !279, !281, !283}
!288 = distinct !{!288, !31}
!289 = !{!274, !277, !279, !281}
!290 = !{!277, !279, !281, !283}
!291 = distinct !{!291, !31}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_Z16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!294 = distinct !{!294, !"_Z16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!295 = !{!296}
!296 = distinct !{!296, !294, !"_Z16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!297 = !{!298}
!298 = distinct !{!298, !294, !"_Z16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!299 = !{!300}
!300 = distinct !{!300, !294, !"_Z16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!301 = !{!302}
!302 = distinct !{!302, !294, !"_Z16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!303 = !{!293, !296, !298, !300, !302}
!304 = !{!293, !296, !300, !302}
!305 = !{!293, !296, !298, !302}
!306 = !{!293, !298, !300, !302}
!307 = distinct !{!307, !31}
!308 = !{!293, !296, !298, !300}
!309 = !{!296, !298, !300, !302}
!310 = distinct !{!310, !31, !35, !36}
!311 = distinct !{!311, !31, !36, !35}
!312 = !{!313}
!313 = distinct !{!313, !314, !"_Z16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 0"}
!314 = distinct !{!314, !"_Z16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"_Z16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 1"}
!317 = !{!318}
!318 = distinct !{!318, !314, !"_Z16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 2"}
!319 = !{!320}
!320 = distinct !{!320, !314, !"_Z16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 3"}
!321 = !{!322}
!322 = distinct !{!322, !314, !"_Z16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 4"}
!323 = !{!313, !316, !318, !320, !322}
!324 = !{!313, !316, !320, !322}
!325 = !{!313, !316, !318, !322}
!326 = !{!313, !318, !320, !322}
!327 = distinct !{!327, !31}
!328 = !{!313, !316, !318, !320}
!329 = !{!316, !318, !320, !322}
!330 = distinct !{!330, !31, !35, !36}
!331 = distinct !{!331, !31, !36, !35}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_Z16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!334 = distinct !{!334, !"_Z16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!335 = !{!336}
!336 = distinct !{!336, !334, !"_Z16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!337 = !{!338}
!338 = distinct !{!338, !334, !"_Z16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!339 = !{!340}
!340 = distinct !{!340, !334, !"_Z16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!341 = !{!342}
!342 = distinct !{!342, !334, !"_Z16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!343 = !{!333, !336, !338, !340, !342}
!344 = !{!333, !336, !340, !342}
!345 = !{!333, !336, !338, !342}
!346 = !{!333, !338, !340, !342}
!347 = distinct !{!347, !31}
!348 = !{!333, !336, !338, !340}
!349 = !{!336, !338, !340, !342}
!350 = distinct !{!350, !31}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!353 = distinct !{!353, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!354 = !{!355}
!355 = distinct !{!355, !353, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!356 = !{!357}
!357 = distinct !{!357, !353, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!358 = !{!359}
!359 = distinct !{!359, !353, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!360 = !{!361}
!361 = distinct !{!361, !353, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!362 = !{!352, !355, !357, !359, !361}
!363 = !{!352, !355, !359, !361}
!364 = !{!352, !355, !357, !361}
!365 = !{!352, !357, !359, !361}
!366 = distinct !{!366, !31}
!367 = !{!352, !355, !357, !359}
!368 = !{!355, !357, !359, !361}
!369 = distinct !{!369, !31, !35, !36}
!370 = distinct !{!370, !31, !36, !35}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 0"}
!373 = distinct !{!373, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf"}
!374 = !{!375}
!375 = distinct !{!375, !373, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 1"}
!376 = !{!377}
!377 = distinct !{!377, !373, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 2"}
!378 = !{!379}
!379 = distinct !{!379, !373, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 3"}
!380 = !{!381}
!381 = distinct !{!381, !373, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 4"}
!382 = !{!372, !375, !377, !379, !381}
!383 = !{!372, !375, !379, !381}
!384 = !{!372, !375, !377, !381}
!385 = !{!372, !377, !379, !381}
!386 = distinct !{!386, !31}
!387 = !{!372, !375, !377, !379}
!388 = !{!375, !377, !379, !381}
!389 = distinct !{!389, !31, !35, !36}
!390 = distinct !{!390, !31, !36, !35}
!391 = !{!392}
!392 = distinct !{!392, !393, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!393 = distinct !{!393, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!394 = !{!395}
!395 = distinct !{!395, !393, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!396 = !{!397}
!397 = distinct !{!397, !393, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!398 = !{!399}
!399 = distinct !{!399, !393, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!400 = !{!401}
!401 = distinct !{!401, !393, !"_Z16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!402 = !{!392, !395, !397, !399, !401}
!403 = !{!392, !395, !399, !401}
!404 = !{!392, !395, !397, !401}
!405 = !{!392, !397, !399, !401}
!406 = distinct !{!406, !31}
!407 = !{!392, !395, !397, !399}
!408 = !{!395, !397, !399, !401}
!409 = distinct !{!409, !31}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_Z16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 0"}
!412 = distinct !{!412, !"_Z16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf"}
!413 = !{!414}
!414 = distinct !{!414, !412, !"_Z16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 1"}
!415 = !{!416}
!416 = distinct !{!416, !412, !"_Z16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 2"}
!417 = !{!418}
!418 = distinct !{!418, !412, !"_Z16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 3"}
!419 = !{!420}
!420 = distinct !{!420, !412, !"_Z16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 4"}
!421 = !{!411, !414, !416, !418, !420}
!422 = !{!411, !414, !418, !420}
!423 = !{!411, !414, !416, !420}
!424 = !{!411, !416, !418, !420}
!425 = distinct !{!425, !31}
!426 = !{!411, !414, !416, !418}
!427 = !{!414, !416, !418, !420}
!428 = distinct !{!428, !31}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_Z16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!431 = distinct !{!431, !"_Z16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!432 = !{!433}
!433 = distinct !{!433, !431, !"_Z16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!434 = !{!435}
!435 = distinct !{!435, !431, !"_Z16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!436 = !{!437}
!437 = distinct !{!437, !431, !"_Z16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!438 = !{!439}
!439 = distinct !{!439, !431, !"_Z16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!440 = !{!430, !433, !435, !437, !439}
!441 = !{!430, !433, !437, !439}
!442 = !{!430, !433, !435, !439}
!443 = !{!430, !435, !437, !439}
!444 = distinct !{!444, !31}
!445 = !{!430, !433, !435, !437}
!446 = !{!433, !435, !437, !439}
!447 = distinct !{!447, !31, !35, !36}
!448 = distinct !{!448, !31, !36, !35}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_Z16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 0"}
!451 = distinct !{!451, !"_Z16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf"}
!452 = !{!453}
!453 = distinct !{!453, !451, !"_Z16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 1"}
!454 = !{!455}
!455 = distinct !{!455, !451, !"_Z16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 2"}
!456 = !{!457}
!457 = distinct !{!457, !451, !"_Z16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 3"}
!458 = !{!459}
!459 = distinct !{!459, !451, !"_Z16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 4"}
!460 = !{!450, !453, !455, !457, !459}
!461 = !{!450, !453, !457, !459}
!462 = !{!450, !453, !455, !459}
!463 = !{!450, !455, !457, !459}
!464 = distinct !{!464, !31}
!465 = !{!450, !453, !455, !457}
!466 = !{!453, !455, !457, !459}
!467 = distinct !{!467, !31, !35, !36}
!468 = distinct !{!468, !31, !36, !35}
!469 = !{!470}
!470 = distinct !{!470, !471, !"_Z16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!471 = distinct !{!471, !"_Z16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!472 = !{!473}
!473 = distinct !{!473, !471, !"_Z16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!474 = !{!475}
!475 = distinct !{!475, !471, !"_Z16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!476 = !{!477}
!477 = distinct !{!477, !471, !"_Z16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!478 = !{!479}
!479 = distinct !{!479, !471, !"_Z16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!480 = !{!470, !473, !475, !477, !479}
!481 = !{!470, !473, !477, !479}
!482 = !{!470, !473, !475, !479}
!483 = !{!470, !475, !477, !479}
!484 = distinct !{!484, !31}
!485 = !{!470, !473, !475, !477}
!486 = !{!473, !475, !477, !479}
!487 = distinct !{!487, !31}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!490 = distinct !{!490, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!491 = !{!492}
!492 = distinct !{!492, !490, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!493 = !{!494}
!494 = distinct !{!494, !490, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!495 = !{!496}
!496 = distinct !{!496, !490, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!497 = !{!498}
!498 = distinct !{!498, !490, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!499 = !{!489, !492, !494, !496, !498}
!500 = !{!489, !492, !496, !498}
!501 = !{!489, !492, !494, !498}
!502 = !{!489, !494, !496, !498}
!503 = distinct !{!503, !31}
!504 = !{!489, !492, !494, !496}
!505 = !{!492, !494, !496, !498}
!506 = distinct !{!506, !31, !35, !36}
!507 = distinct !{!507, !31, !36, !35}
!508 = !{!509}
!509 = distinct !{!509, !510, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 0"}
!510 = distinct !{!510, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf"}
!511 = !{!512}
!512 = distinct !{!512, !510, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 1"}
!513 = !{!514}
!514 = distinct !{!514, !510, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 2"}
!515 = !{!516}
!516 = distinct !{!516, !510, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 3"}
!517 = !{!518}
!518 = distinct !{!518, !510, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmf: argument 4"}
!519 = !{!509, !512, !514, !516, !518}
!520 = !{!509, !512, !516, !518}
!521 = !{!509, !512, !514, !518}
!522 = !{!509, !514, !516, !518}
!523 = distinct !{!523, !31}
!524 = !{!509, !512, !514, !516}
!525 = !{!512, !514, !516, !518}
!526 = distinct !{!526, !31, !35, !36}
!527 = distinct !{!527, !31, !36, !35}
!528 = !{!529}
!529 = distinct !{!529, !530, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 0"}
!530 = distinct !{!530, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf"}
!531 = !{!532}
!532 = distinct !{!532, !530, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 1"}
!533 = !{!534}
!534 = distinct !{!534, !530, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 2"}
!535 = !{!536}
!536 = distinct !{!536, !530, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 3"}
!537 = !{!538}
!538 = distinct !{!538, !530, !"_Z16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmf: argument 4"}
!539 = !{!529, !532, !534, !536, !538}
!540 = !{!529, !532, !536, !538}
!541 = !{!529, !532, !534, !538}
!542 = !{!529, !534, !536, !538}
!543 = distinct !{!543, !31}
!544 = !{!529, !532, !534, !536}
!545 = !{!532, !534, !536, !538}
!546 = distinct !{!546, !31}
!547 = !{!548}
!548 = distinct !{!548, !549, !"_Z16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 0"}
!549 = distinct !{!549, !"_Z16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf"}
!550 = !{!551}
!551 = distinct !{!551, !549, !"_Z16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 1"}
!552 = !{!553}
!553 = distinct !{!553, !549, !"_Z16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 2"}
!554 = !{!555}
!555 = distinct !{!555, !549, !"_Z16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 3"}
!556 = !{!557}
!557 = distinct !{!557, !549, !"_Z16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmf: argument 4"}
!558 = !{!548, !551, !553, !555, !557}
!559 = !{!548, !551, !555, !557}
!560 = !{!548, !551, !553, !557}
!561 = !{!548, !553, !555, !557}
!562 = distinct !{!562, !31}
!563 = !{!548, !551, !553, !555}
!564 = !{!551, !553, !555, !557}
!565 = distinct !{!565, !31}
