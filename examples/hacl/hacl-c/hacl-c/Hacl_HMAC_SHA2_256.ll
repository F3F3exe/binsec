; ModuleID = 'hacl-c/hacl-c/Hacl_HMAC_SHA2_256.c'
source_filename = "hacl-c/hacl-c/Hacl_HMAC_SHA2_256.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_HMAC_SHA2_256_hmac_core(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 !dbg !22 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i8* %1, metadata !28, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i8* %2, metadata !29, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %3, metadata !30, metadata !DIExpression()), !dbg !31
  call fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac_core(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !32
  ret void, !dbg !33
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac_core(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !dbg !34 {
  %5 = alloca [64 x i8], align 1
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0
  %7 = alloca [64 x i8], align 1
  %8 = alloca [137 x i32], align 4
  %9 = alloca [137 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !36, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i8* %1, metadata !37, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !38, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 %3, metadata !39, metadata !DIExpression()), !dbg !60
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %10) #10, !dbg !61
  call void @llvm.dbg.declare(metadata [64 x i8]* %5, metadata !40, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 0, metadata !44, metadata !DIExpression()), !dbg !63
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %6, i8 54, i32 64, i1 false), !dbg !64, !tbaa !66
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0
  call void @llvm.dbg.value(metadata i32 undef, metadata !44, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i32 undef, metadata !44, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !63
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #10, !dbg !69
  call void @llvm.dbg.declare(metadata [64 x i8]* %7, metadata !46, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i32 0, metadata !47, metadata !DIExpression()), !dbg !71
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %11, i8 92, i32 64, i1 false), !dbg !72, !tbaa !66
  call void @llvm.dbg.value(metadata i32 undef, metadata !47, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 undef, metadata !47, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !71
  call fastcc void @Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace(i8* noundef nonnull %10, i8* noundef %1), !dbg !74
  %13 = bitcast [137 x i32]* %8 to i8*, !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 548, i8* nonnull %13) #10, !dbg !75
  call void @llvm.dbg.declare(metadata [137 x i32]* %8, metadata !49, metadata !DIExpression()), !dbg !76
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(548) %13, i8 0, i32 548, i1 false), !dbg !76
  %14 = lshr i32 %3, 6, !dbg !77
  call void @llvm.dbg.value(metadata i32 %14, metadata !53, metadata !DIExpression()), !dbg !60
  %15 = and i32 %3, 63, !dbg !78
  call void @llvm.dbg.value(metadata i32 %15, metadata !54, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !55, metadata !DIExpression()), !dbg !60
  %16 = and i32 %3, -64, !dbg !79
  %17 = getelementptr inbounds i8, i8* %2, i32 %16, !dbg !80
  call void @llvm.dbg.value(metadata i8* %17, metadata !56, metadata !DIExpression()), !dbg !60
  %18 = getelementptr inbounds [137 x i32], [137 x i32]* %8, i32 0, i32 0, !dbg !81
  call fastcc void @Hacl_Impl_SHA2_256_init(i32* noundef nonnull %18), !dbg !82
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %18, i8* noundef nonnull %10), !dbg !83
  call fastcc void @Hacl_Impl_SHA2_256_update_multi(i32* noundef nonnull %18, i8* noundef %2, i32 noundef %14), !dbg !84
  call fastcc void @Hacl_Impl_SHA2_256_update_last(i32* noundef nonnull %18, i8* noundef %17, i32 noundef %15), !dbg !85
  call void @llvm.dbg.value(metadata i8* %10, metadata !57, metadata !DIExpression()), !dbg !60
  call fastcc void @Hacl_Impl_SHA2_256_finish(i32* noundef nonnull %18, i8* noundef nonnull %10), !dbg !86
  call void @llvm.dbg.value(metadata i8* %10, metadata !58, metadata !DIExpression()), !dbg !60
  call fastcc void @Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace(i8* noundef nonnull %12, i8* noundef %1), !dbg !87
  %19 = bitcast [137 x i32]* %9 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 548, i8* nonnull %19) #10, !dbg !88
  call void @llvm.dbg.declare(metadata [137 x i32]* %9, metadata !59, metadata !DIExpression()), !dbg !89
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(548) %19, i8 0, i32 548, i1 false), !dbg !89
  %20 = getelementptr inbounds [137 x i32], [137 x i32]* %9, i32 0, i32 0, !dbg !90
  call fastcc void @Hacl_Impl_SHA2_256_init(i32* noundef nonnull %20), !dbg !91
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef nonnull %20, i8* noundef nonnull %12), !dbg !92
  call fastcc void @Hacl_Impl_SHA2_256_update_last(i32* noundef nonnull %20, i8* noundef nonnull %10, i32 noundef 32), !dbg !93
  call fastcc void @Hacl_Impl_SHA2_256_finish(i32* noundef nonnull %20, i8* noundef %0), !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 548, i8* nonnull %19) #10, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 548, i8* nonnull %13) #10, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #10, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %10) #10, !dbg !95
  ret void, !dbg !95
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_HMAC_SHA2_256_hmac(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 !dbg !96 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !100, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i8* %1, metadata !101, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 %2, metadata !102, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i8* %3, metadata !103, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 %4, metadata !104, metadata !DIExpression()), !dbg !105
  call fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4), !dbg !106
  ret void, !dbg !107
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !dbg !108 {
  %6 = alloca [64 x i8], align 1
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i32 0, i32 0, !dbg !121
  call void @llvm.dbg.value(metadata i8* %0, metadata !110, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i8* %1, metadata !111, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i32 %2, metadata !112, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i8* %3, metadata !113, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i32 %4, metadata !114, metadata !DIExpression()), !dbg !121
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i32 0, i32 0, !dbg !122
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #10, !dbg !122
  call void @llvm.dbg.declare(metadata [64 x i8]* %6, metadata !115, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !124
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 64, i1 false), !dbg !125, !tbaa !66
  call void @llvm.dbg.value(metadata i32 undef, metadata !116, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i32 undef, metadata !116, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !124
  %9 = icmp ult i32 %2, 65, !dbg !127
  br i1 %9, label %10, label %11, !dbg !128

10:                                               ; preds = %5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %8, i8* align 1 %1, i32 %2, i1 false), !dbg !129
  br label %12, !dbg !129

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %8, metadata !118, metadata !DIExpression()), !dbg !130
  call fastcc void @Hacl_Impl_SHA2_256_hash(i8* noundef nonnull %8, i8* noundef %1, i32 noundef %2), !dbg !131
  br label %12

