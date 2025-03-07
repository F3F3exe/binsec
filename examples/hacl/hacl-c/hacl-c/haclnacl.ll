; ModuleID = 'hacl-c/hacl-c/haclnacl.c'
source_filename = "hacl-c/hacl-c/haclnacl.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@__const.crypto_box_keypair.basepoint = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, align 1
@__const.crypto_scalarmult_base.basepoint = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @curve25519_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %6, align 4
  call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

declare void @Hacl_Curve25519_crypto_scalarmult(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store ptr %3, ptr %10, align 4
  store ptr %4, ptr %11, align 4
  store i32 %5, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load i32, ptr %9, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = load ptr, ptr %11, align 4
  %18 = load i32, ptr %12, align 4
  call void @Hacl_Chacha20_chacha20(ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18)
  ret void
}

declare void @Hacl_Chacha20_chacha20(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @salsa20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i64, align 8
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store ptr %3, ptr %10, align 4
  store ptr %4, ptr %11, align 4
  store i64 %5, ptr %12, align 8
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load i32, ptr %9, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = load ptr, ptr %11, align 4
  %18 = load i64, ptr %12, align 8
  call void @Hacl_Salsa20_salsa20(ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18)
  ret void
}

declare void @Hacl_Salsa20_salsa20(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @poly1305_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 4
  call void @Hacl_Poly1305_64_crypto_onetimeauth(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12)
  ret void
}

declare void @Hacl_Poly1305_64_crypto_onetimeauth(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aead_chacha20_poly1305_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  store ptr %0, ptr %9, align 4
  store ptr %1, ptr %10, align 4
  store ptr %2, ptr %11, align 4
  store i32 %3, ptr %12, align 4
  store ptr %4, ptr %13, align 4
  store i32 %5, ptr %14, align 4
  store ptr %6, ptr %15, align 4
  store ptr %7, ptr %16, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = load i32, ptr %12, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = load i32, ptr %14, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = load ptr, ptr %16, align 4
  %25 = call i32 @Hacl_Chacha20Poly1305_aead_encrypt(ptr noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef %20, ptr noundef %21, i32 noundef %22, ptr noundef %23, ptr noundef %24)
  ret i32 %25
}

declare i32 @Hacl_Chacha20Poly1305_aead_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aead_chacha20_poly1305_decrypt(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  store ptr %0, ptr %9, align 4
  store ptr %1, ptr %10, align 4
  store i32 %2, ptr %11, align 4
  store ptr %3, ptr %12, align 4
  store ptr %4, ptr %13, align 4
  store i32 %5, ptr %14, align 4
  store ptr %6, ptr %15, align 4
  store ptr %7, ptr %16, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = load i32, ptr %11, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = load i32, ptr %14, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = load ptr, ptr %16, align 4
  %25 = call i32 @Hacl_Chacha20Poly1305_aead_decrypt(ptr noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef %22, ptr noundef %23, ptr noundef %24)
  ret i32 %25
}

declare i32 @Hacl_Chacha20Poly1305_aead_decrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ed25519_secret_to_public(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Ed25519_secret_to_public(ptr noundef %5, ptr noundef %6)
  ret void
}

declare void @Hacl_Ed25519_secret_to_public(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ed25519_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
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
  call void @Hacl_Ed25519_sign(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12)
  ret void
}

