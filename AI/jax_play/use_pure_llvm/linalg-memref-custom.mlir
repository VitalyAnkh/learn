#map = affine_map<(d0)[s0, s1] -> ((d0 - s0) ceildiv s1)>
#map1 = affine_map<(d0)[s0, s1] -> (d0 * s0 + s1)>
module @jit_matmul attributes {gpu.container_module, mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: memref<512x512xf32> {mhlo.layout_mode = "default"}, %arg1: memref<512x512xf32> {mhlo.layout_mode = "default"}) -> (memref<512x512xf32> {jax.result_info = "", mhlo.layout_mode = "default"}) {
    %c1 = arith.constant 1 : index
    %c512 = arith.constant 512 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<512x512xf32>
    %c1_0 = arith.constant 1 : index
    %0 = affine.apply #map(%c512)[%c0, %c1]
    %1 = affine.apply #map(%c512)[%c0, %c1]
    %cast_alloc = memref.cast %alloc : memref<512x512xf32> to memref<*xf32>
    gpu.host_register %cast_alloc : memref<*xf32>
    
    gpu.launch_func  @main_kernel::@main_kernel blocks in (%0, %1, %c1_0) threads in (%c1_0, %c1_0, %c1_0)  args(%c1 : index, %c0 : index, %cst : f32, %alloc : memref<512x512xf32>)
    %c1_1 = arith.constant 1 : index
    %2 = affine.apply #map(%c512)[%c0, %c1]
    %3 = affine.apply #map(%c512)[%c0, %c1]
    gpu.launch_func  @main_kernel_0::@main_kernel blocks in (%2, %3, %c1_1) threads in (%c1_1, %c1_1, %c1_1)  args(%c1 : index, %c0 : index, %arg0 : memref<512x512xf32>, %arg1 : memref<512x512xf32>, %alloc : memref<512x512xf32>, %c512 : index)
    return %alloc : memref<512x512xf32>
  }
  gpu.module @main_kernel {
    gpu.func @main_kernel(%arg0: index, %arg1: index, %arg2: f32, %arg3: memref<512x512xf32>) kernel attributes {known_block_size = array<i32: 1, 1, 1>} {
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
      %0 = affine.apply #map1(%block_id_x)[%arg0, %arg1]
      %1 = affine.apply #map1(%block_id_y)[%arg0, %arg1]
      memref.store %arg2, %arg3[%0, %1] : memref<512x512xf32>
      gpu.return
    }
  }
  gpu.module @main_kernel_0 {
    gpu.func @main_kernel(%arg0: index, %arg1: index, %arg2: memref<512x512xf32>, %arg3: memref<512x512xf32>, %arg4: memref<512x512xf32>, %arg5: index) kernel attributes {known_block_size = array<i32: 1, 1, 1>} {
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
      %0 = affine.apply #map1(%block_id_x)[%arg0, %arg1]
      %1 = affine.apply #map1(%block_id_y)[%arg0, %arg1]
      scf.for %arg6 = %arg1 to %arg5 step %arg0 {
        %2 = memref.load %arg2[%0, %arg6] : memref<512x512xf32>
        %3 = memref.load %arg3[%arg6, %1] : memref<512x512xf32>
        %4 = memref.load %arg4[%0, %1] : memref<512x512xf32>
        %5 = arith.mulf %2, %3 : f32
        %6 = arith.addf %4, %5 : f32
        memref.store %6, %arg4[%0, %1] : memref<512x512xf32>
      }
      gpu.return
    }
  }
}

