; ModuleID = 'libsodium/src/libsodium/sodium/utils.c'
source_filename = "libsodium/src/libsodium/sodium/utils.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@canary = internal global [16 x i8] zeroinitializer, align 1

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
  call void @abort() #7
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
  %75 = call i8* @strchr(i8* noundef %72, i32 noundef %74) #8
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
  %98 = call i32* @__errno_location() #9
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

declare void @randombytes_buf(i8* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_mlock(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32* @__errno_location() #9
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
  %7 = call i32* @__errno_location() #9
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
  %4 = call noalias i8* @malloc(i32 noundef %3) #10
  ret i8* %4
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

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
  %15 = call i32* @__errno_location() #9
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
  call void @free(i8* noundef %3) #10
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = call i32 @_sodium_mprotect(i8* noundef %3, i32 (i8*, i32)* noundef @_mprotect_noaccess)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sodium_mprotect(i8* noundef %0, i32 (i8*, i32)* noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32 (i8*, i32)*, align 4
  store i8* %0, i8** %3, align 4
  store i32 (i8*, i32)* %1, i32 (i8*, i32)** %4, align 4
  %5 = load i8*, i8** %3, align 4
  %6 = load i32 (i8*, i32)*, i32 (i8*, i32)** %4, align 4
  %7 = call i32* @__errno_location() #9
  store i32 38, i32* %7, align 4
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mprotect_noaccess(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32* @__errno_location() #9
  store i32 38, i32* %5, align 4
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
  %5 = call i32* @__errno_location() #9
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
  %5 = call i32* @__errno_location() #9
  store i32 38, i32* %5, align 4
  ret i32 -1
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32 noundef) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }

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
