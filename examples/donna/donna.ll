; ModuleID = 'donna.ll'
source_filename = "donna_wrapper.c"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: noinline nounwind
define dso_local i32 @curve25519_donna(i8*, i8* nocapture readonly, i8* readonly) local_unnamed_addr #0 {
  %4 = alloca [10 x i64], align 8
  %5 = alloca [10 x i64], align 8
  %6 = alloca [11 x i64], align 8
  %7 = alloca [10 x i64], align 8
  %8 = alloca [32 x i8], align 1
  br label %9

; <label>:9:                                      ; preds = %11, %3
  %.0 = phi i32 [ 0, %3 ], [ %15, %11 ]
  %10 = icmp ult i32 %.0, 32
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds i8, i8* %1, i32 %.0
  %13 = load i8, i8* %12, align 1
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 %.0
  store i8 %13, i8* %14, align 1
  %15 = add nuw nsw i32 %.0, 1
  br label %9

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  %19 = and i8 %18, -8
  store i8 %19, i8* %17, align 1
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 31
  %21 = load i8, i8* %20, align 1
  %22 = and i8 %21, 63
  %23 = or i8 %22, 64
  store i8 %23, i8* %20, align 1
  %24 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i32 0, i32 0
  call fastcc void @fexpand(i64* nonnull %24, i8* %2)
  %25 = getelementptr inbounds [10 x i64], [10 x i64]* %5, i32 0, i32 0
  %26 = getelementptr inbounds [11 x i64], [11 x i64]* %6, i32 0, i32 0
  call fastcc void @cmult(i64* nonnull %25, i64* nonnull %26, i8* nonnull %17, i64* nonnull %24)
  %27 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i32 0, i32 0
  call fastcc void @crecip(i64* nonnull %27, i64* nonnull %26)
  call fastcc void @fmul(i64* nonnull %26, i64* nonnull %25, i64* nonnull %27)
  call fastcc void @fcontract(i8* %0, i64* nonnull %26)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc void @fexpand(i64* nocapture, i8* readonly) unnamed_addr #1 {
  %3 = load i8, i8* %1, align 1
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds i8, i8* %1, i32 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 8
  %9 = or i64 %8, %4
  %10 = getelementptr inbounds i8, i8* %1, i32 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 16
  %14 = or i64 %9, %13
  %15 = getelementptr inbounds i8, i8* %1, i32 3
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 24
  %.masked = and i64 %18, 50331648
  %19 = or i64 %14, %.masked
  store i64 %19, i64* %0, align 4
  %20 = load i8, i8* %15, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i8, i8* %1, i32 4
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %24, 8
  %26 = or i64 %25, %21
  %27 = getelementptr inbounds i8, i8* %1, i32 5
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 16
  %31 = or i64 %26, %30
  %32 = getelementptr inbounds i8, i8* %1, i32 6
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 24
  %36 = or i64 %31, %35
  %37 = lshr i64 %36, 2
  %38 = and i64 %37, 33554431
  %39 = getelementptr inbounds i64, i64* %0, i32 1
  store i64 %38, i64* %39, align 4
  %40 = load i8, i8* %32, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i8, i8* %1, i32 7
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 8
  %46 = or i64 %45, %41
  %47 = getelementptr inbounds i8, i8* %1, i32 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 16
  %51 = or i64 %46, %50
  %52 = getelementptr inbounds i8, i8* %1, i32 9
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 24
  %56 = or i64 %51, %55
  %57 = lshr i64 %56, 3
  %58 = and i64 %57, 67108863
  %59 = getelementptr inbounds i64, i64* %0, i32 2
  store i64 %58, i64* %59, align 4
  %60 = load i8, i8* %52, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i8, i8* %1, i32 10
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 8
  %66 = or i64 %65, %61
  %67 = getelementptr inbounds i8, i8* %1, i32 11
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 16
  %71 = or i64 %66, %70
  %72 = getelementptr inbounds i8, i8* %1, i32 12
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i64
  %75 = shl nuw nsw i64 %74, 24
  %76 = or i64 %71, %75
  %77 = lshr i64 %76, 5
  %78 = and i64 %77, 33554431
  %79 = getelementptr inbounds i64, i64* %0, i32 3
  store i64 %78, i64* %79, align 4
  %80 = load i8, i8* %72, align 1
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i8, i8* %1, i32 13
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 8
  %86 = or i64 %85, %81
  %87 = getelementptr inbounds i8, i8* %1, i32 14
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 16
  %91 = or i64 %86, %90
  %92 = getelementptr inbounds i8, i8* %1, i32 15
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 24
  %96 = or i64 %91, %95
  %97 = lshr i64 %96, 6
  %98 = and i64 %97, 67108863
  %99 = getelementptr inbounds i64, i64* %0, i32 4
  store i64 %98, i64* %99, align 4
  %100 = getelementptr inbounds i8, i8* %1, i32 16
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds i8, i8* %1, i32 17
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  %106 = shl nuw nsw i64 %105, 8
  %107 = or i64 %106, %102
  %108 = getelementptr inbounds i8, i8* %1, i32 18
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i64
  %111 = shl nuw nsw i64 %110, 16
  %112 = or i64 %107, %111
  %113 = getelementptr inbounds i8, i8* %1, i32 19
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i64
  %116 = shl nuw nsw i64 %115, 24
  %.masked1 = and i64 %116, 16777216
  %117 = or i64 %112, %.masked1
  %118 = getelementptr inbounds i64, i64* %0, i32 5
  store i64 %117, i64* %118, align 4
  %119 = load i8, i8* %113, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i8, i8* %1, i32 20
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i64
  %124 = shl nuw nsw i64 %123, 8
  %125 = or i64 %124, %120
  %126 = getelementptr inbounds i8, i8* %1, i32 21
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i64
  %129 = shl nuw nsw i64 %128, 16
  %130 = or i64 %125, %129
  %131 = getelementptr inbounds i8, i8* %1, i32 22
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i64
  %134 = shl nuw nsw i64 %133, 24
  %135 = or i64 %130, %134
  %136 = lshr i64 %135, 1
  %137 = and i64 %136, 67108863
  %138 = getelementptr inbounds i64, i64* %0, i32 6
  store i64 %137, i64* %138, align 4
  %139 = load i8, i8* %131, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds i8, i8* %1, i32 23
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  %144 = shl nuw nsw i64 %143, 8
  %145 = or i64 %144, %140
  %146 = getelementptr inbounds i8, i8* %1, i32 24
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i64
  %149 = shl nuw nsw i64 %148, 16
  %150 = or i64 %145, %149
  %151 = getelementptr inbounds i8, i8* %1, i32 25
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i64
  %154 = shl nuw nsw i64 %153, 24
  %155 = or i64 %150, %154
  %156 = lshr i64 %155, 3
  %157 = and i64 %156, 33554431
  %158 = getelementptr inbounds i64, i64* %0, i32 7
  store i64 %157, i64* %158, align 4
  %159 = load i8, i8* %151, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds i8, i8* %1, i32 26
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i64
  %164 = shl nuw nsw i64 %163, 8
  %165 = or i64 %164, %160
  %166 = getelementptr inbounds i8, i8* %1, i32 27
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i64
  %169 = shl nuw nsw i64 %168, 16
  %170 = or i64 %165, %169
  %171 = getelementptr inbounds i8, i8* %1, i32 28
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 24
  %175 = or i64 %170, %174
  %176 = lshr i64 %175, 4
  %177 = and i64 %176, 67108863
  %178 = getelementptr inbounds i64, i64* %0, i32 8
  store i64 %177, i64* %178, align 4
  %179 = load i8, i8* %171, align 1
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds i8, i8* %1, i32 29
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i64
  %184 = shl nuw nsw i64 %183, 8
  %185 = or i64 %184, %180
  %186 = getelementptr inbounds i8, i8* %1, i32 30
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i64
  %189 = shl nuw nsw i64 %188, 16
  %190 = or i64 %185, %189
  %191 = getelementptr inbounds i8, i8* %1, i32 31
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i64
  %194 = shl nuw nsw i64 %193, 24
  %195 = or i64 %190, %194
  %196 = lshr i64 %195, 6
  %197 = and i64 %196, 33554431
  %198 = getelementptr inbounds i64, i64* %0, i32 9
  store i64 %197, i64* %198, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @cmult(i64* nocapture, i64* nocapture, i8* nocapture readonly, i64* nocapture readonly) unnamed_addr #0 {
  %5 = alloca [19 x i64], align 8
  %6 = alloca [19 x i64], align 8
  %7 = alloca [19 x i64], align 8
  %8 = alloca [19 x i64], align 8
  %9 = alloca [19 x i64], align 8
  %10 = alloca [19 x i64], align 8
  %11 = alloca [19 x i64], align 8
  %12 = alloca [19 x i64], align 8
  %13 = bitcast [19 x i64]* %5 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %13, i8 0, i32 152, i1 false)
  %14 = bitcast [19 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %14, i8 0, i32 152, i1 false)
  %15 = getelementptr inbounds [19 x i64], [19 x i64]* %6, i32 0, i32 0
  store i64 1, i64* %15, align 8
  %16 = bitcast [19 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %16, i8 0, i32 152, i1 false)
  %17 = getelementptr inbounds [19 x i64], [19 x i64]* %7, i32 0, i32 0
  store i64 1, i64* %17, align 8
  %18 = bitcast [19 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %18, i8 0, i32 152, i1 false)
  %19 = getelementptr inbounds [19 x i64], [19 x i64]* %5, i32 0, i32 0
  %20 = getelementptr inbounds [19 x i64], [19 x i64]* %8, i32 0, i32 0
  %21 = bitcast [19 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %21, i8 0, i32 152, i1 false)
  %22 = bitcast [19 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %22, i8 0, i32 152, i1 false)
  %23 = getelementptr inbounds [19 x i64], [19 x i64]* %10, i32 0, i32 0
  store i64 1, i64* %23, align 8
  %24 = bitcast [19 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %24, i8 0, i32 152, i1 false)
  %25 = bitcast [19 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %25, i8 0, i32 152, i1 false)
  %26 = getelementptr inbounds [19 x i64], [19 x i64]* %12, i32 0, i32 0
  store i64 1, i64* %26, align 8
  %27 = getelementptr inbounds [19 x i64], [19 x i64]* %9, i32 0, i32 0
  %28 = getelementptr inbounds [19 x i64], [19 x i64]* %11, i32 0, i32 0
  %29 = bitcast i64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %13, i8* align 4 %29, i32 80, i1 false)
  br label %30

; <label>:30:                                     ; preds = %43, %4
  %.061 = phi i64* [ %17, %4 ], [ %.162, %43 ]
  %.059 = phi i64* [ %20, %4 ], [ %.160, %43 ]
  %.057 = phi i64* [ %15, %4 ], [ %.158, %43 ]
  %.055 = phi i64* [ %27, %4 ], [ %.156, %43 ]
  %.053 = phi i64* [ %23, %4 ], [ %.154, %43 ]
  %.051 = phi i64* [ %28, %4 ], [ %.152, %43 ]
  %.049 = phi i64* [ %26, %4 ], [ %.150, %43 ]
  %.048 = phi i32 [ 0, %4 ], [ %44, %43 ]
  %.0 = phi i64* [ %19, %4 ], [ %.1, %43 ]
  %31 = icmp ult i32 %.048, 32
  br i1 %31, label %32, label %45

; <label>:32:                                     ; preds = %30
  %33 = sub i32 31, %.048
  %34 = getelementptr inbounds i8, i8* %2, i32 %33
  %35 = load i8, i8* %34, align 1
  br label %36

; <label>:36:                                     ; preds = %38, %32
  %.162 = phi i64* [ %.061, %32 ], [ %.152, %38 ]
  %.160 = phi i64* [ %.059, %32 ], [ %.150, %38 ]
  %.158 = phi i64* [ %.057, %32 ], [ %.154, %38 ]
  %.156 = phi i64* [ %.055, %32 ], [ %.1, %38 ]
  %.154 = phi i64* [ %.053, %32 ], [ %.158, %38 ]
  %.152 = phi i64* [ %.051, %32 ], [ %.162, %38 ]
  %.150 = phi i64* [ %.049, %32 ], [ %.160, %38 ]
  %.047 = phi i32 [ 0, %32 ], [ %42, %38 ]
  %.046 = phi i8 [ %35, %32 ], [ %41, %38 ]
  %.1 = phi i64* [ %.0, %32 ], [ %.156, %38 ]
  %37 = icmp ult i32 %.047, 8
  br i1 %37, label %38, label %43

; <label>:38:                                     ; preds = %36
  %39 = lshr i8 %.046, 7
  %40 = zext i8 %39 to i64
  call fastcc void @swap_conditional(i64* %.162, i64* %.1, i64 %40)
  call fastcc void @swap_conditional(i64* %.160, i64* %.158, i64 %40)
  call fastcc void @fmonty(i64* %.152, i64* %.150, i64* %.156, i64* %.154, i64* %.162, i64* %.160, i64* %.1, i64* %.158, i64* %3)
  call fastcc void @swap_conditional(i64* %.152, i64* %.156, i64 %40)
  call fastcc void @swap_conditional(i64* %.150, i64* %.154, i64 %40)
  %41 = shl i8 %.046, 1
  %42 = add i32 %.047, 1
  br label %36

