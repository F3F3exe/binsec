; ModuleID = 'hacl-c/hacl-c/FStar.c'
source_filename = "hacl-c/hacl-c/FStar.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }
%struct.K___uint64_t_uint64_t_uint64_t_uint64_t = type { i64, i64, i64, i64 }

@FStar_UInt128_u32_64 = internal global i32 64, align 4
@FStar_UInt128_u32_32 = internal global i32 32, align 4
@FStar_UInt128_u64_l32_mask = internal global i64 4294967295, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_add(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  store i64 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  store i64 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  store i64 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = add i64 %15, %17
  store i64 %18, ptr %13, align 4
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = add i64 %21, %23
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %28 = load i64, ptr %27, align 4
  %29 = add i64 %26, %28
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %31 = load i64, ptr %30, align 4
  %32 = call i64 @FStar_UInt128_carry(i64 noundef %29, i64 noundef %31)
  %33 = add i64 %24, %32
  store i64 %33, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt128_carry(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @FStar_UInt128_constant_time_carry(i64 noundef %5, i64 noundef %6)
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_add_mod(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  store i64 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  store i64 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  store i64 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = add i64 %15, %17
  store i64 %18, ptr %13, align 4
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = add i64 %21, %23
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %28 = load i64, ptr %27, align 4
  %29 = add i64 %26, %28
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %31 = load i64, ptr %30, align 4
  %32 = call i64 @FStar_UInt128_carry(i64 noundef %29, i64 noundef %31)
  %33 = add i64 %24, %32
  store i64 %33, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_sub(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  store i64 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  store i64 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  store i64 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = sub i64 %15, %17
  store i64 %18, ptr %13, align 4
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = sub i64 %21, %23
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %30 = load i64, ptr %29, align 4
  %31 = sub i64 %28, %30
  %32 = call i64 @FStar_UInt128_carry(i64 noundef %26, i64 noundef %31)
  %33 = sub i64 %24, %32
  store i64 %33, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_sub_mod(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  store i64 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  store i64 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  store i64 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  call void @FStar_UInt128_sub_mod_impl(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %14, i64 %16, i64 %18, i64 %20)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FStar_UInt128_sub_mod_impl(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  store i64 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  store i64 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  store i64 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = sub i64 %15, %17
  store i64 %18, ptr %13, align 4
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = sub i64 %21, %23
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %30 = load i64, ptr %29, align 4
  %31 = sub i64 %28, %30
  %32 = call i64 @FStar_UInt128_carry(i64 noundef %26, i64 noundef %31)
  %33 = sub i64 %24, %32
  store i64 %33, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_logand(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  store i64 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  store i64 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  store i64 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = and i64 %15, %17
  store i64 %18, ptr %13, align 4
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = and i64 %21, %23
  store i64 %24, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_logxor(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  store i64 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  store i64 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  store i64 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = xor i64 %15, %17
  store i64 %18, ptr %13, align 4
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = xor i64 %21, %23
  store i64 %24, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_logor(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  store i64 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  store i64 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  store i64 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = or i64 %15, %17
  store i64 %18, ptr %13, align 4
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = or i64 %21, %23
  store i64 %24, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_lognot(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 0
  store i64 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 1
  store i64 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 0
  %10 = load i64, ptr %9, align 4
  %11 = xor i64 %10, -1
  store i64 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %5, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = xor i64 %14, -1
  store i64 %15, ptr %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_shift_left(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  store i64 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  store i64 %2, ptr %9, align 4
  store i32 %3, ptr %7, align 4
  %10 = load i32, ptr %7, align 4
  %11 = load i32, ptr @FStar_UInt128_u32_64, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32, ptr %7, align 4
  %15 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  call void @FStar_UInt128_shift_left_small(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %16, i64 %18, i32 noundef %14)
  br label %25

19:                                               ; preds = %4
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  call void @FStar_UInt128_shift_left_large(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %22, i64 %24, i32 noundef %20)
  br label %25

25:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FStar_UInt128_shift_left_small(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  store i64 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  store i64 %2, ptr %9, align 4
  store i32 %3, ptr %7, align 4
  %10 = load i32, ptr %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %0, ptr align 4 %6, i32 16, i1 false)
  br label %27

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %15 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %16 = load i64, ptr %15, align 4
  %17 = load i32, ptr %7, align 4
  %18 = zext i32 %17 to i64
  %19 = shl i64 %16, %18
  store i64 %19, ptr %14, align 4
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %24 = load i64, ptr %23, align 4
  %25 = load i32, ptr %7, align 4
  %26 = call i64 @FStar_UInt128_add_u64_shift_left_respec(i64 noundef %22, i64 noundef %24, i32 noundef %25)
  store i64 %26, ptr %20, align 4
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FStar_UInt128_shift_left_large(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  store i64 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  store i64 %2, ptr %9, align 4
  store i32 %3, ptr %7, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %13 = load i64, ptr %12, align 4
  %14 = load i32, ptr %7, align 4
  %15 = load i32, ptr @FStar_UInt128_u32_64, align 4
  %16 = sub i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = shl i64 %13, %17
  store i64 %18, ptr %11, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_shift_right(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  store i64 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  store i64 %2, ptr %9, align 4
  store i32 %3, ptr %7, align 4
  %10 = load i32, ptr %7, align 4
  %11 = load i32, ptr @FStar_UInt128_u32_64, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32, ptr %7, align 4
  %15 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  call void @FStar_UInt128_shift_right_small(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %16, i64 %18, i32 noundef %14)
  br label %25

19:                                               ; preds = %4
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  call void @FStar_UInt128_shift_right_large(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %22, i64 %24, i32 noundef %20)
  br label %25

25:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FStar_UInt128_shift_right_small(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  store i64 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  store i64 %2, ptr %9, align 4
  store i32 %3, ptr %7, align 4
  %10 = load i32, ptr %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %0, ptr align 4 %6, i32 16, i1 false)
  br label %27

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %15 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  %18 = load i64, ptr %17, align 4
  %19 = load i32, ptr %7, align 4
  %20 = call i64 @FStar_UInt128_add_u64_shift_right_respec(i64 noundef %16, i64 noundef %18, i32 noundef %19)
  store i64 %20, ptr %14, align 4
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = load i32, ptr %7, align 4
  %25 = zext i32 %24 to i64
  %26 = lshr i64 %23, %25
  store i64 %26, ptr %21, align 4
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FStar_UInt128_shift_right_large(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 0
  store i64 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  store i64 %2, ptr %9, align 4
  store i32 %3, ptr %7, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %6, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = load i32, ptr %7, align 4
  %14 = load i32, ptr @FStar_UInt128_u32_64, align 4
  %15 = sub i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = lshr i64 %12, %16
  store i64 %17, ptr %10, align 4
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  store i64 0, ptr %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_eq_mask(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  store i64 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  store i64 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  store i64 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = call i64 @FStar_UInt64_eq_mask(i64 noundef %15, i64 noundef %17)
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = call i64 @FStar_UInt64_eq_mask(i64 noundef %20, i64 noundef %22)
  %24 = and i64 %18, %23
  store i64 %24, ptr %13, align 4
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %29 = load i64, ptr %28, align 4
  %30 = call i64 @FStar_UInt64_eq_mask(i64 noundef %27, i64 noundef %29)
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %34 = load i64, ptr %33, align 4
  %35 = call i64 @FStar_UInt64_eq_mask(i64 noundef %32, i64 noundef %34)
  %36 = and i64 %30, %35
  store i64 %36, ptr %25, align 4
  ret void
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
define dso_local void @FStar_UInt128_gte_mask(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  store i64 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  store i64 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  store i64 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  store i64 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = call i64 @FStar_UInt64_gte_mask(i64 noundef %15, i64 noundef %17)
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = call i64 @FStar_UInt64_eq_mask(i64 noundef %20, i64 noundef %22)
  %24 = xor i64 %23, -1
  %25 = and i64 %18, %24
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  %30 = call i64 @FStar_UInt64_eq_mask(i64 noundef %27, i64 noundef %29)
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %34 = load i64, ptr %33, align 4
  %35 = call i64 @FStar_UInt64_gte_mask(i64 noundef %32, i64 noundef %34)
  %36 = and i64 %30, %35
  %37 = or i64 %25, %36
  store i64 %37, ptr %13, align 4
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %40 = load i64, ptr %39, align 4
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = call i64 @FStar_UInt64_gte_mask(i64 noundef %40, i64 noundef %42)
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %47 = load i64, ptr %46, align 4
  %48 = call i64 @FStar_UInt64_eq_mask(i64 noundef %45, i64 noundef %47)
  %49 = xor i64 %48, -1
  %50 = and i64 %43, %49
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 1
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 1
  %54 = load i64, ptr %53, align 4
  %55 = call i64 @FStar_UInt64_eq_mask(i64 noundef %52, i64 noundef %54)
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %7, i32 0, i32 0
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %8, i32 0, i32 0
  %59 = load i64, ptr %58, align 4
  %60 = call i64 @FStar_UInt64_gte_mask(i64 noundef %57, i64 noundef %59)
  %61 = and i64 %55, %60
  %62 = or i64 %50, %61
  store i64 %62, ptr %38, align 4
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
define dso_local void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 4
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %6 = load i64, ptr %4, align 8
  store i64 %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  store i64 0, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @FStar_UInt128_uint128_to_uint64(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %3, i32 0, i32 0
  store i64 %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %3, i32 0, i32 1
  store i64 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %3, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  ret i64 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_mul_wide(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load i64, ptr %5, align 8
  %8 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide_impl(ptr dead_on_unwind writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %7, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FStar_UInt128_mul_wide_impl(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %12 = load i64, ptr %5, align 8
  %13 = load i64, ptr %6, align 8
  call void @FStar_UInt128_mul_wide_impl_t_(ptr dead_on_unwind writable sret(%struct.K___uint64_t_uint64_t_uint64_t_uint64_t) align 4 %7, i64 noundef %12, i64 noundef %13)
  %14 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, ptr %7, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  store i64 %15, ptr %8, align 8
  %16 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, ptr %7, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %9, align 8
  %18 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, ptr %7, i32 0, i32 2
  %19 = load i64, ptr %18, align 4
  store i64 %19, ptr %10, align 8
  %20 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, ptr %7, i32 0, i32 3
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %11, align 8
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 0
  %23 = load i64, ptr %8, align 8
  %24 = load i64, ptr %6, align 8
  %25 = load i32, ptr @FStar_UInt128_u32_32, align 4
  %26 = zext i32 %25 to i64
  %27 = lshr i64 %24, %26
  %28 = mul i64 %23, %27
  %29 = load i64, ptr %11, align 8
  %30 = call i64 @FStar_UInt128_u64_mod_32(i64 noundef %29)
  %31 = add i64 %28, %30
  %32 = load i64, ptr %9, align 8
  %33 = call i64 @FStar_UInt128_u32_combine_(i64 noundef %31, i64 noundef %32)
  store i64 %33, ptr %22, align 4
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, ptr %0, i32 0, i32 1
  %35 = load i64, ptr %10, align 8
  %36 = load i64, ptr %6, align 8
  %37 = load i32, ptr @FStar_UInt128_u32_32, align 4
  %38 = zext i32 %37 to i64
  %39 = lshr i64 %36, %38
  %40 = mul i64 %35, %39
  %41 = load i64, ptr %11, align 8
  %42 = load i32, ptr @FStar_UInt128_u32_32, align 4
  %43 = zext i32 %42 to i64
  %44 = lshr i64 %41, %43
  %45 = add i64 %40, %44
  %46 = load i64, ptr %8, align 8
  %47 = load i64, ptr %6, align 8
  %48 = load i32, ptr @FStar_UInt128_u32_32, align 4
  %49 = zext i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = mul i64 %46, %50
  %52 = load i64, ptr %11, align 8
  %53 = call i64 @FStar_UInt128_u64_mod_32(i64 noundef %52)
  %54 = add i64 %51, %53
  %55 = load i32, ptr @FStar_UInt128_u32_32, align 4
  %56 = zext i32 %55 to i64
  %57 = lshr i64 %54, %56
  %58 = add i64 %45, %57
  store i64 %58, ptr %34, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt128_constant_time_carry(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %3, align 8
  %7 = load i64, ptr %4, align 8
  %8 = xor i64 %6, %7
  %9 = load i64, ptr %3, align 8
  %10 = load i64, ptr %4, align 8
  %11 = sub i64 %9, %10
  %12 = load i64, ptr %4, align 8
  %13 = xor i64 %11, %12
  %14 = or i64 %8, %13
  %15 = xor i64 %5, %14
  %16 = lshr i64 %15, 63
  ret i64 %16
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt128_add_u64_shift_left_respec(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load i64, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = load i32, ptr %6, align 4
  %10 = call i64 @FStar_UInt128_add_u64_shift_left(i64 noundef %7, i64 noundef %8, i32 noundef %9)
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt128_add_u64_shift_left(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load i64, ptr %4, align 8
  %8 = load i32, ptr %6, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 %7, %9
  %11 = load i64, ptr %5, align 8
  %12 = load i32, ptr @FStar_UInt128_u32_64, align 4
  %13 = load i32, ptr %6, align 4
  %14 = sub i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = lshr i64 %11, %15
  %17 = add i64 %10, %16
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt128_add_u64_shift_right_respec(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load i64, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = load i32, ptr %6, align 4
  %10 = call i64 @FStar_UInt128_add_u64_shift_right(i64 noundef %7, i64 noundef %8, i32 noundef %9)
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt128_add_u64_shift_right(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load i64, ptr %5, align 8
  %8 = load i32, ptr %6, align 4
  %9 = zext i32 %8 to i64
  %10 = lshr i64 %7, %9
  %11 = load i64, ptr %4, align 8
  %12 = load i32, ptr @FStar_UInt128_u32_64, align 4
  %13 = load i32, ptr %6, align 4
  %14 = sub i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = shl i64 %11, %15
  %17 = add i64 %10, %16
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
define internal void @FStar_UInt128_mul_wide_impl_t_(ptr dead_on_unwind noalias writable sret(%struct.K___uint64_t_uint64_t_uint64_t_uint64_t) align 4 %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, ptr %0, i32 0, i32 0
  %8 = load i64, ptr %5, align 8
  %9 = call i64 @FStar_UInt128_u64_mod_32(i64 noundef %8)
  store i64 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, ptr %0, i32 0, i32 1
  %11 = load i64, ptr %5, align 8
  %12 = call i64 @FStar_UInt128_u64_mod_32(i64 noundef %11)
  %13 = load i64, ptr %6, align 8
  %14 = call i64 @FStar_UInt128_u64_mod_32(i64 noundef %13)
  %15 = mul i64 %12, %14
  %16 = call i64 @FStar_UInt128_u64_mod_32(i64 noundef %15)
  store i64 %16, ptr %10, align 4
  %17 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, ptr %0, i32 0, i32 2
  %18 = load i64, ptr %5, align 8
  %19 = load i32, ptr @FStar_UInt128_u32_32, align 4
  %20 = zext i32 %19 to i64
  %21 = lshr i64 %18, %20
  store i64 %21, ptr %17, align 4
  %22 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, ptr %0, i32 0, i32 3
  %23 = load i64, ptr %5, align 8
  %24 = load i32, ptr @FStar_UInt128_u32_32, align 4
  %25 = zext i32 %24 to i64
  %26 = lshr i64 %23, %25
  %27 = load i64, ptr %6, align 8
  %28 = call i64 @FStar_UInt128_u64_mod_32(i64 noundef %27)
  %29 = mul i64 %26, %28
  %30 = load i64, ptr %5, align 8
  %31 = call i64 @FStar_UInt128_u64_mod_32(i64 noundef %30)
  %32 = load i64, ptr %6, align 8
  %33 = call i64 @FStar_UInt128_u64_mod_32(i64 noundef %32)
  %34 = mul i64 %31, %33
  %35 = load i32, ptr @FStar_UInt128_u32_32, align 4
  %36 = zext i32 %35 to i64
  %37 = lshr i64 %34, %36
  %38 = add i64 %29, %37
  store i64 %38, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt128_u32_combine_(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = load i32, ptr @FStar_UInt128_u32_32, align 4
  %8 = zext i32 %7 to i64
  %9 = shl i64 %6, %8
  %10 = add i64 %5, %9
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt128_u64_mod_32(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = load i64, ptr @FStar_UInt128_u64_l32_mask, align 8
  %5 = and i64 %3, %4
  ret i64 %5
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
