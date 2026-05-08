; ModuleID = 'op.ll'
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %114, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !23
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !23
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !23
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !23
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !23
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !23
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !23
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !23
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !23
  %99 = fadd contract float %98, %97
  br label %100

100:                                              ; preds = %85, %83
  %101 = phi float [ %99, %85 ], [ %78, %83 ]
  br i1 %84, label %117, label %153

.preheader:                                       ; preds = %16, %.preheader
  %102 = phi float [ %114, %.preheader ], [ 0.000000e+00, %16 ]
  %103 = phi i64 [ %115, %.preheader ], [ %39, %16 ]
  %104 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %103
  %105 = load half, ptr addrspace(1) %104, align 2, !tbaa.struct !24, !alias.scope !9, !noalias !27, !iluvatar.noclobber !18
  %106 = fpext half %105 to float
  %107 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %103
  %108 = load half, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !11, !noalias !28, !iluvatar.noclobber !18
  %109 = fpext half %108 to float
  %110 = fadd contract float %106, %109
  %111 = fptrunc float %110 to half
  %112 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %103
  store half %111, ptr addrspace(1) %112, align 2, !tbaa !25, !alias.scope !7, !noalias !29
  %113 = fmul contract float %110, %110
  %114 = fadd contract float %102, %113
  %115 = add i64 %103, 512
  %116 = icmp ult i64 %115, %14
  br i1 %116, label %.preheader, label %.loopexit3, !llvm.loop !30

117:                                              ; preds = %100
  %118 = uitofp i64 %14 to float
  %119 = fdiv contract float %101, %118
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
  store float %152, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !23
  br label %153

153:                                              ; preds = %151, %100
  tail call void @llvm.bi.sl.barrier(), !noalias !23
  br i1 %40, label %154, label %.loopexit

154:                                              ; preds = %153
  %155 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !23
  %156 = xor i64 %39, -1
  %157 = add i64 %156, %14
  %158 = lshr i64 %157, 9
  %159 = add nuw nsw i64 %158, 1
  %160 = icmp ult i64 %157, 512
  br i1 %160, label %.preheader4, label %161

161:                                              ; preds = %154
  %162 = and i64 %159, 72057594037927934
  %163 = shl i64 %162, 9
  %164 = insertelement <2 x float> poison, float %155, i64 0
  %165 = shufflevector <2 x float> %164, <2 x float> poison, <2 x i32> zeroinitializer
  br label %166

166:                                              ; preds = %166, %161
  %167 = phi i64 [ 0, %161 ], [ %192, %166 ]
  %168 = shl i64 %167, 9
  %169 = add i64 %168, %39
  %170 = add i64 %169, 512
  %171 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %169
  %172 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %170
  %173 = load half, ptr addrspace(1) %171, align 2, !tbaa.struct !24, !alias.scope !7, !noalias !29
  %174 = load half, ptr addrspace(1) %172, align 2, !tbaa.struct !24, !alias.scope !7, !noalias !29
  %175 = insertelement <2 x half> poison, half %173, i64 0
  %176 = insertelement <2 x half> %175, half %174, i64 1
  %177 = fpext <2 x half> %176 to <2 x float>
  %178 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %169
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %170
  %180 = load half, ptr addrspace(1) %178, align 2, !tbaa.struct !24, !alias.scope !13, !noalias !32, !iluvatar.noclobber !18
  %181 = load half, ptr addrspace(1) %179, align 2, !tbaa.struct !24, !alias.scope !13, !noalias !32, !iluvatar.noclobber !18
  %182 = insertelement <2 x half> poison, half %180, i64 0
  %183 = insertelement <2 x half> %182, half %181, i64 1
  %184 = fpext <2 x half> %183 to <2 x float>
  %185 = fmul contract <2 x float> %177, %184
  %186 = fmul contract <2 x float> %165, %185
  %187 = fptrunc <2 x float> %186 to <2 x half>
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %169
  %189 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %170
  %190 = extractelement <2 x half> %187, i64 0
  store half %190, ptr addrspace(1) %188, align 2, !tbaa !25, !alias.scope !4, !noalias !33
  %191 = extractelement <2 x half> %187, i64 1
  store half %191, ptr addrspace(1) %189, align 2, !tbaa !25, !alias.scope !4, !noalias !33
  %192 = add nuw i64 %167, 2
  %193 = icmp eq i64 %192, %162
  br i1 %193, label %194, label %166, !llvm.loop !34

194:                                              ; preds = %166
  %195 = add i64 %163, %39
  %196 = icmp eq i64 %159, %162
  br i1 %196, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %194, %154
  %.ph = phi i64 [ %195, %194 ], [ %39, %154 ]
  br label %197

197:                                              ; preds = %.preheader4, %197
  %198 = phi i64 [ %209, %197 ], [ %.ph, %.preheader4 ]
  %199 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %198
  %200 = load half, ptr addrspace(1) %199, align 2, !tbaa.struct !24, !alias.scope !7, !noalias !29
  %201 = fpext half %200 to float
  %202 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %198
  %203 = load half, ptr addrspace(1) %202, align 2, !tbaa.struct !24, !alias.scope !13, !noalias !32, !iluvatar.noclobber !18
  %204 = fpext half %203 to float
  %205 = fmul contract float %201, %204
  %206 = fmul contract float %155, %205
  %207 = fptrunc float %206 to half
  %208 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %198
  store half %207, ptr addrspace(1) %208, align 2, !tbaa !25, !alias.scope !4, !noalias !33
  %209 = add i64 %198, 512
  %210 = icmp ult i64 %209, %14
  br i1 %210, label %197, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %197, %194, %153
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %114, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !49
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !49
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !49
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !49
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !49
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !49
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !49
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !49
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !49
  %99 = fadd contract float %98, %97
  br label %100

100:                                              ; preds = %85, %83
  %101 = phi float [ %99, %85 ], [ %78, %83 ]
  br i1 %84, label %117, label %153

.preheader:                                       ; preds = %16, %.preheader
  %102 = phi float [ %114, %.preheader ], [ 0.000000e+00, %16 ]
  %103 = phi i64 [ %115, %.preheader ], [ %39, %16 ]
  %104 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %103
  %105 = load half, ptr addrspace(1) %104, align 2, !tbaa.struct !24, !alias.scope !43, !noalias !50, !iluvatar.noclobber !18
  %106 = fpext half %105 to float
  %107 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %103
  %108 = load half, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !45, !noalias !51, !iluvatar.noclobber !18
  %109 = fpext half %108 to float
  %110 = fadd contract float %106, %109
  %111 = fptrunc float %110 to half
  %112 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %103
  store half %111, ptr addrspace(1) %112, align 2, !tbaa !25, !alias.scope !41, !noalias !52
  %113 = fmul contract float %110, %110
  %114 = fadd contract float %102, %113
  %115 = add i64 %103, 512
  %116 = icmp ult i64 %115, %14
  br i1 %116, label %.preheader, label %.loopexit3, !llvm.loop !53

117:                                              ; preds = %100
  %118 = uitofp i64 %14 to float
  %119 = fdiv contract float %101, %118
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
  store float %152, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !49
  br label %153

153:                                              ; preds = %151, %100
  tail call void @llvm.bi.sl.barrier(), !noalias !49
  br i1 %40, label %154, label %.loopexit

154:                                              ; preds = %153
  %155 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !49
  %156 = xor i64 %39, -1
  %157 = add i64 %156, %14
  %158 = lshr i64 %157, 9
  %159 = add nuw nsw i64 %158, 1
  %160 = icmp ult i64 %157, 512
  br i1 %160, label %.preheader4, label %161

161:                                              ; preds = %154
  %162 = and i64 %159, 72057594037927934
  %163 = shl i64 %162, 9
  %164 = insertelement <2 x float> poison, float %155, i64 0
  %165 = shufflevector <2 x float> %164, <2 x float> poison, <2 x i32> zeroinitializer
  br label %166

166:                                              ; preds = %166, %161
  %167 = phi i64 [ 0, %161 ], [ %192, %166 ]
  %168 = shl i64 %167, 9
  %169 = add i64 %168, %39
  %170 = add i64 %169, 512
  %171 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %169
  %172 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %170
  %173 = load half, ptr addrspace(1) %171, align 2, !tbaa.struct !24, !alias.scope !41, !noalias !52
  %174 = load half, ptr addrspace(1) %172, align 2, !tbaa.struct !24, !alias.scope !41, !noalias !52
  %175 = insertelement <2 x half> poison, half %173, i64 0
  %176 = insertelement <2 x half> %175, half %174, i64 1
  %177 = fpext <2 x half> %176 to <2 x float>
  %178 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %169
  %179 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %170
  %180 = load bfloat, ptr addrspace(1) %178, align 2, !tbaa.struct !24, !alias.scope !47, !noalias !54, !iluvatar.noclobber !18
  %181 = load bfloat, ptr addrspace(1) %179, align 2, !tbaa.struct !24, !alias.scope !47, !noalias !54, !iluvatar.noclobber !18
  %182 = insertelement <2 x bfloat> poison, bfloat %180, i64 0
  %183 = insertelement <2 x bfloat> %182, bfloat %181, i64 1
  %184 = fpext <2 x bfloat> %183 to <2 x float>
  %185 = fmul contract <2 x float> %177, %184
  %186 = fmul contract <2 x float> %165, %185
  %187 = fptrunc <2 x float> %186 to <2 x half>
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %169
  %189 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %170
  %190 = extractelement <2 x half> %187, i64 0
  store half %190, ptr addrspace(1) %188, align 2, !tbaa !25, !alias.scope !38, !noalias !55
  %191 = extractelement <2 x half> %187, i64 1
  store half %191, ptr addrspace(1) %189, align 2, !tbaa !25, !alias.scope !38, !noalias !55
  %192 = add nuw i64 %167, 2
  %193 = icmp eq i64 %192, %162
  br i1 %193, label %194, label %166, !llvm.loop !56

194:                                              ; preds = %166
  %195 = add i64 %163, %39
  %196 = icmp eq i64 %159, %162
  br i1 %196, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %194, %154
  %.ph = phi i64 [ %195, %194 ], [ %39, %154 ]
  br label %197

197:                                              ; preds = %.preheader4, %197
  %198 = phi i64 [ %209, %197 ], [ %.ph, %.preheader4 ]
  %199 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %198
  %200 = load half, ptr addrspace(1) %199, align 2, !tbaa.struct !24, !alias.scope !41, !noalias !52
  %201 = fpext half %200 to float
  %202 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %198
  %203 = load bfloat, ptr addrspace(1) %202, align 2, !tbaa.struct !24, !alias.scope !47, !noalias !54, !iluvatar.noclobber !18
  %204 = fpext bfloat %203 to float
  %205 = fmul contract float %201, %204
  %206 = fmul contract float %155, %205
  %207 = fptrunc float %206 to half
  %208 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %198
  store half %207, ptr addrspace(1) %208, align 2, !tbaa !25, !alias.scope !38, !noalias !55
  %209 = add i64 %198, 512
  %210 = icmp ult i64 %209, %14
  br i1 %210, label %197, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %197, %194, %153
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %114, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !69
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !69
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !69
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !69
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !69
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !69
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !69
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !69
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !69
  %99 = fadd contract float %98, %97
  br label %100

100:                                              ; preds = %85, %83
  %101 = phi float [ %99, %85 ], [ %78, %83 ]
  br i1 %84, label %117, label %153

.preheader:                                       ; preds = %16, %.preheader
  %102 = phi float [ %114, %.preheader ], [ 0.000000e+00, %16 ]
  %103 = phi i64 [ %115, %.preheader ], [ %39, %16 ]
  %104 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %103
  %105 = load half, ptr addrspace(1) %104, align 2, !tbaa.struct !24, !alias.scope !63, !noalias !70, !iluvatar.noclobber !18
  %106 = fpext half %105 to float
  %107 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %103
  %108 = load half, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !65, !noalias !71, !iluvatar.noclobber !18
  %109 = fpext half %108 to float
  %110 = fadd contract float %106, %109
  %111 = fptrunc float %110 to half
  %112 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %103
  store half %111, ptr addrspace(1) %112, align 2, !tbaa !25, !alias.scope !61, !noalias !72
  %113 = fmul contract float %110, %110
  %114 = fadd contract float %102, %113
  %115 = add i64 %103, 512
  %116 = icmp ult i64 %115, %14
  br i1 %116, label %.preheader, label %.loopexit2, !llvm.loop !73

117:                                              ; preds = %100
  %118 = uitofp i64 %14 to float
  %119 = fdiv contract float %101, %118
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
  store float %152, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !69
  br label %153

153:                                              ; preds = %151, %100
  tail call void @llvm.bi.sl.barrier(), !noalias !69
  br i1 %40, label %154, label %.loopexit

154:                                              ; preds = %153
  %155 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !69
  br label %156

156:                                              ; preds = %156, %154
  %157 = phi i64 [ %39, %154 ], [ %167, %156 ]
  %158 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %157
  %159 = load half, ptr addrspace(1) %158, align 2, !tbaa.struct !24, !alias.scope !61, !noalias !72
  %160 = fpext half %159 to float
  %161 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %157
  %162 = load float, ptr addrspace(1) %161, align 4, !tbaa !19, !alias.scope !67, !noalias !74, !iluvatar.noclobber !18
  %163 = fmul contract float %162, %160
  %164 = fmul contract float %155, %163
  %165 = fptrunc float %164 to half
  %166 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %157
  store half %165, ptr addrspace(1) %166, align 2, !tbaa !25, !alias.scope !58, !noalias !75
  %167 = add i64 %157, 512
  %168 = icmp ult i64 %167, %14
  br i1 %168, label %156, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %156, %153
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %114, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !88
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !88
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !88
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !88
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !88
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !88
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !88
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !88
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !88
  %99 = fadd contract float %98, %97
  br label %100

100:                                              ; preds = %85, %83
  %101 = phi float [ %99, %85 ], [ %78, %83 ]
  br i1 %84, label %117, label %153

.preheader:                                       ; preds = %16, %.preheader
  %102 = phi float [ %114, %.preheader ], [ 0.000000e+00, %16 ]
  %103 = phi i64 [ %115, %.preheader ], [ %39, %16 ]
  %104 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %103
  %105 = load bfloat, ptr addrspace(1) %104, align 2, !tbaa.struct !24, !alias.scope !82, !noalias !89, !iluvatar.noclobber !18
  %106 = fpext bfloat %105 to float
  %107 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %103
  %108 = load bfloat, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !84, !noalias !90, !iluvatar.noclobber !18
  %109 = fpext bfloat %108 to float
  %110 = fadd contract float %106, %109
  %111 = fptrunc float %110 to bfloat
  %112 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %103
  store bfloat %111, ptr addrspace(1) %112, align 2, !tbaa !25, !alias.scope !80, !noalias !91
  %113 = fmul contract float %110, %110
  %114 = fadd contract float %102, %113
  %115 = add i64 %103, 512
  %116 = icmp ult i64 %115, %14
  br i1 %116, label %.preheader, label %.loopexit3, !llvm.loop !92

117:                                              ; preds = %100
  %118 = uitofp i64 %14 to float
  %119 = fdiv contract float %101, %118
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
  store float %152, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !88
  br label %153

153:                                              ; preds = %151, %100
  tail call void @llvm.bi.sl.barrier(), !noalias !88
  br i1 %40, label %154, label %.loopexit

154:                                              ; preds = %153
  %155 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !88
  %156 = xor i64 %39, -1
  %157 = add i64 %156, %14
  %158 = lshr i64 %157, 9
  %159 = add nuw nsw i64 %158, 1
  %160 = icmp ult i64 %157, 512
  br i1 %160, label %.preheader4, label %161

161:                                              ; preds = %154
  %162 = and i64 %159, 72057594037927934
  %163 = shl i64 %162, 9
  %164 = insertelement <2 x float> poison, float %155, i64 0
  %165 = shufflevector <2 x float> %164, <2 x float> poison, <2 x i32> zeroinitializer
  br label %166

166:                                              ; preds = %166, %161
  %167 = phi i64 [ 0, %161 ], [ %192, %166 ]
  %168 = shl i64 %167, 9
  %169 = add i64 %168, %39
  %170 = add i64 %169, 512
  %171 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %169
  %172 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %170
  %173 = load bfloat, ptr addrspace(1) %171, align 2, !tbaa.struct !24, !alias.scope !80, !noalias !91
  %174 = load bfloat, ptr addrspace(1) %172, align 2, !tbaa.struct !24, !alias.scope !80, !noalias !91
  %175 = insertelement <2 x bfloat> poison, bfloat %173, i64 0
  %176 = insertelement <2 x bfloat> %175, bfloat %174, i64 1
  %177 = fpext <2 x bfloat> %176 to <2 x float>
  %178 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %169
  %179 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %170
  %180 = load bfloat, ptr addrspace(1) %178, align 2, !tbaa.struct !24, !alias.scope !86, !noalias !93, !iluvatar.noclobber !18
  %181 = load bfloat, ptr addrspace(1) %179, align 2, !tbaa.struct !24, !alias.scope !86, !noalias !93, !iluvatar.noclobber !18
  %182 = insertelement <2 x bfloat> poison, bfloat %180, i64 0
  %183 = insertelement <2 x bfloat> %182, bfloat %181, i64 1
  %184 = fpext <2 x bfloat> %183 to <2 x float>
  %185 = fmul contract <2 x float> %177, %184
  %186 = fmul contract <2 x float> %165, %185
  %187 = fptrunc <2 x float> %186 to <2 x bfloat>
  %188 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %169
  %189 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %170
  %190 = extractelement <2 x bfloat> %187, i64 0
  store bfloat %190, ptr addrspace(1) %188, align 2, !tbaa !25, !alias.scope !77, !noalias !94
  %191 = extractelement <2 x bfloat> %187, i64 1
  store bfloat %191, ptr addrspace(1) %189, align 2, !tbaa !25, !alias.scope !77, !noalias !94
  %192 = add nuw i64 %167, 2
  %193 = icmp eq i64 %192, %162
  br i1 %193, label %194, label %166, !llvm.loop !95

194:                                              ; preds = %166
  %195 = add i64 %163, %39
  %196 = icmp eq i64 %159, %162
  br i1 %196, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %194, %154
  %.ph = phi i64 [ %195, %194 ], [ %39, %154 ]
  br label %197

