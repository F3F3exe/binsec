; ModuleID = 'donna.ll'
source_filename = "donna_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @curve25519_donna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [10 x i64], align 8
  %5 = alloca [10 x i64], align 8
  %6 = alloca [11 x i64], align 8
  %7 = alloca [10 x i64], align 8
  %8 = alloca [32 x i8], align 1
  br label %9

9:                                                ; preds = %11, %3
  %.0 = phi i32 [ 0, %3 ], [ %15, %11 ]
  %10 = icmp ult i32 %.0, 32
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, ptr %1, i32 %.0
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds [32 x i8], ptr %8, i32 0, i32 %.0
  store i8 %13, ptr %14, align 1
  %15 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !7

16:                                               ; preds = %9
  %17 = load i8, ptr %8, align 1
  %18 = and i8 %17, -8
  store i8 %18, ptr %8, align 1
  %19 = getelementptr inbounds i8, ptr %8, i32 31
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 63
  %22 = or disjoint i8 %21, 64
  store i8 %22, ptr %19, align 1
  call fastcc void @fexpand(ptr noundef nonnull %4, ptr noundef %2)
  call fastcc void @cmult(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %4)
  call fastcc void @crecip(ptr noundef nonnull %7, ptr noundef nonnull %6)
  call fastcc void @fmul(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7)
  call fastcc void @fcontract(ptr noundef %0, ptr noundef nonnull %6)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @fexpand(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds i8, ptr %1, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 8
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds i8, ptr %1, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 16
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds i8, ptr %1, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 24
  %.masked = and i64 %18, 50331648
  %19 = or disjoint i64 %14, %.masked
  store i64 %19, ptr %0, align 4
  %20 = load i8, ptr %15, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i8, ptr %1, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %24, 8
  %26 = or disjoint i64 %25, %21
  %27 = getelementptr inbounds i8, ptr %1, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 16
  %31 = or disjoint i64 %26, %30
  %32 = getelementptr inbounds i8, ptr %1, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 24
  %36 = or disjoint i64 %31, %35
  %37 = lshr i64 %36, 2
  %38 = and i64 %37, 33554431
  %39 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %38, ptr %39, align 4
  %40 = load i8, ptr %32, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i8, ptr %1, i32 7
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 8
  %46 = or disjoint i64 %45, %41
  %47 = getelementptr inbounds i8, ptr %1, i32 8
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 16
  %51 = or disjoint i64 %46, %50
  %52 = getelementptr inbounds i8, ptr %1, i32 9
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 24
  %56 = or disjoint i64 %51, %55
  %57 = lshr i64 %56, 3
  %58 = and i64 %57, 67108863
  %59 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %58, ptr %59, align 4
  %60 = load i8, ptr %52, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i8, ptr %1, i32 10
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 8
  %66 = or disjoint i64 %65, %61
  %67 = getelementptr inbounds i8, ptr %1, i32 11
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 16
  %71 = or disjoint i64 %66, %70
  %72 = getelementptr inbounds i8, ptr %1, i32 12
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i64
  %75 = shl nuw nsw i64 %74, 24
  %76 = or disjoint i64 %71, %75
  %77 = lshr i64 %76, 5
  %78 = and i64 %77, 33554431
  %79 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %78, ptr %79, align 4
  %80 = load i8, ptr %72, align 1
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i8, ptr %1, i32 13
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 8
  %86 = or disjoint i64 %85, %81
  %87 = getelementptr inbounds i8, ptr %1, i32 14
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 16
  %91 = or disjoint i64 %86, %90
  %92 = getelementptr inbounds i8, ptr %1, i32 15
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 24
  %96 = or disjoint i64 %91, %95
  %97 = lshr i64 %96, 6
  %98 = and i64 %97, 67108863
  %99 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %98, ptr %99, align 4
  %100 = getelementptr inbounds i8, ptr %1, i32 16
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds i8, ptr %1, i32 17
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i64
  %106 = shl nuw nsw i64 %105, 8
  %107 = or disjoint i64 %106, %102
  %108 = getelementptr inbounds i8, ptr %1, i32 18
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i64
  %111 = shl nuw nsw i64 %110, 16
  %112 = or disjoint i64 %107, %111
  %113 = getelementptr inbounds i8, ptr %1, i32 19
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i64
  %116 = shl nuw nsw i64 %115, 24
  %.masked50 = and i64 %116, 16777216
  %117 = or disjoint i64 %112, %.masked50
  %118 = getelementptr inbounds i8, ptr %0, i32 40
  store i64 %117, ptr %118, align 4
  %119 = load i8, ptr %113, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i8, ptr %1, i32 20
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i64
  %124 = shl nuw nsw i64 %123, 8
  %125 = or disjoint i64 %124, %120
  %126 = getelementptr inbounds i8, ptr %1, i32 21
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i64
  %129 = shl nuw nsw i64 %128, 16
  %130 = or disjoint i64 %125, %129
  %131 = getelementptr inbounds i8, ptr %1, i32 22
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i64
  %134 = shl nuw nsw i64 %133, 24
  %135 = or disjoint i64 %130, %134
  %136 = lshr i64 %135, 1
  %137 = and i64 %136, 67108863
  %138 = getelementptr inbounds i8, ptr %0, i32 48
  store i64 %137, ptr %138, align 4
  %139 = load i8, ptr %131, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds i8, ptr %1, i32 23
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i64
  %144 = shl nuw nsw i64 %143, 8
  %145 = or disjoint i64 %144, %140
  %146 = getelementptr inbounds i8, ptr %1, i32 24
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i64
  %149 = shl nuw nsw i64 %148, 16
  %150 = or disjoint i64 %145, %149
  %151 = getelementptr inbounds i8, ptr %1, i32 25
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i64
  %154 = shl nuw nsw i64 %153, 24
  %155 = or disjoint i64 %150, %154
  %156 = lshr i64 %155, 3
  %157 = and i64 %156, 33554431
  %158 = getelementptr inbounds i8, ptr %0, i32 56
  store i64 %157, ptr %158, align 4
  %159 = load i8, ptr %151, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds i8, ptr %1, i32 26
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i64
  %164 = shl nuw nsw i64 %163, 8
  %165 = or disjoint i64 %164, %160
  %166 = getelementptr inbounds i8, ptr %1, i32 27
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i64
  %169 = shl nuw nsw i64 %168, 16
  %170 = or disjoint i64 %165, %169
  %171 = getelementptr inbounds i8, ptr %1, i32 28
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 24
  %175 = or disjoint i64 %170, %174
  %176 = lshr i64 %175, 4
  %177 = and i64 %176, 67108863
  %178 = getelementptr inbounds i8, ptr %0, i32 64
  store i64 %177, ptr %178, align 4
  %179 = load i8, ptr %171, align 1
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds i8, ptr %1, i32 29
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i64
  %184 = shl nuw nsw i64 %183, 8
  %185 = or disjoint i64 %184, %180
  %186 = getelementptr inbounds i8, ptr %1, i32 30
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i64
  %189 = shl nuw nsw i64 %188, 16
  %190 = or disjoint i64 %185, %189
  %191 = getelementptr inbounds i8, ptr %1, i32 31
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i64
  %194 = shl nuw nsw i64 %193, 24
  %195 = or disjoint i64 %190, %194
  %196 = lshr i64 %195, 6
  %197 = and i64 %196, 33554431
  %198 = getelementptr inbounds i8, ptr %0, i32 72
  store i64 %197, ptr %198, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cmult(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [19 x i64], align 8
  %6 = alloca [19 x i64], align 8
  %7 = alloca [19 x i64], align 8
  %8 = alloca [19 x i64], align 8
  %9 = alloca [19 x i64], align 8
  %10 = alloca [19 x i64], align 8
  %11 = alloca [19 x i64], align 8
  %12 = alloca [19 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(152) %6, i8 0, i32 152, i1 false)
  store i64 1, ptr %6, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(152) %7, i8 0, i32 152, i1 false)
  store i64 1, ptr %7, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(152) %8, i8 0, i32 152, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(152) %9, i8 0, i32 152, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(152) %10, i8 0, i32 152, i1 false)
  store i64 1, ptr %10, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(152) %11, i8 0, i32 152, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(152) %12, i8 0, i32 152, i1 false)
  store i64 1, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %5, i32 80
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %13, i8 0, i32 72, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 4 dereferenceable(80) %3, i32 80, i1 false)
  br label %14

14:                                               ; preds = %27, %4
  %.061 = phi ptr [ %7, %4 ], [ %.162, %27 ]
  %.059 = phi ptr [ %8, %4 ], [ %.160, %27 ]
  %.057 = phi ptr [ %6, %4 ], [ %.158, %27 ]
  %.055 = phi ptr [ %9, %4 ], [ %.156, %27 ]
  %.053 = phi ptr [ %10, %4 ], [ %.154, %27 ]
  %.051 = phi ptr [ %11, %4 ], [ %.152, %27 ]
  %.049 = phi ptr [ %12, %4 ], [ %.150, %27 ]
  %.048 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %.0 = phi ptr [ %5, %4 ], [ %.1, %27 ]
  %15 = icmp ult i32 %.048, 32
  br i1 %15, label %16, label %29

16:                                               ; preds = %14
  %17 = sub nuw nsw i32 31, %.048
  %18 = getelementptr inbounds i8, ptr %2, i32 %17
  %19 = load i8, ptr %18, align 1
  br label %20

20:                                               ; preds = %22, %16
  %.162 = phi ptr [ %.061, %16 ], [ %.152, %22 ]
  %.160 = phi ptr [ %.059, %16 ], [ %.150, %22 ]
  %.158 = phi ptr [ %.057, %16 ], [ %.154, %22 ]
  %.156 = phi ptr [ %.055, %16 ], [ %.1, %22 ]
  %.154 = phi ptr [ %.053, %16 ], [ %.158, %22 ]
  %.152 = phi ptr [ %.051, %16 ], [ %.162, %22 ]
  %.150 = phi ptr [ %.049, %16 ], [ %.160, %22 ]
  %.047 = phi i32 [ 0, %16 ], [ %26, %22 ]
  %.046 = phi i8 [ %19, %16 ], [ %25, %22 ]
  %.1 = phi ptr [ %.0, %16 ], [ %.156, %22 ]
  %21 = icmp ult i32 %.047, 8
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = lshr i8 %.046, 7
  %24 = zext nneg i8 %23 to i64
  call fastcc void @swap_conditional(ptr noundef %.162, ptr noundef %.1, i64 noundef %24)
  call fastcc void @swap_conditional(ptr noundef %.160, ptr noundef %.158, i64 noundef %24)
  call fastcc void @fmonty(ptr noundef %.152, ptr noundef %.150, ptr noundef %.156, ptr noundef %.154, ptr noundef %.162, ptr noundef %.160, ptr noundef %.1, ptr noundef %.158, ptr noundef %3)
  call fastcc void @swap_conditional(ptr noundef %.152, ptr noundef %.156, i64 noundef %24)
  call fastcc void @swap_conditional(ptr noundef %.150, ptr noundef %.154, i64 noundef %24)
  %25 = shl i8 %.046, 1
  %26 = add nuw nsw i32 %.047, 1
  br label %20, !llvm.loop !9

27:                                               ; preds = %20
  %28 = add nuw nsw i32 %.048, 1
  br label %14, !llvm.loop !10

29:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(80) %.061, i32 80, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(80) %.059, i32 80, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @crecip(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
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
  call fastcc void @fsquare(ptr noundef nonnull %3, ptr noundef %1)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %3)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @fmul(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef %1)
  call fastcc void @fmul(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %5)
  call fastcc void @fmul(ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %4)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %6)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @fmul(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %6)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %7)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  br label %13

13:                                               ; preds = %15, %2
  %.0 = phi i32 [ 2, %2 ], [ %16, %15 ]
  %14 = icmp ult i32 %.0, 10
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  %16 = add nuw nsw i32 %.0, 2
  br label %13, !llvm.loop !11

17:                                               ; preds = %13
  call fastcc void @fmul(ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %7)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %8)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  br label %18

18:                                               ; preds = %20, %17
  %.1 = phi i32 [ 2, %17 ], [ %21, %20 ]
  %19 = icmp ult i32 %.1, 20
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  %21 = add nuw nsw i32 %.1, 2
  br label %18, !llvm.loop !12

22:                                               ; preds = %18
  call fastcc void @fmul(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %8)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %23

23:                                               ; preds = %25, %22
  %.2 = phi i32 [ 2, %22 ], [ %26, %25 ]
  %24 = icmp ult i32 %.2, 10
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  %26 = add nuw nsw i32 %.2, 2
  br label %23, !llvm.loop !13

27:                                               ; preds = %23
  call fastcc void @fmul(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %7)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %9)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  br label %28

28:                                               ; preds = %30, %27
  %.3 = phi i32 [ 2, %27 ], [ %31, %30 ]
  %29 = icmp ult i32 %.3, 50
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  %31 = add nuw nsw i32 %.3, 2
  br label %28, !llvm.loop !14

