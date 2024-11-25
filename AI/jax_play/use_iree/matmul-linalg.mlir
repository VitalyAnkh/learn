module @jit_matmul attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<512x512xf32> {mhlo.layout_mode = "default"}, %arg1: tensor<512x512xf32> {mhlo.layout_mode = "default"}) -> (tensor<512x512xf32> {jax.result_info = "", mhlo.layout_mode = "default"}) {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<512x512xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<512x512xf32>) -> tensor<512x512xf32>
    %2 = linalg.matmul ins(%arg0, %arg1 : tensor<512x512xf32>, tensor<512x512xf32>) outs(%1 : tensor<512x512xf32>) -> tensor<512x512xf32>
    return %2 : tensor<512x512xf32>
  }
}

