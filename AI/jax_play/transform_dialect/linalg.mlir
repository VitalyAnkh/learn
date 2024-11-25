func.func @add_mul_sub_pow_1d(%00 : index, %arg0: tensor<?xf32>, %arg1 : tensor<?xf32>, %arg2 : tensor<?xf32>, %arg3 : tensor<?xf32>) -> (tensor<?xf32>)
{
    %1 = tensor.empty(%00) : tensor<?xf32>
    %2 = linalg.elemwise_binary { mul, fun = #linalg.binary_fn<mul> } ins(%arg0, %arg1 : tensor<?xf32>, tensor<?xf32>) outs(%1 : tensor<?xf32>) -> tensor<?xf32>

    %3 = tensor.empty(%00) : tensor<?xf32>
    %4 = linalg.elemwise_binary { add, fun = #linalg.binary_fn<add> } ins(%2, %arg2 : tensor<?xf32>, tensor<?xf32>) outs(%1 : tensor<?xf32>) -> tensor<?xf32>

    %5 = tensor.empty(%00) : tensor<?xf32>
    %6 = linalg.elemwise_binary { div, fun = #linalg.binary_fn<div> } ins(%4, %2 : tensor<?xf32>, tensor<?xf32>) outs(%1 : tensor<?xf32>) -> tensor<?xf32>

    return %6 : tensor<?xf32>
}

module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg1 : !transform.any_op {transform.readonly}) {
        %0 = transform.structured.match ops{["linalg.generic"]} in %arg1 : (!transform.any_op) -> !transform.any_op
        %3, %loops = transform.structured.tile_using_for %0 tile_sizes [[4]] : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
        transform.structured.vectorize %3 vector_sizes [[4]] : !transform.any_op

        transform.yield
    }
}

module attributes {transform.with_named_sequence} {
  transform.named_sequence @vectorize_seq(%module_op: !transform.any_op {transform.consumed}) {
    %b = transform.bufferization.one_shot_bufferize
        layout{IdentityLayoutMap} %module_op
        {bufferize_function_boundaries = true, allow_return_allocs = true}
        : (!transform.any_op) -> !transform.any_op

    %f = transform.structured.match ops{["func.func"]} in %b
      : (!transform.any_op) -> !transform.any_op

    // TODO: group these lower-level controls into various properly named vector
    // lowering TD macros.
    transform.apply_patterns to %f {
      transform.apply_patterns.vector.lower_contraction lowering_strategy = "outerproduct"
    } : !transform.any_op

    transform.apply_patterns to %f {
      transform.apply_patterns.vector.transfer_permutation_patterns
    } : !transform.any_op

    transform.apply_patterns to %f {
      transform.apply_patterns.vector.lower_multi_reduction lowering_strategy = "innerparallel"
    } : !transform.any_op

    transform.apply_patterns to %f {
      transform.apply_patterns.vector.split_transfer_full_partial split_transfer_strategy = "linalg-copy"
    } : !transform.any_op

    transform.apply_patterns to %f {
      transform.apply_patterns.vector.transfer_to_scf max_transfer_rank = 1 full_unroll = true
    } : !transform.any_op

    transform.apply_patterns to %f {
      transform.apply_patterns.vector.lower_transfer max_transfer_rank = 1
    } : !transform.any_op

    transform.apply_patterns to %f {
      transform.apply_patterns.vector.lower_shape_cast
    } : !transform.any_op

    transform.apply_patterns to %f {
      transform.apply_patterns.vector.lower_transpose lowering_strategy = "shuffle_1d"
    } : !transform.any_op
    transform.yield

  }
}
