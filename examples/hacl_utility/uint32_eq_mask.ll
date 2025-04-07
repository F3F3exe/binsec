; ModuleID = 'uint32_eq_mask.ll'
source_filename = "uint32_eq_mask.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  call void @high_input_4(ptr noundef nonnull %1) #3
  call void @high_input_4(ptr noundef nonnull %2) #3
  %3 = load i32, ptr %1, align 4, !tbaa !6
  %4 = load i32, ptr %2, align 4, !tbaa !6
  %5 = xor i32 %3, %4
  %6 = xor i32 %5, -1
  %7 = shl i32 %6, 16
  %8 = and i32 %7, %6
  %9 = shl i32 %8, 8
  %10 = and i32 %9, %8
  %11 = shl i32 %10, 4
  %12 = and i32 %11, %10
  %13 = shl i32 %12, 2
  %14 = and i32 %13, %12
  %15 = shl i32 %14, 1
  %16 = and i32 %15, %14
  %17 = ashr i32 %16, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #3
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @high_input_4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 19.1.7 (++20250114103238+cd708029e0b2-1~exp1~20250114103342.77)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
