; ModuleID = 'hacl-c/hacl-c/Hacl_Chacha20_Vec128.c'
source_filename = "hacl-c/hacl-c/Hacl_Chacha20_Vec128.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.vec = type { [4 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_Vec128_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
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
  call void @Hacl_Impl_Chacha20_Vec128_chacha20(ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x %struct.vec], align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.vec, align 4
  %21 = alloca ptr, align 4
  store ptr %0, ptr %12, align 4
  store ptr %1, ptr %13, align 4
  store i32 %2, ptr %14, align 4
  store ptr %3, ptr %15, align 4
  store ptr %4, ptr %16, align 4
  store i32 %5, ptr %17, align 4
  store i32 0, ptr %19, align 4
  br label %22

22:                                               ; preds = %35, %6
  %23 = load i32, ptr %19, align 4
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32, ptr %19, align 4
  %27 = getelementptr inbounds [4 x %struct.vec], ptr %18, i32 0, i32 %26
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  store ptr %20, ptr %7, align 4, !noalias !7
  store i32 0, ptr %8, align 4, !noalias !7
  store i32 0, ptr %9, align 4, !noalias !7
  store i32 0, ptr %10, align 4, !noalias !7
  store i32 0, ptr %11, align 4, !noalias !7
  %28 = load i32, ptr %8, align 4, !noalias !7
  store i32 %28, ptr %20, align 4, !alias.scope !7
  %29 = load i32, ptr %9, align 4, !noalias !7
  %30 = getelementptr inbounds [4 x i32], ptr %20, i32 0, i32 1
  store i32 %29, ptr %30, align 4, !alias.scope !7
  %31 = load i32, ptr %10, align 4, !noalias !7
  %32 = getelementptr inbounds [4 x i32], ptr %20, i32 0, i32 2
  store i32 %31, ptr %32, align 4, !alias.scope !7
  %33 = load i32, ptr %11, align 4, !noalias !7
  %34 = getelementptr inbounds [4 x i32], ptr %20, i32 0, i32 3
  store i32 %33, ptr %34, align 4, !alias.scope !7
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %27, ptr align 4 %20, i32 16, i1 false)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, ptr %19, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %19, align 4
  br label %22, !llvm.loop !10

38:                                               ; preds = %22
  %39 = getelementptr inbounds [4 x %struct.vec], ptr %18, i32 0, i32 0
  store ptr %39, ptr %21, align 4
  %40 = load ptr, ptr %21, align 4
  %41 = load ptr, ptr %15, align 4
  %42 = load ptr, ptr %16, align 4
  %43 = load i32, ptr %17, align 4
  call void @Hacl_Impl_Chacha20_Vec128_init(ptr noundef %40, ptr noundef %41, ptr noundef %42, i32 noundef %43)
  %44 = load ptr, ptr %12, align 4
  %45 = load ptr, ptr %13, align 4
  %46 = load i32, ptr %14, align 4
  %47 = load ptr, ptr %21, align 4
  call void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode(ptr noundef %44, ptr noundef %45, i32 noundef %46, ptr noundef %47)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
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
  call void @Hacl_Impl_Chacha20_Vec128_State_state_setup(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %15 = load i32, ptr %7, align 4
  %16 = lshr i32 %15, 6
  store i32 %16, ptr %9, align 4
  %17 = load i32, ptr %7, align 4
  %18 = and i32 %17, 63
  store i32 %18, ptr %10, align 4
  %19 = load ptr, ptr %5, align 4
  store ptr %19, ptr %11, align 4
  %20 = load ptr, ptr %6, align 4
  store ptr %20, ptr %12, align 4
  %21 = load ptr, ptr %5, align 4
  %22 = load i32, ptr %9, align 4
  %23 = mul i32 64, %22
  %24 = getelementptr inbounds i8, ptr %21, i32 %23
  store ptr %24, ptr %13, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = load i32, ptr %9, align 4
  %27 = mul i32 64, %26
  %28 = getelementptr inbounds i8, ptr %25, i32 %27
  store ptr %28, ptr %14, align 4
  %29 = load ptr, ptr %11, align 4
  %30 = load ptr, ptr %12, align 4
  %31 = load i32, ptr %9, align 4
  %32 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks(ptr noundef %29, ptr noundef %30, i32 noundef %31, ptr noundef %32)
  %33 = load i32, ptr %10, align 4
  %34 = icmp ugt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load ptr, ptr %13, align 4
  %37 = load ptr, ptr %14, align 4
  %38 = load i32, ptr %10, align 4
  %39 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_update_last(ptr noundef %36, ptr noundef %37, i32 noundef %38, ptr noundef %39)
  br label %40

40:                                               ; preds = %35, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_State_state_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 4
  %24 = alloca ptr, align 4
  %25 = alloca ptr, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.vec, align 4
  %28 = alloca %struct.vec, align 4
  %29 = alloca %struct.vec, align 4
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 4
  %32 = alloca i32, align 4
  %33 = alloca ptr, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.vec, align 4
  store ptr %0, ptr %23, align 4
  store ptr %1, ptr %24, align 4
  store ptr %2, ptr %25, align 4
  store i32 %3, ptr %26, align 4
  %36 = load ptr, ptr %23, align 4
  %37 = getelementptr inbounds %struct.vec, ptr %36, i32 0
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  store ptr %27, ptr %13, align 4, !noalias !12
  store i32 1634760805, ptr %14, align 4, !noalias !12
  store i32 857760878, ptr %15, align 4, !noalias !12
  store i32 2036477234, ptr %16, align 4, !noalias !12
  store i32 1797285236, ptr %17, align 4, !noalias !12
  %38 = load i32, ptr %14, align 4, !noalias !12
  store i32 %38, ptr %27, align 4, !alias.scope !12
  %39 = load i32, ptr %15, align 4, !noalias !12
  %40 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 1
  store i32 %39, ptr %40, align 4, !alias.scope !12
  %41 = load i32, ptr %16, align 4, !noalias !12
  %42 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 2
  store i32 %41, ptr %42, align 4, !alias.scope !12
  %43 = load i32, ptr %17, align 4, !noalias !12
  %44 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 3
  store i32 %43, ptr %44, align 4, !alias.scope !12
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %37, ptr align 4 %27, i32 16, i1 false)
  %45 = load ptr, ptr %24, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  store ptr %28, ptr %9, align 4, !noalias !15
  store ptr %45, ptr %10, align 4, !noalias !15
  %46 = load ptr, ptr %10, align 4, !noalias !15
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  store ptr %28, ptr %7, align 4, !noalias !18
  store ptr %46, ptr %8, align 4, !noalias !18
  %47 = load ptr, ptr %8, align 4, !noalias !18
  %48 = call i32 @load32(ptr noundef %47)
  %49 = call i32 @__uint32_identity(i32 noundef %48)
  store i32 %49, ptr %28, align 4, !alias.scope !18
  %50 = load ptr, ptr %8, align 4, !noalias !18
  %51 = getelementptr inbounds i8, ptr %50, i32 4
  %52 = call i32 @load32(ptr noundef %51)
  %53 = call i32 @__uint32_identity(i32 noundef %52)
  %54 = getelementptr inbounds [4 x i32], ptr %28, i32 0, i32 1
  store i32 %53, ptr %54, align 4, !alias.scope !18
  %55 = load ptr, ptr %8, align 4, !noalias !18
  %56 = getelementptr inbounds i8, ptr %55, i32 8
  %57 = call i32 @load32(ptr noundef %56)
  %58 = call i32 @__uint32_identity(i32 noundef %57)
  %59 = getelementptr inbounds [4 x i32], ptr %28, i32 0, i32 2
  store i32 %58, ptr %59, align 4, !alias.scope !18
  %60 = load ptr, ptr %8, align 4, !noalias !18
  %61 = getelementptr inbounds i8, ptr %60, i32 12
  %62 = call i32 @load32(ptr noundef %61)
  %63 = call i32 @__uint32_identity(i32 noundef %62)
  %64 = getelementptr inbounds [4 x i32], ptr %28, i32 0, i32 3
  store i32 %63, ptr %64, align 4, !alias.scope !18
  %65 = load ptr, ptr %24, align 4
  %66 = getelementptr inbounds i8, ptr %65, i32 16
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  store ptr %29, ptr %11, align 4, !noalias !21
  store ptr %66, ptr %12, align 4, !noalias !21
  %67 = load ptr, ptr %12, align 4, !noalias !21
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  store ptr %29, ptr %5, align 4, !noalias !24
  store ptr %67, ptr %6, align 4, !noalias !24
  %68 = load ptr, ptr %6, align 4, !noalias !24
  %69 = call i32 @load32(ptr noundef %68)
  %70 = call i32 @__uint32_identity(i32 noundef %69)
  store i32 %70, ptr %29, align 4, !alias.scope !24
  %71 = load ptr, ptr %6, align 4, !noalias !24
  %72 = getelementptr inbounds i8, ptr %71, i32 4
  %73 = call i32 @load32(ptr noundef %72)
  %74 = call i32 @__uint32_identity(i32 noundef %73)
  %75 = getelementptr inbounds [4 x i32], ptr %29, i32 0, i32 1
  store i32 %74, ptr %75, align 4, !alias.scope !24
  %76 = load ptr, ptr %6, align 4, !noalias !24
  %77 = getelementptr inbounds i8, ptr %76, i32 8
  %78 = call i32 @load32(ptr noundef %77)
  %79 = call i32 @__uint32_identity(i32 noundef %78)
  %80 = getelementptr inbounds [4 x i32], ptr %29, i32 0, i32 2
  store i32 %79, ptr %80, align 4, !alias.scope !24
  %81 = load ptr, ptr %6, align 4, !noalias !24
  %82 = getelementptr inbounds i8, ptr %81, i32 12
  %83 = call i32 @load32(ptr noundef %82)
  %84 = call i32 @__uint32_identity(i32 noundef %83)
  %85 = getelementptr inbounds [4 x i32], ptr %29, i32 0, i32 3
  store i32 %84, ptr %85, align 4, !alias.scope !24
  %86 = load ptr, ptr %23, align 4
  %87 = getelementptr inbounds %struct.vec, ptr %86, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %87, ptr align 4 %28, i32 16, i1 false)
  %88 = load ptr, ptr %23, align 4
  %89 = getelementptr inbounds %struct.vec, ptr %88, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %89, ptr align 4 %29, i32 16, i1 false)
  %90 = load ptr, ptr %25, align 4
  %91 = call i32 @load32(ptr noundef %90)
  %92 = call i32 @__uint32_identity(i32 noundef %91)
  store i32 %92, ptr %30, align 4
  %93 = load ptr, ptr %25, align 4
  %94 = getelementptr inbounds i8, ptr %93, i32 4
  store ptr %94, ptr %31, align 4
  %95 = load ptr, ptr %31, align 4
  %96 = call i32 @load32(ptr noundef %95)
  %97 = call i32 @__uint32_identity(i32 noundef %96)
  store i32 %97, ptr %32, align 4
  %98 = load ptr, ptr %25, align 4
  %99 = getelementptr inbounds i8, ptr %98, i32 8
  store ptr %99, ptr %33, align 4
  %100 = load ptr, ptr %33, align 4
  %101 = call i32 @load32(ptr noundef %100)
  %102 = call i32 @__uint32_identity(i32 noundef %101)
  store i32 %102, ptr %34, align 4
  %103 = load i32, ptr %26, align 4
  %104 = load i32, ptr %30, align 4
  %105 = load i32, ptr %32, align 4
  %106 = load i32, ptr %34, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  store ptr %35, ptr %18, align 4, !noalias !27
  store i32 %103, ptr %19, align 4, !noalias !27
  store i32 %104, ptr %20, align 4, !noalias !27
  store i32 %105, ptr %21, align 4, !noalias !27
  store i32 %106, ptr %22, align 4, !noalias !27
  %107 = load i32, ptr %19, align 4, !noalias !27
  store i32 %107, ptr %35, align 4, !alias.scope !27
  %108 = load i32, ptr %20, align 4, !noalias !27
  %109 = getelementptr inbounds [4 x i32], ptr %35, i32 0, i32 1
  store i32 %108, ptr %109, align 4, !alias.scope !27
  %110 = load i32, ptr %21, align 4, !noalias !27
  %111 = getelementptr inbounds [4 x i32], ptr %35, i32 0, i32 2
  store i32 %110, ptr %111, align 4, !alias.scope !27
  %112 = load i32, ptr %22, align 4, !noalias !27
  %113 = getelementptr inbounds [4 x i32], ptr %35, i32 0, i32 3
  store i32 %112, ptr %113, align 4, !alias.scope !27
  %114 = load ptr, ptr %23, align 4
  %115 = getelementptr inbounds %struct.vec, ptr %114, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %115, ptr align 4 %35, i32 16, i1 false)
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

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %19 = load i32, ptr %7, align 4
  %20 = udiv i32 %19, 3
  store i32 %20, ptr %9, align 4
  %21 = load i32, ptr %7, align 4
  %22 = urem i32 %21, 3
  store i32 %22, ptr %10, align 4
  %23 = load ptr, ptr %6, align 4
  store ptr %23, ptr %11, align 4
  %24 = load ptr, ptr %6, align 4
  %25 = load i32, ptr %9, align 4
  %26 = mul i32 192, %25
  %27 = getelementptr inbounds i8, ptr %24, i32 %26
  store ptr %27, ptr %12, align 4
  %28 = load ptr, ptr %5, align 4
  store ptr %28, ptr %13, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = load i32, ptr %9, align 4
  %31 = mul i32 192, %30
  %32 = getelementptr inbounds i8, ptr %29, i32 %31
  store ptr %32, ptr %14, align 4
  %33 = load ptr, ptr %13, align 4
  %34 = load ptr, ptr %11, align 4
  %35 = load i32, ptr %9, align 4
  %36 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks3(ptr noundef %33, ptr noundef %34, i32 noundef %35, ptr noundef %36)
  %37 = load i32, ptr %10, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %54

39:                                               ; preds = %4
  %40 = load ptr, ptr %12, align 4
  store ptr %40, ptr %15, align 4
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds i8, ptr %41, i32 64
  store ptr %42, ptr %16, align 4
  %43 = load ptr, ptr %14, align 4
  store ptr %43, ptr %17, align 4
  %44 = load ptr, ptr %14, align 4
  %45 = getelementptr inbounds i8, ptr %44, i32 64
  store ptr %45, ptr %18, align 4
  %46 = load ptr, ptr %17, align 4
  %47 = load ptr, ptr %15, align 4
  %48 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_update(ptr noundef %46, ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %49)
  %50 = load ptr, ptr %18, align 4
  %51 = load ptr, ptr %16, align 4
  %52 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_update(ptr noundef %50, ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %53)
  br label %63

