; ModuleID = 'll_lib.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i32)*, i32 ()* }
%struct.SysRandom_ = type { i32, i32, i32 }
%struct.crypto_hash_sha512_state = type { [8 x i64], [2 x i64], [128 x i8] }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, i32, i32 }
%struct.timespec = type { i32, i32 }

@canary = internal global [16 x i8] zeroinitializer, align 1
@implementation = internal global %struct.randombytes_implementation* @randombytes_sysrandom_implementation, align 4
@.str = private unnamed_addr constant [20 x i8] c"buf_len <= SIZE_MAX\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"libsodium/src/libsodium/randombytes/randombytes.c\00", align 1
@__PRETTY_FUNCTION__.randombytes = private unnamed_addr constant [65 x i8] c"void randombytes(unsigned char *const, const unsigned long long)\00", align 1
@PAD = internal global <{ i8, [127 x i8] }> <{ i8 -128, [127 x i8] zeroinitializer }>, align 1
@stream = internal global %struct.SysRandom_ { i32 -1, i32 0, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"sysrandom\00", align 1
@randombytes_sysrandom_implementation = dso_local global %struct.randombytes_implementation { i8* ()* @randombytes_sysrandom_implementation_name, i32 ()* @randombytes_sysrandom, void ()* @randombytes_sysrandom_stir, i32 (i32)* null, void (i8*, i32)* @randombytes_sysrandom_buf, i32 ()* @randombytes_sysrandom_close }, align 4
@randombytes_sysrandom_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 4
@.str.1.5 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"chunk_size > (size_t) 0U\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c\00", align 1
@__PRETTY_FUNCTION__.randombytes_linux_getrandom = private unnamed_addr constant [53 x i8] c"int randombytes_linux_getrandom(void *const, size_t)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"size <= 256U\00", align 1
@__PRETTY_FUNCTION__._randombytes_linux_getrandom = private unnamed_addr constant [60 x i8] c"int _randombytes_linux_getrandom(void *const, const size_t)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"size > (size_t) 0U\00", align 1
@__PRETTY_FUNCTION__.safe_read = private unnamed_addr constant [50 x i8] c"ssize_t safe_read(const int, void *const, size_t)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sodium_memzero(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 4
  store i8* %7, i8** %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %12, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = getelementptr inbounds i8, i8* %13, i32 %14
  store volatile i8 0, i8* %16, align 1
  br label %8, !llvm.loop !7

17:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_memcmp(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 4
  store i8* %1, i8** %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 4
  store i8* %11, i8** %7, align 4
  %12 = load i8*, i8** %5, align 4
  store i8* %12, i8** %8, align 4
  store i8 0, i8* %10, align 1
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %33, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds i8, i8* %18, i32 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8*, i8** %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds i8, i8* %23, i32 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %22, %27
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %10, align 1
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %13, !llvm.loop !9

36:                                               ; preds = %13
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %38, 1
  %40 = ashr i32 %39, 8
  %41 = and i32 1, %40
  %42 = sub nsw i32 %41, 1
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sodium_bin2hex(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp uge i32 %13, 2147483647
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul i32 %17, 2
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %4
  call void @abort() #8
  unreachable

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds i8, i8* %27, i32 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 15
  store i32 %32, i32* %12, align 4
  %33 = load i8*, i8** %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds i8, i8* %33, i32 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = ashr i32 %37, 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add i32 87, %39
  %41 = load i32, i32* %12, align 4
  %42 = sub i32 %41, 10
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, -39
  %45 = add i32 %40, %44
  %46 = trunc i32 %45 to i8
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %11, align 4
  %50 = add i32 87, %49
  %51 = load i32, i32* %11, align 4
  %52 = sub i32 %51, 10
  %53 = lshr i32 %52, 8
  %54 = and i32 %53, -39
  %55 = add i32 %50, %54
  %56 = trunc i32 %55 to i8
  %57 = zext i8 %56 to i32
  %58 = or i32 %48, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul i32 %62, 2
  %64 = getelementptr inbounds i8, i8* %61, i32 %63
  store i8 %60, i8* %64, align 1
  %65 = load i32, i32* %10, align 4
  %66 = lshr i32 %65, 8
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %5, align 4
  %70 = load i32, i32* %9, align 4
  %71 = mul i32 %70, 2
  %72 = add i32 %71, 1
  %73 = getelementptr inbounds i8, i8* %69, i32 %72
  store i8 %68, i8* %73, align 1
  %74 = load i32, i32* %9, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %22, !llvm.loop !10

76:                                               ; preds = %22
  %77 = load i8*, i8** %5, align 4
  %78 = load i32, i32* %9, align 4
  %79 = mul i32 %78, 2
  %80 = getelementptr inbounds i8, i8* %77, i32 %79
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %5, align 4
  ret i8* %81
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_hex2bin(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, i32* noundef %5, i8** noundef %6) #0 {
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 4
  %13 = alloca i32*, align 4
  %14 = alloca i8**, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  store i8* %0, i8** %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 4
  store i32* %5, i32** %13, align 4
  store i8** %6, i8*** %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8 0, i8* %19, align 1
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %119, %77, %7
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %126

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 4
  %32 = load i32, i32* %16, align 4
  %33 = getelementptr inbounds i8, i8* %31, i32 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %18, align 1
  %35 = load i8, i8* %18, align 1
  %36 = zext i8 %35 to i32
  %37 = xor i32 %36, 48
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %23, align 1
  %39 = load i8, i8* %23, align 1
  %40 = zext i8 %39 to i32
  %41 = sub i32 %40, 10
  %42 = lshr i32 %41, 8
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %22, align 1
  %44 = load i8, i8* %18, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, -33
  %47 = sub i32 %46, 55
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %21, align 1
  %49 = load i8, i8* %21, align 1
  %50 = zext i8 %49 to i32
  %51 = sub i32 %50, 10
  %52 = load i8, i8* %21, align 1
  %53 = zext i8 %52 to i32
  %54 = sub i32 %53, 16
  %55 = xor i32 %51, %54
  %56 = lshr i32 %55, 8
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %20, align 1
  %58 = load i8, i8* %22, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* %20, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %59, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %30
  %65 = load i8*, i8** %12, align 4
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i8, i8* %25, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i8*, i8** %12, align 4
  %73 = load i8, i8* %18, align 1
  %74 = zext i8 %73 to i32
  %75 = call i8* @strchr(i8* noundef %72, i32 noundef %74) #9
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %16, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %26, !llvm.loop !11

80:                                               ; preds = %71, %67, %64
  br label %126

81:                                               ; preds = %30
  %82 = load i8, i8* %22, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* %23, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %83, %85
  %87 = load i8, i8* %20, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %21, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %88, %90
  %92 = or i32 %86, %91
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %24, align 1
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp uge i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %81
  store i32 -1, i32* %17, align 4
  %98 = call i32* @__errno_location() #10
  store i32 34, i32* %98, align 4
  br label %126

99:                                               ; preds = %81
  %100 = load i8, i8* %25, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i8, i8* %24, align 1
  %105 = zext i8 %104 to i32
  %106 = mul i32 %105, 16
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %19, align 1
  br label %119

108:                                              ; preds = %99
  %109 = load i8, i8* %19, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* %24, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %110, %112
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %8, align 4
  %116 = load i32, i32* %15, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %15, align 4
  %118 = getelementptr inbounds i8, i8* %115, i32 %116
  store i8 %114, i8* %118, align 1
  br label %119

119:                                              ; preds = %108, %103
  %120 = load i8, i8* %25, align 1
  %121 = zext i8 %120 to i32
  %122 = xor i32 %121, -1
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %25, align 1
  %124 = load i32, i32* %16, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %26, !llvm.loop !11

126:                                              ; preds = %97, %80, %26
  %127 = load i8, i8* %25, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* %16, align 4
  %132 = add i32 %131, -1
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %130, %126
  %134 = load i8**, i8*** %14, align 4
  %135 = icmp ne i8** %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i8*, i8** %10, align 4
  %138 = load i32, i32* %16, align 4
  %139 = getelementptr inbounds i8, i8* %137, i32 %138
  %140 = load i8**, i8*** %14, align 4
  store i8* %139, i8** %140, align 4
  br label %141

141:                                              ; preds = %136, %133
  %142 = load i32*, i32** %13, align 4
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %15, align 4
  %146 = load i32*, i32** %13, align 4
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %17, align 4
  ret i32 %148
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sodium_alloc_init() #0 {
  call void @randombytes_buf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @canary, i32 0, i32 0), i32 noundef 16)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_mlock(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32* @__errno_location() #10
  store i32 38, i32* %5, align 4
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_munlock(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 4
  %6 = load i32, i32* %4, align 4
  call void @sodium_memzero(i8* noundef %5, i32 noundef %6)
  %7 = call i32* @__errno_location() #10
  store i32 38, i32* %7, align 4
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @sodium_malloc(i32 noundef %0) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call noalias i8* @_sodium_malloc(i32 noundef %5)
  store i8* %6, i8** %4, align 4
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 4
  br label %13

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 4
  %11 = load i32, i32* %3, align 4
  call void @llvm.memset.p0i8.i32(i8* align 1 %10, i8 -48, i32 %11, i1 false)
  %12 = load i8*, i8** %4, align 4
  store i8* %12, i8** %2, align 4
  br label %13

13:                                               ; preds = %9, %8
  %14 = load i8*, i8** %2, align 4
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal noalias i8* @_sodium_malloc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call noalias i8* @malloc(i32 noundef %3) #11
  ret i8* %4
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @sodium_allocarray(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ugt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = udiv i32 -1, %11
  %13 = icmp uge i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32* @__errno_location() #10
  store i32 12, i32* %15, align 4
  store i8* null, i8** %3, align 4
  br label %22

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call noalias i8* @sodium_malloc(i32 noundef %20)
  store i8* %21, i8** %3, align 4
  br label %22

22:                                               ; preds = %16, %14
  %23 = load i8*, i8** %3, align 4
  ret i8* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sodium_free(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %3 = load i8*, i8** %2, align 4
  call void @free(i8* noundef %3) #11
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = call i32 @_sodium_mprotect(i8* noundef %3, i32 (i8*, i32)* noundef @_mprotect_noaccess)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mprotect_noaccess(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32* @__errno_location() #10
  store i32 38, i32* %5, align 4
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sodium_mprotect(i8* noundef %0, i32 (i8*, i32)* noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32 (i8*, i32)*, align 4
  store i8* %0, i8** %3, align 4
  store i32 (i8*, i32)* %1, i32 (i8*, i32)** %4, align 4
  %5 = load i8*, i8** %3, align 4
  %6 = load i32 (i8*, i32)*, i32 (i8*, i32)** %4, align 4
  %7 = call i32* @__errno_location() #10
  store i32 38, i32* %7, align 4
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = call i32 @_sodium_mprotect(i8* noundef %3, i32 (i8*, i32)* noundef @_mprotect_readonly)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mprotect_readonly(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32* @__errno_location() #10
  store i32 38, i32* %5, align 4
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = call i32 @_sodium_mprotect(i8* noundef %3, i32 (i8*, i32)* noundef @_mprotect_readwrite)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mprotect_readwrite(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32* @__errno_location() #10
  store i32 38, i32* %5, align 4
  ret i32 -1
}

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
  br i1 %33, label %28, label %34, !llvm.loop !12

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
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 noundef 142, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i32 0, i32 0)) #8
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_sha512_init(%struct.crypto_hash_sha512_state* noundef %0) #0 {
  %2 = alloca %struct.crypto_hash_sha512_state*, align 4
  store %struct.crypto_hash_sha512_state* %0, %struct.crypto_hash_sha512_state** %2, align 4
  %3 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %4 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %3, i32 0, i32 1
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i32 0, i32 1
  store i64 0, i64* %5, align 4
  %6 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %7 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i32 0, i32 0
  store i64 0, i64* %8, align 4
  %9 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %10 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i32 0, i32 0
  store i64 7640891576956012808, i64* %11, align 4
  %12 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %13 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i32 0, i32 1
  store i64 -4942790177534073029, i64* %14, align 4
  %15 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %16 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i32 0, i32 2
  store i64 4354685564936845355, i64* %17, align 4
  %18 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %19 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i32 0, i32 3
  store i64 -6534734903238641935, i64* %20, align 4
  %21 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %22 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds [8 x i64], [8 x i64]* %22, i32 0, i32 4
  store i64 5840696475078001361, i64* %23, align 4
  %24 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %25 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* %25, i32 0, i32 5
  store i64 -7276294671716946913, i64* %26, align 4
  %27 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %28 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds [8 x i64], [8 x i64]* %28, i32 0, i32 6
  store i64 2270897969802886507, i64* %29, align 4
  %30 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %31 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds [8 x i64], [8 x i64]* %31, i32 0, i32 7
  store i64 6620516959819538809, i64* %32, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_sha512_update(%struct.crypto_hash_sha512_state* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_hash_sha512_state*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i64, align 8
  %8 = alloca [2 x i64], align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 4
  store %struct.crypto_hash_sha512_state* %0, %struct.crypto_hash_sha512_state** %5, align 4
  store i8* %1, i8** %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 4
  store i8* %11, i8** %10, align 4
  %12 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %5, align 4
  %13 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 4
  %16 = lshr i64 %15, 3
  %17 = and i64 %16, 127
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = shl i64 %18, 3
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* %7, align 8
  %22 = lshr i64 %21, 61
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %5, align 4
  %27 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 4
  %30 = add i64 %29, %25
  store i64 %30, i64* %28, align 4
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %5, align 4
  %36 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 4
  br label %40

40:                                               ; preds = %34, %3
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %5, align 4
  %44 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %43, i32 0, i32 1
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 4
  %47 = add i64 %46, %42
  store i64 %47, i64* %45, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 128, %49
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %40
  %53 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %5, align 4
  %54 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %53, i32 0, i32 2
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %54, i32 0, i32 %56
  %58 = load i8*, i8** %10, align 4
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %57, i8* align 1 %58, i32 %60, i1 false)
  store i32 0, i32* %4, align 4
  br label %105

61:                                               ; preds = %40
  %62 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %5, align 4
  %63 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %62, i32 0, i32 2
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %63, i32 0, i32 %65
  %67 = load i8*, i8** %10, align 4
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 128, %68
  %70 = trunc i64 %69 to i32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %66, i8* align 1 %67, i32 %70, i1 false)
  %71 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %5, align 4
  %72 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds [8 x i64], [8 x i64]* %72, i32 0, i32 0
  %74 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %5, align 4
  %75 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %74, i32 0, i32 2
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %75, i32 0, i32 0
  call void @SHA512_Transform(i64* noundef %73, i8* noundef %76)
  %77 = load i64, i64* %9, align 8
  %78 = sub i64 128, %77
  %79 = load i8*, i8** %10, align 4
  %80 = trunc i64 %78 to i32
  %81 = getelementptr inbounds i8, i8* %79, i32 %80
  store i8* %81, i8** %10, align 4
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 128, %82
  %84 = load i64, i64* %7, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %89, %61
  %87 = load i64, i64* %7, align 8
  %88 = icmp uge i64 %87, 128
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %5, align 4
  %91 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds [8 x i64], [8 x i64]* %91, i32 0, i32 0
  %93 = load i8*, i8** %10, align 4
  call void @SHA512_Transform(i64* noundef %92, i8* noundef %93)
  %94 = load i8*, i8** %10, align 4
  %95 = getelementptr inbounds i8, i8* %94, i32 128
  store i8* %95, i8** %10, align 4
  %96 = load i64, i64* %7, align 8
  %97 = sub i64 %96, 128
  store i64 %97, i64* %7, align 8
  br label %86, !llvm.loop !13

98:                                               ; preds = %86
  %99 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %5, align 4
  %100 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %99, i32 0, i32 2
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %100, i32 0, i32 0
  %102 = load i8*, i8** %10, align 4
  %103 = load i64, i64* %7, align 8
  %104 = trunc i64 %103 to i32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %101, i8* align 1 %102, i32 %104, i1 false)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %52
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA512_Transform(i64* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i64*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca [80 x i64], align 8
  %6 = alloca [8 x i64], align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 4
  store i8* %1, i8** %4, align 4
  %10 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 0
  %11 = load i8*, i8** %4, align 4
  call void @be64dec_vect(i64* noundef %10, i8* noundef %11, i32 noundef 128)
  store i32 16, i32* %9, align 4
  br label %12

12:                                               ; preds = %87, %2
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 80
  br i1 %14, label %15, label %90

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %16, 2
  %18 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %17
  %19 = load i64, i64* %18, align 8
  %20 = lshr i64 %19, 19
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %21, 2
  %23 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %22
  %24 = load i64, i64* %23, align 8
  %25 = shl i64 %24, 45
  %26 = or i64 %20, %25
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 2
  %29 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %28
  %30 = load i64, i64* %29, align 8
  %31 = lshr i64 %30, 61
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 2
  %34 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %33
  %35 = load i64, i64* %34, align 8
  %36 = shl i64 %35, 3
  %37 = or i64 %31, %36
  %38 = xor i64 %26, %37
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 2
  %41 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %40
  %42 = load i64, i64* %41, align 8
  %43 = lshr i64 %42, 6
  %44 = xor i64 %38, %43
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 7
  %47 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %46
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %44, %48
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 15
  %52 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %51
  %53 = load i64, i64* %52, align 8
  %54 = lshr i64 %53, 1
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 15
  %57 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %56
  %58 = load i64, i64* %57, align 8
  %59 = shl i64 %58, 63
  %60 = or i64 %54, %59
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 15
  %63 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %62
  %64 = load i64, i64* %63, align 8
  %65 = lshr i64 %64, 8
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 15
  %68 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %67
  %69 = load i64, i64* %68, align 8
  %70 = shl i64 %69, 56
  %71 = or i64 %65, %70
  %72 = xor i64 %60, %71
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %73, 15
  %75 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %74
  %76 = load i64, i64* %75, align 8
  %77 = lshr i64 %76, 7
  %78 = xor i64 %72, %77
  %79 = add i64 %49, %78
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 16
  %82 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %81
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %79, %83
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 %85
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %15
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %12, !llvm.loop !14

90:                                               ; preds = %12
  %91 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %92 = bitcast i64* %91 to i8*
  %93 = load i64*, i64** %3, align 4
  %94 = bitcast i64* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %92, i8* align 4 %94, i32 64, i1 false)
  %95 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = lshr i64 %98, 14
  %100 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = shl i64 %101, 50
  %103 = or i64 %99, %102
  %104 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = lshr i64 %105, 18
  %107 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = shl i64 %108, 46
  %110 = or i64 %106, %109
  %111 = xor i64 %103, %110
  %112 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = lshr i64 %113, 41
  %115 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = shl i64 %116, 23
  %118 = or i64 %114, %117
  %119 = xor i64 %111, %118
  %120 = add i64 %96, %119
  %121 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = xor i64 %124, %126
  %128 = and i64 %122, %127
  %129 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = xor i64 %128, %130
  %132 = add i64 %120, %131
  %133 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %132, %134
  %136 = add i64 %135, 4794697086780616226
  store i64 %136, i64* %7, align 8
  %137 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = lshr i64 %138, 28
  %140 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = shl i64 %141, 36
  %143 = or i64 %139, %142
  %144 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = lshr i64 %145, 34
  %147 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = shl i64 %148, 30
  %150 = or i64 %146, %149
  %151 = xor i64 %143, %150
  %152 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = lshr i64 %153, 39
  %155 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = shl i64 %156, 25
  %158 = or i64 %154, %157
  %159 = xor i64 %151, %158
  %160 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = or i64 %163, %165
  %167 = and i64 %161, %166
  %168 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = and i64 %169, %171
  %173 = or i64 %167, %172
  %174 = add i64 %159, %173
  store i64 %174, i64* %8, align 8
  %175 = load i64, i64* %7, align 8
  %176 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, %175
  store i64 %178, i64* %176, align 8
  %179 = load i64, i64* %7, align 8
  %180 = load i64, i64* %8, align 8
  %181 = add i64 %179, %180
  %182 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  store i64 %181, i64* %182, align 8
  %183 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = lshr i64 %186, 14
  %188 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = shl i64 %189, 50
  %191 = or i64 %187, %190
  %192 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = lshr i64 %193, 18
  %195 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = shl i64 %196, 46
  %198 = or i64 %194, %197
  %199 = xor i64 %191, %198
  %200 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = lshr i64 %201, 41
  %203 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = shl i64 %204, 23
  %206 = or i64 %202, %205
  %207 = xor i64 %199, %206
  %208 = add i64 %184, %207
  %209 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = xor i64 %212, %214
  %216 = and i64 %210, %215
  %217 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = xor i64 %216, %218
  %220 = add i64 %208, %219
  %221 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %220, %222
  %224 = add i64 %223, 8158064640168781261
  store i64 %224, i64* %7, align 8
  %225 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %226 = load i64, i64* %225, align 8
  %227 = lshr i64 %226, 28
  %228 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %229 = load i64, i64* %228, align 8
  %230 = shl i64 %229, 36
  %231 = or i64 %227, %230
  %232 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = lshr i64 %233, 34
  %235 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %236 = load i64, i64* %235, align 8
  %237 = shl i64 %236, 30
  %238 = or i64 %234, %237
  %239 = xor i64 %231, %238
  %240 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %241 = load i64, i64* %240, align 8
  %242 = lshr i64 %241, 39
  %243 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = shl i64 %244, 25
  %246 = or i64 %242, %245
  %247 = xor i64 %239, %246
  %248 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = or i64 %251, %253
  %255 = and i64 %249, %254
  %256 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = and i64 %257, %259
  %261 = or i64 %255, %260
  %262 = add i64 %247, %261
  store i64 %262, i64* %8, align 8
  %263 = load i64, i64* %7, align 8
  %264 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, %263
  store i64 %266, i64* %264, align 8
  %267 = load i64, i64* %7, align 8
  %268 = load i64, i64* %8, align 8
  %269 = add i64 %267, %268
  %270 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  store i64 %269, i64* %270, align 8
  %271 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = lshr i64 %274, 14
  %276 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = shl i64 %277, 50
  %279 = or i64 %275, %278
  %280 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = lshr i64 %281, 18
  %283 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = shl i64 %284, 46
  %286 = or i64 %282, %285
  %287 = xor i64 %279, %286
  %288 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = lshr i64 %289, 41
  %291 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = shl i64 %292, 23
  %294 = or i64 %290, %293
  %295 = xor i64 %287, %294
  %296 = add i64 %272, %295
  %297 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = xor i64 %300, %302
  %304 = and i64 %298, %303
  %305 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = xor i64 %304, %306
  %308 = add i64 %296, %307
  %309 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = add i64 %308, %310
  %312 = add i64 %311, -5349999486874862801
  store i64 %312, i64* %7, align 8
  %313 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = lshr i64 %314, 28
  %316 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %317 = load i64, i64* %316, align 8
  %318 = shl i64 %317, 36
  %319 = or i64 %315, %318
  %320 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %321 = load i64, i64* %320, align 8
  %322 = lshr i64 %321, 34
  %323 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %324 = load i64, i64* %323, align 8
  %325 = shl i64 %324, 30
  %326 = or i64 %322, %325
  %327 = xor i64 %319, %326
  %328 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %329 = load i64, i64* %328, align 8
  %330 = lshr i64 %329, 39
  %331 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %332 = load i64, i64* %331, align 8
  %333 = shl i64 %332, 25
  %334 = or i64 %330, %333
  %335 = xor i64 %327, %334
  %336 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = or i64 %339, %341
  %343 = and i64 %337, %342
  %344 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = and i64 %345, %347
  %349 = or i64 %343, %348
  %350 = add i64 %335, %349
  store i64 %350, i64* %8, align 8
  %351 = load i64, i64* %7, align 8
  %352 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = add i64 %353, %351
  store i64 %354, i64* %352, align 8
  %355 = load i64, i64* %7, align 8
  %356 = load i64, i64* %8, align 8
  %357 = add i64 %355, %356
  %358 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  store i64 %357, i64* %358, align 8
  %359 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = lshr i64 %362, 14
  %364 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = shl i64 %365, 50
  %367 = or i64 %363, %366
  %368 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = lshr i64 %369, 18
  %371 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = shl i64 %372, 46
  %374 = or i64 %370, %373
  %375 = xor i64 %367, %374
  %376 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = lshr i64 %377, 41
  %379 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = shl i64 %380, 23
  %382 = or i64 %378, %381
  %383 = xor i64 %375, %382
  %384 = add i64 %360, %383
  %385 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %388 = load i64, i64* %387, align 8
  %389 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %390 = load i64, i64* %389, align 8
  %391 = xor i64 %388, %390
  %392 = and i64 %386, %391
  %393 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %394 = load i64, i64* %393, align 8
  %395 = xor i64 %392, %394
  %396 = add i64 %384, %395
  %397 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 3
  %398 = load i64, i64* %397, align 8
  %399 = add i64 %396, %398
  %400 = add i64 %399, -1606136188198331460
  store i64 %400, i64* %7, align 8
  %401 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %402 = load i64, i64* %401, align 8
  %403 = lshr i64 %402, 28
  %404 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %405 = load i64, i64* %404, align 8
  %406 = shl i64 %405, 36
  %407 = or i64 %403, %406
  %408 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %409 = load i64, i64* %408, align 8
  %410 = lshr i64 %409, 34
  %411 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %412 = load i64, i64* %411, align 8
  %413 = shl i64 %412, 30
  %414 = or i64 %410, %413
  %415 = xor i64 %407, %414
  %416 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %417 = load i64, i64* %416, align 8
  %418 = lshr i64 %417, 39
  %419 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %420 = load i64, i64* %419, align 8
  %421 = shl i64 %420, 25
  %422 = or i64 %418, %421
  %423 = xor i64 %415, %422
  %424 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %427 = load i64, i64* %426, align 8
  %428 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %429 = load i64, i64* %428, align 8
  %430 = or i64 %427, %429
  %431 = and i64 %425, %430
  %432 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %433 = load i64, i64* %432, align 8
  %434 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %435 = load i64, i64* %434, align 8
  %436 = and i64 %433, %435
  %437 = or i64 %431, %436
  %438 = add i64 %423, %437
  store i64 %438, i64* %8, align 8
  %439 = load i64, i64* %7, align 8
  %440 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = add i64 %441, %439
  store i64 %442, i64* %440, align 8
  %443 = load i64, i64* %7, align 8
  %444 = load i64, i64* %8, align 8
  %445 = add i64 %443, %444
  %446 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  store i64 %445, i64* %446, align 8
  %447 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %448 = load i64, i64* %447, align 8
  %449 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = lshr i64 %450, 14
  %452 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = shl i64 %453, 50
  %455 = or i64 %451, %454
  %456 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = lshr i64 %457, 18
  %459 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = shl i64 %460, 46
  %462 = or i64 %458, %461
  %463 = xor i64 %455, %462
  %464 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = lshr i64 %465, 41
  %467 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = shl i64 %468, 23
  %470 = or i64 %466, %469
  %471 = xor i64 %463, %470
  %472 = add i64 %448, %471
  %473 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %476 = load i64, i64* %475, align 8
  %477 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %478 = load i64, i64* %477, align 8
  %479 = xor i64 %476, %478
  %480 = and i64 %474, %479
  %481 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %482 = load i64, i64* %481, align 8
  %483 = xor i64 %480, %482
  %484 = add i64 %472, %483
  %485 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 4
  %486 = load i64, i64* %485, align 8
  %487 = add i64 %484, %486
  %488 = add i64 %487, 4131703408338449720
  store i64 %488, i64* %7, align 8
  %489 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %490 = load i64, i64* %489, align 8
  %491 = lshr i64 %490, 28
  %492 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %493 = load i64, i64* %492, align 8
  %494 = shl i64 %493, 36
  %495 = or i64 %491, %494
  %496 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %497 = load i64, i64* %496, align 8
  %498 = lshr i64 %497, 34
  %499 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %500 = load i64, i64* %499, align 8
  %501 = shl i64 %500, 30
  %502 = or i64 %498, %501
  %503 = xor i64 %495, %502
  %504 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %505 = load i64, i64* %504, align 8
  %506 = lshr i64 %505, 39
  %507 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %508 = load i64, i64* %507, align 8
  %509 = shl i64 %508, 25
  %510 = or i64 %506, %509
  %511 = xor i64 %503, %510
  %512 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %513 = load i64, i64* %512, align 8
  %514 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %517 = load i64, i64* %516, align 8
  %518 = or i64 %515, %517
  %519 = and i64 %513, %518
  %520 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %521 = load i64, i64* %520, align 8
  %522 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %523 = load i64, i64* %522, align 8
  %524 = and i64 %521, %523
  %525 = or i64 %519, %524
  %526 = add i64 %511, %525
  store i64 %526, i64* %8, align 8
  %527 = load i64, i64* %7, align 8
  %528 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %529 = load i64, i64* %528, align 8
  %530 = add i64 %529, %527
  store i64 %530, i64* %528, align 8
  %531 = load i64, i64* %7, align 8
  %532 = load i64, i64* %8, align 8
  %533 = add i64 %531, %532
  %534 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  store i64 %533, i64* %534, align 8
  %535 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %536 = load i64, i64* %535, align 8
  %537 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %538 = load i64, i64* %537, align 8
  %539 = lshr i64 %538, 14
  %540 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %541 = load i64, i64* %540, align 8
  %542 = shl i64 %541, 50
  %543 = or i64 %539, %542
  %544 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %545 = load i64, i64* %544, align 8
  %546 = lshr i64 %545, 18
  %547 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %548 = load i64, i64* %547, align 8
  %549 = shl i64 %548, 46
  %550 = or i64 %546, %549
  %551 = xor i64 %543, %550
  %552 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %553 = load i64, i64* %552, align 8
  %554 = lshr i64 %553, 41
  %555 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %556 = load i64, i64* %555, align 8
  %557 = shl i64 %556, 23
  %558 = or i64 %554, %557
  %559 = xor i64 %551, %558
  %560 = add i64 %536, %559
  %561 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %562 = load i64, i64* %561, align 8
  %563 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %564 = load i64, i64* %563, align 8
  %565 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %566 = load i64, i64* %565, align 8
  %567 = xor i64 %564, %566
  %568 = and i64 %562, %567
  %569 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %570 = load i64, i64* %569, align 8
  %571 = xor i64 %568, %570
  %572 = add i64 %560, %571
  %573 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 5
  %574 = load i64, i64* %573, align 8
  %575 = add i64 %572, %574
  %576 = add i64 %575, 6480981068601479193
  store i64 %576, i64* %7, align 8
  %577 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %578 = load i64, i64* %577, align 8
  %579 = lshr i64 %578, 28
  %580 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %581 = load i64, i64* %580, align 8
  %582 = shl i64 %581, 36
  %583 = or i64 %579, %582
  %584 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %585 = load i64, i64* %584, align 8
  %586 = lshr i64 %585, 34
  %587 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %588 = load i64, i64* %587, align 8
  %589 = shl i64 %588, 30
  %590 = or i64 %586, %589
  %591 = xor i64 %583, %590
  %592 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %593 = load i64, i64* %592, align 8
  %594 = lshr i64 %593, 39
  %595 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %596 = load i64, i64* %595, align 8
  %597 = shl i64 %596, 25
  %598 = or i64 %594, %597
  %599 = xor i64 %591, %598
  %600 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %601 = load i64, i64* %600, align 8
  %602 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %603 = load i64, i64* %602, align 8
  %604 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %605 = load i64, i64* %604, align 8
  %606 = or i64 %603, %605
  %607 = and i64 %601, %606
  %608 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %609 = load i64, i64* %608, align 8
  %610 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %611 = load i64, i64* %610, align 8
  %612 = and i64 %609, %611
  %613 = or i64 %607, %612
  %614 = add i64 %599, %613
  store i64 %614, i64* %8, align 8
  %615 = load i64, i64* %7, align 8
  %616 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %617 = load i64, i64* %616, align 8
  %618 = add i64 %617, %615
  store i64 %618, i64* %616, align 8
  %619 = load i64, i64* %7, align 8
  %620 = load i64, i64* %8, align 8
  %621 = add i64 %619, %620
  %622 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  store i64 %621, i64* %622, align 8
  %623 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %624 = load i64, i64* %623, align 8
  %625 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %626 = load i64, i64* %625, align 8
  %627 = lshr i64 %626, 14
  %628 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %629 = load i64, i64* %628, align 8
  %630 = shl i64 %629, 50
  %631 = or i64 %627, %630
  %632 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %633 = load i64, i64* %632, align 8
  %634 = lshr i64 %633, 18
  %635 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %636 = load i64, i64* %635, align 8
  %637 = shl i64 %636, 46
  %638 = or i64 %634, %637
  %639 = xor i64 %631, %638
  %640 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %641 = load i64, i64* %640, align 8
  %642 = lshr i64 %641, 41
  %643 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %644 = load i64, i64* %643, align 8
  %645 = shl i64 %644, 23
  %646 = or i64 %642, %645
  %647 = xor i64 %639, %646
  %648 = add i64 %624, %647
  %649 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %650 = load i64, i64* %649, align 8
  %651 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %652 = load i64, i64* %651, align 8
  %653 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = xor i64 %652, %654
  %656 = and i64 %650, %655
  %657 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %658 = load i64, i64* %657, align 8
  %659 = xor i64 %656, %658
  %660 = add i64 %648, %659
  %661 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 6
  %662 = load i64, i64* %661, align 8
  %663 = add i64 %660, %662
  %664 = add i64 %663, -7908458776815382629
  store i64 %664, i64* %7, align 8
  %665 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %666 = load i64, i64* %665, align 8
  %667 = lshr i64 %666, 28
  %668 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %669 = load i64, i64* %668, align 8
  %670 = shl i64 %669, 36
  %671 = or i64 %667, %670
  %672 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %673 = load i64, i64* %672, align 8
  %674 = lshr i64 %673, 34
  %675 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %676 = load i64, i64* %675, align 8
  %677 = shl i64 %676, 30
  %678 = or i64 %674, %677
  %679 = xor i64 %671, %678
  %680 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %681 = load i64, i64* %680, align 8
  %682 = lshr i64 %681, 39
  %683 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %684 = load i64, i64* %683, align 8
  %685 = shl i64 %684, 25
  %686 = or i64 %682, %685
  %687 = xor i64 %679, %686
  %688 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %689 = load i64, i64* %688, align 8
  %690 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %691 = load i64, i64* %690, align 8
  %692 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %693 = load i64, i64* %692, align 8
  %694 = or i64 %691, %693
  %695 = and i64 %689, %694
  %696 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %697 = load i64, i64* %696, align 8
  %698 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %699 = load i64, i64* %698, align 8
  %700 = and i64 %697, %699
  %701 = or i64 %695, %700
  %702 = add i64 %687, %701
  store i64 %702, i64* %8, align 8
  %703 = load i64, i64* %7, align 8
  %704 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %705 = load i64, i64* %704, align 8
  %706 = add i64 %705, %703
  store i64 %706, i64* %704, align 8
  %707 = load i64, i64* %7, align 8
  %708 = load i64, i64* %8, align 8
  %709 = add i64 %707, %708
  %710 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  store i64 %709, i64* %710, align 8
  %711 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %712 = load i64, i64* %711, align 8
  %713 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %714 = load i64, i64* %713, align 8
  %715 = lshr i64 %714, 14
  %716 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %717 = load i64, i64* %716, align 8
  %718 = shl i64 %717, 50
  %719 = or i64 %715, %718
  %720 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %721 = load i64, i64* %720, align 8
  %722 = lshr i64 %721, 18
  %723 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %724 = load i64, i64* %723, align 8
  %725 = shl i64 %724, 46
  %726 = or i64 %722, %725
  %727 = xor i64 %719, %726
  %728 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %729 = load i64, i64* %728, align 8
  %730 = lshr i64 %729, 41
  %731 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %732 = load i64, i64* %731, align 8
  %733 = shl i64 %732, 23
  %734 = or i64 %730, %733
  %735 = xor i64 %727, %734
  %736 = add i64 %712, %735
  %737 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %738 = load i64, i64* %737, align 8
  %739 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %740 = load i64, i64* %739, align 8
  %741 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %742 = load i64, i64* %741, align 8
  %743 = xor i64 %740, %742
  %744 = and i64 %738, %743
  %745 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %746 = load i64, i64* %745, align 8
  %747 = xor i64 %744, %746
  %748 = add i64 %736, %747
  %749 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 7
  %750 = load i64, i64* %749, align 8
  %751 = add i64 %748, %750
  %752 = add i64 %751, -6116909921290321640
  store i64 %752, i64* %7, align 8
  %753 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %754 = load i64, i64* %753, align 8
  %755 = lshr i64 %754, 28
  %756 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %757 = load i64, i64* %756, align 8
  %758 = shl i64 %757, 36
  %759 = or i64 %755, %758
  %760 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %761 = load i64, i64* %760, align 8
  %762 = lshr i64 %761, 34
  %763 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %764 = load i64, i64* %763, align 8
  %765 = shl i64 %764, 30
  %766 = or i64 %762, %765
  %767 = xor i64 %759, %766
  %768 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %769 = load i64, i64* %768, align 8
  %770 = lshr i64 %769, 39
  %771 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %772 = load i64, i64* %771, align 8
  %773 = shl i64 %772, 25
  %774 = or i64 %770, %773
  %775 = xor i64 %767, %774
  %776 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %777 = load i64, i64* %776, align 8
  %778 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %779 = load i64, i64* %778, align 8
  %780 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %781 = load i64, i64* %780, align 8
  %782 = or i64 %779, %781
  %783 = and i64 %777, %782
  %784 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %785 = load i64, i64* %784, align 8
  %786 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %787 = load i64, i64* %786, align 8
  %788 = and i64 %785, %787
  %789 = or i64 %783, %788
  %790 = add i64 %775, %789
  store i64 %790, i64* %8, align 8
  %791 = load i64, i64* %7, align 8
  %792 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %793 = load i64, i64* %792, align 8
  %794 = add i64 %793, %791
  store i64 %794, i64* %792, align 8
  %795 = load i64, i64* %7, align 8
  %796 = load i64, i64* %8, align 8
  %797 = add i64 %795, %796
  %798 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  store i64 %797, i64* %798, align 8
  %799 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %800 = load i64, i64* %799, align 8
  %801 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %802 = load i64, i64* %801, align 8
  %803 = lshr i64 %802, 14
  %804 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %805 = load i64, i64* %804, align 8
  %806 = shl i64 %805, 50
  %807 = or i64 %803, %806
  %808 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %809 = load i64, i64* %808, align 8
  %810 = lshr i64 %809, 18
  %811 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %812 = load i64, i64* %811, align 8
  %813 = shl i64 %812, 46
  %814 = or i64 %810, %813
  %815 = xor i64 %807, %814
  %816 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %817 = load i64, i64* %816, align 8
  %818 = lshr i64 %817, 41
  %819 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %820 = load i64, i64* %819, align 8
  %821 = shl i64 %820, 23
  %822 = or i64 %818, %821
  %823 = xor i64 %815, %822
  %824 = add i64 %800, %823
  %825 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %826 = load i64, i64* %825, align 8
  %827 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %828 = load i64, i64* %827, align 8
  %829 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %830 = load i64, i64* %829, align 8
  %831 = xor i64 %828, %830
  %832 = and i64 %826, %831
  %833 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %834 = load i64, i64* %833, align 8
  %835 = xor i64 %832, %834
  %836 = add i64 %824, %835
  %837 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 8
  %838 = load i64, i64* %837, align 8
  %839 = add i64 %836, %838
  %840 = add i64 %839, -2880145864133508542
  store i64 %840, i64* %7, align 8
  %841 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %842 = load i64, i64* %841, align 8
  %843 = lshr i64 %842, 28
  %844 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %845 = load i64, i64* %844, align 8
  %846 = shl i64 %845, 36
  %847 = or i64 %843, %846
  %848 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %849 = load i64, i64* %848, align 8
  %850 = lshr i64 %849, 34
  %851 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %852 = load i64, i64* %851, align 8
  %853 = shl i64 %852, 30
  %854 = or i64 %850, %853
  %855 = xor i64 %847, %854
  %856 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %857 = load i64, i64* %856, align 8
  %858 = lshr i64 %857, 39
  %859 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %860 = load i64, i64* %859, align 8
  %861 = shl i64 %860, 25
  %862 = or i64 %858, %861
  %863 = xor i64 %855, %862
  %864 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %865 = load i64, i64* %864, align 8
  %866 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %867 = load i64, i64* %866, align 8
  %868 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %869 = load i64, i64* %868, align 8
  %870 = or i64 %867, %869
  %871 = and i64 %865, %870
  %872 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %873 = load i64, i64* %872, align 8
  %874 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %875 = load i64, i64* %874, align 8
  %876 = and i64 %873, %875
  %877 = or i64 %871, %876
  %878 = add i64 %863, %877
  store i64 %878, i64* %8, align 8
  %879 = load i64, i64* %7, align 8
  %880 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %881 = load i64, i64* %880, align 8
  %882 = add i64 %881, %879
  store i64 %882, i64* %880, align 8
  %883 = load i64, i64* %7, align 8
  %884 = load i64, i64* %8, align 8
  %885 = add i64 %883, %884
  %886 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  store i64 %885, i64* %886, align 8
  %887 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %888 = load i64, i64* %887, align 8
  %889 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %890 = load i64, i64* %889, align 8
  %891 = lshr i64 %890, 14
  %892 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %893 = load i64, i64* %892, align 8
  %894 = shl i64 %893, 50
  %895 = or i64 %891, %894
  %896 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %897 = load i64, i64* %896, align 8
  %898 = lshr i64 %897, 18
  %899 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %900 = load i64, i64* %899, align 8
  %901 = shl i64 %900, 46
  %902 = or i64 %898, %901
  %903 = xor i64 %895, %902
  %904 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %905 = load i64, i64* %904, align 8
  %906 = lshr i64 %905, 41
  %907 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %908 = load i64, i64* %907, align 8
  %909 = shl i64 %908, 23
  %910 = or i64 %906, %909
  %911 = xor i64 %903, %910
  %912 = add i64 %888, %911
  %913 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %914 = load i64, i64* %913, align 8
  %915 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %916 = load i64, i64* %915, align 8
  %917 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %918 = load i64, i64* %917, align 8
  %919 = xor i64 %916, %918
  %920 = and i64 %914, %919
  %921 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %922 = load i64, i64* %921, align 8
  %923 = xor i64 %920, %922
  %924 = add i64 %912, %923
  %925 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 9
  %926 = load i64, i64* %925, align 8
  %927 = add i64 %924, %926
  %928 = add i64 %927, 1334009975649890238
  store i64 %928, i64* %7, align 8
  %929 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %930 = load i64, i64* %929, align 8
  %931 = lshr i64 %930, 28
  %932 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %933 = load i64, i64* %932, align 8
  %934 = shl i64 %933, 36
  %935 = or i64 %931, %934
  %936 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %937 = load i64, i64* %936, align 8
  %938 = lshr i64 %937, 34
  %939 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %940 = load i64, i64* %939, align 8
  %941 = shl i64 %940, 30
  %942 = or i64 %938, %941
  %943 = xor i64 %935, %942
  %944 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %945 = load i64, i64* %944, align 8
  %946 = lshr i64 %945, 39
  %947 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %948 = load i64, i64* %947, align 8
  %949 = shl i64 %948, 25
  %950 = or i64 %946, %949
  %951 = xor i64 %943, %950
  %952 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %953 = load i64, i64* %952, align 8
  %954 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %955 = load i64, i64* %954, align 8
  %956 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %957 = load i64, i64* %956, align 8
  %958 = or i64 %955, %957
  %959 = and i64 %953, %958
  %960 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %961 = load i64, i64* %960, align 8
  %962 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %963 = load i64, i64* %962, align 8
  %964 = and i64 %961, %963
  %965 = or i64 %959, %964
  %966 = add i64 %951, %965
  store i64 %966, i64* %8, align 8
  %967 = load i64, i64* %7, align 8
  %968 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %969 = load i64, i64* %968, align 8
  %970 = add i64 %969, %967
  store i64 %970, i64* %968, align 8
  %971 = load i64, i64* %7, align 8
  %972 = load i64, i64* %8, align 8
  %973 = add i64 %971, %972
  %974 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  store i64 %973, i64* %974, align 8
  %975 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %976 = load i64, i64* %975, align 8
  %977 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %978 = load i64, i64* %977, align 8
  %979 = lshr i64 %978, 14
  %980 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %981 = load i64, i64* %980, align 8
  %982 = shl i64 %981, 50
  %983 = or i64 %979, %982
  %984 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %985 = load i64, i64* %984, align 8
  %986 = lshr i64 %985, 18
  %987 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %988 = load i64, i64* %987, align 8
  %989 = shl i64 %988, 46
  %990 = or i64 %986, %989
  %991 = xor i64 %983, %990
  %992 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %993 = load i64, i64* %992, align 8
  %994 = lshr i64 %993, 41
  %995 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %996 = load i64, i64* %995, align 8
  %997 = shl i64 %996, 23
  %998 = or i64 %994, %997
  %999 = xor i64 %991, %998
  %1000 = add i64 %976, %999
  %1001 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1002 = load i64, i64* %1001, align 8
  %1003 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1004 = load i64, i64* %1003, align 8
  %1005 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1006 = load i64, i64* %1005, align 8
  %1007 = xor i64 %1004, %1006
  %1008 = and i64 %1002, %1007
  %1009 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1010 = load i64, i64* %1009, align 8
  %1011 = xor i64 %1008, %1010
  %1012 = add i64 %1000, %1011
  %1013 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 10
  %1014 = load i64, i64* %1013, align 8
  %1015 = add i64 %1012, %1014
  %1016 = add i64 %1015, 2608012711638119052
  store i64 %1016, i64* %7, align 8
  %1017 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1018 = load i64, i64* %1017, align 8
  %1019 = lshr i64 %1018, 28
  %1020 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1021 = load i64, i64* %1020, align 8
  %1022 = shl i64 %1021, 36
  %1023 = or i64 %1019, %1022
  %1024 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1025 = load i64, i64* %1024, align 8
  %1026 = lshr i64 %1025, 34
  %1027 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1028 = load i64, i64* %1027, align 8
  %1029 = shl i64 %1028, 30
  %1030 = or i64 %1026, %1029
  %1031 = xor i64 %1023, %1030
  %1032 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1033 = load i64, i64* %1032, align 8
  %1034 = lshr i64 %1033, 39
  %1035 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1036 = load i64, i64* %1035, align 8
  %1037 = shl i64 %1036, 25
  %1038 = or i64 %1034, %1037
  %1039 = xor i64 %1031, %1038
  %1040 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1041 = load i64, i64* %1040, align 8
  %1042 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1043 = load i64, i64* %1042, align 8
  %1044 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1045 = load i64, i64* %1044, align 8
  %1046 = or i64 %1043, %1045
  %1047 = and i64 %1041, %1046
  %1048 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1049 = load i64, i64* %1048, align 8
  %1050 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1051 = load i64, i64* %1050, align 8
  %1052 = and i64 %1049, %1051
  %1053 = or i64 %1047, %1052
  %1054 = add i64 %1039, %1053
  store i64 %1054, i64* %8, align 8
  %1055 = load i64, i64* %7, align 8
  %1056 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1057 = load i64, i64* %1056, align 8
  %1058 = add i64 %1057, %1055
  store i64 %1058, i64* %1056, align 8
  %1059 = load i64, i64* %7, align 8
  %1060 = load i64, i64* %8, align 8
  %1061 = add i64 %1059, %1060
  %1062 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  store i64 %1061, i64* %1062, align 8
  %1063 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1064 = load i64, i64* %1063, align 8
  %1065 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1066 = load i64, i64* %1065, align 8
  %1067 = lshr i64 %1066, 14
  %1068 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1069 = load i64, i64* %1068, align 8
  %1070 = shl i64 %1069, 50
  %1071 = or i64 %1067, %1070
  %1072 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1073 = load i64, i64* %1072, align 8
  %1074 = lshr i64 %1073, 18
  %1075 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1076 = load i64, i64* %1075, align 8
  %1077 = shl i64 %1076, 46
  %1078 = or i64 %1074, %1077
  %1079 = xor i64 %1071, %1078
  %1080 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1081 = load i64, i64* %1080, align 8
  %1082 = lshr i64 %1081, 41
  %1083 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1084 = load i64, i64* %1083, align 8
  %1085 = shl i64 %1084, 23
  %1086 = or i64 %1082, %1085
  %1087 = xor i64 %1079, %1086
  %1088 = add i64 %1064, %1087
  %1089 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1090 = load i64, i64* %1089, align 8
  %1091 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1092 = load i64, i64* %1091, align 8
  %1093 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1094 = load i64, i64* %1093, align 8
  %1095 = xor i64 %1092, %1094
  %1096 = and i64 %1090, %1095
  %1097 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1098 = load i64, i64* %1097, align 8
  %1099 = xor i64 %1096, %1098
  %1100 = add i64 %1088, %1099
  %1101 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 11
  %1102 = load i64, i64* %1101, align 8
  %1103 = add i64 %1100, %1102
  %1104 = add i64 %1103, 6128411473006802146
  store i64 %1104, i64* %7, align 8
  %1105 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1106 = load i64, i64* %1105, align 8
  %1107 = lshr i64 %1106, 28
  %1108 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1109 = load i64, i64* %1108, align 8
  %1110 = shl i64 %1109, 36
  %1111 = or i64 %1107, %1110
  %1112 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1113 = load i64, i64* %1112, align 8
  %1114 = lshr i64 %1113, 34
  %1115 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1116 = load i64, i64* %1115, align 8
  %1117 = shl i64 %1116, 30
  %1118 = or i64 %1114, %1117
  %1119 = xor i64 %1111, %1118
  %1120 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1121 = load i64, i64* %1120, align 8
  %1122 = lshr i64 %1121, 39
  %1123 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1124 = load i64, i64* %1123, align 8
  %1125 = shl i64 %1124, 25
  %1126 = or i64 %1122, %1125
  %1127 = xor i64 %1119, %1126
  %1128 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1129 = load i64, i64* %1128, align 8
  %1130 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1131 = load i64, i64* %1130, align 8
  %1132 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1133 = load i64, i64* %1132, align 8
  %1134 = or i64 %1131, %1133
  %1135 = and i64 %1129, %1134
  %1136 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1137 = load i64, i64* %1136, align 8
  %1138 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1139 = load i64, i64* %1138, align 8
  %1140 = and i64 %1137, %1139
  %1141 = or i64 %1135, %1140
  %1142 = add i64 %1127, %1141
  store i64 %1142, i64* %8, align 8
  %1143 = load i64, i64* %7, align 8
  %1144 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1145 = load i64, i64* %1144, align 8
  %1146 = add i64 %1145, %1143
  store i64 %1146, i64* %1144, align 8
  %1147 = load i64, i64* %7, align 8
  %1148 = load i64, i64* %8, align 8
  %1149 = add i64 %1147, %1148
  %1150 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  store i64 %1149, i64* %1150, align 8
  %1151 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1152 = load i64, i64* %1151, align 8
  %1153 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1154 = load i64, i64* %1153, align 8
  %1155 = lshr i64 %1154, 14
  %1156 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1157 = load i64, i64* %1156, align 8
  %1158 = shl i64 %1157, 50
  %1159 = or i64 %1155, %1158
  %1160 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1161 = load i64, i64* %1160, align 8
  %1162 = lshr i64 %1161, 18
  %1163 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1164 = load i64, i64* %1163, align 8
  %1165 = shl i64 %1164, 46
  %1166 = or i64 %1162, %1165
  %1167 = xor i64 %1159, %1166
  %1168 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1169 = load i64, i64* %1168, align 8
  %1170 = lshr i64 %1169, 41
  %1171 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1172 = load i64, i64* %1171, align 8
  %1173 = shl i64 %1172, 23
  %1174 = or i64 %1170, %1173
  %1175 = xor i64 %1167, %1174
  %1176 = add i64 %1152, %1175
  %1177 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1178 = load i64, i64* %1177, align 8
  %1179 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1180 = load i64, i64* %1179, align 8
  %1181 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1182 = load i64, i64* %1181, align 8
  %1183 = xor i64 %1180, %1182
  %1184 = and i64 %1178, %1183
  %1185 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1186 = load i64, i64* %1185, align 8
  %1187 = xor i64 %1184, %1186
  %1188 = add i64 %1176, %1187
  %1189 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 12
  %1190 = load i64, i64* %1189, align 8
  %1191 = add i64 %1188, %1190
  %1192 = add i64 %1191, 8268148722764581231
  store i64 %1192, i64* %7, align 8
  %1193 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1194 = load i64, i64* %1193, align 8
  %1195 = lshr i64 %1194, 28
  %1196 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1197 = load i64, i64* %1196, align 8
  %1198 = shl i64 %1197, 36
  %1199 = or i64 %1195, %1198
  %1200 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1201 = load i64, i64* %1200, align 8
  %1202 = lshr i64 %1201, 34
  %1203 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1204 = load i64, i64* %1203, align 8
  %1205 = shl i64 %1204, 30
  %1206 = or i64 %1202, %1205
  %1207 = xor i64 %1199, %1206
  %1208 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1209 = load i64, i64* %1208, align 8
  %1210 = lshr i64 %1209, 39
  %1211 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1212 = load i64, i64* %1211, align 8
  %1213 = shl i64 %1212, 25
  %1214 = or i64 %1210, %1213
  %1215 = xor i64 %1207, %1214
  %1216 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1217 = load i64, i64* %1216, align 8
  %1218 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1219 = load i64, i64* %1218, align 8
  %1220 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1221 = load i64, i64* %1220, align 8
  %1222 = or i64 %1219, %1221
  %1223 = and i64 %1217, %1222
  %1224 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1225 = load i64, i64* %1224, align 8
  %1226 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1227 = load i64, i64* %1226, align 8
  %1228 = and i64 %1225, %1227
  %1229 = or i64 %1223, %1228
  %1230 = add i64 %1215, %1229
  store i64 %1230, i64* %8, align 8
  %1231 = load i64, i64* %7, align 8
  %1232 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1233 = load i64, i64* %1232, align 8
  %1234 = add i64 %1233, %1231
  store i64 %1234, i64* %1232, align 8
  %1235 = load i64, i64* %7, align 8
  %1236 = load i64, i64* %8, align 8
  %1237 = add i64 %1235, %1236
  %1238 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  store i64 %1237, i64* %1238, align 8
  %1239 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1240 = load i64, i64* %1239, align 8
  %1241 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1242 = load i64, i64* %1241, align 8
  %1243 = lshr i64 %1242, 14
  %1244 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1245 = load i64, i64* %1244, align 8
  %1246 = shl i64 %1245, 50
  %1247 = or i64 %1243, %1246
  %1248 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1249 = load i64, i64* %1248, align 8
  %1250 = lshr i64 %1249, 18
  %1251 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1252 = load i64, i64* %1251, align 8
  %1253 = shl i64 %1252, 46
  %1254 = or i64 %1250, %1253
  %1255 = xor i64 %1247, %1254
  %1256 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1257 = load i64, i64* %1256, align 8
  %1258 = lshr i64 %1257, 41
  %1259 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1260 = load i64, i64* %1259, align 8
  %1261 = shl i64 %1260, 23
  %1262 = or i64 %1258, %1261
  %1263 = xor i64 %1255, %1262
  %1264 = add i64 %1240, %1263
  %1265 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1266 = load i64, i64* %1265, align 8
  %1267 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1268 = load i64, i64* %1267, align 8
  %1269 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1270 = load i64, i64* %1269, align 8
  %1271 = xor i64 %1268, %1270
  %1272 = and i64 %1266, %1271
  %1273 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1274 = load i64, i64* %1273, align 8
  %1275 = xor i64 %1272, %1274
  %1276 = add i64 %1264, %1275
  %1277 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 13
  %1278 = load i64, i64* %1277, align 8
  %1279 = add i64 %1276, %1278
  %1280 = add i64 %1279, -9160688886553864527
  store i64 %1280, i64* %7, align 8
  %1281 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1282 = load i64, i64* %1281, align 8
  %1283 = lshr i64 %1282, 28
  %1284 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1285 = load i64, i64* %1284, align 8
  %1286 = shl i64 %1285, 36
  %1287 = or i64 %1283, %1286
  %1288 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1289 = load i64, i64* %1288, align 8
  %1290 = lshr i64 %1289, 34
  %1291 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1292 = load i64, i64* %1291, align 8
  %1293 = shl i64 %1292, 30
  %1294 = or i64 %1290, %1293
  %1295 = xor i64 %1287, %1294
  %1296 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1297 = load i64, i64* %1296, align 8
  %1298 = lshr i64 %1297, 39
  %1299 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1300 = load i64, i64* %1299, align 8
  %1301 = shl i64 %1300, 25
  %1302 = or i64 %1298, %1301
  %1303 = xor i64 %1295, %1302
  %1304 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1305 = load i64, i64* %1304, align 8
  %1306 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1307 = load i64, i64* %1306, align 8
  %1308 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1309 = load i64, i64* %1308, align 8
  %1310 = or i64 %1307, %1309
  %1311 = and i64 %1305, %1310
  %1312 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1313 = load i64, i64* %1312, align 8
  %1314 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1315 = load i64, i64* %1314, align 8
  %1316 = and i64 %1313, %1315
  %1317 = or i64 %1311, %1316
  %1318 = add i64 %1303, %1317
  store i64 %1318, i64* %8, align 8
  %1319 = load i64, i64* %7, align 8
  %1320 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1321 = load i64, i64* %1320, align 8
  %1322 = add i64 %1321, %1319
  store i64 %1322, i64* %1320, align 8
  %1323 = load i64, i64* %7, align 8
  %1324 = load i64, i64* %8, align 8
  %1325 = add i64 %1323, %1324
  %1326 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  store i64 %1325, i64* %1326, align 8
  %1327 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1328 = load i64, i64* %1327, align 8
  %1329 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1330 = load i64, i64* %1329, align 8
  %1331 = lshr i64 %1330, 14
  %1332 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1333 = load i64, i64* %1332, align 8
  %1334 = shl i64 %1333, 50
  %1335 = or i64 %1331, %1334
  %1336 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1337 = load i64, i64* %1336, align 8
  %1338 = lshr i64 %1337, 18
  %1339 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1340 = load i64, i64* %1339, align 8
  %1341 = shl i64 %1340, 46
  %1342 = or i64 %1338, %1341
  %1343 = xor i64 %1335, %1342
  %1344 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1345 = load i64, i64* %1344, align 8
  %1346 = lshr i64 %1345, 41
  %1347 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1348 = load i64, i64* %1347, align 8
  %1349 = shl i64 %1348, 23
  %1350 = or i64 %1346, %1349
  %1351 = xor i64 %1343, %1350
  %1352 = add i64 %1328, %1351
  %1353 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1354 = load i64, i64* %1353, align 8
  %1355 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1356 = load i64, i64* %1355, align 8
  %1357 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1358 = load i64, i64* %1357, align 8
  %1359 = xor i64 %1356, %1358
  %1360 = and i64 %1354, %1359
  %1361 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1362 = load i64, i64* %1361, align 8
  %1363 = xor i64 %1360, %1362
  %1364 = add i64 %1352, %1363
  %1365 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 14
  %1366 = load i64, i64* %1365, align 8
  %1367 = add i64 %1364, %1366
  %1368 = add i64 %1367, -7215885187991268811
  store i64 %1368, i64* %7, align 8
  %1369 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1370 = load i64, i64* %1369, align 8
  %1371 = lshr i64 %1370, 28
  %1372 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1373 = load i64, i64* %1372, align 8
  %1374 = shl i64 %1373, 36
  %1375 = or i64 %1371, %1374
  %1376 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1377 = load i64, i64* %1376, align 8
  %1378 = lshr i64 %1377, 34
  %1379 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1380 = load i64, i64* %1379, align 8
  %1381 = shl i64 %1380, 30
  %1382 = or i64 %1378, %1381
  %1383 = xor i64 %1375, %1382
  %1384 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1385 = load i64, i64* %1384, align 8
  %1386 = lshr i64 %1385, 39
  %1387 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1388 = load i64, i64* %1387, align 8
  %1389 = shl i64 %1388, 25
  %1390 = or i64 %1386, %1389
  %1391 = xor i64 %1383, %1390
  %1392 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1393 = load i64, i64* %1392, align 8
  %1394 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1395 = load i64, i64* %1394, align 8
  %1396 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1397 = load i64, i64* %1396, align 8
  %1398 = or i64 %1395, %1397
  %1399 = and i64 %1393, %1398
  %1400 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1401 = load i64, i64* %1400, align 8
  %1402 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1403 = load i64, i64* %1402, align 8
  %1404 = and i64 %1401, %1403
  %1405 = or i64 %1399, %1404
  %1406 = add i64 %1391, %1405
  store i64 %1406, i64* %8, align 8
  %1407 = load i64, i64* %7, align 8
  %1408 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1409 = load i64, i64* %1408, align 8
  %1410 = add i64 %1409, %1407
  store i64 %1410, i64* %1408, align 8
  %1411 = load i64, i64* %7, align 8
  %1412 = load i64, i64* %8, align 8
  %1413 = add i64 %1411, %1412
  %1414 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  store i64 %1413, i64* %1414, align 8
  %1415 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1416 = load i64, i64* %1415, align 8
  %1417 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1418 = load i64, i64* %1417, align 8
  %1419 = lshr i64 %1418, 14
  %1420 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1421 = load i64, i64* %1420, align 8
  %1422 = shl i64 %1421, 50
  %1423 = or i64 %1419, %1422
  %1424 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1425 = load i64, i64* %1424, align 8
  %1426 = lshr i64 %1425, 18
  %1427 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1428 = load i64, i64* %1427, align 8
  %1429 = shl i64 %1428, 46
  %1430 = or i64 %1426, %1429
  %1431 = xor i64 %1423, %1430
  %1432 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1433 = load i64, i64* %1432, align 8
  %1434 = lshr i64 %1433, 41
  %1435 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1436 = load i64, i64* %1435, align 8
  %1437 = shl i64 %1436, 23
  %1438 = or i64 %1434, %1437
  %1439 = xor i64 %1431, %1438
  %1440 = add i64 %1416, %1439
  %1441 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1442 = load i64, i64* %1441, align 8
  %1443 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1444 = load i64, i64* %1443, align 8
  %1445 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1446 = load i64, i64* %1445, align 8
  %1447 = xor i64 %1444, %1446
  %1448 = and i64 %1442, %1447
  %1449 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1450 = load i64, i64* %1449, align 8
  %1451 = xor i64 %1448, %1450
  %1452 = add i64 %1440, %1451
  %1453 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 15
  %1454 = load i64, i64* %1453, align 8
  %1455 = add i64 %1452, %1454
  %1456 = add i64 %1455, -4495734319001033068
  store i64 %1456, i64* %7, align 8
  %1457 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1458 = load i64, i64* %1457, align 8
  %1459 = lshr i64 %1458, 28
  %1460 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1461 = load i64, i64* %1460, align 8
  %1462 = shl i64 %1461, 36
  %1463 = or i64 %1459, %1462
  %1464 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1465 = load i64, i64* %1464, align 8
  %1466 = lshr i64 %1465, 34
  %1467 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1468 = load i64, i64* %1467, align 8
  %1469 = shl i64 %1468, 30
  %1470 = or i64 %1466, %1469
  %1471 = xor i64 %1463, %1470
  %1472 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1473 = load i64, i64* %1472, align 8
  %1474 = lshr i64 %1473, 39
  %1475 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1476 = load i64, i64* %1475, align 8
  %1477 = shl i64 %1476, 25
  %1478 = or i64 %1474, %1477
  %1479 = xor i64 %1471, %1478
  %1480 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1481 = load i64, i64* %1480, align 8
  %1482 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1483 = load i64, i64* %1482, align 8
  %1484 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1485 = load i64, i64* %1484, align 8
  %1486 = or i64 %1483, %1485
  %1487 = and i64 %1481, %1486
  %1488 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1489 = load i64, i64* %1488, align 8
  %1490 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1491 = load i64, i64* %1490, align 8
  %1492 = and i64 %1489, %1491
  %1493 = or i64 %1487, %1492
  %1494 = add i64 %1479, %1493
  store i64 %1494, i64* %8, align 8
  %1495 = load i64, i64* %7, align 8
  %1496 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1497 = load i64, i64* %1496, align 8
  %1498 = add i64 %1497, %1495
  store i64 %1498, i64* %1496, align 8
  %1499 = load i64, i64* %7, align 8
  %1500 = load i64, i64* %8, align 8
  %1501 = add i64 %1499, %1500
  %1502 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  store i64 %1501, i64* %1502, align 8
  %1503 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1504 = load i64, i64* %1503, align 8
  %1505 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1506 = load i64, i64* %1505, align 8
  %1507 = lshr i64 %1506, 14
  %1508 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1509 = load i64, i64* %1508, align 8
  %1510 = shl i64 %1509, 50
  %1511 = or i64 %1507, %1510
  %1512 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1513 = load i64, i64* %1512, align 8
  %1514 = lshr i64 %1513, 18
  %1515 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1516 = load i64, i64* %1515, align 8
  %1517 = shl i64 %1516, 46
  %1518 = or i64 %1514, %1517
  %1519 = xor i64 %1511, %1518
  %1520 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1521 = load i64, i64* %1520, align 8
  %1522 = lshr i64 %1521, 41
  %1523 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1524 = load i64, i64* %1523, align 8
  %1525 = shl i64 %1524, 23
  %1526 = or i64 %1522, %1525
  %1527 = xor i64 %1519, %1526
  %1528 = add i64 %1504, %1527
  %1529 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1530 = load i64, i64* %1529, align 8
  %1531 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1532 = load i64, i64* %1531, align 8
  %1533 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1534 = load i64, i64* %1533, align 8
  %1535 = xor i64 %1532, %1534
  %1536 = and i64 %1530, %1535
  %1537 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1538 = load i64, i64* %1537, align 8
  %1539 = xor i64 %1536, %1538
  %1540 = add i64 %1528, %1539
  %1541 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 16
  %1542 = load i64, i64* %1541, align 8
  %1543 = add i64 %1540, %1542
  %1544 = add i64 %1543, -1973867731355612462
  store i64 %1544, i64* %7, align 8
  %1545 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1546 = load i64, i64* %1545, align 8
  %1547 = lshr i64 %1546, 28
  %1548 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1549 = load i64, i64* %1548, align 8
  %1550 = shl i64 %1549, 36
  %1551 = or i64 %1547, %1550
  %1552 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1553 = load i64, i64* %1552, align 8
  %1554 = lshr i64 %1553, 34
  %1555 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1556 = load i64, i64* %1555, align 8
  %1557 = shl i64 %1556, 30
  %1558 = or i64 %1554, %1557
  %1559 = xor i64 %1551, %1558
  %1560 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1561 = load i64, i64* %1560, align 8
  %1562 = lshr i64 %1561, 39
  %1563 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1564 = load i64, i64* %1563, align 8
  %1565 = shl i64 %1564, 25
  %1566 = or i64 %1562, %1565
  %1567 = xor i64 %1559, %1566
  %1568 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1569 = load i64, i64* %1568, align 8
  %1570 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1571 = load i64, i64* %1570, align 8
  %1572 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1573 = load i64, i64* %1572, align 8
  %1574 = or i64 %1571, %1573
  %1575 = and i64 %1569, %1574
  %1576 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1577 = load i64, i64* %1576, align 8
  %1578 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1579 = load i64, i64* %1578, align 8
  %1580 = and i64 %1577, %1579
  %1581 = or i64 %1575, %1580
  %1582 = add i64 %1567, %1581
  store i64 %1582, i64* %8, align 8
  %1583 = load i64, i64* %7, align 8
  %1584 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1585 = load i64, i64* %1584, align 8
  %1586 = add i64 %1585, %1583
  store i64 %1586, i64* %1584, align 8
  %1587 = load i64, i64* %7, align 8
  %1588 = load i64, i64* %8, align 8
  %1589 = add i64 %1587, %1588
  %1590 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  store i64 %1589, i64* %1590, align 8
  %1591 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1592 = load i64, i64* %1591, align 8
  %1593 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1594 = load i64, i64* %1593, align 8
  %1595 = lshr i64 %1594, 14
  %1596 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1597 = load i64, i64* %1596, align 8
  %1598 = shl i64 %1597, 50
  %1599 = or i64 %1595, %1598
  %1600 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1601 = load i64, i64* %1600, align 8
  %1602 = lshr i64 %1601, 18
  %1603 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1604 = load i64, i64* %1603, align 8
  %1605 = shl i64 %1604, 46
  %1606 = or i64 %1602, %1605
  %1607 = xor i64 %1599, %1606
  %1608 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1609 = load i64, i64* %1608, align 8
  %1610 = lshr i64 %1609, 41
  %1611 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1612 = load i64, i64* %1611, align 8
  %1613 = shl i64 %1612, 23
  %1614 = or i64 %1610, %1613
  %1615 = xor i64 %1607, %1614
  %1616 = add i64 %1592, %1615
  %1617 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1618 = load i64, i64* %1617, align 8
  %1619 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1620 = load i64, i64* %1619, align 8
  %1621 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1622 = load i64, i64* %1621, align 8
  %1623 = xor i64 %1620, %1622
  %1624 = and i64 %1618, %1623
  %1625 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1626 = load i64, i64* %1625, align 8
  %1627 = xor i64 %1624, %1626
  %1628 = add i64 %1616, %1627
  %1629 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 17
  %1630 = load i64, i64* %1629, align 8
  %1631 = add i64 %1628, %1630
  %1632 = add i64 %1631, -1171420211273849373
  store i64 %1632, i64* %7, align 8
  %1633 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1634 = load i64, i64* %1633, align 8
  %1635 = lshr i64 %1634, 28
  %1636 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1637 = load i64, i64* %1636, align 8
  %1638 = shl i64 %1637, 36
  %1639 = or i64 %1635, %1638
  %1640 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1641 = load i64, i64* %1640, align 8
  %1642 = lshr i64 %1641, 34
  %1643 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1644 = load i64, i64* %1643, align 8
  %1645 = shl i64 %1644, 30
  %1646 = or i64 %1642, %1645
  %1647 = xor i64 %1639, %1646
  %1648 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1649 = load i64, i64* %1648, align 8
  %1650 = lshr i64 %1649, 39
  %1651 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1652 = load i64, i64* %1651, align 8
  %1653 = shl i64 %1652, 25
  %1654 = or i64 %1650, %1653
  %1655 = xor i64 %1647, %1654
  %1656 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1657 = load i64, i64* %1656, align 8
  %1658 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1659 = load i64, i64* %1658, align 8
  %1660 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1661 = load i64, i64* %1660, align 8
  %1662 = or i64 %1659, %1661
  %1663 = and i64 %1657, %1662
  %1664 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1665 = load i64, i64* %1664, align 8
  %1666 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1667 = load i64, i64* %1666, align 8
  %1668 = and i64 %1665, %1667
  %1669 = or i64 %1663, %1668
  %1670 = add i64 %1655, %1669
  store i64 %1670, i64* %8, align 8
  %1671 = load i64, i64* %7, align 8
  %1672 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1673 = load i64, i64* %1672, align 8
  %1674 = add i64 %1673, %1671
  store i64 %1674, i64* %1672, align 8
  %1675 = load i64, i64* %7, align 8
  %1676 = load i64, i64* %8, align 8
  %1677 = add i64 %1675, %1676
  %1678 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  store i64 %1677, i64* %1678, align 8
  %1679 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1680 = load i64, i64* %1679, align 8
  %1681 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1682 = load i64, i64* %1681, align 8
  %1683 = lshr i64 %1682, 14
  %1684 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1685 = load i64, i64* %1684, align 8
  %1686 = shl i64 %1685, 50
  %1687 = or i64 %1683, %1686
  %1688 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1689 = load i64, i64* %1688, align 8
  %1690 = lshr i64 %1689, 18
  %1691 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1692 = load i64, i64* %1691, align 8
  %1693 = shl i64 %1692, 46
  %1694 = or i64 %1690, %1693
  %1695 = xor i64 %1687, %1694
  %1696 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1697 = load i64, i64* %1696, align 8
  %1698 = lshr i64 %1697, 41
  %1699 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1700 = load i64, i64* %1699, align 8
  %1701 = shl i64 %1700, 23
  %1702 = or i64 %1698, %1701
  %1703 = xor i64 %1695, %1702
  %1704 = add i64 %1680, %1703
  %1705 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1706 = load i64, i64* %1705, align 8
  %1707 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1708 = load i64, i64* %1707, align 8
  %1709 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1710 = load i64, i64* %1709, align 8
  %1711 = xor i64 %1708, %1710
  %1712 = and i64 %1706, %1711
  %1713 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1714 = load i64, i64* %1713, align 8
  %1715 = xor i64 %1712, %1714
  %1716 = add i64 %1704, %1715
  %1717 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 18
  %1718 = load i64, i64* %1717, align 8
  %1719 = add i64 %1716, %1718
  %1720 = add i64 %1719, 1135362057144423861
  store i64 %1720, i64* %7, align 8
  %1721 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1722 = load i64, i64* %1721, align 8
  %1723 = lshr i64 %1722, 28
  %1724 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1725 = load i64, i64* %1724, align 8
  %1726 = shl i64 %1725, 36
  %1727 = or i64 %1723, %1726
  %1728 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1729 = load i64, i64* %1728, align 8
  %1730 = lshr i64 %1729, 34
  %1731 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1732 = load i64, i64* %1731, align 8
  %1733 = shl i64 %1732, 30
  %1734 = or i64 %1730, %1733
  %1735 = xor i64 %1727, %1734
  %1736 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1737 = load i64, i64* %1736, align 8
  %1738 = lshr i64 %1737, 39
  %1739 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1740 = load i64, i64* %1739, align 8
  %1741 = shl i64 %1740, 25
  %1742 = or i64 %1738, %1741
  %1743 = xor i64 %1735, %1742
  %1744 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1745 = load i64, i64* %1744, align 8
  %1746 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1747 = load i64, i64* %1746, align 8
  %1748 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1749 = load i64, i64* %1748, align 8
  %1750 = or i64 %1747, %1749
  %1751 = and i64 %1745, %1750
  %1752 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1753 = load i64, i64* %1752, align 8
  %1754 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1755 = load i64, i64* %1754, align 8
  %1756 = and i64 %1753, %1755
  %1757 = or i64 %1751, %1756
  %1758 = add i64 %1743, %1757
  store i64 %1758, i64* %8, align 8
  %1759 = load i64, i64* %7, align 8
  %1760 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1761 = load i64, i64* %1760, align 8
  %1762 = add i64 %1761, %1759
  store i64 %1762, i64* %1760, align 8
  %1763 = load i64, i64* %7, align 8
  %1764 = load i64, i64* %8, align 8
  %1765 = add i64 %1763, %1764
  %1766 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  store i64 %1765, i64* %1766, align 8
  %1767 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1768 = load i64, i64* %1767, align 8
  %1769 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1770 = load i64, i64* %1769, align 8
  %1771 = lshr i64 %1770, 14
  %1772 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1773 = load i64, i64* %1772, align 8
  %1774 = shl i64 %1773, 50
  %1775 = or i64 %1771, %1774
  %1776 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1777 = load i64, i64* %1776, align 8
  %1778 = lshr i64 %1777, 18
  %1779 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1780 = load i64, i64* %1779, align 8
  %1781 = shl i64 %1780, 46
  %1782 = or i64 %1778, %1781
  %1783 = xor i64 %1775, %1782
  %1784 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1785 = load i64, i64* %1784, align 8
  %1786 = lshr i64 %1785, 41
  %1787 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1788 = load i64, i64* %1787, align 8
  %1789 = shl i64 %1788, 23
  %1790 = or i64 %1786, %1789
  %1791 = xor i64 %1783, %1790
  %1792 = add i64 %1768, %1791
  %1793 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1794 = load i64, i64* %1793, align 8
  %1795 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1796 = load i64, i64* %1795, align 8
  %1797 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1798 = load i64, i64* %1797, align 8
  %1799 = xor i64 %1796, %1798
  %1800 = and i64 %1794, %1799
  %1801 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1802 = load i64, i64* %1801, align 8
  %1803 = xor i64 %1800, %1802
  %1804 = add i64 %1792, %1803
  %1805 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 19
  %1806 = load i64, i64* %1805, align 8
  %1807 = add i64 %1804, %1806
  %1808 = add i64 %1807, 2597628984639134821
  store i64 %1808, i64* %7, align 8
  %1809 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1810 = load i64, i64* %1809, align 8
  %1811 = lshr i64 %1810, 28
  %1812 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1813 = load i64, i64* %1812, align 8
  %1814 = shl i64 %1813, 36
  %1815 = or i64 %1811, %1814
  %1816 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1817 = load i64, i64* %1816, align 8
  %1818 = lshr i64 %1817, 34
  %1819 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1820 = load i64, i64* %1819, align 8
  %1821 = shl i64 %1820, 30
  %1822 = or i64 %1818, %1821
  %1823 = xor i64 %1815, %1822
  %1824 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1825 = load i64, i64* %1824, align 8
  %1826 = lshr i64 %1825, 39
  %1827 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1828 = load i64, i64* %1827, align 8
  %1829 = shl i64 %1828, 25
  %1830 = or i64 %1826, %1829
  %1831 = xor i64 %1823, %1830
  %1832 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1833 = load i64, i64* %1832, align 8
  %1834 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1835 = load i64, i64* %1834, align 8
  %1836 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1837 = load i64, i64* %1836, align 8
  %1838 = or i64 %1835, %1837
  %1839 = and i64 %1833, %1838
  %1840 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1841 = load i64, i64* %1840, align 8
  %1842 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1843 = load i64, i64* %1842, align 8
  %1844 = and i64 %1841, %1843
  %1845 = or i64 %1839, %1844
  %1846 = add i64 %1831, %1845
  store i64 %1846, i64* %8, align 8
  %1847 = load i64, i64* %7, align 8
  %1848 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1849 = load i64, i64* %1848, align 8
  %1850 = add i64 %1849, %1847
  store i64 %1850, i64* %1848, align 8
  %1851 = load i64, i64* %7, align 8
  %1852 = load i64, i64* %8, align 8
  %1853 = add i64 %1851, %1852
  %1854 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  store i64 %1853, i64* %1854, align 8
  %1855 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1856 = load i64, i64* %1855, align 8
  %1857 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1858 = load i64, i64* %1857, align 8
  %1859 = lshr i64 %1858, 14
  %1860 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1861 = load i64, i64* %1860, align 8
  %1862 = shl i64 %1861, 50
  %1863 = or i64 %1859, %1862
  %1864 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1865 = load i64, i64* %1864, align 8
  %1866 = lshr i64 %1865, 18
  %1867 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1868 = load i64, i64* %1867, align 8
  %1869 = shl i64 %1868, 46
  %1870 = or i64 %1866, %1869
  %1871 = xor i64 %1863, %1870
  %1872 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1873 = load i64, i64* %1872, align 8
  %1874 = lshr i64 %1873, 41
  %1875 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1876 = load i64, i64* %1875, align 8
  %1877 = shl i64 %1876, 23
  %1878 = or i64 %1874, %1877
  %1879 = xor i64 %1871, %1878
  %1880 = add i64 %1856, %1879
  %1881 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1882 = load i64, i64* %1881, align 8
  %1883 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1884 = load i64, i64* %1883, align 8
  %1885 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1886 = load i64, i64* %1885, align 8
  %1887 = xor i64 %1884, %1886
  %1888 = and i64 %1882, %1887
  %1889 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1890 = load i64, i64* %1889, align 8
  %1891 = xor i64 %1888, %1890
  %1892 = add i64 %1880, %1891
  %1893 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 20
  %1894 = load i64, i64* %1893, align 8
  %1895 = add i64 %1892, %1894
  %1896 = add i64 %1895, 3308224258029322869
  store i64 %1896, i64* %7, align 8
  %1897 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1898 = load i64, i64* %1897, align 8
  %1899 = lshr i64 %1898, 28
  %1900 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1901 = load i64, i64* %1900, align 8
  %1902 = shl i64 %1901, 36
  %1903 = or i64 %1899, %1902
  %1904 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1905 = load i64, i64* %1904, align 8
  %1906 = lshr i64 %1905, 34
  %1907 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1908 = load i64, i64* %1907, align 8
  %1909 = shl i64 %1908, 30
  %1910 = or i64 %1906, %1909
  %1911 = xor i64 %1903, %1910
  %1912 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1913 = load i64, i64* %1912, align 8
  %1914 = lshr i64 %1913, 39
  %1915 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1916 = load i64, i64* %1915, align 8
  %1917 = shl i64 %1916, 25
  %1918 = or i64 %1914, %1917
  %1919 = xor i64 %1911, %1918
  %1920 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %1921 = load i64, i64* %1920, align 8
  %1922 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1923 = load i64, i64* %1922, align 8
  %1924 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1925 = load i64, i64* %1924, align 8
  %1926 = or i64 %1923, %1925
  %1927 = and i64 %1921, %1926
  %1928 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %1929 = load i64, i64* %1928, align 8
  %1930 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %1931 = load i64, i64* %1930, align 8
  %1932 = and i64 %1929, %1931
  %1933 = or i64 %1927, %1932
  %1934 = add i64 %1919, %1933
  store i64 %1934, i64* %8, align 8
  %1935 = load i64, i64* %7, align 8
  %1936 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1937 = load i64, i64* %1936, align 8
  %1938 = add i64 %1937, %1935
  store i64 %1938, i64* %1936, align 8
  %1939 = load i64, i64* %7, align 8
  %1940 = load i64, i64* %8, align 8
  %1941 = add i64 %1939, %1940
  %1942 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  store i64 %1941, i64* %1942, align 8
  %1943 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %1944 = load i64, i64* %1943, align 8
  %1945 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1946 = load i64, i64* %1945, align 8
  %1947 = lshr i64 %1946, 14
  %1948 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1949 = load i64, i64* %1948, align 8
  %1950 = shl i64 %1949, 50
  %1951 = or i64 %1947, %1950
  %1952 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1953 = load i64, i64* %1952, align 8
  %1954 = lshr i64 %1953, 18
  %1955 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1956 = load i64, i64* %1955, align 8
  %1957 = shl i64 %1956, 46
  %1958 = or i64 %1954, %1957
  %1959 = xor i64 %1951, %1958
  %1960 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1961 = load i64, i64* %1960, align 8
  %1962 = lshr i64 %1961, 41
  %1963 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1964 = load i64, i64* %1963, align 8
  %1965 = shl i64 %1964, 23
  %1966 = or i64 %1962, %1965
  %1967 = xor i64 %1959, %1966
  %1968 = add i64 %1944, %1967
  %1969 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %1970 = load i64, i64* %1969, align 8
  %1971 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %1972 = load i64, i64* %1971, align 8
  %1973 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1974 = load i64, i64* %1973, align 8
  %1975 = xor i64 %1972, %1974
  %1976 = and i64 %1970, %1975
  %1977 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %1978 = load i64, i64* %1977, align 8
  %1979 = xor i64 %1976, %1978
  %1980 = add i64 %1968, %1979
  %1981 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 21
  %1982 = load i64, i64* %1981, align 8
  %1983 = add i64 %1980, %1982
  %1984 = add i64 %1983, 5365058923640841347
  store i64 %1984, i64* %7, align 8
  %1985 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1986 = load i64, i64* %1985, align 8
  %1987 = lshr i64 %1986, 28
  %1988 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1989 = load i64, i64* %1988, align 8
  %1990 = shl i64 %1989, 36
  %1991 = or i64 %1987, %1990
  %1992 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1993 = load i64, i64* %1992, align 8
  %1994 = lshr i64 %1993, 34
  %1995 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %1996 = load i64, i64* %1995, align 8
  %1997 = shl i64 %1996, 30
  %1998 = or i64 %1994, %1997
  %1999 = xor i64 %1991, %1998
  %2000 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2001 = load i64, i64* %2000, align 8
  %2002 = lshr i64 %2001, 39
  %2003 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2004 = load i64, i64* %2003, align 8
  %2005 = shl i64 %2004, 25
  %2006 = or i64 %2002, %2005
  %2007 = xor i64 %1999, %2006
  %2008 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2009 = load i64, i64* %2008, align 8
  %2010 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2011 = load i64, i64* %2010, align 8
  %2012 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2013 = load i64, i64* %2012, align 8
  %2014 = or i64 %2011, %2013
  %2015 = and i64 %2009, %2014
  %2016 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2017 = load i64, i64* %2016, align 8
  %2018 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2019 = load i64, i64* %2018, align 8
  %2020 = and i64 %2017, %2019
  %2021 = or i64 %2015, %2020
  %2022 = add i64 %2007, %2021
  store i64 %2022, i64* %8, align 8
  %2023 = load i64, i64* %7, align 8
  %2024 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2025 = load i64, i64* %2024, align 8
  %2026 = add i64 %2025, %2023
  store i64 %2026, i64* %2024, align 8
  %2027 = load i64, i64* %7, align 8
  %2028 = load i64, i64* %8, align 8
  %2029 = add i64 %2027, %2028
  %2030 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  store i64 %2029, i64* %2030, align 8
  %2031 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2032 = load i64, i64* %2031, align 8
  %2033 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2034 = load i64, i64* %2033, align 8
  %2035 = lshr i64 %2034, 14
  %2036 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2037 = load i64, i64* %2036, align 8
  %2038 = shl i64 %2037, 50
  %2039 = or i64 %2035, %2038
  %2040 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2041 = load i64, i64* %2040, align 8
  %2042 = lshr i64 %2041, 18
  %2043 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2044 = load i64, i64* %2043, align 8
  %2045 = shl i64 %2044, 46
  %2046 = or i64 %2042, %2045
  %2047 = xor i64 %2039, %2046
  %2048 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2049 = load i64, i64* %2048, align 8
  %2050 = lshr i64 %2049, 41
  %2051 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2052 = load i64, i64* %2051, align 8
  %2053 = shl i64 %2052, 23
  %2054 = or i64 %2050, %2053
  %2055 = xor i64 %2047, %2054
  %2056 = add i64 %2032, %2055
  %2057 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2058 = load i64, i64* %2057, align 8
  %2059 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2060 = load i64, i64* %2059, align 8
  %2061 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2062 = load i64, i64* %2061, align 8
  %2063 = xor i64 %2060, %2062
  %2064 = and i64 %2058, %2063
  %2065 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2066 = load i64, i64* %2065, align 8
  %2067 = xor i64 %2064, %2066
  %2068 = add i64 %2056, %2067
  %2069 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 22
  %2070 = load i64, i64* %2069, align 8
  %2071 = add i64 %2068, %2070
  %2072 = add i64 %2071, 6679025012923562964
  store i64 %2072, i64* %7, align 8
  %2073 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2074 = load i64, i64* %2073, align 8
  %2075 = lshr i64 %2074, 28
  %2076 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2077 = load i64, i64* %2076, align 8
  %2078 = shl i64 %2077, 36
  %2079 = or i64 %2075, %2078
  %2080 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2081 = load i64, i64* %2080, align 8
  %2082 = lshr i64 %2081, 34
  %2083 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2084 = load i64, i64* %2083, align 8
  %2085 = shl i64 %2084, 30
  %2086 = or i64 %2082, %2085
  %2087 = xor i64 %2079, %2086
  %2088 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2089 = load i64, i64* %2088, align 8
  %2090 = lshr i64 %2089, 39
  %2091 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2092 = load i64, i64* %2091, align 8
  %2093 = shl i64 %2092, 25
  %2094 = or i64 %2090, %2093
  %2095 = xor i64 %2087, %2094
  %2096 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2097 = load i64, i64* %2096, align 8
  %2098 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2099 = load i64, i64* %2098, align 8
  %2100 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2101 = load i64, i64* %2100, align 8
  %2102 = or i64 %2099, %2101
  %2103 = and i64 %2097, %2102
  %2104 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2105 = load i64, i64* %2104, align 8
  %2106 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2107 = load i64, i64* %2106, align 8
  %2108 = and i64 %2105, %2107
  %2109 = or i64 %2103, %2108
  %2110 = add i64 %2095, %2109
  store i64 %2110, i64* %8, align 8
  %2111 = load i64, i64* %7, align 8
  %2112 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2113 = load i64, i64* %2112, align 8
  %2114 = add i64 %2113, %2111
  store i64 %2114, i64* %2112, align 8
  %2115 = load i64, i64* %7, align 8
  %2116 = load i64, i64* %8, align 8
  %2117 = add i64 %2115, %2116
  %2118 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  store i64 %2117, i64* %2118, align 8
  %2119 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2120 = load i64, i64* %2119, align 8
  %2121 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2122 = load i64, i64* %2121, align 8
  %2123 = lshr i64 %2122, 14
  %2124 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2125 = load i64, i64* %2124, align 8
  %2126 = shl i64 %2125, 50
  %2127 = or i64 %2123, %2126
  %2128 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2129 = load i64, i64* %2128, align 8
  %2130 = lshr i64 %2129, 18
  %2131 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2132 = load i64, i64* %2131, align 8
  %2133 = shl i64 %2132, 46
  %2134 = or i64 %2130, %2133
  %2135 = xor i64 %2127, %2134
  %2136 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2137 = load i64, i64* %2136, align 8
  %2138 = lshr i64 %2137, 41
  %2139 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2140 = load i64, i64* %2139, align 8
  %2141 = shl i64 %2140, 23
  %2142 = or i64 %2138, %2141
  %2143 = xor i64 %2135, %2142
  %2144 = add i64 %2120, %2143
  %2145 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2146 = load i64, i64* %2145, align 8
  %2147 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2148 = load i64, i64* %2147, align 8
  %2149 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2150 = load i64, i64* %2149, align 8
  %2151 = xor i64 %2148, %2150
  %2152 = and i64 %2146, %2151
  %2153 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2154 = load i64, i64* %2153, align 8
  %2155 = xor i64 %2152, %2154
  %2156 = add i64 %2144, %2155
  %2157 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 23
  %2158 = load i64, i64* %2157, align 8
  %2159 = add i64 %2156, %2158
  %2160 = add i64 %2159, 8573033837759648693
  store i64 %2160, i64* %7, align 8
  %2161 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2162 = load i64, i64* %2161, align 8
  %2163 = lshr i64 %2162, 28
  %2164 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2165 = load i64, i64* %2164, align 8
  %2166 = shl i64 %2165, 36
  %2167 = or i64 %2163, %2166
  %2168 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2169 = load i64, i64* %2168, align 8
  %2170 = lshr i64 %2169, 34
  %2171 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2172 = load i64, i64* %2171, align 8
  %2173 = shl i64 %2172, 30
  %2174 = or i64 %2170, %2173
  %2175 = xor i64 %2167, %2174
  %2176 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2177 = load i64, i64* %2176, align 8
  %2178 = lshr i64 %2177, 39
  %2179 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2180 = load i64, i64* %2179, align 8
  %2181 = shl i64 %2180, 25
  %2182 = or i64 %2178, %2181
  %2183 = xor i64 %2175, %2182
  %2184 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2185 = load i64, i64* %2184, align 8
  %2186 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2187 = load i64, i64* %2186, align 8
  %2188 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2189 = load i64, i64* %2188, align 8
  %2190 = or i64 %2187, %2189
  %2191 = and i64 %2185, %2190
  %2192 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2193 = load i64, i64* %2192, align 8
  %2194 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2195 = load i64, i64* %2194, align 8
  %2196 = and i64 %2193, %2195
  %2197 = or i64 %2191, %2196
  %2198 = add i64 %2183, %2197
  store i64 %2198, i64* %8, align 8
  %2199 = load i64, i64* %7, align 8
  %2200 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2201 = load i64, i64* %2200, align 8
  %2202 = add i64 %2201, %2199
  store i64 %2202, i64* %2200, align 8
  %2203 = load i64, i64* %7, align 8
  %2204 = load i64, i64* %8, align 8
  %2205 = add i64 %2203, %2204
  %2206 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  store i64 %2205, i64* %2206, align 8
  %2207 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2208 = load i64, i64* %2207, align 8
  %2209 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2210 = load i64, i64* %2209, align 8
  %2211 = lshr i64 %2210, 14
  %2212 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2213 = load i64, i64* %2212, align 8
  %2214 = shl i64 %2213, 50
  %2215 = or i64 %2211, %2214
  %2216 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2217 = load i64, i64* %2216, align 8
  %2218 = lshr i64 %2217, 18
  %2219 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2220 = load i64, i64* %2219, align 8
  %2221 = shl i64 %2220, 46
  %2222 = or i64 %2218, %2221
  %2223 = xor i64 %2215, %2222
  %2224 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2225 = load i64, i64* %2224, align 8
  %2226 = lshr i64 %2225, 41
  %2227 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2228 = load i64, i64* %2227, align 8
  %2229 = shl i64 %2228, 23
  %2230 = or i64 %2226, %2229
  %2231 = xor i64 %2223, %2230
  %2232 = add i64 %2208, %2231
  %2233 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2234 = load i64, i64* %2233, align 8
  %2235 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2236 = load i64, i64* %2235, align 8
  %2237 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2238 = load i64, i64* %2237, align 8
  %2239 = xor i64 %2236, %2238
  %2240 = and i64 %2234, %2239
  %2241 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2242 = load i64, i64* %2241, align 8
  %2243 = xor i64 %2240, %2242
  %2244 = add i64 %2232, %2243
  %2245 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 24
  %2246 = load i64, i64* %2245, align 8
  %2247 = add i64 %2244, %2246
  %2248 = add i64 %2247, -7476448914759557205
  store i64 %2248, i64* %7, align 8
  %2249 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2250 = load i64, i64* %2249, align 8
  %2251 = lshr i64 %2250, 28
  %2252 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2253 = load i64, i64* %2252, align 8
  %2254 = shl i64 %2253, 36
  %2255 = or i64 %2251, %2254
  %2256 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2257 = load i64, i64* %2256, align 8
  %2258 = lshr i64 %2257, 34
  %2259 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2260 = load i64, i64* %2259, align 8
  %2261 = shl i64 %2260, 30
  %2262 = or i64 %2258, %2261
  %2263 = xor i64 %2255, %2262
  %2264 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2265 = load i64, i64* %2264, align 8
  %2266 = lshr i64 %2265, 39
  %2267 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2268 = load i64, i64* %2267, align 8
  %2269 = shl i64 %2268, 25
  %2270 = or i64 %2266, %2269
  %2271 = xor i64 %2263, %2270
  %2272 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2273 = load i64, i64* %2272, align 8
  %2274 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2275 = load i64, i64* %2274, align 8
  %2276 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2277 = load i64, i64* %2276, align 8
  %2278 = or i64 %2275, %2277
  %2279 = and i64 %2273, %2278
  %2280 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2281 = load i64, i64* %2280, align 8
  %2282 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2283 = load i64, i64* %2282, align 8
  %2284 = and i64 %2281, %2283
  %2285 = or i64 %2279, %2284
  %2286 = add i64 %2271, %2285
  store i64 %2286, i64* %8, align 8
  %2287 = load i64, i64* %7, align 8
  %2288 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2289 = load i64, i64* %2288, align 8
  %2290 = add i64 %2289, %2287
  store i64 %2290, i64* %2288, align 8
  %2291 = load i64, i64* %7, align 8
  %2292 = load i64, i64* %8, align 8
  %2293 = add i64 %2291, %2292
  %2294 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  store i64 %2293, i64* %2294, align 8
  %2295 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2296 = load i64, i64* %2295, align 8
  %2297 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2298 = load i64, i64* %2297, align 8
  %2299 = lshr i64 %2298, 14
  %2300 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2301 = load i64, i64* %2300, align 8
  %2302 = shl i64 %2301, 50
  %2303 = or i64 %2299, %2302
  %2304 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2305 = load i64, i64* %2304, align 8
  %2306 = lshr i64 %2305, 18
  %2307 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2308 = load i64, i64* %2307, align 8
  %2309 = shl i64 %2308, 46
  %2310 = or i64 %2306, %2309
  %2311 = xor i64 %2303, %2310
  %2312 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2313 = load i64, i64* %2312, align 8
  %2314 = lshr i64 %2313, 41
  %2315 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2316 = load i64, i64* %2315, align 8
  %2317 = shl i64 %2316, 23
  %2318 = or i64 %2314, %2317
  %2319 = xor i64 %2311, %2318
  %2320 = add i64 %2296, %2319
  %2321 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2322 = load i64, i64* %2321, align 8
  %2323 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2324 = load i64, i64* %2323, align 8
  %2325 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2326 = load i64, i64* %2325, align 8
  %2327 = xor i64 %2324, %2326
  %2328 = and i64 %2322, %2327
  %2329 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2330 = load i64, i64* %2329, align 8
  %2331 = xor i64 %2328, %2330
  %2332 = add i64 %2320, %2331
  %2333 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 25
  %2334 = load i64, i64* %2333, align 8
  %2335 = add i64 %2332, %2334
  %2336 = add i64 %2335, -6327057829258317296
  store i64 %2336, i64* %7, align 8
  %2337 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2338 = load i64, i64* %2337, align 8
  %2339 = lshr i64 %2338, 28
  %2340 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2341 = load i64, i64* %2340, align 8
  %2342 = shl i64 %2341, 36
  %2343 = or i64 %2339, %2342
  %2344 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2345 = load i64, i64* %2344, align 8
  %2346 = lshr i64 %2345, 34
  %2347 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2348 = load i64, i64* %2347, align 8
  %2349 = shl i64 %2348, 30
  %2350 = or i64 %2346, %2349
  %2351 = xor i64 %2343, %2350
  %2352 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2353 = load i64, i64* %2352, align 8
  %2354 = lshr i64 %2353, 39
  %2355 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2356 = load i64, i64* %2355, align 8
  %2357 = shl i64 %2356, 25
  %2358 = or i64 %2354, %2357
  %2359 = xor i64 %2351, %2358
  %2360 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2361 = load i64, i64* %2360, align 8
  %2362 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2363 = load i64, i64* %2362, align 8
  %2364 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2365 = load i64, i64* %2364, align 8
  %2366 = or i64 %2363, %2365
  %2367 = and i64 %2361, %2366
  %2368 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2369 = load i64, i64* %2368, align 8
  %2370 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2371 = load i64, i64* %2370, align 8
  %2372 = and i64 %2369, %2371
  %2373 = or i64 %2367, %2372
  %2374 = add i64 %2359, %2373
  store i64 %2374, i64* %8, align 8
  %2375 = load i64, i64* %7, align 8
  %2376 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2377 = load i64, i64* %2376, align 8
  %2378 = add i64 %2377, %2375
  store i64 %2378, i64* %2376, align 8
  %2379 = load i64, i64* %7, align 8
  %2380 = load i64, i64* %8, align 8
  %2381 = add i64 %2379, %2380
  %2382 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  store i64 %2381, i64* %2382, align 8
  %2383 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2384 = load i64, i64* %2383, align 8
  %2385 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2386 = load i64, i64* %2385, align 8
  %2387 = lshr i64 %2386, 14
  %2388 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2389 = load i64, i64* %2388, align 8
  %2390 = shl i64 %2389, 50
  %2391 = or i64 %2387, %2390
  %2392 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2393 = load i64, i64* %2392, align 8
  %2394 = lshr i64 %2393, 18
  %2395 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2396 = load i64, i64* %2395, align 8
  %2397 = shl i64 %2396, 46
  %2398 = or i64 %2394, %2397
  %2399 = xor i64 %2391, %2398
  %2400 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2401 = load i64, i64* %2400, align 8
  %2402 = lshr i64 %2401, 41
  %2403 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2404 = load i64, i64* %2403, align 8
  %2405 = shl i64 %2404, 23
  %2406 = or i64 %2402, %2405
  %2407 = xor i64 %2399, %2406
  %2408 = add i64 %2384, %2407
  %2409 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2410 = load i64, i64* %2409, align 8
  %2411 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2412 = load i64, i64* %2411, align 8
  %2413 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2414 = load i64, i64* %2413, align 8
  %2415 = xor i64 %2412, %2414
  %2416 = and i64 %2410, %2415
  %2417 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2418 = load i64, i64* %2417, align 8
  %2419 = xor i64 %2416, %2418
  %2420 = add i64 %2408, %2419
  %2421 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 26
  %2422 = load i64, i64* %2421, align 8
  %2423 = add i64 %2420, %2422
  %2424 = add i64 %2423, -5763719355590565569
  store i64 %2424, i64* %7, align 8
  %2425 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2426 = load i64, i64* %2425, align 8
  %2427 = lshr i64 %2426, 28
  %2428 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2429 = load i64, i64* %2428, align 8
  %2430 = shl i64 %2429, 36
  %2431 = or i64 %2427, %2430
  %2432 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2433 = load i64, i64* %2432, align 8
  %2434 = lshr i64 %2433, 34
  %2435 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2436 = load i64, i64* %2435, align 8
  %2437 = shl i64 %2436, 30
  %2438 = or i64 %2434, %2437
  %2439 = xor i64 %2431, %2438
  %2440 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2441 = load i64, i64* %2440, align 8
  %2442 = lshr i64 %2441, 39
  %2443 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2444 = load i64, i64* %2443, align 8
  %2445 = shl i64 %2444, 25
  %2446 = or i64 %2442, %2445
  %2447 = xor i64 %2439, %2446
  %2448 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2449 = load i64, i64* %2448, align 8
  %2450 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2451 = load i64, i64* %2450, align 8
  %2452 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2453 = load i64, i64* %2452, align 8
  %2454 = or i64 %2451, %2453
  %2455 = and i64 %2449, %2454
  %2456 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2457 = load i64, i64* %2456, align 8
  %2458 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2459 = load i64, i64* %2458, align 8
  %2460 = and i64 %2457, %2459
  %2461 = or i64 %2455, %2460
  %2462 = add i64 %2447, %2461
  store i64 %2462, i64* %8, align 8
  %2463 = load i64, i64* %7, align 8
  %2464 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2465 = load i64, i64* %2464, align 8
  %2466 = add i64 %2465, %2463
  store i64 %2466, i64* %2464, align 8
  %2467 = load i64, i64* %7, align 8
  %2468 = load i64, i64* %8, align 8
  %2469 = add i64 %2467, %2468
  %2470 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  store i64 %2469, i64* %2470, align 8
  %2471 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2472 = load i64, i64* %2471, align 8
  %2473 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2474 = load i64, i64* %2473, align 8
  %2475 = lshr i64 %2474, 14
  %2476 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2477 = load i64, i64* %2476, align 8
  %2478 = shl i64 %2477, 50
  %2479 = or i64 %2475, %2478
  %2480 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2481 = load i64, i64* %2480, align 8
  %2482 = lshr i64 %2481, 18
  %2483 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2484 = load i64, i64* %2483, align 8
  %2485 = shl i64 %2484, 46
  %2486 = or i64 %2482, %2485
  %2487 = xor i64 %2479, %2486
  %2488 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2489 = load i64, i64* %2488, align 8
  %2490 = lshr i64 %2489, 41
  %2491 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2492 = load i64, i64* %2491, align 8
  %2493 = shl i64 %2492, 23
  %2494 = or i64 %2490, %2493
  %2495 = xor i64 %2487, %2494
  %2496 = add i64 %2472, %2495
  %2497 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2498 = load i64, i64* %2497, align 8
  %2499 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2500 = load i64, i64* %2499, align 8
  %2501 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2502 = load i64, i64* %2501, align 8
  %2503 = xor i64 %2500, %2502
  %2504 = and i64 %2498, %2503
  %2505 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2506 = load i64, i64* %2505, align 8
  %2507 = xor i64 %2504, %2506
  %2508 = add i64 %2496, %2507
  %2509 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 27
  %2510 = load i64, i64* %2509, align 8
  %2511 = add i64 %2508, %2510
  %2512 = add i64 %2511, -4658551843659510044
  store i64 %2512, i64* %7, align 8
  %2513 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2514 = load i64, i64* %2513, align 8
  %2515 = lshr i64 %2514, 28
  %2516 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2517 = load i64, i64* %2516, align 8
  %2518 = shl i64 %2517, 36
  %2519 = or i64 %2515, %2518
  %2520 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2521 = load i64, i64* %2520, align 8
  %2522 = lshr i64 %2521, 34
  %2523 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2524 = load i64, i64* %2523, align 8
  %2525 = shl i64 %2524, 30
  %2526 = or i64 %2522, %2525
  %2527 = xor i64 %2519, %2526
  %2528 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2529 = load i64, i64* %2528, align 8
  %2530 = lshr i64 %2529, 39
  %2531 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2532 = load i64, i64* %2531, align 8
  %2533 = shl i64 %2532, 25
  %2534 = or i64 %2530, %2533
  %2535 = xor i64 %2527, %2534
  %2536 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2537 = load i64, i64* %2536, align 8
  %2538 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2539 = load i64, i64* %2538, align 8
  %2540 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2541 = load i64, i64* %2540, align 8
  %2542 = or i64 %2539, %2541
  %2543 = and i64 %2537, %2542
  %2544 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2545 = load i64, i64* %2544, align 8
  %2546 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2547 = load i64, i64* %2546, align 8
  %2548 = and i64 %2545, %2547
  %2549 = or i64 %2543, %2548
  %2550 = add i64 %2535, %2549
  store i64 %2550, i64* %8, align 8
  %2551 = load i64, i64* %7, align 8
  %2552 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2553 = load i64, i64* %2552, align 8
  %2554 = add i64 %2553, %2551
  store i64 %2554, i64* %2552, align 8
  %2555 = load i64, i64* %7, align 8
  %2556 = load i64, i64* %8, align 8
  %2557 = add i64 %2555, %2556
  %2558 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  store i64 %2557, i64* %2558, align 8
  %2559 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2560 = load i64, i64* %2559, align 8
  %2561 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2562 = load i64, i64* %2561, align 8
  %2563 = lshr i64 %2562, 14
  %2564 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2565 = load i64, i64* %2564, align 8
  %2566 = shl i64 %2565, 50
  %2567 = or i64 %2563, %2566
  %2568 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2569 = load i64, i64* %2568, align 8
  %2570 = lshr i64 %2569, 18
  %2571 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2572 = load i64, i64* %2571, align 8
  %2573 = shl i64 %2572, 46
  %2574 = or i64 %2570, %2573
  %2575 = xor i64 %2567, %2574
  %2576 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2577 = load i64, i64* %2576, align 8
  %2578 = lshr i64 %2577, 41
  %2579 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2580 = load i64, i64* %2579, align 8
  %2581 = shl i64 %2580, 23
  %2582 = or i64 %2578, %2581
  %2583 = xor i64 %2575, %2582
  %2584 = add i64 %2560, %2583
  %2585 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2586 = load i64, i64* %2585, align 8
  %2587 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2588 = load i64, i64* %2587, align 8
  %2589 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2590 = load i64, i64* %2589, align 8
  %2591 = xor i64 %2588, %2590
  %2592 = and i64 %2586, %2591
  %2593 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2594 = load i64, i64* %2593, align 8
  %2595 = xor i64 %2592, %2594
  %2596 = add i64 %2584, %2595
  %2597 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 28
  %2598 = load i64, i64* %2597, align 8
  %2599 = add i64 %2596, %2598
  %2600 = add i64 %2599, -4116276920077217854
  store i64 %2600, i64* %7, align 8
  %2601 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2602 = load i64, i64* %2601, align 8
  %2603 = lshr i64 %2602, 28
  %2604 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2605 = load i64, i64* %2604, align 8
  %2606 = shl i64 %2605, 36
  %2607 = or i64 %2603, %2606
  %2608 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2609 = load i64, i64* %2608, align 8
  %2610 = lshr i64 %2609, 34
  %2611 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2612 = load i64, i64* %2611, align 8
  %2613 = shl i64 %2612, 30
  %2614 = or i64 %2610, %2613
  %2615 = xor i64 %2607, %2614
  %2616 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2617 = load i64, i64* %2616, align 8
  %2618 = lshr i64 %2617, 39
  %2619 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2620 = load i64, i64* %2619, align 8
  %2621 = shl i64 %2620, 25
  %2622 = or i64 %2618, %2621
  %2623 = xor i64 %2615, %2622
  %2624 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2625 = load i64, i64* %2624, align 8
  %2626 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2627 = load i64, i64* %2626, align 8
  %2628 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2629 = load i64, i64* %2628, align 8
  %2630 = or i64 %2627, %2629
  %2631 = and i64 %2625, %2630
  %2632 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2633 = load i64, i64* %2632, align 8
  %2634 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2635 = load i64, i64* %2634, align 8
  %2636 = and i64 %2633, %2635
  %2637 = or i64 %2631, %2636
  %2638 = add i64 %2623, %2637
  store i64 %2638, i64* %8, align 8
  %2639 = load i64, i64* %7, align 8
  %2640 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2641 = load i64, i64* %2640, align 8
  %2642 = add i64 %2641, %2639
  store i64 %2642, i64* %2640, align 8
  %2643 = load i64, i64* %7, align 8
  %2644 = load i64, i64* %8, align 8
  %2645 = add i64 %2643, %2644
  %2646 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  store i64 %2645, i64* %2646, align 8
  %2647 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2648 = load i64, i64* %2647, align 8
  %2649 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2650 = load i64, i64* %2649, align 8
  %2651 = lshr i64 %2650, 14
  %2652 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2653 = load i64, i64* %2652, align 8
  %2654 = shl i64 %2653, 50
  %2655 = or i64 %2651, %2654
  %2656 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2657 = load i64, i64* %2656, align 8
  %2658 = lshr i64 %2657, 18
  %2659 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2660 = load i64, i64* %2659, align 8
  %2661 = shl i64 %2660, 46
  %2662 = or i64 %2658, %2661
  %2663 = xor i64 %2655, %2662
  %2664 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2665 = load i64, i64* %2664, align 8
  %2666 = lshr i64 %2665, 41
  %2667 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2668 = load i64, i64* %2667, align 8
  %2669 = shl i64 %2668, 23
  %2670 = or i64 %2666, %2669
  %2671 = xor i64 %2663, %2670
  %2672 = add i64 %2648, %2671
  %2673 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2674 = load i64, i64* %2673, align 8
  %2675 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2676 = load i64, i64* %2675, align 8
  %2677 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2678 = load i64, i64* %2677, align 8
  %2679 = xor i64 %2676, %2678
  %2680 = and i64 %2674, %2679
  %2681 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2682 = load i64, i64* %2681, align 8
  %2683 = xor i64 %2680, %2682
  %2684 = add i64 %2672, %2683
  %2685 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 29
  %2686 = load i64, i64* %2685, align 8
  %2687 = add i64 %2684, %2686
  %2688 = add i64 %2687, -3051310485924567259
  store i64 %2688, i64* %7, align 8
  %2689 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2690 = load i64, i64* %2689, align 8
  %2691 = lshr i64 %2690, 28
  %2692 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2693 = load i64, i64* %2692, align 8
  %2694 = shl i64 %2693, 36
  %2695 = or i64 %2691, %2694
  %2696 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2697 = load i64, i64* %2696, align 8
  %2698 = lshr i64 %2697, 34
  %2699 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2700 = load i64, i64* %2699, align 8
  %2701 = shl i64 %2700, 30
  %2702 = or i64 %2698, %2701
  %2703 = xor i64 %2695, %2702
  %2704 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2705 = load i64, i64* %2704, align 8
  %2706 = lshr i64 %2705, 39
  %2707 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2708 = load i64, i64* %2707, align 8
  %2709 = shl i64 %2708, 25
  %2710 = or i64 %2706, %2709
  %2711 = xor i64 %2703, %2710
  %2712 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2713 = load i64, i64* %2712, align 8
  %2714 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2715 = load i64, i64* %2714, align 8
  %2716 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2717 = load i64, i64* %2716, align 8
  %2718 = or i64 %2715, %2717
  %2719 = and i64 %2713, %2718
  %2720 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2721 = load i64, i64* %2720, align 8
  %2722 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2723 = load i64, i64* %2722, align 8
  %2724 = and i64 %2721, %2723
  %2725 = or i64 %2719, %2724
  %2726 = add i64 %2711, %2725
  store i64 %2726, i64* %8, align 8
  %2727 = load i64, i64* %7, align 8
  %2728 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2729 = load i64, i64* %2728, align 8
  %2730 = add i64 %2729, %2727
  store i64 %2730, i64* %2728, align 8
  %2731 = load i64, i64* %7, align 8
  %2732 = load i64, i64* %8, align 8
  %2733 = add i64 %2731, %2732
  %2734 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  store i64 %2733, i64* %2734, align 8
  %2735 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2736 = load i64, i64* %2735, align 8
  %2737 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2738 = load i64, i64* %2737, align 8
  %2739 = lshr i64 %2738, 14
  %2740 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2741 = load i64, i64* %2740, align 8
  %2742 = shl i64 %2741, 50
  %2743 = or i64 %2739, %2742
  %2744 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2745 = load i64, i64* %2744, align 8
  %2746 = lshr i64 %2745, 18
  %2747 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2748 = load i64, i64* %2747, align 8
  %2749 = shl i64 %2748, 46
  %2750 = or i64 %2746, %2749
  %2751 = xor i64 %2743, %2750
  %2752 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2753 = load i64, i64* %2752, align 8
  %2754 = lshr i64 %2753, 41
  %2755 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2756 = load i64, i64* %2755, align 8
  %2757 = shl i64 %2756, 23
  %2758 = or i64 %2754, %2757
  %2759 = xor i64 %2751, %2758
  %2760 = add i64 %2736, %2759
  %2761 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2762 = load i64, i64* %2761, align 8
  %2763 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2764 = load i64, i64* %2763, align 8
  %2765 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2766 = load i64, i64* %2765, align 8
  %2767 = xor i64 %2764, %2766
  %2768 = and i64 %2762, %2767
  %2769 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2770 = load i64, i64* %2769, align 8
  %2771 = xor i64 %2768, %2770
  %2772 = add i64 %2760, %2771
  %2773 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 30
  %2774 = load i64, i64* %2773, align 8
  %2775 = add i64 %2772, %2774
  %2776 = add i64 %2775, 489312712824947311
  store i64 %2776, i64* %7, align 8
  %2777 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2778 = load i64, i64* %2777, align 8
  %2779 = lshr i64 %2778, 28
  %2780 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2781 = load i64, i64* %2780, align 8
  %2782 = shl i64 %2781, 36
  %2783 = or i64 %2779, %2782
  %2784 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2785 = load i64, i64* %2784, align 8
  %2786 = lshr i64 %2785, 34
  %2787 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2788 = load i64, i64* %2787, align 8
  %2789 = shl i64 %2788, 30
  %2790 = or i64 %2786, %2789
  %2791 = xor i64 %2783, %2790
  %2792 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2793 = load i64, i64* %2792, align 8
  %2794 = lshr i64 %2793, 39
  %2795 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2796 = load i64, i64* %2795, align 8
  %2797 = shl i64 %2796, 25
  %2798 = or i64 %2794, %2797
  %2799 = xor i64 %2791, %2798
  %2800 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2801 = load i64, i64* %2800, align 8
  %2802 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2803 = load i64, i64* %2802, align 8
  %2804 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2805 = load i64, i64* %2804, align 8
  %2806 = or i64 %2803, %2805
  %2807 = and i64 %2801, %2806
  %2808 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2809 = load i64, i64* %2808, align 8
  %2810 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2811 = load i64, i64* %2810, align 8
  %2812 = and i64 %2809, %2811
  %2813 = or i64 %2807, %2812
  %2814 = add i64 %2799, %2813
  store i64 %2814, i64* %8, align 8
  %2815 = load i64, i64* %7, align 8
  %2816 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2817 = load i64, i64* %2816, align 8
  %2818 = add i64 %2817, %2815
  store i64 %2818, i64* %2816, align 8
  %2819 = load i64, i64* %7, align 8
  %2820 = load i64, i64* %8, align 8
  %2821 = add i64 %2819, %2820
  %2822 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  store i64 %2821, i64* %2822, align 8
  %2823 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2824 = load i64, i64* %2823, align 8
  %2825 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2826 = load i64, i64* %2825, align 8
  %2827 = lshr i64 %2826, 14
  %2828 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2829 = load i64, i64* %2828, align 8
  %2830 = shl i64 %2829, 50
  %2831 = or i64 %2827, %2830
  %2832 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2833 = load i64, i64* %2832, align 8
  %2834 = lshr i64 %2833, 18
  %2835 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2836 = load i64, i64* %2835, align 8
  %2837 = shl i64 %2836, 46
  %2838 = or i64 %2834, %2837
  %2839 = xor i64 %2831, %2838
  %2840 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2841 = load i64, i64* %2840, align 8
  %2842 = lshr i64 %2841, 41
  %2843 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2844 = load i64, i64* %2843, align 8
  %2845 = shl i64 %2844, 23
  %2846 = or i64 %2842, %2845
  %2847 = xor i64 %2839, %2846
  %2848 = add i64 %2824, %2847
  %2849 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2850 = load i64, i64* %2849, align 8
  %2851 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2852 = load i64, i64* %2851, align 8
  %2853 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2854 = load i64, i64* %2853, align 8
  %2855 = xor i64 %2852, %2854
  %2856 = and i64 %2850, %2855
  %2857 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2858 = load i64, i64* %2857, align 8
  %2859 = xor i64 %2856, %2858
  %2860 = add i64 %2848, %2859
  %2861 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 31
  %2862 = load i64, i64* %2861, align 8
  %2863 = add i64 %2860, %2862
  %2864 = add i64 %2863, 1452737877330783856
  store i64 %2864, i64* %7, align 8
  %2865 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2866 = load i64, i64* %2865, align 8
  %2867 = lshr i64 %2866, 28
  %2868 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2869 = load i64, i64* %2868, align 8
  %2870 = shl i64 %2869, 36
  %2871 = or i64 %2867, %2870
  %2872 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2873 = load i64, i64* %2872, align 8
  %2874 = lshr i64 %2873, 34
  %2875 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2876 = load i64, i64* %2875, align 8
  %2877 = shl i64 %2876, 30
  %2878 = or i64 %2874, %2877
  %2879 = xor i64 %2871, %2878
  %2880 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2881 = load i64, i64* %2880, align 8
  %2882 = lshr i64 %2881, 39
  %2883 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2884 = load i64, i64* %2883, align 8
  %2885 = shl i64 %2884, 25
  %2886 = or i64 %2882, %2885
  %2887 = xor i64 %2879, %2886
  %2888 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2889 = load i64, i64* %2888, align 8
  %2890 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2891 = load i64, i64* %2890, align 8
  %2892 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2893 = load i64, i64* %2892, align 8
  %2894 = or i64 %2891, %2893
  %2895 = and i64 %2889, %2894
  %2896 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2897 = load i64, i64* %2896, align 8
  %2898 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2899 = load i64, i64* %2898, align 8
  %2900 = and i64 %2897, %2899
  %2901 = or i64 %2895, %2900
  %2902 = add i64 %2887, %2901
  store i64 %2902, i64* %8, align 8
  %2903 = load i64, i64* %7, align 8
  %2904 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2905 = load i64, i64* %2904, align 8
  %2906 = add i64 %2905, %2903
  store i64 %2906, i64* %2904, align 8
  %2907 = load i64, i64* %7, align 8
  %2908 = load i64, i64* %8, align 8
  %2909 = add i64 %2907, %2908
  %2910 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  store i64 %2909, i64* %2910, align 8
  %2911 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %2912 = load i64, i64* %2911, align 8
  %2913 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2914 = load i64, i64* %2913, align 8
  %2915 = lshr i64 %2914, 14
  %2916 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2917 = load i64, i64* %2916, align 8
  %2918 = shl i64 %2917, 50
  %2919 = or i64 %2915, %2918
  %2920 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2921 = load i64, i64* %2920, align 8
  %2922 = lshr i64 %2921, 18
  %2923 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2924 = load i64, i64* %2923, align 8
  %2925 = shl i64 %2924, 46
  %2926 = or i64 %2922, %2925
  %2927 = xor i64 %2919, %2926
  %2928 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2929 = load i64, i64* %2928, align 8
  %2930 = lshr i64 %2929, 41
  %2931 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2932 = load i64, i64* %2931, align 8
  %2933 = shl i64 %2932, 23
  %2934 = or i64 %2930, %2933
  %2935 = xor i64 %2927, %2934
  %2936 = add i64 %2912, %2935
  %2937 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %2938 = load i64, i64* %2937, align 8
  %2939 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %2940 = load i64, i64* %2939, align 8
  %2941 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2942 = load i64, i64* %2941, align 8
  %2943 = xor i64 %2940, %2942
  %2944 = and i64 %2938, %2943
  %2945 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %2946 = load i64, i64* %2945, align 8
  %2947 = xor i64 %2944, %2946
  %2948 = add i64 %2936, %2947
  %2949 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 32
  %2950 = load i64, i64* %2949, align 8
  %2951 = add i64 %2948, %2950
  %2952 = add i64 %2951, 2861767655752347644
  store i64 %2952, i64* %7, align 8
  %2953 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2954 = load i64, i64* %2953, align 8
  %2955 = lshr i64 %2954, 28
  %2956 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2957 = load i64, i64* %2956, align 8
  %2958 = shl i64 %2957, 36
  %2959 = or i64 %2955, %2958
  %2960 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2961 = load i64, i64* %2960, align 8
  %2962 = lshr i64 %2961, 34
  %2963 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2964 = load i64, i64* %2963, align 8
  %2965 = shl i64 %2964, 30
  %2966 = or i64 %2962, %2965
  %2967 = xor i64 %2959, %2966
  %2968 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2969 = load i64, i64* %2968, align 8
  %2970 = lshr i64 %2969, 39
  %2971 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2972 = load i64, i64* %2971, align 8
  %2973 = shl i64 %2972, 25
  %2974 = or i64 %2970, %2973
  %2975 = xor i64 %2967, %2974
  %2976 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %2977 = load i64, i64* %2976, align 8
  %2978 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2979 = load i64, i64* %2978, align 8
  %2980 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2981 = load i64, i64* %2980, align 8
  %2982 = or i64 %2979, %2981
  %2983 = and i64 %2977, %2982
  %2984 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %2985 = load i64, i64* %2984, align 8
  %2986 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %2987 = load i64, i64* %2986, align 8
  %2988 = and i64 %2985, %2987
  %2989 = or i64 %2983, %2988
  %2990 = add i64 %2975, %2989
  store i64 %2990, i64* %8, align 8
  %2991 = load i64, i64* %7, align 8
  %2992 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %2993 = load i64, i64* %2992, align 8
  %2994 = add i64 %2993, %2991
  store i64 %2994, i64* %2992, align 8
  %2995 = load i64, i64* %7, align 8
  %2996 = load i64, i64* %8, align 8
  %2997 = add i64 %2995, %2996
  %2998 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  store i64 %2997, i64* %2998, align 8
  %2999 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3000 = load i64, i64* %2999, align 8
  %3001 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3002 = load i64, i64* %3001, align 8
  %3003 = lshr i64 %3002, 14
  %3004 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3005 = load i64, i64* %3004, align 8
  %3006 = shl i64 %3005, 50
  %3007 = or i64 %3003, %3006
  %3008 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3009 = load i64, i64* %3008, align 8
  %3010 = lshr i64 %3009, 18
  %3011 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3012 = load i64, i64* %3011, align 8
  %3013 = shl i64 %3012, 46
  %3014 = or i64 %3010, %3013
  %3015 = xor i64 %3007, %3014
  %3016 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3017 = load i64, i64* %3016, align 8
  %3018 = lshr i64 %3017, 41
  %3019 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3020 = load i64, i64* %3019, align 8
  %3021 = shl i64 %3020, 23
  %3022 = or i64 %3018, %3021
  %3023 = xor i64 %3015, %3022
  %3024 = add i64 %3000, %3023
  %3025 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3026 = load i64, i64* %3025, align 8
  %3027 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3028 = load i64, i64* %3027, align 8
  %3029 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3030 = load i64, i64* %3029, align 8
  %3031 = xor i64 %3028, %3030
  %3032 = and i64 %3026, %3031
  %3033 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3034 = load i64, i64* %3033, align 8
  %3035 = xor i64 %3032, %3034
  %3036 = add i64 %3024, %3035
  %3037 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 33
  %3038 = load i64, i64* %3037, align 8
  %3039 = add i64 %3036, %3038
  %3040 = add i64 %3039, 3322285676063803686
  store i64 %3040, i64* %7, align 8
  %3041 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3042 = load i64, i64* %3041, align 8
  %3043 = lshr i64 %3042, 28
  %3044 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3045 = load i64, i64* %3044, align 8
  %3046 = shl i64 %3045, 36
  %3047 = or i64 %3043, %3046
  %3048 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3049 = load i64, i64* %3048, align 8
  %3050 = lshr i64 %3049, 34
  %3051 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3052 = load i64, i64* %3051, align 8
  %3053 = shl i64 %3052, 30
  %3054 = or i64 %3050, %3053
  %3055 = xor i64 %3047, %3054
  %3056 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3057 = load i64, i64* %3056, align 8
  %3058 = lshr i64 %3057, 39
  %3059 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3060 = load i64, i64* %3059, align 8
  %3061 = shl i64 %3060, 25
  %3062 = or i64 %3058, %3061
  %3063 = xor i64 %3055, %3062
  %3064 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3065 = load i64, i64* %3064, align 8
  %3066 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3067 = load i64, i64* %3066, align 8
  %3068 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3069 = load i64, i64* %3068, align 8
  %3070 = or i64 %3067, %3069
  %3071 = and i64 %3065, %3070
  %3072 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3073 = load i64, i64* %3072, align 8
  %3074 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3075 = load i64, i64* %3074, align 8
  %3076 = and i64 %3073, %3075
  %3077 = or i64 %3071, %3076
  %3078 = add i64 %3063, %3077
  store i64 %3078, i64* %8, align 8
  %3079 = load i64, i64* %7, align 8
  %3080 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3081 = load i64, i64* %3080, align 8
  %3082 = add i64 %3081, %3079
  store i64 %3082, i64* %3080, align 8
  %3083 = load i64, i64* %7, align 8
  %3084 = load i64, i64* %8, align 8
  %3085 = add i64 %3083, %3084
  %3086 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  store i64 %3085, i64* %3086, align 8
  %3087 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3088 = load i64, i64* %3087, align 8
  %3089 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3090 = load i64, i64* %3089, align 8
  %3091 = lshr i64 %3090, 14
  %3092 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3093 = load i64, i64* %3092, align 8
  %3094 = shl i64 %3093, 50
  %3095 = or i64 %3091, %3094
  %3096 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3097 = load i64, i64* %3096, align 8
  %3098 = lshr i64 %3097, 18
  %3099 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3100 = load i64, i64* %3099, align 8
  %3101 = shl i64 %3100, 46
  %3102 = or i64 %3098, %3101
  %3103 = xor i64 %3095, %3102
  %3104 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3105 = load i64, i64* %3104, align 8
  %3106 = lshr i64 %3105, 41
  %3107 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3108 = load i64, i64* %3107, align 8
  %3109 = shl i64 %3108, 23
  %3110 = or i64 %3106, %3109
  %3111 = xor i64 %3103, %3110
  %3112 = add i64 %3088, %3111
  %3113 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3114 = load i64, i64* %3113, align 8
  %3115 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3116 = load i64, i64* %3115, align 8
  %3117 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3118 = load i64, i64* %3117, align 8
  %3119 = xor i64 %3116, %3118
  %3120 = and i64 %3114, %3119
  %3121 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3122 = load i64, i64* %3121, align 8
  %3123 = xor i64 %3120, %3122
  %3124 = add i64 %3112, %3123
  %3125 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 34
  %3126 = load i64, i64* %3125, align 8
  %3127 = add i64 %3124, %3126
  %3128 = add i64 %3127, 5560940570517711597
  store i64 %3128, i64* %7, align 8
  %3129 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3130 = load i64, i64* %3129, align 8
  %3131 = lshr i64 %3130, 28
  %3132 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3133 = load i64, i64* %3132, align 8
  %3134 = shl i64 %3133, 36
  %3135 = or i64 %3131, %3134
  %3136 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3137 = load i64, i64* %3136, align 8
  %3138 = lshr i64 %3137, 34
  %3139 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3140 = load i64, i64* %3139, align 8
  %3141 = shl i64 %3140, 30
  %3142 = or i64 %3138, %3141
  %3143 = xor i64 %3135, %3142
  %3144 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3145 = load i64, i64* %3144, align 8
  %3146 = lshr i64 %3145, 39
  %3147 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3148 = load i64, i64* %3147, align 8
  %3149 = shl i64 %3148, 25
  %3150 = or i64 %3146, %3149
  %3151 = xor i64 %3143, %3150
  %3152 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3153 = load i64, i64* %3152, align 8
  %3154 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3155 = load i64, i64* %3154, align 8
  %3156 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3157 = load i64, i64* %3156, align 8
  %3158 = or i64 %3155, %3157
  %3159 = and i64 %3153, %3158
  %3160 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3161 = load i64, i64* %3160, align 8
  %3162 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3163 = load i64, i64* %3162, align 8
  %3164 = and i64 %3161, %3163
  %3165 = or i64 %3159, %3164
  %3166 = add i64 %3151, %3165
  store i64 %3166, i64* %8, align 8
  %3167 = load i64, i64* %7, align 8
  %3168 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3169 = load i64, i64* %3168, align 8
  %3170 = add i64 %3169, %3167
  store i64 %3170, i64* %3168, align 8
  %3171 = load i64, i64* %7, align 8
  %3172 = load i64, i64* %8, align 8
  %3173 = add i64 %3171, %3172
  %3174 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  store i64 %3173, i64* %3174, align 8
  %3175 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3176 = load i64, i64* %3175, align 8
  %3177 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3178 = load i64, i64* %3177, align 8
  %3179 = lshr i64 %3178, 14
  %3180 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3181 = load i64, i64* %3180, align 8
  %3182 = shl i64 %3181, 50
  %3183 = or i64 %3179, %3182
  %3184 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3185 = load i64, i64* %3184, align 8
  %3186 = lshr i64 %3185, 18
  %3187 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3188 = load i64, i64* %3187, align 8
  %3189 = shl i64 %3188, 46
  %3190 = or i64 %3186, %3189
  %3191 = xor i64 %3183, %3190
  %3192 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3193 = load i64, i64* %3192, align 8
  %3194 = lshr i64 %3193, 41
  %3195 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3196 = load i64, i64* %3195, align 8
  %3197 = shl i64 %3196, 23
  %3198 = or i64 %3194, %3197
  %3199 = xor i64 %3191, %3198
  %3200 = add i64 %3176, %3199
  %3201 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3202 = load i64, i64* %3201, align 8
  %3203 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3204 = load i64, i64* %3203, align 8
  %3205 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3206 = load i64, i64* %3205, align 8
  %3207 = xor i64 %3204, %3206
  %3208 = and i64 %3202, %3207
  %3209 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3210 = load i64, i64* %3209, align 8
  %3211 = xor i64 %3208, %3210
  %3212 = add i64 %3200, %3211
  %3213 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 35
  %3214 = load i64, i64* %3213, align 8
  %3215 = add i64 %3212, %3214
  %3216 = add i64 %3215, 5996557281743188959
  store i64 %3216, i64* %7, align 8
  %3217 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3218 = load i64, i64* %3217, align 8
  %3219 = lshr i64 %3218, 28
  %3220 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3221 = load i64, i64* %3220, align 8
  %3222 = shl i64 %3221, 36
  %3223 = or i64 %3219, %3222
  %3224 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3225 = load i64, i64* %3224, align 8
  %3226 = lshr i64 %3225, 34
  %3227 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3228 = load i64, i64* %3227, align 8
  %3229 = shl i64 %3228, 30
  %3230 = or i64 %3226, %3229
  %3231 = xor i64 %3223, %3230
  %3232 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3233 = load i64, i64* %3232, align 8
  %3234 = lshr i64 %3233, 39
  %3235 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3236 = load i64, i64* %3235, align 8
  %3237 = shl i64 %3236, 25
  %3238 = or i64 %3234, %3237
  %3239 = xor i64 %3231, %3238
  %3240 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3241 = load i64, i64* %3240, align 8
  %3242 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3243 = load i64, i64* %3242, align 8
  %3244 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3245 = load i64, i64* %3244, align 8
  %3246 = or i64 %3243, %3245
  %3247 = and i64 %3241, %3246
  %3248 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3249 = load i64, i64* %3248, align 8
  %3250 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3251 = load i64, i64* %3250, align 8
  %3252 = and i64 %3249, %3251
  %3253 = or i64 %3247, %3252
  %3254 = add i64 %3239, %3253
  store i64 %3254, i64* %8, align 8
  %3255 = load i64, i64* %7, align 8
  %3256 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3257 = load i64, i64* %3256, align 8
  %3258 = add i64 %3257, %3255
  store i64 %3258, i64* %3256, align 8
  %3259 = load i64, i64* %7, align 8
  %3260 = load i64, i64* %8, align 8
  %3261 = add i64 %3259, %3260
  %3262 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  store i64 %3261, i64* %3262, align 8
  %3263 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3264 = load i64, i64* %3263, align 8
  %3265 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3266 = load i64, i64* %3265, align 8
  %3267 = lshr i64 %3266, 14
  %3268 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3269 = load i64, i64* %3268, align 8
  %3270 = shl i64 %3269, 50
  %3271 = or i64 %3267, %3270
  %3272 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3273 = load i64, i64* %3272, align 8
  %3274 = lshr i64 %3273, 18
  %3275 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3276 = load i64, i64* %3275, align 8
  %3277 = shl i64 %3276, 46
  %3278 = or i64 %3274, %3277
  %3279 = xor i64 %3271, %3278
  %3280 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3281 = load i64, i64* %3280, align 8
  %3282 = lshr i64 %3281, 41
  %3283 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3284 = load i64, i64* %3283, align 8
  %3285 = shl i64 %3284, 23
  %3286 = or i64 %3282, %3285
  %3287 = xor i64 %3279, %3286
  %3288 = add i64 %3264, %3287
  %3289 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3290 = load i64, i64* %3289, align 8
  %3291 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3292 = load i64, i64* %3291, align 8
  %3293 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3294 = load i64, i64* %3293, align 8
  %3295 = xor i64 %3292, %3294
  %3296 = and i64 %3290, %3295
  %3297 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3298 = load i64, i64* %3297, align 8
  %3299 = xor i64 %3296, %3298
  %3300 = add i64 %3288, %3299
  %3301 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 36
  %3302 = load i64, i64* %3301, align 8
  %3303 = add i64 %3300, %3302
  %3304 = add i64 %3303, 7280758554555802590
  store i64 %3304, i64* %7, align 8
  %3305 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3306 = load i64, i64* %3305, align 8
  %3307 = lshr i64 %3306, 28
  %3308 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3309 = load i64, i64* %3308, align 8
  %3310 = shl i64 %3309, 36
  %3311 = or i64 %3307, %3310
  %3312 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3313 = load i64, i64* %3312, align 8
  %3314 = lshr i64 %3313, 34
  %3315 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3316 = load i64, i64* %3315, align 8
  %3317 = shl i64 %3316, 30
  %3318 = or i64 %3314, %3317
  %3319 = xor i64 %3311, %3318
  %3320 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3321 = load i64, i64* %3320, align 8
  %3322 = lshr i64 %3321, 39
  %3323 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3324 = load i64, i64* %3323, align 8
  %3325 = shl i64 %3324, 25
  %3326 = or i64 %3322, %3325
  %3327 = xor i64 %3319, %3326
  %3328 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3329 = load i64, i64* %3328, align 8
  %3330 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3331 = load i64, i64* %3330, align 8
  %3332 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3333 = load i64, i64* %3332, align 8
  %3334 = or i64 %3331, %3333
  %3335 = and i64 %3329, %3334
  %3336 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3337 = load i64, i64* %3336, align 8
  %3338 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3339 = load i64, i64* %3338, align 8
  %3340 = and i64 %3337, %3339
  %3341 = or i64 %3335, %3340
  %3342 = add i64 %3327, %3341
  store i64 %3342, i64* %8, align 8
  %3343 = load i64, i64* %7, align 8
  %3344 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3345 = load i64, i64* %3344, align 8
  %3346 = add i64 %3345, %3343
  store i64 %3346, i64* %3344, align 8
  %3347 = load i64, i64* %7, align 8
  %3348 = load i64, i64* %8, align 8
  %3349 = add i64 %3347, %3348
  %3350 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  store i64 %3349, i64* %3350, align 8
  %3351 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3352 = load i64, i64* %3351, align 8
  %3353 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3354 = load i64, i64* %3353, align 8
  %3355 = lshr i64 %3354, 14
  %3356 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3357 = load i64, i64* %3356, align 8
  %3358 = shl i64 %3357, 50
  %3359 = or i64 %3355, %3358
  %3360 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3361 = load i64, i64* %3360, align 8
  %3362 = lshr i64 %3361, 18
  %3363 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3364 = load i64, i64* %3363, align 8
  %3365 = shl i64 %3364, 46
  %3366 = or i64 %3362, %3365
  %3367 = xor i64 %3359, %3366
  %3368 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3369 = load i64, i64* %3368, align 8
  %3370 = lshr i64 %3369, 41
  %3371 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3372 = load i64, i64* %3371, align 8
  %3373 = shl i64 %3372, 23
  %3374 = or i64 %3370, %3373
  %3375 = xor i64 %3367, %3374
  %3376 = add i64 %3352, %3375
  %3377 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3378 = load i64, i64* %3377, align 8
  %3379 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3380 = load i64, i64* %3379, align 8
  %3381 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3382 = load i64, i64* %3381, align 8
  %3383 = xor i64 %3380, %3382
  %3384 = and i64 %3378, %3383
  %3385 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3386 = load i64, i64* %3385, align 8
  %3387 = xor i64 %3384, %3386
  %3388 = add i64 %3376, %3387
  %3389 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 37
  %3390 = load i64, i64* %3389, align 8
  %3391 = add i64 %3388, %3390
  %3392 = add i64 %3391, 8532644243296465576
  store i64 %3392, i64* %7, align 8
  %3393 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3394 = load i64, i64* %3393, align 8
  %3395 = lshr i64 %3394, 28
  %3396 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3397 = load i64, i64* %3396, align 8
  %3398 = shl i64 %3397, 36
  %3399 = or i64 %3395, %3398
  %3400 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3401 = load i64, i64* %3400, align 8
  %3402 = lshr i64 %3401, 34
  %3403 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3404 = load i64, i64* %3403, align 8
  %3405 = shl i64 %3404, 30
  %3406 = or i64 %3402, %3405
  %3407 = xor i64 %3399, %3406
  %3408 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3409 = load i64, i64* %3408, align 8
  %3410 = lshr i64 %3409, 39
  %3411 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3412 = load i64, i64* %3411, align 8
  %3413 = shl i64 %3412, 25
  %3414 = or i64 %3410, %3413
  %3415 = xor i64 %3407, %3414
  %3416 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3417 = load i64, i64* %3416, align 8
  %3418 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3419 = load i64, i64* %3418, align 8
  %3420 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3421 = load i64, i64* %3420, align 8
  %3422 = or i64 %3419, %3421
  %3423 = and i64 %3417, %3422
  %3424 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3425 = load i64, i64* %3424, align 8
  %3426 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3427 = load i64, i64* %3426, align 8
  %3428 = and i64 %3425, %3427
  %3429 = or i64 %3423, %3428
  %3430 = add i64 %3415, %3429
  store i64 %3430, i64* %8, align 8
  %3431 = load i64, i64* %7, align 8
  %3432 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3433 = load i64, i64* %3432, align 8
  %3434 = add i64 %3433, %3431
  store i64 %3434, i64* %3432, align 8
  %3435 = load i64, i64* %7, align 8
  %3436 = load i64, i64* %8, align 8
  %3437 = add i64 %3435, %3436
  %3438 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  store i64 %3437, i64* %3438, align 8
  %3439 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3440 = load i64, i64* %3439, align 8
  %3441 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3442 = load i64, i64* %3441, align 8
  %3443 = lshr i64 %3442, 14
  %3444 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3445 = load i64, i64* %3444, align 8
  %3446 = shl i64 %3445, 50
  %3447 = or i64 %3443, %3446
  %3448 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3449 = load i64, i64* %3448, align 8
  %3450 = lshr i64 %3449, 18
  %3451 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3452 = load i64, i64* %3451, align 8
  %3453 = shl i64 %3452, 46
  %3454 = or i64 %3450, %3453
  %3455 = xor i64 %3447, %3454
  %3456 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3457 = load i64, i64* %3456, align 8
  %3458 = lshr i64 %3457, 41
  %3459 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3460 = load i64, i64* %3459, align 8
  %3461 = shl i64 %3460, 23
  %3462 = or i64 %3458, %3461
  %3463 = xor i64 %3455, %3462
  %3464 = add i64 %3440, %3463
  %3465 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3466 = load i64, i64* %3465, align 8
  %3467 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3468 = load i64, i64* %3467, align 8
  %3469 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3470 = load i64, i64* %3469, align 8
  %3471 = xor i64 %3468, %3470
  %3472 = and i64 %3466, %3471
  %3473 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3474 = load i64, i64* %3473, align 8
  %3475 = xor i64 %3472, %3474
  %3476 = add i64 %3464, %3475
  %3477 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 38
  %3478 = load i64, i64* %3477, align 8
  %3479 = add i64 %3476, %3478
  %3480 = add i64 %3479, -9096487096722542874
  store i64 %3480, i64* %7, align 8
  %3481 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3482 = load i64, i64* %3481, align 8
  %3483 = lshr i64 %3482, 28
  %3484 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3485 = load i64, i64* %3484, align 8
  %3486 = shl i64 %3485, 36
  %3487 = or i64 %3483, %3486
  %3488 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3489 = load i64, i64* %3488, align 8
  %3490 = lshr i64 %3489, 34
  %3491 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3492 = load i64, i64* %3491, align 8
  %3493 = shl i64 %3492, 30
  %3494 = or i64 %3490, %3493
  %3495 = xor i64 %3487, %3494
  %3496 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3497 = load i64, i64* %3496, align 8
  %3498 = lshr i64 %3497, 39
  %3499 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3500 = load i64, i64* %3499, align 8
  %3501 = shl i64 %3500, 25
  %3502 = or i64 %3498, %3501
  %3503 = xor i64 %3495, %3502
  %3504 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3505 = load i64, i64* %3504, align 8
  %3506 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3507 = load i64, i64* %3506, align 8
  %3508 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3509 = load i64, i64* %3508, align 8
  %3510 = or i64 %3507, %3509
  %3511 = and i64 %3505, %3510
  %3512 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3513 = load i64, i64* %3512, align 8
  %3514 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3515 = load i64, i64* %3514, align 8
  %3516 = and i64 %3513, %3515
  %3517 = or i64 %3511, %3516
  %3518 = add i64 %3503, %3517
  store i64 %3518, i64* %8, align 8
  %3519 = load i64, i64* %7, align 8
  %3520 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3521 = load i64, i64* %3520, align 8
  %3522 = add i64 %3521, %3519
  store i64 %3522, i64* %3520, align 8
  %3523 = load i64, i64* %7, align 8
  %3524 = load i64, i64* %8, align 8
  %3525 = add i64 %3523, %3524
  %3526 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  store i64 %3525, i64* %3526, align 8
  %3527 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3528 = load i64, i64* %3527, align 8
  %3529 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3530 = load i64, i64* %3529, align 8
  %3531 = lshr i64 %3530, 14
  %3532 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3533 = load i64, i64* %3532, align 8
  %3534 = shl i64 %3533, 50
  %3535 = or i64 %3531, %3534
  %3536 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3537 = load i64, i64* %3536, align 8
  %3538 = lshr i64 %3537, 18
  %3539 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3540 = load i64, i64* %3539, align 8
  %3541 = shl i64 %3540, 46
  %3542 = or i64 %3538, %3541
  %3543 = xor i64 %3535, %3542
  %3544 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3545 = load i64, i64* %3544, align 8
  %3546 = lshr i64 %3545, 41
  %3547 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3548 = load i64, i64* %3547, align 8
  %3549 = shl i64 %3548, 23
  %3550 = or i64 %3546, %3549
  %3551 = xor i64 %3543, %3550
  %3552 = add i64 %3528, %3551
  %3553 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3554 = load i64, i64* %3553, align 8
  %3555 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3556 = load i64, i64* %3555, align 8
  %3557 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3558 = load i64, i64* %3557, align 8
  %3559 = xor i64 %3556, %3558
  %3560 = and i64 %3554, %3559
  %3561 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3562 = load i64, i64* %3561, align 8
  %3563 = xor i64 %3560, %3562
  %3564 = add i64 %3552, %3563
  %3565 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 39
  %3566 = load i64, i64* %3565, align 8
  %3567 = add i64 %3564, %3566
  %3568 = add i64 %3567, -7894198246740708037
  store i64 %3568, i64* %7, align 8
  %3569 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3570 = load i64, i64* %3569, align 8
  %3571 = lshr i64 %3570, 28
  %3572 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3573 = load i64, i64* %3572, align 8
  %3574 = shl i64 %3573, 36
  %3575 = or i64 %3571, %3574
  %3576 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3577 = load i64, i64* %3576, align 8
  %3578 = lshr i64 %3577, 34
  %3579 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3580 = load i64, i64* %3579, align 8
  %3581 = shl i64 %3580, 30
  %3582 = or i64 %3578, %3581
  %3583 = xor i64 %3575, %3582
  %3584 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3585 = load i64, i64* %3584, align 8
  %3586 = lshr i64 %3585, 39
  %3587 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3588 = load i64, i64* %3587, align 8
  %3589 = shl i64 %3588, 25
  %3590 = or i64 %3586, %3589
  %3591 = xor i64 %3583, %3590
  %3592 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3593 = load i64, i64* %3592, align 8
  %3594 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3595 = load i64, i64* %3594, align 8
  %3596 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3597 = load i64, i64* %3596, align 8
  %3598 = or i64 %3595, %3597
  %3599 = and i64 %3593, %3598
  %3600 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3601 = load i64, i64* %3600, align 8
  %3602 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3603 = load i64, i64* %3602, align 8
  %3604 = and i64 %3601, %3603
  %3605 = or i64 %3599, %3604
  %3606 = add i64 %3591, %3605
  store i64 %3606, i64* %8, align 8
  %3607 = load i64, i64* %7, align 8
  %3608 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3609 = load i64, i64* %3608, align 8
  %3610 = add i64 %3609, %3607
  store i64 %3610, i64* %3608, align 8
  %3611 = load i64, i64* %7, align 8
  %3612 = load i64, i64* %8, align 8
  %3613 = add i64 %3611, %3612
  %3614 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  store i64 %3613, i64* %3614, align 8
  %3615 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3616 = load i64, i64* %3615, align 8
  %3617 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3618 = load i64, i64* %3617, align 8
  %3619 = lshr i64 %3618, 14
  %3620 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3621 = load i64, i64* %3620, align 8
  %3622 = shl i64 %3621, 50
  %3623 = or i64 %3619, %3622
  %3624 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3625 = load i64, i64* %3624, align 8
  %3626 = lshr i64 %3625, 18
  %3627 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3628 = load i64, i64* %3627, align 8
  %3629 = shl i64 %3628, 46
  %3630 = or i64 %3626, %3629
  %3631 = xor i64 %3623, %3630
  %3632 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3633 = load i64, i64* %3632, align 8
  %3634 = lshr i64 %3633, 41
  %3635 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3636 = load i64, i64* %3635, align 8
  %3637 = shl i64 %3636, 23
  %3638 = or i64 %3634, %3637
  %3639 = xor i64 %3631, %3638
  %3640 = add i64 %3616, %3639
  %3641 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3642 = load i64, i64* %3641, align 8
  %3643 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3644 = load i64, i64* %3643, align 8
  %3645 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3646 = load i64, i64* %3645, align 8
  %3647 = xor i64 %3644, %3646
  %3648 = and i64 %3642, %3647
  %3649 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3650 = load i64, i64* %3649, align 8
  %3651 = xor i64 %3648, %3650
  %3652 = add i64 %3640, %3651
  %3653 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 40
  %3654 = load i64, i64* %3653, align 8
  %3655 = add i64 %3652, %3654
  %3656 = add i64 %3655, -6719396339535248540
  store i64 %3656, i64* %7, align 8
  %3657 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3658 = load i64, i64* %3657, align 8
  %3659 = lshr i64 %3658, 28
  %3660 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3661 = load i64, i64* %3660, align 8
  %3662 = shl i64 %3661, 36
  %3663 = or i64 %3659, %3662
  %3664 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3665 = load i64, i64* %3664, align 8
  %3666 = lshr i64 %3665, 34
  %3667 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3668 = load i64, i64* %3667, align 8
  %3669 = shl i64 %3668, 30
  %3670 = or i64 %3666, %3669
  %3671 = xor i64 %3663, %3670
  %3672 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3673 = load i64, i64* %3672, align 8
  %3674 = lshr i64 %3673, 39
  %3675 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3676 = load i64, i64* %3675, align 8
  %3677 = shl i64 %3676, 25
  %3678 = or i64 %3674, %3677
  %3679 = xor i64 %3671, %3678
  %3680 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3681 = load i64, i64* %3680, align 8
  %3682 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3683 = load i64, i64* %3682, align 8
  %3684 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3685 = load i64, i64* %3684, align 8
  %3686 = or i64 %3683, %3685
  %3687 = and i64 %3681, %3686
  %3688 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3689 = load i64, i64* %3688, align 8
  %3690 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3691 = load i64, i64* %3690, align 8
  %3692 = and i64 %3689, %3691
  %3693 = or i64 %3687, %3692
  %3694 = add i64 %3679, %3693
  store i64 %3694, i64* %8, align 8
  %3695 = load i64, i64* %7, align 8
  %3696 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3697 = load i64, i64* %3696, align 8
  %3698 = add i64 %3697, %3695
  store i64 %3698, i64* %3696, align 8
  %3699 = load i64, i64* %7, align 8
  %3700 = load i64, i64* %8, align 8
  %3701 = add i64 %3699, %3700
  %3702 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  store i64 %3701, i64* %3702, align 8
  %3703 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3704 = load i64, i64* %3703, align 8
  %3705 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3706 = load i64, i64* %3705, align 8
  %3707 = lshr i64 %3706, 14
  %3708 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3709 = load i64, i64* %3708, align 8
  %3710 = shl i64 %3709, 50
  %3711 = or i64 %3707, %3710
  %3712 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3713 = load i64, i64* %3712, align 8
  %3714 = lshr i64 %3713, 18
  %3715 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3716 = load i64, i64* %3715, align 8
  %3717 = shl i64 %3716, 46
  %3718 = or i64 %3714, %3717
  %3719 = xor i64 %3711, %3718
  %3720 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3721 = load i64, i64* %3720, align 8
  %3722 = lshr i64 %3721, 41
  %3723 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3724 = load i64, i64* %3723, align 8
  %3725 = shl i64 %3724, 23
  %3726 = or i64 %3722, %3725
  %3727 = xor i64 %3719, %3726
  %3728 = add i64 %3704, %3727
  %3729 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3730 = load i64, i64* %3729, align 8
  %3731 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3732 = load i64, i64* %3731, align 8
  %3733 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3734 = load i64, i64* %3733, align 8
  %3735 = xor i64 %3732, %3734
  %3736 = and i64 %3730, %3735
  %3737 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3738 = load i64, i64* %3737, align 8
  %3739 = xor i64 %3736, %3738
  %3740 = add i64 %3728, %3739
  %3741 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 41
  %3742 = load i64, i64* %3741, align 8
  %3743 = add i64 %3740, %3742
  %3744 = add i64 %3743, -6333637450476146687
  store i64 %3744, i64* %7, align 8
  %3745 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3746 = load i64, i64* %3745, align 8
  %3747 = lshr i64 %3746, 28
  %3748 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3749 = load i64, i64* %3748, align 8
  %3750 = shl i64 %3749, 36
  %3751 = or i64 %3747, %3750
  %3752 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3753 = load i64, i64* %3752, align 8
  %3754 = lshr i64 %3753, 34
  %3755 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3756 = load i64, i64* %3755, align 8
  %3757 = shl i64 %3756, 30
  %3758 = or i64 %3754, %3757
  %3759 = xor i64 %3751, %3758
  %3760 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3761 = load i64, i64* %3760, align 8
  %3762 = lshr i64 %3761, 39
  %3763 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3764 = load i64, i64* %3763, align 8
  %3765 = shl i64 %3764, 25
  %3766 = or i64 %3762, %3765
  %3767 = xor i64 %3759, %3766
  %3768 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3769 = load i64, i64* %3768, align 8
  %3770 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3771 = load i64, i64* %3770, align 8
  %3772 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3773 = load i64, i64* %3772, align 8
  %3774 = or i64 %3771, %3773
  %3775 = and i64 %3769, %3774
  %3776 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3777 = load i64, i64* %3776, align 8
  %3778 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3779 = load i64, i64* %3778, align 8
  %3780 = and i64 %3777, %3779
  %3781 = or i64 %3775, %3780
  %3782 = add i64 %3767, %3781
  store i64 %3782, i64* %8, align 8
  %3783 = load i64, i64* %7, align 8
  %3784 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3785 = load i64, i64* %3784, align 8
  %3786 = add i64 %3785, %3783
  store i64 %3786, i64* %3784, align 8
  %3787 = load i64, i64* %7, align 8
  %3788 = load i64, i64* %8, align 8
  %3789 = add i64 %3787, %3788
  %3790 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  store i64 %3789, i64* %3790, align 8
  %3791 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3792 = load i64, i64* %3791, align 8
  %3793 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3794 = load i64, i64* %3793, align 8
  %3795 = lshr i64 %3794, 14
  %3796 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3797 = load i64, i64* %3796, align 8
  %3798 = shl i64 %3797, 50
  %3799 = or i64 %3795, %3798
  %3800 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3801 = load i64, i64* %3800, align 8
  %3802 = lshr i64 %3801, 18
  %3803 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3804 = load i64, i64* %3803, align 8
  %3805 = shl i64 %3804, 46
  %3806 = or i64 %3802, %3805
  %3807 = xor i64 %3799, %3806
  %3808 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3809 = load i64, i64* %3808, align 8
  %3810 = lshr i64 %3809, 41
  %3811 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3812 = load i64, i64* %3811, align 8
  %3813 = shl i64 %3812, 23
  %3814 = or i64 %3810, %3813
  %3815 = xor i64 %3807, %3814
  %3816 = add i64 %3792, %3815
  %3817 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3818 = load i64, i64* %3817, align 8
  %3819 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3820 = load i64, i64* %3819, align 8
  %3821 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3822 = load i64, i64* %3821, align 8
  %3823 = xor i64 %3820, %3822
  %3824 = and i64 %3818, %3823
  %3825 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3826 = load i64, i64* %3825, align 8
  %3827 = xor i64 %3824, %3826
  %3828 = add i64 %3816, %3827
  %3829 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 42
  %3830 = load i64, i64* %3829, align 8
  %3831 = add i64 %3828, %3830
  %3832 = add i64 %3831, -4446306890439682159
  store i64 %3832, i64* %7, align 8
  %3833 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3834 = load i64, i64* %3833, align 8
  %3835 = lshr i64 %3834, 28
  %3836 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3837 = load i64, i64* %3836, align 8
  %3838 = shl i64 %3837, 36
  %3839 = or i64 %3835, %3838
  %3840 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3841 = load i64, i64* %3840, align 8
  %3842 = lshr i64 %3841, 34
  %3843 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3844 = load i64, i64* %3843, align 8
  %3845 = shl i64 %3844, 30
  %3846 = or i64 %3842, %3845
  %3847 = xor i64 %3839, %3846
  %3848 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3849 = load i64, i64* %3848, align 8
  %3850 = lshr i64 %3849, 39
  %3851 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3852 = load i64, i64* %3851, align 8
  %3853 = shl i64 %3852, 25
  %3854 = or i64 %3850, %3853
  %3855 = xor i64 %3847, %3854
  %3856 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3857 = load i64, i64* %3856, align 8
  %3858 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3859 = load i64, i64* %3858, align 8
  %3860 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3861 = load i64, i64* %3860, align 8
  %3862 = or i64 %3859, %3861
  %3863 = and i64 %3857, %3862
  %3864 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3865 = load i64, i64* %3864, align 8
  %3866 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3867 = load i64, i64* %3866, align 8
  %3868 = and i64 %3865, %3867
  %3869 = or i64 %3863, %3868
  %3870 = add i64 %3855, %3869
  store i64 %3870, i64* %8, align 8
  %3871 = load i64, i64* %7, align 8
  %3872 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3873 = load i64, i64* %3872, align 8
  %3874 = add i64 %3873, %3871
  store i64 %3874, i64* %3872, align 8
  %3875 = load i64, i64* %7, align 8
  %3876 = load i64, i64* %8, align 8
  %3877 = add i64 %3875, %3876
  %3878 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  store i64 %3877, i64* %3878, align 8
  %3879 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %3880 = load i64, i64* %3879, align 8
  %3881 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3882 = load i64, i64* %3881, align 8
  %3883 = lshr i64 %3882, 14
  %3884 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3885 = load i64, i64* %3884, align 8
  %3886 = shl i64 %3885, 50
  %3887 = or i64 %3883, %3886
  %3888 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3889 = load i64, i64* %3888, align 8
  %3890 = lshr i64 %3889, 18
  %3891 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3892 = load i64, i64* %3891, align 8
  %3893 = shl i64 %3892, 46
  %3894 = or i64 %3890, %3893
  %3895 = xor i64 %3887, %3894
  %3896 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3897 = load i64, i64* %3896, align 8
  %3898 = lshr i64 %3897, 41
  %3899 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3900 = load i64, i64* %3899, align 8
  %3901 = shl i64 %3900, 23
  %3902 = or i64 %3898, %3901
  %3903 = xor i64 %3895, %3902
  %3904 = add i64 %3880, %3903
  %3905 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3906 = load i64, i64* %3905, align 8
  %3907 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3908 = load i64, i64* %3907, align 8
  %3909 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3910 = load i64, i64* %3909, align 8
  %3911 = xor i64 %3908, %3910
  %3912 = and i64 %3906, %3911
  %3913 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3914 = load i64, i64* %3913, align 8
  %3915 = xor i64 %3912, %3914
  %3916 = add i64 %3904, %3915
  %3917 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 43
  %3918 = load i64, i64* %3917, align 8
  %3919 = add i64 %3916, %3918
  %3920 = add i64 %3919, -4076793802049405392
  store i64 %3920, i64* %7, align 8
  %3921 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3922 = load i64, i64* %3921, align 8
  %3923 = lshr i64 %3922, 28
  %3924 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3925 = load i64, i64* %3924, align 8
  %3926 = shl i64 %3925, 36
  %3927 = or i64 %3923, %3926
  %3928 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3929 = load i64, i64* %3928, align 8
  %3930 = lshr i64 %3929, 34
  %3931 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3932 = load i64, i64* %3931, align 8
  %3933 = shl i64 %3932, 30
  %3934 = or i64 %3930, %3933
  %3935 = xor i64 %3927, %3934
  %3936 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3937 = load i64, i64* %3936, align 8
  %3938 = lshr i64 %3937, 39
  %3939 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3940 = load i64, i64* %3939, align 8
  %3941 = shl i64 %3940, 25
  %3942 = or i64 %3938, %3941
  %3943 = xor i64 %3935, %3942
  %3944 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %3945 = load i64, i64* %3944, align 8
  %3946 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3947 = load i64, i64* %3946, align 8
  %3948 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3949 = load i64, i64* %3948, align 8
  %3950 = or i64 %3947, %3949
  %3951 = and i64 %3945, %3950
  %3952 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %3953 = load i64, i64* %3952, align 8
  %3954 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %3955 = load i64, i64* %3954, align 8
  %3956 = and i64 %3953, %3955
  %3957 = or i64 %3951, %3956
  %3958 = add i64 %3943, %3957
  store i64 %3958, i64* %8, align 8
  %3959 = load i64, i64* %7, align 8
  %3960 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3961 = load i64, i64* %3960, align 8
  %3962 = add i64 %3961, %3959
  store i64 %3962, i64* %3960, align 8
  %3963 = load i64, i64* %7, align 8
  %3964 = load i64, i64* %8, align 8
  %3965 = add i64 %3963, %3964
  %3966 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  store i64 %3965, i64* %3966, align 8
  %3967 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %3968 = load i64, i64* %3967, align 8
  %3969 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3970 = load i64, i64* %3969, align 8
  %3971 = lshr i64 %3970, 14
  %3972 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3973 = load i64, i64* %3972, align 8
  %3974 = shl i64 %3973, 50
  %3975 = or i64 %3971, %3974
  %3976 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3977 = load i64, i64* %3976, align 8
  %3978 = lshr i64 %3977, 18
  %3979 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3980 = load i64, i64* %3979, align 8
  %3981 = shl i64 %3980, 46
  %3982 = or i64 %3978, %3981
  %3983 = xor i64 %3975, %3982
  %3984 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3985 = load i64, i64* %3984, align 8
  %3986 = lshr i64 %3985, 41
  %3987 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3988 = load i64, i64* %3987, align 8
  %3989 = shl i64 %3988, 23
  %3990 = or i64 %3986, %3989
  %3991 = xor i64 %3983, %3990
  %3992 = add i64 %3968, %3991
  %3993 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %3994 = load i64, i64* %3993, align 8
  %3995 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %3996 = load i64, i64* %3995, align 8
  %3997 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %3998 = load i64, i64* %3997, align 8
  %3999 = xor i64 %3996, %3998
  %4000 = and i64 %3994, %3999
  %4001 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4002 = load i64, i64* %4001, align 8
  %4003 = xor i64 %4000, %4002
  %4004 = add i64 %3992, %4003
  %4005 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 44
  %4006 = load i64, i64* %4005, align 8
  %4007 = add i64 %4004, %4006
  %4008 = add i64 %4007, -3345356375505022440
  store i64 %4008, i64* %7, align 8
  %4009 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4010 = load i64, i64* %4009, align 8
  %4011 = lshr i64 %4010, 28
  %4012 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4013 = load i64, i64* %4012, align 8
  %4014 = shl i64 %4013, 36
  %4015 = or i64 %4011, %4014
  %4016 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4017 = load i64, i64* %4016, align 8
  %4018 = lshr i64 %4017, 34
  %4019 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4020 = load i64, i64* %4019, align 8
  %4021 = shl i64 %4020, 30
  %4022 = or i64 %4018, %4021
  %4023 = xor i64 %4015, %4022
  %4024 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4025 = load i64, i64* %4024, align 8
  %4026 = lshr i64 %4025, 39
  %4027 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4028 = load i64, i64* %4027, align 8
  %4029 = shl i64 %4028, 25
  %4030 = or i64 %4026, %4029
  %4031 = xor i64 %4023, %4030
  %4032 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4033 = load i64, i64* %4032, align 8
  %4034 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4035 = load i64, i64* %4034, align 8
  %4036 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4037 = load i64, i64* %4036, align 8
  %4038 = or i64 %4035, %4037
  %4039 = and i64 %4033, %4038
  %4040 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4041 = load i64, i64* %4040, align 8
  %4042 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4043 = load i64, i64* %4042, align 8
  %4044 = and i64 %4041, %4043
  %4045 = or i64 %4039, %4044
  %4046 = add i64 %4031, %4045
  store i64 %4046, i64* %8, align 8
  %4047 = load i64, i64* %7, align 8
  %4048 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4049 = load i64, i64* %4048, align 8
  %4050 = add i64 %4049, %4047
  store i64 %4050, i64* %4048, align 8
  %4051 = load i64, i64* %7, align 8
  %4052 = load i64, i64* %8, align 8
  %4053 = add i64 %4051, %4052
  %4054 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  store i64 %4053, i64* %4054, align 8
  %4055 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4056 = load i64, i64* %4055, align 8
  %4057 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4058 = load i64, i64* %4057, align 8
  %4059 = lshr i64 %4058, 14
  %4060 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4061 = load i64, i64* %4060, align 8
  %4062 = shl i64 %4061, 50
  %4063 = or i64 %4059, %4062
  %4064 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4065 = load i64, i64* %4064, align 8
  %4066 = lshr i64 %4065, 18
  %4067 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4068 = load i64, i64* %4067, align 8
  %4069 = shl i64 %4068, 46
  %4070 = or i64 %4066, %4069
  %4071 = xor i64 %4063, %4070
  %4072 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4073 = load i64, i64* %4072, align 8
  %4074 = lshr i64 %4073, 41
  %4075 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4076 = load i64, i64* %4075, align 8
  %4077 = shl i64 %4076, 23
  %4078 = or i64 %4074, %4077
  %4079 = xor i64 %4071, %4078
  %4080 = add i64 %4056, %4079
  %4081 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4082 = load i64, i64* %4081, align 8
  %4083 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4084 = load i64, i64* %4083, align 8
  %4085 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4086 = load i64, i64* %4085, align 8
  %4087 = xor i64 %4084, %4086
  %4088 = and i64 %4082, %4087
  %4089 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4090 = load i64, i64* %4089, align 8
  %4091 = xor i64 %4088, %4090
  %4092 = add i64 %4080, %4091
  %4093 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 45
  %4094 = load i64, i64* %4093, align 8
  %4095 = add i64 %4092, %4094
  %4096 = add i64 %4095, -2983346525034927856
  store i64 %4096, i64* %7, align 8
  %4097 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4098 = load i64, i64* %4097, align 8
  %4099 = lshr i64 %4098, 28
  %4100 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4101 = load i64, i64* %4100, align 8
  %4102 = shl i64 %4101, 36
  %4103 = or i64 %4099, %4102
  %4104 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4105 = load i64, i64* %4104, align 8
  %4106 = lshr i64 %4105, 34
  %4107 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4108 = load i64, i64* %4107, align 8
  %4109 = shl i64 %4108, 30
  %4110 = or i64 %4106, %4109
  %4111 = xor i64 %4103, %4110
  %4112 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4113 = load i64, i64* %4112, align 8
  %4114 = lshr i64 %4113, 39
  %4115 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4116 = load i64, i64* %4115, align 8
  %4117 = shl i64 %4116, 25
  %4118 = or i64 %4114, %4117
  %4119 = xor i64 %4111, %4118
  %4120 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4121 = load i64, i64* %4120, align 8
  %4122 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4123 = load i64, i64* %4122, align 8
  %4124 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4125 = load i64, i64* %4124, align 8
  %4126 = or i64 %4123, %4125
  %4127 = and i64 %4121, %4126
  %4128 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4129 = load i64, i64* %4128, align 8
  %4130 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4131 = load i64, i64* %4130, align 8
  %4132 = and i64 %4129, %4131
  %4133 = or i64 %4127, %4132
  %4134 = add i64 %4119, %4133
  store i64 %4134, i64* %8, align 8
  %4135 = load i64, i64* %7, align 8
  %4136 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4137 = load i64, i64* %4136, align 8
  %4138 = add i64 %4137, %4135
  store i64 %4138, i64* %4136, align 8
  %4139 = load i64, i64* %7, align 8
  %4140 = load i64, i64* %8, align 8
  %4141 = add i64 %4139, %4140
  %4142 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  store i64 %4141, i64* %4142, align 8
  %4143 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4144 = load i64, i64* %4143, align 8
  %4145 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4146 = load i64, i64* %4145, align 8
  %4147 = lshr i64 %4146, 14
  %4148 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4149 = load i64, i64* %4148, align 8
  %4150 = shl i64 %4149, 50
  %4151 = or i64 %4147, %4150
  %4152 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4153 = load i64, i64* %4152, align 8
  %4154 = lshr i64 %4153, 18
  %4155 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4156 = load i64, i64* %4155, align 8
  %4157 = shl i64 %4156, 46
  %4158 = or i64 %4154, %4157
  %4159 = xor i64 %4151, %4158
  %4160 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4161 = load i64, i64* %4160, align 8
  %4162 = lshr i64 %4161, 41
  %4163 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4164 = load i64, i64* %4163, align 8
  %4165 = shl i64 %4164, 23
  %4166 = or i64 %4162, %4165
  %4167 = xor i64 %4159, %4166
  %4168 = add i64 %4144, %4167
  %4169 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4170 = load i64, i64* %4169, align 8
  %4171 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4172 = load i64, i64* %4171, align 8
  %4173 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4174 = load i64, i64* %4173, align 8
  %4175 = xor i64 %4172, %4174
  %4176 = and i64 %4170, %4175
  %4177 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4178 = load i64, i64* %4177, align 8
  %4179 = xor i64 %4176, %4178
  %4180 = add i64 %4168, %4179
  %4181 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 46
  %4182 = load i64, i64* %4181, align 8
  %4183 = add i64 %4180, %4182
  %4184 = add i64 %4183, -860691631967231958
  store i64 %4184, i64* %7, align 8
  %4185 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4186 = load i64, i64* %4185, align 8
  %4187 = lshr i64 %4186, 28
  %4188 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4189 = load i64, i64* %4188, align 8
  %4190 = shl i64 %4189, 36
  %4191 = or i64 %4187, %4190
  %4192 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4193 = load i64, i64* %4192, align 8
  %4194 = lshr i64 %4193, 34
  %4195 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4196 = load i64, i64* %4195, align 8
  %4197 = shl i64 %4196, 30
  %4198 = or i64 %4194, %4197
  %4199 = xor i64 %4191, %4198
  %4200 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4201 = load i64, i64* %4200, align 8
  %4202 = lshr i64 %4201, 39
  %4203 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4204 = load i64, i64* %4203, align 8
  %4205 = shl i64 %4204, 25
  %4206 = or i64 %4202, %4205
  %4207 = xor i64 %4199, %4206
  %4208 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4209 = load i64, i64* %4208, align 8
  %4210 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4211 = load i64, i64* %4210, align 8
  %4212 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4213 = load i64, i64* %4212, align 8
  %4214 = or i64 %4211, %4213
  %4215 = and i64 %4209, %4214
  %4216 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4217 = load i64, i64* %4216, align 8
  %4218 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4219 = load i64, i64* %4218, align 8
  %4220 = and i64 %4217, %4219
  %4221 = or i64 %4215, %4220
  %4222 = add i64 %4207, %4221
  store i64 %4222, i64* %8, align 8
  %4223 = load i64, i64* %7, align 8
  %4224 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4225 = load i64, i64* %4224, align 8
  %4226 = add i64 %4225, %4223
  store i64 %4226, i64* %4224, align 8
  %4227 = load i64, i64* %7, align 8
  %4228 = load i64, i64* %8, align 8
  %4229 = add i64 %4227, %4228
  %4230 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  store i64 %4229, i64* %4230, align 8
  %4231 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4232 = load i64, i64* %4231, align 8
  %4233 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4234 = load i64, i64* %4233, align 8
  %4235 = lshr i64 %4234, 14
  %4236 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4237 = load i64, i64* %4236, align 8
  %4238 = shl i64 %4237, 50
  %4239 = or i64 %4235, %4238
  %4240 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4241 = load i64, i64* %4240, align 8
  %4242 = lshr i64 %4241, 18
  %4243 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4244 = load i64, i64* %4243, align 8
  %4245 = shl i64 %4244, 46
  %4246 = or i64 %4242, %4245
  %4247 = xor i64 %4239, %4246
  %4248 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4249 = load i64, i64* %4248, align 8
  %4250 = lshr i64 %4249, 41
  %4251 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4252 = load i64, i64* %4251, align 8
  %4253 = shl i64 %4252, 23
  %4254 = or i64 %4250, %4253
  %4255 = xor i64 %4247, %4254
  %4256 = add i64 %4232, %4255
  %4257 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4258 = load i64, i64* %4257, align 8
  %4259 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4260 = load i64, i64* %4259, align 8
  %4261 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4262 = load i64, i64* %4261, align 8
  %4263 = xor i64 %4260, %4262
  %4264 = and i64 %4258, %4263
  %4265 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4266 = load i64, i64* %4265, align 8
  %4267 = xor i64 %4264, %4266
  %4268 = add i64 %4256, %4267
  %4269 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 47
  %4270 = load i64, i64* %4269, align 8
  %4271 = add i64 %4268, %4270
  %4272 = add i64 %4271, 1182934255886127544
  store i64 %4272, i64* %7, align 8
  %4273 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4274 = load i64, i64* %4273, align 8
  %4275 = lshr i64 %4274, 28
  %4276 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4277 = load i64, i64* %4276, align 8
  %4278 = shl i64 %4277, 36
  %4279 = or i64 %4275, %4278
  %4280 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4281 = load i64, i64* %4280, align 8
  %4282 = lshr i64 %4281, 34
  %4283 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4284 = load i64, i64* %4283, align 8
  %4285 = shl i64 %4284, 30
  %4286 = or i64 %4282, %4285
  %4287 = xor i64 %4279, %4286
  %4288 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4289 = load i64, i64* %4288, align 8
  %4290 = lshr i64 %4289, 39
  %4291 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4292 = load i64, i64* %4291, align 8
  %4293 = shl i64 %4292, 25
  %4294 = or i64 %4290, %4293
  %4295 = xor i64 %4287, %4294
  %4296 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4297 = load i64, i64* %4296, align 8
  %4298 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4299 = load i64, i64* %4298, align 8
  %4300 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4301 = load i64, i64* %4300, align 8
  %4302 = or i64 %4299, %4301
  %4303 = and i64 %4297, %4302
  %4304 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4305 = load i64, i64* %4304, align 8
  %4306 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4307 = load i64, i64* %4306, align 8
  %4308 = and i64 %4305, %4307
  %4309 = or i64 %4303, %4308
  %4310 = add i64 %4295, %4309
  store i64 %4310, i64* %8, align 8
  %4311 = load i64, i64* %7, align 8
  %4312 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4313 = load i64, i64* %4312, align 8
  %4314 = add i64 %4313, %4311
  store i64 %4314, i64* %4312, align 8
  %4315 = load i64, i64* %7, align 8
  %4316 = load i64, i64* %8, align 8
  %4317 = add i64 %4315, %4316
  %4318 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  store i64 %4317, i64* %4318, align 8
  %4319 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4320 = load i64, i64* %4319, align 8
  %4321 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4322 = load i64, i64* %4321, align 8
  %4323 = lshr i64 %4322, 14
  %4324 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4325 = load i64, i64* %4324, align 8
  %4326 = shl i64 %4325, 50
  %4327 = or i64 %4323, %4326
  %4328 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4329 = load i64, i64* %4328, align 8
  %4330 = lshr i64 %4329, 18
  %4331 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4332 = load i64, i64* %4331, align 8
  %4333 = shl i64 %4332, 46
  %4334 = or i64 %4330, %4333
  %4335 = xor i64 %4327, %4334
  %4336 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4337 = load i64, i64* %4336, align 8
  %4338 = lshr i64 %4337, 41
  %4339 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4340 = load i64, i64* %4339, align 8
  %4341 = shl i64 %4340, 23
  %4342 = or i64 %4338, %4341
  %4343 = xor i64 %4335, %4342
  %4344 = add i64 %4320, %4343
  %4345 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4346 = load i64, i64* %4345, align 8
  %4347 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4348 = load i64, i64* %4347, align 8
  %4349 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4350 = load i64, i64* %4349, align 8
  %4351 = xor i64 %4348, %4350
  %4352 = and i64 %4346, %4351
  %4353 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4354 = load i64, i64* %4353, align 8
  %4355 = xor i64 %4352, %4354
  %4356 = add i64 %4344, %4355
  %4357 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 48
  %4358 = load i64, i64* %4357, align 8
  %4359 = add i64 %4356, %4358
  %4360 = add i64 %4359, 1847814050463011016
  store i64 %4360, i64* %7, align 8
  %4361 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4362 = load i64, i64* %4361, align 8
  %4363 = lshr i64 %4362, 28
  %4364 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4365 = load i64, i64* %4364, align 8
  %4366 = shl i64 %4365, 36
  %4367 = or i64 %4363, %4366
  %4368 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4369 = load i64, i64* %4368, align 8
  %4370 = lshr i64 %4369, 34
  %4371 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4372 = load i64, i64* %4371, align 8
  %4373 = shl i64 %4372, 30
  %4374 = or i64 %4370, %4373
  %4375 = xor i64 %4367, %4374
  %4376 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4377 = load i64, i64* %4376, align 8
  %4378 = lshr i64 %4377, 39
  %4379 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4380 = load i64, i64* %4379, align 8
  %4381 = shl i64 %4380, 25
  %4382 = or i64 %4378, %4381
  %4383 = xor i64 %4375, %4382
  %4384 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4385 = load i64, i64* %4384, align 8
  %4386 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4387 = load i64, i64* %4386, align 8
  %4388 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4389 = load i64, i64* %4388, align 8
  %4390 = or i64 %4387, %4389
  %4391 = and i64 %4385, %4390
  %4392 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4393 = load i64, i64* %4392, align 8
  %4394 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4395 = load i64, i64* %4394, align 8
  %4396 = and i64 %4393, %4395
  %4397 = or i64 %4391, %4396
  %4398 = add i64 %4383, %4397
  store i64 %4398, i64* %8, align 8
  %4399 = load i64, i64* %7, align 8
  %4400 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4401 = load i64, i64* %4400, align 8
  %4402 = add i64 %4401, %4399
  store i64 %4402, i64* %4400, align 8
  %4403 = load i64, i64* %7, align 8
  %4404 = load i64, i64* %8, align 8
  %4405 = add i64 %4403, %4404
  %4406 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  store i64 %4405, i64* %4406, align 8
  %4407 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4408 = load i64, i64* %4407, align 8
  %4409 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4410 = load i64, i64* %4409, align 8
  %4411 = lshr i64 %4410, 14
  %4412 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4413 = load i64, i64* %4412, align 8
  %4414 = shl i64 %4413, 50
  %4415 = or i64 %4411, %4414
  %4416 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4417 = load i64, i64* %4416, align 8
  %4418 = lshr i64 %4417, 18
  %4419 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4420 = load i64, i64* %4419, align 8
  %4421 = shl i64 %4420, 46
  %4422 = or i64 %4418, %4421
  %4423 = xor i64 %4415, %4422
  %4424 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4425 = load i64, i64* %4424, align 8
  %4426 = lshr i64 %4425, 41
  %4427 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4428 = load i64, i64* %4427, align 8
  %4429 = shl i64 %4428, 23
  %4430 = or i64 %4426, %4429
  %4431 = xor i64 %4423, %4430
  %4432 = add i64 %4408, %4431
  %4433 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4434 = load i64, i64* %4433, align 8
  %4435 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4436 = load i64, i64* %4435, align 8
  %4437 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4438 = load i64, i64* %4437, align 8
  %4439 = xor i64 %4436, %4438
  %4440 = and i64 %4434, %4439
  %4441 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4442 = load i64, i64* %4441, align 8
  %4443 = xor i64 %4440, %4442
  %4444 = add i64 %4432, %4443
  %4445 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 49
  %4446 = load i64, i64* %4445, align 8
  %4447 = add i64 %4444, %4446
  %4448 = add i64 %4447, 2177327727835720531
  store i64 %4448, i64* %7, align 8
  %4449 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4450 = load i64, i64* %4449, align 8
  %4451 = lshr i64 %4450, 28
  %4452 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4453 = load i64, i64* %4452, align 8
  %4454 = shl i64 %4453, 36
  %4455 = or i64 %4451, %4454
  %4456 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4457 = load i64, i64* %4456, align 8
  %4458 = lshr i64 %4457, 34
  %4459 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4460 = load i64, i64* %4459, align 8
  %4461 = shl i64 %4460, 30
  %4462 = or i64 %4458, %4461
  %4463 = xor i64 %4455, %4462
  %4464 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4465 = load i64, i64* %4464, align 8
  %4466 = lshr i64 %4465, 39
  %4467 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4468 = load i64, i64* %4467, align 8
  %4469 = shl i64 %4468, 25
  %4470 = or i64 %4466, %4469
  %4471 = xor i64 %4463, %4470
  %4472 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4473 = load i64, i64* %4472, align 8
  %4474 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4475 = load i64, i64* %4474, align 8
  %4476 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4477 = load i64, i64* %4476, align 8
  %4478 = or i64 %4475, %4477
  %4479 = and i64 %4473, %4478
  %4480 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4481 = load i64, i64* %4480, align 8
  %4482 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4483 = load i64, i64* %4482, align 8
  %4484 = and i64 %4481, %4483
  %4485 = or i64 %4479, %4484
  %4486 = add i64 %4471, %4485
  store i64 %4486, i64* %8, align 8
  %4487 = load i64, i64* %7, align 8
  %4488 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4489 = load i64, i64* %4488, align 8
  %4490 = add i64 %4489, %4487
  store i64 %4490, i64* %4488, align 8
  %4491 = load i64, i64* %7, align 8
  %4492 = load i64, i64* %8, align 8
  %4493 = add i64 %4491, %4492
  %4494 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  store i64 %4493, i64* %4494, align 8
  %4495 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4496 = load i64, i64* %4495, align 8
  %4497 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4498 = load i64, i64* %4497, align 8
  %4499 = lshr i64 %4498, 14
  %4500 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4501 = load i64, i64* %4500, align 8
  %4502 = shl i64 %4501, 50
  %4503 = or i64 %4499, %4502
  %4504 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4505 = load i64, i64* %4504, align 8
  %4506 = lshr i64 %4505, 18
  %4507 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4508 = load i64, i64* %4507, align 8
  %4509 = shl i64 %4508, 46
  %4510 = or i64 %4506, %4509
  %4511 = xor i64 %4503, %4510
  %4512 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4513 = load i64, i64* %4512, align 8
  %4514 = lshr i64 %4513, 41
  %4515 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4516 = load i64, i64* %4515, align 8
  %4517 = shl i64 %4516, 23
  %4518 = or i64 %4514, %4517
  %4519 = xor i64 %4511, %4518
  %4520 = add i64 %4496, %4519
  %4521 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4522 = load i64, i64* %4521, align 8
  %4523 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4524 = load i64, i64* %4523, align 8
  %4525 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4526 = load i64, i64* %4525, align 8
  %4527 = xor i64 %4524, %4526
  %4528 = and i64 %4522, %4527
  %4529 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4530 = load i64, i64* %4529, align 8
  %4531 = xor i64 %4528, %4530
  %4532 = add i64 %4520, %4531
  %4533 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 50
  %4534 = load i64, i64* %4533, align 8
  %4535 = add i64 %4532, %4534
  %4536 = add i64 %4535, 2830643537854262169
  store i64 %4536, i64* %7, align 8
  %4537 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4538 = load i64, i64* %4537, align 8
  %4539 = lshr i64 %4538, 28
  %4540 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4541 = load i64, i64* %4540, align 8
  %4542 = shl i64 %4541, 36
  %4543 = or i64 %4539, %4542
  %4544 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4545 = load i64, i64* %4544, align 8
  %4546 = lshr i64 %4545, 34
  %4547 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4548 = load i64, i64* %4547, align 8
  %4549 = shl i64 %4548, 30
  %4550 = or i64 %4546, %4549
  %4551 = xor i64 %4543, %4550
  %4552 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4553 = load i64, i64* %4552, align 8
  %4554 = lshr i64 %4553, 39
  %4555 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4556 = load i64, i64* %4555, align 8
  %4557 = shl i64 %4556, 25
  %4558 = or i64 %4554, %4557
  %4559 = xor i64 %4551, %4558
  %4560 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4561 = load i64, i64* %4560, align 8
  %4562 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4563 = load i64, i64* %4562, align 8
  %4564 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4565 = load i64, i64* %4564, align 8
  %4566 = or i64 %4563, %4565
  %4567 = and i64 %4561, %4566
  %4568 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4569 = load i64, i64* %4568, align 8
  %4570 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4571 = load i64, i64* %4570, align 8
  %4572 = and i64 %4569, %4571
  %4573 = or i64 %4567, %4572
  %4574 = add i64 %4559, %4573
  store i64 %4574, i64* %8, align 8
  %4575 = load i64, i64* %7, align 8
  %4576 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4577 = load i64, i64* %4576, align 8
  %4578 = add i64 %4577, %4575
  store i64 %4578, i64* %4576, align 8
  %4579 = load i64, i64* %7, align 8
  %4580 = load i64, i64* %8, align 8
  %4581 = add i64 %4579, %4580
  %4582 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  store i64 %4581, i64* %4582, align 8
  %4583 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4584 = load i64, i64* %4583, align 8
  %4585 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4586 = load i64, i64* %4585, align 8
  %4587 = lshr i64 %4586, 14
  %4588 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4589 = load i64, i64* %4588, align 8
  %4590 = shl i64 %4589, 50
  %4591 = or i64 %4587, %4590
  %4592 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4593 = load i64, i64* %4592, align 8
  %4594 = lshr i64 %4593, 18
  %4595 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4596 = load i64, i64* %4595, align 8
  %4597 = shl i64 %4596, 46
  %4598 = or i64 %4594, %4597
  %4599 = xor i64 %4591, %4598
  %4600 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4601 = load i64, i64* %4600, align 8
  %4602 = lshr i64 %4601, 41
  %4603 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4604 = load i64, i64* %4603, align 8
  %4605 = shl i64 %4604, 23
  %4606 = or i64 %4602, %4605
  %4607 = xor i64 %4599, %4606
  %4608 = add i64 %4584, %4607
  %4609 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4610 = load i64, i64* %4609, align 8
  %4611 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4612 = load i64, i64* %4611, align 8
  %4613 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4614 = load i64, i64* %4613, align 8
  %4615 = xor i64 %4612, %4614
  %4616 = and i64 %4610, %4615
  %4617 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4618 = load i64, i64* %4617, align 8
  %4619 = xor i64 %4616, %4618
  %4620 = add i64 %4608, %4619
  %4621 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 51
  %4622 = load i64, i64* %4621, align 8
  %4623 = add i64 %4620, %4622
  %4624 = add i64 %4623, 3796741975233480872
  store i64 %4624, i64* %7, align 8
  %4625 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4626 = load i64, i64* %4625, align 8
  %4627 = lshr i64 %4626, 28
  %4628 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4629 = load i64, i64* %4628, align 8
  %4630 = shl i64 %4629, 36
  %4631 = or i64 %4627, %4630
  %4632 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4633 = load i64, i64* %4632, align 8
  %4634 = lshr i64 %4633, 34
  %4635 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4636 = load i64, i64* %4635, align 8
  %4637 = shl i64 %4636, 30
  %4638 = or i64 %4634, %4637
  %4639 = xor i64 %4631, %4638
  %4640 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4641 = load i64, i64* %4640, align 8
  %4642 = lshr i64 %4641, 39
  %4643 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4644 = load i64, i64* %4643, align 8
  %4645 = shl i64 %4644, 25
  %4646 = or i64 %4642, %4645
  %4647 = xor i64 %4639, %4646
  %4648 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4649 = load i64, i64* %4648, align 8
  %4650 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4651 = load i64, i64* %4650, align 8
  %4652 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4653 = load i64, i64* %4652, align 8
  %4654 = or i64 %4651, %4653
  %4655 = and i64 %4649, %4654
  %4656 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4657 = load i64, i64* %4656, align 8
  %4658 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4659 = load i64, i64* %4658, align 8
  %4660 = and i64 %4657, %4659
  %4661 = or i64 %4655, %4660
  %4662 = add i64 %4647, %4661
  store i64 %4662, i64* %8, align 8
  %4663 = load i64, i64* %7, align 8
  %4664 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4665 = load i64, i64* %4664, align 8
  %4666 = add i64 %4665, %4663
  store i64 %4666, i64* %4664, align 8
  %4667 = load i64, i64* %7, align 8
  %4668 = load i64, i64* %8, align 8
  %4669 = add i64 %4667, %4668
  %4670 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  store i64 %4669, i64* %4670, align 8
  %4671 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4672 = load i64, i64* %4671, align 8
  %4673 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4674 = load i64, i64* %4673, align 8
  %4675 = lshr i64 %4674, 14
  %4676 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4677 = load i64, i64* %4676, align 8
  %4678 = shl i64 %4677, 50
  %4679 = or i64 %4675, %4678
  %4680 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4681 = load i64, i64* %4680, align 8
  %4682 = lshr i64 %4681, 18
  %4683 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4684 = load i64, i64* %4683, align 8
  %4685 = shl i64 %4684, 46
  %4686 = or i64 %4682, %4685
  %4687 = xor i64 %4679, %4686
  %4688 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4689 = load i64, i64* %4688, align 8
  %4690 = lshr i64 %4689, 41
  %4691 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4692 = load i64, i64* %4691, align 8
  %4693 = shl i64 %4692, 23
  %4694 = or i64 %4690, %4693
  %4695 = xor i64 %4687, %4694
  %4696 = add i64 %4672, %4695
  %4697 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4698 = load i64, i64* %4697, align 8
  %4699 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4700 = load i64, i64* %4699, align 8
  %4701 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4702 = load i64, i64* %4701, align 8
  %4703 = xor i64 %4700, %4702
  %4704 = and i64 %4698, %4703
  %4705 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4706 = load i64, i64* %4705, align 8
  %4707 = xor i64 %4704, %4706
  %4708 = add i64 %4696, %4707
  %4709 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 52
  %4710 = load i64, i64* %4709, align 8
  %4711 = add i64 %4708, %4710
  %4712 = add i64 %4711, 4115178125766777443
  store i64 %4712, i64* %7, align 8
  %4713 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4714 = load i64, i64* %4713, align 8
  %4715 = lshr i64 %4714, 28
  %4716 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4717 = load i64, i64* %4716, align 8
  %4718 = shl i64 %4717, 36
  %4719 = or i64 %4715, %4718
  %4720 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4721 = load i64, i64* %4720, align 8
  %4722 = lshr i64 %4721, 34
  %4723 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4724 = load i64, i64* %4723, align 8
  %4725 = shl i64 %4724, 30
  %4726 = or i64 %4722, %4725
  %4727 = xor i64 %4719, %4726
  %4728 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4729 = load i64, i64* %4728, align 8
  %4730 = lshr i64 %4729, 39
  %4731 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4732 = load i64, i64* %4731, align 8
  %4733 = shl i64 %4732, 25
  %4734 = or i64 %4730, %4733
  %4735 = xor i64 %4727, %4734
  %4736 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4737 = load i64, i64* %4736, align 8
  %4738 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4739 = load i64, i64* %4738, align 8
  %4740 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4741 = load i64, i64* %4740, align 8
  %4742 = or i64 %4739, %4741
  %4743 = and i64 %4737, %4742
  %4744 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4745 = load i64, i64* %4744, align 8
  %4746 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4747 = load i64, i64* %4746, align 8
  %4748 = and i64 %4745, %4747
  %4749 = or i64 %4743, %4748
  %4750 = add i64 %4735, %4749
  store i64 %4750, i64* %8, align 8
  %4751 = load i64, i64* %7, align 8
  %4752 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4753 = load i64, i64* %4752, align 8
  %4754 = add i64 %4753, %4751
  store i64 %4754, i64* %4752, align 8
  %4755 = load i64, i64* %7, align 8
  %4756 = load i64, i64* %8, align 8
  %4757 = add i64 %4755, %4756
  %4758 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  store i64 %4757, i64* %4758, align 8
  %4759 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4760 = load i64, i64* %4759, align 8
  %4761 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4762 = load i64, i64* %4761, align 8
  %4763 = lshr i64 %4762, 14
  %4764 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4765 = load i64, i64* %4764, align 8
  %4766 = shl i64 %4765, 50
  %4767 = or i64 %4763, %4766
  %4768 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4769 = load i64, i64* %4768, align 8
  %4770 = lshr i64 %4769, 18
  %4771 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4772 = load i64, i64* %4771, align 8
  %4773 = shl i64 %4772, 46
  %4774 = or i64 %4770, %4773
  %4775 = xor i64 %4767, %4774
  %4776 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4777 = load i64, i64* %4776, align 8
  %4778 = lshr i64 %4777, 41
  %4779 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4780 = load i64, i64* %4779, align 8
  %4781 = shl i64 %4780, 23
  %4782 = or i64 %4778, %4781
  %4783 = xor i64 %4775, %4782
  %4784 = add i64 %4760, %4783
  %4785 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4786 = load i64, i64* %4785, align 8
  %4787 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4788 = load i64, i64* %4787, align 8
  %4789 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4790 = load i64, i64* %4789, align 8
  %4791 = xor i64 %4788, %4790
  %4792 = and i64 %4786, %4791
  %4793 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4794 = load i64, i64* %4793, align 8
  %4795 = xor i64 %4792, %4794
  %4796 = add i64 %4784, %4795
  %4797 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 53
  %4798 = load i64, i64* %4797, align 8
  %4799 = add i64 %4796, %4798
  %4800 = add i64 %4799, 5681478168544905931
  store i64 %4800, i64* %7, align 8
  %4801 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4802 = load i64, i64* %4801, align 8
  %4803 = lshr i64 %4802, 28
  %4804 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4805 = load i64, i64* %4804, align 8
  %4806 = shl i64 %4805, 36
  %4807 = or i64 %4803, %4806
  %4808 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4809 = load i64, i64* %4808, align 8
  %4810 = lshr i64 %4809, 34
  %4811 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4812 = load i64, i64* %4811, align 8
  %4813 = shl i64 %4812, 30
  %4814 = or i64 %4810, %4813
  %4815 = xor i64 %4807, %4814
  %4816 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4817 = load i64, i64* %4816, align 8
  %4818 = lshr i64 %4817, 39
  %4819 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4820 = load i64, i64* %4819, align 8
  %4821 = shl i64 %4820, 25
  %4822 = or i64 %4818, %4821
  %4823 = xor i64 %4815, %4822
  %4824 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4825 = load i64, i64* %4824, align 8
  %4826 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4827 = load i64, i64* %4826, align 8
  %4828 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4829 = load i64, i64* %4828, align 8
  %4830 = or i64 %4827, %4829
  %4831 = and i64 %4825, %4830
  %4832 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4833 = load i64, i64* %4832, align 8
  %4834 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4835 = load i64, i64* %4834, align 8
  %4836 = and i64 %4833, %4835
  %4837 = or i64 %4831, %4836
  %4838 = add i64 %4823, %4837
  store i64 %4838, i64* %8, align 8
  %4839 = load i64, i64* %7, align 8
  %4840 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4841 = load i64, i64* %4840, align 8
  %4842 = add i64 %4841, %4839
  store i64 %4842, i64* %4840, align 8
  %4843 = load i64, i64* %7, align 8
  %4844 = load i64, i64* %8, align 8
  %4845 = add i64 %4843, %4844
  %4846 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  store i64 %4845, i64* %4846, align 8
  %4847 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4848 = load i64, i64* %4847, align 8
  %4849 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4850 = load i64, i64* %4849, align 8
  %4851 = lshr i64 %4850, 14
  %4852 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4853 = load i64, i64* %4852, align 8
  %4854 = shl i64 %4853, 50
  %4855 = or i64 %4851, %4854
  %4856 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4857 = load i64, i64* %4856, align 8
  %4858 = lshr i64 %4857, 18
  %4859 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4860 = load i64, i64* %4859, align 8
  %4861 = shl i64 %4860, 46
  %4862 = or i64 %4858, %4861
  %4863 = xor i64 %4855, %4862
  %4864 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4865 = load i64, i64* %4864, align 8
  %4866 = lshr i64 %4865, 41
  %4867 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4868 = load i64, i64* %4867, align 8
  %4869 = shl i64 %4868, 23
  %4870 = or i64 %4866, %4869
  %4871 = xor i64 %4863, %4870
  %4872 = add i64 %4848, %4871
  %4873 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4874 = load i64, i64* %4873, align 8
  %4875 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4876 = load i64, i64* %4875, align 8
  %4877 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4878 = load i64, i64* %4877, align 8
  %4879 = xor i64 %4876, %4878
  %4880 = and i64 %4874, %4879
  %4881 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4882 = load i64, i64* %4881, align 8
  %4883 = xor i64 %4880, %4882
  %4884 = add i64 %4872, %4883
  %4885 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 54
  %4886 = load i64, i64* %4885, align 8
  %4887 = add i64 %4884, %4886
  %4888 = add i64 %4887, 6601373596472566643
  store i64 %4888, i64* %7, align 8
  %4889 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4890 = load i64, i64* %4889, align 8
  %4891 = lshr i64 %4890, 28
  %4892 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4893 = load i64, i64* %4892, align 8
  %4894 = shl i64 %4893, 36
  %4895 = or i64 %4891, %4894
  %4896 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4897 = load i64, i64* %4896, align 8
  %4898 = lshr i64 %4897, 34
  %4899 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4900 = load i64, i64* %4899, align 8
  %4901 = shl i64 %4900, 30
  %4902 = or i64 %4898, %4901
  %4903 = xor i64 %4895, %4902
  %4904 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4905 = load i64, i64* %4904, align 8
  %4906 = lshr i64 %4905, 39
  %4907 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4908 = load i64, i64* %4907, align 8
  %4909 = shl i64 %4908, 25
  %4910 = or i64 %4906, %4909
  %4911 = xor i64 %4903, %4910
  %4912 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %4913 = load i64, i64* %4912, align 8
  %4914 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4915 = load i64, i64* %4914, align 8
  %4916 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4917 = load i64, i64* %4916, align 8
  %4918 = or i64 %4915, %4917
  %4919 = and i64 %4913, %4918
  %4920 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %4921 = load i64, i64* %4920, align 8
  %4922 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %4923 = load i64, i64* %4922, align 8
  %4924 = and i64 %4921, %4923
  %4925 = or i64 %4919, %4924
  %4926 = add i64 %4911, %4925
  store i64 %4926, i64* %8, align 8
  %4927 = load i64, i64* %7, align 8
  %4928 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4929 = load i64, i64* %4928, align 8
  %4930 = add i64 %4929, %4927
  store i64 %4930, i64* %4928, align 8
  %4931 = load i64, i64* %7, align 8
  %4932 = load i64, i64* %8, align 8
  %4933 = add i64 %4931, %4932
  %4934 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  store i64 %4933, i64* %4934, align 8
  %4935 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %4936 = load i64, i64* %4935, align 8
  %4937 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4938 = load i64, i64* %4937, align 8
  %4939 = lshr i64 %4938, 14
  %4940 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4941 = load i64, i64* %4940, align 8
  %4942 = shl i64 %4941, 50
  %4943 = or i64 %4939, %4942
  %4944 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4945 = load i64, i64* %4944, align 8
  %4946 = lshr i64 %4945, 18
  %4947 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4948 = load i64, i64* %4947, align 8
  %4949 = shl i64 %4948, 46
  %4950 = or i64 %4946, %4949
  %4951 = xor i64 %4943, %4950
  %4952 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4953 = load i64, i64* %4952, align 8
  %4954 = lshr i64 %4953, 41
  %4955 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4956 = load i64, i64* %4955, align 8
  %4957 = shl i64 %4956, 23
  %4958 = or i64 %4954, %4957
  %4959 = xor i64 %4951, %4958
  %4960 = add i64 %4936, %4959
  %4961 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %4962 = load i64, i64* %4961, align 8
  %4963 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %4964 = load i64, i64* %4963, align 8
  %4965 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4966 = load i64, i64* %4965, align 8
  %4967 = xor i64 %4964, %4966
  %4968 = and i64 %4962, %4967
  %4969 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %4970 = load i64, i64* %4969, align 8
  %4971 = xor i64 %4968, %4970
  %4972 = add i64 %4960, %4971
  %4973 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 55
  %4974 = load i64, i64* %4973, align 8
  %4975 = add i64 %4972, %4974
  %4976 = add i64 %4975, 7507060721942968483
  store i64 %4976, i64* %7, align 8
  %4977 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4978 = load i64, i64* %4977, align 8
  %4979 = lshr i64 %4978, 28
  %4980 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4981 = load i64, i64* %4980, align 8
  %4982 = shl i64 %4981, 36
  %4983 = or i64 %4979, %4982
  %4984 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4985 = load i64, i64* %4984, align 8
  %4986 = lshr i64 %4985, 34
  %4987 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4988 = load i64, i64* %4987, align 8
  %4989 = shl i64 %4988, 30
  %4990 = or i64 %4986, %4989
  %4991 = xor i64 %4983, %4990
  %4992 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4993 = load i64, i64* %4992, align 8
  %4994 = lshr i64 %4993, 39
  %4995 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %4996 = load i64, i64* %4995, align 8
  %4997 = shl i64 %4996, 25
  %4998 = or i64 %4994, %4997
  %4999 = xor i64 %4991, %4998
  %5000 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5001 = load i64, i64* %5000, align 8
  %5002 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5003 = load i64, i64* %5002, align 8
  %5004 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5005 = load i64, i64* %5004, align 8
  %5006 = or i64 %5003, %5005
  %5007 = and i64 %5001, %5006
  %5008 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5009 = load i64, i64* %5008, align 8
  %5010 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5011 = load i64, i64* %5010, align 8
  %5012 = and i64 %5009, %5011
  %5013 = or i64 %5007, %5012
  %5014 = add i64 %4999, %5013
  store i64 %5014, i64* %8, align 8
  %5015 = load i64, i64* %7, align 8
  %5016 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5017 = load i64, i64* %5016, align 8
  %5018 = add i64 %5017, %5015
  store i64 %5018, i64* %5016, align 8
  %5019 = load i64, i64* %7, align 8
  %5020 = load i64, i64* %8, align 8
  %5021 = add i64 %5019, %5020
  %5022 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  store i64 %5021, i64* %5022, align 8
  %5023 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5024 = load i64, i64* %5023, align 8
  %5025 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5026 = load i64, i64* %5025, align 8
  %5027 = lshr i64 %5026, 14
  %5028 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5029 = load i64, i64* %5028, align 8
  %5030 = shl i64 %5029, 50
  %5031 = or i64 %5027, %5030
  %5032 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5033 = load i64, i64* %5032, align 8
  %5034 = lshr i64 %5033, 18
  %5035 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5036 = load i64, i64* %5035, align 8
  %5037 = shl i64 %5036, 46
  %5038 = or i64 %5034, %5037
  %5039 = xor i64 %5031, %5038
  %5040 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5041 = load i64, i64* %5040, align 8
  %5042 = lshr i64 %5041, 41
  %5043 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5044 = load i64, i64* %5043, align 8
  %5045 = shl i64 %5044, 23
  %5046 = or i64 %5042, %5045
  %5047 = xor i64 %5039, %5046
  %5048 = add i64 %5024, %5047
  %5049 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5050 = load i64, i64* %5049, align 8
  %5051 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5052 = load i64, i64* %5051, align 8
  %5053 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5054 = load i64, i64* %5053, align 8
  %5055 = xor i64 %5052, %5054
  %5056 = and i64 %5050, %5055
  %5057 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5058 = load i64, i64* %5057, align 8
  %5059 = xor i64 %5056, %5058
  %5060 = add i64 %5048, %5059
  %5061 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 56
  %5062 = load i64, i64* %5061, align 8
  %5063 = add i64 %5060, %5062
  %5064 = add i64 %5063, 8399075790359081724
  store i64 %5064, i64* %7, align 8
  %5065 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5066 = load i64, i64* %5065, align 8
  %5067 = lshr i64 %5066, 28
  %5068 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5069 = load i64, i64* %5068, align 8
  %5070 = shl i64 %5069, 36
  %5071 = or i64 %5067, %5070
  %5072 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5073 = load i64, i64* %5072, align 8
  %5074 = lshr i64 %5073, 34
  %5075 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5076 = load i64, i64* %5075, align 8
  %5077 = shl i64 %5076, 30
  %5078 = or i64 %5074, %5077
  %5079 = xor i64 %5071, %5078
  %5080 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5081 = load i64, i64* %5080, align 8
  %5082 = lshr i64 %5081, 39
  %5083 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5084 = load i64, i64* %5083, align 8
  %5085 = shl i64 %5084, 25
  %5086 = or i64 %5082, %5085
  %5087 = xor i64 %5079, %5086
  %5088 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5089 = load i64, i64* %5088, align 8
  %5090 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5091 = load i64, i64* %5090, align 8
  %5092 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5093 = load i64, i64* %5092, align 8
  %5094 = or i64 %5091, %5093
  %5095 = and i64 %5089, %5094
  %5096 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5097 = load i64, i64* %5096, align 8
  %5098 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5099 = load i64, i64* %5098, align 8
  %5100 = and i64 %5097, %5099
  %5101 = or i64 %5095, %5100
  %5102 = add i64 %5087, %5101
  store i64 %5102, i64* %8, align 8
  %5103 = load i64, i64* %7, align 8
  %5104 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5105 = load i64, i64* %5104, align 8
  %5106 = add i64 %5105, %5103
  store i64 %5106, i64* %5104, align 8
  %5107 = load i64, i64* %7, align 8
  %5108 = load i64, i64* %8, align 8
  %5109 = add i64 %5107, %5108
  %5110 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  store i64 %5109, i64* %5110, align 8
  %5111 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5112 = load i64, i64* %5111, align 8
  %5113 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5114 = load i64, i64* %5113, align 8
  %5115 = lshr i64 %5114, 14
  %5116 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5117 = load i64, i64* %5116, align 8
  %5118 = shl i64 %5117, 50
  %5119 = or i64 %5115, %5118
  %5120 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5121 = load i64, i64* %5120, align 8
  %5122 = lshr i64 %5121, 18
  %5123 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5124 = load i64, i64* %5123, align 8
  %5125 = shl i64 %5124, 46
  %5126 = or i64 %5122, %5125
  %5127 = xor i64 %5119, %5126
  %5128 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5129 = load i64, i64* %5128, align 8
  %5130 = lshr i64 %5129, 41
  %5131 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5132 = load i64, i64* %5131, align 8
  %5133 = shl i64 %5132, 23
  %5134 = or i64 %5130, %5133
  %5135 = xor i64 %5127, %5134
  %5136 = add i64 %5112, %5135
  %5137 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5138 = load i64, i64* %5137, align 8
  %5139 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5140 = load i64, i64* %5139, align 8
  %5141 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5142 = load i64, i64* %5141, align 8
  %5143 = xor i64 %5140, %5142
  %5144 = and i64 %5138, %5143
  %5145 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5146 = load i64, i64* %5145, align 8
  %5147 = xor i64 %5144, %5146
  %5148 = add i64 %5136, %5147
  %5149 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 57
  %5150 = load i64, i64* %5149, align 8
  %5151 = add i64 %5148, %5150
  %5152 = add i64 %5151, 8693463985226723168
  store i64 %5152, i64* %7, align 8
  %5153 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5154 = load i64, i64* %5153, align 8
  %5155 = lshr i64 %5154, 28
  %5156 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5157 = load i64, i64* %5156, align 8
  %5158 = shl i64 %5157, 36
  %5159 = or i64 %5155, %5158
  %5160 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5161 = load i64, i64* %5160, align 8
  %5162 = lshr i64 %5161, 34
  %5163 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5164 = load i64, i64* %5163, align 8
  %5165 = shl i64 %5164, 30
  %5166 = or i64 %5162, %5165
  %5167 = xor i64 %5159, %5166
  %5168 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5169 = load i64, i64* %5168, align 8
  %5170 = lshr i64 %5169, 39
  %5171 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5172 = load i64, i64* %5171, align 8
  %5173 = shl i64 %5172, 25
  %5174 = or i64 %5170, %5173
  %5175 = xor i64 %5167, %5174
  %5176 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5177 = load i64, i64* %5176, align 8
  %5178 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5179 = load i64, i64* %5178, align 8
  %5180 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5181 = load i64, i64* %5180, align 8
  %5182 = or i64 %5179, %5181
  %5183 = and i64 %5177, %5182
  %5184 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5185 = load i64, i64* %5184, align 8
  %5186 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5187 = load i64, i64* %5186, align 8
  %5188 = and i64 %5185, %5187
  %5189 = or i64 %5183, %5188
  %5190 = add i64 %5175, %5189
  store i64 %5190, i64* %8, align 8
  %5191 = load i64, i64* %7, align 8
  %5192 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5193 = load i64, i64* %5192, align 8
  %5194 = add i64 %5193, %5191
  store i64 %5194, i64* %5192, align 8
  %5195 = load i64, i64* %7, align 8
  %5196 = load i64, i64* %8, align 8
  %5197 = add i64 %5195, %5196
  %5198 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  store i64 %5197, i64* %5198, align 8
  %5199 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5200 = load i64, i64* %5199, align 8
  %5201 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5202 = load i64, i64* %5201, align 8
  %5203 = lshr i64 %5202, 14
  %5204 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5205 = load i64, i64* %5204, align 8
  %5206 = shl i64 %5205, 50
  %5207 = or i64 %5203, %5206
  %5208 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5209 = load i64, i64* %5208, align 8
  %5210 = lshr i64 %5209, 18
  %5211 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5212 = load i64, i64* %5211, align 8
  %5213 = shl i64 %5212, 46
  %5214 = or i64 %5210, %5213
  %5215 = xor i64 %5207, %5214
  %5216 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5217 = load i64, i64* %5216, align 8
  %5218 = lshr i64 %5217, 41
  %5219 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5220 = load i64, i64* %5219, align 8
  %5221 = shl i64 %5220, 23
  %5222 = or i64 %5218, %5221
  %5223 = xor i64 %5215, %5222
  %5224 = add i64 %5200, %5223
  %5225 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5226 = load i64, i64* %5225, align 8
  %5227 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5228 = load i64, i64* %5227, align 8
  %5229 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5230 = load i64, i64* %5229, align 8
  %5231 = xor i64 %5228, %5230
  %5232 = and i64 %5226, %5231
  %5233 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5234 = load i64, i64* %5233, align 8
  %5235 = xor i64 %5232, %5234
  %5236 = add i64 %5224, %5235
  %5237 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 58
  %5238 = load i64, i64* %5237, align 8
  %5239 = add i64 %5236, %5238
  %5240 = add i64 %5239, -8878714635349349518
  store i64 %5240, i64* %7, align 8
  %5241 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5242 = load i64, i64* %5241, align 8
  %5243 = lshr i64 %5242, 28
  %5244 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5245 = load i64, i64* %5244, align 8
  %5246 = shl i64 %5245, 36
  %5247 = or i64 %5243, %5246
  %5248 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5249 = load i64, i64* %5248, align 8
  %5250 = lshr i64 %5249, 34
  %5251 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5252 = load i64, i64* %5251, align 8
  %5253 = shl i64 %5252, 30
  %5254 = or i64 %5250, %5253
  %5255 = xor i64 %5247, %5254
  %5256 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5257 = load i64, i64* %5256, align 8
  %5258 = lshr i64 %5257, 39
  %5259 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5260 = load i64, i64* %5259, align 8
  %5261 = shl i64 %5260, 25
  %5262 = or i64 %5258, %5261
  %5263 = xor i64 %5255, %5262
  %5264 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5265 = load i64, i64* %5264, align 8
  %5266 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5267 = load i64, i64* %5266, align 8
  %5268 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5269 = load i64, i64* %5268, align 8
  %5270 = or i64 %5267, %5269
  %5271 = and i64 %5265, %5270
  %5272 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5273 = load i64, i64* %5272, align 8
  %5274 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5275 = load i64, i64* %5274, align 8
  %5276 = and i64 %5273, %5275
  %5277 = or i64 %5271, %5276
  %5278 = add i64 %5263, %5277
  store i64 %5278, i64* %8, align 8
  %5279 = load i64, i64* %7, align 8
  %5280 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5281 = load i64, i64* %5280, align 8
  %5282 = add i64 %5281, %5279
  store i64 %5282, i64* %5280, align 8
  %5283 = load i64, i64* %7, align 8
  %5284 = load i64, i64* %8, align 8
  %5285 = add i64 %5283, %5284
  %5286 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  store i64 %5285, i64* %5286, align 8
  %5287 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5288 = load i64, i64* %5287, align 8
  %5289 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5290 = load i64, i64* %5289, align 8
  %5291 = lshr i64 %5290, 14
  %5292 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5293 = load i64, i64* %5292, align 8
  %5294 = shl i64 %5293, 50
  %5295 = or i64 %5291, %5294
  %5296 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5297 = load i64, i64* %5296, align 8
  %5298 = lshr i64 %5297, 18
  %5299 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5300 = load i64, i64* %5299, align 8
  %5301 = shl i64 %5300, 46
  %5302 = or i64 %5298, %5301
  %5303 = xor i64 %5295, %5302
  %5304 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5305 = load i64, i64* %5304, align 8
  %5306 = lshr i64 %5305, 41
  %5307 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5308 = load i64, i64* %5307, align 8
  %5309 = shl i64 %5308, 23
  %5310 = or i64 %5306, %5309
  %5311 = xor i64 %5303, %5310
  %5312 = add i64 %5288, %5311
  %5313 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5314 = load i64, i64* %5313, align 8
  %5315 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5316 = load i64, i64* %5315, align 8
  %5317 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5318 = load i64, i64* %5317, align 8
  %5319 = xor i64 %5316, %5318
  %5320 = and i64 %5314, %5319
  %5321 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5322 = load i64, i64* %5321, align 8
  %5323 = xor i64 %5320, %5322
  %5324 = add i64 %5312, %5323
  %5325 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 59
  %5326 = load i64, i64* %5325, align 8
  %5327 = add i64 %5324, %5326
  %5328 = add i64 %5327, -8302665154208450068
  store i64 %5328, i64* %7, align 8
  %5329 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5330 = load i64, i64* %5329, align 8
  %5331 = lshr i64 %5330, 28
  %5332 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5333 = load i64, i64* %5332, align 8
  %5334 = shl i64 %5333, 36
  %5335 = or i64 %5331, %5334
  %5336 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5337 = load i64, i64* %5336, align 8
  %5338 = lshr i64 %5337, 34
  %5339 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5340 = load i64, i64* %5339, align 8
  %5341 = shl i64 %5340, 30
  %5342 = or i64 %5338, %5341
  %5343 = xor i64 %5335, %5342
  %5344 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5345 = load i64, i64* %5344, align 8
  %5346 = lshr i64 %5345, 39
  %5347 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5348 = load i64, i64* %5347, align 8
  %5349 = shl i64 %5348, 25
  %5350 = or i64 %5346, %5349
  %5351 = xor i64 %5343, %5350
  %5352 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5353 = load i64, i64* %5352, align 8
  %5354 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5355 = load i64, i64* %5354, align 8
  %5356 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5357 = load i64, i64* %5356, align 8
  %5358 = or i64 %5355, %5357
  %5359 = and i64 %5353, %5358
  %5360 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5361 = load i64, i64* %5360, align 8
  %5362 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5363 = load i64, i64* %5362, align 8
  %5364 = and i64 %5361, %5363
  %5365 = or i64 %5359, %5364
  %5366 = add i64 %5351, %5365
  store i64 %5366, i64* %8, align 8
  %5367 = load i64, i64* %7, align 8
  %5368 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5369 = load i64, i64* %5368, align 8
  %5370 = add i64 %5369, %5367
  store i64 %5370, i64* %5368, align 8
  %5371 = load i64, i64* %7, align 8
  %5372 = load i64, i64* %8, align 8
  %5373 = add i64 %5371, %5372
  %5374 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  store i64 %5373, i64* %5374, align 8
  %5375 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5376 = load i64, i64* %5375, align 8
  %5377 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5378 = load i64, i64* %5377, align 8
  %5379 = lshr i64 %5378, 14
  %5380 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5381 = load i64, i64* %5380, align 8
  %5382 = shl i64 %5381, 50
  %5383 = or i64 %5379, %5382
  %5384 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5385 = load i64, i64* %5384, align 8
  %5386 = lshr i64 %5385, 18
  %5387 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5388 = load i64, i64* %5387, align 8
  %5389 = shl i64 %5388, 46
  %5390 = or i64 %5386, %5389
  %5391 = xor i64 %5383, %5390
  %5392 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5393 = load i64, i64* %5392, align 8
  %5394 = lshr i64 %5393, 41
  %5395 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5396 = load i64, i64* %5395, align 8
  %5397 = shl i64 %5396, 23
  %5398 = or i64 %5394, %5397
  %5399 = xor i64 %5391, %5398
  %5400 = add i64 %5376, %5399
  %5401 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5402 = load i64, i64* %5401, align 8
  %5403 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5404 = load i64, i64* %5403, align 8
  %5405 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5406 = load i64, i64* %5405, align 8
  %5407 = xor i64 %5404, %5406
  %5408 = and i64 %5402, %5407
  %5409 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5410 = load i64, i64* %5409, align 8
  %5411 = xor i64 %5408, %5410
  %5412 = add i64 %5400, %5411
  %5413 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 60
  %5414 = load i64, i64* %5413, align 8
  %5415 = add i64 %5412, %5414
  %5416 = add i64 %5415, -8016688836872298968
  store i64 %5416, i64* %7, align 8
  %5417 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5418 = load i64, i64* %5417, align 8
  %5419 = lshr i64 %5418, 28
  %5420 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5421 = load i64, i64* %5420, align 8
  %5422 = shl i64 %5421, 36
  %5423 = or i64 %5419, %5422
  %5424 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5425 = load i64, i64* %5424, align 8
  %5426 = lshr i64 %5425, 34
  %5427 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5428 = load i64, i64* %5427, align 8
  %5429 = shl i64 %5428, 30
  %5430 = or i64 %5426, %5429
  %5431 = xor i64 %5423, %5430
  %5432 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5433 = load i64, i64* %5432, align 8
  %5434 = lshr i64 %5433, 39
  %5435 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5436 = load i64, i64* %5435, align 8
  %5437 = shl i64 %5436, 25
  %5438 = or i64 %5434, %5437
  %5439 = xor i64 %5431, %5438
  %5440 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5441 = load i64, i64* %5440, align 8
  %5442 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5443 = load i64, i64* %5442, align 8
  %5444 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5445 = load i64, i64* %5444, align 8
  %5446 = or i64 %5443, %5445
  %5447 = and i64 %5441, %5446
  %5448 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5449 = load i64, i64* %5448, align 8
  %5450 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5451 = load i64, i64* %5450, align 8
  %5452 = and i64 %5449, %5451
  %5453 = or i64 %5447, %5452
  %5454 = add i64 %5439, %5453
  store i64 %5454, i64* %8, align 8
  %5455 = load i64, i64* %7, align 8
  %5456 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5457 = load i64, i64* %5456, align 8
  %5458 = add i64 %5457, %5455
  store i64 %5458, i64* %5456, align 8
  %5459 = load i64, i64* %7, align 8
  %5460 = load i64, i64* %8, align 8
  %5461 = add i64 %5459, %5460
  %5462 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  store i64 %5461, i64* %5462, align 8
  %5463 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5464 = load i64, i64* %5463, align 8
  %5465 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5466 = load i64, i64* %5465, align 8
  %5467 = lshr i64 %5466, 14
  %5468 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5469 = load i64, i64* %5468, align 8
  %5470 = shl i64 %5469, 50
  %5471 = or i64 %5467, %5470
  %5472 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5473 = load i64, i64* %5472, align 8
  %5474 = lshr i64 %5473, 18
  %5475 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5476 = load i64, i64* %5475, align 8
  %5477 = shl i64 %5476, 46
  %5478 = or i64 %5474, %5477
  %5479 = xor i64 %5471, %5478
  %5480 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5481 = load i64, i64* %5480, align 8
  %5482 = lshr i64 %5481, 41
  %5483 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5484 = load i64, i64* %5483, align 8
  %5485 = shl i64 %5484, 23
  %5486 = or i64 %5482, %5485
  %5487 = xor i64 %5479, %5486
  %5488 = add i64 %5464, %5487
  %5489 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5490 = load i64, i64* %5489, align 8
  %5491 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5492 = load i64, i64* %5491, align 8
  %5493 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5494 = load i64, i64* %5493, align 8
  %5495 = xor i64 %5492, %5494
  %5496 = and i64 %5490, %5495
  %5497 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5498 = load i64, i64* %5497, align 8
  %5499 = xor i64 %5496, %5498
  %5500 = add i64 %5488, %5499
  %5501 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 61
  %5502 = load i64, i64* %5501, align 8
  %5503 = add i64 %5500, %5502
  %5504 = add i64 %5503, -6606660893046293015
  store i64 %5504, i64* %7, align 8
  %5505 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5506 = load i64, i64* %5505, align 8
  %5507 = lshr i64 %5506, 28
  %5508 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5509 = load i64, i64* %5508, align 8
  %5510 = shl i64 %5509, 36
  %5511 = or i64 %5507, %5510
  %5512 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5513 = load i64, i64* %5512, align 8
  %5514 = lshr i64 %5513, 34
  %5515 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5516 = load i64, i64* %5515, align 8
  %5517 = shl i64 %5516, 30
  %5518 = or i64 %5514, %5517
  %5519 = xor i64 %5511, %5518
  %5520 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5521 = load i64, i64* %5520, align 8
  %5522 = lshr i64 %5521, 39
  %5523 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5524 = load i64, i64* %5523, align 8
  %5525 = shl i64 %5524, 25
  %5526 = or i64 %5522, %5525
  %5527 = xor i64 %5519, %5526
  %5528 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5529 = load i64, i64* %5528, align 8
  %5530 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5531 = load i64, i64* %5530, align 8
  %5532 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5533 = load i64, i64* %5532, align 8
  %5534 = or i64 %5531, %5533
  %5535 = and i64 %5529, %5534
  %5536 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5537 = load i64, i64* %5536, align 8
  %5538 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5539 = load i64, i64* %5538, align 8
  %5540 = and i64 %5537, %5539
  %5541 = or i64 %5535, %5540
  %5542 = add i64 %5527, %5541
  store i64 %5542, i64* %8, align 8
  %5543 = load i64, i64* %7, align 8
  %5544 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5545 = load i64, i64* %5544, align 8
  %5546 = add i64 %5545, %5543
  store i64 %5546, i64* %5544, align 8
  %5547 = load i64, i64* %7, align 8
  %5548 = load i64, i64* %8, align 8
  %5549 = add i64 %5547, %5548
  %5550 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  store i64 %5549, i64* %5550, align 8
  %5551 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5552 = load i64, i64* %5551, align 8
  %5553 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5554 = load i64, i64* %5553, align 8
  %5555 = lshr i64 %5554, 14
  %5556 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5557 = load i64, i64* %5556, align 8
  %5558 = shl i64 %5557, 50
  %5559 = or i64 %5555, %5558
  %5560 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5561 = load i64, i64* %5560, align 8
  %5562 = lshr i64 %5561, 18
  %5563 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5564 = load i64, i64* %5563, align 8
  %5565 = shl i64 %5564, 46
  %5566 = or i64 %5562, %5565
  %5567 = xor i64 %5559, %5566
  %5568 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5569 = load i64, i64* %5568, align 8
  %5570 = lshr i64 %5569, 41
  %5571 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5572 = load i64, i64* %5571, align 8
  %5573 = shl i64 %5572, 23
  %5574 = or i64 %5570, %5573
  %5575 = xor i64 %5567, %5574
  %5576 = add i64 %5552, %5575
  %5577 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5578 = load i64, i64* %5577, align 8
  %5579 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5580 = load i64, i64* %5579, align 8
  %5581 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5582 = load i64, i64* %5581, align 8
  %5583 = xor i64 %5580, %5582
  %5584 = and i64 %5578, %5583
  %5585 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5586 = load i64, i64* %5585, align 8
  %5587 = xor i64 %5584, %5586
  %5588 = add i64 %5576, %5587
  %5589 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 62
  %5590 = load i64, i64* %5589, align 8
  %5591 = add i64 %5588, %5590
  %5592 = add i64 %5591, -4685533653050689259
  store i64 %5592, i64* %7, align 8
  %5593 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5594 = load i64, i64* %5593, align 8
  %5595 = lshr i64 %5594, 28
  %5596 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5597 = load i64, i64* %5596, align 8
  %5598 = shl i64 %5597, 36
  %5599 = or i64 %5595, %5598
  %5600 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5601 = load i64, i64* %5600, align 8
  %5602 = lshr i64 %5601, 34
  %5603 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5604 = load i64, i64* %5603, align 8
  %5605 = shl i64 %5604, 30
  %5606 = or i64 %5602, %5605
  %5607 = xor i64 %5599, %5606
  %5608 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5609 = load i64, i64* %5608, align 8
  %5610 = lshr i64 %5609, 39
  %5611 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5612 = load i64, i64* %5611, align 8
  %5613 = shl i64 %5612, 25
  %5614 = or i64 %5610, %5613
  %5615 = xor i64 %5607, %5614
  %5616 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5617 = load i64, i64* %5616, align 8
  %5618 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5619 = load i64, i64* %5618, align 8
  %5620 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5621 = load i64, i64* %5620, align 8
  %5622 = or i64 %5619, %5621
  %5623 = and i64 %5617, %5622
  %5624 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5625 = load i64, i64* %5624, align 8
  %5626 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5627 = load i64, i64* %5626, align 8
  %5628 = and i64 %5625, %5627
  %5629 = or i64 %5623, %5628
  %5630 = add i64 %5615, %5629
  store i64 %5630, i64* %8, align 8
  %5631 = load i64, i64* %7, align 8
  %5632 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5633 = load i64, i64* %5632, align 8
  %5634 = add i64 %5633, %5631
  store i64 %5634, i64* %5632, align 8
  %5635 = load i64, i64* %7, align 8
  %5636 = load i64, i64* %8, align 8
  %5637 = add i64 %5635, %5636
  %5638 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  store i64 %5637, i64* %5638, align 8
  %5639 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5640 = load i64, i64* %5639, align 8
  %5641 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5642 = load i64, i64* %5641, align 8
  %5643 = lshr i64 %5642, 14
  %5644 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5645 = load i64, i64* %5644, align 8
  %5646 = shl i64 %5645, 50
  %5647 = or i64 %5643, %5646
  %5648 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5649 = load i64, i64* %5648, align 8
  %5650 = lshr i64 %5649, 18
  %5651 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5652 = load i64, i64* %5651, align 8
  %5653 = shl i64 %5652, 46
  %5654 = or i64 %5650, %5653
  %5655 = xor i64 %5647, %5654
  %5656 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5657 = load i64, i64* %5656, align 8
  %5658 = lshr i64 %5657, 41
  %5659 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5660 = load i64, i64* %5659, align 8
  %5661 = shl i64 %5660, 23
  %5662 = or i64 %5658, %5661
  %5663 = xor i64 %5655, %5662
  %5664 = add i64 %5640, %5663
  %5665 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5666 = load i64, i64* %5665, align 8
  %5667 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5668 = load i64, i64* %5667, align 8
  %5669 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5670 = load i64, i64* %5669, align 8
  %5671 = xor i64 %5668, %5670
  %5672 = and i64 %5666, %5671
  %5673 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5674 = load i64, i64* %5673, align 8
  %5675 = xor i64 %5672, %5674
  %5676 = add i64 %5664, %5675
  %5677 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 63
  %5678 = load i64, i64* %5677, align 8
  %5679 = add i64 %5676, %5678
  %5680 = add i64 %5679, -4147400797238176981
  store i64 %5680, i64* %7, align 8
  %5681 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5682 = load i64, i64* %5681, align 8
  %5683 = lshr i64 %5682, 28
  %5684 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5685 = load i64, i64* %5684, align 8
  %5686 = shl i64 %5685, 36
  %5687 = or i64 %5683, %5686
  %5688 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5689 = load i64, i64* %5688, align 8
  %5690 = lshr i64 %5689, 34
  %5691 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5692 = load i64, i64* %5691, align 8
  %5693 = shl i64 %5692, 30
  %5694 = or i64 %5690, %5693
  %5695 = xor i64 %5687, %5694
  %5696 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5697 = load i64, i64* %5696, align 8
  %5698 = lshr i64 %5697, 39
  %5699 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5700 = load i64, i64* %5699, align 8
  %5701 = shl i64 %5700, 25
  %5702 = or i64 %5698, %5701
  %5703 = xor i64 %5695, %5702
  %5704 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5705 = load i64, i64* %5704, align 8
  %5706 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5707 = load i64, i64* %5706, align 8
  %5708 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5709 = load i64, i64* %5708, align 8
  %5710 = or i64 %5707, %5709
  %5711 = and i64 %5705, %5710
  %5712 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5713 = load i64, i64* %5712, align 8
  %5714 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5715 = load i64, i64* %5714, align 8
  %5716 = and i64 %5713, %5715
  %5717 = or i64 %5711, %5716
  %5718 = add i64 %5703, %5717
  store i64 %5718, i64* %8, align 8
  %5719 = load i64, i64* %7, align 8
  %5720 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5721 = load i64, i64* %5720, align 8
  %5722 = add i64 %5721, %5719
  store i64 %5722, i64* %5720, align 8
  %5723 = load i64, i64* %7, align 8
  %5724 = load i64, i64* %8, align 8
  %5725 = add i64 %5723, %5724
  %5726 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  store i64 %5725, i64* %5726, align 8
  %5727 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5728 = load i64, i64* %5727, align 8
  %5729 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5730 = load i64, i64* %5729, align 8
  %5731 = lshr i64 %5730, 14
  %5732 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5733 = load i64, i64* %5732, align 8
  %5734 = shl i64 %5733, 50
  %5735 = or i64 %5731, %5734
  %5736 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5737 = load i64, i64* %5736, align 8
  %5738 = lshr i64 %5737, 18
  %5739 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5740 = load i64, i64* %5739, align 8
  %5741 = shl i64 %5740, 46
  %5742 = or i64 %5738, %5741
  %5743 = xor i64 %5735, %5742
  %5744 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5745 = load i64, i64* %5744, align 8
  %5746 = lshr i64 %5745, 41
  %5747 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5748 = load i64, i64* %5747, align 8
  %5749 = shl i64 %5748, 23
  %5750 = or i64 %5746, %5749
  %5751 = xor i64 %5743, %5750
  %5752 = add i64 %5728, %5751
  %5753 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5754 = load i64, i64* %5753, align 8
  %5755 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5756 = load i64, i64* %5755, align 8
  %5757 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5758 = load i64, i64* %5757, align 8
  %5759 = xor i64 %5756, %5758
  %5760 = and i64 %5754, %5759
  %5761 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5762 = load i64, i64* %5761, align 8
  %5763 = xor i64 %5760, %5762
  %5764 = add i64 %5752, %5763
  %5765 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 64
  %5766 = load i64, i64* %5765, align 8
  %5767 = add i64 %5764, %5766
  %5768 = add i64 %5767, -3880063495543823972
  store i64 %5768, i64* %7, align 8
  %5769 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5770 = load i64, i64* %5769, align 8
  %5771 = lshr i64 %5770, 28
  %5772 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5773 = load i64, i64* %5772, align 8
  %5774 = shl i64 %5773, 36
  %5775 = or i64 %5771, %5774
  %5776 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5777 = load i64, i64* %5776, align 8
  %5778 = lshr i64 %5777, 34
  %5779 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5780 = load i64, i64* %5779, align 8
  %5781 = shl i64 %5780, 30
  %5782 = or i64 %5778, %5781
  %5783 = xor i64 %5775, %5782
  %5784 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5785 = load i64, i64* %5784, align 8
  %5786 = lshr i64 %5785, 39
  %5787 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5788 = load i64, i64* %5787, align 8
  %5789 = shl i64 %5788, 25
  %5790 = or i64 %5786, %5789
  %5791 = xor i64 %5783, %5790
  %5792 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5793 = load i64, i64* %5792, align 8
  %5794 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5795 = load i64, i64* %5794, align 8
  %5796 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5797 = load i64, i64* %5796, align 8
  %5798 = or i64 %5795, %5797
  %5799 = and i64 %5793, %5798
  %5800 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5801 = load i64, i64* %5800, align 8
  %5802 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5803 = load i64, i64* %5802, align 8
  %5804 = and i64 %5801, %5803
  %5805 = or i64 %5799, %5804
  %5806 = add i64 %5791, %5805
  store i64 %5806, i64* %8, align 8
  %5807 = load i64, i64* %7, align 8
  %5808 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5809 = load i64, i64* %5808, align 8
  %5810 = add i64 %5809, %5807
  store i64 %5810, i64* %5808, align 8
  %5811 = load i64, i64* %7, align 8
  %5812 = load i64, i64* %8, align 8
  %5813 = add i64 %5811, %5812
  %5814 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  store i64 %5813, i64* %5814, align 8
  %5815 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5816 = load i64, i64* %5815, align 8
  %5817 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5818 = load i64, i64* %5817, align 8
  %5819 = lshr i64 %5818, 14
  %5820 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5821 = load i64, i64* %5820, align 8
  %5822 = shl i64 %5821, 50
  %5823 = or i64 %5819, %5822
  %5824 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5825 = load i64, i64* %5824, align 8
  %5826 = lshr i64 %5825, 18
  %5827 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5828 = load i64, i64* %5827, align 8
  %5829 = shl i64 %5828, 46
  %5830 = or i64 %5826, %5829
  %5831 = xor i64 %5823, %5830
  %5832 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5833 = load i64, i64* %5832, align 8
  %5834 = lshr i64 %5833, 41
  %5835 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5836 = load i64, i64* %5835, align 8
  %5837 = shl i64 %5836, 23
  %5838 = or i64 %5834, %5837
  %5839 = xor i64 %5831, %5838
  %5840 = add i64 %5816, %5839
  %5841 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5842 = load i64, i64* %5841, align 8
  %5843 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5844 = load i64, i64* %5843, align 8
  %5845 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5846 = load i64, i64* %5845, align 8
  %5847 = xor i64 %5844, %5846
  %5848 = and i64 %5842, %5847
  %5849 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5850 = load i64, i64* %5849, align 8
  %5851 = xor i64 %5848, %5850
  %5852 = add i64 %5840, %5851
  %5853 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 65
  %5854 = load i64, i64* %5853, align 8
  %5855 = add i64 %5852, %5854
  %5856 = add i64 %5855, -3348786107499101689
  store i64 %5856, i64* %7, align 8
  %5857 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5858 = load i64, i64* %5857, align 8
  %5859 = lshr i64 %5858, 28
  %5860 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5861 = load i64, i64* %5860, align 8
  %5862 = shl i64 %5861, 36
  %5863 = or i64 %5859, %5862
  %5864 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5865 = load i64, i64* %5864, align 8
  %5866 = lshr i64 %5865, 34
  %5867 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5868 = load i64, i64* %5867, align 8
  %5869 = shl i64 %5868, 30
  %5870 = or i64 %5866, %5869
  %5871 = xor i64 %5863, %5870
  %5872 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5873 = load i64, i64* %5872, align 8
  %5874 = lshr i64 %5873, 39
  %5875 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5876 = load i64, i64* %5875, align 8
  %5877 = shl i64 %5876, 25
  %5878 = or i64 %5874, %5877
  %5879 = xor i64 %5871, %5878
  %5880 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5881 = load i64, i64* %5880, align 8
  %5882 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5883 = load i64, i64* %5882, align 8
  %5884 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5885 = load i64, i64* %5884, align 8
  %5886 = or i64 %5883, %5885
  %5887 = and i64 %5881, %5886
  %5888 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5889 = load i64, i64* %5888, align 8
  %5890 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5891 = load i64, i64* %5890, align 8
  %5892 = and i64 %5889, %5891
  %5893 = or i64 %5887, %5892
  %5894 = add i64 %5879, %5893
  store i64 %5894, i64* %8, align 8
  %5895 = load i64, i64* %7, align 8
  %5896 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5897 = load i64, i64* %5896, align 8
  %5898 = add i64 %5897, %5895
  store i64 %5898, i64* %5896, align 8
  %5899 = load i64, i64* %7, align 8
  %5900 = load i64, i64* %8, align 8
  %5901 = add i64 %5899, %5900
  %5902 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  store i64 %5901, i64* %5902, align 8
  %5903 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %5904 = load i64, i64* %5903, align 8
  %5905 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5906 = load i64, i64* %5905, align 8
  %5907 = lshr i64 %5906, 14
  %5908 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5909 = load i64, i64* %5908, align 8
  %5910 = shl i64 %5909, 50
  %5911 = or i64 %5907, %5910
  %5912 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5913 = load i64, i64* %5912, align 8
  %5914 = lshr i64 %5913, 18
  %5915 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5916 = load i64, i64* %5915, align 8
  %5917 = shl i64 %5916, 46
  %5918 = or i64 %5914, %5917
  %5919 = xor i64 %5911, %5918
  %5920 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5921 = load i64, i64* %5920, align 8
  %5922 = lshr i64 %5921, 41
  %5923 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5924 = load i64, i64* %5923, align 8
  %5925 = shl i64 %5924, 23
  %5926 = or i64 %5922, %5925
  %5927 = xor i64 %5919, %5926
  %5928 = add i64 %5904, %5927
  %5929 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %5930 = load i64, i64* %5929, align 8
  %5931 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %5932 = load i64, i64* %5931, align 8
  %5933 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5934 = load i64, i64* %5933, align 8
  %5935 = xor i64 %5932, %5934
  %5936 = and i64 %5930, %5935
  %5937 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5938 = load i64, i64* %5937, align 8
  %5939 = xor i64 %5936, %5938
  %5940 = add i64 %5928, %5939
  %5941 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 66
  %5942 = load i64, i64* %5941, align 8
  %5943 = add i64 %5940, %5942
  %5944 = add i64 %5943, -1523767162380948706
  store i64 %5944, i64* %7, align 8
  %5945 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5946 = load i64, i64* %5945, align 8
  %5947 = lshr i64 %5946, 28
  %5948 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5949 = load i64, i64* %5948, align 8
  %5950 = shl i64 %5949, 36
  %5951 = or i64 %5947, %5950
  %5952 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5953 = load i64, i64* %5952, align 8
  %5954 = lshr i64 %5953, 34
  %5955 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5956 = load i64, i64* %5955, align 8
  %5957 = shl i64 %5956, 30
  %5958 = or i64 %5954, %5957
  %5959 = xor i64 %5951, %5958
  %5960 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5961 = load i64, i64* %5960, align 8
  %5962 = lshr i64 %5961, 39
  %5963 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5964 = load i64, i64* %5963, align 8
  %5965 = shl i64 %5964, 25
  %5966 = or i64 %5962, %5965
  %5967 = xor i64 %5959, %5966
  %5968 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %5969 = load i64, i64* %5968, align 8
  %5970 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5971 = load i64, i64* %5970, align 8
  %5972 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5973 = load i64, i64* %5972, align 8
  %5974 = or i64 %5971, %5973
  %5975 = and i64 %5969, %5974
  %5976 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %5977 = load i64, i64* %5976, align 8
  %5978 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %5979 = load i64, i64* %5978, align 8
  %5980 = and i64 %5977, %5979
  %5981 = or i64 %5975, %5980
  %5982 = add i64 %5967, %5981
  store i64 %5982, i64* %8, align 8
  %5983 = load i64, i64* %7, align 8
  %5984 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5985 = load i64, i64* %5984, align 8
  %5986 = add i64 %5985, %5983
  store i64 %5986, i64* %5984, align 8
  %5987 = load i64, i64* %7, align 8
  %5988 = load i64, i64* %8, align 8
  %5989 = add i64 %5987, %5988
  %5990 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  store i64 %5989, i64* %5990, align 8
  %5991 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %5992 = load i64, i64* %5991, align 8
  %5993 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5994 = load i64, i64* %5993, align 8
  %5995 = lshr i64 %5994, 14
  %5996 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %5997 = load i64, i64* %5996, align 8
  %5998 = shl i64 %5997, 50
  %5999 = or i64 %5995, %5998
  %6000 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6001 = load i64, i64* %6000, align 8
  %6002 = lshr i64 %6001, 18
  %6003 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6004 = load i64, i64* %6003, align 8
  %6005 = shl i64 %6004, 46
  %6006 = or i64 %6002, %6005
  %6007 = xor i64 %5999, %6006
  %6008 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6009 = load i64, i64* %6008, align 8
  %6010 = lshr i64 %6009, 41
  %6011 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6012 = load i64, i64* %6011, align 8
  %6013 = shl i64 %6012, 23
  %6014 = or i64 %6010, %6013
  %6015 = xor i64 %6007, %6014
  %6016 = add i64 %5992, %6015
  %6017 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6018 = load i64, i64* %6017, align 8
  %6019 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6020 = load i64, i64* %6019, align 8
  %6021 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6022 = load i64, i64* %6021, align 8
  %6023 = xor i64 %6020, %6022
  %6024 = and i64 %6018, %6023
  %6025 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6026 = load i64, i64* %6025, align 8
  %6027 = xor i64 %6024, %6026
  %6028 = add i64 %6016, %6027
  %6029 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 67
  %6030 = load i64, i64* %6029, align 8
  %6031 = add i64 %6028, %6030
  %6032 = add i64 %6031, -757361751448694408
  store i64 %6032, i64* %7, align 8
  %6033 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6034 = load i64, i64* %6033, align 8
  %6035 = lshr i64 %6034, 28
  %6036 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6037 = load i64, i64* %6036, align 8
  %6038 = shl i64 %6037, 36
  %6039 = or i64 %6035, %6038
  %6040 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6041 = load i64, i64* %6040, align 8
  %6042 = lshr i64 %6041, 34
  %6043 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6044 = load i64, i64* %6043, align 8
  %6045 = shl i64 %6044, 30
  %6046 = or i64 %6042, %6045
  %6047 = xor i64 %6039, %6046
  %6048 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6049 = load i64, i64* %6048, align 8
  %6050 = lshr i64 %6049, 39
  %6051 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6052 = load i64, i64* %6051, align 8
  %6053 = shl i64 %6052, 25
  %6054 = or i64 %6050, %6053
  %6055 = xor i64 %6047, %6054
  %6056 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6057 = load i64, i64* %6056, align 8
  %6058 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6059 = load i64, i64* %6058, align 8
  %6060 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6061 = load i64, i64* %6060, align 8
  %6062 = or i64 %6059, %6061
  %6063 = and i64 %6057, %6062
  %6064 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6065 = load i64, i64* %6064, align 8
  %6066 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6067 = load i64, i64* %6066, align 8
  %6068 = and i64 %6065, %6067
  %6069 = or i64 %6063, %6068
  %6070 = add i64 %6055, %6069
  store i64 %6070, i64* %8, align 8
  %6071 = load i64, i64* %7, align 8
  %6072 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6073 = load i64, i64* %6072, align 8
  %6074 = add i64 %6073, %6071
  store i64 %6074, i64* %6072, align 8
  %6075 = load i64, i64* %7, align 8
  %6076 = load i64, i64* %8, align 8
  %6077 = add i64 %6075, %6076
  %6078 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  store i64 %6077, i64* %6078, align 8
  %6079 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6080 = load i64, i64* %6079, align 8
  %6081 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6082 = load i64, i64* %6081, align 8
  %6083 = lshr i64 %6082, 14
  %6084 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6085 = load i64, i64* %6084, align 8
  %6086 = shl i64 %6085, 50
  %6087 = or i64 %6083, %6086
  %6088 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6089 = load i64, i64* %6088, align 8
  %6090 = lshr i64 %6089, 18
  %6091 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6092 = load i64, i64* %6091, align 8
  %6093 = shl i64 %6092, 46
  %6094 = or i64 %6090, %6093
  %6095 = xor i64 %6087, %6094
  %6096 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6097 = load i64, i64* %6096, align 8
  %6098 = lshr i64 %6097, 41
  %6099 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6100 = load i64, i64* %6099, align 8
  %6101 = shl i64 %6100, 23
  %6102 = or i64 %6098, %6101
  %6103 = xor i64 %6095, %6102
  %6104 = add i64 %6080, %6103
  %6105 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6106 = load i64, i64* %6105, align 8
  %6107 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6108 = load i64, i64* %6107, align 8
  %6109 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6110 = load i64, i64* %6109, align 8
  %6111 = xor i64 %6108, %6110
  %6112 = and i64 %6106, %6111
  %6113 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6114 = load i64, i64* %6113, align 8
  %6115 = xor i64 %6112, %6114
  %6116 = add i64 %6104, %6115
  %6117 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 68
  %6118 = load i64, i64* %6117, align 8
  %6119 = add i64 %6116, %6118
  %6120 = add i64 %6119, 500013540394364858
  store i64 %6120, i64* %7, align 8
  %6121 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6122 = load i64, i64* %6121, align 8
  %6123 = lshr i64 %6122, 28
  %6124 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6125 = load i64, i64* %6124, align 8
  %6126 = shl i64 %6125, 36
  %6127 = or i64 %6123, %6126
  %6128 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6129 = load i64, i64* %6128, align 8
  %6130 = lshr i64 %6129, 34
  %6131 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6132 = load i64, i64* %6131, align 8
  %6133 = shl i64 %6132, 30
  %6134 = or i64 %6130, %6133
  %6135 = xor i64 %6127, %6134
  %6136 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6137 = load i64, i64* %6136, align 8
  %6138 = lshr i64 %6137, 39
  %6139 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6140 = load i64, i64* %6139, align 8
  %6141 = shl i64 %6140, 25
  %6142 = or i64 %6138, %6141
  %6143 = xor i64 %6135, %6142
  %6144 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6145 = load i64, i64* %6144, align 8
  %6146 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6147 = load i64, i64* %6146, align 8
  %6148 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6149 = load i64, i64* %6148, align 8
  %6150 = or i64 %6147, %6149
  %6151 = and i64 %6145, %6150
  %6152 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6153 = load i64, i64* %6152, align 8
  %6154 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6155 = load i64, i64* %6154, align 8
  %6156 = and i64 %6153, %6155
  %6157 = or i64 %6151, %6156
  %6158 = add i64 %6143, %6157
  store i64 %6158, i64* %8, align 8
  %6159 = load i64, i64* %7, align 8
  %6160 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6161 = load i64, i64* %6160, align 8
  %6162 = add i64 %6161, %6159
  store i64 %6162, i64* %6160, align 8
  %6163 = load i64, i64* %7, align 8
  %6164 = load i64, i64* %8, align 8
  %6165 = add i64 %6163, %6164
  %6166 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  store i64 %6165, i64* %6166, align 8
  %6167 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6168 = load i64, i64* %6167, align 8
  %6169 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6170 = load i64, i64* %6169, align 8
  %6171 = lshr i64 %6170, 14
  %6172 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6173 = load i64, i64* %6172, align 8
  %6174 = shl i64 %6173, 50
  %6175 = or i64 %6171, %6174
  %6176 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6177 = load i64, i64* %6176, align 8
  %6178 = lshr i64 %6177, 18
  %6179 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6180 = load i64, i64* %6179, align 8
  %6181 = shl i64 %6180, 46
  %6182 = or i64 %6178, %6181
  %6183 = xor i64 %6175, %6182
  %6184 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6185 = load i64, i64* %6184, align 8
  %6186 = lshr i64 %6185, 41
  %6187 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6188 = load i64, i64* %6187, align 8
  %6189 = shl i64 %6188, 23
  %6190 = or i64 %6186, %6189
  %6191 = xor i64 %6183, %6190
  %6192 = add i64 %6168, %6191
  %6193 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6194 = load i64, i64* %6193, align 8
  %6195 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6196 = load i64, i64* %6195, align 8
  %6197 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6198 = load i64, i64* %6197, align 8
  %6199 = xor i64 %6196, %6198
  %6200 = and i64 %6194, %6199
  %6201 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6202 = load i64, i64* %6201, align 8
  %6203 = xor i64 %6200, %6202
  %6204 = add i64 %6192, %6203
  %6205 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 69
  %6206 = load i64, i64* %6205, align 8
  %6207 = add i64 %6204, %6206
  %6208 = add i64 %6207, 748580250866718886
  store i64 %6208, i64* %7, align 8
  %6209 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6210 = load i64, i64* %6209, align 8
  %6211 = lshr i64 %6210, 28
  %6212 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6213 = load i64, i64* %6212, align 8
  %6214 = shl i64 %6213, 36
  %6215 = or i64 %6211, %6214
  %6216 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6217 = load i64, i64* %6216, align 8
  %6218 = lshr i64 %6217, 34
  %6219 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6220 = load i64, i64* %6219, align 8
  %6221 = shl i64 %6220, 30
  %6222 = or i64 %6218, %6221
  %6223 = xor i64 %6215, %6222
  %6224 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6225 = load i64, i64* %6224, align 8
  %6226 = lshr i64 %6225, 39
  %6227 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6228 = load i64, i64* %6227, align 8
  %6229 = shl i64 %6228, 25
  %6230 = or i64 %6226, %6229
  %6231 = xor i64 %6223, %6230
  %6232 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6233 = load i64, i64* %6232, align 8
  %6234 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6235 = load i64, i64* %6234, align 8
  %6236 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6237 = load i64, i64* %6236, align 8
  %6238 = or i64 %6235, %6237
  %6239 = and i64 %6233, %6238
  %6240 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6241 = load i64, i64* %6240, align 8
  %6242 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6243 = load i64, i64* %6242, align 8
  %6244 = and i64 %6241, %6243
  %6245 = or i64 %6239, %6244
  %6246 = add i64 %6231, %6245
  store i64 %6246, i64* %8, align 8
  %6247 = load i64, i64* %7, align 8
  %6248 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6249 = load i64, i64* %6248, align 8
  %6250 = add i64 %6249, %6247
  store i64 %6250, i64* %6248, align 8
  %6251 = load i64, i64* %7, align 8
  %6252 = load i64, i64* %8, align 8
  %6253 = add i64 %6251, %6252
  %6254 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  store i64 %6253, i64* %6254, align 8
  %6255 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6256 = load i64, i64* %6255, align 8
  %6257 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6258 = load i64, i64* %6257, align 8
  %6259 = lshr i64 %6258, 14
  %6260 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6261 = load i64, i64* %6260, align 8
  %6262 = shl i64 %6261, 50
  %6263 = or i64 %6259, %6262
  %6264 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6265 = load i64, i64* %6264, align 8
  %6266 = lshr i64 %6265, 18
  %6267 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6268 = load i64, i64* %6267, align 8
  %6269 = shl i64 %6268, 46
  %6270 = or i64 %6266, %6269
  %6271 = xor i64 %6263, %6270
  %6272 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6273 = load i64, i64* %6272, align 8
  %6274 = lshr i64 %6273, 41
  %6275 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6276 = load i64, i64* %6275, align 8
  %6277 = shl i64 %6276, 23
  %6278 = or i64 %6274, %6277
  %6279 = xor i64 %6271, %6278
  %6280 = add i64 %6256, %6279
  %6281 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6282 = load i64, i64* %6281, align 8
  %6283 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6284 = load i64, i64* %6283, align 8
  %6285 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6286 = load i64, i64* %6285, align 8
  %6287 = xor i64 %6284, %6286
  %6288 = and i64 %6282, %6287
  %6289 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6290 = load i64, i64* %6289, align 8
  %6291 = xor i64 %6288, %6290
  %6292 = add i64 %6280, %6291
  %6293 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 70
  %6294 = load i64, i64* %6293, align 8
  %6295 = add i64 %6292, %6294
  %6296 = add i64 %6295, 1242879168328830382
  store i64 %6296, i64* %7, align 8
  %6297 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6298 = load i64, i64* %6297, align 8
  %6299 = lshr i64 %6298, 28
  %6300 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6301 = load i64, i64* %6300, align 8
  %6302 = shl i64 %6301, 36
  %6303 = or i64 %6299, %6302
  %6304 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6305 = load i64, i64* %6304, align 8
  %6306 = lshr i64 %6305, 34
  %6307 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6308 = load i64, i64* %6307, align 8
  %6309 = shl i64 %6308, 30
  %6310 = or i64 %6306, %6309
  %6311 = xor i64 %6303, %6310
  %6312 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6313 = load i64, i64* %6312, align 8
  %6314 = lshr i64 %6313, 39
  %6315 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6316 = load i64, i64* %6315, align 8
  %6317 = shl i64 %6316, 25
  %6318 = or i64 %6314, %6317
  %6319 = xor i64 %6311, %6318
  %6320 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6321 = load i64, i64* %6320, align 8
  %6322 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6323 = load i64, i64* %6322, align 8
  %6324 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6325 = load i64, i64* %6324, align 8
  %6326 = or i64 %6323, %6325
  %6327 = and i64 %6321, %6326
  %6328 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6329 = load i64, i64* %6328, align 8
  %6330 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6331 = load i64, i64* %6330, align 8
  %6332 = and i64 %6329, %6331
  %6333 = or i64 %6327, %6332
  %6334 = add i64 %6319, %6333
  store i64 %6334, i64* %8, align 8
  %6335 = load i64, i64* %7, align 8
  %6336 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6337 = load i64, i64* %6336, align 8
  %6338 = add i64 %6337, %6335
  store i64 %6338, i64* %6336, align 8
  %6339 = load i64, i64* %7, align 8
  %6340 = load i64, i64* %8, align 8
  %6341 = add i64 %6339, %6340
  %6342 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  store i64 %6341, i64* %6342, align 8
  %6343 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6344 = load i64, i64* %6343, align 8
  %6345 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6346 = load i64, i64* %6345, align 8
  %6347 = lshr i64 %6346, 14
  %6348 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6349 = load i64, i64* %6348, align 8
  %6350 = shl i64 %6349, 50
  %6351 = or i64 %6347, %6350
  %6352 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6353 = load i64, i64* %6352, align 8
  %6354 = lshr i64 %6353, 18
  %6355 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6356 = load i64, i64* %6355, align 8
  %6357 = shl i64 %6356, 46
  %6358 = or i64 %6354, %6357
  %6359 = xor i64 %6351, %6358
  %6360 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6361 = load i64, i64* %6360, align 8
  %6362 = lshr i64 %6361, 41
  %6363 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6364 = load i64, i64* %6363, align 8
  %6365 = shl i64 %6364, 23
  %6366 = or i64 %6362, %6365
  %6367 = xor i64 %6359, %6366
  %6368 = add i64 %6344, %6367
  %6369 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6370 = load i64, i64* %6369, align 8
  %6371 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6372 = load i64, i64* %6371, align 8
  %6373 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6374 = load i64, i64* %6373, align 8
  %6375 = xor i64 %6372, %6374
  %6376 = and i64 %6370, %6375
  %6377 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6378 = load i64, i64* %6377, align 8
  %6379 = xor i64 %6376, %6378
  %6380 = add i64 %6368, %6379
  %6381 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 71
  %6382 = load i64, i64* %6381, align 8
  %6383 = add i64 %6380, %6382
  %6384 = add i64 %6383, 1977374033974150939
  store i64 %6384, i64* %7, align 8
  %6385 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6386 = load i64, i64* %6385, align 8
  %6387 = lshr i64 %6386, 28
  %6388 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6389 = load i64, i64* %6388, align 8
  %6390 = shl i64 %6389, 36
  %6391 = or i64 %6387, %6390
  %6392 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6393 = load i64, i64* %6392, align 8
  %6394 = lshr i64 %6393, 34
  %6395 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6396 = load i64, i64* %6395, align 8
  %6397 = shl i64 %6396, 30
  %6398 = or i64 %6394, %6397
  %6399 = xor i64 %6391, %6398
  %6400 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6401 = load i64, i64* %6400, align 8
  %6402 = lshr i64 %6401, 39
  %6403 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6404 = load i64, i64* %6403, align 8
  %6405 = shl i64 %6404, 25
  %6406 = or i64 %6402, %6405
  %6407 = xor i64 %6399, %6406
  %6408 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6409 = load i64, i64* %6408, align 8
  %6410 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6411 = load i64, i64* %6410, align 8
  %6412 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6413 = load i64, i64* %6412, align 8
  %6414 = or i64 %6411, %6413
  %6415 = and i64 %6409, %6414
  %6416 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6417 = load i64, i64* %6416, align 8
  %6418 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6419 = load i64, i64* %6418, align 8
  %6420 = and i64 %6417, %6419
  %6421 = or i64 %6415, %6420
  %6422 = add i64 %6407, %6421
  store i64 %6422, i64* %8, align 8
  %6423 = load i64, i64* %7, align 8
  %6424 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6425 = load i64, i64* %6424, align 8
  %6426 = add i64 %6425, %6423
  store i64 %6426, i64* %6424, align 8
  %6427 = load i64, i64* %7, align 8
  %6428 = load i64, i64* %8, align 8
  %6429 = add i64 %6427, %6428
  %6430 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  store i64 %6429, i64* %6430, align 8
  %6431 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6432 = load i64, i64* %6431, align 8
  %6433 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6434 = load i64, i64* %6433, align 8
  %6435 = lshr i64 %6434, 14
  %6436 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6437 = load i64, i64* %6436, align 8
  %6438 = shl i64 %6437, 50
  %6439 = or i64 %6435, %6438
  %6440 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6441 = load i64, i64* %6440, align 8
  %6442 = lshr i64 %6441, 18
  %6443 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6444 = load i64, i64* %6443, align 8
  %6445 = shl i64 %6444, 46
  %6446 = or i64 %6442, %6445
  %6447 = xor i64 %6439, %6446
  %6448 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6449 = load i64, i64* %6448, align 8
  %6450 = lshr i64 %6449, 41
  %6451 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6452 = load i64, i64* %6451, align 8
  %6453 = shl i64 %6452, 23
  %6454 = or i64 %6450, %6453
  %6455 = xor i64 %6447, %6454
  %6456 = add i64 %6432, %6455
  %6457 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6458 = load i64, i64* %6457, align 8
  %6459 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6460 = load i64, i64* %6459, align 8
  %6461 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6462 = load i64, i64* %6461, align 8
  %6463 = xor i64 %6460, %6462
  %6464 = and i64 %6458, %6463
  %6465 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6466 = load i64, i64* %6465, align 8
  %6467 = xor i64 %6464, %6466
  %6468 = add i64 %6456, %6467
  %6469 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 72
  %6470 = load i64, i64* %6469, align 8
  %6471 = add i64 %6468, %6470
  %6472 = add i64 %6471, 2944078676154940804
  store i64 %6472, i64* %7, align 8
  %6473 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6474 = load i64, i64* %6473, align 8
  %6475 = lshr i64 %6474, 28
  %6476 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6477 = load i64, i64* %6476, align 8
  %6478 = shl i64 %6477, 36
  %6479 = or i64 %6475, %6478
  %6480 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6481 = load i64, i64* %6480, align 8
  %6482 = lshr i64 %6481, 34
  %6483 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6484 = load i64, i64* %6483, align 8
  %6485 = shl i64 %6484, 30
  %6486 = or i64 %6482, %6485
  %6487 = xor i64 %6479, %6486
  %6488 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6489 = load i64, i64* %6488, align 8
  %6490 = lshr i64 %6489, 39
  %6491 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6492 = load i64, i64* %6491, align 8
  %6493 = shl i64 %6492, 25
  %6494 = or i64 %6490, %6493
  %6495 = xor i64 %6487, %6494
  %6496 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6497 = load i64, i64* %6496, align 8
  %6498 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6499 = load i64, i64* %6498, align 8
  %6500 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6501 = load i64, i64* %6500, align 8
  %6502 = or i64 %6499, %6501
  %6503 = and i64 %6497, %6502
  %6504 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6505 = load i64, i64* %6504, align 8
  %6506 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6507 = load i64, i64* %6506, align 8
  %6508 = and i64 %6505, %6507
  %6509 = or i64 %6503, %6508
  %6510 = add i64 %6495, %6509
  store i64 %6510, i64* %8, align 8
  %6511 = load i64, i64* %7, align 8
  %6512 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6513 = load i64, i64* %6512, align 8
  %6514 = add i64 %6513, %6511
  store i64 %6514, i64* %6512, align 8
  %6515 = load i64, i64* %7, align 8
  %6516 = load i64, i64* %8, align 8
  %6517 = add i64 %6515, %6516
  %6518 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  store i64 %6517, i64* %6518, align 8
  %6519 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6520 = load i64, i64* %6519, align 8
  %6521 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6522 = load i64, i64* %6521, align 8
  %6523 = lshr i64 %6522, 14
  %6524 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6525 = load i64, i64* %6524, align 8
  %6526 = shl i64 %6525, 50
  %6527 = or i64 %6523, %6526
  %6528 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6529 = load i64, i64* %6528, align 8
  %6530 = lshr i64 %6529, 18
  %6531 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6532 = load i64, i64* %6531, align 8
  %6533 = shl i64 %6532, 46
  %6534 = or i64 %6530, %6533
  %6535 = xor i64 %6527, %6534
  %6536 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6537 = load i64, i64* %6536, align 8
  %6538 = lshr i64 %6537, 41
  %6539 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6540 = load i64, i64* %6539, align 8
  %6541 = shl i64 %6540, 23
  %6542 = or i64 %6538, %6541
  %6543 = xor i64 %6535, %6542
  %6544 = add i64 %6520, %6543
  %6545 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6546 = load i64, i64* %6545, align 8
  %6547 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6548 = load i64, i64* %6547, align 8
  %6549 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6550 = load i64, i64* %6549, align 8
  %6551 = xor i64 %6548, %6550
  %6552 = and i64 %6546, %6551
  %6553 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6554 = load i64, i64* %6553, align 8
  %6555 = xor i64 %6552, %6554
  %6556 = add i64 %6544, %6555
  %6557 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 73
  %6558 = load i64, i64* %6557, align 8
  %6559 = add i64 %6556, %6558
  %6560 = add i64 %6559, 3659926193048069267
  store i64 %6560, i64* %7, align 8
  %6561 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6562 = load i64, i64* %6561, align 8
  %6563 = lshr i64 %6562, 28
  %6564 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6565 = load i64, i64* %6564, align 8
  %6566 = shl i64 %6565, 36
  %6567 = or i64 %6563, %6566
  %6568 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6569 = load i64, i64* %6568, align 8
  %6570 = lshr i64 %6569, 34
  %6571 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6572 = load i64, i64* %6571, align 8
  %6573 = shl i64 %6572, 30
  %6574 = or i64 %6570, %6573
  %6575 = xor i64 %6567, %6574
  %6576 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6577 = load i64, i64* %6576, align 8
  %6578 = lshr i64 %6577, 39
  %6579 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6580 = load i64, i64* %6579, align 8
  %6581 = shl i64 %6580, 25
  %6582 = or i64 %6578, %6581
  %6583 = xor i64 %6575, %6582
  %6584 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6585 = load i64, i64* %6584, align 8
  %6586 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6587 = load i64, i64* %6586, align 8
  %6588 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6589 = load i64, i64* %6588, align 8
  %6590 = or i64 %6587, %6589
  %6591 = and i64 %6585, %6590
  %6592 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6593 = load i64, i64* %6592, align 8
  %6594 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6595 = load i64, i64* %6594, align 8
  %6596 = and i64 %6593, %6595
  %6597 = or i64 %6591, %6596
  %6598 = add i64 %6583, %6597
  store i64 %6598, i64* %8, align 8
  %6599 = load i64, i64* %7, align 8
  %6600 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6601 = load i64, i64* %6600, align 8
  %6602 = add i64 %6601, %6599
  store i64 %6602, i64* %6600, align 8
  %6603 = load i64, i64* %7, align 8
  %6604 = load i64, i64* %8, align 8
  %6605 = add i64 %6603, %6604
  %6606 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  store i64 %6605, i64* %6606, align 8
  %6607 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6608 = load i64, i64* %6607, align 8
  %6609 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6610 = load i64, i64* %6609, align 8
  %6611 = lshr i64 %6610, 14
  %6612 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6613 = load i64, i64* %6612, align 8
  %6614 = shl i64 %6613, 50
  %6615 = or i64 %6611, %6614
  %6616 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6617 = load i64, i64* %6616, align 8
  %6618 = lshr i64 %6617, 18
  %6619 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6620 = load i64, i64* %6619, align 8
  %6621 = shl i64 %6620, 46
  %6622 = or i64 %6618, %6621
  %6623 = xor i64 %6615, %6622
  %6624 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6625 = load i64, i64* %6624, align 8
  %6626 = lshr i64 %6625, 41
  %6627 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6628 = load i64, i64* %6627, align 8
  %6629 = shl i64 %6628, 23
  %6630 = or i64 %6626, %6629
  %6631 = xor i64 %6623, %6630
  %6632 = add i64 %6608, %6631
  %6633 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6634 = load i64, i64* %6633, align 8
  %6635 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6636 = load i64, i64* %6635, align 8
  %6637 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6638 = load i64, i64* %6637, align 8
  %6639 = xor i64 %6636, %6638
  %6640 = and i64 %6634, %6639
  %6641 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6642 = load i64, i64* %6641, align 8
  %6643 = xor i64 %6640, %6642
  %6644 = add i64 %6632, %6643
  %6645 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 74
  %6646 = load i64, i64* %6645, align 8
  %6647 = add i64 %6644, %6646
  %6648 = add i64 %6647, 4368137639120453308
  store i64 %6648, i64* %7, align 8
  %6649 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6650 = load i64, i64* %6649, align 8
  %6651 = lshr i64 %6650, 28
  %6652 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6653 = load i64, i64* %6652, align 8
  %6654 = shl i64 %6653, 36
  %6655 = or i64 %6651, %6654
  %6656 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6657 = load i64, i64* %6656, align 8
  %6658 = lshr i64 %6657, 34
  %6659 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6660 = load i64, i64* %6659, align 8
  %6661 = shl i64 %6660, 30
  %6662 = or i64 %6658, %6661
  %6663 = xor i64 %6655, %6662
  %6664 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6665 = load i64, i64* %6664, align 8
  %6666 = lshr i64 %6665, 39
  %6667 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6668 = load i64, i64* %6667, align 8
  %6669 = shl i64 %6668, 25
  %6670 = or i64 %6666, %6669
  %6671 = xor i64 %6663, %6670
  %6672 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6673 = load i64, i64* %6672, align 8
  %6674 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6675 = load i64, i64* %6674, align 8
  %6676 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6677 = load i64, i64* %6676, align 8
  %6678 = or i64 %6675, %6677
  %6679 = and i64 %6673, %6678
  %6680 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6681 = load i64, i64* %6680, align 8
  %6682 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6683 = load i64, i64* %6682, align 8
  %6684 = and i64 %6681, %6683
  %6685 = or i64 %6679, %6684
  %6686 = add i64 %6671, %6685
  store i64 %6686, i64* %8, align 8
  %6687 = load i64, i64* %7, align 8
  %6688 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6689 = load i64, i64* %6688, align 8
  %6690 = add i64 %6689, %6687
  store i64 %6690, i64* %6688, align 8
  %6691 = load i64, i64* %7, align 8
  %6692 = load i64, i64* %8, align 8
  %6693 = add i64 %6691, %6692
  %6694 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  store i64 %6693, i64* %6694, align 8
  %6695 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6696 = load i64, i64* %6695, align 8
  %6697 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6698 = load i64, i64* %6697, align 8
  %6699 = lshr i64 %6698, 14
  %6700 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6701 = load i64, i64* %6700, align 8
  %6702 = shl i64 %6701, 50
  %6703 = or i64 %6699, %6702
  %6704 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6705 = load i64, i64* %6704, align 8
  %6706 = lshr i64 %6705, 18
  %6707 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6708 = load i64, i64* %6707, align 8
  %6709 = shl i64 %6708, 46
  %6710 = or i64 %6706, %6709
  %6711 = xor i64 %6703, %6710
  %6712 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6713 = load i64, i64* %6712, align 8
  %6714 = lshr i64 %6713, 41
  %6715 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6716 = load i64, i64* %6715, align 8
  %6717 = shl i64 %6716, 23
  %6718 = or i64 %6714, %6717
  %6719 = xor i64 %6711, %6718
  %6720 = add i64 %6696, %6719
  %6721 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6722 = load i64, i64* %6721, align 8
  %6723 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6724 = load i64, i64* %6723, align 8
  %6725 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6726 = load i64, i64* %6725, align 8
  %6727 = xor i64 %6724, %6726
  %6728 = and i64 %6722, %6727
  %6729 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6730 = load i64, i64* %6729, align 8
  %6731 = xor i64 %6728, %6730
  %6732 = add i64 %6720, %6731
  %6733 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 75
  %6734 = load i64, i64* %6733, align 8
  %6735 = add i64 %6732, %6734
  %6736 = add i64 %6735, 4836135668995329356
  store i64 %6736, i64* %7, align 8
  %6737 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6738 = load i64, i64* %6737, align 8
  %6739 = lshr i64 %6738, 28
  %6740 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6741 = load i64, i64* %6740, align 8
  %6742 = shl i64 %6741, 36
  %6743 = or i64 %6739, %6742
  %6744 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6745 = load i64, i64* %6744, align 8
  %6746 = lshr i64 %6745, 34
  %6747 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6748 = load i64, i64* %6747, align 8
  %6749 = shl i64 %6748, 30
  %6750 = or i64 %6746, %6749
  %6751 = xor i64 %6743, %6750
  %6752 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6753 = load i64, i64* %6752, align 8
  %6754 = lshr i64 %6753, 39
  %6755 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6756 = load i64, i64* %6755, align 8
  %6757 = shl i64 %6756, 25
  %6758 = or i64 %6754, %6757
  %6759 = xor i64 %6751, %6758
  %6760 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6761 = load i64, i64* %6760, align 8
  %6762 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6763 = load i64, i64* %6762, align 8
  %6764 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6765 = load i64, i64* %6764, align 8
  %6766 = or i64 %6763, %6765
  %6767 = and i64 %6761, %6766
  %6768 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6769 = load i64, i64* %6768, align 8
  %6770 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6771 = load i64, i64* %6770, align 8
  %6772 = and i64 %6769, %6771
  %6773 = or i64 %6767, %6772
  %6774 = add i64 %6759, %6773
  store i64 %6774, i64* %8, align 8
  %6775 = load i64, i64* %7, align 8
  %6776 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6777 = load i64, i64* %6776, align 8
  %6778 = add i64 %6777, %6775
  store i64 %6778, i64* %6776, align 8
  %6779 = load i64, i64* %7, align 8
  %6780 = load i64, i64* %8, align 8
  %6781 = add i64 %6779, %6780
  %6782 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  store i64 %6781, i64* %6782, align 8
  %6783 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6784 = load i64, i64* %6783, align 8
  %6785 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6786 = load i64, i64* %6785, align 8
  %6787 = lshr i64 %6786, 14
  %6788 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6789 = load i64, i64* %6788, align 8
  %6790 = shl i64 %6789, 50
  %6791 = or i64 %6787, %6790
  %6792 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6793 = load i64, i64* %6792, align 8
  %6794 = lshr i64 %6793, 18
  %6795 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6796 = load i64, i64* %6795, align 8
  %6797 = shl i64 %6796, 46
  %6798 = or i64 %6794, %6797
  %6799 = xor i64 %6791, %6798
  %6800 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6801 = load i64, i64* %6800, align 8
  %6802 = lshr i64 %6801, 41
  %6803 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6804 = load i64, i64* %6803, align 8
  %6805 = shl i64 %6804, 23
  %6806 = or i64 %6802, %6805
  %6807 = xor i64 %6799, %6806
  %6808 = add i64 %6784, %6807
  %6809 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6810 = load i64, i64* %6809, align 8
  %6811 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6812 = load i64, i64* %6811, align 8
  %6813 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6814 = load i64, i64* %6813, align 8
  %6815 = xor i64 %6812, %6814
  %6816 = and i64 %6810, %6815
  %6817 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6818 = load i64, i64* %6817, align 8
  %6819 = xor i64 %6816, %6818
  %6820 = add i64 %6808, %6819
  %6821 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 76
  %6822 = load i64, i64* %6821, align 8
  %6823 = add i64 %6820, %6822
  %6824 = add i64 %6823, 5532061633213252278
  store i64 %6824, i64* %7, align 8
  %6825 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6826 = load i64, i64* %6825, align 8
  %6827 = lshr i64 %6826, 28
  %6828 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6829 = load i64, i64* %6828, align 8
  %6830 = shl i64 %6829, 36
  %6831 = or i64 %6827, %6830
  %6832 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6833 = load i64, i64* %6832, align 8
  %6834 = lshr i64 %6833, 34
  %6835 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6836 = load i64, i64* %6835, align 8
  %6837 = shl i64 %6836, 30
  %6838 = or i64 %6834, %6837
  %6839 = xor i64 %6831, %6838
  %6840 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6841 = load i64, i64* %6840, align 8
  %6842 = lshr i64 %6841, 39
  %6843 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6844 = load i64, i64* %6843, align 8
  %6845 = shl i64 %6844, 25
  %6846 = or i64 %6842, %6845
  %6847 = xor i64 %6839, %6846
  %6848 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6849 = load i64, i64* %6848, align 8
  %6850 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6851 = load i64, i64* %6850, align 8
  %6852 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6853 = load i64, i64* %6852, align 8
  %6854 = or i64 %6851, %6853
  %6855 = and i64 %6849, %6854
  %6856 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6857 = load i64, i64* %6856, align 8
  %6858 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6859 = load i64, i64* %6858, align 8
  %6860 = and i64 %6857, %6859
  %6861 = or i64 %6855, %6860
  %6862 = add i64 %6847, %6861
  store i64 %6862, i64* %8, align 8
  %6863 = load i64, i64* %7, align 8
  %6864 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6865 = load i64, i64* %6864, align 8
  %6866 = add i64 %6865, %6863
  store i64 %6866, i64* %6864, align 8
  %6867 = load i64, i64* %7, align 8
  %6868 = load i64, i64* %8, align 8
  %6869 = add i64 %6867, %6868
  %6870 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  store i64 %6869, i64* %6870, align 8
  %6871 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %6872 = load i64, i64* %6871, align 8
  %6873 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6874 = load i64, i64* %6873, align 8
  %6875 = lshr i64 %6874, 14
  %6876 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6877 = load i64, i64* %6876, align 8
  %6878 = shl i64 %6877, 50
  %6879 = or i64 %6875, %6878
  %6880 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6881 = load i64, i64* %6880, align 8
  %6882 = lshr i64 %6881, 18
  %6883 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6884 = load i64, i64* %6883, align 8
  %6885 = shl i64 %6884, 46
  %6886 = or i64 %6882, %6885
  %6887 = xor i64 %6879, %6886
  %6888 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6889 = load i64, i64* %6888, align 8
  %6890 = lshr i64 %6889, 41
  %6891 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6892 = load i64, i64* %6891, align 8
  %6893 = shl i64 %6892, 23
  %6894 = or i64 %6890, %6893
  %6895 = xor i64 %6887, %6894
  %6896 = add i64 %6872, %6895
  %6897 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6898 = load i64, i64* %6897, align 8
  %6899 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6900 = load i64, i64* %6899, align 8
  %6901 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6902 = load i64, i64* %6901, align 8
  %6903 = xor i64 %6900, %6902
  %6904 = and i64 %6898, %6903
  %6905 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6906 = load i64, i64* %6905, align 8
  %6907 = xor i64 %6904, %6906
  %6908 = add i64 %6896, %6907
  %6909 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 77
  %6910 = load i64, i64* %6909, align 8
  %6911 = add i64 %6908, %6910
  %6912 = add i64 %6911, 6448918945643986474
  store i64 %6912, i64* %7, align 8
  %6913 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6914 = load i64, i64* %6913, align 8
  %6915 = lshr i64 %6914, 28
  %6916 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6917 = load i64, i64* %6916, align 8
  %6918 = shl i64 %6917, 36
  %6919 = or i64 %6915, %6918
  %6920 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6921 = load i64, i64* %6920, align 8
  %6922 = lshr i64 %6921, 34
  %6923 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6924 = load i64, i64* %6923, align 8
  %6925 = shl i64 %6924, 30
  %6926 = or i64 %6922, %6925
  %6927 = xor i64 %6919, %6926
  %6928 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6929 = load i64, i64* %6928, align 8
  %6930 = lshr i64 %6929, 39
  %6931 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6932 = load i64, i64* %6931, align 8
  %6933 = shl i64 %6932, 25
  %6934 = or i64 %6930, %6933
  %6935 = xor i64 %6927, %6934
  %6936 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %6937 = load i64, i64* %6936, align 8
  %6938 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6939 = load i64, i64* %6938, align 8
  %6940 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6941 = load i64, i64* %6940, align 8
  %6942 = or i64 %6939, %6941
  %6943 = and i64 %6937, %6942
  %6944 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %6945 = load i64, i64* %6944, align 8
  %6946 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %6947 = load i64, i64* %6946, align 8
  %6948 = and i64 %6945, %6947
  %6949 = or i64 %6943, %6948
  %6950 = add i64 %6935, %6949
  store i64 %6950, i64* %8, align 8
  %6951 = load i64, i64* %7, align 8
  %6952 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6953 = load i64, i64* %6952, align 8
  %6954 = add i64 %6953, %6951
  store i64 %6954, i64* %6952, align 8
  %6955 = load i64, i64* %7, align 8
  %6956 = load i64, i64* %8, align 8
  %6957 = add i64 %6955, %6956
  %6958 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  store i64 %6957, i64* %6958, align 8
  %6959 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %6960 = load i64, i64* %6959, align 8
  %6961 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6962 = load i64, i64* %6961, align 8
  %6963 = lshr i64 %6962, 14
  %6964 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6965 = load i64, i64* %6964, align 8
  %6966 = shl i64 %6965, 50
  %6967 = or i64 %6963, %6966
  %6968 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6969 = load i64, i64* %6968, align 8
  %6970 = lshr i64 %6969, 18
  %6971 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6972 = load i64, i64* %6971, align 8
  %6973 = shl i64 %6972, 46
  %6974 = or i64 %6970, %6973
  %6975 = xor i64 %6967, %6974
  %6976 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6977 = load i64, i64* %6976, align 8
  %6978 = lshr i64 %6977, 41
  %6979 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6980 = load i64, i64* %6979, align 8
  %6981 = shl i64 %6980, 23
  %6982 = or i64 %6978, %6981
  %6983 = xor i64 %6975, %6982
  %6984 = add i64 %6960, %6983
  %6985 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %6986 = load i64, i64* %6985, align 8
  %6987 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %6988 = load i64, i64* %6987, align 8
  %6989 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6990 = load i64, i64* %6989, align 8
  %6991 = xor i64 %6988, %6990
  %6992 = and i64 %6986, %6991
  %6993 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %6994 = load i64, i64* %6993, align 8
  %6995 = xor i64 %6992, %6994
  %6996 = add i64 %6984, %6995
  %6997 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 78
  %6998 = load i64, i64* %6997, align 8
  %6999 = add i64 %6996, %6998
  %7000 = add i64 %6999, 6902733635092675308
  store i64 %7000, i64* %7, align 8
  %7001 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %7002 = load i64, i64* %7001, align 8
  %7003 = lshr i64 %7002, 28
  %7004 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %7005 = load i64, i64* %7004, align 8
  %7006 = shl i64 %7005, 36
  %7007 = or i64 %7003, %7006
  %7008 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %7009 = load i64, i64* %7008, align 8
  %7010 = lshr i64 %7009, 34
  %7011 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %7012 = load i64, i64* %7011, align 8
  %7013 = shl i64 %7012, 30
  %7014 = or i64 %7010, %7013
  %7015 = xor i64 %7007, %7014
  %7016 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %7017 = load i64, i64* %7016, align 8
  %7018 = lshr i64 %7017, 39
  %7019 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %7020 = load i64, i64* %7019, align 8
  %7021 = shl i64 %7020, 25
  %7022 = or i64 %7018, %7021
  %7023 = xor i64 %7015, %7022
  %7024 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %7025 = load i64, i64* %7024, align 8
  %7026 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %7027 = load i64, i64* %7026, align 8
  %7028 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %7029 = load i64, i64* %7028, align 8
  %7030 = or i64 %7027, %7029
  %7031 = and i64 %7025, %7030
  %7032 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %7033 = load i64, i64* %7032, align 8
  %7034 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %7035 = load i64, i64* %7034, align 8
  %7036 = and i64 %7033, %7035
  %7037 = or i64 %7031, %7036
  %7038 = add i64 %7023, %7037
  store i64 %7038, i64* %8, align 8
  %7039 = load i64, i64* %7, align 8
  %7040 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %7041 = load i64, i64* %7040, align 8
  %7042 = add i64 %7041, %7039
  store i64 %7042, i64* %7040, align 8
  %7043 = load i64, i64* %7, align 8
  %7044 = load i64, i64* %8, align 8
  %7045 = add i64 %7043, %7044
  %7046 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  store i64 %7045, i64* %7046, align 8
  %7047 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %7048 = load i64, i64* %7047, align 8
  %7049 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %7050 = load i64, i64* %7049, align 8
  %7051 = lshr i64 %7050, 14
  %7052 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %7053 = load i64, i64* %7052, align 8
  %7054 = shl i64 %7053, 50
  %7055 = or i64 %7051, %7054
  %7056 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %7057 = load i64, i64* %7056, align 8
  %7058 = lshr i64 %7057, 18
  %7059 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %7060 = load i64, i64* %7059, align 8
  %7061 = shl i64 %7060, 46
  %7062 = or i64 %7058, %7061
  %7063 = xor i64 %7055, %7062
  %7064 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %7065 = load i64, i64* %7064, align 8
  %7066 = lshr i64 %7065, 41
  %7067 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %7068 = load i64, i64* %7067, align 8
  %7069 = shl i64 %7068, 23
  %7070 = or i64 %7066, %7069
  %7071 = xor i64 %7063, %7070
  %7072 = add i64 %7048, %7071
  %7073 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 5
  %7074 = load i64, i64* %7073, align 8
  %7075 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 6
  %7076 = load i64, i64* %7075, align 8
  %7077 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %7078 = load i64, i64* %7077, align 8
  %7079 = xor i64 %7076, %7078
  %7080 = and i64 %7074, %7079
  %7081 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 7
  %7082 = load i64, i64* %7081, align 8
  %7083 = xor i64 %7080, %7082
  %7084 = add i64 %7072, %7083
  %7085 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 79
  %7086 = load i64, i64* %7085, align 8
  %7087 = add i64 %7084, %7086
  %7088 = add i64 %7087, 7801388544844847127
  store i64 %7088, i64* %7, align 8
  %7089 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %7090 = load i64, i64* %7089, align 8
  %7091 = lshr i64 %7090, 28
  %7092 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %7093 = load i64, i64* %7092, align 8
  %7094 = shl i64 %7093, 36
  %7095 = or i64 %7091, %7094
  %7096 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %7097 = load i64, i64* %7096, align 8
  %7098 = lshr i64 %7097, 34
  %7099 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %7100 = load i64, i64* %7099, align 8
  %7101 = shl i64 %7100, 30
  %7102 = or i64 %7098, %7101
  %7103 = xor i64 %7095, %7102
  %7104 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %7105 = load i64, i64* %7104, align 8
  %7106 = lshr i64 %7105, 39
  %7107 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %7108 = load i64, i64* %7107, align 8
  %7109 = shl i64 %7108, 25
  %7110 = or i64 %7106, %7109
  %7111 = xor i64 %7103, %7110
  %7112 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 1
  %7113 = load i64, i64* %7112, align 8
  %7114 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %7115 = load i64, i64* %7114, align 8
  %7116 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %7117 = load i64, i64* %7116, align 8
  %7118 = or i64 %7115, %7117
  %7119 = and i64 %7113, %7118
  %7120 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 2
  %7121 = load i64, i64* %7120, align 8
  %7122 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 3
  %7123 = load i64, i64* %7122, align 8
  %7124 = and i64 %7121, %7123
  %7125 = or i64 %7119, %7124
  %7126 = add i64 %7111, %7125
  store i64 %7126, i64* %8, align 8
  %7127 = load i64, i64* %7, align 8
  %7128 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 4
  %7129 = load i64, i64* %7128, align 8
  %7130 = add i64 %7129, %7127
  store i64 %7130, i64* %7128, align 8
  %7131 = load i64, i64* %7, align 8
  %7132 = load i64, i64* %8, align 8
  %7133 = add i64 %7131, %7132
  %7134 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  store i64 %7133, i64* %7134, align 8
  store i32 0, i32* %9, align 4
  br label %7135

7135:                                             ; preds = %7147, %90
  %7136 = load i32, i32* %9, align 4
  %7137 = icmp slt i32 %7136, 8
  br i1 %7137, label %7138, label %7150

7138:                                             ; preds = %7135
  %7139 = load i32, i32* %9, align 4
  %7140 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 %7139
  %7141 = load i64, i64* %7140, align 8
  %7142 = load i64*, i64** %3, align 4
  %7143 = load i32, i32* %9, align 4
  %7144 = getelementptr inbounds i64, i64* %7142, i32 %7143
  %7145 = load i64, i64* %7144, align 4
  %7146 = add i64 %7145, %7141
  store i64 %7146, i64* %7144, align 4
  br label %7147

7147:                                             ; preds = %7138
  %7148 = load i32, i32* %9, align 4
  %7149 = add nsw i32 %7148, 1
  store i32 %7149, i32* %9, align 4
  br label %7135, !llvm.loop !15

7150:                                             ; preds = %7135
  %7151 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i32 0, i32 0
  %7152 = bitcast i64* %7151 to i8*
  call void @sodium_memzero(i8* noundef %7152, i32 noundef 640)
  %7153 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i32 0, i32 0
  %7154 = bitcast i64* %7153 to i8*
  call void @sodium_memzero(i8* noundef %7154, i32 noundef 64)
  %7155 = bitcast i64* %7 to i8*
  call void @sodium_memzero(i8* noundef %7155, i32 noundef 8)
  %7156 = bitcast i64* %8 to i8*
  call void @sodium_memzero(i8* noundef %7156, i32 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be64dec_vect(i64* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 4
  store i8* %1, i8** %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = udiv i32 %10, 8
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load i8*, i8** %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul i32 %15, 8
  %17 = getelementptr inbounds i8, i8* %14, i32 %16
  %18 = call i64 @_sha512_be64dec(i8* noundef %17)
  %19 = load i64*, i64** %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds i64, i64* %19, i32 %20
  store i64 %18, i64* %21, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8, !llvm.loop !16

25:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_sha512_be64dec(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %4 = load i8*, i8** %2, align 4
  store i8* %4, i8** %3, align 4
  %5 = load i8*, i8** %3, align 4
  %6 = getelementptr inbounds i8, i8* %5, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i64
  %9 = load i8*, i8** %3, align 4
  %10 = getelementptr inbounds i8, i8* %9, i32 6
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = shl i64 %12, 8
  %14 = add i64 %8, %13
  %15 = load i8*, i8** %3, align 4
  %16 = getelementptr inbounds i8, i8* %15, i32 5
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = shl i64 %18, 16
  %20 = add i64 %14, %19
  %21 = load i8*, i8** %3, align 4
  %22 = getelementptr inbounds i8, i8* %21, i32 4
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = shl i64 %24, 24
  %26 = add i64 %20, %25
  %27 = load i8*, i8** %3, align 4
  %28 = getelementptr inbounds i8, i8* %27, i32 3
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = shl i64 %30, 32
  %32 = add i64 %26, %31
  %33 = load i8*, i8** %3, align 4
  %34 = getelementptr inbounds i8, i8* %33, i32 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = shl i64 %36, 40
  %38 = add i64 %32, %37
  %39 = load i8*, i8** %3, align 4
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = shl i64 %42, 48
  %44 = add i64 %38, %43
  %45 = load i8*, i8** %3, align 4
  %46 = getelementptr inbounds i8, i8* %45, i32 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = shl i64 %48, 56
  %50 = add i64 %44, %49
  ret i64 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_sha512_final(%struct.crypto_hash_sha512_state* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.crypto_hash_sha512_state*, align 4
  %4 = alloca i8*, align 4
  store %struct.crypto_hash_sha512_state* %0, %struct.crypto_hash_sha512_state** %3, align 4
  store i8* %1, i8** %4, align 4
  %5 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %3, align 4
  call void @SHA512_Pad(%struct.crypto_hash_sha512_state* noundef %5)
  %6 = load i8*, i8** %4, align 4
  %7 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %3, align 4
  %8 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i32 0, i32 0
  call void @be64enc_vect(i8* noundef %6, i64* noundef %9, i32 noundef 64)
  %10 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %3, align 4
  %11 = bitcast %struct.crypto_hash_sha512_state* %10 to i8*
  call void @sodium_memzero(i8* noundef %11, i32 noundef 208)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA512_Pad(%struct.crypto_hash_sha512_state* noundef %0) #0 {
  %2 = alloca %struct.crypto_hash_sha512_state*, align 4
  %3 = alloca [16 x i8], align 1
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.crypto_hash_sha512_state* %0, %struct.crypto_hash_sha512_state** %2, align 4
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0
  %7 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %8 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %7, i32 0, i32 1
  %9 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i32 0, i32 0
  call void @be64enc_vect(i8* noundef %6, i64* noundef %9, i32 noundef 16)
  %10 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %11 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 4
  %14 = lshr i64 %13, 3
  %15 = and i64 %14, 127
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %16, 112
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = sub i64 112, %19
  br label %24

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = sub i64 240, %22
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i64 [ %20, %18 ], [ %23, %21 ]
  store i64 %25, i64* %5, align 8
  %26 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @crypto_hash_sha512_update(%struct.crypto_hash_sha512_state* noundef %26, i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* bitcast (<{ i8, [127 x i8] }>* @PAD to [128 x i8]*), i32 0, i32 0), i64 noundef %27)
  %29 = load %struct.crypto_hash_sha512_state*, %struct.crypto_hash_sha512_state** %2, align 4
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0
  %31 = call i32 @crypto_hash_sha512_update(%struct.crypto_hash_sha512_state* noundef %29, i8* noundef %30, i64 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be64enc_vect(i8* noundef %0, i64* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i64*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  store i64* %1, i64** %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = udiv i32 %10, 8
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul i32 %15, 8
  %17 = getelementptr inbounds i8, i8* %14, i32 %16
  %18 = load i64*, i64** %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds i64, i64* %18, i32 %19
  %21 = load i64, i64* %20, align 4
  call void @_sha512_be64enc(i8* noundef %17, i64 noundef %21)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8, !llvm.loop !17

25:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_sha512_be64enc(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 4
  store i8* %0, i8** %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 4
  store i8* %6, i8** %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  %10 = load i8*, i8** %5, align 4
  %11 = getelementptr inbounds i8, i8* %10, i32 7
  store i8 %9, i8* %11, align 1
  %12 = load i64, i64* %4, align 8
  %13 = lshr i64 %12, 8
  %14 = and i64 %13, 255
  %15 = trunc i64 %14 to i8
  %16 = load i8*, i8** %5, align 4
  %17 = getelementptr inbounds i8, i8* %16, i32 6
  store i8 %15, i8* %17, align 1
  %18 = load i64, i64* %4, align 8
  %19 = lshr i64 %18, 16
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  %22 = load i8*, i8** %5, align 4
  %23 = getelementptr inbounds i8, i8* %22, i32 5
  store i8 %21, i8* %23, align 1
  %24 = load i64, i64* %4, align 8
  %25 = lshr i64 %24, 24
  %26 = and i64 %25, 255
  %27 = trunc i64 %26 to i8
  %28 = load i8*, i8** %5, align 4
  %29 = getelementptr inbounds i8, i8* %28, i32 4
  store i8 %27, i8* %29, align 1
  %30 = load i64, i64* %4, align 8
  %31 = lshr i64 %30, 32
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  %34 = load i8*, i8** %5, align 4
  %35 = getelementptr inbounds i8, i8* %34, i32 3
  store i8 %33, i8* %35, align 1
  %36 = load i64, i64* %4, align 8
  %37 = lshr i64 %36, 40
  %38 = and i64 %37, 255
  %39 = trunc i64 %38 to i8
  %40 = load i8*, i8** %5, align 4
  %41 = getelementptr inbounds i8, i8* %40, i32 2
  store i8 %39, i8* %41, align 1
  %42 = load i64, i64* %4, align 8
  %43 = lshr i64 %42, 48
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i8
  %46 = load i8*, i8** %5, align 4
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8 %45, i8* %47, align 1
  %48 = load i64, i64* %4, align 8
  %49 = lshr i64 %48, 56
  %50 = and i64 %49, 255
  %51 = trunc i64 %50 to i8
  %52 = load i8*, i8** %5, align 4
  %53 = getelementptr inbounds i8, i8* %52, i32 0
  store i8 %51, i8* %53, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_sha512(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.crypto_hash_sha512_state, align 4
  store i8* %0, i8** %4, align 4
  store i8* %1, i8** %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = call i32 @crypto_hash_sha512_init(%struct.crypto_hash_sha512_state* noundef %7)
  %9 = load i8*, i8** %5, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @crypto_hash_sha512_update(%struct.crypto_hash_sha512_state* noundef %7, i8* noundef %9, i64 noundef %10)
  %12 = load i8*, i8** %4, align 4
  %13 = call i32 @crypto_hash_sha512_final(%struct.crypto_hash_sha512_state* noundef %7, i8* noundef %12)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 {
  ret i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @randombytes_sysrandom() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @randombytes_sysrandom_buf(i8* noundef %2, i32 noundef 4)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

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
  call void @abort() #8
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
  call void @abort() #8
  unreachable

25:                                               ; preds = %17, %13
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

declare i32 @close(i32 noundef) #7

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
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i32 0, i32 0), i32 noundef 159, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i32 0, i32 0)) #8
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
  br i1 %35, label %9, label %36, !llvm.loop !18

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

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
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i32 0, i32 0), i32 noundef 82, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i32 0, i32 0)) #8
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
  %24 = call i32* @__errno_location() #10
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #10
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
  br label %17, !llvm.loop !19

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
  br i1 %54, label %16, label %55, !llvm.loop !20

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

declare i32 @read(i32 noundef, i8* noundef, i32 noundef) #7

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
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i32 0, i32 0), i32 noundef 142, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i32 0, i32 0)) #8
  unreachable

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i8*, i8** %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i32, ...) @syscall(i32 noundef 355, i8* noundef %12, i32 noundef %13, i32 noundef 0) #11
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = call i32* @__errno_location() #10
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = call i32* @__errno_location() #10
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 11
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ true, %18 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i1 [ false, %15 ], [ %27, %26 ]
  br i1 %29, label %11, label %30, !llvm.loop !21

30:                                               ; preds = %28
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = sub nsw i32 %34, 1
  ret i32 %35
}

; Function Attrs: nounwind
declare i32 @syscall(i32 noundef, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randombytes_sysrandom_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 1
  %3 = call i32* @__errno_location() #10
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0
  %6 = call i32 @randombytes_linux_getrandom(i8* noundef %5, i32 noundef 16)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32* @__errno_location() #10
  store i32 %9, i32* %10, align 4
  br label %18

11:                                               ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4
  %12 = call i32 @randombytes_sysrandom_random_dev_open()
  store i32 %12, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @abort() #8
  unreachable

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = call i32* @__errno_location() #10
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %8
  ret void
}

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
  %13 = call i32 @fstat(i32 noundef %12, %struct.stat* noundef %2) #11
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
  %31 = call i32* @__errno_location() #10
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
  br i1 %42, label %5, label %43, !llvm.loop !22

43:                                               ; preds = %39
  %44 = call i32* @__errno_location() #10
  store i32 5, i32* %44, align 4
  store i32 -1, i32* %1, align 4
  br label %45

45:                                               ; preds = %43, %20
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare i32 @open(i8* noundef, i32 noundef, ...) #7

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, %struct.stat* noundef) #5

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
