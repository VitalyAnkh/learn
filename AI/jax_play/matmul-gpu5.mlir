#map = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
module attributes {gpu.container_module} {
  func.func @matmul_memref(%arg0: memref<512x512xf32>, %arg1: memref<512x512xf32>, %arg2: memref<512x512xf32>) attributes {llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c512 = arith.constant 512 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c16 = arith.constant 16 : index
    gpu.launch_func  @matmul_memref_kernel::@matmul_memref_kernel blocks in (%c16, %c32, %c1) threads in (%c32, %c16, %c1)  args(%c32 : index, %c0 : index, %c16 : index, %c1 : index, %c512 : index, %arg0 : memref<512x512xf32>, %arg1 : memref<512x512xf32>, %arg2 : memref<512x512xf32>)
    return
  }
  gpu.module @matmul_memref_kernel {
    gpu.func @matmul_memref_kernel(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: memref<512x512xf32>, %arg6: memref<512x512xf32>, %arg7: memref<512x512xf32>) kernel attributes {known_block_size = array<i32: 32, 16, 1>, known_grid_size = array<i32: 16, 32, 1>} {
      %block_id_x = gpu.block_id  x
      %block_id_y = gpu.block_id  y
      %block_id_z = gpu.block_id  z
      %thread_id_x = gpu.thread_id  x
      %thread_id_y = gpu.thread_id  y
      %thread_id_z = gpu.thread_id  z
      %grid_dim_x = gpu.grid_dim  x
      %grid_dim_y = gpu.grid_dim  y
      %grid_dim_z = gpu.grid_dim  z
      %block_dim_x = gpu.block_dim  x
      %block_dim_y = gpu.block_dim  y
      %block_dim_z = gpu.block_dim  z
      %0 = affine.apply #map(%block_id_x)[%arg0, %arg1]
      %1 = affine.apply #map(%block_id_y)[%arg2, %arg1]
      %2 = affine.apply #map(%thread_id_x)[%arg3, %arg1]
      %3 = affine.apply #map(%thread_id_y)[%arg3, %arg1]
      %4 = arith.addi %2, %0 : index
      %5 = arith.addi %3, %1 : index
      cf.br ^bb1(%arg1 : index)
    ^bb1(%6: index):  // 2 preds: ^bb0, ^bb2
      %7 = arith.cmpi slt, %6, %arg4 : index
      llvm.cond_br %7, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      %8 = memref.load %arg5[%4, %6] : memref<512x512xf32>
      %9 = memref.load %arg6[%6, %5] : memref<512x512xf32>
      %10 = memref.load %arg7[%4, %5] : memref<512x512xf32>
      %11 = arith.mulf %8, %9 : f32
      %12 = arith.addf %10, %11 : f32
      memref.store %12, %arg7[%4, %5] : memref<512x512xf32>
      %13 = arith.addi %6, %arg3 : index
      cf.br ^bb1(%13 : index)
    ^bb3:  // pred: ^bb1
      gpu.return
    }
  }
}

