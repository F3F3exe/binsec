; ModuleID = 'hacl-c/hacl-c/Hacl_Chacha20Poly1305.c'
source_filename = "hacl-c/hacl-c/Hacl_Chacha20Poly1305.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_64_State_poly1305_state = type { ptr, ptr }

@Hacl_Chacha20Poly1305_noncelen = dso_local global i32 12, align 4
@Hacl_Chacha20Poly1305_keylen = dso_local global i32 32, align 4
@Hacl_Chacha20Poly1305_maclen = dso_local global i32 16, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20Poly1305_encode_length(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = load i32, ptr %5, align 4
  %10 = zext i32 %9 to i64
  %11 = call i64 @__uint64_identity(i64 noundef %10)
  call void @store64(ptr noundef %8, i64 noundef %11)
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds i8, ptr %12, i32 8
  store ptr %13, ptr %7, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = load i32, ptr %6, align 4
  %16 = zext i32 %15 to i64
  %17 = call i64 @__uint64_identity(i64 noundef %16)
  call void @store64(ptr noundef %14, i64 noundef %17)
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
define internal i64 @__uint64_identity(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_encrypt_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca [80 x i8], align 1
  %18 = alloca ptr, align 4
  %19 = alloca ptr, align 4
  store ptr %0, ptr %9, align 4
  store ptr %1, ptr %10, align 4
  store ptr %2, ptr %11, align 4
  store i32 %3, ptr %12, align 4
  store ptr %4, ptr %13, align 4
  store i32 %5, ptr %14, align 4
  store ptr %6, ptr %15, align 4
  store ptr %7, ptr %16, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 80, i1 false)
  %20 = getelementptr inbounds [80 x i8], ptr %17, i32 0, i32 0
  store ptr %20, ptr %18, align 4
  %21 = getelementptr inbounds [80 x i8], ptr %17, i32 0, i32 0
  %22 = getelementptr inbounds i8, ptr %21, i32 64
  store ptr %22, ptr %19, align 4
  %23 = load ptr, ptr %19, align 4
  %24 = load i32, ptr %14, align 4
  %25 = load i32, ptr %12, align 4
  call void @Hacl_Chacha20Poly1305_encode_length(ptr noundef %23, i32 noundef %24, i32 noundef %25)
  %26 = load ptr, ptr %9, align 4
  %27 = load ptr, ptr %11, align 4
  %28 = load i32, ptr %12, align 4
  %29 = load ptr, ptr %15, align 4
  %30 = load ptr, ptr %16, align 4
  call void @Hacl_Chacha20_chacha20(ptr noundef %26, ptr noundef %27, i32 noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef 1)
  %31 = load ptr, ptr %18, align 4
  %32 = load ptr, ptr %15, align 4
  %33 = load ptr, ptr %16, align 4
  call void @Hacl_Chacha20_chacha20_key_block(ptr noundef %31, ptr noundef %32, ptr noundef %33, i32 noundef 0)
  %34 = load ptr, ptr %9, align 4
  %35 = load i32, ptr %12, align 4
  %36 = load ptr, ptr %10, align 4
  %37 = load ptr, ptr %13, align 4
  %38 = load i32, ptr %14, align 4
  %39 = getelementptr inbounds [80 x i8], ptr %17, i32 0, i32 0
  call void @Hacl_Chacha20Poly1305_aead_encrypt_poly(ptr noundef %34, i32 noundef %35, ptr noundef %36, ptr noundef %37, i32 noundef %38, ptr noundef %39)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

declare void @Hacl_Chacha20_chacha20(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @Hacl_Chacha20_chacha20_key_block(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Chacha20Poly1305_aead_encrypt_poly(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca [6 x i64], align 8
  %18 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  store ptr %0, ptr %7, align 4
  store i32 %1, ptr %8, align 4
  store ptr %2, ptr %9, align 4
  store ptr %3, ptr %10, align 4
  store i32 %4, ptr %11, align 4
  store ptr %5, ptr %12, align 4
  %19 = load ptr, ptr %12, align 4
  store ptr %19, ptr %13, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds i8, ptr %20, i32 64
  store ptr %21, ptr %14, align 4
  %22 = load ptr, ptr %13, align 4
  store ptr %22, ptr %15, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr inbounds i8, ptr %23, i32 16
  store ptr %24, ptr %16, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %17, i8 0, i32 48, i1 false)
  %25 = getelementptr inbounds [6 x i64], ptr %17, i32 0, i32 0
  %26 = getelementptr inbounds [6 x i64], ptr %17, i32 0, i32 0
  %27 = getelementptr inbounds i64, ptr %26, i32 3
  call void @AEAD_Poly1305_64_mk_state(ptr dead_on_unwind writable sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %18, ptr noundef %25, ptr noundef %27)
  %28 = load ptr, ptr %10, align 4
  %29 = load i32, ptr %11, align 4
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %18, i32 0, i32 0
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %18, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  call void @AEAD_Poly1305_64_poly1305_blocks_init(ptr %32, ptr %34, ptr noundef %28, i32 noundef %29, ptr noundef %30)
  %35 = load ptr, ptr %7, align 4
  %36 = load i32, ptr %8, align 4
  %37 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %18, i32 0, i32 0
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %18, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  call void @AEAD_Poly1305_64_poly1305_blocks_continue(ptr %38, ptr %40, ptr noundef %35, i32 noundef %36)
  %41 = load ptr, ptr %14, align 4
  %42 = load ptr, ptr %9, align 4
  %43 = load ptr, ptr %16, align 4
  %44 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %18, i32 0, i32 0
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %18, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  call void @AEAD_Poly1305_64_poly1305_blocks_finish(ptr %45, ptr %47, ptr noundef %41, ptr noundef %42, ptr noundef %43)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %9, align 4
  store ptr %1, ptr %10, align 4
  store ptr %2, ptr %11, align 4
  store i32 %3, ptr %12, align 4
  store ptr %4, ptr %13, align 4
  store i32 %5, ptr %14, align 4
  store ptr %6, ptr %15, align 4
  store ptr %7, ptr %16, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = load i32, ptr %12, align 4
  %22 = load ptr, ptr %13, align 4
  %23 = load i32, ptr %14, align 4
  %24 = load ptr, ptr %15, align 4
  %25 = load ptr, ptr %16, align 4
  %26 = call i32 @Hacl_Chacha20Poly1305_aead_encrypt_(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24, ptr noundef %25)
  store i32 %26, ptr %17, align 4
  %27 = load i32, ptr %17, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_decrypt(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca [96 x i8], align 1
  %18 = alloca ptr, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  store ptr %0, ptr %9, align 4
  store ptr %1, ptr %10, align 4
  store i32 %2, ptr %11, align 4
  store ptr %3, ptr %12, align 4
  store ptr %4, ptr %13, align 4
  store i32 %5, ptr %14, align 4
  store ptr %6, ptr %15, align 4
  store ptr %7, ptr %16, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 96, i1 false)
  %24 = getelementptr inbounds [96 x i8], ptr %17, i32 0, i32 0
  store ptr %24, ptr %18, align 4
  %25 = getelementptr inbounds [96 x i8], ptr %17, i32 0, i32 0
  %26 = getelementptr inbounds i8, ptr %25, i32 64
  store ptr %26, ptr %19, align 4
  %27 = load ptr, ptr %19, align 4
  %28 = load i32, ptr %14, align 4
  %29 = load i32, ptr %11, align 4
  call void @Hacl_Chacha20Poly1305_encode_length(ptr noundef %27, i32 noundef %28, i32 noundef %29)
  %30 = getelementptr inbounds [96 x i8], ptr %17, i32 0, i32 0
  %31 = getelementptr inbounds i8, ptr %30, i32 80
  store ptr %31, ptr %20, align 4
  %32 = load ptr, ptr %18, align 4
  %33 = load ptr, ptr %15, align 4
  %34 = load ptr, ptr %16, align 4
  call void @Hacl_Chacha20_chacha20_key_block(ptr noundef %32, ptr noundef %33, ptr noundef %34, i32 noundef 0)
  %35 = load ptr, ptr %10, align 4
  %36 = load i32, ptr %11, align 4
  %37 = load ptr, ptr %20, align 4
  %38 = load ptr, ptr %13, align 4
  %39 = load i32, ptr %14, align 4
  %40 = getelementptr inbounds [96 x i8], ptr %17, i32 0, i32 0
  call void @Hacl_Chacha20Poly1305_aead_encrypt_poly(ptr noundef %35, i32 noundef %36, ptr noundef %37, ptr noundef %38, i32 noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %12, align 4
  %42 = load ptr, ptr %20, align 4
  %43 = call zeroext i8 @Hacl_Policies_cmp_bytes(ptr noundef %41, ptr noundef %42, i32 noundef 16)
  store i8 %43, ptr %21, align 1
  %44 = load i8, ptr %21, align 1
  store i8 %44, ptr %22, align 1
  %45 = load i8, ptr %22, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %8
  %49 = load ptr, ptr %9, align 4
  %50 = load ptr, ptr %10, align 4
  %51 = load i32, ptr %11, align 4
  %52 = load ptr, ptr %15, align 4
  %53 = load ptr, ptr %16, align 4
  call void @Hacl_Chacha20_chacha20(ptr noundef %49, ptr noundef %50, i32 noundef %51, ptr noundef %52, ptr noundef %53, i32 noundef 1)
  store i32 0, ptr %23, align 4
  br label %55

54:                                               ; preds = %8
  store i32 1, ptr %23, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, ptr %23, align 4
  ret i32 %56
}

declare zeroext i8 @Hacl_Policies_cmp_bytes(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

declare void @AEAD_Poly1305_64_mk_state(ptr dead_on_unwind writable sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4, ptr noundef, ptr noundef) #2

declare void @AEAD_Poly1305_64_poly1305_blocks_init(ptr, ptr, ptr noundef, i32 noundef, ptr noundef) #2

declare void @AEAD_Poly1305_64_poly1305_blocks_continue(ptr, ptr, ptr noundef, i32 noundef) #2

declare void @AEAD_Poly1305_64_poly1305_blocks_finish(ptr, ptr, ptr noundef, ptr noundef, ptr noundef) #2

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
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