197:                                              ; preds = %.preheader4, %197
  %198 = phi i64 [ %209, %197 ], [ %.ph, %.preheader4 ]
  %199 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %198
  %200 = load bfloat, ptr addrspace(1) %199, align 2, !tbaa.struct !24, !alias.scope !80, !noalias !91
  %201 = fpext bfloat %200 to float
  %202 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %198
  %203 = load bfloat, ptr addrspace(1) %202, align 2, !tbaa.struct !24, !alias.scope !86, !noalias !93, !iluvatar.noclobber !18
  %204 = fpext bfloat %203 to float
  %205 = fmul contract float %201, %204
  %206 = fmul contract float %155, %205
  %207 = fptrunc float %206 to bfloat
  %208 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %198
  store bfloat %207, ptr addrspace(1) %208, align 2, !tbaa !25, !alias.scope !77, !noalias !94
  %209 = add i64 %198, 512
  %210 = icmp ult i64 %209, %14
  br i1 %210, label %197, label %.loopexit, !llvm.loop !96

.loopexit:                                        ; preds = %197, %194, %153
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %114, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !108
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !108
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !108
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !108
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !108
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !108
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !108
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !108
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !108
  %99 = fadd contract float %98, %97
  br label %100

100:                                              ; preds = %85, %83
  %101 = phi float [ %99, %85 ], [ %78, %83 ]
  br i1 %84, label %117, label %153

.preheader:                                       ; preds = %16, %.preheader
  %102 = phi float [ %114, %.preheader ], [ 0.000000e+00, %16 ]
  %103 = phi i64 [ %115, %.preheader ], [ %39, %16 ]
  %104 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %103
  %105 = load bfloat, ptr addrspace(1) %104, align 2, !tbaa.struct !24, !alias.scope !102, !noalias !109, !iluvatar.noclobber !18
  %106 = fpext bfloat %105 to float
  %107 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %103
  %108 = load bfloat, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !104, !noalias !110, !iluvatar.noclobber !18
  %109 = fpext bfloat %108 to float
  %110 = fadd contract float %106, %109
  %111 = fptrunc float %110 to bfloat
  %112 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %103
  store bfloat %111, ptr addrspace(1) %112, align 2, !tbaa !25, !alias.scope !100, !noalias !111
  %113 = fmul contract float %110, %110
  %114 = fadd contract float %102, %113
  %115 = add i64 %103, 512
  %116 = icmp ult i64 %115, %14
  br i1 %116, label %.preheader, label %.loopexit3, !llvm.loop !112

117:                                              ; preds = %100
  %118 = uitofp i64 %14 to float
  %119 = fdiv contract float %101, %118
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
  store float %152, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !108
  br label %153

153:                                              ; preds = %151, %100
  tail call void @llvm.bi.sl.barrier(), !noalias !108
  br i1 %40, label %154, label %.loopexit

154:                                              ; preds = %153
  %155 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !108
  %156 = xor i64 %39, -1
  %157 = add i64 %156, %14
  %158 = lshr i64 %157, 9
  %159 = add nuw nsw i64 %158, 1
  %160 = icmp ult i64 %157, 512
  br i1 %160, label %.preheader4, label %161

161:                                              ; preds = %154
  %162 = and i64 %159, 72057594037927934
  %163 = shl i64 %162, 9
  %164 = insertelement <2 x float> poison, float %155, i64 0
  %165 = shufflevector <2 x float> %164, <2 x float> poison, <2 x i32> zeroinitializer
  br label %166

166:                                              ; preds = %166, %161
  %167 = phi i64 [ 0, %161 ], [ %192, %166 ]
  %168 = shl i64 %167, 9
  %169 = add i64 %168, %39
  %170 = add i64 %169, 512
  %171 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %169
  %172 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %170
  %173 = load bfloat, ptr addrspace(1) %171, align 2, !tbaa.struct !24, !alias.scope !100, !noalias !111
  %174 = load bfloat, ptr addrspace(1) %172, align 2, !tbaa.struct !24, !alias.scope !100, !noalias !111
  %175 = insertelement <2 x bfloat> poison, bfloat %173, i64 0
  %176 = insertelement <2 x bfloat> %175, bfloat %174, i64 1
  %177 = fpext <2 x bfloat> %176 to <2 x float>
  %178 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %169
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %170
  %180 = load half, ptr addrspace(1) %178, align 2, !tbaa.struct !24, !alias.scope !106, !noalias !113, !iluvatar.noclobber !18
  %181 = load half, ptr addrspace(1) %179, align 2, !tbaa.struct !24, !alias.scope !106, !noalias !113, !iluvatar.noclobber !18
  %182 = insertelement <2 x half> poison, half %180, i64 0
  %183 = insertelement <2 x half> %182, half %181, i64 1
  %184 = fpext <2 x half> %183 to <2 x float>
  %185 = fmul contract <2 x float> %177, %184
  %186 = fmul contract <2 x float> %165, %185
  %187 = fptrunc <2 x float> %186 to <2 x bfloat>
  %188 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %169
  %189 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %170
  %190 = extractelement <2 x bfloat> %187, i64 0
  store bfloat %190, ptr addrspace(1) %188, align 2, !tbaa !25, !alias.scope !97, !noalias !114
  %191 = extractelement <2 x bfloat> %187, i64 1
  store bfloat %191, ptr addrspace(1) %189, align 2, !tbaa !25, !alias.scope !97, !noalias !114
  %192 = add nuw i64 %167, 2
  %193 = icmp eq i64 %192, %162
  br i1 %193, label %194, label %166, !llvm.loop !115

194:                                              ; preds = %166
  %195 = add i64 %163, %39
  %196 = icmp eq i64 %159, %162
  br i1 %196, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %194, %154
  %.ph = phi i64 [ %195, %194 ], [ %39, %154 ]
  br label %197

197:                                              ; preds = %.preheader4, %197
  %198 = phi i64 [ %209, %197 ], [ %.ph, %.preheader4 ]
  %199 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %198
  %200 = load bfloat, ptr addrspace(1) %199, align 2, !tbaa.struct !24, !alias.scope !100, !noalias !111
  %201 = fpext bfloat %200 to float
  %202 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %198
  %203 = load half, ptr addrspace(1) %202, align 2, !tbaa.struct !24, !alias.scope !106, !noalias !113, !iluvatar.noclobber !18
  %204 = fpext half %203 to float
  %205 = fmul contract float %201, %204
  %206 = fmul contract float %155, %205
  %207 = fptrunc float %206 to bfloat
  %208 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %198
  store bfloat %207, ptr addrspace(1) %208, align 2, !tbaa !25, !alias.scope !97, !noalias !114
  %209 = add i64 %198, 512
  %210 = icmp ult i64 %209, %14
  br i1 %210, label %197, label %.loopexit, !llvm.loop !116

.loopexit:                                        ; preds = %197, %194, %153
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %114, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !128
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !128
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !128
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !128
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !128
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !128
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !128
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !128
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !128
  %99 = fadd contract float %98, %97
  br label %100

100:                                              ; preds = %85, %83
  %101 = phi float [ %99, %85 ], [ %78, %83 ]
  br i1 %84, label %117, label %153

.preheader:                                       ; preds = %16, %.preheader
  %102 = phi float [ %114, %.preheader ], [ 0.000000e+00, %16 ]
  %103 = phi i64 [ %115, %.preheader ], [ %39, %16 ]
  %104 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %103
  %105 = load bfloat, ptr addrspace(1) %104, align 2, !tbaa.struct !24, !alias.scope !122, !noalias !129, !iluvatar.noclobber !18
  %106 = fpext bfloat %105 to float
  %107 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %103
  %108 = load bfloat, ptr addrspace(1) %107, align 2, !tbaa.struct !24, !alias.scope !124, !noalias !130, !iluvatar.noclobber !18
  %109 = fpext bfloat %108 to float
  %110 = fadd contract float %106, %109
  %111 = fptrunc float %110 to bfloat
  %112 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %103
  store bfloat %111, ptr addrspace(1) %112, align 2, !tbaa !25, !alias.scope !120, !noalias !131
  %113 = fmul contract float %110, %110
  %114 = fadd contract float %102, %113
  %115 = add i64 %103, 512
  %116 = icmp ult i64 %115, %14
  br i1 %116, label %.preheader, label %.loopexit2, !llvm.loop !132

117:                                              ; preds = %100
  %118 = uitofp i64 %14 to float
  %119 = fdiv contract float %101, %118
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
  store float %152, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !128
  br label %153

153:                                              ; preds = %151, %100
  tail call void @llvm.bi.sl.barrier(), !noalias !128
  br i1 %40, label %154, label %.loopexit

154:                                              ; preds = %153
  %155 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !128
  br label %156

156:                                              ; preds = %156, %154
  %157 = phi i64 [ %39, %154 ], [ %167, %156 ]
  %158 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %157
  %159 = load bfloat, ptr addrspace(1) %158, align 2, !tbaa.struct !24, !alias.scope !120, !noalias !131
  %160 = fpext bfloat %159 to float
  %161 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %157
  %162 = load float, ptr addrspace(1) %161, align 4, !tbaa !19, !alias.scope !126, !noalias !133, !iluvatar.noclobber !18
  %163 = fmul contract float %162, %160
  %164 = fmul contract float %155, %163
  %165 = fptrunc float %164 to bfloat
  %166 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %157
  store bfloat %165, ptr addrspace(1) %166, align 2, !tbaa !25, !alias.scope !117, !noalias !134
  %167 = add i64 %157, 512
  %168 = icmp ult i64 %167, %14
  br i1 %168, label %156, label %.loopexit, !llvm.loop !135

.loopexit:                                        ; preds = %156, %153
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds float, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds float, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds float, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds float, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds float, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %111, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 512, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !147
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !147
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 3), align 4, !tbaa !19, !noalias !147
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 4), align 4, !tbaa !19, !noalias !147
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !147
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !147
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !147
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !147
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 512>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !147
  %99 = fadd contract float %98, %97
  br label %100

100:                                              ; preds = %85, %83
  %101 = phi float [ %99, %85 ], [ %78, %83 ]
  br i1 %84, label %114, label %150

.preheader:                                       ; preds = %16, %.preheader
  %102 = phi float [ %111, %.preheader ], [ 0.000000e+00, %16 ]
  %103 = phi i64 [ %112, %.preheader ], [ %39, %16 ]
  %104 = getelementptr inbounds float, ptr addrspace(1) %29, i64 %103
  %105 = load float, ptr addrspace(1) %104, align 4, !tbaa !19, !alias.scope !141, !noalias !148, !iluvatar.noclobber !18
  %106 = getelementptr inbounds float, ptr addrspace(1) %33, i64 %103
  %107 = load float, ptr addrspace(1) %106, align 4, !tbaa !19, !alias.scope !143, !noalias !149, !iluvatar.noclobber !18
  %108 = fadd contract float %105, %107
  %109 = getelementptr inbounds float, ptr addrspace(1) %37, i64 %103
  store float %108, ptr addrspace(1) %109, align 4, !tbaa !19, !alias.scope !139, !noalias !150
  %110 = fmul contract float %108, %108
  %111 = fadd contract float %102, %110
  %112 = add i64 %103, 512
  %113 = icmp ult i64 %112, %14
  br i1 %113, label %.preheader, label %.loopexit2, !llvm.loop !151

114:                                              ; preds = %100
  %115 = uitofp i64 %14 to float
  %116 = fdiv contract float %101, %115
  %117 = fadd contract float %116, %15
  %118 = tail call float @llvm.fabs.f32(float %117)
  %119 = fcmp contract olt float %118, 0x3810000000000000
  %120 = fmul contract float %117, 0x4170000000000000
  %121 = select i1 %119, float %120, float %117
  %122 = bitcast float %121 to i32
  %123 = add i32 %122, -8388608
  %124 = icmp ult i32 %123, 2130706432
  br i1 %124, label %125, label %146

125:                                              ; preds = %114
  %126 = and i32 %122, 16777215
  %127 = or disjoint i32 %126, 1056964608
  %128 = bitcast i32 %127 to float
  %129 = sub nsw i32 %127, %122
  %130 = add nsw i32 %129, 201326592
  %131 = select i1 %119, i32 %130, i32 %129
  %132 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %128) #7
  %133 = fmul contract float %132, %132
  %134 = fneg contract float %133
  %135 = tail call float @llvm.fma.f32(float %132, float %132, float %134)
  %136 = fneg contract float %128
  %137 = tail call float @llvm.fma.f32(float %133, float %136, float 1.000000e+00)
  %138 = tail call float @llvm.fma.f32(float %135, float %136, float %137)
  %139 = tail call float @llvm.fma.f32(float %138, float 3.750000e-01, float 5.000000e-01)
  %140 = fmul contract float %132, %138
  %141 = tail call float @llvm.fma.f32(float %139, float %140, float %132)
  %142 = ashr i32 %131, 1
  %143 = bitcast float %141 to i32
  %144 = add i32 %142, %143
  %145 = bitcast i32 %144 to float
  br label %148

146:                                              ; preds = %114
  %147 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %121) #7
  br label %148

148:                                              ; preds = %146, %125
  %149 = phi float [ %145, %125 ], [ %147, %146 ]
  store float %149, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !147
  br label %150

150:                                              ; preds = %148, %100
  tail call void @llvm.bi.sl.barrier(), !noalias !147
  br i1 %40, label %151, label %.loopexit

151:                                              ; preds = %150
  %152 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj512EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !147
  br label %153

153:                                              ; preds = %153, %151
  %154 = phi i64 [ %39, %151 ], [ %162, %153 ]
  %155 = getelementptr inbounds float, ptr addrspace(1) %37, i64 %154
  %156 = load float, ptr addrspace(1) %155, align 4, !tbaa !19, !alias.scope !139, !noalias !150
  %157 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %154
  %158 = load float, ptr addrspace(1) %157, align 4, !tbaa !19, !alias.scope !145, !noalias !152, !iluvatar.noclobber !18
  %159 = fmul contract float %156, %158
  %160 = fmul contract float %152, %159
  %161 = getelementptr inbounds float, ptr addrspace(1) %25, i64 %154
  store float %160, ptr addrspace(1) %161, align 4, !tbaa !19, !alias.scope !136, !noalias !153
  %162 = add i64 %154, 512
  %163 = icmp ult i64 %162, %14
  br i1 %163, label %153, label %.loopexit, !llvm.loop !154

.loopexit:                                        ; preds = %153, %150
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %130, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !166
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !166
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !166
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !166
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !166
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !166
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !166
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !166
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !166
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !166
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !166
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !166
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !166
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !166
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !166
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !166
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !166
  %115 = fadd contract float %114, %113
  br label %116

116:                                              ; preds = %85, %83
  %117 = phi float [ %115, %85 ], [ %78, %83 ]
  br i1 %84, label %133, label %169

.preheader:                                       ; preds = %16, %.preheader
  %118 = phi float [ %130, %.preheader ], [ 0.000000e+00, %16 ]
  %119 = phi i64 [ %131, %.preheader ], [ %39, %16 ]
  %120 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %119
  %121 = load half, ptr addrspace(1) %120, align 2, !tbaa.struct !24, !alias.scope !160, !noalias !167, !iluvatar.noclobber !18
  %122 = fpext half %121 to float
  %123 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %119
  %124 = load half, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !162, !noalias !168, !iluvatar.noclobber !18
  %125 = fpext half %124 to float
  %126 = fadd contract float %122, %125
  %127 = fptrunc float %126 to half
  %128 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %119
  store half %127, ptr addrspace(1) %128, align 2, !tbaa !25, !alias.scope !158, !noalias !169
  %129 = fmul contract float %126, %126
  %130 = fadd contract float %118, %129
  %131 = add i64 %119, 1024
  %132 = icmp ult i64 %131, %14
  br i1 %132, label %.preheader, label %.loopexit3, !llvm.loop !170

133:                                              ; preds = %116
  %134 = uitofp i64 %14 to float
  %135 = fdiv contract float %117, %134
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
  store float %168, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !166
  br label %169

169:                                              ; preds = %167, %116
  tail call void @llvm.bi.sl.barrier(), !noalias !166
  br i1 %40, label %170, label %.loopexit

170:                                              ; preds = %169
  %171 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !166
  %172 = xor i64 %39, -1
  %173 = add i64 %172, %14
  %174 = lshr i64 %173, 10
  %175 = add nuw nsw i64 %174, 1
  %176 = icmp ult i64 %173, 1024
  br i1 %176, label %.preheader4, label %177

177:                                              ; preds = %170
  %178 = and i64 %175, 36028797018963966
  %179 = shl i64 %178, 10
  %180 = insertelement <2 x float> poison, float %171, i64 0
  %181 = shufflevector <2 x float> %180, <2 x float> poison, <2 x i32> zeroinitializer
  br label %182

182:                                              ; preds = %182, %177
  %183 = phi i64 [ 0, %177 ], [ %208, %182 ]
  %184 = shl i64 %183, 10
  %185 = add i64 %184, %39
  %186 = add i64 %185, 1024
  %187 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %185
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %186
  %189 = load half, ptr addrspace(1) %187, align 2, !tbaa.struct !24, !alias.scope !158, !noalias !169
  %190 = load half, ptr addrspace(1) %188, align 2, !tbaa.struct !24, !alias.scope !158, !noalias !169
  %191 = insertelement <2 x half> poison, half %189, i64 0
  %192 = insertelement <2 x half> %191, half %190, i64 1
  %193 = fpext <2 x half> %192 to <2 x float>
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %185
  %195 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %186
  %196 = load half, ptr addrspace(1) %194, align 2, !tbaa.struct !24, !alias.scope !164, !noalias !171, !iluvatar.noclobber !18
  %197 = load half, ptr addrspace(1) %195, align 2, !tbaa.struct !24, !alias.scope !164, !noalias !171, !iluvatar.noclobber !18
  %198 = insertelement <2 x half> poison, half %196, i64 0
  %199 = insertelement <2 x half> %198, half %197, i64 1
  %200 = fpext <2 x half> %199 to <2 x float>
  %201 = fmul contract <2 x float> %193, %200
  %202 = fmul contract <2 x float> %181, %201
  %203 = fptrunc <2 x float> %202 to <2 x half>
  %204 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %185
  %205 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %186
  %206 = extractelement <2 x half> %203, i64 0
  store half %206, ptr addrspace(1) %204, align 2, !tbaa !25, !alias.scope !155, !noalias !172
  %207 = extractelement <2 x half> %203, i64 1
  store half %207, ptr addrspace(1) %205, align 2, !tbaa !25, !alias.scope !155, !noalias !172
  %208 = add nuw i64 %183, 2
  %209 = icmp eq i64 %208, %178
  br i1 %209, label %210, label %182, !llvm.loop !173

210:                                              ; preds = %182
  %211 = add i64 %179, %39
  %212 = icmp eq i64 %175, %178
  br i1 %212, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %210, %170
  %.ph = phi i64 [ %211, %210 ], [ %39, %170 ]
  br label %213

