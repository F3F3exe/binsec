; ModuleID = '02.ll'
source_filename = "02.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @issue(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %.not = icmp eq i32 %0, 0
  %.v = select i1 %.not, i8 %2, i8 %1
  ret i8 %.v
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 256) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store i32 2, ptr %3, align 4
  store i32 5, ptr %4, align 4
  store i32 0, ptr %5, align 4
  call void @high_input_4(ptr noundef nonnull %5) #2
  call void @low_input_4(ptr noundef nonnull %3) #2
  call void @low_input_4(ptr noundef nonnull %4) #2
  store volatile ptr @issue, ptr %6, align 4
  %.0..0. = load volatile ptr, ptr %6, align 4
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %3, align 4
  %9 = trunc i32 %8 to i8
  %10 = load i32, ptr %4, align 4
  %11 = trunc i32 %10 to i8
  %12 = call zeroext i8 %.0..0.(i32 noundef %7, i8 noundef zeroext %9, i8 noundef zeroext %11) #2
  %13 = zext i8 %12 to i32
  ret i32 %13
}

declare void @high_input_4(ptr noundef) local_unnamed_addr #1

declare void @low_input_4(ptr noundef) local_unnamed_addr #1

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
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
