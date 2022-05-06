; ModuleID = 'test_clang_round_mode.c'
source_filename = "test_clang_round_mode.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64"

; Function Attrs: noinline nounwind optnone
define dso_local signext i32 @add(float %0, float %1) #0 !dbg !10 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  call void @llvm.dbg.declare(metadata float* %3, metadata !15, metadata !DIExpression()), !dbg !16
  store float %1, float* %4, align 4
  call void @llvm.dbg.declare(metadata float* %4, metadata !17, metadata !DIExpression()), !dbg !18
  %5 = load float, float* %3, align 4, !dbg !19
  %6 = load float, float* %4, align 4, !dbg !20
  %7 = fadd float %5, %6, !dbg !21
  %8 = fptosi float %7 to i32, !dbg !19
  ret i32 %8, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define dso_local signext i32 @main() #0 !dbg !23 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata double* %2, metadata !26, metadata !DIExpression()), !dbg !28
  store double 1.200000e+00, double* %2, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata float* %3, metadata !29, metadata !DIExpression()), !dbg !30
  store float 0x4002666660000000, float* %3, align 4, !dbg !30
  %4 = load double, double* %2, align 8, !dbg !31
  %5 = fptrunc double %4 to float, !dbg !31
  %6 = load float, float* %3, align 4, !dbg !32
  %7 = call signext i32 @add(float %5, float %6), !dbg !33
  ret i32 0, !dbg !34
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+m,+relax,-save-restore" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test_clang_round_mode.c", directory: "/home/vitalyr/projects/learn/C++/Play")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"target-abi", !"lp64"}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{i32 1, !"SmallDataLimit", i32 8}
!9 = !{!"clang version 13.0.1"}
!10 = distinct !DISubprogram(name: "add", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!15 = !DILocalVariable(name: "a", arg: 1, scope: !10, file: !1, line: 1, type: !14)
!16 = !DILocation(line: 1, column: 15, scope: !10)
!17 = !DILocalVariable(name: "b", arg: 2, scope: !10, file: !1, line: 1, type: !14)
!18 = !DILocation(line: 1, column: 24, scope: !10)
!19 = !DILocation(line: 1, column: 36, scope: !10)
!20 = !DILocation(line: 1, column: 40, scope: !10)
!21 = !DILocation(line: 1, column: 38, scope: !10)
!22 = !DILocation(line: 1, column: 29, scope: !10)
!23 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !24, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{!13}
!26 = !DILocalVariable(name: "a", scope: !23, file: !1, line: 4, type: !27)
!27 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!28 = !DILocation(line: 4, column: 10, scope: !23)
!29 = !DILocalVariable(name: "b", scope: !23, file: !1, line: 5, type: !14)
!30 = !DILocation(line: 5, column: 9, scope: !23)
!31 = !DILocation(line: 6, column: 7, scope: !23)
!32 = !DILocation(line: 6, column: 10, scope: !23)
!33 = !DILocation(line: 6, column: 3, scope: !23)
!34 = !DILocation(line: 8, column: 3, scope: !23)
