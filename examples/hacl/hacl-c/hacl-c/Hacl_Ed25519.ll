; ModuleID = 'hacl-c/hacl-c/Hacl_Ed25519.c'
source_filename = "hacl-c/hacl-c/Hacl_Ed25519.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Ed25519_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = load i32, ptr %8, align 4
  call void @Hacl_Impl_Ed25519_Sign_sign(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Sign_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = load i32, ptr %8, align 4
  call void @Hacl_Impl_Ed25519_Sign_sign_(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Hacl_Ed25519_verify(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = load i32, ptr %7, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = call zeroext i1 @Hacl_Impl_Ed25519_Verify_verify(ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12)
  ret i1 %13
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_Verify_verify(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = load i32, ptr %7, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = call zeroext i1 @Hacl_Impl_Ed25519_Verify_verify_(ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12)
  ret i1 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Ed25519_secret_to_public(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [64 x i8], align 1
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %5, i8 0, i32 64, i1 false)
  %6 = getelementptr inbounds [64 x i8], ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_Ed25519_SecretExpand_secret_expand(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %3, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds [64 x i8], ptr %5, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Sign_sign_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca [352 x i8], align 1
  %10 = alloca [65 x i64], align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca [32 x i8], align 1
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %9, i8 0, i32 352, i1 false)
  call void @llvm.memset.p0.i32(ptr align 8 %10, i8 0, i32 520, i1 false)
  %16 = getelementptr inbounds [352 x i8], ptr %9, i32 0, i32 0
  %17 = getelementptr inbounds i8, ptr %16, i32 160
  store ptr %17, ptr %11, align 4
  %18 = getelementptr inbounds [352 x i8], ptr %9, i32 0, i32 0
  %19 = getelementptr inbounds i8, ptr %18, i32 192
  store ptr %19, ptr %12, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds [352 x i8], ptr %9, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_1(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %7, align 4
  %23 = load i32, ptr %8, align 4
  %24 = getelementptr inbounds [352 x i8], ptr %9, i32 0, i32 0
  %25 = getelementptr inbounds [65 x i64], ptr %10, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_2(ptr noundef %22, i32 noundef %23, ptr noundef %24, ptr noundef %25)
  call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 32, i1 false)
  %26 = getelementptr inbounds [65 x i64], ptr %10, i32 0, i32 0
  %27 = getelementptr inbounds i64, ptr %26, i32 20
  store ptr %27, ptr %14, align 4
  %28 = getelementptr inbounds [352 x i8], ptr %9, i32 0, i32 0
  %29 = getelementptr inbounds i8, ptr %28, i32 160
  store ptr %29, ptr %15, align 4
  %30 = getelementptr inbounds [32 x i8], ptr %13, i32 0, i32 0
  %31 = load ptr, ptr %14, align 4
  call void @Hacl_Impl_Store56_store_56(ptr noundef %30, ptr noundef %31)
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr inbounds [32 x i8], ptr %13, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g_compress(ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %7, align 4
  %35 = load i32, ptr %8, align 4
  %36 = getelementptr inbounds [352 x i8], ptr %9, i32 0, i32 0
  %37 = getelementptr inbounds [65 x i64], ptr %10, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_4(ptr noundef %34, i32 noundef %35, ptr noundef %36, ptr noundef %37)
  %38 = getelementptr inbounds [352 x i8], ptr %9, i32 0, i32 0
  %39 = getelementptr inbounds [65 x i64], ptr %10, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_5(ptr noundef %38, ptr noundef %39)
  %40 = load ptr, ptr %5, align 4
  %41 = load ptr, ptr %11, align 4
  %42 = load ptr, ptr %12, align 4
  call void @Hacl_Impl_Ed25519_Sign_append_to_sig(ptr noundef %40, ptr noundef %41, ptr noundef %42)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds i8, ptr %8, i32 96
  store ptr %9, ptr %5, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 224
  store ptr %11, ptr %6, align 4
  %12 = load ptr, ptr %6, align 4
  store ptr %12, ptr %7, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = load ptr, ptr %3, align 4
  call void @Hacl_Impl_Ed25519_SecretExpand_secret_expand(ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %5, align 4
  %16 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g_compress(ptr noundef %15, ptr noundef %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds i64, ptr %12, i32 20
  store ptr %13, ptr %9, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 224
  store ptr %15, ptr %10, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds i8, ptr %16, i32 32
  store ptr %17, ptr %11, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = load i32, ptr %6, align 4
  call void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Store56_store_56(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 0
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %5, align 8
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds i64, ptr %19, i32 1
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %6, align 8
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds i64, ptr %22, i32 2
  %24 = load i64, ptr %23, align 4
  store i64 %24, ptr %7, align 8
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds i64, ptr %25, i32 3
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %8, align 8
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds i64, ptr %28, i32 4
  %30 = load i64, ptr %29, align 4
  store i64 %30, ptr %9, align 8
  %31 = load i64, ptr %9, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, ptr %10, align 4
  %33 = load ptr, ptr %3, align 4
  store ptr %33, ptr %11, align 4
  %34 = load ptr, ptr %11, align 4
  %35 = load i64, ptr %5, align 8
  %36 = call i64 @__uint64_identity(i64 noundef %35)
  call void @store64(ptr noundef %34, i64 noundef %36)
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds i8, ptr %37, i32 7
  store ptr %38, ptr %12, align 4
  %39 = load ptr, ptr %12, align 4
  %40 = load i64, ptr %6, align 8
  %41 = call i64 @__uint64_identity(i64 noundef %40)
  call void @store64(ptr noundef %39, i64 noundef %41)
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds i8, ptr %42, i32 14
  store ptr %43, ptr %13, align 4
  %44 = load ptr, ptr %13, align 4
  %45 = load i64, ptr %7, align 8
  %46 = call i64 @__uint64_identity(i64 noundef %45)
  call void @store64(ptr noundef %44, i64 noundef %46)
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds i8, ptr %47, i32 21
  store ptr %48, ptr %14, align 4
  %49 = load ptr, ptr %14, align 4
  %50 = load i64, ptr %8, align 8
  %51 = call i64 @__uint64_identity(i64 noundef %50)
  call void @store64(ptr noundef %49, i64 noundef %51)
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr inbounds i8, ptr %52, i32 28
  store ptr %53, ptr %15, align 4
  %54 = load ptr, ptr %15, align 4
  %55 = load i32, ptr %10, align 4
  %56 = call i32 @__uint32_identity(i32 noundef %55)
  call void @store32(ptr noundef %54, i32 noundef %56)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g_compress(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [20 x i64], align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 160, i1 false)
  %6 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_PointCompress_point_compress(ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_4(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds i64, ptr %12, i32 60
  store ptr %13, ptr %9, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 96
  store ptr %15, ptr %10, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds i8, ptr %16, i32 160
  store ptr %17, ptr %11, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = load ptr, ptr %10, align 4
  %21 = load ptr, ptr %5, align 4
  %22 = load i32, ptr %6, align 4
  call void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_5(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds i64, ptr %12, i32 20
  store ptr %13, ptr %5, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds i64, ptr %14, i32 45
  store ptr %15, ptr %6, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 50
  store ptr %17, ptr %7, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds i64, ptr %18, i32 55
  store ptr %19, ptr %8, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds i64, ptr %20, i32 60
  store ptr %21, ptr %9, align 4
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds i8, ptr %22, i32 192
  store ptr %23, ptr %10, align 4
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds i8, ptr %24, i32 224
  store ptr %25, ptr %11, align 4
  %26 = load ptr, ptr %6, align 4
  %27 = load ptr, ptr %11, align 4
  call void @Hacl_Impl_Load56_load_32_bytes(ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %7, align 4
  %29 = load ptr, ptr %9, align 4
  %30 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_BignumQ_Mul_mul_modq(ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %8, align 4
  %32 = load ptr, ptr %5, align 4
  %33 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_BignumQ_Mul_add_modq(ptr noundef %31, ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %10, align 4
  %35 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Store56_store_56(ptr noundef %34, ptr noundef %35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Sign_append_to_sig(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_Ed25519_Sign_Steps_copy_bytes(ptr noundef %7, ptr noundef %8, i32 noundef 32)
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds i8, ptr %9, i32 32
  %11 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_Ed25519_Sign_Steps_copy_bytes(ptr noundef %10, ptr noundef %11, i32 noundef 32)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_SecretExpand_secret_expand(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = load ptr, ptr %4, align 4
  call void @Hacl_SHA2_512_hash(ptr noundef %8, ptr noundef %9, i32 noundef 32)
  %10 = load ptr, ptr %3, align 4
  store ptr %10, ptr %5, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds i8, ptr %11, i32 0
  %13 = load i8, ptr %12, align 1
  store i8 %13, ptr %6, align 1
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 31
  %16 = load i8, ptr %15, align 1
  store i8 %16, ptr %7, align 1
  %17 = load i8, ptr %6, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 248
  %20 = trunc i32 %19 to i8
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds i8, ptr %21, i32 0
  store i8 %20, ptr %22, align 1
  %23 = load i8, ptr %7, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 127
  %26 = or i32 %25, 64
  %27 = trunc i32 %26 to i8
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds i8, ptr %28, i32 31
  store i8 %27, ptr %29, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_SHA2_512_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  call void @Hacl_Impl_SHA2_512_hash(ptr noundef %7, ptr noundef %8, i32 noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca [169 x i64], align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %8, align 4
  br label %13

13:                                               ; preds = %19, %3
  %14 = load i32, ptr %8, align 4
  %15 = icmp ult i32 %14, 169
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, ptr %8, align 4
  %18 = getelementptr inbounds [169 x i64], ptr %7, i32 0, i32 %17
  store i64 0, ptr %18, align 8
  br label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %8, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %8, align 4
  br label %13, !llvm.loop !7

22:                                               ; preds = %13
  %23 = load i32, ptr %6, align 4
  %24 = udiv i32 %23, 128
  store i32 %24, ptr %9, align 4
  %25 = load i32, ptr %6, align 4
  %26 = urem i32 %25, 128
  store i32 %26, ptr %10, align 4
  %27 = load ptr, ptr %5, align 4
  store ptr %27, ptr %11, align 4
  %28 = load ptr, ptr %5, align 4
  %29 = load i32, ptr %9, align 4
  %30 = mul i32 %29, 128
  %31 = getelementptr inbounds i8, ptr %28, i32 %30
  store ptr %31, ptr %12, align 4
  %32 = getelementptr inbounds [169 x i64], ptr %7, i32 0, i32 0
  call void @Hacl_Impl_SHA2_512_init(ptr noundef %32)
  %33 = getelementptr inbounds [169 x i64], ptr %7, i32 0, i32 0
  %34 = load ptr, ptr %11, align 4
  %35 = load i32, ptr %9, align 4
  call void @Hacl_Impl_SHA2_512_update_multi(ptr noundef %33, ptr noundef %34, i32 noundef %35)
  %36 = getelementptr inbounds [169 x i64], ptr %7, i32 0, i32 0
  %37 = load ptr, ptr %12, align 4
  %38 = load i32, ptr %10, align 4
  %39 = zext i32 %38 to i64
  call void @Hacl_Impl_SHA2_512_update_last(ptr noundef %36, ptr noundef %37, i64 noundef %39)
  %40 = getelementptr inbounds [169 x i64], ptr %7, i32 0, i32 0
  %41 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_SHA2_512_finish(ptr noundef %40, ptr noundef %41)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
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
  %20 = alloca ptr, align 4
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
  %34 = alloca ptr, align 4
  %35 = alloca ptr, align 4
  %36 = alloca ptr, align 4
  %37 = alloca ptr, align 4
  %38 = alloca ptr, align 4
  %39 = alloca ptr, align 4
  %40 = alloca ptr, align 4
  %41 = alloca ptr, align 4
  %42 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds i64, ptr %43, i32 168
  store ptr %44, ptr %3, align 4
  %45 = load ptr, ptr %2, align 4
  store ptr %45, ptr %4, align 4
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr inbounds i64, ptr %46, i32 160
  store ptr %47, ptr %5, align 4
  %48 = load ptr, ptr %4, align 4
  store ptr %48, ptr %6, align 4
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr inbounds i64, ptr %49, i32 16
  store ptr %50, ptr %7, align 4
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds i64, ptr %51, i32 32
  store ptr %52, ptr %8, align 4
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr inbounds i64, ptr %53, i32 48
  store ptr %54, ptr %9, align 4
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr inbounds i64, ptr %55, i32 64
  store ptr %56, ptr %10, align 4
  %57 = load ptr, ptr %6, align 4
  store ptr %57, ptr %11, align 4
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds i64, ptr %58, i32 8
  store ptr %59, ptr %12, align 4
  %60 = load ptr, ptr %11, align 4
  store ptr %60, ptr %13, align 4
  %61 = load ptr, ptr %11, align 4
  %62 = getelementptr inbounds i64, ptr %61, i32 4
  store ptr %62, ptr %14, align 4
  %63 = load ptr, ptr %13, align 4
  %64 = getelementptr inbounds i64, ptr %63, i32 0
  store i64 4794697086780616226, ptr %64, align 4
  %65 = load ptr, ptr %13, align 4
  %66 = getelementptr inbounds i64, ptr %65, i32 1
  store i64 8158064640168781261, ptr %66, align 4
  %67 = load ptr, ptr %13, align 4
  %68 = getelementptr inbounds i64, ptr %67, i32 2
  store i64 -5349999486874862801, ptr %68, align 4
  %69 = load ptr, ptr %13, align 4
  %70 = getelementptr inbounds i64, ptr %69, i32 3
  store i64 -1606136188198331460, ptr %70, align 4
  %71 = load ptr, ptr %14, align 4
  %72 = getelementptr inbounds i64, ptr %71, i32 0
  store i64 4131703408338449720, ptr %72, align 4
  %73 = load ptr, ptr %14, align 4
  %74 = getelementptr inbounds i64, ptr %73, i32 1
  store i64 6480981068601479193, ptr %74, align 4
  %75 = load ptr, ptr %14, align 4
  %76 = getelementptr inbounds i64, ptr %75, i32 2
  store i64 -7908458776815382629, ptr %76, align 4
  %77 = load ptr, ptr %14, align 4
  %78 = getelementptr inbounds i64, ptr %77, i32 3
  store i64 -6116909921290321640, ptr %78, align 4
  %79 = load ptr, ptr %12, align 4
  store ptr %79, ptr %15, align 4
  %80 = load ptr, ptr %12, align 4
  %81 = getelementptr inbounds i64, ptr %80, i32 4
  store ptr %81, ptr %16, align 4
  %82 = load ptr, ptr %15, align 4
  %83 = getelementptr inbounds i64, ptr %82, i32 0
  store i64 -2880145864133508542, ptr %83, align 4
  %84 = load ptr, ptr %15, align 4
  %85 = getelementptr inbounds i64, ptr %84, i32 1
  store i64 1334009975649890238, ptr %85, align 4
  %86 = load ptr, ptr %15, align 4
  %87 = getelementptr inbounds i64, ptr %86, i32 2
  store i64 2608012711638119052, ptr %87, align 4
  %88 = load ptr, ptr %15, align 4
  %89 = getelementptr inbounds i64, ptr %88, i32 3
  store i64 6128411473006802146, ptr %89, align 4
  %90 = load ptr, ptr %16, align 4
  %91 = getelementptr inbounds i64, ptr %90, i32 0
  store i64 8268148722764581231, ptr %91, align 4
  %92 = load ptr, ptr %16, align 4
  %93 = getelementptr inbounds i64, ptr %92, i32 1
  store i64 -9160688886553864527, ptr %93, align 4
  %94 = load ptr, ptr %16, align 4
  %95 = getelementptr inbounds i64, ptr %94, i32 2
  store i64 -7215885187991268811, ptr %95, align 4
  %96 = load ptr, ptr %16, align 4
  %97 = getelementptr inbounds i64, ptr %96, i32 3
  store i64 -4495734319001033068, ptr %97, align 4
  %98 = load ptr, ptr %7, align 4
  store ptr %98, ptr %17, align 4
  %99 = load ptr, ptr %7, align 4
  %100 = getelementptr inbounds i64, ptr %99, i32 8
  store ptr %100, ptr %18, align 4
  %101 = load ptr, ptr %17, align 4
  store ptr %101, ptr %19, align 4
  %102 = load ptr, ptr %17, align 4
  %103 = getelementptr inbounds i64, ptr %102, i32 4
  store ptr %103, ptr %20, align 4
  %104 = load ptr, ptr %19, align 4
  %105 = getelementptr inbounds i64, ptr %104, i32 0
  store i64 -1973867731355612462, ptr %105, align 4
  %106 = load ptr, ptr %19, align 4
  %107 = getelementptr inbounds i64, ptr %106, i32 1
  store i64 -1171420211273849373, ptr %107, align 4
  %108 = load ptr, ptr %19, align 4
  %109 = getelementptr inbounds i64, ptr %108, i32 2
  store i64 1135362057144423861, ptr %109, align 4
  %110 = load ptr, ptr %19, align 4
  %111 = getelementptr inbounds i64, ptr %110, i32 3
  store i64 2597628984639134821, ptr %111, align 4
  %112 = load ptr, ptr %20, align 4
  %113 = getelementptr inbounds i64, ptr %112, i32 0
  store i64 3308224258029322869, ptr %113, align 4
  %114 = load ptr, ptr %20, align 4
  %115 = getelementptr inbounds i64, ptr %114, i32 1
  store i64 5365058923640841347, ptr %115, align 4
  %116 = load ptr, ptr %20, align 4
  %117 = getelementptr inbounds i64, ptr %116, i32 2
  store i64 6679025012923562964, ptr %117, align 4
  %118 = load ptr, ptr %20, align 4
  %119 = getelementptr inbounds i64, ptr %118, i32 3
  store i64 8573033837759648693, ptr %119, align 4
  %120 = load ptr, ptr %18, align 4
  store ptr %120, ptr %21, align 4
  %121 = load ptr, ptr %18, align 4
  %122 = getelementptr inbounds i64, ptr %121, i32 4
  store ptr %122, ptr %22, align 4
  %123 = load ptr, ptr %21, align 4
  %124 = getelementptr inbounds i64, ptr %123, i32 0
  store i64 -7476448914759557205, ptr %124, align 4
  %125 = load ptr, ptr %21, align 4
  %126 = getelementptr inbounds i64, ptr %125, i32 1
  store i64 -6327057829258317296, ptr %126, align 4
  %127 = load ptr, ptr %21, align 4
  %128 = getelementptr inbounds i64, ptr %127, i32 2
  store i64 -5763719355590565569, ptr %128, align 4
  %129 = load ptr, ptr %21, align 4
  %130 = getelementptr inbounds i64, ptr %129, i32 3
  store i64 -4658551843659510044, ptr %130, align 4
  %131 = load ptr, ptr %22, align 4
  %132 = getelementptr inbounds i64, ptr %131, i32 0
  store i64 -4116276920077217854, ptr %132, align 4
  %133 = load ptr, ptr %22, align 4
  %134 = getelementptr inbounds i64, ptr %133, i32 1
  store i64 -3051310485924567259, ptr %134, align 4
  %135 = load ptr, ptr %22, align 4
  %136 = getelementptr inbounds i64, ptr %135, i32 2
  store i64 489312712824947311, ptr %136, align 4
  %137 = load ptr, ptr %22, align 4
  %138 = getelementptr inbounds i64, ptr %137, i32 3
  store i64 1452737877330783856, ptr %138, align 4
  %139 = load ptr, ptr %8, align 4
  store ptr %139, ptr %23, align 4
  %140 = load ptr, ptr %8, align 4
  %141 = getelementptr inbounds i64, ptr %140, i32 8
  store ptr %141, ptr %24, align 4
  %142 = load ptr, ptr %23, align 4
  store ptr %142, ptr %25, align 4
  %143 = load ptr, ptr %23, align 4
  %144 = getelementptr inbounds i64, ptr %143, i32 4
  store ptr %144, ptr %26, align 4
  %145 = load ptr, ptr %25, align 4
  %146 = getelementptr inbounds i64, ptr %145, i32 0
  store i64 2861767655752347644, ptr %146, align 4
  %147 = load ptr, ptr %25, align 4
  %148 = getelementptr inbounds i64, ptr %147, i32 1
  store i64 3322285676063803686, ptr %148, align 4
  %149 = load ptr, ptr %25, align 4
  %150 = getelementptr inbounds i64, ptr %149, i32 2
  store i64 5560940570517711597, ptr %150, align 4
  %151 = load ptr, ptr %25, align 4
  %152 = getelementptr inbounds i64, ptr %151, i32 3
  store i64 5996557281743188959, ptr %152, align 4
  %153 = load ptr, ptr %26, align 4
  %154 = getelementptr inbounds i64, ptr %153, i32 0
  store i64 7280758554555802590, ptr %154, align 4
  %155 = load ptr, ptr %26, align 4
  %156 = getelementptr inbounds i64, ptr %155, i32 1
  store i64 8532644243296465576, ptr %156, align 4
  %157 = load ptr, ptr %26, align 4
  %158 = getelementptr inbounds i64, ptr %157, i32 2
  store i64 -9096487096722542874, ptr %158, align 4
  %159 = load ptr, ptr %26, align 4
  %160 = getelementptr inbounds i64, ptr %159, i32 3
  store i64 -7894198246740708037, ptr %160, align 4
  %161 = load ptr, ptr %24, align 4
  store ptr %161, ptr %27, align 4
  %162 = load ptr, ptr %24, align 4
  %163 = getelementptr inbounds i64, ptr %162, i32 4
  store ptr %163, ptr %28, align 4
  %164 = load ptr, ptr %27, align 4
  %165 = getelementptr inbounds i64, ptr %164, i32 0
  store i64 -6719396339535248540, ptr %165, align 4
  %166 = load ptr, ptr %27, align 4
  %167 = getelementptr inbounds i64, ptr %166, i32 1
  store i64 -6333637450476146687, ptr %167, align 4
  %168 = load ptr, ptr %27, align 4
  %169 = getelementptr inbounds i64, ptr %168, i32 2
  store i64 -4446306890439682159, ptr %169, align 4
  %170 = load ptr, ptr %27, align 4
  %171 = getelementptr inbounds i64, ptr %170, i32 3
  store i64 -4076793802049405392, ptr %171, align 4
  %172 = load ptr, ptr %28, align 4
  %173 = getelementptr inbounds i64, ptr %172, i32 0
  store i64 -3345356375505022440, ptr %173, align 4
  %174 = load ptr, ptr %28, align 4
  %175 = getelementptr inbounds i64, ptr %174, i32 1
  store i64 -2983346525034927856, ptr %175, align 4
  %176 = load ptr, ptr %28, align 4
  %177 = getelementptr inbounds i64, ptr %176, i32 2
  store i64 -860691631967231958, ptr %177, align 4
  %178 = load ptr, ptr %28, align 4
  %179 = getelementptr inbounds i64, ptr %178, i32 3
  store i64 1182934255886127544, ptr %179, align 4
  %180 = load ptr, ptr %9, align 4
  store ptr %180, ptr %29, align 4
  %181 = load ptr, ptr %9, align 4
  %182 = getelementptr inbounds i64, ptr %181, i32 8
  store ptr %182, ptr %30, align 4
  %183 = load ptr, ptr %29, align 4
  store ptr %183, ptr %31, align 4
  %184 = load ptr, ptr %29, align 4
  %185 = getelementptr inbounds i64, ptr %184, i32 4
  store ptr %185, ptr %32, align 4
  %186 = load ptr, ptr %31, align 4
  %187 = getelementptr inbounds i64, ptr %186, i32 0
  store i64 1847814050463011016, ptr %187, align 4
  %188 = load ptr, ptr %31, align 4
  %189 = getelementptr inbounds i64, ptr %188, i32 1
  store i64 2177327727835720531, ptr %189, align 4
  %190 = load ptr, ptr %31, align 4
  %191 = getelementptr inbounds i64, ptr %190, i32 2
  store i64 2830643537854262169, ptr %191, align 4
  %192 = load ptr, ptr %31, align 4
  %193 = getelementptr inbounds i64, ptr %192, i32 3
  store i64 3796741975233480872, ptr %193, align 4
  %194 = load ptr, ptr %32, align 4
  %195 = getelementptr inbounds i64, ptr %194, i32 0
  store i64 4115178125766777443, ptr %195, align 4
  %196 = load ptr, ptr %32, align 4
  %197 = getelementptr inbounds i64, ptr %196, i32 1
  store i64 5681478168544905931, ptr %197, align 4
  %198 = load ptr, ptr %32, align 4
  %199 = getelementptr inbounds i64, ptr %198, i32 2
  store i64 6601373596472566643, ptr %199, align 4
  %200 = load ptr, ptr %32, align 4
  %201 = getelementptr inbounds i64, ptr %200, i32 3
  store i64 7507060721942968483, ptr %201, align 4
  %202 = load ptr, ptr %30, align 4
  store ptr %202, ptr %33, align 4
  %203 = load ptr, ptr %30, align 4
  %204 = getelementptr inbounds i64, ptr %203, i32 4
  store ptr %204, ptr %34, align 4
  %205 = load ptr, ptr %33, align 4
  %206 = getelementptr inbounds i64, ptr %205, i32 0
  store i64 8399075790359081724, ptr %206, align 4
  %207 = load ptr, ptr %33, align 4
  %208 = getelementptr inbounds i64, ptr %207, i32 1
  store i64 8693463985226723168, ptr %208, align 4
  %209 = load ptr, ptr %33, align 4
  %210 = getelementptr inbounds i64, ptr %209, i32 2
  store i64 -8878714635349349518, ptr %210, align 4
  %211 = load ptr, ptr %33, align 4
  %212 = getelementptr inbounds i64, ptr %211, i32 3
  store i64 -8302665154208450068, ptr %212, align 4
  %213 = load ptr, ptr %34, align 4
  %214 = getelementptr inbounds i64, ptr %213, i32 0
  store i64 -8016688836872298968, ptr %214, align 4
  %215 = load ptr, ptr %34, align 4
  %216 = getelementptr inbounds i64, ptr %215, i32 1
  store i64 -6606660893046293015, ptr %216, align 4
  %217 = load ptr, ptr %34, align 4
  %218 = getelementptr inbounds i64, ptr %217, i32 2
  store i64 -4685533653050689259, ptr %218, align 4
  %219 = load ptr, ptr %34, align 4
  %220 = getelementptr inbounds i64, ptr %219, i32 3
  store i64 -4147400797238176981, ptr %220, align 4
  %221 = load ptr, ptr %10, align 4
  store ptr %221, ptr %35, align 4
  %222 = load ptr, ptr %10, align 4
  %223 = getelementptr inbounds i64, ptr %222, i32 8
  store ptr %223, ptr %36, align 4
  %224 = load ptr, ptr %35, align 4
  store ptr %224, ptr %37, align 4
  %225 = load ptr, ptr %35, align 4
  %226 = getelementptr inbounds i64, ptr %225, i32 4
  store ptr %226, ptr %38, align 4
  %227 = load ptr, ptr %37, align 4
  %228 = getelementptr inbounds i64, ptr %227, i32 0
  store i64 -3880063495543823972, ptr %228, align 4
  %229 = load ptr, ptr %37, align 4
  %230 = getelementptr inbounds i64, ptr %229, i32 1
  store i64 -3348786107499101689, ptr %230, align 4
  %231 = load ptr, ptr %37, align 4
  %232 = getelementptr inbounds i64, ptr %231, i32 2
  store i64 -1523767162380948706, ptr %232, align 4
  %233 = load ptr, ptr %37, align 4
  %234 = getelementptr inbounds i64, ptr %233, i32 3
  store i64 -757361751448694408, ptr %234, align 4
  %235 = load ptr, ptr %38, align 4
  %236 = getelementptr inbounds i64, ptr %235, i32 0
  store i64 500013540394364858, ptr %236, align 4
  %237 = load ptr, ptr %38, align 4
  %238 = getelementptr inbounds i64, ptr %237, i32 1
  store i64 748580250866718886, ptr %238, align 4
  %239 = load ptr, ptr %38, align 4
  %240 = getelementptr inbounds i64, ptr %239, i32 2
  store i64 1242879168328830382, ptr %240, align 4
  %241 = load ptr, ptr %38, align 4
  %242 = getelementptr inbounds i64, ptr %241, i32 3
  store i64 1977374033974150939, ptr %242, align 4
  %243 = load ptr, ptr %36, align 4
  store ptr %243, ptr %39, align 4
  %244 = load ptr, ptr %36, align 4
  %245 = getelementptr inbounds i64, ptr %244, i32 4
  store ptr %245, ptr %40, align 4
  %246 = load ptr, ptr %39, align 4
  %247 = getelementptr inbounds i64, ptr %246, i32 0
  store i64 2944078676154940804, ptr %247, align 4
  %248 = load ptr, ptr %39, align 4
  %249 = getelementptr inbounds i64, ptr %248, i32 1
  store i64 3659926193048069267, ptr %249, align 4
  %250 = load ptr, ptr %39, align 4
  %251 = getelementptr inbounds i64, ptr %250, i32 2
  store i64 4368137639120453308, ptr %251, align 4
  %252 = load ptr, ptr %39, align 4
  %253 = getelementptr inbounds i64, ptr %252, i32 3
  store i64 4836135668995329356, ptr %253, align 4
  %254 = load ptr, ptr %40, align 4
  %255 = getelementptr inbounds i64, ptr %254, i32 0
  store i64 5532061633213252278, ptr %255, align 4
  %256 = load ptr, ptr %40, align 4
  %257 = getelementptr inbounds i64, ptr %256, i32 1
  store i64 6448918945643986474, ptr %257, align 4
  %258 = load ptr, ptr %40, align 4
  %259 = getelementptr inbounds i64, ptr %258, i32 2
  store i64 6902733635092675308, ptr %259, align 4
  %260 = load ptr, ptr %40, align 4
  %261 = getelementptr inbounds i64, ptr %260, i32 3
  store i64 7801388544844847127, ptr %261, align 4
  %262 = load ptr, ptr %5, align 4
  store ptr %262, ptr %41, align 4
  %263 = load ptr, ptr %5, align 4
  %264 = getelementptr inbounds i64, ptr %263, i32 4
  store ptr %264, ptr %42, align 4
  %265 = load ptr, ptr %41, align 4
  %266 = getelementptr inbounds i64, ptr %265, i32 0
  store i64 7640891576956012808, ptr %266, align 4
  %267 = load ptr, ptr %41, align 4
  %268 = getelementptr inbounds i64, ptr %267, i32 1
  store i64 -4942790177534073029, ptr %268, align 4
  %269 = load ptr, ptr %41, align 4
  %270 = getelementptr inbounds i64, ptr %269, i32 2
  store i64 4354685564936845355, ptr %270, align 4
  %271 = load ptr, ptr %41, align 4
  %272 = getelementptr inbounds i64, ptr %271, i32 3
  store i64 -6534734903238641935, ptr %272, align 4
  %273 = load ptr, ptr %42, align 4
  %274 = getelementptr inbounds i64, ptr %273, i32 0
  store i64 5840696475078001361, ptr %274, align 4
  %275 = load ptr, ptr %42, align 4
  %276 = getelementptr inbounds i64, ptr %275, i32 1
  store i64 -7276294671716946913, ptr %276, align 4
  %277 = load ptr, ptr %42, align 4
  %278 = getelementptr inbounds i64, ptr %277, i32 2
  store i64 2270897969802886507, ptr %278, align 4
  %279 = load ptr, ptr %42, align 4
  %280 = getelementptr inbounds i64, ptr %279, i32 3
  store i64 6620516959819538809, ptr %280, align 4
  %281 = load ptr, ptr %3, align 4
  %282 = getelementptr inbounds i64, ptr %281, i32 0
  store i64 0, ptr %282, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %20, %3
  %10 = load i32, ptr %7, align 4
  %11 = load i32, ptr %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  %15 = load i32, ptr %7, align 4
  %16 = mul i32 %15, 128
  %17 = getelementptr inbounds i8, ptr %14, i32 %16
  store ptr %17, ptr %8, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_SHA2_512_update(ptr noundef %18, ptr noundef %19)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %7, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %7, align 4
  br label %9, !llvm.loop !9

23:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_update_last(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  call void @llvm.memset.p0.i32(ptr align 1 %7, i8 0, i32 256, i1 false)
  %19 = load i64, ptr %6, align 8
  %20 = icmp ult i64 %19, 112
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, ptr %8, align 4
  br label %23

22:                                               ; preds = %3
  store i32 2, ptr %8, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i64, ptr %6, align 8
  %25 = icmp ult i64 %24, 112
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds [256 x i8], ptr %7, i32 0, i32 0
  %28 = getelementptr inbounds i8, ptr %27, i32 128
  store ptr %28, ptr %9, align 4
  br label %31

29:                                               ; preds = %23
  %30 = getelementptr inbounds [256 x i8], ptr %7, i32 0, i32 0
  store ptr %30, ptr %9, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load ptr, ptr %9, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = load i64, ptr %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = mul i32 %35, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %33, i32 %36, i1 false)
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds i64, ptr %37, i32 168
  %39 = load i64, ptr %38, align 4
  store i64 %39, ptr %10, align 8
  %40 = load ptr, ptr %9, align 4
  %41 = load i64, ptr %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds i8, ptr %40, i32 %42
  store ptr %43, ptr %11, align 4
  %44 = load i64, ptr %10, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %44, i64 noundef 128)
  %45 = load i64, ptr %6, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %45)
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 0
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 1
  %53 = load i64, ptr %52, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %47, i64 %49, i64 %51, i64 %53)
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 0
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %55, i64 %57, i32 noundef 3)
  %58 = load i64, ptr %6, align 8
  %59 = trunc i64 %58 to i32
  %60 = add i32 %59, 16
  %61 = add i32 %60, 1
  %62 = sub i32 256, %61
  %63 = urem i32 %62, 128
  store i32 %63, ptr %16, align 4
  %64 = load ptr, ptr %11, align 4
  store ptr %64, ptr %17, align 4
  %65 = load ptr, ptr %11, align 4
  %66 = getelementptr inbounds i8, ptr %65, i32 1
  %67 = load i32, ptr %16, align 4
  %68 = getelementptr inbounds i8, ptr %66, i32 %67
  store ptr %68, ptr %18, align 4
  %69 = load ptr, ptr %17, align 4
  %70 = getelementptr inbounds i8, ptr %69, i32 0
  store i8 -128, ptr %70, align 1
  %71 = load ptr, ptr %18, align 4
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 0
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  call void @store128_be(ptr noundef %71, i64 %73, i64 %75)
  %76 = load ptr, ptr %4, align 4
  %77 = load ptr, ptr %9, align 4
  %78 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA2_512_update_multi(ptr noundef %76, ptr noundef %77, i32 noundef %78)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_finish(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds i64, ptr %6, i32 160
  store ptr %7, ptr %5, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = load ptr, ptr %5, align 4
  call void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(ptr noundef %8, ptr noundef %9, i32 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_512_update(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [16 x i64], align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [8 x i64], align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca ptr, align 4
  %35 = alloca ptr, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  store i32 0, ptr %6, align 4
  br label %41

41:                                               ; preds = %47, %2
  %42 = load i32, ptr %6, align 4
  %43 = icmp ult i32 %42, 16
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, ptr %6, align 4
  %46 = getelementptr inbounds [16 x i64], ptr %5, i32 0, i32 %45
  store i64 0, ptr %46, align 8
  br label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %6, align 4
  br label %41, !llvm.loop !10

50:                                               ; preds = %41
  %51 = getelementptr inbounds [16 x i64], ptr %5, i32 0, i32 0
  %52 = load ptr, ptr %4, align 4
  call void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(ptr noundef %51, ptr noundef %52, i32 noundef 16)
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds i64, ptr %53, i32 160
  store ptr %54, ptr %7, align 4
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds i64, ptr %55, i32 80
  store ptr %56, ptr %8, align 4
  %57 = load ptr, ptr %3, align 4
  store ptr %57, ptr %9, align 4
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds i64, ptr %58, i32 168
  store ptr %59, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %60

60:                                               ; preds = %71, %50
  %61 = load i32, ptr %11, align 4
  %62 = icmp ult i32 %61, 16
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, ptr %11, align 4
  %65 = getelementptr inbounds [16 x i64], ptr %5, i32 0, i32 %64
  %66 = load i64, ptr %65, align 8
  store i64 %66, ptr %12, align 8
  %67 = load i64, ptr %12, align 8
  %68 = load ptr, ptr %8, align 4
  %69 = load i32, ptr %11, align 4
  %70 = getelementptr inbounds i64, ptr %68, i32 %69
  store i64 %67, ptr %70, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, ptr %11, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %11, align 4
  br label %60, !llvm.loop !11

74:                                               ; preds = %60
  store i32 16, ptr %13, align 4
  br label %75

75:                                               ; preds = %135, %74
  %76 = load i32, ptr %13, align 4
  %77 = icmp ult i32 %76, 80
  br i1 %77, label %78, label %138

78:                                               ; preds = %75
  %79 = load ptr, ptr %8, align 4
  %80 = load i32, ptr %13, align 4
  %81 = sub i32 %80, 16
  %82 = getelementptr inbounds i64, ptr %79, i32 %81
  %83 = load i64, ptr %82, align 4
  store i64 %83, ptr %14, align 8
  %84 = load ptr, ptr %8, align 4
  %85 = load i32, ptr %13, align 4
  %86 = sub i32 %85, 15
  %87 = getelementptr inbounds i64, ptr %84, i32 %86
  %88 = load i64, ptr %87, align 4
  store i64 %88, ptr %15, align 8
  %89 = load ptr, ptr %8, align 4
  %90 = load i32, ptr %13, align 4
  %91 = sub i32 %90, 7
  %92 = getelementptr inbounds i64, ptr %89, i32 %91
  %93 = load i64, ptr %92, align 4
  store i64 %93, ptr %16, align 8
  %94 = load ptr, ptr %8, align 4
  %95 = load i32, ptr %13, align 4
  %96 = sub i32 %95, 2
  %97 = getelementptr inbounds i64, ptr %94, i32 %96
  %98 = load i64, ptr %97, align 4
  store i64 %98, ptr %17, align 8
  %99 = load i64, ptr %17, align 8
  %100 = lshr i64 %99, 19
  %101 = load i64, ptr %17, align 8
  %102 = shl i64 %101, 45
  %103 = or i64 %100, %102
  %104 = load i64, ptr %17, align 8
  %105 = lshr i64 %104, 61
  %106 = load i64, ptr %17, align 8
  %107 = shl i64 %106, 3
  %108 = or i64 %105, %107
  %109 = load i64, ptr %17, align 8
  %110 = lshr i64 %109, 6
  %111 = xor i64 %108, %110
  %112 = xor i64 %103, %111
  %113 = load i64, ptr %16, align 8
  %114 = add i64 %112, %113
  %115 = load i64, ptr %15, align 8
  %116 = lshr i64 %115, 1
  %117 = load i64, ptr %15, align 8
  %118 = shl i64 %117, 63
  %119 = or i64 %116, %118
  %120 = load i64, ptr %15, align 8
  %121 = lshr i64 %120, 8
  %122 = load i64, ptr %15, align 8
  %123 = shl i64 %122, 56
  %124 = or i64 %121, %123
  %125 = load i64, ptr %15, align 8
  %126 = lshr i64 %125, 7
  %127 = xor i64 %124, %126
  %128 = xor i64 %119, %127
  %129 = add i64 %114, %128
  %130 = load i64, ptr %14, align 8
  %131 = add i64 %129, %130
  %132 = load ptr, ptr %8, align 4
  %133 = load i32, ptr %13, align 4
  %134 = getelementptr inbounds i64, ptr %132, i32 %133
  store i64 %131, ptr %134, align 4
  br label %135

135:                                              ; preds = %78
  %136 = load i32, ptr %13, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %13, align 4
  br label %75, !llvm.loop !12

138:                                              ; preds = %75
  call void @llvm.memset.p0.i32(ptr align 8 %18, i8 0, i32 64, i1 false)
  %139 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 0
  %140 = load ptr, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %139, ptr align 4 %140, i32 64, i1 false)
  store i32 0, ptr %19, align 4
  br label %141

141:                                              ; preds = %263, %138
  %142 = load i32, ptr %19, align 4
  %143 = icmp ult i32 %142, 80
  br i1 %143, label %144, label %266

144:                                              ; preds = %141
  %145 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 0
  %146 = load i64, ptr %145, align 8
  store i64 %146, ptr %20, align 8
  %147 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 1
  %148 = load i64, ptr %147, align 8
  store i64 %148, ptr %21, align 8
  %149 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 2
  %150 = load i64, ptr %149, align 8
  store i64 %150, ptr %22, align 8
  %151 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 3
  %152 = load i64, ptr %151, align 8
  store i64 %152, ptr %23, align 8
  %153 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 4
  %154 = load i64, ptr %153, align 8
  store i64 %154, ptr %24, align 8
  %155 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 5
  %156 = load i64, ptr %155, align 8
  store i64 %156, ptr %25, align 8
  %157 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 6
  %158 = load i64, ptr %157, align 8
  store i64 %158, ptr %26, align 8
  %159 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 7
  %160 = load i64, ptr %159, align 8
  store i64 %160, ptr %27, align 8
  %161 = load ptr, ptr %9, align 4
  %162 = load i32, ptr %19, align 4
  %163 = getelementptr inbounds i64, ptr %161, i32 %162
  %164 = load i64, ptr %163, align 4
  store i64 %164, ptr %28, align 8
  %165 = load ptr, ptr %8, align 4
  %166 = load i32, ptr %19, align 4
  %167 = getelementptr inbounds i64, ptr %165, i32 %166
  %168 = load i64, ptr %167, align 4
  store i64 %168, ptr %29, align 8
  %169 = load i64, ptr %27, align 8
  %170 = load i64, ptr %24, align 8
  %171 = lshr i64 %170, 14
  %172 = load i64, ptr %24, align 8
  %173 = shl i64 %172, 50
  %174 = or i64 %171, %173
  %175 = load i64, ptr %24, align 8
  %176 = lshr i64 %175, 18
  %177 = load i64, ptr %24, align 8
  %178 = shl i64 %177, 46
  %179 = or i64 %176, %178
  %180 = load i64, ptr %24, align 8
  %181 = lshr i64 %180, 41
  %182 = load i64, ptr %24, align 8
  %183 = shl i64 %182, 23
  %184 = or i64 %181, %183
  %185 = xor i64 %179, %184
  %186 = xor i64 %174, %185
  %187 = add i64 %169, %186
  %188 = load i64, ptr %24, align 8
  %189 = load i64, ptr %25, align 8
  %190 = and i64 %188, %189
  %191 = load i64, ptr %24, align 8
  %192 = xor i64 %191, -1
  %193 = load i64, ptr %26, align 8
  %194 = and i64 %192, %193
  %195 = xor i64 %190, %194
  %196 = add i64 %187, %195
  %197 = load i64, ptr %28, align 8
  %198 = add i64 %196, %197
  %199 = load i64, ptr %29, align 8
  %200 = add i64 %198, %199
  store i64 %200, ptr %30, align 8
  %201 = load i64, ptr %20, align 8
  %202 = lshr i64 %201, 28
  %203 = load i64, ptr %20, align 8
  %204 = shl i64 %203, 36
  %205 = or i64 %202, %204
  %206 = load i64, ptr %20, align 8
  %207 = lshr i64 %206, 34
  %208 = load i64, ptr %20, align 8
  %209 = shl i64 %208, 30
  %210 = or i64 %207, %209
  %211 = load i64, ptr %20, align 8
  %212 = lshr i64 %211, 39
  %213 = load i64, ptr %20, align 8
  %214 = shl i64 %213, 25
  %215 = or i64 %212, %214
  %216 = xor i64 %210, %215
  %217 = xor i64 %205, %216
  %218 = load i64, ptr %20, align 8
  %219 = load i64, ptr %21, align 8
  %220 = and i64 %218, %219
  %221 = load i64, ptr %20, align 8
  %222 = load i64, ptr %22, align 8
  %223 = and i64 %221, %222
  %224 = load i64, ptr %21, align 8
  %225 = load i64, ptr %22, align 8
  %226 = and i64 %224, %225
  %227 = xor i64 %223, %226
  %228 = xor i64 %220, %227
  %229 = add i64 %217, %228
  store i64 %229, ptr %31, align 8
  %230 = load i64, ptr %30, align 8
  %231 = load i64, ptr %31, align 8
  %232 = add i64 %230, %231
  store i64 %232, ptr %32, align 8
  %233 = load i64, ptr %23, align 8
  %234 = load i64, ptr %30, align 8
  %235 = add i64 %233, %234
  store i64 %235, ptr %33, align 8
  %236 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 0
  store ptr %236, ptr %34, align 4
  %237 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 0
  %238 = getelementptr inbounds i64, ptr %237, i32 4
  store ptr %238, ptr %35, align 4
  %239 = load i64, ptr %32, align 8
  %240 = load ptr, ptr %34, align 4
  %241 = getelementptr inbounds i64, ptr %240, i32 0
  store i64 %239, ptr %241, align 4
  %242 = load i64, ptr %20, align 8
  %243 = load ptr, ptr %34, align 4
  %244 = getelementptr inbounds i64, ptr %243, i32 1
  store i64 %242, ptr %244, align 4
  %245 = load i64, ptr %21, align 8
  %246 = load ptr, ptr %34, align 4
  %247 = getelementptr inbounds i64, ptr %246, i32 2
  store i64 %245, ptr %247, align 4
  %248 = load i64, ptr %22, align 8
  %249 = load ptr, ptr %34, align 4
  %250 = getelementptr inbounds i64, ptr %249, i32 3
  store i64 %248, ptr %250, align 4
  %251 = load i64, ptr %33, align 8
  %252 = load ptr, ptr %35, align 4
  %253 = getelementptr inbounds i64, ptr %252, i32 0
  store i64 %251, ptr %253, align 4
  %254 = load i64, ptr %24, align 8
  %255 = load ptr, ptr %35, align 4
  %256 = getelementptr inbounds i64, ptr %255, i32 1
  store i64 %254, ptr %256, align 4
  %257 = load i64, ptr %25, align 8
  %258 = load ptr, ptr %35, align 4
  %259 = getelementptr inbounds i64, ptr %258, i32 2
  store i64 %257, ptr %259, align 4
  %260 = load i64, ptr %26, align 8
  %261 = load ptr, ptr %35, align 4
  %262 = getelementptr inbounds i64, ptr %261, i32 3
  store i64 %260, ptr %262, align 4
  br label %263

263:                                              ; preds = %144
  %264 = load i32, ptr %19, align 4
  %265 = add i32 %264, 1
  store i32 %265, ptr %19, align 4
  br label %141, !llvm.loop !13

266:                                              ; preds = %141
  store i32 0, ptr %36, align 4
  br label %267

267:                                              ; preds = %284, %266
  %268 = load i32, ptr %36, align 4
  %269 = icmp ult i32 %268, 8
  br i1 %269, label %270, label %287

270:                                              ; preds = %267
  %271 = load ptr, ptr %7, align 4
  %272 = load i32, ptr %36, align 4
  %273 = getelementptr inbounds i64, ptr %271, i32 %272
  %274 = load i64, ptr %273, align 4
  store i64 %274, ptr %37, align 8
  %275 = load i32, ptr %36, align 4
  %276 = getelementptr inbounds [8 x i64], ptr %18, i32 0, i32 %275
  %277 = load i64, ptr %276, align 8
  store i64 %277, ptr %38, align 8
  %278 = load i64, ptr %37, align 8
  %279 = load i64, ptr %38, align 8
  %280 = add i64 %278, %279
  %281 = load ptr, ptr %7, align 4
  %282 = load i32, ptr %36, align 4
  %283 = getelementptr inbounds i64, ptr %281, i32 %282
  store i64 %280, ptr %283, align 4
  br label %284

284:                                              ; preds = %270
  %285 = load i32, ptr %36, align 4
  %286 = add i32 %285, 1
  store i32 %286, ptr %36, align 4
  br label %267, !llvm.loop !14

287:                                              ; preds = %267
  %288 = load ptr, ptr %10, align 4
  %289 = getelementptr inbounds i64, ptr %288, i32 0
  %290 = load i64, ptr %289, align 4
  store i64 %290, ptr %39, align 8
  store i64 1, ptr %40, align 8
  %291 = load i64, ptr %39, align 8
  %292 = load i64, ptr %40, align 8
  %293 = add i64 %291, %292
  %294 = load ptr, ptr %10, align 4
  %295 = getelementptr inbounds i64, ptr %294, i32 0
  store i64 %293, ptr %295, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %10

10:                                               ; preds = %26, %3
  %11 = load i32, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = load i32, ptr %7, align 4
  %17 = mul i32 8, %16
  %18 = getelementptr inbounds i8, ptr %15, i32 %17
  store ptr %18, ptr %8, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = call i64 @load64(ptr noundef %19)
  %21 = call i64 @__bswap_64(i64 noundef %20)
  store i64 %21, ptr %9, align 8
  %22 = load i64, ptr %9, align 8
  %23 = load ptr, ptr %4, align 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds i64, ptr %23, i32 %24
  store i64 %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %14
  %27 = load i32, ptr %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %7, align 4
  br label %10, !llvm.loop !15

29:                                               ; preds = %10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @__bswap_64(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, -72057594037927936
  %5 = lshr i64 %4, 56
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 71776119061217280
  %8 = lshr i64 %7, 40
  %9 = or i64 %5, %8
  %10 = load i64, ptr %2, align 8
  %11 = and i64 %10, 280375465082880
  %12 = lshr i64 %11, 24
  %13 = or i64 %9, %12
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 1095216660480
  %16 = lshr i64 %15, 8
  %17 = or i64 %13, %16
  %18 = load i64, ptr %2, align 8
  %19 = and i64 %18, 4278190080
  %20 = shl i64 %19, 8
  %21 = or i64 %17, %20
  %22 = load i64, ptr %2, align 8
  %23 = and i64 %22, 16711680
  %24 = shl i64 %23, 24
  %25 = or i64 %21, %24
  %26 = load i64, ptr %2, align 8
  %27 = and i64 %26, 65280
  %28 = shl i64 %27, 40
  %29 = or i64 %25, %28
  %30 = load i64, ptr %2, align 8
  %31 = and i64 %30, 255
  %32 = shl i64 %31, 56
  %33 = or i64 %29, %32
  ret i64 %33
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

declare void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) #3

declare void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) #3

declare void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) #3

declare void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @store128_be(ptr noundef %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 0
  store i64 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 1
  store i64 %2, ptr %7, align 4
  store ptr %0, ptr %5, align 4
  %8 = load ptr, ptr %5, align 4
  call void @store128_be_(ptr noundef %8, ptr noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @store128_be_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = call i64 @__bswap_64(i64 noundef %8)
  call void @store64(ptr noundef %5, i64 noundef %9)
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 8
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 0
  %14 = load i64, ptr %13, align 4
  %15 = call i64 @__bswap_64(i64 noundef %14)
  call void @store64(ptr noundef %11, i64 noundef %15)
  ret void
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

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %10

10:                                               ; preds = %26, %3
  %11 = load i32, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = load i32, ptr %7, align 4
  %17 = getelementptr inbounds i64, ptr %15, i32 %16
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %8, align 8
  %19 = load ptr, ptr %4, align 4
  %20 = load i32, ptr %7, align 4
  %21 = mul i32 8, %20
  %22 = getelementptr inbounds i8, ptr %19, i32 %21
  store ptr %22, ptr %9, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = load i64, ptr %8, align 8
  %25 = call i64 @__bswap_64(i64 noundef %24)
  call void @store64(ptr noundef %23, i64 noundef %25)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, ptr %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %7, align 4
  br label %10, !llvm.loop !16

29:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i64], align 8
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %9, i8 0, i32 80, i1 false)
  %10 = load ptr, ptr %5, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load i32, ptr %8, align 4
  %14 = getelementptr inbounds [10 x i64], ptr %9, i32 0, i32 0
  call void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca [64 x i8], align 1
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 64, i1 false)
  %12 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load i32, ptr %9, align 4
  call void @Hacl_Impl_Sha512_sha512_pre_msg(ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15)
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 0
  call void @Hacl_Impl_Load56_load_64_bytes(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %6, align 4
  %19 = load ptr, ptr %10, align 4
  call void @Hacl_Impl_BignumQ_Mul_barrett_reduction(ptr noundef %18, ptr noundef %19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Sha512_sha512_pre_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA512_Ed25519_sha512_pre_msg(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Load56_load_64_bytes(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca ptr, align 4
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i8, align 1
  %42 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %43 = load ptr, ptr %4, align 4
  store ptr %43, ptr %5, align 4
  %44 = load ptr, ptr %5, align 4
  %45 = call i64 @load64(ptr noundef %44)
  %46 = call i64 @__uint64_identity(i64 noundef %45)
  store i64 %46, ptr %6, align 8
  %47 = load i64, ptr %6, align 8
  %48 = and i64 %47, 72057594037927935
  store i64 %48, ptr %7, align 8
  %49 = load i64, ptr %7, align 8
  store i64 %49, ptr %8, align 8
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds i8, ptr %50, i32 7
  store ptr %51, ptr %9, align 4
  %52 = load ptr, ptr %9, align 4
  %53 = call i64 @load64(ptr noundef %52)
  %54 = call i64 @__uint64_identity(i64 noundef %53)
  store i64 %54, ptr %10, align 8
  %55 = load i64, ptr %10, align 8
  %56 = and i64 %55, 72057594037927935
  store i64 %56, ptr %11, align 8
  %57 = load i64, ptr %11, align 8
  store i64 %57, ptr %12, align 8
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr inbounds i8, ptr %58, i32 14
  store ptr %59, ptr %13, align 4
  %60 = load ptr, ptr %13, align 4
  %61 = call i64 @load64(ptr noundef %60)
  %62 = call i64 @__uint64_identity(i64 noundef %61)
  store i64 %62, ptr %14, align 8
  %63 = load i64, ptr %14, align 8
  %64 = and i64 %63, 72057594037927935
  store i64 %64, ptr %15, align 8
  %65 = load i64, ptr %15, align 8
  store i64 %65, ptr %16, align 8
  %66 = load ptr, ptr %4, align 4
  %67 = getelementptr inbounds i8, ptr %66, i32 21
  store ptr %67, ptr %17, align 4
  %68 = load ptr, ptr %17, align 4
  %69 = call i64 @load64(ptr noundef %68)
  %70 = call i64 @__uint64_identity(i64 noundef %69)
  store i64 %70, ptr %18, align 8
  %71 = load i64, ptr %18, align 8
  %72 = and i64 %71, 72057594037927935
  store i64 %72, ptr %19, align 8
  %73 = load i64, ptr %19, align 8
  store i64 %73, ptr %20, align 8
  %74 = load ptr, ptr %4, align 4
  %75 = getelementptr inbounds i8, ptr %74, i32 28
  store ptr %75, ptr %21, align 4
  %76 = load ptr, ptr %21, align 4
  %77 = call i64 @load64(ptr noundef %76)
  %78 = call i64 @__uint64_identity(i64 noundef %77)
  store i64 %78, ptr %22, align 8
  %79 = load i64, ptr %22, align 8
  %80 = and i64 %79, 72057594037927935
  store i64 %80, ptr %23, align 8
  %81 = load i64, ptr %23, align 8
  store i64 %81, ptr %24, align 8
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr inbounds i8, ptr %82, i32 35
  store ptr %83, ptr %25, align 4
  %84 = load ptr, ptr %25, align 4
  %85 = call i64 @load64(ptr noundef %84)
  %86 = call i64 @__uint64_identity(i64 noundef %85)
  store i64 %86, ptr %26, align 8
  %87 = load i64, ptr %26, align 8
  %88 = and i64 %87, 72057594037927935
  store i64 %88, ptr %27, align 8
  %89 = load i64, ptr %27, align 8
  store i64 %89, ptr %28, align 8
  %90 = load ptr, ptr %4, align 4
  %91 = getelementptr inbounds i8, ptr %90, i32 42
  store ptr %91, ptr %29, align 4
  %92 = load ptr, ptr %29, align 4
  %93 = call i64 @load64(ptr noundef %92)
  %94 = call i64 @__uint64_identity(i64 noundef %93)
  store i64 %94, ptr %30, align 8
  %95 = load i64, ptr %30, align 8
  %96 = and i64 %95, 72057594037927935
  store i64 %96, ptr %31, align 8
  %97 = load i64, ptr %31, align 8
  store i64 %97, ptr %32, align 8
  %98 = load ptr, ptr %4, align 4
  %99 = getelementptr inbounds i8, ptr %98, i32 49
  store ptr %99, ptr %33, align 4
  %100 = load ptr, ptr %33, align 4
  %101 = call i64 @load64(ptr noundef %100)
  %102 = call i64 @__uint64_identity(i64 noundef %101)
  store i64 %102, ptr %34, align 8
  %103 = load i64, ptr %34, align 8
  %104 = and i64 %103, 72057594037927935
  store i64 %104, ptr %35, align 8
  %105 = load i64, ptr %35, align 8
  store i64 %105, ptr %36, align 8
  %106 = load ptr, ptr %4, align 4
  %107 = getelementptr inbounds i8, ptr %106, i32 56
  store ptr %107, ptr %37, align 4
  %108 = load ptr, ptr %37, align 4
  %109 = call i64 @load64(ptr noundef %108)
  %110 = call i64 @__uint64_identity(i64 noundef %109)
  store i64 %110, ptr %38, align 8
  %111 = load i64, ptr %38, align 8
  %112 = and i64 %111, 72057594037927935
  store i64 %112, ptr %39, align 8
  %113 = load i64, ptr %39, align 8
  store i64 %113, ptr %40, align 8
  %114 = load ptr, ptr %4, align 4
  %115 = getelementptr inbounds i8, ptr %114, i32 63
  %116 = load i8, ptr %115, align 1
  store i8 %116, ptr %41, align 1
  %117 = load i8, ptr %41, align 1
  %118 = zext i8 %117 to i64
  store i64 %118, ptr %42, align 8
  %119 = load ptr, ptr %3, align 4
  %120 = load i64, ptr %8, align 8
  %121 = load i64, ptr %12, align 8
  %122 = load i64, ptr %16, align 8
  %123 = load i64, ptr %20, align 8
  %124 = load i64, ptr %24, align 8
  %125 = load i64, ptr %28, align 8
  %126 = load i64, ptr %32, align 8
  %127 = load i64, ptr %36, align 8
  %128 = load i64, ptr %40, align 8
  %129 = load i64, ptr %42, align 8
  call void @Hacl_Lib_Create64_make_h64_10(ptr noundef %119, i64 noundef %120, i64 noundef %121, i64 noundef %122, i64 noundef %123, i64 noundef %124, i64 noundef %125, i64 noundef %126, i64 noundef %127, i64 noundef %128, i64 noundef %129)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_barrett_reduction(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_BignumQ_Mul_barrett_reduction_(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_sha512_pre_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ule i32 %9, 96
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_msg_1(ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15)
  br label %21

16:                                               ; preds = %4
  %17 = load ptr, ptr %5, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = load ptr, ptr %7, align 4
  %20 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg_2(ptr noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef %20)
  br label %21

21:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_msg_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 1
  %10 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %9, i8 0, i32 128, i1 false)
  %11 = getelementptr inbounds [128 x i8], ptr %9, i32 0, i32 0
  store ptr %11, ptr %10, align 4
  %12 = load ptr, ptr %10, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_concat_2(ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15)
  %16 = load ptr, ptr %5, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = load i32, ptr %8, align 4
  %19 = add i32 %18, 32
  call void @Hacl_Impl_SHA2_512_hash(ptr noundef %16, ptr noundef %17, i32 noundef %19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca [128 x i8], align 1
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %12 = load ptr, ptr %7, align 4
  store ptr %12, ptr %9, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds i8, ptr %13, i32 96
  store ptr %14, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 128, i1 false)
  %15 = getelementptr inbounds [128 x i8], ptr %11, i32 0, i32 0
  %16 = load ptr, ptr %6, align 4
  %17 = load ptr, ptr %9, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_concat_2(ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef 96)
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds [128 x i8], ptr %11, i32 0, i32 0
  %20 = load ptr, ptr %10, align 4
  %21 = load i32, ptr %8, align 4
  %22 = sub i32 %21, 96
  call void @Hacl_Impl_SHA512_Ed25519_2_hash_block_and_rest(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_1_concat_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef %9, ptr noundef %10, i32 noundef 32)
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds i8, ptr %11, i32 32
  %13 = load ptr, ptr %7, align 4
  %14 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef %12, ptr noundef %13, i32 noundef %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  %10 = mul i32 %9, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %8, i32 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_2_hash_block_and_rest(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [169 x i64], align 8
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %12 = load i32, ptr %8, align 4
  %13 = lshr i32 %12, 7
  store i32 %13, ptr %9, align 4
  %14 = load i32, ptr %8, align 4
  %15 = and i32 %14, 127
  %16 = zext i32 %15 to i64
  store i64 %16, ptr %10, align 8
  call void @llvm.memset.p0.i32(ptr align 8 %11, i8 0, i32 1352, i1 false)
  %17 = getelementptr inbounds [169 x i64], ptr %11, i32 0, i32 0
  call void @Hacl_Impl_SHA2_512_init(ptr noundef %17)
  %18 = getelementptr inbounds [169 x i64], ptr %11, i32 0, i32 0
  %19 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_SHA2_512_update(ptr noundef %18, ptr noundef %19)
  %20 = getelementptr inbounds [169 x i64], ptr %11, i32 0, i32 0
  %21 = load ptr, ptr %7, align 4
  %22 = load i32, ptr %9, align 4
  call void @Hacl_Impl_SHA2_512_update_multi(ptr noundef %20, ptr noundef %21, i32 noundef %22)
  %23 = getelementptr inbounds [169 x i64], ptr %11, i32 0, i32 0
  %24 = load ptr, ptr %7, align 4
  %25 = load i32, ptr %9, align 4
  %26 = mul i32 128, %25
  %27 = getelementptr inbounds i8, ptr %24, i32 %26
  %28 = load i64, ptr %10, align 8
  call void @Hacl_Impl_SHA2_512_update_last(ptr noundef %23, ptr noundef %27, i64 noundef %28)
  %29 = getelementptr inbounds [169 x i64], ptr %11, i32 0, i32 0
  %30 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_SHA2_512_finish(ptr noundef %29, ptr noundef %30)
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
define internal void @Hacl_Lib_Create64_make_h64_10(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10) #0 {
  %12 = alloca ptr, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store ptr %0, ptr %12, align 4
  store i64 %1, ptr %13, align 8
  store i64 %2, ptr %14, align 8
  store i64 %3, ptr %15, align 8
  store i64 %4, ptr %16, align 8
  store i64 %5, ptr %17, align 8
  store i64 %6, ptr %18, align 8
  store i64 %7, ptr %19, align 8
  store i64 %8, ptr %20, align 8
  store i64 %9, ptr %21, align 8
  store i64 %10, ptr %22, align 8
  %23 = load i64, ptr %13, align 8
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds i64, ptr %24, i32 0
  store i64 %23, ptr %25, align 4
  %26 = load i64, ptr %14, align 8
  %27 = load ptr, ptr %12, align 4
  %28 = getelementptr inbounds i64, ptr %27, i32 1
  store i64 %26, ptr %28, align 4
  %29 = load i64, ptr %15, align 8
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr inbounds i64, ptr %30, i32 2
  store i64 %29, ptr %31, align 4
  %32 = load i64, ptr %16, align 8
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr inbounds i64, ptr %33, i32 3
  store i64 %32, ptr %34, align 4
  %35 = load i64, ptr %17, align 8
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds i64, ptr %36, i32 4
  store i64 %35, ptr %37, align 4
  %38 = load i64, ptr %18, align 8
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr inbounds i64, ptr %39, i32 5
  store i64 %38, ptr %40, align 4
  %41 = load i64, ptr %19, align 8
  %42 = load ptr, ptr %12, align 4
  %43 = getelementptr inbounds i64, ptr %42, i32 6
  store i64 %41, ptr %43, align 4
  %44 = load i64, ptr %20, align 8
  %45 = load ptr, ptr %12, align 4
  %46 = getelementptr inbounds i64, ptr %45, i32 7
  store i64 %44, ptr %46, align 4
  %47 = load i64, ptr %21, align 8
  %48 = load ptr, ptr %12, align 4
  %49 = getelementptr inbounds i64, ptr %48, i32 8
  store i64 %47, ptr %49, align 4
  %50 = load i64, ptr %22, align 8
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr inbounds i64, ptr %51, i32 9
  store i64 %50, ptr %52, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_barrett_reduction_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [40 x i64], align 8
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 320, i1 false)
  %9 = getelementptr inbounds [40 x i64], ptr %5, i32 0, i32 0
  store ptr %9, ptr %6, align 4
  %10 = getelementptr inbounds [40 x i64], ptr %5, i32 0, i32 0
  %11 = getelementptr inbounds i64, ptr %10, i32 5
  store ptr %11, ptr %7, align 4
  %12 = getelementptr inbounds [40 x i64], ptr %5, i32 0, i32 0
  %13 = getelementptr inbounds i64, ptr %12, i32 10
  store ptr %13, ptr %8, align 4
  %14 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_BignumQ_Mul_make_m(ptr noundef %14)
  %15 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_BignumQ_Mul_make_mu(ptr noundef %15)
  %16 = load ptr, ptr %3, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = load ptr, ptr %7, align 4
  %20 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_BignumQ_Mul_barrett_reduction__(ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_make_m(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %3, i64 noundef 5175514460705773, i64 noundef 70332060721272408, i64 noundef 5342, i64 noundef 0, i64 noundef 268435456)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_make_mu(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %3, i64 noundef 44162584779952923, i64 noundef 9390964836247533, i64 noundef 72057594036560134, i64 noundef 72057594037927935, i64 noundef 68719476735)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_barrett_reduction__(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca [9 x %struct.FStar_UInt128_uint128], align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds i64, ptr %15, i32 25
  store ptr %16, ptr %11, align 4
  store i32 0, ptr %13, align 4
  br label %17

17:                                               ; preds = %23, %5
  %18 = load i32, ptr %13, align 4
  %19 = icmp ult i32 %18, 9
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, ptr %13, align 4
  %22 = getelementptr inbounds [9 x %struct.FStar_UInt128_uint128], ptr %12, i32 0, i32 %21
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %22, ptr align 4 %14, i32 16, i1 false)
  br label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %13, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %13, align 4
  br label %17, !llvm.loop !17

26:                                               ; preds = %17
  %27 = getelementptr inbounds [9 x %struct.FStar_UInt128_uint128], ptr %12, i32 0, i32 0
  %28 = load ptr, ptr %7, align 4
  %29 = load ptr, ptr %9, align 4
  %30 = load ptr, ptr %10, align 4
  call void @Hacl_Impl_BignumQ_Mul_barrett_reduction__1(ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %7, align 4
  %32 = load ptr, ptr %8, align 4
  %33 = load ptr, ptr %10, align 4
  call void @Hacl_Impl_BignumQ_Mul_barrett_reduction__2(ptr noundef %31, ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %6, align 4
  %35 = load ptr, ptr %11, align 4
  call void @Hacl_Impl_BignumQ_Mul_subm_conditional(ptr noundef %34, ptr noundef %35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %7, align 4
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  store i64 %5, ptr %12, align 8
  %13 = load i64, ptr %8, align 8
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds i64, ptr %14, i32 0
  store i64 %13, ptr %15, align 4
  %16 = load i64, ptr %9, align 8
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds i64, ptr %17, i32 1
  store i64 %16, ptr %18, align 4
  %19 = load i64, ptr %10, align 8
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds i64, ptr %20, i32 2
  store i64 %19, ptr %21, align 4
  %22 = load i64, ptr %11, align 8
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds i64, ptr %23, i32 3
  store i64 %22, ptr %24, align 4
  %25 = load i64, ptr %12, align 8
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds i64, ptr %26, i32 4
  store i64 %25, ptr %27, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_barrett_reduction__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %12 = load ptr, ptr %8, align 4
  store ptr %12, ptr %9, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds i64, ptr %13, i32 10
  store ptr %14, ptr %10, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds i64, ptr %15, i32 20
  store ptr %16, ptr %11, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_BignumQ_Mul_div_248(ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %9, align 4
  %21 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_BignumQ_Mul_mul_5(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %10, align 4
  %23 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_BignumQ_Mul_carry(ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %11, align 4
  %25 = load ptr, ptr %10, align 4
  call void @Hacl_Impl_BignumQ_Mul_div_264(ptr noundef %24, ptr noundef %25)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_barrett_reduction__2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %11 = load ptr, ptr %6, align 4
  store ptr %11, ptr %7, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds i64, ptr %12, i32 5
  store ptr %13, ptr %8, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds i64, ptr %14, i32 20
  store ptr %15, ptr %9, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 25
  store ptr %17, ptr %10, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_BignumQ_Mul_mod_264(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %7, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_BignumQ_Mul_low_mul_5(ptr noundef %20, ptr noundef %21, ptr noundef %22)
  %23 = load ptr, ptr %10, align 4
  %24 = load ptr, ptr %8, align 4
  %25 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_BignumQ_Mul_sub_mod_264(ptr noundef %23, ptr noundef %24, ptr noundef %25)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_subm_conditional(ptr noundef %0, ptr noundef %1) #0 {
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 40, i1 false)
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds i64, ptr %30, i32 0
  %32 = load i64, ptr %31, align 4
  store i64 %32, ptr %6, align 8
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds i64, ptr %33, i32 1
  %35 = load i64, ptr %34, align 4
  store i64 %35, ptr %7, align 8
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr inbounds i64, ptr %36, i32 2
  %38 = load i64, ptr %37, align 4
  store i64 %38, ptr %8, align 8
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds i64, ptr %39, i32 3
  %41 = load i64, ptr %40, align 4
  store i64 %41, ptr %9, align 8
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds i64, ptr %42, i32 4
  %44 = load i64, ptr %43, align 4
  store i64 %44, ptr %10, align 8
  %45 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 0
  %46 = load i64, ptr %6, align 8
  %47 = load i64, ptr %7, align 8
  %48 = load i64, ptr %8, align 8
  %49 = load i64, ptr %9, align 8
  %50 = load i64, ptr %10, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %45, i64 noundef %46, i64 noundef %47, i64 noundef %48, i64 noundef %49, i64 noundef %50)
  store i64 5175514460705773, ptr %11, align 8
  store i64 70332060721272408, ptr %12, align 8
  store i64 5342, ptr %13, align 8
  store i64 0, ptr %14, align 8
  store i64 268435456, ptr %15, align 8
  %51 = load i64, ptr %6, align 8
  %52 = load i64, ptr %11, align 8
  %53 = call i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %51, i64 noundef %52)
  store i64 %53, ptr %16, align 8
  %54 = load i64, ptr %16, align 8
  %55 = call i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %54)
  %56 = load i64, ptr %6, align 8
  %57 = add i64 %55, %56
  %58 = load i64, ptr %11, align 8
  %59 = sub i64 %57, %58
  store i64 %59, ptr %17, align 8
  %60 = load i64, ptr %12, align 8
  %61 = load i64, ptr %16, align 8
  %62 = add i64 %60, %61
  store i64 %62, ptr %18, align 8
  %63 = load i64, ptr %7, align 8
  %64 = load i64, ptr %18, align 8
  %65 = call i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %63, i64 noundef %64)
  store i64 %65, ptr %19, align 8
  %66 = load i64, ptr %19, align 8
  %67 = call i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %66)
  %68 = load i64, ptr %7, align 8
  %69 = add i64 %67, %68
  %70 = load i64, ptr %18, align 8
  %71 = sub i64 %69, %70
  store i64 %71, ptr %20, align 8
  %72 = load i64, ptr %13, align 8
  %73 = load i64, ptr %19, align 8
  %74 = add i64 %72, %73
  store i64 %74, ptr %21, align 8
  %75 = load i64, ptr %8, align 8
  %76 = load i64, ptr %21, align 8
  %77 = call i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %75, i64 noundef %76)
  store i64 %77, ptr %22, align 8
  %78 = load i64, ptr %22, align 8
  %79 = call i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %78)
  %80 = load i64, ptr %8, align 8
  %81 = add i64 %79, %80
  %82 = load i64, ptr %21, align 8
  %83 = sub i64 %81, %82
  store i64 %83, ptr %23, align 8
  %84 = load i64, ptr %14, align 8
  %85 = load i64, ptr %22, align 8
  %86 = add i64 %84, %85
  store i64 %86, ptr %24, align 8
  %87 = load i64, ptr %9, align 8
  %88 = load i64, ptr %24, align 8
  %89 = call i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %87, i64 noundef %88)
  store i64 %89, ptr %25, align 8
  %90 = load i64, ptr %25, align 8
  %91 = call i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %90)
  %92 = load i64, ptr %9, align 8
  %93 = add i64 %91, %92
  %94 = load i64, ptr %24, align 8
  %95 = sub i64 %93, %94
  store i64 %95, ptr %26, align 8
  %96 = load i64, ptr %15, align 8
  %97 = load i64, ptr %25, align 8
  %98 = add i64 %96, %97
  store i64 %98, ptr %27, align 8
  %99 = load i64, ptr %10, align 8
  %100 = load i64, ptr %27, align 8
  %101 = call i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %99, i64 noundef %100)
  store i64 %101, ptr %28, align 8
  %102 = load i64, ptr %28, align 8
  %103 = call i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %102)
  %104 = load i64, ptr %10, align 8
  %105 = add i64 %103, %104
  %106 = load i64, ptr %27, align 8
  %107 = sub i64 %105, %106
  store i64 %107, ptr %29, align 8
  %108 = load ptr, ptr %3, align 4
  %109 = load i64, ptr %17, align 8
  %110 = load i64, ptr %20, align 8
  %111 = load i64, ptr %23, align 8
  %112 = load i64, ptr %26, align 8
  %113 = load i64, ptr %29, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %108, i64 noundef %109, i64 noundef %110, i64 noundef %111, i64 noundef %112, i64 noundef %113)
  %114 = load ptr, ptr %3, align 4
  %115 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 0
  %116 = load ptr, ptr %3, align 4
  %117 = load i64, ptr %28, align 8
  call void @Hacl_Impl_BignumQ_Mul_choose(ptr noundef %114, ptr noundef %115, ptr noundef %116, i64 noundef %117)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_div_248(ptr noundef %0, ptr noundef %1) #0 {
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
  %15 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 4
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %5, align 8
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds i64, ptr %19, i32 5
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %6, align 8
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds i64, ptr %22, i32 6
  %24 = load i64, ptr %23, align 4
  store i64 %24, ptr %7, align 8
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds i64, ptr %25, i32 7
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %8, align 8
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds i64, ptr %28, i32 8
  %30 = load i64, ptr %29, align 4
  store i64 %30, ptr %9, align 8
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr inbounds i64, ptr %31, i32 9
  %33 = load i64, ptr %32, align 4
  store i64 %33, ptr %10, align 8
  %34 = load i64, ptr %6, align 8
  %35 = and i64 %34, 16777215
  %36 = shl i64 %35, 32
  %37 = load i64, ptr %5, align 8
  %38 = lshr i64 %37, 24
  %39 = or i64 %36, %38
  store i64 %39, ptr %11, align 8
  %40 = load i64, ptr %7, align 8
  %41 = and i64 %40, 16777215
  %42 = shl i64 %41, 32
  %43 = load i64, ptr %6, align 8
  %44 = lshr i64 %43, 24
  %45 = or i64 %42, %44
  store i64 %45, ptr %12, align 8
  %46 = load i64, ptr %8, align 8
  %47 = and i64 %46, 16777215
  %48 = shl i64 %47, 32
  %49 = load i64, ptr %7, align 8
  %50 = lshr i64 %49, 24
  %51 = or i64 %48, %50
  store i64 %51, ptr %13, align 8
  %52 = load i64, ptr %9, align 8
  %53 = and i64 %52, 16777215
  %54 = shl i64 %53, 32
  %55 = load i64, ptr %8, align 8
  %56 = lshr i64 %55, 24
  %57 = or i64 %54, %56
  store i64 %57, ptr %14, align 8
  %58 = load i64, ptr %10, align 8
  %59 = and i64 %58, 16777215
  %60 = shl i64 %59, 32
  %61 = load i64, ptr %9, align 8
  %62 = lshr i64 %61, 24
  %63 = or i64 %60, %62
  store i64 %63, ptr %15, align 8
  %64 = load ptr, ptr %3, align 4
  %65 = load i64, ptr %11, align 8
  %66 = load i64, ptr %12, align 8
  %67 = load i64, ptr %13, align 8
  %68 = load i64, ptr %14, align 8
  %69 = load i64, ptr %15, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %64, i64 noundef %65, i64 noundef %66, i64 noundef %67, i64 noundef %68, i64 noundef %69)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_mul_5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
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
  %40 = alloca %struct.FStar_UInt128_uint128, align 4
  %41 = alloca %struct.FStar_UInt128_uint128, align 4
  %42 = alloca %struct.FStar_UInt128_uint128, align 4
  %43 = alloca %struct.FStar_UInt128_uint128, align 4
  %44 = alloca %struct.FStar_UInt128_uint128, align 4
  %45 = alloca %struct.FStar_UInt128_uint128, align 4
  %46 = alloca %struct.FStar_UInt128_uint128, align 4
  %47 = alloca %struct.FStar_UInt128_uint128, align 4
  %48 = alloca %struct.FStar_UInt128_uint128, align 4
  %49 = alloca %struct.FStar_UInt128_uint128, align 4
  %50 = alloca %struct.FStar_UInt128_uint128, align 4
  %51 = alloca %struct.FStar_UInt128_uint128, align 4
  %52 = alloca %struct.FStar_UInt128_uint128, align 4
  %53 = alloca %struct.FStar_UInt128_uint128, align 4
  %54 = alloca %struct.FStar_UInt128_uint128, align 4
  %55 = alloca %struct.FStar_UInt128_uint128, align 4
  %56 = alloca %struct.FStar_UInt128_uint128, align 4
  %57 = alloca %struct.FStar_UInt128_uint128, align 4
  %58 = alloca %struct.FStar_UInt128_uint128, align 4
  %59 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %60 = load ptr, ptr %5, align 4
  %61 = getelementptr inbounds i64, ptr %60, i32 0
  %62 = load i64, ptr %61, align 4
  store i64 %62, ptr %7, align 8
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr inbounds i64, ptr %63, i32 1
  %65 = load i64, ptr %64, align 4
  store i64 %65, ptr %8, align 8
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr inbounds i64, ptr %66, i32 2
  %68 = load i64, ptr %67, align 4
  store i64 %68, ptr %9, align 8
  %69 = load ptr, ptr %5, align 4
  %70 = getelementptr inbounds i64, ptr %69, i32 3
  %71 = load i64, ptr %70, align 4
  store i64 %71, ptr %10, align 8
  %72 = load ptr, ptr %5, align 4
  %73 = getelementptr inbounds i64, ptr %72, i32 4
  %74 = load i64, ptr %73, align 4
  store i64 %74, ptr %11, align 8
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr inbounds i64, ptr %75, i32 0
  %77 = load i64, ptr %76, align 4
  store i64 %77, ptr %12, align 8
  %78 = load ptr, ptr %6, align 4
  %79 = getelementptr inbounds i64, ptr %78, i32 1
  %80 = load i64, ptr %79, align 4
  store i64 %80, ptr %13, align 8
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr inbounds i64, ptr %81, i32 2
  %83 = load i64, ptr %82, align 4
  store i64 %83, ptr %14, align 8
  %84 = load ptr, ptr %6, align 4
  %85 = getelementptr inbounds i64, ptr %84, i32 3
  %86 = load i64, ptr %85, align 4
  store i64 %86, ptr %15, align 8
  %87 = load ptr, ptr %6, align 4
  %88 = getelementptr inbounds i64, ptr %87, i32 4
  %89 = load i64, ptr %88, align 4
  store i64 %89, ptr %16, align 8
  %90 = load i64, ptr %7, align 8
  %91 = load i64, ptr %12, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %90, i64 noundef %91)
  %92 = load i64, ptr %7, align 8
  %93 = load i64, ptr %13, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %92, i64 noundef %93)
  %94 = load i64, ptr %7, align 8
  %95 = load i64, ptr %14, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %94, i64 noundef %95)
  %96 = load i64, ptr %7, align 8
  %97 = load i64, ptr %15, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %96, i64 noundef %97)
  %98 = load i64, ptr %7, align 8
  %99 = load i64, ptr %16, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef %98, i64 noundef %99)
  %100 = load i64, ptr %8, align 8
  %101 = load i64, ptr %12, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %100, i64 noundef %101)
  %102 = load i64, ptr %8, align 8
  %103 = load i64, ptr %13, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 noundef %102, i64 noundef %103)
  %104 = load i64, ptr %8, align 8
  %105 = load i64, ptr %14, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 noundef %104, i64 noundef %105)
  %106 = load i64, ptr %8, align 8
  %107 = load i64, ptr %15, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %106, i64 noundef %107)
  %108 = load i64, ptr %8, align 8
  %109 = load i64, ptr %16, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %108, i64 noundef %109)
  %110 = load i64, ptr %9, align 8
  %111 = load i64, ptr %12, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %110, i64 noundef %111)
  %112 = load i64, ptr %9, align 8
  %113 = load i64, ptr %13, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 noundef %112, i64 noundef %113)
  %114 = load i64, ptr %9, align 8
  %115 = load i64, ptr %14, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 noundef %114, i64 noundef %115)
  %116 = load i64, ptr %9, align 8
  %117 = load i64, ptr %15, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 noundef %116, i64 noundef %117)
  %118 = load i64, ptr %9, align 8
  %119 = load i64, ptr %16, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %31, i64 noundef %118, i64 noundef %119)
  %120 = load i64, ptr %10, align 8
  %121 = load i64, ptr %12, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %32, i64 noundef %120, i64 noundef %121)
  %122 = load i64, ptr %10, align 8
  %123 = load i64, ptr %13, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %33, i64 noundef %122, i64 noundef %123)
  %124 = load i64, ptr %10, align 8
  %125 = load i64, ptr %14, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %34, i64 noundef %124, i64 noundef %125)
  %126 = load i64, ptr %10, align 8
  %127 = load i64, ptr %15, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %35, i64 noundef %126, i64 noundef %127)
  %128 = load i64, ptr %10, align 8
  %129 = load i64, ptr %16, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %36, i64 noundef %128, i64 noundef %129)
  %130 = load i64, ptr %11, align 8
  %131 = load i64, ptr %12, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %37, i64 noundef %130, i64 noundef %131)
  %132 = load i64, ptr %11, align 8
  %133 = load i64, ptr %13, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %38, i64 noundef %132, i64 noundef %133)
  %134 = load i64, ptr %11, align 8
  %135 = load i64, ptr %14, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %39, i64 noundef %134, i64 noundef %135)
  %136 = load i64, ptr %11, align 8
  %137 = load i64, ptr %15, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %40, i64 noundef %136, i64 noundef %137)
  %138 = load i64, ptr %11, align 8
  %139 = load i64, ptr %16, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %41, i64 noundef %138, i64 noundef %139)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %42, ptr align 4 %17, i32 16, i1 false)
  %140 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %141 = load i64, ptr %140, align 4
  %142 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %143 = load i64, ptr %142, align 4
  %144 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 0
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 1
  %147 = load i64, ptr %146, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %43, i64 %141, i64 %143, i64 %145, i64 %147)
  %148 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 0
  %149 = load i64, ptr %148, align 4
  %150 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 1
  %151 = load i64, ptr %150, align 4
  %152 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %153 = load i64, ptr %152, align 4
  %154 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %155 = load i64, ptr %154, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %45, i64 %149, i64 %151, i64 %153, i64 %155)
  %156 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %45, i32 0, i32 0
  %157 = load i64, ptr %156, align 4
  %158 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %45, i32 0, i32 1
  %159 = load i64, ptr %158, align 4
  %160 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 0
  %161 = load i64, ptr %160, align 4
  %162 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 1
  %163 = load i64, ptr %162, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %44, i64 %157, i64 %159, i64 %161, i64 %163)
  %164 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 0
  %165 = load i64, ptr %164, align 4
  %166 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 1
  %167 = load i64, ptr %166, align 4
  %168 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 0
  %169 = load i64, ptr %168, align 4
  %170 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 1
  %171 = load i64, ptr %170, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %48, i64 %165, i64 %167, i64 %169, i64 %171)
  %172 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %48, i32 0, i32 0
  %173 = load i64, ptr %172, align 4
  %174 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %48, i32 0, i32 1
  %175 = load i64, ptr %174, align 4
  %176 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 0
  %177 = load i64, ptr %176, align 4
  %178 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 1
  %179 = load i64, ptr %178, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %47, i64 %173, i64 %175, i64 %177, i64 %179)
  %180 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %47, i32 0, i32 0
  %181 = load i64, ptr %180, align 4
  %182 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %47, i32 0, i32 1
  %183 = load i64, ptr %182, align 4
  %184 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 0
  %185 = load i64, ptr %184, align 4
  %186 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 1
  %187 = load i64, ptr %186, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %46, i64 %181, i64 %183, i64 %185, i64 %187)
  %188 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %189 = load i64, ptr %188, align 4
  %190 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %191 = load i64, ptr %190, align 4
  %192 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 0
  %193 = load i64, ptr %192, align 4
  %194 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 1
  %195 = load i64, ptr %194, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %52, i64 %189, i64 %191, i64 %193, i64 %195)
  %196 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %52, i32 0, i32 0
  %197 = load i64, ptr %196, align 4
  %198 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %52, i32 0, i32 1
  %199 = load i64, ptr %198, align 4
  %200 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %29, i32 0, i32 0
  %201 = load i64, ptr %200, align 4
  %202 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %29, i32 0, i32 1
  %203 = load i64, ptr %202, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %51, i64 %197, i64 %199, i64 %201, i64 %203)
  %204 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %51, i32 0, i32 0
  %205 = load i64, ptr %204, align 4
  %206 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %51, i32 0, i32 1
  %207 = load i64, ptr %206, align 4
  %208 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 0, i32 0
  %209 = load i64, ptr %208, align 4
  %210 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 0, i32 1
  %211 = load i64, ptr %210, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %50, i64 %205, i64 %207, i64 %209, i64 %211)
  %212 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %50, i32 0, i32 0
  %213 = load i64, ptr %212, align 4
  %214 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %50, i32 0, i32 1
  %215 = load i64, ptr %214, align 4
  %216 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %37, i32 0, i32 0
  %217 = load i64, ptr %216, align 4
  %218 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %37, i32 0, i32 1
  %219 = load i64, ptr %218, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %49, i64 %213, i64 %215, i64 %217, i64 %219)
  %220 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  %221 = load i64, ptr %220, align 4
  %222 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  %223 = load i64, ptr %222, align 4
  %224 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %30, i32 0, i32 0
  %225 = load i64, ptr %224, align 4
  %226 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %30, i32 0, i32 1
  %227 = load i64, ptr %226, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %55, i64 %221, i64 %223, i64 %225, i64 %227)
  %228 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %55, i32 0, i32 0
  %229 = load i64, ptr %228, align 4
  %230 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %55, i32 0, i32 1
  %231 = load i64, ptr %230, align 4
  %232 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %34, i32 0, i32 0
  %233 = load i64, ptr %232, align 4
  %234 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %34, i32 0, i32 1
  %235 = load i64, ptr %234, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %54, i64 %229, i64 %231, i64 %233, i64 %235)
  %236 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %54, i32 0, i32 0
  %237 = load i64, ptr %236, align 4
  %238 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %54, i32 0, i32 1
  %239 = load i64, ptr %238, align 4
  %240 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %38, i32 0, i32 0
  %241 = load i64, ptr %240, align 4
  %242 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %38, i32 0, i32 1
  %243 = load i64, ptr %242, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %53, i64 %237, i64 %239, i64 %241, i64 %243)
  %244 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %31, i32 0, i32 0
  %245 = load i64, ptr %244, align 4
  %246 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %31, i32 0, i32 1
  %247 = load i64, ptr %246, align 4
  %248 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %35, i32 0, i32 0
  %249 = load i64, ptr %248, align 4
  %250 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %35, i32 0, i32 1
  %251 = load i64, ptr %250, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %57, i64 %245, i64 %247, i64 %249, i64 %251)
  %252 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %57, i32 0, i32 0
  %253 = load i64, ptr %252, align 4
  %254 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %57, i32 0, i32 1
  %255 = load i64, ptr %254, align 4
  %256 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %39, i32 0, i32 0
  %257 = load i64, ptr %256, align 4
  %258 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %39, i32 0, i32 1
  %259 = load i64, ptr %258, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %56, i64 %253, i64 %255, i64 %257, i64 %259)
  %260 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %36, i32 0, i32 0
  %261 = load i64, ptr %260, align 4
  %262 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %36, i32 0, i32 1
  %263 = load i64, ptr %262, align 4
  %264 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %40, i32 0, i32 0
  %265 = load i64, ptr %264, align 4
  %266 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %40, i32 0, i32 1
  %267 = load i64, ptr %266, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %58, i64 %261, i64 %263, i64 %265, i64 %267)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %59, ptr align 4 %41, i32 16, i1 false)
  %268 = load ptr, ptr %4, align 4
  %269 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %42, i32 0, i32 0
  %270 = load i64, ptr %269, align 4
  %271 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %42, i32 0, i32 1
  %272 = load i64, ptr %271, align 4
  %273 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %43, i32 0, i32 0
  %274 = load i64, ptr %273, align 4
  %275 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %43, i32 0, i32 1
  %276 = load i64, ptr %275, align 4
  %277 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %44, i32 0, i32 0
  %278 = load i64, ptr %277, align 4
  %279 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %44, i32 0, i32 1
  %280 = load i64, ptr %279, align 4
  %281 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %46, i32 0, i32 0
  %282 = load i64, ptr %281, align 4
  %283 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %46, i32 0, i32 1
  %284 = load i64, ptr %283, align 4
  %285 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %49, i32 0, i32 0
  %286 = load i64, ptr %285, align 4
  %287 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %49, i32 0, i32 1
  %288 = load i64, ptr %287, align 4
  %289 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %53, i32 0, i32 0
  %290 = load i64, ptr %289, align 4
  %291 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %53, i32 0, i32 1
  %292 = load i64, ptr %291, align 4
  %293 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %56, i32 0, i32 0
  %294 = load i64, ptr %293, align 4
  %295 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %56, i32 0, i32 1
  %296 = load i64, ptr %295, align 4
  %297 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %58, i32 0, i32 0
  %298 = load i64, ptr %297, align 4
  %299 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %58, i32 0, i32 1
  %300 = load i64, ptr %299, align 4
  %301 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %59, i32 0, i32 0
  %302 = load i64, ptr %301, align 4
  %303 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %59, i32 0, i32 1
  %304 = load i64, ptr %303, align 4
  call void @Hacl_Lib_Create128_make_h128_9(ptr noundef %268, i64 %270, i64 %272, i64 %274, i64 %276, i64 %278, i64 %280, i64 %282, i64 %284, i64 %286, i64 %288, i64 %290, i64 %292, i64 %294, i64 %296, i64 %298, i64 %300, i64 %302, i64 %304)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_carry(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca %struct.FStar_UInt128_uint128, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 4
  %20 = alloca %struct.FStar_UInt128_uint128, align 4
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca %struct.FStar_UInt128_uint128, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 4
  %26 = alloca %struct.FStar_UInt128_uint128, align 4
  %27 = alloca %struct.FStar_UInt128_uint128, align 4
  %28 = alloca %struct.FStar_UInt128_uint128, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.FStar_UInt128_uint128, align 4
  %32 = alloca %struct.FStar_UInt128_uint128, align 4
  %33 = alloca %struct.FStar_UInt128_uint128, align 4
  %34 = alloca %struct.FStar_UInt128_uint128, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca %struct.FStar_UInt128_uint128, align 4
  %38 = alloca %struct.FStar_UInt128_uint128, align 4
  %39 = alloca %struct.FStar_UInt128_uint128, align 4
  %40 = alloca %struct.FStar_UInt128_uint128, align 4
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca %struct.FStar_UInt128_uint128, align 4
  %44 = alloca %struct.FStar_UInt128_uint128, align 4
  %45 = alloca %struct.FStar_UInt128_uint128, align 4
  %46 = alloca %struct.FStar_UInt128_uint128, align 4
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca %struct.FStar_UInt128_uint128, align 4
  %50 = alloca %struct.FStar_UInt128_uint128, align 4
  %51 = alloca %struct.FStar_UInt128_uint128, align 4
  %52 = alloca %struct.FStar_UInt128_uint128, align 4
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca %struct.FStar_UInt128_uint128, align 4
  %56 = alloca %struct.FStar_UInt128_uint128, align 4
  %57 = alloca %struct.FStar_UInt128_uint128, align 4
  %58 = alloca %struct.FStar_UInt128_uint128, align 4
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca %struct.FStar_UInt128_uint128, align 4
  %62 = alloca %struct.FStar_UInt128_uint128, align 4
  %63 = alloca %struct.FStar_UInt128_uint128, align 4
  %64 = alloca %struct.FStar_UInt128_uint128, align 4
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  %67 = alloca %struct.FStar_UInt128_uint128, align 4
  %68 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %69, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 4 %70, i32 16, i1 false)
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %71, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %72, i32 16, i1 false)
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %73, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 4 %74, i32 16, i1 false)
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %75, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %76, i32 16, i1 false)
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %77, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %9, ptr align 4 %78, i32 16, i1 false)
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %79, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %10, ptr align 4 %80, i32 16, i1 false)
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %81, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %11, ptr align 4 %82, i32 16, i1 false)
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %83, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %12, ptr align 4 %84, i32 16, i1 false)
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %85, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %86, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %14, ptr align 4 %5, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %6, i32 16, i1 false)
  %87 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %88 = load i64, ptr %87, align 4
  %89 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %90 = load i64, ptr %89, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %88, i64 %90, i32 noundef 56)
  %91 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %94 = load i64, ptr %93, align 4
  %95 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %92, i64 %94)
  %96 = and i64 %95, 72057594037927935
  store i64 %96, ptr %17, align 8
  %97 = load i64, ptr %17, align 8
  store i64 %97, ptr %18, align 8
  %98 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 0
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 1
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 0
  %103 = load i64, ptr %102, align 4
  %104 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 1
  %105 = load i64, ptr %104, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %99, i64 %101, i64 %103, i64 %105)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %20, ptr align 4 %19, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %21, ptr align 4 %7, i32 16, i1 false)
  %106 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 0
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 1
  %109 = load i64, ptr %108, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 %107, i64 %109, i32 noundef 56)
  %110 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 0
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 1
  %113 = load i64, ptr %112, align 4
  %114 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %111, i64 %113)
  %115 = and i64 %114, 72057594037927935
  store i64 %115, ptr %23, align 8
  %116 = load i64, ptr %23, align 8
  store i64 %116, ptr %24, align 8
  %117 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %118 = load i64, ptr %117, align 4
  %119 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %120 = load i64, ptr %119, align 4
  %121 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 0
  %122 = load i64, ptr %121, align 4
  %123 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 1
  %124 = load i64, ptr %123, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 %118, i64 %120, i64 %122, i64 %124)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr align 4 %25, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %27, ptr align 4 %8, i32 16, i1 false)
  %125 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  %126 = load i64, ptr %125, align 4
  %127 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  %128 = load i64, ptr %127, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 %126, i64 %128, i32 noundef 56)
  %129 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  %130 = load i64, ptr %129, align 4
  %131 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  %132 = load i64, ptr %131, align 4
  %133 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %130, i64 %132)
  %134 = and i64 %133, 72057594037927935
  store i64 %134, ptr %29, align 8
  %135 = load i64, ptr %29, align 8
  store i64 %135, ptr %30, align 8
  %136 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 0
  %137 = load i64, ptr %136, align 4
  %138 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 1
  %139 = load i64, ptr %138, align 4
  %140 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 0
  %141 = load i64, ptr %140, align 4
  %142 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 1
  %143 = load i64, ptr %142, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %31, i64 %137, i64 %139, i64 %141, i64 %143)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %32, ptr align 4 %31, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %33, ptr align 4 %9, i32 16, i1 false)
  %144 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 0
  %145 = load i64, ptr %144, align 4
  %146 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 1
  %147 = load i64, ptr %146, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %34, i64 %145, i64 %147, i32 noundef 56)
  %148 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 0
  %149 = load i64, ptr %148, align 4
  %150 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 1
  %151 = load i64, ptr %150, align 4
  %152 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %149, i64 %151)
  %153 = and i64 %152, 72057594037927935
  store i64 %153, ptr %35, align 8
  %154 = load i64, ptr %35, align 8
  store i64 %154, ptr %36, align 8
  %155 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 0, i32 0
  %156 = load i64, ptr %155, align 4
  %157 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 0, i32 1
  %158 = load i64, ptr %157, align 4
  %159 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %34, i32 0, i32 0
  %160 = load i64, ptr %159, align 4
  %161 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %34, i32 0, i32 1
  %162 = load i64, ptr %161, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %37, i64 %156, i64 %158, i64 %160, i64 %162)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %38, ptr align 4 %37, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %39, ptr align 4 %10, i32 16, i1 false)
  %163 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %38, i32 0, i32 0
  %164 = load i64, ptr %163, align 4
  %165 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %38, i32 0, i32 1
  %166 = load i64, ptr %165, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %40, i64 %164, i64 %166, i32 noundef 56)
  %167 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %38, i32 0, i32 0
  %168 = load i64, ptr %167, align 4
  %169 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %38, i32 0, i32 1
  %170 = load i64, ptr %169, align 4
  %171 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %168, i64 %170)
  %172 = and i64 %171, 72057594037927935
  store i64 %172, ptr %41, align 8
  %173 = load i64, ptr %41, align 8
  store i64 %173, ptr %42, align 8
  %174 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %39, i32 0, i32 0
  %175 = load i64, ptr %174, align 4
  %176 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %39, i32 0, i32 1
  %177 = load i64, ptr %176, align 4
  %178 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %40, i32 0, i32 0
  %179 = load i64, ptr %178, align 4
  %180 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %40, i32 0, i32 1
  %181 = load i64, ptr %180, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %43, i64 %175, i64 %177, i64 %179, i64 %181)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %44, ptr align 4 %43, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %45, ptr align 4 %11, i32 16, i1 false)
  %182 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %44, i32 0, i32 0
  %183 = load i64, ptr %182, align 4
  %184 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %44, i32 0, i32 1
  %185 = load i64, ptr %184, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %46, i64 %183, i64 %185, i32 noundef 56)
  %186 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %44, i32 0, i32 0
  %187 = load i64, ptr %186, align 4
  %188 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %44, i32 0, i32 1
  %189 = load i64, ptr %188, align 4
  %190 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %187, i64 %189)
  %191 = and i64 %190, 72057594037927935
  store i64 %191, ptr %47, align 8
  %192 = load i64, ptr %47, align 8
  store i64 %192, ptr %48, align 8
  %193 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %45, i32 0, i32 0
  %194 = load i64, ptr %193, align 4
  %195 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %45, i32 0, i32 1
  %196 = load i64, ptr %195, align 4
  %197 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %46, i32 0, i32 0
  %198 = load i64, ptr %197, align 4
  %199 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %46, i32 0, i32 1
  %200 = load i64, ptr %199, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %49, i64 %194, i64 %196, i64 %198, i64 %200)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %50, ptr align 4 %49, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %51, ptr align 4 %12, i32 16, i1 false)
  %201 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %50, i32 0, i32 0
  %202 = load i64, ptr %201, align 4
  %203 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %50, i32 0, i32 1
  %204 = load i64, ptr %203, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %52, i64 %202, i64 %204, i32 noundef 56)
  %205 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %50, i32 0, i32 0
  %206 = load i64, ptr %205, align 4
  %207 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %50, i32 0, i32 1
  %208 = load i64, ptr %207, align 4
  %209 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %206, i64 %208)
  %210 = and i64 %209, 72057594037927935
  store i64 %210, ptr %53, align 8
  %211 = load i64, ptr %53, align 8
  store i64 %211, ptr %54, align 8
  %212 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %51, i32 0, i32 0
  %213 = load i64, ptr %212, align 4
  %214 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %51, i32 0, i32 1
  %215 = load i64, ptr %214, align 4
  %216 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %52, i32 0, i32 0
  %217 = load i64, ptr %216, align 4
  %218 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %52, i32 0, i32 1
  %219 = load i64, ptr %218, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %55, i64 %213, i64 %215, i64 %217, i64 %219)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %56, ptr align 4 %55, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %57, ptr align 4 %13, i32 16, i1 false)
  %220 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %56, i32 0, i32 0
  %221 = load i64, ptr %220, align 4
  %222 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %56, i32 0, i32 1
  %223 = load i64, ptr %222, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %58, i64 %221, i64 %223, i32 noundef 56)
  %224 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %56, i32 0, i32 0
  %225 = load i64, ptr %224, align 4
  %226 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %56, i32 0, i32 1
  %227 = load i64, ptr %226, align 4
  %228 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %225, i64 %227)
  %229 = and i64 %228, 72057594037927935
  store i64 %229, ptr %59, align 8
  %230 = load i64, ptr %59, align 8
  store i64 %230, ptr %60, align 8
  %231 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %57, i32 0, i32 0
  %232 = load i64, ptr %231, align 4
  %233 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %57, i32 0, i32 1
  %234 = load i64, ptr %233, align 4
  %235 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %58, i32 0, i32 0
  %236 = load i64, ptr %235, align 4
  %237 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %58, i32 0, i32 1
  %238 = load i64, ptr %237, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %61, i64 %232, i64 %234, i64 %236, i64 %238)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %62, ptr align 4 %61, i32 16, i1 false)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %63, i64 noundef 0)
  %239 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %62, i32 0, i32 0
  %240 = load i64, ptr %239, align 4
  %241 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %62, i32 0, i32 1
  %242 = load i64, ptr %241, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %64, i64 %240, i64 %242, i32 noundef 56)
  %243 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %62, i32 0, i32 0
  %244 = load i64, ptr %243, align 4
  %245 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %62, i32 0, i32 1
  %246 = load i64, ptr %245, align 4
  %247 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %244, i64 %246)
  %248 = and i64 %247, 72057594037927935
  store i64 %248, ptr %65, align 8
  %249 = load i64, ptr %65, align 8
  store i64 %249, ptr %66, align 8
  %250 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %63, i32 0, i32 0
  %251 = load i64, ptr %250, align 4
  %252 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %63, i32 0, i32 1
  %253 = load i64, ptr %252, align 4
  %254 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %64, i32 0, i32 0
  %255 = load i64, ptr %254, align 4
  %256 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %64, i32 0, i32 1
  %257 = load i64, ptr %256, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %67, i64 %251, i64 %253, i64 %255, i64 %257)
  %258 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %67, i32 0, i32 0
  %259 = load i64, ptr %258, align 4
  %260 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %67, i32 0, i32 1
  %261 = load i64, ptr %260, align 4
  %262 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %259, i64 %261)
  store i64 %262, ptr %68, align 8
  %263 = load ptr, ptr %3, align 4
  %264 = load i64, ptr %18, align 8
  %265 = load i64, ptr %24, align 8
  %266 = load i64, ptr %30, align 8
  %267 = load i64, ptr %36, align 8
  %268 = load i64, ptr %42, align 8
  %269 = load i64, ptr %48, align 8
  %270 = load i64, ptr %54, align 8
  %271 = load i64, ptr %60, align 8
  %272 = load i64, ptr %66, align 8
  %273 = load i64, ptr %68, align 8
  call void @Hacl_Lib_Create64_make_h64_10(ptr noundef %263, i64 noundef %264, i64 noundef %265, i64 noundef %266, i64 noundef %267, i64 noundef %268, i64 noundef %269, i64 noundef %270, i64 noundef %271, i64 noundef %272, i64 noundef %273)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_div_264(ptr noundef %0, ptr noundef %1) #0 {
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
  %15 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 4
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %5, align 8
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds i64, ptr %19, i32 5
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %6, align 8
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds i64, ptr %22, i32 6
  %24 = load i64, ptr %23, align 4
  store i64 %24, ptr %7, align 8
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds i64, ptr %25, i32 7
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %8, align 8
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds i64, ptr %28, i32 8
  %30 = load i64, ptr %29, align 4
  store i64 %30, ptr %9, align 8
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr inbounds i64, ptr %31, i32 9
  %33 = load i64, ptr %32, align 4
  store i64 %33, ptr %10, align 8
  %34 = load i64, ptr %6, align 8
  %35 = and i64 %34, 1099511627775
  %36 = shl i64 %35, 16
  %37 = load i64, ptr %5, align 8
  %38 = lshr i64 %37, 40
  %39 = or i64 %36, %38
  store i64 %39, ptr %11, align 8
  %40 = load i64, ptr %7, align 8
  %41 = and i64 %40, 1099511627775
  %42 = shl i64 %41, 16
  %43 = load i64, ptr %6, align 8
  %44 = lshr i64 %43, 40
  %45 = or i64 %42, %44
  store i64 %45, ptr %12, align 8
  %46 = load i64, ptr %8, align 8
  %47 = and i64 %46, 1099511627775
  %48 = shl i64 %47, 16
  %49 = load i64, ptr %7, align 8
  %50 = lshr i64 %49, 40
  %51 = or i64 %48, %50
  store i64 %51, ptr %13, align 8
  %52 = load i64, ptr %9, align 8
  %53 = and i64 %52, 1099511627775
  %54 = shl i64 %53, 16
  %55 = load i64, ptr %8, align 8
  %56 = lshr i64 %55, 40
  %57 = or i64 %54, %56
  store i64 %57, ptr %14, align 8
  %58 = load i64, ptr %10, align 8
  %59 = and i64 %58, 1099511627775
  %60 = shl i64 %59, 16
  %61 = load i64, ptr %9, align 8
  %62 = lshr i64 %61, 40
  %63 = or i64 %60, %62
  store i64 %63, ptr %15, align 8
  %64 = load ptr, ptr %3, align 4
  %65 = load i64, ptr %11, align 8
  %66 = load i64, ptr %12, align 8
  %67 = load i64, ptr %13, align 8
  %68 = load i64, ptr %14, align 8
  %69 = load i64, ptr %15, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %64, i64 noundef %65, i64 noundef %66, i64 noundef %67, i64 noundef %68, i64 noundef %69)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Lib_Create128_make_h128_9(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18) #0 {
  %20 = alloca %struct.FStar_UInt128_uint128, align 4
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca %struct.FStar_UInt128_uint128, align 4
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.FStar_UInt128_uint128, align 4
  %25 = alloca %struct.FStar_UInt128_uint128, align 4
  %26 = alloca %struct.FStar_UInt128_uint128, align 4
  %27 = alloca %struct.FStar_UInt128_uint128, align 4
  %28 = alloca %struct.FStar_UInt128_uint128, align 4
  %29 = alloca ptr, align 4
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 0
  store i64 %1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 1
  store i64 %2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  store i64 %3, ptr %32, align 4
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  store i64 %4, ptr %33, align 4
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 0
  store i64 %5, ptr %34, align 4
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 1
  store i64 %6, ptr %35, align 4
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  store i64 %7, ptr %36, align 4
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  store i64 %8, ptr %37, align 4
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 0
  store i64 %9, ptr %38, align 4
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 1
  store i64 %10, ptr %39, align 4
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 0
  store i64 %11, ptr %40, align 4
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 1
  store i64 %12, ptr %41, align 4
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  store i64 %13, ptr %42, align 4
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  store i64 %14, ptr %43, align 4
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 0
  store i64 %15, ptr %44, align 4
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 1
  store i64 %16, ptr %45, align 4
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 0
  store i64 %17, ptr %46, align 4
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 1
  store i64 %18, ptr %47, align 4
  store ptr %0, ptr %29, align 4
  %48 = load ptr, ptr %29, align 4
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %48, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %49, ptr align 4 %20, i32 16, i1 false)
  %50 = load ptr, ptr %29, align 4
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %50, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %51, ptr align 4 %21, i32 16, i1 false)
  %52 = load ptr, ptr %29, align 4
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %52, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %53, ptr align 4 %22, i32 16, i1 false)
  %54 = load ptr, ptr %29, align 4
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %54, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %55, ptr align 4 %23, i32 16, i1 false)
  %56 = load ptr, ptr %29, align 4
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %56, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %57, ptr align 4 %24, i32 16, i1 false)
  %58 = load ptr, ptr %29, align 4
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %58, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %59, ptr align 4 %25, i32 16, i1 false)
  %60 = load ptr, ptr %29, align 4
  %61 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %60, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %61, ptr align 4 %26, i32 16, i1 false)
  %62 = load ptr, ptr %29, align 4
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %62, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %63, ptr align 4 %27, i32 16, i1 false)
  %64 = load ptr, ptr %29, align 4
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %64, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %65, ptr align 4 %28, i32 16, i1 false)
  ret void
}

