; ModuleID = 'uint8_eq_mask.ll'
source_filename = "uint8_eq_mask.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 256) i32 @main() local_unnamed_addr #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #3
  call void @high_input_1(ptr noundef nonnull %1) #3
  call void @high_input_1(ptr noundef nonnull %2) #3
  %3 = load i8, ptr %1, align 1, !tbaa !6
  %4 = load i8, ptr %2, align 1, !tbaa !6
  %5 = xor i8 %3, %4
  %6 = xor i8 %5, -1
  %7 = shl i8 %6, 4
  %8 = and i8 %7, %6
  %9 = shl i8 %8, 2
  %10 = and i8 %9, %8
  %11 = shl i8 %10, 1
  %12 = and i8 %11, %10
  %13 = ashr exact i8 %12, 7
  %14 = zext i8 %13 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #3
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @high_input_1(ptr noundef) local_unnamed_addr #2

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
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