32:                                               ; preds = %28
  call fastcc void @fmul(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %9)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %10)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %33

33:                                               ; preds = %35, %32
  %.4 = phi i32 [ 2, %32 ], [ %36, %35 ]
  %34 = icmp ult i32 %.4, 100
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  %36 = add nuw nsw i32 %.4, 2
  br label %33, !llvm.loop !15

37:                                               ; preds = %33
  call fastcc void @fmul(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  br label %38

38:                                               ; preds = %40, %37
  %.5 = phi i32 [ 2, %37 ], [ %41, %40 ]
  %39 = icmp ult i32 %.5, 50
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  %41 = add nuw nsw i32 %.5, 2
  br label %38, !llvm.loop !16

42:                                               ; preds = %38
  call fastcc void @fmul(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %9)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  call fastcc void @fsquare(ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @fsquare(ptr noundef nonnull %12, ptr noundef nonnull %11)
  call fastcc void @fmul(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @fmul(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [19 x i64], align 8
  call fastcc void @fproduct(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2)
  call fastcc void @freduce_degree(ptr noundef nonnull %4)
  call fastcc void @freduce_coefficients(ptr noundef nonnull %4)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %4, i32 80, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @fcontract(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [10 x i32], align 4
  br label %4

4:                                                ; preds = %6, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %5 = icmp ult i32 %.0, 10
  br i1 %5, label %6, label %.preheader112

6:                                                ; preds = %4
  %7 = getelementptr inbounds i64, ptr %1, i32 %.0
  %8 = load i64, ptr %7, align 4
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %.0
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !17

.preheader112:                                    ; preds = %4, %40
  %.0104 = phi i32 [ %49, %40 ], [ 0, %4 ]
  %12 = icmp ult i32 %.0104, 2
  br i1 %12, label %.preheader111, label %50

.preheader111:                                    ; preds = %.preheader112, %38
  %.1 = phi i32 [ %39, %38 ], [ 0, %.preheader112 ]
  %13 = icmp ult i32 %.1, 9
  br i1 %13, label %14, label %40

14:                                               ; preds = %.preheader111
  %15 = and i32 %.1, 1
  %.not110 = icmp eq i32 %15, 0
  br i1 %.not110, label %27, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %.1
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @llvm.smin.i32(i32 %18, i32 0)
  %20 = ashr i32 %19, 25
  %21 = and i32 %19, -33554432
  %22 = sub i32 %18, %21
  store i32 %22, ptr %17, align 4
  %23 = add nuw nsw i32 %.1, 1
  %24 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, %20
  store i32 %26, ptr %24, align 4
  br label %38

27:                                               ; preds = %14
  %28 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %.1
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @llvm.smin.i32(i32 %29, i32 0)
  %31 = ashr i32 %30, 26
  %32 = and i32 %30, -67108864
  %33 = sub i32 %29, %32
  store i32 %33, ptr %28, align 4
  %34 = or disjoint i32 %.1, 1
  %35 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = add nsw i32 %36, %31
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %16, %27
  %39 = add nuw nsw i32 %.1, 1
  br label %.preheader111, !llvm.loop !18

40:                                               ; preds = %.preheader111
  %41 = getelementptr inbounds i8, ptr %3, i32 36
  %42 = load i32, ptr %41, align 4
  %43 = call i32 @llvm.smin.i32(i32 %42, i32 0)
  %44 = ashr i32 %43, 25
  %45 = and i32 %43, -33554432
  %46 = sub i32 %42, %45
  store i32 %46, ptr %41, align 4
  %47 = load i32, ptr %3, align 4
  %.neg = mul nsw i32 %44, 19
  %48 = add i32 %.neg, %47
  store i32 %48, ptr %3, align 4
  %49 = add nuw nsw i32 %.0104, 1
  br label %.preheader112, !llvm.loop !19

50:                                               ; preds = %.preheader112
  %51 = load i32, ptr %3, align 4
  %52 = call i32 @llvm.smin.i32(i32 %51, i32 0)
  %53 = ashr i32 %52, 26
  %54 = and i32 %52, -67108864
  %55 = sub i32 %51, %54
  store i32 %55, ptr %3, align 4
  %56 = getelementptr inbounds i8, ptr %3, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = add nsw i32 %57, %53
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %84, %50
  %.1105 = phi i32 [ 0, %50 ], [ %92, %84 ]
  %60 = icmp ult i32 %.1105, 2
  br i1 %60, label %.preheader, label %93

.preheader:                                       ; preds = %59, %82
  %.2 = phi i32 [ %83, %82 ], [ 0, %59 ]
  %61 = icmp ult i32 %.2, 9
  br i1 %61, label %62, label %84

62:                                               ; preds = %.preheader
  %63 = and i32 %.2, 1
  %.not109 = icmp eq i32 %63, 0
  br i1 %.not109, label %73, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %.2
  %66 = load i32, ptr %65, align 4
  %67 = ashr i32 %66, 25
  %68 = and i32 %66, 33554431
  store i32 %68, ptr %65, align 4
  %69 = add nuw nsw i32 %.2, 1
  %70 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %69
  %71 = load i32, ptr %70, align 4
  %72 = add nsw i32 %71, %67
  store i32 %72, ptr %70, align 4
  br label %82

73:                                               ; preds = %62
  %74 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %.2
  %75 = load i32, ptr %74, align 4
  %76 = ashr i32 %75, 26
  %77 = and i32 %75, 67108863
  store i32 %77, ptr %74, align 4
  %78 = or disjoint i32 %.2, 1
  %79 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = add nsw i32 %80, %76
  store i32 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %64, %73
  %83 = add nuw nsw i32 %.2, 1
  br label %.preheader, !llvm.loop !20

84:                                               ; preds = %.preheader
  %85 = getelementptr inbounds i8, ptr %3, i32 36
  %86 = load i32, ptr %85, align 4
  %87 = ashr i32 %86, 25
  %88 = and i32 %86, 33554431
  store i32 %88, ptr %85, align 4
  %89 = mul nsw i32 %87, 19
  %90 = load i32, ptr %3, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, ptr %3, align 4
  %92 = add nuw nsw i32 %.1105, 1
  br label %59, !llvm.loop !21

93:                                               ; preds = %59
  %94 = load i32, ptr %3, align 4
  %95 = call fastcc i32 @s32_gte(i32 noundef %94, i32 noundef 67108845)
  br label %96

96:                                               ; preds = %108, %93
  %.0106 = phi i32 [ %95, %93 ], [ %.1107, %108 ]
  %.3 = phi i32 [ 1, %93 ], [ %109, %108 ]
  %97 = icmp ult i32 %.3, 10
  br i1 %97, label %98, label %110

98:                                               ; preds = %96
  %99 = and i32 %.3, 1
  %.not108 = icmp eq i32 %99, 0
  br i1 %.not108, label %104, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %.3
  %102 = load i32, ptr %101, align 4
  %103 = call fastcc i32 @s32_eq(i32 noundef %102, i32 noundef 33554431)
  br label %108

104:                                              ; preds = %98
  %105 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %.3
  %106 = load i32, ptr %105, align 4
  %107 = call fastcc i32 @s32_eq(i32 noundef %106, i32 noundef 67108863)
  br label %108

108:                                              ; preds = %100, %104
  %.pn = phi i32 [ %103, %100 ], [ %107, %104 ]
  %.1107 = and i32 %.pn, %.0106
  %109 = add nuw nsw i32 %.3, 1
  br label %96, !llvm.loop !22

110:                                              ; preds = %96
  %111 = and i32 %.0106, 67108845
  %112 = load i32, ptr %3, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, ptr %3, align 4
  br label %114

114:                                              ; preds = %128, %110
  %.4 = phi i32 [ 1, %110 ], [ %129, %128 ]
  %115 = icmp ult i32 %.4, 10
  br i1 %115, label %116, label %130

116:                                              ; preds = %114
  %117 = and i32 %.4, 1
  %.not = icmp eq i32 %117, 0
  br i1 %.not, label %123, label %118

118:                                              ; preds = %116
  %119 = and i32 %.0106, 33554431
  %120 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %.4
  %121 = load i32, ptr %120, align 4
  %122 = sub nsw i32 %121, %119
  store i32 %122, ptr %120, align 4
  br label %128

123:                                              ; preds = %116
  %124 = and i32 %.0106, 67108863
  %125 = getelementptr inbounds [10 x i32], ptr %3, i32 0, i32 %.4
  %126 = load i32, ptr %125, align 4
  %127 = sub nsw i32 %126, %124
  store i32 %127, ptr %125, align 4
  br label %128

128:                                              ; preds = %118, %123
  %129 = add nuw nsw i32 %.4, 1
  br label %114, !llvm.loop !23

130:                                              ; preds = %114
  %131 = load i32, ptr %56, align 4
  %132 = shl i32 %131, 2
  store i32 %132, ptr %56, align 4
  %133 = getelementptr inbounds i8, ptr %3, i32 8
  %134 = load i32, ptr %133, align 4
  %135 = shl i32 %134, 3
  store i32 %135, ptr %133, align 4
  %136 = getelementptr inbounds i8, ptr %3, i32 12
  %137 = load i32, ptr %136, align 4
  %138 = shl i32 %137, 5
  store i32 %138, ptr %136, align 4
  %139 = getelementptr inbounds i8, ptr %3, i32 16
  %140 = load i32, ptr %139, align 4
  %141 = shl i32 %140, 6
  store i32 %141, ptr %139, align 4
  %142 = getelementptr inbounds i8, ptr %3, i32 24
  %143 = load i32, ptr %142, align 4
  %144 = shl i32 %143, 1
  store i32 %144, ptr %142, align 4
  %145 = getelementptr inbounds i8, ptr %3, i32 28
  %146 = load i32, ptr %145, align 4
  %147 = shl i32 %146, 3
  store i32 %147, ptr %145, align 4
  %148 = getelementptr inbounds i8, ptr %3, i32 32
  %149 = load i32, ptr %148, align 4
  %150 = shl i32 %149, 4
  store i32 %150, ptr %148, align 4
  %151 = getelementptr inbounds i8, ptr %3, i32 36
  %152 = load i32, ptr %151, align 4
  %153 = shl i32 %152, 6
  store i32 %153, ptr %151, align 4
  store i8 0, ptr %0, align 1
  %154 = getelementptr inbounds i8, ptr %0, i32 16
  store i8 0, ptr %154, align 1
  %155 = load i32, ptr %3, align 4
  %156 = trunc i32 %155 to i8
  store i8 %156, ptr %0, align 1
  %157 = lshr i32 %155, 8
  %158 = trunc i32 %157 to i8
  %159 = getelementptr inbounds i8, ptr %0, i32 1
  store i8 %158, ptr %159, align 1
  %160 = load i32, ptr %3, align 4
  %161 = lshr i32 %160, 16
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds i8, ptr %0, i32 2
  store i8 %162, ptr %163, align 1
  %164 = lshr i32 %160, 24
  %165 = trunc nuw i32 %164 to i8
  %166 = getelementptr inbounds i8, ptr %0, i32 3
  store i8 %165, ptr %166, align 1
  %167 = load i32, ptr %56, align 4
  %168 = or i32 %167, %164
  %169 = trunc i32 %168 to i8
  store i8 %169, ptr %166, align 1
  %170 = lshr i32 %167, 8
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds i8, ptr %0, i32 4
  store i8 %171, ptr %172, align 1
  %173 = load i32, ptr %56, align 4
  %174 = lshr i32 %173, 16
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds i8, ptr %0, i32 5
  store i8 %175, ptr %176, align 1
  %177 = lshr i32 %173, 24
  %178 = trunc nuw i32 %177 to i8
  %179 = getelementptr inbounds i8, ptr %0, i32 6
  store i8 %178, ptr %179, align 1
  %180 = load i32, ptr %133, align 4
  %181 = or i32 %180, %177
  %182 = trunc i32 %181 to i8
  store i8 %182, ptr %179, align 1
  %183 = lshr i32 %180, 8
  %184 = trunc i32 %183 to i8
  %185 = getelementptr inbounds i8, ptr %0, i32 7
  store i8 %184, ptr %185, align 1
  %186 = load i32, ptr %133, align 4
  %187 = lshr i32 %186, 16
  %188 = trunc i32 %187 to i8
  %189 = getelementptr inbounds i8, ptr %0, i32 8
  store i8 %188, ptr %189, align 1
  %190 = lshr i32 %186, 24
  %191 = trunc nuw i32 %190 to i8
  %192 = getelementptr inbounds i8, ptr %0, i32 9
  store i8 %191, ptr %192, align 1
  %193 = load i32, ptr %136, align 4
  %194 = or i32 %193, %190
  %195 = trunc i32 %194 to i8
  store i8 %195, ptr %192, align 1
  %196 = lshr i32 %193, 8
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds i8, ptr %0, i32 10
  store i8 %197, ptr %198, align 1
  %199 = load i32, ptr %136, align 4
  %200 = lshr i32 %199, 16
  %201 = trunc i32 %200 to i8
  %202 = getelementptr inbounds i8, ptr %0, i32 11
  store i8 %201, ptr %202, align 1
  %203 = lshr i32 %199, 24
  %204 = trunc nuw i32 %203 to i8
  %205 = getelementptr inbounds i8, ptr %0, i32 12
  store i8 %204, ptr %205, align 1
  %206 = load i32, ptr %139, align 4
  %207 = or i32 %206, %203
  %208 = trunc i32 %207 to i8
  store i8 %208, ptr %205, align 1
  %209 = lshr i32 %206, 8
  %210 = trunc i32 %209 to i8
  %211 = getelementptr inbounds i8, ptr %0, i32 13
  store i8 %210, ptr %211, align 1
  %212 = load i32, ptr %139, align 4
  %213 = lshr i32 %212, 16
  %214 = trunc i32 %213 to i8
  %215 = getelementptr inbounds i8, ptr %0, i32 14
  store i8 %214, ptr %215, align 1
  %216 = lshr i32 %212, 24
  %217 = trunc nuw i32 %216 to i8
  %218 = getelementptr inbounds i8, ptr %0, i32 15
  store i8 %217, ptr %218, align 1
  %219 = getelementptr inbounds i8, ptr %3, i32 20
  %220 = load i32, ptr %219, align 4
  %221 = load i8, ptr %154, align 1
  %222 = trunc i32 %220 to i8
  %223 = or i8 %221, %222
  store i8 %223, ptr %154, align 1
  %224 = lshr i32 %220, 8
  %225 = trunc i32 %224 to i8
  %226 = getelementptr inbounds i8, ptr %0, i32 17
  store i8 %225, ptr %226, align 1
  %227 = load i32, ptr %219, align 4
  %228 = lshr i32 %227, 16
  %229 = trunc i32 %228 to i8
  %230 = getelementptr inbounds i8, ptr %0, i32 18
  store i8 %229, ptr %230, align 1
  %231 = lshr i32 %227, 24
  %232 = trunc nuw i32 %231 to i8
  %233 = getelementptr inbounds i8, ptr %0, i32 19
  store i8 %232, ptr %233, align 1
  %234 = load i32, ptr %142, align 4
  %235 = or i32 %234, %231
  %236 = trunc i32 %235 to i8
  store i8 %236, ptr %233, align 1
  %237 = lshr i32 %234, 8
  %238 = trunc i32 %237 to i8
  %239 = getelementptr inbounds i8, ptr %0, i32 20
  store i8 %238, ptr %239, align 1
  %240 = load i32, ptr %142, align 4
  %241 = lshr i32 %240, 16
  %242 = trunc i32 %241 to i8
  %243 = getelementptr inbounds i8, ptr %0, i32 21
  store i8 %242, ptr %243, align 1
  %244 = lshr i32 %240, 24
  %245 = trunc nuw i32 %244 to i8
  %246 = getelementptr inbounds i8, ptr %0, i32 22
  store i8 %245, ptr %246, align 1
  %247 = load i32, ptr %145, align 4
  %248 = or i32 %247, %244
  %249 = trunc i32 %248 to i8
  store i8 %249, ptr %246, align 1
  %250 = lshr i32 %247, 8
  %251 = trunc i32 %250 to i8
  %252 = getelementptr inbounds i8, ptr %0, i32 23
  store i8 %251, ptr %252, align 1
  %253 = load i32, ptr %145, align 4
  %254 = lshr i32 %253, 16
  %255 = trunc i32 %254 to i8
  %256 = getelementptr inbounds i8, ptr %0, i32 24
  store i8 %255, ptr %256, align 1
  %257 = lshr i32 %253, 24
  %258 = trunc nuw i32 %257 to i8
  %259 = getelementptr inbounds i8, ptr %0, i32 25
  store i8 %258, ptr %259, align 1
  %260 = load i32, ptr %148, align 4
  %261 = or i32 %260, %257
  %262 = trunc i32 %261 to i8
  store i8 %262, ptr %259, align 1
  %263 = lshr i32 %260, 8
  %264 = trunc i32 %263 to i8
  %265 = getelementptr inbounds i8, ptr %0, i32 26
  store i8 %264, ptr %265, align 1
  %266 = load i32, ptr %148, align 4
  %267 = lshr i32 %266, 16
  %268 = trunc i32 %267 to i8
  %269 = getelementptr inbounds i8, ptr %0, i32 27
  store i8 %268, ptr %269, align 1
  %270 = lshr i32 %266, 24
  %271 = trunc nuw i32 %270 to i8
  %272 = getelementptr inbounds i8, ptr %0, i32 28
  store i8 %271, ptr %272, align 1
  %273 = load i32, ptr %151, align 4
  %274 = or i32 %273, %270
  %275 = trunc i32 %274 to i8
  store i8 %275, ptr %272, align 1
  %276 = lshr i32 %273, 8
  %277 = trunc i32 %276 to i8
  %278 = getelementptr inbounds i8, ptr %0, i32 29
  store i8 %277, ptr %278, align 1
  %279 = load i32, ptr %151, align 4
  %280 = lshr i32 %279, 16
  %281 = trunc i32 %280 to i8
  %282 = getelementptr inbounds i8, ptr %0, i32 30
  store i8 %281, ptr %282, align 1
  %283 = lshr i32 %279, 24
  %284 = trunc nuw i32 %283 to i8
  %285 = getelementptr inbounds i8, ptr %0, i32 31
  store i8 %284, ptr %285, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [32 x i8], align 1
  %2 = alloca [32 x i8], align 1
  %3 = alloca [32 x i8], align 1
  call void @high_input_32(ptr noundef nonnull %1) #5
  call void @high_input_32(ptr noundef nonnull %2) #5
  call void @low_input_32(ptr noundef nonnull %3) #5
  %4 = call i32 @curve25519_donna(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  ret i32 0
}

declare void @high_input_32(ptr noundef) local_unnamed_addr #1

declare void @low_input_32(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @swap_conditional(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = trunc i64 %2 to i32
  %5 = sub i32 0, %4
  br label %6

6:                                                ; preds = %8, %3
  %.0 = phi i32 [ 0, %3 ], [ %23, %8 ]
  %7 = icmp ult i32 %.0, 10
  br i1 %7, label %8, label %24

8:                                                ; preds = %6
  %9 = getelementptr inbounds i64, ptr %0, i32 %.0
  %10 = load i64, ptr %9, align 4
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds i64, ptr %1, i32 %.0
  %13 = load i64, ptr %12, align 4
  %14 = xor i64 %13, %10
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, %5
  %17 = xor i32 %16, %11
  %18 = sext i32 %17 to i64
  store i64 %18, ptr %9, align 4
  %19 = load i64, ptr %12, align 4
  %20 = trunc i64 %19 to i32
  %21 = xor i32 %16, %20
  %22 = sext i32 %21 to i64
  store i64 %22, ptr %12, align 4
  %23 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !24

24:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @fmonty(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca [10 x i64], align 8
  %11 = alloca [10 x i64], align 8
  %12 = alloca [19 x i64], align 8
  %13 = alloca [19 x i64], align 8
  %14 = alloca [19 x i64], align 8
  %15 = alloca [19 x i64], align 8
  %16 = alloca [19 x i64], align 8
  %17 = alloca [19 x i64], align 8
  %18 = alloca [19 x i64], align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 4 dereferenceable(80) %4, i32 80, i1 false)
  call fastcc void @fsum(ptr noundef %4, ptr noundef %5)
  call fastcc void @fdifference(ptr noundef %5, ptr noundef nonnull %10)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 4 dereferenceable(80) %6, i32 80, i1 false)
  call fastcc void @fsum(ptr noundef %6, ptr noundef %7)
  call fastcc void @fdifference(ptr noundef %7, ptr noundef nonnull %11)
  call fastcc void @fproduct(ptr noundef nonnull %15, ptr noundef %6, ptr noundef %5)
  call fastcc void @fproduct(ptr noundef nonnull %16, ptr noundef %4, ptr noundef %7)
  call fastcc void @freduce_degree(ptr noundef nonnull %15)
  call fastcc void @freduce_coefficients(ptr noundef nonnull %15)
  call fastcc void @freduce_degree(ptr noundef nonnull %16)
  call fastcc void @freduce_coefficients(ptr noundef nonnull %16)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(80) %15, i32 80, i1 false)
  call fastcc void @fsum(ptr noundef nonnull %15, ptr noundef nonnull %16)
  call fastcc void @fdifference(ptr noundef nonnull %16, ptr noundef nonnull %11)
  call fastcc void @fsquare(ptr noundef nonnull %18, ptr noundef nonnull %15)
  call fastcc void @fsquare(ptr noundef nonnull %17, ptr noundef nonnull %16)
  call fastcc void @fproduct(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %8)
  call fastcc void @freduce_degree(ptr noundef nonnull %16)
  call fastcc void @freduce_coefficients(ptr noundef nonnull %16)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %18, i32 80, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %16, i32 80, i1 false)
  call fastcc void @fsquare(ptr noundef nonnull %13, ptr noundef %4)
  call fastcc void @fsquare(ptr noundef nonnull %14, ptr noundef %5)
  call fastcc void @fproduct(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %14)
  call fastcc void @freduce_degree(ptr noundef %0)
  call fastcc void @freduce_coefficients(ptr noundef %0)
  call fastcc void @fdifference(ptr noundef nonnull %14, ptr noundef nonnull %13)
  %19 = getelementptr inbounds i8, ptr %12, i32 80
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %19, i8 0, i32 72, i1 false)
  call fastcc void @fscalar_product(ptr noundef nonnull %12, ptr noundef nonnull %14, i64 noundef 121665)
  call fastcc void @freduce_coefficients(ptr noundef nonnull %12)
  call fastcc void @fsum(ptr noundef nonnull %12, ptr noundef nonnull %13)
  call fastcc void @fproduct(ptr noundef %1, ptr noundef nonnull %14, ptr noundef nonnull %12)
  call fastcc void @freduce_degree(ptr noundef %1)
  call fastcc void @freduce_coefficients(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @fsum(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %17, %5 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = getelementptr inbounds i64, ptr %0, i32 %.0
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i64, ptr %1, i32 %.0
  %9 = load i64, ptr %8, align 4
  %10 = add nsw i64 %9, %7
  store i64 %10, ptr %6, align 4
  %11 = or disjoint i32 %.0, 1
  %12 = getelementptr inbounds i64, ptr %0, i32 %11
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds i64, ptr %1, i32 %11
  %15 = load i64, ptr %14, align 4
  %16 = add nsw i64 %15, %13
  store i64 %16, ptr %12, align 4
  %17 = add nuw nsw i32 %.0, 2
  br label %3, !llvm.loop !25

18:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @fdifference(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds i64, ptr %1, i32 %.0
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i64, ptr %0, i32 %.0
  %9 = load i64, ptr %8, align 4
  %10 = sub nsw i64 %7, %9
  store i64 %10, ptr %8, align 4
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !26

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @fproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 4
  %5 = shl i64 %4, 32
  %6 = ashr exact i64 %5, 32
  %7 = load i64, ptr %2, align 4
  %8 = shl i64 %7, 32
  %9 = ashr exact i64 %8, 32
  %10 = mul nsw i64 %9, %6
  store i64 %10, ptr %0, align 4
  %11 = load i64, ptr %1, align 4
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i8, ptr %2, i32 8
  %15 = load i64, ptr %14, align 4
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  %18 = mul nsw i64 %17, %13
  %19 = getelementptr inbounds i8, ptr %1, i32 8
  %20 = load i64, ptr %19, align 4
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = load i64, ptr %2, align 4
  %24 = shl i64 %23, 32
  %25 = ashr exact i64 %24, 32
  %26 = mul nsw i64 %25, %22
  %27 = add nsw i64 %26, %18
  %28 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %27, ptr %28, align 4
  %29 = load i64, ptr %19, align 4
  %30 = shl i64 %29, 32
  %31 = ashr exact i64 %30, 31
  %32 = load i64, ptr %14, align 4
  %33 = shl i64 %32, 32
  %34 = ashr exact i64 %33, 32
  %35 = mul nsw i64 %34, %31
  %36 = load i64, ptr %1, align 4
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds i8, ptr %2, i32 16
  %40 = load i64, ptr %39, align 4
  %41 = shl i64 %40, 32
  %42 = ashr exact i64 %41, 32
  %43 = mul nsw i64 %42, %38
  %44 = add nsw i64 %43, %35
  %45 = getelementptr inbounds i8, ptr %1, i32 16
  %46 = load i64, ptr %45, align 4
  %47 = shl i64 %46, 32
  %48 = ashr exact i64 %47, 32
  %49 = load i64, ptr %2, align 4
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = mul nsw i64 %51, %48
  %53 = add nsw i64 %44, %52
  %54 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %53, ptr %54, align 4
  %55 = load i64, ptr %19, align 4
  %56 = shl i64 %55, 32
  %57 = ashr exact i64 %56, 32
  %58 = load i64, ptr %39, align 4
  %59 = shl i64 %58, 32
  %60 = ashr exact i64 %59, 32
  %61 = mul nsw i64 %60, %57
  %62 = load i64, ptr %45, align 4
  %63 = shl i64 %62, 32
  %64 = ashr exact i64 %63, 32
  %65 = load i64, ptr %14, align 4
  %66 = shl i64 %65, 32
  %67 = ashr exact i64 %66, 32
  %68 = mul nsw i64 %67, %64
  %69 = add nsw i64 %68, %61
  %70 = load i64, ptr %1, align 4
  %71 = shl i64 %70, 32
  %72 = ashr exact i64 %71, 32
  %73 = getelementptr inbounds i8, ptr %2, i32 24
  %74 = load i64, ptr %73, align 4
  %75 = shl i64 %74, 32
  %76 = ashr exact i64 %75, 32
  %77 = mul nsw i64 %76, %72
  %78 = add nsw i64 %69, %77
  %79 = getelementptr inbounds i8, ptr %1, i32 24
  %80 = load i64, ptr %79, align 4
  %81 = shl i64 %80, 32
  %82 = ashr exact i64 %81, 32
  %83 = load i64, ptr %2, align 4
  %84 = shl i64 %83, 32
  %85 = ashr exact i64 %84, 32
  %86 = mul nsw i64 %85, %82
  %87 = add nsw i64 %78, %86
  %88 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %87, ptr %88, align 4
  %89 = load i64, ptr %45, align 4
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  %92 = load i64, ptr %39, align 4
  %93 = shl i64 %92, 32
  %94 = ashr exact i64 %93, 32
  %95 = mul nsw i64 %94, %91
  %96 = load i64, ptr %19, align 4
  %97 = shl i64 %96, 32
  %98 = ashr exact i64 %97, 32
  %99 = load i64, ptr %73, align 4
  %100 = shl i64 %99, 32
  %101 = ashr exact i64 %100, 32
  %102 = mul nsw i64 %101, %98
  %103 = load i64, ptr %79, align 4
  %104 = shl i64 %103, 32
  %105 = ashr exact i64 %104, 32
  %106 = load i64, ptr %14, align 4
  %107 = shl i64 %106, 32
  %108 = ashr exact i64 %107, 32
  %109 = mul nsw i64 %108, %105
  %110 = add nsw i64 %109, %102
  %111 = shl nsw i64 %110, 1
  %112 = add nsw i64 %111, %95
  %113 = load i64, ptr %1, align 4
  %114 = shl i64 %113, 32
  %115 = ashr exact i64 %114, 32
  %116 = getelementptr inbounds i8, ptr %2, i32 32
  %117 = load i64, ptr %116, align 4
  %118 = shl i64 %117, 32
  %119 = ashr exact i64 %118, 32
  %120 = mul nsw i64 %119, %115
  %121 = add nsw i64 %112, %120
  %122 = getelementptr inbounds i8, ptr %1, i32 32
  %123 = load i64, ptr %122, align 4
  %124 = shl i64 %123, 32
  %125 = ashr exact i64 %124, 32
  %126 = load i64, ptr %2, align 4
  %127 = shl i64 %126, 32
  %128 = ashr exact i64 %127, 32
  %129 = mul nsw i64 %128, %125
  %130 = add nsw i64 %121, %129
  %131 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %130, ptr %131, align 4
  %132 = load i64, ptr %45, align 4
  %133 = shl i64 %132, 32
  %134 = ashr exact i64 %133, 32
  %135 = load i64, ptr %73, align 4
  %136 = shl i64 %135, 32
  %137 = ashr exact i64 %136, 32
  %138 = mul nsw i64 %137, %134
  %139 = load i64, ptr %79, align 4
  %140 = shl i64 %139, 32
  %141 = ashr exact i64 %140, 32
  %142 = load i64, ptr %39, align 4
  %143 = shl i64 %142, 32
  %144 = ashr exact i64 %143, 32
  %145 = mul nsw i64 %144, %141
  %146 = add nsw i64 %145, %138
  %147 = load i64, ptr %19, align 4
  %148 = shl i64 %147, 32
  %149 = ashr exact i64 %148, 32
  %150 = load i64, ptr %116, align 4
  %151 = shl i64 %150, 32
  %152 = ashr exact i64 %151, 32
  %153 = mul nsw i64 %152, %149
  %154 = add nsw i64 %146, %153
  %155 = load i64, ptr %122, align 4
  %156 = shl i64 %155, 32
  %157 = ashr exact i64 %156, 32
  %158 = load i64, ptr %14, align 4
  %159 = shl i64 %158, 32
  %160 = ashr exact i64 %159, 32
  %161 = mul nsw i64 %160, %157
  %162 = add nsw i64 %154, %161
  %163 = load i64, ptr %1, align 4
  %164 = shl i64 %163, 32
  %165 = ashr exact i64 %164, 32
  %166 = getelementptr inbounds i8, ptr %2, i32 40
  %167 = load i64, ptr %166, align 4
  %168 = shl i64 %167, 32
  %169 = ashr exact i64 %168, 32
  %170 = mul nsw i64 %169, %165
  %171 = add nsw i64 %162, %170
  %172 = getelementptr inbounds i8, ptr %1, i32 40
  %173 = load i64, ptr %172, align 4
  %174 = shl i64 %173, 32
  %175 = ashr exact i64 %174, 32
  %176 = load i64, ptr %2, align 4
  %177 = shl i64 %176, 32
  %178 = ashr exact i64 %177, 32
  %179 = mul nsw i64 %178, %175
  %180 = add nsw i64 %171, %179
  %181 = getelementptr inbounds i8, ptr %0, i32 40
  store i64 %180, ptr %181, align 4
  %182 = load i64, ptr %79, align 4
  %183 = shl i64 %182, 32
  %184 = ashr exact i64 %183, 32
  %185 = load i64, ptr %73, align 4
  %186 = shl i64 %185, 32
  %187 = ashr exact i64 %186, 32
  %188 = mul nsw i64 %187, %184
  %189 = load i64, ptr %19, align 4
  %190 = shl i64 %189, 32
  %191 = ashr exact i64 %190, 32
  %192 = load i64, ptr %166, align 4
  %193 = shl i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = mul nsw i64 %194, %191
  %196 = add nsw i64 %195, %188
  %197 = load i64, ptr %172, align 4
  %198 = shl i64 %197, 32
  %199 = ashr exact i64 %198, 32
  %200 = load i64, ptr %14, align 4
  %201 = shl i64 %200, 32
  %202 = ashr exact i64 %201, 32
  %203 = mul nsw i64 %202, %199
  %204 = add nsw i64 %196, %203
  %205 = shl nsw i64 %204, 1
  %206 = load i64, ptr %45, align 4
  %207 = shl i64 %206, 32
  %208 = ashr exact i64 %207, 32
  %209 = load i64, ptr %116, align 4
  %210 = shl i64 %209, 32
  %211 = ashr exact i64 %210, 32
  %212 = mul nsw i64 %211, %208
  %213 = add nsw i64 %205, %212
  %214 = load i64, ptr %122, align 4
  %215 = shl i64 %214, 32
  %216 = ashr exact i64 %215, 32
  %217 = load i64, ptr %39, align 4
  %218 = shl i64 %217, 32
  %219 = ashr exact i64 %218, 32
  %220 = mul nsw i64 %219, %216
  %221 = add nsw i64 %213, %220
  %222 = load i64, ptr %1, align 4
  %223 = shl i64 %222, 32
  %224 = ashr exact i64 %223, 32
  %225 = getelementptr inbounds i8, ptr %2, i32 48
  %226 = load i64, ptr %225, align 4
  %227 = shl i64 %226, 32
  %228 = ashr exact i64 %227, 32
  %229 = mul nsw i64 %228, %224
  %230 = add nsw i64 %221, %229
  %231 = getelementptr inbounds i8, ptr %1, i32 48
  %232 = load i64, ptr %231, align 4
  %233 = shl i64 %232, 32
  %234 = ashr exact i64 %233, 32
  %235 = load i64, ptr %2, align 4
  %236 = shl i64 %235, 32
  %237 = ashr exact i64 %236, 32
  %238 = mul nsw i64 %237, %234
  %239 = add nsw i64 %230, %238
  %240 = getelementptr inbounds i8, ptr %0, i32 48
  store i64 %239, ptr %240, align 4
  %241 = load i64, ptr %79, align 4
  %242 = shl i64 %241, 32
  %243 = ashr exact i64 %242, 32
  %244 = load i64, ptr %116, align 4
  %245 = shl i64 %244, 32
  %246 = ashr exact i64 %245, 32
  %247 = mul nsw i64 %246, %243
  %248 = load i64, ptr %122, align 4
  %249 = shl i64 %248, 32
  %250 = ashr exact i64 %249, 32
  %251 = load i64, ptr %73, align 4
  %252 = shl i64 %251, 32
  %253 = ashr exact i64 %252, 32
  %254 = mul nsw i64 %253, %250
  %255 = add nsw i64 %254, %247
  %256 = load i64, ptr %45, align 4
  %257 = shl i64 %256, 32
  %258 = ashr exact i64 %257, 32
  %259 = load i64, ptr %166, align 4
  %260 = shl i64 %259, 32
  %261 = ashr exact i64 %260, 32
  %262 = mul nsw i64 %261, %258
  %263 = add nsw i64 %255, %262
  %264 = load i64, ptr %172, align 4
  %265 = shl i64 %264, 32
  %266 = ashr exact i64 %265, 32
  %267 = load i64, ptr %39, align 4
  %268 = shl i64 %267, 32
  %269 = ashr exact i64 %268, 32
  %270 = mul nsw i64 %269, %266
  %271 = add nsw i64 %263, %270
  %272 = load i64, ptr %19, align 4
  %273 = shl i64 %272, 32
  %274 = ashr exact i64 %273, 32
  %275 = load i64, ptr %225, align 4
  %276 = shl i64 %275, 32
  %277 = ashr exact i64 %276, 32
  %278 = mul nsw i64 %277, %274
  %279 = add nsw i64 %271, %278
  %280 = load i64, ptr %231, align 4
  %281 = shl i64 %280, 32
  %282 = ashr exact i64 %281, 32
  %283 = load i64, ptr %14, align 4
  %284 = shl i64 %283, 32
  %285 = ashr exact i64 %284, 32
  %286 = mul nsw i64 %285, %282
  %287 = add nsw i64 %279, %286
  %288 = load i64, ptr %1, align 4
  %289 = shl i64 %288, 32
  %290 = ashr exact i64 %289, 32
  %291 = getelementptr inbounds i8, ptr %2, i32 56
  %292 = load i64, ptr %291, align 4
  %293 = shl i64 %292, 32
  %294 = ashr exact i64 %293, 32
  %295 = mul nsw i64 %294, %290
  %296 = add nsw i64 %287, %295
  %297 = getelementptr inbounds i8, ptr %1, i32 56
  %298 = load i64, ptr %297, align 4
  %299 = shl i64 %298, 32
  %300 = ashr exact i64 %299, 32
  %301 = load i64, ptr %2, align 4
  %302 = shl i64 %301, 32
  %303 = ashr exact i64 %302, 32
  %304 = mul nsw i64 %303, %300
  %305 = add nsw i64 %296, %304
  %306 = getelementptr inbounds i8, ptr %0, i32 56
  store i64 %305, ptr %306, align 4
  %307 = load i64, ptr %122, align 4
  %308 = shl i64 %307, 32
  %309 = ashr exact i64 %308, 32
  %310 = load i64, ptr %116, align 4
  %311 = shl i64 %310, 32
  %312 = ashr exact i64 %311, 32
  %313 = mul nsw i64 %312, %309
  %314 = load i64, ptr %79, align 4
  %315 = shl i64 %314, 32
  %316 = ashr exact i64 %315, 32
  %317 = load i64, ptr %166, align 4
  %318 = shl i64 %317, 32
  %319 = ashr exact i64 %318, 32
  %320 = mul nsw i64 %319, %316
  %321 = load i64, ptr %172, align 4
  %322 = shl i64 %321, 32
  %323 = ashr exact i64 %322, 32
  %324 = load i64, ptr %73, align 4
  %325 = shl i64 %324, 32
  %326 = ashr exact i64 %325, 32
  %327 = mul nsw i64 %326, %323
  %328 = add nsw i64 %327, %320
  %329 = load i64, ptr %19, align 4
  %330 = shl i64 %329, 32
  %331 = ashr exact i64 %330, 32
  %332 = load i64, ptr %291, align 4
  %333 = shl i64 %332, 32
  %334 = ashr exact i64 %333, 32
  %335 = mul nsw i64 %334, %331
  %336 = add nsw i64 %328, %335
  %337 = load i64, ptr %297, align 4
  %338 = shl i64 %337, 32
  %339 = ashr exact i64 %338, 32
  %340 = load i64, ptr %14, align 4
  %341 = shl i64 %340, 32
  %342 = ashr exact i64 %341, 32
  %343 = mul nsw i64 %342, %339
  %344 = add nsw i64 %336, %343
  %345 = shl nsw i64 %344, 1
  %346 = add nsw i64 %345, %313
  %347 = load i64, ptr %45, align 4
  %348 = shl i64 %347, 32
  %349 = ashr exact i64 %348, 32
  %350 = load i64, ptr %225, align 4
  %351 = shl i64 %350, 32
  %352 = ashr exact i64 %351, 32
  %353 = mul nsw i64 %352, %349
  %354 = add nsw i64 %346, %353
  %355 = load i64, ptr %231, align 4
  %356 = shl i64 %355, 32
  %357 = ashr exact i64 %356, 32
  %358 = load i64, ptr %39, align 4
  %359 = shl i64 %358, 32
  %360 = ashr exact i64 %359, 32
  %361 = mul nsw i64 %360, %357
  %362 = add nsw i64 %354, %361
  %363 = load i64, ptr %1, align 4
  %364 = shl i64 %363, 32
  %365 = ashr exact i64 %364, 32
  %366 = getelementptr inbounds i8, ptr %2, i32 64
  %367 = load i64, ptr %366, align 4
  %368 = shl i64 %367, 32
  %369 = ashr exact i64 %368, 32
  %370 = mul nsw i64 %369, %365
  %371 = add nsw i64 %362, %370
  %372 = getelementptr inbounds i8, ptr %1, i32 64
  %373 = load i64, ptr %372, align 4
  %374 = shl i64 %373, 32
  %375 = ashr exact i64 %374, 32
  %376 = load i64, ptr %2, align 4
  %377 = shl i64 %376, 32
  %378 = ashr exact i64 %377, 32
  %379 = mul nsw i64 %378, %375
  %380 = add nsw i64 %371, %379
  %381 = getelementptr inbounds i8, ptr %0, i32 64
  store i64 %380, ptr %381, align 4
  %382 = load i64, ptr %122, align 4
  %383 = shl i64 %382, 32
  %384 = ashr exact i64 %383, 32
  %385 = load i64, ptr %166, align 4
  %386 = shl i64 %385, 32
  %387 = ashr exact i64 %386, 32
  %388 = mul nsw i64 %387, %384
  %389 = load i64, ptr %172, align 4
  %390 = shl i64 %389, 32
  %391 = ashr exact i64 %390, 32
  %392 = load i64, ptr %116, align 4
  %393 = shl i64 %392, 32
  %394 = ashr exact i64 %393, 32
  %395 = mul nsw i64 %394, %391
  %396 = add nsw i64 %395, %388
  %397 = load i64, ptr %79, align 4
  %398 = shl i64 %397, 32
  %399 = ashr exact i64 %398, 32
  %400 = load i64, ptr %225, align 4
  %401 = shl i64 %400, 32
  %402 = ashr exact i64 %401, 32
  %403 = mul nsw i64 %402, %399
  %404 = add nsw i64 %396, %403
  %405 = load i64, ptr %231, align 4
  %406 = shl i64 %405, 32
  %407 = ashr exact i64 %406, 32
  %408 = load i64, ptr %73, align 4
  %409 = shl i64 %408, 32
  %410 = ashr exact i64 %409, 32
  %411 = mul nsw i64 %410, %407
  %412 = add nsw i64 %404, %411
  %413 = load i64, ptr %45, align 4
  %414 = shl i64 %413, 32
  %415 = ashr exact i64 %414, 32
  %416 = load i64, ptr %291, align 4
  %417 = shl i64 %416, 32
  %418 = ashr exact i64 %417, 32
  %419 = mul nsw i64 %418, %415
  %420 = add nsw i64 %412, %419
  %421 = load i64, ptr %297, align 4
  %422 = shl i64 %421, 32
  %423 = ashr exact i64 %422, 32
  %424 = load i64, ptr %39, align 4
  %425 = shl i64 %424, 32
  %426 = ashr exact i64 %425, 32
  %427 = mul nsw i64 %426, %423
  %428 = add nsw i64 %420, %427
  %429 = load i64, ptr %19, align 4
  %430 = shl i64 %429, 32
  %431 = ashr exact i64 %430, 32
  %432 = load i64, ptr %366, align 4
  %433 = shl i64 %432, 32
  %434 = ashr exact i64 %433, 32
  %435 = mul nsw i64 %434, %431
  %436 = add nsw i64 %428, %435
  %437 = load i64, ptr %372, align 4
  %438 = shl i64 %437, 32
  %439 = ashr exact i64 %438, 32
  %440 = load i64, ptr %14, align 4
  %441 = shl i64 %440, 32
  %442 = ashr exact i64 %441, 32
  %443 = mul nsw i64 %442, %439
  %444 = add nsw i64 %436, %443
  %445 = load i64, ptr %1, align 4
  %446 = shl i64 %445, 32
  %447 = ashr exact i64 %446, 32
  %448 = getelementptr inbounds i8, ptr %2, i32 72
  %449 = load i64, ptr %448, align 4
  %450 = shl i64 %449, 32
  %451 = ashr exact i64 %450, 32
  %452 = mul nsw i64 %451, %447
  %453 = add nsw i64 %444, %452
  %454 = getelementptr inbounds i8, ptr %1, i32 72
  %455 = load i64, ptr %454, align 4
  %456 = shl i64 %455, 32
  %457 = ashr exact i64 %456, 32
  %458 = load i64, ptr %2, align 4
  %459 = shl i64 %458, 32
  %460 = ashr exact i64 %459, 32
  %461 = mul nsw i64 %460, %457
  %462 = add nsw i64 %453, %461
  %463 = getelementptr inbounds i8, ptr %0, i32 72
  store i64 %462, ptr %463, align 4
  %464 = load i64, ptr %172, align 4
  %465 = shl i64 %464, 32
  %466 = ashr exact i64 %465, 32
  %467 = load i64, ptr %166, align 4
  %468 = shl i64 %467, 32
  %469 = ashr exact i64 %468, 32
  %470 = mul nsw i64 %469, %466
  %471 = load i64, ptr %79, align 4
  %472 = shl i64 %471, 32
  %473 = ashr exact i64 %472, 32
  %474 = load i64, ptr %291, align 4
  %475 = shl i64 %474, 32
  %476 = ashr exact i64 %475, 32
  %477 = mul nsw i64 %476, %473
  %478 = add nsw i64 %477, %470
  %479 = load i64, ptr %297, align 4
  %480 = shl i64 %479, 32
  %481 = ashr exact i64 %480, 32
  %482 = load i64, ptr %73, align 4
  %483 = shl i64 %482, 32
  %484 = ashr exact i64 %483, 32
  %485 = mul nsw i64 %484, %481
  %486 = add nsw i64 %478, %485
  %487 = load i64, ptr %19, align 4
  %488 = shl i64 %487, 32
  %489 = ashr exact i64 %488, 32
  %490 = load i64, ptr %448, align 4
  %491 = shl i64 %490, 32
  %492 = ashr exact i64 %491, 32
  %493 = mul nsw i64 %492, %489
  %494 = add nsw i64 %486, %493
  %495 = load i64, ptr %454, align 4
  %496 = shl i64 %495, 32
  %497 = ashr exact i64 %496, 32
  %498 = load i64, ptr %14, align 4
  %499 = shl i64 %498, 32
  %500 = ashr exact i64 %499, 32
  %501 = mul nsw i64 %500, %497
  %502 = add nsw i64 %494, %501
  %503 = shl nsw i64 %502, 1
  %504 = load i64, ptr %122, align 4
  %505 = shl i64 %504, 32
  %506 = ashr exact i64 %505, 32
  %507 = load i64, ptr %225, align 4
  %508 = shl i64 %507, 32
  %509 = ashr exact i64 %508, 32
  %510 = mul nsw i64 %509, %506
  %511 = add nsw i64 %503, %510
  %512 = load i64, ptr %231, align 4
  %513 = shl i64 %512, 32
  %514 = ashr exact i64 %513, 32
  %515 = load i64, ptr %116, align 4
  %516 = shl i64 %515, 32
  %517 = ashr exact i64 %516, 32
  %518 = mul nsw i64 %517, %514
  %519 = add nsw i64 %511, %518
  %520 = load i64, ptr %45, align 4
  %521 = shl i64 %520, 32
  %522 = ashr exact i64 %521, 32
  %523 = load i64, ptr %366, align 4
  %524 = shl i64 %523, 32
  %525 = ashr exact i64 %524, 32
  %526 = mul nsw i64 %525, %522
  %527 = add nsw i64 %519, %526
  %528 = load i64, ptr %372, align 4
  %529 = shl i64 %528, 32
  %530 = ashr exact i64 %529, 32
  %531 = load i64, ptr %39, align 4
  %532 = shl i64 %531, 32
  %533 = ashr exact i64 %532, 32
  %534 = mul nsw i64 %533, %530
  %535 = add nsw i64 %527, %534
  %536 = getelementptr inbounds i8, ptr %0, i32 80
  store i64 %535, ptr %536, align 4
  %537 = load i64, ptr %172, align 4
  %538 = shl i64 %537, 32
  %539 = ashr exact i64 %538, 32
  %540 = load i64, ptr %225, align 4
  %541 = shl i64 %540, 32
  %542 = ashr exact i64 %541, 32
  %543 = mul nsw i64 %542, %539
  %544 = load i64, ptr %231, align 4
  %545 = shl i64 %544, 32
  %546 = ashr exact i64 %545, 32
  %547 = load i64, ptr %166, align 4
  %548 = shl i64 %547, 32
  %549 = ashr exact i64 %548, 32
  %550 = mul nsw i64 %549, %546
  %551 = add nsw i64 %550, %543
  %552 = load i64, ptr %122, align 4
  %553 = shl i64 %552, 32
  %554 = ashr exact i64 %553, 32
  %555 = load i64, ptr %291, align 4
  %556 = shl i64 %555, 32
  %557 = ashr exact i64 %556, 32
  %558 = mul nsw i64 %557, %554
  %559 = add nsw i64 %551, %558
  %560 = load i64, ptr %297, align 4
  %561 = shl i64 %560, 32
  %562 = ashr exact i64 %561, 32
  %563 = load i64, ptr %116, align 4
  %564 = shl i64 %563, 32
  %565 = ashr exact i64 %564, 32
  %566 = mul nsw i64 %565, %562
  %567 = add nsw i64 %559, %566
  %568 = load i64, ptr %79, align 4
  %569 = shl i64 %568, 32
  %570 = ashr exact i64 %569, 32
  %571 = load i64, ptr %366, align 4
  %572 = shl i64 %571, 32
  %573 = ashr exact i64 %572, 32
  %574 = mul nsw i64 %573, %570
  %575 = add nsw i64 %567, %574
  %576 = load i64, ptr %372, align 4
  %577 = shl i64 %576, 32
  %578 = ashr exact i64 %577, 32
  %579 = load i64, ptr %73, align 4
  %580 = shl i64 %579, 32
  %581 = ashr exact i64 %580, 32
  %582 = mul nsw i64 %581, %578
  %583 = add nsw i64 %575, %582
  %584 = load i64, ptr %45, align 4
  %585 = shl i64 %584, 32
  %586 = ashr exact i64 %585, 32
  %587 = load i64, ptr %448, align 4
  %588 = shl i64 %587, 32
  %589 = ashr exact i64 %588, 32
  %590 = mul nsw i64 %589, %586
  %591 = add nsw i64 %583, %590
  %592 = load i64, ptr %454, align 4
  %593 = shl i64 %592, 32
  %594 = ashr exact i64 %593, 32
  %595 = load i64, ptr %39, align 4
  %596 = shl i64 %595, 32
  %597 = ashr exact i64 %596, 32
  %598 = mul nsw i64 %597, %594
  %599 = add nsw i64 %591, %598
  %600 = getelementptr inbounds i8, ptr %0, i32 88
  store i64 %599, ptr %600, align 4
  %601 = load i64, ptr %231, align 4
  %602 = shl i64 %601, 32
  %603 = ashr exact i64 %602, 32
  %604 = load i64, ptr %225, align 4
  %605 = shl i64 %604, 32
  %606 = ashr exact i64 %605, 32
  %607 = mul nsw i64 %606, %603
  %608 = load i64, ptr %172, align 4
  %609 = shl i64 %608, 32
  %610 = ashr exact i64 %609, 32
  %611 = load i64, ptr %291, align 4
  %612 = shl i64 %611, 32
  %613 = ashr exact i64 %612, 32
  %614 = mul nsw i64 %613, %610
  %615 = load i64, ptr %297, align 4
  %616 = shl i64 %615, 32
  %617 = ashr exact i64 %616, 32
  %618 = load i64, ptr %166, align 4
  %619 = shl i64 %618, 32
  %620 = ashr exact i64 %619, 32
  %621 = mul nsw i64 %620, %617
  %622 = add nsw i64 %621, %614
  %623 = load i64, ptr %79, align 4
  %624 = shl i64 %623, 32
  %625 = ashr exact i64 %624, 32
  %626 = load i64, ptr %448, align 4
  %627 = shl i64 %626, 32
  %628 = ashr exact i64 %627, 32
  %629 = mul nsw i64 %628, %625
  %630 = add nsw i64 %622, %629
  %631 = load i64, ptr %454, align 4
  %632 = shl i64 %631, 32
  %633 = ashr exact i64 %632, 32
  %634 = load i64, ptr %73, align 4
  %635 = shl i64 %634, 32
  %636 = ashr exact i64 %635, 32
  %637 = mul nsw i64 %636, %633
  %638 = add nsw i64 %630, %637
  %639 = shl nsw i64 %638, 1
  %640 = add nsw i64 %639, %607
  %641 = load i64, ptr %122, align 4
  %642 = shl i64 %641, 32
  %643 = ashr exact i64 %642, 32
  %644 = load i64, ptr %366, align 4
  %645 = shl i64 %644, 32
  %646 = ashr exact i64 %645, 32
  %647 = mul nsw i64 %646, %643
  %648 = add nsw i64 %640, %647
  %649 = load i64, ptr %372, align 4
  %650 = shl i64 %649, 32
  %651 = ashr exact i64 %650, 32
  %652 = load i64, ptr %116, align 4
  %653 = shl i64 %652, 32
  %654 = ashr exact i64 %653, 32
  %655 = mul nsw i64 %654, %651
  %656 = add nsw i64 %648, %655
  %657 = getelementptr inbounds i8, ptr %0, i32 96
  store i64 %656, ptr %657, align 4
  %658 = load i64, ptr %231, align 4
  %659 = shl i64 %658, 32
  %660 = ashr exact i64 %659, 32
  %661 = load i64, ptr %291, align 4
  %662 = shl i64 %661, 32
  %663 = ashr exact i64 %662, 32
  %664 = mul nsw i64 %663, %660
  %665 = load i64, ptr %297, align 4
  %666 = shl i64 %665, 32
  %667 = ashr exact i64 %666, 32
  %668 = load i64, ptr %225, align 4
  %669 = shl i64 %668, 32
  %670 = ashr exact i64 %669, 32
  %671 = mul nsw i64 %670, %667
  %672 = add nsw i64 %671, %664
  %673 = load i64, ptr %172, align 4
  %674 = shl i64 %673, 32
  %675 = ashr exact i64 %674, 32
  %676 = load i64, ptr %366, align 4
  %677 = shl i64 %676, 32
  %678 = ashr exact i64 %677, 32
  %679 = mul nsw i64 %678, %675
  %680 = add nsw i64 %672, %679
  %681 = load i64, ptr %372, align 4
  %682 = shl i64 %681, 32
  %683 = ashr exact i64 %682, 32
  %684 = load i64, ptr %166, align 4
  %685 = shl i64 %684, 32
  %686 = ashr exact i64 %685, 32
  %687 = mul nsw i64 %686, %683
  %688 = add nsw i64 %680, %687
  %689 = load i64, ptr %122, align 4
  %690 = shl i64 %689, 32
  %691 = ashr exact i64 %690, 32
  %692 = load i64, ptr %448, align 4
  %693 = shl i64 %692, 32
  %694 = ashr exact i64 %693, 32
  %695 = mul nsw i64 %694, %691
  %696 = add nsw i64 %688, %695
  %697 = load i64, ptr %454, align 4
  %698 = shl i64 %697, 32
  %699 = ashr exact i64 %698, 32
  %700 = load i64, ptr %116, align 4
  %701 = shl i64 %700, 32
  %702 = ashr exact i64 %701, 32
  %703 = mul nsw i64 %702, %699
  %704 = add nsw i64 %696, %703
  %705 = getelementptr inbounds i8, ptr %0, i32 104
  store i64 %704, ptr %705, align 4
  %706 = load i64, ptr %297, align 4
  %707 = shl i64 %706, 32
  %708 = ashr exact i64 %707, 32
  %709 = load i64, ptr %291, align 4
  %710 = shl i64 %709, 32
  %711 = ashr exact i64 %710, 32
  %712 = mul nsw i64 %711, %708
  %713 = load i64, ptr %172, align 4
  %714 = shl i64 %713, 32
  %715 = ashr exact i64 %714, 32
  %716 = load i64, ptr %448, align 4
  %717 = shl i64 %716, 32
  %718 = ashr exact i64 %717, 32
  %719 = mul nsw i64 %718, %715
  %720 = add nsw i64 %719, %712
  %721 = load i64, ptr %454, align 4
  %722 = shl i64 %721, 32
  %723 = ashr exact i64 %722, 32
  %724 = load i64, ptr %166, align 4
  %725 = shl i64 %724, 32
  %726 = ashr exact i64 %725, 32
  %727 = mul nsw i64 %726, %723
  %728 = add nsw i64 %720, %727
  %729 = shl nsw i64 %728, 1
  %730 = load i64, ptr %231, align 4
  %731 = shl i64 %730, 32
  %732 = ashr exact i64 %731, 32
  %733 = load i64, ptr %366, align 4
  %734 = shl i64 %733, 32
  %735 = ashr exact i64 %734, 32
  %736 = mul nsw i64 %735, %732
  %737 = add nsw i64 %729, %736
  %738 = load i64, ptr %372, align 4
  %739 = shl i64 %738, 32
  %740 = ashr exact i64 %739, 32
  %741 = load i64, ptr %225, align 4
  %742 = shl i64 %741, 32
  %743 = ashr exact i64 %742, 32
  %744 = mul nsw i64 %743, %740
  %745 = add nsw i64 %737, %744
  %746 = getelementptr inbounds i8, ptr %0, i32 112
  store i64 %745, ptr %746, align 4
  %747 = load i64, ptr %297, align 4
  %748 = shl i64 %747, 32
  %749 = ashr exact i64 %748, 32
  %750 = load i64, ptr %366, align 4
  %751 = shl i64 %750, 32
  %752 = ashr exact i64 %751, 32
  %753 = mul nsw i64 %752, %749
  %754 = load i64, ptr %372, align 4
  %755 = shl i64 %754, 32
  %756 = ashr exact i64 %755, 32
  %757 = load i64, ptr %291, align 4
  %758 = shl i64 %757, 32
  %759 = ashr exact i64 %758, 32
  %760 = mul nsw i64 %759, %756
  %761 = add nsw i64 %760, %753
  %762 = load i64, ptr %231, align 4
  %763 = shl i64 %762, 32
  %764 = ashr exact i64 %763, 32
  %765 = load i64, ptr %448, align 4
  %766 = shl i64 %765, 32
  %767 = ashr exact i64 %766, 32
  %768 = mul nsw i64 %767, %764
  %769 = add nsw i64 %761, %768
  %770 = load i64, ptr %454, align 4
  %771 = shl i64 %770, 32
  %772 = ashr exact i64 %771, 32
  %773 = load i64, ptr %225, align 4
  %774 = shl i64 %773, 32
  %775 = ashr exact i64 %774, 32
  %776 = mul nsw i64 %775, %772
  %777 = add nsw i64 %769, %776
  %778 = getelementptr inbounds i8, ptr %0, i32 120
  store i64 %777, ptr %778, align 4
  %779 = load i64, ptr %372, align 4
  %780 = shl i64 %779, 32
  %781 = ashr exact i64 %780, 32
  %782 = load i64, ptr %366, align 4
  %783 = shl i64 %782, 32
  %784 = ashr exact i64 %783, 32
  %785 = mul nsw i64 %784, %781
  %786 = load i64, ptr %297, align 4
  %787 = shl i64 %786, 32
  %788 = ashr exact i64 %787, 32
  %789 = load i64, ptr %448, align 4
  %790 = shl i64 %789, 32
  %791 = ashr exact i64 %790, 32
  %792 = mul nsw i64 %791, %788
  %793 = load i64, ptr %454, align 4
  %794 = shl i64 %793, 32
  %795 = ashr exact i64 %794, 32
  %796 = load i64, ptr %291, align 4
  %797 = shl i64 %796, 32
  %798 = ashr exact i64 %797, 32
  %799 = mul nsw i64 %798, %795
  %800 = add nsw i64 %799, %792
  %801 = shl nsw i64 %800, 1
  %802 = add nsw i64 %801, %785
  %803 = getelementptr inbounds i8, ptr %0, i32 128
  store i64 %802, ptr %803, align 4
  %804 = load i64, ptr %372, align 4
  %805 = shl i64 %804, 32
  %806 = ashr exact i64 %805, 32
  %807 = load i64, ptr %448, align 4
  %808 = shl i64 %807, 32
  %809 = ashr exact i64 %808, 32
  %810 = mul nsw i64 %809, %806
  %811 = load i64, ptr %454, align 4
  %812 = shl i64 %811, 32
  %813 = ashr exact i64 %812, 32
  %814 = load i64, ptr %366, align 4
  %815 = shl i64 %814, 32
  %816 = ashr exact i64 %815, 32
  %817 = mul nsw i64 %816, %813
  %818 = add nsw i64 %817, %810
  %819 = getelementptr inbounds i8, ptr %0, i32 136
  store i64 %818, ptr %819, align 4
  %820 = load i64, ptr %454, align 4
  %821 = shl i64 %820, 32
  %822 = ashr exact i64 %821, 31
  %823 = load i64, ptr %448, align 4
  %824 = shl i64 %823, 32
  %825 = ashr exact i64 %824, 32
  %826 = mul nsw i64 %825, %822
  %827 = getelementptr inbounds i8, ptr %0, i32 144
  store i64 %826, ptr %827, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @freduce_degree(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 144
  %3 = load i64, ptr %2, align 4
  %4 = shl i64 %3, 4
  %5 = getelementptr inbounds i8, ptr %0, i32 64
  %6 = load i64, ptr %5, align 4
  %7 = add nsw i64 %6, %4
  %8 = shl i64 %3, 1
  %9 = add nsw i64 %7, %8
  store i64 %9, ptr %5, align 4
  %10 = load i64, ptr %2, align 4
  %11 = add nsw i64 %9, %10
  store i64 %11, ptr %5, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 136
  %13 = load i64, ptr %12, align 4
  %14 = shl i64 %13, 4
  %15 = getelementptr inbounds i8, ptr %0, i32 56
  %16 = load i64, ptr %15, align 4
  %17 = add nsw i64 %16, %14
  %18 = shl i64 %13, 1
  %19 = add nsw i64 %17, %18
  store i64 %19, ptr %15, align 4
  %20 = load i64, ptr %12, align 4
  %21 = add nsw i64 %19, %20
  store i64 %21, ptr %15, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 128
  %23 = load i64, ptr %22, align 4
  %24 = shl i64 %23, 4
  %25 = getelementptr inbounds i8, ptr %0, i32 48
  %26 = load i64, ptr %25, align 4
  %27 = add nsw i64 %26, %24
  %28 = shl i64 %23, 1
  %29 = add nsw i64 %27, %28
  store i64 %29, ptr %25, align 4
  %30 = load i64, ptr %22, align 4
  %31 = add nsw i64 %29, %30
  store i64 %31, ptr %25, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 120
  %33 = load i64, ptr %32, align 4
  %34 = shl i64 %33, 4
  %35 = getelementptr inbounds i8, ptr %0, i32 40
  %36 = load i64, ptr %35, align 4
  %37 = add nsw i64 %36, %34
  %38 = shl i64 %33, 1
  %39 = add nsw i64 %37, %38
  store i64 %39, ptr %35, align 4
  %40 = load i64, ptr %32, align 4
  %41 = add nsw i64 %39, %40
  store i64 %41, ptr %35, align 4
  %42 = getelementptr inbounds i8, ptr %0, i32 112
  %43 = load i64, ptr %42, align 4
  %44 = shl i64 %43, 4
  %45 = getelementptr inbounds i8, ptr %0, i32 32
  %46 = load i64, ptr %45, align 4
  %47 = add nsw i64 %46, %44
  %48 = shl i64 %43, 1
  %49 = add nsw i64 %47, %48
  store i64 %49, ptr %45, align 4
  %50 = load i64, ptr %42, align 4
  %51 = add nsw i64 %49, %50
  store i64 %51, ptr %45, align 4
  %52 = getelementptr inbounds i8, ptr %0, i32 104
  %53 = load i64, ptr %52, align 4
  %54 = shl i64 %53, 4
  %55 = getelementptr inbounds i8, ptr %0, i32 24
  %56 = load i64, ptr %55, align 4
  %57 = add nsw i64 %56, %54
  %58 = shl i64 %53, 1
  %59 = add nsw i64 %57, %58
  store i64 %59, ptr %55, align 4
  %60 = load i64, ptr %52, align 4
  %61 = add nsw i64 %59, %60
  store i64 %61, ptr %55, align 4
  %62 = getelementptr inbounds i8, ptr %0, i32 96
  %63 = load i64, ptr %62, align 4
  %64 = shl i64 %63, 4
  %65 = getelementptr inbounds i8, ptr %0, i32 16
  %66 = load i64, ptr %65, align 4
  %67 = add nsw i64 %66, %64
  %68 = shl i64 %63, 1
  %69 = add nsw i64 %67, %68
  store i64 %69, ptr %65, align 4
  %70 = load i64, ptr %62, align 4
  %71 = add nsw i64 %69, %70
  store i64 %71, ptr %65, align 4
  %72 = getelementptr inbounds i8, ptr %0, i32 88
  %73 = load i64, ptr %72, align 4
  %74 = shl i64 %73, 4
  %75 = getelementptr inbounds i8, ptr %0, i32 8
  %76 = load i64, ptr %75, align 4
  %77 = add nsw i64 %76, %74
  %78 = shl i64 %73, 1
  %79 = add nsw i64 %77, %78
  store i64 %79, ptr %75, align 4
  %80 = load i64, ptr %72, align 4
  %81 = add nsw i64 %79, %80
  store i64 %81, ptr %75, align 4
  %82 = getelementptr inbounds i8, ptr %0, i32 80
  %83 = load i64, ptr %82, align 4
  %84 = shl i64 %83, 4
  %85 = load i64, ptr %0, align 4
  %86 = add nsw i64 %85, %84
  %87 = shl i64 %83, 1
  %88 = add nsw i64 %86, %87
  store i64 %88, ptr %0, align 4
  %89 = load i64, ptr %82, align 4
  %90 = add nsw i64 %88, %89
  store i64 %90, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @freduce_coefficients(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 80
  store i64 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %5, %1
  %.0 = phi i32 [ 0, %1 ], [ %20, %5 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = getelementptr inbounds i64, ptr %0, i32 %.0
  %7 = load i64, ptr %6, align 4
  %8 = call fastcc i64 @div_by_2_26(i64 noundef %7)
  %9 = shl nsw i64 %8, 26
  %10 = load i64, ptr %6, align 4
  %11 = sub nsw i64 %10, %9
  store i64 %11, ptr %6, align 4
  %12 = or disjoint i32 %.0, 1
  %13 = getelementptr inbounds i64, ptr %0, i32 %12
  %14 = load i64, ptr %13, align 4
  %15 = add nsw i64 %14, %8
  store i64 %15, ptr %13, align 4
  %16 = call fastcc i64 @div_by_2_25(i64 noundef %15)
  %17 = shl nsw i64 %16, 25
  %18 = load i64, ptr %13, align 4
  %19 = sub nsw i64 %18, %17
  store i64 %19, ptr %13, align 4
  %20 = add nuw nsw i32 %.0, 2
  %21 = getelementptr inbounds i64, ptr %0, i32 %20
  %22 = load i64, ptr %21, align 4
  %23 = add nsw i64 %22, %16
  store i64 %23, ptr %21, align 4
  br label %3, !llvm.loop !27

24:                                               ; preds = %3
  %25 = load i64, ptr %2, align 4
  %26 = shl i64 %25, 4
  %27 = load i64, ptr %0, align 4
  %28 = add nsw i64 %27, %26
  %29 = shl i64 %25, 1
  %30 = add nsw i64 %28, %29
  store i64 %30, ptr %0, align 4
  %31 = load i64, ptr %2, align 4
  %32 = add nsw i64 %30, %31
  store i64 %32, ptr %0, align 4
  store i64 0, ptr %2, align 4
  %33 = call fastcc i64 @div_by_2_26(i64 noundef %32)
  %34 = shl nsw i64 %33, 26
  %35 = load i64, ptr %0, align 4
  %36 = sub nsw i64 %35, %34
  store i64 %36, ptr %0, align 4
  %37 = getelementptr inbounds i8, ptr %0, i32 8
  %38 = load i64, ptr %37, align 4
  %39 = add nsw i64 %38, %33
  store i64 %39, ptr %37, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @fsquare(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [19 x i64], align 8
  call fastcc void @fsquare_inner(ptr noundef nonnull %3, ptr noundef %1)
  call fastcc void @freduce_degree(ptr noundef nonnull %3)
  call fastcc void @freduce_coefficients(ptr noundef nonnull %3)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %3, i32 80, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @fscalar_product(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %11, %6 ]
  %5 = icmp ult i32 %.0, 10
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr inbounds i64, ptr %1, i32 %.0
  %8 = load i64, ptr %7, align 4
  %9 = mul nsw i64 %8, 121665
  %10 = getelementptr inbounds i64, ptr %0, i32 %.0
  store i64 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !28

12:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 -137438953472, 137438953472) i64 @div_by_2_26(i64 noundef %0) unnamed_addr #0 {
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  %4 = ashr i32 %3, 31
  %5 = lshr i32 %4, 6
  %6 = zext nneg i32 %5 to i64
  %7 = add nsw i64 %6, %0
  %8 = ashr i64 %7, 26
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 -274877906944, 274877906944) i64 @div_by_2_25(i64 noundef %0) unnamed_addr #0 {
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  %4 = ashr i32 %3, 31
  %5 = lshr i32 %4, 7
  %6 = zext nneg i32 %5 to i64
  %7 = add nsw i64 %6, %0
  %8 = ashr i64 %7, 25
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @fsquare_inner(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = shl i64 %3, 32
  %5 = ashr exact i64 %4, 32
  %6 = mul nsw i64 %5, %5
  store i64 %6, ptr %0, align 4
  %7 = load i64, ptr %1, align 4
  %8 = shl i64 %7, 32
  %9 = ashr exact i64 %8, 31
  %10 = getelementptr inbounds i8, ptr %1, i32 8
  %11 = load i64, ptr %10, align 4
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = mul nsw i64 %13, %9
  %15 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %14, ptr %15, align 4
  %16 = load i64, ptr %10, align 4
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  %19 = mul nsw i64 %18, %18
  %20 = load i64, ptr %1, align 4
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds i8, ptr %1, i32 16
  %24 = load i64, ptr %23, align 4
  %25 = shl i64 %24, 32
  %26 = ashr exact i64 %25, 32
  %27 = mul nsw i64 %26, %22
  %28 = add nsw i64 %27, %19
  %29 = shl nsw i64 %28, 1
  %30 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %29, ptr %30, align 4
  %31 = load i64, ptr %10, align 4
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = load i64, ptr %23, align 4
  %35 = shl i64 %34, 32
  %36 = ashr exact i64 %35, 32
  %37 = mul nsw i64 %36, %33
  %38 = load i64, ptr %1, align 4
  %39 = shl i64 %38, 32
  %40 = ashr exact i64 %39, 32
  %41 = getelementptr inbounds i8, ptr %1, i32 24
  %42 = load i64, ptr %41, align 4
  %43 = shl i64 %42, 32
  %44 = ashr exact i64 %43, 32
  %45 = mul nsw i64 %44, %40
  %46 = add nsw i64 %45, %37
  %47 = shl nsw i64 %46, 1
  %48 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %47, ptr %48, align 4
  %49 = load i64, ptr %23, align 4
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = mul nsw i64 %51, %51
  %53 = load i64, ptr %10, align 4
  %54 = shl i64 %53, 32
  %55 = ashr exact i64 %54, 30
  %56 = load i64, ptr %41, align 4
  %57 = shl i64 %56, 32
  %58 = ashr exact i64 %57, 32
  %59 = mul nsw i64 %58, %55
  %60 = add nsw i64 %59, %52
  %61 = load i64, ptr %1, align 4
  %62 = shl i64 %61, 32
  %63 = ashr exact i64 %62, 31
  %64 = getelementptr inbounds i8, ptr %1, i32 32
  %65 = load i64, ptr %64, align 4
  %66 = shl i64 %65, 32
  %67 = ashr exact i64 %66, 32
  %68 = mul nsw i64 %67, %63
  %69 = add nsw i64 %60, %68
  %70 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %69, ptr %70, align 4
  %71 = load i64, ptr %23, align 4
  %72 = shl i64 %71, 32
  %73 = ashr exact i64 %72, 32
  %74 = load i64, ptr %41, align 4
  %75 = shl i64 %74, 32
  %76 = ashr exact i64 %75, 32
  %77 = mul nsw i64 %76, %73
  %78 = load i64, ptr %10, align 4
  %79 = shl i64 %78, 32
  %80 = ashr exact i64 %79, 32
  %81 = load i64, ptr %64, align 4
  %82 = shl i64 %81, 32
  %83 = ashr exact i64 %82, 32
  %84 = mul nsw i64 %83, %80
  %85 = add nsw i64 %84, %77
  %86 = load i64, ptr %1, align 4
  %87 = shl i64 %86, 32
  %88 = ashr exact i64 %87, 32
  %89 = getelementptr inbounds i8, ptr %1, i32 40
  %90 = load i64, ptr %89, align 4
  %91 = shl i64 %90, 32
  %92 = ashr exact i64 %91, 32
  %93 = mul nsw i64 %92, %88
  %94 = add nsw i64 %85, %93
  %95 = shl nsw i64 %94, 1
  %96 = getelementptr inbounds i8, ptr %0, i32 40
  store i64 %95, ptr %96, align 4
  %97 = load i64, ptr %41, align 4
  %98 = shl i64 %97, 32
  %99 = ashr exact i64 %98, 32
  %100 = mul nsw i64 %99, %99
  %101 = load i64, ptr %23, align 4
  %102 = shl i64 %101, 32
  %103 = ashr exact i64 %102, 32
  %104 = load i64, ptr %64, align 4
  %105 = shl i64 %104, 32
  %106 = ashr exact i64 %105, 32
  %107 = mul nsw i64 %106, %103
  %108 = add nsw i64 %107, %100
  %109 = load i64, ptr %1, align 4
  %110 = shl i64 %109, 32
  %111 = ashr exact i64 %110, 32
  %112 = getelementptr inbounds i8, ptr %1, i32 48
  %113 = load i64, ptr %112, align 4
  %114 = shl i64 %113, 32
  %115 = ashr exact i64 %114, 32
  %116 = mul nsw i64 %115, %111
  %117 = add nsw i64 %108, %116
  %118 = load i64, ptr %10, align 4
  %119 = shl i64 %118, 32
  %120 = ashr exact i64 %119, 31
  %121 = load i64, ptr %89, align 4
  %122 = shl i64 %121, 32
  %123 = ashr exact i64 %122, 32
  %124 = mul nsw i64 %123, %120
  %125 = add nsw i64 %117, %124
  %126 = shl nsw i64 %125, 1
  %127 = getelementptr inbounds i8, ptr %0, i32 48
  store i64 %126, ptr %127, align 4
  %128 = load i64, ptr %41, align 4
  %129 = shl i64 %128, 32
  %130 = ashr exact i64 %129, 32
  %131 = load i64, ptr %64, align 4
  %132 = shl i64 %131, 32
  %133 = ashr exact i64 %132, 32
  %134 = mul nsw i64 %133, %130
  %135 = load i64, ptr %23, align 4
  %136 = shl i64 %135, 32
  %137 = ashr exact i64 %136, 32
  %138 = load i64, ptr %89, align 4
  %139 = shl i64 %138, 32
  %140 = ashr exact i64 %139, 32
  %141 = mul nsw i64 %140, %137
  %142 = add nsw i64 %141, %134
  %143 = load i64, ptr %10, align 4
  %144 = shl i64 %143, 32
  %145 = ashr exact i64 %144, 32
  %146 = load i64, ptr %112, align 4
  %147 = shl i64 %146, 32
  %148 = ashr exact i64 %147, 32
  %149 = mul nsw i64 %148, %145
  %150 = add nsw i64 %142, %149
  %151 = load i64, ptr %1, align 4
  %152 = shl i64 %151, 32
  %153 = ashr exact i64 %152, 32
  %154 = getelementptr inbounds i8, ptr %1, i32 56
  %155 = load i64, ptr %154, align 4
  %156 = shl i64 %155, 32
  %157 = ashr exact i64 %156, 32
  %158 = mul nsw i64 %157, %153
  %159 = add nsw i64 %150, %158
  %160 = shl nsw i64 %159, 1
  %161 = getelementptr inbounds i8, ptr %0, i32 56
  store i64 %160, ptr %161, align 4
  %162 = load i64, ptr %64, align 4
  %163 = shl i64 %162, 32
  %164 = ashr exact i64 %163, 32
  %165 = mul nsw i64 %164, %164
  %166 = load i64, ptr %23, align 4
  %167 = shl i64 %166, 32
  %168 = ashr exact i64 %167, 32
  %169 = load i64, ptr %112, align 4
  %170 = shl i64 %169, 32
  %171 = ashr exact i64 %170, 32
  %172 = mul nsw i64 %171, %168
  %173 = load i64, ptr %1, align 4
  %174 = shl i64 %173, 32
  %175 = ashr exact i64 %174, 32
  %176 = getelementptr inbounds i8, ptr %1, i32 64
  %177 = load i64, ptr %176, align 4
  %178 = shl i64 %177, 32
  %179 = ashr exact i64 %178, 32
  %180 = mul nsw i64 %179, %175
  %181 = add nsw i64 %180, %172
  %182 = load i64, ptr %10, align 4
  %183 = shl i64 %182, 32
  %184 = ashr exact i64 %183, 32
  %185 = load i64, ptr %154, align 4
  %186 = shl i64 %185, 32
  %187 = ashr exact i64 %186, 32
  %188 = mul nsw i64 %187, %184
  %189 = load i64, ptr %41, align 4
  %190 = shl i64 %189, 32
  %191 = ashr exact i64 %190, 32
  %192 = load i64, ptr %89, align 4
  %193 = shl i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = mul nsw i64 %194, %191
  %196 = add nsw i64 %195, %188
  %197 = shl i64 %196, 2
  %198 = shl i64 %181, 1
  %199 = add i64 %198, %165
  %200 = add i64 %199, %197
  %201 = getelementptr inbounds i8, ptr %0, i32 64
  store i64 %200, ptr %201, align 4
  %202 = load i64, ptr %64, align 4
  %203 = shl i64 %202, 32
  %204 = ashr exact i64 %203, 32
  %205 = load i64, ptr %89, align 4
  %206 = shl i64 %205, 32
  %207 = ashr exact i64 %206, 32
  %208 = mul nsw i64 %207, %204
  %209 = load i64, ptr %41, align 4
  %210 = shl i64 %209, 32
  %211 = ashr exact i64 %210, 32
  %212 = load i64, ptr %112, align 4
  %213 = shl i64 %212, 32
  %214 = ashr exact i64 %213, 32
  %215 = mul nsw i64 %214, %211
  %216 = add nsw i64 %215, %208
  %217 = load i64, ptr %23, align 4
  %218 = shl i64 %217, 32
  %219 = ashr exact i64 %218, 32
  %220 = load i64, ptr %154, align 4
  %221 = shl i64 %220, 32
  %222 = ashr exact i64 %221, 32
  %223 = mul nsw i64 %222, %219
  %224 = add nsw i64 %216, %223
  %225 = load i64, ptr %10, align 4
  %226 = shl i64 %225, 32
  %227 = ashr exact i64 %226, 32
  %228 = load i64, ptr %176, align 4
  %229 = shl i64 %228, 32
  %230 = ashr exact i64 %229, 32
  %231 = mul nsw i64 %230, %227
  %232 = add nsw i64 %224, %231
  %233 = load i64, ptr %1, align 4
  %234 = shl i64 %233, 32
  %235 = ashr exact i64 %234, 32
  %236 = getelementptr inbounds i8, ptr %1, i32 72
  %237 = load i64, ptr %236, align 4
  %238 = shl i64 %237, 32
  %239 = ashr exact i64 %238, 32
  %240 = mul nsw i64 %239, %235
  %241 = add nsw i64 %232, %240
  %242 = shl nsw i64 %241, 1
  %243 = getelementptr inbounds i8, ptr %0, i32 72
  store i64 %242, ptr %243, align 4
  %244 = load i64, ptr %89, align 4
  %245 = shl i64 %244, 32
  %246 = ashr exact i64 %245, 32
  %247 = mul nsw i64 %246, %246
  %248 = load i64, ptr %64, align 4
  %249 = shl i64 %248, 32
  %250 = ashr exact i64 %249, 32
  %251 = load i64, ptr %112, align 4
  %252 = shl i64 %251, 32
  %253 = ashr exact i64 %252, 32
  %254 = mul nsw i64 %253, %250
  %255 = add nsw i64 %254, %247
  %256 = load i64, ptr %23, align 4
  %257 = shl i64 %256, 32
  %258 = ashr exact i64 %257, 32
  %259 = load i64, ptr %176, align 4
  %260 = shl i64 %259, 32
  %261 = ashr exact i64 %260, 32
  %262 = mul nsw i64 %261, %258
  %263 = add nsw i64 %255, %262
  %264 = load i64, ptr %41, align 4
  %265 = shl i64 %264, 32
  %266 = ashr exact i64 %265, 32
  %267 = load i64, ptr %154, align 4
  %268 = shl i64 %267, 32
  %269 = ashr exact i64 %268, 32
  %270 = mul nsw i64 %269, %266
  %271 = load i64, ptr %10, align 4
  %272 = shl i64 %271, 32
  %273 = ashr exact i64 %272, 32
  %274 = load i64, ptr %236, align 4
  %275 = shl i64 %274, 32
  %276 = ashr exact i64 %275, 32
  %277 = mul nsw i64 %276, %273
  %278 = add nsw i64 %277, %270
  %279 = shl i64 %278, 2
  %280 = shl i64 %263, 1
  %281 = add i64 %279, %280
  %282 = getelementptr inbounds i8, ptr %0, i32 80
  store i64 %281, ptr %282, align 4
  %283 = load i64, ptr %89, align 4
  %284 = shl i64 %283, 32
  %285 = ashr exact i64 %284, 32
  %286 = load i64, ptr %112, align 4
  %287 = shl i64 %286, 32
  %288 = ashr exact i64 %287, 32
  %289 = mul nsw i64 %288, %285
  %290 = load i64, ptr %64, align 4
  %291 = shl i64 %290, 32
  %292 = ashr exact i64 %291, 32
  %293 = load i64, ptr %154, align 4
  %294 = shl i64 %293, 32
  %295 = ashr exact i64 %294, 32
  %296 = mul nsw i64 %295, %292
  %297 = add nsw i64 %296, %289
  %298 = load i64, ptr %41, align 4
  %299 = shl i64 %298, 32
  %300 = ashr exact i64 %299, 32
  %301 = load i64, ptr %176, align 4
  %302 = shl i64 %301, 32
  %303 = ashr exact i64 %302, 32
  %304 = mul nsw i64 %303, %300
  %305 = add nsw i64 %297, %304
  %306 = load i64, ptr %23, align 4
  %307 = shl i64 %306, 32
  %308 = ashr exact i64 %307, 32
  %309 = load i64, ptr %236, align 4
  %310 = shl i64 %309, 32
  %311 = ashr exact i64 %310, 32
  %312 = mul nsw i64 %311, %308
  %313 = add nsw i64 %305, %312
  %314 = shl nsw i64 %313, 1
  %315 = getelementptr inbounds i8, ptr %0, i32 88
  store i64 %314, ptr %315, align 4
  %316 = load i64, ptr %112, align 4
  %317 = shl i64 %316, 32
  %318 = ashr exact i64 %317, 32
  %319 = mul nsw i64 %318, %318
  %320 = load i64, ptr %64, align 4
  %321 = shl i64 %320, 32
  %322 = load i64, ptr %176, align 4
  %323 = shl i64 %322, 32
  %324 = ashr exact i64 %323, 32
  %325 = load i64, ptr %89, align 4
  %326 = shl i64 %325, 32
  %327 = ashr exact i64 %326, 32
  %328 = load i64, ptr %154, align 4
  %329 = shl i64 %328, 32
  %330 = ashr exact i64 %329, 32
  %331 = mul nsw i64 %330, %327
  %332 = load i64, ptr %41, align 4
  %333 = shl i64 %332, 32
  %334 = ashr exact i64 %333, 32
  %335 = load i64, ptr %236, align 4
  %336 = shl i64 %335, 32
  %337 = ashr exact i64 %336, 32
  %338 = mul nsw i64 %337, %334
  %339 = add nsw i64 %338, %331
  %340 = shl i64 %339, 2
  %341 = ashr exact i64 %321, 31
  %342 = mul i64 %324, %341
  %343 = add i64 %342, %319
  %344 = add i64 %343, %340
  %345 = getelementptr inbounds i8, ptr %0, i32 96
  store i64 %344, ptr %345, align 4
  %346 = load i64, ptr %112, align 4
  %347 = shl i64 %346, 32
  %348 = ashr exact i64 %347, 32
  %349 = load i64, ptr %154, align 4
  %350 = shl i64 %349, 32
  %351 = ashr exact i64 %350, 32
  %352 = mul nsw i64 %351, %348
  %353 = load i64, ptr %89, align 4
  %354 = shl i64 %353, 32
  %355 = ashr exact i64 %354, 32
  %356 = load i64, ptr %176, align 4
  %357 = shl i64 %356, 32
  %358 = ashr exact i64 %357, 32
  %359 = mul nsw i64 %358, %355
  %360 = add nsw i64 %359, %352
  %361 = load i64, ptr %64, align 4
  %362 = shl i64 %361, 32
  %363 = ashr exact i64 %362, 32
  %364 = load i64, ptr %236, align 4
  %365 = shl i64 %364, 32
  %366 = ashr exact i64 %365, 32
  %367 = mul nsw i64 %366, %363
  %368 = add nsw i64 %360, %367
  %369 = shl nsw i64 %368, 1
  %370 = getelementptr inbounds i8, ptr %0, i32 104
  store i64 %369, ptr %370, align 4
  %371 = load i64, ptr %154, align 4
  %372 = shl i64 %371, 32
  %373 = ashr exact i64 %372, 32
  %374 = mul nsw i64 %373, %373
  %375 = load i64, ptr %112, align 4
  %376 = shl i64 %375, 32
  %377 = ashr exact i64 %376, 32
  %378 = load i64, ptr %176, align 4
  %379 = shl i64 %378, 32
  %380 = ashr exact i64 %379, 32
  %381 = mul nsw i64 %380, %377
  %382 = add nsw i64 %381, %374
  %383 = load i64, ptr %89, align 4
  %384 = shl i64 %383, 32
  %385 = ashr exact i64 %384, 31
  %386 = load i64, ptr %236, align 4
  %387 = shl i64 %386, 32
  %388 = ashr exact i64 %387, 32
  %389 = mul nsw i64 %388, %385
  %390 = add nsw i64 %382, %389
  %391 = shl nsw i64 %390, 1
  %392 = getelementptr inbounds i8, ptr %0, i32 112
  store i64 %391, ptr %392, align 4
  %393 = load i64, ptr %154, align 4
  %394 = shl i64 %393, 32
  %395 = ashr exact i64 %394, 32
  %396 = load i64, ptr %176, align 4
  %397 = shl i64 %396, 32
  %398 = ashr exact i64 %397, 32
  %399 = mul nsw i64 %398, %395
  %400 = load i64, ptr %112, align 4
  %401 = shl i64 %400, 32
  %402 = ashr exact i64 %401, 32
  %403 = load i64, ptr %236, align 4
  %404 = shl i64 %403, 32
  %405 = ashr exact i64 %404, 32
  %406 = mul nsw i64 %405, %402
  %407 = add nsw i64 %406, %399
  %408 = shl nsw i64 %407, 1
  %409 = getelementptr inbounds i8, ptr %0, i32 120
  store i64 %408, ptr %409, align 4
  %410 = load i64, ptr %176, align 4
  %411 = shl i64 %410, 32
  %412 = ashr exact i64 %411, 32
  %413 = mul nsw i64 %412, %412
  %414 = load i64, ptr %154, align 4
  %415 = shl i64 %414, 32
  %416 = ashr exact i64 %415, 30
  %417 = load i64, ptr %236, align 4
  %418 = shl i64 %417, 32
  %419 = ashr exact i64 %418, 32
  %420 = mul nsw i64 %419, %416
  %421 = add nsw i64 %420, %413
  %422 = getelementptr inbounds i8, ptr %0, i32 128
  store i64 %421, ptr %422, align 4
  %423 = load i64, ptr %176, align 4
  %424 = shl i64 %423, 32
  %425 = ashr exact i64 %424, 31
  %426 = load i64, ptr %236, align 4
  %427 = shl i64 %426, 32
  %428 = ashr exact i64 %427, 32
  %429 = mul nsw i64 %428, %425
  %430 = getelementptr inbounds i8, ptr %0, i32 136
  store i64 %429, ptr %430, align 4
  %431 = load i64, ptr %236, align 4
  %432 = shl i64 %431, 32
  %433 = ashr exact i64 %432, 32
  %434 = ashr exact i64 %432, 31
  %435 = mul nsw i64 %434, %433
  %436 = getelementptr inbounds i8, ptr %0, i32 144
  store i64 %435, ptr %436, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @s32_gte(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %isnotneg = icmp sgt i32 %0, 67108844
  %3 = sext i1 %isnotneg to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @s32_eq(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = xor i32 %0, %1
  %4 = xor i32 %3, -1
  %5 = shl i32 %4, 16
  %6 = and i32 %5, %4
  %7 = shl i32 %6, 8
  %8 = and i32 %7, %6
  %9 = shl i32 %8, 4
  %10 = and i32 %9, %8
  %11 = shl i32 %10, 2
  %12 = and i32 %11, %10
  %13 = shl i32 %12, 1
  %14 = and i32 %13, %12
  %15 = ashr i32 %14, 31
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
