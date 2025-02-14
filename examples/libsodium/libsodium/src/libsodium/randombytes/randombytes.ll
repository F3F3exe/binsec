; ModuleID = 'libsodium/src/libsodium/randombytes/randombytes.c'
source_filename = "libsodium/src/libsodium/randombytes/randombytes.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i32)*, i32 ()* }

@implementation = internal global %struct.randombytes_implementation* @randombytes_sysrandom_implementation, align 4
@.str = private unnamed_addr constant [20 x i8] c"buf_len <= SIZE_MAX\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"libsodium/src/libsodium/randombytes/randombytes.c\00", align 1
@__PRETTY_FUNCTION__.randombytes = private unnamed_addr constant [65 x i8] c"void randombytes(unsigned char *const, const unsigned long long)\00", align 1
@randombytes_sysrandom_implementation = external global %struct.randombytes_implementation, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* noundef %0) #0 {
  %2 = alloca %struct.randombytes_implementation*, align 4
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** %2, align 4
  %3 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** %2, align 4
  store %struct.randombytes_implementation* %3, %struct.randombytes_implementation** @implementation, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @randombytes_implementation_name() #0 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0
  %3 = load i8* ()*, i8* ()** %2, align 4
  %4 = call i8* %3()
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @randombytes_random() #0 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1
  %3 = load i32 ()*, i32 ()** %2, align 4
  %4 = call i32 %3()
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randombytes_stir() #0 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %2 = icmp ne %struct.randombytes_implementation* %1, null
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2
  %6 = load void ()*, void ()** %5, align 4
  %7 = icmp ne void ()* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2
  %11 = load void ()*, void ()** %10, align 4
  call void %11()
  br label %12

12:                                               ; preds = %8, %3, %0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @randombytes_uniform(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %7 = icmp ne %struct.randombytes_implementation* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 3
  %11 = load i32 (i32)*, i32 (i32)** %10, align 4
  %12 = icmp ne i32 (i32)* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %15 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %14, i32 0, i32 3
  %16 = load i32 (i32)*, i32 (i32)** %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 %16(i32 noundef %17)
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %8, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %38

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = sub i32 0, %24
  %26 = load i32, i32* %3, align 4
  %27 = urem i32 %25, %26
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %30, %23
  %29 = call i32 @randombytes_random()
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %28, label %34, !llvm.loop !7

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = urem i32 %35, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %22, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randombytes_buf(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ugt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %9 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %8, i32 0, i32 4
  %10 = load void (i8*, i32)*, void (i8*, i32)** %9, align 4
  %11 = load i8*, i8** %3, align 4
  %12 = load i32, i32* %4, align 4
  call void %10(i8* noundef %11, i32 noundef %12)
  br label %13

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @randombytes_close() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %3 = icmp ne %struct.randombytes_implementation* %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 5
  %7 = load i32 ()*, i32 ()** %6, align 4
  %8 = icmp ne i32 ()* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 4
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 5
  %12 = load i32 ()*, i32 ()** %11, align 4
  %13 = call i32 %12()
  store i32 %13, i32* %1, align 4
  br label %15

14:                                               ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %9
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randombytes(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ule i64 %5, 4294967295
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 noundef 142, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i32 0, i32 0)) #2
  unreachable

9:                                                ; preds = %7
  %10 = load i8*, i8** %3, align 4
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  call void @randombytes_buf(i8* noundef %10, i32 noundef %12)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { noreturn nounwind }

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
