; ModuleID = 'hacl-c/hacl-c/Hacl_Unverified_Random.c'
source_filename = "hacl-c/hacl-c/Hacl_Unverified_Random.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot open /dev/urandom\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Error on reading, expected %llu bytes, got %llu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Cannot allocate %llu bytes aligned to %llu\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @read_random_bytes(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store ptr %1, ptr %5, align 4
  %9 = call i32 (ptr, i32, ...) @open(ptr noundef @.str, i32 noundef 0)
  store i32 %9, ptr %6, align 4
  %10 = load i32, ptr %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i1 false, ptr %3, align 1
  br label %33

14:                                               ; preds = %2
  store i8 1, ptr %7, align 1
  %15 = load i32, ptr %6, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = load i64, ptr %4, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @read(i32 noundef %15, ptr noundef %16, i32 noundef %18)
  %20 = sext i32 %19 to i64
  store i64 %20, ptr %8, align 8
  %21 = load i64, ptr %8, align 8
  %22 = load i64, ptr %4, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i64, ptr %4, align 8
  %26 = load i64, ptr %8, align 8
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %25, i64 noundef %26)
  store i8 0, ptr %7, align 1
  br label %28

28:                                               ; preds = %24, %14
  %29 = load i32, ptr %6, align 4
  %30 = call i32 @close(i32 noundef %29)
  %31 = load i8, ptr %7, align 1
  %32 = trunc i8 %31 to i1
  store i1 %32, ptr %3, align 1
  br label %33

33:                                               ; preds = %28, %12
  %34 = load i1, ptr %3, align 1
  ret i1 %34
}

declare i32 @open(ptr noundef, i32 noundef, ...) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @read(i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @hacl_aligned_malloc(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr null, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  %8 = load i32, ptr %5, align 4
  %9 = call i32 @posix_memalign(ptr noundef %6, i32 noundef %7, i32 noundef %8) #4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, ptr %4, align 4
  %15 = zext i32 %14 to i64
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %13, i64 noundef %15)
  store ptr null, ptr %3, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load ptr, ptr %6, align 4
  store ptr %18, ptr %3, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = load ptr, ptr %3, align 4
  ret ptr %20
}

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @hacl_aligned_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @free(ptr noundef %3) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = load ptr, ptr %3, align 4
  %7 = call zeroext i1 @read_random_bytes(i64 noundef %5, ptr noundef %6)
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call void @exit(i32 noundef 1) #5
  unreachable

9:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103238+cd708029e0b2-1~exp1~20250114103342.77)"}