declare void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) #3

declare i64 @FStar_UInt128_uint128_to_uint64(i64, i64) #3

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_mod_264(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds i64, ptr %11, i32 0
  %13 = load i64, ptr %12, align 4
  store i64 %13, ptr %5, align 8
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds i64, ptr %14, i32 1
  %16 = load i64, ptr %15, align 4
  store i64 %16, ptr %6, align 8
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds i64, ptr %17, i32 2
  %19 = load i64, ptr %18, align 4
  store i64 %19, ptr %7, align 8
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds i64, ptr %20, i32 3
  %22 = load i64, ptr %21, align 4
  store i64 %22, ptr %8, align 8
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds i64, ptr %23, i32 4
  %25 = load i64, ptr %24, align 4
  store i64 %25, ptr %9, align 8
  %26 = load i64, ptr %9, align 8
  %27 = and i64 %26, 1099511627775
  store i64 %27, ptr %10, align 8
  %28 = load ptr, ptr %3, align 4
  %29 = load i64, ptr %5, align 8
  %30 = load i64, ptr %6, align 8
  %31 = load i64, ptr %7, align 8
  %32 = load i64, ptr %8, align 8
  %33 = load i64, ptr %10, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31, i64 noundef %32, i64 noundef %33)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_low_mul_5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
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
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca %struct.FStar_UInt128_uint128, align 4
  %37 = alloca %struct.FStar_UInt128_uint128, align 4
  %38 = alloca %struct.FStar_UInt128_uint128, align 4
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca %struct.FStar_UInt128_uint128, align 4
  %42 = alloca %struct.FStar_UInt128_uint128, align 4
  %43 = alloca %struct.FStar_UInt128_uint128, align 4
  %44 = alloca %struct.FStar_UInt128_uint128, align 4
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca %struct.FStar_UInt128_uint128, align 4
  %48 = alloca %struct.FStar_UInt128_uint128, align 4
  %49 = alloca %struct.FStar_UInt128_uint128, align 4
  %50 = alloca %struct.FStar_UInt128_uint128, align 4
  %51 = alloca %struct.FStar_UInt128_uint128, align 4
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca %struct.FStar_UInt128_uint128, align 4
  %56 = alloca %struct.FStar_UInt128_uint128, align 4
  %57 = alloca %struct.FStar_UInt128_uint128, align 4
  %58 = alloca %struct.FStar_UInt128_uint128, align 4
  %59 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %60 = load ptr, ptr %5, align 4
  %61 = getelementptr inbounds i64, ptr %60, i32 0
  %62 = load i64, ptr %61, align 4
  store i64 %62, ptr %7, align 8
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr inbounds i64, ptr %63, i32 1
  %65 = load i64, ptr %64, align 4
  store i64 %65, ptr %8, align 8
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr inbounds i64, ptr %66, i32 2
  %68 = load i64, ptr %67, align 4
  store i64 %68, ptr %9, align 8
  %69 = load ptr, ptr %5, align 4
  %70 = getelementptr inbounds i64, ptr %69, i32 3
  %71 = load i64, ptr %70, align 4
  store i64 %71, ptr %10, align 8
  %72 = load ptr, ptr %5, align 4
  %73 = getelementptr inbounds i64, ptr %72, i32 4
  %74 = load i64, ptr %73, align 4
  store i64 %74, ptr %11, align 8
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr inbounds i64, ptr %75, i32 0
  %77 = load i64, ptr %76, align 4
  store i64 %77, ptr %12, align 8
  %78 = load ptr, ptr %6, align 4
  %79 = getelementptr inbounds i64, ptr %78, i32 1
  %80 = load i64, ptr %79, align 4
  store i64 %80, ptr %13, align 8
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr inbounds i64, ptr %81, i32 2
  %83 = load i64, ptr %82, align 4
  store i64 %83, ptr %14, align 8
  %84 = load ptr, ptr %6, align 4
  %85 = getelementptr inbounds i64, ptr %84, i32 3
  %86 = load i64, ptr %85, align 4
  store i64 %86, ptr %15, align 8
  %87 = load ptr, ptr %6, align 4
  %88 = getelementptr inbounds i64, ptr %87, i32 4
  %89 = load i64, ptr %88, align 4
  store i64 %89, ptr %16, align 8
  %90 = load i64, ptr %7, align 8
  %91 = load i64, ptr %12, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %90, i64 noundef %91)
  %92 = load i64, ptr %7, align 8
  %93 = load i64, ptr %13, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %92, i64 noundef %93)
  %94 = load i64, ptr %7, align 8
  %95 = load i64, ptr %14, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %94, i64 noundef %95)
  %96 = load i64, ptr %7, align 8
  %97 = load i64, ptr %15, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %96, i64 noundef %97)
  %98 = load i64, ptr %7, align 8
  %99 = load i64, ptr %16, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef %98, i64 noundef %99)
  %100 = load i64, ptr %8, align 8
  %101 = load i64, ptr %12, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %100, i64 noundef %101)
  %102 = load i64, ptr %8, align 8
  %103 = load i64, ptr %13, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 noundef %102, i64 noundef %103)
  %104 = load i64, ptr %8, align 8
  %105 = load i64, ptr %14, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 noundef %104, i64 noundef %105)
  %106 = load i64, ptr %8, align 8
  %107 = load i64, ptr %15, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %106, i64 noundef %107)
  %108 = load i64, ptr %9, align 8
  %109 = load i64, ptr %12, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %108, i64 noundef %109)
  %110 = load i64, ptr %9, align 8
  %111 = load i64, ptr %13, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %110, i64 noundef %111)
  %112 = load i64, ptr %9, align 8
  %113 = load i64, ptr %14, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 noundef %112, i64 noundef %113)
  %114 = load i64, ptr %10, align 8
  %115 = load i64, ptr %12, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 noundef %114, i64 noundef %115)
  %116 = load i64, ptr %10, align 8
  %117 = load i64, ptr %13, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 noundef %116, i64 noundef %117)
  %118 = load i64, ptr %11, align 8
  %119 = load i64, ptr %12, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %31, i64 noundef %118, i64 noundef %119)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %32, ptr align 4 %17, i32 16, i1 false)
  %120 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 0
  %121 = load i64, ptr %120, align 4
  %122 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 1
  %123 = load i64, ptr %122, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %33, i64 %121, i64 %123, i32 noundef 56)
  %124 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 0
  %125 = load i64, ptr %124, align 4
  %126 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 1
  %127 = load i64, ptr %126, align 4
  %128 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %125, i64 %127)
  %129 = and i64 %128, 72057594037927935
  store i64 %129, ptr %34, align 8
  %130 = load i64, ptr %34, align 8
  store i64 %130, ptr %35, align 8
  %131 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %132 = load i64, ptr %131, align 4
  %133 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %134 = load i64, ptr %133, align 4
  %135 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 0
  %136 = load i64, ptr %135, align 4
  %137 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 1
  %138 = load i64, ptr %137, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %37, i64 %132, i64 %134, i64 %136, i64 %138)
  %139 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %37, i32 0, i32 0
  %140 = load i64, ptr %139, align 4
  %141 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %37, i32 0, i32 1
  %142 = load i64, ptr %141, align 4
  %143 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 0, i32 0
  %144 = load i64, ptr %143, align 4
  %145 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 0, i32 1
  %146 = load i64, ptr %145, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %36, i64 %140, i64 %142, i64 %144, i64 %146)
  %147 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %36, i32 0, i32 0
  %148 = load i64, ptr %147, align 4
  %149 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %36, i32 0, i32 1
  %150 = load i64, ptr %149, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %38, i64 %148, i64 %150, i32 noundef 56)
  %151 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %36, i32 0, i32 0
  %152 = load i64, ptr %151, align 4
  %153 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %36, i32 0, i32 1
  %154 = load i64, ptr %153, align 4
  %155 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %152, i64 %154)
  %156 = and i64 %155, 72057594037927935
  store i64 %156, ptr %39, align 8
  %157 = load i64, ptr %39, align 8
  store i64 %157, ptr %40, align 8
  %158 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 0
  %159 = load i64, ptr %158, align 4
  %160 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 1
  %161 = load i64, ptr %160, align 4
  %162 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %163 = load i64, ptr %162, align 4
  %164 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %165 = load i64, ptr %164, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %43, i64 %159, i64 %161, i64 %163, i64 %165)
  %166 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %43, i32 0, i32 0
  %167 = load i64, ptr %166, align 4
  %168 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %43, i32 0, i32 1
  %169 = load i64, ptr %168, align 4
  %170 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  %171 = load i64, ptr %170, align 4
  %172 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  %173 = load i64, ptr %172, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %42, i64 %167, i64 %169, i64 %171, i64 %173)
  %174 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %42, i32 0, i32 0
  %175 = load i64, ptr %174, align 4
  %176 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %42, i32 0, i32 1
  %177 = load i64, ptr %176, align 4
  %178 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %38, i32 0, i32 0
  %179 = load i64, ptr %178, align 4
  %180 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %38, i32 0, i32 1
  %181 = load i64, ptr %180, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %41, i64 %175, i64 %177, i64 %179, i64 %181)
  %182 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %41, i32 0, i32 0
  %183 = load i64, ptr %182, align 4
  %184 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %41, i32 0, i32 1
  %185 = load i64, ptr %184, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %44, i64 %183, i64 %185, i32 noundef 56)
  %186 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %41, i32 0, i32 0
  %187 = load i64, ptr %186, align 4
  %188 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %41, i32 0, i32 1
  %189 = load i64, ptr %188, align 4
  %190 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %187, i64 %189)
  %191 = and i64 %190, 72057594037927935
  store i64 %191, ptr %45, align 8
  %192 = load i64, ptr %45, align 8
  store i64 %192, ptr %46, align 8
  %193 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 0
  %194 = load i64, ptr %193, align 4
  %195 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 1
  %196 = load i64, ptr %195, align 4
  %197 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 0
  %198 = load i64, ptr %197, align 4
  %199 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 1
  %200 = load i64, ptr %199, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %50, i64 %194, i64 %196, i64 %198, i64 %200)
  %201 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %50, i32 0, i32 0
  %202 = load i64, ptr %201, align 4
  %203 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %50, i32 0, i32 1
  %204 = load i64, ptr %203, align 4
  %205 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 0
  %206 = load i64, ptr %205, align 4
  %207 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 1
  %208 = load i64, ptr %207, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %49, i64 %202, i64 %204, i64 %206, i64 %208)
  %209 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %49, i32 0, i32 0
  %210 = load i64, ptr %209, align 4
  %211 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %49, i32 0, i32 1
  %212 = load i64, ptr %211, align 4
  %213 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %29, i32 0, i32 0
  %214 = load i64, ptr %213, align 4
  %215 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %29, i32 0, i32 1
  %216 = load i64, ptr %215, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %48, i64 %210, i64 %212, i64 %214, i64 %216)
  %217 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %48, i32 0, i32 0
  %218 = load i64, ptr %217, align 4
  %219 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %48, i32 0, i32 1
  %220 = load i64, ptr %219, align 4
  %221 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %44, i32 0, i32 0
  %222 = load i64, ptr %221, align 4
  %223 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %44, i32 0, i32 1
  %224 = load i64, ptr %223, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %47, i64 %218, i64 %220, i64 %222, i64 %224)
  %225 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %47, i32 0, i32 0
  %226 = load i64, ptr %225, align 4
  %227 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %47, i32 0, i32 1
  %228 = load i64, ptr %227, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %51, i64 %226, i64 %228, i32 noundef 56)
  %229 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %47, i32 0, i32 0
  %230 = load i64, ptr %229, align 4
  %231 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %47, i32 0, i32 1
  %232 = load i64, ptr %231, align 4
  %233 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %230, i64 %232)
  %234 = and i64 %233, 72057594037927935
  store i64 %234, ptr %52, align 8
  %235 = load i64, ptr %52, align 8
  store i64 %235, ptr %53, align 8
  %236 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %237 = load i64, ptr %236, align 4
  %238 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %239 = load i64, ptr %238, align 4
  %240 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 0
  %241 = load i64, ptr %240, align 4
  %242 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 1
  %243 = load i64, ptr %242, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %59, i64 %237, i64 %239, i64 %241, i64 %243)
  %244 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %59, i32 0, i32 0
  %245 = load i64, ptr %244, align 4
  %246 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %59, i32 0, i32 1
  %247 = load i64, ptr %246, align 4
  %248 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 0
  %249 = load i64, ptr %248, align 4
  %250 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 1
  %251 = load i64, ptr %250, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %58, i64 %245, i64 %247, i64 %249, i64 %251)
  %252 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %58, i32 0, i32 0
  %253 = load i64, ptr %252, align 4
  %254 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %58, i32 0, i32 1
  %255 = load i64, ptr %254, align 4
  %256 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %30, i32 0, i32 0
  %257 = load i64, ptr %256, align 4
  %258 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %30, i32 0, i32 1
  %259 = load i64, ptr %258, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %57, i64 %253, i64 %255, i64 %257, i64 %259)
  %260 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %57, i32 0, i32 0
  %261 = load i64, ptr %260, align 4
  %262 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %57, i32 0, i32 1
  %263 = load i64, ptr %262, align 4
  %264 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %31, i32 0, i32 0
  %265 = load i64, ptr %264, align 4
  %266 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %31, i32 0, i32 1
  %267 = load i64, ptr %266, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %56, i64 %261, i64 %263, i64 %265, i64 %267)
  %268 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %56, i32 0, i32 0
  %269 = load i64, ptr %268, align 4
  %270 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %56, i32 0, i32 1
  %271 = load i64, ptr %270, align 4
  %272 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %51, i32 0, i32 0
  %273 = load i64, ptr %272, align 4
  %274 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %51, i32 0, i32 1
  %275 = load i64, ptr %274, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %55, i64 %269, i64 %271, i64 %273, i64 %275)
  %276 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %55, i32 0, i32 0
  %277 = load i64, ptr %276, align 4
  %278 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %55, i32 0, i32 1
  %279 = load i64, ptr %278, align 4
  %280 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %277, i64 %279)
  %281 = and i64 %280, 1099511627775
  store i64 %281, ptr %54, align 8
  %282 = load ptr, ptr %4, align 4
  %283 = load i64, ptr %35, align 8
  %284 = load i64, ptr %40, align 8
  %285 = load i64, ptr %46, align 8
  %286 = load i64, ptr %53, align 8
  %287 = load i64, ptr %54, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %282, i64 noundef %283, i64 noundef %284, i64 noundef %285, i64 noundef %286, i64 noundef %287)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_sub_mod_264(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds i64, ptr %31, i32 0
  %33 = load i64, ptr %32, align 4
  store i64 %33, ptr %7, align 8
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds i64, ptr %34, i32 1
  %36 = load i64, ptr %35, align 4
  store i64 %36, ptr %8, align 8
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds i64, ptr %37, i32 2
  %39 = load i64, ptr %38, align 4
  store i64 %39, ptr %9, align 8
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds i64, ptr %40, i32 3
  %42 = load i64, ptr %41, align 4
  store i64 %42, ptr %10, align 8
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr inbounds i64, ptr %43, i32 4
  %45 = load i64, ptr %44, align 4
  store i64 %45, ptr %11, align 8
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr inbounds i64, ptr %46, i32 0
  %48 = load i64, ptr %47, align 4
  store i64 %48, ptr %12, align 8
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr inbounds i64, ptr %49, i32 1
  %51 = load i64, ptr %50, align 4
  store i64 %51, ptr %13, align 8
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr inbounds i64, ptr %52, i32 2
  %54 = load i64, ptr %53, align 4
  store i64 %54, ptr %14, align 8
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr inbounds i64, ptr %55, i32 3
  %57 = load i64, ptr %56, align 4
  store i64 %57, ptr %15, align 8
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds i64, ptr %58, i32 4
  %60 = load i64, ptr %59, align 4
  store i64 %60, ptr %16, align 8
  %61 = load i64, ptr %7, align 8
  %62 = load i64, ptr %12, align 8
  %63 = call i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %61, i64 noundef %62)
  store i64 %63, ptr %17, align 8
  %64 = load i64, ptr %17, align 8
  %65 = call i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %64)
  %66 = load i64, ptr %7, align 8
  %67 = add i64 %65, %66
  %68 = load i64, ptr %12, align 8
  %69 = sub i64 %67, %68
  store i64 %69, ptr %18, align 8
  %70 = load i64, ptr %13, align 8
  %71 = load i64, ptr %17, align 8
  %72 = add i64 %70, %71
  store i64 %72, ptr %19, align 8
  %73 = load i64, ptr %8, align 8
  %74 = load i64, ptr %19, align 8
  %75 = call i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %73, i64 noundef %74)
  store i64 %75, ptr %20, align 8
  %76 = load i64, ptr %20, align 8
  %77 = call i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %76)
  %78 = load i64, ptr %8, align 8
  %79 = add i64 %77, %78
  %80 = load i64, ptr %19, align 8
  %81 = sub i64 %79, %80
  store i64 %81, ptr %21, align 8
  %82 = load i64, ptr %14, align 8
  %83 = load i64, ptr %20, align 8
  %84 = add i64 %82, %83
  store i64 %84, ptr %22, align 8
  %85 = load i64, ptr %9, align 8
  %86 = load i64, ptr %22, align 8
  %87 = call i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %85, i64 noundef %86)
  store i64 %87, ptr %23, align 8
  %88 = load i64, ptr %23, align 8
  %89 = call i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %88)
  %90 = load i64, ptr %9, align 8
  %91 = add i64 %89, %90
  %92 = load i64, ptr %22, align 8
  %93 = sub i64 %91, %92
  store i64 %93, ptr %24, align 8
  %94 = load i64, ptr %15, align 8
  %95 = load i64, ptr %23, align 8
  %96 = add i64 %94, %95
  store i64 %96, ptr %25, align 8
  %97 = load i64, ptr %10, align 8
  %98 = load i64, ptr %25, align 8
  %99 = call i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %97, i64 noundef %98)
  store i64 %99, ptr %26, align 8
  %100 = load i64, ptr %26, align 8
  %101 = call i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %100)
  %102 = load i64, ptr %10, align 8
  %103 = add i64 %101, %102
  %104 = load i64, ptr %25, align 8
  %105 = sub i64 %103, %104
  store i64 %105, ptr %27, align 8
  %106 = load i64, ptr %16, align 8
  %107 = load i64, ptr %26, align 8
  %108 = add i64 %106, %107
  store i64 %108, ptr %28, align 8
  %109 = load i64, ptr %11, align 8
  %110 = load i64, ptr %28, align 8
  %111 = call i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %109, i64 noundef %110)
  store i64 %111, ptr %29, align 8
  %112 = load i64, ptr %29, align 8
  %113 = shl i64 %112, 40
  %114 = load i64, ptr %11, align 8
  %115 = add i64 %113, %114
  %116 = load i64, ptr %28, align 8
  %117 = sub i64 %115, %116
  store i64 %117, ptr %30, align 8
  %118 = load ptr, ptr %4, align 4
  %119 = load i64, ptr %18, align 8
  %120 = load i64, ptr %21, align 8
  %121 = load i64, ptr %24, align 8
  %122 = load i64, ptr %27, align 8
  %123 = load i64, ptr %30, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %118, i64 noundef %119, i64 noundef %120, i64 noundef %121, i64 noundef %122, i64 noundef %123)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = sub i64 %5, %6
  %8 = lshr i64 %7, 63
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = shl i64 %3, 56
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_choose(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i64 %3, ptr %8, align 8
  %25 = load i64, ptr %8, align 8
  %26 = sub i64 %25, 1
  store i64 %26, ptr %9, align 8
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds i64, ptr %27, i32 0
  %29 = load i64, ptr %28, align 4
  store i64 %29, ptr %10, align 8
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds i64, ptr %30, i32 1
  %32 = load i64, ptr %31, align 4
  store i64 %32, ptr %11, align 8
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds i64, ptr %33, i32 2
  %35 = load i64, ptr %34, align 4
  store i64 %35, ptr %12, align 8
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr inbounds i64, ptr %36, i32 3
  %38 = load i64, ptr %37, align 4
  store i64 %38, ptr %13, align 8
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds i64, ptr %39, i32 4
  %41 = load i64, ptr %40, align 4
  store i64 %41, ptr %14, align 8
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr inbounds i64, ptr %42, i32 0
  %44 = load i64, ptr %43, align 4
  store i64 %44, ptr %15, align 8
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr inbounds i64, ptr %45, i32 1
  %47 = load i64, ptr %46, align 4
  store i64 %47, ptr %16, align 8
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr inbounds i64, ptr %48, i32 2
  %50 = load i64, ptr %49, align 4
  store i64 %50, ptr %17, align 8
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr inbounds i64, ptr %51, i32 3
  %53 = load i64, ptr %52, align 4
  store i64 %53, ptr %18, align 8
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds i64, ptr %54, i32 4
  %56 = load i64, ptr %55, align 4
  store i64 %56, ptr %19, align 8
  %57 = load i64, ptr %15, align 8
  %58 = load i64, ptr %10, align 8
  %59 = xor i64 %57, %58
  %60 = load i64, ptr %9, align 8
  %61 = and i64 %59, %60
  %62 = load i64, ptr %10, align 8
  %63 = xor i64 %61, %62
  store i64 %63, ptr %20, align 8
  %64 = load i64, ptr %16, align 8
  %65 = load i64, ptr %11, align 8
  %66 = xor i64 %64, %65
  %67 = load i64, ptr %9, align 8
  %68 = and i64 %66, %67
  %69 = load i64, ptr %11, align 8
  %70 = xor i64 %68, %69
  store i64 %70, ptr %21, align 8
  %71 = load i64, ptr %17, align 8
  %72 = load i64, ptr %12, align 8
  %73 = xor i64 %71, %72
  %74 = load i64, ptr %9, align 8
  %75 = and i64 %73, %74
  %76 = load i64, ptr %12, align 8
  %77 = xor i64 %75, %76
  store i64 %77, ptr %22, align 8
  %78 = load i64, ptr %18, align 8
  %79 = load i64, ptr %13, align 8
  %80 = xor i64 %78, %79
  %81 = load i64, ptr %9, align 8
  %82 = and i64 %80, %81
  %83 = load i64, ptr %13, align 8
  %84 = xor i64 %82, %83
  store i64 %84, ptr %23, align 8
  %85 = load i64, ptr %19, align 8
  %86 = load i64, ptr %14, align 8
  %87 = xor i64 %85, %86
  %88 = load i64, ptr %9, align 8
  %89 = and i64 %87, %88
  %90 = load i64, ptr %14, align 8
  %91 = xor i64 %89, %90
  store i64 %91, ptr %24, align 8
  %92 = load ptr, ptr %5, align 4
  %93 = load i64, ptr %20, align 8
  %94 = load i64, ptr %21, align 8
  %95 = load i64, ptr %22, align 8
  %96 = load i64, ptr %23, align 8
  %97 = load i64, ptr %24, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %92, i64 noundef %93, i64 noundef %94, i64 noundef %95, i64 noundef %96, i64 noundef %97)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @store32(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %5, ptr align 4 %4, i32 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @__uint32_identity(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [20 x i64], align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 160, i1 false)
  %6 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_G_make_g(ptr noundef %6)
  %7 = load ptr, ptr %3, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_Ladder_point_mul(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_PointCompress_point_compress(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [15 x i64], align 8
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 120, i1 false)
  %17 = getelementptr inbounds [15 x i64], ptr %5, i32 0, i32 0
  %18 = getelementptr inbounds i64, ptr %17, i32 5
  store ptr %18, ptr %6, align 4
  %19 = getelementptr inbounds [15 x i64], ptr %5, i32 0, i32 0
  %20 = getelementptr inbounds i64, ptr %19, i32 10
  store ptr %20, ptr %7, align 4
  %21 = getelementptr inbounds [15 x i64], ptr %5, i32 0, i32 0
  store ptr %21, ptr %8, align 4
  %22 = getelementptr inbounds [15 x i64], ptr %5, i32 0, i32 0
  %23 = getelementptr inbounds i64, ptr %22, i32 5
  store ptr %23, ptr %9, align 4
  %24 = getelementptr inbounds [15 x i64], ptr %5, i32 0, i32 0
  %25 = getelementptr inbounds i64, ptr %24, i32 10
  store ptr %25, ptr %10, align 4
  %26 = load ptr, ptr %4, align 4
  %27 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %26)
  store ptr %27, ptr %11, align 4
  %28 = load ptr, ptr %4, align 4
  %29 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %28)
  store ptr %29, ptr %12, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %30)
  store ptr %31, ptr %13, align 4
  %32 = load ptr, ptr %8, align 4
  %33 = load ptr, ptr %13, align 4
  call void @Hacl_Bignum25519_inverse(ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %9, align 4
  %35 = load ptr, ptr %11, align 4
  %36 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %34, ptr noundef %35, ptr noundef %36)
  %37 = load ptr, ptr %9, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %37)
  %38 = load ptr, ptr %10, align 4
  %39 = load ptr, ptr %12, align 4
  %40 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %38, ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %41)
  %42 = load ptr, ptr %6, align 4
  %43 = call i64 @Hacl_Impl_Ed25519_PointCompress_x_mod_2(ptr noundef %42)
  store i64 %43, ptr %14, align 8
  %44 = load ptr, ptr %3, align 4
  %45 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_Store51_store_51_(ptr noundef %44, ptr noundef %45)
  %46 = load i64, ptr %14, align 8
  %47 = trunc i64 %46 to i8
  store i8 %47, ptr %15, align 1
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds i8, ptr %48, i32 31
  %50 = load i8, ptr %49, align 1
  store i8 %50, ptr %16, align 1
  %51 = load i8, ptr %16, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, ptr %15, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 7
  %56 = add nsw i32 %52, %55
  %57 = trunc i32 %56 to i8
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds i8, ptr %58, i32 31
  store i8 %57, ptr %59, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_G_make_g(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %7)
  store ptr %8, ptr %3, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %9)
  store ptr %10, ptr %4, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %11)
  store ptr %12, ptr %5, align 4
  %13 = load ptr, ptr %2, align 4
  %14 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %13)
  store ptr %14, ptr %6, align 4
  %15 = load ptr, ptr %3, align 4
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %15, i64 noundef 1738742601995546, i64 noundef 1146398526822698, i64 noundef 2070867633025821, i64 noundef 562264141797630, i64 noundef 587772402128613)
  %16 = load ptr, ptr %4, align 4
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %16, i64 noundef 1801439850948184, i64 noundef 1351079888211148, i64 noundef 450359962737049, i64 noundef 900719925474099, i64 noundef 1801439850948198)
  %17 = load ptr, ptr %5, align 4
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %17, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  %18 = load ptr, ptr %6, align 4
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %18, i64 noundef 1841354044333475, i64 noundef 16398895984059, i64 noundef 755974180946558, i64 noundef 900171276175154, i64 noundef 1821297809914039)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Ladder_point_mul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [80 x i64], align 8
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %7, i8 0, i32 640, i1 false)
  %10 = getelementptr inbounds [80 x i64], ptr %7, i32 0, i32 0
  store ptr %10, ptr %8, align 4
  %11 = getelementptr inbounds [80 x i64], ptr %7, i32 0, i32 0
  %12 = getelementptr inbounds i64, ptr %11, i32 20
  store ptr %12, ptr %9, align 4
  %13 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Ed25519_Ladder_make_point_inf(ptr noundef %13)
  %14 = load ptr, ptr %9, align 4
  %15 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_Ed25519_SwapConditional_copy(ptr noundef %14, ptr noundef %15)
  %16 = getelementptr inbounds [80 x i64], ptr %7, i32 0, i32 0
  %17 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_Ed25519_Ladder_point_mul_(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %4, align 4
  %19 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Ed25519_SwapConditional_copy(ptr noundef %18, ptr noundef %19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds i64, ptr %3, i32 5
  ret ptr %4
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds i64, ptr %3, i32 10
  ret ptr %4
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds i64, ptr %3, i32 15
  ret ptr %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Ladder_make_point_inf(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %13 = load ptr, ptr %2, align 4
  store ptr %13, ptr %3, align 4
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds i64, ptr %14, i32 5
  store ptr %15, ptr %4, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 10
  store ptr %17, ptr %5, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds i64, ptr %18, i32 15
  store ptr %19, ptr %6, align 4
  store i64 0, ptr %7, align 8
  %20 = load ptr, ptr %3, align 4
  %21 = load i64, ptr %7, align 8
  %22 = load i64, ptr %7, align 8
  %23 = load i64, ptr %7, align 8
  %24 = load i64, ptr %7, align 8
  %25 = load i64, ptr %7, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25)
  store i64 0, ptr %8, align 8
  store i64 1, ptr %9, align 8
  %26 = load ptr, ptr %4, align 4
  %27 = load i64, ptr %9, align 8
  %28 = load i64, ptr %8, align 8
  %29 = load i64, ptr %8, align 8
  %30 = load i64, ptr %8, align 8
  %31 = load i64, ptr %8, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31)
  store i64 0, ptr %10, align 8
  store i64 1, ptr %11, align 8
  %32 = load ptr, ptr %5, align 4
  %33 = load i64, ptr %11, align 8
  %34 = load i64, ptr %10, align 8
  %35 = load i64, ptr %10, align 8
  %36 = load i64, ptr %10, align 8
  %37 = load i64, ptr %10, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %32, i64 noundef %33, i64 noundef %34, i64 noundef %35, i64 noundef %36, i64 noundef %37)
  store i64 0, ptr %12, align 8
  %38 = load ptr, ptr %6, align 4
  %39 = load i64, ptr %12, align 8
  %40 = load i64, ptr %12, align 8
  %41 = load i64, ptr %12, align 8
  %42 = load i64, ptr %12, align 8
  %43 = load i64, ptr %12, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %38, i64 noundef %39, i64 noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_SwapConditional_copy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 4 %6, i32 160, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Ladder_point_mul_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %6

