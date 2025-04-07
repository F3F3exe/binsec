; ModuleID = 'tls1_cbc_remove_padding_patch.ll'
source_filename = "tls1_cbc_remove_padding_patch_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ssl_st = type { i8*, i32, %struct.ssl3_state_st*, %struct.evp_cipher_ctx_st*, i32 }
%struct.ssl3_state_st = type { i32, [8 x i8] }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st* }
%struct.evp_cipher_st = type { i32 }
%struct.ssl3_record_st = type { i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [9 x i8] zeroinitializer, align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @CRYPTO_memcmp(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.017 = phi i32 [ %10, %.lr.ph ], [ 0, %3 ]
  %.01516 = phi i32 [ %11, %.lr.ph ], [ 0, %3 ]
  %4 = getelementptr inbounds i8, i8* %0, i32 %.01516
  %5 = load i8, i8* %4, align 1, !tbaa !6
  %6 = getelementptr inbounds i8, i8* %1, i32 %.01516
  %7 = load i8, i8* %6, align 1, !tbaa !6
  %8 = xor i8 %7, %5
  %9 = zext i8 %8 to i32
  %10 = or i32 %.017, %9
  %11 = add nuw i32 %.01516, 1
  %exitcond.not = icmp eq i32 %11, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %3
  %.0.lcssa = phi i32 [ 0, %3 ], [ %10, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @tls1_cbc_remove_padding(%struct.ssl_st* nocapture noundef readonly %0, %struct.ssl3_record_st* nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = add i32 %3, 1
  %6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 4
  %7 = load i32, i32* %6, align 4, !tbaa !12
  %8 = and i32 %7, 1
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %22, label %9

9:                                                ; preds = %4
  %10 = add i32 %5, %2
  %11 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4, !tbaa !17
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %93, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1
  %16 = load i8*, i8** %15, align 4, !tbaa !19
  %17 = getelementptr inbounds i8, i8* %16, i32 %2
  store i8* %17, i8** %15, align 4, !tbaa !19
  %18 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 3
  %19 = load i8*, i8** %18, align 4, !tbaa !20
  %20 = getelementptr inbounds i8, i8* %19, i32 %2
  store i8* %20, i8** %18, align 4, !tbaa !20
  %21 = sub i32 %12, %2
  store i32 %21, i32* %11, align 4, !tbaa !17
  br label %26

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 4, !tbaa !17
  %25 = icmp ugt i32 %5, %24
  br i1 %25, label %93, label %._crit_edge77

._crit_edge77:                                    ; preds = %22
  %.phi.trans.insert = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1
  %.pre = load i8*, i8** %.phi.trans.insert, align 4, !tbaa !19
  br label %26

26:                                               ; preds = %._crit_edge77, %14
  %27 = phi i32 [ %24, %._crit_edge77 ], [ %21, %14 ]
  %28 = phi i8* [ %.pre, %._crit_edge77 ], [ %17, %14 ]
  %29 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0
  %30 = add i32 %27, -1
  %31 = getelementptr inbounds i8, i8* %28, i32 %30
  %32 = load i8, i8* %31, align 1, !tbaa !6
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 1
  %35 = load i32, i32* %34, align 4, !tbaa !21
  %36 = and i32 %35, 512
  %.not68 = icmp eq i32 %36, 0
  br i1 %.not68, label %57, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 4, !tbaa !22
  %.not70 = icmp eq i8* %39, null
  br i1 %.not70, label %40, label %57

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 2
  %42 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %41, align 4, !tbaa !23
  %43 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %42, i32 0, i32 1, i32 0
  %44 = tail call i32 @CRYPTO_memcmp(i8* noundef nonnull %43, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 noundef 8)
  %45 = icmp eq i32 %44, 0
  %46 = and i32 %33, 1
  %.not71 = icmp eq i32 %46, 0
  %or.cond72 = select i1 %45, i1 %.not71, i1 false
  %47 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %42, i32 0, i32 0
  br i1 %or.cond72, label %48, label %._crit_edge78

._crit_edge78:                                    ; preds = %40
  %.pre79 = load i32, i32* %47, align 4, !tbaa !24
  br label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %47, align 4, !tbaa !24
  %50 = or i32 %49, 8
  store i32 %50, i32* %47, align 4, !tbaa !24
  br label %51

51:                                               ; preds = %._crit_edge78, %48
  %52 = phi i32 [ %.pre79, %._crit_edge78 ], [ %50, %48 ]
  %53 = and i32 %52, 8
  %54 = icmp ne i32 %53, 0
  %55 = icmp ne i8 %32, 0
  %or.cond = select i1 %54, i1 %55, i1 false
  %56 = sext i1 %or.cond to i32
  %spec.select = add nsw i32 %56, %33
  br label %57

57:                                               ; preds = %51, %37, %26
  %.062 = phi i32 [ %33, %37 ], [ %33, %26 ], [ %spec.select, %51 ]
  %58 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 3
  %59 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %58, align 4, !tbaa !26
  %60 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %59, i32 0, i32 0
  %61 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %60, align 4, !tbaa !27
  %62 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4, !tbaa !29
  %64 = and i32 %63, 2097152
  %.not69 = icmp eq i32 %64, 0
  br i1 %.not69, label %67, label %65

65:                                               ; preds = %57
  %.neg = xor i32 %.062, -1
  %66 = add i32 %27, %.neg
  store i32 %66, i32* %29, align 4, !tbaa !17
  br label %93

67:                                               ; preds = %57
  %68 = add i32 %.062, %5
  %69 = tail call fastcc i32 @constant_time_ge(i32 noundef %27, i32 noundef %68)
  %70 = icmp ult i32 %30, 255
  %spec.select73 = select i1 %70, i32 %30, i32 255
  %.not76 = icmp eq i32 %spec.select73, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %67, %.lr.ph
  %.06375 = phi i32 [ %81, %.lr.ph ], [ %69, %67 ]
  %.06474 = phi i32 [ %82, %.lr.ph ], [ 0, %67 ]
  %71 = tail call fastcc zeroext i8 @constant_time_ge_8(i32 noundef %.062, i32 noundef %.06474)
  %72 = xor i32 %.06474, -1
  %73 = add i32 %27, %72
  %74 = getelementptr inbounds i8, i8* %28, i32 %73
  %75 = load i8, i8* %74, align 1, !tbaa !6
  %76 = zext i8 %71 to i32
  %77 = zext i8 %75 to i32
  %78 = xor i32 %.062, %77
  %79 = and i32 %78, %76
  %80 = xor i32 %79, -1
  %81 = and i32 %.06375, %80
  %82 = add nuw nsw i32 %.06474, 1
  %exitcond.not = icmp eq i32 %82, %spec.select73
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %67
  %.063.lcssa = phi i32 [ %69, %67 ], [ %81, %.lr.ph ]
  %83 = and i32 %.063.lcssa, 255
  %84 = tail call fastcc i32 @constant_time_eq(i32 noundef %83)
  %85 = add nsw i32 %.062, 1
  %86 = and i32 %84, %85
  %87 = sub i32 %27, %86
  store i32 %87, i32* %29, align 4, !tbaa !17
  %88 = shl i32 %86, 8
  %89 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 2
  %90 = load i32, i32* %89, align 4, !tbaa !32
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4, !tbaa !32
  %92 = tail call fastcc i32 @constant_time_select_int(i32 noundef %84)
  br label %93

93:                                               ; preds = %22, %9, %._crit_edge, %65
  %.0 = phi i32 [ 1, %65 ], [ %92, %._crit_edge ], [ 0, %9 ], [ 0, %22 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_ge(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc i32 @constant_time_lt(i32 noundef %0, i32 noundef %1)
  %4 = xor i32 %3, -1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @constant_time_ge_8(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc i32 @constant_time_ge(i32 noundef %0, i32 noundef %1)
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_eq(i32 noundef %0) unnamed_addr #3 {
  %2 = xor i32 %0, 255
  %3 = tail call fastcc i32 @constant_time_is_zero(i32 noundef %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_select_int(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @constant_time_select(i32 noundef %0)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #4 {
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
  %14 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #6
  %15 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #6
  %16 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #6
  %17 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #6
  %18 = getelementptr inbounds [63 x i8], [63 x i8]* %5, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 63, i8* nonnull %18) #6
  %19 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #6
  %20 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #6
  call void @high_input_63(i8* noundef nonnull %18) #6
  call void @low_input_4(i8* noundef nonnull %14) #6
  call void @low_input_4(i8* noundef nonnull %15) #6
  call void @low_input_4(i8* noundef nonnull %16) #6
  call void @low_input_4(i8* noundef nonnull %17) #6
  call void @low_input_4(i8* noundef nonnull %19) #6
  call void @low_input_4(i8* noundef nonnull %20) #6
  %21 = bitcast %struct.ssl3_state_st* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %21) #6
  %22 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %8, i32 0, i32 0
  %23 = load i32, i32* %2, align 4, !tbaa !33
  store i32 %23, i32* %22, align 4, !tbaa !24
  %24 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %8, i32 0, i32 1, i32 0
  %25 = bitcast i8* %24 to i64*
  store i64 0, i64* %25, align 4
  %26 = bitcast %struct.evp_cipher_st* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #6
  %27 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %9, i32 0, i32 0
  %28 = load i32, i32* %3, align 4, !tbaa !33
  store i32 %28, i32* %27, align 4, !tbaa !29
  %29 = bitcast %struct.evp_cipher_ctx_st* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #6
  %30 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %10, i32 0, i32 0
  store %struct.evp_cipher_st* %9, %struct.evp_cipher_st** %30, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11) #6
  %31 = bitcast %struct.ssl_st* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %31) #6
  %32 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %12, i32 0, i32 0
  store i8* %11, i8** %32, align 4, !tbaa !22
  %33 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %12, i32 0, i32 1
  %34 = load i32, i32* %1, align 4, !tbaa !33
  store i32 %34, i32* %33, align 4, !tbaa !21
  %35 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %12, i32 0, i32 2
  store %struct.ssl3_state_st* %8, %struct.ssl3_state_st** %35, align 4, !tbaa !23
  %36 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %12, i32 0, i32 3
  store %struct.evp_cipher_ctx_st* %10, %struct.evp_cipher_ctx_st** %36, align 4, !tbaa !26
  %37 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %12, i32 0, i32 4
  %38 = load i32, i32* %4, align 4, !tbaa !34
  store i32 %38, i32* %37, align 4, !tbaa !12
  %39 = bitcast %struct.ssl3_record_st* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %39) #6
  %40 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %13, i32 0, i32 0
  store i32 63, i32* %40, align 4, !tbaa !17
  %41 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %13, i32 0, i32 1
  store i8* %18, i8** %41, align 4, !tbaa !19
  %42 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %13, i32 0, i32 2
  store i32 0, i32* %42, align 4, !tbaa !32
  %43 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %13, i32 0, i32 3
  store i8* null, i8** %43, align 4, !tbaa !20
  %44 = load i32, i32* %6, align 4, !tbaa !34
  %45 = load i32, i32* %7, align 4, !tbaa !34
  %46 = call i32 @tls1_cbc_remove_padding(%struct.ssl_st* noundef nonnull %12, %struct.ssl3_record_st* noundef nonnull %13, i32 noundef %44, i32 noundef %45)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %39) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %31) #6
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #6
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %21) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #6
  call void @llvm.lifetime.end.p0i8(i64 63, i8* nonnull %18) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #6
  ret i32 %46
}

