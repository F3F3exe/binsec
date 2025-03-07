; ModuleID = 'hacl-c/hacl-c/Hacl_Chacha20.c'
source_filename = "hacl-c/hacl-c/Hacl_Chacha20.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_key_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %9, i8 0, i32 64, i1 false)
  %11 = getelementptr inbounds [16 x i32], ptr %9, i32 0, i32 0
  store ptr %11, ptr %10, align 4
  %12 = load ptr, ptr %10, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_Chacha20_init(ptr noundef %12, ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %5, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = load i32, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_chacha20_block(ptr noundef %15, ptr noundef %16, i32 noundef %17)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
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
  %11 = load ptr, ptr %4, align 4
  store ptr %11, ptr %7, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds i32, ptr %12, i32 4
  store ptr %13, ptr %8, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds i32, ptr %14, i32 12
  store ptr %15, ptr %9, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds i32, ptr %16, i32 13
  store ptr %17, ptr %10, align 4
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr inbounds i32, ptr %18, i32 0
  store i32 1634760805, ptr %19, align 4
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds i32, ptr %20, i32 1
  store i32 857760878, ptr %21, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds i32, ptr %22, i32 2
  store i32 2036477234, ptr %23, align 4
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds i32, ptr %24, i32 3
  store i32 1797285236, ptr %25, align 4
  %26 = load ptr, ptr %8, align 4
  %27 = load ptr, ptr %5, align 4
  call void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef %26, ptr noundef %27, i32 noundef 8)
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr inbounds i32, ptr %28, i32 0
  store i32 0, ptr %29, align 4
  %30 = load ptr, ptr %10, align 4
  %31 = load ptr, ptr %6, align 4
  call void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef %30, ptr noundef %31, i32 noundef 3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_chacha20_block(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i32], align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %7, i8 0, i32 64, i1 false)
  %8 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 4
  %10 = load i32, ptr %6, align 4
  call void @Hacl_Impl_Chacha20_chacha20_core(ptr noundef %8, ptr noundef %9, i32 noundef %10)
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds [16 x i32], ptr %7, i32 0, i32 0
  call void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(ptr noundef %11, ptr noundef %12, i32 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
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
  call void @Hacl_Impl_Chacha20_chacha20(ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store ptr %3, ptr %10, align 4
  store ptr %4, ptr %11, align 4
  store i32 %5, ptr %12, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %13, i8 0, i32 64, i1 false)
  %15 = getelementptr inbounds [16 x i32], ptr %13, i32 0, i32 0
  store ptr %15, ptr %14, align 4
  %16 = load ptr, ptr %14, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = load ptr, ptr %11, align 4
  call void @Hacl_Impl_Chacha20_init(ptr noundef %16, ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %7, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = load i32, ptr %9, align 4
  %22 = load ptr, ptr %14, align 4
  %23 = load i32, ptr %12, align 4
  call void @Hacl_Impl_Chacha20_chacha20_counter_mode(ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %22, i32 noundef %23)
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
define internal void @Hacl_Impl_Chacha20_chacha20_core(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds i32, ptr %8, i32 12
  store i32 %7, ptr %9, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_Chacha20_copy_state(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_Chacha20_rounds(ptr noundef %12)
  %13 = load ptr, ptr %4, align 4
  %14 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_Chacha20_sum_states(ptr noundef %13, ptr noundef %14)
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
  br label %10, !llvm.loop !9

29:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_copy_state(ptr noundef %0, ptr noundef %1) #0 {
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
define internal void @Hacl_Impl_Chacha20_rounds(ptr noundef %0) #0 {
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
  call void @Hacl_Impl_Chacha20_double_round(ptr noundef %8)
  br label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %3, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %3, align 4
  br label %4, !llvm.loop !10

12:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_sum_states(ptr noundef %0, ptr noundef %1) #0 {
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
  br label %8, !llvm.loop !11

29:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_double_round(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %3, i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 12)
  %4 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %4, i32 noundef 1, i32 noundef 5, i32 noundef 9, i32 noundef 13)
  %5 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %5, i32 noundef 2, i32 noundef 6, i32 noundef 10, i32 noundef 14)
  %6 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %6, i32 noundef 3, i32 noundef 7, i32 noundef 11, i32 noundef 15)
  %7 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %7, i32 noundef 0, i32 noundef 5, i32 noundef 10, i32 noundef 15)
  %8 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %8, i32 noundef 1, i32 noundef 6, i32 noundef 11, i32 noundef 12)
  %9 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %9, i32 noundef 2, i32 noundef 7, i32 noundef 8, i32 noundef 13)
  %10 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %10, i32 noundef 3, i32 noundef 4, i32 noundef 9, i32 noundef 14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
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
  store ptr %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %31 = load ptr, ptr %6, align 4
  %32 = load i32, ptr %7, align 4
  %33 = getelementptr inbounds i32, ptr %31, i32 %32
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %11, align 4
  %35 = load ptr, ptr %6, align 4
  %36 = load i32, ptr %8, align 4
  %37 = getelementptr inbounds i32, ptr %35, i32 %36
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %12, align 4
  %39 = load i32, ptr %11, align 4
  %40 = load i32, ptr %12, align 4
  %41 = add i32 %39, %40
  %42 = load ptr, ptr %6, align 4
  %43 = load i32, ptr %7, align 4
  %44 = getelementptr inbounds i32, ptr %42, i32 %43
  store i32 %41, ptr %44, align 4
  %45 = load ptr, ptr %6, align 4
  %46 = load i32, ptr %10, align 4
  %47 = getelementptr inbounds i32, ptr %45, i32 %46
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %13, align 4
  %49 = load ptr, ptr %6, align 4
  %50 = load i32, ptr %7, align 4
  %51 = getelementptr inbounds i32, ptr %49, i32 %50
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %14, align 4
  %53 = load i32, ptr %13, align 4
  %54 = load i32, ptr %14, align 4
  %55 = xor i32 %53, %54
  store i32 %55, ptr %15, align 4
  %56 = load i32, ptr %15, align 4
  %57 = call i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %56, i32 noundef 16)
  %58 = load ptr, ptr %6, align 4
  %59 = load i32, ptr %10, align 4
  %60 = getelementptr inbounds i32, ptr %58, i32 %59
  store i32 %57, ptr %60, align 4
  %61 = load ptr, ptr %6, align 4
  %62 = load i32, ptr %9, align 4
  %63 = getelementptr inbounds i32, ptr %61, i32 %62
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %16, align 4
  %65 = load ptr, ptr %6, align 4
  %66 = load i32, ptr %10, align 4
  %67 = getelementptr inbounds i32, ptr %65, i32 %66
  %68 = load i32, ptr %67, align 4
  store i32 %68, ptr %17, align 4
  %69 = load i32, ptr %16, align 4
  %70 = load i32, ptr %17, align 4
  %71 = add i32 %69, %70
  %72 = load ptr, ptr %6, align 4
  %73 = load i32, ptr %9, align 4
  %74 = getelementptr inbounds i32, ptr %72, i32 %73
  store i32 %71, ptr %74, align 4
  %75 = load ptr, ptr %6, align 4
  %76 = load i32, ptr %8, align 4
  %77 = getelementptr inbounds i32, ptr %75, i32 %76
  %78 = load i32, ptr %77, align 4
  store i32 %78, ptr %18, align 4
  %79 = load ptr, ptr %6, align 4
  %80 = load i32, ptr %9, align 4
  %81 = getelementptr inbounds i32, ptr %79, i32 %80
  %82 = load i32, ptr %81, align 4
  store i32 %82, ptr %19, align 4
  %83 = load i32, ptr %18, align 4
  %84 = load i32, ptr %19, align 4
  %85 = xor i32 %83, %84
  store i32 %85, ptr %20, align 4
  %86 = load i32, ptr %20, align 4
  %87 = call i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %86, i32 noundef 12)
  %88 = load ptr, ptr %6, align 4
  %89 = load i32, ptr %8, align 4
  %90 = getelementptr inbounds i32, ptr %88, i32 %89
  store i32 %87, ptr %90, align 4
  %91 = load ptr, ptr %6, align 4
  %92 = load i32, ptr %7, align 4
  %93 = getelementptr inbounds i32, ptr %91, i32 %92
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr %21, align 4
  %95 = load ptr, ptr %6, align 4
  %96 = load i32, ptr %8, align 4
  %97 = getelementptr inbounds i32, ptr %95, i32 %96
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %22, align 4
  %99 = load i32, ptr %21, align 4
  %100 = load i32, ptr %22, align 4
  %101 = add i32 %99, %100
  %102 = load ptr, ptr %6, align 4
  %103 = load i32, ptr %7, align 4
  %104 = getelementptr inbounds i32, ptr %102, i32 %103
  store i32 %101, ptr %104, align 4
  %105 = load ptr, ptr %6, align 4
  %106 = load i32, ptr %10, align 4
  %107 = getelementptr inbounds i32, ptr %105, i32 %106
  %108 = load i32, ptr %107, align 4
  store i32 %108, ptr %23, align 4
  %109 = load ptr, ptr %6, align 4
  %110 = load i32, ptr %7, align 4
  %111 = getelementptr inbounds i32, ptr %109, i32 %110
  %112 = load i32, ptr %111, align 4
  store i32 %112, ptr %24, align 4
  %113 = load i32, ptr %23, align 4
  %114 = load i32, ptr %24, align 4
  %115 = xor i32 %113, %114
  store i32 %115, ptr %25, align 4
  %116 = load i32, ptr %25, align 4
  %117 = call i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %116, i32 noundef 8)
  %118 = load ptr, ptr %6, align 4
  %119 = load i32, ptr %10, align 4
  %120 = getelementptr inbounds i32, ptr %118, i32 %119
  store i32 %117, ptr %120, align 4
  %121 = load ptr, ptr %6, align 4
  %122 = load i32, ptr %9, align 4
  %123 = getelementptr inbounds i32, ptr %121, i32 %122
  %124 = load i32, ptr %123, align 4
  store i32 %124, ptr %26, align 4
  %125 = load ptr, ptr %6, align 4
  %126 = load i32, ptr %10, align 4
  %127 = getelementptr inbounds i32, ptr %125, i32 %126
  %128 = load i32, ptr %127, align 4
  store i32 %128, ptr %27, align 4
  %129 = load i32, ptr %26, align 4
  %130 = load i32, ptr %27, align 4
  %131 = add i32 %129, %130
  %132 = load ptr, ptr %6, align 4
  %133 = load i32, ptr %9, align 4
  %134 = getelementptr inbounds i32, ptr %132, i32 %133
  store i32 %131, ptr %134, align 4
  %135 = load ptr, ptr %6, align 4
  %136 = load i32, ptr %8, align 4
  %137 = getelementptr inbounds i32, ptr %135, i32 %136
  %138 = load i32, ptr %137, align 4
  store i32 %138, ptr %28, align 4
  %139 = load ptr, ptr %6, align 4
  %140 = load i32, ptr %9, align 4
  %141 = getelementptr inbounds i32, ptr %139, i32 %140
  %142 = load i32, ptr %141, align 4
  store i32 %142, ptr %29, align 4
  %143 = load i32, ptr %28, align 4
  %144 = load i32, ptr %29, align 4
  %145 = xor i32 %143, %144
  store i32 %145, ptr %30, align 4
  %146 = load i32, ptr %30, align 4
  %147 = call i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %146, i32 noundef 7)
  %148 = load ptr, ptr %6, align 4
  %149 = load i32, ptr %8, align 4
  %150 = getelementptr inbounds i32, ptr %148, i32 %149
  store i32 %147, ptr %150, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = shl i32 %5, %6
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %4, align 4
  %10 = sub i32 32, %9
  %11 = lshr i32 %8, %10
  %12 = or i32 %7, %11
  ret i32 %12
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
define internal void @Hacl_Impl_Chacha20_chacha20_counter_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
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
  store i32 %4, ptr %10, align 4
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
  %35 = load i32, ptr %10, align 4
  call void @Hacl_Impl_Chacha20_chacha20_counter_mode_blocks(ptr noundef %31, ptr noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35)
  %36 = load i32, ptr %12, align 4
  %37 = icmp ugt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %5
  %39 = load ptr, ptr %15, align 4
  %40 = load ptr, ptr %16, align 4
  %41 = load i32, ptr %12, align 4
  %42 = load ptr, ptr %9, align 4
  %43 = load i32, ptr %10, align 4
  %44 = load i32, ptr %11, align 4
  %45 = add i32 %43, %44
  call void @Hacl_Impl_Chacha20_update_last(ptr noundef %39, ptr noundef %40, i32 noundef %41, ptr noundef %42, i32 noundef %45)
  br label %46

