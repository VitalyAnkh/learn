#map = affine_map<(d0)[s0, s1] -> ((d0 - s0) ceildiv s1)>
#map1 = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
module @jit_matmul attributes {gpu.container_module, mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<512x512xf32> {mhlo.layout_mode = "default"}, %arg1: tensor<512x512xf32> {mhlo.layout_mode = "default"}) -> (tensor<512x512xf32> {jax.result_info = "", mhlo.layout_mode = "default"}) {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = bufferization.to_memref %arg1 : memref<512x512xf32, strided<[?, ?], offset: ?>>
    %1 = bufferization.to_memref %arg0 : memref<512x512xf32, strided<[?, ?], offset: ?>>
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<512x512xf32>
    %c0_0 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c16 = arith.constant 16 : index
    %2 = arith.muli %c1, %c32 : index
    %3 = arith.muli %c1, %c16 : index
    %c1_1 = arith.constant 1 : index
    %4 = affine.apply #map(%c512)[%c0, %2]
    %5 = affine.apply #map(%c512)[%c0, %3]
    %6 = affine.apply #map(%2)[%c0_0, %c1]
    %7 = affine.apply #map(%3)[%c0_0, %c1]
    gpu.launch_func  @main_kernel::@main_kernel blocks in (%4, %5, %c1_1) threads in (%6, %7, %c1_1)  args(%2 : index, %c0 : index, %3 : index, %c1 : index, %c0_0 : index, %cst : f32, %alloc : memref<512x512xf32>)
    %c0_2 = arith.constant 0 : index
    %c32_3 = arith.constant 32 : index
    %c16_4 = arith.constant 16 : index
    %8 = arith.muli %c1, %c32_3 : index
    %9 = arith.muli %c1, %c16_4 : index
    %c1_5 = arith.constant 1 : index
    %10 = affine.apply #map(%c512)[%c0, %8]
    %11 = affine.apply #map(%c512)[%c0, %9]
    %12 = affine.apply #map(%8)[%c0_2, %c1]
    %13 = affine.apply #map(%9)[%c0_2, %c1]
    gpu.launch_func  @main_kernel_0::@main_kernel blocks in (%10, %11, %c1_5) threads in (%12, %13, %c1_5)  args(%8 : index, %c0 : index, %9 : index, %c1 : index, %c0_2 : index, %1 : memref<512x512xf32, strided<[?, ?], offset: ?>>, %0 : memref<512x512xf32, strided<[?, ?], offset: ?>>, %alloc : memref<512x512xf32>, %c512 : index)
    %14 = bufferization.to_tensor %alloc : memref<512x512xf32>
    return %14 : tensor<512x512xf32>
  }
  gpu.module @main_kernel attributes {llvm.data_layout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"} {
    llvm.func @main_kernel(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: f32, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) attributes {gpu.kernel, rocdl.kernel} {
      %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %1 = llvm.insertvalue %arg6, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %2 = llvm.insertvalue %arg7, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %3 = llvm.insertvalue %arg8, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %4 = llvm.insertvalue %arg9, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %5 = llvm.insertvalue %arg11, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %6 = llvm.insertvalue %arg10, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %7 = llvm.insertvalue %arg12, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %8 = builtin.unrealized_conversion_cast %7 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<512x512xf32>
      %9 = builtin.unrealized_conversion_cast %8 : memref<512x512xf32> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %10 = builtin.unrealized_conversion_cast %arg4 : i64 to index
      %11 = builtin.unrealized_conversion_cast %arg3 : i64 to index
      %12 = builtin.unrealized_conversion_cast %arg2 : i64 to index
      %13 = builtin.unrealized_conversion_cast %arg1 : i64 to index
      %14 = builtin.unrealized_conversion_cast %arg0 : i64 to index
      %15 = rocdl.workgroup.id.x : i32
      %16 = llvm.sext %15 : i32 to i64
      %17 = builtin.unrealized_conversion_cast %16 : i64 to index
      %18 = rocdl.workgroup.id.y : i32
      %19 = llvm.sext %18 : i32 to i64
      %20 = builtin.unrealized_conversion_cast %19 : i64 to index
      %21 = rocdl.workitem.id.x : i32
      %22 = llvm.sext %21 : i32 to i64
      %23 = builtin.unrealized_conversion_cast %22 : i64 to index
      %24 = rocdl.workitem.id.y : i32
      %25 = llvm.sext %24 : i32 to i64
      %26 = builtin.unrealized_conversion_cast %25 : i64 to index
      %27 = affine.apply #map1(%17)[%14, %13]
      %28 = builtin.unrealized_conversion_cast %27 : index to i64
      %29 = affine.apply #map1(%20)[%12, %13]
      %30 = builtin.unrealized_conversion_cast %29 : index to i64
      %31 = affine.apply #map1(%23)[%11, %10]
      %32 = builtin.unrealized_conversion_cast %31 : index to i64
      %33 = affine.apply #map1(%26)[%11, %10]
      %34 = builtin.unrealized_conversion_cast %33 : index to i64
      %35 = llvm.add %32, %28 : i64
      %36 = llvm.add %34, %30 : i64
      %37 = llvm.extractvalue %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %38 = llvm.mlir.constant(512 : index) : i64
      %39 = llvm.mul %35, %38 : i64
      %40 = llvm.add %39, %36 : i64
      %41 = llvm.getelementptr %37[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      llvm.store %arg5, %41 : f32, !llvm.ptr
      llvm.return
    }
  }
  gpu.module @main_kernel_0 attributes {llvm.data_layout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"} {
    llvm.func @main_kernel(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: !llvm.ptr, %arg20: !llvm.ptr, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64) attributes {gpu.kernel, rocdl.kernel} {
      %0 = builtin.unrealized_conversion_cast %arg26 : i64 to index
      %1 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %2 = llvm.insertvalue %arg19, %1[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %3 = llvm.insertvalue %arg20, %2[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %4 = llvm.insertvalue %arg21, %3[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %5 = llvm.insertvalue %arg22, %4[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %6 = llvm.insertvalue %arg24, %5[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %7 = llvm.insertvalue %arg23, %6[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %8 = llvm.insertvalue %arg25, %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %9 = builtin.unrealized_conversion_cast %8 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<512x512xf32>
      %10 = builtin.unrealized_conversion_cast %9 : memref<512x512xf32> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %11 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %12 = llvm.insertvalue %arg12, %11[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %13 = llvm.insertvalue %arg13, %12[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %14 = llvm.insertvalue %arg14, %13[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %15 = llvm.insertvalue %arg15, %14[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %16 = llvm.insertvalue %arg17, %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %17 = llvm.insertvalue %arg16, %16[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %18 = llvm.insertvalue %arg18, %17[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %19 = builtin.unrealized_conversion_cast %18 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<512x512xf32, strided<[?, ?], offset: ?>>
      %20 = builtin.unrealized_conversion_cast %19 : memref<512x512xf32, strided<[?, ?], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %21 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %22 = llvm.insertvalue %arg5, %21[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %23 = llvm.insertvalue %arg6, %22[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %24 = llvm.insertvalue %arg7, %23[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %25 = llvm.insertvalue %arg8, %24[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %26 = llvm.insertvalue %arg10, %25[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %27 = llvm.insertvalue %arg9, %26[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %28 = llvm.insertvalue %arg11, %27[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %29 = builtin.unrealized_conversion_cast %28 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<512x512xf32, strided<[?, ?], offset: ?>>
      %30 = builtin.unrealized_conversion_cast %29 : memref<512x512xf32, strided<[?, ?], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %31 = builtin.unrealized_conversion_cast %arg4 : i64 to index
      %32 = builtin.unrealized_conversion_cast %arg3 : i64 to index
      %33 = builtin.unrealized_conversion_cast %arg2 : i64 to index
      %34 = builtin.unrealized_conversion_cast %arg1 : i64 to index
      %35 = builtin.unrealized_conversion_cast %arg0 : i64 to index
      %36 = rocdl.workgroup.id.x : i32
      %37 = llvm.sext %36 : i32 to i64
      %38 = builtin.unrealized_conversion_cast %37 : i64 to index
      %39 = rocdl.workgroup.id.y : i32
      %40 = llvm.sext %39 : i32 to i64
      %41 = builtin.unrealized_conversion_cast %40 : i64 to index
      %42 = rocdl.workitem.id.x : i32
      %43 = llvm.sext %42 : i32 to i64
      %44 = builtin.unrealized_conversion_cast %43 : i64 to index
      %45 = rocdl.workitem.id.y : i32
      %46 = llvm.sext %45 : i32 to i64
      %47 = builtin.unrealized_conversion_cast %46 : i64 to index
      %48 = affine.apply #map1(%38)[%35, %34]
      %49 = builtin.unrealized_conversion_cast %48 : index to i64
      %50 = affine.apply #map1(%41)[%33, %34]
      %51 = builtin.unrealized_conversion_cast %50 : index to i64
      %52 = affine.apply #map1(%44)[%32, %31]
      %53 = builtin.unrealized_conversion_cast %52 : index to i64
      %54 = affine.apply #map1(%47)[%32, %31]
      %55 = builtin.unrealized_conversion_cast %54 : index to i64
      %56 = llvm.add %53, %49 : i64
      %57 = llvm.add %55, %51 : i64
      scf.for %arg27 = %34 to %0 step %32 {
        %58 = builtin.unrealized_conversion_cast %arg27 : index to i64
        %59 = llvm.extractvalue %30[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
        %60 = llvm.extractvalue %30[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
        %61 = llvm.getelementptr %59[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        %62 = llvm.extractvalue %30[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
        %63 = llvm.mul %56, %62 : i64
        %64 = llvm.extractvalue %30[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
        %65 = llvm.mul %58, %64 : i64
        %66 = llvm.add %63, %65 : i64
        %67 = llvm.getelementptr %61[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        %68 = llvm.load %67 : !llvm.ptr -> f32
        %69 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
        %70 = llvm.extractvalue %20[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
        %71 = llvm.getelementptr %69[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        %72 = llvm.extractvalue %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
        %73 = llvm.mul %58, %72 : i64
        %74 = llvm.extractvalue %20[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
        %75 = llvm.mul %57, %74 : i64
        %76 = llvm.add %73, %75 : i64
        %77 = llvm.getelementptr %71[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        %78 = llvm.load %77 : !llvm.ptr -> f32
        %79 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
        %80 = llvm.mlir.constant(512 : index) : i64
        %81 = llvm.mul %56, %80 : i64
        %82 = llvm.add %81, %57 : i64
        %83 = llvm.getelementptr %79[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        %84 = llvm.load %83 : !llvm.ptr -> f32
        %85 = llvm.fmul %68, %78  : f32
        %86 = llvm.fadd %84, %85  : f32
        %87 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
        %88 = llvm.mlir.constant(512 : index) : i64
        %89 = llvm.mul %56, %88 : i64
        %90 = llvm.add %89, %57 : i64
        %91 = llvm.getelementptr %87[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
        llvm.store %86, %91 : f32, !llvm.ptr
      }
      llvm.return
    }
  }
}

