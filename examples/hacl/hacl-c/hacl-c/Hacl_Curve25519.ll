; ModuleID = 'hacl-c/hacl-c/Hacl_Curve25519.c'
source_filename = "hacl-c/hacl-c/Hacl_Curve25519.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_EC_crypto_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [10 x i64], align 8
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca [32 x i8], align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca ptr, align 4
  %18 = alloca [15 x i64], align 8
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %7, i8 0, i32 80, i1 false)
  %21 = getelementptr inbounds [10 x i64], ptr %7, i32 0, i32 0
  store ptr %21, ptr %8, align 4
  %22 = getelementptr inbounds [10 x i64], ptr %7, i32 0, i32 0
  %23 = getelementptr inbounds i64, ptr %22, i32 5
  store ptr %23, ptr %9, align 4
  %24 = load ptr, ptr %8, align 4
  %25 = load ptr, ptr %6, align 4
  call void @Hacl_EC_Format_fexpand(ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds i64, ptr %26, i32 0
  store i64 1, ptr %27, align 4
  %28 = getelementptr inbounds [10 x i64], ptr %7, i32 0, i32 0
  store ptr %28, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 32, i1 false)
  %29 = getelementptr inbounds [32 x i8], ptr %11, i32 0, i32 0
  %30 = load ptr, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %29, ptr align 1 %30, i32 32, i1 false)
  %31 = getelementptr inbounds [32 x i8], ptr %11, i32 0, i32 0
  %32 = load i8, ptr %31, align 1
  store i8 %32, ptr %12, align 1
  %33 = getelementptr inbounds [32 x i8], ptr %11, i32 0, i32 31
  %34 = load i8, ptr %33, align 1
  store i8 %34, ptr %13, align 1
  %35 = load i8, ptr %12, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 248
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr %14, align 1
  %39 = load i8, ptr %13, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 127
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %15, align 1
  %43 = load i8, ptr %15, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, 64
  %46 = trunc i32 %45 to i8
  store i8 %46, ptr %16, align 1
  %47 = load i8, ptr %14, align 1
  %48 = getelementptr inbounds [32 x i8], ptr %11, i32 0, i32 0
  store i8 %47, ptr %48, align 1
  %49 = load i8, ptr %16, align 1
  %50 = getelementptr inbounds [32 x i8], ptr %11, i32 0, i32 31
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds [32 x i8], ptr %11, i32 0, i32 0
  store ptr %51, ptr %17, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %18, i8 0, i32 120, i1 false)
  %52 = getelementptr inbounds [15 x i64], ptr %18, i32 0, i32 0
  store ptr %52, ptr %19, align 4
  %53 = load ptr, ptr %19, align 4
  store ptr %53, ptr %20, align 4
  %54 = load ptr, ptr %20, align 4
  %55 = getelementptr inbounds i64, ptr %54, i32 0
  store i64 1, ptr %55, align 4
  %56 = load ptr, ptr %19, align 4
  %57 = load ptr, ptr %17, align 4
  %58 = load ptr, ptr %10, align 4
  call void @Hacl_EC_Ladder_cmult(ptr noundef %56, ptr noundef %57, ptr noundef %58)
  %59 = load ptr, ptr %4, align 4
  %60 = load ptr, ptr %19, align 4
  call void @Hacl_EC_Format_scalar_of_point(ptr noundef %59, ptr noundef %60)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Format_fexpand(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = call i64 @load64(ptr noundef %19)
  %21 = call i64 @__uint64_identity(i64 noundef %20)
  store i64 %21, ptr %5, align 8
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds i8, ptr %22, i32 6
  store ptr %23, ptr %6, align 4
  %24 = load ptr, ptr %6, align 4
  %25 = call i64 @load64(ptr noundef %24)
  %26 = call i64 @__uint64_identity(i64 noundef %25)
  store i64 %26, ptr %7, align 8
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds i8, ptr %27, i32 12
  store ptr %28, ptr %8, align 4
  %29 = load ptr, ptr %8, align 4
  %30 = call i64 @load64(ptr noundef %29)
  %31 = call i64 @__uint64_identity(i64 noundef %30)
  store i64 %31, ptr %9, align 8
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds i8, ptr %32, i32 19
  store ptr %33, ptr %10, align 4
  %34 = load ptr, ptr %10, align 4
  %35 = call i64 @load64(ptr noundef %34)
  %36 = call i64 @__uint64_identity(i64 noundef %35)
  store i64 %36, ptr %11, align 8
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds i8, ptr %37, i32 24
  store ptr %38, ptr %12, align 4
  %39 = load ptr, ptr %12, align 4
  %40 = call i64 @load64(ptr noundef %39)
  %41 = call i64 @__uint64_identity(i64 noundef %40)
  store i64 %41, ptr %13, align 8
  %42 = load i64, ptr %5, align 8
  %43 = and i64 %42, 2251799813685247
  store i64 %43, ptr %14, align 8
  %44 = load i64, ptr %7, align 8
  %45 = lshr i64 %44, 3
  %46 = and i64 %45, 2251799813685247
  store i64 %46, ptr %15, align 8
  %47 = load i64, ptr %9, align 8
  %48 = lshr i64 %47, 6
  %49 = and i64 %48, 2251799813685247
  store i64 %49, ptr %16, align 8
  %50 = load i64, ptr %11, align 8
  %51 = lshr i64 %50, 1
  %52 = and i64 %51, 2251799813685247
  store i64 %52, ptr %17, align 8
  %53 = load i64, ptr %13, align 8
  %54 = lshr i64 %53, 12
  %55 = and i64 %54, 2251799813685247
  store i64 %55, ptr %18, align 8
  %56 = load i64, ptr %14, align 8
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds i64, ptr %57, i32 0
  store i64 %56, ptr %58, align 4
  %59 = load i64, ptr %15, align 8
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds i64, ptr %60, i32 1
  store i64 %59, ptr %61, align 4
  %62 = load i64, ptr %16, align 8
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr inbounds i64, ptr %63, i32 2
  store i64 %62, ptr %64, align 4
  %65 = load i64, ptr %17, align 8
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr inbounds i64, ptr %66, i32 3
  store i64 %65, ptr %67, align 4
  %68 = load i64, ptr %18, align 8
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr inbounds i64, ptr %69, i32 4
  store i64 %68, ptr %70, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Ladder_cmult(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [40 x i64], align 8
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %7, i8 0, i32 320, i1 false)
  %12 = getelementptr inbounds [40 x i64], ptr %7, i32 0, i32 0
  store ptr %12, ptr %8, align 4
  %13 = getelementptr inbounds [40 x i64], ptr %7, i32 0, i32 0
  %14 = getelementptr inbounds i64, ptr %13, i32 10
  store ptr %14, ptr %9, align 4
  %15 = getelementptr inbounds [40 x i64], ptr %7, i32 0, i32 0
  %16 = getelementptr inbounds i64, ptr %15, i32 20
  store ptr %16, ptr %10, align 4
  %17 = getelementptr inbounds [40 x i64], ptr %7, i32 0, i32 0
  %18 = getelementptr inbounds i64, ptr %17, i32 30
  store ptr %18, ptr %11, align 4
  %19 = load ptr, ptr %9, align 4
  %20 = load ptr, ptr %6, align 4
  call void @Hacl_EC_Point_copy(ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds i64, ptr %21, i32 0
  store i64 1, ptr %22, align 4
  %23 = load ptr, ptr %5, align 4
  %24 = load ptr, ptr %8, align 4
  %25 = load ptr, ptr %9, align 4
  %26 = load ptr, ptr %10, align 4
  %27 = load ptr, ptr %11, align 4
  %28 = load ptr, ptr %6, align 4
  call void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, i32 noundef 32)
  %29 = load ptr, ptr %4, align 4
  %30 = load ptr, ptr %8, align 4
  call void @Hacl_EC_Point_copy(ptr noundef %29, ptr noundef %30)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Format_scalar_of_point(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [10 x i64], align 8
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %10 = load ptr, ptr %4, align 4
  store ptr %10, ptr %5, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds i64, ptr %11, i32 5
  store ptr %12, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %7, i8 0, i32 80, i1 false)
  %13 = getelementptr inbounds [10 x i64], ptr %7, i32 0, i32 0
  store ptr %13, ptr %8, align 4
  %14 = getelementptr inbounds [10 x i64], ptr %7, i32 0, i32 0
  %15 = getelementptr inbounds i64, ptr %14, i32 5
  store ptr %15, ptr %9, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_crecip(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %9, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum_fmul(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %3, align 4
  %22 = load ptr, ptr %9, align 4
  call void @Hacl_EC_Format_fcontract(ptr noundef %21, ptr noundef %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %6, align 4
  call void @Hacl_EC_crypto_scalarmult(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @__uint64_identity(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @load64(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %4 = load ptr, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %3, ptr align 1 %4, i32 8, i1 false)
  %5 = load i64, ptr %3, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Point_copy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 4 %6, i32 40, i1 false)
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds i64, ptr %7, i32 5
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds i64, ptr %9, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %10, i32 40, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %9, align 4
  store ptr %2, ptr %10, align 4
  store ptr %3, ptr %11, align 4
  store ptr %4, ptr %12, align 4
  store ptr %5, ptr %13, align 4
  store i32 %6, ptr %14, align 4
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %7
  %20 = load i32, ptr %14, align 4
  %21 = sub i32 %20, 1
  store i32 %21, ptr %15, align 4
  %22 = load ptr, ptr %8, align 4
  %23 = load i32, ptr %15, align 4
  %24 = getelementptr inbounds i8, ptr %22, i32 %23
  %25 = load i8, ptr %24, align 1
  store i8 %25, ptr %16, align 1
  %26 = load ptr, ptr %9, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = load ptr, ptr %11, align 4
  %29 = load ptr, ptr %12, align 4
  %30 = load ptr, ptr %13, align 4
  %31 = load i8, ptr %16, align 1
  call void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, i8 noundef zeroext %31, i32 noundef 4)
  %32 = load ptr, ptr %8, align 4
  %33 = load ptr, ptr %9, align 4
  %34 = load ptr, ptr %10, align 4
  %35 = load ptr, ptr %11, align 4
  %36 = load ptr, ptr %12, align 4
  %37 = load ptr, ptr %13, align 4
  %38 = load i32, ptr %15, align 4
  call void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, i32 noundef %38)
  br label %39

39:                                               ; preds = %19, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %9, align 4
  store ptr %2, ptr %10, align 4
  store ptr %3, ptr %11, align 4
  store ptr %4, ptr %12, align 4
  store i8 %5, ptr %13, align 1
  store i32 %6, ptr %14, align 4
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %7
  %20 = load i32, ptr %14, align 4
  %21 = sub i32 %20, 1
  store i32 %21, ptr %15, align 4
  %22 = load ptr, ptr %8, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = load ptr, ptr %11, align 4
  %26 = load ptr, ptr %12, align 4
  %27 = load i8, ptr %13, align 1
  call void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_double_step(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, i8 noundef zeroext %27)
  %28 = load i8, ptr %13, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 2
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %16, align 1
  %32 = load ptr, ptr %8, align 4
  %33 = load ptr, ptr %9, align 4
  %34 = load ptr, ptr %10, align 4
  %35 = load ptr, ptr %11, align 4
  %36 = load ptr, ptr %12, align 4
  %37 = load i8, ptr %16, align 1
  %38 = load i32, ptr %15, align 4
  call void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, i8 noundef zeroext %37, i32 noundef %38)
  br label %39

39:                                               ; preds = %19, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_double_step(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store ptr %3, ptr %10, align 4
  store ptr %4, ptr %11, align 4
  store i8 %5, ptr %12, align 1
  %14 = load ptr, ptr %7, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = load ptr, ptr %9, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = load ptr, ptr %11, align 4
  %19 = load i8, ptr %12, align 1
  call void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i8 noundef zeroext %19)
  %20 = load i8, ptr %12, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 1
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %13, align 1
  %24 = load ptr, ptr %9, align 4
  %25 = load ptr, ptr %10, align 4
  %26 = load ptr, ptr %7, align 4
  %27 = load ptr, ptr %8, align 4
  %28 = load ptr, ptr %11, align 4
  %29 = load i8, ptr %13, align 1
  call void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, i8 noundef zeroext %29)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store ptr %3, ptr %10, align 4
  store ptr %4, ptr %11, align 4
  store i8 %5, ptr %12, align 1
  %15 = load i8, ptr %12, align 1
  %16 = zext i8 %15 to i32
  %17 = ashr i32 %16, 7
  %18 = sext i32 %17 to i64
  store i64 %18, ptr %13, align 8
  %19 = load ptr, ptr %7, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = load i64, ptr %13, align 8
  call void @Hacl_EC_Point_swap_conditional(ptr noundef %19, ptr noundef %20, i64 noundef %21)
  %22 = load ptr, ptr %9, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = load ptr, ptr %7, align 4
  %25 = load ptr, ptr %8, align 4
  %26 = load ptr, ptr %11, align 4
  call void @Hacl_EC_AddAndDouble_fmonty(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26)
  %27 = load i8, ptr %12, align 1
  %28 = zext i8 %27 to i32
  %29 = ashr i32 %28, 7
  %30 = sext i32 %29 to i64
  store i64 %30, ptr %14, align 8
  %31 = load ptr, ptr %9, align 4
  %32 = load ptr, ptr %10, align 4
  %33 = load i64, ptr %14, align 8
  call void @Hacl_EC_Point_swap_conditional(ptr noundef %31, ptr noundef %32, i64 noundef %33)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Point_swap_conditional(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %8 = load i64, ptr %6, align 8
  %9 = sub i64 0, %8
  store i64 %9, ptr %7, align 8
  %10 = load ptr, ptr %4, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = load i64, ptr %7, align 8
  call void @Hacl_EC_Point_swap_conditional_(ptr noundef %10, ptr noundef %11, i64 noundef %12, i32 noundef 5)
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds i64, ptr %13, i32 5
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds i64, ptr %15, i32 5
  %17 = load i64, ptr %7, align 8
  call void @Hacl_EC_Point_swap_conditional_(ptr noundef %14, ptr noundef %16, i64 noundef %17, i32 noundef 5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_AddAndDouble_fmonty(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca ptr, align 4
  %20 = alloca [40 x i64], align 8
  %21 = alloca ptr, align 4
  %22 = alloca ptr, align 4
  %23 = alloca ptr, align 4
  %24 = alloca ptr, align 4
  %25 = alloca ptr, align 4
  %26 = alloca ptr, align 4
  %27 = alloca ptr, align 4
  %28 = alloca ptr, align 4
  %29 = alloca ptr, align 4
  %30 = alloca ptr, align 4
  %31 = alloca ptr, align 4
  %32 = alloca ptr, align 4
  %33 = alloca ptr, align 4
  %34 = alloca i64, align 8
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  %35 = load ptr, ptr %10, align 4
  store ptr %35, ptr %11, align 4
  %36 = load ptr, ptr %6, align 4
  store ptr %36, ptr %12, align 4
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds i64, ptr %37, i32 5
  store ptr %38, ptr %13, align 4
  %39 = load ptr, ptr %7, align 4
  store ptr %39, ptr %14, align 4
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr inbounds i64, ptr %40, i32 5
  store ptr %41, ptr %15, align 4
  %42 = load ptr, ptr %8, align 4
  store ptr %42, ptr %16, align 4
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr inbounds i64, ptr %43, i32 5
  store ptr %44, ptr %17, align 4
  %45 = load ptr, ptr %9, align 4
  store ptr %45, ptr %18, align 4
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr inbounds i64, ptr %46, i32 5
  store ptr %47, ptr %19, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %20, i8 0, i32 320, i1 false)
  %48 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  store ptr %48, ptr %21, align 4
  %49 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %50 = getelementptr inbounds i64, ptr %49, i32 5
  store ptr %50, ptr %22, align 4
  %51 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %52 = getelementptr inbounds i64, ptr %51, i32 25
  store ptr %52, ptr %23, align 4
  %53 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %54 = getelementptr inbounds i64, ptr %53, i32 30
  store ptr %54, ptr %24, align 4
  %55 = load ptr, ptr %21, align 4
  %56 = load ptr, ptr %16, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %55, ptr align 4 %56, i32 40, i1 false)
  %57 = load ptr, ptr %16, align 4
  %58 = load ptr, ptr %17, align 4
  call void @Hacl_Bignum_fsum(ptr noundef %57, ptr noundef %58)
  %59 = load ptr, ptr %17, align 4
  %60 = load ptr, ptr %21, align 4
  call void @Hacl_Bignum_fdifference(ptr noundef %59, ptr noundef %60)
  %61 = load ptr, ptr %22, align 4
  %62 = load ptr, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %61, ptr align 4 %62, i32 40, i1 false)
  %63 = load ptr, ptr %18, align 4
  %64 = load ptr, ptr %19, align 4
  call void @Hacl_Bignum_fsum(ptr noundef %63, ptr noundef %64)
  %65 = load ptr, ptr %19, align 4
  %66 = load ptr, ptr %22, align 4
  call void @Hacl_Bignum_fdifference(ptr noundef %65, ptr noundef %66)
  %67 = load ptr, ptr %23, align 4
  %68 = load ptr, ptr %18, align 4
  %69 = load ptr, ptr %17, align 4
  call void @Hacl_Bignum_fmul(ptr noundef %67, ptr noundef %68, ptr noundef %69)
  %70 = load ptr, ptr %24, align 4
  %71 = load ptr, ptr %16, align 4
  %72 = load ptr, ptr %19, align 4
  call void @Hacl_Bignum_fmul(ptr noundef %70, ptr noundef %71, ptr noundef %72)
  %73 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %74 = getelementptr inbounds i64, ptr %73, i32 5
  store ptr %74, ptr %25, align 4
  %75 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %76 = getelementptr inbounds i64, ptr %75, i32 15
  store ptr %76, ptr %26, align 4
  %77 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %78 = getelementptr inbounds i64, ptr %77, i32 20
  store ptr %78, ptr %27, align 4
  %79 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %80 = getelementptr inbounds i64, ptr %79, i32 25
  store ptr %80, ptr %28, align 4
  %81 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %82 = getelementptr inbounds i64, ptr %81, i32 30
  store ptr %82, ptr %29, align 4
  %83 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %84 = getelementptr inbounds i64, ptr %83, i32 35
  store ptr %84, ptr %30, align 4
  %85 = load ptr, ptr %25, align 4
  %86 = load ptr, ptr %28, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %85, ptr align 4 %86, i32 40, i1 false)
  %87 = load ptr, ptr %28, align 4
  %88 = load ptr, ptr %29, align 4
  call void @Hacl_Bignum_fsum(ptr noundef %87, ptr noundef %88)
  %89 = load ptr, ptr %29, align 4
  %90 = load ptr, ptr %25, align 4
  call void @Hacl_Bignum_fdifference(ptr noundef %89, ptr noundef %90)
  %91 = load ptr, ptr %14, align 4
  %92 = load ptr, ptr %28, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %91, ptr noundef %92, i32 noundef 1)
  %93 = load ptr, ptr %30, align 4
  %94 = load ptr, ptr %29, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %93, ptr noundef %94, i32 noundef 1)
  %95 = load ptr, ptr %15, align 4
  %96 = load ptr, ptr %30, align 4
  %97 = load ptr, ptr %11, align 4
  call void @Hacl_Bignum_fmul(ptr noundef %95, ptr noundef %96, ptr noundef %97)
  %98 = load ptr, ptr %26, align 4
  %99 = load ptr, ptr %16, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %98, ptr noundef %99, i32 noundef 1)
  %100 = load ptr, ptr %27, align 4
  %101 = load ptr, ptr %17, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %100, ptr noundef %101, i32 noundef 1)
  %102 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %103 = getelementptr inbounds i64, ptr %102, i32 10
  store ptr %103, ptr %31, align 4
  %104 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %105 = getelementptr inbounds i64, ptr %104, i32 15
  store ptr %105, ptr %32, align 4
  %106 = getelementptr inbounds [40 x i64], ptr %20, i32 0, i32 0
  %107 = getelementptr inbounds i64, ptr %106, i32 20
  store ptr %107, ptr %33, align 4
  %108 = load ptr, ptr %12, align 4
  %109 = load ptr, ptr %32, align 4
  %110 = load ptr, ptr %33, align 4
  call void @Hacl_Bignum_fmul(ptr noundef %108, ptr noundef %109, ptr noundef %110)
  %111 = load ptr, ptr %33, align 4
  %112 = load ptr, ptr %32, align 4
  call void @Hacl_Bignum_fdifference(ptr noundef %111, ptr noundef %112)
  store i64 121665, ptr %34, align 8
  %113 = load ptr, ptr %31, align 4
  %114 = load ptr, ptr %33, align 4
  %115 = load i64, ptr %34, align 8
  call void @Hacl_Bignum_fscalar(ptr noundef %113, ptr noundef %114, i64 noundef %115)
  %116 = load ptr, ptr %31, align 4
  %117 = load ptr, ptr %32, align 4
  call void @Hacl_Bignum_fsum(ptr noundef %116, ptr noundef %117)
  %118 = load ptr, ptr %13, align 4
  %119 = load ptr, ptr %31, align 4
  %120 = load ptr, ptr %33, align 4
  call void @Hacl_Bignum_fmul(ptr noundef %118, ptr noundef %119, ptr noundef %120)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Point_swap_conditional_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i64 %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %10 = load i32, ptr %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = load i64, ptr %7, align 8
  %16 = load i32, ptr %8, align 4
  call void @Hacl_EC_Point_swap_conditional_step(ptr noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %16)
  %17 = load i32, ptr %8, align 4
  %18 = sub i32 %17, 1
  store i32 %18, ptr %9, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = load i64, ptr %7, align 8
  %22 = load i32, ptr %9, align 4
  call void @Hacl_EC_Point_swap_conditional_(ptr noundef %19, ptr noundef %20, i64 noundef %21, i32 noundef %22)
  br label %23

23:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Point_swap_conditional_step(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i64 %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %15 = load i32, ptr %8, align 4
  %16 = sub i32 %15, 1
  store i32 %16, ptr %9, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = load i32, ptr %9, align 4
  %19 = getelementptr inbounds i64, ptr %17, i32 %18
  %20 = load i64, ptr %19, align 4
  store i64 %20, ptr %10, align 8
  %21 = load ptr, ptr %6, align 4
  %22 = load i32, ptr %9, align 4
  %23 = getelementptr inbounds i64, ptr %21, i32 %22
  %24 = load i64, ptr %23, align 4
  store i64 %24, ptr %11, align 8
  %25 = load i64, ptr %7, align 8
  %26 = load i64, ptr %10, align 8
  %27 = load i64, ptr %11, align 8
  %28 = xor i64 %26, %27
  %29 = and i64 %25, %28
  store i64 %29, ptr %12, align 8
  %30 = load i64, ptr %10, align 8
  %31 = load i64, ptr %12, align 8
  %32 = xor i64 %30, %31
  store i64 %32, ptr %13, align 8
  %33 = load i64, ptr %11, align 8
  %34 = load i64, ptr %12, align 8
  %35 = xor i64 %33, %34
  store i64 %35, ptr %14, align 8
  %36 = load i64, ptr %13, align 8
  %37 = load ptr, ptr %5, align 4
  %38 = load i32, ptr %9, align 4
  %39 = getelementptr inbounds i64, ptr %37, i32 %38
  store i64 %36, ptr %39, align 4
  %40 = load i64, ptr %14, align 8
  %41 = load ptr, ptr %6, align 4
  %42 = load i32, ptr %9, align 4
  %43 = getelementptr inbounds i64, ptr %41, i32 %42
  store i64 %40, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_fsum(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds i64, ptr %15, i32 0
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %5, align 8
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds i64, ptr %18, i32 0
  %20 = load i64, ptr %19, align 4
  store i64 %20, ptr %6, align 8
  %21 = load i64, ptr %5, align 8
  %22 = load i64, ptr %6, align 8
  %23 = add i64 %21, %22
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds i64, ptr %24, i32 0
  store i64 %23, ptr %25, align 4
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds i64, ptr %26, i32 1
  %28 = load i64, ptr %27, align 4
  store i64 %28, ptr %7, align 8
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds i64, ptr %29, i32 1
  %31 = load i64, ptr %30, align 4
  store i64 %31, ptr %8, align 8
  %32 = load i64, ptr %7, align 8
  %33 = load i64, ptr %8, align 8
  %34 = add i64 %32, %33
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds i64, ptr %35, i32 1
  store i64 %34, ptr %36, align 4
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds i64, ptr %37, i32 2
  %39 = load i64, ptr %38, align 4
  store i64 %39, ptr %9, align 8
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds i64, ptr %40, i32 2
  %42 = load i64, ptr %41, align 4
  store i64 %42, ptr %10, align 8
  %43 = load i64, ptr %9, align 8
  %44 = load i64, ptr %10, align 8
  %45 = add i64 %43, %44
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr inbounds i64, ptr %46, i32 2
  store i64 %45, ptr %47, align 4
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds i64, ptr %48, i32 3
  %50 = load i64, ptr %49, align 4
  store i64 %50, ptr %11, align 8
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds i64, ptr %51, i32 3
  %53 = load i64, ptr %52, align 4
  store i64 %53, ptr %12, align 8
  %54 = load i64, ptr %11, align 8
  %55 = load i64, ptr %12, align 8
  %56 = add i64 %54, %55
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds i64, ptr %57, i32 3
  store i64 %56, ptr %58, align 4
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr inbounds i64, ptr %59, i32 4
  %61 = load i64, ptr %60, align 4
  store i64 %61, ptr %13, align 8
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr inbounds i64, ptr %62, i32 4
  %64 = load i64, ptr %63, align 4
  store i64 %64, ptr %14, align 8
  %65 = load i64, ptr %13, align 8
  %66 = load i64, ptr %14, align 8
  %67 = add i64 %65, %66
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr inbounds i64, ptr %68, i32 4
  store i64 %67, ptr %69, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_fdifference(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [5 x i64], align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 40, i1 false)
  %21 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 0
  %22 = load ptr, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %21, ptr align 4 %22, i32 40, i1 false)
  %23 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 0
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %6, align 8
  %25 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %7, align 8
  %27 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %8, align 8
  %29 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 3
  %30 = load i64, ptr %29, align 8
  store i64 %30, ptr %9, align 8
  %31 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 4
  %32 = load i64, ptr %31, align 8
  store i64 %32, ptr %10, align 8
  %33 = load i64, ptr %6, align 8
  %34 = add i64 %33, 18014398509481832
  %35 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 0
  store i64 %34, ptr %35, align 8
  %36 = load i64, ptr %7, align 8
  %37 = add i64 %36, 18014398509481976
  %38 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 1
  store i64 %37, ptr %38, align 8
  %39 = load i64, ptr %8, align 8
  %40 = add i64 %39, 18014398509481976
  %41 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 2
  store i64 %40, ptr %41, align 8
  %42 = load i64, ptr %9, align 8
  %43 = add i64 %42, 18014398509481976
  %44 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 3
  store i64 %43, ptr %44, align 8
  %45 = load i64, ptr %10, align 8
  %46 = add i64 %45, 18014398509481976
  %47 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 4
  store i64 %46, ptr %47, align 8
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds i64, ptr %48, i32 0
  %50 = load i64, ptr %49, align 4
  store i64 %50, ptr %11, align 8
  %51 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 0
  %52 = load i64, ptr %51, align 8
  store i64 %52, ptr %12, align 8
  %53 = load i64, ptr %12, align 8
  %54 = load i64, ptr %11, align 8
  %55 = sub i64 %53, %54
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds i64, ptr %56, i32 0
  store i64 %55, ptr %57, align 4
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds i64, ptr %58, i32 1
  %60 = load i64, ptr %59, align 4
  store i64 %60, ptr %13, align 8
  %61 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 1
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %14, align 8
  %63 = load i64, ptr %14, align 8
  %64 = load i64, ptr %13, align 8
  %65 = sub i64 %63, %64
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr inbounds i64, ptr %66, i32 1
  store i64 %65, ptr %67, align 4
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr inbounds i64, ptr %68, i32 2
  %70 = load i64, ptr %69, align 4
  store i64 %70, ptr %15, align 8
  %71 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 2
  %72 = load i64, ptr %71, align 8
  store i64 %72, ptr %16, align 8
  %73 = load i64, ptr %16, align 8
  %74 = load i64, ptr %15, align 8
  %75 = sub i64 %73, %74
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds i64, ptr %76, i32 2
  store i64 %75, ptr %77, align 4
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr inbounds i64, ptr %78, i32 3
  %80 = load i64, ptr %79, align 4
  store i64 %80, ptr %17, align 8
  %81 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 3
  %82 = load i64, ptr %81, align 8
  store i64 %82, ptr %18, align 8
  %83 = load i64, ptr %18, align 8
  %84 = load i64, ptr %17, align 8
  %85 = sub i64 %83, %84
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr inbounds i64, ptr %86, i32 3
  store i64 %85, ptr %87, align 4
  %88 = load ptr, ptr %3, align 4
  %89 = getelementptr inbounds i64, ptr %88, i32 4
  %90 = load i64, ptr %89, align 4
  store i64 %90, ptr %19, align 8
  %91 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 4
  %92 = load i64, ptr %91, align 8
  store i64 %92, ptr %20, align 8
  %93 = load i64, ptr %20, align 8
  %94 = load i64, ptr %19, align 8
  %95 = sub i64 %93, %94
  %96 = load ptr, ptr %3, align 4
  %97 = getelementptr inbounds i64, ptr %96, i32 4
  store i64 %95, ptr %97, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_fmul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %8, align 4
  br label %10

10:                                               ; preds = %16, %3
  %11 = load i32, ptr %8, align 4
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, ptr %8, align 4
  %15 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 %14
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %9, i32 16, i1 false)
  br label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %8, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %8, align 4
  br label %10, !llvm.loop !7

