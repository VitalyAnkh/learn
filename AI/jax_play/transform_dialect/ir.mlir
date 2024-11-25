// -----// IR Dump Before LinalgGeneralizeNamedOpsPass (linalg-generalize-named-ops) //----- //
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %1 = linalg.elemwise_binary {fun = #linalg.binary_fn<mul>, mul} ins(%arg1, %arg2 : tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) -> tensor<?xf32>
    %2 = tensor.empty(%arg0) : tensor<?xf32>
    %3 = linalg.elemwise_binary {add, fun = #linalg.binary_fn<add>} ins(%1, %arg3 : tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) -> tensor<?xf32>
    %4 = tensor.empty(%arg0) : tensor<?xf32>
    %5 = linalg.elemwise_binary {div, fun = #linalg.binary_fn<div>} ins(%3, %1 : tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) -> tensor<?xf32>
    return %5 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After LinalgGeneralizeNamedOpsPass (linalg-generalize-named-ops) //----- //
#map = affine_map<(d0) -> (d0)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%arg1, %arg2 : tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %4 = arith.mulf %in, %in_0 : f32
      linalg.yield %4 : f32
    } -> tensor<?xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%1, %arg3 : tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %4 = arith.addf %in, %in_0 : f32
      linalg.yield %4 : f32
    } -> tensor<?xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%2, %1 : tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %4 = arith.divf %in, %in_0 : f32
      linalg.yield %4 : f32
    } -> tensor<?xf32>
    return %3 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before LinalgElementwiseOpFusionPass (linalg-fuse-elementwise-ops) //----- //
#map = affine_map<(d0) -> (d0)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%arg1, %arg2 : tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %4 = arith.mulf %in, %in_0 : f32
      linalg.yield %4 : f32
    } -> tensor<?xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%1, %arg3 : tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %4 = arith.addf %in, %in_0 : f32
      linalg.yield %4 : f32
    } -> tensor<?xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%2, %1 : tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) {
    ^bb0(%in: f32, %in_0: f32, %out: f32):
      %4 = arith.divf %in, %in_0 : f32
      linalg.yield %4 : f32
    } -> tensor<?xf32>
    return %3 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After LinalgElementwiseOpFusionPass (linalg-fuse-elementwise-ops) //----- //
#map = affine_map<(d0) -> (d0)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map, #map], iterator_types = ["parallel"]} ins(%arg1, %arg2, %arg3 : tensor<?xf32>, tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %out: f32):
      %2 = arith.mulf %in, %in_0 : f32
      %3 = arith.addf %2, %in_1 : f32
      %4 = arith.divf %3, %2 : f32
      linalg.yield %4 : f32
    } -> tensor<?xf32>
    return %1 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before InterpreterPass (transform-interpreter) //----- //
#map = affine_map<(d0) -> (d0)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map, #map], iterator_types = ["parallel"]} ins(%arg1, %arg2, %arg3 : tensor<?xf32>, tensor<?xf32>, tensor<?xf32>) outs(%0 : tensor<?xf32>) {
    ^bb0(%in: f32, %in_0: f32, %in_1: f32, %out: f32):
      %2 = arith.mulf %in, %in_0 : f32
      %3 = arith.addf %2, %in_1 : f32
      %4 = arith.divf %3, %2 : f32
      linalg.yield %4 : f32
    } -> tensor<?xf32>
    return %1 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After InterpreterPass (transform-interpreter) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
