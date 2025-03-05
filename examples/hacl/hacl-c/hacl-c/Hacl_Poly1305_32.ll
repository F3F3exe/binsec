; ModuleID = 'hacl-c/hacl-c/Hacl_Poly1305_32.c'
source_filename = "hacl-c/hacl-c/Hacl_Poly1305_32.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_32_State_poly1305_state = type { ptr, ptr }
%struct.FStar_UInt128_uint128 = type { i64, i64 }

@Hacl_Poly1305_32_empty_log = dso_local global ptr null, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @Hacl_Poly1305_32_op_String_Access(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  ret ptr null
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_mk_state(ptr dead_on_unwind noalias writable sret(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state) align 4 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %5, align 4
  %8 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_Poly1305_32_mk_state(ptr dead_on_unwind writable sret(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state) align 4 %0, ptr noundef %7, ptr noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Poly1305_32_mk_state(ptr dead_on_unwind noalias writable sret(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state) align 4 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %0, i32 0, i32 0
  %8 = load ptr, ptr %5, align 4
  store ptr %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %6, align 4
  store ptr %10, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_init(ptr %0, ptr %1, ptr noundef %2) #0 {
  %4 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %25 = alloca ptr, align 4
  %26 = alloca ptr, align 4
  %27 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %4, i32 0, i32 0
  store ptr %0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %4, i32 0, i32 1
  store ptr %1, ptr %28, align 4
  store ptr %2, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %4, i32 8, i1 false)
  %29 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 0
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %7, align 4
  %31 = load ptr, ptr %7, align 4
  store ptr %31, ptr %8, align 4
  %32 = load ptr, ptr %5, align 4
  call void @load128_le(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %9, ptr noundef %32)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef 1152921487695413244)
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 0
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %34, i64 %36, i32 noundef 64)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef 1152921487695413247)
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 0
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %12, i32 0, i32 1
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %38, i64 %40, i64 %42, i64 %44)
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %9, i32 0, i32 0
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %9, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  call void @FStar_UInt128_logand(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %46, i64 %48, i64 %50, i64 %52)
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  %57 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %54, i64 %56)
  %58 = trunc i64 %57 to i32
  %59 = and i32 %58, 67108863
  store i32 %59, ptr %15, align 4
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %63 = load i64, ptr %62, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %61, i64 %63, i32 noundef 26)
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 0
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 1
  %67 = load i64, ptr %66, align 4
  %68 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %65, i64 %67)
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 67108863
  store i32 %70, ptr %16, align 4
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %74 = load i64, ptr %73, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %72, i64 %74, i32 noundef 52)
  %75 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 0
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 1
  %78 = load i64, ptr %77, align 4
  %79 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %76, i64 %78)
  %80 = trunc i64 %79 to i32
  %81 = and i32 %80, 67108863
  store i32 %81, ptr %18, align 4
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %85 = load i64, ptr %84, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %83, i64 %85, i32 noundef 78)
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %89 = load i64, ptr %88, align 4
  %90 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %87, i64 %89)
  %91 = trunc i64 %90 to i32
  %92 = and i32 %91, 67108863
  store i32 %92, ptr %20, align 4
  %93 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 0
  %94 = load i64, ptr %93, align 4
  %95 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %10, i32 0, i32 1
  %96 = load i64, ptr %95, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %94, i64 %96, i32 noundef 104)
  %97 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %100 = load i64, ptr %99, align 4
  %101 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %98, i64 %100)
  %102 = trunc i64 %101 to i32
  %103 = and i32 %102, 67108863
  store i32 %103, ptr %22, align 4
  %104 = load i32, ptr %15, align 4
  %105 = load ptr, ptr %8, align 4
  %106 = getelementptr inbounds i32, ptr %105, i32 0
  store i32 %104, ptr %106, align 4
  %107 = load i32, ptr %16, align 4
  %108 = load ptr, ptr %8, align 4
  %109 = getelementptr inbounds i32, ptr %108, i32 1
  store i32 %107, ptr %109, align 4
  %110 = load i32, ptr %18, align 4
  %111 = load ptr, ptr %8, align 4
  %112 = getelementptr inbounds i32, ptr %111, i32 2
  store i32 %110, ptr %112, align 4
  %113 = load i32, ptr %20, align 4
  %114 = load ptr, ptr %8, align 4
  %115 = getelementptr inbounds i32, ptr %114, i32 3
  store i32 %113, ptr %115, align 4
  %116 = load i32, ptr %22, align 4
  %117 = load ptr, ptr %8, align 4
  %118 = getelementptr inbounds i32, ptr %117, i32 4
  store i32 %116, ptr %118, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 4 %4, i32 8, i1 false)
  %119 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %24, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  store ptr %120, ptr %25, align 4
  %121 = load ptr, ptr %25, align 4
  store ptr %121, ptr %26, align 4
  %122 = load ptr, ptr %26, align 4
  %123 = getelementptr inbounds i32, ptr %122, i32 0
  store i32 0, ptr %123, align 4
  %124 = load ptr, ptr %26, align 4
  %125 = getelementptr inbounds i32, ptr %124, i32 1
  store i32 0, ptr %125, align 4
  %126 = load ptr, ptr %26, align 4
  %127 = getelementptr inbounds i32, ptr %126, i32 2
  store i32 0, ptr %127, align 4
  %128 = load ptr, ptr %26, align 4
  %129 = getelementptr inbounds i32, ptr %128, i32 3
  store i32 0, ptr %129, align 4
  %130 = load ptr, ptr %26, align 4
  %131 = getelementptr inbounds i32, ptr %130, i32 4
  store i32 0, ptr %131, align 4
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
define dso_local void @Hacl_Poly1305_32_update_block(ptr %0, ptr %1, ptr noundef %2) #0 {
  %4 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %4, i32 0, i32 0
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  store ptr %2, ptr %5, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %4, i32 0, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @Hacl_Impl_Poly1305_32_poly1305_update(ptr %10, ptr %12, ptr noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Poly1305_32_poly1305_update(ptr %0, ptr %1, ptr noundef %2) #0 {
  %4 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca [5 x i32], align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
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
  %30 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %4, i32 0, i32 0
  store ptr %0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %4, i32 0, i32 1
  store ptr %1, ptr %31, align 4
  store ptr %2, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %4, i32 8, i1 false)
  %32 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %33, ptr %7, align 4
  %34 = load ptr, ptr %7, align 4
  store ptr %34, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %9, ptr align 4 %4, i32 8, i1 false)
  %35 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %9, i32 0, i32 0
  %36 = load ptr, ptr %35, align 4
  store ptr %36, ptr %10, align 4
  %37 = load ptr, ptr %10, align 4
  store ptr %37, ptr %11, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 20, i1 false)
  %38 = load ptr, ptr %5, align 4
  store ptr %38, ptr %13, align 4
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds i8, ptr %39, i32 3
  store ptr %40, ptr %14, align 4
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr inbounds i8, ptr %41, i32 6
  store ptr %42, ptr %15, align 4
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr inbounds i8, ptr %43, i32 9
  store ptr %44, ptr %16, align 4
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr inbounds i8, ptr %45, i32 12
  store ptr %46, ptr %17, align 4
  %47 = load ptr, ptr %13, align 4
  %48 = call i32 @load32(ptr noundef %47)
  %49 = call i32 @__uint32_identity(i32 noundef %48)
  store i32 %49, ptr %18, align 4
  %50 = load ptr, ptr %14, align 4
  %51 = call i32 @load32(ptr noundef %50)
  %52 = call i32 @__uint32_identity(i32 noundef %51)
  store i32 %52, ptr %19, align 4
  %53 = load ptr, ptr %15, align 4
  %54 = call i32 @load32(ptr noundef %53)
  %55 = call i32 @__uint32_identity(i32 noundef %54)
  store i32 %55, ptr %20, align 4
  %56 = load ptr, ptr %16, align 4
  %57 = call i32 @load32(ptr noundef %56)
  %58 = call i32 @__uint32_identity(i32 noundef %57)
  store i32 %58, ptr %21, align 4
  %59 = load ptr, ptr %17, align 4
  %60 = call i32 @load32(ptr noundef %59)
  %61 = call i32 @__uint32_identity(i32 noundef %60)
  store i32 %61, ptr %22, align 4
  %62 = load i32, ptr %18, align 4
  %63 = and i32 %62, 67108863
  store i32 %63, ptr %23, align 4
  %64 = load i32, ptr %19, align 4
  %65 = lshr i32 %64, 2
  %66 = and i32 %65, 67108863
  store i32 %66, ptr %24, align 4
  %67 = load i32, ptr %20, align 4
  %68 = lshr i32 %67, 4
  %69 = and i32 %68, 67108863
  store i32 %69, ptr %25, align 4
  %70 = load i32, ptr %21, align 4
  %71 = lshr i32 %70, 6
  %72 = and i32 %71, 67108863
  store i32 %72, ptr %26, align 4
  %73 = load i32, ptr %22, align 4
  %74 = lshr i32 %73, 8
  store i32 %74, ptr %27, align 4
  %75 = load i32, ptr %23, align 4
  %76 = getelementptr inbounds [5 x i32], ptr %12, i32 0, i32 0
  store i32 %75, ptr %76, align 4
  %77 = load i32, ptr %24, align 4
  %78 = getelementptr inbounds [5 x i32], ptr %12, i32 0, i32 1
  store i32 %77, ptr %78, align 4
  %79 = load i32, ptr %25, align 4
  %80 = getelementptr inbounds [5 x i32], ptr %12, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  %81 = load i32, ptr %26, align 4
  %82 = getelementptr inbounds [5 x i32], ptr %12, i32 0, i32 3
  store i32 %81, ptr %82, align 4
  %83 = load i32, ptr %27, align 4
  %84 = getelementptr inbounds [5 x i32], ptr %12, i32 0, i32 4
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds [5 x i32], ptr %12, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %28, align 4
  %87 = load i32, ptr %28, align 4
  %88 = or i32 16777216, %87
  store i32 %88, ptr %29, align 4
  %89 = load i32, ptr %29, align 4
  %90 = getelementptr inbounds [5 x i32], ptr %12, i32 0, i32 4
  store i32 %89, ptr %90, align 4
  %91 = load ptr, ptr %8, align 4
  %92 = getelementptr inbounds [5 x i32], ptr %12, i32 0, i32 0
  %93 = load ptr, ptr %11, align 4
  call void @Hacl_Bignum_AddAndMultiply_add_and_multiply(ptr noundef %91, ptr noundef %92, ptr noundef %93)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
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
  %22 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  call void @Hacl_Poly1305_32_update_block(ptr %23, ptr %25, ptr noundef %21)
  %26 = load ptr, ptr %9, align 4
  %27 = load i32, ptr %10, align 4
  %28 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  call void @Hacl_Poly1305_32_update(ptr %29, ptr %31, ptr noundef %26, i32 noundef %27)
  br label %32

32:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update_last(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
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
  %20 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(ptr %21, ptr %23, ptr noundef %17, i64 noundef %19)
  br label %24

24:                                               ; preds = %16, %4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %5, i32 8, i1 false)
  %25 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %9, align 4
  %27 = load ptr, ptr %9, align 4
  store ptr %27, ptr %10, align 4
  %28 = load ptr, ptr %10, align 4
  call void @Hacl_Impl_Poly1305_32_poly1305_last_pass(ptr noundef %28)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca [16 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
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
  %39 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  call void @Hacl_Impl_Poly1305_32_poly1305_process_last_block_(ptr noundef %36, ptr %40, ptr %42, ptr noundef %37, i64 noundef %38)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Poly1305_32_poly1305_last_pass(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  %50 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Fproduct_carry_limb_(ptr noundef %50)
  %51 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Modulo_carry_top(ptr noundef %51)
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr inbounds i32, ptr %52, i32 0
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %3, align 4
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr inbounds i32, ptr %55, i32 1
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %4, align 4
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr inbounds i32, ptr %58, i32 2
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %5, align 4
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr inbounds i32, ptr %61, i32 3
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %6, align 4
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds i32, ptr %64, i32 4
  %66 = load i32, ptr %65, align 4
  store i32 %66, ptr %7, align 4
  %67 = load i32, ptr %4, align 4
  %68 = load i32, ptr %3, align 4
  %69 = lshr i32 %68, 26
  %70 = add i32 %67, %69
  store i32 %70, ptr %8, align 4
  store i32 67108863, ptr %9, align 4
  %71 = load i32, ptr %3, align 4
  %72 = load i32, ptr %9, align 4
  %73 = and i32 %71, %72
  store i32 %73, ptr %10, align 4
  %74 = load i32, ptr %5, align 4
  %75 = load i32, ptr %8, align 4
  %76 = lshr i32 %75, 26
  %77 = add i32 %74, %76
  store i32 %77, ptr %11, align 4
  %78 = load i32, ptr %8, align 4
  %79 = load i32, ptr %9, align 4
  %80 = and i32 %78, %79
  store i32 %80, ptr %12, align 4
  %81 = load i32, ptr %6, align 4
  %82 = load i32, ptr %11, align 4
  %83 = lshr i32 %82, 26
  %84 = add i32 %81, %83
  store i32 %84, ptr %13, align 4
  %85 = load i32, ptr %11, align 4
  %86 = load i32, ptr %9, align 4
  %87 = and i32 %85, %86
  store i32 %87, ptr %14, align 4
  %88 = load i32, ptr %7, align 4
  %89 = load i32, ptr %13, align 4
  %90 = lshr i32 %89, 26
  %91 = add i32 %88, %90
  store i32 %91, ptr %15, align 4
  %92 = load i32, ptr %13, align 4
  %93 = load i32, ptr %9, align 4
  %94 = and i32 %92, %93
  store i32 %94, ptr %16, align 4
  %95 = load i32, ptr %10, align 4
  %96 = load ptr, ptr %2, align 4
  %97 = getelementptr inbounds i32, ptr %96, i32 0
  store i32 %95, ptr %97, align 4
  %98 = load i32, ptr %12, align 4
  %99 = load ptr, ptr %2, align 4
  %100 = getelementptr inbounds i32, ptr %99, i32 1
  store i32 %98, ptr %100, align 4
  %101 = load i32, ptr %14, align 4
  %102 = load ptr, ptr %2, align 4
  %103 = getelementptr inbounds i32, ptr %102, i32 2
  store i32 %101, ptr %103, align 4
  %104 = load i32, ptr %16, align 4
  %105 = load ptr, ptr %2, align 4
  %106 = getelementptr inbounds i32, ptr %105, i32 3
  store i32 %104, ptr %106, align 4
  %107 = load i32, ptr %15, align 4
  %108 = load ptr, ptr %2, align 4
  %109 = getelementptr inbounds i32, ptr %108, i32 4
  store i32 %107, ptr %109, align 4
  %110 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Modulo_carry_top(ptr noundef %110)
  %111 = load ptr, ptr %2, align 4
  %112 = getelementptr inbounds i32, ptr %111, i32 0
  %113 = load i32, ptr %112, align 4
  store i32 %113, ptr %17, align 4
  %114 = load ptr, ptr %2, align 4
  %115 = getelementptr inbounds i32, ptr %114, i32 1
  %116 = load i32, ptr %115, align 4
  store i32 %116, ptr %18, align 4
  %117 = load ptr, ptr %2, align 4
  %118 = getelementptr inbounds i32, ptr %117, i32 2
  %119 = load i32, ptr %118, align 4
  store i32 %119, ptr %19, align 4
  %120 = load ptr, ptr %2, align 4
  %121 = getelementptr inbounds i32, ptr %120, i32 3
  %122 = load i32, ptr %121, align 4
  store i32 %122, ptr %20, align 4
  %123 = load ptr, ptr %2, align 4
  %124 = getelementptr inbounds i32, ptr %123, i32 4
  %125 = load i32, ptr %124, align 4
  store i32 %125, ptr %21, align 4
  %126 = load i32, ptr %18, align 4
  %127 = load i32, ptr %17, align 4
  %128 = lshr i32 %127, 26
  %129 = add i32 %126, %128
  store i32 %129, ptr %22, align 4
  %130 = load i32, ptr %17, align 4
  %131 = and i32 %130, 67108863
  store i32 %131, ptr %23, align 4
  %132 = load i32, ptr %19, align 4
  %133 = load i32, ptr %22, align 4
  %134 = lshr i32 %133, 26
  %135 = add i32 %132, %134
  store i32 %135, ptr %24, align 4
  %136 = load i32, ptr %22, align 4
  %137 = and i32 %136, 67108863
  store i32 %137, ptr %25, align 4
  %138 = load i32, ptr %20, align 4
  %139 = load i32, ptr %24, align 4
  %140 = lshr i32 %139, 26
  %141 = add i32 %138, %140
  store i32 %141, ptr %26, align 4
  %142 = load i32, ptr %24, align 4
  %143 = and i32 %142, 67108863
  store i32 %143, ptr %27, align 4
  %144 = load i32, ptr %21, align 4
  %145 = load i32, ptr %26, align 4
  %146 = lshr i32 %145, 26
  %147 = add i32 %144, %146
  store i32 %147, ptr %28, align 4
  %148 = load i32, ptr %26, align 4
  %149 = and i32 %148, 67108863
  store i32 %149, ptr %29, align 4
  %150 = load i32, ptr %23, align 4
  %151 = load ptr, ptr %2, align 4
  %152 = getelementptr inbounds i32, ptr %151, i32 0
  store i32 %150, ptr %152, align 4
  %153 = load i32, ptr %25, align 4
  %154 = load ptr, ptr %2, align 4
  %155 = getelementptr inbounds i32, ptr %154, i32 1
  store i32 %153, ptr %155, align 4
  %156 = load i32, ptr %27, align 4
  %157 = load ptr, ptr %2, align 4
  %158 = getelementptr inbounds i32, ptr %157, i32 2
  store i32 %156, ptr %158, align 4
  %159 = load i32, ptr %29, align 4
  %160 = load ptr, ptr %2, align 4
  %161 = getelementptr inbounds i32, ptr %160, i32 3
  store i32 %159, ptr %161, align 4
  %162 = load i32, ptr %28, align 4
  %163 = load ptr, ptr %2, align 4
  %164 = getelementptr inbounds i32, ptr %163, i32 4
  store i32 %162, ptr %164, align 4
  %165 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Modulo_carry_top(ptr noundef %165)
  %166 = load ptr, ptr %2, align 4
  %167 = getelementptr inbounds i32, ptr %166, i32 0
  %168 = load i32, ptr %167, align 4
  store i32 %168, ptr %30, align 4
  %169 = load ptr, ptr %2, align 4
  %170 = getelementptr inbounds i32, ptr %169, i32 1
  %171 = load i32, ptr %170, align 4
  store i32 %171, ptr %31, align 4
  %172 = load i32, ptr %30, align 4
  %173 = and i32 %172, 67108863
  store i32 %173, ptr %32, align 4
  %174 = load i32, ptr %31, align 4
  %175 = load i32, ptr %30, align 4
  %176 = lshr i32 %175, 26
  %177 = add i32 %174, %176
  store i32 %177, ptr %33, align 4
  %178 = load i32, ptr %32, align 4
  %179 = load ptr, ptr %2, align 4
  %180 = getelementptr inbounds i32, ptr %179, i32 0
  store i32 %178, ptr %180, align 4
  %181 = load i32, ptr %33, align 4
  %182 = load ptr, ptr %2, align 4
  %183 = getelementptr inbounds i32, ptr %182, i32 1
  store i32 %181, ptr %183, align 4
  %184 = load ptr, ptr %2, align 4
  %185 = getelementptr inbounds i32, ptr %184, i32 0
  %186 = load i32, ptr %185, align 4
  store i32 %186, ptr %34, align 4
  %187 = load ptr, ptr %2, align 4
  %188 = getelementptr inbounds i32, ptr %187, i32 1
  %189 = load i32, ptr %188, align 4
  store i32 %189, ptr %35, align 4
  %190 = load ptr, ptr %2, align 4
  %191 = getelementptr inbounds i32, ptr %190, i32 2
  %192 = load i32, ptr %191, align 4
  store i32 %192, ptr %36, align 4
  %193 = load ptr, ptr %2, align 4
  %194 = getelementptr inbounds i32, ptr %193, i32 3
  %195 = load i32, ptr %194, align 4
  store i32 %195, ptr %37, align 4
  %196 = load ptr, ptr %2, align 4
  %197 = getelementptr inbounds i32, ptr %196, i32 4
  %198 = load i32, ptr %197, align 4
  store i32 %198, ptr %38, align 4
  %199 = load i32, ptr %34, align 4
  %200 = call i32 @FStar_UInt32_gte_mask(i32 noundef %199, i32 noundef 67108859)
  store i32 %200, ptr %39, align 4
  %201 = load i32, ptr %35, align 4
  %202 = call i32 @FStar_UInt32_eq_mask(i32 noundef %201, i32 noundef 67108863)
  store i32 %202, ptr %40, align 4
  %203 = load i32, ptr %36, align 4
  %204 = call i32 @FStar_UInt32_eq_mask(i32 noundef %203, i32 noundef 67108863)
  store i32 %204, ptr %41, align 4
  %205 = load i32, ptr %37, align 4
  %206 = call i32 @FStar_UInt32_eq_mask(i32 noundef %205, i32 noundef 67108863)
  store i32 %206, ptr %42, align 4
  %207 = load i32, ptr %38, align 4
  %208 = call i32 @FStar_UInt32_eq_mask(i32 noundef %207, i32 noundef 67108863)
  store i32 %208, ptr %43, align 4
  %209 = load i32, ptr %39, align 4
  %210 = load i32, ptr %40, align 4
  %211 = and i32 %209, %210
  %212 = load i32, ptr %41, align 4
  %213 = and i32 %211, %212
  %214 = load i32, ptr %42, align 4
  %215 = and i32 %213, %214
  %216 = load i32, ptr %43, align 4
  %217 = and i32 %215, %216
  store i32 %217, ptr %44, align 4
  %218 = load i32, ptr %34, align 4
  %219 = load i32, ptr %44, align 4
  %220 = and i32 67108859, %219
  %221 = sub i32 %218, %220
  store i32 %221, ptr %45, align 4
  %222 = load i32, ptr %35, align 4
  %223 = load i32, ptr %44, align 4
  %224 = and i32 67108863, %223
  %225 = sub i32 %222, %224
  store i32 %225, ptr %46, align 4
  %226 = load i32, ptr %36, align 4
  %227 = load i32, ptr %44, align 4
  %228 = and i32 67108863, %227
  %229 = sub i32 %226, %228
  store i32 %229, ptr %47, align 4
  %230 = load i32, ptr %37, align 4
  %231 = load i32, ptr %44, align 4
  %232 = and i32 67108863, %231
  %233 = sub i32 %230, %232
  store i32 %233, ptr %48, align 4
  %234 = load i32, ptr %38, align 4
  %235 = load i32, ptr %44, align 4
  %236 = and i32 67108863, %235
  %237 = sub i32 %234, %236
  store i32 %237, ptr %49, align 4
  %238 = load i32, ptr %45, align 4
  %239 = load ptr, ptr %2, align 4
  %240 = getelementptr inbounds i32, ptr %239, i32 0
  store i32 %238, ptr %240, align 4
  %241 = load i32, ptr %46, align 4
  %242 = load ptr, ptr %2, align 4
  %243 = getelementptr inbounds i32, ptr %242, i32 1
  store i32 %241, ptr %243, align 4
  %244 = load i32, ptr %47, align 4
  %245 = load ptr, ptr %2, align 4
  %246 = getelementptr inbounds i32, ptr %245, i32 2
  store i32 %244, ptr %246, align 4
  %247 = load i32, ptr %48, align 4
  %248 = load ptr, ptr %2, align 4
  %249 = getelementptr inbounds i32, ptr %248, i32 3
  store i32 %247, ptr %249, align 4
  %250 = load i32, ptr %49, align 4
  %251 = load ptr, ptr %2, align 4
  %252 = getelementptr inbounds i32, ptr %251, i32 4
  store i32 %250, ptr %252, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_finish(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  %31 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  store ptr %0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
  store ptr %1, ptr %32, align 4
  store ptr %2, ptr %6, align 4
  store ptr %3, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %5, i32 8, i1 false)
  %33 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %8, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %9, align 4
  %35 = load ptr, ptr %9, align 4
  store ptr %35, ptr %10, align 4
  %36 = load ptr, ptr %7, align 4
  call void @load128_le(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %11, ptr noundef %36)
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr inbounds i32, ptr %37, i32 0
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %12, align 4
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds i32, ptr %40, i32 1
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %13, align 4
  %43 = load ptr, ptr %10, align 4
  %44 = getelementptr inbounds i32, ptr %43, i32 2
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %14, align 4
  %46 = load ptr, ptr %10, align 4
  %47 = getelementptr inbounds i32, ptr %46, i32 3
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %15, align 4
  %49 = load ptr, ptr %10, align 4
  %50 = getelementptr inbounds i32, ptr %49, i32 4
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %16, align 4
  %52 = load i32, ptr %16, align 4
  %53 = zext i32 %52 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %53)
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 0
  %55 = load i64, ptr %54, align 4
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %19, i32 0, i32 1
  %57 = load i64, ptr %56, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %55, i64 %57, i32 noundef 104)
  %58 = load i32, ptr %15, align 4
  %59 = zext i32 %58 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %59)
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 0
  %61 = load i64, ptr %60, align 4
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %22, i32 0, i32 1
  %63 = load i64, ptr %62, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %61, i64 %63, i32 noundef 78)
  %64 = load i32, ptr %14, align 4
  %65 = zext i32 %64 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %65)
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 0
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 1
  %69 = load i64, ptr %68, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %67, i64 %69, i32 noundef 52)
  %70 = load i32, ptr %13, align 4
  %71 = zext i32 %70 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 noundef %71)
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 0
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 %73, i64 %75, i32 noundef 26)
  %76 = load i32, ptr %12, align 4
  %77 = zext i32 %76 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 noundef %77)
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 0
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 1
  %81 = load i64, ptr %80, align 4
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %29, i32 0, i32 0
  %83 = load i64, ptr %82, align 4
  %84 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %29, i32 0, i32 1
  %85 = load i64, ptr %84, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 %79, i64 %81, i64 %83, i64 %85)
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 0
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 1
  %89 = load i64, ptr %88, align 4
  %90 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  %93 = load i64, ptr %92, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %87, i64 %89, i64 %91, i64 %93)
  %94 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %95 = load i64, ptr %94, align 4
  %96 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %101 = load i64, ptr %100, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 %95, i64 %97, i64 %99, i64 %101)
  %102 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %103 = load i64, ptr %102, align 4
  %104 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 0
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %20, i32 0, i32 1
  %109 = load i64, ptr %108, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %103, i64 %105, i64 %107, i64 %109)
  %110 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 0
  %111 = load i64, ptr %110, align 4
  %112 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 1
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 0
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %11, i32 0, i32 1
  %117 = load i64, ptr %116, align 4
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 %111, i64 %113, i64 %115, i64 %117)
  %118 = load ptr, ptr %6, align 4
  %119 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %30, i32 0, i32 0
  %120 = load i64, ptr %119, align 4
  %121 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %30, i32 0, i32 1
  %122 = load i64, ptr %121, align 4
  call void @store128_le(ptr noundef %118, i64 %120, i64 %122)
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
define dso_local void @Hacl_Poly1305_32_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
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
  call void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
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
  call void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth_(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12)
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
define internal void @Hacl_Bignum_AddAndMultiply_add_and_multiply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %10

