; ModuleID = 'hacl-c/hacl-c/NaCl.c'
source_filename = "hacl-c/hacl-c/NaCl.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@NaCl_crypto_box_NONCEBYTES = dso_local global i32 24, align 4
@NaCl_crypto_box_PUBLICKEYBYTES = dso_local global i32 32, align 4
@NaCl_crypto_box_SECRETKEYBYTES = dso_local global i32 32, align 4
@NaCl_crypto_box_MACBYTES = dso_local global i32 16, align 4
@NaCl_crypto_secretbox_NONCEBYTES = dso_local global i32 24, align 4
@NaCl_crypto_secretbox_KEYBYTES = dso_local global i32 32, align 4
@NaCl_crypto_secretbox_MACBYTES = dso_local global i32 16, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = load i64, ptr %10, align 8
  %17 = load ptr, ptr %11, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca [32 x i8], align 1
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %15 = load i64, ptr %10, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %13, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %14, i8 0, i32 32, i1 false)
  %17 = getelementptr inbounds [32 x i8], ptr %14, i32 0, i32 0
  %18 = load ptr, ptr %12, align 4
  %19 = load ptr, ptr %11, align 4
  call void @Hacl_Salsa20_hsalsa20(ptr noundef %17, ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %7, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = load i32, ptr %13, align 4
  %23 = add i32 %22, 32
  %24 = getelementptr inbounds [32 x i8], ptr %14, i32 0, i32 0
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr inbounds i8, ptr %25, i32 16
  call void @Hacl_Salsa20_salsa20(ptr noundef %20, ptr noundef %21, i32 noundef %23, ptr noundef %24, ptr noundef %26, i64 noundef 0)
  %27 = load ptr, ptr %8, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds i8, ptr %28, i32 32
  %30 = load i64, ptr %10, align 8
  %31 = load ptr, ptr %7, align 4
  call void @Hacl_Poly1305_64_crypto_onetimeauth(ptr noundef %27, ptr noundef %29, i64 noundef %30, ptr noundef %31)
  %32 = load ptr, ptr %7, align 4
  call void @Hacl_SecretBox_ZeroPad_set_zero_bytes(ptr noundef %32)
  %33 = getelementptr inbounds [32 x i8], ptr %14, i32 0, i32 0
  call void @Hacl_SecretBox_ZeroPad_set_zero_bytes(ptr noundef %33)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = load i64, ptr %10, align 8
  %17 = load ptr, ptr %11, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca [112 x i8], align 1
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 112, i1 false)
  %21 = getelementptr inbounds [112 x i8], ptr %13, i32 0, i32 0
  store ptr %21, ptr %14, align 4
  %22 = getelementptr inbounds [112 x i8], ptr %13, i32 0, i32 0
  %23 = getelementptr inbounds i8, ptr %22, i32 32
  store ptr %23, ptr %15, align 4
  %24 = getelementptr inbounds [112 x i8], ptr %13, i32 0, i32 0
  %25 = getelementptr inbounds i8, ptr %24, i32 64
  store ptr %25, ptr %16, align 4
  %26 = getelementptr inbounds [112 x i8], ptr %13, i32 0, i32 0
  %27 = getelementptr inbounds i8, ptr %26, i32 96
  store ptr %27, ptr %17, align 4
  %28 = load ptr, ptr %14, align 4
  %29 = load ptr, ptr %12, align 4
  %30 = load ptr, ptr %11, align 4
  call void @Hacl_Salsa20_hsalsa20(ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %15, align 4
  %32 = load ptr, ptr %16, align 4
  %33 = load ptr, ptr %14, align 4
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds i8, ptr %34, i32 16
  call void @Hacl_Salsa20_salsa20(ptr noundef %31, ptr noundef %32, i32 noundef 32, ptr noundef %33, ptr noundef %35, i64 noundef 0)
  %36 = load ptr, ptr %17, align 4
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr inbounds i8, ptr %37, i32 32
  %39 = load i64, ptr %10, align 8
  %40 = load ptr, ptr %15, align 4
  call void @Hacl_Poly1305_64_crypto_onetimeauth(ptr noundef %36, ptr noundef %38, i64 noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %9, align 4
  %42 = load ptr, ptr %17, align 4
  %43 = call zeroext i8 @Hacl_Policies_cmp_bytes(ptr noundef %41, ptr noundef %42, i32 noundef 16)
  store i8 %43, ptr %18, align 1
  %44 = load i8, ptr %18, align 1
  store i8 %44, ptr %19, align 1
  %45 = load ptr, ptr %7, align 4
  %46 = load ptr, ptr %8, align 4
  %47 = load i64, ptr %10, align 8
  %48 = load ptr, ptr %11, align 4
  %49 = load ptr, ptr %14, align 4
  %50 = load i8, ptr %19, align 1
  %51 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached_decrypt(ptr noundef %45, ptr noundef %46, i64 noundef %47, ptr noundef %48, ptr noundef %49, i8 noundef zeroext %50)
  store i32 %51, ptr %20, align 4
  %52 = load i32, ptr %20, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load i64, ptr %8, align 8
  %14 = load ptr, ptr %9, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_easy(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca [16 x i8], align 1
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 16, i1 false)
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds [16 x i8], ptr %11, i32 0, i32 0
  %15 = load ptr, ptr %7, align 4
  %16 = load i64, ptr %8, align 8
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  store i32 %19, ptr %12, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds i8, ptr %20, i32 16
  %22 = getelementptr inbounds [16 x i8], ptr %11, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %22, i32 16, i1 false)
  %23 = load i32, ptr %12, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load i64, ptr %8, align 8
  %14 = load ptr, ptr %9, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_easy(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  %12 = load ptr, ptr %7, align 4
  store ptr %12, ptr %11, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = load i64, ptr %8, align 8
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_beforenm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = call i32 @Hacl_Box_ZeroPad_crypto_box_beforenm(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_Box_ZeroPad_crypto_box_beforenm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [48 x i8], align 1
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %7, i8 0, i32 48, i1 false)
  %10 = getelementptr inbounds [48 x i8], ptr %7, i32 0, i32 0
  store ptr %10, ptr %8, align 4
  %11 = getelementptr inbounds [48 x i8], ptr %7, i32 0, i32 0
  %12 = getelementptr inbounds i8, ptr %11, i32 32
  store ptr %12, ptr %9, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = load ptr, ptr %5, align 4
  call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %4, align 4
  %17 = load ptr, ptr %8, align 4
  %18 = load ptr, ptr %9, align 4
  call void @Hacl_Salsa20_hsalsa20(ptr noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = load i64, ptr %10, align 8
  %17 = load ptr, ptr %11, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = call i32 @Hacl_Box_ZeroPad_crypto_box_detached_afternm(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_Box_ZeroPad_crypto_box_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = load i64, ptr %10, align 8
  %17 = load ptr, ptr %11, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %9, align 4
  store ptr %2, ptr %10, align 4
  store i64 %3, ptr %11, align 8
  store ptr %4, ptr %12, align 4
  store ptr %5, ptr %13, align 4
  store ptr %6, ptr %14, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = load ptr, ptr %9, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = load i64, ptr %11, align 8
  %19 = load ptr, ptr %12, align 4
  %20 = load ptr, ptr %13, align 4
  %21 = load ptr, ptr %14, align 4
  %22 = call i32 @Hacl_Box_ZeroPad_crypto_box_detached(ptr noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_Box_ZeroPad_crypto_box_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca [80 x i8], align 1
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %9, align 4
  store ptr %2, ptr %10, align 4
  store i64 %3, ptr %11, align 8
  store ptr %4, ptr %12, align 4
  store ptr %5, ptr %13, align 4
  store ptr %6, ptr %14, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %15, i8 0, i32 80, i1 false)
  %20 = getelementptr inbounds [80 x i8], ptr %15, i32 0, i32 0
  store ptr %20, ptr %16, align 4
  %21 = getelementptr inbounds [80 x i8], ptr %15, i32 0, i32 0
  %22 = getelementptr inbounds i8, ptr %21, i32 32
  store ptr %22, ptr %17, align 4
  %23 = getelementptr inbounds [80 x i8], ptr %15, i32 0, i32 0
  %24 = getelementptr inbounds i8, ptr %23, i32 64
  store ptr %24, ptr %18, align 4
  %25 = load ptr, ptr %16, align 4
  %26 = load ptr, ptr %14, align 4
  %27 = load ptr, ptr %13, align 4
  call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %17, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = load ptr, ptr %18, align 4
  call void @Hacl_Salsa20_hsalsa20(ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %8, align 4
  %32 = load ptr, ptr %9, align 4
  %33 = load ptr, ptr %10, align 4
  %34 = load i64, ptr %11, align 8
  %35 = load ptr, ptr %12, align 4
  %36 = load ptr, ptr %17, align 4
  %37 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(ptr noundef %31, ptr noundef %32, ptr noundef %33, i64 noundef %34, ptr noundef %35, ptr noundef %36)
  store i32 %37, ptr %19, align 4
  %38 = load i32, ptr %19, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %9, align 4
  store ptr %2, ptr %10, align 4
  store i64 %3, ptr %11, align 8
  store ptr %4, ptr %12, align 4
  store ptr %5, ptr %13, align 4
  store ptr %6, ptr %14, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = load ptr, ptr %9, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = load i64, ptr %11, align 8
  %19 = load ptr, ptr %12, align 4
  %20 = load ptr, ptr %13, align 4
  %21 = load ptr, ptr %14, align 4
  %22 = call i32 @Hacl_Box_ZeroPad_crypto_box_open_detached(ptr noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_Box_ZeroPad_crypto_box_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca [80 x i8], align 1
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %9, align 4
  store ptr %2, ptr %10, align 4
  store i64 %3, ptr %11, align 8
  store ptr %4, ptr %12, align 4
  store ptr %5, ptr %13, align 4
  store ptr %6, ptr %14, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %15, i8 0, i32 80, i1 false)
  %20 = getelementptr inbounds [80 x i8], ptr %15, i32 0, i32 0
  store ptr %20, ptr %16, align 4
  %21 = getelementptr inbounds [80 x i8], ptr %15, i32 0, i32 0
  %22 = getelementptr inbounds i8, ptr %21, i32 32
  store ptr %22, ptr %17, align 4
  %23 = getelementptr inbounds [80 x i8], ptr %15, i32 0, i32 0
  %24 = getelementptr inbounds i8, ptr %23, i32 64
  store ptr %24, ptr %18, align 4
  %25 = load ptr, ptr %16, align 4
  %26 = load ptr, ptr %14, align 4
  %27 = load ptr, ptr %13, align 4
  call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %17, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = load ptr, ptr %18, align 4
  call void @Hacl_Salsa20_hsalsa20(ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %8, align 4
  %32 = load ptr, ptr %9, align 4
  %33 = load ptr, ptr %10, align 4
  %34 = load i64, ptr %11, align 8
  %35 = load ptr, ptr %12, align 4
  %36 = load ptr, ptr %17, align 4
  %37 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(ptr noundef %31, ptr noundef %32, ptr noundef %33, i64 noundef %34, ptr noundef %35, ptr noundef %36)
  store i32 %37, ptr %19, align 4
  %38 = load i32, ptr %19, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load i64, ptr %8, align 8
  %14 = load ptr, ptr %9, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = call i32 @Hacl_Box_ZeroPad_crypto_box_easy_afternm(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_Box_ZeroPad_crypto_box_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca [16 x i8], align 1
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 16, i1 false)
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds [16 x i8], ptr %11, i32 0, i32 0
  %15 = load ptr, ptr %7, align 4
  %16 = load i64, ptr %8, align 8
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = call i32 @Hacl_Box_ZeroPad_crypto_box_detached_afternm(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  store i32 %19, ptr %12, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds i8, ptr %20, i32 16
  %22 = getelementptr inbounds [16 x i8], ptr %11, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %22, i32 16, i1 false)
  %23 = load i32, ptr %12, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store i64 %2, ptr %9, align 8
  store ptr %3, ptr %10, align 4
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 4
  %17 = load ptr, ptr %11, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = call i32 @Hacl_Box_ZeroPad_crypto_box_easy(ptr noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_Box_ZeroPad_crypto_box_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca [16 x i8], align 1
  %14 = alloca i32, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store i64 %2, ptr %9, align 8
  store ptr %3, ptr %10, align 4
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 16, i1 false)
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds [16 x i8], ptr %13, i32 0, i32 0
  %17 = load ptr, ptr %8, align 4
  %18 = load i64, ptr %9, align 8
  %19 = load ptr, ptr %10, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = load ptr, ptr %12, align 4
  %22 = call i32 @Hacl_Box_ZeroPad_crypto_box_detached(ptr noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21)
  store i32 %22, ptr %14, align 4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds i8, ptr %23, i32 16
  %25 = getelementptr inbounds [16 x i8], ptr %13, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %25, i32 16, i1 false)
  %26 = load i32, ptr %14, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store i64 %2, ptr %9, align 8
  store ptr %3, ptr %10, align 4
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 4
  %17 = load ptr, ptr %11, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = call i32 @Hacl_Box_ZeroPad_crypto_box_open_easy(ptr noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_Box_ZeroPad_crypto_box_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store i64 %2, ptr %9, align 8
  store ptr %3, ptr %10, align 4
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 16
  store ptr %15, ptr %13, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = load ptr, ptr %8, align 4
  %18 = load ptr, ptr %13, align 4
  %19 = load i64, ptr %9, align 8
  %20 = load ptr, ptr %10, align 4
  %21 = load ptr, ptr %11, align 4
  %22 = load ptr, ptr %12, align 4
  %23 = call i32 @Hacl_Box_ZeroPad_crypto_box_open_detached(ptr noundef %16, ptr noundef %17, ptr noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22)
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = load i64, ptr %10, align 8
  %17 = load ptr, ptr %11, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = call i32 @Hacl_Box_ZeroPad_crypto_box_open_detached_afternm(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_Box_ZeroPad_crypto_box_open_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = load i64, ptr %10, align 8
  %17 = load ptr, ptr %11, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = call i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_open_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load i64, ptr %8, align 8
  %14 = load ptr, ptr %9, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = call i32 @Hacl_Box_ZeroPad_crypto_box_open_easy_afternm(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_Box_ZeroPad_crypto_box_open_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds i8, ptr %13, i32 16
  store ptr %14, ptr %11, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = load ptr, ptr %11, align 4
  %18 = load i64, ptr %8, align 8
  %19 = load ptr, ptr %9, align 4
  %20 = load ptr, ptr %10, align 4
  %21 = call i32 @Hacl_Box_ZeroPad_crypto_box_open_detached_afternm(ptr noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20)
  store i32 %21, ptr %12, align 4
  %22 = load i32, ptr %12, align 4
  ret i32 %22
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

declare void @Hacl_Salsa20_hsalsa20(ptr noundef, ptr noundef, ptr noundef) #2

declare void @Hacl_Salsa20_salsa20(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare void @Hacl_Poly1305_64_crypto_onetimeauth(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_SecretBox_ZeroPad_set_zero_bytes(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  store i8 0, ptr %3, align 1
  %4 = load i8, ptr %3, align 1
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds i8, ptr %5, i32 0
  store i8 %4, ptr %6, align 1
  %7 = load i8, ptr %3, align 1
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %7, ptr %9, align 1
  %10 = load i8, ptr %3, align 1
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 %10, ptr %12, align 1
  %13 = load i8, ptr %3, align 1
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 3
  store i8 %13, ptr %15, align 1
  %16 = load i8, ptr %3, align 1
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds i8, ptr %17, i32 4
  store i8 %16, ptr %18, align 1
  %19 = load i8, ptr %3, align 1
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds i8, ptr %20, i32 5
  store i8 %19, ptr %21, align 1
  %22 = load i8, ptr %3, align 1
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds i8, ptr %23, i32 6
  store i8 %22, ptr %24, align 1
  %25 = load i8, ptr %3, align 1
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds i8, ptr %26, i32 7
  store i8 %25, ptr %27, align 1
  %28 = load i8, ptr %3, align 1
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds i8, ptr %29, i32 8
  store i8 %28, ptr %30, align 1
  %31 = load i8, ptr %3, align 1
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds i8, ptr %32, i32 9
  store i8 %31, ptr %33, align 1
  %34 = load i8, ptr %3, align 1
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr inbounds i8, ptr %35, i32 10
  store i8 %34, ptr %36, align 1
  %37 = load i8, ptr %3, align 1
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds i8, ptr %38, i32 11
  store i8 %37, ptr %39, align 1
  %40 = load i8, ptr %3, align 1
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds i8, ptr %41, i32 12
  store i8 %40, ptr %42, align 1
  %43 = load i8, ptr %3, align 1
  %44 = load ptr, ptr %2, align 4
  %45 = getelementptr inbounds i8, ptr %44, i32 13
  store i8 %43, ptr %45, align 1
  %46 = load i8, ptr %3, align 1
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr inbounds i8, ptr %47, i32 14
  store i8 %46, ptr %48, align 1
  %49 = load i8, ptr %3, align 1
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr inbounds i8, ptr %50, i32 15
  store i8 %49, ptr %51, align 1
  %52 = load i8, ptr %3, align 1
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr inbounds i8, ptr %53, i32 16
  store i8 %52, ptr %54, align 1
  %55 = load i8, ptr %3, align 1
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds i8, ptr %56, i32 17
  store i8 %55, ptr %57, align 1
  %58 = load i8, ptr %3, align 1
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds i8, ptr %59, i32 18
  store i8 %58, ptr %60, align 1
  %61 = load i8, ptr %3, align 1
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds i8, ptr %62, i32 19
  store i8 %61, ptr %63, align 1
  %64 = load i8, ptr %3, align 1
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds i8, ptr %65, i32 20
  store i8 %64, ptr %66, align 1
  %67 = load i8, ptr %3, align 1
  %68 = load ptr, ptr %2, align 4
  %69 = getelementptr inbounds i8, ptr %68, i32 21
  store i8 %67, ptr %69, align 1
  %70 = load i8, ptr %3, align 1
  %71 = load ptr, ptr %2, align 4
  %72 = getelementptr inbounds i8, ptr %71, i32 22
  store i8 %70, ptr %72, align 1
  %73 = load i8, ptr %3, align 1
  %74 = load ptr, ptr %2, align 4
  %75 = getelementptr inbounds i8, ptr %74, i32 23
  store i8 %73, ptr %75, align 1
  %76 = load i8, ptr %3, align 1
  %77 = load ptr, ptr %2, align 4
  %78 = getelementptr inbounds i8, ptr %77, i32 24
  store i8 %76, ptr %78, align 1
  %79 = load i8, ptr %3, align 1
  %80 = load ptr, ptr %2, align 4
  %81 = getelementptr inbounds i8, ptr %80, i32 25
  store i8 %79, ptr %81, align 1
  %82 = load i8, ptr %3, align 1
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr inbounds i8, ptr %83, i32 26
  store i8 %82, ptr %84, align 1
  %85 = load i8, ptr %3, align 1
  %86 = load ptr, ptr %2, align 4
  %87 = getelementptr inbounds i8, ptr %86, i32 27
  store i8 %85, ptr %87, align 1
  %88 = load i8, ptr %3, align 1
  %89 = load ptr, ptr %2, align 4
  %90 = getelementptr inbounds i8, ptr %89, i32 28
  store i8 %88, ptr %90, align 1
  %91 = load i8, ptr %3, align 1
  %92 = load ptr, ptr %2, align 4
  %93 = getelementptr inbounds i8, ptr %92, i32 29
  store i8 %91, ptr %93, align 1
  %94 = load i8, ptr %3, align 1
  %95 = load ptr, ptr %2, align 4
  %96 = getelementptr inbounds i8, ptr %95, i32 30
  store i8 %94, ptr %96, align 1
  %97 = load i8, ptr %3, align 1
  %98 = load ptr, ptr %2, align 4
  %99 = getelementptr inbounds i8, ptr %98, i32 31
  store i8 %97, ptr %99, align 1
  ret void
}

declare zeroext i8 @Hacl_Policies_cmp_bytes(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %9, align 4
  store i64 %2, ptr %10, align 8
  store ptr %3, ptr %11, align 4
  store ptr %4, ptr %12, align 4
  store i8 %5, ptr %13, align 1
  %15 = load i64, ptr %10, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %14, align 4
  %17 = load i8, ptr %13, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %6
  %21 = load ptr, ptr %8, align 4
  %22 = load ptr, ptr %9, align 4
  %23 = load i32, ptr %14, align 4
  %24 = add i32 %23, 32
  %25 = load ptr, ptr %12, align 4
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr inbounds i8, ptr %26, i32 16
  call void @Hacl_Salsa20_salsa20(ptr noundef %21, ptr noundef %22, i32 noundef %24, ptr noundef %25, ptr noundef %27, i64 noundef 0)
  %28 = load ptr, ptr %12, align 4
  call void @Hacl_SecretBox_ZeroPad_set_zero_bytes(ptr noundef %28)
  %29 = load ptr, ptr %8, align 4
  call void @Hacl_SecretBox_ZeroPad_set_zero_bytes(ptr noundef %29)
  store i32 0, ptr %7, align 4
  br label %31

30:                                               ; preds = %6
  store i32 -1, ptr %7, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, ptr %7, align 4
  ret i32 %32
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

declare void @Hacl_Curve25519_crypto_scalarmult(ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103238+cd708029e0b2-1~exp1~20250114103342.77)"}