19:                                               ; preds = %10
  %20 = load ptr, ptr %4, align 4
  %21 = load ptr, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %20, ptr align 4 %21, i32 40, i1 false)
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 0
  %24 = load i32, ptr %6, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times_(ptr noundef %22, ptr noundef %23, i32 noundef %24)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_fscalar(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 4
  %20 = alloca %struct.FStar_UInt128_uint128, align 4
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca %struct.FStar_UInt128_uint128, align 4
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.FStar_UInt128_uint128, align 4
  %25 = alloca %struct.FStar_UInt128_uint128, align 4
  %26 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  store i32 0, ptr %8, align 4
  br label %27

27:                                               ; preds = %33, %3
  %28 = load i32, ptr %8, align 4
  %29 = icmp ult i32 %28, 5
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, ptr %8, align 4
  %32 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 %31
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %32, ptr align 4 %9, i32 16, i1 false)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %8, align 4
  br label %27, !llvm.loop !9

36:                                               ; preds = %27
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds i64, ptr %37, i32 0
  %39 = load i64, ptr %38, align 4
  store i64 %39, ptr %10, align 8
  %40 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 0
  %41 = load i64, ptr %10, align 8
  %42 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %41, i64 noundef %42)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %40, ptr align 4 %11, i32 16, i1 false)
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr inbounds i64, ptr %43, i32 1
  %45 = load i64, ptr %44, align 4
  store i64 %45, ptr %12, align 8
  %46 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 1
  %47 = load i64, ptr %12, align 8
  %48 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %47, i64 noundef %48)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %46, ptr align 4 %13, i32 16, i1 false)
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr inbounds i64, ptr %49, i32 2
  %51 = load i64, ptr %50, align 4
  store i64 %51, ptr %14, align 8
  %52 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 2
  %53 = load i64, ptr %14, align 8
  %54 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %53, i64 noundef %54)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %52, ptr align 4 %15, i32 16, i1 false)
  %55 = load ptr, ptr %5, align 4
  %56 = getelementptr inbounds i64, ptr %55, i32 3
  %57 = load i64, ptr %56, align 4
  store i64 %57, ptr %16, align 8
  %58 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 3
  %59 = load i64, ptr %16, align 8
  %60 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %59, i64 noundef %60)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %58, ptr align 4 %17, i32 16, i1 false)
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr inbounds i64, ptr %61, i32 4
  %63 = load i64, ptr %62, align 4
  store i64 %63, ptr %18, align 8
  %64 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 4
  %65 = load i64, ptr %18, align 8
  %66 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %65, i64 noundef %66)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %64, ptr align 4 %19, i32 16, i1 false)
  %67 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 0
  call void @Hacl_Bignum_Fproduct_carry_wide_(ptr noundef %67)
  %68 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %20, ptr align 4 %68, i32 16, i1 false)
  %69 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %21, ptr align 4 %69, i32 16, i1 false)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 noundef 2251799813685247)
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 0
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 1
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %77 = load i64, ptr %76, align 4
  call void @FStar_UInt128_logand(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 %71, i64 %73, i64 %75, i64 %77)
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 0
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 1
  %81 = load i64, ptr %80, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 %79, i64 %81, i32 noundef 51)
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  %85 = load i64, ptr %84, align 4
  %86 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %83, i64 %85)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef 19, i64 noundef %86)
  %87 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 0
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 1
  %94 = load i64, ptr %93, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %88, i64 %90, i64 %92, i64 %94)
  %95 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %95, ptr align 4 %22, i32 16, i1 false)
  %96 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %96, ptr align 4 %24, i32 16, i1 false)
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %7, i32 0, i32 0
  call void @Hacl_Bignum_Fproduct_copy_from_wide_(ptr noundef %97, ptr noundef %98)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fmul_fmul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [5 x i64], align 8
  %8 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca %struct.FStar_UInt128_uint128, align 4
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %7, i8 0, i32 40, i1 false)
  %22 = getelementptr inbounds [5 x i64], ptr %7, i32 0, i32 0
  %23 = load ptr, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %22, ptr align 4 %23, i32 40, i1 false)
  store i32 0, ptr %9, align 4
  br label %24

