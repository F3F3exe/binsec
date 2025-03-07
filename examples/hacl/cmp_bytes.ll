; ModuleID = 'cmp_bytes.ll'
source_filename = "cmp_bytes_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@b1 = dso_local global [40 x i8] zeroinitializer, align 1
@b2 = dso_local global [40 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  tail call void @high_input_40(ptr noundef nonnull @b1) #2
  tail call void @high_input_40(ptr noundef nonnull @b2) #2
  %1 = tail call zeroext i8 @Hacl_Policies_cmp_bytes(ptr noundef nonnull @b1, ptr noundef nonnull @b2, i32 noundef 40) #2
  ret i32 0
}

declare void @high_input_40(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @Hacl_Policies_cmp_bytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103238+cd708029e0b2-1~exp1~20250114103342.77)"}
