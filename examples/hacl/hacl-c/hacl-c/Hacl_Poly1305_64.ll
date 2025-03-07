; ModuleID = 'hacl-c/hacl-c/Hacl_Poly1305_64.c'
source_filename = "hacl-c/hacl-c/Hacl_Poly1305_64.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_64_State_poly1305_state = type { ptr, ptr }
%struct.FStar_UInt128_uint128 = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_mk_state(ptr dead_on_unwind noalias writable sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %5, align 4
  %8 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_Poly1305_64_mk_state(ptr dead_on_unwind writable sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, ptr noundef %7, ptr noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Poly1305_64_mk_state(ptr dead_on_unwind noalias writable sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %0, i32 0, i32 0
  %8 = load ptr, ptr %5, align 4
  store ptr %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %6, align 4
  store ptr %10, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_init(ptr %0, ptr %1, ptr noundef %2) #0 {
  %4 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 4
  %20 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %21 = alloca ptr, align 4
  %22 = alloca ptr, align 4
  %23 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %4, i32 0, i32 0
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %4, i32 0, i32 1
  store ptr %1, ptr %24, align 4
  store ptr %2, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %4, i32 8, i1 false)
  %25 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 0
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %7, align 4
  %27 = load ptr, ptr %7, align 4
  store ptr %27, ptr %8, align 4
  %28 = load ptr, ptr %5, align 4
  call void @load128_le(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %9, ptr noundef %28)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef 1152921487695413244)
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 0
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %30, i64 %32, i32 noundef 64)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef 1152921487695413247)
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 0
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %40 = load i64, ptr %39, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %34, i64 %36, i64 %38, i64 %40)
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %9, i32 0, i32 0
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %9, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  call void @FStar_UInt128_logand(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %42, i64 %44, i64 %46, i64 %48)
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  %53 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %50, i64 %52)
  %54 = and i64 %53, 17592186044415
  store i64 %54, ptr %15, align 8
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %58 = load i64, ptr %57, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %56, i64 %58, i32 noundef 44)
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 0
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 1
  %62 = load i64, ptr %61, align 4
  %63 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %60, i64 %62)
  %64 = and i64 %63, 17592186044415
  store i64 %64, ptr %16, align 8
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %68 = load i64, ptr %67, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %66, i64 %68, i32 noundef 88)
  %69 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 0
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 1
  %72 = load i64, ptr %71, align 4
  %73 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %70, i64 %72)
  store i64 %73, ptr %18, align 8
  %74 = load i64, ptr %15, align 8
  %75 = load ptr, ptr %8, align 4
  %76 = getelementptr inbounds i64, ptr %75, i32 0
  store i64 %74, ptr %76, align 4
  %77 = load i64, ptr %16, align 8
  %78 = load ptr, ptr %8, align 4
  %79 = getelementptr inbounds i64, ptr %78, i32 1
  store i64 %77, ptr %79, align 4
  %80 = load i64, ptr %18, align 8
  %81 = load ptr, ptr %8, align 4
  %82 = getelementptr inbounds i64, ptr %81, i32 2
  store i64 %80, ptr %82, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %20, ptr align 4 %4, i32 8, i1 false)
  %83 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %20, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  store ptr %84, ptr %21, align 4
  %85 = load ptr, ptr %21, align 4
  store ptr %85, ptr %22, align 4
  %86 = load ptr, ptr %22, align 4
  %87 = getelementptr inbounds i64, ptr %86, i32 0
  store i64 0, ptr %87, align 4
  %88 = load ptr, ptr %22, align 4
  %89 = getelementptr inbounds i64, ptr %88, i32 1
  store i64 0, ptr %89, align 4
  %90 = load ptr, ptr %22, align 4
  %91 = getelementptr inbounds i64, ptr %90, i32 2
  store i64 0, ptr %91, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @load128_le(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %4, align 4
  call void @load128_le_(ptr noundef %5, ptr noundef %0)
  ret void
}

declare void @FStar_UInt128_logand(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) #2

declare void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) #2

declare void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) #2

declare void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) #2

declare i64 @FStar_UInt128_uint128_to_uint64(i64, i64) #2

