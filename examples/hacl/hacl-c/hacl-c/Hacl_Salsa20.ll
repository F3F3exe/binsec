; ModuleID = 'hacl-c/hacl-c/Hacl_Salsa20.c'
source_filename = "hacl-c/hacl-c/Hacl_Salsa20.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Salsa20_salsa20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
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
  call void @Hacl_Impl_Salsa20_salsa20(ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_salsa20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i64, align 8
  %13 = alloca [16 x i32], align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store ptr %3, ptr %10, align 4
  store ptr %4, ptr %11, align 4
  store i64 %5, ptr %12, align 8
  call void @llvm.memset.p0.i32(ptr align 4 %13, i8 0, i32 64, i1 false)
  %15 = getelementptr inbounds [16 x i32], ptr %13, i32 0, i32 0
  store ptr %15, ptr %14, align 4
  %16 = load ptr, ptr %14, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = load ptr, ptr %11, align 4
  call void @Hacl_Impl_Salsa20_init(ptr noundef %16, ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %7, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = load i32, ptr %9, align 4
  %22 = load ptr, ptr %14, align 4
  %23 = load i64, ptr %12, align 8
  call void @Hacl_Impl_Salsa20_salsa20_counter_mode(ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %22, i64 noundef %23)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Salsa20_hsalsa20(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %6, align 4
  %9 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_HSalsa20_crypto_core_hsalsa20(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_HSalsa20_crypto_core_hsalsa20(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [24 x i32], align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %7, i8 0, i32 96, i1 false)
  %18 = getelementptr inbounds [24 x i32], ptr %7, i32 0, i32 0
  store ptr %18, ptr %8, align 4
  %19 = getelementptr inbounds [24 x i32], ptr %7, i32 0, i32 0
  %20 = getelementptr inbounds i32, ptr %19, i32 16
  store ptr %20, ptr %9, align 4
  %21 = load ptr, ptr %8, align 4
  %22 = load ptr, ptr %6, align 4
  %23 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_HSalsa20_setup(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Salsa20_rounds(ptr noundef %24)
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds i32, ptr %25, i32 0
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %10, align 4
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds i32, ptr %28, i32 5
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %11, align 4
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr inbounds i32, ptr %31, i32 10
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %12, align 4
  %34 = load ptr, ptr %8, align 4
  %35 = getelementptr inbounds i32, ptr %34, i32 15
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %13, align 4
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr inbounds i32, ptr %37, i32 6
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %14, align 4
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr inbounds i32, ptr %40, i32 7
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %15, align 4
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr inbounds i32, ptr %43, i32 8
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %16, align 4
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr inbounds i32, ptr %46, i32 9
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %17, align 4
  %49 = load ptr, ptr %9, align 4
  %50 = load i32, ptr %10, align 4
  %51 = load i32, ptr %11, align 4
  %52 = load i32, ptr %12, align 4
  %53 = load i32, ptr %13, align 4
  %54 = load i32, ptr %14, align 4
  %55 = load i32, ptr %15, align 4
  %56 = load i32, ptr %16, align 4
  %57 = load i32, ptr %17, align 4
  call void @Hacl_Lib_Create_make_h32_8(ptr noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57)
  %58 = load ptr, ptr %4, align 4
  %59 = load ptr, ptr %9, align 4
  call void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(ptr noundef %58, ptr noundef %59, i32 noundef 8)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_Salsa20_setup(ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_salsa20_counter_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i64 %4, ptr %10, align 8
  %17 = load i32, ptr %8, align 4
  %18 = lshr i32 %17, 6
  store i32 %18, ptr %11, align 4
  %19 = load i32, ptr %8, align 4
  %20 = and i32 %19, 63
  store i32 %20, ptr %12, align 4
  %21 = load ptr, ptr %6, align 4
  store ptr %21, ptr %13, align 4
  %22 = load ptr, ptr %7, align 4
  store ptr %22, ptr %14, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = load i32, ptr %11, align 4
  %25 = mul i32 64, %24
  %26 = getelementptr inbounds i8, ptr %23, i32 %25
  store ptr %26, ptr %15, align 4
  %27 = load ptr, ptr %7, align 4
  %28 = load i32, ptr %11, align 4
  %29 = mul i32 64, %28
  %30 = getelementptr inbounds i8, ptr %27, i32 %29
  store ptr %30, ptr %16, align 4
  %31 = load ptr, ptr %13, align 4
  %32 = load ptr, ptr %14, align 4
  %33 = load i32, ptr %11, align 4
  %34 = load ptr, ptr %9, align 4
  %35 = load i64, ptr %10, align 8
  call void @Hacl_Impl_Salsa20_salsa20_counter_mode_blocks(ptr noundef %31, ptr noundef %32, i32 noundef %33, ptr noundef %34, i64 noundef %35)
  %36 = load i32, ptr %12, align 4
  %37 = icmp ugt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %5
  %39 = load ptr, ptr %15, align 4
  %40 = load ptr, ptr %16, align 4
  %41 = load i32, ptr %12, align 4
  %42 = load ptr, ptr %9, align 4
  %43 = load i64, ptr %10, align 8
  %44 = load i32, ptr %11, align 4
  %45 = zext i32 %44 to i64
  %46 = add i64 %43, %45
  call void @Hacl_Impl_Salsa20_update_last(ptr noundef %39, ptr noundef %40, i32 noundef %41, ptr noundef %42, i64 noundef %46)
  br label %47

47:                                               ; preds = %38, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca [10 x i32], align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i64 %3, ptr %8, align 8
  call void @llvm.memset.p0.i32(ptr align 4 %9, i8 0, i32 40, i1 false)
  %24 = getelementptr inbounds [10 x i32], ptr %9, i32 0, i32 0
  store ptr %24, ptr %10, align 4
  %25 = getelementptr inbounds [10 x i32], ptr %9, i32 0, i32 0
  %26 = getelementptr inbounds i32, ptr %25, i32 8
  store ptr %26, ptr %11, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = load ptr, ptr %6, align 4
  call void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef %27, ptr noundef %28, i32 noundef 8)
  %29 = load ptr, ptr %11, align 4
  %30 = load ptr, ptr %7, align 4
  call void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef %29, ptr noundef %30, i32 noundef 2)
  %31 = load i64, ptr %8, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, ptr %12, align 4
  %33 = load i64, ptr %8, align 8
  %34 = lshr i64 %33, 32
  %35 = trunc i64 %34 to i32
  store i32 %35, ptr %13, align 4
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr inbounds i32, ptr %36, i32 0
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %14, align 4
  %39 = load ptr, ptr %10, align 4
  %40 = getelementptr inbounds i32, ptr %39, i32 1
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %15, align 4
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds i32, ptr %42, i32 2
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %16, align 4
  %45 = load ptr, ptr %10, align 4
  %46 = getelementptr inbounds i32, ptr %45, i32 3
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %17, align 4
  %48 = load ptr, ptr %10, align 4
  %49 = getelementptr inbounds i32, ptr %48, i32 4
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %18, align 4
  %51 = load ptr, ptr %10, align 4
  %52 = getelementptr inbounds i32, ptr %51, i32 5
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %19, align 4
  %54 = load ptr, ptr %10, align 4
  %55 = getelementptr inbounds i32, ptr %54, i32 6
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %20, align 4
  %57 = load ptr, ptr %10, align 4
  %58 = getelementptr inbounds i32, ptr %57, i32 7
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %21, align 4
  %60 = load ptr, ptr %11, align 4
  %61 = getelementptr inbounds i32, ptr %60, i32 0
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %22, align 4
  %63 = load ptr, ptr %11, align 4
  %64 = getelementptr inbounds i32, ptr %63, i32 1
  %65 = load i32, ptr %64, align 4
  store i32 %65, ptr %23, align 4
  %66 = load ptr, ptr %5, align 4
  %67 = load i32, ptr %14, align 4
  %68 = load i32, ptr %15, align 4
  %69 = load i32, ptr %16, align 4
  %70 = load i32, ptr %17, align 4
  %71 = load i32, ptr %22, align 4
  %72 = load i32, ptr %23, align 4
  %73 = load i32, ptr %12, align 4
  %74 = load i32, ptr %13, align 4
  %75 = load i32, ptr %18, align 4
  %76 = load i32, ptr %19, align 4
  %77 = load i32, ptr %20, align 4
  %78 = load i32, ptr %21, align 4
  call void @Hacl_Lib_Create_make_h32_16(ptr noundef %66, i32 noundef 1634760805, i32 noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef %70, i32 noundef 857760878, i32 noundef %71, i32 noundef %72, i32 noundef %73, i32 noundef %74, i32 noundef 2036477234, i32 noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef %78, i32 noundef 1797285236)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
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
  %17 = mul i32 4, %16
  %18 = getelementptr inbounds i8, ptr %15, i32 %17
  store ptr %18, ptr %8, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = call i32 @load32(ptr noundef %19)
  %21 = call i32 @__uint32_identity(i32 noundef %20)
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %9, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds i32, ptr %23, i32 %24
  store i32 %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %14
  %27 = load i32, ptr %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %7, align 4
  br label %10, !llvm.loop !7

29:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Lib_Create_make_h32_16(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) #0 {
  %18 = alloca ptr, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store ptr %0, ptr %18, align 4
  store i32 %1, ptr %19, align 4
  store i32 %2, ptr %20, align 4
  store i32 %3, ptr %21, align 4
  store i32 %4, ptr %22, align 4
  store i32 %5, ptr %23, align 4
  store i32 %6, ptr %24, align 4
  store i32 %7, ptr %25, align 4
  store i32 %8, ptr %26, align 4
  store i32 %9, ptr %27, align 4
  store i32 %10, ptr %28, align 4
  store i32 %11, ptr %29, align 4
  store i32 %12, ptr %30, align 4
  store i32 %13, ptr %31, align 4
  store i32 %14, ptr %32, align 4
  store i32 %15, ptr %33, align 4
  store i32 %16, ptr %34, align 4
  %35 = load ptr, ptr %18, align 4
  %36 = load i32, ptr %19, align 4
  %37 = load i32, ptr %20, align 4
  %38 = load i32, ptr %21, align 4
  %39 = load i32, ptr %22, align 4
  %40 = load i32, ptr %23, align 4
  %41 = load i32, ptr %24, align 4
  %42 = load i32, ptr %25, align 4
  %43 = load i32, ptr %26, align 4
  call void @Hacl_Lib_Create_make_h32_8(ptr noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43)
  %44 = load ptr, ptr %18, align 4
  %45 = getelementptr inbounds i32, ptr %44, i32 8
  %46 = load i32, ptr %27, align 4
  %47 = load i32, ptr %28, align 4
  %48 = load i32, ptr %29, align 4
  %49 = load i32, ptr %30, align 4
  %50 = load i32, ptr %31, align 4
  %51 = load i32, ptr %32, align 4
  %52 = load i32, ptr %33, align 4
  %53 = load i32, ptr %34, align 4
  call void @Hacl_Lib_Create_make_h32_8(ptr noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53)
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
define internal i32 @load32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  %4 = load ptr, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %3, ptr align 1 %4, i32 4, i1 false)
  %5 = load i32, ptr %3, align 4
  ret i32 %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Lib_Create_make_h32_8(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %10, align 4
  store i32 %1, ptr %11, align 4
  store i32 %2, ptr %12, align 4
  store i32 %3, ptr %13, align 4
  store i32 %4, ptr %14, align 4
  store i32 %5, ptr %15, align 4
  store i32 %6, ptr %16, align 4
  store i32 %7, ptr %17, align 4
  store i32 %8, ptr %18, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = load i32, ptr %11, align 4
  %21 = load i32, ptr %12, align 4
  %22 = load i32, ptr %13, align 4
  %23 = load i32, ptr %14, align 4
  call void @Hacl_Lib_Create_make_h32_4(ptr noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23)
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr inbounds i32, ptr %24, i32 4
  %26 = load i32, ptr %15, align 4
  %27 = load i32, ptr %16, align 4
  %28 = load i32, ptr %17, align 4
  %29 = load i32, ptr %18, align 4
  call void @Hacl_Lib_Create_make_h32_4(ptr noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Lib_Create_make_h32_4(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load i32, ptr %7, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds i32, ptr %12, i32 0
  store i32 %11, ptr %13, align 4
  %14 = load i32, ptr %8, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds i32, ptr %15, i32 1
  store i32 %14, ptr %16, align 4
  %17 = load i32, ptr %9, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds i32, ptr %18, i32 2
  store i32 %17, ptr %19, align 4
  %20 = load i32, ptr %10, align 4
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds i32, ptr %21, i32 3
  store i32 %20, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_salsa20_counter_mode_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i64 %4, ptr %10, align 8
  store i32 0, ptr %11, align 4
  br label %14

14:                                               ; preds = %34, %5
  %15 = load i32, ptr %11, align 4
  %16 = load i32, ptr %8, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 4
  %20 = load i32, ptr %11, align 4
  %21 = mul i32 64, %20
  %22 = getelementptr inbounds i8, ptr %19, i32 %21
  store ptr %22, ptr %12, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = load i32, ptr %11, align 4
  %25 = mul i32 64, %24
  %26 = getelementptr inbounds i8, ptr %23, i32 %25
  store ptr %26, ptr %13, align 4
  %27 = load ptr, ptr %13, align 4
  %28 = load ptr, ptr %12, align 4
  %29 = load ptr, ptr %9, align 4
  %30 = load i64, ptr %10, align 8
  %31 = load i32, ptr %11, align 4
  %32 = zext i32 %31 to i64
  %33 = add i64 %30, %32
  call void @Hacl_Impl_Salsa20_update(ptr noundef %27, ptr noundef %28, ptr noundef %29, i64 noundef %33)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, ptr %11, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %11, align 4
  br label %14, !llvm.loop !9

37:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_update_last(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = alloca [64 x i8], align 1
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i64 %4, ptr %10, align 8
  call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 64, i1 false)
  %16 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 0
  %17 = load ptr, ptr %9, align 4
  %18 = load i64, ptr %10, align 8
  call void @Hacl_Impl_Salsa20_salsa20_block(ptr noundef %16, ptr noundef %17, i64 noundef %18)
  %19 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 0
  store ptr %19, ptr %12, align 4
  store i32 0, ptr %13, align 4
  br label %20

20:                                               ; preds = %42, %5
  %21 = load i32, ptr %13, align 4
  %22 = load i32, ptr %8, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 4
  %26 = load i32, ptr %13, align 4
  %27 = getelementptr inbounds i8, ptr %25, i32 %26
  %28 = load i8, ptr %27, align 1
  store i8 %28, ptr %14, align 1
  %29 = load ptr, ptr %12, align 4
  %30 = load i32, ptr %13, align 4
  %31 = getelementptr inbounds i8, ptr %29, i32 %30
  %32 = load i8, ptr %31, align 1
  store i8 %32, ptr %15, align 1
  %33 = load i8, ptr %14, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, ptr %15, align 1
  %36 = zext i8 %35 to i32
  %37 = xor i32 %34, %36
  %38 = trunc i32 %37 to i8
  %39 = load ptr, ptr %6, align 4
  %40 = load i32, ptr %13, align 4
  %41 = getelementptr inbounds i8, ptr %39, i32 %40
  store i8 %38, ptr %41, align 1
  br label %42

42:                                               ; preds = %24
  %43 = load i32, ptr %13, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %13, align 4
  br label %20, !llvm.loop !10

45:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca [48 x i32], align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i64 %3, ptr %8, align 8
  call void @llvm.memset.p0.i32(ptr align 4 %9, i8 0, i32 192, i1 false)
  %16 = getelementptr inbounds [48 x i32], ptr %9, i32 0, i32 0
  store ptr %16, ptr %10, align 4
  %17 = getelementptr inbounds [48 x i32], ptr %9, i32 0, i32 0
  %18 = getelementptr inbounds i32, ptr %17, i32 16
  store ptr %18, ptr %11, align 4
  %19 = getelementptr inbounds [48 x i32], ptr %9, i32 0, i32 0
  %20 = getelementptr inbounds i32, ptr %19, i32 32
  store ptr %20, ptr %12, align 4
  %21 = load ptr, ptr %10, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = load i64, ptr %8, align 8
  call void @Hacl_Impl_Salsa20_salsa20_core(ptr noundef %21, ptr noundef %22, i64 noundef %23)
  %24 = load ptr, ptr %11, align 4
  %25 = load ptr, ptr %6, align 4
  call void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef %24, ptr noundef %25, i32 noundef 16)
  store i32 0, ptr %13, align 4
  br label %26

26:                                               ; preds = %44, %4
  %27 = load i32, ptr %13, align 4
  %28 = icmp ult i32 %27, 16
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load ptr, ptr %11, align 4
  %31 = load i32, ptr %13, align 4
  %32 = getelementptr inbounds i32, ptr %30, i32 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %14, align 4
  %34 = load ptr, ptr %10, align 4
  %35 = load i32, ptr %13, align 4
  %36 = getelementptr inbounds i32, ptr %34, i32 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %15, align 4
  %38 = load i32, ptr %14, align 4
  %39 = load i32, ptr %15, align 4
  %40 = xor i32 %38, %39
  %41 = load ptr, ptr %12, align 4
  %42 = load i32, ptr %13, align 4
  %43 = getelementptr inbounds i32, ptr %41, i32 %42
  store i32 %40, ptr %43, align 4
  br label %44

44:                                               ; preds = %29
  %45 = load i32, ptr %13, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %13, align 4
  br label %26, !llvm.loop !11

47:                                               ; preds = %26
  %48 = load ptr, ptr %5, align 4
  %49 = load ptr, ptr %12, align 4
  call void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(ptr noundef %48, ptr noundef %49, i32 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_salsa20_core(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %9 = load i64, ptr %6, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %7, align 4
  %11 = load i64, ptr %6, align 8
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %8, align 4
  %14 = load i32, ptr %7, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds i32, ptr %15, i32 8
  store i32 %14, ptr %16, align 4
  %17 = load i32, ptr %8, align 4
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds i32, ptr %18, i32 9
  store i32 %17, ptr %19, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_Salsa20_copy_state(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_Salsa20_rounds(ptr noundef %22)
  %23 = load ptr, ptr %4, align 4
  %24 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_Salsa20_sum_states(ptr noundef %23, ptr noundef %24)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %17 = getelementptr inbounds i32, ptr %15, i32 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %8, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = load i32, ptr %7, align 4
  %21 = mul i32 4, %20
  %22 = getelementptr inbounds i8, ptr %19, i32 %21
  store ptr %22, ptr %9, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = load i32, ptr %8, align 4
  %25 = call i32 @__uint32_identity(i32 noundef %24)
  call void @store32(ptr noundef %23, i32 noundef %25)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, ptr %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %7, align 4
  br label %10, !llvm.loop !12

29:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_copy_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 4 %6, i32 64, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_rounds(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %9, %1
  %5 = load i32, ptr %3, align 4
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Salsa20_double_round(ptr noundef %8)
  br label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %3, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %3, align 4
  br label %4, !llvm.loop !13

12:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_sum_states(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, ptr %5, align 4
  %10 = icmp ult i32 %9, 16
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 4
  %13 = load i32, ptr %5, align 4
  %14 = getelementptr inbounds i32, ptr %12, i32 %13
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %6, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = load i32, ptr %5, align 4
  %18 = getelementptr inbounds i32, ptr %16, i32 %17
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %7, align 4
  %20 = load i32, ptr %6, align 4
  %21 = load i32, ptr %7, align 4
  %22 = add i32 %20, %21
  %23 = load ptr, ptr %3, align 4
  %24 = load i32, ptr %5, align 4
  %25 = getelementptr inbounds i32, ptr %23, i32 %24
  store i32 %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %11
  %27 = load i32, ptr %5, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %5, align 4
  br label %8, !llvm.loop !14

29:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_double_round(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %3, i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 12)
  %4 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %4, i32 noundef 5, i32 noundef 9, i32 noundef 13, i32 noundef 1)
  %5 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %5, i32 noundef 10, i32 noundef 14, i32 noundef 2, i32 noundef 6)
  %6 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %6, i32 noundef 15, i32 noundef 3, i32 noundef 7, i32 noundef 11)
  %7 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3)
  %8 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %8, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 4)
  %9 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %9, i32 noundef 10, i32 noundef 11, i32 noundef 8, i32 noundef 9)
  %10 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %10, i32 noundef 15, i32 noundef 12, i32 noundef 13, i32 noundef 14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load i32, ptr %8, align 4
  %13 = load i32, ptr %7, align 4
  %14 = load i32, ptr %10, align 4
  call void @Hacl_Impl_Salsa20_line(ptr noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef 7)
  %15 = load ptr, ptr %6, align 4
  %16 = load i32, ptr %9, align 4
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %7, align 4
  call void @Hacl_Impl_Salsa20_line(ptr noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef 9)
  %19 = load ptr, ptr %6, align 4
  %20 = load i32, ptr %10, align 4
  %21 = load i32, ptr %9, align 4
  %22 = load i32, ptr %8, align 4
  call void @Hacl_Impl_Salsa20_line(ptr noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef 13)
  %23 = load ptr, ptr %6, align 4
  %24 = load i32, ptr %7, align 4
  %25 = load i32, ptr %10, align 4
  %26 = load i32, ptr %9, align 4
  call void @Hacl_Impl_Salsa20_line(ptr noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef 18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Salsa20_line(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = load i32, ptr %7, align 4
  %18 = getelementptr inbounds i32, ptr %16, i32 %17
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %11, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = load i32, ptr %8, align 4
  %22 = getelementptr inbounds i32, ptr %20, i32 %21
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %12, align 4
  %24 = load ptr, ptr %6, align 4
  %25 = load i32, ptr %9, align 4
  %26 = getelementptr inbounds i32, ptr %24, i32 %25
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %13, align 4
  %28 = load i32, ptr %12, align 4
  %29 = load i32, ptr %13, align 4
  %30 = add i32 %28, %29
  store i32 %30, ptr %14, align 4
  %31 = load i32, ptr %14, align 4
  %32 = load i32, ptr %10, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, ptr %14, align 4
  %35 = load i32, ptr %10, align 4
  %36 = sub i32 32, %35
  %37 = lshr i32 %34, %36
  %38 = or i32 %33, %37
  store i32 %38, ptr %15, align 4
  %39 = load i32, ptr %11, align 4
  %40 = load i32, ptr %15, align 4
  %41 = xor i32 %39, %40
  %42 = load ptr, ptr %6, align 4
  %43 = load i32, ptr %7, align 4
  %44 = getelementptr inbounds i32, ptr %42, i32 %43
  store i32 %41, ptr %44, align 4
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
define internal void @Hacl_Impl_Salsa20_salsa20_block(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca [16 x i32], align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  call void @llvm.memset.p0.i32(ptr align 4 %7, i8 0, i32 64, i1 false)
  %8 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 4
  %10 = load i64, ptr %6, align 8
  call void @Hacl_Impl_Salsa20_salsa20_core(ptr noundef %8, ptr noundef %9, i64 noundef %10)
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 0
  call void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(ptr noundef %11, ptr noundef %12, i32 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_HSalsa20_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [12 x i32], align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %7, i8 0, i32 48, i1 false)
  %22 = getelementptr inbounds [12 x i32], ptr %7, i32 0, i32 0
  store ptr %22, ptr %8, align 4
  %23 = getelementptr inbounds [12 x i32], ptr %7, i32 0, i32 0
  %24 = getelementptr inbounds i32, ptr %23, i32 8
  store ptr %24, ptr %9, align 4
  %25 = load ptr, ptr %8, align 4
  %26 = load ptr, ptr %5, align 4
  call void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef %25, ptr noundef %26, i32 noundef 8)
  %27 = load ptr, ptr %9, align 4
  %28 = load ptr, ptr %6, align 4
  call void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef %27, ptr noundef %28, i32 noundef 4)
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds i32, ptr %29, i32 0
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %10, align 4
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr inbounds i32, ptr %32, i32 1
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %11, align 4
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds i32, ptr %35, i32 2
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %12, align 4
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr inbounds i32, ptr %38, i32 3
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %13, align 4
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr inbounds i32, ptr %41, i32 4
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %14, align 4
  %44 = load ptr, ptr %8, align 4
  %45 = getelementptr inbounds i32, ptr %44, i32 5
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %15, align 4
  %47 = load ptr, ptr %8, align 4
  %48 = getelementptr inbounds i32, ptr %47, i32 6
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %16, align 4
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr inbounds i32, ptr %50, i32 7
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %17, align 4
  %53 = load ptr, ptr %9, align 4
  %54 = getelementptr inbounds i32, ptr %53, i32 0
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %18, align 4
  %56 = load ptr, ptr %9, align 4
  %57 = getelementptr inbounds i32, ptr %56, i32 1
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %19, align 4
  %59 = load ptr, ptr %9, align 4
  %60 = getelementptr inbounds i32, ptr %59, i32 2
  %61 = load i32, ptr %60, align 4
  store i32 %61, ptr %20, align 4
  %62 = load ptr, ptr %9, align 4
  %63 = getelementptr inbounds i32, ptr %62, i32 3
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %21, align 4
  %65 = load ptr, ptr %4, align 4
  %66 = load i32, ptr %10, align 4
  %67 = load i32, ptr %11, align 4
  %68 = load i32, ptr %12, align 4
  %69 = load i32, ptr %13, align 4
  %70 = load i32, ptr %18, align 4
  %71 = load i32, ptr %19, align 4
  %72 = load i32, ptr %20, align 4
  %73 = load i32, ptr %21, align 4
  %74 = load i32, ptr %14, align 4
  %75 = load i32, ptr %15, align 4
  %76 = load i32, ptr %16, align 4
  %77 = load i32, ptr %17, align 4
  call void @Hacl_Lib_Create_make_h32_16(ptr noundef %65, i32 noundef 1634760805, i32 noundef %66, i32 noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef 857760878, i32 noundef %70, i32 noundef %71, i32 noundef %72, i32 noundef %73, i32 noundef 2036477234, i32 noundef %74, i32 noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef 1797285236)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
