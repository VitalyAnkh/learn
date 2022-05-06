; ModuleID = 'test_clang_round_mode.c'
source_filename = "test_clang_round_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"+11.5 -> %+4.1f\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"+12.5 -> %+4.1f\0A\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong strictfp uwtable
define dso_local i32 @add(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = call float @llvm.experimental.constrained.fadd.f32(float %5, float %6, metadata !"round.dynamic", metadata !"fpexcept.ignore") #4
  %8 = call i32 @llvm.experimental.constrained.fptosi.i32.f32(float %7, metadata !"fpexcept.ignore") #4
  ret i32 %8
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare float @llvm.experimental.constrained.fadd.f32(float, float, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare i32 @llvm.experimental.constrained.fptosi.i32.f32(float, metadata) #1

; Function Attrs: noinline nounwind optnone sspstrong strictfp uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 @fesetround(i32 1024) #5
  store double 1.200000e+00, double* %2, align 8
  %5 = call float @llvm.experimental.constrained.fptrunc.f32.f64(double 2.300000e+00, metadata !"round.dynamic", metadata !"fpexcept.ignore") #4
  store float %5, float* %3, align 4
  %6 = load double, double* %2, align 8
  %14 = fptrunc double %6 to float
  %7 = call float @llvm.experimental.constrained.fptrunc.f32.f64(double %6, metadata !"round.dynamic", metadata !"fpexcept.ignore") #4
  %8 = load float, float* %3, align 4
  %9 = call i32 @add(float %7, float %8) #4
  %10 = call double @llvm.experimental.constrained.rint.f64(double 1.150000e+01, metadata !"round.dynamic", metadata !"fpexcept.ignore") #4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), double %10) #4
  %12 = call double @llvm.experimental.constrained.rint.f64(double 1.250000e+01, metadata !"round.dynamic", metadata !"fpexcept.ignore") #4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), double %12) #4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @fesetround(i32) #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare float @llvm.experimental.constrained.fptrunc.f32.f64(double, metadata, metadata) #1

declare i32 @printf(i8*, ...) #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare double @llvm.experimental.constrained.rint.f64(double, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone sspstrong strictfp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "strictfp" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { strictfp }
attributes #5 = { nounwind strictfp }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 13.0.1"}