213:                                              ; preds = %.preheader4, %213
  %214 = phi i64 [ %225, %213 ], [ %.ph, %.preheader4 ]
  %215 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %214
  %216 = load half, ptr addrspace(1) %215, align 2, !tbaa.struct !24, !alias.scope !158, !noalias !169
  %217 = fpext half %216 to float
  %218 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %214
  %219 = load half, ptr addrspace(1) %218, align 2, !tbaa.struct !24, !alias.scope !164, !noalias !171, !iluvatar.noclobber !18
  %220 = fpext half %219 to float
  %221 = fmul contract float %217, %220
  %222 = fmul contract float %171, %221
  %223 = fptrunc float %222 to half
  %224 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %214
  store half %223, ptr addrspace(1) %224, align 2, !tbaa !25, !alias.scope !155, !noalias !172
  %225 = add i64 %214, 1024
  %226 = icmp ult i64 %225, %14
  br i1 %226, label %213, label %.loopexit, !llvm.loop !174

.loopexit:                                        ; preds = %213, %210, %169
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %130, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !186
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !186
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !186
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !186
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !186
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !186
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !186
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !186
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !186
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !186
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !186
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !186
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !186
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !186
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !186
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !186
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !186
  %115 = fadd contract float %114, %113
  br label %116

116:                                              ; preds = %85, %83
  %117 = phi float [ %115, %85 ], [ %78, %83 ]
  br i1 %84, label %133, label %169

.preheader:                                       ; preds = %16, %.preheader
  %118 = phi float [ %130, %.preheader ], [ 0.000000e+00, %16 ]
  %119 = phi i64 [ %131, %.preheader ], [ %39, %16 ]
  %120 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %119
  %121 = load half, ptr addrspace(1) %120, align 2, !tbaa.struct !24, !alias.scope !180, !noalias !187, !iluvatar.noclobber !18
  %122 = fpext half %121 to float
  %123 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %119
  %124 = load half, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !182, !noalias !188, !iluvatar.noclobber !18
  %125 = fpext half %124 to float
  %126 = fadd contract float %122, %125
  %127 = fptrunc float %126 to half
  %128 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %119
  store half %127, ptr addrspace(1) %128, align 2, !tbaa !25, !alias.scope !178, !noalias !189
  %129 = fmul contract float %126, %126
  %130 = fadd contract float %118, %129
  %131 = add i64 %119, 1024
  %132 = icmp ult i64 %131, %14
  br i1 %132, label %.preheader, label %.loopexit3, !llvm.loop !190

133:                                              ; preds = %116
  %134 = uitofp i64 %14 to float
  %135 = fdiv contract float %117, %134
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
  store float %168, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !186
  br label %169

169:                                              ; preds = %167, %116
  tail call void @llvm.bi.sl.barrier(), !noalias !186
  br i1 %40, label %170, label %.loopexit

170:                                              ; preds = %169
  %171 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !186
  %172 = xor i64 %39, -1
  %173 = add i64 %172, %14
  %174 = lshr i64 %173, 10
  %175 = add nuw nsw i64 %174, 1
  %176 = icmp ult i64 %173, 1024
  br i1 %176, label %.preheader4, label %177

177:                                              ; preds = %170
  %178 = and i64 %175, 36028797018963966
  %179 = shl i64 %178, 10
  %180 = insertelement <2 x float> poison, float %171, i64 0
  %181 = shufflevector <2 x float> %180, <2 x float> poison, <2 x i32> zeroinitializer
  br label %182

182:                                              ; preds = %182, %177
  %183 = phi i64 [ 0, %177 ], [ %208, %182 ]
  %184 = shl i64 %183, 10
  %185 = add i64 %184, %39
  %186 = add i64 %185, 1024
  %187 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %185
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %186
  %189 = load half, ptr addrspace(1) %187, align 2, !tbaa.struct !24, !alias.scope !178, !noalias !189
  %190 = load half, ptr addrspace(1) %188, align 2, !tbaa.struct !24, !alias.scope !178, !noalias !189
  %191 = insertelement <2 x half> poison, half %189, i64 0
  %192 = insertelement <2 x half> %191, half %190, i64 1
  %193 = fpext <2 x half> %192 to <2 x float>
  %194 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %185
  %195 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %186
  %196 = load bfloat, ptr addrspace(1) %194, align 2, !tbaa.struct !24, !alias.scope !184, !noalias !191, !iluvatar.noclobber !18
  %197 = load bfloat, ptr addrspace(1) %195, align 2, !tbaa.struct !24, !alias.scope !184, !noalias !191, !iluvatar.noclobber !18
  %198 = insertelement <2 x bfloat> poison, bfloat %196, i64 0
  %199 = insertelement <2 x bfloat> %198, bfloat %197, i64 1
  %200 = fpext <2 x bfloat> %199 to <2 x float>
  %201 = fmul contract <2 x float> %193, %200
  %202 = fmul contract <2 x float> %181, %201
  %203 = fptrunc <2 x float> %202 to <2 x half>
  %204 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %185
  %205 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %186
  %206 = extractelement <2 x half> %203, i64 0
  store half %206, ptr addrspace(1) %204, align 2, !tbaa !25, !alias.scope !175, !noalias !192
  %207 = extractelement <2 x half> %203, i64 1
  store half %207, ptr addrspace(1) %205, align 2, !tbaa !25, !alias.scope !175, !noalias !192
  %208 = add nuw i64 %183, 2
  %209 = icmp eq i64 %208, %178
  br i1 %209, label %210, label %182, !llvm.loop !193

210:                                              ; preds = %182
  %211 = add i64 %179, %39
  %212 = icmp eq i64 %175, %178
  br i1 %212, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %210, %170
  %.ph = phi i64 [ %211, %210 ], [ %39, %170 ]
  br label %213

213:                                              ; preds = %.preheader4, %213
  %214 = phi i64 [ %225, %213 ], [ %.ph, %.preheader4 ]
  %215 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %214
  %216 = load half, ptr addrspace(1) %215, align 2, !tbaa.struct !24, !alias.scope !178, !noalias !189
  %217 = fpext half %216 to float
  %218 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %214
  %219 = load bfloat, ptr addrspace(1) %218, align 2, !tbaa.struct !24, !alias.scope !184, !noalias !191, !iluvatar.noclobber !18
  %220 = fpext bfloat %219 to float
  %221 = fmul contract float %217, %220
  %222 = fmul contract float %171, %221
  %223 = fptrunc float %222 to half
  %224 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %214
  store half %223, ptr addrspace(1) %224, align 2, !tbaa !25, !alias.scope !175, !noalias !192
  %225 = add i64 %214, 1024
  %226 = icmp ult i64 %225, %14
  br i1 %226, label %213, label %.loopexit, !llvm.loop !194

.loopexit:                                        ; preds = %213, %210, %169
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %130, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !206
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !206
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !206
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !206
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !206
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !206
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !206
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !206
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !206
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !206
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !206
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !206
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !206
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !206
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !206
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !206
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !206
  %115 = fadd contract float %114, %113
  br label %116

116:                                              ; preds = %85, %83
  %117 = phi float [ %115, %85 ], [ %78, %83 ]
  br i1 %84, label %133, label %169

.preheader:                                       ; preds = %16, %.preheader
  %118 = phi float [ %130, %.preheader ], [ 0.000000e+00, %16 ]
  %119 = phi i64 [ %131, %.preheader ], [ %39, %16 ]
  %120 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %119
  %121 = load half, ptr addrspace(1) %120, align 2, !tbaa.struct !24, !alias.scope !200, !noalias !207, !iluvatar.noclobber !18
  %122 = fpext half %121 to float
  %123 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %119
  %124 = load half, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !202, !noalias !208, !iluvatar.noclobber !18
  %125 = fpext half %124 to float
  %126 = fadd contract float %122, %125
  %127 = fptrunc float %126 to half
  %128 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %119
  store half %127, ptr addrspace(1) %128, align 2, !tbaa !25, !alias.scope !198, !noalias !209
  %129 = fmul contract float %126, %126
  %130 = fadd contract float %118, %129
  %131 = add i64 %119, 1024
  %132 = icmp ult i64 %131, %14
  br i1 %132, label %.preheader, label %.loopexit2, !llvm.loop !210

133:                                              ; preds = %116
  %134 = uitofp i64 %14 to float
  %135 = fdiv contract float %117, %134
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
  store float %168, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !206
  br label %169

169:                                              ; preds = %167, %116
  tail call void @llvm.bi.sl.barrier(), !noalias !206
  br i1 %40, label %170, label %.loopexit

170:                                              ; preds = %169
  %171 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !206
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i64 [ %39, %170 ], [ %183, %172 ]
  %174 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %173
  %175 = load half, ptr addrspace(1) %174, align 2, !tbaa.struct !24, !alias.scope !198, !noalias !209
  %176 = fpext half %175 to float
  %177 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %173
  %178 = load float, ptr addrspace(1) %177, align 4, !tbaa !19, !alias.scope !204, !noalias !211, !iluvatar.noclobber !18
  %179 = fmul contract float %178, %176
  %180 = fmul contract float %171, %179
  %181 = fptrunc float %180 to half
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %173
  store half %181, ptr addrspace(1) %182, align 2, !tbaa !25, !alias.scope !195, !noalias !212
  %183 = add i64 %173, 1024
  %184 = icmp ult i64 %183, %14
  br i1 %184, label %172, label %.loopexit, !llvm.loop !213

.loopexit:                                        ; preds = %172, %169
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %130, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !225
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !225
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !225
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !225
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !225
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !225
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !225
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !225
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !225
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !225
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !225
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !225
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !225
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !225
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !225
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !225
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !225
  %115 = fadd contract float %114, %113
  br label %116

116:                                              ; preds = %85, %83
  %117 = phi float [ %115, %85 ], [ %78, %83 ]
  br i1 %84, label %133, label %169

.preheader:                                       ; preds = %16, %.preheader
  %118 = phi float [ %130, %.preheader ], [ 0.000000e+00, %16 ]
  %119 = phi i64 [ %131, %.preheader ], [ %39, %16 ]
  %120 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %119
  %121 = load bfloat, ptr addrspace(1) %120, align 2, !tbaa.struct !24, !alias.scope !219, !noalias !226, !iluvatar.noclobber !18
  %122 = fpext bfloat %121 to float
  %123 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %119
  %124 = load bfloat, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !221, !noalias !227, !iluvatar.noclobber !18
  %125 = fpext bfloat %124 to float
  %126 = fadd contract float %122, %125
  %127 = fptrunc float %126 to bfloat
  %128 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %119
  store bfloat %127, ptr addrspace(1) %128, align 2, !tbaa !25, !alias.scope !217, !noalias !228
  %129 = fmul contract float %126, %126
  %130 = fadd contract float %118, %129
  %131 = add i64 %119, 1024
  %132 = icmp ult i64 %131, %14
  br i1 %132, label %.preheader, label %.loopexit3, !llvm.loop !229

133:                                              ; preds = %116
  %134 = uitofp i64 %14 to float
  %135 = fdiv contract float %117, %134
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
  store float %168, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !225
  br label %169

169:                                              ; preds = %167, %116
  tail call void @llvm.bi.sl.barrier(), !noalias !225
  br i1 %40, label %170, label %.loopexit

170:                                              ; preds = %169
  %171 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !225
  %172 = xor i64 %39, -1
  %173 = add i64 %172, %14
  %174 = lshr i64 %173, 10
  %175 = add nuw nsw i64 %174, 1
  %176 = icmp ult i64 %173, 1024
  br i1 %176, label %.preheader4, label %177

177:                                              ; preds = %170
  %178 = and i64 %175, 36028797018963966
  %179 = shl i64 %178, 10
  %180 = insertelement <2 x float> poison, float %171, i64 0
  %181 = shufflevector <2 x float> %180, <2 x float> poison, <2 x i32> zeroinitializer
  br label %182

182:                                              ; preds = %182, %177
  %183 = phi i64 [ 0, %177 ], [ %208, %182 ]
  %184 = shl i64 %183, 10
  %185 = add i64 %184, %39
  %186 = add i64 %185, 1024
  %187 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %185
  %188 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %186
  %189 = load bfloat, ptr addrspace(1) %187, align 2, !tbaa.struct !24, !alias.scope !217, !noalias !228
  %190 = load bfloat, ptr addrspace(1) %188, align 2, !tbaa.struct !24, !alias.scope !217, !noalias !228
  %191 = insertelement <2 x bfloat> poison, bfloat %189, i64 0
  %192 = insertelement <2 x bfloat> %191, bfloat %190, i64 1
  %193 = fpext <2 x bfloat> %192 to <2 x float>
  %194 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %185
  %195 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %186
  %196 = load bfloat, ptr addrspace(1) %194, align 2, !tbaa.struct !24, !alias.scope !223, !noalias !230, !iluvatar.noclobber !18
  %197 = load bfloat, ptr addrspace(1) %195, align 2, !tbaa.struct !24, !alias.scope !223, !noalias !230, !iluvatar.noclobber !18
  %198 = insertelement <2 x bfloat> poison, bfloat %196, i64 0
  %199 = insertelement <2 x bfloat> %198, bfloat %197, i64 1
  %200 = fpext <2 x bfloat> %199 to <2 x float>
  %201 = fmul contract <2 x float> %193, %200
  %202 = fmul contract <2 x float> %181, %201
  %203 = fptrunc <2 x float> %202 to <2 x bfloat>
  %204 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %185
  %205 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %186
  %206 = extractelement <2 x bfloat> %203, i64 0
  store bfloat %206, ptr addrspace(1) %204, align 2, !tbaa !25, !alias.scope !214, !noalias !231
  %207 = extractelement <2 x bfloat> %203, i64 1
  store bfloat %207, ptr addrspace(1) %205, align 2, !tbaa !25, !alias.scope !214, !noalias !231
  %208 = add nuw i64 %183, 2
  %209 = icmp eq i64 %208, %178
  br i1 %209, label %210, label %182, !llvm.loop !232

210:                                              ; preds = %182
  %211 = add i64 %179, %39
  %212 = icmp eq i64 %175, %178
  br i1 %212, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %210, %170
  %.ph = phi i64 [ %211, %210 ], [ %39, %170 ]
  br label %213

213:                                              ; preds = %.preheader4, %213
  %214 = phi i64 [ %225, %213 ], [ %.ph, %.preheader4 ]
  %215 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %214
  %216 = load bfloat, ptr addrspace(1) %215, align 2, !tbaa.struct !24, !alias.scope !217, !noalias !228
  %217 = fpext bfloat %216 to float
  %218 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %214
  %219 = load bfloat, ptr addrspace(1) %218, align 2, !tbaa.struct !24, !alias.scope !223, !noalias !230, !iluvatar.noclobber !18
  %220 = fpext bfloat %219 to float
  %221 = fmul contract float %217, %220
  %222 = fmul contract float %171, %221
  %223 = fptrunc float %222 to bfloat
  %224 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %214
  store bfloat %223, ptr addrspace(1) %224, align 2, !tbaa !25, !alias.scope !214, !noalias !231
  %225 = add i64 %214, 1024
  %226 = icmp ult i64 %225, %14
  br i1 %226, label %213, label %.loopexit, !llvm.loop !233

.loopexit:                                        ; preds = %213, %210, %169
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %130, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !245
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !245
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !245
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !245
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !245
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !245
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !245
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !245
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !245
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !245
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !245
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !245
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !245
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !245
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !245
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !245
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !245
  %115 = fadd contract float %114, %113
  br label %116

116:                                              ; preds = %85, %83
  %117 = phi float [ %115, %85 ], [ %78, %83 ]
  br i1 %84, label %133, label %169

.preheader:                                       ; preds = %16, %.preheader
  %118 = phi float [ %130, %.preheader ], [ 0.000000e+00, %16 ]
  %119 = phi i64 [ %131, %.preheader ], [ %39, %16 ]
  %120 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %119
  %121 = load bfloat, ptr addrspace(1) %120, align 2, !tbaa.struct !24, !alias.scope !239, !noalias !246, !iluvatar.noclobber !18
  %122 = fpext bfloat %121 to float
  %123 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %119
  %124 = load bfloat, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !241, !noalias !247, !iluvatar.noclobber !18
  %125 = fpext bfloat %124 to float
  %126 = fadd contract float %122, %125
  %127 = fptrunc float %126 to bfloat
  %128 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %119
  store bfloat %127, ptr addrspace(1) %128, align 2, !tbaa !25, !alias.scope !237, !noalias !248
  %129 = fmul contract float %126, %126
  %130 = fadd contract float %118, %129
  %131 = add i64 %119, 1024
  %132 = icmp ult i64 %131, %14
  br i1 %132, label %.preheader, label %.loopexit3, !llvm.loop !249

133:                                              ; preds = %116
  %134 = uitofp i64 %14 to float
  %135 = fdiv contract float %117, %134
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
  store float %168, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !245
  br label %169

169:                                              ; preds = %167, %116
  tail call void @llvm.bi.sl.barrier(), !noalias !245
  br i1 %40, label %170, label %.loopexit

170:                                              ; preds = %169
  %171 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !245
  %172 = xor i64 %39, -1
  %173 = add i64 %172, %14
  %174 = lshr i64 %173, 10
  %175 = add nuw nsw i64 %174, 1
  %176 = icmp ult i64 %173, 1024
  br i1 %176, label %.preheader4, label %177

177:                                              ; preds = %170
  %178 = and i64 %175, 36028797018963966
  %179 = shl i64 %178, 10
  %180 = insertelement <2 x float> poison, float %171, i64 0
  %181 = shufflevector <2 x float> %180, <2 x float> poison, <2 x i32> zeroinitializer
  br label %182

182:                                              ; preds = %182, %177
  %183 = phi i64 [ 0, %177 ], [ %208, %182 ]
  %184 = shl i64 %183, 10
  %185 = add i64 %184, %39
  %186 = add i64 %185, 1024
  %187 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %185
  %188 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %186
  %189 = load bfloat, ptr addrspace(1) %187, align 2, !tbaa.struct !24, !alias.scope !237, !noalias !248
  %190 = load bfloat, ptr addrspace(1) %188, align 2, !tbaa.struct !24, !alias.scope !237, !noalias !248
  %191 = insertelement <2 x bfloat> poison, bfloat %189, i64 0
  %192 = insertelement <2 x bfloat> %191, bfloat %190, i64 1
  %193 = fpext <2 x bfloat> %192 to <2 x float>
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %185
  %195 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %186
  %196 = load half, ptr addrspace(1) %194, align 2, !tbaa.struct !24, !alias.scope !243, !noalias !250, !iluvatar.noclobber !18
  %197 = load half, ptr addrspace(1) %195, align 2, !tbaa.struct !24, !alias.scope !243, !noalias !250, !iluvatar.noclobber !18
  %198 = insertelement <2 x half> poison, half %196, i64 0
  %199 = insertelement <2 x half> %198, half %197, i64 1
  %200 = fpext <2 x half> %199 to <2 x float>
  %201 = fmul contract <2 x float> %193, %200
  %202 = fmul contract <2 x float> %181, %201
  %203 = fptrunc <2 x float> %202 to <2 x bfloat>
  %204 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %185
  %205 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %186
  %206 = extractelement <2 x bfloat> %203, i64 0
  store bfloat %206, ptr addrspace(1) %204, align 2, !tbaa !25, !alias.scope !234, !noalias !251
  %207 = extractelement <2 x bfloat> %203, i64 1
  store bfloat %207, ptr addrspace(1) %205, align 2, !tbaa !25, !alias.scope !234, !noalias !251
  %208 = add nuw i64 %183, 2
  %209 = icmp eq i64 %208, %178
  br i1 %209, label %210, label %182, !llvm.loop !252

