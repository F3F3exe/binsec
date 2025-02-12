; ModuleID = '02.c'
source_filename = "02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @issue(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = mul nsw i32 %13, %15
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 1, %17
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = mul nsw i32 %18, %20
  %22 = add nsw i32 %16, %21
  %23 = trunc i32 %22 to i8
  ret i8 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8 (i32, i8, i8)*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 2, i32* %6, align 4
  store i32 5, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = bitcast i32* %8 to i8*
  call void @high_input_4(i8* noundef %10)
  %11 = bitcast i32* %6 to i8*
  call void @low_input_4(i8* noundef %11)
  %12 = bitcast i32* %7 to i8*
  call void @low_input_4(i8* noundef %12)
  store volatile i8 (i32, i8, i8)* @issue, i8 (i32, i8, i8)** %9, align 8
  %13 = load volatile i8 (i32, i8, i8)*, i8 (i32, i8, i8)** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = trunc i32 %15 to i8
  %17 = load i32, i32* %7, align 4
  %18 = trunc i32 %17 to i8
  %19 = call zeroext i8 %13(i32 noundef %14, i8 noundef zeroext %16, i8 noundef zeroext %18)
  %20 = zext i8 %19 to i32
  ret i32 %20
}

declare void @high_input_4(i8* noundef) #1

declare void @low_input_4(i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
