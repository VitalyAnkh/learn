module @jit_matmul attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<128x128xf32> loc("a"), %arg1: tensor<128x128xf32> loc("b")) -> (tensor<128x128xf32> {jax.result_info = ""}) {
    %0 = stablehlo.dot_general %arg0, %arg1, contracting_dims = [1] x [0], precision = [DEFAULT, DEFAULT] : (tensor<128x128xf32>, tensor<128x128xf32>) -> tensor<128x128xf32>
    return %0 : tensor<128x128xf32> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)
