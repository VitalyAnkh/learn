module @jit_matmul_bf16 attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<1024x1024xbf16> loc("a"), %arg1: tensor<1024x1024xbf16> loc("b")) -> (tensor<1024x1024xf32> {jax.result_info = ""}) {
    %0 = stablehlo.dot_general %arg0, %arg1, contracting_dims = [1] x [0], precision = [DEFAULT, DEFAULT] : (tensor<1024x1024xbf16>, tensor<1024x1024xbf16>) -> tensor<1024x1024xf32>
    return %0 : tensor<1024x1024xf32> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)