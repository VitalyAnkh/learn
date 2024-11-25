
    llvm.func @matmul_memref_kernel(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: !llvm.ptr, %arg20: !llvm.ptr, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64) attributes {gpu.kernel, gpu.known_block_size = array<i32: 32, 16, 1>, gpu.known_grid_size = array<i32: 16, 32, 1>, nvvm.kernel, nvvm.maxntid = array<i32: 32, 16, 1>} {
      %0 = llvm.mlir.constant(512 : index) : i64
      %1 = nvvm.read.ptx.sreg.ctaid.x : i32
      %2 = llvm.sext %1 : i32 to i64
      %3 = nvvm.read.ptx.sreg.ctaid.y : i32
      %4 = llvm.sext %3 : i32 to i64
      %5 = nvvm.read.ptx.sreg.tid.x : i32
      %6 = llvm.sext %5 : i32 to i64
      %7 = nvvm.read.ptx.sreg.tid.y : i32
      %8 = llvm.sext %7 : i32 to i64
      %9 = llvm.mul %2, %arg0 : i64
      %10 = llvm.add %9, %arg1 : i64
      %11 = llvm.mul %4, %arg2 : i64
      %12 = llvm.add %11, %arg1 : i64
      %13 = llvm.mul %6, %arg3 : i64
      %14 = llvm.add %13, %arg1 : i64
      %15 = llvm.mul %8, %arg3 : i64
      %16 = llvm.add %15, %arg1 : i64
      %17 = llvm.add %14, %10 : i64
      %18 = llvm.add %16, %12 : i64
      llvm.br ^bb1(%arg1 : i64)
    ^bb1(%19: i64):  // 2 preds: ^bb0, ^bb2
      %20 = llvm.icmp "slt" %19, %arg4 : i64
      llvm.cond_br %20, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      %21 = llvm.mul %17, %0 : i64
      %22 = llvm.add %21, %19 : i64
      %23 = llvm.getelementptr %arg6[%22] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %24 = llvm.load %23 : !llvm.ptr -> f32
      %25 = llvm.mul %19, %0 : i64
      %26 = llvm.add %25, %18 : i64
      %27 = llvm.getelementptr %arg13[%26] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %28 = llvm.load %27 : !llvm.ptr -> f32
      %29 = llvm.add %21, %18 : i64
      %30 = llvm.getelementptr %arg20[%29] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %31 = llvm.load %30 : !llvm.ptr -> f32
      %32 = llvm.fmul %24, %28  : f32
      %33 = llvm.fadd %31, %32  : f32
      llvm.store %33, %30 : f32, !llvm.ptr
      %34 = llvm.add %19, %arg3 : i64
      llvm.br ^bb1(%34 : i64)
    ^bb3:  // pred: ^bb1
      llvm.return
    }
