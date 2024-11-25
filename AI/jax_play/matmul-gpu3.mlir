module @jit_matmul attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @main(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64) -> (!llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> {jax.result_info = "", mhlo.layout_mode = "default"}) {
    %0 = llvm.mlir.constant(64 : index) : i64
    %1 = llvm.mlir.zero : !llvm.ptr
    %2 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(512 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %7 = llvm.getelementptr %1[262144] : (!llvm.ptr) -> !llvm.ptr, f32
    %8 = llvm.ptrtoint %7 : !llvm.ptr to i64
    %9 = llvm.add %8, %0 : i64
    %10 = llvm.call @malloc(%9) : (i64) -> !llvm.ptr
    %11 = llvm.ptrtoint %10 : !llvm.ptr to i64
    %12 = llvm.sub %0, %5 : i64
    %13 = llvm.add %11, %12 : i64
    %14 = llvm.urem %13, %0  : i64
    %15 = llvm.sub %13, %14 : i64
    %16 = llvm.inttoptr %15 : i64 to !llvm.ptr
    %17 = llvm.insertvalue %10, %6[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %16, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %3, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %4, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %4, %20[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %4, %21[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %5, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%3 : i64)
  ^bb1(%24: i64):  // 2 preds: ^bb0, ^bb5
    %25 = llvm.icmp "slt" %24, %4 : i64
    llvm.cond_br %25, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%3 : i64)
  ^bb3(%26: i64):  // 2 preds: ^bb2, ^bb4
    %27 = llvm.icmp "slt" %26, %4 : i64
    llvm.cond_br %27, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %28 = llvm.mul %24, %4 : i64
    %29 = llvm.add %28, %26 : i64
    %30 = llvm.getelementptr %16[%29] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %2, %30 : f32, !llvm.ptr
    %31 = llvm.add %26, %5 : i64
    llvm.br ^bb3(%31 : i64)
  ^bb5:  // pred: ^bb3
    %32 = llvm.add %24, %5 : i64
    llvm.br ^bb1(%32 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%3 : i64)
  ^bb7(%33: i64):  // 2 preds: ^bb6, ^bb14
    %34 = llvm.icmp "slt" %33, %4 : i64
    llvm.cond_br %34, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%3 : i64)
  ^bb9(%35: i64):  // 2 preds: ^bb8, ^bb13
    %36 = llvm.icmp "slt" %35, %4 : i64
    llvm.cond_br %36, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    llvm.br ^bb11(%3 : i64)
  ^bb11(%37: i64):  // 2 preds: ^bb10, ^bb12
    %38 = llvm.icmp "slt" %37, %4 : i64
    llvm.cond_br %38, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %39 = llvm.getelementptr %arg1[%arg2] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %40 = llvm.mul %33, %arg5 : i64
    %41 = llvm.mul %37, %arg6 : i64
    %42 = llvm.add %40, %41 : i64
    %43 = llvm.getelementptr %39[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %44 = llvm.load %43 : !llvm.ptr -> f32
    %45 = llvm.getelementptr %arg8[%arg9] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %46 = llvm.mul %37, %arg12 : i64
    %47 = llvm.mul %35, %arg13 : i64
    %48 = llvm.add %46, %47 : i64
    %49 = llvm.getelementptr %45[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %50 = llvm.load %49 : !llvm.ptr -> f32
    %51 = llvm.mul %33, %4 : i64
    %52 = llvm.add %51, %35 : i64
    %53 = llvm.getelementptr %16[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %54 = llvm.load %53 : !llvm.ptr -> f32
    %55 = llvm.fmul %44, %50  : f32
    %56 = llvm.fadd %54, %55  : f32
    %57 = llvm.mul %33, %4 : i64
    %58 = llvm.add %57, %35 : i64
    %59 = llvm.getelementptr %16[%58] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %56, %59 : f32, !llvm.ptr
    %60 = llvm.add %37, %5 : i64
    llvm.br ^bb11(%60 : i64)
  ^bb13:  // pred: ^bb11
    %61 = llvm.add %35, %5 : i64
    llvm.br ^bb9(%61 : i64)
  ^bb14:  // pred: ^bb9
    %62 = llvm.add %33, %5 : i64
    llvm.br ^bb7(%62 : i64)
  ^bb15:  // pred: ^bb7
    llvm.return %23 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
  }
}