6:                                                ; preds = %15, %2
  %7 = load i32, ptr %5, align 4
  %8 = icmp ult i32 %7, 256
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = load i32, ptr %5, align 4
  %13 = sub i32 256, %12
  %14 = sub i32 %13, 1
  call void @Hacl_Impl_Ed25519_Ladder_Step_loop_step(ptr noundef %10, ptr noundef %11, i32 noundef %14)
  br label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %5, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %5, align 4
  br label %6, !llvm.loop !18

18:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Ladder_Step_loop_step(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  %10 = call zeroext i8 @Hacl_Impl_Ed25519_Ladder_Step_ith_bit(ptr noundef %8, i32 noundef %9)
  store i8 %10, ptr %7, align 1
  %11 = load ptr, ptr %4, align 4
  %12 = load ptr, ptr %5, align 4
  %13 = load i32, ptr %6, align 4
  %14 = load i8, ptr %7, align 1
  call void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_1(ptr noundef %11, ptr noundef %12, i32 noundef %13, i8 noundef zeroext %14)
  %15 = load ptr, ptr %4, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = load i32, ptr %6, align 4
  call void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_2(ptr noundef %15, ptr noundef %16, i32 noundef %17)
  %18 = load ptr, ptr %4, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = load i32, ptr %6, align 4
  %21 = load i8, ptr %7, align 1
  call void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_3(ptr noundef %18, ptr noundef %19, i32 noundef %20, i8 noundef zeroext %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @Hacl_Impl_Ed25519_Ladder_Step_ith_bit(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %8 = load i32, ptr %4, align 4
  %9 = lshr i32 %8, 3
  store i32 %9, ptr %5, align 4
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 7
  store i32 %11, ptr %6, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = load i32, ptr %5, align 4
  %14 = getelementptr inbounds i8, ptr %12, i32 %13
  %15 = load i8, ptr %14, align 1
  store i8 %15, ptr %7, align 1
  %16 = load i8, ptr %7, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, ptr %6, align 4
  %19 = ashr i32 %17, %18
  %20 = and i32 %19, 1
  %21 = trunc i32 %20 to i8
  ret i8 %21
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i8 %3, ptr %8, align 1
  %12 = load ptr, ptr %5, align 4
  store ptr %12, ptr %9, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds i64, ptr %13, i32 20
  store ptr %14, ptr %10, align 4
  %15 = load i8, ptr %8, align 1
  %16 = zext i8 %15 to i64
  store i64 %16, ptr %11, align 8
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = load i64, ptr %11, align 8
  call void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond_inplace(ptr noundef %17, ptr noundef %18, i64 noundef %19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_2(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %11 = load ptr, ptr %4, align 4
  store ptr %11, ptr %7, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds i64, ptr %12, i32 20
  store ptr %13, ptr %8, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds i64, ptr %14, i32 40
  store ptr %15, ptr %9, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 60
  store ptr %17, ptr %10, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_Ed25519_PointDouble_point_double(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %10, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Ed25519_PointAdd_point_add(ptr noundef %20, ptr noundef %21, ptr noundef %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_3(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i64, align 8
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i8 %3, ptr %8, align 1
  %14 = load ptr, ptr %5, align 4
  store ptr %14, ptr %9, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds i64, ptr %15, i32 20
  store ptr %16, ptr %10, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds i64, ptr %17, i32 40
  store ptr %18, ptr %11, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds i64, ptr %19, i32 60
  store ptr %20, ptr %12, align 4
  %21 = load i8, ptr %8, align 1
  %22 = zext i8 %21 to i64
  store i64 %22, ptr %13, align 8
  %23 = load ptr, ptr %9, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = load ptr, ptr %11, align 4
  %26 = load ptr, ptr %12, align 4
  %27 = load i64, ptr %13, align 8
  call void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond(ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, i64 noundef %27)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond_inplace(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i64, ptr %6, align 8
  call void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_inplace(ptr noundef %7, ptr noundef %8, i64 noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_inplace(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
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
  %11 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %10)
  %12 = load ptr, ptr %5, align 4
  %13 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %12)
  %14 = load ptr, ptr %4, align 4
  %15 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %14)
  %16 = load ptr, ptr %5, align 4
  %17 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %16)
  %18 = load i64, ptr %7, align 8
  call void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %11, ptr noundef %13, ptr noundef %15, ptr noundef %17, i64 noundef %18)
  %19 = load ptr, ptr %4, align 4
  %20 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %19)
  %21 = load ptr, ptr %5, align 4
  %22 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %21)
  %23 = load ptr, ptr %4, align 4
  %24 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %23)
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %25)
  %27 = load i64, ptr %7, align 8
  call void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef %26, i64 noundef %27)
  %28 = load ptr, ptr %4, align 4
  %29 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %28)
  %30 = load ptr, ptr %5, align 4
  %31 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %30)
  %32 = load ptr, ptr %4, align 4
  %33 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %32)
  %34 = load ptr, ptr %5, align 4
  %35 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %34)
  %36 = load i64, ptr %7, align 8
  call void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %29, ptr noundef %31, ptr noundef %33, ptr noundef %35, i64 noundef %36)
  %37 = load ptr, ptr %4, align 4
  %38 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %37)
  %39 = load ptr, ptr %5, align 4
  %40 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %39)
  %41 = load ptr, ptr %4, align 4
  %42 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %41)
  %43 = load ptr, ptr %5, align 4
  %44 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %43)
  %45 = load i64, ptr %7, align 8
  call void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %38, ptr noundef %40, ptr noundef %42, ptr noundef %44, i64 noundef %45)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i64 %4, ptr %10, align 8
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr inbounds i64, ptr %36, i32 0
  %38 = load i64, ptr %37, align 4
  store i64 %38, ptr %11, align 8
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr inbounds i64, ptr %39, i32 1
  %41 = load i64, ptr %40, align 4
  store i64 %41, ptr %12, align 8
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds i64, ptr %42, i32 2
  %44 = load i64, ptr %43, align 4
  store i64 %44, ptr %13, align 8
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr inbounds i64, ptr %45, i32 3
  %47 = load i64, ptr %46, align 4
  store i64 %47, ptr %14, align 8
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr inbounds i64, ptr %48, i32 4
  %50 = load i64, ptr %49, align 4
  store i64 %50, ptr %15, align 8
  %51 = load ptr, ptr %9, align 4
  %52 = getelementptr inbounds i64, ptr %51, i32 0
  %53 = load i64, ptr %52, align 4
  store i64 %53, ptr %16, align 8
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr inbounds i64, ptr %54, i32 1
  %56 = load i64, ptr %55, align 4
  store i64 %56, ptr %17, align 8
  %57 = load ptr, ptr %9, align 4
  %58 = getelementptr inbounds i64, ptr %57, i32 2
  %59 = load i64, ptr %58, align 4
  store i64 %59, ptr %18, align 8
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr inbounds i64, ptr %60, i32 3
  %62 = load i64, ptr %61, align 4
  store i64 %62, ptr %19, align 8
  %63 = load ptr, ptr %9, align 4
  %64 = getelementptr inbounds i64, ptr %63, i32 4
  %65 = load i64, ptr %64, align 4
  store i64 %65, ptr %20, align 8
  %66 = load i64, ptr %10, align 8
  %67 = load i64, ptr %11, align 8
  %68 = load i64, ptr %16, align 8
  %69 = xor i64 %67, %68
  %70 = and i64 %66, %69
  store i64 %70, ptr %21, align 8
  %71 = load i64, ptr %10, align 8
  %72 = load i64, ptr %12, align 8
  %73 = load i64, ptr %17, align 8
  %74 = xor i64 %72, %73
  %75 = and i64 %71, %74
  store i64 %75, ptr %22, align 8
  %76 = load i64, ptr %10, align 8
  %77 = load i64, ptr %13, align 8
  %78 = load i64, ptr %18, align 8
  %79 = xor i64 %77, %78
  %80 = and i64 %76, %79
  store i64 %80, ptr %23, align 8
  %81 = load i64, ptr %10, align 8
  %82 = load i64, ptr %14, align 8
  %83 = load i64, ptr %19, align 8
  %84 = xor i64 %82, %83
  %85 = and i64 %81, %84
  store i64 %85, ptr %24, align 8
  %86 = load i64, ptr %10, align 8
  %87 = load i64, ptr %15, align 8
  %88 = load i64, ptr %20, align 8
  %89 = xor i64 %87, %88
  %90 = and i64 %86, %89
  store i64 %90, ptr %25, align 8
  %91 = load i64, ptr %11, align 8
  %92 = load i64, ptr %21, align 8
  %93 = xor i64 %91, %92
  store i64 %93, ptr %26, align 8
  %94 = load i64, ptr %16, align 8
  %95 = load i64, ptr %21, align 8
  %96 = xor i64 %94, %95
  store i64 %96, ptr %27, align 8
  %97 = load i64, ptr %12, align 8
  %98 = load i64, ptr %22, align 8
  %99 = xor i64 %97, %98
  store i64 %99, ptr %28, align 8
  %100 = load i64, ptr %17, align 8
  %101 = load i64, ptr %22, align 8
  %102 = xor i64 %100, %101
  store i64 %102, ptr %29, align 8
  %103 = load i64, ptr %13, align 8
  %104 = load i64, ptr %23, align 8
  %105 = xor i64 %103, %104
  store i64 %105, ptr %30, align 8
  %106 = load i64, ptr %18, align 8
  %107 = load i64, ptr %23, align 8
  %108 = xor i64 %106, %107
  store i64 %108, ptr %31, align 8
  %109 = load i64, ptr %14, align 8
  %110 = load i64, ptr %24, align 8
  %111 = xor i64 %109, %110
  store i64 %111, ptr %32, align 8
  %112 = load i64, ptr %19, align 8
  %113 = load i64, ptr %24, align 8
  %114 = xor i64 %112, %113
  store i64 %114, ptr %33, align 8
  %115 = load i64, ptr %15, align 8
  %116 = load i64, ptr %25, align 8
  %117 = xor i64 %115, %116
  store i64 %117, ptr %34, align 8
  %118 = load i64, ptr %20, align 8
  %119 = load i64, ptr %25, align 8
  %120 = xor i64 %118, %119
  store i64 %120, ptr %35, align 8
  %121 = load ptr, ptr %6, align 4
  %122 = load i64, ptr %26, align 8
  %123 = load i64, ptr %28, align 8
  %124 = load i64, ptr %30, align 8
  %125 = load i64, ptr %32, align 8
  %126 = load i64, ptr %34, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %121, i64 noundef %122, i64 noundef %123, i64 noundef %124, i64 noundef %125, i64 noundef %126)
  %127 = load ptr, ptr %7, align 4
  %128 = load i64, ptr %27, align 8
  %129 = load i64, ptr %29, align 8
  %130 = load i64, ptr %31, align 8
  %131 = load i64, ptr %33, align 8
  %132 = load i64, ptr %35, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %127, i64 noundef %128, i64 noundef %129, i64 noundef %130, i64 noundef %131, i64 noundef %132)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_PointDouble_point_double(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [30 x i64], align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 240, i1 false)
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds [30 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_PointDouble_point_double_(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_PointAdd_point_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [30 x i64], align 8
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
  %20 = alloca ptr, align 4
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
  %34 = alloca ptr, align 4
  %35 = alloca ptr, align 4
  %36 = alloca ptr, align 4
  %37 = alloca ptr, align 4
  %38 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %7, i8 0, i32 240, i1 false)
  %39 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  store ptr %39, ptr %8, align 4
  %40 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %41 = getelementptr inbounds i64, ptr %40, i32 5
  store ptr %41, ptr %9, align 4
  %42 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %43 = getelementptr inbounds i64, ptr %42, i32 10
  store ptr %43, ptr %10, align 4
  %44 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %45 = getelementptr inbounds i64, ptr %44, i32 15
  store ptr %45, ptr %11, align 4
  %46 = load ptr, ptr %5, align 4
  %47 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %46)
  store ptr %47, ptr %12, align 4
  %48 = load ptr, ptr %5, align 4
  %49 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %48)
  store ptr %49, ptr %13, align 4
  %50 = load ptr, ptr %6, align 4
  %51 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %50)
  store ptr %51, ptr %14, align 4
  %52 = load ptr, ptr %6, align 4
  %53 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %52)
  store ptr %53, ptr %15, align 4
  %54 = load ptr, ptr %8, align 4
  %55 = load ptr, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %54, ptr align 4 %55, i32 40, i1 false)
  %56 = load ptr, ptr %9, align 4
  %57 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %56, ptr align 4 %57, i32 40, i1 false)
  %58 = load ptr, ptr %8, align 4
  %59 = load ptr, ptr %13, align 4
  call void @Hacl_Bignum25519_fdifference_reduced(ptr noundef %58, ptr noundef %59)
  %60 = load ptr, ptr %9, align 4
  %61 = load ptr, ptr %15, align 4
  call void @Hacl_Bignum25519_fdifference(ptr noundef %60, ptr noundef %61)
  %62 = load ptr, ptr %10, align 4
  %63 = load ptr, ptr %8, align 4
  %64 = load ptr, ptr %9, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  %65 = load ptr, ptr %8, align 4
  %66 = load ptr, ptr %13, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %65, ptr align 4 %66, i32 40, i1 false)
  %67 = load ptr, ptr %9, align 4
  %68 = load ptr, ptr %15, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %67, ptr align 4 %68, i32 40, i1 false)
  %69 = load ptr, ptr %8, align 4
  %70 = load ptr, ptr %12, align 4
  call void @Hacl_Bignum25519_fsum(ptr noundef %69, ptr noundef %70)
  %71 = load ptr, ptr %9, align 4
  %72 = load ptr, ptr %14, align 4
  call void @Hacl_Bignum25519_fsum(ptr noundef %71, ptr noundef %72)
  %73 = load ptr, ptr %11, align 4
  %74 = load ptr, ptr %8, align 4
  %75 = load ptr, ptr %9, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %73, ptr noundef %74, ptr noundef %75)
  %76 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  store ptr %76, ptr %16, align 4
  %77 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %78 = getelementptr inbounds i64, ptr %77, i32 5
  store ptr %78, ptr %17, align 4
  %79 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %80 = getelementptr inbounds i64, ptr %79, i32 10
  store ptr %80, ptr %18, align 4
  %81 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %82 = getelementptr inbounds i64, ptr %81, i32 20
  store ptr %82, ptr %19, align 4
  %83 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %84 = getelementptr inbounds i64, ptr %83, i32 25
  store ptr %84, ptr %20, align 4
  %85 = load ptr, ptr %5, align 4
  %86 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %85)
  store ptr %86, ptr %21, align 4
  %87 = load ptr, ptr %5, align 4
  %88 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %87)
  store ptr %88, ptr %22, align 4
  %89 = load ptr, ptr %6, align 4
  %90 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %89)
  store ptr %90, ptr %23, align 4
  %91 = load ptr, ptr %6, align 4
  %92 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %91)
  store ptr %92, ptr %24, align 4
  %93 = load ptr, ptr %16, align 4
  %94 = load ptr, ptr %22, align 4
  call void @Hacl_Bignum25519_times_2d(ptr noundef %93, ptr noundef %94)
  %95 = load ptr, ptr %17, align 4
  %96 = load ptr, ptr %16, align 4
  %97 = load ptr, ptr %24, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %95, ptr noundef %96, ptr noundef %97)
  %98 = load ptr, ptr %16, align 4
  %99 = load ptr, ptr %21, align 4
  call void @Hacl_Bignum25519_times_2(ptr noundef %98, ptr noundef %99)
  %100 = load ptr, ptr %19, align 4
  %101 = load ptr, ptr %16, align 4
  %102 = load ptr, ptr %23, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %100, ptr noundef %101, ptr noundef %102)
  %103 = load ptr, ptr %16, align 4
  %104 = load ptr, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %103, ptr align 4 %104, i32 40, i1 false)
  %105 = load ptr, ptr %20, align 4
  %106 = load ptr, ptr %17, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %105, ptr align 4 %106, i32 40, i1 false)
  %107 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  store ptr %107, ptr %25, align 4
  %108 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %109 = getelementptr inbounds i64, ptr %108, i32 5
  store ptr %109, ptr %26, align 4
  %110 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %111 = getelementptr inbounds i64, ptr %110, i32 10
  store ptr %111, ptr %27, align 4
  %112 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %113 = getelementptr inbounds i64, ptr %112, i32 15
  store ptr %113, ptr %28, align 4
  %114 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %115 = getelementptr inbounds i64, ptr %114, i32 20
  store ptr %115, ptr %29, align 4
  %116 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %117 = getelementptr inbounds i64, ptr %116, i32 25
  store ptr %117, ptr %30, align 4
  %118 = load ptr, ptr %25, align 4
  %119 = load ptr, ptr %28, align 4
  call void @Hacl_Bignum25519_fdifference_reduced(ptr noundef %118, ptr noundef %119)
  %120 = load ptr, ptr %30, align 4
  %121 = load ptr, ptr %29, align 4
  call void @Hacl_Bignum25519_fdifference(ptr noundef %120, ptr noundef %121)
  %122 = load ptr, ptr %29, align 4
  %123 = load ptr, ptr %26, align 4
  call void @Hacl_Bignum25519_fsum(ptr noundef %122, ptr noundef %123)
  %124 = load ptr, ptr %28, align 4
  %125 = load ptr, ptr %27, align 4
  call void @Hacl_Bignum25519_fsum(ptr noundef %124, ptr noundef %125)
  %126 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  store ptr %126, ptr %31, align 4
  %127 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %128 = getelementptr inbounds i64, ptr %127, i32 15
  store ptr %128, ptr %32, align 4
  %129 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %130 = getelementptr inbounds i64, ptr %129, i32 20
  store ptr %130, ptr %33, align 4
  %131 = getelementptr inbounds [30 x i64], ptr %7, i32 0, i32 0
  %132 = getelementptr inbounds i64, ptr %131, i32 25
  store ptr %132, ptr %34, align 4
  %133 = load ptr, ptr %4, align 4
  %134 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %133)
  store ptr %134, ptr %35, align 4
  %135 = load ptr, ptr %4, align 4
  %136 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %135)
  store ptr %136, ptr %36, align 4
  %137 = load ptr, ptr %4, align 4
  %138 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %137)
  store ptr %138, ptr %37, align 4
  %139 = load ptr, ptr %4, align 4
  %140 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %139)
  store ptr %140, ptr %38, align 4
  %141 = load ptr, ptr %35, align 4
  %142 = load ptr, ptr %31, align 4
  %143 = load ptr, ptr %34, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %141, ptr noundef %142, ptr noundef %143)
  %144 = load ptr, ptr %36, align 4
  %145 = load ptr, ptr %33, align 4
  %146 = load ptr, ptr %32, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %144, ptr noundef %145, ptr noundef %146)
  %147 = load ptr, ptr %38, align 4
  %148 = load ptr, ptr %31, align 4
  %149 = load ptr, ptr %32, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %147, ptr noundef %148, ptr noundef %149)
  %150 = load ptr, ptr %37, align 4
  %151 = load ptr, ptr %33, align 4
  %152 = load ptr, ptr %34, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %150, ptr noundef %151, ptr noundef %152)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_PointDouble_point_double_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds i64, ptr %15, i32 5
  store ptr %16, ptr %7, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds i64, ptr %17, i32 10
  store ptr %18, ptr %8, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds i64, ptr %19, i32 15
  store ptr %20, ptr %9, align 4
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds i64, ptr %21, i32 25
  store ptr %22, ptr %10, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %23)
  store ptr %24, ptr %11, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %25)
  store ptr %26, ptr %12, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %27)
  store ptr %28, ptr %13, align 4
  %29 = load ptr, ptr %4, align 4
  %30 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %29)
  store ptr %30, ptr %14, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_Ed25519_PointDouble_point_double_step_1(ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %5, align 4
  %34 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_Ed25519_PointDouble_point_double_step_2(ptr noundef %33, ptr noundef %34)
  %35 = load ptr, ptr %11, align 4
  %36 = load ptr, ptr %9, align 4
  %37 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  %38 = load ptr, ptr %12, align 4
  %39 = load ptr, ptr %7, align 4
  %40 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %38, ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %14, align 4
  %42 = load ptr, ptr %8, align 4
  %43 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %41, ptr noundef %42, ptr noundef %43)
  %44 = load ptr, ptr %13, align 4
  %45 = load ptr, ptr %9, align 4
  %46 = load ptr, ptr %7, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %44, ptr noundef %45, ptr noundef %46)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_PointDouble_point_double_step_1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %12 = load ptr, ptr %4, align 4
  store ptr %12, ptr %5, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds i64, ptr %13, i32 5
  store ptr %14, ptr %6, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds i64, ptr %15, i32 10
  store ptr %16, ptr %7, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds i64, ptr %17, i32 15
  store ptr %18, ptr %8, align 4
  %19 = load ptr, ptr %3, align 4
  %20 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %19)
  store ptr %20, ptr %9, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %21)
  store ptr %22, ptr %10, align 4
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %23)
  store ptr %24, ptr %11, align 4
  %25 = load ptr, ptr %5, align 4
  %26 = load ptr, ptr %9, align 4
  call void @Hacl_Bignum25519_fsquare(ptr noundef %25, ptr noundef %26)
  %27 = load ptr, ptr %6, align 4
  %28 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum25519_fsquare(ptr noundef %27, ptr noundef %28)
  %29 = load ptr, ptr %7, align 4
  %30 = load ptr, ptr %11, align 4
  call void @Hacl_Bignum25519_fsquare(ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %8, align 4
  %32 = load ptr, ptr %7, align 4
  call void @Hacl_Bignum25519_times_2(ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %7, align 4
  %34 = load ptr, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %33, ptr align 4 %34, i32 40, i1 false)
  %35 = load ptr, ptr %7, align 4
  %36 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum25519_fsum(ptr noundef %35, ptr noundef %36)
  %37 = load ptr, ptr %7, align 4
  call void @Hacl_Bignum25519_reduce_513(ptr noundef %37)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_PointDouble_point_double_step_2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %13 = load ptr, ptr %4, align 4
  store ptr %13, ptr %5, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds i64, ptr %14, i32 5
  store ptr %15, ptr %6, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 10
  store ptr %17, ptr %7, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds i64, ptr %18, i32 15
  store ptr %19, ptr %8, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds i64, ptr %20, i32 20
  store ptr %21, ptr %9, align 4
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds i64, ptr %22, i32 25
  store ptr %23, ptr %10, align 4
  %24 = load ptr, ptr %3, align 4
  %25 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %24)
  store ptr %25, ptr %11, align 4
  %26 = load ptr, ptr %3, align 4
  %27 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %26)
  store ptr %27, ptr %12, align 4
  %28 = load ptr, ptr %9, align 4
  %29 = load ptr, ptr %11, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %28, ptr align 4 %29, i32 40, i1 false)
  %30 = load ptr, ptr %9, align 4
  %31 = load ptr, ptr %12, align 4
  call void @Hacl_Bignum25519_fsum(ptr noundef %30, ptr noundef %31)
  %32 = load ptr, ptr %10, align 4
  %33 = load ptr, ptr %9, align 4
  call void @Hacl_Bignum25519_fsquare(ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %9, align 4
  %35 = load ptr, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %34, ptr align 4 %35, i32 40, i1 false)
  %36 = load ptr, ptr %10, align 4
  %37 = load ptr, ptr %9, align 4
  call void @Hacl_Bignum25519_fdifference(ptr noundef %36, ptr noundef %37)
  %38 = load ptr, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @Hacl_Bignum25519_fdifference_reduced(ptr noundef %38, ptr noundef %39)
  %40 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum25519_reduce_513(ptr noundef %40)
  %41 = load ptr, ptr %8, align 4
  %42 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum25519_fsum(ptr noundef %41, ptr noundef %42)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum25519_fmul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_fmul(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum25519_fsquare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
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
  br label %8, !llvm.loop !19

17:                                               ; preds = %8
  %18 = load ptr, ptr %3, align 4
  %19 = load ptr, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 4 %19, i32 40, i1 false)
  %20 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %5, i32 0, i32 0
  %21 = load ptr, ptr %3, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_(ptr noundef %20, ptr noundef %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum25519_times_2(ptr noundef %0, ptr noundef %1) #0 {
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
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds i64, ptr %15, i32 0
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %5, align 8
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds i64, ptr %18, i32 1
  %20 = load i64, ptr %19, align 4
  store i64 %20, ptr %6, align 8
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds i64, ptr %21, i32 2
  %23 = load i64, ptr %22, align 4
  store i64 %23, ptr %7, align 8
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds i64, ptr %24, i32 3
  %26 = load i64, ptr %25, align 4
  store i64 %26, ptr %8, align 8
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds i64, ptr %27, i32 4
  %29 = load i64, ptr %28, align 4
  store i64 %29, ptr %9, align 8
  %30 = load i64, ptr %5, align 8
  %31 = mul i64 2, %30
  store i64 %31, ptr %10, align 8
  %32 = load i64, ptr %6, align 8
  %33 = mul i64 2, %32
  store i64 %33, ptr %11, align 8
  %34 = load i64, ptr %7, align 8
  %35 = mul i64 2, %34
  store i64 %35, ptr %12, align 8
  %36 = load i64, ptr %8, align 8
  %37 = mul i64 2, %36
  store i64 %37, ptr %13, align 8
  %38 = load i64, ptr %9, align 8
  %39 = mul i64 2, %38
  store i64 %39, ptr %14, align 8
  %40 = load ptr, ptr %3, align 4
  %41 = load i64, ptr %10, align 8
  %42 = load i64, ptr %11, align 8
  %43 = load i64, ptr %12, align 8
  %44 = load i64, ptr %13, align 8
  %45 = load i64, ptr %14, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %40, i64 noundef %41, i64 noundef %42, i64 noundef %43, i64 noundef %44, i64 noundef %45)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum25519_fsum(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_fsum(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum25519_reduce_513(ptr noundef %0) #0 {
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
  %19 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds i64, ptr %20, i32 0
  %22 = load i64, ptr %21, align 4
  store i64 %22, ptr %3, align 8
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds i64, ptr %23, i32 1
  %25 = load i64, ptr %24, align 4
  store i64 %25, ptr %4, align 8
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds i64, ptr %26, i32 2
  %28 = load i64, ptr %27, align 4
  store i64 %28, ptr %5, align 8
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds i64, ptr %29, i32 3
  %31 = load i64, ptr %30, align 4
  store i64 %31, ptr %6, align 8
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds i64, ptr %32, i32 4
  %34 = load i64, ptr %33, align 4
  store i64 %34, ptr %7, align 8
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %3, align 8
  %37 = lshr i64 %36, 51
  %38 = add i64 %35, %37
  store i64 %38, ptr %8, align 8
  %39 = load i64, ptr %3, align 8
  %40 = and i64 %39, 2251799813685247
  store i64 %40, ptr %9, align 8
  %41 = load i64, ptr %5, align 8
  %42 = load i64, ptr %8, align 8
  %43 = lshr i64 %42, 51
  %44 = add i64 %41, %43
  store i64 %44, ptr %10, align 8
  %45 = load i64, ptr %8, align 8
  %46 = and i64 %45, 2251799813685247
  store i64 %46, ptr %11, align 8
  %47 = load i64, ptr %6, align 8
  %48 = load i64, ptr %10, align 8
  %49 = lshr i64 %48, 51
  %50 = add i64 %47, %49
  store i64 %50, ptr %12, align 8
  %51 = load i64, ptr %10, align 8
  %52 = and i64 %51, 2251799813685247
  store i64 %52, ptr %13, align 8
  %53 = load i64, ptr %7, align 8
  %54 = load i64, ptr %12, align 8
  %55 = lshr i64 %54, 51
  %56 = add i64 %53, %55
  store i64 %56, ptr %14, align 8
  %57 = load i64, ptr %12, align 8
  %58 = and i64 %57, 2251799813685247
  store i64 %58, ptr %15, align 8
  %59 = load ptr, ptr %2, align 4
  %60 = load i64, ptr %9, align 8
  %61 = load i64, ptr %11, align 8
  %62 = load i64, ptr %13, align 8
  %63 = load i64, ptr %15, align 8
  %64 = load i64, ptr %14, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %59, i64 noundef %60, i64 noundef %61, i64 noundef %62, i64 noundef %63, i64 noundef %64)
  %65 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Modulo_carry_top(ptr noundef %65)
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr inbounds i64, ptr %66, i32 0
  %68 = load i64, ptr %67, align 4
  store i64 %68, ptr %16, align 8
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr inbounds i64, ptr %69, i32 1
  %71 = load i64, ptr %70, align 4
  store i64 %71, ptr %17, align 8
  %72 = load i64, ptr %16, align 8
  %73 = and i64 %72, 2251799813685247
  store i64 %73, ptr %18, align 8
  %74 = load i64, ptr %17, align 8
  %75 = load i64, ptr %16, align 8
  %76 = lshr i64 %75, 51
  %77 = add i64 %74, %76
  store i64 %77, ptr %19, align 8
  %78 = load i64, ptr %18, align 8
  %79 = load ptr, ptr %2, align 4
  %80 = getelementptr inbounds i64, ptr %79, i32 0
  store i64 %78, ptr %80, align 4
  %81 = load i64, ptr %19, align 8
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr inbounds i64, ptr %82, i32 1
  store i64 %81, ptr %83, align 4
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
define internal void @Hacl_Bignum25519_fdifference(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_fdifference(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum25519_fdifference_reduced(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum25519_fdifference(ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %3, align 4
  call void @Hacl_Bignum25519_reduce_513(ptr noundef %7)
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
  br label %24, !llvm.loop !20

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
define internal void @Hacl_Bignum25519_times_2d(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [5 x i64], align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 40, i1 false)
  %6 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %6, i64 noundef 1859910466990425, i64 noundef 932731440258426, i64 noundef 1072319116312658, i64 noundef 1815898335770999, i64 noundef 633789495995903)
  %7 = load ptr, ptr %3, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Bignum25519_fmul(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i64 %4, ptr %10, align 8
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = load i64, ptr %10, align 8
  call void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i64 noundef %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i64 %4, ptr %10, align 8
  %12 = load i64, ptr %10, align 8
  %13 = sub i64 0, %12
  store i64 %13, ptr %11, align 8
  %14 = load ptr, ptr %6, align 4
  %15 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %14)
  %16 = load ptr, ptr %7, align 4
  %17 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %16)
  %18 = load ptr, ptr %8, align 4
  %19 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %18)
  %20 = load ptr, ptr %9, align 4
  %21 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %20)
  %22 = load i64, ptr %11, align 8
  call void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %21, i64 noundef %22)
  %23 = load ptr, ptr %6, align 4
  %24 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %23)
  %25 = load ptr, ptr %7, align 4
  %26 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %25)
  %27 = load ptr, ptr %8, align 4
  %28 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %27)
  %29 = load ptr, ptr %9, align 4
  %30 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %29)
  %31 = load i64, ptr %11, align 8
  call void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %24, ptr noundef %26, ptr noundef %28, ptr noundef %30, i64 noundef %31)
  %32 = load ptr, ptr %6, align 4
  %33 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %32)
  %34 = load ptr, ptr %7, align 4
  %35 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %34)
  %36 = load ptr, ptr %8, align 4
  %37 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %36)
  %38 = load ptr, ptr %9, align 4
  %39 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %38)
  %40 = load i64, ptr %11, align 8
  call void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %33, ptr noundef %35, ptr noundef %37, ptr noundef %39, i64 noundef %40)
  %41 = load ptr, ptr %6, align 4
  %42 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %41)
  %43 = load ptr, ptr %7, align 4
  %44 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %43)
  %45 = load ptr, ptr %8, align 4
  %46 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %45)
  %47 = load ptr, ptr %9, align 4
  %48 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %47)
  %49 = load i64, ptr %11, align 8
  call void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef %48, i64 noundef %49)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum25519_inverse(ptr noundef %0, ptr noundef %1) #0 {
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
define internal void @Hacl_Bignum25519_reduce(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @Hacl_EC_Format_reduce(ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @Hacl_Impl_Ed25519_PointCompress_x_mod_2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds i64, ptr %4, i32 0
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %3, align 8
  %7 = load i64, ptr %3, align 8
  %8 = and i64 %7, 1
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Store51_store_51_(ptr noundef %0, ptr noundef %1) #0 {
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
  br label %10, !llvm.loop !21

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
  br label %8, !llvm.loop !22

17:                                               ; preds = %8
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], ptr %5, i32 0, i32 0
  %20 = load i32, ptr %4, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times_(ptr noundef %18, ptr noundef %19, i32 noundef %20)
  ret void
}

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
  br label %10, !llvm.loop !23

20:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_EC_Format_reduce(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @Hacl_EC_Format_fcontract_first_carry_full(ptr noundef %3)
  %4 = load ptr, ptr %2, align 4
  call void @Hacl_EC_Format_fcontract_second_carry_full(ptr noundef %4)
  %5 = load ptr, ptr %2, align 4
  call void @Hacl_EC_Format_fcontract_trim(ptr noundef %5)
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
define internal void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca [10 x i64], align 8
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %11, i8 0, i32 80, i1 false)
  %12 = load ptr, ptr %6, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = load i32, ptr %10, align 4
  %17 = getelementptr inbounds [10 x i64], ptr %11, i32 0, i32 0
  call void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2_(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  %13 = alloca [64 x i8], align 1
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store ptr %3, ptr %10, align 4
  store i32 %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 64, i1 false)
  %14 = getelementptr inbounds [64 x i8], ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %8, align 4
  %16 = load ptr, ptr %9, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = load i32, ptr %11, align 4
  call void @Hacl_Impl_Sha512_sha512_pre_pre2_msg(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18)
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds [64 x i8], ptr %13, i32 0, i32 0
  call void @Hacl_Impl_Load56_load_64_bytes(ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %7, align 4
  %22 = load ptr, ptr %12, align 4
  call void @Hacl_Impl_BignumQ_Mul_barrett_reduction(ptr noundef %21, ptr noundef %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Sha512_sha512_pre_pre2_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = load i32, ptr %10, align 4
  call void @Hacl_Impl_SHA512_Ed25519_sha512_pre_pre2_msg(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_sha512_pre_pre2_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = load i32, ptr %10, align 4
  call void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ule i32 %11, 64
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = load i32, ptr %10, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_pre2_msg_1(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18)
  br label %25

19:                                               ; preds = %5
  %20 = load ptr, ptr %6, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = load ptr, ptr %8, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = load i32, ptr %10, align 4
  call void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg_2(ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef %24)
  br label %25

25:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_pre2_msg_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 1
  %12 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 128, i1 false)
  %13 = getelementptr inbounds [128 x i8], ptr %11, i32 0, i32 0
  store ptr %13, ptr %12, align 4
  %14 = load ptr, ptr %12, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = load i32, ptr %10, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_concat_3(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18)
  %19 = load ptr, ptr %6, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = load i32, ptr %10, align 4
  %22 = add i32 %21, 64
  call void @Hacl_Impl_SHA2_512_hash(ptr noundef %19, ptr noundef %20, i32 noundef %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca [128 x i8], align 1
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %14 = load ptr, ptr %9, align 4
  store ptr %14, ptr %11, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr inbounds i8, ptr %15, i32 64
  store ptr %16, ptr %12, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 128, i1 false)
  %17 = getelementptr inbounds [128 x i8], ptr %13, i32 0, i32 0
  %18 = load ptr, ptr %7, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = load ptr, ptr %11, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_concat_3(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef 64)
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds [128 x i8], ptr %13, i32 0, i32 0
  %23 = load ptr, ptr %12, align 4
  %24 = load i32, ptr %10, align 4
  %25 = sub i32 %24, 64
  call void @Hacl_Impl_SHA512_Ed25519_2_hash_block_and_rest(ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef %25)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA512_Ed25519_1_concat_3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef %11, ptr noundef %12, i32 noundef 32)
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds i8, ptr %13, i32 32
  %15 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef %14, ptr noundef %15, i32 noundef 32)
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds i8, ptr %16, i32 64
  %18 = load ptr, ptr %9, align 4
  %19 = load i32, ptr %10, align 4
  call void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef %17, ptr noundef %18, i32 noundef %19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Load56_load_32_bytes(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %24 = load ptr, ptr %4, align 4
  store ptr %24, ptr %5, align 4
  %25 = load ptr, ptr %5, align 4
  %26 = call i64 @load64(ptr noundef %25)
  %27 = call i64 @__uint64_identity(i64 noundef %26)
  store i64 %27, ptr %6, align 8
  %28 = load i64, ptr %6, align 8
  %29 = and i64 %28, 72057594037927935
  store i64 %29, ptr %7, align 8
  %30 = load i64, ptr %7, align 8
  store i64 %30, ptr %8, align 8
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr inbounds i8, ptr %31, i32 7
  store ptr %32, ptr %9, align 4
  %33 = load ptr, ptr %9, align 4
  %34 = call i64 @load64(ptr noundef %33)
  %35 = call i64 @__uint64_identity(i64 noundef %34)
  store i64 %35, ptr %10, align 8
  %36 = load i64, ptr %10, align 8
  %37 = and i64 %36, 72057594037927935
  store i64 %37, ptr %11, align 8
  %38 = load i64, ptr %11, align 8
  store i64 %38, ptr %12, align 8
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds i8, ptr %39, i32 14
  store ptr %40, ptr %13, align 4
  %41 = load ptr, ptr %13, align 4
  %42 = call i64 @load64(ptr noundef %41)
  %43 = call i64 @__uint64_identity(i64 noundef %42)
  store i64 %43, ptr %14, align 8
  %44 = load i64, ptr %14, align 8
  %45 = and i64 %44, 72057594037927935
  store i64 %45, ptr %15, align 8
  %46 = load i64, ptr %15, align 8
  store i64 %46, ptr %16, align 8
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds i8, ptr %47, i32 21
  store ptr %48, ptr %17, align 4
  %49 = load ptr, ptr %17, align 4
  %50 = call i64 @load64(ptr noundef %49)
  %51 = call i64 @__uint64_identity(i64 noundef %50)
  store i64 %51, ptr %18, align 8
  %52 = load i64, ptr %18, align 8
  %53 = and i64 %52, 72057594037927935
  store i64 %53, ptr %19, align 8
  %54 = load i64, ptr %19, align 8
  store i64 %54, ptr %20, align 8
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr inbounds i8, ptr %55, i32 28
  store ptr %56, ptr %21, align 4
  %57 = load ptr, ptr %21, align 4
  %58 = call i32 @load32(ptr noundef %57)
  %59 = call i32 @__uint32_identity(i32 noundef %58)
  store i32 %59, ptr %22, align 4
  %60 = load i32, ptr %22, align 4
  %61 = zext i32 %60 to i64
  store i64 %61, ptr %23, align 8
  %62 = load ptr, ptr %3, align 4
  %63 = load i64, ptr %8, align 8
  %64 = load i64, ptr %12, align 8
  %65 = load i64, ptr %16, align 8
  %66 = load i64, ptr %20, align 8
  %67 = load i64, ptr %23, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %62, i64 noundef %63, i64 noundef %64, i64 noundef %65, i64 noundef %66, i64 noundef %67)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_mul_modq(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [10 x i64], align 8
  %8 = alloca [9 x %struct.FStar_UInt128_uint128], align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %7, i8 0, i32 80, i1 false)
  store i32 0, ptr %9, align 4
  br label %11