10:                                               ; preds = %28, %3
  %11 = load i32, ptr %7, align 4
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 4
  %15 = load i32, ptr %7, align 4
  %16 = getelementptr inbounds i32, ptr %14, i32 %15
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %8, align 4
  %18 = load ptr, ptr %5, align 4
  %19 = load i32, ptr %7, align 4
  %20 = getelementptr inbounds i32, ptr %18, i32 %19
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %8, align 4
  %23 = load i32, ptr %9, align 4
  %24 = add i32 %22, %23
  %25 = load ptr, ptr %4, align 4
  %26 = load i32, ptr %7, align 4
  %27 = getelementptr inbounds i32, ptr %25, i32 %26
  store i32 %24, ptr %27, align 4
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
  %7 = alloca [5 x i32], align 4
  %8 = alloca [5 x i64], align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %7, i8 0, i32 20, i1 false)
  %13 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 0
  %14 = load ptr, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %14, i32 20, i1 false)
  call void @llvm.memset.p0.i32(ptr align 8 %8, i8 0, i32 40, i1 false)
  %15 = getelementptr inbounds [5 x i64], ptr %8, i32 0, i32 0
  %16 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 0
  %17 = load ptr, ptr %6, align 4
  call void @Hacl_Bignum_Fmul_mul_shift_reduce_(ptr noundef %15, ptr noundef %16, ptr noundef %17)
  %18 = getelementptr inbounds [5 x i64], ptr %8, i32 0, i32 0
  call void @Hacl_Bignum_Fproduct_carry_wide_(ptr noundef %18)
  %19 = getelementptr inbounds [5 x i64], ptr %8, i32 0, i32 0
  call void @Hacl_Bignum_Modulo_carry_top_wide(ptr noundef %19)
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds [5 x i64], ptr %8, i32 0, i32 0
  call void @Hacl_Bignum_Fproduct_copy_from_wide_(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds i32, ptr %22, i32 0
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %9, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds i32, ptr %25, i32 1
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %10, align 4
  %28 = load i32, ptr %9, align 4
  %29 = and i32 %28, 67108863
  store i32 %29, ptr %11, align 4
  %30 = load i32, ptr %10, align 4
  %31 = load i32, ptr %9, align 4
  %32 = lshr i32 %31, 26
  %33 = add i32 %30, %32
  store i32 %33, ptr %12, align 4
  %34 = load i32, ptr %11, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds i32, ptr %35, i32 0
  store i32 %34, ptr %36, align 4
  %37 = load i32, ptr %12, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr inbounds i32, ptr %38, i32 1
  store i32 %37, ptr %39, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fmul_mul_shift_reduce_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store ptr %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %23, %3
  %12 = load i32, ptr %7, align 4
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 4
  %16 = load i32, ptr %7, align 4
  %17 = getelementptr inbounds i32, ptr %15, i32 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %8, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = load i32, ptr %8, align 4
  call void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %19, ptr noundef %20, i32 noundef %21)
  %22 = load ptr, ptr %5, align 4
  call void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %22)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, ptr %7, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %7, align 4
  br label %11, !llvm.loop !10