declare void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update_block(ptr %0, ptr %1, ptr noundef %2) #0 {
  %4 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %4, i32 0, i32 0
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %5, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %4, i32 0, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @Hacl_Impl_Poly1305_64_poly1305_update(ptr %10, ptr %12, ptr noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Poly1305_64_poly1305_update(ptr %0, ptr %1, ptr noundef %2) #0 {
  %4 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca [3 x i64], align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %4, i32 0, i32 0
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %4, i32 0, i32 1
  store ptr %1, ptr %22, align 4
  store ptr %2, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %4, i32 8, i1 false)
  %23 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr %24, ptr %7, align 4
  %25 = load ptr, ptr %7, align 4
  store ptr %25, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %9, ptr align 4 %4, i32 8, i1 false)
  %26 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %9, i32 0, i32 0
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %10, align 4
  %28 = load ptr, ptr %10, align 4
  store ptr %28, ptr %11, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %12, i8 0, i32 24, i1 false)
  %29 = load ptr, ptr %5, align 4
  call void @load128_le(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %13, ptr noundef %29)
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 0
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %31, i64 %33)
  %35 = and i64 %34, 17592186044415
  store i64 %35, ptr %14, align 8
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 0
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 1
  %39 = load i64, ptr %38, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %37, i64 %39, i32 noundef 44)
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 0
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %41, i64 %43)
  %45 = and i64 %44, 17592186044415
  store i64 %45, ptr %15, align 8
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 0
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %47, i64 %49, i32 noundef 88)
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %53 = load i64, ptr %52, align 4
  %54 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %51, i64 %53)
  store i64 %54, ptr %17, align 8
  %55 = load i64, ptr %14, align 8
  %56 = getelementptr inbounds [3 x i64], ptr %12, i32 0, i32 0
  store i64 %55, ptr %56, align 8
  %57 = load i64, ptr %15, align 8
  %58 = getelementptr inbounds [3 x i64], ptr %12, i32 0, i32 1
  store i64 %57, ptr %58, align 8
  %59 = load i64, ptr %17, align 8
  %60 = getelementptr inbounds [3 x i64], ptr %12, i32 0, i32 2
  store i64 %59, ptr %60, align 8
  %61 = getelementptr inbounds [3 x i64], ptr %12, i32 0, i32 2
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %19, align 8
  %63 = load i64, ptr %19, align 8
  %64 = or i64 1099511627776, %63
  store i64 %64, ptr %20, align 8
  %65 = load i64, ptr %20, align 8
  %66 = getelementptr inbounds [3 x i64], ptr %12, i32 0, i32 2
  store i64 %65, ptr %66, align 8
  %67 = load ptr, ptr %8, align 4
  %68 = getelementptr inbounds [3 x i64], ptr %12, i32 0, i32 0
  %69 = load ptr, ptr %11, align 4
  call void @Hacl_Bignum_AddAndMultiply_add_and_multiply(ptr noundef %67, ptr noundef %68, ptr noundef %69)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  store ptr %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %13 = load i32, ptr %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 4
  store ptr %16, ptr %8, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds i8, ptr %17, i32 16
  store ptr %18, ptr %9, align 4
  %19 = load i32, ptr %7, align 4
  %20 = sub i32 %19, 1
  store i32 %20, ptr %10, align 4
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  call void @Hacl_Poly1305_64_update_block(ptr %23, ptr %25, ptr noundef %21)
  %26 = load ptr, ptr %9, align 4
  %27 = load i32, ptr %10, align 4
  %28 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  call void @Hacl_Poly1305_64_update(ptr %29, ptr %31, ptr noundef %26, i32 noundef %27)
  br label %32

32:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update_last(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  store ptr %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %13 = load i32, ptr %7, align 4
  %14 = zext i32 %13 to i64
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %6, align 4
  %18 = load i32, ptr %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void @Hacl_Impl_Poly1305_64_poly1305_process_last_block(ptr %21, ptr %23, ptr noundef %17, i64 noundef %19)
  br label %24

24:                                               ; preds = %16, %4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %5, i32 8, i1 false)
  %25 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %9, align 4
  %27 = load ptr, ptr %9, align 4
  store ptr %27, ptr %10, align 4
  %28 = load ptr, ptr %10, align 4
  call void @Hacl_Impl_Poly1305_64_poly1305_last_pass(ptr noundef %28)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Poly1305_64_poly1305_process_last_block(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca [16 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  store ptr %1, ptr %14, align 4
  store ptr %2, ptr %6, align 4
  store i64 %3, ptr %7, align 8
  store i8 0, ptr %8, align 1
  store i32 0, ptr %10, align 4
  br label %15

15:                                               ; preds = %22, %4
  %16 = load i32, ptr %10, align 4
  %17 = icmp ult i32 %16, 16
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i8, ptr %8, align 1
  %20 = load i32, ptr %10, align 4
  %21 = getelementptr inbounds [16 x i8], ptr %9, i32 0, i32 %20
  store i8 %19, ptr %21, align 1
  br label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %10, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %10, align 4
  br label %15, !llvm.loop !7

25:                                               ; preds = %15
  %26 = load i64, ptr %7, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %11, align 4
  %28 = load i64, ptr %7, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, ptr %12, align 4
  %30 = getelementptr inbounds [16 x i8], ptr %9, i32 0, i32 0
  %31 = load ptr, ptr %6, align 4
  %32 = load i32, ptr %12, align 4
  %33 = mul i32 %32, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %31, i32 %33, i1 false)
  %34 = load i32, ptr %11, align 4
  %35 = getelementptr inbounds [16 x i8], ptr %9, i32 0, i32 %34
  store i8 1, ptr %35, align 1
  %36 = getelementptr inbounds [16 x i8], ptr %9, i32 0, i32 0
  %37 = load ptr, ptr %6, align 4
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  call void @Hacl_Impl_Poly1305_64_poly1305_process_last_block_(ptr noundef %36, ptr %40, ptr %42, ptr noundef %37, i64 noundef %38)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Poly1305_64_poly1305_last_pass(ptr noundef %0) #0 {
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
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %25 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Fproduct_carry_limb_(ptr noundef %25)
  %26 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Modulo_carry_top(ptr noundef %26)
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds i64, ptr %27, i32 0
  %29 = load i64, ptr %28, align 4
  store i64 %29, ptr %3, align 8
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds i64, ptr %30, i32 1
  %32 = load i64, ptr %31, align 4
  store i64 %32, ptr %4, align 8
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds i64, ptr %33, i32 2
  %35 = load i64, ptr %34, align 4
  store i64 %35, ptr %5, align 8
  %36 = load i64, ptr %3, align 8
  %37 = and i64 %36, 17592186044415
  store i64 %37, ptr %6, align 8
  %38 = load i64, ptr %3, align 8
  %39 = lshr i64 %38, 44
  store i64 %39, ptr %7, align 8
  %40 = load i64, ptr %4, align 8
  %41 = load i64, ptr %7, align 8
  %42 = add i64 %40, %41
  %43 = and i64 %42, 17592186044415
  store i64 %43, ptr %8, align 8
  %44 = load i64, ptr %4, align 8
  %45 = load i64, ptr %7, align 8
  %46 = add i64 %44, %45
  %47 = lshr i64 %46, 44
  store i64 %47, ptr %9, align 8
  %48 = load i64, ptr %5, align 8
  %49 = load i64, ptr %9, align 8
  %50 = add i64 %48, %49
  store i64 %50, ptr %10, align 8
  %51 = load i64, ptr %6, align 8
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr inbounds i64, ptr %52, i32 0
  store i64 %51, ptr %53, align 4
  %54 = load i64, ptr %8, align 8
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr inbounds i64, ptr %55, i32 1
  store i64 %54, ptr %56, align 4
  %57 = load i64, ptr %10, align 8
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr inbounds i64, ptr %58, i32 2
  store i64 %57, ptr %59, align 4
  %60 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Modulo_carry_top(ptr noundef %60)
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr inbounds i64, ptr %61, i32 0
  %63 = load i64, ptr %62, align 4
  store i64 %63, ptr %11, align 8
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds i64, ptr %64, i32 1
  %66 = load i64, ptr %65, align 4
  store i64 %66, ptr %12, align 8
  %67 = load i64, ptr %11, align 8
  %68 = and i64 %67, 17592186044415
  store i64 %68, ptr %13, align 8
  %69 = load i64, ptr %12, align 8
  %70 = load i64, ptr %11, align 8
  %71 = lshr i64 %70, 44
  %72 = add i64 %69, %71
  store i64 %72, ptr %14, align 8
  %73 = load i64, ptr %13, align 8
  %74 = load ptr, ptr %2, align 4
  %75 = getelementptr inbounds i64, ptr %74, i32 0
  store i64 %73, ptr %75, align 4
  %76 = load i64, ptr %14, align 8
  %77 = load ptr, ptr %2, align 4
  %78 = getelementptr inbounds i64, ptr %77, i32 1
  store i64 %76, ptr %78, align 4
  %79 = load ptr, ptr %2, align 4
  %80 = getelementptr inbounds i64, ptr %79, i32 0
  %81 = load i64, ptr %80, align 4
  store i64 %81, ptr %15, align 8
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr inbounds i64, ptr %82, i32 1
  %84 = load i64, ptr %83, align 4
  store i64 %84, ptr %16, align 8
  %85 = load ptr, ptr %2, align 4
  %86 = getelementptr inbounds i64, ptr %85, i32 2
  %87 = load i64, ptr %86, align 4
  store i64 %87, ptr %17, align 8
  %88 = load i64, ptr %15, align 8
  %89 = call i64 @FStar_UInt64_gte_mask(i64 noundef %88, i64 noundef 17592186044411)
  store i64 %89, ptr %18, align 8
  %90 = load i64, ptr %16, align 8
  %91 = call i64 @FStar_UInt64_eq_mask(i64 noundef %90, i64 noundef 17592186044415)
  store i64 %91, ptr %19, align 8
  %92 = load i64, ptr %17, align 8
  %93 = call i64 @FStar_UInt64_eq_mask(i64 noundef %92, i64 noundef 4398046511103)
  store i64 %93, ptr %20, align 8
  %94 = load i64, ptr %18, align 8
  %95 = load i64, ptr %19, align 8
  %96 = and i64 %94, %95
  %97 = load i64, ptr %20, align 8
  %98 = and i64 %96, %97
  store i64 %98, ptr %21, align 8
  %99 = load i64, ptr %15, align 8
  %100 = load i64, ptr %21, align 8
  %101 = and i64 17592186044411, %100
  %102 = sub i64 %99, %101
  store i64 %102, ptr %22, align 8
  %103 = load i64, ptr %16, align 8
  %104 = load i64, ptr %21, align 8
  %105 = and i64 17592186044415, %104
  %106 = sub i64 %103, %105
  store i64 %106, ptr %23, align 8
  %107 = load i64, ptr %17, align 8
  %108 = load i64, ptr %21, align 8
  %109 = and i64 4398046511103, %108
  %110 = sub i64 %107, %109
  store i64 %110, ptr %24, align 8
  %111 = load i64, ptr %22, align 8
  %112 = load ptr, ptr %2, align 4
  %113 = getelementptr inbounds i64, ptr %112, i32 0
  store i64 %111, ptr %113, align 4
  %114 = load i64, ptr %23, align 8
  %115 = load ptr, ptr %2, align 4
  %116 = getelementptr inbounds i64, ptr %115, i32 1
  store i64 %114, ptr %116, align 4
  %117 = load i64, ptr %24, align 8
  %118 = load ptr, ptr %2, align 4
  %119 = getelementptr inbounds i64, ptr %118, i32 2
  store i64 %117, ptr %119, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_finish(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca %struct.FStar_UInt128_uint128, align 4
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 4
  %20 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  store ptr %2, ptr %6, align 4
  store ptr %3, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %5, i32 8, i1 false)
  %22 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %8, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %9, align 4
  %24 = load ptr, ptr %9, align 4
  store ptr %24, ptr %10, align 4
  %25 = load ptr, ptr %7, align 4
  call void @load128_le(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %11, ptr noundef %25)
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds i64, ptr %26, i32 0
  %28 = load i64, ptr %27, align 4
  store i64 %28, ptr %12, align 8
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr inbounds i64, ptr %29, i32 1
  %31 = load i64, ptr %30, align 4
  store i64 %31, ptr %13, align 8
  %32 = load ptr, ptr %10, align 4
  %33 = getelementptr inbounds i64, ptr %32, i32 2
  %34 = load i64, ptr %33, align 4
  store i64 %34, ptr %14, align 8
  %35 = load i64, ptr %14, align 8
  %36 = shl i64 %35, 24
  %37 = load i64, ptr %13, align 8
  %38 = lshr i64 %37, 20
  %39 = or i64 %36, %38
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %39)
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 0
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %41, i64 %43, i32 noundef 64)
  %44 = load i64, ptr %13, align 8
  %45 = shl i64 %44, 44
  %46 = load i64, ptr %12, align 8
  %47 = or i64 %45, %46
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %47)
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 0
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 1
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %53 = load i64, ptr %52, align 4
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %55 = load i64, ptr %54, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %49, i64 %51, i64 %53, i64 %55)
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 0
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 1
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %63 = load i64, ptr %62, align 4
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %57, i64 %59, i64 %61, i64 %63)
  %64 = load ptr, ptr %6, align 4
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 0
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 1
  %68 = load i64, ptr %67, align 4
  call void @store128_le(ptr noundef %64, i64 %66, i64 %68)
  ret void
}

