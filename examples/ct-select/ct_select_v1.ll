; ModuleID = 'ct_select_v1.ll'
source_filename = "ct_select_v1.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @high_input_1(i8* noundef nonnull %1) #2
  %4 = bitcast i32* %2 to i8*
  call void @low_input_4(i8* noundef nonnull %4) #2
  %5 = bitcast i32* %3 to i8*
  call void @low_input_4(i8* noundef nonnull %5) #2
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i8, i8* %1, align 1
  %9 = and i8 %8, 1
  %10 = icmp ne i8 %9, 0
  %11 = call i32 @ct_select_u32_v1(i32 noundef %6, i32 noundef %7, i1 noundef zeroext %10) #2
  ret i32 %11
}

declare void @high_input_1(i8* noundef) local_unnamed_addr #1

declare void @low_input_4(i8* noundef) local_unnamed_addr #1

declare i32 @ct_select_u32_v1(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
