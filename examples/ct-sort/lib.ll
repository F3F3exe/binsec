; ModuleID = 'lib.ll'
source_filename = "lib.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sort2(i32* noundef %0, i32* noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* %1, align 4
  %4 = getelementptr inbounds i32, i32* %1, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  store i32 %3, i32* %0, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds i32, i32* %0, i32 1
  store i32 %8, i32* %9, align 4
  br label %13

10:                                               ; preds = %2
  store i32 %5, i32* %0, align 4
  %11 = load i32, i32* %1, align 4
  %12 = getelementptr inbounds i32, i32* %0, i32 1
  store i32 %11, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = zext i1 %6 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sort3(i32* noundef %0, i32* noundef %1, i32* noundef %2) local_unnamed_addr #0 {
  %4 = call i32 @sort2(i32* noundef %1, i32* noundef %2)
  store i32 %4, i32* %0, align 4
  %5 = getelementptr inbounds i32, i32* %1, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %2, i32 1
  store i32 %6, i32* %7, align 4
  %8 = call i32 @sort2(i32* noundef nonnull %5, i32* noundef nonnull %7)
  %9 = getelementptr inbounds i32, i32* %0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %1, align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 @sort2(i32* noundef nonnull %1, i32* noundef nonnull %2)
  %13 = getelementptr inbounds i32, i32* %0, i32 2
  store i32 %12, i32* %13, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sort2_multiplex(i32* noundef %0, i32* noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* %1, align 4
  %4 = getelementptr inbounds i32, i32* %1, i32 1
  %5 = load i32, i32* %4, align 4
  %.not = icmp slt i32 %3, %5
  %6 = select i1 %.not, i32 %3, i32 %5
  store i32 %6, i32* %0, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %1, align 4
  %9 = select i1 %.not, i32 %7, i32 %8
  %10 = getelementptr inbounds i32, i32* %0, i32 1
  store i32 %9, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sort3_multiplex(i32* noundef %0, i32* noundef %1) local_unnamed_addr #0 {
  call void @sort2_multiplex(i32* noundef %0, i32* noundef %1)
  %3 = getelementptr inbounds i32, i32* %0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds i32, i32* %1, i32 1
  store i32 %4, i32* %5, align 4
  call void @sort2_multiplex(i32* noundef nonnull %3, i32* noundef nonnull %5)
  %6 = load i32, i32* %0, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  call void @sort2_multiplex(i32* noundef nonnull %0, i32* noundef nonnull %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sort2_negative(i32* noundef %0, i32* noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* %1, align 4
  %4 = getelementptr inbounds i32, i32* %1, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  store i32 %3, i32* %0, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds i32, i32* %0, i32 1
  store i32 %8, i32* %9, align 4
  br label %13

10:                                               ; preds = %2
  store i32 %5, i32* %0, align 4
  %11 = load i32, i32* %1, align 4
  %12 = getelementptr inbounds i32, i32* %0, i32 1
  store i32 %11, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sort3_negative(i32* noundef %0, i32* noundef %1) local_unnamed_addr #0 {
  call void @sort2_negative(i32* noundef %0, i32* noundef %1)
  %3 = getelementptr inbounds i32, i32* %0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds i32, i32* %1, i32 1
  store i32 %4, i32* %5, align 4
  call void @sort2_negative(i32* noundef nonnull %3, i32* noundef nonnull %5)
  %6 = load i32, i32* %0, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  call void @sort2_negative(i32* noundef nonnull %0, i32* noundef nonnull %1)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