210:                                              ; preds = %182
  %211 = add i64 %179, %39
  %212 = icmp eq i64 %175, %178
  br i1 %212, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %210, %170
  %.ph = phi i64 [ %211, %210 ], [ %39, %170 ]
  br label %213

213:                                              ; preds = %.preheader4, %213
  %214 = phi i64 [ %225, %213 ], [ %.ph, %.preheader4 ]
  %215 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %214
  %216 = load bfloat, ptr addrspace(1) %215, align 2, !tbaa.struct !24, !alias.scope !237, !noalias !248
  %217 = fpext bfloat %216 to float
  %218 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %214
  %219 = load half, ptr addrspace(1) %218, align 2, !tbaa.struct !24, !alias.scope !243, !noalias !250, !iluvatar.noclobber !18
  %220 = fpext half %219 to float
  %221 = fmul contract float %217, %220
  %222 = fmul contract float %171, %221
  %223 = fptrunc float %222 to bfloat
  %224 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %214
  store bfloat %223, ptr addrspace(1) %224, align 2, !tbaa !25, !alias.scope !234, !noalias !251
  %225 = add i64 %214, 1024
  %226 = icmp ult i64 %225, %14
  br i1 %226, label %213, label %.loopexit, !llvm.loop !253

.loopexit:                                        ; preds = %213, %210, %169
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %130, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !265
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !265
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !265
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !265
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !265
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !265
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !265
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !265
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !265
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !265
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !265
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !265
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !265
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !265
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !265
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !265
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !265
  %115 = fadd contract float %114, %113
  br label %116

116:                                              ; preds = %85, %83
  %117 = phi float [ %115, %85 ], [ %78, %83 ]
  br i1 %84, label %133, label %169

.preheader:                                       ; preds = %16, %.preheader
  %118 = phi float [ %130, %.preheader ], [ 0.000000e+00, %16 ]
  %119 = phi i64 [ %131, %.preheader ], [ %39, %16 ]
  %120 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %119
  %121 = load bfloat, ptr addrspace(1) %120, align 2, !tbaa.struct !24, !alias.scope !259, !noalias !266, !iluvatar.noclobber !18
  %122 = fpext bfloat %121 to float
  %123 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %119
  %124 = load bfloat, ptr addrspace(1) %123, align 2, !tbaa.struct !24, !alias.scope !261, !noalias !267, !iluvatar.noclobber !18
  %125 = fpext bfloat %124 to float
  %126 = fadd contract float %122, %125
  %127 = fptrunc float %126 to bfloat
  %128 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %119
  store bfloat %127, ptr addrspace(1) %128, align 2, !tbaa !25, !alias.scope !257, !noalias !268
  %129 = fmul contract float %126, %126
  %130 = fadd contract float %118, %129
  %131 = add i64 %119, 1024
  %132 = icmp ult i64 %131, %14
  br i1 %132, label %.preheader, label %.loopexit2, !llvm.loop !269

133:                                              ; preds = %116
  %134 = uitofp i64 %14 to float
  %135 = fdiv contract float %117, %134
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
  store float %168, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !265
  br label %169

169:                                              ; preds = %167, %116
  tail call void @llvm.bi.sl.barrier(), !noalias !265
  br i1 %40, label %170, label %.loopexit

170:                                              ; preds = %169
  %171 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !265
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i64 [ %39, %170 ], [ %183, %172 ]
  %174 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %173
  %175 = load bfloat, ptr addrspace(1) %174, align 2, !tbaa.struct !24, !alias.scope !257, !noalias !268
  %176 = fpext bfloat %175 to float
  %177 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %173
  %178 = load float, ptr addrspace(1) %177, align 4, !tbaa !19, !alias.scope !263, !noalias !270, !iluvatar.noclobber !18
  %179 = fmul contract float %178, %176
  %180 = fmul contract float %171, %179
  %181 = fptrunc float %180 to bfloat
  %182 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %173
  store bfloat %181, ptr addrspace(1) %182, align 2, !tbaa !25, !alias.scope !254, !noalias !271
  %183 = add i64 %173, 1024
  %184 = icmp ult i64 %183, %14
  br i1 %184, label %172, label %.loopexit, !llvm.loop !272

.loopexit:                                        ; preds = %172, %169
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds float, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds float, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds float, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds float, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds float, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %127, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 1024, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !284
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !284
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 5), align 4, !tbaa !19, !noalias !284
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 6), align 4, !tbaa !19, !noalias !284
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 7), align 4, !tbaa !19, !noalias !284
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 8), align 4, !tbaa !19, !noalias !284
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !284
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !284
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !284
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !284
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !284
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !284
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !284
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !284
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !284
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !284
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 1024>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !284
  %115 = fadd contract float %114, %113
  br label %116

116:                                              ; preds = %85, %83
  %117 = phi float [ %115, %85 ], [ %78, %83 ]
  br i1 %84, label %130, label %166

.preheader:                                       ; preds = %16, %.preheader
  %118 = phi float [ %127, %.preheader ], [ 0.000000e+00, %16 ]
  %119 = phi i64 [ %128, %.preheader ], [ %39, %16 ]
  %120 = getelementptr inbounds float, ptr addrspace(1) %29, i64 %119
  %121 = load float, ptr addrspace(1) %120, align 4, !tbaa !19, !alias.scope !278, !noalias !285, !iluvatar.noclobber !18
  %122 = getelementptr inbounds float, ptr addrspace(1) %33, i64 %119
  %123 = load float, ptr addrspace(1) %122, align 4, !tbaa !19, !alias.scope !280, !noalias !286, !iluvatar.noclobber !18
  %124 = fadd contract float %121, %123
  %125 = getelementptr inbounds float, ptr addrspace(1) %37, i64 %119
  store float %124, ptr addrspace(1) %125, align 4, !tbaa !19, !alias.scope !276, !noalias !287
  %126 = fmul contract float %124, %124
  %127 = fadd contract float %118, %126
  %128 = add i64 %119, 1024
  %129 = icmp ult i64 %128, %14
  br i1 %129, label %.preheader, label %.loopexit2, !llvm.loop !288

130:                                              ; preds = %116
  %131 = uitofp i64 %14 to float
  %132 = fdiv contract float %117, %131
  %133 = fadd contract float %132, %15
  %134 = tail call float @llvm.fabs.f32(float %133)
  %135 = fcmp contract olt float %134, 0x3810000000000000
  %136 = fmul contract float %133, 0x4170000000000000
  %137 = select i1 %135, float %136, float %133
  %138 = bitcast float %137 to i32
  %139 = add i32 %138, -8388608
  %140 = icmp ult i32 %139, 2130706432
  br i1 %140, label %141, label %162

141:                                              ; preds = %130
  %142 = and i32 %138, 16777215
  %143 = or disjoint i32 %142, 1056964608
  %144 = bitcast i32 %143 to float
  %145 = sub nsw i32 %143, %138
  %146 = add nsw i32 %145, 201326592
  %147 = select i1 %135, i32 %146, i32 %145
  %148 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %144) #7
  %149 = fmul contract float %148, %148
  %150 = fneg contract float %149
  %151 = tail call float @llvm.fma.f32(float %148, float %148, float %150)
  %152 = fneg contract float %144
  %153 = tail call float @llvm.fma.f32(float %149, float %152, float 1.000000e+00)
  %154 = tail call float @llvm.fma.f32(float %151, float %152, float %153)
  %155 = tail call float @llvm.fma.f32(float %154, float 3.750000e-01, float 5.000000e-01)
  %156 = fmul contract float %148, %154
  %157 = tail call float @llvm.fma.f32(float %155, float %156, float %148)
  %158 = ashr i32 %147, 1
  %159 = bitcast float %157 to i32
  %160 = add i32 %158, %159
  %161 = bitcast i32 %160 to float
  br label %164

162:                                              ; preds = %130
  %163 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %137) #7
  br label %164

164:                                              ; preds = %162, %141
  %165 = phi float [ %161, %141 ], [ %163, %162 ]
  store float %165, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !284
  br label %166

166:                                              ; preds = %164, %116
  tail call void @llvm.bi.sl.barrier(), !noalias !284
  br i1 %40, label %167, label %.loopexit

167:                                              ; preds = %166
  %168 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj1024EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !284
  br label %169

169:                                              ; preds = %169, %167
  %170 = phi i64 [ %39, %167 ], [ %178, %169 ]
  %171 = getelementptr inbounds float, ptr addrspace(1) %37, i64 %170
  %172 = load float, ptr addrspace(1) %171, align 4, !tbaa !19, !alias.scope !276, !noalias !287
  %173 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %170
  %174 = load float, ptr addrspace(1) %173, align 4, !tbaa !19, !alias.scope !282, !noalias !289, !iluvatar.noclobber !18
  %175 = fmul contract float %172, %174
  %176 = fmul contract float %168, %175
  %177 = getelementptr inbounds float, ptr addrspace(1) %25, i64 %170
  store float %176, ptr addrspace(1) %177, align 4, !tbaa !19, !alias.scope !273, !noalias !290
  %178 = add i64 %170, 1024
  %179 = icmp ult i64 %178, %14
  br i1 %179, label %169, label %.loopexit, !llvm.loop !291

.loopexit:                                        ; preds = %169, %166
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %162, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !303
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !303
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %148

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !303
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !303
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !303
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !303
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !303
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !303
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !303
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !303
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !303
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !303
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !303
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !303
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !303
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !303
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !303
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !303
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !303
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !303
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !303
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !303
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !303
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !303
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !303
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !303
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !303
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !303
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !303
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !303
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !303
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !303
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !303
  %147 = fadd contract float %146, %145
  br label %148

148:                                              ; preds = %85, %83
  %149 = phi float [ %147, %85 ], [ %78, %83 ]
  br i1 %84, label %165, label %201

.preheader:                                       ; preds = %16, %.preheader
  %150 = phi float [ %162, %.preheader ], [ 0.000000e+00, %16 ]
  %151 = phi i64 [ %163, %.preheader ], [ %39, %16 ]
  %152 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %151
  %153 = load half, ptr addrspace(1) %152, align 2, !tbaa.struct !24, !alias.scope !297, !noalias !304, !iluvatar.noclobber !18
  %154 = fpext half %153 to float
  %155 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %151
  %156 = load half, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !299, !noalias !305, !iluvatar.noclobber !18
  %157 = fpext half %156 to float
  %158 = fadd contract float %154, %157
  %159 = fptrunc float %158 to half
  %160 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %151
  store half %159, ptr addrspace(1) %160, align 2, !tbaa !25, !alias.scope !295, !noalias !306
  %161 = fmul contract float %158, %158
  %162 = fadd contract float %150, %161
  %163 = add i64 %151, 2048
  %164 = icmp ult i64 %163, %14
  br i1 %164, label %.preheader, label %.loopexit3, !llvm.loop !307

165:                                              ; preds = %148
  %166 = uitofp i64 %14 to float
  %167 = fdiv contract float %149, %166
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
  store float %200, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !303
  br label %201

201:                                              ; preds = %199, %148
  tail call void @llvm.bi.sl.barrier(), !noalias !303
  br i1 %40, label %202, label %.loopexit

202:                                              ; preds = %201
  %203 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !303
  %204 = xor i64 %39, -1
  %205 = add i64 %204, %14
  %206 = lshr i64 %205, 11
  %207 = add nuw nsw i64 %206, 1
  %208 = icmp ult i64 %205, 2048
  br i1 %208, label %.preheader4, label %209

209:                                              ; preds = %202
  %210 = and i64 %207, 18014398509481982
  %211 = shl i64 %210, 11
  %212 = insertelement <2 x float> poison, float %203, i64 0
  %213 = shufflevector <2 x float> %212, <2 x float> poison, <2 x i32> zeroinitializer
  br label %214

214:                                              ; preds = %214, %209
  %215 = phi i64 [ 0, %209 ], [ %240, %214 ]
  %216 = shl i64 %215, 11
  %217 = or disjoint i64 %216, %39
  %218 = add i64 %217, 2048
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %217
  %220 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %218
  %221 = load half, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !295, !noalias !306
  %222 = load half, ptr addrspace(1) %220, align 2, !tbaa.struct !24, !alias.scope !295, !noalias !306
  %223 = insertelement <2 x half> poison, half %221, i64 0
  %224 = insertelement <2 x half> %223, half %222, i64 1
  %225 = fpext <2 x half> %224 to <2 x float>
  %226 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %217
  %227 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %218
  %228 = load half, ptr addrspace(1) %226, align 2, !tbaa.struct !24, !alias.scope !301, !noalias !308, !iluvatar.noclobber !18
  %229 = load half, ptr addrspace(1) %227, align 2, !tbaa.struct !24, !alias.scope !301, !noalias !308, !iluvatar.noclobber !18
  %230 = insertelement <2 x half> poison, half %228, i64 0
  %231 = insertelement <2 x half> %230, half %229, i64 1
  %232 = fpext <2 x half> %231 to <2 x float>
  %233 = fmul contract <2 x float> %225, %232
  %234 = fmul contract <2 x float> %213, %233
  %235 = fptrunc <2 x float> %234 to <2 x half>
  %236 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %217
  %237 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %218
  %238 = extractelement <2 x half> %235, i64 0
  store half %238, ptr addrspace(1) %236, align 2, !tbaa !25, !alias.scope !292, !noalias !309
  %239 = extractelement <2 x half> %235, i64 1
  store half %239, ptr addrspace(1) %237, align 2, !tbaa !25, !alias.scope !292, !noalias !309
  %240 = add nuw i64 %215, 2
  %241 = icmp eq i64 %240, %210
  br i1 %241, label %242, label %214, !llvm.loop !310

242:                                              ; preds = %214
  %243 = or disjoint i64 %211, %39
  %244 = icmp eq i64 %207, %210
  br i1 %244, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %242, %202
  %.ph = phi i64 [ %243, %242 ], [ %39, %202 ]
  br label %245

245:                                              ; preds = %.preheader4, %245
  %246 = phi i64 [ %257, %245 ], [ %.ph, %.preheader4 ]
  %247 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %246
  %248 = load half, ptr addrspace(1) %247, align 2, !tbaa.struct !24, !alias.scope !295, !noalias !306
  %249 = fpext half %248 to float
  %250 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %246
  %251 = load half, ptr addrspace(1) %250, align 2, !tbaa.struct !24, !alias.scope !301, !noalias !308, !iluvatar.noclobber !18
  %252 = fpext half %251 to float
  %253 = fmul contract float %249, %252
  %254 = fmul contract float %203, %253
  %255 = fptrunc float %254 to half
  %256 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %246
  store half %255, ptr addrspace(1) %256, align 2, !tbaa !25, !alias.scope !292, !noalias !309
  %257 = add i64 %246, 2048
  %258 = icmp ult i64 %257, %14
  br i1 %258, label %245, label %.loopexit, !llvm.loop !311

.loopexit:                                        ; preds = %245, %242, %201
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %162, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !323
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !323
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %148

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !323
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !323
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !323
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !323
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !323
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !323
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !323
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !323
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !323
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !323
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !323
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !323
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !323
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !323
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !323
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !323
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !323
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !323
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !323
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !323
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !323
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !323
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !323
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !323
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !323
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !323
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !323
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !323
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !323
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !323
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !323
  %147 = fadd contract float %146, %145
  br label %148

148:                                              ; preds = %85, %83
  %149 = phi float [ %147, %85 ], [ %78, %83 ]
  br i1 %84, label %165, label %201

.preheader:                                       ; preds = %16, %.preheader
  %150 = phi float [ %162, %.preheader ], [ 0.000000e+00, %16 ]
  %151 = phi i64 [ %163, %.preheader ], [ %39, %16 ]
  %152 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %151
  %153 = load half, ptr addrspace(1) %152, align 2, !tbaa.struct !24, !alias.scope !317, !noalias !324, !iluvatar.noclobber !18
  %154 = fpext half %153 to float
  %155 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %151
  %156 = load half, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !319, !noalias !325, !iluvatar.noclobber !18
  %157 = fpext half %156 to float
  %158 = fadd contract float %154, %157
  %159 = fptrunc float %158 to half
  %160 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %151
  store half %159, ptr addrspace(1) %160, align 2, !tbaa !25, !alias.scope !315, !noalias !326
  %161 = fmul contract float %158, %158
  %162 = fadd contract float %150, %161
  %163 = add i64 %151, 2048
  %164 = icmp ult i64 %163, %14
  br i1 %164, label %.preheader, label %.loopexit3, !llvm.loop !327

165:                                              ; preds = %148
  %166 = uitofp i64 %14 to float
  %167 = fdiv contract float %149, %166
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
  store float %200, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !323
  br label %201

201:                                              ; preds = %199, %148
  tail call void @llvm.bi.sl.barrier(), !noalias !323
  br i1 %40, label %202, label %.loopexit

202:                                              ; preds = %201
  %203 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !323
  %204 = xor i64 %39, -1
  %205 = add i64 %204, %14
  %206 = lshr i64 %205, 11
  %207 = add nuw nsw i64 %206, 1
  %208 = icmp ult i64 %205, 2048
  br i1 %208, label %.preheader4, label %209

209:                                              ; preds = %202
  %210 = and i64 %207, 18014398509481982
  %211 = shl i64 %210, 11
  %212 = insertelement <2 x float> poison, float %203, i64 0
  %213 = shufflevector <2 x float> %212, <2 x float> poison, <2 x i32> zeroinitializer
  br label %214

