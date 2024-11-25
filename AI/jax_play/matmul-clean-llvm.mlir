#map = affine_map<(d0)[s0, s1] -> ((d0 - s0) ceildiv s1)>
#map1 = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
module @jit_matmul attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
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
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %4, %arg9 = %5, %arg10 = %c1_1) threads(%arg5, %arg6, %arg7) in (%arg11 = %6, %arg12 = %7, %arg13 = %c1_1) {
      %15 = affine.apply #map1(%arg2)[%2, %c0]
      %16 = affine.apply #map1(%arg3)[%3, %c0]
      %17 = affine.apply #map1(%arg5)[%c1, %c0_0]
      %18 = affine.apply #map1(%arg6)[%c1, %c0_0]
      %19 = arith.addi %17, %15 : index
      %20 = arith.addi %18, %16 : index
      memref.store %cst, %alloc[%19, %20] : memref<512x512xf32>
      gpu.terminator
    } {SCFToGPU_visited}
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
    gpu.launch blocks(%arg2, %arg3, %arg4) in (%arg8 = %10, %arg9 = %11, %arg10 = %c1_5) threads(%arg5, %arg6, %arg7) in (%arg11 = %12, %arg12 = %13, %arg13 = %c1_5) {
      %15 = affine.apply #map1(%arg2)[%8, %c0]
      %16 = affine.apply #map1(%arg3)[%9, %c0]
      %17 = affine.apply #map1(%arg5)[%c1, %c0_2]
      %18 = affine.apply #map1(%arg6)[%c1, %c0_2]
      %19 = arith.addi %17, %15 : index
      %20 = arith.addi %18, %16 : index
      scf.for %arg14 = %c0 to %c512 step %c1 {
        %21 = memref.load %1[%19, %arg14] : memref<512x512xf32, strided<[?, ?], offset: ?>>
        %22 = memref.load %0[%arg14, %20] : memref<512x512xf32, strided<[?, ?], offset: ?>>
        %23 = memref.load %alloc[%19, %20] : memref<512x512xf32>
        %24 = arith.mulf %21, %22 : f32
        %25 = arith.addf %23, %24 : f32
        memref.store %25, %alloc[%19, %20] : memref<512x512xf32>
      }
      gpu.terminator
    } {SCFToGPU_visited}
    %14 = bufferization.to_tensor %alloc : memref<512x512xf32>
    return %14 : tensor<512x512xf32>
  }
}