declare void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal void @store128_le(ptr noundef %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 0
  store i64 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 1
  store i64 %2, ptr %7, align 4
  store ptr %0, ptr %5, align 4
  %8 = load ptr, ptr %5, align 4
  call void @store128_le_(ptr noundef %8, ptr noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
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
  call void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
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
  call void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth_(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @load128_le_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = call i64 @load64(ptr noundef %5)
  %7 = call i64 @__uint64_identity(i64 noundef %6)
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %7, ptr %9, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 8
  %12 = call i64 @load64(ptr noundef %11)
  %13 = call i64 @__uint64_identity(i64 noundef %12)
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  store i64 %13, ptr %15, align 4
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_AddAndMultiply_add_and_multiply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %10

10:                                               ; preds = %28, %3
  %11 = load i32, ptr %7, align 4
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 4
  %15 = load i32, ptr %7, align 4
  %16 = getelementptr inbounds i64, ptr %14, i32 %15
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %8, align 8
  %18 = load ptr, ptr %5, align 4
  %19 = load i32, ptr %7, align 4
  %20 = getelementptr inbounds i64, ptr %18, i32 %19
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %9, align 8
  %22 = load i64, ptr %8, align 8
  %23 = load i64, ptr %9, align 8
  %24 = add i64 %22, %23
  %25 = load ptr, ptr %4, align 4
  %26 = load i32, ptr %7, align 4
  %27 = getelementptr inbounds i64, ptr %25, i32 %26
  store i64 %24, ptr %27, align 4
  br label %28

28:                                               ; preds = %13
  %29 = load i32, ptr %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %7, align 4
  br label %10, !llvm.loop !9

31:                                               ; preds = %10
  %32 = load ptr, ptr %4, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fmul_fmul(ptr noundef %32, ptr noundef %33, ptr noundef %34)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fmul_fmul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [3 x i64], align 8
  %8 = alloca [3 x %struct.FStar_UInt128_uint128], align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %7, i8 0, i32 24, i1 false)
  %15 = getelementptr inbounds [3 x i64], ptr %7, i32 0, i32 0
  %16 = load ptr, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %15, ptr align 4 %16, i32 24, i1 false)
  store i32 0, ptr %9, align 4
  br label %17

17:                                               ; preds = %23, %3
  %18 = load i32, ptr %9, align 4
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, ptr %9, align 4
  %22 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 %21
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %22, ptr align 4 %10, i32 16, i1 false)
  br label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %9, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %9, align 4
  br label %17, !llvm.loop !10