214:                                              ; preds = %214, %209
  %215 = phi i64 [ 0, %209 ], [ %240, %214 ]
  %216 = shl i64 %215, 11
  %217 = or disjoint i64 %216, %39
  %218 = add i64 %217, 2048
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %217
  %220 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %218
  %221 = load half, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !315, !noalias !326
  %222 = load half, ptr addrspace(1) %220, align 2, !tbaa.struct !24, !alias.scope !315, !noalias !326
  %223 = insertelement <2 x half> poison, half %221, i64 0
  %224 = insertelement <2 x half> %223, half %222, i64 1
  %225 = fpext <2 x half> %224 to <2 x float>
  %226 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %217
  %227 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %218
  %228 = load bfloat, ptr addrspace(1) %226, align 2, !tbaa.struct !24, !alias.scope !321, !noalias !328, !iluvatar.noclobber !18
  %229 = load bfloat, ptr addrspace(1) %227, align 2, !tbaa.struct !24, !alias.scope !321, !noalias !328, !iluvatar.noclobber !18
  %230 = insertelement <2 x bfloat> poison, bfloat %228, i64 0
  %231 = insertelement <2 x bfloat> %230, bfloat %229, i64 1
  %232 = fpext <2 x bfloat> %231 to <2 x float>
  %233 = fmul contract <2 x float> %225, %232
  %234 = fmul contract <2 x float> %213, %233
  %235 = fptrunc <2 x float> %234 to <2 x half>
  %236 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %217
  %237 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %218
  %238 = extractelement <2 x half> %235, i64 0
  store half %238, ptr addrspace(1) %236, align 2, !tbaa !25, !alias.scope !312, !noalias !329
  %239 = extractelement <2 x half> %235, i64 1
  store half %239, ptr addrspace(1) %237, align 2, !tbaa !25, !alias.scope !312, !noalias !329
  %240 = add nuw i64 %215, 2
  %241 = icmp eq i64 %240, %210
  br i1 %241, label %242, label %214, !llvm.loop !330

242:                                              ; preds = %214
  %243 = or disjoint i64 %211, %39
  %244 = icmp eq i64 %207, %210
  br i1 %244, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %242, %202
  %.ph = phi i64 [ %243, %242 ], [ %39, %202 ]
  br label %245

245:                                              ; preds = %.preheader4, %245
  %246 = phi i64 [ %257, %245 ], [ %.ph, %.preheader4 ]
  %247 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %246
  %248 = load half, ptr addrspace(1) %247, align 2, !tbaa.struct !24, !alias.scope !315, !noalias !326
  %249 = fpext half %248 to float
  %250 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %246
  %251 = load bfloat, ptr addrspace(1) %250, align 2, !tbaa.struct !24, !alias.scope !321, !noalias !328, !iluvatar.noclobber !18
  %252 = fpext bfloat %251 to float
  %253 = fmul contract float %249, %252
  %254 = fmul contract float %203, %253
  %255 = fptrunc float %254 to half
  %256 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %246
  store half %255, ptr addrspace(1) %256, align 2, !tbaa !25, !alias.scope !312, !noalias !329
  %257 = add i64 %246, 2048
  %258 = icmp ult i64 %257, %14
  br i1 %258, label %245, label %.loopexit, !llvm.loop !331

.loopexit:                                        ; preds = %245, %242, %201
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %162, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !343
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !343
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %148

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !343
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !343
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !343
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !343
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !343
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !343
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !343
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !343
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !343
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !343
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !343
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !343
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !343
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !343
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !343
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !343
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !343
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !343
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !343
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !343
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !343
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !343
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !343
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !343
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !343
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !343
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !343
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !343
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !343
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !343
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !343
  %147 = fadd contract float %146, %145
  br label %148

148:                                              ; preds = %85, %83
  %149 = phi float [ %147, %85 ], [ %78, %83 ]
  br i1 %84, label %165, label %201

.preheader:                                       ; preds = %16, %.preheader
  %150 = phi float [ %162, %.preheader ], [ 0.000000e+00, %16 ]
  %151 = phi i64 [ %163, %.preheader ], [ %39, %16 ]
  %152 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %151
  %153 = load half, ptr addrspace(1) %152, align 2, !tbaa.struct !24, !alias.scope !337, !noalias !344, !iluvatar.noclobber !18
  %154 = fpext half %153 to float
  %155 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %151
  %156 = load half, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !339, !noalias !345, !iluvatar.noclobber !18
  %157 = fpext half %156 to float
  %158 = fadd contract float %154, %157
  %159 = fptrunc float %158 to half
  %160 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %151
  store half %159, ptr addrspace(1) %160, align 2, !tbaa !25, !alias.scope !335, !noalias !346
  %161 = fmul contract float %158, %158
  %162 = fadd contract float %150, %161
  %163 = add i64 %151, 2048
  %164 = icmp ult i64 %163, %14
  br i1 %164, label %.preheader, label %.loopexit2, !llvm.loop !347

165:                                              ; preds = %148
  %166 = uitofp i64 %14 to float
  %167 = fdiv contract float %149, %166
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
  store float %200, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !343
  br label %201

201:                                              ; preds = %199, %148
  tail call void @llvm.bi.sl.barrier(), !noalias !343
  br i1 %40, label %202, label %.loopexit

202:                                              ; preds = %201
  %203 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !343
  br label %204

204:                                              ; preds = %204, %202
  %205 = phi i64 [ %39, %202 ], [ %215, %204 ]
  %206 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %205
  %207 = load half, ptr addrspace(1) %206, align 2, !tbaa.struct !24, !alias.scope !335, !noalias !346
  %208 = fpext half %207 to float
  %209 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %205
  %210 = load float, ptr addrspace(1) %209, align 4, !tbaa !19, !alias.scope !341, !noalias !348, !iluvatar.noclobber !18
  %211 = fmul contract float %210, %208
  %212 = fmul contract float %203, %211
  %213 = fptrunc float %212 to half
  %214 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %205
  store half %213, ptr addrspace(1) %214, align 2, !tbaa !25, !alias.scope !332, !noalias !349
  %215 = add i64 %205, 2048
  %216 = icmp ult i64 %215, %14
  br i1 %216, label %204, label %.loopexit, !llvm.loop !350

.loopexit:                                        ; preds = %204, %201
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %162, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !362
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !362
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %148

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !362
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !362
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !362
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !362
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !362
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !362
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !362
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !362
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !362
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !362
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !362
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !362
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !362
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !362
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !362
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !362
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !362
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !362
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !362
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !362
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !362
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !362
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !362
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !362
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !362
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !362
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !362
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !362
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !362
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !362
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !362
  %147 = fadd contract float %146, %145
  br label %148

148:                                              ; preds = %85, %83
  %149 = phi float [ %147, %85 ], [ %78, %83 ]
  br i1 %84, label %165, label %201

.preheader:                                       ; preds = %16, %.preheader
  %150 = phi float [ %162, %.preheader ], [ 0.000000e+00, %16 ]
  %151 = phi i64 [ %163, %.preheader ], [ %39, %16 ]
  %152 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %151
  %153 = load bfloat, ptr addrspace(1) %152, align 2, !tbaa.struct !24, !alias.scope !356, !noalias !363, !iluvatar.noclobber !18
  %154 = fpext bfloat %153 to float
  %155 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %151
  %156 = load bfloat, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !358, !noalias !364, !iluvatar.noclobber !18
  %157 = fpext bfloat %156 to float
  %158 = fadd contract float %154, %157
  %159 = fptrunc float %158 to bfloat
  %160 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %151
  store bfloat %159, ptr addrspace(1) %160, align 2, !tbaa !25, !alias.scope !354, !noalias !365
  %161 = fmul contract float %158, %158
  %162 = fadd contract float %150, %161
  %163 = add i64 %151, 2048
  %164 = icmp ult i64 %163, %14
  br i1 %164, label %.preheader, label %.loopexit3, !llvm.loop !366

165:                                              ; preds = %148
  %166 = uitofp i64 %14 to float
  %167 = fdiv contract float %149, %166
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
  store float %200, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !362
  br label %201

201:                                              ; preds = %199, %148
  tail call void @llvm.bi.sl.barrier(), !noalias !362
  br i1 %40, label %202, label %.loopexit

202:                                              ; preds = %201
  %203 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !362
  %204 = xor i64 %39, -1
  %205 = add i64 %204, %14
  %206 = lshr i64 %205, 11
  %207 = add nuw nsw i64 %206, 1
  %208 = icmp ult i64 %205, 2048
  br i1 %208, label %.preheader4, label %209

209:                                              ; preds = %202
  %210 = and i64 %207, 18014398509481982
  %211 = shl i64 %210, 11
  %212 = insertelement <2 x float> poison, float %203, i64 0
  %213 = shufflevector <2 x float> %212, <2 x float> poison, <2 x i32> zeroinitializer
  br label %214

214:                                              ; preds = %214, %209
  %215 = phi i64 [ 0, %209 ], [ %240, %214 ]
  %216 = shl i64 %215, 11
  %217 = or disjoint i64 %216, %39
  %218 = add i64 %217, 2048
  %219 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %217
  %220 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %218
  %221 = load bfloat, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !354, !noalias !365
  %222 = load bfloat, ptr addrspace(1) %220, align 2, !tbaa.struct !24, !alias.scope !354, !noalias !365
  %223 = insertelement <2 x bfloat> poison, bfloat %221, i64 0
  %224 = insertelement <2 x bfloat> %223, bfloat %222, i64 1
  %225 = fpext <2 x bfloat> %224 to <2 x float>
  %226 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %217
  %227 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %218
  %228 = load bfloat, ptr addrspace(1) %226, align 2, !tbaa.struct !24, !alias.scope !360, !noalias !367, !iluvatar.noclobber !18
  %229 = load bfloat, ptr addrspace(1) %227, align 2, !tbaa.struct !24, !alias.scope !360, !noalias !367, !iluvatar.noclobber !18
  %230 = insertelement <2 x bfloat> poison, bfloat %228, i64 0
  %231 = insertelement <2 x bfloat> %230, bfloat %229, i64 1
  %232 = fpext <2 x bfloat> %231 to <2 x float>
  %233 = fmul contract <2 x float> %225, %232
  %234 = fmul contract <2 x float> %213, %233
  %235 = fptrunc <2 x float> %234 to <2 x bfloat>
  %236 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %217
  %237 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %218
  %238 = extractelement <2 x bfloat> %235, i64 0
  store bfloat %238, ptr addrspace(1) %236, align 2, !tbaa !25, !alias.scope !351, !noalias !368
  %239 = extractelement <2 x bfloat> %235, i64 1
  store bfloat %239, ptr addrspace(1) %237, align 2, !tbaa !25, !alias.scope !351, !noalias !368
  %240 = add nuw i64 %215, 2
  %241 = icmp eq i64 %240, %210
  br i1 %241, label %242, label %214, !llvm.loop !369

242:                                              ; preds = %214
  %243 = or disjoint i64 %211, %39
  %244 = icmp eq i64 %207, %210
  br i1 %244, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %242, %202
  %.ph = phi i64 [ %243, %242 ], [ %39, %202 ]
  br label %245

245:                                              ; preds = %.preheader4, %245
  %246 = phi i64 [ %257, %245 ], [ %.ph, %.preheader4 ]
  %247 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %246
  %248 = load bfloat, ptr addrspace(1) %247, align 2, !tbaa.struct !24, !alias.scope !354, !noalias !365
  %249 = fpext bfloat %248 to float
  %250 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %246
  %251 = load bfloat, ptr addrspace(1) %250, align 2, !tbaa.struct !24, !alias.scope !360, !noalias !367, !iluvatar.noclobber !18
  %252 = fpext bfloat %251 to float
  %253 = fmul contract float %249, %252
  %254 = fmul contract float %203, %253
  %255 = fptrunc float %254 to bfloat
  %256 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %246
  store bfloat %255, ptr addrspace(1) %256, align 2, !tbaa !25, !alias.scope !351, !noalias !368
  %257 = add i64 %246, 2048
  %258 = icmp ult i64 %257, %14
  br i1 %258, label %245, label %.loopexit, !llvm.loop !370

.loopexit:                                        ; preds = %245, %242, %201
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %162, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !382
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !382
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %148

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !382
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !382
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !382
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !382
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !382
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !382
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !382
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !382
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !382
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !382
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !382
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !382
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !382
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !382
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !382
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !382
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !382
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !382
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !382
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !382
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !382
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !382
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !382
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !382
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !382
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !382
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !382
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !382
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !382
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !382
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !382
  %147 = fadd contract float %146, %145
  br label %148

148:                                              ; preds = %85, %83
  %149 = phi float [ %147, %85 ], [ %78, %83 ]
  br i1 %84, label %165, label %201

.preheader:                                       ; preds = %16, %.preheader
  %150 = phi float [ %162, %.preheader ], [ 0.000000e+00, %16 ]
  %151 = phi i64 [ %163, %.preheader ], [ %39, %16 ]
  %152 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %151
  %153 = load bfloat, ptr addrspace(1) %152, align 2, !tbaa.struct !24, !alias.scope !376, !noalias !383, !iluvatar.noclobber !18
  %154 = fpext bfloat %153 to float
  %155 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %151
  %156 = load bfloat, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !378, !noalias !384, !iluvatar.noclobber !18
  %157 = fpext bfloat %156 to float
  %158 = fadd contract float %154, %157
  %159 = fptrunc float %158 to bfloat
  %160 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %151
  store bfloat %159, ptr addrspace(1) %160, align 2, !tbaa !25, !alias.scope !374, !noalias !385
  %161 = fmul contract float %158, %158
  %162 = fadd contract float %150, %161
  %163 = add i64 %151, 2048
  %164 = icmp ult i64 %163, %14
  br i1 %164, label %.preheader, label %.loopexit3, !llvm.loop !386

165:                                              ; preds = %148
  %166 = uitofp i64 %14 to float
  %167 = fdiv contract float %149, %166
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
  store float %200, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !382
  br label %201

201:                                              ; preds = %199, %148
  tail call void @llvm.bi.sl.barrier(), !noalias !382
  br i1 %40, label %202, label %.loopexit

202:                                              ; preds = %201
  %203 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !382
  %204 = xor i64 %39, -1
  %205 = add i64 %204, %14
  %206 = lshr i64 %205, 11
  %207 = add nuw nsw i64 %206, 1
  %208 = icmp ult i64 %205, 2048
  br i1 %208, label %.preheader4, label %209

209:                                              ; preds = %202
  %210 = and i64 %207, 18014398509481982
  %211 = shl i64 %210, 11
  %212 = insertelement <2 x float> poison, float %203, i64 0
  %213 = shufflevector <2 x float> %212, <2 x float> poison, <2 x i32> zeroinitializer
  br label %214

214:                                              ; preds = %214, %209
  %215 = phi i64 [ 0, %209 ], [ %240, %214 ]
  %216 = shl i64 %215, 11
  %217 = or disjoint i64 %216, %39
  %218 = add i64 %217, 2048
  %219 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %217
  %220 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %218
  %221 = load bfloat, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !374, !noalias !385
  %222 = load bfloat, ptr addrspace(1) %220, align 2, !tbaa.struct !24, !alias.scope !374, !noalias !385
  %223 = insertelement <2 x bfloat> poison, bfloat %221, i64 0
  %224 = insertelement <2 x bfloat> %223, bfloat %222, i64 1
  %225 = fpext <2 x bfloat> %224 to <2 x float>
  %226 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %217
  %227 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %218
  %228 = load half, ptr addrspace(1) %226, align 2, !tbaa.struct !24, !alias.scope !380, !noalias !387, !iluvatar.noclobber !18
  %229 = load half, ptr addrspace(1) %227, align 2, !tbaa.struct !24, !alias.scope !380, !noalias !387, !iluvatar.noclobber !18
  %230 = insertelement <2 x half> poison, half %228, i64 0
  %231 = insertelement <2 x half> %230, half %229, i64 1
  %232 = fpext <2 x half> %231 to <2 x float>
  %233 = fmul contract <2 x float> %225, %232
  %234 = fmul contract <2 x float> %213, %233
  %235 = fptrunc <2 x float> %234 to <2 x bfloat>
  %236 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %217
  %237 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %218
  %238 = extractelement <2 x bfloat> %235, i64 0
  store bfloat %238, ptr addrspace(1) %236, align 2, !tbaa !25, !alias.scope !371, !noalias !388
  %239 = extractelement <2 x bfloat> %235, i64 1
  store bfloat %239, ptr addrspace(1) %237, align 2, !tbaa !25, !alias.scope !371, !noalias !388
  %240 = add nuw i64 %215, 2
  %241 = icmp eq i64 %240, %210
  br i1 %241, label %242, label %214, !llvm.loop !389

242:                                              ; preds = %214
  %243 = or disjoint i64 %211, %39
  %244 = icmp eq i64 %207, %210
  br i1 %244, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %242, %202
  %.ph = phi i64 [ %243, %242 ], [ %39, %202 ]
  br label %245

245:                                              ; preds = %.preheader4, %245
  %246 = phi i64 [ %257, %245 ], [ %.ph, %.preheader4 ]
  %247 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %246
  %248 = load bfloat, ptr addrspace(1) %247, align 2, !tbaa.struct !24, !alias.scope !374, !noalias !385
  %249 = fpext bfloat %248 to float
  %250 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %246
  %251 = load half, ptr addrspace(1) %250, align 2, !tbaa.struct !24, !alias.scope !380, !noalias !387, !iluvatar.noclobber !18
  %252 = fpext half %251 to float
  %253 = fmul contract float %249, %252
  %254 = fmul contract float %203, %253
  %255 = fptrunc float %254 to bfloat
  %256 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %246
  store bfloat %255, ptr addrspace(1) %256, align 2, !tbaa !25, !alias.scope !371, !noalias !388
  %257 = add i64 %246, 2048
  %258 = icmp ult i64 %257, %14
  br i1 %258, label %245, label %.loopexit, !llvm.loop !390

.loopexit:                                        ; preds = %245, %242, %201
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %162, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !402
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !402
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %148

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !402
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !402
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !402
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !402
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !402
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !402
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !402
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !402
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !402
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !402
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !402
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !402
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !402
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !402
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !402
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !402
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !402
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !402
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !402
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !402
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !402
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !402
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !402
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !402
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !402
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !402
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !402
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !402
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !402
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !402
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !402
  %147 = fadd contract float %146, %145
  br label %148

148:                                              ; preds = %85, %83
  %149 = phi float [ %147, %85 ], [ %78, %83 ]
  br i1 %84, label %165, label %201

.preheader:                                       ; preds = %16, %.preheader
  %150 = phi float [ %162, %.preheader ], [ 0.000000e+00, %16 ]
  %151 = phi i64 [ %163, %.preheader ], [ %39, %16 ]
  %152 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %151
  %153 = load bfloat, ptr addrspace(1) %152, align 2, !tbaa.struct !24, !alias.scope !396, !noalias !403, !iluvatar.noclobber !18
  %154 = fpext bfloat %153 to float
  %155 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %151
  %156 = load bfloat, ptr addrspace(1) %155, align 2, !tbaa.struct !24, !alias.scope !398, !noalias !404, !iluvatar.noclobber !18
  %157 = fpext bfloat %156 to float
  %158 = fadd contract float %154, %157
  %159 = fptrunc float %158 to bfloat
  %160 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %151
  store bfloat %159, ptr addrspace(1) %160, align 2, !tbaa !25, !alias.scope !394, !noalias !405
  %161 = fmul contract float %158, %158
  %162 = fadd contract float %150, %161
  %163 = add i64 %151, 2048
  %164 = icmp ult i64 %163, %14
  br i1 %164, label %.preheader, label %.loopexit2, !llvm.loop !406

