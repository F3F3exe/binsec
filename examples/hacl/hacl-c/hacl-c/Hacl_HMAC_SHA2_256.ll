; ModuleID = 'hacl-c/hacl-c/Hacl_HMAC_SHA2_256.c'
source_filename = "hacl-c/hacl-c/Hacl_HMAC_SHA2_256.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_HMAC_SHA2_256_hmac_core(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
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
  call void @Hacl_Impl_HMAC_SHA2_256_hmac_core(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_HMAC_SHA2_256_hmac_core(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca [137 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca ptr, align 4
  %20 = alloca [137 x i32], align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store ptr %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  store i32 0, ptr %10, align 4
  br label %21

21:                                               ; preds = %27, %4
  %22 = load i32, ptr %10, align 4
  %23 = icmp ult i32 %22, 64
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, ptr %10, align 4
  %26 = getelementptr inbounds [64 x i8], ptr %9, i32 0, i32 %25
  store i8 54, ptr %26, align 1
  br label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %10, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %10, align 4
  br label %21, !llvm.loop !7

30:                                               ; preds = %21
  store i32 0, ptr %12, align 4
  br label %31

31:                                               ; preds = %37, %30
  %32 = load i32, ptr %12, align 4
  %33 = icmp ult i32 %32, 64
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, ptr %12, align 4
  %36 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 %35
  store i8 92, ptr %36, align 1
  br label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %12, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %12, align 4
  br label %31, !llvm.loop !9

40:                                               ; preds = %31
  %41 = getelementptr inbounds [64 x i8], ptr %9, i32 0, i32 0
  %42 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace(ptr noundef %41, ptr noundef %42, i32 noundef 64)
  call void @llvm.memset.p0.i32(ptr align 4 %13, i8 0, i32 548, i1 false)
  %43 = load i32, ptr %8, align 4
  %44 = udiv i32 %43, 64
  store i32 %44, ptr %14, align 4
  %45 = load i32, ptr %8, align 4
  %46 = urem i32 %45, 64
  store i32 %46, ptr %15, align 4
  %47 = load ptr, ptr %7, align 4
  store ptr %47, ptr %16, align 4
  %48 = load ptr, ptr %7, align 4
  %49 = load i32, ptr %14, align 4
  %50 = mul i32 %49, 64
  %51 = getelementptr inbounds i8, ptr %48, i32 %50
  store ptr %51, ptr %17, align 4
  %52 = getelementptr inbounds [137 x i32], ptr %13, i32 0, i32 0
  call void @Hacl_Impl_SHA2_256_init(ptr noundef %52)
  %53 = getelementptr inbounds [137 x i32], ptr %13, i32 0, i32 0
  %54 = getelementptr inbounds [64 x i8], ptr %9, i32 0, i32 0
  call void @Hacl_Impl_SHA2_256_update(ptr noundef %53, ptr noundef %54)
  %55 = getelementptr inbounds [137 x i32], ptr %13, i32 0, i32 0
  %56 = load ptr, ptr %16, align 4
  %57 = load i32, ptr %14, align 4
  call void @Hacl_Impl_SHA2_256_update_multi(ptr noundef %55, ptr noundef %56, i32 noundef %57)
  %58 = getelementptr inbounds [137 x i32], ptr %13, i32 0, i32 0
  %59 = load ptr, ptr %17, align 4
  %60 = load i32, ptr %15, align 4
  call void @Hacl_Impl_SHA2_256_update_last(ptr noundef %58, ptr noundef %59, i32 noundef %60)
  %61 = getelementptr inbounds [64 x i8], ptr %9, i32 0, i32 0
  store ptr %61, ptr %18, align 4
  %62 = getelementptr inbounds [137 x i32], ptr %13, i32 0, i32 0
  %63 = load ptr, ptr %18, align 4
  call void @Hacl_Impl_SHA2_256_finish(ptr noundef %62, ptr noundef %63)
  %64 = getelementptr inbounds [64 x i8], ptr %9, i32 0, i32 0
  store ptr %64, ptr %19, align 4
  %65 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 0
  %66 = load ptr, ptr %6, align 4
  call void @Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace(ptr noundef %65, ptr noundef %66, i32 noundef 64)
  call void @llvm.memset.p0.i32(ptr align 4 %20, i8 0, i32 548, i1 false)
  %67 = getelementptr inbounds [137 x i32], ptr %20, i32 0, i32 0
  call void @Hacl_Impl_SHA2_256_init(ptr noundef %67)
  %68 = getelementptr inbounds [137 x i32], ptr %20, i32 0, i32 0
  %69 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 0
  call void @Hacl_Impl_SHA2_256_update(ptr noundef %68, ptr noundef %69)
  %70 = getelementptr inbounds [137 x i32], ptr %20, i32 0, i32 0
  %71 = load ptr, ptr %19, align 4
  call void @Hacl_Impl_SHA2_256_update_last(ptr noundef %70, ptr noundef %71, i32 noundef 32)
  %72 = getelementptr inbounds [137 x i32], ptr %20, i32 0, i32 0
  %73 = load ptr, ptr %5, align 4
  call void @Hacl_Impl_SHA2_256_finish(ptr noundef %72, ptr noundef %73)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_HMAC_SHA2_256_hmac(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load i32, ptr %8, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = load i32, ptr %10, align 4
  call void @Hacl_Impl_HMAC_SHA2_256_hmac(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, i32 noundef %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_HMAC_SHA2_256_hmac(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  store ptr %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  store i32 0, ptr %12, align 4
  br label %14

14:                                               ; preds = %20, %5
  %15 = load i32, ptr %12, align 4
  %16 = icmp ult i32 %15, 64
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, ptr %12, align 4
  %19 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 %18
  store i8 0, ptr %19, align 1
  br label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %12, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %12, align 4
  br label %14, !llvm.loop !10

23:                                               ; preds = %14
  %24 = load i32, ptr %8, align 4
  %25 = icmp ule i32 %24, 64
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 0
  %28 = load ptr, ptr %7, align 4
  %29 = load i32, ptr %8, align 4
  %30 = mul i32 %29, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr align 1 %28, i32 %30, i1 false)
  br label %36

31:                                               ; preds = %23
  %32 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 0
  store ptr %32, ptr %13, align 4
  %33 = load ptr, ptr %13, align 4
  %34 = load ptr, ptr %7, align 4
  %35 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA2_256_hash(ptr noundef %33, ptr noundef %34, i32 noundef %35)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 0
  %39 = load ptr, ptr %9, align 4
  %40 = load i32, ptr %10, align 4
  call void @Hacl_Impl_HMAC_SHA2_256_hmac_core(ptr noundef %37, ptr noundef %38, ptr noundef %39, i32 noundef %40)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  %16 = load i32, ptr %7, align 4
  %17 = getelementptr inbounds i8, ptr %15, i32 %16
  %18 = load i8, ptr %17, align 1
  store i8 %18, ptr %8, align 1
  %19 = load ptr, ptr %5, align 4
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr inbounds i8, ptr %19, i32 %20
  %22 = load i8, ptr %21, align 1
  store i8 %22, ptr %9, align 1
  %23 = load i8, ptr %8, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, ptr %9, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = load ptr, ptr %4, align 4
  %30 = load i32, ptr %7, align 4
  %31 = getelementptr inbounds i8, ptr %29, i32 %30
  store i8 %28, ptr %31, align 1
  br label %32

32:                                               ; preds = %14
  %33 = load i32, ptr %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %7, align 4
  br label %10, !llvm.loop !11

35:                                               ; preds = %10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_256_init(ptr noundef %0) #0 {
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
  store ptr %0, ptr %2, align 4
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds i32, ptr %36, i32 136
  store ptr %37, ptr %3, align 4
  %38 = load ptr, ptr %2, align 4
  store ptr %38, ptr %4, align 4
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds i32, ptr %39, i32 128
  store ptr %40, ptr %5, align 4
  %41 = load ptr, ptr %4, align 4
  store ptr %41, ptr %6, align 4
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds i32, ptr %42, i32 16
  store ptr %43, ptr %7, align 4
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds i32, ptr %44, i32 32
  store ptr %45, ptr %8, align 4
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds i32, ptr %46, i32 48
  store ptr %47, ptr %9, align 4
  %48 = load ptr, ptr %6, align 4
  store ptr %48, ptr %10, align 4
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr inbounds i32, ptr %49, i32 8
  store ptr %50, ptr %11, align 4
  %51 = load ptr, ptr %10, align 4
  store ptr %51, ptr %12, align 4
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr inbounds i32, ptr %52, i32 4
  store ptr %53, ptr %13, align 4
  %54 = load ptr, ptr %12, align 4
  %55 = getelementptr inbounds i32, ptr %54, i32 0
  store i32 1116352408, ptr %55, align 4
  %56 = load ptr, ptr %12, align 4
  %57 = getelementptr inbounds i32, ptr %56, i32 1
  store i32 1899447441, ptr %57, align 4
  %58 = load ptr, ptr %12, align 4
  %59 = getelementptr inbounds i32, ptr %58, i32 2
  store i32 -1245643825, ptr %59, align 4
  %60 = load ptr, ptr %12, align 4
  %61 = getelementptr inbounds i32, ptr %60, i32 3
  store i32 -373957723, ptr %61, align 4
  %62 = load ptr, ptr %13, align 4
  %63 = getelementptr inbounds i32, ptr %62, i32 0
  store i32 961987163, ptr %63, align 4
  %64 = load ptr, ptr %13, align 4
  %65 = getelementptr inbounds i32, ptr %64, i32 1
  store i32 1508970993, ptr %65, align 4
  %66 = load ptr, ptr %13, align 4
  %67 = getelementptr inbounds i32, ptr %66, i32 2
  store i32 -1841331548, ptr %67, align 4
  %68 = load ptr, ptr %13, align 4
  %69 = getelementptr inbounds i32, ptr %68, i32 3
  store i32 -1424204075, ptr %69, align 4
  %70 = load ptr, ptr %11, align 4
  store ptr %70, ptr %14, align 4
  %71 = load ptr, ptr %11, align 4
  %72 = getelementptr inbounds i32, ptr %71, i32 4
  store ptr %72, ptr %15, align 4
  %73 = load ptr, ptr %14, align 4
  %74 = getelementptr inbounds i32, ptr %73, i32 0
  store i32 -670586216, ptr %74, align 4
  %75 = load ptr, ptr %14, align 4
  %76 = getelementptr inbounds i32, ptr %75, i32 1
  store i32 310598401, ptr %76, align 4
  %77 = load ptr, ptr %14, align 4
  %78 = getelementptr inbounds i32, ptr %77, i32 2
  store i32 607225278, ptr %78, align 4
  %79 = load ptr, ptr %14, align 4
  %80 = getelementptr inbounds i32, ptr %79, i32 3
  store i32 1426881987, ptr %80, align 4
  %81 = load ptr, ptr %15, align 4
  %82 = getelementptr inbounds i32, ptr %81, i32 0
  store i32 1925078388, ptr %82, align 4
  %83 = load ptr, ptr %15, align 4
  %84 = getelementptr inbounds i32, ptr %83, i32 1
  store i32 -2132889090, ptr %84, align 4
  %85 = load ptr, ptr %15, align 4
  %86 = getelementptr inbounds i32, ptr %85, i32 2
  store i32 -1680079193, ptr %86, align 4
  %87 = load ptr, ptr %15, align 4
  %88 = getelementptr inbounds i32, ptr %87, i32 3
  store i32 -1046744716, ptr %88, align 4
  %89 = load ptr, ptr %7, align 4
  store ptr %89, ptr %16, align 4
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr inbounds i32, ptr %90, i32 8
  store ptr %91, ptr %17, align 4
  %92 = load ptr, ptr %16, align 4
  store ptr %92, ptr %18, align 4
  %93 = load ptr, ptr %16, align 4
  %94 = getelementptr inbounds i32, ptr %93, i32 4
  store ptr %94, ptr %19, align 4
  %95 = load ptr, ptr %18, align 4
  %96 = getelementptr inbounds i32, ptr %95, i32 0
  store i32 -459576895, ptr %96, align 4
  %97 = load ptr, ptr %18, align 4
  %98 = getelementptr inbounds i32, ptr %97, i32 1
  store i32 -272742522, ptr %98, align 4
  %99 = load ptr, ptr %18, align 4
  %100 = getelementptr inbounds i32, ptr %99, i32 2
  store i32 264347078, ptr %100, align 4
  %101 = load ptr, ptr %18, align 4
  %102 = getelementptr inbounds i32, ptr %101, i32 3
  store i32 604807628, ptr %102, align 4
  %103 = load ptr, ptr %19, align 4
  %104 = getelementptr inbounds i32, ptr %103, i32 0
  store i32 770255983, ptr %104, align 4
  %105 = load ptr, ptr %19, align 4
  %106 = getelementptr inbounds i32, ptr %105, i32 1
  store i32 1249150122, ptr %106, align 4
  %107 = load ptr, ptr %19, align 4
  %108 = getelementptr inbounds i32, ptr %107, i32 2
  store i32 1555081692, ptr %108, align 4
  %109 = load ptr, ptr %19, align 4
  %110 = getelementptr inbounds i32, ptr %109, i32 3
  store i32 1996064986, ptr %110, align 4
  %111 = load ptr, ptr %17, align 4
  store ptr %111, ptr %20, align 4
  %112 = load ptr, ptr %17, align 4
  %113 = getelementptr inbounds i32, ptr %112, i32 4
  store ptr %113, ptr %21, align 4
  %114 = load ptr, ptr %20, align 4
  %115 = getelementptr inbounds i32, ptr %114, i32 0
  store i32 -1740746414, ptr %115, align 4
  %116 = load ptr, ptr %20, align 4
  %117 = getelementptr inbounds i32, ptr %116, i32 1
  store i32 -1473132947, ptr %117, align 4
  %118 = load ptr, ptr %20, align 4
  %119 = getelementptr inbounds i32, ptr %118, i32 2
  store i32 -1341970488, ptr %119, align 4
  %120 = load ptr, ptr %20, align 4
  %121 = getelementptr inbounds i32, ptr %120, i32 3
  store i32 -1084653625, ptr %121, align 4
  %122 = load ptr, ptr %21, align 4
  %123 = getelementptr inbounds i32, ptr %122, i32 0
  store i32 -958395405, ptr %123, align 4
  %124 = load ptr, ptr %21, align 4
  %125 = getelementptr inbounds i32, ptr %124, i32 1
  store i32 -710438585, ptr %125, align 4
  %126 = load ptr, ptr %21, align 4
  %127 = getelementptr inbounds i32, ptr %126, i32 2
  store i32 113926993, ptr %127, align 4
  %128 = load ptr, ptr %21, align 4
  %129 = getelementptr inbounds i32, ptr %128, i32 3
  store i32 338241895, ptr %129, align 4
  %130 = load ptr, ptr %8, align 4
  store ptr %130, ptr %22, align 4
  %131 = load ptr, ptr %8, align 4
  %132 = getelementptr inbounds i32, ptr %131, i32 8
  store ptr %132, ptr %23, align 4
  %133 = load ptr, ptr %22, align 4
  store ptr %133, ptr %24, align 4
  %134 = load ptr, ptr %22, align 4
  %135 = getelementptr inbounds i32, ptr %134, i32 4
  store ptr %135, ptr %25, align 4
  %136 = load ptr, ptr %24, align 4
  %137 = getelementptr inbounds i32, ptr %136, i32 0
  store i32 666307205, ptr %137, align 4
  %138 = load ptr, ptr %24, align 4
  %139 = getelementptr inbounds i32, ptr %138, i32 1
  store i32 773529912, ptr %139, align 4
  %140 = load ptr, ptr %24, align 4
  %141 = getelementptr inbounds i32, ptr %140, i32 2
  store i32 1294757372, ptr %141, align 4
  %142 = load ptr, ptr %24, align 4
  %143 = getelementptr inbounds i32, ptr %142, i32 3
  store i32 1396182291, ptr %143, align 4
  %144 = load ptr, ptr %25, align 4
  %145 = getelementptr inbounds i32, ptr %144, i32 0
  store i32 1695183700, ptr %145, align 4
  %146 = load ptr, ptr %25, align 4
  %147 = getelementptr inbounds i32, ptr %146, i32 1
  store i32 1986661051, ptr %147, align 4
  %148 = load ptr, ptr %25, align 4
  %149 = getelementptr inbounds i32, ptr %148, i32 2
  store i32 -2117940946, ptr %149, align 4
  %150 = load ptr, ptr %25, align 4
  %151 = getelementptr inbounds i32, ptr %150, i32 3
  store i32 -1838011259, ptr %151, align 4
  %152 = load ptr, ptr %23, align 4
  store ptr %152, ptr %26, align 4
  %153 = load ptr, ptr %23, align 4
  %154 = getelementptr inbounds i32, ptr %153, i32 4
  store ptr %154, ptr %27, align 4
  %155 = load ptr, ptr %26, align 4
  %156 = getelementptr inbounds i32, ptr %155, i32 0
  store i32 -1564481375, ptr %156, align 4
  %157 = load ptr, ptr %26, align 4
  %158 = getelementptr inbounds i32, ptr %157, i32 1
  store i32 -1474664885, ptr %158, align 4
  %159 = load ptr, ptr %26, align 4
  %160 = getelementptr inbounds i32, ptr %159, i32 2
  store i32 -1035236496, ptr %160, align 4
  %161 = load ptr, ptr %26, align 4
  %162 = getelementptr inbounds i32, ptr %161, i32 3
  store i32 -949202525, ptr %162, align 4
  %163 = load ptr, ptr %27, align 4
  %164 = getelementptr inbounds i32, ptr %163, i32 0
  store i32 -778901479, ptr %164, align 4
  %165 = load ptr, ptr %27, align 4
  %166 = getelementptr inbounds i32, ptr %165, i32 1
  store i32 -694614492, ptr %166, align 4
  %167 = load ptr, ptr %27, align 4
  %168 = getelementptr inbounds i32, ptr %167, i32 2
  store i32 -200395387, ptr %168, align 4
  %169 = load ptr, ptr %27, align 4
  %170 = getelementptr inbounds i32, ptr %169, i32 3
  store i32 275423344, ptr %170, align 4
  %171 = load ptr, ptr %9, align 4
  store ptr %171, ptr %28, align 4
  %172 = load ptr, ptr %9, align 4
  %173 = getelementptr inbounds i32, ptr %172, i32 8
  store ptr %173, ptr %29, align 4
  %174 = load ptr, ptr %28, align 4
  store ptr %174, ptr %30, align 4
  %175 = load ptr, ptr %28, align 4
  %176 = getelementptr inbounds i32, ptr %175, i32 4
  store ptr %176, ptr %31, align 4
  %177 = load ptr, ptr %30, align 4
  %178 = getelementptr inbounds i32, ptr %177, i32 0
  store i32 430227734, ptr %178, align 4
  %179 = load ptr, ptr %30, align 4
  %180 = getelementptr inbounds i32, ptr %179, i32 1
  store i32 506948616, ptr %180, align 4
  %181 = load ptr, ptr %30, align 4
  %182 = getelementptr inbounds i32, ptr %181, i32 2
  store i32 659060556, ptr %182, align 4
  %183 = load ptr, ptr %30, align 4
  %184 = getelementptr inbounds i32, ptr %183, i32 3
  store i32 883997877, ptr %184, align 4
  %185 = load ptr, ptr %31, align 4
  %186 = getelementptr inbounds i32, ptr %185, i32 0
  store i32 958139571, ptr %186, align 4
  %187 = load ptr, ptr %31, align 4
  %188 = getelementptr inbounds i32, ptr %187, i32 1
  store i32 1322822218, ptr %188, align 4
  %189 = load ptr, ptr %31, align 4
  %190 = getelementptr inbounds i32, ptr %189, i32 2
  store i32 1537002063, ptr %190, align 4
  %191 = load ptr, ptr %31, align 4
  %192 = getelementptr inbounds i32, ptr %191, i32 3
  store i32 1747873779, ptr %192, align 4
  %193 = load ptr, ptr %29, align 4
  store ptr %193, ptr %32, align 4
  %194 = load ptr, ptr %29, align 4
  %195 = getelementptr inbounds i32, ptr %194, i32 4
  store ptr %195, ptr %33, align 4
  %196 = load ptr, ptr %32, align 4
  %197 = getelementptr inbounds i32, ptr %196, i32 0
  store i32 1955562222, ptr %197, align 4
  %198 = load ptr, ptr %32, align 4
  %199 = getelementptr inbounds i32, ptr %198, i32 1
  store i32 2024104815, ptr %199, align 4
  %200 = load ptr, ptr %32, align 4
  %201 = getelementptr inbounds i32, ptr %200, i32 2
  store i32 -2067236844, ptr %201, align 4
  %202 = load ptr, ptr %32, align 4
  %203 = getelementptr inbounds i32, ptr %202, i32 3
  store i32 -1933114872, ptr %203, align 4
  %204 = load ptr, ptr %33, align 4
  %205 = getelementptr inbounds i32, ptr %204, i32 0
  store i32 -1866530822, ptr %205, align 4
  %206 = load ptr, ptr %33, align 4
  %207 = getelementptr inbounds i32, ptr %206, i32 1
  store i32 -1538233109, ptr %207, align 4
  %208 = load ptr, ptr %33, align 4
  %209 = getelementptr inbounds i32, ptr %208, i32 2
  store i32 -1090935817, ptr %209, align 4
  %210 = load ptr, ptr %33, align 4
  %211 = getelementptr inbounds i32, ptr %210, i32 3
  store i32 -965641998, ptr %211, align 4
  %212 = load ptr, ptr %5, align 4
  store ptr %212, ptr %34, align 4
  %213 = load ptr, ptr %5, align 4
  %214 = getelementptr inbounds i32, ptr %213, i32 4
  store ptr %214, ptr %35, align 4
  %215 = load ptr, ptr %34, align 4
  %216 = getelementptr inbounds i32, ptr %215, i32 0
  store i32 1779033703, ptr %216, align 4
  %217 = load ptr, ptr %34, align 4
  %218 = getelementptr inbounds i32, ptr %217, i32 1
  store i32 -1150833019, ptr %218, align 4
  %219 = load ptr, ptr %34, align 4
  %220 = getelementptr inbounds i32, ptr %219, i32 2
  store i32 1013904242, ptr %220, align 4
  %221 = load ptr, ptr %34, align 4
  %222 = getelementptr inbounds i32, ptr %221, i32 3
  store i32 -1521486534, ptr %222, align 4
  %223 = load ptr, ptr %35, align 4
  %224 = getelementptr inbounds i32, ptr %223, i32 0
  store i32 1359893119, ptr %224, align 4
  %225 = load ptr, ptr %35, align 4
  %226 = getelementptr inbounds i32, ptr %225, i32 1
  store i32 -1694144372, ptr %226, align 4
  %227 = load ptr, ptr %35, align 4
  %228 = getelementptr inbounds i32, ptr %227, i32 2
  store i32 528734635, ptr %228, align 4
  %229 = load ptr, ptr %35, align 4
  %230 = getelementptr inbounds i32, ptr %229, i32 3
  store i32 1541459225, ptr %230, align 4
  %231 = load ptr, ptr %3, align 4
  %232 = getelementptr inbounds i32, ptr %231, i32 0
  store i32 0, ptr %232, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_256_update(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [16 x i32], align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x i32], align 4
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
  %33 = alloca ptr, align 4
  %34 = alloca ptr, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %5, i8 0, i32 64, i1 false)
  %40 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 0
  %41 = load ptr, ptr %4, align 4
  call void @Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes(ptr noundef %40, ptr noundef %41, i32 noundef 16)
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds i32, ptr %42, i32 128
  store ptr %43, ptr %6, align 4
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds i32, ptr %44, i32 64
  store ptr %45, ptr %7, align 4
  %46 = load ptr, ptr %3, align 4
  store ptr %46, ptr %8, align 4
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds i32, ptr %47, i32 136
  store ptr %48, ptr %9, align 4
  store i32 0, ptr %10, align 4
  br label %49

49:                                               ; preds = %60, %2
  %50 = load i32, ptr %10, align 4
  %51 = icmp ult i32 %50, 16
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, ptr %10, align 4
  %54 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 %53
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %11, align 4
  %56 = load i32, ptr %11, align 4
  %57 = load ptr, ptr %7, align 4
  %58 = load i32, ptr %10, align 4
  %59 = getelementptr inbounds i32, ptr %57, i32 %58
  store i32 %56, ptr %59, align 4
  br label %60

60:                                               ; preds = %52
  %61 = load i32, ptr %10, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %10, align 4
  br label %49, !llvm.loop !12

63:                                               ; preds = %49
  store i32 16, ptr %12, align 4
  br label %64

64:                                               ; preds = %124, %63
  %65 = load i32, ptr %12, align 4
  %66 = icmp ult i32 %65, 64
  br i1 %66, label %67, label %127

67:                                               ; preds = %64
  %68 = load ptr, ptr %7, align 4
  %69 = load i32, ptr %12, align 4
  %70 = sub i32 %69, 16
  %71 = getelementptr inbounds i32, ptr %68, i32 %70
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %13, align 4
  %73 = load ptr, ptr %7, align 4
  %74 = load i32, ptr %12, align 4
  %75 = sub i32 %74, 15
  %76 = getelementptr inbounds i32, ptr %73, i32 %75
  %77 = load i32, ptr %76, align 4
  store i32 %77, ptr %14, align 4
  %78 = load ptr, ptr %7, align 4
  %79 = load i32, ptr %12, align 4
  %80 = sub i32 %79, 7
  %81 = getelementptr inbounds i32, ptr %78, i32 %80
  %82 = load i32, ptr %81, align 4
  store i32 %82, ptr %15, align 4
  %83 = load ptr, ptr %7, align 4
  %84 = load i32, ptr %12, align 4
  %85 = sub i32 %84, 2
  %86 = getelementptr inbounds i32, ptr %83, i32 %85
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr %16, align 4
  %88 = load i32, ptr %16, align 4
  %89 = lshr i32 %88, 17
  %90 = load i32, ptr %16, align 4
  %91 = shl i32 %90, 15
  %92 = or i32 %89, %91
  %93 = load i32, ptr %16, align 4
  %94 = lshr i32 %93, 19
  %95 = load i32, ptr %16, align 4
  %96 = shl i32 %95, 13
  %97 = or i32 %94, %96
  %98 = load i32, ptr %16, align 4
  %99 = lshr i32 %98, 10
  %100 = xor i32 %97, %99
  %101 = xor i32 %92, %100
  %102 = load i32, ptr %15, align 4
  %103 = add i32 %101, %102
  %104 = load i32, ptr %14, align 4
  %105 = lshr i32 %104, 7
  %106 = load i32, ptr %14, align 4
  %107 = shl i32 %106, 25
  %108 = or i32 %105, %107
  %109 = load i32, ptr %14, align 4
  %110 = lshr i32 %109, 18
  %111 = load i32, ptr %14, align 4
  %112 = shl i32 %111, 14
  %113 = or i32 %110, %112
  %114 = load i32, ptr %14, align 4
  %115 = lshr i32 %114, 3
  %116 = xor i32 %113, %115
  %117 = xor i32 %108, %116
  %118 = add i32 %103, %117
  %119 = load i32, ptr %13, align 4
  %120 = add i32 %118, %119
  %121 = load ptr, ptr %7, align 4
  %122 = load i32, ptr %12, align 4
  %123 = getelementptr inbounds i32, ptr %121, i32 %122
  store i32 %120, ptr %123, align 4
  br label %124

124:                                              ; preds = %67
  %125 = load i32, ptr %12, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %12, align 4
  br label %64, !llvm.loop !13

127:                                              ; preds = %64
  call void @llvm.memset.p0.i32(ptr align 4 %17, i8 0, i32 32, i1 false)
  %128 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 0
  %129 = load ptr, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %128, ptr align 4 %129, i32 32, i1 false)
  store i32 0, ptr %18, align 4
  br label %130

130:                                              ; preds = %252, %127
  %131 = load i32, ptr %18, align 4
  %132 = icmp ult i32 %131, 64
  br i1 %132, label %133, label %255

133:                                              ; preds = %130
  %134 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 0
  %135 = load i32, ptr %134, align 4
  store i32 %135, ptr %19, align 4
  %136 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  store i32 %137, ptr %20, align 4
  %138 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  store i32 %139, ptr %21, align 4
  %140 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  store i32 %141, ptr %22, align 4
  %142 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 4
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %23, align 4
  %144 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 5
  %145 = load i32, ptr %144, align 4
  store i32 %145, ptr %24, align 4
  %146 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 6
  %147 = load i32, ptr %146, align 4
  store i32 %147, ptr %25, align 4
  %148 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 7
  %149 = load i32, ptr %148, align 4
  store i32 %149, ptr %26, align 4
  %150 = load ptr, ptr %8, align 4
  %151 = load i32, ptr %18, align 4
  %152 = getelementptr inbounds i32, ptr %150, i32 %151
  %153 = load i32, ptr %152, align 4
  store i32 %153, ptr %27, align 4
  %154 = load ptr, ptr %7, align 4
  %155 = load i32, ptr %18, align 4
  %156 = getelementptr inbounds i32, ptr %154, i32 %155
  %157 = load i32, ptr %156, align 4
  store i32 %157, ptr %28, align 4
  %158 = load i32, ptr %26, align 4
  %159 = load i32, ptr %23, align 4
  %160 = lshr i32 %159, 6
  %161 = load i32, ptr %23, align 4
  %162 = shl i32 %161, 26
  %163 = or i32 %160, %162
  %164 = load i32, ptr %23, align 4
  %165 = lshr i32 %164, 11
  %166 = load i32, ptr %23, align 4
  %167 = shl i32 %166, 21
  %168 = or i32 %165, %167
  %169 = load i32, ptr %23, align 4
  %170 = lshr i32 %169, 25
  %171 = load i32, ptr %23, align 4
  %172 = shl i32 %171, 7
  %173 = or i32 %170, %172
  %174 = xor i32 %168, %173
  %175 = xor i32 %163, %174
  %176 = add i32 %158, %175
  %177 = load i32, ptr %23, align 4
  %178 = load i32, ptr %24, align 4
  %179 = and i32 %177, %178
  %180 = load i32, ptr %23, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, ptr %25, align 4
  %183 = and i32 %181, %182
  %184 = xor i32 %179, %183
  %185 = add i32 %176, %184
  %186 = load i32, ptr %27, align 4
  %187 = add i32 %185, %186
  %188 = load i32, ptr %28, align 4
  %189 = add i32 %187, %188
  store i32 %189, ptr %29, align 4
  %190 = load i32, ptr %19, align 4
  %191 = lshr i32 %190, 2
  %192 = load i32, ptr %19, align 4
  %193 = shl i32 %192, 30
  %194 = or i32 %191, %193
  %195 = load i32, ptr %19, align 4
  %196 = lshr i32 %195, 13
  %197 = load i32, ptr %19, align 4
  %198 = shl i32 %197, 19
  %199 = or i32 %196, %198
  %200 = load i32, ptr %19, align 4
  %201 = lshr i32 %200, 22
  %202 = load i32, ptr %19, align 4
  %203 = shl i32 %202, 10
  %204 = or i32 %201, %203
  %205 = xor i32 %199, %204
  %206 = xor i32 %194, %205
  %207 = load i32, ptr %19, align 4
  %208 = load i32, ptr %20, align 4
  %209 = and i32 %207, %208
  %210 = load i32, ptr %19, align 4
  %211 = load i32, ptr %21, align 4
  %212 = and i32 %210, %211
  %213 = load i32, ptr %20, align 4
  %214 = load i32, ptr %21, align 4
  %215 = and i32 %213, %214
  %216 = xor i32 %212, %215
  %217 = xor i32 %209, %216
  %218 = add i32 %206, %217
  store i32 %218, ptr %30, align 4
  %219 = load i32, ptr %29, align 4
  %220 = load i32, ptr %30, align 4
  %221 = add i32 %219, %220
  store i32 %221, ptr %31, align 4
  %222 = load i32, ptr %22, align 4
  %223 = load i32, ptr %29, align 4
  %224 = add i32 %222, %223
  store i32 %224, ptr %32, align 4
  %225 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 0
  store ptr %225, ptr %33, align 4
  %226 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 0
  %227 = getelementptr inbounds i32, ptr %226, i32 4
  store ptr %227, ptr %34, align 4
  %228 = load i32, ptr %31, align 4
  %229 = load ptr, ptr %33, align 4
  %230 = getelementptr inbounds i32, ptr %229, i32 0
  store i32 %228, ptr %230, align 4
  %231 = load i32, ptr %19, align 4
  %232 = load ptr, ptr %33, align 4
  %233 = getelementptr inbounds i32, ptr %232, i32 1
  store i32 %231, ptr %233, align 4
  %234 = load i32, ptr %20, align 4
  %235 = load ptr, ptr %33, align 4
  %236 = getelementptr inbounds i32, ptr %235, i32 2
  store i32 %234, ptr %236, align 4
  %237 = load i32, ptr %21, align 4
  %238 = load ptr, ptr %33, align 4
  %239 = getelementptr inbounds i32, ptr %238, i32 3
  store i32 %237, ptr %239, align 4
  %240 = load i32, ptr %32, align 4
  %241 = load ptr, ptr %34, align 4
  %242 = getelementptr inbounds i32, ptr %241, i32 0
  store i32 %240, ptr %242, align 4
  %243 = load i32, ptr %23, align 4
  %244 = load ptr, ptr %34, align 4
  %245 = getelementptr inbounds i32, ptr %244, i32 1
  store i32 %243, ptr %245, align 4
  %246 = load i32, ptr %24, align 4
  %247 = load ptr, ptr %34, align 4
  %248 = getelementptr inbounds i32, ptr %247, i32 2
  store i32 %246, ptr %248, align 4
  %249 = load i32, ptr %25, align 4
  %250 = load ptr, ptr %34, align 4
  %251 = getelementptr inbounds i32, ptr %250, i32 3
  store i32 %249, ptr %251, align 4
  br label %252

252:                                              ; preds = %133
  %253 = load i32, ptr %18, align 4
  %254 = add i32 %253, 1
  store i32 %254, ptr %18, align 4
  br label %130, !llvm.loop !14

255:                                              ; preds = %130
  store i32 0, ptr %35, align 4
  br label %256

256:                                              ; preds = %273, %255
  %257 = load i32, ptr %35, align 4
  %258 = icmp ult i32 %257, 8
  br i1 %258, label %259, label %276

259:                                              ; preds = %256
  %260 = load ptr, ptr %6, align 4
  %261 = load i32, ptr %35, align 4
  %262 = getelementptr inbounds i32, ptr %260, i32 %261
  %263 = load i32, ptr %262, align 4
  store i32 %263, ptr %36, align 4
  %264 = load i32, ptr %35, align 4
  %265 = getelementptr inbounds [8 x i32], ptr %17, i32 0, i32 %264
  %266 = load i32, ptr %265, align 4
  store i32 %266, ptr %37, align 4
  %267 = load i32, ptr %36, align 4
  %268 = load i32, ptr %37, align 4
  %269 = add i32 %267, %268
  %270 = load ptr, ptr %6, align 4
  %271 = load i32, ptr %35, align 4
  %272 = getelementptr inbounds i32, ptr %270, i32 %271
  store i32 %269, ptr %272, align 4
  br label %273

273:                                              ; preds = %259
  %274 = load i32, ptr %35, align 4
  %275 = add i32 %274, 1
  store i32 %275, ptr %35, align 4
  br label %256, !llvm.loop !15

276:                                              ; preds = %256
  %277 = load ptr, ptr %9, align 4
  %278 = getelementptr inbounds i32, ptr %277, i32 0
  %279 = load i32, ptr %278, align 4
  store i32 %279, ptr %38, align 4
  store i32 1, ptr %39, align 4
  %280 = load i32, ptr %38, align 4
  %281 = load i32, ptr %39, align 4
  %282 = add i32 %280, %281
  %283 = load ptr, ptr %9, align 4
  %284 = getelementptr inbounds i32, ptr %283, i32 0
  store i32 %282, ptr %284, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_256_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
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
  %16 = mul i32 %15, 64
  %17 = getelementptr inbounds i8, ptr %14, i32 %16
  store ptr %17, ptr %8, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = load ptr, ptr %8, align 4
  call void @Hacl_Impl_SHA2_256_update(ptr noundef %18, ptr noundef %19)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %7, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %7, align 4
  br label %9, !llvm.loop !16

23:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_256_update_last(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %7, i8 0, i32 128, i1 false)
  %16 = load i32, ptr %6, align 4
  %17 = icmp ult i32 %16, 56
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, ptr %8, align 4
  br label %20

19:                                               ; preds = %3
  store i32 2, ptr %8, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, ptr %6, align 4
  %22 = icmp ult i32 %21, 56
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds [128 x i8], ptr %7, i32 0, i32 0
  %25 = getelementptr inbounds i8, ptr %24, i32 64
  store ptr %25, ptr %9, align 4
  br label %28

26:                                               ; preds = %20
  %27 = getelementptr inbounds [128 x i8], ptr %7, i32 0, i32 0
  store ptr %27, ptr %9, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load ptr, ptr %9, align 4
  %30 = load ptr, ptr %5, align 4
  %31 = load i32, ptr %6, align 4
  %32 = mul i32 %31, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %29, ptr align 1 %30, i32 %32, i1 false)
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds i32, ptr %33, i32 136
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %10, align 4
  %36 = load ptr, ptr %9, align 4
  %37 = load i32, ptr %6, align 4
  %38 = getelementptr inbounds i8, ptr %36, i32 %37
  store ptr %38, ptr %11, align 4
  %39 = load i32, ptr %6, align 4
  %40 = add i32 %39, 8
  %41 = add i32 %40, 1
  %42 = urem i32 %41, 64
  %43 = sub i32 64, %42
  %44 = urem i32 %43, 64
  store i32 %44, ptr %12, align 4
  %45 = load ptr, ptr %11, align 4
  store ptr %45, ptr %13, align 4
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr inbounds i8, ptr %46, i32 1
  %48 = load i32, ptr %12, align 4
  %49 = getelementptr inbounds i8, ptr %47, i32 %48
  store ptr %49, ptr %14, align 4
  %50 = load i32, ptr %10, align 4
  %51 = zext i32 %50 to i64
  %52 = mul i64 %51, 64
  %53 = load i32, ptr %6, align 4
  %54 = zext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = mul i64 %55, 8
  store i64 %56, ptr %15, align 8
  %57 = load ptr, ptr %13, align 4
  %58 = getelementptr inbounds i8, ptr %57, i32 0
  store i8 -128, ptr %58, align 1
  %59 = load ptr, ptr %14, align 4
  %60 = load i64, ptr %15, align 8
  %61 = call i64 @__bswap_64(i64 noundef %60)
  call void @store64(ptr noundef %59, i64 noundef %61)
  %62 = load ptr, ptr %4, align 4
  %63 = load ptr, ptr %9, align 4
  %64 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA2_256_update_multi(ptr noundef %62, ptr noundef %63, i32 noundef %64)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Impl_SHA2_256_finish(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds i32, ptr %6, i32 128
  store ptr %7, ptr %5, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = load ptr, ptr %5, align 4
  call void @Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes(ptr noundef %8, ptr noundef %9, i32 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
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
  %21 = call i32 @__bswap_32(i32 noundef %20)
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
  br label %10, !llvm.loop !17

29:                                               ; preds = %10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @__bswap_32(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -16777216
  %5 = lshr i32 %4, 24
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 16711680
  %8 = lshr i32 %7, 8
  %9 = or i32 %5, %8
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 65280
  %12 = shl i32 %11, 8
  %13 = or i32 %9, %12
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, 255
  %16 = shl i32 %15, 24
  %17 = or i32 %13, %16
  ret i32 %17
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
define internal void @Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
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
  %25 = call i32 @__bswap_32(i32 noundef %24)
  call void @store32(ptr noundef %23, i32 noundef %25)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, ptr %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %7, align 4
  br label %10, !llvm.loop !18

29:                                               ; preds = %10
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
define internal void @Hacl_Impl_SHA2_256_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca [137 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %7, i8 0, i32 548, i1 false)
  %12 = load i32, ptr %6, align 4
  %13 = udiv i32 %12, 64
  store i32 %13, ptr %8, align 4
  %14 = load i32, ptr %6, align 4
  %15 = urem i32 %14, 64
  store i32 %15, ptr %9, align 4
  %16 = load ptr, ptr %5, align 4
  store ptr %16, ptr %10, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = load i32, ptr %8, align 4
  %19 = mul i32 %18, 64
  %20 = getelementptr inbounds i8, ptr %17, i32 %19
  store ptr %20, ptr %11, align 4
  %21 = getelementptr inbounds [137 x i32], ptr %7, i32 0, i32 0
  call void @Hacl_Impl_SHA2_256_init(ptr noundef %21)
  %22 = getelementptr inbounds [137 x i32], ptr %7, i32 0, i32 0
  %23 = load ptr, ptr %10, align 4
  %24 = load i32, ptr %8, align 4
  call void @Hacl_Impl_SHA2_256_update_multi(ptr noundef %22, ptr noundef %23, i32 noundef %24)
  %25 = getelementptr inbounds [137 x i32], ptr %7, i32 0, i32 0
  %26 = load ptr, ptr %11, align 4
  %27 = load i32, ptr %9, align 4
  call void @Hacl_Impl_SHA2_256_update_last(ptr noundef %25, ptr noundef %26, i32 noundef %27)
  %28 = getelementptr inbounds [137 x i32], ptr %7, i32 0, i32 0
  %29 = load ptr, ptr %4, align 4
  call void @Hacl_Impl_SHA2_256_finish(ptr noundef %28, ptr noundef %29)
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
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