12:                                               ; preds = %11, %10
  call fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac_core(i8* noundef %0, i8* noundef nonnull %8, i8* noundef %3, i32 noundef %4), !dbg !132
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #10, !dbg !133
  ret void, !dbg !133
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace(i8* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #3 !dbg !134 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i8* %1, metadata !139, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 64, metadata !140, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 0, metadata !141, metadata !DIExpression()), !dbg !148
  br label %4, !dbg !149

3:                                                ; preds = %4
  ret void, !dbg !150

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !141, metadata !DIExpression()), !dbg !148
  %6 = getelementptr inbounds i8, i8* %0, i32 %5, !dbg !151
  %7 = load i8, i8* %6, align 1, !dbg !151, !tbaa !66
  call void @llvm.dbg.value(metadata i8 %7, metadata !143, metadata !DIExpression()), !dbg !152
  %8 = getelementptr inbounds i8, i8* %1, i32 %5, !dbg !153
  %9 = load i8, i8* %8, align 1, !dbg !153, !tbaa !66
  call void @llvm.dbg.value(metadata i8 %9, metadata !146, metadata !DIExpression()), !dbg !152
  %10 = xor i8 %9, %7, !dbg !154
  store i8 %10, i8* %6, align 1, !dbg !155, !tbaa !66
  %11 = add nuw nsw i32 %5, 1, !dbg !156
  call void @llvm.dbg.value(metadata i32 %11, metadata !141, metadata !DIExpression()), !dbg !148
  %12 = icmp eq i32 %11, 64, !dbg !157
  br i1 %12, label %3, label %4, !dbg !149, !llvm.loop !158
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_SHA2_256_init(i32* noundef writeonly %0) unnamed_addr #5 !dbg !162 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !167, metadata !DIExpression()), !dbg !201
  %2 = getelementptr inbounds i32, i32* %0, i32 136, !dbg !202
  call void @llvm.dbg.value(metadata i32* %2, metadata !168, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i32* %0, metadata !169, metadata !DIExpression()), !dbg !201
  %3 = getelementptr inbounds i32, i32* %0, i32 128, !dbg !203
  call void @llvm.dbg.value(metadata i32* %3, metadata !170, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i32* %0, metadata !171, metadata !DIExpression()), !dbg !201
  %4 = getelementptr inbounds i32, i32* %0, i32 16, !dbg !204
  call void @llvm.dbg.value(metadata i32* %4, metadata !172, metadata !DIExpression()), !dbg !201
  %5 = getelementptr inbounds i32, i32* %0, i32 32, !dbg !205
  call void @llvm.dbg.value(metadata i32* %5, metadata !173, metadata !DIExpression()), !dbg !201
  %6 = getelementptr inbounds i32, i32* %0, i32 48, !dbg !206
  call void @llvm.dbg.value(metadata i32* %6, metadata !174, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i32* %0, metadata !175, metadata !DIExpression()), !dbg !201
  %7 = getelementptr inbounds i32, i32* %0, i32 8, !dbg !207
  call void @llvm.dbg.value(metadata i32* %7, metadata !176, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i32* %0, metadata !177, metadata !DIExpression()), !dbg !201
  %8 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !208
  call void @llvm.dbg.value(metadata i32* %8, metadata !178, metadata !DIExpression()), !dbg !201
  store i32 1116352408, i32* %0, align 4, !dbg !209, !tbaa !210
  %9 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !212
  store i32 1899447441, i32* %9, align 4, !dbg !213, !tbaa !210
  %10 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !214
  store i32 -1245643825, i32* %10, align 4, !dbg !215, !tbaa !210
  %11 = getelementptr inbounds i32, i32* %0, i32 3, !dbg !216
  store i32 -373957723, i32* %11, align 4, !dbg !217, !tbaa !210
  store i32 961987163, i32* %8, align 4, !dbg !218, !tbaa !210
  %12 = getelementptr inbounds i32, i32* %0, i32 5, !dbg !219
  store i32 1508970993, i32* %12, align 4, !dbg !220, !tbaa !210
  %13 = getelementptr inbounds i32, i32* %0, i32 6, !dbg !221
  store i32 -1841331548, i32* %13, align 4, !dbg !222, !tbaa !210
  %14 = getelementptr inbounds i32, i32* %0, i32 7, !dbg !223
  store i32 -1424204075, i32* %14, align 4, !dbg !224, !tbaa !210
  call void @llvm.dbg.value(metadata i32* %7, metadata !179, metadata !DIExpression()), !dbg !201
  %15 = getelementptr inbounds i32, i32* %0, i32 12, !dbg !225
  call void @llvm.dbg.value(metadata i32* %15, metadata !180, metadata !DIExpression()), !dbg !201
  store i32 -670586216, i32* %7, align 4, !dbg !226, !tbaa !210
  %16 = getelementptr inbounds i32, i32* %0, i32 9, !dbg !227
  store i32 310598401, i32* %16, align 4, !dbg !228, !tbaa !210
  %17 = getelementptr inbounds i32, i32* %0, i32 10, !dbg !229
  store i32 607225278, i32* %17, align 4, !dbg !230, !tbaa !210
  %18 = getelementptr inbounds i32, i32* %0, i32 11, !dbg !231
  store i32 1426881987, i32* %18, align 4, !dbg !232, !tbaa !210
  store i32 1925078388, i32* %15, align 4, !dbg !233, !tbaa !210
  %19 = getelementptr inbounds i32, i32* %0, i32 13, !dbg !234
  store i32 -2132889090, i32* %19, align 4, !dbg !235, !tbaa !210
  %20 = getelementptr inbounds i32, i32* %0, i32 14, !dbg !236
  store i32 -1680079193, i32* %20, align 4, !dbg !237, !tbaa !210
  %21 = getelementptr inbounds i32, i32* %0, i32 15, !dbg !238
  store i32 -1046744716, i32* %21, align 4, !dbg !239, !tbaa !210
  call void @llvm.dbg.value(metadata i32* %4, metadata !181, metadata !DIExpression()), !dbg !201
  %22 = getelementptr inbounds i32, i32* %0, i32 24, !dbg !240
  call void @llvm.dbg.value(metadata i32* %22, metadata !182, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i32* %4, metadata !183, metadata !DIExpression()), !dbg !201
  %23 = getelementptr inbounds i32, i32* %0, i32 20, !dbg !241
  call void @llvm.dbg.value(metadata i32* %23, metadata !184, metadata !DIExpression()), !dbg !201
  store i32 -459576895, i32* %4, align 4, !dbg !242, !tbaa !210
  %24 = getelementptr inbounds i32, i32* %0, i32 17, !dbg !243
  store i32 -272742522, i32* %24, align 4, !dbg !244, !tbaa !210
  %25 = getelementptr inbounds i32, i32* %0, i32 18, !dbg !245
  store i32 264347078, i32* %25, align 4, !dbg !246, !tbaa !210
  %26 = getelementptr inbounds i32, i32* %0, i32 19, !dbg !247
  store i32 604807628, i32* %26, align 4, !dbg !248, !tbaa !210
  store i32 770255983, i32* %23, align 4, !dbg !249, !tbaa !210
  %27 = getelementptr inbounds i32, i32* %0, i32 21, !dbg !250
  store i32 1249150122, i32* %27, align 4, !dbg !251, !tbaa !210
  %28 = getelementptr inbounds i32, i32* %0, i32 22, !dbg !252
  store i32 1555081692, i32* %28, align 4, !dbg !253, !tbaa !210
  %29 = getelementptr inbounds i32, i32* %0, i32 23, !dbg !254
  store i32 1996064986, i32* %29, align 4, !dbg !255, !tbaa !210
  call void @llvm.dbg.value(metadata i32* %22, metadata !185, metadata !DIExpression()), !dbg !201
  %30 = getelementptr inbounds i32, i32* %0, i32 28, !dbg !256
  call void @llvm.dbg.value(metadata i32* %30, metadata !186, metadata !DIExpression()), !dbg !201
  store i32 -1740746414, i32* %22, align 4, !dbg !257, !tbaa !210
  %31 = getelementptr inbounds i32, i32* %0, i32 25, !dbg !258
  store i32 -1473132947, i32* %31, align 4, !dbg !259, !tbaa !210
  %32 = getelementptr inbounds i32, i32* %0, i32 26, !dbg !260
  store i32 -1341970488, i32* %32, align 4, !dbg !261, !tbaa !210
  %33 = getelementptr inbounds i32, i32* %0, i32 27, !dbg !262
  store i32 -1084653625, i32* %33, align 4, !dbg !263, !tbaa !210
  store i32 -958395405, i32* %30, align 4, !dbg !264, !tbaa !210
  %34 = getelementptr inbounds i32, i32* %0, i32 29, !dbg !265
  store i32 -710438585, i32* %34, align 4, !dbg !266, !tbaa !210
  %35 = getelementptr inbounds i32, i32* %0, i32 30, !dbg !267
  store i32 113926993, i32* %35, align 4, !dbg !268, !tbaa !210
  %36 = getelementptr inbounds i32, i32* %0, i32 31, !dbg !269
  store i32 338241895, i32* %36, align 4, !dbg !270, !tbaa !210
  call void @llvm.dbg.value(metadata i32* %5, metadata !187, metadata !DIExpression()), !dbg !201
  %37 = getelementptr inbounds i32, i32* %0, i32 40, !dbg !271
  call void @llvm.dbg.value(metadata i32* %37, metadata !188, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i32* %5, metadata !189, metadata !DIExpression()), !dbg !201
  %38 = getelementptr inbounds i32, i32* %0, i32 36, !dbg !272
  call void @llvm.dbg.value(metadata i32* %38, metadata !190, metadata !DIExpression()), !dbg !201
  store i32 666307205, i32* %5, align 4, !dbg !273, !tbaa !210
  %39 = getelementptr inbounds i32, i32* %0, i32 33, !dbg !274
  store i32 773529912, i32* %39, align 4, !dbg !275, !tbaa !210
  %40 = getelementptr inbounds i32, i32* %0, i32 34, !dbg !276
  store i32 1294757372, i32* %40, align 4, !dbg !277, !tbaa !210
  %41 = getelementptr inbounds i32, i32* %0, i32 35, !dbg !278
  store i32 1396182291, i32* %41, align 4, !dbg !279, !tbaa !210
  store i32 1695183700, i32* %38, align 4, !dbg !280, !tbaa !210
  %42 = getelementptr inbounds i32, i32* %0, i32 37, !dbg !281
  store i32 1986661051, i32* %42, align 4, !dbg !282, !tbaa !210
  %43 = getelementptr inbounds i32, i32* %0, i32 38, !dbg !283
  store i32 -2117940946, i32* %43, align 4, !dbg !284, !tbaa !210
  %44 = getelementptr inbounds i32, i32* %0, i32 39, !dbg !285
  store i32 -1838011259, i32* %44, align 4, !dbg !286, !tbaa !210
  call void @llvm.dbg.value(metadata i32* %37, metadata !191, metadata !DIExpression()), !dbg !201
  %45 = getelementptr inbounds i32, i32* %0, i32 44, !dbg !287
  call void @llvm.dbg.value(metadata i32* %45, metadata !192, metadata !DIExpression()), !dbg !201
  store i32 -1564481375, i32* %37, align 4, !dbg !288, !tbaa !210
  %46 = getelementptr inbounds i32, i32* %0, i32 41, !dbg !289
  store i32 -1474664885, i32* %46, align 4, !dbg !290, !tbaa !210
  %47 = getelementptr inbounds i32, i32* %0, i32 42, !dbg !291
  store i32 -1035236496, i32* %47, align 4, !dbg !292, !tbaa !210
  %48 = getelementptr inbounds i32, i32* %0, i32 43, !dbg !293
  store i32 -949202525, i32* %48, align 4, !dbg !294, !tbaa !210
  store i32 -778901479, i32* %45, align 4, !dbg !295, !tbaa !210
  %49 = getelementptr inbounds i32, i32* %0, i32 45, !dbg !296
  store i32 -694614492, i32* %49, align 4, !dbg !297, !tbaa !210
  %50 = getelementptr inbounds i32, i32* %0, i32 46, !dbg !298
  store i32 -200395387, i32* %50, align 4, !dbg !299, !tbaa !210
  %51 = getelementptr inbounds i32, i32* %0, i32 47, !dbg !300
  store i32 275423344, i32* %51, align 4, !dbg !301, !tbaa !210
  call void @llvm.dbg.value(metadata i32* %6, metadata !193, metadata !DIExpression()), !dbg !201
  %52 = getelementptr inbounds i32, i32* %0, i32 56, !dbg !302
  call void @llvm.dbg.value(metadata i32* %52, metadata !194, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i32* %6, metadata !195, metadata !DIExpression()), !dbg !201
  %53 = getelementptr inbounds i32, i32* %0, i32 52, !dbg !303
  call void @llvm.dbg.value(metadata i32* %53, metadata !196, metadata !DIExpression()), !dbg !201
  store i32 430227734, i32* %6, align 4, !dbg !304, !tbaa !210
  %54 = getelementptr inbounds i32, i32* %0, i32 49, !dbg !305
  store i32 506948616, i32* %54, align 4, !dbg !306, !tbaa !210
  %55 = getelementptr inbounds i32, i32* %0, i32 50, !dbg !307
  store i32 659060556, i32* %55, align 4, !dbg !308, !tbaa !210
  %56 = getelementptr inbounds i32, i32* %0, i32 51, !dbg !309
  store i32 883997877, i32* %56, align 4, !dbg !310, !tbaa !210
  store i32 958139571, i32* %53, align 4, !dbg !311, !tbaa !210
  %57 = getelementptr inbounds i32, i32* %0, i32 53, !dbg !312
  store i32 1322822218, i32* %57, align 4, !dbg !313, !tbaa !210
  %58 = getelementptr inbounds i32, i32* %0, i32 54, !dbg !314
  store i32 1537002063, i32* %58, align 4, !dbg !315, !tbaa !210
  %59 = getelementptr inbounds i32, i32* %0, i32 55, !dbg !316
  store i32 1747873779, i32* %59, align 4, !dbg !317, !tbaa !210
  call void @llvm.dbg.value(metadata i32* %52, metadata !197, metadata !DIExpression()), !dbg !201
  %60 = getelementptr inbounds i32, i32* %0, i32 60, !dbg !318
  call void @llvm.dbg.value(metadata i32* %60, metadata !198, metadata !DIExpression()), !dbg !201
  store i32 1955562222, i32* %52, align 4, !dbg !319, !tbaa !210
  %61 = getelementptr inbounds i32, i32* %0, i32 57, !dbg !320
  store i32 2024104815, i32* %61, align 4, !dbg !321, !tbaa !210
  %62 = getelementptr inbounds i32, i32* %0, i32 58, !dbg !322
  store i32 -2067236844, i32* %62, align 4, !dbg !323, !tbaa !210
  %63 = getelementptr inbounds i32, i32* %0, i32 59, !dbg !324
  store i32 -1933114872, i32* %63, align 4, !dbg !325, !tbaa !210
  store i32 -1866530822, i32* %60, align 4, !dbg !326, !tbaa !210
  %64 = getelementptr inbounds i32, i32* %0, i32 61, !dbg !327
  store i32 -1538233109, i32* %64, align 4, !dbg !328, !tbaa !210
  %65 = getelementptr inbounds i32, i32* %0, i32 62, !dbg !329
  store i32 -1090935817, i32* %65, align 4, !dbg !330, !tbaa !210
  %66 = getelementptr inbounds i32, i32* %0, i32 63, !dbg !331
  store i32 -965641998, i32* %66, align 4, !dbg !332, !tbaa !210
  call void @llvm.dbg.value(metadata i32* %3, metadata !199, metadata !DIExpression()), !dbg !201
  %67 = getelementptr inbounds i32, i32* %0, i32 132, !dbg !333
  call void @llvm.dbg.value(metadata i32* %67, metadata !200, metadata !DIExpression()), !dbg !201
  store i32 1779033703, i32* %3, align 4, !dbg !334, !tbaa !210
  %68 = getelementptr inbounds i32, i32* %0, i32 129, !dbg !335
  store i32 -1150833019, i32* %68, align 4, !dbg !336, !tbaa !210
  %69 = getelementptr inbounds i32, i32* %0, i32 130, !dbg !337
  store i32 1013904242, i32* %69, align 4, !dbg !338, !tbaa !210
  %70 = getelementptr inbounds i32, i32* %0, i32 131, !dbg !339
  store i32 -1521486534, i32* %70, align 4, !dbg !340, !tbaa !210
  store i32 1359893119, i32* %67, align 4, !dbg !341, !tbaa !210
  %71 = getelementptr inbounds i32, i32* %0, i32 133, !dbg !342
  store i32 -1694144372, i32* %71, align 4, !dbg !343, !tbaa !210
  %72 = getelementptr inbounds i32, i32* %0, i32 134, !dbg !344
  store i32 528734635, i32* %72, align 4, !dbg !345, !tbaa !210
  %73 = getelementptr inbounds i32, i32* %0, i32 135, !dbg !346
  store i32 1541459225, i32* %73, align 4, !dbg !347, !tbaa !210
  store i32 0, i32* %2, align 4, !dbg !348, !tbaa !210
  ret void, !dbg !349
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update(i32* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !350 {
  %3 = alloca [16 x i32], align 4
  %4 = bitcast [16 x i32]* %3 to i8*
  %5 = alloca [8 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !354, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i8* %1, metadata !355, metadata !DIExpression()), !dbg !409
  %6 = bitcast [16 x i32]* %3 to i8*, !dbg !410
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #10, !dbg !410
  call void @llvm.dbg.declare(metadata [16 x i32]* %3, metadata !356, metadata !DIExpression()), !dbg !411
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !dbg !411
  %7 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i32 0, i32 0, !dbg !412
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes(i32* noundef nonnull %7, i8* noundef %1), !dbg !413
  call void @llvm.dbg.value(metadata i32* %10, metadata !360, metadata !DIExpression()), !dbg !409
  %8 = getelementptr inbounds i32, i32* %0, i32 64, !dbg !414
  %9 = bitcast i32* %8 to i8*, !dbg !409
  call void @llvm.dbg.value(metadata i32* %8, metadata !361, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32* %0, metadata !362, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32* %103, metadata !363, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32 0, metadata !364, metadata !DIExpression()), !dbg !415
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %9, i8* noundef nonnull align 4 dereferenceable(64) %4, i32 64, i1 false), !dbg !416, !tbaa !210
  call void @llvm.dbg.value(metadata i32 undef, metadata !364, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i32 undef, metadata !366, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 undef, metadata !364, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !415
  %10 = getelementptr inbounds i32, i32* %0, i32 128, !dbg !418
  br label %30, !dbg !419

11:                                               ; preds = %30
  %12 = bitcast [8 x i32]* %5 to i8*, !dbg !420
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #10, !dbg !420
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !377, metadata !DIExpression()), !dbg !421
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 0, !dbg !422
  %14 = bitcast i32* %10 to i8*, !dbg !422
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(32) %12, i8* noundef nonnull align 4 dereferenceable(32) %14, i32 32, i1 false), !dbg !422
  call void @llvm.dbg.value(metadata i32 0, metadata !381, metadata !DIExpression()), !dbg !423
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 3
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 4
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 5
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 6
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 7
  %22 = load i32, i32* %13, align 4, !tbaa !210
  %23 = load i32, i32* %15, align 4, !tbaa !210
  %24 = load i32, i32* %16, align 4, !tbaa !210
  %25 = load i32, i32* %17, align 4, !tbaa !210
  %26 = load i32, i32* %18, align 4, !tbaa !210
  %27 = load i32, i32* %19, align 4, !tbaa !210
  %28 = load i32, i32* %20, align 4, !tbaa !210
  %29 = load i32, i32* %21, align 4, !tbaa !210
  call void @llvm.dbg.value(metadata i32 0, metadata !381, metadata !DIExpression()), !dbg !423
  br label %61, !dbg !424

