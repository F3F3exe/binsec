; ModuleID = 'ssl3_cbc_remove_padding_patch.ll'
source_filename = "ssl3_cbc_remove_padding_patch_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ssl3_record_st = type { i32, ptr, i32, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ssl3_cbc_remove_padding(ptr %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add i32 %3, 1
  %6 = load i32, ptr %1, align 4
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %1, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %6
  %12 = getelementptr i8, ptr %11, i32 -1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add i32 %5, %14
  %16 = tail call fastcc i32 @constant_time_ge(i32 noundef %6, i32 noundef %15)
  %17 = add nuw nsw i32 %14, 1
  %18 = tail call fastcc i32 @constant_time_ge(i32 noundef %2, i32 noundef %17)
  %19 = and i32 %18, %16
  %20 = and i32 %19, %17
  %21 = load i32, ptr %1, align 4
  %22 = sub i32 %21, %20
  store i32 %22, ptr %1, align 4
  %23 = shl nuw nsw i32 %20, 8
  %24 = getelementptr inbounds i8, ptr %1, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, ptr %24, align 4
  %27 = tail call fastcc i32 @constant_time_select_int(i32 noundef %19)
  br label %28

28:                                               ; preds = %4, %8
  %.0 = phi i32 [ %27, %8 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @constant_time_ge(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @constant_time_lt(i32 noundef %0, i32 noundef %1)
  %4 = xor i32 %3, -1
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @constant_time_select_int(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @constant_time_select(i32 noundef %0)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [200 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [200 x i8], align 1
  %7 = alloca %struct.ssl3_record_st, align 4
  store i32 200, ptr %2, align 4
  call void @high_input_200(ptr noundef nonnull %1) #2
  call void @low_input_4(ptr noundef nonnull %2) #2
  call void @low_input_4(ptr noundef nonnull %5) #2
  call void @low_input_200(ptr noundef nonnull %6) #2
  call void @low_input_4(ptr noundef nonnull %3) #2
  call void @low_input_4(ptr noundef nonnull %4) #2
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %7, i32 4
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %7, i32 8
  %11 = load i32, ptr %5, align 4
  store i32 %11, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %7, i32 12
  store ptr null, ptr %12, align 4
  %13 = load i32, ptr %3, align 4
  %14 = load i32, ptr %4, align 4
  %15 = call i32 @ssl3_cbc_remove_padding(ptr nonnull poison, ptr noundef nonnull %7, i32 noundef %13, i32 noundef %14)
  ret i32 %15
}

declare void @high_input_200(ptr noundef) local_unnamed_addr #1

declare void @low_input_4(ptr noundef) local_unnamed_addr #1

declare void @low_input_200(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @constant_time_lt(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = xor i32 %1, %0
  %4 = sub i32 %0, %1
  %5 = xor i32 %4, %1
  %6 = or i32 %5, %3
  %7 = xor i32 %6, %0
  %8 = tail call fastcc i32 @constant_time_msb(i32 noundef %7)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @constant_time_msb(i32 noundef %0) unnamed_addr #0 {
  %.neg = ashr i32 %0, 31
  ret i32 %.neg
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @constant_time_select(i32 noundef %0) unnamed_addr #0 {
  %2 = xor i32 %0, -1
  %3 = or i32 %2, 1
  ret i32 %3
}

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