54:                                               ; preds = %4
  %55 = load i32, ptr %10, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load ptr, ptr %14, align 4
  %59 = load ptr, ptr %12, align 4
  %60 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_update(ptr noundef %58, ptr noundef %59, ptr noundef %60)
  %61 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %61)
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %39
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_update_last(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca [64 x i8], align 1
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %9, i8 0, i32 64, i1 false)
  %14 = getelementptr inbounds [64 x i8], ptr %9, i32 0, i32 0
  %15 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_chacha20_block(ptr noundef %14, ptr noundef %15)
  %16 = getelementptr inbounds [64 x i8], ptr %9, i32 0, i32 0
  store ptr %16, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %17

17:                                               ; preds = %39, %4
  %18 = load i32, ptr %11, align 4
  %19 = load i32, ptr %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 4
  %23 = load i32, ptr %11, align 4
  %24 = getelementptr inbounds i8, ptr %22, i32 %23
  %25 = load i8, ptr %24, align 1
  store i8 %25, ptr %12, align 1
  %26 = load ptr, ptr %10, align 4
  %27 = load i32, ptr %11, align 4
  %28 = getelementptr inbounds i8, ptr %26, i32 %27
  %29 = load i8, ptr %28, align 1
  store i8 %29, ptr %13, align 1
  %30 = load i8, ptr %12, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, ptr %13, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %31, %33
  %35 = trunc i32 %34 to i8
  %36 = load ptr, ptr %5, align 4
  %37 = load i32, ptr %11, align 4
  %38 = getelementptr inbounds i8, ptr %36, i32 %37
  store i8 %35, ptr %38, align 1
  br label %39

39:                                               ; preds = %21
  %40 = load i32, ptr %11, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %11, align 4
  br label %17, !llvm.loop !30

42:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks3(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %20, %4
  %11 = load i32, ptr %9, align 4
  %12 = load i32, ptr %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = load i32, ptr %7, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = load i32, ptr %9, align 4
  call void @Hacl_Impl_Chacha20_Vec128_update3_(ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %9, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %9, align 4
  br label %10, !llvm.loop !31

23:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca [4 x %struct.vec], align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vec, align 4
  store ptr %0, ptr %9, align 4
  store ptr %1, ptr %10, align 4
  store ptr %2, ptr %11, align 4
  store i32 0, ptr %13, align 4
  br label %15

15:                                               ; preds = %28, %3
  %16 = load i32, ptr %13, align 4
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32, ptr %13, align 4
  %20 = getelementptr inbounds [4 x %struct.vec], ptr %12, i32 0, i32 %19
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  store ptr %14, ptr %4, align 4, !noalias !32
  store i32 0, ptr %5, align 4, !noalias !32
  store i32 0, ptr %6, align 4, !noalias !32
  store i32 0, ptr %7, align 4, !noalias !32
  store i32 0, ptr %8, align 4, !noalias !32
  %21 = load i32, ptr %5, align 4, !noalias !32
  store i32 %21, ptr %14, align 4, !alias.scope !32
  %22 = load i32, ptr %6, align 4, !noalias !32
  %23 = getelementptr inbounds [4 x i32], ptr %14, i32 0, i32 1
  store i32 %22, ptr %23, align 4, !alias.scope !32
  %24 = load i32, ptr %7, align 4, !noalias !32
  %25 = getelementptr inbounds [4 x i32], ptr %14, i32 0, i32 2
  store i32 %24, ptr %25, align 4, !alias.scope !32
  %26 = load i32, ptr %8, align 4, !noalias !32
  %27 = getelementptr inbounds [4 x i32], ptr %14, i32 0, i32 3
  store i32 %26, ptr %27, align 4, !alias.scope !32
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %20, ptr align 4 %14, i32 16, i1 false)
  br label %28

28:                                               ; preds = %18
  %29 = load i32, ptr %13, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %13, align 4
  br label %15, !llvm.loop !35

31:                                               ; preds = %15
  %32 = getelementptr inbounds [4 x %struct.vec], ptr %12, i32 0, i32 0
  %33 = load ptr, ptr %11, align 4
  call void @Hacl_Impl_Chacha20_Vec128_chacha20_core(ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %9, align 4
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr inbounds [4 x %struct.vec], ptr %12, i32 0, i32 0
  call void @Hacl_Impl_Chacha20_Vec128_xor_block(ptr noundef %34, ptr noundef %35, ptr noundef %36)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @Hacl_Impl_Chacha20_Vec128_State_state_incr(ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_update3_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = load i32, ptr %10, align 4
  %15 = mul i32 192, %14
  %16 = getelementptr inbounds i8, ptr %13, i32 %15
  store ptr %16, ptr %11, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = load i32, ptr %10, align 4
  %19 = mul i32 192, %18
  %20 = getelementptr inbounds i8, ptr %17, i32 %19
  store ptr %20, ptr %12, align 4
  %21 = load ptr, ptr %11, align 4
  %22 = load ptr, ptr %12, align 4
  %23 = load ptr, ptr %9, align 4
  call void @Hacl_Impl_Chacha20_Vec128_update3(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %9, align 4
  call void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %24)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_update3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca ptr, align 4
  %22 = alloca [4 x %struct.vec], align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.vec, align 4
  %25 = alloca [4 x %struct.vec], align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.vec, align 4
  %28 = alloca [4 x %struct.vec], align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.vec, align 4
  %31 = alloca ptr, align 4
  %32 = alloca ptr, align 4
  %33 = alloca ptr, align 4
  %34 = alloca ptr, align 4
  %35 = alloca ptr, align 4
  %36 = alloca ptr, align 4
  store ptr %0, ptr %19, align 4
  store ptr %1, ptr %20, align 4
  store ptr %2, ptr %21, align 4
  store i32 0, ptr %23, align 4
  br label %37

37:                                               ; preds = %50, %3
  %38 = load i32, ptr %23, align 4
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32, ptr %23, align 4
  %42 = getelementptr inbounds [4 x %struct.vec], ptr %22, i32 0, i32 %41
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  store ptr %24, ptr %4, align 4, !noalias !36
  store i32 0, ptr %5, align 4, !noalias !36
  store i32 0, ptr %6, align 4, !noalias !36
  store i32 0, ptr %7, align 4, !noalias !36
  store i32 0, ptr %8, align 4, !noalias !36
  %43 = load i32, ptr %5, align 4, !noalias !36
  store i32 %43, ptr %24, align 4, !alias.scope !36
  %44 = load i32, ptr %6, align 4, !noalias !36
  %45 = getelementptr inbounds [4 x i32], ptr %24, i32 0, i32 1
  store i32 %44, ptr %45, align 4, !alias.scope !36
  %46 = load i32, ptr %7, align 4, !noalias !36
  %47 = getelementptr inbounds [4 x i32], ptr %24, i32 0, i32 2
  store i32 %46, ptr %47, align 4, !alias.scope !36
  %48 = load i32, ptr %8, align 4, !noalias !36
  %49 = getelementptr inbounds [4 x i32], ptr %24, i32 0, i32 3
  store i32 %48, ptr %49, align 4, !alias.scope !36
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %42, ptr align 4 %24, i32 16, i1 false)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, ptr %23, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %23, align 4
  br label %37, !llvm.loop !39

53:                                               ; preds = %37
  store i32 0, ptr %26, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, ptr %26, align 4
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i32, ptr %26, align 4
  %59 = getelementptr inbounds [4 x %struct.vec], ptr %25, i32 0, i32 %58
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  store ptr %27, ptr %9, align 4, !noalias !40
  store i32 0, ptr %10, align 4, !noalias !40
  store i32 0, ptr %11, align 4, !noalias !40
  store i32 0, ptr %12, align 4, !noalias !40
  store i32 0, ptr %13, align 4, !noalias !40
  %60 = load i32, ptr %10, align 4, !noalias !40
  store i32 %60, ptr %27, align 4, !alias.scope !40
  %61 = load i32, ptr %11, align 4, !noalias !40
  %62 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 1
  store i32 %61, ptr %62, align 4, !alias.scope !40
  %63 = load i32, ptr %12, align 4, !noalias !40
  %64 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 2
  store i32 %63, ptr %64, align 4, !alias.scope !40
  %65 = load i32, ptr %13, align 4, !noalias !40
  %66 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 3
  store i32 %65, ptr %66, align 4, !alias.scope !40
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %59, ptr align 4 %27, i32 16, i1 false)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, ptr %26, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %26, align 4
  br label %54, !llvm.loop !43

70:                                               ; preds = %54
  store i32 0, ptr %29, align 4
  br label %71

71:                                               ; preds = %84, %70
  %72 = load i32, ptr %29, align 4
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i32, ptr %29, align 4
  %76 = getelementptr inbounds [4 x %struct.vec], ptr %28, i32 0, i32 %75
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  store ptr %30, ptr %14, align 4, !noalias !44
  store i32 0, ptr %15, align 4, !noalias !44
  store i32 0, ptr %16, align 4, !noalias !44
  store i32 0, ptr %17, align 4, !noalias !44
  store i32 0, ptr %18, align 4, !noalias !44
  %77 = load i32, ptr %15, align 4, !noalias !44
  store i32 %77, ptr %30, align 4, !alias.scope !44
  %78 = load i32, ptr %16, align 4, !noalias !44
  %79 = getelementptr inbounds [4 x i32], ptr %30, i32 0, i32 1
  store i32 %78, ptr %79, align 4, !alias.scope !44
  %80 = load i32, ptr %17, align 4, !noalias !44
  %81 = getelementptr inbounds [4 x i32], ptr %30, i32 0, i32 2
  store i32 %80, ptr %81, align 4, !alias.scope !44
  %82 = load i32, ptr %18, align 4, !noalias !44
  %83 = getelementptr inbounds [4 x i32], ptr %30, i32 0, i32 3
  store i32 %82, ptr %83, align 4, !alias.scope !44
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %76, ptr align 4 %30, i32 16, i1 false)
  br label %84

84:                                               ; preds = %74
  %85 = load i32, ptr %29, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %29, align 4
  br label %71, !llvm.loop !47