; <label>:43:                                     ; preds = %36
  %44 = add i32 %.048, 1
  br label %30

; <label>:45:                                     ; preds = %30
  %46 = bitcast i64* %0 to i8*
  %47 = bitcast i64* %.061 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %46, i8* align 4 %47, i32 80, i1 false)
  %48 = bitcast i64* %1 to i8*
  %49 = bitcast i64* %.059 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %48, i8* align 4 %49, i32 80, i1 false)
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @crecip(i64* nocapture, i64* nocapture readonly) unnamed_addr #0 {
  %3 = alloca [10 x i64], align 8
  %4 = alloca [10 x i64], align 8
  %5 = alloca [10 x i64], align 8
  %6 = alloca [10 x i64], align 8
  %7 = alloca [10 x i64], align 8
  %8 = alloca [10 x i64], align 8
  %9 = alloca [10 x i64], align 8
  %10 = alloca [10 x i64], align 8
  %11 = alloca [10 x i64], align 8
  %12 = alloca [10 x i64], align 8
  %13 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i32 0, i32 0
  call fastcc void @fsquare(i64* nonnull %13, i64* %1)
  %14 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i32 0, i32 0
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %13)
  %15 = getelementptr inbounds [10 x i64], [10 x i64]* %11, i32 0, i32 0
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  %16 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i32 0, i32 0
  call fastcc void @fmul(i64* nonnull %16, i64* nonnull %15, i64* %1)
  %17 = getelementptr inbounds [10 x i64], [10 x i64]* %5, i32 0, i32 0
  call fastcc void @fmul(i64* nonnull %17, i64* nonnull %16, i64* nonnull %13)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %17)
  %18 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i32 0, i32 0
  call fastcc void @fmul(i64* nonnull %18, i64* nonnull %15, i64* nonnull %16)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %18)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  %19 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i32 0, i32 0
  call fastcc void @fmul(i64* nonnull %19, i64* nonnull %15, i64* nonnull %18)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %19)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  br label %20

; <label>:20:                                     ; preds = %22, %2
  %.0 = phi i32 [ 2, %2 ], [ %23, %22 ]
  %21 = icmp ult i32 %.0, 10
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %20
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  %23 = add nuw nsw i32 %.0, 2
  br label %20

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i32 0, i32 0
  call fastcc void @fmul(i64* nonnull %25, i64* nonnull %14, i64* nonnull %19)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %25)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  br label %26

; <label>:26:                                     ; preds = %28, %24
  %.1 = phi i32 [ 2, %24 ], [ %29, %28 ]
  %27 = icmp ult i32 %.1, 20
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %26
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  %29 = add nuw nsw i32 %.1, 2
  br label %26

; <label>:30:                                     ; preds = %26
  call fastcc void @fmul(i64* nonnull %15, i64* nonnull %14, i64* nonnull %25)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  br label %31

; <label>:31:                                     ; preds = %33, %30
  %.2 = phi i32 [ 2, %30 ], [ %34, %33 ]
  %32 = icmp ult i32 %.2, 10
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %31
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  %34 = add nuw nsw i32 %.2, 2
  br label %31

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i32 0, i32 0
  call fastcc void @fmul(i64* nonnull %36, i64* nonnull %15, i64* nonnull %19)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %36)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  br label %37

; <label>:37:                                     ; preds = %39, %35
  %.3 = phi i32 [ 2, %35 ], [ %40, %39 ]
  %38 = icmp ult i32 %.3, 50
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %37
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  %40 = add nuw nsw i32 %.3, 2
  br label %37

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds [10 x i64], [10 x i64]* %10, i32 0, i32 0
  call fastcc void @fmul(i64* nonnull %42, i64* nonnull %14, i64* nonnull %36)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %42)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  br label %43

; <label>:43:                                     ; preds = %45, %41
  %.4 = phi i32 [ 2, %41 ], [ %46, %45 ]
  %44 = icmp ult i32 %.4, 100
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %43
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  %46 = add nuw nsw i32 %.4, 2
  br label %43

; <label>:47:                                     ; preds = %43
  call fastcc void @fmul(i64* nonnull %14, i64* nonnull %15, i64* nonnull %42)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  br label %48

; <label>:48:                                     ; preds = %50, %47
  %.5 = phi i32 [ 2, %47 ], [ %51, %50 ]
  %49 = icmp ult i32 %.5, 50
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %48
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  %51 = add nuw nsw i32 %.5, 2
  br label %48

; <label>:52:                                     ; preds = %48
  call fastcc void @fmul(i64* nonnull %15, i64* nonnull %14, i64* nonnull %36)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  call fastcc void @fsquare(i64* nonnull %15, i64* nonnull %14)
  call fastcc void @fsquare(i64* nonnull %14, i64* nonnull %15)
  call fastcc void @fmul(i64* %0, i64* nonnull %14, i64* nonnull %17)
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @fmul(i64* nocapture, i64* nocapture readonly, i64* nocapture readonly) unnamed_addr #0 {
  %4 = alloca [19 x i64], align 8
  %5 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 0
  call fastcc void @fproduct(i64* nonnull %5, i64* %1, i64* %2)
  call fastcc void @freduce_degree(i64* nonnull %5)
  call fastcc void @freduce_coefficients(i64* nonnull %5)
  %6 = bitcast i64* %0 to i8*
  %7 = bitcast [19 x i64]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %6, i8* align 8 %7, i32 80, i1 false)
  ret void
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc void @fcontract(i8*, i64* nocapture readonly) unnamed_addr #1 {
  %3 = alloca [10 x i32], align 4
  br label %4

; <label>:4:                                      ; preds = %6, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %5 = icmp ult i32 %.0, 10
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds i64, i64* %1, i32 %.0
  %8 = load i64, i64* %7, align 4
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %.0
  store i32 %9, i32* %10, align 4
  %11 = add nuw nsw i32 %.0, 1
  br label %4

; <label>:12:                                     ; preds = %41, %4
  %.0100 = phi i32 [ %53, %41 ], [ 0, %4 ]
  %13 = icmp ult i32 %.0100, 2
  br i1 %13, label %14, label %54

; <label>:14:                                     ; preds = %39, %12
  %.1 = phi i32 [ %40, %39 ], [ 0, %12 ]
  %15 = icmp ult i32 %.1, 9
  br i1 %15, label %16, label %41

; <label>:16:                                     ; preds = %14
  %17 = and i32 %.1, 1
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %.1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 31
  %22 = and i32 %20, %21
  br i1 %18, label %31, label %23

; <label>:23:                                     ; preds = %16
  %24 = ashr i32 %22, 25
  %25 = and i32 %22, -33554432
  %26 = sub i32 %20, %25
  store i32 %26, i32* %19, align 4
  %27 = add nuw nsw i32 %.1, 1
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %24
  store i32 %30, i32* %28, align 4
  br label %39

; <label>:31:                                     ; preds = %16
  %32 = ashr i32 %22, 26
  %33 = and i32 %22, -67108864
  %34 = sub i32 %20, %33
  store i32 %34, i32* %19, align 4
  %35 = add nuw nsw i32 %.1, 1
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %32
  store i32 %38, i32* %36, align 4
  br label %39

; <label>:39:                                     ; preds = %31, %23
  %40 = add nuw nsw i32 %.1, 1
  br label %14

; <label>:41:                                     ; preds = %14
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 31
  %45 = and i32 %43, %44
  %46 = ashr i32 %45, 25
  %47 = and i32 %45, -33554432
  %48 = sub i32 %43, %47
  store i32 %48, i32* %42, align 4
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %46, 19
  %52 = add i32 %50, %51
  store i32 %52, i32* %49, align 4
  %53 = add nuw nsw i32 %.0100, 1
  br label %12

; <label>:54:                                     ; preds = %12
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 31
  %58 = and i32 %56, %57
  %59 = ashr i32 %58, 26
  %60 = and i32 %58, -67108864
  %61 = sub i32 %56, %60
  store i32 %61, i32* %55, align 4
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

; <label>:65:                                     ; preds = %90, %54
  %.1101 = phi i32 [ 0, %54 ], [ %98, %90 ]
  %66 = icmp ult i32 %.1101, 2
  br i1 %66, label %67, label %99

; <label>:67:                                     ; preds = %88, %65
  %.2 = phi i32 [ %89, %88 ], [ 0, %65 ]
  %68 = icmp ult i32 %.2, 9
  br i1 %68, label %69, label %90

; <label>:69:                                     ; preds = %67
  %70 = and i32 %.2, 1
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %.2
  %73 = load i32, i32* %72, align 4
  br i1 %71, label %81, label %74

; <label>:74:                                     ; preds = %69
  %75 = ashr i32 %73, 25
  %76 = and i32 %73, 33554431
  store i32 %76, i32* %72, align 4
  %77 = add nuw nsw i32 %.2, 1
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %88

; <label>:81:                                     ; preds = %69
  %82 = ashr i32 %73, 26
  %83 = and i32 %73, 67108863
  store i32 %83, i32* %72, align 4
  %84 = add nuw nsw i32 %.2, 1
  %85 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

; <label>:88:                                     ; preds = %81, %74
  %89 = add nuw nsw i32 %.2, 1
  br label %67

; <label>:90:                                     ; preds = %67
  %91 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 25
  %94 = and i32 %92, 33554431
  store i32 %94, i32* %91, align 4
  %95 = mul nsw i32 %93, 19
  %96 = load i32, i32* %55, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %55, align 4
  %98 = add nuw nsw i32 %.1101, 1
  br label %65

; <label>:99:                                     ; preds = %65
  %100 = load i32, i32* %55, align 4
  %101 = call fastcc i32 @s32_gte(i32 %100)
  br label %102

; <label>:102:                                    ; preds = %113, %99
  %.0102 = phi i32 [ %101, %99 ], [ %.1103, %113 ]
  %.3 = phi i32 [ 1, %99 ], [ %114, %113 ]
  %103 = icmp ult i32 %.3, 10
  br i1 %103, label %104, label %115

; <label>:104:                                    ; preds = %102
  %105 = and i32 %.3, 1
  %106 = icmp eq i32 %105, 0
  %107 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %.3
  %108 = load i32, i32* %107, align 4
  br i1 %106, label %111, label %109

; <label>:109:                                    ; preds = %104
  %110 = call fastcc i32 @s32_eq(i32 %108, i32 33554431)
  br label %113

; <label>:111:                                    ; preds = %104
  %112 = call fastcc i32 @s32_eq(i32 %108, i32 67108863)
  br label %113

; <label>:113:                                    ; preds = %111, %109
  %.pn = phi i32 [ %110, %109 ], [ %112, %111 ]
  %.1103 = and i32 %.0102, %.pn
  %114 = add nuw nsw i32 %.3, 1
  br label %102

; <label>:115:                                    ; preds = %102
  %116 = and i32 %.0102, 67108845
  %117 = sub nsw i32 %100, %116
  store i32 %117, i32* %55, align 4
  br label %118

; <label>:118:                                    ; preds = %133, %115
  %.4 = phi i32 [ 1, %115 ], [ %134, %133 ]
  %119 = icmp ult i32 %.4, 10
  br i1 %119, label %120, label %135

; <label>:120:                                    ; preds = %118
  %121 = and i32 %.4, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %123

; <label>:123:                                    ; preds = %120
  %124 = and i32 %.0102, 33554431
  %125 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %.4
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %133

; <label>:128:                                    ; preds = %120
  %129 = and i32 %.0102, 67108863
  %130 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %.4
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, %129
  store i32 %132, i32* %130, align 4
  br label %133

; <label>:133:                                    ; preds = %128, %123
  %134 = add nuw nsw i32 %.4, 1
  br label %118

