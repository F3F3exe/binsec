; ModuleID = 'libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c'
source_filename = "libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.SysRandom_ = type { i32, i32, i32 }
%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i32)*, i32 ()* }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, i32, i32 }
%struct.timespec = type { i32, i32 }

@stream = internal global %struct.SysRandom_ { i32 -1, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"sysrandom\00", align 1
@randombytes_sysrandom_implementation = dso_local global %struct.randombytes_implementation { i8* ()* @randombytes_sysrandom_implementation_name, i32 ()* @randombytes_sysrandom, void ()* @randombytes_sysrandom_stir, i32 (i32)* null, void (i8*, i32)* @randombytes_sysrandom_buf, i32 ()* @randombytes_sysrandom_close }, align 4
@randombytes_sysrandom_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"chunk_size > (size_t) 0U\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c\00", align 1
@__PRETTY_FUNCTION__.randombytes_linux_getrandom = private unnamed_addr constant [53 x i8] c"int randombytes_linux_getrandom(void *const, size_t)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"size <= 256U\00", align 1
@__PRETTY_FUNCTION__._randombytes_linux_getrandom = private unnamed_addr constant [60 x i8] c"int _randombytes_linux_getrandom(void *const, const size_t)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"size > (size_t) 0U\00", align 1
@__PRETTY_FUNCTION__.safe_read = private unnamed_addr constant [50 x i8] c"ssize_t safe_read(const int, void *const, size_t)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randombytes_sysrandom_stir() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @randombytes_sysrandom_init()
  store i32 1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randombytes_sysrandom_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 1
  %3 = call i32* @__errno_location() #5
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0
  %6 = call i32 @randombytes_linux_getrandom(i8* noundef %5, i32 noundef 16)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32* @__errno_location() #5
  store i32 %9, i32* %10, align 4
  br label %18

11:                                               ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4
  %12 = call i32 @randombytes_sysrandom_random_dev_open()
  store i32 %12, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @abort() #6
  unreachable

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = call i32* @__errno_location() #5
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4
  %6 = call i32 @close(i32 noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 -1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %8, %4, %0
  %10 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @randombytes_sysrandom() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @randombytes_sysrandom_buf(i8* noundef %2, i32 noundef 4)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randombytes_sysrandom_buf(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  call void @randombytes_sysrandom_stir_if_needed()
  %5 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @randombytes_linux_getrandom(i8* noundef %8, i32 noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @abort() #6
  unreachable

13:                                               ; preds = %7
  br label %25

14:                                               ; preds = %2
  %15 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4
  %19 = load i8*, i8** %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @safe_read(i32 noundef %18, i8* noundef %19, i32 noundef %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %14
  call void @abort() #6
  unreachable

25:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @randombytes_sysrandom_stir()
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randombytes_linux_getrandom(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 4
  store i8* %8, i8** %6, align 4
  store i32 256, i32* %7, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ugt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %19

18:                                               ; preds = %13
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i32 0, i32 0), i32 noundef 159, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i32 0, i32 0)) #6
  unreachable

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %9
  %21 = load i8*, i8** %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @_randombytes_linux_getrandom(i8* noundef %21, i32 noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %37

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %6, align 4
  %32 = getelementptr inbounds i8, i8* %31, i32 %30
  store i8* %32, i8** %6, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = icmp ugt i32 %34, 0
  br i1 %35, label %9, label %36, !llvm.loop !7

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_read(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 4
  store i8* %10, i8** %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %15

14:                                               ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i32 0, i32 0), i32 noundef 82, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i32 0, i32 0)) #6
  unreachable

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %52, %15
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @read(i32 noundef %18, i8* noundef %19, i32 noundef %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = call i32* @__errno_location() #5
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #5
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 11
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ true, %23 ], [ %30, %27 ]
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi i1 [ false, %17 ], [ %32, %31 ]
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  br label %17, !llvm.loop !9

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %61

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %8, align 4
  %51 = getelementptr inbounds i8, i8* %50, i32 %49
  store i8* %51, i8** %8, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = icmp ugt i32 %53, 0
  br i1 %54, label %16, label %55, !llvm.loop !10

55:                                               ; preds = %52, %44
  %56 = load i8*, i8** %8, align 4
  %57 = load i8*, i8** %6, align 4
  %58 = ptrtoint i8* %56 to i32
  %59 = ptrtoint i8* %57 to i32
  %60 = sub i32 %58, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %39
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 {
  ret i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = alloca i8**, align 4
  %4 = alloca i32, align 4
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i32 0, i32 0), i8*** %3, align 4
  br label %5

5:                                                ; preds = %39, %0
  %6 = load i8**, i8*** %3, align 4
  %7 = load i8*, i8** %6, align 4
  %8 = call i32 (i8*, i32, ...) @open(i8* noundef %7, i32 noundef 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @fstat(i32 noundef %12, %struct.stat* noundef %2) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 61440
  %19 = icmp eq i32 %18, 8192
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i32, i32, ...) @fcntl(i32 noundef %22, i32 noundef 1)
  %24 = or i32 %23, 1
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %21, i32 noundef 2, i32 noundef %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %1, align 4
  br label %45

27:                                               ; preds = %15, %11
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @close(i32 noundef %28)
  br label %36

30:                                               ; preds = %5
  %31 = call i32* @__errno_location() #5
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %39

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i8**, i8*** %3, align 4
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %3, align 4
  br label %39

39:                                               ; preds = %36, %34
  %40 = load i8**, i8*** %3, align 4
  %41 = load i8*, i8** %40, align 4
  %42 = icmp ne i8* %41, null
  br i1 %42, label %5, label %43, !llvm.loop !11

43:                                               ; preds = %39
  %44 = call i32* @__errno_location() #5
  store i32 5, i32* %44, align 4
  store i32 -1, i32* %1, align 4
  br label %45

45:                                               ; preds = %43, %20
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare i32 @open(i8* noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, %struct.stat* noundef) #4

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_randombytes_linux_getrandom(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ule i32 %6, 256
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i32 0, i32 0), i32 noundef 142, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i32 0, i32 0)) #6
  unreachable

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i8*, i8** %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i32, ...) @syscall(i32 noundef 355, i8* noundef %12, i32 noundef %13, i32 noundef 0) #7
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = call i32* @__errno_location() #5
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = call i32* @__errno_location() #5
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 11
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ true, %18 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i1 [ false, %15 ], [ %27, %26 ]
  br i1 %29, label %11, label %30, !llvm.loop !12

30:                                               ; preds = %28
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = sub nsw i32 %34, 1
  ret i32 %35
}

; Function Attrs: nounwind
declare i32 @syscall(i32 noundef, ...) #4

declare i32 @read(i32 noundef, i8* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

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
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