30:                                               ; preds = %2, %30
  %31 = phi i32 [ %58, %30 ], [ 16, %2 ]
  call void @llvm.dbg.value(metadata i32 %31, metadata !369, metadata !DIExpression()), !dbg !425
  %32 = add nsw i32 %31, -16, !dbg !426
  %33 = getelementptr inbounds i32, i32* %8, i32 %32, !dbg !427
  %34 = load i32, i32* %33, align 4, !dbg !427, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %34, metadata !371, metadata !DIExpression()), !dbg !428
  %35 = add nsw i32 %31, -15, !dbg !429
  %36 = getelementptr inbounds i32, i32* %8, i32 %35, !dbg !430
  %37 = load i32, i32* %36, align 4, !dbg !430, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %37, metadata !374, metadata !DIExpression()), !dbg !428
  %38 = add nsw i32 %31, -7, !dbg !431
  %39 = getelementptr inbounds i32, i32* %8, i32 %38, !dbg !432
  %40 = load i32, i32* %39, align 4, !dbg !432, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %40, metadata !375, metadata !DIExpression()), !dbg !428
  %41 = add nsw i32 %31, -2, !dbg !433
  %42 = getelementptr inbounds i32, i32* %8, i32 %41, !dbg !434
  %43 = load i32, i32* %42, align 4, !dbg !434, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %43, metadata !376, metadata !DIExpression()), !dbg !428
  %44 = call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 15), !dbg !435
  %45 = call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13), !dbg !436
  %46 = lshr i32 %43, 10, !dbg !437
  %47 = xor i32 %45, %46, !dbg !438
  %48 = xor i32 %47, %44, !dbg !439
  %49 = call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 25), !dbg !440
  %50 = call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 14), !dbg !441
  %51 = lshr i32 %37, 3, !dbg !442
  %52 = xor i32 %50, %51, !dbg !443
  %53 = xor i32 %52, %49, !dbg !444
  %54 = add i32 %40, %34, !dbg !445
  %55 = add i32 %54, %53, !dbg !446
  %56 = add i32 %55, %48, !dbg !447
  %57 = getelementptr inbounds i32, i32* %8, i32 %31, !dbg !448
  store i32 %56, i32* %57, align 4, !dbg !449, !tbaa !210
  %58 = add nuw nsw i32 %31, 1, !dbg !450
  call void @llvm.dbg.value(metadata i32 %58, metadata !369, metadata !DIExpression()), !dbg !425
  %59 = icmp eq i32 %58, 64, !dbg !451
  br i1 %59, label %11, label %30, !dbg !419, !llvm.loop !452

60:                                               ; preds = %61
  store i32 %98, i32* %13, align 4, !dbg !454, !tbaa !210
  store i32 %63, i32* %15, align 4, !dbg !454, !tbaa !210
  store i32 %64, i32* %16, align 4, !dbg !454, !tbaa !210
  store i32 %65, i32* %17, align 4, !dbg !454, !tbaa !210
  store i32 %99, i32* %18, align 4, !dbg !454, !tbaa !210
  store i32 %67, i32* %19, align 4, !dbg !454, !tbaa !210
  store i32 %68, i32* %20, align 4, !dbg !454, !tbaa !210
  store i32 %69, i32* %21, align 4, !dbg !454, !tbaa !210
  call void @llvm.dbg.value(metadata i32 0, metadata !401, metadata !DIExpression()), !dbg !455
  br label %106, !dbg !456

61:                                               ; preds = %11, %61
  %62 = phi i32 [ 0, %11 ], [ %100, %61 ]
  %63 = phi i32 [ %22, %11 ], [ %98, %61 ]
  %64 = phi i32 [ %23, %11 ], [ %63, %61 ]
  %65 = phi i32 [ %24, %11 ], [ %64, %61 ]
  %66 = phi i32 [ %25, %11 ], [ %65, %61 ]
  %67 = phi i32 [ %26, %11 ], [ %99, %61 ]
  %68 = phi i32 [ %27, %11 ], [ %67, %61 ]
  %69 = phi i32 [ %28, %11 ], [ %68, %61 ]
  %70 = phi i32 [ %29, %11 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata i32 %62, metadata !381, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %63, metadata !383, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %64, metadata !386, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %65, metadata !387, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %66, metadata !388, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %67, metadata !389, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %68, metadata !390, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %69, metadata !391, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %70, metadata !392, metadata !DIExpression()), !dbg !454
  %71 = getelementptr inbounds i32, i32* %0, i32 %62, !dbg !457
  %72 = load i32, i32* %71, align 4, !dbg !457, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %72, metadata !393, metadata !DIExpression()), !dbg !454
  %73 = getelementptr inbounds i32, i32* %8, i32 %62, !dbg !458
  %74 = load i32, i32* %73, align 4, !dbg !458, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %74, metadata !394, metadata !DIExpression()), !dbg !454
  %75 = call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 26), !dbg !459
  %76 = call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 21), !dbg !460
  %77 = call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 7), !dbg !461
  %78 = xor i32 %76, %77, !dbg !462
  %79 = xor i32 %78, %75, !dbg !463
  %80 = and i32 %68, %67, !dbg !464
  %81 = xor i32 %67, -1, !dbg !465
  %82 = and i32 %69, %81, !dbg !466
  %83 = add i32 %79, %80, !dbg !467
  %84 = add i32 %83, %70, !dbg !468
  %85 = add i32 %84, %82, !dbg !469
  %86 = add i32 %85, %72, !dbg !470
  %87 = add i32 %86, %74, !dbg !471
  call void @llvm.dbg.value(metadata i32 %87, metadata !395, metadata !DIExpression()), !dbg !454
  %88 = call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 30), !dbg !472
  %89 = call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 19), !dbg !473
  %90 = call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 10), !dbg !474
  %91 = xor i32 %89, %90, !dbg !475
  %92 = xor i32 %91, %88, !dbg !476
  %93 = and i32 %64, %63, !dbg !477
  %94 = xor i32 %64, %63, !dbg !478
  %95 = and i32 %94, %65, !dbg !478
  %96 = xor i32 %95, %93, !dbg !479
  %97 = add i32 %96, %92, !dbg !480
  call void @llvm.dbg.value(metadata i32 %97, metadata !396, metadata !DIExpression()), !dbg !454
  %98 = add i32 %97, %87, !dbg !481
  call void @llvm.dbg.value(metadata i32 %98, metadata !397, metadata !DIExpression()), !dbg !454
  %99 = add i32 %87, %66, !dbg !482
  call void @llvm.dbg.value(metadata i32 %99, metadata !398, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32* %13, metadata !399, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32* %18, metadata !400, metadata !DIExpression()), !dbg !454
  %100 = add nuw nsw i32 %62, 1, !dbg !483
  call void @llvm.dbg.value(metadata i32 %100, metadata !381, metadata !DIExpression()), !dbg !423
  %101 = icmp eq i32 %100, 64, !dbg !484
  br i1 %101, label %60, label %61, !dbg !424, !llvm.loop !485

102:                                              ; preds = %106
  %103 = getelementptr inbounds i32, i32* %0, i32 136, !dbg !487
  %104 = load i32, i32* %103, align 4, !dbg !488, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %104, metadata !407, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32 1, metadata !408, metadata !DIExpression()), !dbg !409
  %105 = add i32 %104, 1, !dbg !489
  store i32 %105, i32* %103, align 4, !dbg !490, !tbaa !210
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #10, !dbg !491
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #10, !dbg !491
  ret void, !dbg !491

106:                                              ; preds = %60, %106
  %107 = phi i32 [ 0, %60 ], [ %113, %106 ]
  call void @llvm.dbg.value(metadata i32 %107, metadata !401, metadata !DIExpression()), !dbg !455
  %108 = getelementptr inbounds i32, i32* %10, i32 %107, !dbg !492
  %109 = load i32, i32* %108, align 4, !dbg !492, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %109, metadata !403, metadata !DIExpression()), !dbg !493
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i32 0, i32 %107, !dbg !494
  %111 = load i32, i32* %110, align 4, !dbg !494, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %111, metadata !406, metadata !DIExpression()), !dbg !493
  %112 = add i32 %111, %109, !dbg !495
  store i32 %112, i32* %108, align 4, !dbg !496, !tbaa !210
  %113 = add nuw nsw i32 %107, 1, !dbg !497
  call void @llvm.dbg.value(metadata i32 %113, metadata !401, metadata !DIExpression()), !dbg !455
  %114 = icmp eq i32 %113, 8, !dbg !498
  br i1 %114, label %102, label %106, !dbg !456, !llvm.loop !499
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update_multi(i32* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !dbg !501 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !505, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i8* %1, metadata !506, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 %2, metadata !507, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 0, metadata !508, metadata !DIExpression()), !dbg !514
  %4 = icmp eq i32 %2, 0, !dbg !515
  br i1 %4, label %5, label %6, !dbg !516

