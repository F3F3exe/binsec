; ModuleID = 'ct_ge.c'
source_filename = "ct_ge.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@x = dso_local global i32 0, align 4
@y = dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @main() local_unnamed_addr #0 {
  tail call void @high_input_4(ptr noundef nonnull @x) #2
  tail call void @high_input_4(ptr noundef nonnull @y) #2
  %1 = load i32, ptr @x, align 4, !tbaa !6
  %2 = load i32, ptr @y, align 4, !tbaa !6
  %3 = xor i32 %2, %1
  %4 = sub i32 %1, %2
  %5 = xor i32 %4, %2
  %6 = or i32 %5, %3
  %7 = xor i32 %6, %1
  %8 = icmp sgt i32 %7, -1
  %9 = sext i1 %8 to i32
  ret i32 %9
}

declare void @high_input_4(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