11:                                               ; preds = %17, %3
  %12 = load i32, ptr %9, align 4
  %13 = icmp ult i32 %12, 9
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, ptr %9, align 4
  %16 = getelementptr inbounds [9 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 %15
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %16, ptr align 4 %10, i32 16, i1 false)
  br label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %9, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %9, align 4
  br label %11, !llvm.loop !24

20:                                               ; preds = %11
  %21 = getelementptr inbounds [9 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  %22 = load ptr, ptr %5, align 4
  %23 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_BignumQ_Mul_mul_5(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  %24 = getelementptr inbounds [10 x i64], ptr %7, i32 0, i32 0
  %25 = getelementptr inbounds [9 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  call void @Hacl_Impl_BignumQ_Mul_carry(ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds [10 x i64], ptr %7, i32 0, i32 0
  call void @Hacl_Impl_BignumQ_Mul_barrett_reduction_(ptr noundef %26, ptr noundef %27)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_add_modq(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_BignumQ_Mul_add_modq_(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @load32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  %4 = load ptr, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %3, ptr align 1 %4, i32 4, i1 false)
  %5 = load i32, ptr %3, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_BignumQ_Mul_add_modq_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [5 x i64], align 8
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %7, i8 0, i32 40, i1 false)
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds i64, ptr %47, i32 0
  %49 = load i64, ptr %48, align 4
  store i64 %49, ptr %8, align 8
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr inbounds i64, ptr %50, i32 1
  %52 = load i64, ptr %51, align 4
  store i64 %52, ptr %9, align 8
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds i64, ptr %53, i32 2
  %55 = load i64, ptr %54, align 4
  store i64 %55, ptr %10, align 8
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds i64, ptr %56, i32 3
  %58 = load i64, ptr %57, align 4
  store i64 %58, ptr %11, align 8
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr inbounds i64, ptr %59, i32 4
  %61 = load i64, ptr %60, align 4
  store i64 %61, ptr %12, align 8
  %62 = load ptr, ptr %6, align 4
  %63 = getelementptr inbounds i64, ptr %62, i32 0
  %64 = load i64, ptr %63, align 4
  store i64 %64, ptr %13, align 8
  %65 = load ptr, ptr %6, align 4
  %66 = getelementptr inbounds i64, ptr %65, i32 1
  %67 = load i64, ptr %66, align 4
  store i64 %67, ptr %14, align 8
  %68 = load ptr, ptr %6, align 4
  %69 = getelementptr inbounds i64, ptr %68, i32 2
  %70 = load i64, ptr %69, align 4
  store i64 %70, ptr %15, align 8
  %71 = load ptr, ptr %6, align 4
  %72 = getelementptr inbounds i64, ptr %71, i32 3
  %73 = load i64, ptr %72, align 4
  store i64 %73, ptr %16, align 8
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr inbounds i64, ptr %74, i32 4
  %76 = load i64, ptr %75, align 4
  store i64 %76, ptr %17, align 8
  %77 = load i64, ptr %8, align 8
  %78 = load i64, ptr %13, align 8
  %79 = add i64 %77, %78
  store i64 %79, ptr %18, align 8
  %80 = load i64, ptr %9, align 8
  %81 = load i64, ptr %14, align 8
  %82 = add i64 %80, %81
  store i64 %82, ptr %19, align 8
  %83 = load i64, ptr %10, align 8
  %84 = load i64, ptr %15, align 8
  %85 = add i64 %83, %84
  store i64 %85, ptr %20, align 8
  %86 = load i64, ptr %11, align 8
  %87 = load i64, ptr %16, align 8
  %88 = add i64 %86, %87
  store i64 %88, ptr %21, align 8
  %89 = load i64, ptr %12, align 8
  %90 = load i64, ptr %17, align 8
  %91 = add i64 %89, %90
  store i64 %91, ptr %22, align 8
  %92 = load i64, ptr %18, align 8
  store i64 %92, ptr %23, align 8
  %93 = load i64, ptr %19, align 8
  store i64 %93, ptr %24, align 8
  %94 = load i64, ptr %23, align 8
  %95 = lshr i64 %94, 56
  store i64 %95, ptr %25, align 8
  %96 = load i64, ptr %23, align 8
  %97 = and i64 %96, 72057594037927935
  store i64 %97, ptr %26, align 8
  %98 = load i64, ptr %26, align 8
  store i64 %98, ptr %27, align 8
  %99 = load i64, ptr %24, align 8
  %100 = load i64, ptr %25, align 8
  %101 = add i64 %99, %100
  store i64 %101, ptr %28, align 8
  %102 = load i64, ptr %28, align 8
  store i64 %102, ptr %29, align 8
  %103 = load i64, ptr %20, align 8
  store i64 %103, ptr %30, align 8
  %104 = load i64, ptr %29, align 8
  %105 = lshr i64 %104, 56
  store i64 %105, ptr %31, align 8
  %106 = load i64, ptr %29, align 8
  %107 = and i64 %106, 72057594037927935
  store i64 %107, ptr %32, align 8
  %108 = load i64, ptr %32, align 8
  store i64 %108, ptr %33, align 8
  %109 = load i64, ptr %30, align 8
  %110 = load i64, ptr %31, align 8
  %111 = add i64 %109, %110
  store i64 %111, ptr %34, align 8
  %112 = load i64, ptr %34, align 8
  store i64 %112, ptr %35, align 8
  %113 = load i64, ptr %21, align 8
  store i64 %113, ptr %36, align 8
  %114 = load i64, ptr %35, align 8
  %115 = lshr i64 %114, 56
  store i64 %115, ptr %37, align 8
  %116 = load i64, ptr %35, align 8
  %117 = and i64 %116, 72057594037927935
  store i64 %117, ptr %38, align 8
  %118 = load i64, ptr %38, align 8
  store i64 %118, ptr %39, align 8
  %119 = load i64, ptr %36, align 8
  %120 = load i64, ptr %37, align 8
  %121 = add i64 %119, %120
  store i64 %121, ptr %40, align 8
  %122 = load i64, ptr %40, align 8
  store i64 %122, ptr %41, align 8
  %123 = load i64, ptr %22, align 8
  store i64 %123, ptr %42, align 8
  %124 = load i64, ptr %41, align 8
  %125 = lshr i64 %124, 56
  store i64 %125, ptr %43, align 8
  %126 = load i64, ptr %41, align 8
  %127 = and i64 %126, 72057594037927935
  store i64 %127, ptr %44, align 8
  %128 = load i64, ptr %44, align 8
  store i64 %128, ptr %45, align 8
  %129 = load i64, ptr %42, align 8
  %130 = load i64, ptr %43, align 8
  %131 = add i64 %129, %130
  store i64 %131, ptr %46, align 8
  %132 = getelementptr inbounds [5 x i64], ptr %7, i32 0, i32 0
  %133 = load i64, ptr %27, align 8
  %134 = load i64, ptr %33, align 8
  %135 = load i64, ptr %39, align 8
  %136 = load i64, ptr %45, align 8
  %137 = load i64, ptr %46, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %132, i64 noundef %133, i64 noundef %134, i64 noundef %135, i64 noundef %136, i64 noundef %137)
  %138 = load ptr, ptr %4, align 4
  %139 = getelementptr inbounds [5 x i64], ptr %7, i32 0, i32 0
  call void @Hacl_Impl_BignumQ_Mul_subm_conditional(ptr noundef %138, ptr noundef %139)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Sign_Steps_copy_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  %10 = mul i32 %9, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %8, i32 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_Verify_verify_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca [45 x i64], align 8
  %10 = alloca [32 x i8], align 1
  %11 = alloca i8, align 1
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %9, i8 0, i32 360, i1 false)
  call void @llvm.memset.p0.i32(ptr align 1 %10, i8 0, i32 32, i1 false)
  %12 = load ptr, ptr %5, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = load i32, ptr %7, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds [45 x i64], ptr %9, i32 0, i32 0
  %17 = getelementptr inbounds [32 x i8], ptr %10, i32 0, i32 0
  %18 = call zeroext i1 @Hacl_Impl_Ed25519_Verify_verify__(ptr noundef %12, ptr noundef %13, i32 noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17)
  %19 = zext i1 %18 to i8
  store i8 %19, ptr %11, align 1
  %20 = load i8, ptr %11, align 1
  %21 = trunc i8 %20 to i1
  ret i1 %21
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_Verify_verify__(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca i1, align 1
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca i8, align 1
  %19 = alloca ptr, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 4
  store ptr %4, ptr %12, align 4
  store ptr %5, ptr %13, align 4
  %23 = load ptr, ptr %12, align 4
  store ptr %23, ptr %14, align 4
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds i64, ptr %24, i32 20
  store ptr %25, ptr %15, align 4
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr inbounds i64, ptr %26, i32 40
  store ptr %27, ptr %16, align 4
  %28 = load ptr, ptr %13, align 4
  store ptr %28, ptr %17, align 4
  %29 = load ptr, ptr %14, align 4
  %30 = load ptr, ptr %8, align 4
  %31 = call zeroext i1 @Hacl_Impl_Ed25519_PointDecompress_point_decompress(ptr noundef %29, ptr noundef %30)
  %32 = zext i1 %31 to i8
  store i8 %32, ptr %18, align 1
  %33 = load i8, ptr %18, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %69

35:                                               ; preds = %6
  %36 = load ptr, ptr %11, align 4
  store ptr %36, ptr %19, align 4
  %37 = load ptr, ptr %15, align 4
  %38 = load ptr, ptr %11, align 4
  %39 = call zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_1(ptr noundef %37, ptr noundef %38)
  %40 = zext i1 %39 to i8
  store i8 %40, ptr %20, align 1
  %41 = load i8, ptr %20, align 1
  %42 = trunc i8 %41 to i1
  br i1 %42, label %43, label %68

43:                                               ; preds = %35
  %44 = load ptr, ptr %16, align 4
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds i8, ptr %45, i32 32
  call void @Hacl_Impl_Load56_load_32_bytes(ptr noundef %44, ptr noundef %46)
  %47 = load ptr, ptr %16, align 4
  %48 = call zeroext i1 @Hacl_Impl_Ed25519_PointEqual_gte_q(ptr noundef %47)
  %49 = zext i1 %48 to i8
  store i8 %49, ptr %21, align 1
  %50 = load i8, ptr %21, align 1
  %51 = trunc i8 %50 to i1
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i1 false, ptr %7, align 1
  br label %70

53:                                               ; preds = %43
  %54 = load ptr, ptr %17, align 4
  %55 = load ptr, ptr %9, align 4
  %56 = load i32, ptr %10, align 4
  %57 = load ptr, ptr %19, align 4
  %58 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Ed25519_Verify_Steps_verify_step_2(ptr noundef %54, ptr noundef %55, i32 noundef %56, ptr noundef %57, ptr noundef %58)
  %59 = load ptr, ptr %11, align 4
  %60 = getelementptr inbounds i8, ptr %59, i32 32
  %61 = load ptr, ptr %17, align 4
  %62 = load ptr, ptr %14, align 4
  %63 = load ptr, ptr %15, align 4
  %64 = call zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_4(ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63)
  %65 = zext i1 %64 to i8
  store i8 %65, ptr %22, align 1
  %66 = load i8, ptr %22, align 1
  %67 = trunc i8 %66 to i1
  store i1 %67, ptr %7, align 1
  br label %70

68:                                               ; preds = %35
  store i1 false, ptr %7, align 1
  br label %70

69:                                               ; preds = %6
  store i1 false, ptr %7, align 1
  br label %70

70:                                               ; preds = %69, %68, %53, %52
  %71 = load i1, ptr %7, align 1
  ret i1 %71
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_PointDecompress_point_decompress(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [10 x i64], align 8
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 80, i1 false)
  %21 = getelementptr inbounds [10 x i64], ptr %5, i32 0, i32 0
  store ptr %21, ptr %6, align 4
  %22 = getelementptr inbounds [10 x i64], ptr %5, i32 0, i32 0
  %23 = getelementptr inbounds i64, ptr %22, i32 5
  store ptr %23, ptr %7, align 4
  %24 = getelementptr inbounds [10 x i64], ptr %5, i32 0, i32 0
  store ptr %24, ptr %8, align 4
  %25 = getelementptr inbounds [10 x i64], ptr %5, i32 0, i32 0
  %26 = getelementptr inbounds i64, ptr %25, i32 5
  store ptr %26, ptr %9, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds i8, ptr %27, i32 31
  %29 = load i8, ptr %28, align 1
  store i8 %29, ptr %10, align 1
  %30 = load i8, ptr %10, align 1
  %31 = zext i8 %30 to i32
  %32 = ashr i32 %31, 7
  %33 = sext i32 %32 to i64
  store i64 %33, ptr %11, align 8
  %34 = load ptr, ptr %8, align 4
  %35 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_Load51_load_51(ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %9, align 4
  %37 = load ptr, ptr %8, align 4
  %38 = load i64, ptr %11, align 8
  %39 = call zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x(ptr noundef %36, ptr noundef %37, i64 noundef %38)
  %40 = zext i1 %39 to i8
  store i8 %40, ptr %12, align 1
  %41 = load i8, ptr %12, align 1
  %42 = trunc i8 %41 to i1
  %43 = zext i1 %42 to i8
  store i8 %43, ptr %13, align 1
  %44 = load i8, ptr %13, align 1
  %45 = trunc i8 %44 to i1
  %46 = zext i1 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  store i8 0, ptr %14, align 1
  br label %71

49:                                               ; preds = %2
  %50 = load ptr, ptr %3, align 4
  %51 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %50)
  store ptr %51, ptr %15, align 4
  %52 = load ptr, ptr %3, align 4
  %53 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %52)
  store ptr %53, ptr %16, align 4
  %54 = load ptr, ptr %3, align 4
  %55 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %54)
  store ptr %55, ptr %17, align 4
  %56 = load ptr, ptr %3, align 4
  %57 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %56)
  store ptr %57, ptr %18, align 4
  %58 = load ptr, ptr %15, align 4
  %59 = load ptr, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %58, ptr align 4 %59, i32 40, i1 false)
  %60 = load ptr, ptr %16, align 4
  %61 = load ptr, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %60, ptr align 4 %61, i32 40, i1 false)
  store i64 0, ptr %19, align 8
  store i64 1, ptr %20, align 8
  %62 = load ptr, ptr %17, align 4
  %63 = load i64, ptr %20, align 8
  %64 = load i64, ptr %19, align 8
  %65 = load i64, ptr %19, align 8
  %66 = load i64, ptr %19, align 8
  %67 = load i64, ptr %19, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %62, i64 noundef %63, i64 noundef %64, i64 noundef %65, i64 noundef %66, i64 noundef %67)
  %68 = load ptr, ptr %18, align 4
  %69 = load ptr, ptr %7, align 4
  %70 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %68, ptr noundef %69, ptr noundef %70)
  store i8 1, ptr %14, align 1
  br label %71

