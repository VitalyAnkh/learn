module @jit_matmul attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: memref<512x512xf32, strided<[?, ?], offset: ?>> {mhlo.layout_mode = "default"}, %arg1: memref<512x512xf32, strided<[?, ?], offset: ?>> {mhlo.layout_mode = "default"}) -> (memref<512x512xf32> {jax.result_info = "", mhlo.layout_mode = "default"}) {
    %cst = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<512x512xf32>
    linalg.fill ins(%cst : f32) outs(%alloc : memref<512x512xf32>)
    linalg.matmul ins(%arg0, %arg1 : memref<512x512xf32, strided<[?, ?], offset: ?>>, memref<512x512xf32, strided<[?, ?], offset: ?>>) outs(%alloc : memref<512x512xf32>)
    return %alloc : memref<512x512xf32>
  }
}

