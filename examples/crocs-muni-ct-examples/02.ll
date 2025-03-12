; ModuleID = '02.c'
source_filename = "02.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @issue(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i8 %1, ptr %5, align 1
  store i8 %2, ptr %6, align 1
  %8 = load i32, ptr %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, ptr %7, align 4
  %13 = load i32, ptr %7, align 4
  %14 = load i8, ptr %5, align 1
  %15 = zext i8 %14 to i32
  %16 = mul nsw i32 %13, %15
  %17 = load i32, ptr %7, align 4
  %18 = sub nsw i32 1, %17
  %19 = load i8, ptr %6, align 1
  %20 = zext i8 %19 to i32
  %21 = mul nsw i32 %18, %20
  %22 = add nsw i32 %16, %21
  %23 = trunc i32 %22 to i8
  ret i8 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 2, ptr %6, align 4
  store i32 5, ptr %7, align 4
  store i32 0, ptr %8, align 4
  call void @high_input_4(ptr noundef %8)
  call void @low_input_4(ptr noundef %6)
  call void @low_input_4(ptr noundef %7)
  store volatile ptr @issue, ptr %9, align 4
  %10 = load volatile ptr, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = load i32, ptr %6, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i32, ptr %7, align 4
  %15 = trunc i32 %14 to i8
  %16 = call zeroext i8 %10(i32 noundef %11, i8 noundef zeroext %13, i8 noundef zeroext %15)
  %17 = zext i8 %16 to i32
  ret i32 %17
}

declare void @high_input_4(ptr noundef) #1

declare void @low_input_4(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
