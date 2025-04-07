; ModuleID = 'tls1_cbc_remove_padding_patch.ll'
source_filename = "tls1_cbc_remove_padding_patch_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ssl3_state_st = type { i32, [8 x i8] }
%struct.evp_cipher_st = type { i32 }
%struct.evp_cipher_ctx_st = type { ptr }
%struct.ssl_st = type { ptr, i32, ptr, ptr, i32 }
%struct.ssl3_record_st = type { i32, ptr, i32, ptr }

@.str = private unnamed_addr constant [9 x i8] zeroinitializer, align 1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @CRYPTO_memcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.012 = phi i8 [ %9, %.lr.ph ], [ 0, %3 ]
  %.01011 = phi i32 [ %10, %.lr.ph ], [ 0, %3 ]
  %4 = getelementptr inbounds i8, ptr %0, i32 %.01011
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds i8, ptr %1, i32 %.01011
  %7 = load i8, ptr %6, align 1
  %8 = xor i8 %7, %5
  %9 = or i8 %8, %.012
  %10 = add nuw i32 %.01011, 1
  %exitcond.not = icmp eq i32 %10, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !7

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %11 = zext i8 %9 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %3
  %.0.lcssa = phi i32 [ 0, %3 ], [ %11, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @tls1_cbc_remove_padding(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = add i32 %3, 1
  %6 = getelementptr inbounds i8, ptr %0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %21, label %9

9:                                                ; preds = %4
  %10 = add i32 %5, %2
  %11 = load i32, ptr %1, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %92, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %1, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %15, i32 %2
  store ptr %16, ptr %14, align 4
  %17 = getelementptr inbounds i8, ptr %1, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %18, i32 %2
  store ptr %19, ptr %17, align 4
  %20 = sub i32 %11, %2
  store i32 %20, ptr %1, align 4
  br label %24

21:                                               ; preds = %4
  %22 = load i32, ptr %1, align 4
  %23 = icmp ugt i32 %5, %22
  br i1 %23, label %92, label %24

24:                                               ; preds = %21, %13
  %25 = getelementptr inbounds i8, ptr %1, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %1, align 4
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = getelementptr i8, ptr %28, i32 -1
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds i8, ptr %0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 512
  %.not59 = icmp eq i32 %34, 0
  br i1 %.not59, label %54, label %35

35:                                               ; preds = %24
  %36 = load ptr, ptr %0, align 4
  %.not60 = icmp eq ptr %36, null
  br i1 %.not60, label %37, label %54

37:                                               ; preds = %35
  %38 = getelementptr inbounds i8, ptr %0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds i8, ptr %39, i32 4
  %41 = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %40, ptr noundef nonnull @.str, i32 noundef 8)
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %31, 1
  %.not61 = icmp eq i32 %43, 0
  %or.cond63 = select i1 %42, i1 %.not61, i1 false
  br i1 %or.cond63, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, ptr %39, align 4
  %46 = or i32 %45, 8
  store i32 %46, ptr %39, align 4
  br label %47

47:                                               ; preds = %44, %37
  %48 = load ptr, ptr %38, align 4
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 8
  %51 = icmp ne i32 %50, 0
  %52 = icmp ne i8 %30, 0
  %or.cond = select i1 %51, i1 %52, i1 false
  %53 = sext i1 %or.cond to i32
  %spec.select = add nsw i32 %53, %31
  br label %54

54:                                               ; preds = %47, %35, %24
  %.053 = phi i32 [ %31, %35 ], [ %31, %24 ], [ %spec.select, %47 ]
  %55 = getelementptr inbounds i8, ptr %0, i32 12
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 2097152
  %.not62 = icmp eq i32 %59, 0
  br i1 %.not62, label %63, label %60

60:                                               ; preds = %54
  %.neg = xor i32 %.053, -1
  %61 = load i32, ptr %1, align 4
  %62 = add i32 %61, %.neg
  store i32 %62, ptr %1, align 4
  br label %92

63:                                               ; preds = %54
  %64 = load i32, ptr %1, align 4
  %65 = add i32 %.053, %5
  %66 = tail call fastcc i32 @constant_time_ge(i32 noundef %64, i32 noundef %65)
  %67 = add i32 %64, -1
  %.not67 = icmp eq i32 %67, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %63
  %spec.select64 = tail call i32 @llvm.umin.i32(i32 %67, i32 255)
  %68 = load ptr, ptr %25, align 4
  %69 = getelementptr i8, ptr %68, i32 %64
  %umax = tail call i32 @llvm.umax.i32(i32 %spec.select64, i32 1)
  br label %70

70:                                               ; preds = %.lr.ph, %70
  %.05466 = phi i32 [ %66, %.lr.ph ], [ %80, %70 ]
  %.05565 = phi i32 [ 0, %.lr.ph ], [ %81, %70 ]
  %71 = tail call fastcc zeroext i8 @constant_time_ge_8(i32 noundef %.053, i32 noundef %.05565)
  %72 = xor i32 %.05565, -1
  %73 = getelementptr i8, ptr %69, i32 %72
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %71 to i32
  %76 = zext i8 %74 to i32
  %77 = xor i32 %.053, %76
  %78 = and i32 %77, %75
  %79 = xor i32 %78, -1
  %80 = and i32 %.05466, %79
  %81 = add nuw nsw i32 %.05565, 1
  %exitcond.not = icmp eq i32 %81, %umax
  br i1 %exitcond.not, label %._crit_edge, label %70, !llvm.loop !9

._crit_edge:                                      ; preds = %70, %63
  %.054.lcssa = phi i32 [ %66, %63 ], [ %80, %70 ]
  %82 = and i32 %.054.lcssa, 255
  %83 = tail call fastcc i32 @constant_time_eq(i32 noundef %82)
  %84 = add nuw nsw i32 %.053, 1
  %85 = and i32 %83, %84
  %86 = sub i32 %64, %85
  store i32 %86, ptr %1, align 4
  %87 = shl nuw nsw i32 %85, 8
  %88 = getelementptr inbounds i8, ptr %1, i32 8
  %89 = load i32, ptr %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, ptr %88, align 4
  %91 = tail call fastcc i32 @constant_time_select_int(i32 noundef %83)
  br label %92

92:                                               ; preds = %21, %9, %._crit_edge, %60
  %.0 = phi i32 [ 1, %60 ], [ %91, %._crit_edge ], [ 0, %9 ], [ 0, %21 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -1, 1) i32 @constant_time_ge(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call fastcc i32 @constant_time_lt(i32 noundef %0, i32 noundef %1)
  %4 = xor i32 %3, -1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc zeroext range(i8 -1, 1) i8 @constant_time_ge_8(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call fastcc i32 @constant_time_ge(i32 noundef %0, i32 noundef %1)
  %4 = trunc nsw i32 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @constant_time_eq(i32 noundef %0) unnamed_addr #2 {
  %2 = xor i32 %0, 255
  %3 = tail call fastcc i32 @constant_time_is_zero(i32 noundef %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @constant_time_select_int(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @constant_time_select(i32 noundef %0)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [63 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssl3_state_st, align 4
  %9 = alloca %struct.evp_cipher_st, align 4
  %10 = alloca %struct.evp_cipher_ctx_st, align 4
  %11 = alloca i8, align 1
  %12 = alloca %struct.ssl_st, align 4
  %13 = alloca %struct.ssl3_record_st, align 4
  call void @high_input_63(ptr noundef nonnull %5) #6
  call void @low_input_4(ptr noundef nonnull %1) #6
  call void @low_input_4(ptr noundef nonnull %2) #6
  call void @low_input_4(ptr noundef nonnull %3) #6
  call void @low_input_4(ptr noundef nonnull %4) #6
  call void @low_input_4(ptr noundef nonnull %6) #6
  call void @low_input_4(ptr noundef nonnull %7) #6
  %14 = load i32, ptr %2, align 4
  store i32 %14, ptr %8, align 4
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  store i64 0, ptr %15, align 4
  %16 = load i32, ptr %3, align 4
  store i32 %16, ptr %9, align 4
  store ptr %9, ptr %10, align 4
  store ptr %11, ptr %12, align 4
  %17 = getelementptr inbounds i8, ptr %12, i32 4
  %18 = load i32, ptr %1, align 4
  store i32 %18, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %12, i32 8
  store ptr %8, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %12, i32 12
  store ptr %10, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %12, i32 16
  %22 = load i32, ptr %4, align 4
  store i32 %22, ptr %21, align 4
  store i32 63, ptr %13, align 4
  %23 = getelementptr inbounds i8, ptr %13, i32 4
  store ptr %5, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %13, i32 8
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %13, i32 12
  store ptr null, ptr %25, align 4
  %26 = load i32, ptr %6, align 4
  %27 = load i32, ptr %7, align 4
  %28 = call i32 @tls1_cbc_remove_padding(ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %26, i32 noundef %27)
  ret i32 %28
}

declare void @high_input_63(ptr noundef) local_unnamed_addr #4

declare void @low_input_4(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @constant_time_lt(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = xor i32 %1, %0
  %4 = sub i32 %0, %1
  %5 = xor i32 %4, %1
  %6 = or i32 %5, %3
  %7 = xor i32 %6, %0
  %8 = tail call fastcc i32 @constant_time_msb(i32 noundef %7)
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @constant_time_msb(i32 noundef %0) unnamed_addr #2 {
  %.neg = ashr i32 %0, 31
  ret i32 %.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @constant_time_is_zero(i32 noundef %0) unnamed_addr #2 {
  %2 = xor i32 %0, -1
  %3 = add nsw i32 %0, -1
  %4 = and i32 %3, %2
  %5 = tail call fastcc i32 @constant_time_msb(i32 noundef %4)
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @constant_time_select(i32 noundef %0) unnamed_addr #2 {
  %2 = xor i32 %0, -1
  %3 = or i32 %2, 1
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