24:                                               ; preds = %30, %3
  %25 = load i32, ptr %9, align 4
  %26 = icmp ult i32 %25, 5
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 %28
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %29, ptr align 4 %10, i32 16, i1 false)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %9, align 4
  br label %24, !llvm.loop !10

33:                                               ; preds = %24
  %34 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  %35 = getelementptr inbounds [5 x i64], ptr %7, i32 0, i32 0
  %36 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fmul_mul_shift_reduce_(ptr noundef %34, ptr noundef %35, ptr noundef %36)
  %37 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  call void @Hacl_Bignum_Fproduct_carry_wide_(ptr noundef %37)
  %38 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %11, ptr align 4 %38, i32 16, i1 false)
  %39 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %12, ptr align 4 %39, i32 16, i1 false)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef 2251799813685247)
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  call void @FStar_UInt128_logand(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %41, i64 %43, i64 %45, i64 %47)
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %51 = load i64, ptr %50, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %49, i64 %51, i32 noundef 51)
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 0
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 1
  %55 = load i64, ptr %54, align 4
  %56 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %53, i64 %55)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef 19, i64 noundef %56)
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 0
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 0
  %62 = load i64, ptr %61, align 4
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 1
  %64 = load i64, ptr %63, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %58, i64 %60, i64 %62, i64 %64)
  %65 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %65, ptr align 4 %13, i32 16, i1 false)
  %66 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %66, ptr align 4 %15, i32 16, i1 false)
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  call void @Hacl_Bignum_Fproduct_copy_from_wide_(ptr noundef %67, ptr noundef %68)
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr inbounds i64, ptr %69, i32 0
  %71 = load i64, ptr %70, align 4
  store i64 %71, ptr %18, align 8
  %72 = load ptr, ptr %4, align 4
  %73 = getelementptr inbounds i64, ptr %72, i32 1
  %74 = load i64, ptr %73, align 4
  store i64 %74, ptr %19, align 8
  %75 = load i64, ptr %18, align 8
  %76 = and i64 %75, 2251799813685247
  store i64 %76, ptr %20, align 8
  %77 = load i64, ptr %19, align 8
  %78 = load i64, ptr %18, align 8
  %79 = lshr i64 %78, 51
  %80 = add i64 %77, %79
  store i64 %80, ptr %21, align 8
  %81 = load i64, ptr %20, align 8
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr inbounds i64, ptr %82, i32 0
  store i64 %81, ptr %83, align 4
  %84 = load i64, ptr %21, align 8
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr inbounds i64, ptr %85, i32 1
  store i64 %84, ptr %86, align 4
  ret void
}

declare void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fmul_mul_shift_reduce_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds i64, ptr %13, i32 0
  %15 = load i64, ptr %14, align 4
  store i64 %15, ptr %7, align 8
  %16 = load ptr, ptr %4, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = load i64, ptr %7, align 8
  call void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %16, ptr noundef %17, i64 noundef %18)
  %19 = load ptr, ptr %5, align 4
  call void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %19)
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds i64, ptr %20, i32 1
  %22 = load i64, ptr %21, align 4
  store i64 %22, ptr %8, align 8
  %23 = load ptr, ptr %4, align 4
  %24 = load ptr, ptr %5, align 4
  %25 = load i64, ptr %8, align 8
  call void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %23, ptr noundef %24, i64 noundef %25)
  %26 = load ptr, ptr %5, align 4
  call void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %26)
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds i64, ptr %27, i32 2
  %29 = load i64, ptr %28, align 4
  store i64 %29, ptr %9, align 8
  %30 = load ptr, ptr %4, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = load i64, ptr %9, align 8
  call void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %30, ptr noundef %31, i64 noundef %32)
  %33 = load ptr, ptr %5, align 4
  call void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %33)
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds i64, ptr %34, i32 3
  %36 = load i64, ptr %35, align 4
  store i64 %36, ptr %10, align 8
  %37 = load ptr, ptr %4, align 4
  %38 = load ptr, ptr %5, align 4
  %39 = load i64, ptr %10, align 8
  call void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %37, ptr noundef %38, i64 noundef %39)
  %40 = load ptr, ptr %5, align 4
  call void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %40)
  store i32 4, ptr %11, align 4
  %41 = load ptr, ptr %6, align 4
  %42 = load i32, ptr %11, align 4
  %43 = getelementptr inbounds i64, ptr %41, i32 %42
  %44 = load i64, ptr %43, align 4
  store i64 %44, ptr %12, align 8
  %45 = load ptr, ptr %4, align 4
  %46 = load ptr, ptr %5, align 4
  %47 = load i64, ptr %12, align 8
  call void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %45, ptr noundef %46, i64 noundef %47)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_carry_wide_(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca %struct.FStar_UInt128_uint128, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca %struct.FStar_UInt128_uint128, align 4
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.FStar_UInt128_uint128, align 4
  %26 = alloca %struct.FStar_UInt128_uint128, align 4
  %27 = alloca i64, align 8
  %28 = alloca %struct.FStar_UInt128_uint128, align 4
  %29 = alloca %struct.FStar_UInt128_uint128, align 4
  %30 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %31 = load ptr, ptr %2, align 4
  %32 = load i32, ptr %3, align 4
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %31, i32 %32
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %4, ptr align 4 %33, i32 16, i1 false)
  %34 = load ptr, ptr %2, align 4
  %35 = load i32, ptr %3, align 4
  %36 = add i32 %35, 1
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %34, i32 %36
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 4 %37, i32 16, i1 false)
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 0
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 1
  %41 = load i64, ptr %40, align 4
  %42 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %39, i64 %41)
  %43 = and i64 %42, 2251799813685247
  store i64 %43, ptr %6, align 8
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 0
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %45, i64 %47, i32 noundef 51)
  %48 = load ptr, ptr %2, align 4
  %49 = load i32, ptr %3, align 4
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %48, i32 %49
  %51 = load i64, ptr %6, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %51)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %50, ptr align 4 %8, i32 16, i1 false)
  %52 = load ptr, ptr %2, align 4
  %53 = load i32, ptr %3, align 4
  %54 = add i32 %53, 1
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %52, i32 %54
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 0
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 1
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %63 = load i64, ptr %62, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %57, i64 %59, i64 %61, i64 %63)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %55, ptr align 4 %9, i32 16, i1 false)
  store i32 1, ptr %10, align 4
  %64 = load ptr, ptr %2, align 4
  %65 = load i32, ptr %10, align 4
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %64, i32 %65
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %11, ptr align 4 %66, i32 16, i1 false)
  %67 = load ptr, ptr %2, align 4
  %68 = load i32, ptr %10, align 4
  %69 = add i32 %68, 1
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %67, i32 %69
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %12, ptr align 4 %70, i32 16, i1 false)
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %74 = load i64, ptr %73, align 4
  %75 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %72, i64 %74)
  %76 = and i64 %75, 2251799813685247
  store i64 %76, ptr %13, align 8
  %77 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %78 = load i64, ptr %77, align 4
  %79 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %80 = load i64, ptr %79, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %78, i64 %80, i32 noundef 51)
  %81 = load ptr, ptr %2, align 4
  %82 = load i32, ptr %10, align 4
  %83 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %81, i32 %82
  %84 = load i64, ptr %13, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %84)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %83, ptr align 4 %15, i32 16, i1 false)
  %85 = load ptr, ptr %2, align 4
  %86 = load i32, ptr %10, align 4
  %87 = add i32 %86, 1
  %88 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %85, i32 %87
  %89 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 0
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 1
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %94 = load i64, ptr %93, align 4
  %95 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %96 = load i64, ptr %95, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %90, i64 %92, i64 %94, i64 %96)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %88, ptr align 4 %16, i32 16, i1 false)
  store i32 2, ptr %17, align 4
  %97 = load ptr, ptr %2, align 4
  %98 = load i32, ptr %17, align 4
  %99 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %97, i32 %98
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 4 %99, i32 16, i1 false)
  %100 = load ptr, ptr %2, align 4
  %101 = load i32, ptr %17, align 4
  %102 = add i32 %101, 1
  %103 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %100, i32 %102
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %103, i32 16, i1 false)
  %104 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %107 = load i64, ptr %106, align 4
  %108 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %105, i64 %107)
  %109 = and i64 %108, 2251799813685247
  store i64 %109, ptr %20, align 8
  %110 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %113 = load i64, ptr %112, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %111, i64 %113, i32 noundef 51)
  %114 = load ptr, ptr %2, align 4
  %115 = load i32, ptr %17, align 4
  %116 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %114, i32 %115
  %117 = load i64, ptr %20, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %117)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %116, ptr align 4 %22, i32 16, i1 false)
  %118 = load ptr, ptr %2, align 4
  %119 = load i32, ptr %17, align 4
  %120 = add i32 %119, 1
  %121 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %118, i32 %120
  %122 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 0
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 1
  %125 = load i64, ptr %124, align 4
  %126 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %127 = load i64, ptr %126, align 4
  %128 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %129 = load i64, ptr %128, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %123, i64 %125, i64 %127, i64 %129)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %121, ptr align 4 %23, i32 16, i1 false)
  store i32 3, ptr %24, align 4
  %130 = load ptr, ptr %2, align 4
  %131 = load i32, ptr %24, align 4
  %132 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %130, i32 %131
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %25, ptr align 4 %132, i32 16, i1 false)
  %133 = load ptr, ptr %2, align 4
  %134 = load i32, ptr %24, align 4
  %135 = add i32 %134, 1
  %136 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %133, i32 %135
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr align 4 %136, i32 16, i1 false)
  %137 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 0
  %138 = load i64, ptr %137, align 4
  %139 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 1
  %140 = load i64, ptr %139, align 4
  %141 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %138, i64 %140)
  %142 = and i64 %141, 2251799813685247
  store i64 %142, ptr %27, align 8
  %143 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 0
  %144 = load i64, ptr %143, align 4
  %145 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 1
  %146 = load i64, ptr %145, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 %144, i64 %146, i32 noundef 51)
  %147 = load ptr, ptr %2, align 4
  %148 = load i32, ptr %24, align 4
  %149 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %147, i32 %148
  %150 = load i64, ptr %27, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 noundef %150)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %149, ptr align 4 %29, i32 16, i1 false)
  %151 = load ptr, ptr %2, align 4
  %152 = load i32, ptr %24, align 4
  %153 = add i32 %152, 1
  %154 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %151, i32 %153
  %155 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  %156 = load i64, ptr %155, align 4
  %157 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 0
  %160 = load i64, ptr %159, align 4
  %161 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 1
  %162 = load i64, ptr %161, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 %156, i64 %158, i64 %160, i64 %162)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %154, ptr align 4 %30, i32 16, i1 false)
  ret void
}

