#loc1 = loc("a")
#loc2 = loc("b")
module @jit_matmul attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<2x2xi32> loc("a"), %arg1: tensor<2x2xi32> loc("b")) -> (tensor<2x2xi32> {jax.result_info = ""}) {
    %0 = stablehlo.dot_general %arg0, %arg1, contracting_dims = [1] x [0], precision = [DEFAULT, DEFAULT] : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32> loc(#loc5)
    return %0 : tensor<2x2xi32> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)
#loc3 = loc("/home/vitalyr/projects/learn/AI/jax_play/iree_play/jax_matmul.py":9:9)
#loc4 = loc("<module>"(#loc3))
#loc5 = loc("jit(matmul)/jit(main)/dot_general"(#loc4))