declare void @Hacl_Ed25519_sign(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ed25519_verify(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
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
  %13 = call zeroext i1 @Hacl_Ed25519_verify(ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12)
  ret i1 %13
}

declare zeroext i1 @Hacl_Ed25519_verify(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha2_512_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  call void @Hacl_SHA2_512_hash(ptr noundef %7, ptr noundef %8, i32 noundef %9)
  ret void
}

declare void @Hacl_SHA2_512_hash(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_auth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %8, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load i64, ptr %7, align 8
  %13 = trunc i64 %12 to i32
  call void @Hacl_HMAC_SHA2_256_hmac_core(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %13)
  ret i32 0
}

declare void @Hacl_HMAC_SHA2_256_hmac_core(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_auth_verify(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  %9 = alloca [32 x i8], align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 4
  store i8 -1, ptr %10, align 1
  %12 = getelementptr inbounds [32 x i8], ptr %9, i32 0, i32 0
  %13 = load ptr, ptr %8, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = load i64, ptr %7, align 8
  %16 = trunc i64 %15 to i32
  call void @Hacl_HMAC_SHA2_256_hmac_core(ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %16)
  store i32 0, ptr %11, align 4
  br label %17

17:                                               ; preds = %34, %4
  %18 = load i32, ptr %11, align 4
  %19 = icmp slt i32 %18, 32
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i8, ptr %10, align 1
  %22 = zext i8 %21 to i32
  %23 = load ptr, ptr %5, align 4
  %24 = load i32, ptr %11, align 4
  %25 = getelementptr inbounds i8, ptr %23, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = load i32, ptr %11, align 4
  %28 = getelementptr inbounds [32 x i8], ptr %9, i32 0, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = call zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %26, i8 noundef zeroext %29)
  %31 = zext i8 %30 to i32
  %32 = and i32 %22, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, ptr %10, align 1
  br label %34

34:                                               ; preds = %20
  %35 = load i32, ptr %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %11, align 4
  br label %17, !llvm.loop !7

37:                                               ; preds = %17
  %38 = load i8, ptr %10, align 1
  %39 = zext i8 %38 to i32
  %40 = ashr i32 %39, 7
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr %10, align 1
  %42 = load i8, ptr %10, align 1
  %43 = zext i8 %42 to i32
  %44 = sub nsw i32 %43, 1
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr %4, align 1
  %8 = zext i8 %7 to i32
  %9 = xor i32 %6, %8
  %10 = xor i32 %9, -1
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %3, align 1
  %12 = load i8, ptr %3, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 4
  %15 = load i8, ptr %3, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, %14
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %3, align 1
  %19 = load i8, ptr %3, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 2
  %22 = load i8, ptr %3, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %3, align 1
  %26 = load i8, ptr %3, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 1
  %29 = load i8, ptr %3, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %3, align 1
  %33 = load i8, ptr %3, align 1
  %34 = sext i8 %33 to i32
  %35 = ashr i32 %34, 7
  %36 = trunc i32 %35 to i8
  ret i8 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_keypair(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [32 x i8], align 1
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %6 = load ptr, ptr %4, align 4
  call void @randombytes(ptr noundef %6, i64 noundef 32)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %5, ptr align 1 @__const.crypto_box_keypair.basepoint, i32 32, i1 false)
  %7 = load ptr, ptr %3, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds [32 x i8], ptr %5, i32 0, i32 0
  call void @curve25519_scalarmult(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 0
}

declare void @randombytes(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
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
  %19 = call i32 @NaCl_crypto_box_easy(ptr noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

declare i32 @NaCl_crypto_box_easy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
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
  %19 = call i32 @NaCl_crypto_box_open_easy(ptr noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

declare i32 @NaCl_crypto_box_open_easy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_beforenm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = call i32 @NaCl_crypto_box_beforenm(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %10
}

declare i32 @NaCl_crypto_box_beforenm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  %16 = call i32 @NaCl_crypto_box_easy_afternm(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  ret i32 %16
}

declare i32 @NaCl_crypto_box_easy_afternm(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  %16 = call i32 @NaCl_crypto_box_open_easy_afternm(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  ret i32 %16
}

declare i32 @NaCl_crypto_box_open_easy_afternm(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
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
  %19 = call i32 @NaCl_crypto_box_detached_afternm(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

declare i32 @NaCl_crypto_box_detached_afternm(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
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
  %22 = call i32 @NaCl_crypto_box_detached(ptr noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21)
  ret i32 %22
}

declare i32 @NaCl_crypto_box_detached(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
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
  %22 = call i32 @NaCl_crypto_box_open_detached(ptr noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21)
  ret i32 %22
}

declare i32 @NaCl_crypto_box_open_detached(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
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
  %19 = call i32 @NaCl_crypto_box_detached_afternm(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
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
  %16 = sub i64 %15, 32
  %17 = load ptr, ptr %10, align 4
  %18 = load ptr, ptr %11, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = call i32 @crypto_box_easy(ptr noundef %13, ptr noundef %14, i64 noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19)
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
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
  %16 = sub i64 %15, 32
  %17 = load ptr, ptr %10, align 4
  %18 = load ptr, ptr %11, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = call i32 @crypto_box_open_easy(ptr noundef %13, ptr noundef %14, i64 noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19)
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  %16 = call i32 @NaCl_crypto_box_easy_afternm(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  %16 = call i32 @NaCl_crypto_box_open_easy_afternm(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i64, ptr %6, align 8
  %10 = trunc i64 %9 to i32
  call void @Hacl_SHA2_256_hash(ptr noundef %7, ptr noundef %8, i32 noundef %10)
  ret i32 0
}

declare void @Hacl_SHA2_256_hash(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 4
  call void @poly1305_onetimeauth(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_verify(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  %9 = alloca [16 x i8], align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 4
  store i8 -1, ptr %10, align 1
  %12 = getelementptr inbounds [16 x i8], ptr %9, i32 0, i32 0
  %13 = load ptr, ptr %6, align 4
  %14 = load i64, ptr %7, align 8
  %15 = load ptr, ptr %8, align 4
  call void @poly1305_onetimeauth(ptr noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15)
  store i32 0, ptr %11, align 4
  br label %16

16:                                               ; preds = %33, %4
  %17 = load i32, ptr %11, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i8, ptr %10, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, ptr %11, align 4
  %23 = getelementptr inbounds [16 x i8], ptr %9, i32 0, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = load ptr, ptr %5, align 4
  %26 = load i32, ptr %11, align 4
  %27 = getelementptr inbounds i8, ptr %25, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = call zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %24, i8 noundef zeroext %28)
  %30 = zext i8 %29 to i32
  %31 = and i32 %21, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %10, align 1
  br label %33

33:                                               ; preds = %19
  %34 = load i32, ptr %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %11, align 4
  br label %16, !llvm.loop !9

36:                                               ; preds = %16
  %37 = load i8, ptr %10, align 1
  %38 = zext i8 %37 to i32
  %39 = ashr i32 %38, 7
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %10, align 1
  %41 = load i8, ptr %10, align 1
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %42, 1
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_scalarmult_base(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [32 x i8], align 1
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %5, ptr align 1 @__const.crypto_scalarmult_base.basepoint, i32 32, i1 false)
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds [32 x i8], ptr %5, i32 0, i32 0
  call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %6, align 4
  call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
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
  %19 = call i32 @NaCl_crypto_secretbox_detached(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

declare i32 @NaCl_crypto_secretbox_detached(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
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
  %19 = call i32 @NaCl_crypto_secretbox_open_detached(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

declare i32 @NaCl_crypto_secretbox_open_detached(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  %16 = call i32 @NaCl_crypto_secretbox_easy(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  ret i32 %16
}

declare i32 @NaCl_crypto_secretbox_easy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  %16 = call i32 @NaCl_crypto_secretbox_open_easy(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  ret i32 %16
}

declare i32 @NaCl_crypto_secretbox_open_easy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  %14 = sub i64 %13, 32
  %15 = load ptr, ptr %9, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = call i32 @crypto_secretbox_easy(ptr noundef %11, ptr noundef %12, i64 noundef %14, ptr noundef %15, ptr noundef %16)
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
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
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds i8, ptr %13, i32 16
  %15 = load i64, ptr %8, align 8
  %16 = sub i64 %15, 32
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = call i32 @crypto_secretbox_open_detached(ptr noundef %11, ptr noundef %12, ptr noundef %14, i64 noundef %16, ptr noundef %17, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %8, align 4
  store i64 %3, ptr %9, align 8
  store ptr %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %10, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = load i64, ptr %9, align 8
  %15 = trunc i64 %14 to i32
  call void @Hacl_Ed25519_sign(ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %15)
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds i8, ptr %16, i32 64
  %18 = load ptr, ptr %8, align 4
  %19 = load i64, ptr %9, align 8
  %20 = mul i64 %19, 1
  %21 = trunc i64 %20 to i32
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %17, ptr align 1 %18, i32 %21, i1 false)
  %22 = load i64, ptr %9, align 8
  %23 = add i64 %22, 64
  %24 = load ptr, ptr %7, align 4
  store i64 %23, ptr %24, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign_open(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 4
  %13 = load ptr, ptr %11, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 64
  %16 = load i64, ptr %10, align 8
  %17 = sub i64 %16, 64
  %18 = trunc i64 %17 to i32
  %19 = load ptr, ptr %9, align 4
  %20 = call zeroext i1 @Hacl_Ed25519_verify(ptr noundef %13, ptr noundef %15, i32 noundef %18, ptr noundef %19)
  %21 = zext i1 %20 to i32
  store i32 %21, ptr %12, align 4
  %22 = load i32, ptr %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %5
  %25 = load ptr, ptr %7, align 4
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds i8, ptr %26, i32 64
  %28 = load i64, ptr %10, align 8
  %29 = sub i64 %28, 64
  %30 = mul i64 1, %29
  %31 = trunc i64 %30 to i32
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %25, ptr align 1 %27, i32 %31, i1 false)
  %32 = load i64, ptr %10, align 8
  %33 = sub i64 %32, 64
  %34 = load ptr, ptr %8, align 4
  store i64 %33, ptr %34, align 4
  store i32 0, ptr %6, align 4
  br label %36

35:                                               ; preds = %5
  store i32 -1, ptr %6, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, ptr %6, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign_keypair(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %6 = load ptr, ptr %4, align 4
  call void @randombytes(ptr noundef %6, i64 noundef 32)
  %7 = load ptr, ptr %3, align 4
  %8 = load ptr, ptr %4, align 4
  call void @Hacl_Ed25519_secret_to_public(ptr noundef %7, ptr noundef %8)
  store i32 0, ptr %5, align 4
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load ptr, ptr %3, align 4
  %14 = load i32, ptr %5, align 4
  %15 = getelementptr inbounds i8, ptr %13, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = load ptr, ptr %4, align 4
  %18 = load i32, ptr %5, align 4
  %19 = add nsw i32 32, %18
  %20 = getelementptr inbounds i8, ptr %17, i32 %19
  store i8 %16, ptr %20, align 1
  br label %21

21:                                               ; preds = %12
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %5, align 4
  br label %9, !llvm.loop !10

24:                                               ; preds = %9
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign_secret_to_public(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @Hacl_Ed25519_secret_to_public(ptr noundef %5, ptr noundef %6)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca [32 x i8], align 1
  store ptr %0, ptr %5, align 4
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = load i64, ptr %6, align 8
  %12 = mul i64 %11, 1
  %13 = trunc i64 %12 to i32
  call void @llvm.memset.p0.i32(ptr align 1 %10, i8 0, i32 %13, i1 false)
  %14 = getelementptr inbounds [32 x i8], ptr %9, i32 0, i32 0
  %15 = load ptr, ptr %8, align 4
  %16 = load ptr, ptr %7, align 4
  call void @Hacl_Salsa20_hsalsa20(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %5, align 4
  %18 = load ptr, ptr %5, align 4
  %19 = load i64, ptr %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds [32 x i8], ptr %9, i32 0, i32 0
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds i8, ptr %22, i32 16
  call void @Hacl_Salsa20_salsa20(ptr noundef %17, ptr noundef %18, i32 noundef %20, ptr noundef %21, ptr noundef %23, i64 noundef 0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

declare void @Hacl_Salsa20_hsalsa20(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_xor(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca [32 x i8], align 1
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %10, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = load i64, ptr %8, align 8
  %14 = mul i64 %13, 1
  %15 = trunc i64 %14 to i32
  call void @llvm.memset.p0.i32(ptr align 1 %12, i8 0, i32 %15, i1 false)
  %16 = getelementptr inbounds [32 x i8], ptr %11, i32 0, i32 0
  %17 = load ptr, ptr %10, align 4
  %18 = load ptr, ptr %9, align 4
  call void @Hacl_Salsa20_hsalsa20(ptr noundef %16, ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %6, align 4
  %20 = load ptr, ptr %7, align 4
  %21 = load i64, ptr %8, align 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds [32 x i8], ptr %11, i32 0, i32 0
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds i8, ptr %24, i32 16
  call void @Hacl_Salsa20_salsa20(ptr noundef %19, ptr noundef %20, i32 noundef %22, ptr noundef %23, ptr noundef %25, i64 noundef 0)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