71:                                               ; preds = %49, %48
  %72 = load i8, ptr %14, align 1
  %73 = trunc i8 %72 to i1
  ret i1 %73
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %7 = load ptr, ptr %4, align 4
  store ptr %7, ptr %5, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = call zeroext i1 @Hacl_Impl_Ed25519_PointDecompress_point_decompress(ptr noundef %8, ptr noundef %9)
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %6, align 1
  %12 = load i8, ptr %6, align 1
  %13 = trunc i8 %12 to i1
  ret i1 %13
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_PointEqual_gte_q(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds i64, ptr %9, i32 0
  %11 = load i64, ptr %10, align 4
  store i64 %11, ptr %4, align 8
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds i64, ptr %12, i32 1
  %14 = load i64, ptr %13, align 4
  store i64 %14, ptr %5, align 8
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds i64, ptr %15, i32 2
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds i64, ptr %18, i32 3
  %20 = load i64, ptr %19, align 4
  store i64 %20, ptr %7, align 8
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds i64, ptr %21, i32 4
  %23 = load i64, ptr %22, align 4
  store i64 %23, ptr %8, align 8
  %24 = load i64, ptr %8, align 8
  %25 = icmp ugt i64 %24, 268435456
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i1 true, ptr %2, align 1
  br label %56

27:                                               ; preds = %1
  %28 = load i64, ptr %8, align 8
  %29 = icmp ult i64 %28, 268435456
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i1 false, ptr %2, align 1
  br label %56

31:                                               ; preds = %27
  %32 = load i64, ptr %7, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i1 true, ptr %2, align 1
  br label %56

35:                                               ; preds = %31
  %36 = load i64, ptr %6, align 8
  %37 = icmp ugt i64 %36, 5342
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i1 true, ptr %2, align 1
  br label %56

39:                                               ; preds = %35
  %40 = load i64, ptr %6, align 8
  %41 = icmp ult i64 %40, 5342
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i1 false, ptr %2, align 1
  br label %56

43:                                               ; preds = %39
  %44 = load i64, ptr %5, align 8
  %45 = icmp ugt i64 %44, 70332060721272408
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i1 true, ptr %2, align 1
  br label %56

47:                                               ; preds = %43
  %48 = load i64, ptr %5, align 8
  %49 = icmp ult i64 %48, 70332060721272408
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i1 false, ptr %2, align 1
  br label %56

51:                                               ; preds = %47
  %52 = load i64, ptr %4, align 8
  %53 = icmp uge i64 %52, 5175514460705773
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i1 true, ptr %2, align 1
  br label %56

55:                                               ; preds = %51
  store i1 false, ptr %2, align 1
  br label %56

56:                                               ; preds = %55, %54, %50, %46, %42, %38, %34, %30, %26
  %57 = load i1, ptr %2, align 1
  ret i1 %57
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Verify_Steps_verify_step_2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca [5 x i64], align 8
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %11, i8 0, i32 40, i1 false)
  %12 = getelementptr inbounds [5 x i64], ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %9, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16)
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds [5 x i64], ptr %11, i32 0, i32 0
  call void @Hacl_Impl_Store56_store_56(ptr noundef %17, ptr noundef %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_4(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca [60 x i64], align 8
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i8, align 1
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %9, i8 0, i32 480, i1 false)
  %14 = getelementptr inbounds [60 x i64], ptr %9, i32 0, i32 0
  store ptr %14, ptr %10, align 4
  %15 = getelementptr inbounds [60 x i64], ptr %9, i32 0, i32 0
  %16 = getelementptr inbounds i64, ptr %15, i32 20
  store ptr %16, ptr %11, align 4
  %17 = getelementptr inbounds [60 x i64], ptr %9, i32 0, i32 0
  %18 = getelementptr inbounds i64, ptr %17, i32 40
  store ptr %18, ptr %12, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_Ed25519_Verify_Steps_point_mul_g(ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %10, align 4
  %22 = load ptr, ptr %6, align 4
  %23 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_Ed25519_Ladder_point_mul(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %11, align 4
  %25 = load ptr, ptr %8, align 4
  %26 = load ptr, ptr %10, align 4
  call void @Hacl_Impl_Ed25519_PointAdd_point_add(ptr noundef %24, ptr noundef %25, ptr noundef %26)
  %27 = load ptr, ptr %12, align 4
  %28 = load ptr, ptr %11, align 4
  %29 = call zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal(ptr noundef %27, ptr noundef %28)
  %30 = zext i1 %29 to i8
  store i8 %30, ptr %13, align 1
  %31 = load i8, ptr %13, align 1
  %32 = trunc i8 %31 to i1
  ret i1 %32
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Load51_load_51(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_EC_Format_fexpand(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca [20 x i64], align 8
  %8 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  call void @llvm.memset.p0.i32(ptr align 8 %7, i8 0, i32 160, i1 false)
  %9 = load ptr, ptr %4, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = load i64, ptr %6, align 8
  %12 = getelementptr inbounds [20 x i64], ptr %7, i32 0, i32 0
  %13 = call zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x_(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12)
  %14 = zext i1 %13 to i8
  store i8 %14, ptr %8, align 1
  %15 = load i8, ptr %8, align 1
  %16 = trunc i8 %15 to i1
  ret i1 %16
}

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

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca [25 x i64], align 8
  %18 = alloca ptr, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca ptr, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i64, align 8
  %28 = alloca ptr, align 4
  %29 = alloca ptr, align 4
  %30 = alloca ptr, align 4
  %31 = alloca ptr, align 4
  %32 = alloca i8, align 1
  %33 = alloca [5 x i64], align 8
  %34 = alloca ptr, align 4
  %35 = alloca ptr, align 4
  %36 = alloca ptr, align 4
  %37 = alloca ptr, align 4
  %38 = alloca i8, align 1
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 4
  %39 = load ptr, ptr %9, align 4
  store ptr %39, ptr %10, align 4
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr inbounds i64, ptr %40, i32 0
  %42 = load i64, ptr %41, align 4
  store i64 %42, ptr %11, align 8
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds i64, ptr %43, i32 1
  %45 = load i64, ptr %44, align 4
  store i64 %45, ptr %12, align 8
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds i64, ptr %46, i32 2
  %48 = load i64, ptr %47, align 4
  store i64 %48, ptr %13, align 8
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds i64, ptr %49, i32 3
  %51 = load i64, ptr %50, align 4
  store i64 %51, ptr %14, align 8
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr inbounds i64, ptr %52, i32 4
  %54 = load i64, ptr %53, align 4
  store i64 %54, ptr %15, align 8
  %55 = load i64, ptr %11, align 8
  %56 = icmp uge i64 %55, 2251799813685229
  br i1 %56, label %57, label %69

57:                                               ; preds = %4
  %58 = load i64, ptr %12, align 8
  %59 = icmp eq i64 %58, 2251799813685247
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i64, ptr %13, align 8
  %62 = icmp eq i64 %61, 2251799813685247
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i64, ptr %14, align 8
  %65 = icmp eq i64 %64, 2251799813685247
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, ptr %15, align 8
  %68 = icmp eq i64 %67, 2251799813685247
  br label %69

69:                                               ; preds = %66, %63, %60, %57, %4
  %70 = phi i1 [ false, %63 ], [ false, %60 ], [ false, %57 ], [ false, %4 ], [ %68, %66 ]
  %71 = zext i1 %70 to i8
  store i8 %71, ptr %16, align 1
  %72 = load i8, ptr %16, align 1
  %73 = trunc i8 %72 to i1
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i1 false, ptr %5, align 1
  br label %190

75:                                               ; preds = %69
  call void @llvm.memset.p0.i32(ptr align 8 %17, i8 0, i32 200, i1 false)
  %76 = getelementptr inbounds [25 x i64], ptr %17, i32 0, i32 0
  store ptr %76, ptr %18, align 4
  %77 = getelementptr inbounds [25 x i64], ptr %17, i32 0, i32 0
  %78 = getelementptr inbounds i64, ptr %77, i32 5
  store ptr %78, ptr %19, align 4
  %79 = getelementptr inbounds [25 x i64], ptr %17, i32 0, i32 0
  %80 = getelementptr inbounds i64, ptr %79, i32 10
  store ptr %80, ptr %20, align 4
  %81 = getelementptr inbounds [25 x i64], ptr %17, i32 0, i32 0
  %82 = getelementptr inbounds i64, ptr %81, i32 15
  store ptr %82, ptr %21, align 4
  store i64 0, ptr %22, align 8
  store i64 1, ptr %23, align 8
  %83 = load ptr, ptr %18, align 4
  %84 = load i64, ptr %23, align 8
  %85 = load i64, ptr %22, align 8
  %86 = load i64, ptr %22, align 8
  %87 = load i64, ptr %22, align 8
  %88 = load i64, ptr %22, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %83, i64 noundef %84, i64 noundef %85, i64 noundef %86, i64 noundef %87, i64 noundef %88)
  %89 = load ptr, ptr %19, align 4
  %90 = load ptr, ptr %7, align 4
  call void @Hacl_Bignum25519_fsquare(ptr noundef %89, ptr noundef %90)
  %91 = load ptr, ptr %21, align 4
  %92 = load ptr, ptr %19, align 4
  call void @Hacl_Bignum25519_times_d(ptr noundef %91, ptr noundef %92)
  %93 = load ptr, ptr %21, align 4
  %94 = load ptr, ptr %18, align 4
  call void @Hacl_Bignum25519_fsum(ptr noundef %93, ptr noundef %94)
  %95 = load ptr, ptr %21, align 4
  call void @Hacl_Bignum25519_reduce_513(ptr noundef %95)
  %96 = load ptr, ptr %20, align 4
  %97 = load ptr, ptr %21, align 4
  call void @Hacl_Bignum25519_inverse(ptr noundef %96, ptr noundef %97)
  %98 = load ptr, ptr %18, align 4
  %99 = load ptr, ptr %19, align 4
  call void @Hacl_Bignum25519_fdifference(ptr noundef %98, ptr noundef %99)
  %100 = load ptr, ptr %10, align 4
  %101 = load ptr, ptr %20, align 4
  %102 = load ptr, ptr %18, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %100, ptr noundef %101, ptr noundef %102)
  %103 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %103)
  %104 = load ptr, ptr %10, align 4
  %105 = call zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(ptr noundef %104)
  %106 = zext i1 %105 to i8
  store i8 %106, ptr %24, align 1
  %107 = load i8, ptr %24, align 1
  %108 = trunc i8 %107 to i1
  br i1 %108, label %109, label %122

109:                                              ; preds = %75
  %110 = load i64, ptr %8, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  store i64 0, ptr %27, align 8
  %113 = load ptr, ptr %6, align 4
  %114 = load i64, ptr %27, align 8
  %115 = load i64, ptr %27, align 8
  %116 = load i64, ptr %27, align 8
  %117 = load i64, ptr %27, align 8
  %118 = load i64, ptr %27, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %113, i64 noundef %114, i64 noundef %115, i64 noundef %116, i64 noundef %117, i64 noundef %118)
  store i8 1, ptr %26, align 1
  br label %120

