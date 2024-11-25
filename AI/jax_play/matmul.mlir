module @jit_matmul attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<1000x1000xf32> {mhlo.layout_mode = "default"}, %arg1: tensor<1000x1000xf32> {mhlo.layout_mode = "default"}) -> (tensor<1000x1000xf32> {jax.result_info = "", mhlo.layout_mode = "default"}) {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<1000x1000xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<1000x1000xf32>) -> tensor<1000x1000xf32>
    %2 = linalg.matmul ins(%arg0, %arg1 : tensor<1000x1000xf32>, tensor<1000x1000xf32>) outs(%1 : tensor<1000x1000xf32>) -> tensor<1000x1000xf32>
    return %2 : tensor<1000x1000xf32>
  }
}