87:                                               ; preds = %71
  %88 = getelementptr inbounds [4 x %struct.vec], ptr %22, i32 0, i32 0
  %89 = getelementptr inbounds [4 x %struct.vec], ptr %25, i32 0, i32 0
  %90 = getelementptr inbounds [4 x %struct.vec], ptr %28, i32 0, i32 0
  %91 = load ptr, ptr %21, align 4
  call void @Hacl_Impl_Chacha20_Vec128_chacha20_core3(ptr noundef %88, ptr noundef %89, ptr noundef %90, ptr noundef %91)
  %92 = load ptr, ptr %20, align 4
  store ptr %92, ptr %31, align 4
  %93 = load ptr, ptr %20, align 4
  %94 = getelementptr inbounds i8, ptr %93, i32 64
  store ptr %94, ptr %32, align 4
  %95 = load ptr, ptr %20, align 4
  %96 = getelementptr inbounds i8, ptr %95, i32 128
  store ptr %96, ptr %33, align 4
  %97 = load ptr, ptr %19, align 4
  store ptr %97, ptr %34, align 4
  %98 = load ptr, ptr %19, align 4
  %99 = getelementptr inbounds i8, ptr %98, i32 64
  store ptr %99, ptr %35, align 4
  %100 = load ptr, ptr %19, align 4
  %101 = getelementptr inbounds i8, ptr %100, i32 128
  store ptr %101, ptr %36, align 4
  %102 = load ptr, ptr %34, align 4
  %103 = load ptr, ptr %31, align 4
  %104 = getelementptr inbounds [4 x %struct.vec], ptr %22, i32 0, i32 0
  call void @Hacl_Impl_Chacha20_Vec128_xor_block(ptr noundef %102, ptr noundef %103, ptr noundef %104)
  %105 = load ptr, ptr %35, align 4
  %106 = load ptr, ptr %32, align 4
  %107 = getelementptr inbounds [4 x %struct.vec], ptr %25, i32 0, i32 0
  call void @Hacl_Impl_Chacha20_Vec128_xor_block(ptr noundef %105, ptr noundef %106, ptr noundef %107)
  %108 = load ptr, ptr %36, align 4
  %109 = load ptr, ptr %33, align 4
  %110 = getelementptr inbounds [4 x %struct.vec], ptr %28, i32 0, i32 0
  call void @Hacl_Impl_Chacha20_Vec128_xor_block(ptr noundef %108, ptr noundef %109, ptr noundef %110)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_chacha20_core3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_chacha20_incr3(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store i32 0, ptr %9, align 4
  br label %14

14:                                               ; preds = %21, %4
  %15 = load i32, ptr %9, align 4
  %16 = icmp ult i32 %15, 10
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %9, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %9, align 4
  br label %14, !llvm.loop !48

24:                                               ; preds = %14
  %25 = load ptr, ptr %5, align 4
  %26 = load ptr, ptr %6, align 4
  %27 = load ptr, ptr %7, align 4
  %28 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_chacha20_sum3(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_xor_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.vec, align 8
  %6 = alloca ptr, align 4
  %7 = alloca %struct.vec, align 8
  %8 = alloca ptr, align 4
  %9 = alloca %struct.vec, align 8
  %10 = alloca ptr, align 4
  %11 = alloca %struct.vec, align 8
  %12 = alloca ptr, align 4
  %13 = alloca %struct.vec, align 8
  %14 = alloca %struct.vec, align 8
  %15 = alloca ptr, align 4
  %16 = alloca %struct.vec, align 8
  %17 = alloca %struct.vec, align 8
  %18 = alloca ptr, align 4
  %19 = alloca %struct.vec, align 8
  %20 = alloca %struct.vec, align 8
  %21 = alloca ptr, align 4
  %22 = alloca %struct.vec, align 8
  %23 = alloca %struct.vec, align 8
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
  %35 = alloca %struct.vec, align 4
  %36 = alloca %struct.vec, align 4
  %37 = alloca %struct.vec, align 4
  %38 = alloca %struct.vec, align 4
  %39 = alloca %struct.vec, align 4
  %40 = alloca %struct.vec, align 4
  %41 = alloca %struct.vec, align 4
  %42 = alloca %struct.vec, align 4
  %43 = alloca %struct.vec, align 4
  %44 = alloca %struct.vec, align 4
  %45 = alloca %struct.vec, align 4
  %46 = alloca %struct.vec, align 4
  %47 = alloca ptr, align 4
  %48 = alloca ptr, align 4
  %49 = alloca ptr, align 4
  %50 = alloca ptr, align 4
  store ptr %0, ptr %32, align 4
  store ptr %1, ptr %33, align 4
  store ptr %2, ptr %34, align 4
  %51 = load ptr, ptr %33, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  store ptr %35, ptr %24, align 4, !noalias !49
  store ptr %51, ptr %25, align 4, !noalias !49
  %52 = load ptr, ptr %25, align 4, !noalias !49
  %53 = call i32 @load32(ptr noundef %52)
  %54 = call i32 @__uint32_identity(i32 noundef %53)
  store i32 %54, ptr %35, align 4, !alias.scope !49
  %55 = load ptr, ptr %25, align 4, !noalias !49
  %56 = getelementptr inbounds i8, ptr %55, i32 4
  %57 = call i32 @load32(ptr noundef %56)
  %58 = call i32 @__uint32_identity(i32 noundef %57)
  %59 = getelementptr inbounds [4 x i32], ptr %35, i32 0, i32 1
  store i32 %58, ptr %59, align 4, !alias.scope !49
  %60 = load ptr, ptr %25, align 4, !noalias !49
  %61 = getelementptr inbounds i8, ptr %60, i32 8
  %62 = call i32 @load32(ptr noundef %61)
  %63 = call i32 @__uint32_identity(i32 noundef %62)
  %64 = getelementptr inbounds [4 x i32], ptr %35, i32 0, i32 2
  store i32 %63, ptr %64, align 4, !alias.scope !49
  %65 = load ptr, ptr %25, align 4, !noalias !49
  %66 = getelementptr inbounds i8, ptr %65, i32 12
  %67 = call i32 @load32(ptr noundef %66)
  %68 = call i32 @__uint32_identity(i32 noundef %67)
  %69 = getelementptr inbounds [4 x i32], ptr %35, i32 0, i32 3
  store i32 %68, ptr %69, align 4, !alias.scope !49
  %70 = load ptr, ptr %33, align 4
  %71 = getelementptr inbounds i8, ptr %70, i32 16
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  store ptr %36, ptr %26, align 4, !noalias !52
  store ptr %71, ptr %27, align 4, !noalias !52
  %72 = load ptr, ptr %27, align 4, !noalias !52
  %73 = call i32 @load32(ptr noundef %72)
  %74 = call i32 @__uint32_identity(i32 noundef %73)
  store i32 %74, ptr %36, align 4, !alias.scope !52
  %75 = load ptr, ptr %27, align 4, !noalias !52
  %76 = getelementptr inbounds i8, ptr %75, i32 4
  %77 = call i32 @load32(ptr noundef %76)
  %78 = call i32 @__uint32_identity(i32 noundef %77)
  %79 = getelementptr inbounds [4 x i32], ptr %36, i32 0, i32 1
  store i32 %78, ptr %79, align 4, !alias.scope !52
  %80 = load ptr, ptr %27, align 4, !noalias !52
  %81 = getelementptr inbounds i8, ptr %80, i32 8
  %82 = call i32 @load32(ptr noundef %81)
  %83 = call i32 @__uint32_identity(i32 noundef %82)
  %84 = getelementptr inbounds [4 x i32], ptr %36, i32 0, i32 2
  store i32 %83, ptr %84, align 4, !alias.scope !52
  %85 = load ptr, ptr %27, align 4, !noalias !52
  %86 = getelementptr inbounds i8, ptr %85, i32 12
  %87 = call i32 @load32(ptr noundef %86)
  %88 = call i32 @__uint32_identity(i32 noundef %87)
  %89 = getelementptr inbounds [4 x i32], ptr %36, i32 0, i32 3
  store i32 %88, ptr %89, align 4, !alias.scope !52
  %90 = load ptr, ptr %33, align 4
  %91 = getelementptr inbounds i8, ptr %90, i32 32
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  store ptr %37, ptr %28, align 4, !noalias !55
  store ptr %91, ptr %29, align 4, !noalias !55
  %92 = load ptr, ptr %29, align 4, !noalias !55
  %93 = call i32 @load32(ptr noundef %92)
  %94 = call i32 @__uint32_identity(i32 noundef %93)
  store i32 %94, ptr %37, align 4, !alias.scope !55
  %95 = load ptr, ptr %29, align 4, !noalias !55
  %96 = getelementptr inbounds i8, ptr %95, i32 4
  %97 = call i32 @load32(ptr noundef %96)
  %98 = call i32 @__uint32_identity(i32 noundef %97)
  %99 = getelementptr inbounds [4 x i32], ptr %37, i32 0, i32 1
  store i32 %98, ptr %99, align 4, !alias.scope !55
  %100 = load ptr, ptr %29, align 4, !noalias !55
  %101 = getelementptr inbounds i8, ptr %100, i32 8
  %102 = call i32 @load32(ptr noundef %101)
  %103 = call i32 @__uint32_identity(i32 noundef %102)
  %104 = getelementptr inbounds [4 x i32], ptr %37, i32 0, i32 2
  store i32 %103, ptr %104, align 4, !alias.scope !55
  %105 = load ptr, ptr %29, align 4, !noalias !55
  %106 = getelementptr inbounds i8, ptr %105, i32 12
  %107 = call i32 @load32(ptr noundef %106)
  %108 = call i32 @__uint32_identity(i32 noundef %107)
  %109 = getelementptr inbounds [4 x i32], ptr %37, i32 0, i32 3
  store i32 %108, ptr %109, align 4, !alias.scope !55
  %110 = load ptr, ptr %33, align 4
  %111 = getelementptr inbounds i8, ptr %110, i32 48
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  store ptr %38, ptr %30, align 4, !noalias !58
  store ptr %111, ptr %31, align 4, !noalias !58
  %112 = load ptr, ptr %31, align 4, !noalias !58
  %113 = call i32 @load32(ptr noundef %112)
  %114 = call i32 @__uint32_identity(i32 noundef %113)
  store i32 %114, ptr %38, align 4, !alias.scope !58
  %115 = load ptr, ptr %31, align 4, !noalias !58
  %116 = getelementptr inbounds i8, ptr %115, i32 4
  %117 = call i32 @load32(ptr noundef %116)
  %118 = call i32 @__uint32_identity(i32 noundef %117)
  %119 = getelementptr inbounds [4 x i32], ptr %38, i32 0, i32 1
  store i32 %118, ptr %119, align 4, !alias.scope !58
  %120 = load ptr, ptr %31, align 4, !noalias !58
  %121 = getelementptr inbounds i8, ptr %120, i32 8
  %122 = call i32 @load32(ptr noundef %121)
  %123 = call i32 @__uint32_identity(i32 noundef %122)
  %124 = getelementptr inbounds [4 x i32], ptr %38, i32 0, i32 2
  store i32 %123, ptr %124, align 4, !alias.scope !58
  %125 = load ptr, ptr %31, align 4, !noalias !58
  %126 = getelementptr inbounds i8, ptr %125, i32 12
  %127 = call i32 @load32(ptr noundef %126)
  %128 = call i32 @__uint32_identity(i32 noundef %127)
  %129 = getelementptr inbounds [4 x i32], ptr %38, i32 0, i32 3
  store i32 %128, ptr %129, align 4, !alias.scope !58
  %130 = load ptr, ptr %34, align 4
  %131 = getelementptr inbounds %struct.vec, ptr %130, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %39, ptr align 4 %131, i32 16, i1 false)
  %132 = load ptr, ptr %34, align 4
  %133 = getelementptr inbounds %struct.vec, ptr %132, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %40, ptr align 4 %133, i32 16, i1 false)
  %134 = load ptr, ptr %34, align 4
  %135 = getelementptr inbounds %struct.vec, ptr %134, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %41, ptr align 4 %135, i32 16, i1 false)
  %136 = load ptr, ptr %34, align 4
  %137 = getelementptr inbounds %struct.vec, ptr %136, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %42, ptr align 4 %137, i32 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %39, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %35, i64 16, i1 false)
  store ptr %43, ptr %12, align 4, !noalias !61
  %138 = load i32, ptr %14, align 4, !noalias !61
  %139 = load i32, ptr %13, align 4, !noalias !61
  %140 = xor i32 %138, %139
  store i32 %140, ptr %43, align 4, !alias.scope !61
  %141 = getelementptr inbounds [4 x i32], ptr %14, i32 0, i32 1
  %142 = load i32, ptr %141, align 4, !noalias !61
  %143 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 1
  %144 = load i32, ptr %143, align 4, !noalias !61
  %145 = xor i32 %142, %144
  %146 = getelementptr inbounds [4 x i32], ptr %43, i32 0, i32 1
  store i32 %145, ptr %146, align 4, !alias.scope !61
  %147 = getelementptr inbounds [4 x i32], ptr %14, i32 0, i32 2
  %148 = load i32, ptr %147, align 4, !noalias !61
  %149 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 2
  %150 = load i32, ptr %149, align 4, !noalias !61
  %151 = xor i32 %148, %150
  %152 = getelementptr inbounds [4 x i32], ptr %43, i32 0, i32 2
  store i32 %151, ptr %152, align 4, !alias.scope !61
  %153 = getelementptr inbounds [4 x i32], ptr %14, i32 0, i32 3
  %154 = load i32, ptr %153, align 4, !noalias !61
  %155 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 3
  %156 = load i32, ptr %155, align 4, !noalias !61
  %157 = xor i32 %154, %156
  %158 = getelementptr inbounds [4 x i32], ptr %43, i32 0, i32 3
  store i32 %157, ptr %158, align 4, !alias.scope !61
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %40, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %36, i64 16, i1 false)
  store ptr %44, ptr %15, align 4, !noalias !64
  %159 = load i32, ptr %17, align 4, !noalias !64
  %160 = load i32, ptr %16, align 4, !noalias !64
  %161 = xor i32 %159, %160
  store i32 %161, ptr %44, align 4, !alias.scope !64
  %162 = getelementptr inbounds [4 x i32], ptr %17, i32 0, i32 1
  %163 = load i32, ptr %162, align 4, !noalias !64
  %164 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 1
  %165 = load i32, ptr %164, align 4, !noalias !64
  %166 = xor i32 %163, %165
  %167 = getelementptr inbounds [4 x i32], ptr %44, i32 0, i32 1
  store i32 %166, ptr %167, align 4, !alias.scope !64
  %168 = getelementptr inbounds [4 x i32], ptr %17, i32 0, i32 2
  %169 = load i32, ptr %168, align 4, !noalias !64
  %170 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 2
  %171 = load i32, ptr %170, align 4, !noalias !64
  %172 = xor i32 %169, %171
  %173 = getelementptr inbounds [4 x i32], ptr %44, i32 0, i32 2
  store i32 %172, ptr %173, align 4, !alias.scope !64
  %174 = getelementptr inbounds [4 x i32], ptr %17, i32 0, i32 3
  %175 = load i32, ptr %174, align 4, !noalias !64
  %176 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 3
  %177 = load i32, ptr %176, align 4, !noalias !64
  %178 = xor i32 %175, %177
  %179 = getelementptr inbounds [4 x i32], ptr %44, i32 0, i32 3
  store i32 %178, ptr %179, align 4, !alias.scope !64
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %41, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %37, i64 16, i1 false)
  store ptr %45, ptr %18, align 4, !noalias !67
  %180 = load i32, ptr %20, align 4, !noalias !67
  %181 = load i32, ptr %19, align 4, !noalias !67
  %182 = xor i32 %180, %181
  store i32 %182, ptr %45, align 4, !alias.scope !67
  %183 = getelementptr inbounds [4 x i32], ptr %20, i32 0, i32 1
  %184 = load i32, ptr %183, align 4, !noalias !67
  %185 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 1
  %186 = load i32, ptr %185, align 4, !noalias !67
  %187 = xor i32 %184, %186
  %188 = getelementptr inbounds [4 x i32], ptr %45, i32 0, i32 1
  store i32 %187, ptr %188, align 4, !alias.scope !67
  %189 = getelementptr inbounds [4 x i32], ptr %20, i32 0, i32 2
  %190 = load i32, ptr %189, align 4, !noalias !67
  %191 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 2
  %192 = load i32, ptr %191, align 4, !noalias !67
  %193 = xor i32 %190, %192
  %194 = getelementptr inbounds [4 x i32], ptr %45, i32 0, i32 2
  store i32 %193, ptr %194, align 4, !alias.scope !67
  %195 = getelementptr inbounds [4 x i32], ptr %20, i32 0, i32 3
  %196 = load i32, ptr %195, align 4, !noalias !67
  %197 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 3
  %198 = load i32, ptr %197, align 4, !noalias !67
  %199 = xor i32 %196, %198
  %200 = getelementptr inbounds [4 x i32], ptr %45, i32 0, i32 3
  store i32 %199, ptr %200, align 4, !alias.scope !67
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %42, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %38, i64 16, i1 false)
  store ptr %46, ptr %21, align 4, !noalias !70
  %201 = load i32, ptr %23, align 4, !noalias !70
  %202 = load i32, ptr %22, align 4, !noalias !70
  %203 = xor i32 %201, %202
  store i32 %203, ptr %46, align 4, !alias.scope !70
  %204 = getelementptr inbounds [4 x i32], ptr %23, i32 0, i32 1
  %205 = load i32, ptr %204, align 4, !noalias !70
  %206 = getelementptr inbounds [4 x i32], ptr %22, i32 0, i32 1
  %207 = load i32, ptr %206, align 4, !noalias !70
  %208 = xor i32 %205, %207
  %209 = getelementptr inbounds [4 x i32], ptr %46, i32 0, i32 1
  store i32 %208, ptr %209, align 4, !alias.scope !70
  %210 = getelementptr inbounds [4 x i32], ptr %23, i32 0, i32 2
  %211 = load i32, ptr %210, align 4, !noalias !70
  %212 = getelementptr inbounds [4 x i32], ptr %22, i32 0, i32 2
  %213 = load i32, ptr %212, align 4, !noalias !70
  %214 = xor i32 %211, %213
  %215 = getelementptr inbounds [4 x i32], ptr %46, i32 0, i32 2
  store i32 %214, ptr %215, align 4, !alias.scope !70
  %216 = getelementptr inbounds [4 x i32], ptr %23, i32 0, i32 3
  %217 = load i32, ptr %216, align 4, !noalias !70
  %218 = getelementptr inbounds [4 x i32], ptr %22, i32 0, i32 3
  %219 = load i32, ptr %218, align 4, !noalias !70
  %220 = xor i32 %217, %219
  %221 = getelementptr inbounds [4 x i32], ptr %46, i32 0, i32 3
  store i32 %220, ptr %221, align 4, !alias.scope !70
  %222 = load ptr, ptr %32, align 4
  store ptr %222, ptr %47, align 4
  %223 = load ptr, ptr %32, align 4
  %224 = getelementptr inbounds i8, ptr %223, i32 16
  store ptr %224, ptr %48, align 4
  %225 = load ptr, ptr %32, align 4
  %226 = getelementptr inbounds i8, ptr %225, i32 32
  store ptr %226, ptr %49, align 4
  %227 = load ptr, ptr %32, align 4
  %228 = getelementptr inbounds i8, ptr %227, i32 48
  store ptr %228, ptr %50, align 4
  %229 = load ptr, ptr %47, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %43, i64 16, i1 false)
  store ptr %229, ptr %4, align 4
  %230 = load ptr, ptr %4, align 4
  %231 = load i32, ptr %5, align 4
  %232 = call i32 @__uint32_identity(i32 noundef %231)
  call void @store32(ptr noundef %230, i32 noundef %232)
  %233 = load ptr, ptr %4, align 4
  %234 = getelementptr inbounds i8, ptr %233, i32 4
  %235 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = call i32 @__uint32_identity(i32 noundef %236)
  call void @store32(ptr noundef %234, i32 noundef %237)
  %238 = load ptr, ptr %4, align 4
  %239 = getelementptr inbounds i8, ptr %238, i32 8
  %240 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %241 = load i32, ptr %240, align 4
  %242 = call i32 @__uint32_identity(i32 noundef %241)
  call void @store32(ptr noundef %239, i32 noundef %242)
  %243 = load ptr, ptr %4, align 4
  %244 = getelementptr inbounds i8, ptr %243, i32 12
  %245 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %246 = load i32, ptr %245, align 4
  %247 = call i32 @__uint32_identity(i32 noundef %246)
  call void @store32(ptr noundef %244, i32 noundef %247)
  %248 = load ptr, ptr %48, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %44, i64 16, i1 false)
  store ptr %248, ptr %6, align 4
  %249 = load ptr, ptr %6, align 4
  %250 = load i32, ptr %7, align 4
  %251 = call i32 @__uint32_identity(i32 noundef %250)
  call void @store32(ptr noundef %249, i32 noundef %251)
  %252 = load ptr, ptr %6, align 4
  %253 = getelementptr inbounds i8, ptr %252, i32 4
  %254 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 1
  %255 = load i32, ptr %254, align 4
  %256 = call i32 @__uint32_identity(i32 noundef %255)
  call void @store32(ptr noundef %253, i32 noundef %256)
  %257 = load ptr, ptr %6, align 4
  %258 = getelementptr inbounds i8, ptr %257, i32 8
  %259 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 2
  %260 = load i32, ptr %259, align 4
  %261 = call i32 @__uint32_identity(i32 noundef %260)
  call void @store32(ptr noundef %258, i32 noundef %261)
  %262 = load ptr, ptr %6, align 4
  %263 = getelementptr inbounds i8, ptr %262, i32 12
  %264 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 3
  %265 = load i32, ptr %264, align 4
  %266 = call i32 @__uint32_identity(i32 noundef %265)
  call void @store32(ptr noundef %263, i32 noundef %266)
  %267 = load ptr, ptr %49, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %45, i64 16, i1 false)
  store ptr %267, ptr %8, align 4
  %268 = load ptr, ptr %8, align 4
  %269 = load i32, ptr %9, align 4
  %270 = call i32 @__uint32_identity(i32 noundef %269)
  call void @store32(ptr noundef %268, i32 noundef %270)
  %271 = load ptr, ptr %8, align 4
  %272 = getelementptr inbounds i8, ptr %271, i32 4
  %273 = getelementptr inbounds [4 x i32], ptr %9, i32 0, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = call i32 @__uint32_identity(i32 noundef %274)
  call void @store32(ptr noundef %272, i32 noundef %275)
  %276 = load ptr, ptr %8, align 4
  %277 = getelementptr inbounds i8, ptr %276, i32 8
  %278 = getelementptr inbounds [4 x i32], ptr %9, i32 0, i32 2
  %279 = load i32, ptr %278, align 4
  %280 = call i32 @__uint32_identity(i32 noundef %279)
  call void @store32(ptr noundef %277, i32 noundef %280)
  %281 = load ptr, ptr %8, align 4
  %282 = getelementptr inbounds i8, ptr %281, i32 12
  %283 = getelementptr inbounds [4 x i32], ptr %9, i32 0, i32 3
  %284 = load i32, ptr %283, align 4
  %285 = call i32 @__uint32_identity(i32 noundef %284)
  call void @store32(ptr noundef %282, i32 noundef %285)
  %286 = load ptr, ptr %50, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %46, i64 16, i1 false)
  store ptr %286, ptr %10, align 4
  %287 = load ptr, ptr %10, align 4
  %288 = load i32, ptr %11, align 4
  %289 = call i32 @__uint32_identity(i32 noundef %288)
  call void @store32(ptr noundef %287, i32 noundef %289)
  %290 = load ptr, ptr %10, align 4
  %291 = getelementptr inbounds i8, ptr %290, i32 4
  %292 = getelementptr inbounds [4 x i32], ptr %11, i32 0, i32 1
  %293 = load i32, ptr %292, align 4
  %294 = call i32 @__uint32_identity(i32 noundef %293)
  call void @store32(ptr noundef %291, i32 noundef %294)
  %295 = load ptr, ptr %10, align 4
  %296 = getelementptr inbounds i8, ptr %295, i32 8
  %297 = getelementptr inbounds [4 x i32], ptr %11, i32 0, i32 2
  %298 = load i32, ptr %297, align 4
  %299 = call i32 @__uint32_identity(i32 noundef %298)
  call void @store32(ptr noundef %296, i32 noundef %299)
  %300 = load ptr, ptr %10, align 4
  %301 = getelementptr inbounds i8, ptr %300, i32 12
  %302 = getelementptr inbounds [4 x i32], ptr %11, i32 0, i32 3
  %303 = load i32, ptr %302, align 4
  %304 = call i32 @__uint32_identity(i32 noundef %303)
  call void @store32(ptr noundef %301, i32 noundef %304)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_chacha20_incr3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_copy_state(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_copy_state(ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %13)
  %14 = load ptr, ptr %7, align 4
  %15 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_Chacha20_Vec128_copy_state(ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %7, align 4
  call void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %7)
  %8 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %8)
  %9 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_chacha20_sum3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_sum_states(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %11)
  %12 = load ptr, ptr %6, align 4
  %13 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_sum_states(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %14)
  %15 = load ptr, ptr %7, align 4
  %16 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_Chacha20_Vec128_sum_states(ptr noundef %15, ptr noundef %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_copy_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.vec, align 4
  %6 = alloca %struct.vec, align 4
  %7 = alloca %struct.vec, align 4
  %8 = alloca %struct.vec, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.vec, ptr %9, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 4 %10, i32 16, i1 false)
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.vec, ptr %11, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %12, i32 16, i1 false)
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.vec, ptr %13, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 4 %14, i32 16, i1 false)
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.vec, ptr %15, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %16, i32 16, i1 false)
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.vec, ptr %17, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 4 %5, i32 16, i1 false)
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.vec, ptr %19, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %20, ptr align 4 %6, i32 16, i1 false)
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.vec, ptr %21, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %22, ptr align 4 %7, i32 16, i1 false)
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.vec, ptr %23, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 4 %8, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vec, align 8
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vec, align 8
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vec, align 8
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vec, align 8
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vec, align 8
  %17 = alloca ptr, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vec, align 8
  %20 = alloca ptr, align 4
  %21 = alloca %struct.vec, align 4
  %22 = alloca %struct.vec, align 4
  %23 = alloca %struct.vec, align 4
  %24 = alloca %struct.vec, align 4
  %25 = alloca %struct.vec, align 4
  %26 = alloca %struct.vec, align 4
  %27 = alloca %struct.vec, align 4
  %28 = alloca %struct.vec, align 4
  %29 = alloca %struct.vec, align 4
  %30 = alloca %struct.vec, align 4
  %31 = alloca %struct.vec, align 4
  %32 = alloca %struct.vec, align 4
  store ptr %0, ptr %20, align 4
  %33 = load ptr, ptr %20, align 4
  call void @Hacl_Impl_Chacha20_Vec128_round(ptr noundef %33)
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr inbounds %struct.vec, ptr %34, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %21, ptr align 4 %35, i32 16, i1 false)
  %36 = load ptr, ptr %20, align 4
  %37 = getelementptr inbounds %struct.vec, ptr %36, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %22, ptr align 4 %37, i32 16, i1 false)
  %38 = load ptr, ptr %20, align 4
  %39 = getelementptr inbounds %struct.vec, ptr %38, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %23, ptr align 4 %39, i32 16, i1 false)
  %40 = load ptr, ptr %20, align 4
  %41 = getelementptr inbounds %struct.vec, ptr %40, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %21, i64 16, i1 false)
  store ptr %24, ptr %2, align 4, !noalias !73
  store i32 1, ptr %3, align 4, !noalias !73
  %42 = load i32, ptr %3, align 4, !noalias !73
  %43 = urem i32 %42, 4
  %44 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4, !noalias !73
  store i32 %45, ptr %24, align 4, !alias.scope !73
  %46 = load i32, ptr %3, align 4, !noalias !73
  %47 = add i32 %46, 1
  %48 = urem i32 %47, 4
  %49 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 %48
  %50 = load i32, ptr %49, align 4, !noalias !73
  %51 = getelementptr inbounds [4 x i32], ptr %24, i32 0, i32 1
  store i32 %50, ptr %51, align 4, !alias.scope !73
  %52 = load i32, ptr %3, align 4, !noalias !73
  %53 = add i32 %52, 2
  %54 = urem i32 %53, 4
  %55 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 %54
  %56 = load i32, ptr %55, align 4, !noalias !73
  %57 = getelementptr inbounds [4 x i32], ptr %24, i32 0, i32 2
  store i32 %56, ptr %57, align 4, !alias.scope !73
  %58 = load i32, ptr %3, align 4, !noalias !73
  %59 = add i32 %58, 3
  %60 = urem i32 %59, 4
  %61 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4, !noalias !73
  %63 = getelementptr inbounds [4 x i32], ptr %24, i32 0, i32 3
  store i32 %62, ptr %63, align 4, !alias.scope !73
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %41, ptr align 4 %24, i32 16, i1 false)
  %64 = load ptr, ptr %20, align 4
  %65 = getelementptr inbounds %struct.vec, ptr %64, i32 2
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %22, i64 16, i1 false)
  store ptr %25, ptr %5, align 4, !noalias !76
  store i32 2, ptr %6, align 4, !noalias !76
  %66 = load i32, ptr %6, align 4, !noalias !76
  %67 = urem i32 %66, 4
  %68 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 %67
  %69 = load i32, ptr %68, align 4, !noalias !76
  store i32 %69, ptr %25, align 4, !alias.scope !76
  %70 = load i32, ptr %6, align 4, !noalias !76
  %71 = add i32 %70, 1
  %72 = urem i32 %71, 4
  %73 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 %72
  %74 = load i32, ptr %73, align 4, !noalias !76
  %75 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 1
  store i32 %74, ptr %75, align 4, !alias.scope !76
  %76 = load i32, ptr %6, align 4, !noalias !76
  %77 = add i32 %76, 2
  %78 = urem i32 %77, 4
  %79 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 %78
  %80 = load i32, ptr %79, align 4, !noalias !76
  %81 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 2
  store i32 %80, ptr %81, align 4, !alias.scope !76
  %82 = load i32, ptr %6, align 4, !noalias !76
  %83 = add i32 %82, 3
  %84 = urem i32 %83, 4
  %85 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 %84
  %86 = load i32, ptr %85, align 4, !noalias !76
  %87 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 3
  store i32 %86, ptr %87, align 4, !alias.scope !76
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %65, ptr align 4 %25, i32 16, i1 false)
  %88 = load ptr, ptr %20, align 4
  %89 = getelementptr inbounds %struct.vec, ptr %88, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %23, i64 16, i1 false)
  store ptr %26, ptr %8, align 4, !noalias !79
  store i32 3, ptr %9, align 4, !noalias !79
  %90 = load i32, ptr %9, align 4, !noalias !79
  %91 = urem i32 %90, 4
  %92 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 %91
  %93 = load i32, ptr %92, align 4, !noalias !79
  store i32 %93, ptr %26, align 4, !alias.scope !79
  %94 = load i32, ptr %9, align 4, !noalias !79
  %95 = add i32 %94, 1
  %96 = urem i32 %95, 4
  %97 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 %96
  %98 = load i32, ptr %97, align 4, !noalias !79
  %99 = getelementptr inbounds [4 x i32], ptr %26, i32 0, i32 1
  store i32 %98, ptr %99, align 4, !alias.scope !79
  %100 = load i32, ptr %9, align 4, !noalias !79
  %101 = add i32 %100, 2
  %102 = urem i32 %101, 4
  %103 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 %102
  %104 = load i32, ptr %103, align 4, !noalias !79
  %105 = getelementptr inbounds [4 x i32], ptr %26, i32 0, i32 2
  store i32 %104, ptr %105, align 4, !alias.scope !79
  %106 = load i32, ptr %9, align 4, !noalias !79
  %107 = add i32 %106, 3
  %108 = urem i32 %107, 4
  %109 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 %108
  %110 = load i32, ptr %109, align 4, !noalias !79
  %111 = getelementptr inbounds [4 x i32], ptr %26, i32 0, i32 3
  store i32 %110, ptr %111, align 4, !alias.scope !79
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %89, ptr align 4 %26, i32 16, i1 false)
  %112 = load ptr, ptr %20, align 4
  call void @Hacl_Impl_Chacha20_Vec128_round(ptr noundef %112)
  %113 = load ptr, ptr %20, align 4
  %114 = getelementptr inbounds %struct.vec, ptr %113, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %27, ptr align 4 %114, i32 16, i1 false)
  %115 = load ptr, ptr %20, align 4
  %116 = getelementptr inbounds %struct.vec, ptr %115, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %28, ptr align 4 %116, i32 16, i1 false)
  %117 = load ptr, ptr %20, align 4
  %118 = getelementptr inbounds %struct.vec, ptr %117, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %29, ptr align 4 %118, i32 16, i1 false)
  %119 = load ptr, ptr %20, align 4
  %120 = getelementptr inbounds %struct.vec, ptr %119, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %27, i64 16, i1 false)
  store ptr %30, ptr %11, align 4, !noalias !82
  store i32 3, ptr %12, align 4, !noalias !82
  %121 = load i32, ptr %12, align 4, !noalias !82
  %122 = urem i32 %121, 4
  %123 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 %122
  %124 = load i32, ptr %123, align 4, !noalias !82
  store i32 %124, ptr %30, align 4, !alias.scope !82
  %125 = load i32, ptr %12, align 4, !noalias !82
  %126 = add i32 %125, 1
  %127 = urem i32 %126, 4
  %128 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 %127
  %129 = load i32, ptr %128, align 4, !noalias !82
  %130 = getelementptr inbounds [4 x i32], ptr %30, i32 0, i32 1
  store i32 %129, ptr %130, align 4, !alias.scope !82
  %131 = load i32, ptr %12, align 4, !noalias !82
  %132 = add i32 %131, 2
  %133 = urem i32 %132, 4
  %134 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 %133
  %135 = load i32, ptr %134, align 4, !noalias !82
  %136 = getelementptr inbounds [4 x i32], ptr %30, i32 0, i32 2
  store i32 %135, ptr %136, align 4, !alias.scope !82
  %137 = load i32, ptr %12, align 4, !noalias !82
  %138 = add i32 %137, 3
  %139 = urem i32 %138, 4
  %140 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 %139
  %141 = load i32, ptr %140, align 4, !noalias !82
  %142 = getelementptr inbounds [4 x i32], ptr %30, i32 0, i32 3
  store i32 %141, ptr %142, align 4, !alias.scope !82
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %120, ptr align 4 %30, i32 16, i1 false)
  %143 = load ptr, ptr %20, align 4
  %144 = getelementptr inbounds %struct.vec, ptr %143, i32 2
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %28, i64 16, i1 false)
  store ptr %31, ptr %14, align 4, !noalias !85
  store i32 2, ptr %15, align 4, !noalias !85
  %145 = load i32, ptr %15, align 4, !noalias !85
  %146 = urem i32 %145, 4
  %147 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 %146
  %148 = load i32, ptr %147, align 4, !noalias !85
  store i32 %148, ptr %31, align 4, !alias.scope !85
  %149 = load i32, ptr %15, align 4, !noalias !85
  %150 = add i32 %149, 1
  %151 = urem i32 %150, 4
  %152 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 %151
  %153 = load i32, ptr %152, align 4, !noalias !85
  %154 = getelementptr inbounds [4 x i32], ptr %31, i32 0, i32 1
  store i32 %153, ptr %154, align 4, !alias.scope !85
  %155 = load i32, ptr %15, align 4, !noalias !85
  %156 = add i32 %155, 2
  %157 = urem i32 %156, 4
  %158 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 %157
  %159 = load i32, ptr %158, align 4, !noalias !85
  %160 = getelementptr inbounds [4 x i32], ptr %31, i32 0, i32 2
  store i32 %159, ptr %160, align 4, !alias.scope !85
  %161 = load i32, ptr %15, align 4, !noalias !85
  %162 = add i32 %161, 3
  %163 = urem i32 %162, 4
  %164 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 %163
  %165 = load i32, ptr %164, align 4, !noalias !85
  %166 = getelementptr inbounds [4 x i32], ptr %31, i32 0, i32 3
  store i32 %165, ptr %166, align 4, !alias.scope !85
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %144, ptr align 4 %31, i32 16, i1 false)
  %167 = load ptr, ptr %20, align 4
  %168 = getelementptr inbounds %struct.vec, ptr %167, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %29, i64 16, i1 false)
  store ptr %32, ptr %17, align 4, !noalias !88
  store i32 1, ptr %18, align 4, !noalias !88
  %169 = load i32, ptr %18, align 4, !noalias !88
  %170 = urem i32 %169, 4
  %171 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 %170
  %172 = load i32, ptr %171, align 4, !noalias !88
  store i32 %172, ptr %32, align 4, !alias.scope !88
  %173 = load i32, ptr %18, align 4, !noalias !88
  %174 = add i32 %173, 1
  %175 = urem i32 %174, 4
  %176 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 %175
  %177 = load i32, ptr %176, align 4, !noalias !88
  %178 = getelementptr inbounds [4 x i32], ptr %32, i32 0, i32 1
  store i32 %177, ptr %178, align 4, !alias.scope !88
  %179 = load i32, ptr %18, align 4, !noalias !88
  %180 = add i32 %179, 2
  %181 = urem i32 %180, 4
  %182 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 %181
  %183 = load i32, ptr %182, align 4, !noalias !88
  %184 = getelementptr inbounds [4 x i32], ptr %32, i32 0, i32 2
  store i32 %183, ptr %184, align 4, !alias.scope !88
  %185 = load i32, ptr %18, align 4, !noalias !88
  %186 = add i32 %185, 3
  %187 = urem i32 %186, 4
  %188 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 %187
  %189 = load i32, ptr %188, align 4, !noalias !88
  %190 = getelementptr inbounds [4 x i32], ptr %32, i32 0, i32 3
  store i32 %189, ptr %190, align 4, !alias.scope !88
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %168, ptr align 4 %32, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_round(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.vec, align 8
  %4 = alloca %struct.vec, align 8
  %5 = alloca ptr, align 4
  %6 = alloca %struct.vec, align 8
  %7 = alloca %struct.vec, align 8
  %8 = alloca ptr, align 4
  %9 = alloca %struct.vec, align 8
  %10 = alloca %struct.vec, align 8
  %11 = alloca ptr, align 4
  %12 = alloca %struct.vec, align 8
  %13 = alloca %struct.vec, align 8
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vec, align 8
  %17 = alloca ptr, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vec, align 8
  %20 = alloca ptr, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.vec, align 8
  %23 = alloca ptr, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.vec, align 8
  %26 = alloca ptr, align 4
  %27 = alloca %struct.vec, align 8
  %28 = alloca %struct.vec, align 8
  %29 = alloca ptr, align 4
  %30 = alloca %struct.vec, align 8
  %31 = alloca %struct.vec, align 8
  %32 = alloca ptr, align 4
  %33 = alloca %struct.vec, align 8
  %34 = alloca %struct.vec, align 8
  %35 = alloca ptr, align 4
  %36 = alloca %struct.vec, align 8
  %37 = alloca %struct.vec, align 8
  %38 = alloca ptr, align 4
  %39 = alloca %struct.vec, align 4
  %40 = alloca %struct.vec, align 4
  %41 = alloca %struct.vec, align 4
  %42 = alloca %struct.vec, align 4
  %43 = alloca %struct.vec, align 4
  %44 = alloca %struct.vec, align 4
  %45 = alloca %struct.vec, align 4
  %46 = alloca %struct.vec, align 4
  %47 = alloca %struct.vec, align 4
  %48 = alloca %struct.vec, align 4
  %49 = alloca %struct.vec, align 4
  %50 = alloca %struct.vec, align 4
  %51 = alloca %struct.vec, align 4
  %52 = alloca %struct.vec, align 4
  %53 = alloca %struct.vec, align 4
  %54 = alloca %struct.vec, align 4
  %55 = alloca %struct.vec, align 4
  %56 = alloca %struct.vec, align 4
  %57 = alloca %struct.vec, align 4
  %58 = alloca %struct.vec, align 4
  %59 = alloca %struct.vec, align 4
  %60 = alloca %struct.vec, align 4
  %61 = alloca %struct.vec, align 4
  %62 = alloca %struct.vec, align 4
  store ptr %0, ptr %38, align 4
  %63 = load ptr, ptr %38, align 4
  %64 = getelementptr inbounds %struct.vec, ptr %63, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %39, ptr align 4 %64, i32 16, i1 false)
  %65 = load ptr, ptr %38, align 4
  %66 = getelementptr inbounds %struct.vec, ptr %65, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %40, ptr align 4 %66, i32 16, i1 false)
  %67 = load ptr, ptr %38, align 4
  %68 = getelementptr inbounds %struct.vec, ptr %67, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %41, ptr align 4 %68, i32 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr align 1 %40, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %39, i64 16, i1 false)
  store ptr %42, ptr %26, align 4, !noalias !91
  %69 = load i32, ptr %28, align 4, !noalias !91
  %70 = load i32, ptr %27, align 4, !noalias !91
  %71 = add i32 %69, %70
  store i32 %71, ptr %42, align 4, !alias.scope !91
  %72 = getelementptr inbounds [4 x i32], ptr %28, i32 0, i32 1
  %73 = load i32, ptr %72, align 4, !noalias !91
  %74 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 1
  %75 = load i32, ptr %74, align 4, !noalias !91
  %76 = add i32 %73, %75
  %77 = getelementptr inbounds [4 x i32], ptr %42, i32 0, i32 1
  store i32 %76, ptr %77, align 4, !alias.scope !91
  %78 = getelementptr inbounds [4 x i32], ptr %28, i32 0, i32 2
  %79 = load i32, ptr %78, align 4, !noalias !91
  %80 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 2
  %81 = load i32, ptr %80, align 4, !noalias !91
  %82 = add i32 %79, %81
  %83 = getelementptr inbounds [4 x i32], ptr %42, i32 0, i32 2
  store i32 %82, ptr %83, align 4, !alias.scope !91
  %84 = getelementptr inbounds [4 x i32], ptr %28, i32 0, i32 3
  %85 = load i32, ptr %84, align 4, !noalias !91
  %86 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 3
  %87 = load i32, ptr %86, align 4, !noalias !91
  %88 = add i32 %85, %87
  %89 = getelementptr inbounds [4 x i32], ptr %42, i32 0, i32 3
  store i32 %88, ptr %89, align 4, !alias.scope !91
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %42, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %41, i64 16, i1 false)
  store ptr %44, ptr %2, align 4, !noalias !94
  %90 = load i32, ptr %4, align 4, !noalias !94
  %91 = load i32, ptr %3, align 4, !noalias !94
  %92 = xor i32 %90, %91
  store i32 %92, ptr %44, align 4, !alias.scope !94
  %93 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %94 = load i32, ptr %93, align 4, !noalias !94
  %95 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %96 = load i32, ptr %95, align 4, !noalias !94
  %97 = xor i32 %94, %96
  %98 = getelementptr inbounds [4 x i32], ptr %44, i32 0, i32 1
  store i32 %97, ptr %98, align 4, !alias.scope !94
  %99 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %100 = load i32, ptr %99, align 4, !noalias !94
  %101 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %102 = load i32, ptr %101, align 4, !noalias !94
  %103 = xor i32 %100, %102
  %104 = getelementptr inbounds [4 x i32], ptr %44, i32 0, i32 2
  store i32 %103, ptr %104, align 4, !alias.scope !94
  %105 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %106 = load i32, ptr %105, align 4, !noalias !94
  %107 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %108 = load i32, ptr %107, align 4, !noalias !94
  %109 = xor i32 %106, %108
  %110 = getelementptr inbounds [4 x i32], ptr %44, i32 0, i32 3
  store i32 %109, ptr %110, align 4, !alias.scope !94
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %44, i64 16, i1 false)
  store ptr %43, ptr %14, align 4, !noalias !97
  store i32 16, ptr %15, align 4, !noalias !97
  %111 = load i32, ptr %16, align 4, !noalias !97
  %112 = load i32, ptr %15, align 4, !noalias !97
  %113 = shl i32 %111, %112
  %114 = load i32, ptr %16, align 4, !noalias !97
  %115 = load i32, ptr %15, align 4, !noalias !97
  %116 = sub i32 32, %115
  %117 = lshr i32 %114, %116
  %118 = xor i32 %113, %117
  store i32 %118, ptr %43, align 4, !alias.scope !97
  %119 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 1
  %120 = load i32, ptr %119, align 4, !noalias !97
  %121 = load i32, ptr %15, align 4, !noalias !97
  %122 = shl i32 %120, %121
  %123 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 1
  %124 = load i32, ptr %123, align 4, !noalias !97
  %125 = load i32, ptr %15, align 4, !noalias !97
  %126 = sub i32 32, %125
  %127 = lshr i32 %124, %126
  %128 = xor i32 %122, %127
  %129 = getelementptr inbounds [4 x i32], ptr %43, i32 0, i32 1
  store i32 %128, ptr %129, align 4, !alias.scope !97
  %130 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 2
  %131 = load i32, ptr %130, align 4, !noalias !97
  %132 = load i32, ptr %15, align 4, !noalias !97
  %133 = shl i32 %131, %132
  %134 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 2
  %135 = load i32, ptr %134, align 4, !noalias !97
  %136 = load i32, ptr %15, align 4, !noalias !97
  %137 = sub i32 32, %136
  %138 = lshr i32 %135, %137
  %139 = xor i32 %133, %138
  %140 = getelementptr inbounds [4 x i32], ptr %43, i32 0, i32 2
  store i32 %139, ptr %140, align 4, !alias.scope !97
  %141 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 3
  %142 = load i32, ptr %141, align 4, !noalias !97
  %143 = load i32, ptr %15, align 4, !noalias !97
  %144 = shl i32 %142, %143
  %145 = getelementptr inbounds [4 x i32], ptr %16, i32 0, i32 3
  %146 = load i32, ptr %145, align 4, !noalias !97
  %147 = load i32, ptr %15, align 4, !noalias !97
  %148 = sub i32 32, %147
  %149 = lshr i32 %146, %148
  %150 = xor i32 %144, %149
  %151 = getelementptr inbounds [4 x i32], ptr %43, i32 0, i32 3
  store i32 %150, ptr %151, align 4, !alias.scope !97
  %152 = load ptr, ptr %38, align 4
  %153 = getelementptr inbounds %struct.vec, ptr %152, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %153, ptr align 4 %42, i32 16, i1 false)
  %154 = load ptr, ptr %38, align 4
  %155 = getelementptr inbounds %struct.vec, ptr %154, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %155, ptr align 4 %43, i32 16, i1 false)
  %156 = load ptr, ptr %38, align 4
  %157 = getelementptr inbounds %struct.vec, ptr %156, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %45, ptr align 4 %157, i32 16, i1 false)
  %158 = load ptr, ptr %38, align 4
  %159 = getelementptr inbounds %struct.vec, ptr %158, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %46, ptr align 4 %159, i32 16, i1 false)
  %160 = load ptr, ptr %38, align 4
  %161 = getelementptr inbounds %struct.vec, ptr %160, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %47, ptr align 4 %161, i32 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %46, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %45, i64 16, i1 false)
  store ptr %48, ptr %29, align 4, !noalias !100
  %162 = load i32, ptr %31, align 4, !noalias !100
  %163 = load i32, ptr %30, align 4, !noalias !100
  %164 = add i32 %162, %163
  store i32 %164, ptr %48, align 4, !alias.scope !100
  %165 = getelementptr inbounds [4 x i32], ptr %31, i32 0, i32 1
  %166 = load i32, ptr %165, align 4, !noalias !100
  %167 = getelementptr inbounds [4 x i32], ptr %30, i32 0, i32 1
  %168 = load i32, ptr %167, align 4, !noalias !100
  %169 = add i32 %166, %168
  %170 = getelementptr inbounds [4 x i32], ptr %48, i32 0, i32 1
  store i32 %169, ptr %170, align 4, !alias.scope !100
  %171 = getelementptr inbounds [4 x i32], ptr %31, i32 0, i32 2
  %172 = load i32, ptr %171, align 4, !noalias !100
  %173 = getelementptr inbounds [4 x i32], ptr %30, i32 0, i32 2
  %174 = load i32, ptr %173, align 4, !noalias !100
  %175 = add i32 %172, %174
  %176 = getelementptr inbounds [4 x i32], ptr %48, i32 0, i32 2
  store i32 %175, ptr %176, align 4, !alias.scope !100
  %177 = getelementptr inbounds [4 x i32], ptr %31, i32 0, i32 3
  %178 = load i32, ptr %177, align 4, !noalias !100
  %179 = getelementptr inbounds [4 x i32], ptr %30, i32 0, i32 3
  %180 = load i32, ptr %179, align 4, !noalias !100
  %181 = add i32 %178, %180
  %182 = getelementptr inbounds [4 x i32], ptr %48, i32 0, i32 3
  store i32 %181, ptr %182, align 4, !alias.scope !100
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %48, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %47, i64 16, i1 false)
  store ptr %50, ptr %5, align 4, !noalias !103
  %183 = load i32, ptr %7, align 4, !noalias !103
  %184 = load i32, ptr %6, align 4, !noalias !103
  %185 = xor i32 %183, %184
  store i32 %185, ptr %50, align 4, !alias.scope !103
  %186 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 1
  %187 = load i32, ptr %186, align 4, !noalias !103
  %188 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %189 = load i32, ptr %188, align 4, !noalias !103
  %190 = xor i32 %187, %189
  %191 = getelementptr inbounds [4 x i32], ptr %50, i32 0, i32 1
  store i32 %190, ptr %191, align 4, !alias.scope !103
  %192 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 2
  %193 = load i32, ptr %192, align 4, !noalias !103
  %194 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %195 = load i32, ptr %194, align 4, !noalias !103
  %196 = xor i32 %193, %195
  %197 = getelementptr inbounds [4 x i32], ptr %50, i32 0, i32 2
  store i32 %196, ptr %197, align 4, !alias.scope !103
  %198 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 3
  %199 = load i32, ptr %198, align 4, !noalias !103
  %200 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  %201 = load i32, ptr %200, align 4, !noalias !103
  %202 = xor i32 %199, %201
  %203 = getelementptr inbounds [4 x i32], ptr %50, i32 0, i32 3
  store i32 %202, ptr %203, align 4, !alias.scope !103
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %50, i64 16, i1 false)
  store ptr %49, ptr %17, align 4, !noalias !106
  store i32 12, ptr %18, align 4, !noalias !106
  %204 = load i32, ptr %19, align 4, !noalias !106
  %205 = load i32, ptr %18, align 4, !noalias !106
  %206 = shl i32 %204, %205
  %207 = load i32, ptr %19, align 4, !noalias !106
  %208 = load i32, ptr %18, align 4, !noalias !106
  %209 = sub i32 32, %208
  %210 = lshr i32 %207, %209
  %211 = xor i32 %206, %210
  store i32 %211, ptr %49, align 4, !alias.scope !106
  %212 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 1
  %213 = load i32, ptr %212, align 4, !noalias !106
  %214 = load i32, ptr %18, align 4, !noalias !106
  %215 = shl i32 %213, %214
  %216 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 1
  %217 = load i32, ptr %216, align 4, !noalias !106
  %218 = load i32, ptr %18, align 4, !noalias !106
  %219 = sub i32 32, %218
  %220 = lshr i32 %217, %219
  %221 = xor i32 %215, %220
  %222 = getelementptr inbounds [4 x i32], ptr %49, i32 0, i32 1
  store i32 %221, ptr %222, align 4, !alias.scope !106
  %223 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 2
  %224 = load i32, ptr %223, align 4, !noalias !106
  %225 = load i32, ptr %18, align 4, !noalias !106
  %226 = shl i32 %224, %225
  %227 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 2
  %228 = load i32, ptr %227, align 4, !noalias !106
  %229 = load i32, ptr %18, align 4, !noalias !106
  %230 = sub i32 32, %229
  %231 = lshr i32 %228, %230
  %232 = xor i32 %226, %231
  %233 = getelementptr inbounds [4 x i32], ptr %49, i32 0, i32 2
  store i32 %232, ptr %233, align 4, !alias.scope !106
  %234 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 3
  %235 = load i32, ptr %234, align 4, !noalias !106
  %236 = load i32, ptr %18, align 4, !noalias !106
  %237 = shl i32 %235, %236
  %238 = getelementptr inbounds [4 x i32], ptr %19, i32 0, i32 3
  %239 = load i32, ptr %238, align 4, !noalias !106
  %240 = load i32, ptr %18, align 4, !noalias !106
  %241 = sub i32 32, %240
  %242 = lshr i32 %239, %241
  %243 = xor i32 %237, %242
  %244 = getelementptr inbounds [4 x i32], ptr %49, i32 0, i32 3
  store i32 %243, ptr %244, align 4, !alias.scope !106
  %245 = load ptr, ptr %38, align 4
  %246 = getelementptr inbounds %struct.vec, ptr %245, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %246, ptr align 4 %48, i32 16, i1 false)
  %247 = load ptr, ptr %38, align 4
  %248 = getelementptr inbounds %struct.vec, ptr %247, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %248, ptr align 4 %49, i32 16, i1 false)
  %249 = load ptr, ptr %38, align 4
  %250 = getelementptr inbounds %struct.vec, ptr %249, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %51, ptr align 4 %250, i32 16, i1 false)
  %251 = load ptr, ptr %38, align 4
  %252 = getelementptr inbounds %struct.vec, ptr %251, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %52, ptr align 4 %252, i32 16, i1 false)
  %253 = load ptr, ptr %38, align 4
  %254 = getelementptr inbounds %struct.vec, ptr %253, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %53, ptr align 4 %254, i32 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %52, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr align 1 %51, i64 16, i1 false)
  store ptr %54, ptr %32, align 4, !noalias !109
  %255 = load i32, ptr %34, align 4, !noalias !109
  %256 = load i32, ptr %33, align 4, !noalias !109
  %257 = add i32 %255, %256
  store i32 %257, ptr %54, align 4, !alias.scope !109
  %258 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 1
  %259 = load i32, ptr %258, align 4, !noalias !109
  %260 = getelementptr inbounds [4 x i32], ptr %33, i32 0, i32 1
  %261 = load i32, ptr %260, align 4, !noalias !109
  %262 = add i32 %259, %261
  %263 = getelementptr inbounds [4 x i32], ptr %54, i32 0, i32 1
  store i32 %262, ptr %263, align 4, !alias.scope !109
  %264 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 2
  %265 = load i32, ptr %264, align 4, !noalias !109
  %266 = getelementptr inbounds [4 x i32], ptr %33, i32 0, i32 2
  %267 = load i32, ptr %266, align 4, !noalias !109
  %268 = add i32 %265, %267
  %269 = getelementptr inbounds [4 x i32], ptr %54, i32 0, i32 2
  store i32 %268, ptr %269, align 4, !alias.scope !109
  %270 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 3
  %271 = load i32, ptr %270, align 4, !noalias !109
  %272 = getelementptr inbounds [4 x i32], ptr %33, i32 0, i32 3
  %273 = load i32, ptr %272, align 4, !noalias !109
  %274 = add i32 %271, %273
  %275 = getelementptr inbounds [4 x i32], ptr %54, i32 0, i32 3
  store i32 %274, ptr %275, align 4, !alias.scope !109
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %54, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %53, i64 16, i1 false)
  store ptr %56, ptr %8, align 4, !noalias !112
  %276 = load i32, ptr %10, align 4, !noalias !112
  %277 = load i32, ptr %9, align 4, !noalias !112
  %278 = xor i32 %276, %277
  store i32 %278, ptr %56, align 4, !alias.scope !112
  %279 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 1
  %280 = load i32, ptr %279, align 4, !noalias !112
  %281 = getelementptr inbounds [4 x i32], ptr %9, i32 0, i32 1
  %282 = load i32, ptr %281, align 4, !noalias !112
  %283 = xor i32 %280, %282
  %284 = getelementptr inbounds [4 x i32], ptr %56, i32 0, i32 1
  store i32 %283, ptr %284, align 4, !alias.scope !112
  %285 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 2
  %286 = load i32, ptr %285, align 4, !noalias !112
  %287 = getelementptr inbounds [4 x i32], ptr %9, i32 0, i32 2
  %288 = load i32, ptr %287, align 4, !noalias !112
  %289 = xor i32 %286, %288
  %290 = getelementptr inbounds [4 x i32], ptr %56, i32 0, i32 2
  store i32 %289, ptr %290, align 4, !alias.scope !112
  %291 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 3
  %292 = load i32, ptr %291, align 4, !noalias !112
  %293 = getelementptr inbounds [4 x i32], ptr %9, i32 0, i32 3
  %294 = load i32, ptr %293, align 4, !noalias !112
  %295 = xor i32 %292, %294
  %296 = getelementptr inbounds [4 x i32], ptr %56, i32 0, i32 3
  store i32 %295, ptr %296, align 4, !alias.scope !112
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %56, i64 16, i1 false)
  store ptr %55, ptr %20, align 4, !noalias !115
  store i32 8, ptr %21, align 4, !noalias !115
  %297 = load i32, ptr %22, align 4, !noalias !115
  %298 = load i32, ptr %21, align 4, !noalias !115
  %299 = shl i32 %297, %298
  %300 = load i32, ptr %22, align 4, !noalias !115
  %301 = load i32, ptr %21, align 4, !noalias !115
  %302 = sub i32 32, %301
  %303 = lshr i32 %300, %302
  %304 = xor i32 %299, %303
  store i32 %304, ptr %55, align 4, !alias.scope !115
  %305 = getelementptr inbounds [4 x i32], ptr %22, i32 0, i32 1
  %306 = load i32, ptr %305, align 4, !noalias !115
  %307 = load i32, ptr %21, align 4, !noalias !115
  %308 = shl i32 %306, %307
  %309 = getelementptr inbounds [4 x i32], ptr %22, i32 0, i32 1
  %310 = load i32, ptr %309, align 4, !noalias !115
  %311 = load i32, ptr %21, align 4, !noalias !115
  %312 = sub i32 32, %311
  %313 = lshr i32 %310, %312
  %314 = xor i32 %308, %313
  %315 = getelementptr inbounds [4 x i32], ptr %55, i32 0, i32 1
  store i32 %314, ptr %315, align 4, !alias.scope !115
  %316 = getelementptr inbounds [4 x i32], ptr %22, i32 0, i32 2
  %317 = load i32, ptr %316, align 4, !noalias !115
  %318 = load i32, ptr %21, align 4, !noalias !115
  %319 = shl i32 %317, %318
  %320 = getelementptr inbounds [4 x i32], ptr %22, i32 0, i32 2
  %321 = load i32, ptr %320, align 4, !noalias !115
  %322 = load i32, ptr %21, align 4, !noalias !115
  %323 = sub i32 32, %322
  %324 = lshr i32 %321, %323
  %325 = xor i32 %319, %324
  %326 = getelementptr inbounds [4 x i32], ptr %55, i32 0, i32 2
  store i32 %325, ptr %326, align 4, !alias.scope !115
  %327 = getelementptr inbounds [4 x i32], ptr %22, i32 0, i32 3
  %328 = load i32, ptr %327, align 4, !noalias !115
  %329 = load i32, ptr %21, align 4, !noalias !115
  %330 = shl i32 %328, %329
  %331 = getelementptr inbounds [4 x i32], ptr %22, i32 0, i32 3
  %332 = load i32, ptr %331, align 4, !noalias !115
  %333 = load i32, ptr %21, align 4, !noalias !115
  %334 = sub i32 32, %333
  %335 = lshr i32 %332, %334
  %336 = xor i32 %330, %335
  %337 = getelementptr inbounds [4 x i32], ptr %55, i32 0, i32 3
  store i32 %336, ptr %337, align 4, !alias.scope !115
  %338 = load ptr, ptr %38, align 4
  %339 = getelementptr inbounds %struct.vec, ptr %338, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %339, ptr align 4 %54, i32 16, i1 false)
  %340 = load ptr, ptr %38, align 4
  %341 = getelementptr inbounds %struct.vec, ptr %340, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %341, ptr align 4 %55, i32 16, i1 false)
  %342 = load ptr, ptr %38, align 4
  %343 = getelementptr inbounds %struct.vec, ptr %342, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %57, ptr align 4 %343, i32 16, i1 false)
  %344 = load ptr, ptr %38, align 4
  %345 = getelementptr inbounds %struct.vec, ptr %344, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %58, ptr align 4 %345, i32 16, i1 false)
  %346 = load ptr, ptr %38, align 4
  %347 = getelementptr inbounds %struct.vec, ptr %346, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %59, ptr align 4 %347, i32 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %58, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %57, i64 16, i1 false)
  store ptr %60, ptr %35, align 4, !noalias !118
  %348 = load i32, ptr %37, align 4, !noalias !118
  %349 = load i32, ptr %36, align 4, !noalias !118
  %350 = add i32 %348, %349
  store i32 %350, ptr %60, align 4, !alias.scope !118
  %351 = getelementptr inbounds [4 x i32], ptr %37, i32 0, i32 1
  %352 = load i32, ptr %351, align 4, !noalias !118
  %353 = getelementptr inbounds [4 x i32], ptr %36, i32 0, i32 1
  %354 = load i32, ptr %353, align 4, !noalias !118
  %355 = add i32 %352, %354
  %356 = getelementptr inbounds [4 x i32], ptr %60, i32 0, i32 1
  store i32 %355, ptr %356, align 4, !alias.scope !118
  %357 = getelementptr inbounds [4 x i32], ptr %37, i32 0, i32 2
  %358 = load i32, ptr %357, align 4, !noalias !118
  %359 = getelementptr inbounds [4 x i32], ptr %36, i32 0, i32 2
  %360 = load i32, ptr %359, align 4, !noalias !118
  %361 = add i32 %358, %360
  %362 = getelementptr inbounds [4 x i32], ptr %60, i32 0, i32 2
  store i32 %361, ptr %362, align 4, !alias.scope !118
  %363 = getelementptr inbounds [4 x i32], ptr %37, i32 0, i32 3
  %364 = load i32, ptr %363, align 4, !noalias !118
  %365 = getelementptr inbounds [4 x i32], ptr %36, i32 0, i32 3
  %366 = load i32, ptr %365, align 4, !noalias !118
  %367 = add i32 %364, %366
  %368 = getelementptr inbounds [4 x i32], ptr %60, i32 0, i32 3
  store i32 %367, ptr %368, align 4, !alias.scope !118
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %60, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %59, i64 16, i1 false)
  store ptr %62, ptr %11, align 4, !noalias !121
  %369 = load i32, ptr %13, align 4, !noalias !121
  %370 = load i32, ptr %12, align 4, !noalias !121
  %371 = xor i32 %369, %370
  store i32 %371, ptr %62, align 4, !alias.scope !121
  %372 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 1
  %373 = load i32, ptr %372, align 4, !noalias !121
  %374 = getelementptr inbounds [4 x i32], ptr %12, i32 0, i32 1
  %375 = load i32, ptr %374, align 4, !noalias !121
  %376 = xor i32 %373, %375
  %377 = getelementptr inbounds [4 x i32], ptr %62, i32 0, i32 1
  store i32 %376, ptr %377, align 4, !alias.scope !121
  %378 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 2
  %379 = load i32, ptr %378, align 4, !noalias !121
  %380 = getelementptr inbounds [4 x i32], ptr %12, i32 0, i32 2
  %381 = load i32, ptr %380, align 4, !noalias !121
  %382 = xor i32 %379, %381
  %383 = getelementptr inbounds [4 x i32], ptr %62, i32 0, i32 2
  store i32 %382, ptr %383, align 4, !alias.scope !121
  %384 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 3
  %385 = load i32, ptr %384, align 4, !noalias !121
  %386 = getelementptr inbounds [4 x i32], ptr %12, i32 0, i32 3
  %387 = load i32, ptr %386, align 4, !noalias !121
  %388 = xor i32 %385, %387
  %389 = getelementptr inbounds [4 x i32], ptr %62, i32 0, i32 3
  store i32 %388, ptr %389, align 4, !alias.scope !121
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %62, i64 16, i1 false)
  store ptr %61, ptr %23, align 4, !noalias !124
  store i32 7, ptr %24, align 4, !noalias !124
  %390 = load i32, ptr %25, align 4, !noalias !124
  %391 = load i32, ptr %24, align 4, !noalias !124
  %392 = shl i32 %390, %391
  %393 = load i32, ptr %25, align 4, !noalias !124
  %394 = load i32, ptr %24, align 4, !noalias !124
  %395 = sub i32 32, %394
  %396 = lshr i32 %393, %395
  %397 = xor i32 %392, %396
  store i32 %397, ptr %61, align 4, !alias.scope !124
  %398 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 1
  %399 = load i32, ptr %398, align 4, !noalias !124
  %400 = load i32, ptr %24, align 4, !noalias !124
  %401 = shl i32 %399, %400
  %402 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 1
  %403 = load i32, ptr %402, align 4, !noalias !124
  %404 = load i32, ptr %24, align 4, !noalias !124
  %405 = sub i32 32, %404
  %406 = lshr i32 %403, %405
  %407 = xor i32 %401, %406
  %408 = getelementptr inbounds [4 x i32], ptr %61, i32 0, i32 1
  store i32 %407, ptr %408, align 4, !alias.scope !124
  %409 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 2
  %410 = load i32, ptr %409, align 4, !noalias !124
  %411 = load i32, ptr %24, align 4, !noalias !124
  %412 = shl i32 %410, %411
  %413 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 2
  %414 = load i32, ptr %413, align 4, !noalias !124
  %415 = load i32, ptr %24, align 4, !noalias !124
  %416 = sub i32 32, %415
  %417 = lshr i32 %414, %416
  %418 = xor i32 %412, %417
  %419 = getelementptr inbounds [4 x i32], ptr %61, i32 0, i32 2
  store i32 %418, ptr %419, align 4, !alias.scope !124
  %420 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 3
  %421 = load i32, ptr %420, align 4, !noalias !124
  %422 = load i32, ptr %24, align 4, !noalias !124
  %423 = shl i32 %421, %422
  %424 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 3
  %425 = load i32, ptr %424, align 4, !noalias !124
  %426 = load i32, ptr %24, align 4, !noalias !124
  %427 = sub i32 32, %426
  %428 = lshr i32 %425, %427
  %429 = xor i32 %423, %428
  %430 = getelementptr inbounds [4 x i32], ptr %61, i32 0, i32 3
  store i32 %429, ptr %430, align 4, !alias.scope !124
  %431 = load ptr, ptr %38, align 4
  %432 = getelementptr inbounds %struct.vec, ptr %431, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %432, ptr align 4 %60, i32 16, i1 false)
  %433 = load ptr, ptr %38, align 4
  %434 = getelementptr inbounds %struct.vec, ptr %433, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %434, ptr align 4 %61, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_sum_states(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.vec, align 8
  %5 = alloca %struct.vec, align 8
  %6 = alloca ptr, align 4
  %7 = alloca %struct.vec, align 8
  %8 = alloca %struct.vec, align 8
  %9 = alloca ptr, align 4
  %10 = alloca %struct.vec, align 8
  %11 = alloca %struct.vec, align 8
  %12 = alloca ptr, align 4
  %13 = alloca %struct.vec, align 8
  %14 = alloca %struct.vec, align 8
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca %struct.vec, align 4
  %18 = alloca %struct.vec, align 4
  %19 = alloca %struct.vec, align 4
  %20 = alloca %struct.vec, align 4
  %21 = alloca %struct.vec, align 4
  %22 = alloca %struct.vec, align 4
  %23 = alloca %struct.vec, align 4
  %24 = alloca %struct.vec, align 4
  %25 = alloca %struct.vec, align 4
  %26 = alloca %struct.vec, align 4
  %27 = alloca %struct.vec, align 4
  %28 = alloca %struct.vec, align 4
  store ptr %0, ptr %15, align 4
  store ptr %1, ptr %16, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.vec, ptr %29, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %17, ptr align 4 %30, i32 16, i1 false)
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr inbounds %struct.vec, ptr %31, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 4 %32, i32 16, i1 false)
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr inbounds %struct.vec, ptr %33, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %34, i32 16, i1 false)
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr inbounds %struct.vec, ptr %35, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %20, ptr align 4 %36, i32 16, i1 false)
  %37 = load ptr, ptr %15, align 4
  %38 = getelementptr inbounds %struct.vec, ptr %37, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %21, ptr align 4 %38, i32 16, i1 false)
  %39 = load ptr, ptr %15, align 4
  %40 = getelementptr inbounds %struct.vec, ptr %39, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %22, ptr align 4 %40, i32 16, i1 false)
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr inbounds %struct.vec, ptr %41, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %23, ptr align 4 %42, i32 16, i1 false)
  %43 = load ptr, ptr %15, align 4
  %44 = getelementptr inbounds %struct.vec, ptr %43, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 4 %44, i32 16, i1 false)
  %45 = load ptr, ptr %15, align 4
  %46 = getelementptr inbounds %struct.vec, ptr %45, i32 0
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %17, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %21, i64 16, i1 false)
  store ptr %25, ptr %3, align 4, !noalias !127
  %47 = load i32, ptr %5, align 4, !noalias !127
  %48 = load i32, ptr %4, align 4, !noalias !127
  %49 = add i32 %47, %48
  store i32 %49, ptr %25, align 4, !alias.scope !127
  %50 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %51 = load i32, ptr %50, align 4, !noalias !127
  %52 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %53 = load i32, ptr %52, align 4, !noalias !127
  %54 = add i32 %51, %53
  %55 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 1
  store i32 %54, ptr %55, align 4, !alias.scope !127
  %56 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %57 = load i32, ptr %56, align 4, !noalias !127
  %58 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %59 = load i32, ptr %58, align 4, !noalias !127
  %60 = add i32 %57, %59
  %61 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 2
  store i32 %60, ptr %61, align 4, !alias.scope !127
  %62 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %63 = load i32, ptr %62, align 4, !noalias !127
  %64 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %65 = load i32, ptr %64, align 4, !noalias !127
  %66 = add i32 %63, %65
  %67 = getelementptr inbounds [4 x i32], ptr %25, i32 0, i32 3
  store i32 %66, ptr %67, align 4, !alias.scope !127
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %46, ptr align 4 %25, i32 16, i1 false)
  %68 = load ptr, ptr %15, align 4
  %69 = getelementptr inbounds %struct.vec, ptr %68, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %18, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %22, i64 16, i1 false)
  store ptr %26, ptr %6, align 4, !noalias !130
  %70 = load i32, ptr %8, align 4, !noalias !130
  %71 = load i32, ptr %7, align 4, !noalias !130
  %72 = add i32 %70, %71
  store i32 %72, ptr %26, align 4, !alias.scope !130
  %73 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 1
  %74 = load i32, ptr %73, align 4, !noalias !130
  %75 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 1
  %76 = load i32, ptr %75, align 4, !noalias !130
  %77 = add i32 %74, %76
  %78 = getelementptr inbounds [4 x i32], ptr %26, i32 0, i32 1
  store i32 %77, ptr %78, align 4, !alias.scope !130
  %79 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 2
  %80 = load i32, ptr %79, align 4, !noalias !130
  %81 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 2
  %82 = load i32, ptr %81, align 4, !noalias !130
  %83 = add i32 %80, %82
  %84 = getelementptr inbounds [4 x i32], ptr %26, i32 0, i32 2
  store i32 %83, ptr %84, align 4, !alias.scope !130
  %85 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 3
  %86 = load i32, ptr %85, align 4, !noalias !130
  %87 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 3
  %88 = load i32, ptr %87, align 4, !noalias !130
  %89 = add i32 %86, %88
  %90 = getelementptr inbounds [4 x i32], ptr %26, i32 0, i32 3
  store i32 %89, ptr %90, align 4, !alias.scope !130
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %69, ptr align 4 %26, i32 16, i1 false)
  %91 = load ptr, ptr %15, align 4
  %92 = getelementptr inbounds %struct.vec, ptr %91, i32 2
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %19, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %23, i64 16, i1 false)
  store ptr %27, ptr %9, align 4, !noalias !133
  %93 = load i32, ptr %11, align 4, !noalias !133
  %94 = load i32, ptr %10, align 4, !noalias !133
  %95 = add i32 %93, %94
  store i32 %95, ptr %27, align 4, !alias.scope !133
  %96 = getelementptr inbounds [4 x i32], ptr %11, i32 0, i32 1
  %97 = load i32, ptr %96, align 4, !noalias !133
  %98 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 1
  %99 = load i32, ptr %98, align 4, !noalias !133
  %100 = add i32 %97, %99
  %101 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 1
  store i32 %100, ptr %101, align 4, !alias.scope !133
  %102 = getelementptr inbounds [4 x i32], ptr %11, i32 0, i32 2
  %103 = load i32, ptr %102, align 4, !noalias !133
  %104 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 2
  %105 = load i32, ptr %104, align 4, !noalias !133
  %106 = add i32 %103, %105
  %107 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 2
  store i32 %106, ptr %107, align 4, !alias.scope !133
  %108 = getelementptr inbounds [4 x i32], ptr %11, i32 0, i32 3
  %109 = load i32, ptr %108, align 4, !noalias !133
  %110 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 3
  %111 = load i32, ptr %110, align 4, !noalias !133
  %112 = add i32 %109, %111
  %113 = getelementptr inbounds [4 x i32], ptr %27, i32 0, i32 3
  store i32 %112, ptr %113, align 4, !alias.scope !133
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %92, ptr align 4 %27, i32 16, i1 false)
  %114 = load ptr, ptr %15, align 4
  %115 = getelementptr inbounds %struct.vec, ptr %114, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %20, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %24, i64 16, i1 false)
  store ptr %28, ptr %12, align 4, !noalias !136
  %116 = load i32, ptr %14, align 4, !noalias !136
  %117 = load i32, ptr %13, align 4, !noalias !136
  %118 = add i32 %116, %117
  store i32 %118, ptr %28, align 4, !alias.scope !136
  %119 = getelementptr inbounds [4 x i32], ptr %14, i32 0, i32 1
  %120 = load i32, ptr %119, align 4, !noalias !136
  %121 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 1
  %122 = load i32, ptr %121, align 4, !noalias !136
  %123 = add i32 %120, %122
  %124 = getelementptr inbounds [4 x i32], ptr %28, i32 0, i32 1
  store i32 %123, ptr %124, align 4, !alias.scope !136
  %125 = getelementptr inbounds [4 x i32], ptr %14, i32 0, i32 2
  %126 = load i32, ptr %125, align 4, !noalias !136
  %127 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 2
  %128 = load i32, ptr %127, align 4, !noalias !136
  %129 = add i32 %126, %128
  %130 = getelementptr inbounds [4 x i32], ptr %28, i32 0, i32 2
  store i32 %129, ptr %130, align 4, !alias.scope !136
  %131 = getelementptr inbounds [4 x i32], ptr %14, i32 0, i32 3
  %132 = load i32, ptr %131, align 4, !noalias !136
  %133 = getelementptr inbounds [4 x i32], ptr %13, i32 0, i32 3
  %134 = load i32, ptr %133, align 4, !noalias !136
  %135 = add i32 %132, %134
  %136 = getelementptr inbounds [4 x i32], ptr %28, i32 0, i32 3
  store i32 %135, ptr %136, align 4, !alias.scope !136
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %115, ptr align 4 %28, i32 16, i1 false)
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
define internal void @Hacl_Impl_Chacha20_Vec128_chacha20_core(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_Chacha20_Vec128_copy_state(ptr noundef %6, ptr noundef %7)
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %13, %2
  %9 = load i32, ptr %5, align 4
  %10 = icmp ult i32 %9, 10
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 4
  call void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %12)
  br label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %5, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %5, align 4
  br label %8, !llvm.loop !139