26:                                               ; preds = %17
  %27 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  %28 = getelementptr inbounds [3 x i64], ptr %7, i32 0, i32 0
  %29 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fmul_mul_shift_reduce_(ptr noundef %27, ptr noundef %28, ptr noundef %29)
  %30 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  call void @Hacl_Bignum_Fproduct_carry_wide_(ptr noundef %30)
  %31 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  call void @Hacl_Bignum_Modulo_carry_top_wide(ptr noundef %31)
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], ptr %8, i32 0, i32 0
  call void @Hacl_Bignum_Fproduct_copy_from_wide_(ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds i64, ptr %34, i32 0
  %36 = load i64, ptr %35, align 4
  store i64 %36, ptr %11, align 8
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds i64, ptr %37, i32 1
  %39 = load i64, ptr %38, align 4
  store i64 %39, ptr %12, align 8
  %40 = load i64, ptr %11, align 8
  %41 = and i64 %40, 17592186044415
  store i64 %41, ptr %13, align 8
  %42 = load i64, ptr %12, align 8
  %43 = load i64, ptr %11, align 8
  %44 = lshr i64 %43, 44
  %45 = add i64 %42, %44
  store i64 %45, ptr %14, align 8
  %46 = load i64, ptr %13, align 8
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds i64, ptr %47, i32 0
  store i64 %46, ptr %48, align 4
  %49 = load i64, ptr %14, align 8
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds i64, ptr %50, i32 1
  store i64 %49, ptr %51, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fmul_mul_shift_reduce_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %23, %3
  %12 = load i32, ptr %7, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 4
  %16 = load i32, ptr %7, align 4
  %17 = getelementptr inbounds i64, ptr %15, i32 %16
  %18 = load i64, ptr %17, align 4
  store i64 %18, ptr %8, align 8
  %19 = load ptr, ptr %4, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = load i64, ptr %8, align 8
  call void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %19, ptr noundef %20, i64 noundef %21)
  %22 = load ptr, ptr %5, align 4
  call void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %22)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, ptr %7, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %7, align 4
  br label %11, !llvm.loop !11

26:                                               ; preds = %11
  store i32 2, ptr %9, align 4
  %27 = load ptr, ptr %6, align 4
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr inbounds i64, ptr %27, i32 %28
  %30 = load i64, ptr %29, align 4
  store i64 %30, ptr %10, align 8
  %31 = load ptr, ptr %4, align 4
  %32 = load ptr, ptr %5, align 4
  %33 = load i64, ptr %10, align 8
  call void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %31, ptr noundef %32, i64 noundef %33)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_carry_wide_(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %11

11:                                               ; preds = %49, %1
  %12 = load i32, ptr %3, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %52

14:                                               ; preds = %11
  %15 = load i32, ptr %3, align 4
  store i32 %15, ptr %4, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = load i32, ptr %4, align 4
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 %17
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 4 %18, i32 16, i1 false)
  %19 = load ptr, ptr %2, align 4
  %20 = load i32, ptr %4, align 4
  %21 = add i32 %20, 1
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 %21
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %22, i32 16, i1 false)
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 0
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %24, i64 %26)
  %28 = and i64 %27, 17592186044415
  store i64 %28, ptr %7, align 8
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 0
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %30, i64 %32, i32 noundef 44)
  %33 = load ptr, ptr %2, align 4
  %34 = load i32, ptr %4, align 4
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 %34
  %36 = load i64, ptr %7, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %36)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %35, ptr align 4 %9, i32 16, i1 false)
  %37 = load ptr, ptr %2, align 4
  %38 = load i32, ptr %4, align 4
  %39 = add i32 %38, 1
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %37, i32 %39
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %42, i64 %44, i64 %46, i64 %48)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %40, ptr align 4 %10, i32 16, i1 false)
  br label %49

49:                                               ; preds = %14
  %50 = load i32, ptr %3, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %3, align 4
  br label %11, !llvm.loop !12

52:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Modulo_carry_top_wide(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %2, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %3, ptr align 4 %12, i32 16, i1 false)
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %4, ptr align 4 %14, i32 16, i1 false)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 4398046511103)
  %15 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %3, i32 0, i32 0
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %3, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  call void @FStar_UInt128_logand(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %16, i64 %18, i64 %20, i64 %22)
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %3, i32 0, i32 0
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %3, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %24, i64 %26, i32 noundef 42)
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %28, i64 %30)
  store i64 %31, ptr %7, align 8
  %32 = load i64, ptr %7, align 8
  %33 = shl i64 %32, 2
  %34 = load i64, ptr %7, align 8
  %35 = add i64 %33, %34
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %35)
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 0
  %37 = load i64, ptr %36, align 4
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %4, i32 0, i32 1
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  call void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %37, i64 %39, i64 %41, i64 %43)
  %44 = load ptr, ptr %2, align 4
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %44, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %45, ptr align 4 %5, i32 16, i1 false)
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %46, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %47, ptr align 4 %9, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_copy_from_wide_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 4
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 %12
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %13, i32 16, i1 false)
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %15, i64 %17)
  %19 = load ptr, ptr %3, align 4
  %20 = load i32, ptr %5, align 4
  %21 = getelementptr inbounds i64, ptr %19, i32 %20
  store i64 %18, ptr %21, align 4
  br label %22

22:                                               ; preds = %10
  %23 = load i32, ptr %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %5, align 4
  br label %7, !llvm.loop !13

25:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %12

12:                                               ; preds = %36, %3
  %13 = load i32, ptr %7, align 4
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 4
  %17 = load i32, ptr %7, align 4
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 %17
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %18, i32 16, i1 false)
  %19 = load ptr, ptr %5, align 4
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr inbounds i64, ptr %19, i32 %20
  %22 = load i64, ptr %21, align 4
  store i64 %22, ptr %9, align 8
  %23 = load ptr, ptr %4, align 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 %24
  %26 = load i64, ptr %9, align 8
  %27 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %26, i64 noundef %27)
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %29, i64 %31, i64 %33, i64 %35)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %25, ptr align 4 %10, i32 16, i1 false)
  br label %36