119:                                              ; preds = %109
  store i8 0, ptr %26, align 1
  br label %120

120:                                              ; preds = %119, %112
  %121 = load i8, ptr %26, align 1
  store i8 %121, ptr %25, align 1
  br label %123

122:                                              ; preds = %75
  store i8 2, ptr %25, align 1
  br label %123

123:                                              ; preds = %122, %120
  %124 = load i8, ptr %25, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i1 false, ptr %5, align 1
  br label %190

128:                                              ; preds = %123
  %129 = load i8, ptr %25, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i1 true, ptr %5, align 1
  br label %190

133:                                              ; preds = %128
  %134 = load ptr, ptr %9, align 4
  store ptr %134, ptr %28, align 4
  %135 = load ptr, ptr %9, align 4
  %136 = getelementptr inbounds i64, ptr %135, i32 5
  store ptr %136, ptr %29, align 4
  %137 = load ptr, ptr %9, align 4
  %138 = getelementptr inbounds i64, ptr %137, i32 10
  store ptr %138, ptr %30, align 4
  %139 = load ptr, ptr %9, align 4
  %140 = getelementptr inbounds i64, ptr %139, i32 15
  store ptr %140, ptr %31, align 4
  %141 = load ptr, ptr %29, align 4
  %142 = load ptr, ptr %28, align 4
  call void @Hacl_Impl_Ed25519_Pow2_252m2_pow2_252m2(ptr noundef %141, ptr noundef %142)
  %143 = load ptr, ptr %30, align 4
  %144 = load ptr, ptr %29, align 4
  call void @Hacl_Bignum25519_fsquare(ptr noundef %143, ptr noundef %144)
  %145 = load ptr, ptr %31, align 4
  %146 = load ptr, ptr %28, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %145, ptr align 4 %146, i32 40, i1 false)
  %147 = load ptr, ptr %31, align 4
  %148 = load ptr, ptr %30, align 4
  call void @Hacl_Bignum25519_fdifference(ptr noundef %147, ptr noundef %148)
  %149 = load ptr, ptr %31, align 4
  call void @Hacl_Bignum25519_reduce_513(ptr noundef %149)
  %150 = load ptr, ptr %31, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %150)
  %151 = load ptr, ptr %31, align 4
  %152 = call zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(ptr noundef %151)
  %153 = zext i1 %152 to i8
  store i8 %153, ptr %32, align 1
  %154 = load i8, ptr %32, align 1
  %155 = trunc i8 %154 to i1
  br i1 %155, label %161, label %156