165:                                              ; preds = %148
  %166 = uitofp i64 %14 to float
  %167 = fdiv contract float %149, %166
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
  store float %200, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !402
  br label %201

201:                                              ; preds = %199, %148
  tail call void @llvm.bi.sl.barrier(), !noalias !402
  br i1 %40, label %202, label %.loopexit

202:                                              ; preds = %201
  %203 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !402
  br label %204

204:                                              ; preds = %204, %202
  %205 = phi i64 [ %39, %202 ], [ %215, %204 ]
  %206 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %205
  %207 = load bfloat, ptr addrspace(1) %206, align 2, !tbaa.struct !24, !alias.scope !394, !noalias !405
  %208 = fpext bfloat %207 to float
  %209 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %205
  %210 = load float, ptr addrspace(1) %209, align 4, !tbaa !19, !alias.scope !400, !noalias !407, !iluvatar.noclobber !18
  %211 = fmul contract float %210, %208
  %212 = fmul contract float %203, %211
  %213 = fptrunc float %212 to bfloat
  %214 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %205
  store bfloat %213, ptr addrspace(1) %214, align 2, !tbaa !25, !alias.scope !391, !noalias !408
  %215 = add i64 %205, 2048
  %216 = icmp ult i64 %215, %14
  br i1 %216, label %204, label %.loopexit, !llvm.loop !409

.loopexit:                                        ; preds = %204, %201
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds float, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds float, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds float, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds float, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds float, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %159, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 2048, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !421
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !421
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %148

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 9), align 4, !tbaa !19, !noalias !421
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 10), align 4, !tbaa !19, !noalias !421
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 11), align 4, !tbaa !19, !noalias !421
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 12), align 4, !tbaa !19, !noalias !421
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 13), align 4, !tbaa !19, !noalias !421
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 14), align 4, !tbaa !19, !noalias !421
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 15), align 4, !tbaa !19, !noalias !421
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 16), align 4, !tbaa !19, !noalias !421
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !421
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !421
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !421
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !421
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !421
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !421
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !421
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !421
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !421
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !421
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !421
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !421
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !421
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !421
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !421
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !421
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !421
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !421
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !421
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !421
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !421
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !421
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 2048>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !421
  %147 = fadd contract float %146, %145
  br label %148

148:                                              ; preds = %85, %83
  %149 = phi float [ %147, %85 ], [ %78, %83 ]
  br i1 %84, label %162, label %198

.preheader:                                       ; preds = %16, %.preheader
  %150 = phi float [ %159, %.preheader ], [ 0.000000e+00, %16 ]
  %151 = phi i64 [ %160, %.preheader ], [ %39, %16 ]
  %152 = getelementptr inbounds float, ptr addrspace(1) %29, i64 %151
  %153 = load float, ptr addrspace(1) %152, align 4, !tbaa !19, !alias.scope !415, !noalias !422, !iluvatar.noclobber !18
  %154 = getelementptr inbounds float, ptr addrspace(1) %33, i64 %151
  %155 = load float, ptr addrspace(1) %154, align 4, !tbaa !19, !alias.scope !417, !noalias !423, !iluvatar.noclobber !18
  %156 = fadd contract float %153, %155
  %157 = getelementptr inbounds float, ptr addrspace(1) %37, i64 %151
  store float %156, ptr addrspace(1) %157, align 4, !tbaa !19, !alias.scope !413, !noalias !424
  %158 = fmul contract float %156, %156
  %159 = fadd contract float %150, %158
  %160 = add i64 %151, 2048
  %161 = icmp ult i64 %160, %14
  br i1 %161, label %.preheader, label %.loopexit2, !llvm.loop !425

162:                                              ; preds = %148
  %163 = uitofp i64 %14 to float
  %164 = fdiv contract float %149, %163
  %165 = fadd contract float %164, %15
  %166 = tail call float @llvm.fabs.f32(float %165)
  %167 = fcmp contract olt float %166, 0x3810000000000000
  %168 = fmul contract float %165, 0x4170000000000000
  %169 = select i1 %167, float %168, float %165
  %170 = bitcast float %169 to i32
  %171 = add i32 %170, -8388608
  %172 = icmp ult i32 %171, 2130706432
  br i1 %172, label %173, label %194

173:                                              ; preds = %162
  %174 = and i32 %170, 16777215
  %175 = or disjoint i32 %174, 1056964608
  %176 = bitcast i32 %175 to float
  %177 = sub nsw i32 %175, %170
  %178 = add nsw i32 %177, 201326592
  %179 = select i1 %167, i32 %178, i32 %177
  %180 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %176) #7
  %181 = fmul contract float %180, %180
  %182 = fneg contract float %181
  %183 = tail call float @llvm.fma.f32(float %180, float %180, float %182)
  %184 = fneg contract float %176
  %185 = tail call float @llvm.fma.f32(float %181, float %184, float 1.000000e+00)
  %186 = tail call float @llvm.fma.f32(float %183, float %184, float %185)
  %187 = tail call float @llvm.fma.f32(float %186, float 3.750000e-01, float 5.000000e-01)
  %188 = fmul contract float %180, %186
  %189 = tail call float @llvm.fma.f32(float %187, float %188, float %180)
  %190 = ashr i32 %179, 1
  %191 = bitcast float %189 to i32
  %192 = add i32 %190, %191
  %193 = bitcast i32 %192 to float
  br label %196

194:                                              ; preds = %162
  %195 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %169) #7
  br label %196

196:                                              ; preds = %194, %173
  %197 = phi float [ %193, %173 ], [ %195, %194 ]
  store float %197, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !421
  br label %198

198:                                              ; preds = %196, %148
  tail call void @llvm.bi.sl.barrier(), !noalias !421
  br i1 %40, label %199, label %.loopexit

199:                                              ; preds = %198
  %200 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj2048EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !421
  br label %201

201:                                              ; preds = %201, %199
  %202 = phi i64 [ %39, %199 ], [ %210, %201 ]
  %203 = getelementptr inbounds float, ptr addrspace(1) %37, i64 %202
  %204 = load float, ptr addrspace(1) %203, align 4, !tbaa !19, !alias.scope !413, !noalias !424
  %205 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %202
  %206 = load float, ptr addrspace(1) %205, align 4, !tbaa !19, !alias.scope !419, !noalias !426, !iluvatar.noclobber !18
  %207 = fmul contract float %204, %206
  %208 = fmul contract float %200, %207
  %209 = getelementptr inbounds float, ptr addrspace(1) %25, i64 %202
  store float %208, ptr addrspace(1) %209, align 4, !tbaa !19, !alias.scope !410, !noalias !427
  %210 = add i64 %202, 2048
  %211 = icmp ult i64 %210, %14
  br i1 %211, label %201, label %.loopexit, !llvm.loop !428

.loopexit:                                        ; preds = %201, %198
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %226, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !440
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !440
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %212

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !440
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !440
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !440
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !440
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !440
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !440
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !440
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !440
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !440
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !440
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !440
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !440
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !440
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !440
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !440
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !440
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !440
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !440
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !440
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !440
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !440
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !440
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !440
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !440
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !440
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !440
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !440
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !440
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !440
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !440
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !440
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !440
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !440
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !440
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !440
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !440
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !440
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !440
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !440
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !440
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !440
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !440
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !440
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !440
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !440
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !440
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !440
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !440
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !440
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !440
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !440
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !440
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !440
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !440
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !440
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !440
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !440
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !440
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !440
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !440
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !440
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !440
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !440
  %211 = fadd contract float %210, %209
  br label %212

212:                                              ; preds = %85, %83
  %213 = phi float [ %211, %85 ], [ %78, %83 ]
  br i1 %84, label %229, label %265

.preheader:                                       ; preds = %16, %.preheader
  %214 = phi float [ %226, %.preheader ], [ 0.000000e+00, %16 ]
  %215 = phi i64 [ %227, %.preheader ], [ %39, %16 ]
  %216 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %215
  %217 = load half, ptr addrspace(1) %216, align 2, !tbaa.struct !24, !alias.scope !434, !noalias !441, !iluvatar.noclobber !18
  %218 = fpext half %217 to float
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %215
  %220 = load half, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !436, !noalias !442, !iluvatar.noclobber !18
  %221 = fpext half %220 to float
  %222 = fadd contract float %218, %221
  %223 = fptrunc float %222 to half
  %224 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %215
  store half %223, ptr addrspace(1) %224, align 2, !tbaa !25, !alias.scope !432, !noalias !443
  %225 = fmul contract float %222, %222
  %226 = fadd contract float %214, %225
  %227 = add nuw i64 %215, 4096
  %228 = icmp ult i64 %227, %14
  br i1 %228, label %.preheader, label %.loopexit3, !llvm.loop !444

229:                                              ; preds = %212
  %230 = uitofp i64 %14 to float
  %231 = fdiv contract float %213, %230
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
  store float %264, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !440
  br label %265

265:                                              ; preds = %263, %212
  tail call void @llvm.bi.sl.barrier(), !noalias !440
  br i1 %40, label %266, label %.loopexit

266:                                              ; preds = %265
  %267 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halfS0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !440
  %268 = xor i64 %39, -1
  %269 = add i64 %268, %14
  %270 = lshr i64 %269, 12
  %271 = add nuw nsw i64 %270, 1
  %272 = icmp ult i64 %269, 4096
  br i1 %272, label %.preheader4, label %273

273:                                              ; preds = %266
  %274 = and i64 %271, 9007199254740990
  %275 = shl i64 %274, 12
  %276 = insertelement <2 x float> poison, float %267, i64 0
  %277 = shufflevector <2 x float> %276, <2 x float> poison, <2 x i32> zeroinitializer
  br label %278

278:                                              ; preds = %278, %273
  %279 = phi i64 [ 0, %273 ], [ %304, %278 ]
  %280 = shl i64 %279, 12
  %281 = or disjoint i64 %280, %39
  %282 = or disjoint i64 %281, 4096
  %283 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %281
  %284 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %282
  %285 = load half, ptr addrspace(1) %283, align 2, !tbaa.struct !24, !alias.scope !432, !noalias !443
  %286 = load half, ptr addrspace(1) %284, align 2, !tbaa.struct !24, !alias.scope !432, !noalias !443
  %287 = insertelement <2 x half> poison, half %285, i64 0
  %288 = insertelement <2 x half> %287, half %286, i64 1
  %289 = fpext <2 x half> %288 to <2 x float>
  %290 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %281
  %291 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %282
  %292 = load half, ptr addrspace(1) %290, align 2, !tbaa.struct !24, !alias.scope !438, !noalias !445, !iluvatar.noclobber !18
  %293 = load half, ptr addrspace(1) %291, align 2, !tbaa.struct !24, !alias.scope !438, !noalias !445, !iluvatar.noclobber !18
  %294 = insertelement <2 x half> poison, half %292, i64 0
  %295 = insertelement <2 x half> %294, half %293, i64 1
  %296 = fpext <2 x half> %295 to <2 x float>
  %297 = fmul contract <2 x float> %289, %296
  %298 = fmul contract <2 x float> %277, %297
  %299 = fptrunc <2 x float> %298 to <2 x half>
  %300 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %281
  %301 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %282
  %302 = extractelement <2 x half> %299, i64 0
  store half %302, ptr addrspace(1) %300, align 2, !tbaa !25, !alias.scope !429, !noalias !446
  %303 = extractelement <2 x half> %299, i64 1
  store half %303, ptr addrspace(1) %301, align 2, !tbaa !25, !alias.scope !429, !noalias !446
  %304 = add nuw i64 %279, 2
  %305 = icmp eq i64 %304, %274
  br i1 %305, label %306, label %278, !llvm.loop !447

306:                                              ; preds = %278
  %307 = or disjoint i64 %275, %39
  %308 = icmp eq i64 %271, %274
  br i1 %308, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %306, %266
  %.ph = phi i64 [ %307, %306 ], [ %39, %266 ]
  br label %309

309:                                              ; preds = %.preheader4, %309
  %310 = phi i64 [ %321, %309 ], [ %.ph, %.preheader4 ]
  %311 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %310
  %312 = load half, ptr addrspace(1) %311, align 2, !tbaa.struct !24, !alias.scope !432, !noalias !443
  %313 = fpext half %312 to float
  %314 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %310
  %315 = load half, ptr addrspace(1) %314, align 2, !tbaa.struct !24, !alias.scope !438, !noalias !445, !iluvatar.noclobber !18
  %316 = fpext half %315 to float
  %317 = fmul contract float %313, %316
  %318 = fmul contract float %267, %317
  %319 = fptrunc float %318 to half
  %320 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %310
  store half %319, ptr addrspace(1) %320, align 2, !tbaa !25, !alias.scope !429, !noalias !446
  %321 = add nuw i64 %310, 4096
  %322 = icmp ult i64 %321, %14
  br i1 %322, label %309, label %.loopexit, !llvm.loop !448

.loopexit:                                        ; preds = %309, %306, %265
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %226, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !460
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !460
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %212

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !460
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !460
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !460
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !460
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !460
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !460
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !460
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !460
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !460
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !460
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !460
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !460
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !460
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !460
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !460
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !460
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !460
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !460
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !460
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !460
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !460
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !460
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !460
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !460
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !460
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !460
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !460
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !460
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !460
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !460
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !460
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !460
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !460
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !460
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !460
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !460
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !460
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !460
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !460
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !460
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !460
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !460
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !460
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !460
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !460
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !460
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !460
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !460
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !460
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !460
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !460
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !460
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !460
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !460
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !460
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !460
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !460
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !460
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !460
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !460
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !460
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !460
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !460
  %211 = fadd contract float %210, %209
  br label %212

212:                                              ; preds = %85, %83
  %213 = phi float [ %211, %85 ], [ %78, %83 ]
  br i1 %84, label %229, label %265

.preheader:                                       ; preds = %16, %.preheader
  %214 = phi float [ %226, %.preheader ], [ 0.000000e+00, %16 ]
  %215 = phi i64 [ %227, %.preheader ], [ %39, %16 ]
  %216 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %215
  %217 = load half, ptr addrspace(1) %216, align 2, !tbaa.struct !24, !alias.scope !454, !noalias !461, !iluvatar.noclobber !18
  %218 = fpext half %217 to float
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %215
  %220 = load half, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !456, !noalias !462, !iluvatar.noclobber !18
  %221 = fpext half %220 to float
  %222 = fadd contract float %218, %221
  %223 = fptrunc float %222 to half
  %224 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %215
  store half %223, ptr addrspace(1) %224, align 2, !tbaa !25, !alias.scope !452, !noalias !463
  %225 = fmul contract float %222, %222
  %226 = fadd contract float %214, %225
  %227 = add nuw i64 %215, 4096
  %228 = icmp ult i64 %227, %14
  br i1 %228, label %.preheader, label %.loopexit3, !llvm.loop !464

229:                                              ; preds = %212
  %230 = uitofp i64 %14 to float
  %231 = fdiv contract float %213, %230
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
  store float %264, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !460
  br label %265

265:                                              ; preds = %263, %212
  tail call void @llvm.bi.sl.barrier(), !noalias !460
  br i1 %40, label %266, label %.loopexit

266:                                              ; preds = %265
  %267 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__half13__nv_bfloat16EvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !460
  %268 = xor i64 %39, -1
  %269 = add i64 %268, %14
  %270 = lshr i64 %269, 12
  %271 = add nuw nsw i64 %270, 1
  %272 = icmp ult i64 %269, 4096
  br i1 %272, label %.preheader4, label %273

273:                                              ; preds = %266
  %274 = and i64 %271, 9007199254740990
  %275 = shl i64 %274, 12
  %276 = insertelement <2 x float> poison, float %267, i64 0
  %277 = shufflevector <2 x float> %276, <2 x float> poison, <2 x i32> zeroinitializer
  br label %278

278:                                              ; preds = %278, %273
  %279 = phi i64 [ 0, %273 ], [ %304, %278 ]
  %280 = shl i64 %279, 12
  %281 = or disjoint i64 %280, %39
  %282 = or disjoint i64 %281, 4096
  %283 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %281
  %284 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %282
  %285 = load half, ptr addrspace(1) %283, align 2, !tbaa.struct !24, !alias.scope !452, !noalias !463
  %286 = load half, ptr addrspace(1) %284, align 2, !tbaa.struct !24, !alias.scope !452, !noalias !463
  %287 = insertelement <2 x half> poison, half %285, i64 0
  %288 = insertelement <2 x half> %287, half %286, i64 1
  %289 = fpext <2 x half> %288 to <2 x float>
  %290 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %281
  %291 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %282
  %292 = load bfloat, ptr addrspace(1) %290, align 2, !tbaa.struct !24, !alias.scope !458, !noalias !465, !iluvatar.noclobber !18
  %293 = load bfloat, ptr addrspace(1) %291, align 2, !tbaa.struct !24, !alias.scope !458, !noalias !465, !iluvatar.noclobber !18
  %294 = insertelement <2 x bfloat> poison, bfloat %292, i64 0
  %295 = insertelement <2 x bfloat> %294, bfloat %293, i64 1
  %296 = fpext <2 x bfloat> %295 to <2 x float>
  %297 = fmul contract <2 x float> %289, %296
  %298 = fmul contract <2 x float> %277, %297
  %299 = fptrunc <2 x float> %298 to <2 x half>
  %300 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %281
  %301 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %282
  %302 = extractelement <2 x half> %299, i64 0
  store half %302, ptr addrspace(1) %300, align 2, !tbaa !25, !alias.scope !449, !noalias !466
  %303 = extractelement <2 x half> %299, i64 1
  store half %303, ptr addrspace(1) %301, align 2, !tbaa !25, !alias.scope !449, !noalias !466
  %304 = add nuw i64 %279, 2
  %305 = icmp eq i64 %304, %274
  br i1 %305, label %306, label %278, !llvm.loop !467

306:                                              ; preds = %278
  %307 = or disjoint i64 %275, %39
  %308 = icmp eq i64 %271, %274
  br i1 %308, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %306, %266
  %.ph = phi i64 [ %307, %306 ], [ %39, %266 ]
  br label %309

