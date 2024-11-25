module @jit_matmul attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  llvm.mlir.global private constant @assert_msg_2(dense<[65, 119, 97, 105, 116, 101, 100, 32, 97, 115, 121, 110, 99, 32, 111, 112, 101, 114, 97, 110, 100, 32, 105, 115, 32, 105, 110, 32, 101, 114, 114, 111, 114, 32, 115, 116, 97, 116, 101, 0]> : tensor<40xi8>) {addr_space = 0 : i32} : !llvm.array<40 x i8>
  llvm.mlir.global private constant @assert_msg_1(dense<[65, 119, 97, 105, 116, 101, 100, 32, 97, 115, 121, 110, 99, 32, 111, 112, 101, 114, 97, 110, 100, 32, 105, 115, 32, 105, 110, 32, 101, 114, 114, 111, 114, 32, 115, 116, 97, 116, 101, 0]> : tensor<40xi8>) {addr_space = 0 : i32} : !llvm.array<40 x i8>
  llvm.mlir.global private constant @assert_msg_0(dense<[65, 119, 97, 105, 116, 101, 100, 32, 97, 115, 121, 110, 99, 32, 111, 112, 101, 114, 97, 110, 100, 32, 105, 115, 32, 105, 110, 32, 101, 114, 114, 111, 114, 32, 115, 116, 97, 116, 101, 0]> : tensor<40xi8>) {addr_space = 0 : i32} : !llvm.array<40 x i8>
  llvm.func @abort()
  llvm.func @puts(!llvm.ptr)
  llvm.mlir.global private constant @assert_msg(dense<[65, 119, 97, 105, 116, 101, 100, 32, 97, 115, 121, 110, 99, 32, 111, 112, 101, 114, 97, 110, 100, 32, 105, 115, 32, 105, 110, 32, 101, 114, 114, 111, 114, 32, 115, 116, 97, 116, 101, 0]> : tensor<40xi8>) {addr_space = 0 : i32} : !llvm.array<40 x i8>
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @free(!llvm.ptr)
  llvm.func @aligned_alloc(i64, i64) -> !llvm.ptr
  llvm.func @main(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64) -> (!llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> {jax.result_info = "", mhlo.layout_mode = "default"}) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg7, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg8, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg9, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg10, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg12, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg11, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg13, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg0, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg1, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg2, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg3, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg5, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg4, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg6, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(512 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(false) : i1
    %21 = llvm.mlir.constant(8192 : index) : i64
    %22 = llvm.mlir.constant(32 : index) : i64
    %23 = llvm.mlir.constant(true) : i1
    %24 = llvm.mlir.constant(31 : index) : i64
    %25 = llvm.mlir.constant(512 : index) : i64
    %26 = llvm.mlir.constant(512 : index) : i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(262144 : index) : i64
    %29 = llvm.mlir.zero : !llvm.ptr
    %30 = llvm.getelementptr %29[%28] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %31 = llvm.ptrtoint %30 : !llvm.ptr to i64
    %32 = llvm.mlir.constant(64 : index) : i64
    %33 = llvm.add %31, %32 : i64
    %34 = llvm.call @malloc(%33) : (i64) -> !llvm.ptr
    %35 = llvm.ptrtoint %34 : !llvm.ptr to i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.sub %32, %36 : i64
    %38 = llvm.add %35, %37 : i64
    %39 = llvm.urem %38, %32  : i64
    %40 = llvm.sub %38, %39 : i64
    %41 = llvm.inttoptr %40 : i64 to !llvm.ptr
    %42 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %43 = llvm.insertvalue %34, %42[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.insertvalue %25, %46[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %26, %47[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %26, %48[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.insertvalue %27, %49[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.cond_br %20, ^bb1, ^bb2
  ^bb1:  // 2 preds: ^bb0, ^bb7
    llvm.br ^bb12
  ^bb2:  // pred: ^bb0
    llvm.cond_br %23, ^bb3, ^bb8
  ^bb3:  // pred: ^bb2
    llvm.cond_br %20, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %51 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.extractvalue %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.extractvalue %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.extractvalue %50[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.extractvalue %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.extractvalue %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @parallel_compute_fn_with_aligned_loops_0(%17, %21, %18, %18, %17, %17, %18, %18, %19, %19, %51, %52, %53, %54, %55, %56, %57) : (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.br ^bb7
  ^bb5:  // pred: ^bb3
    %58 = llvm.call @mlirAsyncRuntimeCreateGroup(%24) : (i64) -> !llvm.ptr
    llvm.call @mlirAsyncRuntimeAddRef(%58, %16) : (!llvm.ptr, i64) -> ()
    %59 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.extractvalue %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.extractvalue %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.extractvalue %50[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.extractvalue %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.extractvalue %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @async_dispatch_fn_1(%58, %17, %22, %21, %18, %18, %17, %17, %18, %18, %19, %19, %59, %60, %61, %62, %63, %64, %65) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.call @mlirAsyncRuntimeAwaitAllInGroup(%58) : (!llvm.ptr) -> ()
    %66 = llvm.call @mlirAsyncRuntimeIsGroupError(%58) : (!llvm.ptr) -> i1
    llvm.call @mlirAsyncRuntimeDropRef(%58, %16) : (!llvm.ptr, i64) -> ()
    %67 = llvm.xor %66, %23  : i1
    llvm.cond_br %67, ^bb6, ^bb27
  ^bb6:  // pred: ^bb5
    llvm.br ^bb7
  ^bb7:  // 4 preds: ^bb4, ^bb6, ^bb9, ^bb11
    llvm.br ^bb1
  ^bb8:  // pred: ^bb2
    llvm.cond_br %20, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %68 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.extractvalue %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.extractvalue %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.extractvalue %50[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.extractvalue %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.extractvalue %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @parallel_compute_fn_0(%17, %21, %18, %18, %17, %17, %18, %18, %19, %19, %68, %69, %70, %71, %72, %73, %74) : (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.br ^bb7
  ^bb10:  // pred: ^bb8
    %75 = llvm.call @mlirAsyncRuntimeCreateGroup(%24) : (i64) -> !llvm.ptr
    llvm.call @mlirAsyncRuntimeAddRef(%75, %16) : (!llvm.ptr, i64) -> ()
    %76 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.extractvalue %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.extractvalue %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.extractvalue %50[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.extractvalue %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.extractvalue %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @async_dispatch_fn_2(%75, %17, %22, %21, %18, %18, %17, %17, %18, %18, %19, %19, %76, %77, %78, %79, %80, %81, %82) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.call @mlirAsyncRuntimeAwaitAllInGroup(%75) : (!llvm.ptr) -> ()
    %83 = llvm.call @mlirAsyncRuntimeIsGroupError(%75) : (!llvm.ptr) -> i1
    llvm.call @mlirAsyncRuntimeDropRef(%75, %16) : (!llvm.ptr, i64) -> ()
    %84 = llvm.xor %83, %23  : i1
    llvm.cond_br %84, ^bb11, ^bb28
  ^bb11:  // pred: ^bb10
    llvm.br ^bb7
  ^bb12:  // pred: ^bb1
    llvm.cond_br %20, ^bb13, ^bb14
  ^bb13:  // 2 preds: ^bb12, ^bb19
    llvm.br ^bb24
  ^bb14:  // pred: ^bb12
    llvm.cond_br %23, ^bb15, ^bb20
  ^bb15:  // pred: ^bb14
    llvm.cond_br %20, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %85 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %91 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %94 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %99 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.extractvalue %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.extractvalue %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.extractvalue %50[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.extractvalue %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.extractvalue %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @parallel_compute_fn_with_aligned_loops(%17, %21, %18, %18, %17, %17, %18, %18, %19, %19, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105) : (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.br ^bb19
  ^bb17:  // pred: ^bb15
    %106 = llvm.call @mlirAsyncRuntimeCreateGroup(%24) : (i64) -> !llvm.ptr
    llvm.call @mlirAsyncRuntimeAddRef(%106, %16) : (!llvm.ptr, i64) -> ()
    %107 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %113 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %120 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %122 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.extractvalue %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %124 = llvm.extractvalue %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %125 = llvm.extractvalue %50[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %126 = llvm.extractvalue %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %127 = llvm.extractvalue %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @async_dispatch_fn(%106, %17, %22, %21, %18, %18, %17, %17, %18, %18, %19, %19, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.call @mlirAsyncRuntimeAwaitAllInGroup(%106) : (!llvm.ptr) -> ()
    %128 = llvm.call @mlirAsyncRuntimeIsGroupError(%106) : (!llvm.ptr) -> i1
    llvm.call @mlirAsyncRuntimeDropRef(%106, %16) : (!llvm.ptr, i64) -> ()
    %129 = llvm.xor %128, %23  : i1
    llvm.cond_br %129, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    llvm.br ^bb19
  ^bb19:  // 4 preds: ^bb16, ^bb18, ^bb21, ^bb23
    llvm.br ^bb13
  ^bb20:  // pred: ^bb14
    llvm.cond_br %20, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %130 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %132 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %133 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %134 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %135 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %137 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %140 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %141 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %143 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.extractvalue %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.extractvalue %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.extractvalue %50[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.extractvalue %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.extractvalue %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @parallel_compute_fn(%17, %21, %18, %18, %17, %17, %18, %18, %19, %19, %130, %131, %132, %133, %134, %135, %136, %137, %138, %139, %140, %141, %142, %143, %144, %145, %146, %147, %148, %149, %150) : (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.br ^bb19
  ^bb22:  // pred: ^bb20
    %151 = llvm.call @mlirAsyncRuntimeCreateGroup(%24) : (i64) -> !llvm.ptr
    llvm.call @mlirAsyncRuntimeAddRef(%151, %16) : (!llvm.ptr, i64) -> ()
    %152 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.extractvalue %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.extractvalue %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.extractvalue %50[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %171 = llvm.extractvalue %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.extractvalue %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @async_dispatch_fn_0(%151, %17, %22, %21, %18, %18, %17, %17, %18, %18, %19, %19, %152, %153, %154, %155, %156, %157, %158, %159, %160, %161, %162, %163, %164, %165, %166, %167, %168, %169, %170, %171, %172) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.call @mlirAsyncRuntimeAwaitAllInGroup(%151) : (!llvm.ptr) -> ()
    %173 = llvm.call @mlirAsyncRuntimeIsGroupError(%151) : (!llvm.ptr) -> i1
    llvm.call @mlirAsyncRuntimeDropRef(%151, %16) : (!llvm.ptr, i64) -> ()
    %174 = llvm.xor %173, %23  : i1
    llvm.cond_br %174, ^bb23, ^bb26
  ^bb23:  // pred: ^bb22
    llvm.br ^bb19
  ^bb24:  // pred: ^bb13
    llvm.return %50 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
  ^bb25:  // pred: ^bb17
    %175 = llvm.mlir.addressof @assert_msg : !llvm.ptr
    %176 = llvm.getelementptr %175[0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<40 x i8>
    llvm.call @puts(%176) : (!llvm.ptr) -> ()
    llvm.call @abort() : () -> ()
    llvm.unreachable
  ^bb26:  // pred: ^bb22
    %177 = llvm.mlir.addressof @assert_msg_0 : !llvm.ptr
    %178 = llvm.getelementptr %177[0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<40 x i8>
    llvm.call @puts(%178) : (!llvm.ptr) -> ()
    llvm.call @abort() : () -> ()
    llvm.unreachable
  ^bb27:  // pred: ^bb5
    %179 = llvm.mlir.addressof @assert_msg_1 : !llvm.ptr
    %180 = llvm.getelementptr %179[0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<40 x i8>
    llvm.call @puts(%180) : (!llvm.ptr) -> ()
    llvm.call @abort() : () -> ()
    llvm.unreachable
  ^bb28:  // pred: ^bb10
    %181 = llvm.mlir.addressof @assert_msg_2 : !llvm.ptr
    %182 = llvm.getelementptr %181[0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<40 x i8>
    llvm.call @puts(%182) : (!llvm.ptr) -> ()
    llvm.call @abort() : () -> ()
    llvm.unreachable
  }
  llvm.func @parallel_compute_fn_with_aligned_loops(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: !llvm.ptr, %arg18: !llvm.ptr, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: !llvm.ptr, %arg25: !llvm.ptr, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg24, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg25, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg26, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg27, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg29, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg28, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg30, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg17, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg18, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg19, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg20, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg22, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg21, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg23, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg10, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg11, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg12, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg13, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg15, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg14, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg16, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.mlir.constant(512 : index) : i64
    %27 = llvm.mlir.constant(262144 : index) : i64
    %28 = llvm.mul %arg0, %arg1 : i64
    %29 = llvm.add %28, %arg1 : i64
    %30 = llvm.icmp "slt" %29, %27 : i64
    %31 = llvm.select %30, %29, %27 : i1, i64
    %32 = llvm.sub %31, %25 : i64
    %33 = llvm.sdiv %28, %26  : i64
    %34 = llvm.srem %33, %26  : i64
    %35 = llvm.sdiv %32, %26  : i64
    %36 = llvm.srem %35, %26  : i64
    %37 = llvm.add %36, %25 : i64
    llvm.br ^bb1(%34 : i64)
  ^bb1(%38: i64):  // 2 preds: ^bb0, ^bb8
    %39 = llvm.icmp "slt" %38, %37 : i64
    llvm.cond_br %39, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%24 : i64)
  ^bb3(%40: i64):  // 2 preds: ^bb2, ^bb7
    %41 = llvm.icmp "slt" %40, %26 : i64
    llvm.cond_br %41, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%24 : i64)
  ^bb5(%42: i64):  // 2 preds: ^bb4, ^bb6
    %43 = llvm.icmp "slt" %42, %26 : i64
    llvm.cond_br %43, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %44 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.extractvalue %23[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.getelementptr %44[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %47 = llvm.extractvalue %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.mul %38, %47 : i64
    %49 = llvm.extractvalue %23[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mul %42, %49 : i64
    %51 = llvm.add %48, %50 : i64
    %52 = llvm.getelementptr %46[%51] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %53 = llvm.load %52 : !llvm.ptr -> f32
    %54 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.getelementptr %54[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %57 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.mul %42, %57 : i64
    %59 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mul %40, %59 : i64
    %61 = llvm.add %58, %60 : i64
    %62 = llvm.getelementptr %56[%61] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %63 = llvm.load %62 : !llvm.ptr -> f32
    %64 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.mlir.constant(512 : index) : i64
    %66 = llvm.mul %38, %65 : i64
    %67 = llvm.add %66, %40 : i64
    %68 = llvm.getelementptr %64[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %69 = llvm.load %68 : !llvm.ptr -> f32
    %70 = llvm.fmul %53, %63  : f32
    %71 = llvm.fadd %69, %70  : f32
    %72 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.mlir.constant(512 : index) : i64
    %74 = llvm.mul %38, %73 : i64
    %75 = llvm.add %74, %40 : i64
    %76 = llvm.getelementptr %72[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %71, %76 : f32, !llvm.ptr
    %77 = llvm.add %42, %25 : i64
    llvm.br ^bb5(%77 : i64)
  ^bb7:  // pred: ^bb5
    %78 = llvm.add %40, %25 : i64
    llvm.br ^bb3(%78 : i64)
  ^bb8:  // pred: ^bb3
    %79 = llvm.add %38, %25 : i64
    llvm.br ^bb1(%79 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @async_dispatch_fn(%arg0: !llvm.ptr, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: !llvm.ptr, %arg20: !llvm.ptr, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: !llvm.ptr, %arg27: !llvm.ptr, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg26, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg27, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg28, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg29, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg31, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg30, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg32, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg19, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg20, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg21, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg22, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg24, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg23, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg25, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg12, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg14, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg17, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg16, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg18, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(1 : i64) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%arg1, %arg2 : i64, i64)
  ^bb1(%27: i64, %28: i64):  // 2 preds: ^bb0, ^bb2
    %29 = llvm.sub %28, %27 : i64
    %30 = llvm.icmp "sgt" %29, %25 : i64
    llvm.cond_br %30, ^bb2(%27, %28 : i64, i64), ^bb3
  ^bb2(%31: i64, %32: i64):  // pred: ^bb1
    %33 = llvm.sub %32, %31 : i64
    %34 = llvm.sdiv %33, %26  : i64
    %35 = llvm.add %31, %34 : i64
    llvm.call @mlirAsyncRuntimeAddRef(%arg0, %24) : (!llvm.ptr, i64) -> ()
    %36 = llvm.extractvalue %23[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.extractvalue %23[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.extractvalue %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.extractvalue %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.extractvalue %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.extractvalue %23[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.call @async_execute_fn(%arg0, %35, %32, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.ptr
    %58 = llvm.call @mlirAsyncRuntimeAddTokenToGroup(%57, %arg0) : (!llvm.ptr, !llvm.ptr) -> i64
    llvm.call @mlirAsyncRuntimeDropRef(%57, %24) : (!llvm.ptr, i64) -> ()
    llvm.br ^bb1(%31, %35 : i64, i64)
  ^bb3:  // pred: ^bb1
    llvm.call @mlirAsyncRuntimeDropRef(%arg0, %24) : (!llvm.ptr, i64) -> ()
    %59 = llvm.extractvalue %23[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.extractvalue %23[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.extractvalue %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.extractvalue %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.extractvalue %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.extractvalue %23[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @parallel_compute_fn_with_aligned_loops(%arg1, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79) : (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.return
  }
  llvm.func @parallel_compute_fn(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: !llvm.ptr, %arg18: !llvm.ptr, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: !llvm.ptr, %arg25: !llvm.ptr, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg24, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg25, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg26, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg27, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg29, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg28, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg30, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg17, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg18, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg19, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg20, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg22, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg21, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg23, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg10, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg11, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg12, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg13, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg15, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg14, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg16, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.mlir.constant(512 : index) : i64
    %27 = llvm.mlir.constant(262144 : index) : i64
    %28 = llvm.mul %arg0, %arg1 : i64
    %29 = llvm.add %28, %arg1 : i64
    %30 = llvm.icmp "slt" %29, %27 : i64
    %31 = llvm.select %30, %29, %27 : i1, i64
    %32 = llvm.sub %31, %25 : i64
    %33 = llvm.srem %28, %26  : i64
    %34 = llvm.sdiv %28, %26  : i64
    %35 = llvm.srem %34, %26  : i64
    %36 = llvm.srem %32, %26  : i64
    %37 = llvm.sdiv %32, %26  : i64
    %38 = llvm.srem %37, %26  : i64
    %39 = llvm.add %38, %25 : i64
    %40 = llvm.add %36, %25 : i64
    llvm.br ^bb1(%35 : i64)
  ^bb1(%41: i64):  // 2 preds: ^bb0, ^bb8
    %42 = llvm.icmp "slt" %41, %39 : i64
    llvm.cond_br %42, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %43 = llvm.icmp "eq" %41, %35 : i64
    %44 = llvm.icmp "eq" %41, %38 : i64
    %45 = llvm.select %43, %33, %24 : i1, i64
    %46 = llvm.select %44, %40, %26 : i1, i64
    llvm.br ^bb3(%45 : i64)
  ^bb3(%47: i64):  // 2 preds: ^bb2, ^bb7
    %48 = llvm.icmp "slt" %47, %46 : i64
    llvm.cond_br %48, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%24 : i64)
  ^bb5(%49: i64):  // 2 preds: ^bb4, ^bb6
    %50 = llvm.icmp "slt" %49, %26 : i64
    llvm.cond_br %50, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %51 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.extractvalue %23[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.getelementptr %51[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %54 = llvm.extractvalue %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.mul %41, %54 : i64
    %56 = llvm.extractvalue %23[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.mul %49, %56 : i64
    %58 = llvm.add %55, %57 : i64
    %59 = llvm.getelementptr %53[%58] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %60 = llvm.load %59 : !llvm.ptr -> f32
    %61 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.getelementptr %61[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %64 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.mul %49, %64 : i64
    %66 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.mul %47, %66 : i64
    %68 = llvm.add %65, %67 : i64
    %69 = llvm.getelementptr %63[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %70 = llvm.load %69 : !llvm.ptr -> f32
    %71 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.mlir.constant(512 : index) : i64
    %73 = llvm.mul %41, %72 : i64
    %74 = llvm.add %73, %47 : i64
    %75 = llvm.getelementptr %71[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %76 = llvm.load %75 : !llvm.ptr -> f32
    %77 = llvm.fmul %60, %70  : f32
    %78 = llvm.fadd %76, %77  : f32
    %79 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.mlir.constant(512 : index) : i64
    %81 = llvm.mul %41, %80 : i64
    %82 = llvm.add %81, %47 : i64
    %83 = llvm.getelementptr %79[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %78, %83 : f32, !llvm.ptr
    %84 = llvm.add %49, %25 : i64
    llvm.br ^bb5(%84 : i64)
  ^bb7:  // pred: ^bb5
    %85 = llvm.add %47, %25 : i64
    llvm.br ^bb3(%85 : i64)
  ^bb8:  // pred: ^bb3
    %86 = llvm.add %41, %25 : i64
    llvm.br ^bb1(%86 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @async_dispatch_fn_0(%arg0: !llvm.ptr, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: !llvm.ptr, %arg20: !llvm.ptr, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: !llvm.ptr, %arg27: !llvm.ptr, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg26, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg27, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg28, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg29, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg31, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg30, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg32, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg19, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg20, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg21, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg22, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg24, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg23, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg25, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg12, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg14, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg17, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg16, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg18, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(1 : i64) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%arg1, %arg2 : i64, i64)
  ^bb1(%27: i64, %28: i64):  // 2 preds: ^bb0, ^bb2
    %29 = llvm.sub %28, %27 : i64
    %30 = llvm.icmp "sgt" %29, %25 : i64
    llvm.cond_br %30, ^bb2(%27, %28 : i64, i64), ^bb3
  ^bb2(%31: i64, %32: i64):  // pred: ^bb1
    %33 = llvm.sub %32, %31 : i64
    %34 = llvm.sdiv %33, %26  : i64
    %35 = llvm.add %31, %34 : i64
    llvm.call @mlirAsyncRuntimeAddRef(%arg0, %24) : (!llvm.ptr, i64) -> ()
    %36 = llvm.extractvalue %23[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.extractvalue %23[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.extractvalue %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.extractvalue %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.extractvalue %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %42 = llvm.extractvalue %23[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.call @async_execute_fn_0(%arg0, %35, %32, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.ptr
    %58 = llvm.call @mlirAsyncRuntimeAddTokenToGroup(%57, %arg0) : (!llvm.ptr, !llvm.ptr) -> i64
    llvm.call @mlirAsyncRuntimeDropRef(%57, %24) : (!llvm.ptr, i64) -> ()
    llvm.br ^bb1(%31, %35 : i64, i64)
  ^bb3:  // pred: ^bb1
    llvm.call @mlirAsyncRuntimeDropRef(%arg0, %24) : (!llvm.ptr, i64) -> ()
    %59 = llvm.extractvalue %23[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.extractvalue %23[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.extractvalue %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.extractvalue %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.extractvalue %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.extractvalue %23[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @parallel_compute_fn(%arg1, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79) : (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.return
  }
  llvm.func @parallel_compute_fn_with_aligned_loops_0(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg10, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg11, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg12, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg13, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg15, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg14, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg16, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(512 : index) : i64
    %12 = llvm.mlir.constant(262144 : index) : i64
    %13 = llvm.mul %arg0, %arg1 : i64
    %14 = llvm.add %13, %arg1 : i64
    %15 = llvm.icmp "slt" %14, %12 : i64
    %16 = llvm.select %15, %14, %12 : i1, i64
    %17 = llvm.sub %16, %10 : i64
    %18 = llvm.sdiv %13, %11  : i64
    %19 = llvm.srem %18, %11  : i64
    %20 = llvm.sdiv %17, %11  : i64
    %21 = llvm.srem %20, %11  : i64
    %22 = llvm.add %21, %10 : i64
    llvm.br ^bb1(%19 : i64)
  ^bb1(%23: i64):  // 2 preds: ^bb0, ^bb5
    %24 = llvm.icmp "slt" %23, %22 : i64
    llvm.cond_br %24, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%9 : i64)
  ^bb3(%25: i64):  // 2 preds: ^bb2, ^bb4
    %26 = llvm.icmp "slt" %25, %11 : i64
    llvm.cond_br %26, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %27 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(512 : index) : i64
    %29 = llvm.mul %23, %28 : i64
    %30 = llvm.add %29, %25 : i64
    %31 = llvm.getelementptr %27[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %8, %31 : f32, !llvm.ptr
    %32 = llvm.add %25, %10 : i64
    llvm.br ^bb3(%32 : i64)
  ^bb5:  // pred: ^bb3
    %33 = llvm.add %23, %10 : i64
    llvm.br ^bb1(%33 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @async_dispatch_fn_1(%arg0: !llvm.ptr, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg12, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg13, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg14, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg15, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg17, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg16, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg18, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(1 : i64) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%arg1, %arg2 : i64, i64)
  ^bb1(%11: i64, %12: i64):  // 2 preds: ^bb0, ^bb2
    %13 = llvm.sub %12, %11 : i64
    %14 = llvm.icmp "sgt" %13, %9 : i64
    llvm.cond_br %14, ^bb2(%11, %12 : i64, i64), ^bb3
  ^bb2(%15: i64, %16: i64):  // pred: ^bb1
    %17 = llvm.sub %16, %15 : i64
    %18 = llvm.sdiv %17, %10  : i64
    %19 = llvm.add %15, %18 : i64
    llvm.call @mlirAsyncRuntimeAddRef(%arg0, %8) : (!llvm.ptr, i64) -> ()
    %20 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.call @async_execute_fn_1(%arg0, %19, %16, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %20, %21, %22, %23, %24, %25, %26) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.ptr
    %28 = llvm.call @mlirAsyncRuntimeAddTokenToGroup(%27, %arg0) : (!llvm.ptr, !llvm.ptr) -> i64
    llvm.call @mlirAsyncRuntimeDropRef(%27, %8) : (!llvm.ptr, i64) -> ()
    llvm.br ^bb1(%15, %19 : i64, i64)
  ^bb3:  // pred: ^bb1
    llvm.call @mlirAsyncRuntimeDropRef(%arg0, %8) : (!llvm.ptr, i64) -> ()
    %29 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @parallel_compute_fn_with_aligned_loops_0(%arg1, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %29, %30, %31, %32, %33, %34, %35) : (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.return
  }
  llvm.func @parallel_compute_fn_0(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg10, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg11, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg12, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg13, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg15, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg14, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg16, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(512 : index) : i64
    %12 = llvm.mlir.constant(262144 : index) : i64
    %13 = llvm.mul %arg0, %arg1 : i64
    %14 = llvm.add %13, %arg1 : i64
    %15 = llvm.icmp "slt" %14, %12 : i64
    %16 = llvm.select %15, %14, %12 : i1, i64
    %17 = llvm.sub %16, %10 : i64
    %18 = llvm.srem %13, %11  : i64
    %19 = llvm.sdiv %13, %11  : i64
    %20 = llvm.srem %19, %11  : i64
    %21 = llvm.srem %17, %11  : i64
    %22 = llvm.sdiv %17, %11  : i64
    %23 = llvm.srem %22, %11  : i64
    %24 = llvm.add %23, %10 : i64
    %25 = llvm.add %21, %10 : i64
    llvm.br ^bb1(%20 : i64)
  ^bb1(%26: i64):  // 2 preds: ^bb0, ^bb5
    %27 = llvm.icmp "slt" %26, %24 : i64
    llvm.cond_br %27, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %28 = llvm.icmp "eq" %26, %20 : i64
    %29 = llvm.icmp "eq" %26, %23 : i64
    %30 = llvm.select %28, %18, %9 : i1, i64
    %31 = llvm.select %29, %25, %11 : i1, i64
    llvm.br ^bb3(%30 : i64)
  ^bb3(%32: i64):  // 2 preds: ^bb2, ^bb4
    %33 = llvm.icmp "slt" %32, %31 : i64
    llvm.cond_br %33, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %34 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.mlir.constant(512 : index) : i64
    %36 = llvm.mul %26, %35 : i64
    %37 = llvm.add %36, %32 : i64
    %38 = llvm.getelementptr %34[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %8, %38 : f32, !llvm.ptr
    %39 = llvm.add %32, %10 : i64
    llvm.br ^bb3(%39 : i64)
  ^bb5:  // pred: ^bb3
    %40 = llvm.add %26, %10 : i64
    llvm.br ^bb1(%40 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @async_dispatch_fn_2(%arg0: !llvm.ptr, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg12, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg13, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg14, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg15, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg17, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg16, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg18, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(1 : i64) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%arg1, %arg2 : i64, i64)
  ^bb1(%11: i64, %12: i64):  // 2 preds: ^bb0, ^bb2
    %13 = llvm.sub %12, %11 : i64
    %14 = llvm.icmp "sgt" %13, %9 : i64
    llvm.cond_br %14, ^bb2(%11, %12 : i64, i64), ^bb3
  ^bb2(%15: i64, %16: i64):  // pred: ^bb1
    %17 = llvm.sub %16, %15 : i64
    %18 = llvm.sdiv %17, %10  : i64
    %19 = llvm.add %15, %18 : i64
    llvm.call @mlirAsyncRuntimeAddRef(%arg0, %8) : (!llvm.ptr, i64) -> ()
    %20 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.call @async_execute_fn_2(%arg0, %19, %16, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %20, %21, %22, %23, %24, %25, %26) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.ptr
    %28 = llvm.call @mlirAsyncRuntimeAddTokenToGroup(%27, %arg0) : (!llvm.ptr, !llvm.ptr) -> i64
    llvm.call @mlirAsyncRuntimeDropRef(%27, %8) : (!llvm.ptr, i64) -> ()
    llvm.br ^bb1(%15, %19 : i64, i64)
  ^bb3:  // pred: ^bb1
    llvm.call @mlirAsyncRuntimeDropRef(%arg0, %8) : (!llvm.ptr, i64) -> ()
    %29 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @parallel_compute_fn_0(%arg1, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %29, %30, %31, %32, %33, %34, %35) : (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.return
  }
  llvm.func @async_execute_fn(%arg0: !llvm.ptr, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: !llvm.ptr, %arg20: !llvm.ptr, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: !llvm.ptr, %arg27: !llvm.ptr, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.ptr attributes {passthrough = ["presplitcoroutine"], sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg26, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg27, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg28, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg29, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg31, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg30, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg32, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg19, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg20, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg21, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg22, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg24, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg23, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg25, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg12, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg14, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg17, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg16, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg18, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(false) : i1
    %25 = llvm.mlir.addressof @__resume : !llvm.ptr
    %26 = llvm.mlir.constant(0 : i64) : i64
    %27 = llvm.mlir.constant(1 : i64) : i64
    %28 = llvm.mlir.zero : !llvm.ptr
    %29 = llvm.mlir.constant(0 : i32) : i32
    %30 = llvm.call @mlirAsyncRuntimeCreateToken() : () -> !llvm.ptr
    %31 = llvm.intr.coro.id %29, %28, %28, %28 : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> !llvm.token
    %32 = llvm.intr.coro.size : i64
    %33 = llvm.intr.coro.align : i64
    %34 = llvm.add %32, %33 : i64
    %35 = llvm.sub %34, %27 : i64
    %36 = llvm.sub %26, %33 : i64
    %37 = llvm.and %35, %36  : i64
    %38 = llvm.call @aligned_alloc(%33, %37) : (i64, i64) -> !llvm.ptr
    %39 = llvm.intr.coro.begin %31, %38 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    %40 = llvm.intr.coro.save %39 : (!llvm.ptr) -> !llvm.token
    llvm.call @mlirAsyncRuntimeExecute(%39, %25) : (!llvm.ptr, !llvm.ptr) -> ()
    %41 = llvm.intr.coro.suspend %40, %24 : i8
    %42 = llvm.sext %41 : i8 to i32
    llvm.switch %42 : i32, ^bb3 [
      0: ^bb1,
      1: ^bb2
    ]
  ^bb1:  // pred: ^bb0
    %43 = llvm.extractvalue %23[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.extractvalue %23[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.extractvalue %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.extractvalue %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.extractvalue %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.extractvalue %23[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @async_dispatch_fn(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.call @mlirAsyncRuntimeEmplaceToken(%30) : (!llvm.ptr) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %64 = llvm.intr.coro.free %31, %39 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    llvm.call @free(%64) : (!llvm.ptr) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb0, ^bb2
    %65 = llvm.mlir.none : !llvm.token
    %66 = llvm.intr.coro.end %39, %24, %65 : (!llvm.ptr, i1, !llvm.token) -> i1
    llvm.return %30 : !llvm.ptr
  }
  llvm.func @async_execute_fn_0(%arg0: !llvm.ptr, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: !llvm.ptr, %arg20: !llvm.ptr, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: !llvm.ptr, %arg27: !llvm.ptr, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.ptr attributes {passthrough = ["presplitcoroutine"], sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg26, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg27, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg28, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg29, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg31, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg30, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg32, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg19, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg20, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg21, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg22, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg24, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg23, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg25, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg12, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg14, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg17, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg16, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg18, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(false) : i1
    %25 = llvm.mlir.addressof @__resume : !llvm.ptr
    %26 = llvm.mlir.constant(0 : i64) : i64
    %27 = llvm.mlir.constant(1 : i64) : i64
    %28 = llvm.mlir.zero : !llvm.ptr
    %29 = llvm.mlir.constant(0 : i32) : i32
    %30 = llvm.call @mlirAsyncRuntimeCreateToken() : () -> !llvm.ptr
    %31 = llvm.intr.coro.id %29, %28, %28, %28 : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> !llvm.token
    %32 = llvm.intr.coro.size : i64
    %33 = llvm.intr.coro.align : i64
    %34 = llvm.add %32, %33 : i64
    %35 = llvm.sub %34, %27 : i64
    %36 = llvm.sub %26, %33 : i64
    %37 = llvm.and %35, %36  : i64
    %38 = llvm.call @aligned_alloc(%33, %37) : (i64, i64) -> !llvm.ptr
    %39 = llvm.intr.coro.begin %31, %38 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    %40 = llvm.intr.coro.save %39 : (!llvm.ptr) -> !llvm.token
    llvm.call @mlirAsyncRuntimeExecute(%39, %25) : (!llvm.ptr, !llvm.ptr) -> ()
    %41 = llvm.intr.coro.suspend %40, %24 : i8
    %42 = llvm.sext %41 : i8 to i32
    llvm.switch %42 : i32, ^bb3 [
      0: ^bb1,
      1: ^bb2
    ]
  ^bb1:  // pred: ^bb0
    %43 = llvm.extractvalue %23[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.extractvalue %23[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.extractvalue %23[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.extractvalue %23[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.extractvalue %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.extractvalue %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.extractvalue %23[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.extractvalue %15[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.extractvalue %15[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.extractvalue %15[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.extractvalue %15[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.extractvalue %15[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.extractvalue %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @async_dispatch_fn_0(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.call @mlirAsyncRuntimeEmplaceToken(%30) : (!llvm.ptr) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %64 = llvm.intr.coro.free %31, %39 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    llvm.call @free(%64) : (!llvm.ptr) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb0, ^bb2
    %65 = llvm.mlir.none : !llvm.token
    %66 = llvm.intr.coro.end %39, %24, %65 : (!llvm.ptr, i1, !llvm.token) -> i1
    llvm.return %30 : !llvm.ptr
  }
  llvm.func @async_execute_fn_1(%arg0: !llvm.ptr, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64) -> !llvm.ptr attributes {passthrough = ["presplitcoroutine"], sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg12, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg13, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg14, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg15, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg17, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg16, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg18, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(false) : i1
    %9 = llvm.mlir.addressof @__resume : !llvm.ptr
    %10 = llvm.mlir.constant(0 : i64) : i64
    %11 = llvm.mlir.constant(1 : i64) : i64
    %12 = llvm.mlir.zero : !llvm.ptr
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.call @mlirAsyncRuntimeCreateToken() : () -> !llvm.ptr
    %15 = llvm.intr.coro.id %13, %12, %12, %12 : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> !llvm.token
    %16 = llvm.intr.coro.size : i64
    %17 = llvm.intr.coro.align : i64
    %18 = llvm.add %16, %17 : i64
    %19 = llvm.sub %18, %11 : i64
    %20 = llvm.sub %10, %17 : i64
    %21 = llvm.and %19, %20  : i64
    %22 = llvm.call @aligned_alloc(%17, %21) : (i64, i64) -> !llvm.ptr
    %23 = llvm.intr.coro.begin %15, %22 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    %24 = llvm.intr.coro.save %23 : (!llvm.ptr) -> !llvm.token
    llvm.call @mlirAsyncRuntimeExecute(%23, %9) : (!llvm.ptr, !llvm.ptr) -> ()
    %25 = llvm.intr.coro.suspend %24, %8 : i8
    %26 = llvm.sext %25 : i8 to i32
    llvm.switch %26 : i32, ^bb3 [
      0: ^bb1,
      1: ^bb2
    ]
  ^bb1:  // pred: ^bb0
    %27 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @async_dispatch_fn_1(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %27, %28, %29, %30, %31, %32, %33) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.call @mlirAsyncRuntimeEmplaceToken(%14) : (!llvm.ptr) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %34 = llvm.intr.coro.free %15, %23 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    llvm.call @free(%34) : (!llvm.ptr) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb0, ^bb2
    %35 = llvm.mlir.none : !llvm.token
    %36 = llvm.intr.coro.end %23, %8, %35 : (!llvm.ptr, i1, !llvm.token) -> i1
    llvm.return %14 : !llvm.ptr
  }
  llvm.func @async_execute_fn_2(%arg0: !llvm.ptr, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64) -> !llvm.ptr attributes {passthrough = ["presplitcoroutine"], sym_visibility = "private"} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg12, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg13, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg14, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg15, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg17, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg16, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg18, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(false) : i1
    %9 = llvm.mlir.addressof @__resume : !llvm.ptr
    %10 = llvm.mlir.constant(0 : i64) : i64
    %11 = llvm.mlir.constant(1 : i64) : i64
    %12 = llvm.mlir.zero : !llvm.ptr
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.call @mlirAsyncRuntimeCreateToken() : () -> !llvm.ptr
    %15 = llvm.intr.coro.id %13, %12, %12, %12 : (i32, !llvm.ptr, !llvm.ptr, !llvm.ptr) -> !llvm.token
    %16 = llvm.intr.coro.size : i64
    %17 = llvm.intr.coro.align : i64
    %18 = llvm.add %16, %17 : i64
    %19 = llvm.sub %18, %11 : i64
    %20 = llvm.sub %10, %17 : i64
    %21 = llvm.and %19, %20  : i64
    %22 = llvm.call @aligned_alloc(%17, %21) : (i64, i64) -> !llvm.ptr
    %23 = llvm.intr.coro.begin %15, %22 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    %24 = llvm.intr.coro.save %23 : (!llvm.ptr) -> !llvm.token
    llvm.call @mlirAsyncRuntimeExecute(%23, %9) : (!llvm.ptr, !llvm.ptr) -> ()
    %25 = llvm.intr.coro.suspend %24, %8 : i8
    %26 = llvm.sext %25 : i8 to i32
    llvm.switch %26 : i32, ^bb3 [
      0: ^bb1,
      1: ^bb2
    ]
  ^bb1:  // pred: ^bb0
    %27 = llvm.extractvalue %7[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.extractvalue %7[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @async_dispatch_fn_2(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %27, %28, %29, %30, %31, %32, %33) : (!llvm.ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> ()
    llvm.call @mlirAsyncRuntimeEmplaceToken(%14) : (!llvm.ptr) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %34 = llvm.intr.coro.free %15, %23 : (!llvm.token, !llvm.ptr) -> !llvm.ptr
    llvm.call @free(%34) : (!llvm.ptr) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb0, ^bb2
    %35 = llvm.mlir.none : !llvm.token
    %36 = llvm.intr.coro.end %23, %8, %35 : (!llvm.ptr, i1, !llvm.token) -> i1
    llvm.return %14 : !llvm.ptr
  }
  llvm.func @mlirAsyncRuntimeAddRef(!llvm.ptr, i64) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeDropRef(!llvm.ptr, i64) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeCreateToken() -> !llvm.ptr attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeCreateValue(i64) -> !llvm.ptr attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeCreateGroup(i64) -> !llvm.ptr attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeEmplaceToken(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeEmplaceValue(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeSetTokenError(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeSetValueError(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeIsTokenError(!llvm.ptr) -> i1 attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeIsValueError(!llvm.ptr) -> i1 attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeIsGroupError(!llvm.ptr) -> i1 attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitToken(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitValue(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitAllInGroup(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeExecute(!llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeGetValueStorage(!llvm.ptr) -> !llvm.ptr attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAddTokenToGroup(!llvm.ptr, !llvm.ptr) -> i64 attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitTokenAndExecute(!llvm.ptr, !llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitValueAndExecute(!llvm.ptr, !llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimeAwaitAllInGroupAndExecute(!llvm.ptr, !llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @mlirAsyncRuntimGetNumWorkerThreads() -> i64 attributes {sym_visibility = "private"}
  llvm.func @__resume(%arg0: !llvm.ptr) attributes {sym_visibility = "private"} {
    llvm.intr.coro.resume %arg0 : !llvm.ptr
    llvm.return
  }
}