156:                                              ; preds = %133
  call void @llvm.memset.p0.i32(ptr align 8 %33, i8 0, i32 40, i1 false)
  %157 = getelementptr inbounds [5 x i64], ptr %33, i32 0, i32 0
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %157, i64 noundef 1718705420411056, i64 noundef 234908883556509, i64 noundef 2233514472574048, i64 noundef 2117202627021982, i64 noundef 765476049583133)
  %158 = load ptr, ptr %29, align 4
  %159 = load ptr, ptr %29, align 4
  %160 = getelementptr inbounds [5 x i64], ptr %33, i32 0, i32 0
  call void @Hacl_Bignum25519_fmul(ptr noundef %158, ptr noundef %159, ptr noundef %160)
  br label %161

161:                                              ; preds = %156, %133
  %162 = load ptr, ptr %29, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %162)
  %163 = load ptr, ptr %9, align 4
  store ptr %163, ptr %34, align 4
  %164 = load ptr, ptr %9, align 4
  %165 = getelementptr inbounds i64, ptr %164, i32 5
  store ptr %165, ptr %35, align 4
  %166 = load ptr, ptr %9, align 4
  %167 = getelementptr inbounds i64, ptr %166, i32 10
  store ptr %167, ptr %36, align 4
  %168 = load ptr, ptr %9, align 4
  %169 = getelementptr inbounds i64, ptr %168, i32 15
  store ptr %169, ptr %37, align 4
  %170 = load ptr, ptr %36, align 4
  %171 = load ptr, ptr %35, align 4
  call void @Hacl_Bignum25519_fsquare(ptr noundef %170, ptr noundef %171)
  %172 = load ptr, ptr %37, align 4
  %173 = load ptr, ptr %34, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %172, ptr align 4 %173, i32 40, i1 false)
  %174 = load ptr, ptr %37, align 4
  %175 = load ptr, ptr %36, align 4
  call void @Hacl_Bignum25519_fdifference(ptr noundef %174, ptr noundef %175)
  %176 = load ptr, ptr %37, align 4
  call void @Hacl_Bignum25519_reduce_513(ptr noundef %176)
  %177 = load ptr, ptr %37, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %177)
  %178 = load ptr, ptr %37, align 4
  %179 = call zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(ptr noundef %178)
  %180 = zext i1 %179 to i8
  store i8 %180, ptr %38, align 1
  %181 = load i8, ptr %38, align 1
  %182 = trunc i8 %181 to i1
  %183 = zext i1 %182 to i32
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %161
  store i1 false, ptr %5, align 1
  br label %190

186:                                              ; preds = %161
  %187 = load ptr, ptr %6, align 4
  %188 = load i64, ptr %8, align 8
  %189 = load ptr, ptr %9, align 4
  call void @Hacl_Impl_Ed25519_RecoverX_recover_x_step_5(ptr noundef %187, i64 noundef %188, ptr noundef %189)
  store i1 true, ptr %5, align 1
  br label %190

190:                                              ; preds = %186, %185, %132, %127, %74
  %191 = load i1, ptr %5, align 1
  ret i1 %191
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum25519_times_d(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [5 x i64], align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 40, i1 false)
  %6 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %6, i64 noundef 929955233495203, i64 noundef 466365720129213, i64 noundef 1662059464998953, i64 noundef 2033849074728123, i64 noundef 1442794654840575)
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds [5 x i64], ptr %5, i32 0, i32 0
  %9 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum25519_fmul(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds i64, ptr %8, i32 0
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %3, align 8
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds i64, ptr %11, i32 1
  %13 = load i64, ptr %12, align 4
  store i64 %13, ptr %4, align 8
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds i64, ptr %14, i32 2
  %16 = load i64, ptr %15, align 4
  store i64 %16, ptr %5, align 8
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds i64, ptr %17, i32 3
  %19 = load i64, ptr %18, align 4
  store i64 %19, ptr %6, align 8
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds i64, ptr %20, i32 4
  %22 = load i64, ptr %21, align 4
  store i64 %22, ptr %7, align 8
  %23 = load i64, ptr %3, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load i64, ptr %4, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i64, ptr %5, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64, ptr %6, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, ptr %7, align 8
  %36 = icmp eq i64 %35, 0
  br label %37

37:                                               ; preds = %34, %31, %28, %25, %1
  %38 = phi i1 [ false, %31 ], [ false, %28 ], [ false, %25 ], [ false, %1 ], [ %36, %34 ]
  ret i1 %38
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Pow2_252m2_pow2_252m2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_Crecip_crecip_(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_RecoverX_recover_x_step_5(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds i64, ptr %12, i32 5
  store ptr %13, ptr %7, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds i64, ptr %14, i32 10
  store ptr %15, ptr %8, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 0
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %9, align 8
  %19 = load i64, ptr %9, align 8
  %20 = and i64 %19, 1
  store i64 %20, ptr %10, align 8
  %21 = load i64, ptr %10, align 8
  %22 = load i64, ptr %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %3
  store i64 0, ptr %11, align 8
  %25 = load ptr, ptr %8, align 4
  %26 = load i64, ptr %11, align 8
  %27 = load i64, ptr %11, align 8
  %28 = load i64, ptr %11, align 8
  %29 = load i64, ptr %11, align 8
  %30 = load i64, ptr %11, align 8
  call void @Hacl_Lib_Create64_make_h64_5(ptr noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30)
  %31 = load ptr, ptr %7, align 4
  %32 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum25519_fdifference(ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %7, align 4
  call void @Hacl_Bignum25519_reduce_513(ptr noundef %33)
  %34 = load ptr, ptr %7, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %34)
  br label %35

35:                                               ; preds = %24, %3
  %36 = load ptr, ptr %4, align 4
  %37 = load ptr, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %36, ptr align 4 %37, i32 40, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Crecip_crecip_(ptr noundef %0, ptr noundef %1) #0 {
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
  %16 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 160, i1 false)
  %17 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  store ptr %17, ptr %6, align 4
  %18 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %19 = getelementptr inbounds i64, ptr %18, i32 5
  store ptr %19, ptr %7, align 4
  %20 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %21 = getelementptr inbounds i64, ptr %20, i32 10
  store ptr %21, ptr %8, align 4
  %22 = load ptr, ptr %6, align 4
  %23 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %22, ptr noundef %23, i32 noundef 1)
  %24 = load ptr, ptr %7, align 4
  %25 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %24, ptr noundef %25, i32 noundef 2)
  %26 = load ptr, ptr %8, align 4
  %27 = load ptr, ptr %7, align 4
  %28 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load ptr, ptr %6, align 4
  %30 = load ptr, ptr %8, align 4
  %31 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %29, ptr noundef %30, ptr noundef %31)
  %32 = load ptr, ptr %7, align 4
  %33 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %32, ptr noundef %33, i32 noundef 1)
  %34 = load ptr, ptr %8, align 4
  %35 = load ptr, ptr %7, align 4
  %36 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %34, ptr noundef %35, ptr noundef %36)
  %37 = load ptr, ptr %7, align 4
  %38 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %37, ptr noundef %38, i32 noundef 5)
  %39 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %40 = getelementptr inbounds i64, ptr %39, i32 5
  store ptr %40, ptr %9, align 4
  %41 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %42 = getelementptr inbounds i64, ptr %41, i32 10
  store ptr %42, ptr %10, align 4
  %43 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %44 = getelementptr inbounds i64, ptr %43, i32 15
  store ptr %44, ptr %11, align 4
  %45 = load ptr, ptr %10, align 4
  %46 = load ptr, ptr %9, align 4
  %47 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %45, ptr noundef %46, ptr noundef %47)
  %48 = load ptr, ptr %9, align 4
  %49 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %48, ptr noundef %49, i32 noundef 10)
  %50 = load ptr, ptr %11, align 4
  %51 = load ptr, ptr %9, align 4
  %52 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %50, ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %9, align 4
  %54 = load ptr, ptr %11, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %53, ptr noundef %54, i32 noundef 20)
  %55 = load ptr, ptr %9, align 4
  %56 = load ptr, ptr %9, align 4
  %57 = load ptr, ptr %11, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %55, ptr noundef %56, ptr noundef %57)
  %58 = load ptr, ptr %9, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef %58, i32 noundef 10)
  %59 = load ptr, ptr %10, align 4
  %60 = load ptr, ptr %9, align 4
  %61 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %59, ptr noundef %60, ptr noundef %61)
  %62 = load ptr, ptr %9, align 4
  %63 = load ptr, ptr %10, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %62, ptr noundef %63, i32 noundef 50)
  %64 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  store ptr %64, ptr %12, align 4
  %65 = load ptr, ptr %12, align 4
  %66 = load ptr, ptr %4, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %65, ptr noundef %66, i32 noundef 1)
  %67 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  store ptr %67, ptr %13, align 4
  %68 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %69 = getelementptr inbounds i64, ptr %68, i32 5
  store ptr %69, ptr %14, align 4
  %70 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %71 = getelementptr inbounds i64, ptr %70, i32 10
  store ptr %71, ptr %15, align 4
  %72 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %73 = getelementptr inbounds i64, ptr %72, i32 15
  store ptr %73, ptr %16, align 4
  %74 = load ptr, ptr %16, align 4
  %75 = load ptr, ptr %14, align 4
  %76 = load ptr, ptr %15, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %74, ptr noundef %75, ptr noundef %76)
  %77 = load ptr, ptr %14, align 4
  %78 = load ptr, ptr %16, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %77, ptr noundef %78, i32 noundef 100)
  %79 = load ptr, ptr %14, align 4
  %80 = load ptr, ptr %14, align 4
  %81 = load ptr, ptr %16, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %79, ptr noundef %80, ptr noundef %81)
  %82 = load ptr, ptr %14, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef %82, i32 noundef 50)
  %83 = load ptr, ptr %14, align 4
  %84 = load ptr, ptr %14, align 4
  %85 = load ptr, ptr %15, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %83, ptr noundef %84, ptr noundef %85)
  %86 = load ptr, ptr %14, align 4
  call void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef %86, i32 noundef 2)
  %87 = load ptr, ptr %3, align 4
  %88 = load ptr, ptr %14, align 4
  %89 = load ptr, ptr %13, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %87, ptr noundef %88, ptr noundef %89)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_Verify_Steps_point_mul_g(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [20 x i64], align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 160, i1 false)
  %6 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_G_make_g(ptr noundef %6)
  %7 = load ptr, ptr %3, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_Ladder_point_mul(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [20 x i64], align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 160, i1 false)
  %7 = load ptr, ptr %3, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  %10 = call zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %6, align 1
  %12 = load i8, ptr %6, align 1
  %13 = trunc i8 %12 to i1
  ret i1 %13
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i8, align 1
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = call zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_1(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %13 = zext i1 %12 to i8
  store i8 %13, ptr %8, align 1
  %14 = load i8, ptr %8, align 1
  %15 = trunc i8 %14 to i1
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_2(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  store i1 %22, ptr %4, align 1
  br label %24

23:                                               ; preds = %3
  store i1 false, ptr %4, align 1
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i1, ptr %4, align 1
  ret i1 %25
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %10 = load ptr, ptr %6, align 4
  store ptr %10, ptr %7, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds i64, ptr %11, i32 5
  store ptr %12, ptr %8, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %14)
  %16 = load ptr, ptr %5, align 4
  %17 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %16)
  call void @Hacl_Bignum25519_fmul(ptr noundef %13, ptr noundef %15, ptr noundef %17)
  %18 = load ptr, ptr %7, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %18)
  %19 = load ptr, ptr %8, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %20)
  %22 = load ptr, ptr %4, align 4
  %23 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %22)
  call void @Hacl_Bignum25519_fmul(ptr noundef %19, ptr noundef %21, ptr noundef %23)
  %24 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %24)
  %25 = load ptr, ptr %7, align 4
  %26 = load ptr, ptr %8, align 4
  %27 = call zeroext i1 @Hacl_Impl_Ed25519_PointEqual_eq(ptr noundef %25, ptr noundef %26)
  %28 = zext i1 %27 to i8
  store i8 %28, ptr %9, align 1
  %29 = load i8, ptr %9, align 1
  %30 = trunc i8 %29 to i1
  ret i1 %30
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds i64, ptr %10, i32 10
  store ptr %11, ptr %7, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds i64, ptr %12, i32 15
  store ptr %13, ptr %8, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %15)
  %17 = load ptr, ptr %5, align 4
  %18 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %17)
  call void @Hacl_Bignum25519_fmul(ptr noundef %14, ptr noundef %16, ptr noundef %18)
  %19 = load ptr, ptr %7, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %19)
  %20 = load ptr, ptr %8, align 4
  %21 = load ptr, ptr %5, align 4
  %22 = call ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %21)
  %23 = load ptr, ptr %4, align 4
  %24 = call ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %23)
  call void @Hacl_Bignum25519_fmul(ptr noundef %20, ptr noundef %22, ptr noundef %24)
  %25 = load ptr, ptr %8, align 4
  call void @Hacl_Bignum25519_reduce(ptr noundef %25)
  %26 = load ptr, ptr %7, align 4
  %27 = load ptr, ptr %8, align 4
  %28 = call zeroext i1 @Hacl_Impl_Ed25519_PointEqual_eq(ptr noundef %26, ptr noundef %27)
  %29 = zext i1 %28 to i8
  store i8 %29, ptr %9, align 1
  %30 = load i8, ptr %9, align 1
  %31 = trunc i8 %30 to i1
  ret i1 %31
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @Hacl_Impl_Ed25519_PointEqual_eq(ptr noundef %0, ptr noundef %1) #0 {
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
  %15 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 0
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %5, align 8
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds i64, ptr %19, i32 1
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %6, align 8
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds i64, ptr %22, i32 2
  %24 = load i64, ptr %23, align 4
  store i64 %24, ptr %7, align 8
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds i64, ptr %25, i32 3
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %8, align 8
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds i64, ptr %28, i32 4
  %30 = load i64, ptr %29, align 4
  store i64 %30, ptr %9, align 8
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr inbounds i64, ptr %31, i32 0
  %33 = load i64, ptr %32, align 4
  store i64 %33, ptr %10, align 8
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds i64, ptr %34, i32 1
  %36 = load i64, ptr %35, align 4
  store i64 %36, ptr %11, align 8
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds i64, ptr %37, i32 2
  %39 = load i64, ptr %38, align 4
  store i64 %39, ptr %12, align 8
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds i64, ptr %40, i32 3
  %42 = load i64, ptr %41, align 4
  store i64 %42, ptr %13, align 8
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds i64, ptr %43, i32 4
  %45 = load i64, ptr %44, align 4
  store i64 %45, ptr %14, align 8
  %46 = load i64, ptr %5, align 8
  %47 = load i64, ptr %10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %2
  %50 = load i64, ptr %6, align 8
  %51 = load i64, ptr %11, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i64, ptr %7, align 8
  %55 = load i64, ptr %12, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i64, ptr %8, align 8
  %59 = load i64, ptr %13, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i64, ptr %9, align 8
  %63 = load i64, ptr %14, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %61, %57, %53, %49, %2
  %66 = phi i1 [ false, %57 ], [ false, %53 ], [ false, %49 ], [ false, %2 ], [ %64, %61 ]
  %67 = zext i1 %66 to i8
  store i8 %67, ptr %15, align 1
  %68 = load i8, ptr %15, align 1
  %69 = trunc i8 %68 to i1
  ret i1 %69
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca [20 x i64], align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %9 = load ptr, ptr %6, align 4
  store ptr %9, ptr %7, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %8, i8 0, i32 160, i1 false)
  %10 = getelementptr inbounds [20 x i64], ptr %8, i32 0, i32 0
  %11 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_Ed25519_SecretToPublic_point_mul_g(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds [20 x i64], ptr %8, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_PointCompress_point_compress(ptr noundef %12, ptr noundef %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Ed25519_SecretToPublic_point_mul_g(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [20 x i64], align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 160, i1 false)
  %6 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_G_make_g(ptr noundef %6)
  %7 = load ptr, ptr %3, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds [20 x i64], ptr %5, i32 0, i32 0
  call void @Hacl_Impl_Ed25519_Ladder_point_mul(ptr noundef %7, ptr noundef %8, ptr noundef %9)
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
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103238+cd708029e0b2-1~exp1~20250114103342.77)"}
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
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