309:                                              ; preds = %.preheader4, %309
  %310 = phi i64 [ %321, %309 ], [ %.ph, %.preheader4 ]
  %311 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %310
  %312 = load half, ptr addrspace(1) %311, align 2, !tbaa.struct !24, !alias.scope !452, !noalias !463
  %313 = fpext half %312 to float
  %314 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %310
  %315 = load bfloat, ptr addrspace(1) %314, align 2, !tbaa.struct !24, !alias.scope !458, !noalias !465, !iluvatar.noclobber !18
  %316 = fpext bfloat %315 to float
  %317 = fmul contract float %313, %316
  %318 = fmul contract float %267, %317
  %319 = fptrunc float %318 to half
  %320 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %310
  store half %319, ptr addrspace(1) %320, align 2, !tbaa !25, !alias.scope !449, !noalias !466
  %321 = add nuw i64 %310, 4096
  %322 = icmp ult i64 %321, %14
  br i1 %322, label %309, label %.loopexit, !llvm.loop !468

.loopexit:                                        ; preds = %309, %306, %265
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__half, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__half, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %226, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !480
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !480
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %212

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !480
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !480
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !480
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !480
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !480
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !480
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !480
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !480
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !480
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !480
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !480
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !480
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !480
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !480
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !480
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !480
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !480
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !480
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !480
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !480
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !480
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !480
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !480
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !480
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !480
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !480
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !480
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !480
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !480
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !480
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !480
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !480
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !480
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !480
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !480
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !480
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !480
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !480
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !480
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !480
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !480
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !480
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !480
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !480
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !480
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !480
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !480
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !480
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !480
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !480
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !480
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !480
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !480
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !480
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !480
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !480
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !480
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !480
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !480
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !480
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !480
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !480
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !480
  %211 = fadd contract float %210, %209
  br label %212

212:                                              ; preds = %85, %83
  %213 = phi float [ %211, %85 ], [ %78, %83 ]
  br i1 %84, label %229, label %265

.preheader:                                       ; preds = %16, %.preheader
  %214 = phi float [ %226, %.preheader ], [ 0.000000e+00, %16 ]
  %215 = phi i64 [ %227, %.preheader ], [ %39, %16 ]
  %216 = getelementptr inbounds %struct.__half, ptr addrspace(1) %29, i64 %215
  %217 = load half, ptr addrspace(1) %216, align 2, !tbaa.struct !24, !alias.scope !474, !noalias !481, !iluvatar.noclobber !18
  %218 = fpext half %217 to float
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(1) %33, i64 %215
  %220 = load half, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !476, !noalias !482, !iluvatar.noclobber !18
  %221 = fpext half %220 to float
  %222 = fadd contract float %218, %221
  %223 = fptrunc float %222 to half
  %224 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %215
  store half %223, ptr addrspace(1) %224, align 2, !tbaa !25, !alias.scope !472, !noalias !483
  %225 = fmul contract float %222, %222
  %226 = fadd contract float %214, %225
  %227 = add nuw i64 %215, 4096
  %228 = icmp ult i64 %227, %14
  br i1 %228, label %.preheader, label %.loopexit2, !llvm.loop !484

229:                                              ; preds = %212
  %230 = uitofp i64 %14 to float
  %231 = fdiv contract float %213, %230
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
  store float %264, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !480
  br label %265

265:                                              ; preds = %263, %212
  tail call void @llvm.bi.sl.barrier(), !noalias !480
  br i1 %40, label %266, label %.loopexit

266:                                              ; preds = %265
  %267 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef6__halffEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !480
  br label %268

268:                                              ; preds = %268, %266
  %269 = phi i64 [ %39, %266 ], [ %279, %268 ]
  %270 = getelementptr inbounds %struct.__half, ptr addrspace(1) %37, i64 %269
  %271 = load half, ptr addrspace(1) %270, align 2, !tbaa.struct !24, !alias.scope !472, !noalias !483
  %272 = fpext half %271 to float
  %273 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %269
  %274 = load float, ptr addrspace(1) %273, align 4, !tbaa !19, !alias.scope !478, !noalias !485, !iluvatar.noclobber !18
  %275 = fmul contract float %274, %272
  %276 = fmul contract float %267, %275
  %277 = fptrunc float %276 to half
  %278 = getelementptr inbounds %struct.__half, ptr addrspace(1) %25, i64 %269
  store half %277, ptr addrspace(1) %278, align 2, !tbaa !25, !alias.scope !469, !noalias !486
  %279 = add nuw i64 %269, 4096
  %280 = icmp ult i64 %279, %14
  br i1 %280, label %268, label %.loopexit, !llvm.loop !487

.loopexit:                                        ; preds = %268, %265
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %226, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !499
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !499
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %212

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !499
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !499
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !499
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !499
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !499
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !499
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !499
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !499
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !499
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !499
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !499
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !499
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !499
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !499
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !499
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !499
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !499
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !499
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !499
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !499
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !499
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !499
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !499
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !499
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !499
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !499
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !499
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !499
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !499
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !499
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !499
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !499
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !499
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !499
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !499
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !499
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !499
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !499
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !499
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !499
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !499
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !499
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !499
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !499
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !499
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !499
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !499
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !499
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !499
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !499
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !499
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !499
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !499
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !499
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !499
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !499
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !499
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !499
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !499
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !499
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !499
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !499
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !499
  %211 = fadd contract float %210, %209
  br label %212

212:                                              ; preds = %85, %83
  %213 = phi float [ %211, %85 ], [ %78, %83 ]
  br i1 %84, label %229, label %265

.preheader:                                       ; preds = %16, %.preheader
  %214 = phi float [ %226, %.preheader ], [ 0.000000e+00, %16 ]
  %215 = phi i64 [ %227, %.preheader ], [ %39, %16 ]
  %216 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %215
  %217 = load bfloat, ptr addrspace(1) %216, align 2, !tbaa.struct !24, !alias.scope !493, !noalias !500, !iluvatar.noclobber !18
  %218 = fpext bfloat %217 to float
  %219 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %215
  %220 = load bfloat, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !495, !noalias !501, !iluvatar.noclobber !18
  %221 = fpext bfloat %220 to float
  %222 = fadd contract float %218, %221
  %223 = fptrunc float %222 to bfloat
  %224 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %215
  store bfloat %223, ptr addrspace(1) %224, align 2, !tbaa !25, !alias.scope !491, !noalias !502
  %225 = fmul contract float %222, %222
  %226 = fadd contract float %214, %225
  %227 = add nuw i64 %215, 4096
  %228 = icmp ult i64 %227, %14
  br i1 %228, label %.preheader, label %.loopexit3, !llvm.loop !503

229:                                              ; preds = %212
  %230 = uitofp i64 %14 to float
  %231 = fdiv contract float %213, %230
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
  store float %264, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !499
  br label %265

265:                                              ; preds = %263, %212
  tail call void @llvm.bi.sl.barrier(), !noalias !499
  br i1 %40, label %266, label %.loopexit

266:                                              ; preds = %265
  %267 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16S0_EvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !499
  %268 = xor i64 %39, -1
  %269 = add i64 %268, %14
  %270 = lshr i64 %269, 12
  %271 = add nuw nsw i64 %270, 1
  %272 = icmp ult i64 %269, 4096
  br i1 %272, label %.preheader4, label %273

273:                                              ; preds = %266
  %274 = and i64 %271, 9007199254740990
  %275 = shl i64 %274, 12
  %276 = insertelement <2 x float> poison, float %267, i64 0
  %277 = shufflevector <2 x float> %276, <2 x float> poison, <2 x i32> zeroinitializer
  br label %278

278:                                              ; preds = %278, %273
  %279 = phi i64 [ 0, %273 ], [ %304, %278 ]
  %280 = shl i64 %279, 12
  %281 = or disjoint i64 %280, %39
  %282 = or disjoint i64 %281, 4096
  %283 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %281
  %284 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %282
  %285 = load bfloat, ptr addrspace(1) %283, align 2, !tbaa.struct !24, !alias.scope !491, !noalias !502
  %286 = load bfloat, ptr addrspace(1) %284, align 2, !tbaa.struct !24, !alias.scope !491, !noalias !502
  %287 = insertelement <2 x bfloat> poison, bfloat %285, i64 0
  %288 = insertelement <2 x bfloat> %287, bfloat %286, i64 1
  %289 = fpext <2 x bfloat> %288 to <2 x float>
  %290 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %281
  %291 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %282
  %292 = load bfloat, ptr addrspace(1) %290, align 2, !tbaa.struct !24, !alias.scope !497, !noalias !504, !iluvatar.noclobber !18
  %293 = load bfloat, ptr addrspace(1) %291, align 2, !tbaa.struct !24, !alias.scope !497, !noalias !504, !iluvatar.noclobber !18
  %294 = insertelement <2 x bfloat> poison, bfloat %292, i64 0
  %295 = insertelement <2 x bfloat> %294, bfloat %293, i64 1
  %296 = fpext <2 x bfloat> %295 to <2 x float>
  %297 = fmul contract <2 x float> %289, %296
  %298 = fmul contract <2 x float> %277, %297
  %299 = fptrunc <2 x float> %298 to <2 x bfloat>
  %300 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %281
  %301 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %282
  %302 = extractelement <2 x bfloat> %299, i64 0
  store bfloat %302, ptr addrspace(1) %300, align 2, !tbaa !25, !alias.scope !488, !noalias !505
  %303 = extractelement <2 x bfloat> %299, i64 1
  store bfloat %303, ptr addrspace(1) %301, align 2, !tbaa !25, !alias.scope !488, !noalias !505
  %304 = add nuw i64 %279, 2
  %305 = icmp eq i64 %304, %274
  br i1 %305, label %306, label %278, !llvm.loop !506

306:                                              ; preds = %278
  %307 = or disjoint i64 %275, %39
  %308 = icmp eq i64 %271, %274
  br i1 %308, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %306, %266
  %.ph = phi i64 [ %307, %306 ], [ %39, %266 ]
  br label %309

309:                                              ; preds = %.preheader4, %309
  %310 = phi i64 [ %321, %309 ], [ %.ph, %.preheader4 ]
  %311 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %310
  %312 = load bfloat, ptr addrspace(1) %311, align 2, !tbaa.struct !24, !alias.scope !491, !noalias !502
  %313 = fpext bfloat %312 to float
  %314 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %12, i64 %310
  %315 = load bfloat, ptr addrspace(1) %314, align 2, !tbaa.struct !24, !alias.scope !497, !noalias !504, !iluvatar.noclobber !18
  %316 = fpext bfloat %315 to float
  %317 = fmul contract float %313, %316
  %318 = fmul contract float %267, %317
  %319 = fptrunc float %318 to bfloat
  %320 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %310
  store bfloat %319, ptr addrspace(1) %320, align 2, !tbaa !25, !alias.scope !488, !noalias !505
  %321 = add nuw i64 %310, 4096
  %322 = icmp ult i64 %321, %14
  br i1 %322, label %309, label %.loopexit, !llvm.loop !507

.loopexit:                                        ; preds = %309, %306, %265
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit3

.loopexit3:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %226, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit3
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !519
  br label %83

83:                                               ; preds = %80, %.loopexit3
  tail call void @llvm.bi.sl.barrier(), !noalias !519
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %212

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !519
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !519
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !519
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !519
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !519
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !519
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !519
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !519
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !519
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !519
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !519
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !519
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !519
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !519
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !519
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !519
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !519
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !519
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !519
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !519
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !519
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !519
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !519
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !519
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !519
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !519
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !519
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !519
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !519
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !519
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !519
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !519
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !519
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !519
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !519
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !519
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !519
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !519
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !519
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !519
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !519
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !519
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !519
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !519
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !519
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !519
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !519
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !519
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !519
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !519
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !519
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !519
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !519
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !519
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !519
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !519
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !519
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !519
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !519
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !519
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !519
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !519
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !519
  %211 = fadd contract float %210, %209
  br label %212

212:                                              ; preds = %85, %83
  %213 = phi float [ %211, %85 ], [ %78, %83 ]
  br i1 %84, label %229, label %265

.preheader:                                       ; preds = %16, %.preheader
  %214 = phi float [ %226, %.preheader ], [ 0.000000e+00, %16 ]
  %215 = phi i64 [ %227, %.preheader ], [ %39, %16 ]
  %216 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %215
  %217 = load bfloat, ptr addrspace(1) %216, align 2, !tbaa.struct !24, !alias.scope !513, !noalias !520, !iluvatar.noclobber !18
  %218 = fpext bfloat %217 to float
  %219 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %215
  %220 = load bfloat, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !515, !noalias !521, !iluvatar.noclobber !18
  %221 = fpext bfloat %220 to float
  %222 = fadd contract float %218, %221
  %223 = fptrunc float %222 to bfloat
  %224 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %215
  store bfloat %223, ptr addrspace(1) %224, align 2, !tbaa !25, !alias.scope !511, !noalias !522
  %225 = fmul contract float %222, %222
  %226 = fadd contract float %214, %225
  %227 = add nuw i64 %215, 4096
  %228 = icmp ult i64 %227, %14
  br i1 %228, label %.preheader, label %.loopexit3, !llvm.loop !523

229:                                              ; preds = %212
  %230 = uitofp i64 %14 to float
  %231 = fdiv contract float %213, %230
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
  store float %264, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !519
  br label %265

265:                                              ; preds = %263, %212
  tail call void @llvm.bi.sl.barrier(), !noalias !519
  br i1 %40, label %266, label %.loopexit

266:                                              ; preds = %265
  %267 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat166__halfEvPT1_S3_llllPKS2_llS5_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !519
  %268 = xor i64 %39, -1
  %269 = add i64 %268, %14
  %270 = lshr i64 %269, 12
  %271 = add nuw nsw i64 %270, 1
  %272 = icmp ult i64 %269, 4096
  br i1 %272, label %.preheader4, label %273

273:                                              ; preds = %266
  %274 = and i64 %271, 9007199254740990
  %275 = shl i64 %274, 12
  %276 = insertelement <2 x float> poison, float %267, i64 0
  %277 = shufflevector <2 x float> %276, <2 x float> poison, <2 x i32> zeroinitializer
  br label %278

278:                                              ; preds = %278, %273
  %279 = phi i64 [ 0, %273 ], [ %304, %278 ]
  %280 = shl i64 %279, 12
  %281 = or disjoint i64 %280, %39
  %282 = or disjoint i64 %281, 4096
  %283 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %281
  %284 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %282
  %285 = load bfloat, ptr addrspace(1) %283, align 2, !tbaa.struct !24, !alias.scope !511, !noalias !522
  %286 = load bfloat, ptr addrspace(1) %284, align 2, !tbaa.struct !24, !alias.scope !511, !noalias !522
  %287 = insertelement <2 x bfloat> poison, bfloat %285, i64 0
  %288 = insertelement <2 x bfloat> %287, bfloat %286, i64 1
  %289 = fpext <2 x bfloat> %288 to <2 x float>
  %290 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %281
  %291 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %282
  %292 = load half, ptr addrspace(1) %290, align 2, !tbaa.struct !24, !alias.scope !517, !noalias !524, !iluvatar.noclobber !18
  %293 = load half, ptr addrspace(1) %291, align 2, !tbaa.struct !24, !alias.scope !517, !noalias !524, !iluvatar.noclobber !18
  %294 = insertelement <2 x half> poison, half %292, i64 0
  %295 = insertelement <2 x half> %294, half %293, i64 1
  %296 = fpext <2 x half> %295 to <2 x float>
  %297 = fmul contract <2 x float> %289, %296
  %298 = fmul contract <2 x float> %277, %297
  %299 = fptrunc <2 x float> %298 to <2 x bfloat>
  %300 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %281
  %301 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %282
  %302 = extractelement <2 x bfloat> %299, i64 0
  store bfloat %302, ptr addrspace(1) %300, align 2, !tbaa !25, !alias.scope !508, !noalias !525
  %303 = extractelement <2 x bfloat> %299, i64 1
  store bfloat %303, ptr addrspace(1) %301, align 2, !tbaa !25, !alias.scope !508, !noalias !525
  %304 = add nuw i64 %279, 2
  %305 = icmp eq i64 %304, %274
  br i1 %305, label %306, label %278, !llvm.loop !526

306:                                              ; preds = %278
  %307 = or disjoint i64 %275, %39
  %308 = icmp eq i64 %271, %274
  br i1 %308, label %.loopexit, label %.preheader4

.preheader4:                                      ; preds = %306, %266
  %.ph = phi i64 [ %307, %306 ], [ %39, %266 ]
  br label %309

309:                                              ; preds = %.preheader4, %309
  %310 = phi i64 [ %321, %309 ], [ %.ph, %.preheader4 ]
  %311 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %310
  %312 = load bfloat, ptr addrspace(1) %311, align 2, !tbaa.struct !24, !alias.scope !511, !noalias !522
  %313 = fpext bfloat %312 to float
  %314 = getelementptr inbounds %struct.__half, ptr addrspace(1) %12, i64 %310
  %315 = load half, ptr addrspace(1) %314, align 2, !tbaa.struct !24, !alias.scope !517, !noalias !524, !iluvatar.noclobber !18
  %316 = fpext half %315 to float
  %317 = fmul contract float %313, %316
  %318 = fmul contract float %267, %317
  %319 = fptrunc float %318 to bfloat
  %320 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %310
  store bfloat %319, ptr addrspace(1) %320, align 2, !tbaa !25, !alias.scope !508, !noalias !525
  %321 = add nuw i64 %310, 4096
  %322 = icmp ult i64 %321, %14
  br i1 %322, label %309, label %.loopexit, !llvm.loop !527

.loopexit:                                        ; preds = %309, %306, %265
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %226, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !539
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !539
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %212

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !539
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !539
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !539
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !539
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !539
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !539
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !539
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !539
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !539
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !539
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !539
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !539
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !539
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !539
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !539
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !539
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !539
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !539
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !539
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !539
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !539
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !539
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !539
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !539
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !539
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !539
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !539
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !539
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !539
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !539
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !539
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !539
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !539
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !539
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !539
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !539
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !539
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !539
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !539
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !539
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !539
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !539
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !539
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !539
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !539
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !539
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !539
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !539
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !539
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !539
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !539
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !539
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !539
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !539
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !539
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !539
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !539
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !539
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !539
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !539
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !539
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !539
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !539
  %211 = fadd contract float %210, %209
  br label %212

212:                                              ; preds = %85, %83
  %213 = phi float [ %211, %85 ], [ %78, %83 ]
  br i1 %84, label %229, label %265