5:                                                ; preds = %6, %3
  ret void, !dbg !517

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !508, metadata !DIExpression()), !dbg !514
  %8 = shl i32 %7, 6, !dbg !518
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !519
  call void @llvm.dbg.value(metadata i8* %9, metadata !510, metadata !DIExpression()), !dbg !520
  call fastcc void @Hacl_Impl_SHA2_256_update(i32* noundef %0, i8* noundef %9), !dbg !521
  %10 = add nuw i32 %7, 1, !dbg !522
  call void @llvm.dbg.value(metadata i32 %10, metadata !508, metadata !DIExpression()), !dbg !514
  %11 = icmp eq i32 %10, %2, !dbg !515
  br i1 %11, label %5, label %6, !dbg !516, !llvm.loop !523
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update_last(i32* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !dbg !525 {
  %4 = alloca [128 x i8], align 1
  call void @llvm.dbg.value(metadata i32* %0, metadata !527, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i8* %1, metadata !528, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i32 %2, metadata !529, metadata !DIExpression()), !dbg !542
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 0, !dbg !543
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #10, !dbg !543
  call void @llvm.dbg.declare(metadata [128 x i8]* %4, metadata !530, metadata !DIExpression()), !dbg !544
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !dbg !544
  %6 = icmp ult i32 %2, 56, !dbg !545
  %7 = select i1 %6, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %7, metadata !534, metadata !DIExpression()), !dbg !542
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i32 0, i32 64, !dbg !547
  %9 = select i1 %6, i8* %8, i8* %5, !dbg !547
  call void @llvm.dbg.value(metadata i8* %9, metadata !535, metadata !DIExpression()), !dbg !542
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %9, i8* align 1 %1, i32 %2, i1 false), !dbg !548
  %10 = getelementptr inbounds i32, i32* %0, i32 136, !dbg !549
  %11 = load i32, i32* %10, align 4, !dbg !549, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %11, metadata !536, metadata !DIExpression()), !dbg !542
  %12 = getelementptr inbounds i8, i8* %9, i32 %2, !dbg !550
  call void @llvm.dbg.value(metadata i8* %12, metadata !537, metadata !DIExpression()), !dbg !542
  %13 = sub i32 55, %2, !dbg !551
  %14 = and i32 %13, 63, !dbg !552
  call void @llvm.dbg.value(metadata i32 %14, metadata !538, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i8* %12, metadata !539, metadata !DIExpression()), !dbg !542
  %15 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !553
  %16 = getelementptr inbounds i8, i8* %15, i32 %14, !dbg !554
  call void @llvm.dbg.value(metadata i8* %16, metadata !540, metadata !DIExpression()), !dbg !542
  %17 = zext i32 %11 to i64, !dbg !555
  %18 = shl nuw nsw i64 %17, 6, !dbg !556
  %19 = zext i32 %2 to i64, !dbg !557
  %20 = add nuw nsw i64 %18, %19, !dbg !558
  %21 = shl nuw nsw i64 %20, 3, !dbg !559
  call void @llvm.dbg.value(metadata i64 %21, metadata !541, metadata !DIExpression()), !dbg !542
  store i8 -128, i8* %12, align 1, !dbg !560, !tbaa !66
  %22 = call fastcc i64 @__bswap_64(i64 noundef %21), !dbg !561
  call fastcc void @store64(i8* noundef nonnull %16, i64 noundef %22), !dbg !561
  call fastcc void @Hacl_Impl_SHA2_256_update_multi(i32* noundef %0, i8* noundef nonnull %9, i32 noundef %7), !dbg !562
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #10, !dbg !563
  ret void, !dbg !563
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_finish(i32* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) unnamed_addr #0 !dbg !564 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !566, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i8* %1, metadata !567, metadata !DIExpression()), !dbg !569
  %3 = getelementptr inbounds i32, i32* %0, i32 128, !dbg !570
  call void @llvm.dbg.value(metadata i32* %3, metadata !568, metadata !DIExpression()), !dbg !569
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes(i8* noundef %1, i32* noundef nonnull %3), !dbg !571
  ret void, !dbg !572
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes(i32* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #0 !dbg !573 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !575, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i8* %1, metadata !576, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i32 16, metadata !577, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i32 0, metadata !578, metadata !DIExpression()), !dbg !585
  br label %4, !dbg !586

3:                                                ; preds = %4
  ret void, !dbg !587

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !578, metadata !DIExpression()), !dbg !585
  %6 = shl i32 %5, 2, !dbg !588
  %7 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !589
  call void @llvm.dbg.value(metadata i8* %7, metadata !580, metadata !DIExpression()), !dbg !590
  %8 = call fastcc i32 @load32(i8* noundef %7), !dbg !591
  %9 = call fastcc i32 @__bswap_32(i32 noundef %8), !dbg !591
  call void @llvm.dbg.value(metadata i32 %9, metadata !583, metadata !DIExpression()), !dbg !590
  %10 = getelementptr inbounds i32, i32* %0, i32 %5, !dbg !592
  store i32 %9, i32* %10, align 4, !dbg !593, !tbaa !210
  %11 = add nuw nsw i32 %5, 1, !dbg !594
  call void @llvm.dbg.value(metadata i32 %11, metadata !578, metadata !DIExpression()), !dbg !585
  %12 = icmp eq i32 %11, 16, !dbg !595
  br i1 %12, label %3, label %4, !dbg !586, !llvm.loop !596
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @__bswap_32(i32 noundef %0) unnamed_addr #7 !dbg !598 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !603, metadata !DIExpression()), !dbg !604
  %2 = call i32 @llvm.bswap.i32(i32 %0), !dbg !605
  ret i32 %2, !dbg !606
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @load32(i8* nocapture noundef readonly %0) unnamed_addr #8 !dbg !607 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !612, metadata !DIExpression()), !dbg !614
  %2 = bitcast i8* %0 to i32*, !dbg !615
  %3 = load i32, i32* %2, align 1, !dbg !615
  call void @llvm.dbg.value(metadata i32 %3, metadata !613, metadata !DIExpression()), !dbg !614
  ret i32 %3, !dbg !616
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store64(i8* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #5 !dbg !617 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !621, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i64 %1, metadata !622, metadata !DIExpression()), !dbg !623
  %3 = bitcast i8* %0 to i64*, !dbg !624
  store i64 %1, i64* %3, align 1, !dbg !624
  ret void, !dbg !625
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @__bswap_64(i64 noundef %0) unnamed_addr #7 !dbg !626 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !630, metadata !DIExpression()), !dbg !631
  %2 = and i64 %0, 72057594037927935, !dbg !632
  %3 = call i64 @llvm.bswap.i64(i64 %2), !dbg !632
  ret i64 %3, !dbg !633
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes(i8* nocapture noundef writeonly %0, i32* nocapture noundef readonly %1) unnamed_addr #0 !dbg !634 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !638, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i32* %1, metadata !639, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i32 8, metadata !640, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()), !dbg !648
  br label %4, !dbg !649

3:                                                ; preds = %4
  ret void, !dbg !650

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !641, metadata !DIExpression()), !dbg !648
  %6 = getelementptr inbounds i32, i32* %1, i32 %5, !dbg !651
  %7 = load i32, i32* %6, align 4, !dbg !651, !tbaa !210
  call void @llvm.dbg.value(metadata i32 %7, metadata !643, metadata !DIExpression()), !dbg !652
  %8 = shl i32 %5, 2, !dbg !653
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !654
  call void @llvm.dbg.value(metadata i8* %9, metadata !646, metadata !DIExpression()), !dbg !652
  %10 = call fastcc i32 @__bswap_32(i32 noundef %7), !dbg !655
  call fastcc void @store32(i8* noundef %9, i32 noundef %10), !dbg !655
  %11 = add nuw nsw i32 %5, 1, !dbg !656
  call void @llvm.dbg.value(metadata i32 %11, metadata !641, metadata !DIExpression()), !dbg !648
  %12 = icmp eq i32 %11, 8, !dbg !657
  br i1 %12, label %3, label %4, !dbg !649, !llvm.loop !658
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store32(i8* nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !dbg !660 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !664, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i32 %1, metadata !665, metadata !DIExpression()), !dbg !666
  %3 = bitcast i8* %0 to i32*, !dbg !667
  store i32 %1, i32* %3, align 1, !dbg !667
  ret void, !dbg !668
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !dbg !669 {
  %4 = alloca [137 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !671, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i8* %1, metadata !672, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i32 %2, metadata !673, metadata !DIExpression()), !dbg !679
  %5 = bitcast [137 x i32]* %4 to i8*, !dbg !680
  call void @llvm.lifetime.start.p0i8(i64 548, i8* nonnull %5) #10, !dbg !680
  call void @llvm.dbg.declare(metadata [137 x i32]* %4, metadata !674, metadata !DIExpression()), !dbg !681
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(548) %5, i8 0, i32 548, i1 false), !dbg !681
  %6 = lshr i32 %2, 6, !dbg !682
  call void @llvm.dbg.value(metadata i32 %6, metadata !675, metadata !DIExpression()), !dbg !679
  %7 = and i32 %2, 63, !dbg !683
  call void @llvm.dbg.value(metadata i32 %7, metadata !676, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i8* %1, metadata !677, metadata !DIExpression()), !dbg !679
  %8 = and i32 %2, -64, !dbg !684
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !685
  call void @llvm.dbg.value(metadata i8* %9, metadata !678, metadata !DIExpression()), !dbg !679
  %10 = getelementptr inbounds [137 x i32], [137 x i32]* %4, i32 0, i32 0, !dbg !686
  call fastcc void @Hacl_Impl_SHA2_256_init(i32* noundef nonnull %10), !dbg !687
  call fastcc void @Hacl_Impl_SHA2_256_update_multi(i32* noundef nonnull %10, i8* noundef %1, i32 noundef %6), !dbg !688
  call fastcc void @Hacl_Impl_SHA2_256_update_last(i32* noundef nonnull %10, i8* noundef %9, i32 noundef %7), !dbg !689
  call fastcc void @Hacl_Impl_SHA2_256_finish(i32* noundef nonnull %10, i8* noundef %0), !dbg !690
  call void @llvm.lifetime.end.p0i8(i64 548, i8* nonnull %5) #10, !dbg !691
  ret void, !dbg !691
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_HMAC_SHA2_256.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "2f56678eb91919a269a5b3531bb31f7f")
!2 = !{!3, !8, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 48, baseType: !13)
!13 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!14 = !{i32 1, !"NumRegisterParameters", i32 0}
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!22 = distinct !DISubprogram(name: "Hacl_HMAC_SHA2_256_hmac_core", scope: !1, file: !1, line: 361, type: !23, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !25, !25, !3}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!26 = !{!27, !28, !29, !30}
!27 = !DILocalVariable(name: "mac", arg: 1, scope: !22, file: !1, line: 361, type: !25)
!28 = !DILocalVariable(name: "key", arg: 2, scope: !22, file: !1, line: 361, type: !25)
!29 = !DILocalVariable(name: "data", arg: 3, scope: !22, file: !1, line: 361, type: !25)
!30 = !DILocalVariable(name: "len", arg: 4, scope: !22, file: !1, line: 361, type: !3)
!31 = !DILocation(line: 0, scope: !22)
!32 = !DILocation(line: 363, column: 3, scope: !22)
!33 = !DILocation(line: 364, column: 1, scope: !22)
!34 = distinct !DISubprogram(name: "Hacl_Impl_HMAC_SHA2_256_hmac_core", scope: !1, file: !1, line: 310, type: !23, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!35 = !{!36, !37, !38, !39, !40, !44, !46, !47, !49, !53, !54, !55, !56, !57, !58, !59}
!36 = !DILocalVariable(name: "mac", arg: 1, scope: !34, file: !1, line: 310, type: !25)
!37 = !DILocalVariable(name: "key", arg: 2, scope: !34, file: !1, line: 310, type: !25)
!38 = !DILocalVariable(name: "data", arg: 3, scope: !34, file: !1, line: 310, type: !25)
!39 = !DILocalVariable(name: "len", arg: 4, scope: !34, file: !1, line: 310, type: !3)
!40 = !DILocalVariable(name: "ipad", scope: !34, file: !1, line: 312, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 64)
!44 = !DILocalVariable(name: "_i", scope: !45, file: !1, line: 313, type: !3)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 313, column: 3)
!46 = !DILocalVariable(name: "opad", scope: !34, file: !1, line: 315, type: !41)
!47 = !DILocalVariable(name: "_i", scope: !48, file: !1, line: 316, type: !3)
!48 = distinct !DILexicalBlock(scope: !34, file: !1, line: 316, column: 3)
!49 = !DILocalVariable(name: "state0", scope: !34, file: !1, line: 319, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 4384, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 137)
!53 = !DILocalVariable(name: "n0", scope: !34, file: !1, line: 320, type: !3)
!54 = !DILocalVariable(name: "r0", scope: !34, file: !1, line: 321, type: !3)
!55 = !DILocalVariable(name: "blocks0", scope: !34, file: !1, line: 322, type: !25)
!56 = !DILocalVariable(name: "last0", scope: !34, file: !1, line: 323, type: !25)
!57 = !DILocalVariable(name: "hash0", scope: !34, file: !1, line: 328, type: !25)
!58 = !DILocalVariable(name: "s4", scope: !34, file: !1, line: 330, type: !25)
!59 = !DILocalVariable(name: "state1", scope: !34, file: !1, line: 332, type: !50)
!60 = !DILocation(line: 0, scope: !34)
!61 = !DILocation(line: 312, column: 3, scope: !34)
!62 = !DILocation(line: 312, column: 11, scope: !34)
!63 = !DILocation(line: 0, scope: !45)
!64 = !DILocation(line: 314, column: 14, scope: !65)
!65 = distinct !DILexicalBlock(scope: !45, file: !1, line: 313, column: 3)
!66 = !{!67, !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 315, column: 3, scope: !34)
!70 = !DILocation(line: 315, column: 11, scope: !34)
!71 = !DILocation(line: 0, scope: !48)
!72 = !DILocation(line: 317, column: 14, scope: !73)
!73 = distinct !DILexicalBlock(scope: !48, file: !1, line: 316, column: 3)
!74 = !DILocation(line: 318, column: 3, scope: !34)
!75 = !DILocation(line: 319, column: 3, scope: !34)
!76 = !DILocation(line: 319, column: 12, scope: !34)
!77 = !DILocation(line: 320, column: 21, scope: !34)
!78 = !DILocation(line: 321, column: 21, scope: !34)
!79 = !DILocation(line: 323, column: 30, scope: !34)
!80 = !DILocation(line: 323, column: 25, scope: !34)
!81 = !DILocation(line: 324, column: 27, scope: !34)
!82 = !DILocation(line: 324, column: 3, scope: !34)
!83 = !DILocation(line: 325, column: 3, scope: !34)
!84 = !DILocation(line: 326, column: 3, scope: !34)
!85 = !DILocation(line: 327, column: 3, scope: !34)
!86 = !DILocation(line: 329, column: 3, scope: !34)
!87 = !DILocation(line: 331, column: 3, scope: !34)
!88 = !DILocation(line: 332, column: 3, scope: !34)
!89 = !DILocation(line: 332, column: 12, scope: !34)
!90 = !DILocation(line: 333, column: 27, scope: !34)
!91 = !DILocation(line: 333, column: 3, scope: !34)
!92 = !DILocation(line: 334, column: 3, scope: !34)
!93 = !DILocation(line: 335, column: 3, scope: !34)
!94 = !DILocation(line: 336, column: 3, scope: !34)
!95 = !DILocation(line: 337, column: 1, scope: !34)
!96 = distinct !DISubprogram(name: "Hacl_HMAC_SHA2_256_hmac", scope: !1, file: !1, line: 367, type: !97, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !25, !25, !3, !25, !3}
!99 = !{!100, !101, !102, !103, !104}
!100 = !DILocalVariable(name: "mac", arg: 1, scope: !96, file: !1, line: 368, type: !25)
!101 = !DILocalVariable(name: "key", arg: 2, scope: !96, file: !1, line: 369, type: !25)
!102 = !DILocalVariable(name: "keylen", arg: 3, scope: !96, file: !1, line: 370, type: !3)
!103 = !DILocalVariable(name: "data", arg: 4, scope: !96, file: !1, line: 371, type: !25)
!104 = !DILocalVariable(name: "datalen", arg: 5, scope: !96, file: !1, line: 372, type: !3)
!105 = !DILocation(line: 0, scope: !96)
!106 = !DILocation(line: 375, column: 3, scope: !96)
!107 = !DILocation(line: 376, column: 1, scope: !96)
!108 = distinct !DISubprogram(name: "Hacl_Impl_HMAC_SHA2_256_hmac", scope: !1, file: !1, line: 340, type: !97, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116, !118}
!110 = !DILocalVariable(name: "mac", arg: 1, scope: !108, file: !1, line: 341, type: !25)
!111 = !DILocalVariable(name: "key", arg: 2, scope: !108, file: !1, line: 342, type: !25)
!112 = !DILocalVariable(name: "keylen", arg: 3, scope: !108, file: !1, line: 343, type: !3)
!113 = !DILocalVariable(name: "data", arg: 4, scope: !108, file: !1, line: 344, type: !25)
!114 = !DILocalVariable(name: "datalen", arg: 5, scope: !108, file: !1, line: 345, type: !3)
!115 = !DILocalVariable(name: "nkey", scope: !108, file: !1, line: 348, type: !41)
!116 = !DILocalVariable(name: "_i", scope: !117, file: !1, line: 349, type: !3)
!117 = distinct !DILexicalBlock(scope: !108, file: !1, line: 349, column: 3)
!118 = !DILocalVariable(name: "nkey0", scope: !119, file: !1, line: 355, type: !25)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 354, column: 3)
!120 = distinct !DILexicalBlock(scope: !108, file: !1, line: 351, column: 7)
!121 = !DILocation(line: 0, scope: !108)
!122 = !DILocation(line: 348, column: 3, scope: !108)
!123 = !DILocation(line: 348, column: 11, scope: !108)
!124 = !DILocation(line: 0, scope: !117)
!125 = !DILocation(line: 350, column: 14, scope: !126)
!126 = distinct !DILexicalBlock(scope: !117, file: !1, line: 349, column: 3)
!127 = !DILocation(line: 351, column: 14, scope: !120)
!128 = !DILocation(line: 351, column: 7, scope: !108)
!129 = !DILocation(line: 352, column: 5, scope: !120)
!130 = !DILocation(line: 0, scope: !119)
!131 = !DILocation(line: 356, column: 5, scope: !119)
!132 = !DILocation(line: 358, column: 3, scope: !108)
!133 = !DILocation(line: 359, column: 1, scope: !108)
!134 = distinct !DISubprogram(name: "Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace", scope: !1, file: !1, line: 299, type: !135, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !25, !25, !3}
!137 = !{!138, !139, !140, !141, !143, !146}
!138 = !DILocalVariable(name: "a", arg: 1, scope: !134, file: !1, line: 299, type: !25)
!139 = !DILocalVariable(name: "b", arg: 2, scope: !134, file: !1, line: 299, type: !25)
!140 = !DILocalVariable(name: "len", arg: 3, scope: !134, file: !1, line: 299, type: !3)
!141 = !DILocalVariable(name: "i", scope: !142, file: !1, line: 301, type: !3)
!142 = distinct !DILexicalBlock(scope: !134, file: !1, line: 301, column: 3)
!143 = !DILocalVariable(name: "xi", scope: !144, file: !1, line: 303, type: !8)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 302, column: 3)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 301, column: 3)
!146 = !DILocalVariable(name: "yi", scope: !144, file: !1, line: 304, type: !8)
!147 = !DILocation(line: 0, scope: !134)
!148 = !DILocation(line: 0, scope: !142)
!149 = !DILocation(line: 301, column: 3, scope: !142)
!150 = !DILocation(line: 307, column: 1, scope: !134)
!151 = !DILocation(line: 303, column: 18, scope: !144)
!152 = !DILocation(line: 0, scope: !144)
!153 = !DILocation(line: 304, column: 18, scope: !144)
!154 = !DILocation(line: 305, column: 15, scope: !144)
!155 = !DILocation(line: 305, column: 10, scope: !144)
!156 = !DILocation(line: 301, column: 50, scope: !145)
!157 = !DILocation(line: 301, column: 37, scope: !145)
!158 = distinct !{!158, !149, !159, !160, !161}
!159 = !DILocation(line: 306, column: 3, scope: !142)
!160 = !{!"llvm.loop.mustprogress"}
!161 = !{!"llvm.loop.unroll.disable"}
!162 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_init", scope: !1, file: !1, line: 49, type: !163, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !166)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!167 = !DILocalVariable(name: "state", arg: 1, scope: !162, file: !1, line: 49, type: !165)
!168 = !DILocalVariable(name: "n1", scope: !162, file: !1, line: 51, type: !165)
!169 = !DILocalVariable(name: "k1", scope: !162, file: !1, line: 52, type: !165)
!170 = !DILocalVariable(name: "h_01", scope: !162, file: !1, line: 53, type: !165)
!171 = !DILocalVariable(name: "p10", scope: !162, file: !1, line: 54, type: !165)
!172 = !DILocalVariable(name: "p20", scope: !162, file: !1, line: 55, type: !165)
!173 = !DILocalVariable(name: "p3", scope: !162, file: !1, line: 56, type: !165)
!174 = !DILocalVariable(name: "p4", scope: !162, file: !1, line: 57, type: !165)
!175 = !DILocalVariable(name: "p11", scope: !162, file: !1, line: 58, type: !165)
!176 = !DILocalVariable(name: "p21", scope: !162, file: !1, line: 59, type: !165)
!177 = !DILocalVariable(name: "p12", scope: !162, file: !1, line: 60, type: !165)
!178 = !DILocalVariable(name: "p22", scope: !162, file: !1, line: 61, type: !165)
!179 = !DILocalVariable(name: "p13", scope: !162, file: !1, line: 70, type: !165)
!180 = !DILocalVariable(name: "p23", scope: !162, file: !1, line: 71, type: !165)
!181 = !DILocalVariable(name: "p14", scope: !162, file: !1, line: 80, type: !165)
!182 = !DILocalVariable(name: "p24", scope: !162, file: !1, line: 81, type: !165)
!183 = !DILocalVariable(name: "p15", scope: !162, file: !1, line: 82, type: !165)
!184 = !DILocalVariable(name: "p25", scope: !162, file: !1, line: 83, type: !165)
!185 = !DILocalVariable(name: "p16", scope: !162, file: !1, line: 92, type: !165)
!186 = !DILocalVariable(name: "p26", scope: !162, file: !1, line: 93, type: !165)
!187 = !DILocalVariable(name: "p17", scope: !162, file: !1, line: 102, type: !165)
!188 = !DILocalVariable(name: "p27", scope: !162, file: !1, line: 103, type: !165)
!189 = !DILocalVariable(name: "p18", scope: !162, file: !1, line: 104, type: !165)
!190 = !DILocalVariable(name: "p28", scope: !162, file: !1, line: 105, type: !165)
!191 = !DILocalVariable(name: "p19", scope: !162, file: !1, line: 114, type: !165)
!192 = !DILocalVariable(name: "p29", scope: !162, file: !1, line: 115, type: !165)
!193 = !DILocalVariable(name: "p110", scope: !162, file: !1, line: 124, type: !165)
!194 = !DILocalVariable(name: "p210", scope: !162, file: !1, line: 125, type: !165)
!195 = !DILocalVariable(name: "p1", scope: !162, file: !1, line: 126, type: !165)
!196 = !DILocalVariable(name: "p211", scope: !162, file: !1, line: 127, type: !165)
!197 = !DILocalVariable(name: "p111", scope: !162, file: !1, line: 136, type: !165)
!198 = !DILocalVariable(name: "p212", scope: !162, file: !1, line: 137, type: !165)
!199 = !DILocalVariable(name: "p112", scope: !162, file: !1, line: 146, type: !165)
!200 = !DILocalVariable(name: "p2", scope: !162, file: !1, line: 147, type: !165)
!201 = !DILocation(line: 0, scope: !162)
!202 = !DILocation(line: 51, column: 24, scope: !162)
!203 = !DILocation(line: 53, column: 26, scope: !162)
!204 = !DILocation(line: 55, column: 22, scope: !162)
!205 = !DILocation(line: 56, column: 21, scope: !162)
!206 = !DILocation(line: 57, column: 21, scope: !162)
!207 = !DILocation(line: 59, column: 23, scope: !162)
!208 = !DILocation(line: 61, column: 23, scope: !162)
!209 = !DILocation(line: 62, column: 11, scope: !162)
!210 = !{!211, !211, i64 0}
!211 = !{!"int", !67, i64 0}
!212 = !DILocation(line: 63, column: 3, scope: !162)
!213 = !DILocation(line: 63, column: 11, scope: !162)
!214 = !DILocation(line: 64, column: 3, scope: !162)
!215 = !DILocation(line: 64, column: 11, scope: !162)
!216 = !DILocation(line: 65, column: 3, scope: !162)
!217 = !DILocation(line: 65, column: 11, scope: !162)
!218 = !DILocation(line: 66, column: 11, scope: !162)
!219 = !DILocation(line: 67, column: 3, scope: !162)
!220 = !DILocation(line: 67, column: 11, scope: !162)
!221 = !DILocation(line: 68, column: 3, scope: !162)
!222 = !DILocation(line: 68, column: 11, scope: !162)
!223 = !DILocation(line: 69, column: 3, scope: !162)
!224 = !DILocation(line: 69, column: 11, scope: !162)
!225 = !DILocation(line: 71, column: 23, scope: !162)
!226 = !DILocation(line: 72, column: 11, scope: !162)
!227 = !DILocation(line: 73, column: 3, scope: !162)
!228 = !DILocation(line: 73, column: 11, scope: !162)
!229 = !DILocation(line: 74, column: 3, scope: !162)
!230 = !DILocation(line: 74, column: 11, scope: !162)
!231 = !DILocation(line: 75, column: 3, scope: !162)
!232 = !DILocation(line: 75, column: 11, scope: !162)
!233 = !DILocation(line: 76, column: 11, scope: !162)
!234 = !DILocation(line: 77, column: 3, scope: !162)
!235 = !DILocation(line: 77, column: 11, scope: !162)
!236 = !DILocation(line: 78, column: 3, scope: !162)
!237 = !DILocation(line: 78, column: 11, scope: !162)
!238 = !DILocation(line: 79, column: 3, scope: !162)
!239 = !DILocation(line: 79, column: 11, scope: !162)
!240 = !DILocation(line: 81, column: 23, scope: !162)
!241 = !DILocation(line: 83, column: 23, scope: !162)
!242 = !DILocation(line: 84, column: 11, scope: !162)
!243 = !DILocation(line: 85, column: 3, scope: !162)
!244 = !DILocation(line: 85, column: 11, scope: !162)
!245 = !DILocation(line: 86, column: 3, scope: !162)
!246 = !DILocation(line: 86, column: 11, scope: !162)
!247 = !DILocation(line: 87, column: 3, scope: !162)
!248 = !DILocation(line: 87, column: 11, scope: !162)
!249 = !DILocation(line: 88, column: 11, scope: !162)
!250 = !DILocation(line: 89, column: 3, scope: !162)
!251 = !DILocation(line: 89, column: 11, scope: !162)
!252 = !DILocation(line: 90, column: 3, scope: !162)
!253 = !DILocation(line: 90, column: 11, scope: !162)
!254 = !DILocation(line: 91, column: 3, scope: !162)
!255 = !DILocation(line: 91, column: 11, scope: !162)
!256 = !DILocation(line: 93, column: 23, scope: !162)
!257 = !DILocation(line: 94, column: 11, scope: !162)
!258 = !DILocation(line: 95, column: 3, scope: !162)
!259 = !DILocation(line: 95, column: 11, scope: !162)
!260 = !DILocation(line: 96, column: 3, scope: !162)
!261 = !DILocation(line: 96, column: 11, scope: !162)
!262 = !DILocation(line: 97, column: 3, scope: !162)
!263 = !DILocation(line: 97, column: 11, scope: !162)
!264 = !DILocation(line: 98, column: 11, scope: !162)
!265 = !DILocation(line: 99, column: 3, scope: !162)
!266 = !DILocation(line: 99, column: 11, scope: !162)
!267 = !DILocation(line: 100, column: 3, scope: !162)
!268 = !DILocation(line: 100, column: 11, scope: !162)
!269 = !DILocation(line: 101, column: 3, scope: !162)
!270 = !DILocation(line: 101, column: 11, scope: !162)
!271 = !DILocation(line: 103, column: 22, scope: !162)
!272 = !DILocation(line: 105, column: 23, scope: !162)
!273 = !DILocation(line: 106, column: 11, scope: !162)
!274 = !DILocation(line: 107, column: 3, scope: !162)
!275 = !DILocation(line: 107, column: 11, scope: !162)
!276 = !DILocation(line: 108, column: 3, scope: !162)
!277 = !DILocation(line: 108, column: 11, scope: !162)
!278 = !DILocation(line: 109, column: 3, scope: !162)
!279 = !DILocation(line: 109, column: 11, scope: !162)
!280 = !DILocation(line: 110, column: 11, scope: !162)
!281 = !DILocation(line: 111, column: 3, scope: !162)
!282 = !DILocation(line: 111, column: 11, scope: !162)
!283 = !DILocation(line: 112, column: 3, scope: !162)
!284 = !DILocation(line: 112, column: 11, scope: !162)
!285 = !DILocation(line: 113, column: 3, scope: !162)
!286 = !DILocation(line: 113, column: 11, scope: !162)
!287 = !DILocation(line: 115, column: 23, scope: !162)
!288 = !DILocation(line: 116, column: 11, scope: !162)
!289 = !DILocation(line: 117, column: 3, scope: !162)
!290 = !DILocation(line: 117, column: 11, scope: !162)
!291 = !DILocation(line: 118, column: 3, scope: !162)
!292 = !DILocation(line: 118, column: 11, scope: !162)
!293 = !DILocation(line: 119, column: 3, scope: !162)
!294 = !DILocation(line: 119, column: 11, scope: !162)
!295 = !DILocation(line: 120, column: 11, scope: !162)
!296 = !DILocation(line: 121, column: 3, scope: !162)
!297 = !DILocation(line: 121, column: 11, scope: !162)
!298 = !DILocation(line: 122, column: 3, scope: !162)
!299 = !DILocation(line: 122, column: 11, scope: !162)
!300 = !DILocation(line: 123, column: 3, scope: !162)
!301 = !DILocation(line: 123, column: 11, scope: !162)
!302 = !DILocation(line: 125, column: 23, scope: !162)
!303 = !DILocation(line: 127, column: 25, scope: !162)
!304 = !DILocation(line: 128, column: 10, scope: !162)
!305 = !DILocation(line: 129, column: 3, scope: !162)
!306 = !DILocation(line: 129, column: 10, scope: !162)
!307 = !DILocation(line: 130, column: 3, scope: !162)
!308 = !DILocation(line: 130, column: 10, scope: !162)
!309 = !DILocation(line: 131, column: 3, scope: !162)
!310 = !DILocation(line: 131, column: 10, scope: !162)
!311 = !DILocation(line: 132, column: 12, scope: !162)
!312 = !DILocation(line: 133, column: 3, scope: !162)
!313 = !DILocation(line: 133, column: 12, scope: !162)
!314 = !DILocation(line: 134, column: 3, scope: !162)
!315 = !DILocation(line: 134, column: 12, scope: !162)
!316 = !DILocation(line: 135, column: 3, scope: !162)
!317 = !DILocation(line: 135, column: 12, scope: !162)
!318 = !DILocation(line: 137, column: 25, scope: !162)
!319 = !DILocation(line: 138, column: 12, scope: !162)
!320 = !DILocation(line: 139, column: 3, scope: !162)
!321 = !DILocation(line: 139, column: 12, scope: !162)
!322 = !DILocation(line: 140, column: 3, scope: !162)
!323 = !DILocation(line: 140, column: 12, scope: !162)
!324 = !DILocation(line: 141, column: 3, scope: !162)
!325 = !DILocation(line: 141, column: 12, scope: !162)
!326 = !DILocation(line: 142, column: 12, scope: !162)
!327 = !DILocation(line: 143, column: 3, scope: !162)
!328 = !DILocation(line: 143, column: 12, scope: !162)
!329 = !DILocation(line: 144, column: 3, scope: !162)
!330 = !DILocation(line: 144, column: 12, scope: !162)
!331 = !DILocation(line: 145, column: 3, scope: !162)
!332 = !DILocation(line: 145, column: 12, scope: !162)
!333 = !DILocation(line: 147, column: 23, scope: !162)
!334 = !DILocation(line: 148, column: 12, scope: !162)
!335 = !DILocation(line: 149, column: 3, scope: !162)
!336 = !DILocation(line: 149, column: 12, scope: !162)
!337 = !DILocation(line: 150, column: 3, scope: !162)
!338 = !DILocation(line: 150, column: 12, scope: !162)
!339 = !DILocation(line: 151, column: 3, scope: !162)
!340 = !DILocation(line: 151, column: 12, scope: !162)
!341 = !DILocation(line: 152, column: 10, scope: !162)
!342 = !DILocation(line: 153, column: 3, scope: !162)
!343 = !DILocation(line: 153, column: 10, scope: !162)
!344 = !DILocation(line: 154, column: 3, scope: !162)
!345 = !DILocation(line: 154, column: 10, scope: !162)
!346 = !DILocation(line: 155, column: 3, scope: !162)
!347 = !DILocation(line: 155, column: 10, scope: !162)
!348 = !DILocation(line: 156, column: 10, scope: !162)
!349 = !DILocation(line: 157, column: 1, scope: !162)
!350 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update", scope: !1, file: !1, line: 159, type: !351, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !353)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !165, !25}
!353 = !{!354, !355, !356, !360, !361, !362, !363, !364, !366, !369, !371, !374, !375, !376, !377, !381, !383, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !403, !406, !407, !408}
!354 = !DILocalVariable(name: "state", arg: 1, scope: !350, file: !1, line: 159, type: !165)
!355 = !DILocalVariable(name: "data", arg: 2, scope: !350, file: !1, line: 159, type: !25)
!356 = !DILocalVariable(name: "data_w", scope: !350, file: !1, line: 161, type: !357)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 512, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 16)
!360 = !DILocalVariable(name: "hash_w", scope: !350, file: !1, line: 163, type: !165)
!361 = !DILocalVariable(name: "ws_w", scope: !350, file: !1, line: 164, type: !165)
!362 = !DILocalVariable(name: "k_w", scope: !350, file: !1, line: 165, type: !165)
!363 = !DILocalVariable(name: "counter_w", scope: !350, file: !1, line: 166, type: !165)
!364 = !DILocalVariable(name: "i", scope: !365, file: !1, line: 167, type: !3)
!365 = distinct !DILexicalBlock(scope: !350, file: !1, line: 167, column: 3)
!366 = !DILocalVariable(name: "b", scope: !367, file: !1, line: 169, type: !3)
!367 = distinct !DILexicalBlock(scope: !368, file: !1, line: 168, column: 3)
!368 = distinct !DILexicalBlock(scope: !365, file: !1, line: 167, column: 3)
!369 = !DILocalVariable(name: "i", scope: !370, file: !1, line: 172, type: !3)
!370 = distinct !DILexicalBlock(scope: !350, file: !1, line: 172, column: 3)
!371 = !DILocalVariable(name: "t16", scope: !372, file: !1, line: 174, type: !3)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 173, column: 3)
!373 = distinct !DILexicalBlock(scope: !370, file: !1, line: 172, column: 3)
!374 = !DILocalVariable(name: "t15", scope: !372, file: !1, line: 175, type: !3)
!375 = !DILocalVariable(name: "t7", scope: !372, file: !1, line: 176, type: !3)
!376 = !DILocalVariable(name: "t2", scope: !372, file: !1, line: 177, type: !3)
!377 = !DILocalVariable(name: "hash_0", scope: !350, file: !1, line: 188, type: !378)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 256, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 8)
!381 = !DILocalVariable(name: "i", scope: !382, file: !1, line: 190, type: !3)
!382 = distinct !DILexicalBlock(scope: !350, file: !1, line: 190, column: 3)
!383 = !DILocalVariable(name: "a", scope: !384, file: !1, line: 192, type: !3)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 191, column: 3)
!385 = distinct !DILexicalBlock(scope: !382, file: !1, line: 190, column: 3)
!386 = !DILocalVariable(name: "b", scope: !384, file: !1, line: 193, type: !3)
!387 = !DILocalVariable(name: "c", scope: !384, file: !1, line: 194, type: !3)
!388 = !DILocalVariable(name: "d", scope: !384, file: !1, line: 195, type: !3)
!389 = !DILocalVariable(name: "e", scope: !384, file: !1, line: 196, type: !3)
!390 = !DILocalVariable(name: "f1", scope: !384, file: !1, line: 197, type: !3)
!391 = !DILocalVariable(name: "g", scope: !384, file: !1, line: 198, type: !3)
!392 = !DILocalVariable(name: "h", scope: !384, file: !1, line: 199, type: !3)
!393 = !DILocalVariable(name: "kt", scope: !384, file: !1, line: 200, type: !3)
!394 = !DILocalVariable(name: "wst", scope: !384, file: !1, line: 201, type: !3)
!395 = !DILocalVariable(name: "t1", scope: !384, file: !1, line: 203, type: !3)
!396 = !DILocalVariable(name: "t2", scope: !384, file: !1, line: 214, type: !3)
!397 = !DILocalVariable(name: "x1", scope: !384, file: !1, line: 220, type: !3)
!398 = !DILocalVariable(name: "x5", scope: !384, file: !1, line: 221, type: !3)
!399 = !DILocalVariable(name: "p1", scope: !384, file: !1, line: 222, type: !165)
!400 = !DILocalVariable(name: "p2", scope: !384, file: !1, line: 223, type: !165)
!401 = !DILocalVariable(name: "i", scope: !402, file: !1, line: 233, type: !3)
!402 = distinct !DILexicalBlock(scope: !350, file: !1, line: 233, column: 3)
!403 = !DILocalVariable(name: "xi", scope: !404, file: !1, line: 235, type: !3)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 234, column: 3)
!405 = distinct !DILexicalBlock(scope: !402, file: !1, line: 233, column: 3)
!406 = !DILocalVariable(name: "yi", scope: !404, file: !1, line: 236, type: !3)
!407 = !DILocalVariable(name: "c0", scope: !350, file: !1, line: 239, type: !3)
!408 = !DILocalVariable(name: "one1", scope: !350, file: !1, line: 240, type: !3)
!409 = !DILocation(line: 0, scope: !350)
!410 = !DILocation(line: 161, column: 3, scope: !350)
!411 = !DILocation(line: 161, column: 12, scope: !350)
!412 = !DILocation(line: 162, column: 49, scope: !350)
!413 = !DILocation(line: 162, column: 3, scope: !350)
!414 = !DILocation(line: 164, column: 26, scope: !350)
!415 = !DILocation(line: 0, scope: !365)
!416 = !DILocation(line: 170, column: 13, scope: !367)
!417 = !DILocation(line: 0, scope: !367)
!418 = !DILocation(line: 163, column: 28, scope: !350)
!419 = !DILocation(line: 172, column: 3, scope: !370)
!420 = !DILocation(line: 188, column: 3, scope: !350)
!421 = !DILocation(line: 188, column: 12, scope: !350)
!422 = !DILocation(line: 189, column: 3, scope: !350)
!423 = !DILocation(line: 0, scope: !382)
!424 = !DILocation(line: 190, column: 3, scope: !382)
!425 = !DILocation(line: 0, scope: !370)
!426 = !DILocation(line: 174, column: 27, scope: !372)
!427 = !DILocation(line: 174, column: 20, scope: !372)
!428 = !DILocation(line: 0, scope: !372)
!429 = !DILocation(line: 175, column: 27, scope: !372)
!430 = !DILocation(line: 175, column: 20, scope: !372)
!431 = !DILocation(line: 176, column: 26, scope: !372)
!432 = !DILocation(line: 176, column: 19, scope: !372)
!433 = !DILocation(line: 177, column: 26, scope: !372)
!434 = !DILocation(line: 177, column: 19, scope: !372)
!435 = !DILocation(line: 179, column: 29, scope: !372)
!436 = !DILocation(line: 180, column: 31, scope: !372)
!437 = !DILocation(line: 180, column: 77, scope: !372)
!438 = !DILocation(line: 180, column: 72, scope: !372)
!439 = !DILocation(line: 180, column: 7, scope: !372)
!440 = !DILocation(line: 184, column: 33, scope: !372)
!441 = !DILocation(line: 185, column: 36, scope: !372)
!442 = !DILocation(line: 185, column: 84, scope: !372)
!443 = !DILocation(line: 185, column: 78, scope: !372)
!444 = !DILocation(line: 185, column: 11, scope: !372)
!445 = !DILocation(line: 181, column: 7, scope: !372)
!446 = !DILocation(line: 183, column: 9, scope: !372)
!447 = !DILocation(line: 186, column: 11, scope: !372)
!448 = !DILocation(line: 178, column: 5, scope: !372)
!449 = !DILocation(line: 178, column: 13, scope: !372)
!450 = !DILocation(line: 172, column: 61, scope: !373)
!451 = !DILocation(line: 172, column: 38, scope: !373)
!452 = distinct !{!452, !419, !453, !160, !161}
!453 = !DILocation(line: 187, column: 3, scope: !370)
!454 = !DILocation(line: 0, scope: !384)
!455 = !DILocation(line: 0, scope: !402)
!456 = !DILocation(line: 233, column: 3, scope: !402)
!457 = !DILocation(line: 200, column: 19, scope: !384)
!458 = !DILocation(line: 201, column: 20, scope: !384)
!459 = !DILocation(line: 206, column: 29, scope: !384)
!460 = !DILocation(line: 208, column: 32, scope: !384)
!461 = !DILocation(line: 209, column: 33, scope: !384)
!462 = !DILocation(line: 209, column: 11, scope: !384)
!463 = !DILocation(line: 207, column: 9, scope: !384)
!464 = !DILocation(line: 210, column: 13, scope: !384)
!465 = !DILocation(line: 210, column: 22, scope: !384)
!466 = !DILocation(line: 210, column: 25, scope: !384)
!467 = !DILocation(line: 210, column: 19, scope: !384)
!468 = !DILocation(line: 205, column: 7, scope: !384)
!469 = !DILocation(line: 210, column: 7, scope: !384)
!470 = !DILocation(line: 211, column: 7, scope: !384)
!471 = !DILocation(line: 212, column: 7, scope: !384)
!472 = !DILocation(line: 215, column: 27, scope: !384)
!473 = !DILocation(line: 217, column: 30, scope: !384)
!474 = !DILocation(line: 218, column: 31, scope: !384)
!475 = !DILocation(line: 218, column: 9, scope: !384)
!476 = !DILocation(line: 216, column: 7, scope: !384)
!477 = !DILocation(line: 219, column: 13, scope: !384)
!478 = !DILocation(line: 219, column: 29, scope: !384)
!479 = !DILocation(line: 219, column: 18, scope: !384)
!480 = !DILocation(line: 219, column: 7, scope: !384)
!481 = !DILocation(line: 220, column: 22, scope: !384)
!482 = !DILocation(line: 221, column: 21, scope: !384)
!483 = !DILocation(line: 190, column: 60, scope: !385)
!484 = !DILocation(line: 190, column: 37, scope: !385)
!485 = distinct !{!485, !424, !486, !160, !161}
!486 = !DILocation(line: 232, column: 3, scope: !382)
!487 = !DILocation(line: 166, column: 31, scope: !350)
!488 = !DILocation(line: 239, column: 17, scope: !350)
!489 = !DILocation(line: 241, column: 22, scope: !350)
!490 = !DILocation(line: 241, column: 17, scope: !350)
!491 = !DILocation(line: 242, column: 1, scope: !350)
!492 = !DILocation(line: 235, column: 19, scope: !404)
!493 = !DILocation(line: 0, scope: !404)
!494 = !DILocation(line: 236, column: 19, scope: !404)
!495 = !DILocation(line: 237, column: 20, scope: !404)
!496 = !DILocation(line: 237, column: 15, scope: !404)
!497 = !DILocation(line: 233, column: 59, scope: !405)
!498 = !DILocation(line: 233, column: 37, scope: !405)
!499 = distinct !{!499, !456, !500, !160, !161}
!500 = !DILocation(line: 238, column: 3, scope: !402)
!501 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update_multi", scope: !1, file: !1, line: 244, type: !502, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !165, !25, !3}
!504 = !{!505, !506, !507, !508, !510}
!505 = !DILocalVariable(name: "state", arg: 1, scope: !501, file: !1, line: 244, type: !165)
!506 = !DILocalVariable(name: "data", arg: 2, scope: !501, file: !1, line: 244, type: !25)
!507 = !DILocalVariable(name: "n1", arg: 3, scope: !501, file: !1, line: 244, type: !3)
!508 = !DILocalVariable(name: "i", scope: !509, file: !1, line: 246, type: !3)
!509 = distinct !DILexicalBlock(scope: !501, file: !1, line: 246, column: 3)
!510 = !DILocalVariable(name: "b", scope: !511, file: !1, line: 248, type: !25)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 247, column: 3)
!512 = distinct !DILexicalBlock(scope: !509, file: !1, line: 246, column: 3)
!513 = !DILocation(line: 0, scope: !501)
!514 = !DILocation(line: 0, scope: !509)
!515 = !DILocation(line: 246, column: 37, scope: !512)
!516 = !DILocation(line: 246, column: 3, scope: !509)
!517 = !DILocation(line: 251, column: 1, scope: !501)
!518 = !DILocation(line: 248, column: 27, scope: !511)
!519 = !DILocation(line: 248, column: 23, scope: !511)
!520 = !DILocation(line: 0, scope: !511)
!521 = !DILocation(line: 249, column: 5, scope: !511)
!522 = !DILocation(line: 246, column: 49, scope: !512)
!523 = distinct !{!523, !516, !524, !160, !161}
!524 = !DILocation(line: 250, column: 3, scope: !509)
!525 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_update_last", scope: !1, file: !1, line: 253, type: !502, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !526)
!526 = !{!527, !528, !529, !530, !534, !535, !536, !537, !538, !539, !540, !541}
!527 = !DILocalVariable(name: "state", arg: 1, scope: !525, file: !1, line: 253, type: !165)
!528 = !DILocalVariable(name: "data", arg: 2, scope: !525, file: !1, line: 253, type: !25)
!529 = !DILocalVariable(name: "len", arg: 3, scope: !525, file: !1, line: 253, type: !3)
!530 = !DILocalVariable(name: "blocks", scope: !525, file: !1, line: 255, type: !531)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1024, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 128)
!534 = !DILocalVariable(name: "nb", scope: !525, file: !1, line: 256, type: !3)
!535 = !DILocalVariable(name: "final_blocks", scope: !525, file: !1, line: 261, type: !25)
!536 = !DILocalVariable(name: "n1", scope: !525, file: !1, line: 267, type: !3)
!537 = !DILocalVariable(name: "padding", scope: !525, file: !1, line: 268, type: !25)
!538 = !DILocalVariable(name: "pad0len", scope: !525, file: !1, line: 270, type: !3)
!539 = !DILocalVariable(name: "buf1", scope: !525, file: !1, line: 271, type: !25)
!540 = !DILocalVariable(name: "buf2", scope: !525, file: !1, line: 272, type: !25)
!541 = !DILocalVariable(name: "encodedlen", scope: !525, file: !1, line: 274, type: !11)
!542 = !DILocation(line: 0, scope: !525)
!543 = !DILocation(line: 255, column: 3, scope: !525)
!544 = !DILocation(line: 255, column: 11, scope: !525)
!545 = !DILocation(line: 257, column: 11, scope: !546)
!546 = distinct !DILexicalBlock(scope: !525, file: !1, line: 257, column: 7)
!547 = !DILocation(line: 262, column: 7, scope: !525)
!548 = !DILocation(line: 266, column: 3, scope: !525)
!549 = !DILocation(line: 267, column: 17, scope: !525)
!550 = !DILocation(line: 268, column: 35, scope: !525)
!551 = !DILocation(line: 270, column: 28, scope: !525)
!552 = !DILocation(line: 270, column: 83, scope: !525)
!553 = !DILocation(line: 272, column: 27, scope: !525)
!554 = !DILocation(line: 272, column: 42, scope: !525)
!555 = !DILocation(line: 274, column: 17, scope: !525)
!556 = !DILocation(line: 274, column: 30, scope: !525)
!557 = !DILocation(line: 274, column: 58, scope: !525)
!558 = !DILocation(line: 274, column: 56, scope: !525)
!559 = !DILocation(line: 274, column: 73, scope: !525)
!560 = !DILocation(line: 275, column: 12, scope: !525)
!561 = !DILocation(line: 276, column: 3, scope: !525)
!562 = !DILocation(line: 277, column: 3, scope: !525)
!563 = !DILocation(line: 278, column: 1, scope: !525)
!564 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_finish", scope: !1, file: !1, line: 280, type: !351, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !565)
!565 = !{!566, !567, !568}
!566 = !DILocalVariable(name: "state", arg: 1, scope: !564, file: !1, line: 280, type: !165)
!567 = !DILocalVariable(name: "hash1", arg: 2, scope: !564, file: !1, line: 280, type: !25)
!568 = !DILocalVariable(name: "hash_w", scope: !564, file: !1, line: 282, type: !165)
!569 = !DILocation(line: 0, scope: !564)
!570 = !DILocation(line: 282, column: 28, scope: !564)
!571 = !DILocation(line: 283, column: 3, scope: !564)
!572 = !DILocation(line: 284, column: 1, scope: !564)
!573 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes", scope: !1, file: !1, line: 28, type: !502, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !574)
!574 = !{!575, !576, !577, !578, !580, !583}
!575 = !DILocalVariable(name: "output", arg: 1, scope: !573, file: !1, line: 28, type: !165)
!576 = !DILocalVariable(name: "input", arg: 2, scope: !573, file: !1, line: 28, type: !25)
!577 = !DILocalVariable(name: "len", arg: 3, scope: !573, file: !1, line: 28, type: !3)
!578 = !DILocalVariable(name: "i", scope: !579, file: !1, line: 30, type: !3)
!579 = distinct !DILexicalBlock(scope: !573, file: !1, line: 30, column: 3)
!580 = !DILocalVariable(name: "x0", scope: !581, file: !1, line: 32, type: !25)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 31, column: 3)
!582 = distinct !DILexicalBlock(scope: !579, file: !1, line: 30, column: 3)
!583 = !DILocalVariable(name: "inputi", scope: !581, file: !1, line: 33, type: !3)
!584 = !DILocation(line: 0, scope: !573)
!585 = !DILocation(line: 0, scope: !579)
!586 = !DILocation(line: 30, column: 3, scope: !579)
!587 = !DILocation(line: 36, column: 1, scope: !573)
!588 = !DILocation(line: 32, column: 40, scope: !581)
!589 = !DILocation(line: 32, column: 25, scope: !581)
!590 = !DILocation(line: 0, scope: !581)
!591 = !DILocation(line: 33, column: 23, scope: !581)
!592 = !DILocation(line: 34, column: 5, scope: !581)
!593 = !DILocation(line: 34, column: 15, scope: !581)
!594 = !DILocation(line: 30, column: 50, scope: !582)
!595 = !DILocation(line: 30, column: 37, scope: !582)
!596 = distinct !{!596, !586, !597, !160, !161}
!597 = !DILocation(line: 35, column: 3, scope: !579)
!598 = distinct !DISubprogram(name: "__bswap_32", scope: !599, file: !599, line: 49, type: !600, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !602)
!599 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!600 = !DISubroutineType(types: !601)
!601 = !{!5, !5}
!602 = !{!603}
!603 = !DILocalVariable(name: "__bsx", arg: 1, scope: !598, file: !599, line: 49, type: !5)
!604 = !DILocation(line: 0, scope: !598)
!605 = !DILocation(line: 54, column: 10, scope: !598)
!606 = !DILocation(line: 54, column: 3, scope: !598)
!607 = distinct !DISubprogram(name: "load32", scope: !608, file: !608, line: 341, type: !609, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !611)
!608 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!609 = !DISubroutineType(types: !610)
!610 = !{!3, !25}
!611 = !{!612, !613}
!612 = !DILocalVariable(name: "b", arg: 1, scope: !607, file: !608, line: 341, type: !25)
!613 = !DILocalVariable(name: "x", scope: !607, file: !608, line: 342, type: !3)
!614 = !DILocation(line: 0, scope: !607)
!615 = !DILocation(line: 343, column: 3, scope: !607)
!616 = !DILocation(line: 344, column: 3, scope: !607)
!617 = distinct !DISubprogram(name: "store64", scope: !608, file: !608, line: 357, type: !618, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !620)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !25, !11}
!620 = !{!621, !622}
!621 = !DILocalVariable(name: "b", arg: 1, scope: !617, file: !608, line: 357, type: !25)
!622 = !DILocalVariable(name: "i", arg: 2, scope: !617, file: !608, line: 357, type: !11)
!623 = !DILocation(line: 0, scope: !617)
!624 = !DILocation(line: 357, column: 54, scope: !617)
!625 = !DILocation(line: 357, column: 72, scope: !617)
!626 = distinct !DISubprogram(name: "__bswap_64", scope: !599, file: !599, line: 70, type: !627, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!12, !12}
!629 = !{!630}
!630 = !DILocalVariable(name: "__bsx", arg: 1, scope: !626, file: !599, line: 70, type: !12)
!631 = !DILocation(line: 0, scope: !626)
!632 = !DILocation(line: 75, column: 10, scope: !626)
!633 = !DILocation(line: 75, column: 3, scope: !626)
!634 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes", scope: !1, file: !1, line: 39, type: !635, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !25, !165, !3}
!637 = !{!638, !639, !640, !641, !643, !646}
!638 = !DILocalVariable(name: "output", arg: 1, scope: !634, file: !1, line: 39, type: !25)
!639 = !DILocalVariable(name: "input", arg: 2, scope: !634, file: !1, line: 39, type: !165)
!640 = !DILocalVariable(name: "len", arg: 3, scope: !634, file: !1, line: 39, type: !3)
!641 = !DILocalVariable(name: "i", scope: !642, file: !1, line: 41, type: !3)
!642 = distinct !DILexicalBlock(scope: !634, file: !1, line: 41, column: 3)
!643 = !DILocalVariable(name: "hd1", scope: !644, file: !1, line: 43, type: !3)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 42, column: 3)
!645 = distinct !DILexicalBlock(scope: !642, file: !1, line: 41, column: 3)
!646 = !DILocalVariable(name: "x0", scope: !644, file: !1, line: 44, type: !25)
!647 = !DILocation(line: 0, scope: !634)
!648 = !DILocation(line: 0, scope: !642)
!649 = !DILocation(line: 41, column: 3, scope: !642)
!650 = !DILocation(line: 47, column: 1, scope: !634)
!651 = !DILocation(line: 43, column: 20, scope: !644)
!652 = !DILocation(line: 0, scope: !644)
!653 = !DILocation(line: 44, column: 41, scope: !644)
!654 = !DILocation(line: 44, column: 26, scope: !644)
!655 = !DILocation(line: 45, column: 5, scope: !644)
!656 = !DILocation(line: 41, column: 50, scope: !645)
!657 = !DILocation(line: 41, column: 37, scope: !645)
!658 = distinct !{!658, !649, !659, !160, !161}
!659 = !DILocation(line: 46, column: 3, scope: !642)
!660 = distinct !DISubprogram(name: "store32", scope: !608, file: !608, line: 355, type: !661, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !25, !3}
!663 = !{!664, !665}
!664 = !DILocalVariable(name: "b", arg: 1, scope: !660, file: !608, line: 355, type: !25)
!665 = !DILocalVariable(name: "i", arg: 2, scope: !660, file: !608, line: 355, type: !3)
!666 = !DILocation(line: 0, scope: !660)
!667 = !DILocation(line: 355, column: 54, scope: !660)
!668 = !DILocation(line: 355, column: 72, scope: !660)
!669 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_256_hash", scope: !1, file: !1, line: 286, type: !135, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678}
!671 = !DILocalVariable(name: "hash1", arg: 1, scope: !669, file: !1, line: 286, type: !25)
!672 = !DILocalVariable(name: "input", arg: 2, scope: !669, file: !1, line: 286, type: !25)
!673 = !DILocalVariable(name: "len", arg: 3, scope: !669, file: !1, line: 286, type: !3)
!674 = !DILocalVariable(name: "state", scope: !669, file: !1, line: 288, type: !50)
!675 = !DILocalVariable(name: "n1", scope: !669, file: !1, line: 289, type: !3)
!676 = !DILocalVariable(name: "r", scope: !669, file: !1, line: 290, type: !3)
!677 = !DILocalVariable(name: "input_blocks", scope: !669, file: !1, line: 291, type: !25)
!678 = !DILocalVariable(name: "input_last", scope: !669, file: !1, line: 292, type: !25)
!679 = !DILocation(line: 0, scope: !669)
!680 = !DILocation(line: 288, column: 3, scope: !669)
!681 = !DILocation(line: 288, column: 12, scope: !669)
!682 = !DILocation(line: 289, column: 21, scope: !669)
!683 = !DILocation(line: 290, column: 20, scope: !669)
!684 = !DILocation(line: 292, column: 36, scope: !669)
!685 = !DILocation(line: 292, column: 31, scope: !669)
!686 = !DILocation(line: 293, column: 27, scope: !669)
!687 = !DILocation(line: 293, column: 3, scope: !669)
!688 = !DILocation(line: 294, column: 3, scope: !669)
!689 = !DILocation(line: 295, column: 3, scope: !669)
!690 = !DILocation(line: 296, column: 3, scope: !669)
!691 = !DILocation(line: 297, column: 1, scope: !669)