declare void @FStar_UInt128_logand(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) #3

declare void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) #3

declare void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) #3

declare i64 @FStar_UInt128_uint128_to_uint64(i64, i64) #3

declare void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_copy_from_wide_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 4 %11, i32 16, i1 false)
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 0
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %13, i64 %15)
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds i64, ptr %17, i32 0
  store i64 %16, ptr %18, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %20, i32 16, i1 false)
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %22, i64 %24)
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds i64, ptr %26, i32 1
  store i64 %25, ptr %27, align 4
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 4 %29, i32 16, i1 false)
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %31, i64 %33)
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds i64, ptr %35, i32 2
  store i64 %34, ptr %36, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %37, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %38, i32 16, i1 false)
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %40, i64 %42)
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds i64, ptr %44, i32 3
  store i64 %43, ptr %45, align 4
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %46, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %9, ptr align 4 %47, i32 16, i1 false)
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %9, i32 0, i32 0
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %9, i32 0, i32 1
  %51 = load i64, ptr %50, align 4
  %52 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %49, i64 %51)
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds i64, ptr %53, i32 4
  store i64 %52, ptr %54, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca %struct.FStar_UInt128_uint128, align 4
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 4
  %26 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 4 %28, i32 16, i1 false)
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds i64, ptr %29, i32 0
  %31 = load i64, ptr %30, align 4
  store i64 %31, ptr %8, align 8
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0
  %34 = load i64, ptr %8, align 8
  %35 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %34, i64 noundef %35)
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %37, i64 %39, i64 %41, i64 %43)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %33, ptr align 4 %9, i32 16, i1 false)
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %44, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %11, ptr align 4 %45, i32 16, i1 false)
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr inbounds i64, ptr %46, i32 1
  %48 = load i64, ptr %47, align 4
  store i64 %48, ptr %12, align 8
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %49, i32 1
  %51 = load i64, ptr %12, align 8
  %52 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %51, i64 noundef %52)
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %54, i64 %56, i64 %58, i64 %60)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %50, ptr align 4 %13, i32 16, i1 false)
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %61, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %62, i32 16, i1 false)
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr inbounds i64, ptr %63, i32 2
  %65 = load i64, ptr %64, align 4
  store i64 %65, ptr %16, align 8
  %66 = load ptr, ptr %4, align 4
  %67 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %66, i32 2
  %68 = load i64, ptr %16, align 8
  %69 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %68, i64 noundef %69)
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 0
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 1
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %77 = load i64, ptr %76, align 4
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %71, i64 %73, i64 %75, i64 %77)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %67, ptr align 4 %17, i32 16, i1 false)
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %78, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %79, i32 16, i1 false)
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr inbounds i64, ptr %80, i32 3
  %82 = load i64, ptr %81, align 4
  store i64 %82, ptr %20, align 8
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %83, i32 3
  %85 = load i64, ptr %20, align 8
  %86 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %85, i64 noundef %86)
  %87 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 0
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 1
  %90 = load i64, ptr %89, align 4
  %91 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 0
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 1
  %94 = load i64, ptr %93, align 4
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %88, i64 %90, i64 %92, i64 %94)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %84, ptr align 4 %21, i32 16, i1 false)
  %95 = load ptr, ptr %4, align 4
  %96 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %95, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %23, ptr align 4 %96, i32 16, i1 false)
  %97 = load ptr, ptr %5, align 4
  %98 = getelementptr inbounds i64, ptr %97, i32 4
  %99 = load i64, ptr %98, align 4
  store i64 %99, ptr %24, align 8
  %100 = load ptr, ptr %4, align 4
  %101 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %100, i32 4
  %102 = load i64, ptr %24, align 8
  %103 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %102, i64 noundef %103)
  %104 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  %109 = load i64, ptr %108, align 4
  %110 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  %111 = load i64, ptr %110, align 4
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 %105, i64 %107, i64 %109, i64 %111)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %101, ptr align 4 %25, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds i64, ptr %13, i32 4
  %15 = load i64, ptr %14, align 4
  store i64 %15, ptr %3, align 8
  store i32 4, ptr %4, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = load i32, ptr %4, align 4
  %18 = sub i32 %17, 1
  %19 = getelementptr inbounds i64, ptr %16, i32 %18
  %20 = load i64, ptr %19, align 4
  store i64 %20, ptr %5, align 8
  %21 = load i64, ptr %5, align 8
  %22 = load ptr, ptr %2, align 4
  %23 = load i32, ptr %4, align 4
  %24 = getelementptr inbounds i64, ptr %22, i32 %23
  store i64 %21, ptr %24, align 4
  store i32 3, ptr %6, align 4
  %25 = load ptr, ptr %2, align 4
  %26 = load i32, ptr %6, align 4
  %27 = sub i32 %26, 1
  %28 = getelementptr inbounds i64, ptr %25, i32 %27
  %29 = load i64, ptr %28, align 4
  store i64 %29, ptr %7, align 8
  %30 = load i64, ptr %7, align 8
  %31 = load ptr, ptr %2, align 4
  %32 = load i32, ptr %6, align 4
  %33 = getelementptr inbounds i64, ptr %31, i32 %32
  store i64 %30, ptr %33, align 4
  store i32 2, ptr %8, align 4
  %34 = load ptr, ptr %2, align 4
  %35 = load i32, ptr %8, align 4
  %36 = sub i32 %35, 1
  %37 = getelementptr inbounds i64, ptr %34, i32 %36
  %38 = load i64, ptr %37, align 4
  store i64 %38, ptr %9, align 8
  %39 = load i64, ptr %9, align 8
  %40 = load ptr, ptr %2, align 4
  %41 = load i32, ptr %8, align 4
  %42 = getelementptr inbounds i64, ptr %40, i32 %41
  store i64 %39, ptr %42, align 4
  store i32 1, ptr %10, align 4
  %43 = load ptr, ptr %2, align 4
  %44 = load i32, ptr %10, align 4
  %45 = sub i32 %44, 1
  %46 = getelementptr inbounds i64, ptr %43, i32 %45
  %47 = load i64, ptr %46, align 4
  store i64 %47, ptr %11, align 8
  %48 = load i64, ptr %11, align 8
  %49 = load ptr, ptr %2, align 4
  %50 = load i32, ptr %10, align 4
  %51 = getelementptr inbounds i64, ptr %49, i32 %50
  store i64 %48, ptr %51, align 4
  %52 = load i64, ptr %3, align 8
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr inbounds i64, ptr %53, i32 0
  store i64 %52, ptr %54, align 4
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr inbounds i64, ptr %55, i32 0
  %57 = load i64, ptr %56, align 4
  store i64 %57, ptr %12, align 8
  %58 = load i64, ptr %12, align 8
  %59 = mul i64 19, %58
  %60 = load ptr, ptr %2, align 4
  %61 = getelementptr inbounds i64, ptr %60, i32 0
  store i64 %59, ptr %61, align 4
  ret void
}

declare void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) #3

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fsquare_fsquare_times_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_(ptr noundef %8, ptr noundef %9)
  store i32 1, ptr %7, align 4
  br label %10

10:                                               ; preds = %17, %3
  %11 = load i32, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_(ptr noundef %15, ptr noundef %16)
  br label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %7, align 4
  br label %10, !llvm.loop !11

20:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fsquare_fsquare_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_Fsquare_fsquare__(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %3, align 4
  call void @Hacl_Bignum_Fproduct_carry_wide_(ptr noundef %18)
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 4 %20, i32 16, i1 false)
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %22, i32 16, i1 false)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 2251799813685247)
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 0
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  call void @FStar_UInt128_logand(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %24, i64 %26, i64 %28, i64 %30)
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 0
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %32, i64 %34, i32 noundef 51)
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %38 = load i64, ptr %37, align 4
  %39 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %36, i64 %38)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 19, i64 noundef %39)
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %41, i64 %43, i64 %45, i64 %47)
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %48, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %49, ptr align 4 %7, i32 16, i1 false)
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %50, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %51, ptr align 4 %9, i32 16, i1 false)
  %52 = load ptr, ptr %4, align 4
  %53 = load ptr, ptr %3, align 4
  call void @Hacl_Bignum_Fproduct_copy_from_wide_(ptr noundef %52, ptr noundef %53)
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr inbounds i64, ptr %54, i32 0
  %56 = load i64, ptr %55, align 4
  store i64 %56, ptr %12, align 8
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds i64, ptr %57, i32 1
  %59 = load i64, ptr %58, align 4
  store i64 %59, ptr %13, align 8
  %60 = load i64, ptr %12, align 8
  %61 = and i64 %60, 2251799813685247
  store i64 %61, ptr %14, align 8
  %62 = load i64, ptr %13, align 8
  %63 = load i64, ptr %12, align 8
  %64 = lshr i64 %63, 51
  %65 = add i64 %62, %64
  store i64 %65, ptr %15, align 8
  %66 = load i64, ptr %14, align 8
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds i64, ptr %67, i32 0
  store i64 %66, ptr %68, align 4
  %69 = load i64, ptr %15, align 8
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr inbounds i64, ptr %70, i32 1
  store i64 %69, ptr %71, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fsquare_fsquare__(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca %struct.FStar_UInt128_uint128, align 4
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 4
  %20 = alloca %struct.FStar_UInt128_uint128, align 4
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca %struct.FStar_UInt128_uint128, align 4
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.FStar_UInt128_uint128, align 4
  %25 = alloca %struct.FStar_UInt128_uint128, align 4
  %26 = alloca %struct.FStar_UInt128_uint128, align 4
  %27 = alloca %struct.FStar_UInt128_uint128, align 4
  %28 = alloca %struct.FStar_UInt128_uint128, align 4
  %29 = alloca %struct.FStar_UInt128_uint128, align 4
  %30 = alloca %struct.FStar_UInt128_uint128, align 4
  %31 = alloca %struct.FStar_UInt128_uint128, align 4
  %32 = alloca %struct.FStar_UInt128_uint128, align 4
  %33 = alloca %struct.FStar_UInt128_uint128, align 4
  %34 = alloca %struct.FStar_UInt128_uint128, align 4
  %35 = alloca %struct.FStar_UInt128_uint128, align 4
  %36 = alloca %struct.FStar_UInt128_uint128, align 4
  %37 = alloca %struct.FStar_UInt128_uint128, align 4
  %38 = alloca %struct.FStar_UInt128_uint128, align 4
  %39 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds i64, ptr %40, i32 0
  %42 = load i64, ptr %41, align 4
  store i64 %42, ptr %5, align 8
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds i64, ptr %43, i32 1
  %45 = load i64, ptr %44, align 4
  store i64 %45, ptr %6, align 8
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds i64, ptr %46, i32 2
  %48 = load i64, ptr %47, align 4
  store i64 %48, ptr %7, align 8
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr inbounds i64, ptr %49, i32 3
  %51 = load i64, ptr %50, align 4
  store i64 %51, ptr %8, align 8
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr inbounds i64, ptr %52, i32 4
  %54 = load i64, ptr %53, align 4
  store i64 %54, ptr %9, align 8
  %55 = load i64, ptr %5, align 8
  %56 = mul i64 %55, 2
  store i64 %56, ptr %10, align 8
  %57 = load i64, ptr %6, align 8
  %58 = mul i64 %57, 2
  store i64 %58, ptr %11, align 8
  %59 = load i64, ptr %7, align 8
  %60 = mul i64 %59, 2
  %61 = mul i64 %60, 19
  store i64 %61, ptr %12, align 8
  %62 = load i64, ptr %9, align 8
  %63 = mul i64 %62, 19
  store i64 %63, ptr %13, align 8
  %64 = load i64, ptr %13, align 8
  %65 = mul i64 %64, 2
  store i64 %65, ptr %14, align 8
  %66 = load i64, ptr %5, align 8
  %67 = load i64, ptr %5, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %66, i64 noundef %67)
  %68 = load i64, ptr %14, align 8
  %69 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %68, i64 noundef %69)
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 0
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 1
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %77 = load i64, ptr %76, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %71, i64 %73, i64 %75, i64 %77)
  %78 = load i64, ptr %12, align 8
  %79 = load i64, ptr %8, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %78, i64 noundef %79)
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 0
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 1
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 0
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 1
  %87 = load i64, ptr %86, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %81, i64 %83, i64 %85, i64 %87)
  %88 = load i64, ptr %10, align 8
  %89 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %88, i64 noundef %89)
  %90 = load i64, ptr %14, align 8
  %91 = load i64, ptr %7, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 noundef %90, i64 noundef %91)
  %92 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 0
  %93 = load i64, ptr %92, align 4
  %94 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 1
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %99 = load i64, ptr %98, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %93, i64 %95, i64 %97, i64 %99)
  %100 = load i64, ptr %8, align 8
  %101 = mul i64 %100, 19
  %102 = load i64, ptr %8, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 noundef %101, i64 noundef %102)
  %103 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %104 = load i64, ptr %103, align 4
  %105 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %106 = load i64, ptr %105, align 4
  %107 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 0
  %108 = load i64, ptr %107, align 4
  %109 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 1
  %110 = load i64, ptr %109, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 %104, i64 %106, i64 %108, i64 %110)
  %111 = load i64, ptr %10, align 8
  %112 = load i64, ptr %7, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %111, i64 noundef %112)
  %113 = load i64, ptr %6, align 8
  %114 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 noundef %113, i64 noundef %114)
  %115 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 0
  %116 = load i64, ptr %115, align 4
  %117 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 1
  %118 = load i64, ptr %117, align 4
  %119 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 0
  %120 = load i64, ptr %119, align 4
  %121 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 1
  %122 = load i64, ptr %121, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 %116, i64 %118, i64 %120, i64 %122)
  %123 = load i64, ptr %14, align 8
  %124 = load i64, ptr %8, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 noundef %123, i64 noundef %124)
  %125 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  %126 = load i64, ptr %125, align 4
  %127 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  %128 = load i64, ptr %127, align 4
  %129 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %29, i32 0, i32 0
  %130 = load i64, ptr %129, align 4
  %131 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %29, i32 0, i32 1
  %132 = load i64, ptr %131, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 %126, i64 %128, i64 %130, i64 %132)
  %133 = load i64, ptr %10, align 8
  %134 = load i64, ptr %8, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %32, i64 noundef %133, i64 noundef %134)
  %135 = load i64, ptr %11, align 8
  %136 = load i64, ptr %7, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %33, i64 noundef %135, i64 noundef %136)
  %137 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 0
  %138 = load i64, ptr %137, align 4
  %139 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 1
  %140 = load i64, ptr %139, align 4
  %141 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 0, i32 0
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 0, i32 1
  %144 = load i64, ptr %143, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %31, i64 %138, i64 %140, i64 %142, i64 %144)
  %145 = load i64, ptr %9, align 8
  %146 = load i64, ptr %13, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %34, i64 noundef %145, i64 noundef %146)
  %147 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %31, i32 0, i32 0
  %148 = load i64, ptr %147, align 4
  %149 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %31, i32 0, i32 1
  %150 = load i64, ptr %149, align 4
  %151 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %34, i32 0, i32 0
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %34, i32 0, i32 1
  %154 = load i64, ptr %153, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 %148, i64 %150, i64 %152, i64 %154)
  %155 = load i64, ptr %10, align 8
  %156 = load i64, ptr %9, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %37, i64 noundef %155, i64 noundef %156)
  %157 = load i64, ptr %11, align 8
  %158 = load i64, ptr %8, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %38, i64 noundef %157, i64 noundef %158)
  %159 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %37, i32 0, i32 0
  %160 = load i64, ptr %159, align 4
  %161 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %37, i32 0, i32 1
  %162 = load i64, ptr %161, align 4
  %163 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %38, i32 0, i32 0
  %164 = load i64, ptr %163, align 4
  %165 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %38, i32 0, i32 1
  %166 = load i64, ptr %165, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %36, i64 %160, i64 %162, i64 %164, i64 %166)
  %167 = load i64, ptr %7, align 8
  %168 = load i64, ptr %7, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %39, i64 noundef %167, i64 noundef %168)
  %169 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %36, i32 0, i32 0
  %170 = load i64, ptr %169, align 4
  %171 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %36, i32 0, i32 1
  %172 = load i64, ptr %171, align 4
  %173 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %39, i32 0, i32 0
  %174 = load i64, ptr %173, align 4
  %175 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %39, i32 0, i32 1
  %176 = load i64, ptr %175, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %35, i64 %170, i64 %172, i64 %174, i64 %176)
  %177 = load ptr, ptr %3, align 4
  %178 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %177, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %178, ptr align 4 %15, i32 16, i1 false)
  %179 = load ptr, ptr %3, align 4
  %180 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %179, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %180, ptr align 4 %20, i32 16, i1 false)
  %181 = load ptr, ptr %3, align 4
  %182 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %181, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %182, ptr align 4 %25, i32 16, i1 false)
  %183 = load ptr, ptr %3, align 4
  %184 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %183, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %184, ptr align 4 %30, i32 16, i1 false)
  %185 = load ptr, ptr %3, align 4
  %186 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %185, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %186, ptr align 4 %35, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_crecip(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_Crecip_crecip(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Format_fcontract(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %4, align 4
  call void @Hacl_EC_Format_fcontract_first_carry_full(ptr noundef %5)
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_EC_Format_fcontract_second_carry_full(ptr noundef %6)
  %7 = load ptr, ptr %4, align 4
  call void @Hacl_EC_Format_fcontract_trim(ptr noundef %7)
  %8 = load ptr, ptr %3, align 4
  %9 = load ptr, ptr %4, align 4
  call void @Hacl_EC_Format_fcontract_store(ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Crecip_crecip(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [20 x i64], align 8
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 160, i1 false)
  %16 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  store ptr %16, ptr %6, align 4
  %17 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %18 = getelementptr inbounds i64, ptr %17, i32 5
  store ptr %18, ptr %7, align 4
  %19 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %20 = getelementptr inbounds i64, ptr %19, i32 10
  store ptr %20, ptr %8, align 4
  %21 = load ptr, ptr %6, align 4
  %22 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %21, ptr noundef %22, i32 noundef 1)
  %23 = load ptr, ptr %7, align 4
  %24 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %23, ptr noundef %24, i32 noundef 2)
  %25 = load ptr, ptr %8, align 4
  %26 = load ptr, ptr %7, align 4
  %27 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %6, align 4
  %29 = load ptr, ptr %8, align 4
  %30 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %7, align 4
  %32 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %31, ptr noundef %32, i32 noundef 1)
  %33 = load ptr, ptr %8, align 4
  %34 = load ptr, ptr %7, align 4
  %35 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %33, ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %7, align 4
  %37 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %36, ptr noundef %37, i32 noundef 5)
  %38 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %39 = getelementptr inbounds i64, ptr %38, i32 5
  store ptr %39, ptr %9, align 4
  %40 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %41 = getelementptr inbounds i64, ptr %40, i32 10
  store ptr %41, ptr %10, align 4
  %42 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %43 = getelementptr inbounds i64, ptr %42, i32 15
  store ptr %43, ptr %11, align 4
  %44 = load ptr, ptr %10, align 4
  %45 = load ptr, ptr %9, align 4
  %46 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %44, ptr noundef %45, ptr noundef %46)
  %47 = load ptr, ptr %9, align 4
  %48 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %47, ptr noundef %48, i32 noundef 10)
  %49 = load ptr, ptr %11, align 4
  %50 = load ptr, ptr %9, align 4
  %51 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %49, ptr noundef %50, ptr noundef %51)
  %52 = load ptr, ptr %9, align 4
  %53 = load ptr, ptr %11, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %52, ptr noundef %53, i32 noundef 20)
  %54 = load ptr, ptr %9, align 4
  %55 = load ptr, ptr %9, align 4
  %56 = load ptr, ptr %11, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %54, ptr noundef %55, ptr noundef %56)
  %57 = load ptr, ptr %9, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef %57, i32 noundef 10)
  %58 = load ptr, ptr %10, align 4
  %59 = load ptr, ptr %9, align 4
  %60 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %58, ptr noundef %59, ptr noundef %60)
  %61 = load ptr, ptr %9, align 4
  %62 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %61, ptr noundef %62, i32 noundef 50)
  %63 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  store ptr %63, ptr %12, align 4
  %64 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %65 = getelementptr inbounds i64, ptr %64, i32 5
  store ptr %65, ptr %13, align 4
  %66 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %67 = getelementptr inbounds i64, ptr %66, i32 10
  store ptr %67, ptr %14, align 4
  %68 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %69 = getelementptr inbounds i64, ptr %68, i32 15
  store ptr %69, ptr %15, align 4
  %70 = load ptr, ptr %15, align 4
  %71 = load ptr, ptr %13, align 4
  %72 = load ptr, ptr %14, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %70, ptr noundef %71, ptr noundef %72)
  %73 = load ptr, ptr %13, align 4
  %74 = load ptr, ptr %15, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %73, ptr noundef %74, i32 noundef 100)
  %75 = load ptr, ptr %13, align 4
  %76 = load ptr, ptr %13, align 4
  %77 = load ptr, ptr %15, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %75, ptr noundef %76, ptr noundef %77)
  %78 = load ptr, ptr %13, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef %78, i32 noundef 50)
  %79 = load ptr, ptr %13, align 4
  %80 = load ptr, ptr %13, align 4
  %81 = load ptr, ptr %14, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %79, ptr noundef %80, ptr noundef %81)
  %82 = load ptr, ptr %13, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef %82, i32 noundef 5)
  %83 = load ptr, ptr %3, align 4
  %84 = load ptr, ptr %13, align 4
  %85 = load ptr, ptr %12, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %83, ptr noundef %84, ptr noundef %85)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %6, align 4
  br label %8