26:                                               ; preds = %11
  store i32 4, ptr %9, align 4
  %27 = load ptr, ptr %6, align 4
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr inbounds i32, ptr %27, i32 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %10, align 4
  %31 = load ptr, ptr %4, align 4
  %32 = load ptr, ptr %5, align 4
  %33 = load i32, ptr %10, align 4
  call void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %31, ptr noundef %32, i32 noundef %33)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_carry_wide_(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %40, %1
  %10 = load i32, ptr %3, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %43

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
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 67108863
  store i32 %25, ptr %7, align 4
  %26 = load i64, ptr %5, align 8
  %27 = lshr i64 %26, 26
  store i64 %27, ptr %8, align 8
  %28 = load i32, ptr %7, align 4
  %29 = zext i32 %28 to i64
  %30 = load ptr, ptr %2, align 4
  %31 = load i32, ptr %4, align 4
  %32 = getelementptr inbounds i64, ptr %30, i32 %31
  store i64 %29, ptr %32, align 4
  %33 = load i64, ptr %6, align 8
  %34 = load i64, ptr %8, align 8
  %35 = add i64 %33, %34
  %36 = load ptr, ptr %2, align 4
  %37 = load i32, ptr %4, align 4
  %38 = add i32 %37, 1
  %39 = getelementptr inbounds i64, ptr %36, i32 %38
  store i64 %35, ptr %39, align 4
  br label %40

40:                                               ; preds = %12
  %41 = load i32, ptr %3, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %3, align 4
  br label %9, !llvm.loop !11

43:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Modulo_carry_top_wide(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds i64, ptr %8, i32 4
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %3, align 8
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds i64, ptr %11, i32 0
  %13 = load i64, ptr %12, align 4
  store i64 %13, ptr %4, align 8
  %14 = load i64, ptr %3, align 8
  %15 = and i64 %14, 67108863
  store i64 %15, ptr %5, align 8
  %16 = load i64, ptr %3, align 8
  %17 = lshr i64 %16, 26
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %6, align 4
  %19 = load i64, ptr %4, align 8
  %20 = load i32, ptr %6, align 4
  %21 = shl i32 %20, 2
  %22 = load i32, ptr %6, align 4
  %23 = add i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = add i64 %19, %24
  store i64 %25, ptr %7, align 8
  %26 = load i64, ptr %5, align 8
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds i64, ptr %27, i32 4
  store i64 %26, ptr %28, align 4
  %29 = load i64, ptr %7, align 8
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds i64, ptr %30, i32 0
  store i64 %29, ptr %31, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_copy_from_wide_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp ult i32 %8, 5
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 4
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr inbounds i64, ptr %11, i32 %12
  %14 = load i64, ptr %13, align 4
  store i64 %14, ptr %6, align 8
  %15 = load i64, ptr %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = load ptr, ptr %3, align 4
  %18 = load i32, ptr %5, align 4
  %19 = getelementptr inbounds i32, ptr %17, i32 %18
  store i32 %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %10
  %21 = load i32, ptr %5, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %5, align 4
  br label %7, !llvm.loop !12

23:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %12

12:                                               ; preds = %36, %3
  %13 = load i32, ptr %7, align 4
  %14 = icmp ult i32 %13, 5
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 4
  %17 = load i32, ptr %7, align 4
  %18 = getelementptr inbounds i64, ptr %16, i32 %17
  %19 = load i64, ptr %18, align 4
  store i64 %19, ptr %8, align 8
  %20 = load ptr, ptr %5, align 4
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds i32, ptr %20, i32 %21
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %9, align 4
  %24 = load i32, ptr %9, align 4
  %25 = zext i32 %24 to i64
  store i64 %25, ptr %10, align 8
  %26 = load i32, ptr %6, align 4
  %27 = zext i32 %26 to i64
  store i64 %27, ptr %11, align 8
  %28 = load i64, ptr %8, align 8
  %29 = load i64, ptr %10, align 8
  %30 = load i64, ptr %11, align 8
  %31 = mul i64 %29, %30
  %32 = add i64 %28, %31
  %33 = load ptr, ptr %4, align 4
  %34 = load i32, ptr %7, align 4
  %35 = getelementptr inbounds i64, ptr %33, i32 %34
  store i64 %32, ptr %35, align 4
  br label %36

36:                                               ; preds = %15
  %37 = load i32, ptr %7, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %7, align 4
  br label %12, !llvm.loop !13

39:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds i32, ptr %7, i32 4
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, ptr %4, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 4
  %15 = sub i32 5, %14
  %16 = sub i32 %15, 1
  store i32 %16, ptr %5, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = load i32, ptr %5, align 4
  %19 = sub i32 %18, 1
  %20 = getelementptr inbounds i32, ptr %17, i32 %19
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %6, align 4
  %22 = load i32, ptr %6, align 4
  %23 = load ptr, ptr %2, align 4
  %24 = load i32, ptr %5, align 4
  %25 = getelementptr inbounds i32, ptr %23, i32 %24
  store i32 %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %13
  %27 = load i32, ptr %4, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %4, align 4
  br label %10, !llvm.loop !14

29:                                               ; preds = %10
  %30 = load i32, ptr %3, align 4
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds i32, ptr %31, i32 0
  store i32 %30, ptr %32, align 4
  %33 = load ptr, ptr %2, align 4
  call void @Hacl_Bignum_Modulo_reduce(ptr noundef %33)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Modulo_reduce(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds i32, ptr %4, i32 0
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %3, align 4
  %7 = load i32, ptr %3, align 4
  %8 = shl i32 %7, 2
  %9 = load i32, ptr %3, align 4
  %10 = add i32 %8, %9
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds i32, ptr %11, i32 0
  store i32 %10, ptr %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_Poly1305_32_poly1305_process_last_block_(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca [5 x i32], align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
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
  %26 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %27 = alloca ptr, align 4
  %28 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %29 = alloca ptr, align 4
  %30 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 0
  store ptr %1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 1
  store ptr %2, ptr %31, align 4
  store ptr %0, ptr %7, align 4
  store ptr %3, ptr %8, align 4
  store i64 %4, ptr %9, align 8
  call void @llvm.memset.p0.i32(ptr align 4 %10, i8 0, i32 20, i1 false)
  %32 = load ptr, ptr %7, align 4
  store ptr %32, ptr %11, align 4
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds i8, ptr %33, i32 3
  store ptr %34, ptr %12, align 4
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds i8, ptr %35, i32 6
  store ptr %36, ptr %13, align 4
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr inbounds i8, ptr %37, i32 9
  store ptr %38, ptr %14, align 4
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds i8, ptr %39, i32 12
  store ptr %40, ptr %15, align 4
  %41 = load ptr, ptr %11, align 4
  %42 = call i32 @load32(ptr noundef %41)
  %43 = call i32 @__uint32_identity(i32 noundef %42)
  store i32 %43, ptr %16, align 4
  %44 = load ptr, ptr %12, align 4
  %45 = call i32 @load32(ptr noundef %44)
  %46 = call i32 @__uint32_identity(i32 noundef %45)
  store i32 %46, ptr %17, align 4
  %47 = load ptr, ptr %13, align 4
  %48 = call i32 @load32(ptr noundef %47)
  %49 = call i32 @__uint32_identity(i32 noundef %48)
  store i32 %49, ptr %18, align 4
  %50 = load ptr, ptr %14, align 4
  %51 = call i32 @load32(ptr noundef %50)
  %52 = call i32 @__uint32_identity(i32 noundef %51)
  store i32 %52, ptr %19, align 4
  %53 = load ptr, ptr %15, align 4
  %54 = call i32 @load32(ptr noundef %53)
  %55 = call i32 @__uint32_identity(i32 noundef %54)
  store i32 %55, ptr %20, align 4
  %56 = load i32, ptr %16, align 4
  %57 = and i32 %56, 67108863
  store i32 %57, ptr %21, align 4
  %58 = load i32, ptr %17, align 4
  %59 = lshr i32 %58, 2
  %60 = and i32 %59, 67108863
  store i32 %60, ptr %22, align 4
  %61 = load i32, ptr %18, align 4
  %62 = lshr i32 %61, 4
  %63 = and i32 %62, 67108863
  store i32 %63, ptr %23, align 4
  %64 = load i32, ptr %19, align 4
  %65 = lshr i32 %64, 6
  %66 = and i32 %65, 67108863
  store i32 %66, ptr %24, align 4
  %67 = load i32, ptr %20, align 4
  %68 = lshr i32 %67, 8
  store i32 %68, ptr %25, align 4
  %69 = load i32, ptr %21, align 4
  %70 = getelementptr inbounds [5 x i32], ptr %10, i32 0, i32 0
  store i32 %69, ptr %70, align 4
  %71 = load i32, ptr %22, align 4
  %72 = getelementptr inbounds [5 x i32], ptr %10, i32 0, i32 1
  store i32 %71, ptr %72, align 4
  %73 = load i32, ptr %23, align 4
  %74 = getelementptr inbounds [5 x i32], ptr %10, i32 0, i32 2
  store i32 %73, ptr %74, align 4
  %75 = load i32, ptr %24, align 4
  %76 = getelementptr inbounds [5 x i32], ptr %10, i32 0, i32 3
  store i32 %75, ptr %76, align 4
  %77 = load i32, ptr %25, align 4
  %78 = getelementptr inbounds [5 x i32], ptr %10, i32 0, i32 4
  store i32 %77, ptr %78, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr align 4 %6, i32 8, i1 false)
  %79 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %26, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  store ptr %80, ptr %27, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %28, ptr align 4 %6, i32 8, i1 false)
  %81 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %28, i32 0, i32 0
  %82 = load ptr, ptr %81, align 4
  store ptr %82, ptr %29, align 4
  %83 = load ptr, ptr %27, align 4
  %84 = getelementptr inbounds [5 x i32], ptr %10, i32 0, i32 0
  %85 = load ptr, ptr %29, align 4
  call void @Hacl_Bignum_AddAndMultiply_add_and_multiply(ptr noundef %83, ptr noundef %84, ptr noundef %85)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Fproduct_carry_limb_(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, ptr %3, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = load i32, ptr %3, align 4
  store i32 %13, ptr %4, align 4
  %14 = load ptr, ptr %2, align 4
  %15 = load i32, ptr %4, align 4
  %16 = getelementptr inbounds i32, ptr %14, i32 %15
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %5, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = load i32, ptr %4, align 4
  %20 = add i32 %19, 1
  %21 = getelementptr inbounds i32, ptr %18, i32 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %6, align 4
  %23 = load i32, ptr %5, align 4
  %24 = and i32 %23, 67108863
  store i32 %24, ptr %7, align 4
  %25 = load i32, ptr %5, align 4
  %26 = lshr i32 %25, 26
  store i32 %26, ptr %8, align 4
  %27 = load i32, ptr %7, align 4
  %28 = load ptr, ptr %2, align 4
  %29 = load i32, ptr %4, align 4
  %30 = getelementptr inbounds i32, ptr %28, i32 %29
  store i32 %27, ptr %30, align 4
  %31 = load i32, ptr %6, align 4
  %32 = load i32, ptr %8, align 4
  %33 = add i32 %31, %32
  %34 = load ptr, ptr %2, align 4
  %35 = load i32, ptr %4, align 4
  %36 = add i32 %35, 1
  %37 = getelementptr inbounds i32, ptr %34, i32 %36
  store i32 %33, ptr %37, align 4
  br label %38

38:                                               ; preds = %12
  %39 = load i32, ptr %3, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %3, align 4
  br label %9, !llvm.loop !15

41:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Bignum_Modulo_carry_top(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds i32, ptr %6, i32 4
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %3, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds i32, ptr %9, i32 0
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %4, align 4
  %12 = load i32, ptr %3, align 4
  %13 = lshr i32 %12, 26
  store i32 %13, ptr %5, align 4
  %14 = load i32, ptr %3, align 4
  %15 = and i32 %14, 67108863
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds i32, ptr %16, i32 4
  store i32 %15, ptr %17, align 4
  %18 = load i32, ptr %5, align 4
  %19 = shl i32 %18, 2
  %20 = load i32, ptr %5, align 4
  %21 = add i32 %19, %20
  %22 = load i32, ptr %4, align 4
  %23 = add i32 %21, %22
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds i32, ptr %24, i32 0
  store i32 %23, ptr %25, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @FStar_UInt32_gte_mask(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, ptr %4, align 4
  %8 = zext i32 %7 to i64
  %9 = sub nsw i64 %6, %8
  %10 = ashr i64 %9, 63
  %11 = trunc i64 %10 to i32
  %12 = xor i32 %11, -1
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @FStar_UInt32_eq_mask(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = xor i32 %5, %6
  %8 = xor i32 %7, -1
  store i32 %8, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = shl i32 %9, 16
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, ptr %3, align 4
  %13 = load i32, ptr %3, align 4
  %14 = shl i32 %13, 8
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, ptr %3, align 4
  %17 = load i32, ptr %3, align 4
  %18 = shl i32 %17, 4
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, ptr %3, align 4
  %21 = load i32, ptr %3, align 4
  %22 = shl i32 %21, 2
  %23 = load i32, ptr %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, ptr %3, align 4
  %25 = load i32, ptr %3, align 4
  %26 = shl i32 %25, 1
  %27 = load i32, ptr %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, ptr %3, align 4
  %29 = load i32, ptr %3, align 4
  %30 = ashr i32 %29, 31
  ret i32 %30
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
define internal void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  %9 = alloca [10 x i32], align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
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
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %9, i8 0, i32 40, i1 false)
  %37 = getelementptr inbounds [10 x i32], ptr %9, i32 0, i32 0
  store ptr %37, ptr %10, align 4
  %38 = getelementptr inbounds [10 x i32], ptr %9, i32 0, i32 0
  %39 = getelementptr inbounds i32, ptr %38, i32 5
  store ptr %39, ptr %11, align 4
  %40 = load ptr, ptr %10, align 4
  %41 = load ptr, ptr %11, align 4
  call void @Hacl_Impl_Poly1305_32_mk_state(ptr dead_on_unwind writable sret(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state) align 4 %12, ptr noundef %40, ptr noundef %41)
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds i8, ptr %42, i32 16
  store ptr %43, ptr %13, align 4
  %44 = load ptr, ptr %6, align 4
  %45 = load i64, ptr %7, align 8
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %12, i32 0, i32 0
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %12, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  call void @Hacl_Standalone_Poly1305_32_poly1305_complete(ptr %48, ptr %50, ptr noundef %44, i64 noundef %45, ptr noundef %46)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %14, ptr align 4 %12, i32 8, i1 false)
  %51 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %14, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %52, ptr %15, align 4
  %53 = load ptr, ptr %15, align 4
  store ptr %53, ptr %16, align 4
  %54 = load ptr, ptr %13, align 4
  call void @load128_le(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, ptr noundef %54)
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr inbounds i32, ptr %55, i32 0
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %18, align 4
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr inbounds i32, ptr %58, i32 1
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %19, align 4
  %61 = load ptr, ptr %16, align 4
  %62 = getelementptr inbounds i32, ptr %61, i32 2
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %20, align 4
  %64 = load ptr, ptr %16, align 4
  %65 = getelementptr inbounds i32, ptr %64, i32 3
  %66 = load i32, ptr %65, align 4
  store i32 %66, ptr %21, align 4
  %67 = load ptr, ptr %16, align 4
  %68 = getelementptr inbounds i32, ptr %67, i32 4
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %22, align 4
  %70 = load i32, ptr %22, align 4
  %71 = zext i32 %70 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %71)
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 0
  %73 = load i64, ptr %72, align 4
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 1
  %75 = load i64, ptr %74, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %73, i64 %75, i32 noundef 104)
  %76 = load i32, ptr %21, align 4
  %77 = zext i32 %76 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 noundef %77)
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 0
  %79 = load i64, ptr %78, align 4
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %28, i32 0, i32 1
  %81 = load i64, ptr %80, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 %79, i64 %81, i32 noundef 78)
  %82 = load i32, ptr %20, align 4
  %83 = zext i32 %82 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %31, i64 noundef %83)
  %84 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %31, i32 0, i32 0
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %31, i32 0, i32 1
  %87 = load i64, ptr %86, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 %85, i64 %87, i32 noundef 52)
  %88 = load i32, ptr %19, align 4
  %89 = zext i32 %88 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %34, i64 noundef %89)
  %90 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %34, i32 0, i32 0
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %34, i32 0, i32 1
  %93 = load i64, ptr %92, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %33, i64 %91, i64 %93, i32 noundef 26)
  %94 = load i32, ptr %18, align 4
  %95 = zext i32 %94 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %35, i64 noundef %95)
  %96 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 0, i32 0
  %97 = load i64, ptr %96, align 4
  %98 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %33, i32 0, i32 1
  %99 = load i64, ptr %98, align 4
  %100 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %35, i32 0, i32 0
  %101 = load i64, ptr %100, align 4
  %102 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %35, i32 0, i32 1
  %103 = load i64, ptr %102, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %32, i64 %97, i64 %99, i64 %101, i64 %103)
  %104 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %30, i32 0, i32 0
  %105 = load i64, ptr %104, align 4
  %106 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %30, i32 0, i32 1
  %107 = load i64, ptr %106, align 4
  %108 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 0
  %109 = load i64, ptr %108, align 4
  %110 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %32, i32 0, i32 1
  %111 = load i64, ptr %110, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 %105, i64 %107, i64 %109, i64 %111)
  %112 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 0
  %113 = load i64, ptr %112, align 4
  %114 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 1
  %115 = load i64, ptr %114, align 4
  %116 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %29, i32 0, i32 0
  %117 = load i64, ptr %116, align 4
  %118 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %29, i32 0, i32 1
  %119 = load i64, ptr %118, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 %113, i64 %115, i64 %117, i64 %119)
  %120 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 0
  %121 = load i64, ptr %120, align 4
  %122 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %24, i32 0, i32 1
  %123 = load i64, ptr %122, align 4
  %124 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 0
  %125 = load i64, ptr %124, align 4
  %126 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %26, i32 0, i32 1
  %127 = load i64, ptr %126, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %121, i64 %123, i64 %125, i64 %127)
  %128 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %129 = load i64, ptr %128, align 4
  %130 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %131 = load i64, ptr %130, align 4
  %132 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 0
  %133 = load i64, ptr %132, align 4
  %134 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 1
  %135 = load i64, ptr %134, align 4
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %36, i64 %129, i64 %131, i64 %133, i64 %135)
  %136 = load ptr, ptr %5, align 4
  %137 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %36, i32 0, i32 0
  %138 = load i64, ptr %137, align 4
  %139 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %36, i32 0, i32 1
  %140 = load i64, ptr %139, align 4
  call void @store128_le(ptr noundef %136, i64 %138, i64 %140)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Standalone_Poly1305_32_poly1305_complete(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 0
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 1
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
  %34 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 0
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  call void @Hacl_Standalone_Poly1305_32_poly1305_partial(ptr %35, ptr %37, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  %38 = load i64, ptr %12, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %5
  %41 = load ptr, ptr %14, align 4
  %42 = load i64, ptr %12, align 8
  %43 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 0
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  call void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(ptr %44, ptr %46, ptr noundef %41, i64 noundef %42)
  br label %47

47:                                               ; preds = %40, %5
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %6, i32 8, i1 false)
  %48 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %15, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %49, ptr %16, align 4
  %50 = load ptr, ptr %16, align 4
  store ptr %50, ptr %17, align 4
  %51 = load ptr, ptr %17, align 4
  call void @Hacl_Impl_Poly1305_32_poly1305_last_pass(ptr noundef %51)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Standalone_Poly1305_32_poly1305_partial(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 4
  %10 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 4
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca %struct.FStar_UInt128_uint128, align 4
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.FStar_UInt128_uint128, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.FStar_UInt128_uint128, align 4
  %28 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %29 = alloca ptr, align 4
  %30 = alloca ptr, align 4
  %31 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 0
  store ptr %0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 1
  store ptr %1, ptr %32, align 4
  store ptr %2, ptr %7, align 4
  store i64 %3, ptr %8, align 8
  store ptr %4, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %10, ptr align 4 %6, i32 8, i1 false)
  %33 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %10, i32 0, i32 0
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %11, align 4
  %35 = load ptr, ptr %11, align 4
  store ptr %35, ptr %12, align 4
  %36 = load ptr, ptr %9, align 4
  call void @load128_le(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %13, ptr noundef %36)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef 1152921487695413244)
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 0
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %17, i32 0, i32 1
  %40 = load i64, ptr %39, align 4
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %38, i64 %40, i32 noundef 64)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef 1152921487695413247)
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 0
  %42 = load i64, ptr %41, align 4
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %16, i32 0, i32 1
  %44 = load i64, ptr %43, align 4
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 0
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %18, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  call void @FStar_UInt128_logor(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %42, i64 %44, i64 %46, i64 %48)
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 0
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %13, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 0
  %54 = load i64, ptr %53, align 4
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %15, i32 0, i32 1
  %56 = load i64, ptr %55, align 4
  call void @FStar_UInt128_logand(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %50, i64 %52, i64 %54, i64 %56)
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %60 = load i64, ptr %59, align 4
  %61 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %58, i64 %60)
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 67108863
  store i32 %63, ptr %19, align 4
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %65 = load i64, ptr %64, align 4
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %67 = load i64, ptr %66, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %65, i64 %67, i32 noundef 26)
  %68 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 0
  %69 = load i64, ptr %68, align 4
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %21, i32 0, i32 1
  %71 = load i64, ptr %70, align 4
  %72 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %69, i64 %71)
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 67108863
  store i32 %74, ptr %20, align 4
  %75 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %76 = load i64, ptr %75, align 4
  %77 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %78 = load i64, ptr %77, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %76, i64 %78, i32 noundef 52)
  %79 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 0
  %80 = load i64, ptr %79, align 4
  %81 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %23, i32 0, i32 1
  %82 = load i64, ptr %81, align 4
  %83 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %80, i64 %82)
  %84 = trunc i64 %83 to i32
  %85 = and i32 %84, 67108863
  store i32 %85, ptr %22, align 4
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %89 = load i64, ptr %88, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 %87, i64 %89, i32 noundef 78)
  %90 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 0
  %91 = load i64, ptr %90, align 4
  %92 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %25, i32 0, i32 1
  %93 = load i64, ptr %92, align 4
  %94 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %91, i64 %93)
  %95 = trunc i64 %94 to i32
  %96 = and i32 %95, 67108863
  store i32 %96, ptr %24, align 4
  %97 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 0
  %98 = load i64, ptr %97, align 4
  %99 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %14, i32 0, i32 1
  %100 = load i64, ptr %99, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 %98, i64 %100, i32 noundef 104)
  %101 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 0
  %102 = load i64, ptr %101, align 4
  %103 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %27, i32 0, i32 1
  %104 = load i64, ptr %103, align 4
  %105 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %102, i64 %104)
  %106 = trunc i64 %105 to i32
  %107 = and i32 %106, 67108863
  store i32 %107, ptr %26, align 4
  %108 = load i32, ptr %19, align 4
  %109 = load ptr, ptr %12, align 4
  %110 = getelementptr inbounds i32, ptr %109, i32 0
  store i32 %108, ptr %110, align 4
  %111 = load i32, ptr %20, align 4
  %112 = load ptr, ptr %12, align 4
  %113 = getelementptr inbounds i32, ptr %112, i32 1
  store i32 %111, ptr %113, align 4
  %114 = load i32, ptr %22, align 4
  %115 = load ptr, ptr %12, align 4
  %116 = getelementptr inbounds i32, ptr %115, i32 2
  store i32 %114, ptr %116, align 4
  %117 = load i32, ptr %24, align 4
  %118 = load ptr, ptr %12, align 4
  %119 = getelementptr inbounds i32, ptr %118, i32 3
  store i32 %117, ptr %119, align 4
  %120 = load i32, ptr %26, align 4
  %121 = load ptr, ptr %12, align 4
  %122 = getelementptr inbounds i32, ptr %121, i32 4
  store i32 %120, ptr %122, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %28, ptr align 4 %6, i32 8, i1 false)
  %123 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %28, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  store ptr %124, ptr %29, align 4
  %125 = load ptr, ptr %29, align 4
  store ptr %125, ptr %30, align 4
  %126 = load ptr, ptr %30, align 4
  %127 = getelementptr inbounds i32, ptr %126, i32 0
  store i32 0, ptr %127, align 4
  %128 = load ptr, ptr %30, align 4
  %129 = getelementptr inbounds i32, ptr %128, i32 1
  store i32 0, ptr %129, align 4
  %130 = load ptr, ptr %30, align 4
  %131 = getelementptr inbounds i32, ptr %130, i32 2
  store i32 0, ptr %131, align 4
  %132 = load ptr, ptr %30, align 4
  %133 = getelementptr inbounds i32, ptr %132, i32 3
  store i32 0, ptr %133, align 4
  %134 = load ptr, ptr %30, align 4
  %135 = getelementptr inbounds i32, ptr %134, i32 4
  store i32 0, ptr %135, align 4
  %136 = load ptr, ptr %7, align 4
  %137 = load i64, ptr %8, align 8
  %138 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 0
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %6, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  call void @Hacl_Standalone_Poly1305_32_poly1305_blocks(ptr %139, ptr %141, ptr noundef %136, i64 noundef %137)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Standalone_Poly1305_32_poly1305_blocks(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
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
  %20 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void @Hacl_Impl_Poly1305_32_poly1305_update(ptr %21, ptr %23, ptr noundef %19)
  %24 = load i64, ptr %7, align 8
  %25 = sub i64 %24, 1
  store i64 %25, ptr %10, align 8
  %26 = load ptr, ptr %9, align 4
  %27 = load i64, ptr %10, align 8
  %28 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 0
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, ptr %5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  call void @Hacl_Standalone_Poly1305_32_poly1305_blocks(ptr %29, ptr %31, ptr noundef %26, i64 noundef %27)
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
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
