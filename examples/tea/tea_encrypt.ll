; ModuleID = 'tea_encrypt.ll'
source_filename = "tea_encrypt_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @encipher(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds i8, ptr %2, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %2, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %2, i32 12
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %15, %3
  %.028 = phi i32 [ 0, %3 ], [ %17, %15 ]
  %.027 = phi i32 [ %6, %3 ], [ %33, %15 ]
  %.026 = phi i32 [ %4, %3 ], [ %25, %15 ]
  %.0 = phi i32 [ 32, %3 ], [ %16, %15 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %34, label %15

15:                                               ; preds = %14
  %16 = add i32 %.0, -1
  %17 = add i32 %.028, -1640531527
  %18 = shl i32 %.027, 4
  %19 = add i32 %18, %7
  %20 = add i32 %.027, %17
  %21 = xor i32 %19, %20
  %22 = lshr i32 %.027, 5
  %23 = add i32 %22, %9
  %24 = xor i32 %21, %23
  %25 = add i32 %24, %.026
  %26 = shl i32 %25, 4
  %27 = add i32 %26, %11
  %28 = add i32 %25, %17
  %29 = xor i32 %27, %28
  %30 = lshr i32 %25, 5
  %31 = add i32 %30, %13
  %32 = xor i32 %29, %31
  %33 = add i32 %32, %.027
  br label %14, !llvm.loop !7

34:                                               ; preds = %14
  store i32 %.026, ptr %1, align 4
  %35 = getelementptr inbounds i8, ptr %1, i32 4
  store i32 %.027, ptr %35, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @decipher(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds i8, ptr %2, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %2, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %2, i32 12
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %15, %3
  %.028 = phi i32 [ -957401312, %3 ], [ %33, %15 ]
  %.027 = phi i32 [ %6, %3 ], [ %24, %15 ]
  %.026 = phi i32 [ %4, %3 ], [ %32, %15 ]
  %.0 = phi i32 [ 32, %3 ], [ %16, %15 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %34, label %15

15:                                               ; preds = %14
  %16 = add i32 %.0, -1
  %17 = shl i32 %.026, 4
  %18 = add i32 %17, %11
  %19 = add i32 %.026, %.028
  %20 = xor i32 %18, %19
  %21 = lshr i32 %.026, 5
  %22 = add i32 %21, %13
  %23 = xor i32 %20, %22
  %24 = sub i32 %.027, %23
  %25 = shl i32 %24, 4
  %26 = add i32 %25, %7
  %27 = add i32 %24, %.028
  %28 = xor i32 %26, %27
  %29 = lshr i32 %24, 5
  %30 = add i32 %29, %9
  %31 = xor i32 %28, %30
  %32 = sub i32 %.026, %31
  %33 = add i32 %.028, 1640531527
  br label %14, !llvm.loop !9

34:                                               ; preds = %14
  store i32 %.026, ptr %1, align 4
  %35 = getelementptr inbounds i8, ptr %1, i32 4
  store i32 %.027, ptr %35, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [4 x i32], align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca [2 x i32], align 4
  call void @high_input_16(ptr noundef nonnull %1) #2
  call void @high_input_8(ptr noundef nonnull %2) #2
  call void @high_input_8(ptr noundef nonnull %3) #2
  call void @encipher(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %1)
  ret i32 0
}

declare void @high_input_16(ptr noundef) local_unnamed_addr #1

declare void @high_input_8(ptr noundef) local_unnamed_addr #1

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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