46:                                               ; preds = %38, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_chacha20_counter_mode_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %14

14:                                               ; preds = %33, %5
  %15 = load i32, ptr %11, align 4
  %16 = load i32, ptr %8, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %36

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
  %30 = load i32, ptr %10, align 4
  %31 = load i32, ptr %11, align 4
  %32 = add i32 %30, %31
  call void @Hacl_Impl_Chacha20_update(ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %32)
  br label %33

33:                                               ; preds = %18
  %34 = load i32, ptr %11, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %11, align 4
  br label %14, !llvm.loop !12

36:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_update_last(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 64, i1 false)
  %16 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 0
  %17 = load ptr, ptr %9, align 4
  %18 = load i32, ptr %10, align 4
  call void @Hacl_Impl_Chacha20_chacha20_block(ptr noundef %16, ptr noundef %17, i32 noundef %18)
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
  br label %20, !llvm.loop !13

45:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
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
  store i32 %3, ptr %8, align 4
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
  %23 = load i32, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_chacha20_core(ptr noundef %21, ptr noundef %22, i32 noundef %23)
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
  br label %26, !llvm.loop !14

47:                                               ; preds = %26
  %48 = load ptr, ptr %5, align 4
  %49 = load ptr, ptr %12, align 4
  call void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(ptr noundef %48, ptr noundef %49, i32 noundef 16)
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
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103238+cd708029e0b2-1~exp1~20250114103342.77)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
