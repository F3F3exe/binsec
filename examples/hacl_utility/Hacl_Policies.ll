; ModuleID = 'Hacl_Policies.ll'
source_filename = "Hacl_Policies.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes_(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 4
  store i8* %1, i8** %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %39, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 4
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds i8, i8* %18, i32 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %10, align 1
  %22 = load i8*, i8** %6, align 4
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds i8, i8* %22, i32 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %11, align 1
  %26 = load i8*, i8** %8, align 4
  %27 = getelementptr inbounds i8, i8* %26, i32 0
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %12, align 1
  %29 = load i8, i8* %10, align 1
  %30 = load i8, i8* %11, align 1
  %31 = call zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %29, i8 noundef zeroext %30)
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %12, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %8, align 4
  %38 = getelementptr inbounds i8, i8* %37, i32 0
  store i8 %36, i8* %38, align 1
  br label %39

39:                                               ; preds = %17
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %13, !llvm.loop !7

42:                                               ; preds = %13
  %43 = load i8*, i8** %8, align 4
  %44 = getelementptr inbounds i8, i8* %43, i32 0
  %45 = load i8, i8* %44, align 1
  ret i8 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = xor i32 %6, %8
  %10 = xor i32 %9, -1
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %3, align 1
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 4
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, %14
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %3, align 1
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 2
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %3, align 1
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 1
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %3, align 1
  %33 = load i8, i8* %3, align 1
  %34 = sext i8 %33 to i32
  %35 = ashr i32 %34, 7
  %36 = trunc i32 %35 to i8
  ret i8 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 4
  store i8* %1, i8** %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i32 0, i32 0
  store i8 -1, i8* %9, align 1
  %10 = load i8*, i8** %4, align 4
  %11 = load i8*, i8** %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i32 0, i32 0
  %14 = call zeroext i8 @Hacl_Policies_cmp_bytes_(i8* noundef %10, i8* noundef %11, i32 noundef %12, i8* noundef %13)
  store i8 %14, i8* %8, align 1
  %15 = load i8, i8* %8, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, -1
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
