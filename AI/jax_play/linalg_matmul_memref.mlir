func.func @matmul_memref(%lhs: memref<512x512xf32>, %rhs: memref<512x512xf32>,
                  %output: memref<512x512xf32>) {
  // Matrix-matrix multiplication.
  linalg.matmul ins(%lhs, %rhs: memref<512x512xf32>, memref<512x512xf32>)
                          outs(%output: memref<512x512xf32>)

  func.return
}