; <label>:135:                                    ; preds = %118
  %136 = load i32, i32* %62, align 4
  %137 = shl i32 %136, 2
  store i32 %137, i32* %62, align 4
  %138 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 3
  store i32 %140, i32* %138, align 4
  %141 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 5
  store i32 %143, i32* %141, align 4
  %144 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 6
  store i32 %146, i32* %144, align 4
  %147 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 3
  store i32 %152, i32* %150, align 4
  %153 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 4
  store i32 %155, i32* %153, align 4
  %156 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 6
  store i32 %158, i32* %156, align 4
  store i8 0, i8* %0, align 1
  %159 = getelementptr inbounds i8, i8* %0, i32 16
  store i8 0, i8* %159, align 1
  %160 = load i32, i32* %55, align 4
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %0, align 1
  %162 = lshr i32 %160, 8
  %163 = trunc i32 %162 to i8
  %164 = getelementptr inbounds i8, i8* %0, i32 1
  store i8 %163, i8* %164, align 1
  %165 = lshr i32 %160, 16
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds i8, i8* %0, i32 2
  store i8 %166, i8* %167, align 1
  %168 = lshr i32 %160, 24
  %169 = getelementptr inbounds i8, i8* %0, i32 3
  %170 = or i32 %168, %137
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %169, align 1
  %172 = lshr i32 %136, 6
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds i8, i8* %0, i32 4
  store i8 %173, i8* %174, align 1
  %175 = lshr i32 %136, 14
  %176 = trunc i32 %175 to i8
  %177 = getelementptr inbounds i8, i8* %0, i32 5
  store i8 %176, i8* %177, align 1
  %178 = lshr i32 %136, 22
  %179 = getelementptr inbounds i8, i8* %0, i32 6
  %180 = or i32 %178, %140
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %179, align 1
  %182 = lshr i32 %139, 5
  %183 = trunc i32 %182 to i8
  %184 = getelementptr inbounds i8, i8* %0, i32 7
  store i8 %183, i8* %184, align 1
  %185 = lshr i32 %139, 13
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds i8, i8* %0, i32 8
  store i8 %186, i8* %187, align 1
  %188 = lshr i32 %139, 21
  %189 = getelementptr inbounds i8, i8* %0, i32 9
  %190 = or i32 %188, %143
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %189, align 1
  %192 = lshr i32 %142, 3
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds i8, i8* %0, i32 10
  store i8 %193, i8* %194, align 1
  %195 = lshr i32 %142, 11
  %196 = trunc i32 %195 to i8
  %197 = getelementptr inbounds i8, i8* %0, i32 11
  store i8 %196, i8* %197, align 1
  %198 = lshr i32 %142, 19
  %199 = getelementptr inbounds i8, i8* %0, i32 12
  %200 = or i32 %198, %146
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %199, align 1
  %202 = lshr i32 %145, 2
  %203 = trunc i32 %202 to i8
  %204 = getelementptr inbounds i8, i8* %0, i32 13
  store i8 %203, i8* %204, align 1
  %205 = lshr i32 %145, 10
  %206 = trunc i32 %205 to i8
  %207 = getelementptr inbounds i8, i8* %0, i32 14
  store i8 %206, i8* %207, align 1
  %208 = lshr i32 %145, 18
  %209 = trunc i32 %208 to i8
  %210 = getelementptr inbounds i8, i8* %0, i32 15
  store i8 %209, i8* %210, align 1
  %211 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %159, align 1
  %214 = lshr i32 %212, 8
  %215 = trunc i32 %214 to i8
  %216 = getelementptr inbounds i8, i8* %0, i32 17
  store i8 %215, i8* %216, align 1
  %217 = lshr i32 %212, 16
  %218 = trunc i32 %217 to i8
  %219 = getelementptr inbounds i8, i8* %0, i32 18
  store i8 %218, i8* %219, align 1
  %220 = lshr i32 %212, 24
  %221 = getelementptr inbounds i8, i8* %0, i32 19
  %222 = or i32 %220, %149
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %221, align 1
  %224 = lshr i32 %148, 7
  %225 = trunc i32 %224 to i8
  %226 = getelementptr inbounds i8, i8* %0, i32 20
  store i8 %225, i8* %226, align 1
  %227 = lshr i32 %148, 15
  %228 = trunc i32 %227 to i8
  %229 = getelementptr inbounds i8, i8* %0, i32 21
  store i8 %228, i8* %229, align 1
  %230 = lshr i32 %148, 23
  %231 = getelementptr inbounds i8, i8* %0, i32 22
  %232 = or i32 %230, %152
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %231, align 1
  %234 = lshr i32 %151, 5
  %235 = trunc i32 %234 to i8
  %236 = getelementptr inbounds i8, i8* %0, i32 23
  store i8 %235, i8* %236, align 1
  %237 = lshr i32 %151, 13
  %238 = trunc i32 %237 to i8
  %239 = getelementptr inbounds i8, i8* %0, i32 24
  store i8 %238, i8* %239, align 1
  %240 = lshr i32 %151, 21
  %241 = getelementptr inbounds i8, i8* %0, i32 25
  %242 = or i32 %240, %155
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %241, align 1
  %244 = lshr i32 %154, 4
  %245 = trunc i32 %244 to i8
  %246 = getelementptr inbounds i8, i8* %0, i32 26
  store i8 %245, i8* %246, align 1
  %247 = lshr i32 %154, 12
  %248 = trunc i32 %247 to i8
  %249 = getelementptr inbounds i8, i8* %0, i32 27
  store i8 %248, i8* %249, align 1
  %250 = lshr i32 %154, 20
  %251 = getelementptr inbounds i8, i8* %0, i32 28
  %252 = or i32 %250, %158
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %251, align 1
  %254 = lshr i32 %157, 2
  %255 = trunc i32 %254 to i8
  %256 = getelementptr inbounds i8, i8* %0, i32 29
  store i8 %255, i8* %256, align 1
  %257 = lshr i32 %157, 10
  %258 = trunc i32 %257 to i8
  %259 = getelementptr inbounds i8, i8* %0, i32 30
  store i8 %258, i8* %259, align 1
  %260 = lshr i32 %157, 18
  %261 = trunc i32 %260 to i8
  %262 = getelementptr inbounds i8, i8* %0, i32 31
  store i8 %261, i8* %262, align 1
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [32 x i8], align 1
  %2 = alloca [32 x i8], align 1
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i32 0, i32 0
  call void @high_input_32(i8* nonnull %4) #5
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0
  call void @high_input_32(i8* nonnull %5) #5
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @low_input_32(i8* nonnull %6) #5
  %7 = call i32 @curve25519_donna(i8* nonnull %4, i8* nonnull %5, i8* nonnull %6)
  ret i32 0
}

declare dso_local void @high_input_32(i8*) local_unnamed_addr #2

declare dso_local void @low_input_32(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1) #3

; Function Attrs: noinline norecurse nounwind
define internal fastcc void @swap_conditional(i64* nocapture, i64* nocapture, i64) unnamed_addr #1 {
  %4 = trunc i64 %2 to i32
  %5 = sub i32 0, %4
  br label %6

; <label>:6:                                      ; preds = %8, %3
  %.0 = phi i32 [ 0, %3 ], [ %23, %8 ]
  %7 = icmp ult i32 %.0, 10
  br i1 %7, label %8, label %24

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds i64, i64* %0, i32 %.0
  %10 = load i64, i64* %9, align 4
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds i64, i64* %1, i32 %.0
  %13 = load i64, i64* %12, align 4
  %14 = xor i64 %10, %13
  %15 = trunc i64 %14 to i32
  %16 = and i32 %5, %15
  %17 = xor i32 %16, %11
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %9, align 4
  %19 = load i64, i64* %12, align 4
  %20 = trunc i64 %19 to i32
  %21 = xor i32 %16, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %12, align 4
  %23 = add i32 %.0, 1
  br label %6

; <label>:24:                                     ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @fmonty(i64* nocapture, i64* nocapture, i64* nocapture, i64* nocapture, i64* nocapture, i64* nocapture, i64* nocapture, i64* nocapture, i64* nocapture readonly) unnamed_addr #0 {
  %10 = alloca [10 x i64], align 8
  %11 = alloca [10 x i64], align 8
  %12 = alloca [19 x i64], align 8
  %13 = alloca [19 x i64], align 8
  %14 = alloca [19 x i64], align 8
  %15 = alloca [19 x i64], align 8
  %16 = alloca [19 x i64], align 8
  %17 = alloca [19 x i64], align 8
  %18 = alloca [19 x i64], align 8
  %19 = getelementptr inbounds [10 x i64], [10 x i64]* %10, i32 0, i32 0
  %20 = bitcast [10 x i64]* %10 to i8*
  %21 = bitcast i64* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %20, i8* align 4 %21, i32 80, i1 false)
  call fastcc void @fsum(i64* %4, i64* %5)
  call fastcc void @fdifference(i64* %5, i64* nonnull %19)
  %22 = getelementptr inbounds [10 x i64], [10 x i64]* %11, i32 0, i32 0
  %23 = bitcast [10 x i64]* %11 to i8*
  %24 = bitcast i64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %23, i8* align 4 %24, i32 80, i1 false)
  call fastcc void @fsum(i64* %6, i64* %7)
  call fastcc void @fdifference(i64* %7, i64* nonnull %22)
  %25 = getelementptr inbounds [19 x i64], [19 x i64]* %15, i32 0, i32 0
  call fastcc void @fproduct(i64* nonnull %25, i64* %6, i64* %5)
  %26 = getelementptr inbounds [19 x i64], [19 x i64]* %16, i32 0, i32 0
  call fastcc void @fproduct(i64* nonnull %26, i64* %4, i64* %7)
  call fastcc void @freduce_degree(i64* nonnull %25)
  call fastcc void @freduce_coefficients(i64* nonnull %25)
  call fastcc void @freduce_degree(i64* nonnull %26)
  call fastcc void @freduce_coefficients(i64* nonnull %26)
  %27 = bitcast [19 x i64]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %23, i8* align 8 %27, i32 80, i1 false)
  call fastcc void @fsum(i64* nonnull %25, i64* nonnull %26)
  call fastcc void @fdifference(i64* nonnull %26, i64* nonnull %22)
  %28 = getelementptr inbounds [19 x i64], [19 x i64]* %18, i32 0, i32 0
  call fastcc void @fsquare(i64* nonnull %28, i64* nonnull %25)
  %29 = getelementptr inbounds [19 x i64], [19 x i64]* %17, i32 0, i32 0
  call fastcc void @fsquare(i64* nonnull %29, i64* nonnull %26)
  call fastcc void @fproduct(i64* nonnull %26, i64* nonnull %29, i64* %8)
  call fastcc void @freduce_degree(i64* nonnull %26)
  call fastcc void @freduce_coefficients(i64* nonnull %26)
  %30 = bitcast i64* %2 to i8*
  %31 = bitcast [19 x i64]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %30, i8* align 8 %31, i32 80, i1 false)
  %32 = bitcast i64* %3 to i8*
  %33 = bitcast [19 x i64]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %32, i8* align 8 %33, i32 80, i1 false)
  %34 = getelementptr inbounds [19 x i64], [19 x i64]* %13, i32 0, i32 0
  call fastcc void @fsquare(i64* nonnull %34, i64* %4)
  %35 = getelementptr inbounds [19 x i64], [19 x i64]* %14, i32 0, i32 0
  call fastcc void @fsquare(i64* nonnull %35, i64* %5)
  call fastcc void @fproduct(i64* %0, i64* nonnull %34, i64* nonnull %35)
  call fastcc void @freduce_degree(i64* %0)
  call fastcc void @freduce_coefficients(i64* %0)
  call fastcc void @fdifference(i64* nonnull %35, i64* nonnull %34)
  %36 = getelementptr inbounds [19 x i64], [19 x i64]* %12, i32 0, i32 0
  %37 = getelementptr inbounds [19 x i64], [19 x i64]* %12, i32 0, i32 10
  %38 = bitcast i64* %37 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %38, i8 0, i32 72, i1 false)
  call fastcc void @fscalar_product(i64* nonnull %36, i64* nonnull %35)
  call fastcc void @freduce_coefficients(i64* nonnull %36)
  call fastcc void @fsum(i64* nonnull %36, i64* nonnull %34)
  call fastcc void @fproduct(i64* %1, i64* nonnull %35, i64* nonnull %36)
  call fastcc void @freduce_degree(i64* %1)
  call fastcc void @freduce_coefficients(i64* %1)
  ret void
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc void @fsum(i64* nocapture, i64* nocapture readonly) unnamed_addr #1 {
  br label %3

; <label>:3:                                      ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %17, %5 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %18

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds i64, i64* %0, i32 %.0
  %7 = load i64, i64* %6, align 4
  %8 = getelementptr inbounds i64, i64* %1, i32 %.0
  %9 = load i64, i64* %8, align 4
  %10 = add nsw i64 %7, %9
  store i64 %10, i64* %6, align 4
  %11 = or i32 %.0, 1
  %12 = getelementptr inbounds i64, i64* %0, i32 %11
  %13 = load i64, i64* %12, align 4
  %14 = getelementptr inbounds i64, i64* %1, i32 %11
  %15 = load i64, i64* %14, align 4
  %16 = add nsw i64 %13, %15
  store i64 %16, i64* %12, align 4
  %17 = add i32 %.0, 2
  br label %3

; <label>:18:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc void @fdifference(i64* nocapture, i64* nocapture readonly) unnamed_addr #1 {
  br label %3

; <label>:3:                                      ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds i64, i64* %1, i32 %.0
  %7 = load i64, i64* %6, align 4
  %8 = getelementptr inbounds i64, i64* %0, i32 %.0
  %9 = load i64, i64* %8, align 4
  %10 = sub nsw i64 %7, %9
  store i64 %10, i64* %8, align 4
  %11 = add i32 %.0, 1
  br label %3