.preheader:                                       ; preds = %16, %.preheader
  %214 = phi float [ %226, %.preheader ], [ 0.000000e+00, %16 ]
  %215 = phi i64 [ %227, %.preheader ], [ %39, %16 ]
  %216 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %29, i64 %215
  %217 = load bfloat, ptr addrspace(1) %216, align 2, !tbaa.struct !24, !alias.scope !533, !noalias !540, !iluvatar.noclobber !18
  %218 = fpext bfloat %217 to float
  %219 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %33, i64 %215
  %220 = load bfloat, ptr addrspace(1) %219, align 2, !tbaa.struct !24, !alias.scope !535, !noalias !541, !iluvatar.noclobber !18
  %221 = fpext bfloat %220 to float
  %222 = fadd contract float %218, %221
  %223 = fptrunc float %222 to bfloat
  %224 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %215
  store bfloat %223, ptr addrspace(1) %224, align 2, !tbaa !25, !alias.scope !531, !noalias !542
  %225 = fmul contract float %222, %222
  %226 = fadd contract float %214, %225
  %227 = add nuw i64 %215, 4096
  %228 = icmp ult i64 %227, %14
  br i1 %228, label %.preheader, label %.loopexit2, !llvm.loop !543

229:                                              ; preds = %212
  %230 = uitofp i64 %14 to float
  %231 = fdiv contract float %213, %230
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
  store float %264, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !539
  br label %265

265:                                              ; preds = %263, %212
  tail call void @llvm.bi.sl.barrier(), !noalias !539
  br i1 %40, label %266, label %.loopexit

266:                                              ; preds = %265
  %267 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096Ef13__nv_bfloat16fEvPT1_S2_llllPKS1_llS4_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !539
  br label %268

268:                                              ; preds = %268, %266
  %269 = phi i64 [ %39, %266 ], [ %279, %268 ]
  %270 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %37, i64 %269
  %271 = load bfloat, ptr addrspace(1) %270, align 2, !tbaa.struct !24, !alias.scope !531, !noalias !542
  %272 = fpext bfloat %271 to float
  %273 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %269
  %274 = load float, ptr addrspace(1) %273, align 4, !tbaa !19, !alias.scope !537, !noalias !544, !iluvatar.noclobber !18
  %275 = fmul contract float %274, %272
  %276 = fmul contract float %267, %275
  %277 = fptrunc float %276 to bfloat
  %278 = getelementptr inbounds %struct.__nv_bfloat16, ptr addrspace(1) %25, i64 %269
  store bfloat %277, ptr addrspace(1) %278, align 2, !tbaa !25, !alias.scope !528, !noalias !545
  %279 = add nuw i64 %269, 4096
  %280 = icmp ult i64 %279, %14
  br i1 %280, label %268, label %.loopexit, !llvm.loop !546

.loopexit:                                        ; preds = %268, %265
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
  %19 = udiv i64 %18, %13
  %20 = mul i64 %19, %13
  %21 = sub i64 %18, %20
  %22 = mul i64 %19, %2
  %23 = getelementptr inbounds float, ptr addrspace(1) %0, i64 %22
  %24 = mul i64 %21, %3
  %25 = getelementptr inbounds float, ptr addrspace(1) %23, i64 %24
  %26 = mul i64 %19, %7
  %27 = getelementptr inbounds float, ptr addrspace(1) %6, i64 %26
  %28 = mul i64 %21, %8
  %29 = getelementptr inbounds float, ptr addrspace(1) %27, i64 %28
  %30 = mul i64 %19, %10
  %31 = getelementptr inbounds float, ptr addrspace(1) %9, i64 %30
  %32 = mul i64 %21, %11
  %33 = getelementptr inbounds float, ptr addrspace(1) %31, i64 %32
  %34 = mul i64 %19, %4
  %35 = getelementptr inbounds float, ptr addrspace(1) %1, i64 %34
  %36 = mul i64 %21, %5
  %37 = getelementptr inbounds float, ptr addrspace(1) %35, i64 %36
  %38 = tail call noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !16
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ult i64 %39, %14
  br i1 %40, label %.preheader, label %.loopexit2

.loopexit2:                                       ; preds = %.preheader, %16
  %41 = phi float [ 0.000000e+00, %16 ], [ %223, %.preheader ]
  %42 = tail call noundef i32 @llvm.bi.lane.id(), !range !17, !noundef !18
  %43 = icmp ne i32 %42, 63
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %41, i32 %45)
  %47 = select i1 %43, float %41, float -0.000000e+00
  %48 = fadd contract float %46, %47
  %49 = add nuw nsw i32 %42, 2
  %50 = icmp ugt i32 %42, 61
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %48, i32 %51)
  %53 = select i1 %50, float -0.000000e+00, float %48
  %54 = fadd contract float %52, %53
  %55 = add nuw nsw i32 %42, 4
  %56 = icmp ugt i32 %42, 59
  %57 = select i1 %56, i32 %42, i32 %55
  %58 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %54, i32 %57)
  %59 = select i1 %56, float -0.000000e+00, float %54
  %60 = fadd contract float %58, %59
  %61 = add nuw nsw i32 %42, 8
  %62 = icmp ugt i32 %42, 55
  %63 = select i1 %62, i32 %42, i32 %61
  %64 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %60, i32 %63)
  %65 = select i1 %62, float -0.000000e+00, float %60
  %66 = fadd contract float %64, %65
  %67 = add nuw nsw i32 %42, 16
  %68 = icmp ugt i32 %42, 47
  %69 = select i1 %68, i32 %42, i32 %67
  %70 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %66, i32 %69)
  %71 = select i1 %68, float -0.000000e+00, float %66
  %72 = fadd contract float %70, %71
  %73 = add nuw nsw i32 %42, 32
  %74 = icmp ugt i32 %42, 31
  %75 = select i1 %74, i32 %42, i32 %73
  %76 = tail call contract float @llvm.bi.slb.shfl.idx.b32.f32(float %72, i32 %75)
  %77 = select i1 %74, float -0.000000e+00, float %72
  %78 = fadd contract float %76, %77
  %79 = icmp eq i32 %42, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %.loopexit2
  %81 = lshr i32 %38, 6
  %82 = getelementptr inbounds %"struct.cub::BlockReduceWarpReductions<float, 4096, 1, 1, 300>::_TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 1, i32 %81
  store float %78, ptr addrspace(3) %82, align 4, !tbaa !19, !noalias !558
  br label %83

83:                                               ; preds = %80, %.loopexit2
  tail call void @llvm.bi.sl.barrier(), !noalias !558
  %84 = icmp eq i32 %38, 0
  br i1 %84, label %85, label %212

85:                                               ; preds = %83
  %86 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 17), align 4, !tbaa !19, !noalias !558
  %87 = fadd contract float %78, %86
  %88 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 18), align 4, !tbaa !19, !noalias !558
  %89 = fadd contract float %88, %87
  %90 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 19), align 4, !tbaa !19, !noalias !558
  %91 = fadd contract float %90, %89
  %92 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 20), align 4, !tbaa !19, !noalias !558
  %93 = fadd contract float %92, %91
  %94 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 21), align 4, !tbaa !19, !noalias !558
  %95 = fadd contract float %94, %93
  %96 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 22), align 4, !tbaa !19, !noalias !558
  %97 = fadd contract float %96, %95
  %98 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 23), align 4, !tbaa !19, !noalias !558
  %99 = fadd contract float %98, %97
  %100 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 24), align 4, !tbaa !19, !noalias !558
  %101 = fadd contract float %100, %99
  %102 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 25), align 4, !tbaa !19, !noalias !558
  %103 = fadd contract float %102, %101
  %104 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 26), align 4, !tbaa !19, !noalias !558
  %105 = fadd contract float %104, %103
  %106 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 27), align 4, !tbaa !19, !noalias !558
  %107 = fadd contract float %106, %105
  %108 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 28), align 4, !tbaa !19, !noalias !558
  %109 = fadd contract float %108, %107
  %110 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 29), align 4, !tbaa !19, !noalias !558
  %111 = fadd contract float %110, %109
  %112 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 30), align 4, !tbaa !19, !noalias !558
  %113 = fadd contract float %112, %111
  %114 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 31), align 4, !tbaa !19, !noalias !558
  %115 = fadd contract float %114, %113
  %116 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 32), align 4, !tbaa !19, !noalias !558
  %117 = fadd contract float %116, %115
  %118 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 33), align 4, !tbaa !19, !noalias !558
  %119 = fadd contract float %118, %117
  %120 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 34), align 4, !tbaa !19, !noalias !558
  %121 = fadd contract float %120, %119
  %122 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 35), align 4, !tbaa !19, !noalias !558
  %123 = fadd contract float %122, %121
  %124 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 36), align 4, !tbaa !19, !noalias !558
  %125 = fadd contract float %124, %123
  %126 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 37), align 4, !tbaa !19, !noalias !558
  %127 = fadd contract float %126, %125
  %128 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 38), align 4, !tbaa !19, !noalias !558
  %129 = fadd contract float %128, %127
  %130 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 39), align 4, !tbaa !19, !noalias !558
  %131 = fadd contract float %130, %129
  %132 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 40), align 4, !tbaa !19, !noalias !558
  %133 = fadd contract float %132, %131
  %134 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 41), align 4, !tbaa !19, !noalias !558
  %135 = fadd contract float %134, %133
  %136 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 42), align 4, !tbaa !19, !noalias !558
  %137 = fadd contract float %136, %135
  %138 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 43), align 4, !tbaa !19, !noalias !558
  %139 = fadd contract float %138, %137
  %140 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 44), align 4, !tbaa !19, !noalias !558
  %141 = fadd contract float %140, %139
  %142 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 45), align 4, !tbaa !19, !noalias !558
  %143 = fadd contract float %142, %141
  %144 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 46), align 4, !tbaa !19, !noalias !558
  %145 = fadd contract float %144, %143
  %146 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 47), align 4, !tbaa !19, !noalias !558
  %147 = fadd contract float %146, %145
  %148 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 48), align 4, !tbaa !19, !noalias !558
  %149 = fadd contract float %148, %147
  %150 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 49), align 4, !tbaa !19, !noalias !558
  %151 = fadd contract float %150, %149
  %152 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 50), align 4, !tbaa !19, !noalias !558
  %153 = fadd contract float %152, %151
  %154 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 51), align 4, !tbaa !19, !noalias !558
  %155 = fadd contract float %154, %153
  %156 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 52), align 4, !tbaa !19, !noalias !558
  %157 = fadd contract float %156, %155
  %158 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 53), align 4, !tbaa !19, !noalias !558
  %159 = fadd contract float %158, %157
  %160 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 54), align 4, !tbaa !19, !noalias !558
  %161 = fadd contract float %160, %159
  %162 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 55), align 4, !tbaa !19, !noalias !558
  %163 = fadd contract float %162, %161
  %164 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 56), align 4, !tbaa !19, !noalias !558
  %165 = fadd contract float %164, %163
  %166 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 57), align 4, !tbaa !19, !noalias !558
  %167 = fadd contract float %166, %165
  %168 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 58), align 4, !tbaa !19, !noalias !558
  %169 = fadd contract float %168, %167
  %170 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 59), align 4, !tbaa !19, !noalias !558
  %171 = fadd contract float %170, %169
  %172 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 60), align 4, !tbaa !19, !noalias !558
  %173 = fadd contract float %172, %171
  %174 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 61), align 4, !tbaa !19, !noalias !558
  %175 = fadd contract float %174, %173
  %176 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 62), align 4, !tbaa !19, !noalias !558
  %177 = fadd contract float %176, %175
  %178 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 63), align 4, !tbaa !19, !noalias !558
  %179 = fadd contract float %178, %177
  %180 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 64), align 4, !tbaa !19, !noalias !558
  %181 = fadd contract float %180, %179
  %182 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 65), align 4, !tbaa !19, !noalias !558
  %183 = fadd contract float %182, %181
  %184 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 66), align 4, !tbaa !19, !noalias !558
  %185 = fadd contract float %184, %183
  %186 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 67), align 4, !tbaa !19, !noalias !558
  %187 = fadd contract float %186, %185
  %188 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 68), align 4, !tbaa !19, !noalias !558
  %189 = fadd contract float %188, %187
  %190 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 69), align 4, !tbaa !19, !noalias !558
  %191 = fadd contract float %190, %189
  %192 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 70), align 4, !tbaa !19, !noalias !558
  %193 = fadd contract float %192, %191
  %194 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 71), align 4, !tbaa !19, !noalias !558
  %195 = fadd contract float %194, %193
  %196 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 72), align 4, !tbaa !19, !noalias !558
  %197 = fadd contract float %196, %195
  %198 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 73), align 4, !tbaa !19, !noalias !558
  %199 = fadd contract float %198, %197
  %200 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 74), align 4, !tbaa !19, !noalias !558
  %201 = fadd contract float %200, %199
  %202 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 75), align 4, !tbaa !19, !noalias !558
  %203 = fadd contract float %202, %201
  %204 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 76), align 4, !tbaa !19, !noalias !558
  %205 = fadd contract float %204, %203
  %206 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 77), align 4, !tbaa !19, !noalias !558
  %207 = fadd contract float %206, %205
  %208 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 78), align 4, !tbaa !19, !noalias !558
  %209 = fadd contract float %208, %207
  %210 = load float, ptr addrspace(3) getelementptr inbounds (%"struct.cub::BlockReduce<float, 4096>::TempStorage", ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE12temp_storage, i32 0, i32 0, i32 0, i32 79), align 4, !tbaa !19, !noalias !558
  %211 = fadd contract float %210, %209
  br label %212

212:                                              ; preds = %85, %83
  %213 = phi float [ %211, %85 ], [ %78, %83 ]
  br i1 %84, label %226, label %262

.preheader:                                       ; preds = %16, %.preheader
  %214 = phi float [ %223, %.preheader ], [ 0.000000e+00, %16 ]
  %215 = phi i64 [ %224, %.preheader ], [ %39, %16 ]
  %216 = getelementptr inbounds float, ptr addrspace(1) %29, i64 %215
  %217 = load float, ptr addrspace(1) %216, align 4, !tbaa !19, !alias.scope !552, !noalias !559, !iluvatar.noclobber !18
  %218 = getelementptr inbounds float, ptr addrspace(1) %33, i64 %215
  %219 = load float, ptr addrspace(1) %218, align 4, !tbaa !19, !alias.scope !554, !noalias !560, !iluvatar.noclobber !18
  %220 = fadd contract float %217, %219
  %221 = getelementptr inbounds float, ptr addrspace(1) %37, i64 %215
  store float %220, ptr addrspace(1) %221, align 4, !tbaa !19, !alias.scope !550, !noalias !561
  %222 = fmul contract float %220, %220
  %223 = fadd contract float %214, %222
  %224 = add nuw i64 %215, 4096
  %225 = icmp ult i64 %224, %14
  br i1 %225, label %.preheader, label %.loopexit2, !llvm.loop !562

226:                                              ; preds = %212
  %227 = uitofp i64 %14 to float
  %228 = fdiv contract float %213, %227
  %229 = fadd contract float %228, %15
  %230 = tail call float @llvm.fabs.f32(float %229)
  %231 = fcmp contract olt float %230, 0x3810000000000000
  %232 = fmul contract float %229, 0x4170000000000000
  %233 = select i1 %231, float %232, float %229
  %234 = bitcast float %233 to i32
  %235 = add i32 %234, -8388608
  %236 = icmp ult i32 %235, 2130706432
  br i1 %236, label %237, label %258

237:                                              ; preds = %226
  %238 = and i32 %234, 16777215
  %239 = or disjoint i32 %238, 1056964608
  %240 = bitcast i32 %239 to float
  %241 = sub nsw i32 %239, %234
  %242 = add nsw i32 %241, 201326592
  %243 = select i1 %231, i32 %242, i32 %241
  %244 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %240) #7
  %245 = fmul contract float %244, %244
  %246 = fneg contract float %245
  %247 = tail call float @llvm.fma.f32(float %244, float %244, float %246)
  %248 = fneg contract float %240
  %249 = tail call float @llvm.fma.f32(float %245, float %248, float 1.000000e+00)
  %250 = tail call float @llvm.fma.f32(float %247, float %248, float %249)
  %251 = tail call float @llvm.fma.f32(float %250, float 3.750000e-01, float 5.000000e-01)
  %252 = fmul contract float %244, %250
  %253 = tail call float @llvm.fma.f32(float %251, float %252, float %244)
  %254 = ashr i32 %243, 1
  %255 = bitcast float %253 to i32
  %256 = add i32 %254, %255
  %257 = bitcast i32 %256 to float
  br label %260

258:                                              ; preds = %226
  %259 = tail call contract noundef float @llvm.nvvm.rsqrt.approx.ftz.f(float noundef %233) #7
  br label %260

260:                                              ; preds = %258, %237
  %261 = phi float [ %257, %237 ], [ %259, %258 ]
  store float %261, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !558
  br label %262

262:                                              ; preds = %260, %212
  tail call void @llvm.bi.sl.barrier(), !noalias !558
  br i1 %40, label %263, label %.loopexit

263:                                              ; preds = %262
  %264 = load float, ptr addrspace(3) @_ZZ16add_rmsnormBlockILj4096EfffEvPT1_S1_llllPKS0_llS3_llPKT2_mmfE3rms, align 4, !tbaa !19, !noalias !558
  br label %265

265:                                              ; preds = %265, %263
  %266 = phi i64 [ %39, %263 ], [ %274, %265 ]
  %267 = getelementptr inbounds float, ptr addrspace(1) %37, i64 %266
  %268 = load float, ptr addrspace(1) %267, align 4, !tbaa !19, !alias.scope !550, !noalias !561
  %269 = getelementptr inbounds float, ptr addrspace(1) %12, i64 %266
  %270 = load float, ptr addrspace(1) %269, align 4, !tbaa !19, !alias.scope !556, !noalias !563, !iluvatar.noclobber !18
  %271 = fmul contract float %268, %270
  %272 = fmul contract float %264, %271
  %273 = getelementptr inbounds float, ptr addrspace(1) %25, i64 %266
  store float %272, ptr addrspace(1) %273, align 4, !tbaa !19, !alias.scope !547, !noalias !564
  %274 = add nuw i64 %266, 4096
  %275 = icmp ult i64 %274, %14
  br i1 %275, label %265, label %.loopexit, !llvm.loop !565

.loopexit:                                        ; preds = %265, %262
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @llvm.nvvm.rsqrt.approx.ftz.f(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { convergent mustprogress norecurse nounwind "frame-pointer"="all" "kernel"="1" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ivcore20" "target-features"="+async-copy,+fp64,+ivcore20-insts,+mbarrier,+mma-dirconv,+mma-f32-mn16k8,+mma-i8-mn16k32,+mma-slim,+mma-sparse,+named-bar,+v4i8-alu,+vblk-insts" "uniform-work-group-size"="true" }
attributes #1 = { convergent nounwind }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nosync nounwind speculatable memory(none) }
attributes #4 = { convergent nofree nounwind memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