16:                                               ; preds = %8
  %17 = load ptr, ptr %3, align 4
  %18 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_Chacha20_Vec128_sum_states(ptr noundef %17, ptr noundef %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_State_state_incr(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.vec, align 8
  %4 = alloca %struct.vec, align 8
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.vec, align 4
  %12 = alloca %struct.vec, align 8
  %13 = alloca ptr, align 4
  %14 = alloca %struct.vec, align 4
  %15 = alloca %struct.vec, align 4
  store ptr %0, ptr %13, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.vec, ptr %16, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %14, ptr align 4 %17, i32 16, i1 false)
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.vec, ptr %18, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %14, i64 16, i1 false)
  store ptr %15, ptr %10, align 4, !noalias !140
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  store ptr %11, ptr %5, align 4, !noalias !146
  store i32 1, ptr %6, align 4, !noalias !146
  store i32 0, ptr %7, align 4, !noalias !146
  store i32 0, ptr %8, align 4, !noalias !146
  store i32 0, ptr %9, align 4, !noalias !146
  %20 = load i32, ptr %6, align 4, !noalias !146
  store i32 %20, ptr %11, align 4, !alias.scope !143, !noalias !140
  %21 = load i32, ptr %7, align 4, !noalias !146
  %22 = getelementptr inbounds [4 x i32], ptr %11, i32 0, i32 1
  store i32 %21, ptr %22, align 4, !alias.scope !143, !noalias !140
  %23 = load i32, ptr %8, align 4, !noalias !146
  %24 = getelementptr inbounds [4 x i32], ptr %11, i32 0, i32 2
  store i32 %23, ptr %24, align 4, !alias.scope !143, !noalias !140
  %25 = load i32, ptr %9, align 4, !noalias !146
  %26 = getelementptr inbounds [4 x i32], ptr %11, i32 0, i32 3
  store i32 %25, ptr %26, align 4, !alias.scope !143, !noalias !140
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %11, i64 16, i1 false), !noalias !140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %12, i64 16, i1 false), !noalias !140
  store ptr %15, ptr %2, align 4, !noalias !150
  %27 = load i32, ptr %4, align 4, !noalias !150
  %28 = load i32, ptr %3, align 4, !noalias !150
  %29 = add i32 %27, %28
  store i32 %29, ptr %15, align 4, !alias.scope !150
  %30 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %31 = load i32, ptr %30, align 4, !noalias !150
  %32 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %33 = load i32, ptr %32, align 4, !noalias !150
  %34 = add i32 %31, %33
  %35 = getelementptr inbounds [4 x i32], ptr %15, i32 0, i32 1
  store i32 %34, ptr %35, align 4, !alias.scope !150
  %36 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %37 = load i32, ptr %36, align 4, !noalias !150
  %38 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %39 = load i32, ptr %38, align 4, !noalias !150
  %40 = add i32 %37, %39
  %41 = getelementptr inbounds [4 x i32], ptr %15, i32 0, i32 2
  store i32 %40, ptr %41, align 4, !alias.scope !150
  %42 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %43 = load i32, ptr %42, align 4, !noalias !150
  %44 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %45 = load i32, ptr %44, align 4, !noalias !150
  %46 = add i32 %43, %45
  %47 = getelementptr inbounds [4 x i32], ptr %15, i32 0, i32 3
  store i32 %46, ptr %47, align 4, !alias.scope !150
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %15, i32 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_chacha20_block(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca [4 x %struct.vec], align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vec, align 4
  store ptr %0, ptr %8, align 4
  store ptr %1, ptr %9, align 4
  store i32 0, ptr %11, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, ptr %11, align 4
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, ptr %11, align 4
  %18 = getelementptr inbounds [4 x %struct.vec], ptr %10, i32 0, i32 %17
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  store ptr %12, ptr %3, align 4, !noalias !151
  store i32 0, ptr %4, align 4, !noalias !151
  store i32 0, ptr %5, align 4, !noalias !151
  store i32 0, ptr %6, align 4, !noalias !151
  store i32 0, ptr %7, align 4, !noalias !151
  %19 = load i32, ptr %4, align 4, !noalias !151
  store i32 %19, ptr %12, align 4, !alias.scope !151
  %20 = load i32, ptr %5, align 4, !noalias !151
  %21 = getelementptr inbounds [4 x i32], ptr %12, i32 0, i32 1
  store i32 %20, ptr %21, align 4, !alias.scope !151
  %22 = load i32, ptr %6, align 4, !noalias !151
  %23 = getelementptr inbounds [4 x i32], ptr %12, i32 0, i32 2
  store i32 %22, ptr %23, align 4, !alias.scope !151
  %24 = load i32, ptr %7, align 4, !noalias !151
  %25 = getelementptr inbounds [4 x i32], ptr %12, i32 0, i32 3
  store i32 %24, ptr %25, align 4, !alias.scope !151
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 4 %12, i32 16, i1 false)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %11, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %11, align 4
  br label %13, !llvm.loop !154