; <label>:12:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc void @fproduct(i64* nocapture, i64* nocapture readonly, i64* nocapture readonly) unnamed_addr #1 {
  %4 = load i64, i64* %1, align 4
  %5 = shl i64 %4, 32
  %6 = ashr exact i64 %5, 32
  %7 = load i64, i64* %2, align 4
  %8 = shl i64 %7, 32
  %9 = ashr exact i64 %8, 32
  %10 = mul nsw i64 %6, %9
  store i64 %10, i64* %0, align 4
  %11 = load i64, i64* %1, align 4
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i64, i64* %2, i32 1
  %15 = load i64, i64* %14, align 4
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  %18 = mul nsw i64 %13, %17
  %19 = getelementptr inbounds i64, i64* %1, i32 1
  %20 = load i64, i64* %19, align 4
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = load i64, i64* %2, align 4
  %24 = shl i64 %23, 32
  %25 = ashr exact i64 %24, 32
  %26 = mul nsw i64 %22, %25
  %27 = add nsw i64 %18, %26
  %28 = getelementptr inbounds i64, i64* %0, i32 1
  store i64 %27, i64* %28, align 4
  %29 = load i64, i64* %19, align 4
  %30 = shl i64 %29, 32
  %31 = ashr exact i64 %30, 31
  %32 = load i64, i64* %14, align 4
  %33 = shl i64 %32, 32
  %34 = ashr exact i64 %33, 32
  %35 = mul nsw i64 %31, %34
  %36 = load i64, i64* %1, align 4
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds i64, i64* %2, i32 2
  %40 = load i64, i64* %39, align 4
  %41 = shl i64 %40, 32
  %42 = ashr exact i64 %41, 32
  %43 = mul nsw i64 %38, %42
  %44 = add nsw i64 %35, %43
  %45 = getelementptr inbounds i64, i64* %1, i32 2
  %46 = load i64, i64* %45, align 4
  %47 = shl i64 %46, 32
  %48 = ashr exact i64 %47, 32
  %49 = load i64, i64* %2, align 4
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = mul nsw i64 %48, %51
  %53 = add nsw i64 %44, %52
  %54 = getelementptr inbounds i64, i64* %0, i32 2
  store i64 %53, i64* %54, align 4
  %55 = load i64, i64* %19, align 4
  %56 = shl i64 %55, 32
  %57 = ashr exact i64 %56, 32
  %58 = load i64, i64* %39, align 4
  %59 = shl i64 %58, 32
  %60 = ashr exact i64 %59, 32
  %61 = mul nsw i64 %57, %60
  %62 = load i64, i64* %45, align 4
  %63 = shl i64 %62, 32
  %64 = ashr exact i64 %63, 32
  %65 = load i64, i64* %14, align 4
  %66 = shl i64 %65, 32
  %67 = ashr exact i64 %66, 32
  %68 = mul nsw i64 %64, %67
  %69 = add nsw i64 %61, %68
  %70 = load i64, i64* %1, align 4
  %71 = shl i64 %70, 32
  %72 = ashr exact i64 %71, 32
  %73 = getelementptr inbounds i64, i64* %2, i32 3
  %74 = load i64, i64* %73, align 4
  %75 = shl i64 %74, 32
  %76 = ashr exact i64 %75, 32
  %77 = mul nsw i64 %72, %76
  %78 = add nsw i64 %69, %77
  %79 = getelementptr inbounds i64, i64* %1, i32 3
  %80 = load i64, i64* %79, align 4
  %81 = shl i64 %80, 32
  %82 = ashr exact i64 %81, 32
  %83 = load i64, i64* %2, align 4
  %84 = shl i64 %83, 32
  %85 = ashr exact i64 %84, 32
  %86 = mul nsw i64 %82, %85
  %87 = add nsw i64 %78, %86
  %88 = getelementptr inbounds i64, i64* %0, i32 3
  store i64 %87, i64* %88, align 4
  %89 = load i64, i64* %45, align 4
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  %92 = load i64, i64* %39, align 4
  %93 = shl i64 %92, 32
  %94 = ashr exact i64 %93, 32
  %95 = mul nsw i64 %91, %94
  %96 = load i64, i64* %19, align 4
  %97 = shl i64 %96, 32
  %98 = ashr exact i64 %97, 32
  %99 = load i64, i64* %73, align 4
  %100 = shl i64 %99, 32
  %101 = ashr exact i64 %100, 32
  %102 = mul nsw i64 %98, %101
  %103 = load i64, i64* %79, align 4
  %104 = shl i64 %103, 32
  %105 = ashr exact i64 %104, 32
  %106 = load i64, i64* %14, align 4
  %107 = shl i64 %106, 32
  %108 = ashr exact i64 %107, 32
  %109 = mul nsw i64 %105, %108
  %110 = add nsw i64 %102, %109
  %111 = shl nsw i64 %110, 1
  %112 = add nsw i64 %95, %111
  %113 = load i64, i64* %1, align 4
  %114 = shl i64 %113, 32
  %115 = ashr exact i64 %114, 32
  %116 = getelementptr inbounds i64, i64* %2, i32 4
  %117 = load i64, i64* %116, align 4
  %118 = shl i64 %117, 32
  %119 = ashr exact i64 %118, 32
  %120 = mul nsw i64 %115, %119
  %121 = add nsw i64 %112, %120
  %122 = getelementptr inbounds i64, i64* %1, i32 4
  %123 = load i64, i64* %122, align 4
  %124 = shl i64 %123, 32
  %125 = ashr exact i64 %124, 32
  %126 = load i64, i64* %2, align 4
  %127 = shl i64 %126, 32
  %128 = ashr exact i64 %127, 32
  %129 = mul nsw i64 %125, %128
  %130 = add nsw i64 %121, %129
  %131 = getelementptr inbounds i64, i64* %0, i32 4
  store i64 %130, i64* %131, align 4
  %132 = load i64, i64* %45, align 4
  %133 = shl i64 %132, 32
  %134 = ashr exact i64 %133, 32
  %135 = load i64, i64* %73, align 4
  %136 = shl i64 %135, 32
  %137 = ashr exact i64 %136, 32
  %138 = mul nsw i64 %134, %137
  %139 = load i64, i64* %79, align 4
  %140 = shl i64 %139, 32
  %141 = ashr exact i64 %140, 32
  %142 = load i64, i64* %39, align 4
  %143 = shl i64 %142, 32
  %144 = ashr exact i64 %143, 32
  %145 = mul nsw i64 %141, %144
  %146 = add nsw i64 %138, %145
  %147 = load i64, i64* %19, align 4
  %148 = shl i64 %147, 32
  %149 = ashr exact i64 %148, 32
  %150 = load i64, i64* %116, align 4
  %151 = shl i64 %150, 32
  %152 = ashr exact i64 %151, 32
  %153 = mul nsw i64 %149, %152
  %154 = add nsw i64 %146, %153
  %155 = load i64, i64* %122, align 4
  %156 = shl i64 %155, 32
  %157 = ashr exact i64 %156, 32
  %158 = load i64, i64* %14, align 4
  %159 = shl i64 %158, 32
  %160 = ashr exact i64 %159, 32
  %161 = mul nsw i64 %157, %160
  %162 = add nsw i64 %154, %161
  %163 = load i64, i64* %1, align 4
  %164 = shl i64 %163, 32
  %165 = ashr exact i64 %164, 32
  %166 = getelementptr inbounds i64, i64* %2, i32 5
  %167 = load i64, i64* %166, align 4
  %168 = shl i64 %167, 32
  %169 = ashr exact i64 %168, 32
  %170 = mul nsw i64 %165, %169
  %171 = add nsw i64 %162, %170
  %172 = getelementptr inbounds i64, i64* %1, i32 5
  %173 = load i64, i64* %172, align 4
  %174 = shl i64 %173, 32
  %175 = ashr exact i64 %174, 32
  %176 = load i64, i64* %2, align 4
  %177 = shl i64 %176, 32
  %178 = ashr exact i64 %177, 32
  %179 = mul nsw i64 %175, %178
  %180 = add nsw i64 %171, %179
  %181 = getelementptr inbounds i64, i64* %0, i32 5
  store i64 %180, i64* %181, align 4
  %182 = load i64, i64* %79, align 4
  %183 = shl i64 %182, 32
  %184 = ashr exact i64 %183, 32
  %185 = load i64, i64* %73, align 4
  %186 = shl i64 %185, 32
  %187 = ashr exact i64 %186, 32
  %188 = mul nsw i64 %184, %187
  %189 = load i64, i64* %19, align 4
  %190 = shl i64 %189, 32
  %191 = ashr exact i64 %190, 32
  %192 = load i64, i64* %166, align 4
  %193 = shl i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = mul nsw i64 %191, %194
  %196 = add nsw i64 %188, %195
  %197 = load i64, i64* %172, align 4
  %198 = shl i64 %197, 32
  %199 = ashr exact i64 %198, 32
  %200 = load i64, i64* %14, align 4
  %201 = shl i64 %200, 32
  %202 = ashr exact i64 %201, 32
  %203 = mul nsw i64 %199, %202
  %204 = add nsw i64 %196, %203
  %205 = shl nsw i64 %204, 1
  %206 = load i64, i64* %45, align 4
  %207 = shl i64 %206, 32
  %208 = ashr exact i64 %207, 32
  %209 = load i64, i64* %116, align 4
  %210 = shl i64 %209, 32
  %211 = ashr exact i64 %210, 32
  %212 = mul nsw i64 %208, %211
  %213 = add nsw i64 %205, %212
  %214 = load i64, i64* %122, align 4
  %215 = shl i64 %214, 32
  %216 = ashr exact i64 %215, 32
  %217 = load i64, i64* %39, align 4
  %218 = shl i64 %217, 32
  %219 = ashr exact i64 %218, 32
  %220 = mul nsw i64 %216, %219
  %221 = add nsw i64 %213, %220
  %222 = load i64, i64* %1, align 4
  %223 = shl i64 %222, 32
  %224 = ashr exact i64 %223, 32
  %225 = getelementptr inbounds i64, i64* %2, i32 6
  %226 = load i64, i64* %225, align 4
  %227 = shl i64 %226, 32
  %228 = ashr exact i64 %227, 32
  %229 = mul nsw i64 %224, %228
  %230 = add nsw i64 %221, %229
  %231 = getelementptr inbounds i64, i64* %1, i32 6
  %232 = load i64, i64* %231, align 4
  %233 = shl i64 %232, 32
  %234 = ashr exact i64 %233, 32
  %235 = load i64, i64* %2, align 4
  %236 = shl i64 %235, 32
  %237 = ashr exact i64 %236, 32
  %238 = mul nsw i64 %234, %237
  %239 = add nsw i64 %230, %238
  %240 = getelementptr inbounds i64, i64* %0, i32 6
  store i64 %239, i64* %240, align 4
  %241 = load i64, i64* %79, align 4
  %242 = shl i64 %241, 32
  %243 = ashr exact i64 %242, 32
  %244 = load i64, i64* %116, align 4
  %245 = shl i64 %244, 32
  %246 = ashr exact i64 %245, 32
  %247 = mul nsw i64 %243, %246
  %248 = load i64, i64* %122, align 4
  %249 = shl i64 %248, 32
  %250 = ashr exact i64 %249, 32
  %251 = load i64, i64* %73, align 4
  %252 = shl i64 %251, 32
  %253 = ashr exact i64 %252, 32
  %254 = mul nsw i64 %250, %253
  %255 = add nsw i64 %247, %254
  %256 = load i64, i64* %45, align 4
  %257 = shl i64 %256, 32
  %258 = ashr exact i64 %257, 32
  %259 = load i64, i64* %166, align 4
  %260 = shl i64 %259, 32
  %261 = ashr exact i64 %260, 32
  %262 = mul nsw i64 %258, %261
  %263 = add nsw i64 %255, %262
  %264 = load i64, i64* %172, align 4
  %265 = shl i64 %264, 32
  %266 = ashr exact i64 %265, 32
  %267 = load i64, i64* %39, align 4
  %268 = shl i64 %267, 32
  %269 = ashr exact i64 %268, 32
  %270 = mul nsw i64 %266, %269
  %271 = add nsw i64 %263, %270
  %272 = load i64, i64* %19, align 4
  %273 = shl i64 %272, 32
  %274 = ashr exact i64 %273, 32
  %275 = load i64, i64* %225, align 4
  %276 = shl i64 %275, 32
  %277 = ashr exact i64 %276, 32
  %278 = mul nsw i64 %274, %277
  %279 = add nsw i64 %271, %278
  %280 = load i64, i64* %231, align 4
  %281 = shl i64 %280, 32
  %282 = ashr exact i64 %281, 32
  %283 = load i64, i64* %14, align 4
  %284 = shl i64 %283, 32
  %285 = ashr exact i64 %284, 32
  %286 = mul nsw i64 %282, %285
  %287 = add nsw i64 %279, %286
  %288 = load i64, i64* %1, align 4
  %289 = shl i64 %288, 32
  %290 = ashr exact i64 %289, 32
  %291 = getelementptr inbounds i64, i64* %2, i32 7
  %292 = load i64, i64* %291, align 4
  %293 = shl i64 %292, 32
  %294 = ashr exact i64 %293, 32
  %295 = mul nsw i64 %290, %294
  %296 = add nsw i64 %287, %295
  %297 = getelementptr inbounds i64, i64* %1, i32 7
  %298 = load i64, i64* %297, align 4
  %299 = shl i64 %298, 32
  %300 = ashr exact i64 %299, 32
  %301 = load i64, i64* %2, align 4
  %302 = shl i64 %301, 32
  %303 = ashr exact i64 %302, 32
  %304 = mul nsw i64 %300, %303
  %305 = add nsw i64 %296, %304
  %306 = getelementptr inbounds i64, i64* %0, i32 7
  store i64 %305, i64* %306, align 4
  %307 = load i64, i64* %122, align 4
  %308 = shl i64 %307, 32
  %309 = ashr exact i64 %308, 32
  %310 = load i64, i64* %116, align 4
  %311 = shl i64 %310, 32
  %312 = ashr exact i64 %311, 32
  %313 = mul nsw i64 %309, %312
  %314 = load i64, i64* %79, align 4
  %315 = shl i64 %314, 32
  %316 = ashr exact i64 %315, 32
  %317 = load i64, i64* %166, align 4
  %318 = shl i64 %317, 32
  %319 = ashr exact i64 %318, 32
  %320 = mul nsw i64 %316, %319
  %321 = load i64, i64* %172, align 4
  %322 = shl i64 %321, 32
  %323 = ashr exact i64 %322, 32
  %324 = load i64, i64* %73, align 4
  %325 = shl i64 %324, 32
  %326 = ashr exact i64 %325, 32
  %327 = mul nsw i64 %323, %326
  %328 = add nsw i64 %320, %327
  %329 = load i64, i64* %19, align 4
  %330 = shl i64 %329, 32
  %331 = ashr exact i64 %330, 32
  %332 = load i64, i64* %291, align 4
  %333 = shl i64 %332, 32
  %334 = ashr exact i64 %333, 32
  %335 = mul nsw i64 %331, %334
  %336 = add nsw i64 %328, %335
  %337 = load i64, i64* %297, align 4
  %338 = shl i64 %337, 32
  %339 = ashr exact i64 %338, 32
  %340 = load i64, i64* %14, align 4
  %341 = shl i64 %340, 32
  %342 = ashr exact i64 %341, 32
  %343 = mul nsw i64 %339, %342
  %344 = add nsw i64 %336, %343
  %345 = shl nsw i64 %344, 1
  %346 = add nsw i64 %313, %345
  %347 = load i64, i64* %45, align 4
  %348 = shl i64 %347, 32
  %349 = ashr exact i64 %348, 32
  %350 = load i64, i64* %225, align 4
  %351 = shl i64 %350, 32
  %352 = ashr exact i64 %351, 32
  %353 = mul nsw i64 %349, %352
  %354 = add nsw i64 %346, %353
  %355 = load i64, i64* %231, align 4
  %356 = shl i64 %355, 32
  %357 = ashr exact i64 %356, 32
  %358 = load i64, i64* %39, align 4
  %359 = shl i64 %358, 32
  %360 = ashr exact i64 %359, 32
  %361 = mul nsw i64 %357, %360
  %362 = add nsw i64 %354, %361
  %363 = load i64, i64* %1, align 4
  %364 = shl i64 %363, 32
  %365 = ashr exact i64 %364, 32
  %366 = getelementptr inbounds i64, i64* %2, i32 8
  %367 = load i64, i64* %366, align 4
  %368 = shl i64 %367, 32
  %369 = ashr exact i64 %368, 32
  %370 = mul nsw i64 %365, %369
  %371 = add nsw i64 %362, %370
  %372 = getelementptr inbounds i64, i64* %1, i32 8
  %373 = load i64, i64* %372, align 4
  %374 = shl i64 %373, 32
  %375 = ashr exact i64 %374, 32
  %376 = load i64, i64* %2, align 4
  %377 = shl i64 %376, 32
  %378 = ashr exact i64 %377, 32
  %379 = mul nsw i64 %375, %378
  %380 = add nsw i64 %371, %379
  %381 = getelementptr inbounds i64, i64* %0, i32 8
  store i64 %380, i64* %381, align 4
  %382 = load i64, i64* %122, align 4
  %383 = shl i64 %382, 32
  %384 = ashr exact i64 %383, 32
  %385 = load i64, i64* %166, align 4
  %386 = shl i64 %385, 32
  %387 = ashr exact i64 %386, 32
  %388 = mul nsw i64 %384, %387
  %389 = load i64, i64* %172, align 4
  %390 = shl i64 %389, 32
  %391 = ashr exact i64 %390, 32
  %392 = load i64, i64* %116, align 4
  %393 = shl i64 %392, 32
  %394 = ashr exact i64 %393, 32
  %395 = mul nsw i64 %391, %394
  %396 = add nsw i64 %388, %395
  %397 = load i64, i64* %79, align 4
  %398 = shl i64 %397, 32
  %399 = ashr exact i64 %398, 32
  %400 = load i64, i64* %225, align 4
  %401 = shl i64 %400, 32
  %402 = ashr exact i64 %401, 32
  %403 = mul nsw i64 %399, %402
  %404 = add nsw i64 %396, %403
  %405 = load i64, i64* %231, align 4
  %406 = shl i64 %405, 32
  %407 = ashr exact i64 %406, 32
  %408 = load i64, i64* %73, align 4
  %409 = shl i64 %408, 32
  %410 = ashr exact i64 %409, 32
  %411 = mul nsw i64 %407, %410
  %412 = add nsw i64 %404, %411
  %413 = load i64, i64* %45, align 4
  %414 = shl i64 %413, 32
  %415 = ashr exact i64 %414, 32
  %416 = load i64, i64* %291, align 4
  %417 = shl i64 %416, 32
  %418 = ashr exact i64 %417, 32
  %419 = mul nsw i64 %415, %418
  %420 = add nsw i64 %412, %419
  %421 = load i64, i64* %297, align 4
  %422 = shl i64 %421, 32
  %423 = ashr exact i64 %422, 32
  %424 = load i64, i64* %39, align 4
  %425 = shl i64 %424, 32
  %426 = ashr exact i64 %425, 32
  %427 = mul nsw i64 %423, %426
  %428 = add nsw i64 %420, %427
  %429 = load i64, i64* %19, align 4
  %430 = shl i64 %429, 32
  %431 = ashr exact i64 %430, 32
  %432 = load i64, i64* %366, align 4
  %433 = shl i64 %432, 32
  %434 = ashr exact i64 %433, 32
  %435 = mul nsw i64 %431, %434
  %436 = add nsw i64 %428, %435
  %437 = load i64, i64* %372, align 4
  %438 = shl i64 %437, 32
  %439 = ashr exact i64 %438, 32
  %440 = load i64, i64* %14, align 4
  %441 = shl i64 %440, 32
  %442 = ashr exact i64 %441, 32
  %443 = mul nsw i64 %439, %442
  %444 = add nsw i64 %436, %443
  %445 = load i64, i64* %1, align 4
  %446 = shl i64 %445, 32
  %447 = ashr exact i64 %446, 32
  %448 = getelementptr inbounds i64, i64* %2, i32 9
  %449 = load i64, i64* %448, align 4
  %450 = shl i64 %449, 32
  %451 = ashr exact i64 %450, 32
  %452 = mul nsw i64 %447, %451
  %453 = add nsw i64 %444, %452
  %454 = getelementptr inbounds i64, i64* %1, i32 9
  %455 = load i64, i64* %454, align 4
  %456 = shl i64 %455, 32
  %457 = ashr exact i64 %456, 32
  %458 = load i64, i64* %2, align 4
  %459 = shl i64 %458, 32
  %460 = ashr exact i64 %459, 32
  %461 = mul nsw i64 %457, %460
  %462 = add nsw i64 %453, %461
  %463 = getelementptr inbounds i64, i64* %0, i32 9
  store i64 %462, i64* %463, align 4
  %464 = load i64, i64* %172, align 4
  %465 = shl i64 %464, 32
  %466 = ashr exact i64 %465, 32
  %467 = load i64, i64* %166, align 4
  %468 = shl i64 %467, 32
  %469 = ashr exact i64 %468, 32
  %470 = mul nsw i64 %466, %469
  %471 = load i64, i64* %79, align 4
  %472 = shl i64 %471, 32
  %473 = ashr exact i64 %472, 32
  %474 = load i64, i64* %291, align 4
  %475 = shl i64 %474, 32
  %476 = ashr exact i64 %475, 32
  %477 = mul nsw i64 %473, %476
  %478 = add nsw i64 %470, %477
  %479 = load i64, i64* %297, align 4
  %480 = shl i64 %479, 32
  %481 = ashr exact i64 %480, 32
  %482 = load i64, i64* %73, align 4
  %483 = shl i64 %482, 32
  %484 = ashr exact i64 %483, 32
  %485 = mul nsw i64 %481, %484
  %486 = add nsw i64 %478, %485
  %487 = load i64, i64* %19, align 4
  %488 = shl i64 %487, 32
  %489 = ashr exact i64 %488, 32
  %490 = load i64, i64* %448, align 4
  %491 = shl i64 %490, 32
  %492 = ashr exact i64 %491, 32
  %493 = mul nsw i64 %489, %492
  %494 = add nsw i64 %486, %493
  %495 = load i64, i64* %454, align 4
  %496 = shl i64 %495, 32
  %497 = ashr exact i64 %496, 32
  %498 = load i64, i64* %14, align 4
  %499 = shl i64 %498, 32
  %500 = ashr exact i64 %499, 32
  %501 = mul nsw i64 %497, %500
  %502 = add nsw i64 %494, %501
  %503 = shl nsw i64 %502, 1
  %504 = load i64, i64* %122, align 4
  %505 = shl i64 %504, 32
  %506 = ashr exact i64 %505, 32
  %507 = load i64, i64* %225, align 4
  %508 = shl i64 %507, 32
  %509 = ashr exact i64 %508, 32
  %510 = mul nsw i64 %506, %509
  %511 = add nsw i64 %503, %510
  %512 = load i64, i64* %231, align 4
  %513 = shl i64 %512, 32
  %514 = ashr exact i64 %513, 32
  %515 = load i64, i64* %116, align 4
  %516 = shl i64 %515, 32
  %517 = ashr exact i64 %516, 32
  %518 = mul nsw i64 %514, %517
  %519 = add nsw i64 %511, %518
  %520 = load i64, i64* %45, align 4
  %521 = shl i64 %520, 32
  %522 = ashr exact i64 %521, 32
  %523 = load i64, i64* %366, align 4
  %524 = shl i64 %523, 32
  %525 = ashr exact i64 %524, 32
  %526 = mul nsw i64 %522, %525
  %527 = add nsw i64 %519, %526
  %528 = load i64, i64* %372, align 4
  %529 = shl i64 %528, 32
  %530 = ashr exact i64 %529, 32
  %531 = load i64, i64* %39, align 4
  %532 = shl i64 %531, 32
  %533 = ashr exact i64 %532, 32
  %534 = mul nsw i64 %530, %533
  %535 = add nsw i64 %527, %534
  %536 = getelementptr inbounds i64, i64* %0, i32 10
  store i64 %535, i64* %536, align 4
  %537 = load i64, i64* %172, align 4
  %538 = shl i64 %537, 32
  %539 = ashr exact i64 %538, 32
  %540 = load i64, i64* %225, align 4
  %541 = shl i64 %540, 32
  %542 = ashr exact i64 %541, 32
  %543 = mul nsw i64 %539, %542
  %544 = load i64, i64* %231, align 4
  %545 = shl i64 %544, 32
  %546 = ashr exact i64 %545, 32
  %547 = load i64, i64* %166, align 4
  %548 = shl i64 %547, 32
  %549 = ashr exact i64 %548, 32
  %550 = mul nsw i64 %546, %549
  %551 = add nsw i64 %543, %550
  %552 = load i64, i64* %122, align 4
  %553 = shl i64 %552, 32
  %554 = ashr exact i64 %553, 32
  %555 = load i64, i64* %291, align 4
  %556 = shl i64 %555, 32
  %557 = ashr exact i64 %556, 32
  %558 = mul nsw i64 %554, %557
  %559 = add nsw i64 %551, %558
  %560 = load i64, i64* %297, align 4
  %561 = shl i64 %560, 32
  %562 = ashr exact i64 %561, 32
  %563 = load i64, i64* %116, align 4
  %564 = shl i64 %563, 32
  %565 = ashr exact i64 %564, 32
  %566 = mul nsw i64 %562, %565
  %567 = add nsw i64 %559, %566
  %568 = load i64, i64* %79, align 4
  %569 = shl i64 %568, 32
  %570 = ashr exact i64 %569, 32
  %571 = load i64, i64* %366, align 4
  %572 = shl i64 %571, 32
  %573 = ashr exact i64 %572, 32
  %574 = mul nsw i64 %570, %573
  %575 = add nsw i64 %567, %574
  %576 = load i64, i64* %372, align 4
  %577 = shl i64 %576, 32
  %578 = ashr exact i64 %577, 32
  %579 = load i64, i64* %73, align 4
  %580 = shl i64 %579, 32
  %581 = ashr exact i64 %580, 32
  %582 = mul nsw i64 %578, %581
  %583 = add nsw i64 %575, %582
  %584 = load i64, i64* %45, align 4
  %585 = shl i64 %584, 32
  %586 = ashr exact i64 %585, 32
  %587 = load i64, i64* %448, align 4
  %588 = shl i64 %587, 32
  %589 = ashr exact i64 %588, 32
  %590 = mul nsw i64 %586, %589
  %591 = add nsw i64 %583, %590
  %592 = load i64, i64* %454, align 4
  %593 = shl i64 %592, 32
  %594 = ashr exact i64 %593, 32
  %595 = load i64, i64* %39, align 4
  %596 = shl i64 %595, 32
  %597 = ashr exact i64 %596, 32
  %598 = mul nsw i64 %594, %597
  %599 = add nsw i64 %591, %598
  %600 = getelementptr inbounds i64, i64* %0, i32 11
  store i64 %599, i64* %600, align 4
  %601 = load i64, i64* %231, align 4
  %602 = shl i64 %601, 32
  %603 = ashr exact i64 %602, 32
  %604 = load i64, i64* %225, align 4
  %605 = shl i64 %604, 32
  %606 = ashr exact i64 %605, 32
  %607 = mul nsw i64 %603, %606
  %608 = load i64, i64* %172, align 4
  %609 = shl i64 %608, 32
  %610 = ashr exact i64 %609, 32
  %611 = load i64, i64* %291, align 4
  %612 = shl i64 %611, 32
  %613 = ashr exact i64 %612, 32
  %614 = mul nsw i64 %610, %613
  %615 = load i64, i64* %297, align 4
  %616 = shl i64 %615, 32
  %617 = ashr exact i64 %616, 32
  %618 = load i64, i64* %166, align 4
  %619 = shl i64 %618, 32
  %620 = ashr exact i64 %619, 32
  %621 = mul nsw i64 %617, %620
  %622 = add nsw i64 %614, %621
  %623 = load i64, i64* %79, align 4
  %624 = shl i64 %623, 32
  %625 = ashr exact i64 %624, 32
  %626 = load i64, i64* %448, align 4
  %627 = shl i64 %626, 32
  %628 = ashr exact i64 %627, 32
  %629 = mul nsw i64 %625, %628
  %630 = add nsw i64 %622, %629
  %631 = load i64, i64* %454, align 4
  %632 = shl i64 %631, 32
  %633 = ashr exact i64 %632, 32
  %634 = load i64, i64* %73, align 4
  %635 = shl i64 %634, 32
  %636 = ashr exact i64 %635, 32
  %637 = mul nsw i64 %633, %636
  %638 = add nsw i64 %630, %637
  %639 = shl nsw i64 %638, 1
  %640 = add nsw i64 %607, %639
  %641 = load i64, i64* %122, align 4
  %642 = shl i64 %641, 32
  %643 = ashr exact i64 %642, 32
  %644 = load i64, i64* %366, align 4
  %645 = shl i64 %644, 32
  %646 = ashr exact i64 %645, 32
  %647 = mul nsw i64 %643, %646
  %648 = add nsw i64 %640, %647
  %649 = load i64, i64* %372, align 4
  %650 = shl i64 %649, 32
  %651 = ashr exact i64 %650, 32
  %652 = load i64, i64* %116, align 4
  %653 = shl i64 %652, 32
  %654 = ashr exact i64 %653, 32
  %655 = mul nsw i64 %651, %654
  %656 = add nsw i64 %648, %655
  %657 = getelementptr inbounds i64, i64* %0, i32 12
  store i64 %656, i64* %657, align 4
  %658 = load i64, i64* %231, align 4
  %659 = shl i64 %658, 32
  %660 = ashr exact i64 %659, 32
  %661 = load i64, i64* %291, align 4
  %662 = shl i64 %661, 32
  %663 = ashr exact i64 %662, 32
  %664 = mul nsw i64 %660, %663
  %665 = load i64, i64* %297, align 4
  %666 = shl i64 %665, 32
  %667 = ashr exact i64 %666, 32
  %668 = load i64, i64* %225, align 4
  %669 = shl i64 %668, 32
  %670 = ashr exact i64 %669, 32
  %671 = mul nsw i64 %667, %670
  %672 = add nsw i64 %664, %671
  %673 = load i64, i64* %172, align 4
  %674 = shl i64 %673, 32
  %675 = ashr exact i64 %674, 32
  %676 = load i64, i64* %366, align 4
  %677 = shl i64 %676, 32
  %678 = ashr exact i64 %677, 32
  %679 = mul nsw i64 %675, %678
  %680 = add nsw i64 %672, %679
  %681 = load i64, i64* %372, align 4
  %682 = shl i64 %681, 32
  %683 = ashr exact i64 %682, 32
  %684 = load i64, i64* %166, align 4
  %685 = shl i64 %684, 32
  %686 = ashr exact i64 %685, 32
  %687 = mul nsw i64 %683, %686
  %688 = add nsw i64 %680, %687
  %689 = load i64, i64* %122, align 4
  %690 = shl i64 %689, 32
  %691 = ashr exact i64 %690, 32
  %692 = load i64, i64* %448, align 4
  %693 = shl i64 %692, 32
  %694 = ashr exact i64 %693, 32
  %695 = mul nsw i64 %691, %694
  %696 = add nsw i64 %688, %695
  %697 = load i64, i64* %454, align 4
  %698 = shl i64 %697, 32
  %699 = ashr exact i64 %698, 32
  %700 = load i64, i64* %116, align 4
  %701 = shl i64 %700, 32
  %702 = ashr exact i64 %701, 32
  %703 = mul nsw i64 %699, %702
  %704 = add nsw i64 %696, %703
  %705 = getelementptr inbounds i64, i64* %0, i32 13
  store i64 %704, i64* %705, align 4
  %706 = load i64, i64* %297, align 4
  %707 = shl i64 %706, 32
  %708 = ashr exact i64 %707, 32
  %709 = load i64, i64* %291, align 4
  %710 = shl i64 %709, 32
  %711 = ashr exact i64 %710, 32
  %712 = mul nsw i64 %708, %711
  %713 = load i64, i64* %172, align 4
  %714 = shl i64 %713, 32
  %715 = ashr exact i64 %714, 32
  %716 = load i64, i64* %448, align 4
  %717 = shl i64 %716, 32
  %718 = ashr exact i64 %717, 32
  %719 = mul nsw i64 %715, %718
  %720 = add nsw i64 %712, %719
  %721 = load i64, i64* %454, align 4
  %722 = shl i64 %721, 32
  %723 = ashr exact i64 %722, 32
  %724 = load i64, i64* %166, align 4
  %725 = shl i64 %724, 32
  %726 = ashr exact i64 %725, 32
  %727 = mul nsw i64 %723, %726
  %728 = add nsw i64 %720, %727
  %729 = shl nsw i64 %728, 1
  %730 = load i64, i64* %231, align 4
  %731 = shl i64 %730, 32
  %732 = ashr exact i64 %731, 32
  %733 = load i64, i64* %366, align 4
  %734 = shl i64 %733, 32
  %735 = ashr exact i64 %734, 32
  %736 = mul nsw i64 %732, %735
  %737 = add nsw i64 %729, %736
  %738 = load i64, i64* %372, align 4
  %739 = shl i64 %738, 32
  %740 = ashr exact i64 %739, 32
  %741 = load i64, i64* %225, align 4
  %742 = shl i64 %741, 32
  %743 = ashr exact i64 %742, 32
  %744 = mul nsw i64 %740, %743
  %745 = add nsw i64 %737, %744
  %746 = getelementptr inbounds i64, i64* %0, i32 14
  store i64 %745, i64* %746, align 4
  %747 = load i64, i64* %297, align 4
  %748 = shl i64 %747, 32
  %749 = ashr exact i64 %748, 32
  %750 = load i64, i64* %366, align 4
  %751 = shl i64 %750, 32
  %752 = ashr exact i64 %751, 32
  %753 = mul nsw i64 %749, %752
  %754 = load i64, i64* %372, align 4
  %755 = shl i64 %754, 32
  %756 = ashr exact i64 %755, 32
  %757 = load i64, i64* %291, align 4
  %758 = shl i64 %757, 32
  %759 = ashr exact i64 %758, 32
  %760 = mul nsw i64 %756, %759
  %761 = add nsw i64 %753, %760
  %762 = load i64, i64* %231, align 4
  %763 = shl i64 %762, 32
  %764 = ashr exact i64 %763, 32
  %765 = load i64, i64* %448, align 4
  %766 = shl i64 %765, 32
  %767 = ashr exact i64 %766, 32
  %768 = mul nsw i64 %764, %767
  %769 = add nsw i64 %761, %768
  %770 = load i64, i64* %454, align 4
  %771 = shl i64 %770, 32
  %772 = ashr exact i64 %771, 32
  %773 = load i64, i64* %225, align 4
  %774 = shl i64 %773, 32
  %775 = ashr exact i64 %774, 32
  %776 = mul nsw i64 %772, %775
  %777 = add nsw i64 %769, %776
  %778 = getelementptr inbounds i64, i64* %0, i32 15
  store i64 %777, i64* %778, align 4
  %779 = load i64, i64* %372, align 4
  %780 = shl i64 %779, 32
  %781 = ashr exact i64 %780, 32
  %782 = load i64, i64* %366, align 4
  %783 = shl i64 %782, 32
  %784 = ashr exact i64 %783, 32
  %785 = mul nsw i64 %781, %784
  %786 = load i64, i64* %297, align 4
  %787 = shl i64 %786, 32
  %788 = ashr exact i64 %787, 32
  %789 = load i64, i64* %448, align 4
  %790 = shl i64 %789, 32
  %791 = ashr exact i64 %790, 32
  %792 = mul nsw i64 %788, %791
  %793 = load i64, i64* %454, align 4
  %794 = shl i64 %793, 32
  %795 = ashr exact i64 %794, 32
  %796 = load i64, i64* %291, align 4
  %797 = shl i64 %796, 32
  %798 = ashr exact i64 %797, 32
  %799 = mul nsw i64 %795, %798
  %800 = add nsw i64 %792, %799
  %801 = shl nsw i64 %800, 1
  %802 = add nsw i64 %785, %801
  %803 = getelementptr inbounds i64, i64* %0, i32 16
  store i64 %802, i64* %803, align 4
  %804 = load i64, i64* %372, align 4
  %805 = shl i64 %804, 32
  %806 = ashr exact i64 %805, 32
  %807 = load i64, i64* %448, align 4
  %808 = shl i64 %807, 32
  %809 = ashr exact i64 %808, 32
  %810 = mul nsw i64 %806, %809
  %811 = load i64, i64* %454, align 4
  %812 = shl i64 %811, 32
  %813 = ashr exact i64 %812, 32
  %814 = load i64, i64* %366, align 4
  %815 = shl i64 %814, 32
  %816 = ashr exact i64 %815, 32
  %817 = mul nsw i64 %813, %816
  %818 = add nsw i64 %810, %817
  %819 = getelementptr inbounds i64, i64* %0, i32 17
  store i64 %818, i64* %819, align 4
  %820 = load i64, i64* %454, align 4
  %821 = shl i64 %820, 32
  %822 = ashr exact i64 %821, 31
  %823 = load i64, i64* %448, align 4
  %824 = shl i64 %823, 32
  %825 = ashr exact i64 %824, 32
  %826 = mul nsw i64 %822, %825
  %827 = getelementptr inbounds i64, i64* %0, i32 18
  store i64 %826, i64* %827, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc void @freduce_degree(i64* nocapture) unnamed_addr #1 {
  %2 = getelementptr inbounds i64, i64* %0, i32 18
  %3 = load i64, i64* %2, align 4
  %4 = shl i64 %3, 4
  %5 = getelementptr inbounds i64, i64* %0, i32 8
  %6 = load i64, i64* %5, align 4
  %7 = add nsw i64 %6, %4
  %8 = shl i64 %3, 1
  %9 = add nsw i64 %7, %8
  %10 = add nsw i64 %9, %3
  store i64 %10, i64* %5, align 4
  %11 = getelementptr inbounds i64, i64* %0, i32 17
  %12 = load i64, i64* %11, align 4
  %13 = shl i64 %12, 4
  %14 = getelementptr inbounds i64, i64* %0, i32 7
  %15 = load i64, i64* %14, align 4
  %16 = add nsw i64 %15, %13
  %17 = shl i64 %12, 1
  %18 = add nsw i64 %16, %17
  %19 = add nsw i64 %18, %12
  store i64 %19, i64* %14, align 4
  %20 = getelementptr inbounds i64, i64* %0, i32 16
  %21 = load i64, i64* %20, align 4
  %22 = shl i64 %21, 4
  %23 = getelementptr inbounds i64, i64* %0, i32 6
  %24 = load i64, i64* %23, align 4
  %25 = add nsw i64 %24, %22
  %26 = shl i64 %21, 1
  %27 = add nsw i64 %25, %26
  %28 = add nsw i64 %27, %21
  store i64 %28, i64* %23, align 4
  %29 = getelementptr inbounds i64, i64* %0, i32 15
  %30 = load i64, i64* %29, align 4
  %31 = shl i64 %30, 4
  %32 = getelementptr inbounds i64, i64* %0, i32 5
  %33 = load i64, i64* %32, align 4
  %34 = add nsw i64 %33, %31
  %35 = shl i64 %30, 1
  %36 = add nsw i64 %34, %35
  %37 = add nsw i64 %36, %30
  store i64 %37, i64* %32, align 4
  %38 = getelementptr inbounds i64, i64* %0, i32 14
  %39 = load i64, i64* %38, align 4
  %40 = shl i64 %39, 4
  %41 = getelementptr inbounds i64, i64* %0, i32 4
  %42 = load i64, i64* %41, align 4
  %43 = add nsw i64 %42, %40
  %44 = shl i64 %39, 1
  %45 = add nsw i64 %43, %44
  %46 = add nsw i64 %45, %39
  store i64 %46, i64* %41, align 4
  %47 = getelementptr inbounds i64, i64* %0, i32 13
  %48 = load i64, i64* %47, align 4
  %49 = shl i64 %48, 4
  %50 = getelementptr inbounds i64, i64* %0, i32 3
  %51 = load i64, i64* %50, align 4
  %52 = add nsw i64 %51, %49
  %53 = shl i64 %48, 1
  %54 = add nsw i64 %52, %53
  %55 = add nsw i64 %54, %48
  store i64 %55, i64* %50, align 4
  %56 = getelementptr inbounds i64, i64* %0, i32 12
  %57 = load i64, i64* %56, align 4
  %58 = shl i64 %57, 4
  %59 = getelementptr inbounds i64, i64* %0, i32 2
  %60 = load i64, i64* %59, align 4
  %61 = add nsw i64 %60, %58
  %62 = shl i64 %57, 1
  %63 = add nsw i64 %61, %62
  %64 = add nsw i64 %63, %57
  store i64 %64, i64* %59, align 4
  %65 = getelementptr inbounds i64, i64* %0, i32 11
  %66 = load i64, i64* %65, align 4
  %67 = shl i64 %66, 4
  %68 = getelementptr inbounds i64, i64* %0, i32 1
  %69 = load i64, i64* %68, align 4
  %70 = add nsw i64 %69, %67
  %71 = shl i64 %66, 1
  %72 = add nsw i64 %70, %71
  %73 = add nsw i64 %72, %66
  store i64 %73, i64* %68, align 4
  %74 = getelementptr inbounds i64, i64* %0, i32 10
  %75 = load i64, i64* %74, align 4
  %76 = shl i64 %75, 4
  %77 = load i64, i64* %0, align 4
  %78 = add nsw i64 %77, %76
  %79 = shl i64 %75, 1
  %80 = add nsw i64 %78, %79
  %81 = add nsw i64 %80, %75
  store i64 %81, i64* %0, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc void @freduce_coefficients(i64* nocapture) unnamed_addr #1 {
  %2 = getelementptr inbounds i64, i64* %0, i32 10
  store i64 0, i64* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %5, %1
  %.0 = phi i32 [ 0, %1 ], [ %18, %5 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %22

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds i64, i64* %0, i32 %.0
  %7 = load i64, i64* %6, align 4
  %8 = call fastcc i64 @div_by_2_26(i64 %7)
  %9 = shl i64 %8, 26
  %10 = sub nsw i64 %7, %9
  store i64 %10, i64* %6, align 4
  %11 = or i32 %.0, 1
  %12 = getelementptr inbounds i64, i64* %0, i32 %11
  %13 = load i64, i64* %12, align 4
  %14 = add nsw i64 %13, %8
  %15 = call fastcc i64 @div_by_2_25(i64 %14)
  %16 = shl i64 %15, 25
  %17 = sub nsw i64 %14, %16
  store i64 %17, i64* %12, align 4
  %18 = add i32 %.0, 2
  %19 = getelementptr inbounds i64, i64* %0, i32 %18
  %20 = load i64, i64* %19, align 4
  %21 = add nsw i64 %20, %15
  store i64 %21, i64* %19, align 4
  br label %3

; <label>:22:                                     ; preds = %3
  %23 = load i64, i64* %2, align 4
  %24 = shl i64 %23, 4
  %25 = load i64, i64* %0, align 4
  %26 = add nsw i64 %25, %24
  %27 = shl i64 %23, 1
  %28 = add nsw i64 %26, %27
  %29 = add nsw i64 %28, %23
  store i64 %29, i64* %0, align 4
  store i64 0, i64* %2, align 4
  %30 = call fastcc i64 @div_by_2_26(i64 %29)
  %31 = shl i64 %30, 26
  %32 = sub nsw i64 %29, %31
  store i64 %32, i64* %0, align 4
  %33 = getelementptr inbounds i64, i64* %0, i32 1
  %34 = load i64, i64* %33, align 4
  %35 = add nsw i64 %34, %30
  store i64 %35, i64* %33, align 4
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @fsquare(i64* nocapture, i64* nocapture readonly) unnamed_addr #0 {
  %3 = alloca [19 x i64], align 8
  %4 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 0
  call fastcc void @fsquare_inner(i64* nonnull %4, i64* %1)
  call fastcc void @freduce_degree(i64* nonnull %4)
  call fastcc void @freduce_coefficients(i64* nonnull %4)
  %5 = bitcast i64* %0 to i8*
  %6 = bitcast [19 x i64]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %5, i8* align 8 %6, i32 80, i1 false)
  ret void
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc void @fscalar_product(i64* nocapture, i64* nocapture readonly) unnamed_addr #1 {
  br label %3