36:                                               ; preds = %15
  %37 = load i32, ptr %7, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %7, align 4
  br label %12, !llvm.loop !14

39:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds i64, ptr %7, i32 2
  %9 = load i64, ptr %8, align 4
  store i64 %9, ptr %3, align 8
  store i32 0, ptr %4, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, ptr %4, align 4
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 4
  %15 = sub i32 3, %14
  %16 = sub i32 %15, 1
  store i32 %16, ptr %5, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = load i32, ptr %5, align 4
  %19 = sub i32 %18, 1
  %20 = getelementptr inbounds i64, ptr %17, i32 %19
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %6, align 8
  %22 = load i64, ptr %6, align 8
  %23 = load ptr, ptr %2, align 4
  %24 = load i32, ptr %5, align 4
  %25 = getelementptr inbounds i64, ptr %23, i32 %24
  store i64 %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %13
  %27 = load i32, ptr %4, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %4, align 4
  br label %10, !llvm.loop !15

29:                                               ; preds = %10
  %30 = load i64, ptr %3, align 8
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds i64, ptr %31, i32 0
  store i64 %30, ptr %32, align 4
  %33 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Modulo_reduce(ptr noundef %33)
  ret void
}

declare void @FStar_UInt128_mul_wide(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Modulo_reduce(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds i64, ptr %4, i32 0
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %3, align 8
  %7 = load i64, ptr %3, align 8
  %8 = shl i64 %7, 4
  %9 = load i64, ptr %3, align 8
  %10 = shl i64 %9, 2
  %11 = add i64 %8, %10
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds i64, ptr %12, i32 0
  store i64 %11, ptr %13, align 4
  ret void
}

declare void @FStar_UInt128_add(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Poly1305_64_poly1305_process_last_block_(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca [3 x i64], align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 4
  %17 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %18 = alloca ptr, align 4
  %19 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %20 = alloca ptr, align 4
  %21 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 0
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 1
  store ptr %2, ptr %22, align 4
  store ptr %0, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  store i64 %4, ptr %9, align 8
  call void @llvm.memset.p0.i32(ptr align 8 %10, i8 0, i32 24, i1 false)
  %23 = load ptr, ptr %7, align 4
  call void @load128_le(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %11, ptr noundef %23)
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %25, i64 %27)
  %29 = and i64 %28, 17592186044415
  store i64 %29, ptr %12, align 8
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %31 = load i64, ptr %30, align 4
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %31, i64 %33, i32 noundef 44)
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %35, i64 %37)
  %39 = and i64 %38, 17592186044415
  store i64 %39, ptr %13, align 8
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %41, i64 %43, i32 noundef 88)
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 0
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  %48 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %45, i64 %47)
  store i64 %48, ptr %15, align 8
  %49 = load i64, ptr %12, align 8
  %50 = getelementptr inbounds [3 x i64], ptr %10, i32 0, i32 0
  store i64 %49, ptr %50, align 8
  %51 = load i64, ptr %13, align 8
  %52 = getelementptr inbounds [3 x i64], ptr %10, i32 0, i32 1
  store i64 %51, ptr %52, align 8
  %53 = load i64, ptr %15, align 8
  %54 = getelementptr inbounds [3 x i64], ptr %10, i32 0, i32 2
  store i64 %53, ptr %54, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %17, ptr align 4 %6, i32 8, i1 false)
  %55 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %17, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %6, i32 8, i1 false)
  %57 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %19, i32 0, i32 0
  %58 = load ptr, ptr %57, align 4
  store ptr %58, ptr %20, align 4
  %59 = load ptr, ptr %18, align 4
  %60 = getelementptr inbounds [3 x i64], ptr %10, i32 0, i32 0
  %61 = load ptr, ptr %20, align 4
  call void @Hacl_Bignum_AddAndMultiply_add_and_multiply(ptr noundef %59, ptr noundef %60, ptr noundef %61)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_carry_limb_(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, ptr %3, align 4
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = load i32, ptr %3, align 4
  store i32 %13, ptr %4, align 4
  %14 = load ptr, ptr %2, align 4
  %15 = load i32, ptr %4, align 4
  %16 = getelementptr inbounds i64, ptr %14, i32 %15
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %5, align 8
  %18 = load ptr, ptr %2, align 4
  %19 = load i32, ptr %4, align 4
  %20 = add i32 %19, 1
  %21 = getelementptr inbounds i64, ptr %18, i32 %20
  %22 = load i64, ptr %21, align 4
  store i64 %22, ptr %6, align 8
  %23 = load i64, ptr %5, align 8
  %24 = and i64 %23, 17592186044415
  store i64 %24, ptr %7, align 8
  %25 = load i64, ptr %5, align 8
  %26 = lshr i64 %25, 44
  store i64 %26, ptr %8, align 8
  %27 = load i64, ptr %7, align 8
  %28 = load ptr, ptr %2, align 4
  %29 = load i32, ptr %4, align 4
  %30 = getelementptr inbounds i64, ptr %28, i32 %29
  store i64 %27, ptr %30, align 4
  %31 = load i64, ptr %6, align 8
  %32 = load i64, ptr %8, align 8
  %33 = add i64 %31, %32
  %34 = load ptr, ptr %2, align 4
  %35 = load i32, ptr %4, align 4
  %36 = add i32 %35, 1
  %37 = getelementptr inbounds i64, ptr %34, i32 %36
  store i64 %33, ptr %37, align 4
  br label %38

38:                                               ; preds = %12
  %39 = load i32, ptr %3, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %3, align 4
  br label %9, !llvm.loop !16

41:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Modulo_carry_top(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds i64, ptr %6, i32 2
  %8 = load i64, ptr %7, align 4
  store i64 %8, ptr %3, align 8
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds i64, ptr %9, i32 0
  %11 = load i64, ptr %10, align 4
  store i64 %11, ptr %4, align 8
  %12 = load i64, ptr %3, align 8
  %13 = lshr i64 %12, 42
  store i64 %13, ptr %5, align 8
  %14 = load i64, ptr %3, align 8
  %15 = and i64 %14, 4398046511103
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds i64, ptr %16, i32 2
  store i64 %15, ptr %17, align 4
  %18 = load i64, ptr %5, align 8
  %19 = shl i64 %18, 2
  %20 = load i64, ptr %5, align 8
  %21 = add i64 %19, %20
  %22 = load i64, ptr %4, align 8
  %23 = add i64 %21, %22
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds i64, ptr %24, i32 0
  store i64 %23, ptr %25, align 4
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
define internal void @store128_le_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  %9 = call i64 @__uint64_identity(i64 noundef %8)
  call void @store64(ptr noundef %5, i64 noundef %9)
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 8
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = call i64 @__uint64_identity(i64 noundef %14)
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
define internal void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  %9 = alloca [6 x i64], align 8
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca %struct.FStar_UInt128_uint128, align 4
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.FStar_UInt128_uint128, align 4
  %25 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %9, i8 0, i32 48, i1 false)
  %26 = getelementptr inbounds [6 x i64], ptr %9, i32 0, i32 0
  store ptr %26, ptr %10, align 4
  %27 = getelementptr inbounds [6 x i64], ptr %9, i32 0, i32 0
  %28 = getelementptr inbounds i64, ptr %27, i32 3
  store ptr %28, ptr %11, align 4
  %29 = load ptr, ptr %10, align 4
  %30 = load ptr, ptr %11, align 4
  call void @Hacl_Impl_Poly1305_64_mk_state(ptr dead_on_unwind writable sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %12, ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr inbounds i8, ptr %31, i32 16
  store ptr %32, ptr %13, align 4
  %33 = load ptr, ptr %6, align 4
  %34 = load i64, ptr %7, align 8
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %12, i32 0, i32 0
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %12, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  call void @Hacl_Standalone_Poly1305_64_poly1305_complete(ptr %37, ptr %39, ptr noundef %33, i64 noundef %34, ptr noundef %35)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %14, ptr align 4 %12, i32 8, i1 false)
  %40 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %14, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  store ptr %41, ptr %15, align 4
  %42 = load ptr, ptr %15, align 4
  store ptr %42, ptr %16, align 4
  %43 = load ptr, ptr %13, align 4
  call void @load128_le(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, ptr noundef %43)
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr inbounds i64, ptr %44, i32 0
  %46 = load i64, ptr %45, align 4
  store i64 %46, ptr %18, align 8
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr inbounds i64, ptr %47, i32 1
  %49 = load i64, ptr %48, align 4
  store i64 %49, ptr %19, align 8
  %50 = load ptr, ptr %16, align 4
  %51 = getelementptr inbounds i64, ptr %50, i32 2
  %52 = load i64, ptr %51, align 4
  store i64 %52, ptr %20, align 8
  %53 = load i64, ptr %20, align 8
  %54 = shl i64 %53, 24
  %55 = load i64, ptr %19, align 8
  %56 = lshr i64 %55, 20
  %57 = or i64 %54, %56
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 noundef %57)
  %58 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %59 = load i64, ptr %58, align 4
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %61 = load i64, ptr %60, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 %59, i64 %61, i32 noundef 64)
  %62 = load i64, ptr %19, align 8
  %63 = shl i64 %62, 44
  %64 = load i64, ptr %18, align 8
  %65 = or i64 %63, %64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 noundef %65)
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 0
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 1
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 0
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 1
  %73 = load i64, ptr %72, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %67, i64 %69, i64 %71, i64 %73)
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %75 = load i64, ptr %74, align 4
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %77 = load i64, ptr %76, align 4
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 0
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 1
  %81 = load i64, ptr %80, align 4
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 %75, i64 %77, i64 %79, i64 %81)
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 0
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 1
  %86 = load i64, ptr %85, align 4
  call void @store128_le(ptr noundef %82, i64 %84, i64 %86)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Standalone_Poly1305_64_poly1305_complete(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 0
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  store ptr %2, ptr %7, align 4
  store i64 %3, ptr %8, align 8
  store ptr %4, ptr %9, align 4
  %20 = load ptr, ptr %9, align 4
  store ptr %20, ptr %10, align 4
  %21 = load i64, ptr %8, align 8
  %22 = lshr i64 %21, 4
  store i64 %22, ptr %11, align 8
  %23 = load i64, ptr %8, align 8
  %24 = and i64 %23, 15
  store i64 %24, ptr %12, align 8
  %25 = load ptr, ptr %7, align 4
  store ptr %25, ptr %13, align 4
  %26 = load ptr, ptr %7, align 4
  %27 = load i64, ptr %11, align 8
  %28 = mul i64 16, %27
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds i8, ptr %26, i32 %29
  store ptr %30, ptr %14, align 4
  %31 = load ptr, ptr %13, align 4
  %32 = load i64, ptr %11, align 8
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 0
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  call void @Hacl_Standalone_Poly1305_64_poly1305_partial(ptr %35, ptr %37, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  %38 = load i64, ptr %12, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %5
  %41 = load ptr, ptr %14, align 4
  %42 = load i64, ptr %12, align 8
  %43 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 0
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  call void @Hacl_Impl_Poly1305_64_poly1305_process_last_block(ptr %44, ptr %46, ptr noundef %41, i64 noundef %42)
  br label %47

47:                                               ; preds = %40, %5
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %6, i32 8, i1 false)
  %48 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %15, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %49, ptr %16, align 4
  %50 = load ptr, ptr %16, align 4
  store ptr %50, ptr %17, align 4
  %51 = load ptr, ptr %17, align 4
  call void @Hacl_Impl_Poly1305_64_poly1305_last_pass(ptr noundef %51)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Standalone_Poly1305_64_poly1305_partial(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca %struct.FStar_UInt128_uint128, align 4
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %25 = alloca ptr, align 4
  %26 = alloca ptr, align 4
  %27 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 0
  store ptr %0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 1
  store ptr %1, ptr %28, align 4
  store ptr %2, ptr %7, align 4
  store i64 %3, ptr %8, align 8
  store ptr %4, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %10, ptr align 4 %6, i32 8, i1 false)
  %29 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %10, i32 0, i32 0
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %11, align 4
  %31 = load ptr, ptr %11, align 4
  store ptr %31, ptr %12, align 4
  %32 = load ptr, ptr %9, align 4
  call void @load128_le(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %13, ptr noundef %32)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef 1152921487695413244)
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 0
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %34, i64 %36, i32 noundef 64)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef 1152921487695413247)
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 0
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 1
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %38, i64 %40, i64 %42, i64 %44)
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 0
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 0
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  call void @FStar_UInt128_logand(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %46, i64 %48, i64 %50, i64 %52)
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %54, i64 %56)
  %58 = and i64 %57, 17592186044415
  store i64 %58, ptr %19, align 8
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %62 = load i64, ptr %61, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %60, i64 %62, i32 noundef 44)
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %66 = load i64, ptr %65, align 4
  %67 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %64, i64 %66)
  %68 = and i64 %67, 17592186044415
  store i64 %68, ptr %20, align 8
  %69 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %72 = load i64, ptr %71, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %70, i64 %72, i32 noundef 88)
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %76 = load i64, ptr %75, align 4
  %77 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %74, i64 %76)
  store i64 %77, ptr %22, align 8
  %78 = load i64, ptr %19, align 8
  %79 = load ptr, ptr %12, align 4
  %80 = getelementptr inbounds i64, ptr %79, i32 0
  store i64 %78, ptr %80, align 4
  %81 = load i64, ptr %20, align 8
  %82 = load ptr, ptr %12, align 4
  %83 = getelementptr inbounds i64, ptr %82, i32 1
  store i64 %81, ptr %83, align 4
  %84 = load i64, ptr %22, align 8
  %85 = load ptr, ptr %12, align 4
  %86 = getelementptr inbounds i64, ptr %85, i32 2
  store i64 %84, ptr %86, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 4 %6, i32 8, i1 false)
  %87 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %24, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  store ptr %88, ptr %25, align 4
  %89 = load ptr, ptr %25, align 4
  store ptr %89, ptr %26, align 4
  %90 = load ptr, ptr %26, align 4
  %91 = getelementptr inbounds i64, ptr %90, i32 0
  store i64 0, ptr %91, align 4
  %92 = load ptr, ptr %26, align 4
  %93 = getelementptr inbounds i64, ptr %92, i32 1
  store i64 0, ptr %93, align 4
  %94 = load ptr, ptr %26, align 4
  %95 = getelementptr inbounds i64, ptr %94, i32 2
  store i64 0, ptr %95, align 4
  %96 = load ptr, ptr %7, align 4
  %97 = load i64, ptr %8, align 8
  %98 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 0
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %6, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  call void @Hacl_Standalone_Poly1305_64_poly1305_blocks(ptr %99, ptr %101, ptr noundef %96, i64 noundef %97)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Standalone_Poly1305_64_poly1305_blocks(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  store ptr %2, ptr %6, align 4
  store i64 %3, ptr %7, align 8
  %13 = load i64, ptr %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 4
  store ptr %16, ptr %8, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds i8, ptr %17, i32 16
  store ptr %18, ptr %9, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void @Hacl_Impl_Poly1305_64_poly1305_update(ptr %21, ptr %23, ptr noundef %19)
  %24 = load i64, ptr %7, align 8
  %25 = sub i64 %24, 1
  store i64 %25, ptr %10, align 8
  %26 = load ptr, ptr %9, align 4
  %27 = load i64, ptr %10, align 8
  %28 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 0
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, ptr %5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  call void @Hacl_Standalone_Poly1305_64_poly1305_blocks(ptr %29, ptr %31, ptr noundef %26, i64 noundef %27)
  br label %32

32:                                               ; preds = %15, %4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
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
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