#map1 = affine_map<(d0) -> (d0 - 1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %arg1, %c0 : tensor<?xf32>
    %c0_0 = arith.constant 0 : index
    %dim_1 = tensor.dim %arg2, %c0_0 : tensor<?xf32>
    %c0_2 = arith.constant 0 : index
    %dim_3 = tensor.dim %arg3, %c0_2 : tensor<?xf32>
    %c0_4 = arith.constant 0 : index
    %dim_5 = tensor.dim %0, %c0_4 : tensor<?xf32>
    %c4 = arith.constant 4 : index
    %vscale = vector.vscale
    %c4_vscale = arith.muli %c4, %vscale : index
    %c0_6 = arith.constant 0 : index
    %1 = scf.for %arg5 = %c0_6 to %dim step %c4_vscale iter_args(%arg6 = %0) -> (tensor<?xf32>) {
      %2 = affine.min #map(%arg5)[%dim, %c4_vscale]
      %3 = affine.apply #map1(%2)
      %4 = affine.apply #map1(%2)
      %5 = affine.apply #map1(%2)
      %6 = affine.apply #map1(%2)
      %7 = affine.apply #map1(%2)
      %extracted_slice = tensor.extract_slice %arg1[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_7 = tensor.extract_slice %arg2[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_8 = tensor.extract_slice %arg3[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_9 = tensor.extract_slice %arg6[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %c0_10 = arith.constant 0 : index
      %dim_11 = tensor.dim %extracted_slice, %c0_10 : tensor<?xf32>
      %c0_12 = arith.constant 0 : index
      %cst = arith.constant 0.000000e+00 : f32
      %8 = vector.create_mask %dim_11 : vector<[4]xi1>
      %9 = vector.mask %8 { vector.transfer_read %extracted_slice[%c0_12], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %cst_13 = arith.constant 0.000000e+00 : f32
      %10 = vector.mask %8 { vector.transfer_read %extracted_slice_7[%c0_12], %cst_13 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %cst_14 = arith.constant 0.000000e+00 : f32
      %11 = vector.mask %8 { vector.transfer_read %extracted_slice_8[%c0_12], %cst_14 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %cst_15 = arith.constant 0.000000e+00 : f32
      %12 = vector.mask %8 { vector.transfer_read %extracted_slice_9[%c0_12], %cst_15 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %13 = arith.mulf %9, %10 : vector<[4]xf32>
      %14 = arith.addf %13, %11 : vector<[4]xf32>
      %15 = arith.divf %14, %13 : vector<[4]xf32>
      %c0_16 = arith.constant 0 : index
      %16 = vector.mask %8 { vector.transfer_write %15, %extracted_slice_9[%c0_16] {in_bounds = [true]} : vector<[4]xf32>, tensor<?xf32> } : vector<[4]xi1> -> tensor<?xf32>
      %17 = affine.apply #map1(%2)
      %18 = affine.apply #map1(%2)
      %inserted_slice = tensor.insert_slice %16 into %arg6[%arg5] [%2] [1] : tensor<?xf32> into tensor<?xf32>
      scf.yield %inserted_slice : tensor<?xf32>
    }
    return %1 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before Canonicalizer (canonicalize) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
#map1 = affine_map<(d0) -> (d0 - 1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %arg1, %c0 : tensor<?xf32>
    %c0_0 = arith.constant 0 : index
    %dim_1 = tensor.dim %arg2, %c0_0 : tensor<?xf32>
    %c0_2 = arith.constant 0 : index
    %dim_3 = tensor.dim %arg3, %c0_2 : tensor<?xf32>
    %c0_4 = arith.constant 0 : index
    %dim_5 = tensor.dim %0, %c0_4 : tensor<?xf32>
    %c4 = arith.constant 4 : index
    %vscale = vector.vscale
    %c4_vscale = arith.muli %c4, %vscale : index
    %c0_6 = arith.constant 0 : index
    %1 = scf.for %arg5 = %c0_6 to %dim step %c4_vscale iter_args(%arg6 = %0) -> (tensor<?xf32>) {
      %2 = affine.min #map(%arg5)[%dim, %c4_vscale]
      %3 = affine.apply #map1(%2)
      %4 = affine.apply #map1(%2)
      %5 = affine.apply #map1(%2)
      %6 = affine.apply #map1(%2)
      %7 = affine.apply #map1(%2)
      %extracted_slice = tensor.extract_slice %arg1[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_7 = tensor.extract_slice %arg2[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_8 = tensor.extract_slice %arg3[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_9 = tensor.extract_slice %arg6[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %c0_10 = arith.constant 0 : index
      %dim_11 = tensor.dim %extracted_slice, %c0_10 : tensor<?xf32>
      %c0_12 = arith.constant 0 : index
      %cst = arith.constant 0.000000e+00 : f32
      %8 = vector.create_mask %dim_11 : vector<[4]xi1>
      %9 = vector.mask %8 { vector.transfer_read %extracted_slice[%c0_12], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %cst_13 = arith.constant 0.000000e+00 : f32
      %10 = vector.mask %8 { vector.transfer_read %extracted_slice_7[%c0_12], %cst_13 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %cst_14 = arith.constant 0.000000e+00 : f32
      %11 = vector.mask %8 { vector.transfer_read %extracted_slice_8[%c0_12], %cst_14 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %cst_15 = arith.constant 0.000000e+00 : f32
      %12 = vector.mask %8 { vector.transfer_read %extracted_slice_9[%c0_12], %cst_15 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %13 = arith.mulf %9, %10 : vector<[4]xf32>
      %14 = arith.addf %13, %11 : vector<[4]xf32>
      %15 = arith.divf %14, %13 : vector<[4]xf32>
      %c0_16 = arith.constant 0 : index
      %16 = vector.mask %8 { vector.transfer_write %15, %extracted_slice_9[%c0_16] {in_bounds = [true]} : vector<[4]xf32>, tensor<?xf32> } : vector<[4]xi1> -> tensor<?xf32>
      %17 = affine.apply #map1(%2)
      %18 = affine.apply #map1(%2)
      %inserted_slice = tensor.insert_slice %16 into %arg6[%arg5] [%2] [1] : tensor<?xf32> into tensor<?xf32>
      scf.yield %inserted_slice : tensor<?xf32>
    }
    return %1 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After Canonicalizer (canonicalize) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %dim = tensor.dim %arg1, %c0 : tensor<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    %1 = scf.for %arg5 = %c0 to %dim step %c4_vscale iter_args(%arg6 = %0) -> (tensor<?xf32>) {
      %2 = affine.min #map(%arg5)[%dim, %c4_vscale]
      %extracted_slice = tensor.extract_slice %arg1[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_0 = tensor.extract_slice %arg2[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_1 = tensor.extract_slice %arg3[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_2 = tensor.extract_slice %arg6[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %3 = vector.create_mask %2 : vector<[4]xi1>
      %4 = vector.mask %3 { vector.transfer_read %extracted_slice[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %5 = vector.mask %3 { vector.transfer_read %extracted_slice_0[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %6 = vector.mask %3 { vector.transfer_read %extracted_slice_1[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %7 = arith.mulf %4, %5 : vector<[4]xf32>
      %8 = arith.addf %7, %6 : vector<[4]xf32>
      %9 = arith.divf %8, %7 : vector<[4]xf32>
      %10 = vector.mask %3 { vector.transfer_write %9, %extracted_slice_2[%c0] {in_bounds = [true]} : vector<[4]xf32>, tensor<?xf32> } : vector<[4]xi1> -> tensor<?xf32>
      %inserted_slice = tensor.insert_slice %10 into %arg6[%arg5] [%2] [1] : tensor<?xf32> into tensor<?xf32>
      scf.yield %inserted_slice : tensor<?xf32>
    }
    return %1 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before CSE (cse) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %dim = tensor.dim %arg1, %c0 : tensor<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    %1 = scf.for %arg5 = %c0 to %dim step %c4_vscale iter_args(%arg6 = %0) -> (tensor<?xf32>) {
      %2 = affine.min #map(%arg5)[%dim, %c4_vscale]
      %extracted_slice = tensor.extract_slice %arg1[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_0 = tensor.extract_slice %arg2[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_1 = tensor.extract_slice %arg3[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_2 = tensor.extract_slice %arg6[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %3 = vector.create_mask %2 : vector<[4]xi1>
      %4 = vector.mask %3 { vector.transfer_read %extracted_slice[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %5 = vector.mask %3 { vector.transfer_read %extracted_slice_0[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %6 = vector.mask %3 { vector.transfer_read %extracted_slice_1[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %7 = arith.mulf %4, %5 : vector<[4]xf32>
      %8 = arith.addf %7, %6 : vector<[4]xf32>
      %9 = arith.divf %8, %7 : vector<[4]xf32>
      %10 = vector.mask %3 { vector.transfer_write %9, %extracted_slice_2[%c0] {in_bounds = [true]} : vector<[4]xf32>, tensor<?xf32> } : vector<[4]xi1> -> tensor<?xf32>
      %inserted_slice = tensor.insert_slice %10 into %arg6[%arg5] [%2] [1] : tensor<?xf32> into tensor<?xf32>
      scf.yield %inserted_slice : tensor<?xf32>
    }
    return %1 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After CSE (cse) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %dim = tensor.dim %arg1, %c0 : tensor<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    %1 = scf.for %arg5 = %c0 to %dim step %c4_vscale iter_args(%arg6 = %0) -> (tensor<?xf32>) {
      %2 = affine.min #map(%arg5)[%dim, %c4_vscale]
      %extracted_slice = tensor.extract_slice %arg1[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_0 = tensor.extract_slice %arg2[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_1 = tensor.extract_slice %arg3[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_2 = tensor.extract_slice %arg6[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %3 = vector.create_mask %2 : vector<[4]xi1>
      %4 = vector.mask %3 { vector.transfer_read %extracted_slice[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %5 = vector.mask %3 { vector.transfer_read %extracted_slice_0[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %6 = vector.mask %3 { vector.transfer_read %extracted_slice_1[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
      %7 = arith.mulf %4, %5 : vector<[4]xf32>
      %8 = arith.addf %7, %6 : vector<[4]xf32>
      %9 = arith.divf %8, %7 : vector<[4]xf32>
      %10 = vector.mask %3 { vector.transfer_write %9, %extracted_slice_2[%c0] {in_bounds = [true]} : vector<[4]xf32>, tensor<?xf32> } : vector<[4]xi1> -> tensor<?xf32>
      %inserted_slice = tensor.insert_slice %10 into %arg6[%arg5] [%2] [1] : tensor<?xf32> into tensor<?xf32>
      scf.yield %inserted_slice : tensor<?xf32>
    }
    return %1 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before LowerVectorMaskPass (lower-vector-mask) //----- //
func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
  %cst = arith.constant 0.000000e+00 : f32
  %c4 = arith.constant 4 : index
  %c0 = arith.constant 0 : index
  %0 = tensor.empty(%arg0) : tensor<?xf32>
  %dim = tensor.dim %arg1, %c0 : tensor<?xf32>
  %vscale = vector.vscale
  %c4_vscale = arith.muli %vscale, %c4 : index
  %1 = scf.for %arg5 = %c0 to %dim step %c4_vscale iter_args(%arg6 = %0) -> (tensor<?xf32>) {
    %2 = affine.min affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>(%arg5)[%dim, %c4_vscale]
    %extracted_slice = tensor.extract_slice %arg1[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
    %extracted_slice_0 = tensor.extract_slice %arg2[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
    %extracted_slice_1 = tensor.extract_slice %arg3[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
    %extracted_slice_2 = tensor.extract_slice %arg6[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
    %3 = vector.create_mask %2 : vector<[4]xi1>
    %4 = vector.mask %3 { vector.transfer_read %extracted_slice[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
    %5 = vector.mask %3 { vector.transfer_read %extracted_slice_0[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
    %6 = vector.mask %3 { vector.transfer_read %extracted_slice_1[%c0], %cst {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32> } : vector<[4]xi1> -> vector<[4]xf32>
    %7 = arith.mulf %4, %5 : vector<[4]xf32>
    %8 = arith.addf %7, %6 : vector<[4]xf32>
    %9 = arith.divf %8, %7 : vector<[4]xf32>
    %10 = vector.mask %3 { vector.transfer_write %9, %extracted_slice_2[%c0] {in_bounds = [true]} : vector<[4]xf32>, tensor<?xf32> } : vector<[4]xi1> -> tensor<?xf32>
    %inserted_slice = tensor.insert_slice %10 into %arg6[%arg5] [%2] [1] : tensor<?xf32> into tensor<?xf32>
    scf.yield %inserted_slice : tensor<?xf32>
  }
  return %1 : tensor<?xf32>
}

// -----// IR Dump After LowerVectorMaskPass (lower-vector-mask) //----- //
func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
  %cst = arith.constant 0.000000e+00 : f32
  %c4 = arith.constant 4 : index
  %c0 = arith.constant 0 : index
  %0 = tensor.empty(%arg0) : tensor<?xf32>
  %dim = tensor.dim %arg1, %c0 : tensor<?xf32>
  %vscale = vector.vscale
  %c4_vscale = arith.muli %vscale, %c4 : index
  %1 = scf.for %arg5 = %c0 to %dim step %c4_vscale iter_args(%arg6 = %0) -> (tensor<?xf32>) {
    %2 = affine.min affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>(%arg5)[%dim, %c4_vscale]
    %extracted_slice = tensor.extract_slice %arg1[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
    %extracted_slice_0 = tensor.extract_slice %arg2[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
    %extracted_slice_1 = tensor.extract_slice %arg3[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
    %extracted_slice_2 = tensor.extract_slice %arg6[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
    %3 = vector.create_mask %2 : vector<[4]xi1>
    %4 = vector.transfer_read %extracted_slice[%c0], %cst, %3 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32>
    %5 = vector.transfer_read %extracted_slice_0[%c0], %cst, %3 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32>
    %6 = vector.transfer_read %extracted_slice_1[%c0], %cst, %3 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32>
    %7 = arith.mulf %4, %5 : vector<[4]xf32>
    %8 = arith.addf %7, %6 : vector<[4]xf32>
    %9 = arith.divf %8, %7 : vector<[4]xf32>
    %10 = vector.transfer_write %9, %extracted_slice_2[%c0], %3 {in_bounds = [true]} : vector<[4]xf32>, tensor<?xf32>
    %inserted_slice = tensor.insert_slice %10 into %arg6[%arg5] [%2] [1] : tensor<?xf32> into tensor<?xf32>
    scf.yield %inserted_slice : tensor<?xf32>
  }
  return %1 : tensor<?xf32>
}

// -----// IR Dump Before InterpreterPass (transform-interpreter) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>, %arg3: tensor<?xf32>, %arg4: tensor<?xf32>) -> tensor<?xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %0 = tensor.empty(%arg0) : tensor<?xf32>
    %dim = tensor.dim %arg1, %c0 : tensor<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    %1 = scf.for %arg5 = %c0 to %dim step %c4_vscale iter_args(%arg6 = %0) -> (tensor<?xf32>) {
      %2 = affine.min #map(%arg5)[%dim, %c4_vscale]
      %extracted_slice = tensor.extract_slice %arg1[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_0 = tensor.extract_slice %arg2[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_1 = tensor.extract_slice %arg3[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %extracted_slice_2 = tensor.extract_slice %arg6[%arg5] [%2] [1] : tensor<?xf32> to tensor<?xf32>
      %3 = vector.create_mask %2 : vector<[4]xi1>
      %4 = vector.transfer_read %extracted_slice[%c0], %cst, %3 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32>
      %5 = vector.transfer_read %extracted_slice_0[%c0], %cst, %3 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32>
      %6 = vector.transfer_read %extracted_slice_1[%c0], %cst, %3 {in_bounds = [true]} : tensor<?xf32>, vector<[4]xf32>
      %7 = arith.mulf %4, %5 : vector<[4]xf32>
      %8 = arith.addf %7, %6 : vector<[4]xf32>
      %9 = arith.divf %8, %7 : vector<[4]xf32>
      %10 = vector.transfer_write %9, %extracted_slice_2[%c0], %3 {in_bounds = [true]} : vector<[4]xf32>, tensor<?xf32>
      %inserted_slice = tensor.insert_slice %10 into %arg6[%arg5] [%2] [1] : tensor<?xf32> into tensor<?xf32>
      scf.yield %inserted_slice : tensor<?xf32>
    }
    return %1 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After InterpreterPass (transform-interpreter) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %cst = arith.constant dense<0.000000e+00> : vector<[4]xf32>
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %c0 : memref<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    %0 = scf.for %arg5 = %c0 to %dim step %c4_vscale iter_args(%arg6 = %alloc) -> (memref<?xf32>) {
      %1 = affine.min #map(%arg5)[%dim, %c4_vscale]
      %subview = memref.subview %arg1[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_0 = memref.subview %arg2[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_1 = memref.subview %arg3[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_2 = memref.subview %arg6[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %2 = vector.create_mask %1 : vector<[4]xi1>
      %3 = vector.maskedload %subview[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %4 = vector.maskedload %subview_0[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %5 = vector.maskedload %subview_1[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %6 = arith.mulf %3, %4 : vector<[4]xf32>
      %7 = arith.addf %6, %5 : vector<[4]xf32>
      %8 = arith.divf %7, %6 : vector<[4]xf32>
      vector.maskedstore %subview_2[%c0], %2, %8 : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32>
      %subview_3 = memref.subview %arg6[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      memref.copy %subview_2, %subview_3 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
      scf.yield %arg6 : memref<?xf32>
    }
    return %0 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before CSE (cse) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %cst = arith.constant dense<0.000000e+00> : vector<[4]xf32>
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %c0 : memref<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    %0 = scf.for %arg5 = %c0 to %dim step %c4_vscale iter_args(%arg6 = %alloc) -> (memref<?xf32>) {
      %1 = affine.min #map(%arg5)[%dim, %c4_vscale]
      %subview = memref.subview %arg1[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_0 = memref.subview %arg2[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_1 = memref.subview %arg3[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_2 = memref.subview %arg6[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %2 = vector.create_mask %1 : vector<[4]xi1>
      %3 = vector.maskedload %subview[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %4 = vector.maskedload %subview_0[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %5 = vector.maskedload %subview_1[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %6 = arith.mulf %3, %4 : vector<[4]xf32>
      %7 = arith.addf %6, %5 : vector<[4]xf32>
      %8 = arith.divf %7, %6 : vector<[4]xf32>
      vector.maskedstore %subview_2[%c0], %2, %8 : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32>
      %subview_3 = memref.subview %arg6[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      memref.copy %subview_2, %subview_3 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
      scf.yield %arg6 : memref<?xf32>
    }
    return %0 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After CSE (cse) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %cst = arith.constant dense<0.000000e+00> : vector<[4]xf32>
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %c0 : memref<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    %0 = scf.for %arg5 = %c0 to %dim step %c4_vscale iter_args(%arg6 = %alloc) -> (memref<?xf32>) {
      %1 = affine.min #map(%arg5)[%dim, %c4_vscale]
      %subview = memref.subview %arg1[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_0 = memref.subview %arg2[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_1 = memref.subview %arg3[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_2 = memref.subview %arg6[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %2 = vector.create_mask %1 : vector<[4]xi1>
      %3 = vector.maskedload %subview[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %4 = vector.maskedload %subview_0[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %5 = vector.maskedload %subview_1[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %6 = arith.mulf %3, %4 : vector<[4]xf32>
      %7 = arith.addf %6, %5 : vector<[4]xf32>
      %8 = arith.divf %7, %6 : vector<[4]xf32>
      vector.maskedstore %subview_2[%c0], %2, %8 : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32>
      memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
      scf.yield %arg6 : memref<?xf32>
    }
    return %0 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before SCFToControlFlow (convert-scf-to-cf) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %cst = arith.constant dense<0.000000e+00> : vector<[4]xf32>
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %c0 : memref<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    %0 = scf.for %arg5 = %c0 to %dim step %c4_vscale iter_args(%arg6 = %alloc) -> (memref<?xf32>) {
      %1 = affine.min #map(%arg5)[%dim, %c4_vscale]
      %subview = memref.subview %arg1[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_0 = memref.subview %arg2[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_1 = memref.subview %arg3[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %subview_2 = memref.subview %arg6[%arg5] [%1] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
      %2 = vector.create_mask %1 : vector<[4]xi1>
      %3 = vector.maskedload %subview[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %4 = vector.maskedload %subview_0[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %5 = vector.maskedload %subview_1[%c0], %2, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
      %6 = arith.mulf %3, %4 : vector<[4]xf32>
      %7 = arith.addf %6, %5 : vector<[4]xf32>
      %8 = arith.divf %7, %6 : vector<[4]xf32>
      vector.maskedstore %subview_2[%c0], %2, %8 : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32>
      memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
      scf.yield %arg6 : memref<?xf32>
    }
    return %0 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After SCFToControlFlow (convert-scf-to-cf) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %cst = arith.constant dense<0.000000e+00> : vector<[4]xf32>
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %c0 : memref<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    cf.br ^bb1(%c0, %alloc : index, memref<?xf32>)
  ^bb1(%0: index, %1: memref<?xf32>):  // 2 preds: ^bb0, ^bb2
    %2 = arith.cmpi slt, %0, %dim : index
    cf.cond_br %2, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %3 = affine.min #map(%0)[%dim, %c4_vscale]
    %subview = memref.subview %arg1[%0] [%3] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_0 = memref.subview %arg2[%0] [%3] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_1 = memref.subview %arg3[%0] [%3] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_2 = memref.subview %1[%0] [%3] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %4 = vector.create_mask %3 : vector<[4]xi1>
    %5 = vector.maskedload %subview[%c0], %4, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %6 = vector.maskedload %subview_0[%c0], %4, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %7 = vector.maskedload %subview_1[%c0], %4, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %8 = arith.mulf %5, %6 : vector<[4]xf32>
    %9 = arith.addf %8, %7 : vector<[4]xf32>
    %10 = arith.divf %9, %8 : vector<[4]xf32>
    vector.maskedstore %subview_2[%c0], %4, %10 : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32>
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %11 = arith.addi %0, %c4_vscale : index
    cf.br ^bb1(%11, %1 : index, memref<?xf32>)
  ^bb3:  // pred: ^bb1
    return %1 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before ConvertAffineToStandard (lower-affine) //----- //
#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %cst = arith.constant dense<0.000000e+00> : vector<[4]xf32>
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %c0 : memref<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    cf.br ^bb1(%c0, %alloc : index, memref<?xf32>)
  ^bb1(%0: index, %1: memref<?xf32>):  // 2 preds: ^bb0, ^bb2
    %2 = arith.cmpi slt, %0, %dim : index
    cf.cond_br %2, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %3 = affine.min #map(%0)[%dim, %c4_vscale]
    %subview = memref.subview %arg1[%0] [%3] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_0 = memref.subview %arg2[%0] [%3] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_1 = memref.subview %arg3[%0] [%3] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_2 = memref.subview %1[%0] [%3] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %4 = vector.create_mask %3 : vector<[4]xi1>
    %5 = vector.maskedload %subview[%c0], %4, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %6 = vector.maskedload %subview_0[%c0], %4, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %7 = vector.maskedload %subview_1[%c0], %4, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %8 = arith.mulf %5, %6 : vector<[4]xf32>
    %9 = arith.addf %8, %7 : vector<[4]xf32>
    %10 = arith.divf %9, %8 : vector<[4]xf32>
    vector.maskedstore %subview_2[%c0], %4, %10 : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32>
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %11 = arith.addi %0, %c4_vscale : index
    cf.br ^bb1(%11, %1 : index, memref<?xf32>)
  ^bb3:  // pred: ^bb1
    return %1 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After ConvertAffineToStandard (lower-affine) //----- //
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %cst = arith.constant dense<0.000000e+00> : vector<[4]xf32>
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %c0 : memref<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    cf.br ^bb1(%c0, %alloc : index, memref<?xf32>)
  ^bb1(%0: index, %1: memref<?xf32>):  // 2 preds: ^bb0, ^bb2
    %2 = arith.cmpi slt, %0, %dim : index
    cf.cond_br %2, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %c-1 = arith.constant -1 : index
    %3 = arith.muli %0, %c-1 : index
    %4 = arith.addi %3, %dim : index
    %5 = arith.minsi %4, %c4_vscale : index
    %subview = memref.subview %arg1[%0] [%5] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_0 = memref.subview %arg2[%0] [%5] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_1 = memref.subview %arg3[%0] [%5] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_2 = memref.subview %1[%0] [%5] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %6 = vector.create_mask %5 : vector<[4]xi1>
    %7 = vector.maskedload %subview[%c0], %6, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %8 = vector.maskedload %subview_0[%c0], %6, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %9 = vector.maskedload %subview_1[%c0], %6, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %10 = arith.mulf %7, %8 : vector<[4]xf32>
    %11 = arith.addf %10, %9 : vector<[4]xf32>
    %12 = arith.divf %11, %10 : vector<[4]xf32>
    vector.maskedstore %subview_2[%c0], %6, %12 : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32>
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %13 = arith.addi %0, %c4_vscale : index
    cf.br ^bb1(%13, %1 : index, memref<?xf32>)
  ^bb3:  // pred: ^bb1
    return %1 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %cst = arith.constant dense<0.000000e+00> : vector<[4]xf32>
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %c0 : memref<?xf32>
    %vscale = vector.vscale
    %c4_vscale = arith.muli %vscale, %c4 : index
    cf.br ^bb1(%c0, %alloc : index, memref<?xf32>)
  ^bb1(%0: index, %1: memref<?xf32>):  // 2 preds: ^bb0, ^bb2
    %2 = arith.cmpi slt, %0, %dim : index
    cf.cond_br %2, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %c-1 = arith.constant -1 : index
    %3 = arith.muli %0, %c-1 : index
    %4 = arith.addi %3, %dim : index
    %5 = arith.minsi %4, %c4_vscale : index
    %subview = memref.subview %arg1[%0] [%5] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_0 = memref.subview %arg2[%0] [%5] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_1 = memref.subview %arg3[%0] [%5] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %subview_2 = memref.subview %1[%0] [%5] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %6 = vector.create_mask %5 : vector<[4]xi1>
    %7 = vector.maskedload %subview[%c0], %6, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %8 = vector.maskedload %subview_0[%c0], %6, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %9 = vector.maskedload %subview_1[%c0], %6, %cst : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32> into vector<[4]xf32>
    %10 = arith.mulf %7, %8 : vector<[4]xf32>
    %11 = arith.addf %10, %9 : vector<[4]xf32>
    %12 = arith.divf %11, %10 : vector<[4]xf32>
    vector.maskedstore %subview_2[%c0], %6, %12 : memref<?xf32, strided<[1], offset: ?>>, vector<[4]xi1>, vector<[4]xf32>
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %13 = arith.addi %0, %c4_vscale : index
    cf.br ^bb1(%13, %1 : index, memref<?xf32>)
  ^bb3:  // pred: ^bb1
    return %1 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After ConvertVectorToLLVMPass (convert-vector-to-llvm) //----- //
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant dense<0.000000e+00> : vector<[4]xf32>
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %0 = builtin.unrealized_conversion_cast %c0 : index to i64
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %c0 : memref<?xf32>
    %1 = "llvm.intr.vscale"() : () -> i64
    %2 = builtin.unrealized_conversion_cast %1 : i64 to index
    %3 = arith.muli %2, %c4 : index
    cf.br ^bb1(%c0, %alloc : index, memref<?xf32>)
  ^bb1(%4: index, %5: memref<?xf32>):  // 2 preds: ^bb0, ^bb2
    %6 = arith.cmpi slt, %4, %dim : index
    cf.cond_br %6, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %7 = arith.muli %4, %c-1 : index
    %8 = arith.addi %7, %dim : index
    %9 = arith.minsi %8, %3 : index
    %10 = builtin.unrealized_conversion_cast %9 : index to i64
    %subview = memref.subview %arg1[%4] [%9] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %11 = builtin.unrealized_conversion_cast %subview : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_0 = memref.subview %arg2[%4] [%9] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %12 = builtin.unrealized_conversion_cast %subview_0 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_1 = memref.subview %arg3[%4] [%9] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %13 = builtin.unrealized_conversion_cast %subview_1 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_2 = memref.subview %5[%4] [%9] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %14 = builtin.unrealized_conversion_cast %subview_2 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.mlir.zero : i64
    %16 = "arm_sve.intr.whilelt"(%15, %10) : (i64, i64) -> vector<[4]xi1>
    %17 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.extractvalue %11[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.getelementptr %17[%18] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %20 = llvm.getelementptr %19[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %21 = llvm.intr.masked.load %20, %16, %cst {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %22 = llvm.extractvalue %12[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.extractvalue %12[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.getelementptr %22[%23] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %25 = llvm.getelementptr %24[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %26 = llvm.intr.masked.load %25, %16, %cst {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %27 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.extractvalue %13[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.getelementptr %27[%28] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %30 = llvm.getelementptr %29[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %31 = llvm.intr.masked.load %30, %16, %cst {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %32 = arith.mulf %21, %26 : vector<[4]xf32>
    %33 = arith.addf %32, %31 : vector<[4]xf32>
    %34 = arith.divf %33, %32 : vector<[4]xf32>
    %35 = llvm.extractvalue %14[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.extractvalue %14[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.getelementptr %35[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %38 = llvm.getelementptr %37[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %34, %38, %16 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %39 = arith.addi %4, %3 : index
    cf.br ^bb1(%39, %5 : index, memref<?xf32>)
  ^bb3:  // pred: ^bb1
    return %5 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before ArithToLLVMConversionPass (convert-arith-to-llvm) //----- //
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %c-1 = arith.constant -1 : index
    %cst = arith.constant dense<0.000000e+00> : vector<[4]xf32>
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %0 = builtin.unrealized_conversion_cast %c0 : index to i64
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %c0 : memref<?xf32>
    %1 = "llvm.intr.vscale"() : () -> i64
    %2 = builtin.unrealized_conversion_cast %1 : i64 to index
    %3 = arith.muli %2, %c4 : index
    cf.br ^bb1(%c0, %alloc : index, memref<?xf32>)
  ^bb1(%4: index, %5: memref<?xf32>):  // 2 preds: ^bb0, ^bb2
    %6 = arith.cmpi slt, %4, %dim : index
    cf.cond_br %6, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %7 = arith.muli %4, %c-1 : index
    %8 = arith.addi %7, %dim : index
    %9 = arith.minsi %8, %3 : index
    %10 = builtin.unrealized_conversion_cast %9 : index to i64
    %subview = memref.subview %arg1[%4] [%9] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %11 = builtin.unrealized_conversion_cast %subview : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_0 = memref.subview %arg2[%4] [%9] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %12 = builtin.unrealized_conversion_cast %subview_0 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_1 = memref.subview %arg3[%4] [%9] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %13 = builtin.unrealized_conversion_cast %subview_1 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_2 = memref.subview %5[%4] [%9] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %14 = builtin.unrealized_conversion_cast %subview_2 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.mlir.zero : i64
    %16 = "arm_sve.intr.whilelt"(%15, %10) : (i64, i64) -> vector<[4]xi1>
    %17 = llvm.extractvalue %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.extractvalue %11[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.getelementptr %17[%18] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %20 = llvm.getelementptr %19[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %21 = llvm.intr.masked.load %20, %16, %cst {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %22 = llvm.extractvalue %12[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.extractvalue %12[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.getelementptr %22[%23] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %25 = llvm.getelementptr %24[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %26 = llvm.intr.masked.load %25, %16, %cst {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %27 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.extractvalue %13[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.getelementptr %27[%28] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %30 = llvm.getelementptr %29[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %31 = llvm.intr.masked.load %30, %16, %cst {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %32 = arith.mulf %21, %26 : vector<[4]xf32>
    %33 = arith.addf %32, %31 : vector<[4]xf32>
    %34 = arith.divf %33, %32 : vector<[4]xf32>
    %35 = llvm.extractvalue %14[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.extractvalue %14[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.getelementptr %35[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %38 = llvm.getelementptr %37[%0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %34, %38, %16 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %39 = arith.addi %4, %3 : index
    cf.br ^bb1(%39, %5 : index, memref<?xf32>)
  ^bb3:  // pred: ^bb1
    return %5 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After ArithToLLVMConversionPass (convert-arith-to-llvm) //----- //
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %0 = llvm.mlir.constant(-1 : index) : i64
    %1 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = builtin.unrealized_conversion_cast %4 : index to i64
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %4 : memref<?xf32>
    %6 = builtin.unrealized_conversion_cast %dim : index to i64
    %7 = "llvm.intr.vscale"() : () -> i64
    %8 = llvm.mul %7, %2 : i64
    cf.br ^bb1(%4, %alloc : index, memref<?xf32>)
  ^bb1(%9: index, %10: memref<?xf32>):  // 2 preds: ^bb0, ^bb2
    %11 = builtin.unrealized_conversion_cast %9 : index to i64
    %12 = llvm.icmp "slt" %11, %6 : i64
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %13 = llvm.mul %11, %0 : i64
    %14 = llvm.add %13, %6 : i64
    %15 = llvm.intr.smin(%14, %8)  : (i64, i64) -> i64
    %16 = builtin.unrealized_conversion_cast %15 : i64 to index
    %17 = builtin.unrealized_conversion_cast %16 : index to i64
    %subview = memref.subview %arg1[%9] [%16] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %18 = builtin.unrealized_conversion_cast %subview : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_0 = memref.subview %arg2[%9] [%16] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %19 = builtin.unrealized_conversion_cast %subview_0 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_1 = memref.subview %arg3[%9] [%16] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %20 = builtin.unrealized_conversion_cast %subview_1 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_2 = memref.subview %10[%9] [%16] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %21 = builtin.unrealized_conversion_cast %subview_2 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.mlir.zero : i64
    %23 = "arm_sve.intr.whilelt"(%22, %17) : (i64, i64) -> vector<[4]xi1>
    %24 = llvm.extractvalue %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.extractvalue %18[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.getelementptr %24[%25] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %27 = llvm.getelementptr %26[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %28 = llvm.intr.masked.load %27, %23, %1 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %29 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.extractvalue %19[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.getelementptr %29[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %32 = llvm.getelementptr %31[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %33 = llvm.intr.masked.load %32, %23, %1 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %34 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.extractvalue %20[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.getelementptr %34[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %37 = llvm.getelementptr %36[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %38 = llvm.intr.masked.load %37, %23, %1 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %39 = llvm.fmul %28, %33  : vector<[4]xf32>
    %40 = llvm.fadd %39, %38  : vector<[4]xf32>
    %41 = llvm.fdiv %40, %39  : vector<[4]xf32>
    %42 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.extractvalue %21[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.getelementptr %42[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %45 = llvm.getelementptr %44[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %41, %45, %23 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %46 = llvm.add %11, %8 : i64
    %47 = builtin.unrealized_conversion_cast %46 : i64 to index
    cf.br ^bb1(%47, %10 : index, memref<?xf32>)
  ^bb3:  // pred: ^bb1
    return %10 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  func.func @add_mul_sub_pow_1d(%arg0: index, %arg1: memref<?xf32>, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) -> memref<?xf32> {
    %0 = llvm.mlir.constant(-1 : index) : i64
    %1 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = builtin.unrealized_conversion_cast %3 : i64 to index
    %5 = builtin.unrealized_conversion_cast %4 : index to i64
    %alloc = memref.alloc(%arg0) {alignment = 64 : i64} : memref<?xf32>
    %dim = memref.dim %arg1, %4 : memref<?xf32>
    %6 = builtin.unrealized_conversion_cast %dim : index to i64
    %7 = "llvm.intr.vscale"() : () -> i64
    %8 = llvm.mul %7, %2 : i64
    cf.br ^bb1(%4, %alloc : index, memref<?xf32>)
  ^bb1(%9: index, %10: memref<?xf32>):  // 2 preds: ^bb0, ^bb2
    %11 = builtin.unrealized_conversion_cast %9 : index to i64
    %12 = llvm.icmp "slt" %11, %6 : i64
    cf.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %13 = llvm.mul %11, %0 : i64
    %14 = llvm.add %13, %6 : i64
    %15 = llvm.intr.smin(%14, %8)  : (i64, i64) -> i64
    %16 = builtin.unrealized_conversion_cast %15 : i64 to index
    %17 = builtin.unrealized_conversion_cast %16 : index to i64
    %subview = memref.subview %arg1[%9] [%16] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %18 = builtin.unrealized_conversion_cast %subview : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_0 = memref.subview %arg2[%9] [%16] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %19 = builtin.unrealized_conversion_cast %subview_0 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_1 = memref.subview %arg3[%9] [%16] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %20 = builtin.unrealized_conversion_cast %subview_1 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_2 = memref.subview %10[%9] [%16] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %21 = builtin.unrealized_conversion_cast %subview_2 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.mlir.zero : i64
    %23 = "arm_sve.intr.whilelt"(%22, %17) : (i64, i64) -> vector<[4]xi1>
    %24 = llvm.extractvalue %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.extractvalue %18[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.getelementptr %24[%25] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %27 = llvm.getelementptr %26[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %28 = llvm.intr.masked.load %27, %23, %1 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %29 = llvm.extractvalue %19[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.extractvalue %19[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.getelementptr %29[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %32 = llvm.getelementptr %31[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %33 = llvm.intr.masked.load %32, %23, %1 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %34 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.extractvalue %20[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.getelementptr %34[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %37 = llvm.getelementptr %36[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %38 = llvm.intr.masked.load %37, %23, %1 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %39 = llvm.fmul %28, %33  : vector<[4]xf32>
    %40 = llvm.fadd %39, %38  : vector<[4]xf32>
    %41 = llvm.fdiv %40, %39  : vector<[4]xf32>
    %42 = llvm.extractvalue %21[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.extractvalue %21[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.getelementptr %42[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %45 = llvm.getelementptr %44[%5] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %41, %45, %23 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %46 = llvm.add %11, %8 : i64
    %47 = builtin.unrealized_conversion_cast %46 : i64 to index
    cf.br ^bb1(%47, %10 : index, memref<?xf32>)
  ^bb3:  // pred: ^bb1
    return %10 : memref<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After ConvertFuncToLLVMPass (convert-func-to-llvm) //----- //
module {
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg11, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg12, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg13, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg14, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg15, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = builtin.unrealized_conversion_cast %5 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.insertvalue %arg6, %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = builtin.unrealized_conversion_cast %12 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %14 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %arg1, %14[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg2, %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg3, %16[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg4, %17[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg5, %18[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = builtin.unrealized_conversion_cast %19 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %21 = builtin.unrealized_conversion_cast %arg0 : i64 to index
    %22 = llvm.mlir.constant(-1 : index) : i64
    %23 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = builtin.unrealized_conversion_cast %25 : i64 to index
    %27 = builtin.unrealized_conversion_cast %26 : index to i64
    %alloc = memref.alloc(%21) {alignment = 64 : i64} : memref<?xf32>
    %28 = builtin.unrealized_conversion_cast %alloc : memref<?xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %dim = memref.dim %20, %26 : memref<?xf32>
    %29 = builtin.unrealized_conversion_cast %dim : index to i64
    %30 = "llvm.intr.vscale"() : () -> i64
    %31 = llvm.mul %30, %24 : i64
    llvm.br ^bb1(%25, %28 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%32: i64, %33: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %34 = builtin.unrealized_conversion_cast %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %35 = builtin.unrealized_conversion_cast %32 : i64 to index
    %36 = builtin.unrealized_conversion_cast %35 : index to i64
    %37 = llvm.icmp "slt" %36, %29 : i64
    llvm.cond_br %37, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %38 = llvm.mul %36, %22 : i64
    %39 = llvm.add %38, %29 : i64
    %40 = llvm.intr.smin(%39, %31)  : (i64, i64) -> i64
    %41 = builtin.unrealized_conversion_cast %40 : i64 to index
    %42 = builtin.unrealized_conversion_cast %41 : index to i64
    %subview = memref.subview %20[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %43 = builtin.unrealized_conversion_cast %subview : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_0 = memref.subview %13[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %44 = builtin.unrealized_conversion_cast %subview_0 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_1 = memref.subview %6[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %45 = builtin.unrealized_conversion_cast %subview_1 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_2 = memref.subview %34[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %46 = builtin.unrealized_conversion_cast %subview_2 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.mlir.zero : i64
    %48 = "arm_sve.intr.whilelt"(%47, %42) : (i64, i64) -> vector<[4]xi1>
    %49 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.extractvalue %43[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.getelementptr %49[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %52 = llvm.getelementptr %51[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %53 = llvm.intr.masked.load %52, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.getelementptr %54[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %57 = llvm.getelementptr %56[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %58 = llvm.intr.masked.load %57, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %59 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %45[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %59[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %62 = llvm.getelementptr %61[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %63 = llvm.intr.masked.load %62, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %64 = llvm.fmul %53, %58  : vector<[4]xf32>
    %65 = llvm.fadd %64, %63  : vector<[4]xf32>
    %66 = llvm.fdiv %65, %64  : vector<[4]xf32>
    %67 = llvm.extractvalue %46[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.extractvalue %46[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.getelementptr %67[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %70 = llvm.getelementptr %69[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %66, %70, %48 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %71 = llvm.add %36, %31 : i64
    llvm.br ^bb1(%71, %33 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
module {
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg11, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg12, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg13, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg14, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg15, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = builtin.unrealized_conversion_cast %5 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.insertvalue %arg6, %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = builtin.unrealized_conversion_cast %12 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %14 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %arg1, %14[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg2, %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg3, %16[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg4, %17[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg5, %18[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = builtin.unrealized_conversion_cast %19 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %21 = builtin.unrealized_conversion_cast %arg0 : i64 to index
    %22 = llvm.mlir.constant(-1 : index) : i64
    %23 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = builtin.unrealized_conversion_cast %25 : i64 to index
    %27 = builtin.unrealized_conversion_cast %26 : index to i64
    %alloc = memref.alloc(%21) {alignment = 64 : i64} : memref<?xf32>
    %28 = builtin.unrealized_conversion_cast %alloc : memref<?xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %dim = memref.dim %20, %26 : memref<?xf32>
    %29 = builtin.unrealized_conversion_cast %dim : index to i64
    %30 = "llvm.intr.vscale"() : () -> i64
    %31 = llvm.mul %30, %24 : i64
    llvm.br ^bb1(%25, %28 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%32: i64, %33: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %34 = builtin.unrealized_conversion_cast %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %35 = builtin.unrealized_conversion_cast %32 : i64 to index
    %36 = builtin.unrealized_conversion_cast %35 : index to i64
    %37 = llvm.icmp "slt" %36, %29 : i64
    llvm.cond_br %37, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %38 = llvm.mul %36, %22 : i64
    %39 = llvm.add %38, %29 : i64
    %40 = llvm.intr.smin(%39, %31)  : (i64, i64) -> i64
    %41 = builtin.unrealized_conversion_cast %40 : i64 to index
    %42 = builtin.unrealized_conversion_cast %41 : index to i64
    %subview = memref.subview %20[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %43 = builtin.unrealized_conversion_cast %subview : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_0 = memref.subview %13[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %44 = builtin.unrealized_conversion_cast %subview_0 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_1 = memref.subview %6[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %45 = builtin.unrealized_conversion_cast %subview_1 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_2 = memref.subview %34[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %46 = builtin.unrealized_conversion_cast %subview_2 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.mlir.zero : i64
    %48 = "arm_sve.intr.whilelt"(%47, %42) : (i64, i64) -> vector<[4]xi1>
    %49 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.extractvalue %43[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.getelementptr %49[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %52 = llvm.getelementptr %51[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %53 = llvm.intr.masked.load %52, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.getelementptr %54[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %57 = llvm.getelementptr %56[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %58 = llvm.intr.masked.load %57, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %59 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %45[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %59[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %62 = llvm.getelementptr %61[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %63 = llvm.intr.masked.load %62, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %64 = llvm.fmul %53, %58  : vector<[4]xf32>
    %65 = llvm.fadd %64, %63  : vector<[4]xf32>
    %66 = llvm.fdiv %65, %64  : vector<[4]xf32>
    %67 = llvm.extractvalue %46[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.extractvalue %46[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.getelementptr %67[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %70 = llvm.getelementptr %69[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %66, %70, %48 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %71 = llvm.add %36, %31 : i64
    llvm.br ^bb1(%71, %33 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After ConvertMathToLLVMPass (convert-math-to-llvm) //----- //
module {
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg11, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg12, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg13, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg14, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg15, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = builtin.unrealized_conversion_cast %5 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.insertvalue %arg6, %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = builtin.unrealized_conversion_cast %12 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %14 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %arg1, %14[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg2, %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg3, %16[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg4, %17[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg5, %18[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = builtin.unrealized_conversion_cast %19 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %21 = builtin.unrealized_conversion_cast %arg0 : i64 to index
    %22 = llvm.mlir.constant(-1 : index) : i64
    %23 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = builtin.unrealized_conversion_cast %25 : i64 to index
    %27 = builtin.unrealized_conversion_cast %26 : index to i64
    %alloc = memref.alloc(%21) {alignment = 64 : i64} : memref<?xf32>
    %28 = builtin.unrealized_conversion_cast %alloc : memref<?xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %dim = memref.dim %20, %26 : memref<?xf32>
    %29 = builtin.unrealized_conversion_cast %dim : index to i64
    %30 = "llvm.intr.vscale"() : () -> i64
    %31 = llvm.mul %30, %24 : i64
    llvm.br ^bb1(%25, %28 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%32: i64, %33: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %34 = builtin.unrealized_conversion_cast %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %35 = builtin.unrealized_conversion_cast %32 : i64 to index
    %36 = builtin.unrealized_conversion_cast %35 : index to i64
    %37 = llvm.icmp "slt" %36, %29 : i64
    llvm.cond_br %37, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %38 = llvm.mul %36, %22 : i64
    %39 = llvm.add %38, %29 : i64
    %40 = llvm.intr.smin(%39, %31)  : (i64, i64) -> i64
    %41 = builtin.unrealized_conversion_cast %40 : i64 to index
    %42 = builtin.unrealized_conversion_cast %41 : index to i64
    %subview = memref.subview %20[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %43 = builtin.unrealized_conversion_cast %subview : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_0 = memref.subview %13[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %44 = builtin.unrealized_conversion_cast %subview_0 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_1 = memref.subview %6[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %45 = builtin.unrealized_conversion_cast %subview_1 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_2 = memref.subview %34[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %46 = builtin.unrealized_conversion_cast %subview_2 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.mlir.zero : i64
    %48 = "arm_sve.intr.whilelt"(%47, %42) : (i64, i64) -> vector<[4]xi1>
    %49 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.extractvalue %43[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.getelementptr %49[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %52 = llvm.getelementptr %51[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %53 = llvm.intr.masked.load %52, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.getelementptr %54[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %57 = llvm.getelementptr %56[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %58 = llvm.intr.masked.load %57, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %59 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %45[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %59[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %62 = llvm.getelementptr %61[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %63 = llvm.intr.masked.load %62, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %64 = llvm.fmul %53, %58  : vector<[4]xf32>
    %65 = llvm.fadd %64, %63  : vector<[4]xf32>
    %66 = llvm.fdiv %65, %64  : vector<[4]xf32>
    %67 = llvm.extractvalue %46[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.extractvalue %46[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.getelementptr %67[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %70 = llvm.getelementptr %69[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %66, %70, %48 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %71 = llvm.add %36, %31 : i64
    llvm.br ^bb1(%71, %33 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before ExpandStridedMetadata (expand-strided-metadata) //----- //
module {
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg11, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg12, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg13, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg14, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg15, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = builtin.unrealized_conversion_cast %5 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.insertvalue %arg6, %7[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = builtin.unrealized_conversion_cast %12 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %14 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %arg1, %14[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg2, %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg3, %16[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg4, %17[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg5, %18[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = builtin.unrealized_conversion_cast %19 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %21 = builtin.unrealized_conversion_cast %arg0 : i64 to index
    %22 = llvm.mlir.constant(-1 : index) : i64
    %23 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = builtin.unrealized_conversion_cast %25 : i64 to index
    %27 = builtin.unrealized_conversion_cast %26 : index to i64
    %alloc = memref.alloc(%21) {alignment = 64 : i64} : memref<?xf32>
    %28 = builtin.unrealized_conversion_cast %alloc : memref<?xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %dim = memref.dim %20, %26 : memref<?xf32>
    %29 = builtin.unrealized_conversion_cast %dim : index to i64
    %30 = "llvm.intr.vscale"() : () -> i64
    %31 = llvm.mul %30, %24 : i64
    llvm.br ^bb1(%25, %28 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%32: i64, %33: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %34 = builtin.unrealized_conversion_cast %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %35 = builtin.unrealized_conversion_cast %32 : i64 to index
    %36 = builtin.unrealized_conversion_cast %35 : index to i64
    %37 = llvm.icmp "slt" %36, %29 : i64
    llvm.cond_br %37, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %38 = llvm.mul %36, %22 : i64
    %39 = llvm.add %38, %29 : i64
    %40 = llvm.intr.smin(%39, %31)  : (i64, i64) -> i64
    %41 = builtin.unrealized_conversion_cast %40 : i64 to index
    %42 = builtin.unrealized_conversion_cast %41 : index to i64
    %subview = memref.subview %20[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %43 = builtin.unrealized_conversion_cast %subview : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_0 = memref.subview %13[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %44 = builtin.unrealized_conversion_cast %subview_0 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_1 = memref.subview %6[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %45 = builtin.unrealized_conversion_cast %subview_1 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %subview_2 = memref.subview %34[%35] [%41] [1] : memref<?xf32> to memref<?xf32, strided<[1], offset: ?>>
    %46 = builtin.unrealized_conversion_cast %subview_2 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.mlir.zero : i64
    %48 = "arm_sve.intr.whilelt"(%47, %42) : (i64, i64) -> vector<[4]xi1>
    %49 = llvm.extractvalue %43[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.extractvalue %43[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.getelementptr %49[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %52 = llvm.getelementptr %51[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %53 = llvm.intr.masked.load %52, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.extractvalue %44[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.getelementptr %54[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %57 = llvm.getelementptr %56[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %58 = llvm.intr.masked.load %57, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %59 = llvm.extractvalue %45[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %45[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %59[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %62 = llvm.getelementptr %61[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %63 = llvm.intr.masked.load %62, %48, %23 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %64 = llvm.fmul %53, %58  : vector<[4]xf32>
    %65 = llvm.fadd %64, %63  : vector<[4]xf32>
    %66 = llvm.fdiv %65, %64  : vector<[4]xf32>
    %67 = llvm.extractvalue %46[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.extractvalue %46[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.getelementptr %67[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %70 = llvm.getelementptr %69[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %66, %70, %48 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    memref.copy %subview_2, %subview_2 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %71 = llvm.add %36, %31 : i64
    llvm.br ^bb1(%71, %33 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %33 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After ExpandStridedMetadata (expand-strided-metadata) //----- //
module {
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.zero : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %4 = llvm.mlir.constant(-1 : index) : i64
    %5 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.insertvalue %arg11, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = llvm.insertvalue %arg12, %6[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg13, %7[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg14, %8[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg15, %9[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = builtin.unrealized_conversion_cast %10 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %12 = llvm.insertvalue %arg6, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg7, %12[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg8, %13[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg9, %14[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg10, %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %18 = llvm.insertvalue %arg1, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg2, %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg3, %19[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %arg4, %20[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %arg5, %21[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = builtin.unrealized_conversion_cast %22 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %24 = builtin.unrealized_conversion_cast %arg0 : i64 to index
    %25 = builtin.unrealized_conversion_cast %1 : i64 to index
    %alloc = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf32>
    %26 = builtin.unrealized_conversion_cast %alloc : memref<?xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %dim = memref.dim %23, %25 : memref<?xf32>
    %27 = builtin.unrealized_conversion_cast %dim : index to i64
    %28 = "llvm.intr.vscale"() : () -> i64
    %29 = llvm.mul %28, %2 : i64
    llvm.br ^bb1(%1, %26 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%30: i64, %31: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %32 = builtin.unrealized_conversion_cast %31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %33 = builtin.unrealized_conversion_cast %30 : i64 to index
    %34 = llvm.icmp "slt" %30, %27 : i64
    llvm.cond_br %34, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %35 = llvm.mul %30, %4 : i64
    %36 = llvm.add %35, %27 : i64
    %37 = llvm.intr.smin(%36, %29)  : (i64, i64) -> i64
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %base_buffer, %offset, %sizes, %strides = memref.extract_strided_metadata %23 : memref<?xf32> -> memref<f32>, index, index, index
    %reinterpret_cast = memref.reinterpret_cast %base_buffer to offset: [%33], sizes: [%38], strides: [1] : memref<f32> to memref<?xf32, strided<[1], offset: ?>>
    %39 = builtin.unrealized_conversion_cast %reinterpret_cast : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %base_buffer_0, %offset_1, %sizes_2, %strides_3 = memref.extract_strided_metadata %17 : memref<?xf32> -> memref<f32>, index, index, index
    %reinterpret_cast_4 = memref.reinterpret_cast %base_buffer_0 to offset: [%33], sizes: [%38], strides: [1] : memref<f32> to memref<?xf32, strided<[1], offset: ?>>
    %40 = builtin.unrealized_conversion_cast %reinterpret_cast_4 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %base_buffer_5, %offset_6, %sizes_7, %strides_8 = memref.extract_strided_metadata %11 : memref<?xf32> -> memref<f32>, index, index, index
    %reinterpret_cast_9 = memref.reinterpret_cast %base_buffer_5 to offset: [%33], sizes: [%38], strides: [1] : memref<f32> to memref<?xf32, strided<[1], offset: ?>>
    %41 = builtin.unrealized_conversion_cast %reinterpret_cast_9 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %base_buffer_10, %offset_11, %sizes_12, %strides_13 = memref.extract_strided_metadata %32 : memref<?xf32> -> memref<f32>, index, index, index
    %reinterpret_cast_14 = memref.reinterpret_cast %base_buffer_10 to offset: [%33], sizes: [%38], strides: [1] : memref<f32> to memref<?xf32, strided<[1], offset: ?>>
    %42 = builtin.unrealized_conversion_cast %reinterpret_cast_14 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %43 = "arm_sve.intr.whilelt"(%0, %37) : (i64, i64) -> vector<[4]xi1>
    %44 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.extractvalue %39[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.getelementptr %44[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %47 = llvm.intr.masked.load %46, %43, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %48 = llvm.extractvalue %40[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.extractvalue %40[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.getelementptr %48[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %51 = llvm.intr.masked.load %50, %43, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %52 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.extractvalue %41[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.getelementptr %52[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %55 = llvm.intr.masked.load %54, %43, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %56 = llvm.fmul %47, %51  : vector<[4]xf32>
    %57 = llvm.fadd %56, %55  : vector<[4]xf32>
    %58 = llvm.fdiv %57, %56  : vector<[4]xf32>
    %59 = llvm.extractvalue %42[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %42[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %59[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %58, %61, %43 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    memref.copy %reinterpret_cast_14, %reinterpret_cast_14 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %62 = llvm.add %30, %29 : i64
    llvm.br ^bb1(%62, %31 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.zero : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %4 = llvm.mlir.constant(-1 : index) : i64
    %5 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.insertvalue %arg11, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = llvm.insertvalue %arg12, %6[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg13, %7[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg14, %8[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg15, %9[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = builtin.unrealized_conversion_cast %10 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %12 = llvm.insertvalue %arg6, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg7, %12[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg8, %13[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg9, %14[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg10, %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %18 = llvm.insertvalue %arg1, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg2, %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg3, %19[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %arg4, %20[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %arg5, %21[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = builtin.unrealized_conversion_cast %22 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %24 = builtin.unrealized_conversion_cast %arg0 : i64 to index
    %25 = builtin.unrealized_conversion_cast %1 : i64 to index
    %alloc = memref.alloc(%24) {alignment = 64 : i64} : memref<?xf32>
    %26 = builtin.unrealized_conversion_cast %alloc : memref<?xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %dim = memref.dim %23, %25 : memref<?xf32>
    %27 = builtin.unrealized_conversion_cast %dim : index to i64
    %28 = "llvm.intr.vscale"() : () -> i64
    %29 = llvm.mul %28, %2 : i64
    llvm.br ^bb1(%1, %26 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%30: i64, %31: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %32 = builtin.unrealized_conversion_cast %31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %33 = builtin.unrealized_conversion_cast %30 : i64 to index
    %34 = llvm.icmp "slt" %30, %27 : i64
    llvm.cond_br %34, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %35 = llvm.mul %30, %4 : i64
    %36 = llvm.add %35, %27 : i64
    %37 = llvm.intr.smin(%36, %29)  : (i64, i64) -> i64
    %38 = builtin.unrealized_conversion_cast %37 : i64 to index
    %base_buffer, %offset, %sizes, %strides = memref.extract_strided_metadata %23 : memref<?xf32> -> memref<f32>, index, index, index
    %reinterpret_cast = memref.reinterpret_cast %base_buffer to offset: [%33], sizes: [%38], strides: [1] : memref<f32> to memref<?xf32, strided<[1], offset: ?>>
    %39 = builtin.unrealized_conversion_cast %reinterpret_cast : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %base_buffer_0, %offset_1, %sizes_2, %strides_3 = memref.extract_strided_metadata %17 : memref<?xf32> -> memref<f32>, index, index, index
    %reinterpret_cast_4 = memref.reinterpret_cast %base_buffer_0 to offset: [%33], sizes: [%38], strides: [1] : memref<f32> to memref<?xf32, strided<[1], offset: ?>>
    %40 = builtin.unrealized_conversion_cast %reinterpret_cast_4 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %base_buffer_5, %offset_6, %sizes_7, %strides_8 = memref.extract_strided_metadata %11 : memref<?xf32> -> memref<f32>, index, index, index
    %reinterpret_cast_9 = memref.reinterpret_cast %base_buffer_5 to offset: [%33], sizes: [%38], strides: [1] : memref<f32> to memref<?xf32, strided<[1], offset: ?>>
    %41 = builtin.unrealized_conversion_cast %reinterpret_cast_9 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %base_buffer_10, %offset_11, %sizes_12, %strides_13 = memref.extract_strided_metadata %32 : memref<?xf32> -> memref<f32>, index, index, index
    %reinterpret_cast_14 = memref.reinterpret_cast %base_buffer_10 to offset: [%33], sizes: [%38], strides: [1] : memref<f32> to memref<?xf32, strided<[1], offset: ?>>
    %42 = builtin.unrealized_conversion_cast %reinterpret_cast_14 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %43 = "arm_sve.intr.whilelt"(%0, %37) : (i64, i64) -> vector<[4]xi1>
    %44 = llvm.extractvalue %39[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.extractvalue %39[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.getelementptr %44[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %47 = llvm.intr.masked.load %46, %43, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %48 = llvm.extractvalue %40[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.extractvalue %40[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.getelementptr %48[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %51 = llvm.intr.masked.load %50, %43, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %52 = llvm.extractvalue %41[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.extractvalue %41[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.getelementptr %52[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %55 = llvm.intr.masked.load %54, %43, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %56 = llvm.fmul %47, %51  : vector<[4]xf32>
    %57 = llvm.fadd %56, %55  : vector<[4]xf32>
    %58 = llvm.fdiv %57, %56  : vector<[4]xf32>
    %59 = llvm.extractvalue %42[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %42[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %59[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %58, %61, %43 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    memref.copy %reinterpret_cast_14, %reinterpret_cast_14 : memref<?xf32, strided<[1], offset: ?>> to memref<?xf32, strided<[1], offset: ?>>
    %62 = llvm.add %30, %29 : i64
    llvm.br ^bb1(%62, %31 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %31 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After FinalizeMemRefToLLVMConversionPass (finalize-memref-to-llvm) //----- //
module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @_mlir_memref_to_llvm_alloc(i64) -> !llvm.ptr
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.zero : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %4 = llvm.mlir.constant(-1 : index) : i64
    %5 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.insertvalue %arg11, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = llvm.insertvalue %arg12, %6[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg13, %7[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg14, %8[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg15, %9[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg6, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg8, %12[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg10, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg1, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg2, %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg3, %17[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg4, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg5, %19[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.zero : !llvm.ptr
    %23 = llvm.getelementptr %22[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.mlir.constant(64 : index) : i64
    %26 = llvm.add %24, %25 : i64
    %27 = llvm.call @_mlir_memref_to_llvm_alloc(%26) : (i64) -> !llvm.ptr
    %28 = llvm.ptrtoint %27 : !llvm.ptr to i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.sub %25, %29 : i64
    %31 = llvm.add %28, %30 : i64
    %32 = llvm.urem %31, %25  : i64
    %33 = llvm.sub %31, %32 : i64
    %34 = llvm.inttoptr %33 : i64 to !llvm.ptr
    %35 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %27, %35[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %arg0, %39[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %21, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = builtin.unrealized_conversion_cast %41 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %43 = builtin.unrealized_conversion_cast %42 : memref<?xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.extractvalue %20[3] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.alloca %44 x !llvm.array<1 x i64> : (i64) -> !llvm.ptr
    llvm.store %45, %46 : !llvm.array<1 x i64>, !llvm.ptr
    %47 = llvm.getelementptr %46[0, %1] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1 x i64>
    %48 = llvm.load %47 : !llvm.ptr -> i64
    %49 = builtin.unrealized_conversion_cast %48 : i64 to index
    %50 = builtin.unrealized_conversion_cast %49 : index to i64
    %51 = "llvm.intr.vscale"() : () -> i64
    %52 = llvm.mul %51, %2 : i64
    llvm.br ^bb1(%1, %43 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%53: i64, %54: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %55 = llvm.icmp "slt" %53, %50 : i64
    llvm.cond_br %55, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %56 = llvm.mul %53, %4 : i64
    %57 = llvm.add %56, %50 : i64
    %58 = llvm.intr.smin(%57, %52)  : (i64, i64) -> i64
    %59 = llvm.extractvalue %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %62 = llvm.insertvalue %59, %61[0] : !llvm.struct<(ptr, ptr, i64)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr, ptr, i64)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr, ptr, i64)> 
    %66 = llvm.extractvalue %20[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.extractvalue %20[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.extractvalue %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %70 = llvm.extractvalue %65[0] : !llvm.struct<(ptr, ptr, i64)> 
    %71 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64)> 
    %72 = llvm.insertvalue %70, %69[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.insertvalue %71, %72[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.insertvalue %53, %73[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.insertvalue %58, %74[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = builtin.unrealized_conversion_cast %77 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %79 = builtin.unrealized_conversion_cast %78 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %80 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %83 = llvm.insertvalue %80, %82[0] : !llvm.struct<(ptr, ptr, i64)> 
    %84 = llvm.insertvalue %81, %83[1] : !llvm.struct<(ptr, ptr, i64)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr, ptr, i64)> 
    %87 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %91 = llvm.extractvalue %86[0] : !llvm.struct<(ptr, ptr, i64)> 
    %92 = llvm.extractvalue %86[1] : !llvm.struct<(ptr, ptr, i64)> 
    %93 = llvm.insertvalue %91, %90[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.insertvalue %92, %93[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %53, %94[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %58, %95[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.insertvalue %97, %96[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = builtin.unrealized_conversion_cast %98 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %100 = builtin.unrealized_conversion_cast %99 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %101 = llvm.extractvalue %10[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %104 = llvm.insertvalue %101, %103[0] : !llvm.struct<(ptr, ptr, i64)> 
    %105 = llvm.insertvalue %102, %104[1] : !llvm.struct<(ptr, ptr, i64)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.insertvalue %106, %105[2] : !llvm.struct<(ptr, ptr, i64)> 
    %108 = llvm.extractvalue %10[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %112 = llvm.extractvalue %107[0] : !llvm.struct<(ptr, ptr, i64)> 
    %113 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64)> 
    %114 = llvm.insertvalue %112, %111[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.insertvalue %113, %114[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.insertvalue %53, %115[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %58, %116[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.insertvalue %118, %117[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %120 = builtin.unrealized_conversion_cast %119 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %121 = builtin.unrealized_conversion_cast %120 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %122 = llvm.extractvalue %54[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %125 = llvm.insertvalue %122, %124[0] : !llvm.struct<(ptr, ptr, i64)> 
    %126 = llvm.insertvalue %123, %125[1] : !llvm.struct<(ptr, ptr, i64)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.insertvalue %127, %126[2] : !llvm.struct<(ptr, ptr, i64)> 
    %129 = llvm.extractvalue %54[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %133 = llvm.extractvalue %128[0] : !llvm.struct<(ptr, ptr, i64)> 
    %134 = llvm.extractvalue %128[1] : !llvm.struct<(ptr, ptr, i64)> 
    %135 = llvm.insertvalue %133, %132[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %134, %135[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.insertvalue %53, %136[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.insertvalue %58, %137[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = builtin.unrealized_conversion_cast %140 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %142 = builtin.unrealized_conversion_cast %141 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %143 = "arm_sve.intr.whilelt"(%0, %58) : (i64, i64) -> vector<[4]xi1>
    %144 = llvm.extractvalue %79[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.extractvalue %79[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.getelementptr %144[%145] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %147 = llvm.intr.masked.load %146, %143, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %148 = llvm.extractvalue %100[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.extractvalue %100[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %148[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %151 = llvm.intr.masked.load %150, %143, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %152 = llvm.extractvalue %121[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.extractvalue %121[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.getelementptr %152[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %155 = llvm.intr.masked.load %154, %143, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %156 = llvm.fmul %147, %151  : vector<[4]xf32>
    %157 = llvm.fadd %156, %155  : vector<[4]xf32>
    %158 = llvm.fdiv %157, %156  : vector<[4]xf32>
    %159 = llvm.extractvalue %142[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.extractvalue %142[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.getelementptr %159[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %158, %161, %143 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    %162 = llvm.intr.stacksave : !llvm.ptr
    %163 = llvm.mlir.constant(1 : i64) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.alloca %164 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %140, %165 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %166 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %167 = llvm.insertvalue %163, %166[0] : !llvm.struct<(i64, ptr)> 
    %168 = llvm.insertvalue %165, %167[1] : !llvm.struct<(i64, ptr)> 
    %169 = llvm.mlir.constant(1 : i64) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.alloca %170 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %140, %171 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %172 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %173 = llvm.insertvalue %169, %172[0] : !llvm.struct<(i64, ptr)> 
    %174 = llvm.insertvalue %171, %173[1] : !llvm.struct<(i64, ptr)> 
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.alloca %175 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %168, %176 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %177 = llvm.alloca %175 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %174, %177 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %178 = llvm.mlir.zero : !llvm.ptr
    %179 = llvm.getelementptr %178[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %180 = llvm.ptrtoint %179 : !llvm.ptr to i64
    llvm.call @memrefCopy(%180, %176, %177) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %162 : !llvm.ptr
    %181 = llvm.add %53, %52 : i64
    llvm.br ^bb1(%181, %54 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %54 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before CSE (cse) //----- //
module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @_mlir_memref_to_llvm_alloc(i64) -> !llvm.ptr
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.zero : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %4 = llvm.mlir.constant(-1 : index) : i64
    %5 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.insertvalue %arg11, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = llvm.insertvalue %arg12, %6[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg13, %7[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg14, %8[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg15, %9[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg6, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg8, %12[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg10, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg1, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg2, %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg3, %17[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg4, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg5, %19[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.zero : !llvm.ptr
    %23 = llvm.getelementptr %22[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.mlir.constant(64 : index) : i64
    %26 = llvm.add %24, %25 : i64
    %27 = llvm.call @_mlir_memref_to_llvm_alloc(%26) : (i64) -> !llvm.ptr
    %28 = llvm.ptrtoint %27 : !llvm.ptr to i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.sub %25, %29 : i64
    %31 = llvm.add %28, %30 : i64
    %32 = llvm.urem %31, %25  : i64
    %33 = llvm.sub %31, %32 : i64
    %34 = llvm.inttoptr %33 : i64 to !llvm.ptr
    %35 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %27, %35[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %arg0, %39[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %21, %40[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = builtin.unrealized_conversion_cast %41 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %43 = builtin.unrealized_conversion_cast %42 : memref<?xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.extractvalue %20[3] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.alloca %44 x !llvm.array<1 x i64> : (i64) -> !llvm.ptr
    llvm.store %45, %46 : !llvm.array<1 x i64>, !llvm.ptr
    %47 = llvm.getelementptr %46[0, %1] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1 x i64>
    %48 = llvm.load %47 : !llvm.ptr -> i64
    %49 = builtin.unrealized_conversion_cast %48 : i64 to index
    %50 = builtin.unrealized_conversion_cast %49 : index to i64
    %51 = "llvm.intr.vscale"() : () -> i64
    %52 = llvm.mul %51, %2 : i64
    llvm.br ^bb1(%1, %43 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%53: i64, %54: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %55 = llvm.icmp "slt" %53, %50 : i64
    llvm.cond_br %55, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %56 = llvm.mul %53, %4 : i64
    %57 = llvm.add %56, %50 : i64
    %58 = llvm.intr.smin(%57, %52)  : (i64, i64) -> i64
    %59 = llvm.extractvalue %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %62 = llvm.insertvalue %59, %61[0] : !llvm.struct<(ptr, ptr, i64)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr, ptr, i64)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr, ptr, i64)> 
    %66 = llvm.extractvalue %20[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.extractvalue %20[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.extractvalue %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %70 = llvm.extractvalue %65[0] : !llvm.struct<(ptr, ptr, i64)> 
    %71 = llvm.extractvalue %65[1] : !llvm.struct<(ptr, ptr, i64)> 
    %72 = llvm.insertvalue %70, %69[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.insertvalue %71, %72[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.insertvalue %53, %73[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.insertvalue %58, %74[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = builtin.unrealized_conversion_cast %77 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %79 = builtin.unrealized_conversion_cast %78 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %80 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %83 = llvm.insertvalue %80, %82[0] : !llvm.struct<(ptr, ptr, i64)> 
    %84 = llvm.insertvalue %81, %83[1] : !llvm.struct<(ptr, ptr, i64)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr, ptr, i64)> 
    %87 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %91 = llvm.extractvalue %86[0] : !llvm.struct<(ptr, ptr, i64)> 
    %92 = llvm.extractvalue %86[1] : !llvm.struct<(ptr, ptr, i64)> 
    %93 = llvm.insertvalue %91, %90[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.insertvalue %92, %93[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %53, %94[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %58, %95[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.insertvalue %97, %96[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = builtin.unrealized_conversion_cast %98 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %100 = builtin.unrealized_conversion_cast %99 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %101 = llvm.extractvalue %10[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %104 = llvm.insertvalue %101, %103[0] : !llvm.struct<(ptr, ptr, i64)> 
    %105 = llvm.insertvalue %102, %104[1] : !llvm.struct<(ptr, ptr, i64)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.insertvalue %106, %105[2] : !llvm.struct<(ptr, ptr, i64)> 
    %108 = llvm.extractvalue %10[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %112 = llvm.extractvalue %107[0] : !llvm.struct<(ptr, ptr, i64)> 
    %113 = llvm.extractvalue %107[1] : !llvm.struct<(ptr, ptr, i64)> 
    %114 = llvm.insertvalue %112, %111[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.insertvalue %113, %114[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.insertvalue %53, %115[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %58, %116[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.insertvalue %118, %117[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %120 = builtin.unrealized_conversion_cast %119 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %121 = builtin.unrealized_conversion_cast %120 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %122 = llvm.extractvalue %54[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %125 = llvm.insertvalue %122, %124[0] : !llvm.struct<(ptr, ptr, i64)> 
    %126 = llvm.insertvalue %123, %125[1] : !llvm.struct<(ptr, ptr, i64)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.insertvalue %127, %126[2] : !llvm.struct<(ptr, ptr, i64)> 
    %129 = llvm.extractvalue %54[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %133 = llvm.extractvalue %128[0] : !llvm.struct<(ptr, ptr, i64)> 
    %134 = llvm.extractvalue %128[1] : !llvm.struct<(ptr, ptr, i64)> 
    %135 = llvm.insertvalue %133, %132[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %134, %135[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.insertvalue %53, %136[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.insertvalue %58, %137[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = builtin.unrealized_conversion_cast %140 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %142 = builtin.unrealized_conversion_cast %141 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %143 = "arm_sve.intr.whilelt"(%0, %58) : (i64, i64) -> vector<[4]xi1>
    %144 = llvm.extractvalue %79[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.extractvalue %79[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.getelementptr %144[%145] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %147 = llvm.intr.masked.load %146, %143, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %148 = llvm.extractvalue %100[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.extractvalue %100[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %148[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %151 = llvm.intr.masked.load %150, %143, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %152 = llvm.extractvalue %121[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.extractvalue %121[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.getelementptr %152[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %155 = llvm.intr.masked.load %154, %143, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %156 = llvm.fmul %147, %151  : vector<[4]xf32>
    %157 = llvm.fadd %156, %155  : vector<[4]xf32>
    %158 = llvm.fdiv %157, %156  : vector<[4]xf32>
    %159 = llvm.extractvalue %142[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.extractvalue %142[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.getelementptr %159[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %158, %161, %143 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    %162 = llvm.intr.stacksave : !llvm.ptr
    %163 = llvm.mlir.constant(1 : i64) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.alloca %164 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %140, %165 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %166 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %167 = llvm.insertvalue %163, %166[0] : !llvm.struct<(i64, ptr)> 
    %168 = llvm.insertvalue %165, %167[1] : !llvm.struct<(i64, ptr)> 
    %169 = llvm.mlir.constant(1 : i64) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.alloca %170 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %140, %171 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %172 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %173 = llvm.insertvalue %169, %172[0] : !llvm.struct<(i64, ptr)> 
    %174 = llvm.insertvalue %171, %173[1] : !llvm.struct<(i64, ptr)> 
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.alloca %175 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %168, %176 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %177 = llvm.alloca %175 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %174, %177 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %178 = llvm.mlir.zero : !llvm.ptr
    %179 = llvm.getelementptr %178[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %180 = llvm.ptrtoint %179 : !llvm.ptr to i64
    llvm.call @memrefCopy(%180, %176, %177) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %162 : !llvm.ptr
    %181 = llvm.add %53, %52 : i64
    llvm.br ^bb1(%181, %54 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %54 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After CSE (cse) //----- //
module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @_mlir_memref_to_llvm_alloc(i64) -> !llvm.ptr
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.zero : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %4 = llvm.mlir.constant(-1 : index) : i64
    %5 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.insertvalue %arg11, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = llvm.insertvalue %arg12, %6[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg13, %7[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg14, %8[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg15, %9[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg6, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg8, %12[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg10, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg1, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg2, %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg3, %17[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg4, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg5, %19[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.zero : !llvm.ptr
    %23 = llvm.getelementptr %22[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.mlir.constant(64 : index) : i64
    %26 = llvm.add %24, %25 : i64
    %27 = llvm.call @_mlir_memref_to_llvm_alloc(%26) : (i64) -> !llvm.ptr
    %28 = llvm.ptrtoint %27 : !llvm.ptr to i64
    %29 = llvm.sub %25, %21 : i64
    %30 = llvm.add %28, %29 : i64
    %31 = llvm.urem %30, %25  : i64
    %32 = llvm.sub %30, %31 : i64
    %33 = llvm.inttoptr %32 : i64 to !llvm.ptr
    %34 = llvm.insertvalue %27, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %33, %34[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %1, %35[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %arg0, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %21, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = builtin.unrealized_conversion_cast %38 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %40 = builtin.unrealized_conversion_cast %39 : memref<?xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.extractvalue %20[3] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.alloca %21 x !llvm.array<1 x i64> : (i64) -> !llvm.ptr
    llvm.store %41, %42 : !llvm.array<1 x i64>, !llvm.ptr
    %43 = llvm.getelementptr %42[0, %1] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1 x i64>
    %44 = llvm.load %43 : !llvm.ptr -> i64
    %45 = builtin.unrealized_conversion_cast %44 : i64 to index
    %46 = builtin.unrealized_conversion_cast %45 : index to i64
    %47 = "llvm.intr.vscale"() : () -> i64
    %48 = llvm.mul %47, %2 : i64
    llvm.br ^bb1(%1, %40 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%49: i64, %50: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %51 = llvm.icmp "slt" %49, %46 : i64
    llvm.cond_br %51, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %52 = llvm.mul %49, %4 : i64
    %53 = llvm.add %52, %46 : i64
    %54 = llvm.intr.smin(%53, %48)  : (i64, i64) -> i64
    %55 = llvm.extractvalue %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %58 = llvm.insertvalue %55, %57[0] : !llvm.struct<(ptr, ptr, i64)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr, ptr, i64)> 
    %60 = llvm.insertvalue %1, %59[2] : !llvm.struct<(ptr, ptr, i64)> 
    %61 = llvm.extractvalue %60[0] : !llvm.struct<(ptr, ptr, i64)> 
    %62 = llvm.extractvalue %60[1] : !llvm.struct<(ptr, ptr, i64)> 
    %63 = llvm.insertvalue %61, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %62, %63[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.insertvalue %49, %64[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %54, %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %21, %66[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = builtin.unrealized_conversion_cast %67 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %69 = builtin.unrealized_conversion_cast %68 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %70 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %70, %57[0] : !llvm.struct<(ptr, ptr, i64)> 
    %73 = llvm.insertvalue %71, %72[1] : !llvm.struct<(ptr, ptr, i64)> 
    %74 = llvm.insertvalue %1, %73[2] : !llvm.struct<(ptr, ptr, i64)> 
    %75 = llvm.extractvalue %74[0] : !llvm.struct<(ptr, ptr, i64)> 
    %76 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64)> 
    %77 = llvm.insertvalue %75, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.insertvalue %76, %77[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.insertvalue %49, %78[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.insertvalue %54, %79[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.insertvalue %21, %80[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = builtin.unrealized_conversion_cast %81 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %83 = builtin.unrealized_conversion_cast %82 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %84 = llvm.extractvalue %10[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %84, %57[0] : !llvm.struct<(ptr, ptr, i64)> 
    %87 = llvm.insertvalue %85, %86[1] : !llvm.struct<(ptr, ptr, i64)> 
    %88 = llvm.insertvalue %1, %87[2] : !llvm.struct<(ptr, ptr, i64)> 
    %89 = llvm.extractvalue %88[0] : !llvm.struct<(ptr, ptr, i64)> 
    %90 = llvm.extractvalue %88[1] : !llvm.struct<(ptr, ptr, i64)> 
    %91 = llvm.insertvalue %89, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.insertvalue %90, %91[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.insertvalue %49, %92[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.insertvalue %54, %93[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %21, %94[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = builtin.unrealized_conversion_cast %95 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %97 = builtin.unrealized_conversion_cast %96 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %98 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.insertvalue %98, %57[0] : !llvm.struct<(ptr, ptr, i64)> 
    %101 = llvm.insertvalue %99, %100[1] : !llvm.struct<(ptr, ptr, i64)> 
    %102 = llvm.insertvalue %1, %101[2] : !llvm.struct<(ptr, ptr, i64)> 
    %103 = llvm.extractvalue %102[0] : !llvm.struct<(ptr, ptr, i64)> 
    %104 = llvm.extractvalue %102[1] : !llvm.struct<(ptr, ptr, i64)> 
    %105 = llvm.insertvalue %103, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %104, %105[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %49, %106[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.insertvalue %54, %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %21, %108[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = builtin.unrealized_conversion_cast %109 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %111 = builtin.unrealized_conversion_cast %110 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %112 = "arm_sve.intr.whilelt"(%0, %54) : (i64, i64) -> vector<[4]xi1>
    %113 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.extractvalue %69[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.getelementptr %113[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %116 = llvm.intr.masked.load %115, %112, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %117 = llvm.extractvalue %83[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.extractvalue %83[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %119 = llvm.getelementptr %117[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %120 = llvm.intr.masked.load %119, %112, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %121 = llvm.extractvalue %97[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.extractvalue %97[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.getelementptr %121[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %124 = llvm.intr.masked.load %123, %112, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %125 = llvm.fmul %116, %120  : vector<[4]xf32>
    %126 = llvm.fadd %125, %124  : vector<[4]xf32>
    %127 = llvm.fdiv %126, %125  : vector<[4]xf32>
    %128 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.extractvalue %111[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.getelementptr %128[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %127, %130, %112 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    %131 = llvm.intr.stacksave : !llvm.ptr
    %132 = llvm.mlir.constant(1 : i64) : i64
    %133 = llvm.alloca %21 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %109, %133 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %134 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %135 = llvm.insertvalue %132, %134[0] : !llvm.struct<(i64, ptr)> 
    %136 = llvm.insertvalue %133, %135[1] : !llvm.struct<(i64, ptr)> 
    %137 = llvm.alloca %21 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %109, %137 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %138 = llvm.insertvalue %137, %135[1] : !llvm.struct<(i64, ptr)> 
    %139 = llvm.alloca %21 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %136, %139 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %140 = llvm.alloca %21 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %138, %140 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %141 = llvm.getelementptr %22[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %142 = llvm.ptrtoint %141 : !llvm.ptr to i64
    llvm.call @memrefCopy(%142, %139, %140) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %131 : !llvm.ptr
    %143 = llvm.add %49, %48 : i64
    llvm.br ^bb1(%143, %50 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %50 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump Before ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @_mlir_memref_to_llvm_alloc(i64) -> !llvm.ptr
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.zero : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %4 = llvm.mlir.constant(-1 : index) : i64
    %5 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.insertvalue %arg11, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = llvm.insertvalue %arg12, %6[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg13, %7[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg14, %8[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg15, %9[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg6, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg8, %12[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg10, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg1, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg2, %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg3, %17[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg4, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg5, %19[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.zero : !llvm.ptr
    %23 = llvm.getelementptr %22[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.mlir.constant(64 : index) : i64
    %26 = llvm.add %24, %25 : i64
    %27 = llvm.call @_mlir_memref_to_llvm_alloc(%26) : (i64) -> !llvm.ptr
    %28 = llvm.ptrtoint %27 : !llvm.ptr to i64
    %29 = llvm.sub %25, %21 : i64
    %30 = llvm.add %28, %29 : i64
    %31 = llvm.urem %30, %25  : i64
    %32 = llvm.sub %30, %31 : i64
    %33 = llvm.inttoptr %32 : i64 to !llvm.ptr
    %34 = llvm.insertvalue %27, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %33, %34[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %1, %35[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %arg0, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %21, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = builtin.unrealized_conversion_cast %38 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32>
    %40 = builtin.unrealized_conversion_cast %39 : memref<?xf32> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.extractvalue %20[3] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.alloca %21 x !llvm.array<1 x i64> : (i64) -> !llvm.ptr
    llvm.store %41, %42 : !llvm.array<1 x i64>, !llvm.ptr
    %43 = llvm.getelementptr %42[0, %1] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1 x i64>
    %44 = llvm.load %43 : !llvm.ptr -> i64
    %45 = builtin.unrealized_conversion_cast %44 : i64 to index
    %46 = builtin.unrealized_conversion_cast %45 : index to i64
    %47 = "llvm.intr.vscale"() : () -> i64
    %48 = llvm.mul %47, %2 : i64
    llvm.br ^bb1(%1, %40 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%49: i64, %50: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %51 = llvm.icmp "slt" %49, %46 : i64
    llvm.cond_br %51, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %52 = llvm.mul %49, %4 : i64
    %53 = llvm.add %52, %46 : i64
    %54 = llvm.intr.smin(%53, %48)  : (i64, i64) -> i64
    %55 = llvm.extractvalue %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %58 = llvm.insertvalue %55, %57[0] : !llvm.struct<(ptr, ptr, i64)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr, ptr, i64)> 
    %60 = llvm.insertvalue %1, %59[2] : !llvm.struct<(ptr, ptr, i64)> 
    %61 = llvm.extractvalue %60[0] : !llvm.struct<(ptr, ptr, i64)> 
    %62 = llvm.extractvalue %60[1] : !llvm.struct<(ptr, ptr, i64)> 
    %63 = llvm.insertvalue %61, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %62, %63[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.insertvalue %49, %64[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %54, %65[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %21, %66[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = builtin.unrealized_conversion_cast %67 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %69 = builtin.unrealized_conversion_cast %68 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %70 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %70, %57[0] : !llvm.struct<(ptr, ptr, i64)> 
    %73 = llvm.insertvalue %71, %72[1] : !llvm.struct<(ptr, ptr, i64)> 
    %74 = llvm.insertvalue %1, %73[2] : !llvm.struct<(ptr, ptr, i64)> 
    %75 = llvm.extractvalue %74[0] : !llvm.struct<(ptr, ptr, i64)> 
    %76 = llvm.extractvalue %74[1] : !llvm.struct<(ptr, ptr, i64)> 
    %77 = llvm.insertvalue %75, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.insertvalue %76, %77[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.insertvalue %49, %78[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.insertvalue %54, %79[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.insertvalue %21, %80[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = builtin.unrealized_conversion_cast %81 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %83 = builtin.unrealized_conversion_cast %82 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %84 = llvm.extractvalue %10[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %84, %57[0] : !llvm.struct<(ptr, ptr, i64)> 
    %87 = llvm.insertvalue %85, %86[1] : !llvm.struct<(ptr, ptr, i64)> 
    %88 = llvm.insertvalue %1, %87[2] : !llvm.struct<(ptr, ptr, i64)> 
    %89 = llvm.extractvalue %88[0] : !llvm.struct<(ptr, ptr, i64)> 
    %90 = llvm.extractvalue %88[1] : !llvm.struct<(ptr, ptr, i64)> 
    %91 = llvm.insertvalue %89, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.insertvalue %90, %91[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.insertvalue %49, %92[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.insertvalue %54, %93[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %21, %94[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = builtin.unrealized_conversion_cast %95 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %97 = builtin.unrealized_conversion_cast %96 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %98 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.insertvalue %98, %57[0] : !llvm.struct<(ptr, ptr, i64)> 
    %101 = llvm.insertvalue %99, %100[1] : !llvm.struct<(ptr, ptr, i64)> 
    %102 = llvm.insertvalue %1, %101[2] : !llvm.struct<(ptr, ptr, i64)> 
    %103 = llvm.extractvalue %102[0] : !llvm.struct<(ptr, ptr, i64)> 
    %104 = llvm.extractvalue %102[1] : !llvm.struct<(ptr, ptr, i64)> 
    %105 = llvm.insertvalue %103, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %104, %105[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %49, %106[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.insertvalue %54, %107[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %109 = llvm.insertvalue %21, %108[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = builtin.unrealized_conversion_cast %109 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> to memref<?xf32, strided<[1], offset: ?>>
    %111 = builtin.unrealized_conversion_cast %110 : memref<?xf32, strided<[1], offset: ?>> to !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %112 = "arm_sve.intr.whilelt"(%0, %54) : (i64, i64) -> vector<[4]xi1>
    %113 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.extractvalue %69[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.getelementptr %113[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %116 = llvm.intr.masked.load %115, %112, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %117 = llvm.extractvalue %83[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.extractvalue %83[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %119 = llvm.getelementptr %117[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %120 = llvm.intr.masked.load %119, %112, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %121 = llvm.extractvalue %97[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.extractvalue %97[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.getelementptr %121[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %124 = llvm.intr.masked.load %123, %112, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %125 = llvm.fmul %116, %120  : vector<[4]xf32>
    %126 = llvm.fadd %125, %124  : vector<[4]xf32>
    %127 = llvm.fdiv %126, %125  : vector<[4]xf32>
    %128 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.extractvalue %111[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %130 = llvm.getelementptr %128[%129] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %127, %130, %112 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    %131 = llvm.intr.stacksave : !llvm.ptr
    %132 = llvm.mlir.constant(1 : i64) : i64
    %133 = llvm.alloca %21 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %109, %133 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %134 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %135 = llvm.insertvalue %132, %134[0] : !llvm.struct<(i64, ptr)> 
    %136 = llvm.insertvalue %133, %135[1] : !llvm.struct<(i64, ptr)> 
    %137 = llvm.alloca %21 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %109, %137 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %138 = llvm.insertvalue %137, %135[1] : !llvm.struct<(i64, ptr)> 
    %139 = llvm.alloca %21 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %136, %139 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %140 = llvm.alloca %21 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %138, %140 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %141 = llvm.getelementptr %22[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %142 = llvm.ptrtoint %141 : !llvm.ptr to i64
    llvm.call @memrefCopy(%142, %139, %140) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %131 : !llvm.ptr
    %143 = llvm.add %49, %48 : i64
    llvm.br ^bb1(%143, %50 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %50 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


// -----// IR Dump After ReconcileUnrealizedCasts (reconcile-unrealized-casts) //----- //
module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @_mlir_memref_to_llvm_alloc(i64) -> !llvm.ptr
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.zero : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %4 = llvm.mlir.constant(-1 : index) : i64
    %5 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.insertvalue %arg11, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = llvm.insertvalue %arg12, %6[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg13, %7[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg14, %8[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg15, %9[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg6, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg8, %12[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg10, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg1, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg2, %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg3, %17[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg4, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg5, %19[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.zero : !llvm.ptr
    %23 = llvm.getelementptr %22[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.mlir.constant(64 : index) : i64
    %26 = llvm.add %24, %25 : i64
    %27 = llvm.call @_mlir_memref_to_llvm_alloc(%26) : (i64) -> !llvm.ptr
    %28 = llvm.ptrtoint %27 : !llvm.ptr to i64
    %29 = llvm.sub %25, %21 : i64
    %30 = llvm.add %28, %29 : i64
    %31 = llvm.urem %30, %25  : i64
    %32 = llvm.sub %30, %31 : i64
    %33 = llvm.inttoptr %32 : i64 to !llvm.ptr
    %34 = llvm.insertvalue %27, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %33, %34[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %1, %35[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %arg0, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %21, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.extractvalue %20[3] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.alloca %21 x !llvm.array<1 x i64> : (i64) -> !llvm.ptr
    llvm.store %39, %40 : !llvm.array<1 x i64>, !llvm.ptr
    %41 = llvm.getelementptr %40[0, %1] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1 x i64>
    %42 = llvm.load %41 : !llvm.ptr -> i64
    %43 = "llvm.intr.vscale"() : () -> i64
    %44 = llvm.mul %43, %2 : i64
    llvm.br ^bb1(%1, %38 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%45: i64, %46: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %47 = llvm.icmp "slt" %45, %42 : i64
    llvm.cond_br %47, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %48 = llvm.mul %45, %4 : i64
    %49 = llvm.add %48, %42 : i64
    %50 = llvm.intr.smin(%49, %44)  : (i64, i64) -> i64
    %51 = llvm.extractvalue %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %54 = llvm.insertvalue %51, %53[0] : !llvm.struct<(ptr, ptr, i64)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr, ptr, i64)> 
    %56 = llvm.insertvalue %1, %55[2] : !llvm.struct<(ptr, ptr, i64)> 
    %57 = llvm.extractvalue %56[0] : !llvm.struct<(ptr, ptr, i64)> 
    %58 = llvm.extractvalue %56[1] : !llvm.struct<(ptr, ptr, i64)> 
    %59 = llvm.insertvalue %57, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.insertvalue %58, %59[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %45, %60[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.insertvalue %50, %61[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.insertvalue %21, %62[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %64, %53[0] : !llvm.struct<(ptr, ptr, i64)> 
    %67 = llvm.insertvalue %65, %66[1] : !llvm.struct<(ptr, ptr, i64)> 
    %68 = llvm.insertvalue %1, %67[2] : !llvm.struct<(ptr, ptr, i64)> 
    %69 = llvm.extractvalue %68[0] : !llvm.struct<(ptr, ptr, i64)> 
    %70 = llvm.extractvalue %68[1] : !llvm.struct<(ptr, ptr, i64)> 
    %71 = llvm.insertvalue %69, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %70, %71[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.insertvalue %45, %72[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.insertvalue %50, %73[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.insertvalue %21, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.extractvalue %10[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.insertvalue %76, %53[0] : !llvm.struct<(ptr, ptr, i64)> 
    %79 = llvm.insertvalue %77, %78[1] : !llvm.struct<(ptr, ptr, i64)> 
    %80 = llvm.insertvalue %1, %79[2] : !llvm.struct<(ptr, ptr, i64)> 
    %81 = llvm.extractvalue %80[0] : !llvm.struct<(ptr, ptr, i64)> 
    %82 = llvm.extractvalue %80[1] : !llvm.struct<(ptr, ptr, i64)> 
    %83 = llvm.insertvalue %81, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.insertvalue %82, %83[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.insertvalue %45, %84[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %50, %85[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %21, %86[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.extractvalue %46[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %88, %53[0] : !llvm.struct<(ptr, ptr, i64)> 
    %91 = llvm.insertvalue %89, %90[1] : !llvm.struct<(ptr, ptr, i64)> 
    %92 = llvm.insertvalue %1, %91[2] : !llvm.struct<(ptr, ptr, i64)> 
    %93 = llvm.extractvalue %92[0] : !llvm.struct<(ptr, ptr, i64)> 
    %94 = llvm.extractvalue %92[1] : !llvm.struct<(ptr, ptr, i64)> 
    %95 = llvm.insertvalue %93, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %94, %95[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %45, %96[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.insertvalue %50, %97[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.insertvalue %21, %98[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = "arm_sve.intr.whilelt"(%0, %50) : (i64, i64) -> vector<[4]xi1>
    %101 = llvm.extractvalue %63[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.extractvalue %63[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.getelementptr %101[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %104 = llvm.intr.masked.load %103, %100, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %105 = llvm.extractvalue %75[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.extractvalue %75[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.getelementptr %105[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %108 = llvm.intr.masked.load %107, %100, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %109 = llvm.extractvalue %87[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.extractvalue %87[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.getelementptr %109[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %112 = llvm.intr.masked.load %111, %100, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %113 = llvm.fmul %104, %108  : vector<[4]xf32>
    %114 = llvm.fadd %113, %112  : vector<[4]xf32>
    %115 = llvm.fdiv %114, %113  : vector<[4]xf32>
    %116 = llvm.extractvalue %99[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.extractvalue %99[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.getelementptr %116[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %115, %118, %100 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    %119 = llvm.intr.stacksave : !llvm.ptr
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.alloca %21 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %99, %121 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %122 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %123 = llvm.insertvalue %120, %122[0] : !llvm.struct<(i64, ptr)> 
    %124 = llvm.insertvalue %121, %123[1] : !llvm.struct<(i64, ptr)> 
    %125 = llvm.alloca %21 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %99, %125 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %126 = llvm.insertvalue %125, %123[1] : !llvm.struct<(i64, ptr)> 
    %127 = llvm.alloca %21 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %124, %127 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %128 = llvm.alloca %21 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %126, %128 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %129 = llvm.getelementptr %22[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %130 = llvm.ptrtoint %129 : !llvm.ptr to i64
    llvm.call @memrefCopy(%130, %127, %128) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %119 : !llvm.ptr
    %131 = llvm.add %45, %44 : i64
    llvm.br ^bb1(%131, %46 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %46 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}


module {
  llvm.func @memrefCopy(i64, !llvm.ptr, !llvm.ptr)
  llvm.func @_mlir_memref_to_llvm_alloc(i64) -> !llvm.ptr
  llvm.func @add_mul_sub_pow_1d(%arg0: i64, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: !llvm.ptr, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr, %arg17: !llvm.ptr, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> {
    %0 = llvm.mlir.zero : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(dense<0.000000e+00> : vector<[4]xf32>) : vector<[4]xf32>
    %4 = llvm.mlir.constant(-1 : index) : i64
    %5 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.insertvalue %arg11, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %7 = llvm.insertvalue %arg12, %6[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg13, %7[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg14, %8[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg15, %9[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg6, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.insertvalue %arg8, %12[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg10, %14[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg1, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg2, %16[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %arg3, %17[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %arg4, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %arg5, %19[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.zero : !llvm.ptr
    %23 = llvm.getelementptr %22[%arg0] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.mlir.constant(64 : index) : i64
    %26 = llvm.add %24, %25 : i64
    %27 = llvm.call @_mlir_memref_to_llvm_alloc(%26) : (i64) -> !llvm.ptr
    %28 = llvm.ptrtoint %27 : !llvm.ptr to i64
    %29 = llvm.sub %25, %21 : i64
    %30 = llvm.add %28, %29 : i64
    %31 = llvm.urem %30, %25  : i64
    %32 = llvm.sub %30, %31 : i64
    %33 = llvm.inttoptr %32 : i64 to !llvm.ptr
    %34 = llvm.insertvalue %27, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %33, %34[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %1, %35[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %arg0, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %21, %37[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.extractvalue %20[3] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.alloca %21 x !llvm.array<1 x i64> : (i64) -> !llvm.ptr
    llvm.store %39, %40 : !llvm.array<1 x i64>, !llvm.ptr
    %41 = llvm.getelementptr %40[0, %1] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1 x i64>
    %42 = llvm.load %41 : !llvm.ptr -> i64
    %43 = "llvm.intr.vscale"() : () -> i64
    %44 = llvm.mul %43, %2 : i64
    llvm.br ^bb1(%1, %38 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%45: i64, %46: !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb2
    %47 = llvm.icmp "slt" %45, %42 : i64
    llvm.cond_br %47, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %48 = llvm.mul %45, %4 : i64
    %49 = llvm.add %48, %42 : i64
    %50 = llvm.intr.smin(%49, %44)  : (i64, i64) -> i64
    %51 = llvm.extractvalue %20[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %54 = llvm.insertvalue %51, %53[0] : !llvm.struct<(ptr, ptr, i64)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr, ptr, i64)> 
    %56 = llvm.insertvalue %1, %55[2] : !llvm.struct<(ptr, ptr, i64)> 
    %57 = llvm.extractvalue %56[0] : !llvm.struct<(ptr, ptr, i64)> 
    %58 = llvm.extractvalue %56[1] : !llvm.struct<(ptr, ptr, i64)> 
    %59 = llvm.insertvalue %57, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.insertvalue %58, %59[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %45, %60[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.insertvalue %50, %61[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.insertvalue %21, %62[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %64, %53[0] : !llvm.struct<(ptr, ptr, i64)> 
    %67 = llvm.insertvalue %65, %66[1] : !llvm.struct<(ptr, ptr, i64)> 
    %68 = llvm.insertvalue %1, %67[2] : !llvm.struct<(ptr, ptr, i64)> 
    %69 = llvm.extractvalue %68[0] : !llvm.struct<(ptr, ptr, i64)> 
    %70 = llvm.extractvalue %68[1] : !llvm.struct<(ptr, ptr, i64)> 
    %71 = llvm.insertvalue %69, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %70, %71[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.insertvalue %45, %72[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.insertvalue %50, %73[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.insertvalue %21, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.extractvalue %10[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.insertvalue %76, %53[0] : !llvm.struct<(ptr, ptr, i64)> 
    %79 = llvm.insertvalue %77, %78[1] : !llvm.struct<(ptr, ptr, i64)> 
    %80 = llvm.insertvalue %1, %79[2] : !llvm.struct<(ptr, ptr, i64)> 
    %81 = llvm.extractvalue %80[0] : !llvm.struct<(ptr, ptr, i64)> 
    %82 = llvm.extractvalue %80[1] : !llvm.struct<(ptr, ptr, i64)> 
    %83 = llvm.insertvalue %81, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.insertvalue %82, %83[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.insertvalue %45, %84[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %50, %85[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %21, %86[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.extractvalue %46[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %88, %53[0] : !llvm.struct<(ptr, ptr, i64)> 
    %91 = llvm.insertvalue %89, %90[1] : !llvm.struct<(ptr, ptr, i64)> 
    %92 = llvm.insertvalue %1, %91[2] : !llvm.struct<(ptr, ptr, i64)> 
    %93 = llvm.extractvalue %92[0] : !llvm.struct<(ptr, ptr, i64)> 
    %94 = llvm.extractvalue %92[1] : !llvm.struct<(ptr, ptr, i64)> 
    %95 = llvm.insertvalue %93, %5[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %94, %95[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %45, %96[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.insertvalue %50, %97[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.insertvalue %21, %98[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = "arm_sve.intr.whilelt"(%0, %50) : (i64, i64) -> vector<[4]xi1>
    %101 = llvm.extractvalue %63[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.extractvalue %63[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.getelementptr %101[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %104 = llvm.intr.masked.load %103, %100, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %105 = llvm.extractvalue %75[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.extractvalue %75[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.getelementptr %105[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %108 = llvm.intr.masked.load %107, %100, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %109 = llvm.extractvalue %87[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.extractvalue %87[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.getelementptr %109[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %112 = llvm.intr.masked.load %111, %100, %3 {alignment = 4 : i32} : (!llvm.ptr, vector<[4]xi1>, vector<[4]xf32>) -> vector<[4]xf32>
    %113 = llvm.fmul %104, %108  : vector<[4]xf32>
    %114 = llvm.fadd %113, %112  : vector<[4]xf32>
    %115 = llvm.fdiv %114, %113  : vector<[4]xf32>
    %116 = llvm.extractvalue %99[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.extractvalue %99[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.getelementptr %116[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.intr.masked.store %115, %118, %100 {alignment = 4 : i32} : vector<[4]xf32>, vector<[4]xi1> into !llvm.ptr
    %119 = llvm.intr.stacksave : !llvm.ptr
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.alloca %21 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %99, %121 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %122 = llvm.mlir.undef : !llvm.struct<(i64, ptr)>
    %123 = llvm.insertvalue %120, %122[0] : !llvm.struct<(i64, ptr)> 
    %124 = llvm.insertvalue %121, %123[1] : !llvm.struct<(i64, ptr)> 
    %125 = llvm.alloca %21 x !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr
    llvm.store %99, %125 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %126 = llvm.insertvalue %125, %123[1] : !llvm.struct<(i64, ptr)> 
    %127 = llvm.alloca %21 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %124, %127 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %128 = llvm.alloca %21 x !llvm.struct<(i64, ptr)> : (i64) -> !llvm.ptr
    llvm.store %126, %128 : !llvm.struct<(i64, ptr)>, !llvm.ptr
    %129 = llvm.getelementptr %22[1] : (!llvm.ptr) -> !llvm.ptr, f32
    %130 = llvm.ptrtoint %129 : !llvm.ptr to i64
    llvm.call @memrefCopy(%130, %127, %128) : (i64, !llvm.ptr, !llvm.ptr) -> ()
    llvm.intr.stackrestore %119 : !llvm.ptr
    %131 = llvm.add %45, %44 : i64
    llvm.br ^bb1(%131, %46 : i64, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb3:  // pred: ^bb1
    llvm.return %46 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["linalg.generic"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %tiled_linalg_op, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      transform.structured.vectorize %tiled_linalg_op vector_sizes [[4]] : !transform.any_op
      transform.yield 
    }
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @vectorize_seq(%arg0: !transform.any_op {transform.consumed}) {
      %0 = transform.bufferization.one_shot_bufferize layout{IdentityLayoutMap} %arg0 {allow_return_allocs = true, bufferize_function_boundaries = true} : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["func.func"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_contraction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_permutation_patterns
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_multi_reduction
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.split_transfer_full_partial
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.transfer_to_scf full_unroll = true
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transfer
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_shape_cast
      } : !transform.any_op
      transform.apply_patterns to %1 {
        transform.apply_patterns.vector.lower_transpose lowering_strategy = shuffle_1d
      } : !transform.any_op
      transform.yield 
    }
  }
}