declare void @high_input_63(i8* noundef) local_unnamed_addr #5

declare void @low_input_4(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_lt(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = xor i32 %1, %0
  %4 = sub i32 %0, %1
  %5 = xor i32 %4, %1
  %6 = or i32 %5, %3
  %7 = xor i32 %6, %0
  %8 = tail call fastcc i32 @constant_time_msb(i32 noundef %7)
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %0) unnamed_addr #3 {
  %.neg = ashr i32 %0, 31
  ret i32 %.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_is_zero(i32 noundef %0) unnamed_addr #3 {
  %2 = xor i32 %0, -1
  %3 = add i32 %0, -1
  %4 = and i32 %3, %2
  %5 = tail call fastcc i32 @constant_time_msb(i32 noundef %4)
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_select(i32 noundef %0) unnamed_addr #3 {
  %2 = xor i32 %0, -1
  %3 = or i32 %2, 1
  ret i32 %3
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !16, i64 16}
!13 = !{!"ssl_st", !14, i64 0, !15, i64 4, !14, i64 8, !14, i64 12, !16, i64 16}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !16, i64 0}
!18 = !{!"ssl3_record_st", !16, i64 0, !14, i64 4, !16, i64 8, !14, i64 12}
!19 = !{!18, !14, i64 4}
!20 = !{!18, !14, i64 12}
!21 = !{!13, !15, i64 4}
!22 = !{!13, !14, i64 0}
!23 = !{!13, !14, i64 8}
!24 = !{!25, !15, i64 0}
!25 = !{!"ssl3_state_st", !15, i64 0, !7, i64 4}
!26 = !{!13, !14, i64 12}
!27 = !{!28, !14, i64 0}
!28 = !{!"evp_cipher_ctx_st", !14, i64 0}
!29 = !{!30, !15, i64 0}
!30 = !{!"evp_cipher_st", !15, i64 0}
!31 = distinct !{!31, !10, !11}
!32 = !{!18, !16, i64 8}
!33 = !{!15, !15, i64 0}
!34 = !{!16, !16, i64 0}