8:                                                ; preds = %14, %2
  %9 = load i32, ptr %6, align 4
  %10 = icmp ult i32 %9, 5
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, ptr %6, align 4
  %13 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %5, i32 0, i32 %12
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %7, i32 16, i1 false)
  br label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %6, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %6, align 4
  br label %8, !llvm.loop !12

17:                                               ; preds = %8
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %5, i32 0, i32 0
  %20 = load i32, ptr %4, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times_(ptr noundef %18, ptr noundef %19, i32 noundef %20)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Format_fcontract_first_carry_full(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @Hacl_EC_Format_fcontract_first_carry_pass(ptr noundef %3)
  %4 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Modulo_carry_top(ptr noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Format_fcontract_second_carry_full(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %7 = load ptr, ptr %2, align 4
  call void @Hacl_EC_Format_fcontract_second_carry_pass(ptr noundef %7)
  %8 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Modulo_carry_top(ptr noundef %8)
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds i64, ptr %9, i32 0
  %11 = load i64, ptr %10, align 4
  store i64 %11, ptr %3, align 8
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds i64, ptr %12, i32 1
  %14 = load i64, ptr %13, align 4
  store i64 %14, ptr %4, align 8
  %15 = load i64, ptr %3, align 8
  %16 = and i64 %15, 2251799813685247
  store i64 %16, ptr %5, align 8
  %17 = load i64, ptr %4, align 8
  %18 = load i64, ptr %3, align 8
  %19 = lshr i64 %18, 51
  %20 = add i64 %17, %19
  store i64 %20, ptr %6, align 8
  %21 = load i64, ptr %5, align 8
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds i64, ptr %22, i32 0
  store i64 %21, ptr %23, align 4
  %24 = load i64, ptr %6, align 8
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds i64, ptr %25, i32 1
  store i64 %24, ptr %26, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Format_fcontract_trim(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds i64, ptr %19, i32 0
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %3, align 8
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds i64, ptr %22, i32 1
  %24 = load i64, ptr %23, align 4
  store i64 %24, ptr %4, align 8
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds i64, ptr %25, i32 2
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %5, align 8
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds i64, ptr %28, i32 3
  %30 = load i64, ptr %29, align 4
  store i64 %30, ptr %6, align 8
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds i64, ptr %31, i32 4
  %33 = load i64, ptr %32, align 4
  store i64 %33, ptr %7, align 8
  %34 = load i64, ptr %3, align 8
  %35 = call i64 @FStar_UInt64_gte_mask(i64 noundef %34, i64 noundef 2251799813685229)
  store i64 %35, ptr %8, align 8
  %36 = load i64, ptr %4, align 8
  %37 = call i64 @FStar_UInt64_eq_mask(i64 noundef %36, i64 noundef 2251799813685247)
  store i64 %37, ptr %9, align 8
  %38 = load i64, ptr %5, align 8
  %39 = call i64 @FStar_UInt64_eq_mask(i64 noundef %38, i64 noundef 2251799813685247)
  store i64 %39, ptr %10, align 8
  %40 = load i64, ptr %6, align 8
  %41 = call i64 @FStar_UInt64_eq_mask(i64 noundef %40, i64 noundef 2251799813685247)
  store i64 %41, ptr %11, align 8
  %42 = load i64, ptr %7, align 8
  %43 = call i64 @FStar_UInt64_eq_mask(i64 noundef %42, i64 noundef 2251799813685247)
  store i64 %43, ptr %12, align 8
  %44 = load i64, ptr %8, align 8
  %45 = load i64, ptr %9, align 8
  %46 = and i64 %44, %45
  %47 = load i64, ptr %10, align 8
  %48 = and i64 %46, %47
  %49 = load i64, ptr %11, align 8
  %50 = and i64 %48, %49
  %51 = load i64, ptr %12, align 8
  %52 = and i64 %50, %51
  store i64 %52, ptr %13, align 8
  %53 = load i64, ptr %3, align 8
  %54 = load i64, ptr %13, align 8
  %55 = and i64 2251799813685229, %54
  %56 = sub i64 %53, %55
  store i64 %56, ptr %14, align 8
  %57 = load i64, ptr %4, align 8
  %58 = load i64, ptr %13, align 8
  %59 = and i64 2251799813685247, %58
  %60 = sub i64 %57, %59
  store i64 %60, ptr %15, align 8
  %61 = load i64, ptr %5, align 8
  %62 = load i64, ptr %13, align 8
  %63 = and i64 2251799813685247, %62
  %64 = sub i64 %61, %63
  store i64 %64, ptr %16, align 8
  %65 = load i64, ptr %6, align 8
  %66 = load i64, ptr %13, align 8
  %67 = and i64 2251799813685247, %66
  %68 = sub i64 %65, %67
  store i64 %68, ptr %17, align 8
  %69 = load i64, ptr %7, align 8
  %70 = load i64, ptr %13, align 8
  %71 = and i64 2251799813685247, %70
  %72 = sub i64 %69, %71
  store i64 %72, ptr %18, align 8
  %73 = load i64, ptr %14, align 8
  %74 = load ptr, ptr %2, align 4
  %75 = getelementptr inbounds i64, ptr %74, i32 0
  store i64 %73, ptr %75, align 4
  %76 = load i64, ptr %15, align 8
  %77 = load ptr, ptr %2, align 4
  %78 = getelementptr inbounds i64, ptr %77, i32 1
  store i64 %76, ptr %78, align 4
  %79 = load i64, ptr %16, align 8
  %80 = load ptr, ptr %2, align 4
  %81 = getelementptr inbounds i64, ptr %80, i32 2
  store i64 %79, ptr %81, align 4
  %82 = load i64, ptr %17, align 8
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr inbounds i64, ptr %83, i32 3
  store i64 %82, ptr %84, align 4
  %85 = load i64, ptr %18, align 8
  %86 = load ptr, ptr %2, align 4
  %87 = getelementptr inbounds i64, ptr %86, i32 4
  store i64 %85, ptr %87, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Format_fcontract_store(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds i64, ptr %18, i32 0
  %20 = load i64, ptr %19, align 4
  store i64 %20, ptr %5, align 8
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds i64, ptr %21, i32 1
  %23 = load i64, ptr %22, align 4
  store i64 %23, ptr %6, align 8
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds i64, ptr %24, i32 2
  %26 = load i64, ptr %25, align 4
  store i64 %26, ptr %7, align 8
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds i64, ptr %27, i32 3
  %29 = load i64, ptr %28, align 4
  store i64 %29, ptr %8, align 8
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds i64, ptr %30, i32 4
  %32 = load i64, ptr %31, align 4
  store i64 %32, ptr %9, align 8
  %33 = load i64, ptr %6, align 8
  %34 = shl i64 %33, 51
  %35 = load i64, ptr %5, align 8
  %36 = or i64 %34, %35
  store i64 %36, ptr %10, align 8
  %37 = load i64, ptr %7, align 8
  %38 = shl i64 %37, 38
  %39 = load i64, ptr %6, align 8
  %40 = lshr i64 %39, 13
  %41 = or i64 %38, %40
  store i64 %41, ptr %11, align 8
  %42 = load i64, ptr %8, align 8
  %43 = shl i64 %42, 25
  %44 = load i64, ptr %7, align 8
  %45 = lshr i64 %44, 26
  %46 = or i64 %43, %45
  store i64 %46, ptr %12, align 8
  %47 = load i64, ptr %9, align 8
  %48 = shl i64 %47, 12
  %49 = load i64, ptr %8, align 8
  %50 = lshr i64 %49, 39
  %51 = or i64 %48, %50
  store i64 %51, ptr %13, align 8
  %52 = load ptr, ptr %3, align 4
  store ptr %52, ptr %14, align 4
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds i8, ptr %53, i32 8
  store ptr %54, ptr %15, align 4
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds i8, ptr %55, i32 16
  store ptr %56, ptr %16, align 4
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds i8, ptr %57, i32 24
  store ptr %58, ptr %17, align 4
  %59 = load ptr, ptr %14, align 4
  %60 = load i64, ptr %10, align 8
  %61 = call i64 @__uint64_identity(i64 noundef %60)
  call void @store64(ptr noundef %59, i64 noundef %61)
  %62 = load ptr, ptr %15, align 4
  %63 = load i64, ptr %11, align 8
  %64 = call i64 @__uint64_identity(i64 noundef %63)
  call void @store64(ptr noundef %62, i64 noundef %64)
  %65 = load ptr, ptr %16, align 4
  %66 = load i64, ptr %12, align 8
  %67 = call i64 @__uint64_identity(i64 noundef %66)
  call void @store64(ptr noundef %65, i64 noundef %67)
  %68 = load ptr, ptr %17, align 4
  %69 = load i64, ptr %13, align 8
  %70 = call i64 @__uint64_identity(i64 noundef %69)
  call void @store64(ptr noundef %68, i64 noundef %70)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Format_fcontract_first_carry_pass(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 0
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %3, align 8
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds i64, ptr %19, i32 1
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %4, align 8
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds i64, ptr %22, i32 2
  %24 = load i64, ptr %23, align 4
  store i64 %24, ptr %5, align 8
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds i64, ptr %25, i32 3
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %6, align 8
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds i64, ptr %28, i32 4
  %30 = load i64, ptr %29, align 4
  store i64 %30, ptr %7, align 8
  %31 = load i64, ptr %4, align 8
  %32 = load i64, ptr %3, align 8
  %33 = lshr i64 %32, 51
  %34 = add i64 %31, %33
  store i64 %34, ptr %8, align 8
  %35 = load i64, ptr %3, align 8
  %36 = and i64 %35, 2251799813685247
  store i64 %36, ptr %9, align 8
  %37 = load i64, ptr %5, align 8
  %38 = load i64, ptr %8, align 8
  %39 = lshr i64 %38, 51
  %40 = add i64 %37, %39
  store i64 %40, ptr %10, align 8
  %41 = load i64, ptr %8, align 8
  %42 = and i64 %41, 2251799813685247
  store i64 %42, ptr %11, align 8
  %43 = load i64, ptr %6, align 8
  %44 = load i64, ptr %10, align 8
  %45 = lshr i64 %44, 51
  %46 = add i64 %43, %45
  store i64 %46, ptr %12, align 8
  %47 = load i64, ptr %10, align 8
  %48 = and i64 %47, 2251799813685247
  store i64 %48, ptr %13, align 8
  %49 = load i64, ptr %7, align 8
  %50 = load i64, ptr %12, align 8
  %51 = lshr i64 %50, 51
  %52 = add i64 %49, %51
  store i64 %52, ptr %14, align 8
  %53 = load i64, ptr %12, align 8
  %54 = and i64 %53, 2251799813685247
  store i64 %54, ptr %15, align 8
  %55 = load i64, ptr %9, align 8
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds i64, ptr %56, i32 0
  store i64 %55, ptr %57, align 4
  %58 = load i64, ptr %11, align 8
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds i64, ptr %59, i32 1
  store i64 %58, ptr %60, align 4
  %61 = load i64, ptr %13, align 8
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds i64, ptr %62, i32 2
  store i64 %61, ptr %63, align 4
  %64 = load i64, ptr %15, align 8
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds i64, ptr %65, i32 3
  store i64 %64, ptr %66, align 4
  %67 = load i64, ptr %14, align 8
  %68 = load ptr, ptr %2, align 4
  %69 = getelementptr inbounds i64, ptr %68, i32 4
  store i64 %67, ptr %69, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Modulo_carry_top(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds i64, ptr %7, i32 4
  %9 = load i64, ptr %8, align 4
  store i64 %9, ptr %3, align 8
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds i64, ptr %10, i32 0
  %12 = load i64, ptr %11, align 4
  store i64 %12, ptr %4, align 8
  %13 = load i64, ptr %3, align 8
  %14 = and i64 %13, 2251799813685247
  store i64 %14, ptr %5, align 8
  %15 = load i64, ptr %4, align 8
  %16 = load i64, ptr %3, align 8
  %17 = lshr i64 %16, 51
  %18 = mul i64 19, %17
  %19 = add i64 %15, %18
  store i64 %19, ptr %6, align 8
  %20 = load i64, ptr %5, align 8
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds i64, ptr %21, i32 4
  store i64 %20, ptr %22, align 4
  %23 = load i64, ptr %6, align 8
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds i64, ptr %24, i32 0
  store i64 %23, ptr %25, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Format_fcontract_second_carry_pass(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 0
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %3, align 8
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds i64, ptr %19, i32 1
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %4, align 8
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds i64, ptr %22, i32 2
  %24 = load i64, ptr %23, align 4
  store i64 %24, ptr %5, align 8
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds i64, ptr %25, i32 3
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %6, align 8
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds i64, ptr %28, i32 4
  %30 = load i64, ptr %29, align 4
  store i64 %30, ptr %7, align 8
  %31 = load i64, ptr %4, align 8
  %32 = load i64, ptr %3, align 8
  %33 = lshr i64 %32, 51
  %34 = add i64 %31, %33
  store i64 %34, ptr %8, align 8
  %35 = load i64, ptr %3, align 8
  %36 = and i64 %35, 2251799813685247
  store i64 %36, ptr %9, align 8
  %37 = load i64, ptr %5, align 8
  %38 = load i64, ptr %8, align 8
  %39 = lshr i64 %38, 51
  %40 = add i64 %37, %39
  store i64 %40, ptr %10, align 8
  %41 = load i64, ptr %8, align 8
  %42 = and i64 %41, 2251799813685247
  store i64 %42, ptr %11, align 8
  %43 = load i64, ptr %6, align 8
  %44 = load i64, ptr %10, align 8
  %45 = lshr i64 %44, 51
  %46 = add i64 %43, %45
  store i64 %46, ptr %12, align 8
  %47 = load i64, ptr %10, align 8
  %48 = and i64 %47, 2251799813685247
  store i64 %48, ptr %13, align 8
  %49 = load i64, ptr %7, align 8
  %50 = load i64, ptr %12, align 8
  %51 = lshr i64 %50, 51
  %52 = add i64 %49, %51
  store i64 %52, ptr %14, align 8
  %53 = load i64, ptr %12, align 8
  %54 = and i64 %53, 2251799813685247
  store i64 %54, ptr %15, align 8
  %55 = load i64, ptr %9, align 8
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds i64, ptr %56, i32 0
  store i64 %55, ptr %57, align 4
  %58 = load i64, ptr %11, align 8
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds i64, ptr %59, i32 1
  store i64 %58, ptr %60, align 4
  %61 = load i64, ptr %13, align 8
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds i64, ptr %62, i32 2
  store i64 %61, ptr %63, align 4
  %64 = load i64, ptr %15, align 8
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds i64, ptr %65, i32 3
  store i64 %64, ptr %66, align 4
  %67 = load i64, ptr %14, align 8
  %68 = load ptr, ptr %2, align 4
  %69 = getelementptr inbounds i64, ptr %68, i32 4
  store i64 %67, ptr %69, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt64_gte_mask(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %7 = load i64, ptr %3, align 8
  %8 = and i64 %7, 9223372036854775807
  %9 = load i64, ptr %4, align 8
  %10 = and i64 %9, 9223372036854775807
  %11 = sub nsw i64 %8, %10
  %12 = ashr i64 %11, 63
  %13 = xor i64 %12, -1
  store i64 %13, ptr %5, align 8
  %14 = load i64, ptr %3, align 8
  %15 = and i64 %14, -9223372036854775808
  %16 = load i64, ptr %4, align 8
  %17 = and i64 %16, -9223372036854775808
  %18 = sub nsw i64 %15, %17
  %19 = ashr i64 %18, 63
  %20 = xor i64 %19, -1
  store i64 %20, ptr %6, align 8
  %21 = load i64, ptr %5, align 8
  %22 = load i64, ptr %6, align 8
  %23 = and i64 %21, %22
  ret i64 %23
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt64_eq_mask(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = xor i64 %5, %6
  %8 = xor i64 %7, -1
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = shl i64 %9, 32
  %11 = load i64, ptr %3, align 8
  %12 = and i64 %11, %10
  store i64 %12, ptr %3, align 8
  %13 = load i64, ptr %3, align 8
  %14 = shl i64 %13, 16
  %15 = load i64, ptr %3, align 8
  %16 = and i64 %15, %14
  store i64 %16, ptr %3, align 8
  %17 = load i64, ptr %3, align 8
  %18 = shl i64 %17, 8
  %19 = load i64, ptr %3, align 8
  %20 = and i64 %19, %18
  store i64 %20, ptr %3, align 8
  %21 = load i64, ptr %3, align 8
  %22 = shl i64 %21, 4
  %23 = load i64, ptr %3, align 8
  %24 = and i64 %23, %22
  store i64 %24, ptr %3, align 8
  %25 = load i64, ptr %3, align 8
  %26 = shl i64 %25, 2
  %27 = load i64, ptr %3, align 8
  %28 = and i64 %27, %26
  store i64 %28, ptr %3, align 8
  %29 = load i64, ptr %3, align 8
  %30 = shl i64 %29, 1
  %31 = load i64, ptr %3, align 8
  %32 = and i64 %31, %30
  store i64 %32, ptr %3, align 8
  %33 = load i64, ptr %3, align 8
  %34 = ashr i64 %33, 63
  ret i64 %34
}

; Function Attrs: noinline nounwind uwtable
define internal void @store64(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %5, ptr align 8 %4, i32 8, i1 false)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
