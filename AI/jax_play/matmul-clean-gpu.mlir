#map = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
module @jit_matmul attributes {gpu.container_module, mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) {
    %0 = llvm.mlir.constant(64 : index) : i64
    %1 = llvm.mlir.zero : !llvm.ptr
    %2 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(512 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.constant(32 : index) : i64
    %7 = llvm.mlir.constant(16 : index) : i64
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = builtin.unrealized_conversion_cast %15 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<512x512xf32, strided<[?, ?], offset: ?>>
    %17 = llvm.insertvalue %arg0, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg1, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg2, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg3, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg5, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg4, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg6, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = builtin.unrealized_conversion_cast %23 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<512x512xf32, strided<[?, ?], offset: ?>>
    %25 = builtin.unrealized_conversion_cast %7 : i64 to index
    %26 = builtin.unrealized_conversion_cast %6 : i64 to index
    %27 = builtin.unrealized_conversion_cast %5 : i64 to index
    %28 = builtin.unrealized_conversion_cast %4 : i64 to index
    %29 = builtin.unrealized_conversion_cast %3 : i64 to index
    %30 = llvm.getelementptr %1[262144] : (!llvm.ptr) -> !llvm.ptr, f32
    %31 = llvm.ptrtoint %30 : !llvm.ptr to i64
    %32 = llvm.add %31, %0 : i64
    %33 = llvm.call @malloc(%32) : (i64) -> !llvm.ptr
    %34 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %35 = llvm.sub %0, %5 : i64
    %36 = llvm.add %34, %35 : i64
    %37 = llvm.urem %36, %0  : i64
    %38 = llvm.sub %36, %37 : i64
    %39 = llvm.inttoptr %38 : i64 to !llvm.ptr
    %40 = llvm.insertvalue %33, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.insertvalue %39, %40[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.insertvalue %3, %41[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.insertvalue %4, %42[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.insertvalue %4, %43[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.insertvalue %4, %44[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.insertvalue %5, %45[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = builtin.unrealized_conversion_cast %46 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<512x512xf32>
    gpu.launch_func  @main_kernel::@main_kernel blocks in (%25, %26, %27) threads in (%26, %25, %27)  args(%26 : index, %29 : index, %25 : index, %27 : index, %29 : index, %2 : f32, %47 : memref<512x512xf32>)
    gpu.launch_func  @main_kernel_0::@main_kernel blocks in (%25, %26, %27) threads in (%26, %25, %27)  args(%26 : index, %29 : index, %25 : index, %27 : index, %29 : index, %24 : memref<512x512xf32, strided<[?, ?], offset: ?>>, %16 : memref<512x512xf32, strided<[?, ?], offset: ?>>, %47 : memref<512x512xf32>, %28 : index)
    %48 = llvm.mul %4, %5 : i64
    %49 = llvm.mul %48, %4 : i64
    %50 = llvm.getelementptr %1[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %51 = llvm.ptrtoint %50 : !llvm.ptr to i64
    %52 = llvm.mul %49, %51 : i64
    %53 = llvm.getelementptr %arg15[%arg16] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    "llvm.intr.memcpy"(%53, %39, %52) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.return
  }
  gpu.module @main_kernel {
    gpu.func @main_kernel(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: f32, %arg6: memref<512x512xf32>) kernel {
      %0 = llvm.mlir.constant(512 : index) : i64
      %1 = builtin.unrealized_conversion_cast %arg6 : memref<512x512xf32> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %block_id_x = gpu.block_id  x
      %block_id_y = gpu.block_id  y
      %thread_id_x = gpu.thread_id  x
      %thread_id_y = gpu.thread_id  y
      %2 = affine.apply #map(%block_id_x)[%arg0, %arg1]
      %3 = builtin.unrealized_conversion_cast %2 : index to i64
      %4 = affine.apply #map(%block_id_y)[%arg2, %arg1]
      %5 = builtin.unrealized_conversion_cast %4 : index to i64
      %6 = affine.apply #map(%thread_id_x)[%arg3, %arg4]
      %7 = builtin.unrealized_conversion_cast %6 : index to i64
      %8 = affine.apply #map(%thread_id_y)[%arg3, %arg4]
      %9 = builtin.unrealized_conversion_cast %8 : index to i64
      %10 = llvm.add %7, %3 : i64
      %11 = llvm.add %9, %5 : i64
      %12 = llvm.extractvalue %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %13 = llvm.mul %10, %0 : i64
      %14 = llvm.add %13, %11 : i64
      %15 = llvm.getelementptr %12[%14] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      llvm.store %arg5, %15 : f32, !llvm.ptr
      gpu.return
    }
  }
  gpu.module @main_kernel_0 {
    gpu.func @main_kernel(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: memref<512x512xf32, strided<[?, ?], offset: ?>>, %arg6: memref<512x512xf32, strided<[?, ?], offset: ?>>, %arg7: memref<512x512xf32>, %arg8: index) kernel {
      %0 = builtin.unrealized_conversion_cast %arg3 : index to i64
      %1 = builtin.unrealized_conversion_cast %arg8 : index to i64
      %2 = llvm.mlir.constant(512 : index) : i64
      %3 = builtin.unrealized_conversion_cast %arg7 : memref<512x512xf32> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %4 = builtin.unrealized_conversion_cast %arg6 : memref<512x512xf32, strided<[?, ?], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %5 = builtin.unrealized_conversion_cast %arg5 : memref<512x512xf32, strided<[?, ?], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
      %block_id_x = gpu.block_id  x
      %block_id_y = gpu.block_id  y
      %thread_id_x = gpu.thread_id  x
      %thread_id_y = gpu.thread_id  y
      %6 = affine.apply #map(%block_id_x)[%arg0, %arg1]
      %7 = builtin.unrealized_conversion_cast %6 : index to i64
      %8 = affine.apply #map(%block_id_y)[%arg2, %arg1]
      %9 = builtin.unrealized_conversion_cast %8 : index to i64
      %10 = affine.apply #map(%thread_id_x)[%arg3, %arg4]
      %11 = builtin.unrealized_conversion_cast %10 : index to i64
      %12 = affine.apply #map(%thread_id_y)[%arg3, %arg4]
      %13 = builtin.unrealized_conversion_cast %12 : index to i64
      %14 = llvm.add %11, %7 : i64
      %15 = llvm.add %13, %9 : i64
      cf.br ^bb1(%arg1 : index)
    ^bb1(%16: index):  // 2 preds: ^bb0, ^bb2
      %17 = builtin.unrealized_conversion_cast %16 : index to i64
      %18 = llvm.icmp "slt" %17, %1 : i64
      llvm.cond_br %18, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      %19 = builtin.unrealized_conversion_cast %16 : index to i64
      %20 = llvm.extractvalue %5[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %21 = llvm.extractvalue %5[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %22 = llvm.getelementptr %20[%21] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %23 = llvm.extractvalue %5[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %24 = llvm.mul %14, %23 : i64
      %25 = llvm.extractvalue %5[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %26 = llvm.mul %19, %25 : i64
      %27 = llvm.add %24, %26 : i64
      %28 = llvm.getelementptr %22[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %29 = llvm.load %28 : !llvm.ptr -> f32
      %30 = llvm.extractvalue %4[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %31 = llvm.extractvalue %4[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %32 = llvm.getelementptr %30[%31] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %33 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %34 = llvm.mul %19, %33 : i64
      %35 = llvm.extractvalue %4[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %36 = llvm.mul %15, %35 : i64
      %37 = llvm.add %34, %36 : i64
      %38 = llvm.getelementptr %32[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %39 = llvm.load %38 : !llvm.ptr -> f32
      %40 = llvm.extractvalue %3[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
      %41 = llvm.mul %14, %2 : i64
      %42 = llvm.add %41, %15 : i64
      %43 = llvm.getelementptr %40[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %44 = llvm.load %43 : !llvm.ptr -> f32
      %45 = llvm.fmul %29, %39  : f32
      %46 = llvm.fadd %44, %45  : f32
      llvm.store %46, %43 : f32, !llvm.ptr
      %47 = llvm.add %17, %0 : i64
      %48 = builtin.unrealized_conversion_cast %47 : i64 to index
      cf.br ^bb1(%48 : index)
    ^bb3:  // pred: ^bb1
      gpu.return
    }
  }
}