29:                                               ; preds = %13
  %30 = getelementptr inbounds [4 x %struct.vec], ptr %10, i32 0, i32 0
  %31 = load ptr, ptr %9, align 4
  call void @Hacl_Impl_Chacha20_Vec128_chacha20_core(ptr noundef %30, ptr noundef %31)
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr inbounds [4 x %struct.vec], ptr %10, i32 0, i32 0
  call void @Hacl_Impl_Chacha20_Vec128_State_state_to_key_block(ptr noundef %32, ptr noundef %33)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Chacha20_Vec128_State_state_to_key_block(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.vec, align 8
  %5 = alloca ptr, align 4
  %6 = alloca %struct.vec, align 8
  %7 = alloca ptr, align 4
  %8 = alloca %struct.vec, align 8
  %9 = alloca ptr, align 4
  %10 = alloca %struct.vec, align 8
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.vec, align 4
  %14 = alloca %struct.vec, align 4
  %15 = alloca %struct.vec, align 4
  %16 = alloca %struct.vec, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  store ptr %0, ptr %11, align 4
  store ptr %1, ptr %12, align 4
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr inbounds %struct.vec, ptr %21, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %22, i32 16, i1 false)
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr inbounds %struct.vec, ptr %23, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %14, ptr align 4 %24, i32 16, i1 false)
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr inbounds %struct.vec, ptr %25, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %26, i32 16, i1 false)
  %27 = load ptr, ptr %12, align 4
  %28 = getelementptr inbounds %struct.vec, ptr %27, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %16, ptr align 4 %28, i32 16, i1 false)
  %29 = load ptr, ptr %11, align 4
  store ptr %29, ptr %17, align 4
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds i8, ptr %30, i32 16
  store ptr %31, ptr %18, align 4
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr inbounds i8, ptr %32, i32 32
  store ptr %33, ptr %19, align 4
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds i8, ptr %34, i32 48
  store ptr %35, ptr %20, align 4
  %36 = load ptr, ptr %17, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %13, i64 16, i1 false)
  store ptr %36, ptr %3, align 4
  %37 = load ptr, ptr %3, align 4
  %38 = load i32, ptr %4, align 4
  %39 = call i32 @__uint32_identity(i32 noundef %38)
  call void @store32(ptr noundef %37, i32 noundef %39)
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds i8, ptr %40, i32 4
  %42 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = call i32 @__uint32_identity(i32 noundef %43)
  call void @store32(ptr noundef %41, i32 noundef %44)
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds i8, ptr %45, i32 8
  %47 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @__uint32_identity(i32 noundef %48)
  call void @store32(ptr noundef %46, i32 noundef %49)
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr inbounds i8, ptr %50, i32 12
  %52 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = call i32 @__uint32_identity(i32 noundef %53)
  call void @store32(ptr noundef %51, i32 noundef %54)
  %55 = load ptr, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %14, i64 16, i1 false)
  store ptr %55, ptr %5, align 4
  %56 = load ptr, ptr %5, align 4
  %57 = load i32, ptr %6, align 4
  %58 = call i32 @__uint32_identity(i32 noundef %57)
  call void @store32(ptr noundef %56, i32 noundef %58)
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr inbounds i8, ptr %59, i32 4
  %61 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = call i32 @__uint32_identity(i32 noundef %62)
  call void @store32(ptr noundef %60, i32 noundef %63)
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr inbounds i8, ptr %64, i32 8
  %66 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = call i32 @__uint32_identity(i32 noundef %67)
  call void @store32(ptr noundef %65, i32 noundef %68)
  %69 = load ptr, ptr %5, align 4
  %70 = getelementptr inbounds i8, ptr %69, i32 12
  %71 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = call i32 @__uint32_identity(i32 noundef %72)
  call void @store32(ptr noundef %70, i32 noundef %73)
  %74 = load ptr, ptr %19, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %15, i64 16, i1 false)
  store ptr %74, ptr %7, align 4
  %75 = load ptr, ptr %7, align 4
  %76 = load i32, ptr %8, align 4
  %77 = call i32 @__uint32_identity(i32 noundef %76)
  call void @store32(ptr noundef %75, i32 noundef %77)
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr inbounds i8, ptr %78, i32 4
  %80 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = call i32 @__uint32_identity(i32 noundef %81)
  call void @store32(ptr noundef %79, i32 noundef %82)
  %83 = load ptr, ptr %7, align 4
  %84 = getelementptr inbounds i8, ptr %83, i32 8
  %85 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = call i32 @__uint32_identity(i32 noundef %86)
  call void @store32(ptr noundef %84, i32 noundef %87)
  %88 = load ptr, ptr %7, align 4
  %89 = getelementptr inbounds i8, ptr %88, i32 12
  %90 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = call i32 @__uint32_identity(i32 noundef %91)
  call void @store32(ptr noundef %89, i32 noundef %92)
  %93 = load ptr, ptr %20, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %16, i64 16, i1 false)
  store ptr %93, ptr %9, align 4
  %94 = load ptr, ptr %9, align 4
  %95 = load i32, ptr %10, align 4
  %96 = call i32 @__uint32_identity(i32 noundef %95)
  call void @store32(ptr noundef %94, i32 noundef %96)
  %97 = load ptr, ptr %9, align 4
  %98 = getelementptr inbounds i8, ptr %97, i32 4
  %99 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = call i32 @__uint32_identity(i32 noundef %100)
  call void @store32(ptr noundef %98, i32 noundef %101)
  %102 = load ptr, ptr %9, align 4
  %103 = getelementptr inbounds i8, ptr %102, i32 8
  %104 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = call i32 @__uint32_identity(i32 noundef %105)
  call void @store32(ptr noundef %103, i32 noundef %106)
  %107 = load ptr, ptr %9, align 4
  %108 = getelementptr inbounds i8, ptr %107, i32 12
  %109 = getelementptr inbounds [4 x i32], ptr %10, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = call i32 @__uint32_identity(i32 noundef %110)
  call void @store32(ptr noundef %108, i32 noundef %111)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"vec_load_32x4: argument 0"}