; <label>:3:                                      ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %10, %5 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %11

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds i64, i64* %1, i32 %.0
  %7 = load i64, i64* %6, align 4
  %8 = mul nsw i64 %7, 121665
  %9 = getelementptr inbounds i64, i64* %0, i32 %.0
  store i64 %8, i64* %9, align 4
  %10 = add i32 %.0, 1
  br label %3

; <label>:11:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i64 @div_by_2_26(i64) unnamed_addr #4 {
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  %4 = ashr i32 %3, 31
  %5 = lshr i32 %4, 6
  %6 = zext i32 %5 to i64
  %7 = add nsw i64 %6, %0
  %8 = ashr i64 %7, 26
  ret i64 %8
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i64 @div_by_2_25(i64) unnamed_addr #4 {
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  %4 = ashr i32 %3, 31
  %5 = lshr i32 %4, 7
  %6 = zext i32 %5 to i64
  %7 = add nsw i64 %6, %0
  %8 = ashr i64 %7, 25
  ret i64 %8
}

; Function Attrs: noinline norecurse nounwind
define internal fastcc void @fsquare_inner(i64* nocapture, i64* nocapture readonly) unnamed_addr #1 {
  %3 = load i64, i64* %1, align 4
  %4 = shl i64 %3, 32
  %5 = ashr exact i64 %4, 32
  %6 = mul nsw i64 %5, %5
  store i64 %6, i64* %0, align 4
  %7 = load i64, i64* %1, align 4
  %8 = shl i64 %7, 32
  %9 = ashr exact i64 %8, 31
  %10 = getelementptr inbounds i64, i64* %1, i32 1
  %11 = load i64, i64* %10, align 4
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = mul nsw i64 %9, %13
  %15 = getelementptr inbounds i64, i64* %0, i32 1
  store i64 %14, i64* %15, align 4
  %16 = load i64, i64* %10, align 4
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  %19 = mul nsw i64 %18, %18
  %20 = load i64, i64* %1, align 4
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds i64, i64* %1, i32 2
  %24 = load i64, i64* %23, align 4
  %25 = shl i64 %24, 32
  %26 = ashr exact i64 %25, 32
  %27 = mul nsw i64 %22, %26
  %28 = add nsw i64 %19, %27
  %29 = shl nsw i64 %28, 1
  %30 = getelementptr inbounds i64, i64* %0, i32 2
  store i64 %29, i64* %30, align 4
  %31 = load i64, i64* %10, align 4
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = load i64, i64* %23, align 4
  %35 = shl i64 %34, 32
  %36 = ashr exact i64 %35, 32
  %37 = mul nsw i64 %33, %36
  %38 = load i64, i64* %1, align 4
  %39 = shl i64 %38, 32
  %40 = ashr exact i64 %39, 32
  %41 = getelementptr inbounds i64, i64* %1, i32 3
  %42 = load i64, i64* %41, align 4
  %43 = shl i64 %42, 32
  %44 = ashr exact i64 %43, 32
  %45 = mul nsw i64 %40, %44
  %46 = add nsw i64 %37, %45
  %47 = shl nsw i64 %46, 1
  %48 = getelementptr inbounds i64, i64* %0, i32 3
  store i64 %47, i64* %48, align 4
  %49 = load i64, i64* %23, align 4
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = mul nsw i64 %51, %51
  %53 = load i64, i64* %10, align 4
  %54 = shl i64 %53, 32
  %55 = ashr exact i64 %54, 30
  %56 = load i64, i64* %41, align 4
  %57 = shl i64 %56, 32
  %58 = ashr exact i64 %57, 32
  %59 = mul nsw i64 %55, %58
  %60 = add nsw i64 %52, %59
  %61 = load i64, i64* %1, align 4
  %62 = shl i64 %61, 32
  %63 = ashr exact i64 %62, 31
  %64 = getelementptr inbounds i64, i64* %1, i32 4
  %65 = load i64, i64* %64, align 4
  %66 = shl i64 %65, 32
  %67 = ashr exact i64 %66, 32
  %68 = mul nsw i64 %63, %67
  %69 = add nsw i64 %60, %68
  %70 = getelementptr inbounds i64, i64* %0, i32 4
  store i64 %69, i64* %70, align 4
  %71 = load i64, i64* %23, align 4
  %72 = shl i64 %71, 32
  %73 = ashr exact i64 %72, 32
  %74 = load i64, i64* %41, align 4
  %75 = shl i64 %74, 32
  %76 = ashr exact i64 %75, 32
  %77 = mul nsw i64 %73, %76
  %78 = load i64, i64* %10, align 4
  %79 = shl i64 %78, 32
  %80 = ashr exact i64 %79, 32
  %81 = load i64, i64* %64, align 4
  %82 = shl i64 %81, 32
  %83 = ashr exact i64 %82, 32
  %84 = mul nsw i64 %80, %83
  %85 = add nsw i64 %77, %84
  %86 = load i64, i64* %1, align 4
  %87 = shl i64 %86, 32
  %88 = ashr exact i64 %87, 32
  %89 = getelementptr inbounds i64, i64* %1, i32 5
  %90 = load i64, i64* %89, align 4
  %91 = shl i64 %90, 32
  %92 = ashr exact i64 %91, 32
  %93 = mul nsw i64 %88, %92
  %94 = add nsw i64 %85, %93
  %95 = shl nsw i64 %94, 1
  %96 = getelementptr inbounds i64, i64* %0, i32 5
  store i64 %95, i64* %96, align 4
  %97 = load i64, i64* %41, align 4
  %98 = shl i64 %97, 32
  %99 = ashr exact i64 %98, 32
  %100 = mul nsw i64 %99, %99
  %101 = load i64, i64* %23, align 4
  %102 = shl i64 %101, 32
  %103 = ashr exact i64 %102, 32
  %104 = load i64, i64* %64, align 4
  %105 = shl i64 %104, 32
  %106 = ashr exact i64 %105, 32
  %107 = mul nsw i64 %103, %106
  %108 = add nsw i64 %100, %107
  %109 = load i64, i64* %1, align 4
  %110 = shl i64 %109, 32
  %111 = ashr exact i64 %110, 32
  %112 = getelementptr inbounds i64, i64* %1, i32 6
  %113 = load i64, i64* %112, align 4
  %114 = shl i64 %113, 32
  %115 = ashr exact i64 %114, 32
  %116 = mul nsw i64 %111, %115
  %117 = add nsw i64 %108, %116
  %118 = load i64, i64* %10, align 4
  %119 = shl i64 %118, 32
  %120 = ashr exact i64 %119, 31
  %121 = load i64, i64* %89, align 4
  %122 = shl i64 %121, 32
  %123 = ashr exact i64 %122, 32
  %124 = mul nsw i64 %120, %123
  %125 = add nsw i64 %117, %124
  %126 = shl nsw i64 %125, 1
  %127 = getelementptr inbounds i64, i64* %0, i32 6
  store i64 %126, i64* %127, align 4
  %128 = load i64, i64* %41, align 4
  %129 = shl i64 %128, 32
  %130 = ashr exact i64 %129, 32
  %131 = load i64, i64* %64, align 4
  %132 = shl i64 %131, 32
  %133 = ashr exact i64 %132, 32
  %134 = mul nsw i64 %130, %133
  %135 = load i64, i64* %23, align 4
  %136 = shl i64 %135, 32
  %137 = ashr exact i64 %136, 32
  %138 = load i64, i64* %89, align 4
  %139 = shl i64 %138, 32
  %140 = ashr exact i64 %139, 32
  %141 = mul nsw i64 %137, %140
  %142 = add nsw i64 %134, %141
  %143 = load i64, i64* %10, align 4
  %144 = shl i64 %143, 32
  %145 = ashr exact i64 %144, 32
  %146 = load i64, i64* %112, align 4
  %147 = shl i64 %146, 32
  %148 = ashr exact i64 %147, 32
  %149 = mul nsw i64 %145, %148
  %150 = add nsw i64 %142, %149
  %151 = load i64, i64* %1, align 4
  %152 = shl i64 %151, 32
  %153 = ashr exact i64 %152, 32
  %154 = getelementptr inbounds i64, i64* %1, i32 7
  %155 = load i64, i64* %154, align 4
  %156 = shl i64 %155, 32
  %157 = ashr exact i64 %156, 32
  %158 = mul nsw i64 %153, %157
  %159 = add nsw i64 %150, %158
  %160 = shl nsw i64 %159, 1
  %161 = getelementptr inbounds i64, i64* %0, i32 7
  store i64 %160, i64* %161, align 4
  %162 = load i64, i64* %64, align 4
  %163 = shl i64 %162, 32
  %164 = ashr exact i64 %163, 32
  %165 = mul nsw i64 %164, %164
  %166 = load i64, i64* %23, align 4
  %167 = shl i64 %166, 32
  %168 = ashr exact i64 %167, 32
  %169 = load i64, i64* %112, align 4
  %170 = shl i64 %169, 32
  %171 = ashr exact i64 %170, 32
  %172 = mul nsw i64 %168, %171
  %173 = load i64, i64* %1, align 4
  %174 = shl i64 %173, 32
  %175 = ashr exact i64 %174, 32
  %176 = getelementptr inbounds i64, i64* %1, i32 8
  %177 = load i64, i64* %176, align 4
  %178 = shl i64 %177, 32
  %179 = ashr exact i64 %178, 32
  %180 = mul nsw i64 %175, %179
  %181 = add nsw i64 %172, %180
  %182 = load i64, i64* %10, align 4
  %183 = shl i64 %182, 32
  %184 = ashr exact i64 %183, 32
  %185 = load i64, i64* %154, align 4
  %186 = shl i64 %185, 32
  %187 = ashr exact i64 %186, 32
  %188 = mul nsw i64 %184, %187
  %189 = load i64, i64* %41, align 4
  %190 = shl i64 %189, 32
  %191 = ashr exact i64 %190, 32
  %192 = load i64, i64* %89, align 4
  %193 = shl i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = mul nsw i64 %191, %194
  %196 = add nsw i64 %188, %195
  %197 = shl nsw i64 %196, 1
  %198 = add nsw i64 %181, %197
  %199 = shl nsw i64 %198, 1
  %200 = add nsw i64 %165, %199
  %201 = getelementptr inbounds i64, i64* %0, i32 8
  store i64 %200, i64* %201, align 4
  %202 = load i64, i64* %64, align 4
  %203 = shl i64 %202, 32
  %204 = ashr exact i64 %203, 32
  %205 = load i64, i64* %89, align 4
  %206 = shl i64 %205, 32
  %207 = ashr exact i64 %206, 32
  %208 = mul nsw i64 %204, %207
  %209 = load i64, i64* %41, align 4
  %210 = shl i64 %209, 32
  %211 = ashr exact i64 %210, 32
  %212 = load i64, i64* %112, align 4
  %213 = shl i64 %212, 32
  %214 = ashr exact i64 %213, 32
  %215 = mul nsw i64 %211, %214
  %216 = add nsw i64 %208, %215
  %217 = load i64, i64* %23, align 4
  %218 = shl i64 %217, 32
  %219 = ashr exact i64 %218, 32
  %220 = load i64, i64* %154, align 4
  %221 = shl i64 %220, 32
  %222 = ashr exact i64 %221, 32
  %223 = mul nsw i64 %219, %222
  %224 = add nsw i64 %216, %223
  %225 = load i64, i64* %10, align 4
  %226 = shl i64 %225, 32
  %227 = ashr exact i64 %226, 32
  %228 = load i64, i64* %176, align 4
  %229 = shl i64 %228, 32
  %230 = ashr exact i64 %229, 32
  %231 = mul nsw i64 %227, %230
  %232 = add nsw i64 %224, %231
  %233 = load i64, i64* %1, align 4
  %234 = shl i64 %233, 32
  %235 = ashr exact i64 %234, 32
  %236 = getelementptr inbounds i64, i64* %1, i32 9
  %237 = load i64, i64* %236, align 4
  %238 = shl i64 %237, 32
  %239 = ashr exact i64 %238, 32
  %240 = mul nsw i64 %235, %239
  %241 = add nsw i64 %232, %240
  %242 = shl nsw i64 %241, 1
  %243 = getelementptr inbounds i64, i64* %0, i32 9
  store i64 %242, i64* %243, align 4
  %244 = load i64, i64* %89, align 4
  %245 = shl i64 %244, 32
  %246 = ashr exact i64 %245, 32
  %247 = mul nsw i64 %246, %246
  %248 = load i64, i64* %64, align 4
  %249 = shl i64 %248, 32
  %250 = ashr exact i64 %249, 32
  %251 = load i64, i64* %112, align 4
  %252 = shl i64 %251, 32
  %253 = ashr exact i64 %252, 32
  %254 = mul nsw i64 %250, %253
  %255 = add nsw i64 %247, %254
  %256 = load i64, i64* %23, align 4
  %257 = shl i64 %256, 32
  %258 = ashr exact i64 %257, 32
  %259 = load i64, i64* %176, align 4
  %260 = shl i64 %259, 32
  %261 = ashr exact i64 %260, 32
  %262 = mul nsw i64 %258, %261
  %263 = add nsw i64 %255, %262
  %264 = load i64, i64* %41, align 4
  %265 = shl i64 %264, 32
  %266 = ashr exact i64 %265, 32
  %267 = load i64, i64* %154, align 4
  %268 = shl i64 %267, 32
  %269 = ashr exact i64 %268, 32
  %270 = mul nsw i64 %266, %269
  %271 = load i64, i64* %10, align 4
  %272 = shl i64 %271, 32
  %273 = ashr exact i64 %272, 32
  %274 = load i64, i64* %236, align 4
  %275 = shl i64 %274, 32
  %276 = ashr exact i64 %275, 32
  %277 = mul nsw i64 %273, %276
  %278 = add nsw i64 %270, %277
  %279 = shl nsw i64 %278, 1
  %280 = add nsw i64 %263, %279
  %281 = shl nsw i64 %280, 1
  %282 = getelementptr inbounds i64, i64* %0, i32 10
  store i64 %281, i64* %282, align 4
  %283 = load i64, i64* %89, align 4
  %284 = shl i64 %283, 32
  %285 = ashr exact i64 %284, 32
  %286 = load i64, i64* %112, align 4
  %287 = shl i64 %286, 32
  %288 = ashr exact i64 %287, 32
  %289 = mul nsw i64 %285, %288
  %290 = load i64, i64* %64, align 4
  %291 = shl i64 %290, 32
  %292 = ashr exact i64 %291, 32
  %293 = load i64, i64* %154, align 4
  %294 = shl i64 %293, 32
  %295 = ashr exact i64 %294, 32
  %296 = mul nsw i64 %292, %295
  %297 = add nsw i64 %289, %296
  %298 = load i64, i64* %41, align 4
  %299 = shl i64 %298, 32
  %300 = ashr exact i64 %299, 32
  %301 = load i64, i64* %176, align 4
  %302 = shl i64 %301, 32
  %303 = ashr exact i64 %302, 32
  %304 = mul nsw i64 %300, %303
  %305 = add nsw i64 %297, %304
  %306 = load i64, i64* %23, align 4
  %307 = shl i64 %306, 32
  %308 = ashr exact i64 %307, 32
  %309 = load i64, i64* %236, align 4
  %310 = shl i64 %309, 32
  %311 = ashr exact i64 %310, 32
  %312 = mul nsw i64 %308, %311
  %313 = add nsw i64 %305, %312
  %314 = shl nsw i64 %313, 1
  %315 = getelementptr inbounds i64, i64* %0, i32 11
  store i64 %314, i64* %315, align 4
  %316 = load i64, i64* %112, align 4
  %317 = shl i64 %316, 32
  %318 = ashr exact i64 %317, 32
  %319 = mul nsw i64 %318, %318
  %320 = load i64, i64* %64, align 4
  %321 = shl i64 %320, 32
  %322 = ashr exact i64 %321, 32
  %323 = load i64, i64* %176, align 4
  %324 = shl i64 %323, 32
  %325 = ashr exact i64 %324, 32
  %326 = mul nsw i64 %322, %325
  %327 = load i64, i64* %89, align 4
  %328 = shl i64 %327, 32
  %329 = ashr exact i64 %328, 32
  %330 = load i64, i64* %154, align 4
  %331 = shl i64 %330, 32
  %332 = ashr exact i64 %331, 32
  %333 = mul nsw i64 %329, %332
  %334 = load i64, i64* %41, align 4
  %335 = shl i64 %334, 32
  %336 = ashr exact i64 %335, 32
  %337 = load i64, i64* %236, align 4
  %338 = shl i64 %337, 32
  %339 = ashr exact i64 %338, 32
  %340 = mul nsw i64 %336, %339
  %341 = add nsw i64 %333, %340
  %342 = shl nsw i64 %341, 1
  %343 = add nsw i64 %326, %342
  %344 = shl nsw i64 %343, 1
  %345 = add nsw i64 %319, %344
  %346 = getelementptr inbounds i64, i64* %0, i32 12
  store i64 %345, i64* %346, align 4
  %347 = load i64, i64* %112, align 4
  %348 = shl i64 %347, 32
  %349 = ashr exact i64 %348, 32
  %350 = load i64, i64* %154, align 4
  %351 = shl i64 %350, 32
  %352 = ashr exact i64 %351, 32
  %353 = mul nsw i64 %349, %352
  %354 = load i64, i64* %89, align 4
  %355 = shl i64 %354, 32
  %356 = ashr exact i64 %355, 32
  %357 = load i64, i64* %176, align 4
  %358 = shl i64 %357, 32
  %359 = ashr exact i64 %358, 32
  %360 = mul nsw i64 %356, %359
  %361 = add nsw i64 %353, %360
  %362 = load i64, i64* %64, align 4
  %363 = shl i64 %362, 32
  %364 = ashr exact i64 %363, 32
  %365 = load i64, i64* %236, align 4
  %366 = shl i64 %365, 32
  %367 = ashr exact i64 %366, 32
  %368 = mul nsw i64 %364, %367
  %369 = add nsw i64 %361, %368
  %370 = shl nsw i64 %369, 1
  %371 = getelementptr inbounds i64, i64* %0, i32 13
  store i64 %370, i64* %371, align 4
  %372 = load i64, i64* %154, align 4
  %373 = shl i64 %372, 32
  %374 = ashr exact i64 %373, 32
  %375 = mul nsw i64 %374, %374
  %376 = load i64, i64* %112, align 4
  %377 = shl i64 %376, 32
  %378 = ashr exact i64 %377, 32
  %379 = load i64, i64* %176, align 4
  %380 = shl i64 %379, 32
  %381 = ashr exact i64 %380, 32
  %382 = mul nsw i64 %378, %381
  %383 = add nsw i64 %375, %382
  %384 = load i64, i64* %89, align 4
  %385 = shl i64 %384, 32
  %386 = ashr exact i64 %385, 31
  %387 = load i64, i64* %236, align 4
  %388 = shl i64 %387, 32
  %389 = ashr exact i64 %388, 32
  %390 = mul nsw i64 %386, %389
  %391 = add nsw i64 %383, %390
  %392 = shl nsw i64 %391, 1
  %393 = getelementptr inbounds i64, i64* %0, i32 14
  store i64 %392, i64* %393, align 4
  %394 = load i64, i64* %154, align 4
  %395 = shl i64 %394, 32
  %396 = ashr exact i64 %395, 32
  %397 = load i64, i64* %176, align 4
  %398 = shl i64 %397, 32
  %399 = ashr exact i64 %398, 32
  %400 = mul nsw i64 %396, %399
  %401 = load i64, i64* %112, align 4
  %402 = shl i64 %401, 32
  %403 = ashr exact i64 %402, 32
  %404 = load i64, i64* %236, align 4
  %405 = shl i64 %404, 32
  %406 = ashr exact i64 %405, 32
  %407 = mul nsw i64 %403, %406
  %408 = add nsw i64 %400, %407
  %409 = shl nsw i64 %408, 1
  %410 = getelementptr inbounds i64, i64* %0, i32 15
  store i64 %409, i64* %410, align 4
  %411 = load i64, i64* %176, align 4
  %412 = shl i64 %411, 32
  %413 = ashr exact i64 %412, 32
  %414 = mul nsw i64 %413, %413
  %415 = load i64, i64* %154, align 4
  %416 = shl i64 %415, 32
  %417 = ashr exact i64 %416, 30
  %418 = load i64, i64* %236, align 4
  %419 = shl i64 %418, 32
  %420 = ashr exact i64 %419, 32
  %421 = mul nsw i64 %417, %420
  %422 = add nsw i64 %414, %421
  %423 = getelementptr inbounds i64, i64* %0, i32 16
  store i64 %422, i64* %423, align 4
  %424 = load i64, i64* %176, align 4
  %425 = shl i64 %424, 32
  %426 = ashr exact i64 %425, 31
  %427 = load i64, i64* %236, align 4
  %428 = shl i64 %427, 32
  %429 = ashr exact i64 %428, 32
  %430 = mul nsw i64 %426, %429
  %431 = getelementptr inbounds i64, i64* %0, i32 17
  store i64 %430, i64* %431, align 4
  %432 = load i64, i64* %236, align 4
  %433 = shl i64 %432, 32
  %434 = ashr exact i64 %433, 32
  %435 = ashr exact i64 %433, 31
  %436 = mul nsw i64 %435, %434
  %437 = getelementptr inbounds i64, i64* %0, i32 18
  store i64 %436, i64* %437, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i32 @s32_gte(i32) unnamed_addr #4 {
  %2 = add nsw i32 %0, -67108845
  %3 = ashr i32 %2, 31
  %4 = xor i32 %3, -1
  ret i32 %4
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i32 @s32_eq(i32, i32) unnamed_addr #4 {
  %3 = xor i32 %0, %1
  %4 = xor i32 %3, -1
  %5 = shl i32 %4, 16
  %6 = and i32 %5, %4
  %7 = shl i32 %6, 8
  %8 = and i32 %6, %7
  %9 = shl i32 %8, 4
  %10 = and i32 %8, %9
  %11 = shl i32 %10, 2
  %12 = and i32 %10, %11
  %13 = shl i32 %12, 1
  %14 = and i32 %12, %13
  %15 = ashr i32 %14, 31
  ret i32 %15
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 7.1.0 (tags/RELEASE_710/final)"}