!9 = distinct !{!9, !"vec_load_32x4"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"vec_load_32x4: argument 0"}
!14 = distinct !{!14, !"vec_load_32x4"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"vec_load128_le: argument 0"}
!17 = distinct !{!17, !"vec_load128_le"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"vec_load_le: argument 0"}
!20 = distinct !{!20, !"vec_load_le"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"vec_load128_le: argument 0"}
!23 = distinct !{!23, !"vec_load128_le"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"vec_load_le: argument 0"}
!26 = distinct !{!26, !"vec_load_le"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"vec_load_32x4: argument 0"}
!29 = distinct !{!29, !"vec_load_32x4"}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = !{!33}
!33 = distinct !{!33, !34, !"vec_load_32x4: argument 0"}
!34 = distinct !{!34, !"vec_load_32x4"}
!35 = distinct !{!35, !11}
!36 = !{!37}
!37 = distinct !{!37, !38, !"vec_load_32x4: argument 0"}
!38 = distinct !{!38, !"vec_load_32x4"}
!39 = distinct !{!39, !11}
!40 = !{!41}
!41 = distinct !{!41, !42, !"vec_load_32x4: argument 0"}
!42 = distinct !{!42, !"vec_load_32x4"}
!43 = distinct !{!43, !11}
!44 = !{!45}
!45 = distinct !{!45, !46, !"vec_load_32x4: argument 0"}
!46 = distinct !{!46, !"vec_load_32x4"}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = !{!50}
!50 = distinct !{!50, !51, !"vec_load_le: argument 0"}
!51 = distinct !{!51, !"vec_load_le"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"vec_load_le: argument 0"}
!54 = distinct !{!54, !"vec_load_le"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"vec_load_le: argument 0"}
!57 = distinct !{!57, !"vec_load_le"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"vec_load_le: argument 0"}
!60 = distinct !{!60, !"vec_load_le"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"vec_xor: argument 0"}
!63 = distinct !{!63, !"vec_xor"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"vec_xor: argument 0"}
!66 = distinct !{!66, !"vec_xor"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"vec_xor: argument 0"}
!69 = distinct !{!69, !"vec_xor"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"vec_xor: argument 0"}
!72 = distinct !{!72, !"vec_xor"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"vec_shuffle_right: argument 0"}
!75 = distinct !{!75, !"vec_shuffle_right"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"vec_shuffle_right: argument 0"}
!78 = distinct !{!78, !"vec_shuffle_right"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"vec_shuffle_right: argument 0"}
!81 = distinct !{!81, !"vec_shuffle_right"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"vec_shuffle_right: argument 0"}
!84 = distinct !{!84, !"vec_shuffle_right"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"vec_shuffle_right: argument 0"}
!87 = distinct !{!87, !"vec_shuffle_right"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"vec_shuffle_right: argument 0"}
!90 = distinct !{!90, !"vec_shuffle_right"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"vec_add: argument 0"}
!93 = distinct !{!93, !"vec_add"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"vec_xor: argument 0"}
!96 = distinct !{!96, !"vec_xor"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"vec_rotate_left: argument 0"}
!99 = distinct !{!99, !"vec_rotate_left"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"vec_add: argument 0"}
!102 = distinct !{!102, !"vec_add"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"vec_xor: argument 0"}
!105 = distinct !{!105, !"vec_xor"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"vec_rotate_left: argument 0"}
!108 = distinct !{!108, !"vec_rotate_left"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"vec_add: argument 0"}
!111 = distinct !{!111, !"vec_add"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"vec_xor: argument 0"}
!114 = distinct !{!114, !"vec_xor"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"vec_rotate_left: argument 0"}
!117 = distinct !{!117, !"vec_rotate_left"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"vec_add: argument 0"}
!120 = distinct !{!120, !"vec_add"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"vec_xor: argument 0"}
!123 = distinct !{!123, !"vec_xor"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"vec_rotate_left: argument 0"}
!126 = distinct !{!126, !"vec_rotate_left"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"vec_add: argument 0"}
!129 = distinct !{!129, !"vec_add"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"vec_add: argument 0"}
!132 = distinct !{!132, !"vec_add"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"vec_add: argument 0"}
!135 = distinct !{!135, !"vec_add"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"vec_add: argument 0"}
!138 = distinct !{!138, !"vec_add"}
!139 = distinct !{!139, !11}
!140 = !{!141}
!141 = distinct !{!141, !142, !"vec_increment: argument 0"}
!142 = distinct !{!142, !"vec_increment"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"vec_load_32x4: argument 0"}
!145 = distinct !{!145, !"vec_load_32x4"}
!146 = !{!144, !141}
!147 = !{!148}
!148 = distinct !{!148, !149, !"vec_add: argument 0"}
!149 = distinct !{!149, !"vec_add"}
!150 = !{!148, !141}
!151 = !{!152}
!152 = distinct !{!152, !153, !"vec_load_32x4: argument 0"}
!153 = distinct !{!153, !"vec_load_32x4"}
!154 = distinct !{!154, !11}
