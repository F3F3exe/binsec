; ModuleID = 'hacl-c/hacl-c/Hacl_Curve25519.c'
source_filename = "hacl-c/hacl-c/Hacl_Curve25519.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_EC_crypto_scalarmult(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !26 {
  %4 = alloca [10 x i64], align 8
  %5 = alloca [32 x i8], align 1
  %6 = alloca [15 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !31, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i8* %1, metadata !32, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i8* %2, metadata !33, metadata !DIExpression()), !dbg !58
  %7 = bitcast [10 x i64]* %4 to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #13, !dbg !59
  call void @llvm.dbg.declare(metadata [10 x i64]* %4, metadata !34, metadata !DIExpression()), !dbg !60
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %7, i8 0, i32 80, i1 false), !dbg !60
  %8 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i32 0, i32 0, !dbg !61
  call void @llvm.dbg.value(metadata i64* %8, metadata !38, metadata !DIExpression()), !dbg !58
  %9 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i32 0, i32 5, !dbg !62
  call void @llvm.dbg.value(metadata i64* %9, metadata !40, metadata !DIExpression()), !dbg !58
  call fastcc void @Hacl_EC_Format_fexpand(i64* noundef nonnull %8, i8* noundef %2), !dbg !63
  store i64 1, i64* %9, align 8, !dbg !64, !tbaa !65
  call void @llvm.dbg.value(metadata i64* %8, metadata !41, metadata !DIExpression()), !dbg !58
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #13, !dbg !69
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !42, metadata !DIExpression()), !dbg !70
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %10, i8* noundef nonnull align 1 dereferenceable(32) %1, i32 32, i1 false), !dbg !71
  %11 = load i8, i8* %10, align 1, !dbg !72, !tbaa !73
  call void @llvm.dbg.value(metadata i8 %11, metadata !46, metadata !DIExpression()), !dbg !58
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 31, !dbg !74
  %13 = load i8, i8* %12, align 1, !dbg !74, !tbaa !73
  call void @llvm.dbg.value(metadata i8 %13, metadata !47, metadata !DIExpression()), !dbg !58
  %14 = and i8 %11, -8, !dbg !75
  call void @llvm.dbg.value(metadata i8 %14, metadata !48, metadata !DIExpression()), !dbg !58
  %15 = and i8 %13, 63, !dbg !76
  call void @llvm.dbg.value(metadata i8 %13, metadata !49, metadata !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value)), !dbg !58
  %16 = or i8 %15, 64, !dbg !77
  call void @llvm.dbg.value(metadata i8 %16, metadata !50, metadata !DIExpression()), !dbg !58
  store i8 %14, i8* %10, align 1, !dbg !78, !tbaa !73
  store i8 %16, i8* %12, align 1, !dbg !79, !tbaa !73
  call void @llvm.dbg.value(metadata i8* %10, metadata !51, metadata !DIExpression()), !dbg !58
  %17 = bitcast [15 x i64]* %6 to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %17) #13, !dbg !80
  call void @llvm.dbg.declare(metadata [15 x i64]* %6, metadata !52, metadata !DIExpression()), !dbg !81
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(120) %17, i8 0, i32 120, i1 false), !dbg !81
  %18 = getelementptr inbounds [15 x i64], [15 x i64]* %6, i32 0, i32 0, !dbg !82
  call void @llvm.dbg.value(metadata i64* %18, metadata !56, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i64* %18, metadata !57, metadata !DIExpression()), !dbg !58
  store i64 1, i64* %18, align 8, !dbg !83, !tbaa !65
  call fastcc void @Hacl_EC_Ladder_cmult(i64* noundef nonnull %18, i8* noundef nonnull %10, i64* noundef nonnull %8), !dbg !84
  call fastcc void @Hacl_EC_Format_scalar_of_point(i8* noundef %0, i64* noundef nonnull %18), !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %17) #13, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #13, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #13, !dbg !86
  ret void, !dbg !86
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fexpand(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #4 !dbg !87 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !91, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i8* %1, metadata !92, metadata !DIExpression()), !dbg !107
  %3 = call fastcc i64 @load64(i8* noundef %1), !dbg !108
  call void @llvm.dbg.value(metadata i64 %3, metadata !93, metadata !DIExpression()), !dbg !107
  %4 = getelementptr inbounds i8, i8* %1, i32 6, !dbg !109
  call void @llvm.dbg.value(metadata i8* %4, metadata !94, metadata !DIExpression()), !dbg !107
  %5 = call fastcc i64 @load64(i8* noundef nonnull %4), !dbg !110
  call void @llvm.dbg.value(metadata i64 %5, metadata !95, metadata !DIExpression()), !dbg !107
  %6 = getelementptr inbounds i8, i8* %1, i32 12, !dbg !111
  call void @llvm.dbg.value(metadata i8* %6, metadata !96, metadata !DIExpression()), !dbg !107
  %7 = call fastcc i64 @load64(i8* noundef nonnull %6), !dbg !112
  call void @llvm.dbg.value(metadata i64 %7, metadata !97, metadata !DIExpression()), !dbg !107
  %8 = getelementptr inbounds i8, i8* %1, i32 19, !dbg !113
  call void @llvm.dbg.value(metadata i8* %8, metadata !98, metadata !DIExpression()), !dbg !107
  %9 = call fastcc i64 @load64(i8* noundef nonnull %8), !dbg !114
  call void @llvm.dbg.value(metadata i64 %9, metadata !99, metadata !DIExpression()), !dbg !107
  %10 = getelementptr inbounds i8, i8* %1, i32 24, !dbg !115
  call void @llvm.dbg.value(metadata i8* %10, metadata !100, metadata !DIExpression()), !dbg !107
  %11 = call fastcc i64 @load64(i8* noundef nonnull %10), !dbg !116
  call void @llvm.dbg.value(metadata i64 %11, metadata !101, metadata !DIExpression()), !dbg !107
  %12 = and i64 %3, 2251799813685247, !dbg !117
  call void @llvm.dbg.value(metadata i64 %12, metadata !102, metadata !DIExpression()), !dbg !107
  %13 = lshr i64 %5, 3, !dbg !118
  %14 = and i64 %13, 2251799813685247, !dbg !119
  call void @llvm.dbg.value(metadata i64 %14, metadata !103, metadata !DIExpression()), !dbg !107
  %15 = lshr i64 %7, 6, !dbg !120
  %16 = and i64 %15, 2251799813685247, !dbg !121
  call void @llvm.dbg.value(metadata i64 %16, metadata !104, metadata !DIExpression()), !dbg !107
  %17 = lshr i64 %9, 1, !dbg !122
  %18 = and i64 %17, 2251799813685247, !dbg !123
  call void @llvm.dbg.value(metadata i64 %18, metadata !105, metadata !DIExpression()), !dbg !107
  %19 = lshr i64 %11, 12, !dbg !124
  %20 = and i64 %19, 2251799813685247, !dbg !125
  call void @llvm.dbg.value(metadata i64 %20, metadata !106, metadata !DIExpression()), !dbg !107
  store i64 %12, i64* %0, align 4, !dbg !126, !tbaa !65
  %21 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !127
  store i64 %14, i64* %21, align 4, !dbg !128, !tbaa !65
  %22 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !129
  store i64 %16, i64* %22, align 4, !dbg !130, !tbaa !65
  %23 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !131
  store i64 %18, i64* %23, align 4, !dbg !132, !tbaa !65
  %24 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !133
  store i64 %20, i64* %24, align 4, !dbg !134, !tbaa !65
  ret void, !dbg !135
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_cmult(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !136 {
  %4 = alloca [40 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !140, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %1, metadata !141, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i64* %2, metadata !142, metadata !DIExpression()), !dbg !151
  %5 = bitcast [40 x i64]* %4 to i8*, !dbg !152
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %5) #13, !dbg !152
  call void @llvm.dbg.declare(metadata [40 x i64]* %4, metadata !143, metadata !DIExpression()), !dbg !153
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(320) %5, i8 0, i32 320, i1 false), !dbg !153
  %6 = getelementptr inbounds [40 x i64], [40 x i64]* %4, i32 0, i32 0, !dbg !154
  call void @llvm.dbg.value(metadata i64* %6, metadata !147, metadata !DIExpression()), !dbg !151
  %7 = getelementptr inbounds [40 x i64], [40 x i64]* %4, i32 0, i32 10, !dbg !155
  call void @llvm.dbg.value(metadata i64* %7, metadata !148, metadata !DIExpression()), !dbg !151
  %8 = getelementptr inbounds [40 x i64], [40 x i64]* %4, i32 0, i32 20, !dbg !156
  call void @llvm.dbg.value(metadata i64* %8, metadata !149, metadata !DIExpression()), !dbg !151
  %9 = getelementptr inbounds [40 x i64], [40 x i64]* %4, i32 0, i32 30, !dbg !157
  call void @llvm.dbg.value(metadata i64* %9, metadata !150, metadata !DIExpression()), !dbg !151
  call fastcc void @Hacl_EC_Point_copy(i64* noundef nonnull %7, i64* noundef %2), !dbg !158
  store i64 1, i64* %6, align 8, !dbg !159, !tbaa !65
  call fastcc void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(i8* noundef %1, i64* noundef nonnull %6, i64* noundef nonnull %7, i64* noundef nonnull %8, i64* noundef nonnull %9, i64* noundef %2, i32 noundef 32), !dbg !160
  call fastcc void @Hacl_EC_Point_copy(i64* noundef %0, i64* noundef nonnull %6), !dbg !161
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %5) #13, !dbg !162
  ret void, !dbg !162
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_scalar_of_point(i8* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !163 {
  %3 = alloca [10 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !167, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64* %1, metadata !168, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64* %1, metadata !169, metadata !DIExpression()), !dbg !174
  %4 = getelementptr inbounds i64, i64* %1, i32 5, !dbg !175
  call void @llvm.dbg.value(metadata i64* %4, metadata !170, metadata !DIExpression()), !dbg !174
  %5 = bitcast [10 x i64]* %3 to i8*, !dbg !176
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #13, !dbg !176
  call void @llvm.dbg.declare(metadata [10 x i64]* %3, metadata !171, metadata !DIExpression()), !dbg !177
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %5, i8 0, i32 80, i1 false), !dbg !177
  %6 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i32 0, i32 0, !dbg !178
  call void @llvm.dbg.value(metadata i64* %6, metadata !172, metadata !DIExpression()), !dbg !174
  %7 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i32 0, i32 5, !dbg !179
  call void @llvm.dbg.value(metadata i64* %7, metadata !173, metadata !DIExpression()), !dbg !174
  call fastcc void @Hacl_Bignum_crecip(i64* noundef nonnull %6, i64* noundef nonnull %4), !dbg !180
  call fastcc void @Hacl_Bignum_fmul(i64* noundef nonnull %7, i64* noundef %1, i64* noundef nonnull %6), !dbg !181
  call fastcc void @Hacl_EC_Format_fcontract(i8* noundef %0, i64* noundef nonnull %7), !dbg !182
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #13, !dbg !183
  ret void, !dbg !183
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_crypto_scalarmult(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !184 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !186, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i8* %1, metadata !187, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i8* %2, metadata !188, metadata !DIExpression()), !dbg !189
  call void @Hacl_EC_crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef %2), !dbg !190
  ret void, !dbg !191
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @load64(i8* nocapture noundef readonly %0) unnamed_addr #6 !dbg !192 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !197, metadata !DIExpression()), !dbg !199
  %2 = bitcast i8* %0 to i64*, !dbg !200
  %3 = load i64, i64* %2, align 1, !dbg !200
  call void @llvm.dbg.value(metadata i64 %3, metadata !198, metadata !DIExpression()), !dbg !199
  ret i64 %3, !dbg !201
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Point_copy(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #7 !dbg !202 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i64* %1, metadata !207, metadata !DIExpression()), !dbg !208
  %3 = bitcast i64* %0 to i8*, !dbg !209
  %4 = bitcast i64* %1 to i8*, !dbg !209
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %3, i8* noundef nonnull align 4 dereferenceable(40) %4, i32 40, i1 false), !dbg !209
  %5 = getelementptr inbounds i64, i64* %0, i32 5, !dbg !210
  %6 = bitcast i64* %5 to i8*, !dbg !211
  %7 = getelementptr inbounds i64, i64* %1, i32 5, !dbg !212
  %8 = bitcast i64* %7 to i8*, !dbg !211
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %6, i8* noundef nonnull align 4 dereferenceable(40) %8, i32 40, i1 false), !dbg !211
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(i8* nocapture noundef readonly %0, i64* nocapture noundef %1, i64* nocapture noundef %2, i64* nocapture noundef %3, i64* nocapture noundef %4, i64* nocapture noundef readonly %5, i32 noundef %6) unnamed_addr #0 !dbg !214 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !218, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64* %1, metadata !219, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64* %2, metadata !220, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64* %3, metadata !221, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64* %4, metadata !222, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64* %5, metadata !223, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 %6, metadata !224, metadata !DIExpression()), !dbg !229
  %8 = icmp eq i32 %6, 0, !dbg !230
  br i1 %8, label %13, label %9, !dbg !231

9:                                                ; preds = %7
  %10 = add i32 %6, -1, !dbg !232
  call void @llvm.dbg.value(metadata i32 %10, metadata !225, metadata !DIExpression()), !dbg !233
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !234
  %12 = load i8, i8* %11, align 1, !dbg !234, !tbaa !73
  call void @llvm.dbg.value(metadata i8 %12, metadata !228, metadata !DIExpression()), !dbg !233
  call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(i64* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4, i64* noundef %5, i8 noundef zeroext %12, i32 noundef 4), !dbg !235
  call fastcc void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(i8* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4, i64* noundef %5, i32 noundef %10), !dbg !236
  br label %13, !dbg !237

13:                                               ; preds = %9, %7
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(i64* nocapture noundef %0, i64* nocapture noundef %1, i64* nocapture noundef %2, i64* nocapture noundef %3, i64* nocapture noundef readonly %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #0 !dbg !239 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !243, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64* %1, metadata !244, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64* %2, metadata !245, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64* %3, metadata !246, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64* %4, metadata !247, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i8 %5, metadata !248, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 %6, metadata !249, metadata !DIExpression()), !dbg !254
  %8 = icmp eq i32 %6, 0, !dbg !255
  br i1 %8, label %12, label %9, !dbg !256

9:                                                ; preds = %7
  %10 = add i32 %6, -1, !dbg !257
  call void @llvm.dbg.value(metadata i32 %10, metadata !250, metadata !DIExpression()), !dbg !258
  call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_double_step(i64* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4, i8 noundef zeroext %5), !dbg !259
  %11 = shl i8 %5, 2, !dbg !260
  call void @llvm.dbg.value(metadata i8 %11, metadata !253, metadata !DIExpression()), !dbg !258
  call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(i64* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4, i8 noundef zeroext %11, i32 noundef %10), !dbg !261
  br label %12, !dbg !262

12:                                               ; preds = %9, %7
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_double_step(i64* nocapture noundef %0, i64* nocapture noundef %1, i64* nocapture noundef %2, i64* nocapture noundef %3, i64* nocapture noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #0 !dbg !264 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !268, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64* %1, metadata !269, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64* %2, metadata !270, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64* %3, metadata !271, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64* %4, metadata !272, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i8 %5, metadata !273, metadata !DIExpression()), !dbg !275
  call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(i64* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4, i8 noundef zeroext %5), !dbg !276
  %7 = shl i8 %5, 1, !dbg !277
  call void @llvm.dbg.value(metadata i8 %7, metadata !274, metadata !DIExpression()), !dbg !275
  call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(i64* noundef %2, i64* noundef %3, i64* noundef %0, i64* noundef %1, i64* noundef %4, i8 noundef zeroext %7), !dbg !278
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(i64* nocapture noundef %0, i64* nocapture noundef %1, i64* nocapture noundef %2, i64* nocapture noundef %3, i64* nocapture noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #0 !dbg !280 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !282, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64* %1, metadata !283, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64* %2, metadata !284, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64* %3, metadata !285, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64* %4, metadata !286, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i8 %5, metadata !287, metadata !DIExpression()), !dbg !290
  %7 = lshr i8 %5, 7, !dbg !291
  %8 = zext i8 %7 to i64
  call void @llvm.dbg.value(metadata i64 %8, metadata !288, metadata !DIExpression()), !dbg !290
  call fastcc void @Hacl_EC_Point_swap_conditional(i64* noundef %0, i64* noundef %1, i64 noundef %8), !dbg !292
  call fastcc void @Hacl_EC_AddAndDouble_fmonty(i64* noundef %2, i64* noundef %3, i64* noundef %0, i64* noundef %1, i64* noundef %4), !dbg !293
  call void @llvm.dbg.value(metadata i64 %8, metadata !289, metadata !DIExpression()), !dbg !290
  call fastcc void @Hacl_EC_Point_swap_conditional(i64* noundef %2, i64* noundef %3, i64 noundef %8), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_EC_Point_swap_conditional(i64* nocapture noundef %0, i64* nocapture noundef %1, i64 noundef %2) unnamed_addr #8 !dbg !296 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !300, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i64* %1, metadata !301, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i64 %2, metadata !302, metadata !DIExpression()), !dbg !304
  %4 = sub i64 0, %2, !dbg !305
  call void @llvm.dbg.value(metadata i64 %4, metadata !303, metadata !DIExpression()), !dbg !304
  call fastcc void @Hacl_EC_Point_swap_conditional_(i64* noundef %0, i64* noundef %1, i64 noundef %4, i32 noundef 5), !dbg !306
  %5 = getelementptr inbounds i64, i64* %0, i32 5, !dbg !307
  %6 = getelementptr inbounds i64, i64* %1, i32 5, !dbg !308
  call fastcc void @Hacl_EC_Point_swap_conditional_(i64* noundef nonnull %5, i64* noundef nonnull %6, i64 noundef %4, i32 noundef 5), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_AddAndDouble_fmonty(i64* nocapture noundef %0, i64* nocapture noundef %1, i64* nocapture noundef %2, i64* nocapture noundef %3, i64* nocapture noundef readonly %4) unnamed_addr #0 !dbg !311 {
  %6 = alloca [40 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !315, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %1, metadata !316, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %2, metadata !317, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %3, metadata !318, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %4, metadata !319, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %4, metadata !320, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %0, metadata !321, metadata !DIExpression()), !dbg !344
  %7 = getelementptr inbounds i64, i64* %0, i32 5, !dbg !345
  call void @llvm.dbg.value(metadata i64* %7, metadata !322, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %1, metadata !323, metadata !DIExpression()), !dbg !344
  %8 = getelementptr inbounds i64, i64* %1, i32 5, !dbg !346
  call void @llvm.dbg.value(metadata i64* %8, metadata !324, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %2, metadata !325, metadata !DIExpression()), !dbg !344
  %9 = getelementptr inbounds i64, i64* %2, i32 5, !dbg !347
  call void @llvm.dbg.value(metadata i64* %9, metadata !326, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %3, metadata !327, metadata !DIExpression()), !dbg !344
  %10 = getelementptr inbounds i64, i64* %3, i32 5, !dbg !348
  call void @llvm.dbg.value(metadata i64* %10, metadata !328, metadata !DIExpression()), !dbg !344
  %11 = bitcast [40 x i64]* %6 to i8*, !dbg !349
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %11) #13, !dbg !349
  call void @llvm.dbg.declare(metadata [40 x i64]* %6, metadata !329, metadata !DIExpression()), !dbg !350
  %12 = getelementptr inbounds [40 x i64], [40 x i64]* %6, i32 0, i32 0, !dbg !351
  call void @llvm.dbg.value(metadata i64* %12, metadata !330, metadata !DIExpression()), !dbg !344
  %13 = getelementptr inbounds [40 x i64], [40 x i64]* %6, i32 0, i32 5, !dbg !352
  call void @llvm.dbg.value(metadata i64* %13, metadata !331, metadata !DIExpression()), !dbg !344
  %14 = getelementptr inbounds [40 x i64], [40 x i64]* %6, i32 0, i32 25, !dbg !353
  call void @llvm.dbg.value(metadata i64* %14, metadata !332, metadata !DIExpression()), !dbg !344
  %15 = getelementptr inbounds [40 x i64], [40 x i64]* %6, i32 0, i32 30, !dbg !354
  call void @llvm.dbg.value(metadata i64* %15, metadata !333, metadata !DIExpression()), !dbg !344
  %16 = bitcast i64* %2 to i8*, !dbg !355
  %17 = getelementptr inbounds [40 x i64], [40 x i64]* %6, i32 0, i32 5, !dbg !355
  %18 = bitcast i64* %17 to i8*, !dbg !355
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(280) %18, i8 0, i32 280, i1 false), !dbg !355
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 4 dereferenceable(40) %16, i32 40, i1 false), !dbg !355
  call fastcc void @Hacl_Bignum_fsum(i64* noundef %2, i64* noundef nonnull %9), !dbg !356
  call fastcc void @Hacl_Bignum_fdifference(i64* noundef nonnull %9, i64* noundef nonnull %12), !dbg !357
  %19 = bitcast i64* %13 to i8*, !dbg !358
  %20 = bitcast i64* %3 to i8*, !dbg !358
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 4 dereferenceable(40) %20, i32 40, i1 false), !dbg !358
  call fastcc void @Hacl_Bignum_fsum(i64* noundef %3, i64* noundef nonnull %10), !dbg !359
  call fastcc void @Hacl_Bignum_fdifference(i64* noundef nonnull %10, i64* noundef nonnull %13), !dbg !360
  call fastcc void @Hacl_Bignum_fmul(i64* noundef nonnull %14, i64* noundef %3, i64* noundef nonnull %9), !dbg !361
  call fastcc void @Hacl_Bignum_fmul(i64* noundef nonnull %15, i64* noundef %2, i64* noundef nonnull %10), !dbg !362
  call void @llvm.dbg.value(metadata i64* %13, metadata !334, metadata !DIExpression()), !dbg !344
  %21 = getelementptr inbounds [40 x i64], [40 x i64]* %6, i32 0, i32 15, !dbg !363
  call void @llvm.dbg.value(metadata i64* %21, metadata !335, metadata !DIExpression()), !dbg !344
  %22 = getelementptr inbounds [40 x i64], [40 x i64]* %6, i32 0, i32 20, !dbg !364
  call void @llvm.dbg.value(metadata i64* %22, metadata !336, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %14, metadata !337, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %15, metadata !338, metadata !DIExpression()), !dbg !344
  %23 = getelementptr inbounds [40 x i64], [40 x i64]* %6, i32 0, i32 35, !dbg !365
  call void @llvm.dbg.value(metadata i64* %23, metadata !339, metadata !DIExpression()), !dbg !344
  %24 = bitcast i64* %14 to i8*, !dbg !366
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 8 dereferenceable(40) %24, i32 40, i1 false), !dbg !366
  call fastcc void @Hacl_Bignum_fsum(i64* noundef nonnull %14, i64* noundef nonnull %15), !dbg !367
  call fastcc void @Hacl_Bignum_fdifference(i64* noundef nonnull %15, i64* noundef nonnull %13), !dbg !368
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef %1, i64* noundef nonnull %14, i32 noundef 1), !dbg !369
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %23, i64* noundef nonnull %15, i32 noundef 1), !dbg !370
  call fastcc void @Hacl_Bignum_fmul(i64* noundef nonnull %8, i64* noundef nonnull %23, i64* noundef %4), !dbg !371
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %21, i64* noundef %2, i32 noundef 1), !dbg !372
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %22, i64* noundef nonnull %9, i32 noundef 1), !dbg !373
  %25 = getelementptr inbounds [40 x i64], [40 x i64]* %6, i32 0, i32 10, !dbg !374
  call void @llvm.dbg.value(metadata i64* %25, metadata !340, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %21, metadata !341, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %22, metadata !342, metadata !DIExpression()), !dbg !344
  call fastcc void @Hacl_Bignum_fmul(i64* noundef %0, i64* noundef nonnull %21, i64* noundef nonnull %22), !dbg !375
  call fastcc void @Hacl_Bignum_fdifference(i64* noundef nonnull %22, i64* noundef nonnull %21), !dbg !376
  call void @llvm.dbg.value(metadata i64 121665, metadata !343, metadata !DIExpression()), !dbg !344
  call fastcc void @Hacl_Bignum_fscalar(i64* noundef nonnull %25, i64* noundef nonnull %22), !dbg !377
  call fastcc void @Hacl_Bignum_fsum(i64* noundef nonnull %25, i64* noundef nonnull %21), !dbg !378
  call fastcc void @Hacl_Bignum_fmul(i64* noundef nonnull %7, i64* noundef nonnull %25, i64* noundef nonnull %22), !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %11) #13, !dbg !380
  ret void, !dbg !380
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_EC_Point_swap_conditional_(i64* nocapture noundef %0, i64* nocapture noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #8 !dbg !381 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !385, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i64* %1, metadata !386, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i64 %2, metadata !387, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i32 %3, metadata !388, metadata !DIExpression()), !dbg !392
  %5 = icmp eq i32 %3, 0, !dbg !393
  br i1 %5, label %8, label %6, !dbg !394

6:                                                ; preds = %4
  call fastcc void @Hacl_EC_Point_swap_conditional_step(i64* noundef %0, i64* noundef %1, i64 noundef %2, i32 noundef %3), !dbg !395
  %7 = add i32 %3, -1, !dbg !396
  call void @llvm.dbg.value(metadata i32 %7, metadata !389, metadata !DIExpression()), !dbg !397
  call fastcc void @Hacl_EC_Point_swap_conditional_(i64* noundef %0, i64* noundef %1, i64 noundef %2, i32 noundef %7), !dbg !398
  br label %8, !dbg !399

8:                                                ; preds = %6, %4
  ret void, !dbg !400
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Point_swap_conditional_step(i64* nocapture noundef %0, i64* nocapture noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #4 !dbg !401 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !403, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i64* %1, metadata !404, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i64 %2, metadata !405, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 %3, metadata !406, metadata !DIExpression()), !dbg !413
  %5 = add i32 %3, -1, !dbg !414
  call void @llvm.dbg.value(metadata i32 %5, metadata !407, metadata !DIExpression()), !dbg !413
  %6 = getelementptr inbounds i64, i64* %0, i32 %5, !dbg !415
  %7 = load i64, i64* %6, align 4, !dbg !415, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %7, metadata !408, metadata !DIExpression()), !dbg !413
  %8 = getelementptr inbounds i64, i64* %1, i32 %5, !dbg !416
  %9 = load i64, i64* %8, align 4, !dbg !416, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %9, metadata !409, metadata !DIExpression()), !dbg !413
  %10 = xor i64 %9, %7, !dbg !417
  %11 = and i64 %10, %2, !dbg !418
  call void @llvm.dbg.value(metadata i64 %11, metadata !410, metadata !DIExpression()), !dbg !413
  %12 = xor i64 %11, %7, !dbg !419
  call void @llvm.dbg.value(metadata i64 %12, metadata !411, metadata !DIExpression()), !dbg !413
  %13 = xor i64 %11, %9, !dbg !420
  call void @llvm.dbg.value(metadata i64 %13, metadata !412, metadata !DIExpression()), !dbg !413
  store i64 %12, i64* %6, align 4, !dbg !421, !tbaa !65
  store i64 %13, i64* %8, align 4, !dbg !422, !tbaa !65
  ret void, !dbg !423
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_fsum(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !424 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !426, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i64* %1, metadata !427, metadata !DIExpression()), !dbg !443
  %3 = load i64, i64* %0, align 4, !dbg !444, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %3, metadata !428, metadata !DIExpression()), !dbg !445
  %4 = load i64, i64* %1, align 4, !dbg !446, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %4, metadata !430, metadata !DIExpression()), !dbg !445
  %5 = add i64 %4, %3, !dbg !447
  store i64 %5, i64* %0, align 4, !dbg !448, !tbaa !65
  %6 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !449
  %7 = load i64, i64* %6, align 4, !dbg !449, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %7, metadata !431, metadata !DIExpression()), !dbg !450
  %8 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !451
  %9 = load i64, i64* %8, align 4, !dbg !451, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %9, metadata !433, metadata !DIExpression()), !dbg !450
  %10 = add i64 %9, %7, !dbg !452
  store i64 %10, i64* %6, align 4, !dbg !453, !tbaa !65
  %11 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !454
  %12 = load i64, i64* %11, align 4, !dbg !454, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %12, metadata !434, metadata !DIExpression()), !dbg !455
  %13 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !456
  %14 = load i64, i64* %13, align 4, !dbg !456, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %14, metadata !436, metadata !DIExpression()), !dbg !455
  %15 = add i64 %14, %12, !dbg !457
  store i64 %15, i64* %11, align 4, !dbg !458, !tbaa !65
  %16 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !459
  %17 = load i64, i64* %16, align 4, !dbg !459, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %17, metadata !437, metadata !DIExpression()), !dbg !460
  %18 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !461
  %19 = load i64, i64* %18, align 4, !dbg !461, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %19, metadata !439, metadata !DIExpression()), !dbg !460
  %20 = add i64 %19, %17, !dbg !462
  store i64 %20, i64* %16, align 4, !dbg !463, !tbaa !65
  %21 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !464
  %22 = load i64, i64* %21, align 4, !dbg !464, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %22, metadata !440, metadata !DIExpression()), !dbg !465
  %23 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !466
  %24 = load i64, i64* %23, align 4, !dbg !466, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %24, metadata !442, metadata !DIExpression()), !dbg !465
  %25 = add i64 %24, %22, !dbg !467
  store i64 %25, i64* %21, align 4, !dbg !468, !tbaa !65
  ret void, !dbg !469
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_fdifference(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !470 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !472, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i64* %1, metadata !473, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !498
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !498
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !498
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !498
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !498
  %3 = load i64, i64* %1, align 4, !dbg !499
  call void @llvm.dbg.value(metadata i64 %3, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !498
  %4 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !499
  %5 = load i64, i64* %4, align 4, !dbg !499
  call void @llvm.dbg.value(metadata i64 %5, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !498
  %6 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !499
  %7 = load i64, i64* %6, align 4, !dbg !499
  call void @llvm.dbg.value(metadata i64 %7, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !498
  %8 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !499
  %9 = load i64, i64* %8, align 4, !dbg !499
  call void @llvm.dbg.value(metadata i64 %9, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !498
  %10 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !499
  %11 = load i64, i64* %10, align 4, !dbg !499
  call void @llvm.dbg.value(metadata i64 %11, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !498
  call void @llvm.dbg.value(metadata i64 %3, metadata !478, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i64 %5, metadata !479, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i64 %7, metadata !480, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i64 %9, metadata !481, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i64 %11, metadata !482, metadata !DIExpression()), !dbg !498
  %12 = add i64 %3, 18014398509481832, !dbg !500
  call void @llvm.dbg.value(metadata i64 %12, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !498
  %13 = add i64 %5, 18014398509481976, !dbg !501
  call void @llvm.dbg.value(metadata i64 %13, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !498
  %14 = add i64 %7, 18014398509481976, !dbg !502
  call void @llvm.dbg.value(metadata i64 %14, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !498
  %15 = add i64 %9, 18014398509481976, !dbg !503
  call void @llvm.dbg.value(metadata i64 %15, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !498
  %16 = add i64 %11, 18014398509481976, !dbg !504
  call void @llvm.dbg.value(metadata i64 %16, metadata !474, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !498
  %17 = load i64, i64* %0, align 4, !dbg !505, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %17, metadata !483, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i64 %12, metadata !485, metadata !DIExpression()), !dbg !506
  %18 = sub i64 %12, %17, !dbg !507
  store i64 %18, i64* %0, align 4, !dbg !508, !tbaa !65
  %19 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !509
  %20 = load i64, i64* %19, align 4, !dbg !509, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %20, metadata !486, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i64 %13, metadata !488, metadata !DIExpression()), !dbg !510
  %21 = sub i64 %13, %20, !dbg !511
  store i64 %21, i64* %19, align 4, !dbg !512, !tbaa !65
  %22 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !513
  %23 = load i64, i64* %22, align 4, !dbg !513, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %23, metadata !489, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i64 %14, metadata !491, metadata !DIExpression()), !dbg !514
  %24 = sub i64 %14, %23, !dbg !515
  store i64 %24, i64* %22, align 4, !dbg !516, !tbaa !65
  %25 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !517
  %26 = load i64, i64* %25, align 4, !dbg !517, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %26, metadata !492, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i64 %15, metadata !494, metadata !DIExpression()), !dbg !518
  %27 = sub i64 %15, %26, !dbg !519
  store i64 %27, i64* %25, align 4, !dbg !520, !tbaa !65
  %28 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !521
  %29 = load i64, i64* %28, align 4, !dbg !521, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %29, metadata !495, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i64 %16, metadata !497, metadata !DIExpression()), !dbg !522
  %30 = sub i64 %16, %29, !dbg !523
  store i64 %30, i64* %28, align 4, !dbg !524, !tbaa !65
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_fmul(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !526 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !530, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i64* %1, metadata !531, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i64* %2, metadata !532, metadata !DIExpression()), !dbg !533
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef %0, i64* noundef %1, i64* noundef %2), !dbg !534
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !dbg !536 {
  %4 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata i64* %0, metadata !540, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i64* %1, metadata !541, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %2, metadata !542, metadata !DIExpression()), !dbg !554
  %6 = bitcast [5 x %struct.FStar_UInt128_uint128]* %4 to i8*, !dbg !555
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %6) #13, !dbg !555
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %4, metadata !543, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i32 0, metadata !552, metadata !DIExpression()), !dbg !557
  %7 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !552, metadata !DIExpression()), !dbg !557
  br label %12, !dbg !558

8:                                                ; preds = %12
  %9 = bitcast i64* %0 to i8*, !dbg !559
  %10 = bitcast i64* %1 to i8*, !dbg !559
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %9, i8* noundef nonnull align 4 dereferenceable(40) %10, i32 40, i1 false), !dbg !559
  %11 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %4, i32 0, i32 0, !dbg !560
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_(i64* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %11, i32 noundef %2), !dbg !561
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %6) #13, !dbg !562
  ret void, !dbg !562

12:                                               ; preds = %3, %12
  %13 = phi i32 [ 0, %3 ], [ %16, %12 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !552, metadata !DIExpression()), !dbg !557
  %14 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %4, i32 0, i32 %13, !dbg !563
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #13, !dbg !565
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0) #13, !dbg !565
  %15 = bitcast %struct.FStar_UInt128_uint128* %14 to i8*, !dbg !565
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %15, i8* noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false), !dbg !565, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #13, !dbg !565
  %16 = add nuw nsw i32 %13, 1, !dbg !567
  call void @llvm.dbg.value(metadata i32 %16, metadata !552, metadata !DIExpression()), !dbg !557
  %17 = icmp eq i32 %16, 5, !dbg !568
  br i1 %17, label %8, label %12, !dbg !558, !llvm.loop !569
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_fscalar(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !573 {
  %3 = alloca [5 x %struct.FStar_UInt128_uint128], align 8
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !575, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64* %1, metadata !576, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 121665, metadata !577, metadata !DIExpression()), !dbg !595
  %14 = bitcast [5 x %struct.FStar_UInt128_uint128]* %3 to i8*, !dbg !596
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %14) #13, !dbg !596
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %3, metadata !578, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i32 0, metadata !579, metadata !DIExpression()), !dbg !598
  %15 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !579, metadata !DIExpression()), !dbg !598
  br label %63, !dbg !599

16:                                               ; preds = %63
  %17 = load i64, i64* %1, align 4, !dbg !600, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %17, metadata !581, metadata !DIExpression()), !dbg !601
  %18 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 0, !dbg !602
  %19 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 0
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %17, i64 noundef 121665) #13, !dbg !603
  %20 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !604
  %21 = load i64, i64* %20, align 4, !dbg !604, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %21, metadata !583, metadata !DIExpression()), !dbg !605
  %22 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 1, !dbg !606
  %23 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !607
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #13, !dbg !607
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %21, i64 noundef 121665) #13, !dbg !607
  %24 = bitcast %struct.FStar_UInt128_uint128* %22 to i8*, !dbg !607
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %24, i8* noundef nonnull align 4 dereferenceable(16) %23, i32 16, i1 false), !dbg !607, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %23) #13, !dbg !607
  %25 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !608
  %26 = load i64, i64* %25, align 4, !dbg !608, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %26, metadata !585, metadata !DIExpression()), !dbg !609
  %27 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 2, !dbg !610
  %28 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !611
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #13, !dbg !611
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %26, i64 noundef 121665) #13, !dbg !611
  %29 = bitcast %struct.FStar_UInt128_uint128* %27 to i8*, !dbg !611
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %29, i8* noundef nonnull align 4 dereferenceable(16) %28, i32 16, i1 false), !dbg !611, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #13, !dbg !611
  %30 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !612
  %31 = load i64, i64* %30, align 4, !dbg !612, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %31, metadata !587, metadata !DIExpression()), !dbg !613
  %32 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 3, !dbg !614
  %33 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !615
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #13, !dbg !615
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %31, i64 noundef 121665) #13, !dbg !615
  %34 = bitcast %struct.FStar_UInt128_uint128* %32 to i8*, !dbg !615
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %34, i8* noundef nonnull align 4 dereferenceable(16) %33, i32 16, i1 false), !dbg !615, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #13, !dbg !615
  %35 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !616
  %36 = load i64, i64* %35, align 4, !dbg !616, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %36, metadata !589, metadata !DIExpression()), !dbg !617
  %37 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 4, !dbg !618
  %38 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !619
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #13, !dbg !619
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %36, i64 noundef 121665) #13, !dbg !619
  %39 = bitcast %struct.FStar_UInt128_uint128* %37 to i8*, !dbg !619
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %39, i8* noundef nonnull align 4 dereferenceable(16) %38, i32 16, i1 false), !dbg !619, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #13, !dbg !619
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* noundef nonnull %18), !dbg !620
  %40 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 4, i32 0, !dbg !621
  %41 = load i64, i64* %40, align 8, !dbg !621, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %41, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !595
  %42 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 4, i32 1, !dbg !621
  %43 = load i64, i64* %42, align 8, !dbg !621, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %43, metadata !591, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !595
  %44 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 0, i32 0, !dbg !623
  %45 = load i64, i64* %44, align 8, !dbg !623, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %45, metadata !592, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !595
  %46 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 0, i32 1, !dbg !623
  %47 = load i64, i64* %46, align 8, !dbg !623, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %47, metadata !592, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !595
  %48 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !624
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48) #13, !dbg !624
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %9, metadata !593, metadata !DIExpression()), !dbg !625
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 2251799813685247) #13, !dbg !626
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !627
  %50 = load i64, i64* %49, align 8, !dbg !627, !tbaa !628
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !627
  %52 = load i64, i64* %51, align 8, !dbg !627, !tbaa !630
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %41, i64 %43, i64 %50, i64 %52) #13, !dbg !627
  %53 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !631
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #13, !dbg !631
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %11, metadata !594, metadata !DIExpression()), !dbg !632
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %41, i64 %43, i32 noundef 51) #13, !dbg !633
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !634
  %55 = load i64, i64* %54, align 8, !dbg !634, !tbaa !628
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !634
  %57 = load i64, i64* %56, align 8, !dbg !634, !tbaa !630
  %58 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %55, i64 %57) #13, !dbg !634
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef 19, i64 noundef %58) #13, !dbg !635
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !636
  %60 = load i64, i64* %59, align 8, !dbg !636, !tbaa !628
  %61 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !636
  %62 = load i64, i64* %61, align 8, !dbg !636, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %45, i64 %47, i64 %60, i64 %62) #13, !dbg !636
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %39, i8* noundef nonnull align 4 dereferenceable(16) %48, i32 16, i1 false), !dbg !637, !tbaa.struct !566
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %14, i8* noundef nonnull align 4 dereferenceable(16) %53, i32 16, i1 false), !dbg !638, !tbaa.struct !566
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %18), !dbg !639
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #13, !dbg !640
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48) #13, !dbg !640
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #13, !dbg !640
  ret void, !dbg !640

63:                                               ; preds = %2, %63
  %64 = phi i32 [ 0, %2 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 %64, metadata !579, metadata !DIExpression()), !dbg !598
  %65 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 %64, !dbg !641
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #13, !dbg !643
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0) #13, !dbg !643
  %66 = bitcast %struct.FStar_UInt128_uint128* %65 to i8*, !dbg !643
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %66, i8* noundef nonnull align 4 dereferenceable(16) %15, i32 16, i1 false), !dbg !643, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #13, !dbg !643
  %67 = add nuw nsw i32 %64, 1, !dbg !644
  call void @llvm.dbg.value(metadata i32 %67, metadata !579, metadata !DIExpression()), !dbg !598
  %68 = icmp eq i32 %67, 5, !dbg !645
  br i1 %68, label %16, label %63, !dbg !599, !llvm.loop !646
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !648 {
  %4 = alloca [5 x i64], align 8
  %5 = alloca [5 x %struct.FStar_UInt128_uint128], align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !650, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64* %1, metadata !651, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64* %2, metadata !652, metadata !DIExpression()), !dbg !665
  %12 = bitcast [5 x i64]* %4 to i8*, !dbg !666
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #13, !dbg !666
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !653, metadata !DIExpression()), !dbg !667
  %13 = bitcast i64* %1 to i8*, !dbg !668
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 4 dereferenceable(40) %13, i32 40, i1 false), !dbg !668
  %14 = bitcast [5 x %struct.FStar_UInt128_uint128]* %5 to i8*, !dbg !669
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %14) #13, !dbg !669
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %5, metadata !654, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i32 0, metadata !655, metadata !DIExpression()), !dbg !671
  %15 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !655, metadata !DIExpression()), !dbg !671
  br label %50, !dbg !672

16:                                               ; preds = %50
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i32 0, i32 0, !dbg !668
  %18 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, !dbg !673
  call fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(%struct.FStar_UInt128_uint128* noundef nonnull %18, i64* noundef nonnull %17, i64* noundef %2), !dbg !674
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* noundef nonnull %18), !dbg !675
  %19 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, i32 0, !dbg !676
  %20 = load i64, i64* %19, align 8, !dbg !676, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %20, metadata !657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !665
  %21 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, i32 1, !dbg !676
  %22 = load i64, i64* %21, align 8, !dbg !676, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %22, metadata !657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !665
  %23 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, i32 0, !dbg !677
  %24 = load i64, i64* %23, align 8, !dbg !677, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %24, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !665
  %25 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, i32 1, !dbg !677
  %26 = load i64, i64* %25, align 8, !dbg !677, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %26, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !665
  %27 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !678
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #13, !dbg !678
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !659, metadata !DIExpression()), !dbg !679
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 2251799813685247) #13, !dbg !680
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !681
  %29 = load i64, i64* %28, align 8, !dbg !681, !tbaa !628
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !681
  %31 = load i64, i64* %30, align 8, !dbg !681, !tbaa !630
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %20, i64 %22, i64 %29, i64 %31) #13, !dbg !681
  %32 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !682
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #13, !dbg !682
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %9, metadata !660, metadata !DIExpression()), !dbg !683
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %20, i64 %22, i32 noundef 51) #13, !dbg !684
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !685
  %34 = load i64, i64* %33, align 8, !dbg !685, !tbaa !628
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !685
  %36 = load i64, i64* %35, align 8, !dbg !685, !tbaa !630
  %37 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %34, i64 %36) #13, !dbg !685
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 19, i64 noundef %37) #13, !dbg !686
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !687
  %39 = load i64, i64* %38, align 8, !dbg !687, !tbaa !628
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !687
  %41 = load i64, i64* %40, align 8, !dbg !687, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %24, i64 %26, i64 %39, i64 %41) #13, !dbg !687
  %42 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, !dbg !688
  %43 = bitcast %struct.FStar_UInt128_uint128* %42 to i8*, !dbg !689
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %43, i8* noundef nonnull align 4 dereferenceable(16) %27, i32 16, i1 false), !dbg !689, !tbaa.struct !566
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %14, i8* noundef nonnull align 4 dereferenceable(16) %32, i32 16, i1 false), !dbg !690, !tbaa.struct !566
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %18), !dbg !691
  %44 = load i64, i64* %0, align 4, !dbg !692, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %44, metadata !661, metadata !DIExpression()), !dbg !665
  %45 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !693
  %46 = load i64, i64* %45, align 4, !dbg !693, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %46, metadata !662, metadata !DIExpression()), !dbg !665
  %47 = and i64 %44, 2251799813685247, !dbg !694
  call void @llvm.dbg.value(metadata i64 %47, metadata !663, metadata !DIExpression()), !dbg !665
  %48 = lshr i64 %44, 51, !dbg !695
  %49 = add i64 %46, %48, !dbg !696
  call void @llvm.dbg.value(metadata i64 %49, metadata !664, metadata !DIExpression()), !dbg !665
  store i64 %47, i64* %0, align 4, !dbg !697, !tbaa !65
  store i64 %49, i64* %45, align 4, !dbg !698, !tbaa !65
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #13, !dbg !699
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #13, !dbg !699
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #13, !dbg !699
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #13, !dbg !699
  ret void, !dbg !699

50:                                               ; preds = %3, %50
  %51 = phi i32 [ 0, %3 ], [ %54, %50 ]
  call void @llvm.dbg.value(metadata i32 %51, metadata !655, metadata !DIExpression()), !dbg !671
  %52 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 %51, !dbg !700
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #13, !dbg !702
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0) #13, !dbg !702
  %53 = bitcast %struct.FStar_UInt128_uint128* %52 to i8*, !dbg !702
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %53, i8* noundef nonnull align 4 dereferenceable(16) %15, i32 16, i1 false), !dbg !702, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #13, !dbg !702
  %54 = add nuw nsw i32 %51, 1, !dbg !703
  call void @llvm.dbg.value(metadata i32 %54, metadata !655, metadata !DIExpression()), !dbg !671
  %55 = icmp eq i32 %54, 5, !dbg !704
  br i1 %55, label %16, label %50, !dbg !672, !llvm.loop !705
}

declare !dbg !707 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef %1, i64* nocapture noundef readonly %2) unnamed_addr #0 !dbg !711 {
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !716, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i64* %1, metadata !717, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i64* %2, metadata !718, metadata !DIExpression()), !dbg !729
  %4 = load i64, i64* %2, align 4, !dbg !730, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %4, metadata !719, metadata !DIExpression()), !dbg !731
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %4), !dbg !732
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* noundef %1), !dbg !733
  %5 = getelementptr inbounds i64, i64* %2, i32 1, !dbg !734
  %6 = load i64, i64* %5, align 4, !dbg !734, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %6, metadata !721, metadata !DIExpression()), !dbg !735
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %6), !dbg !736
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* noundef %1), !dbg !737
  %7 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !738
  %8 = load i64, i64* %7, align 4, !dbg !738, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %8, metadata !723, metadata !DIExpression()), !dbg !739
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %8), !dbg !740
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* noundef %1), !dbg !741
  %9 = getelementptr inbounds i64, i64* %2, i32 3, !dbg !742
  %10 = load i64, i64* %9, align 4, !dbg !742, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %10, metadata !725, metadata !DIExpression()), !dbg !743
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %10), !dbg !744
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* noundef %1), !dbg !745
  call void @llvm.dbg.value(metadata i32 4, metadata !727, metadata !DIExpression()), !dbg !729
  %11 = getelementptr inbounds i64, i64* %2, i32 4, !dbg !746
  %12 = load i64, i64* %11, align 4, !dbg !746, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %12, metadata !728, metadata !DIExpression()), !dbg !729
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %12), !dbg !747
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* nocapture noundef %0) unnamed_addr #0 !dbg !749 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 8
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !753, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 0, metadata !754, metadata !DIExpression()), !dbg !779
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !780
  %15 = load i64, i64* %14, align 4, !dbg !780, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %15, metadata !756, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !779
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !780
  %17 = load i64, i64* %16, align 4, !dbg !780, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %17, metadata !756, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !779
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, !dbg !781
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !781
  %20 = load i64, i64* %19, align 4, !dbg !781, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %20, metadata !757, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !779
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 1, !dbg !781
  %22 = load i64, i64* %21, align 4, !dbg !781, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %22, metadata !757, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !779
  %23 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %15, i64 %17) #13, !dbg !782
  %24 = and i64 %23, 2251799813685247, !dbg !783
  call void @llvm.dbg.value(metadata i64 %24, metadata !758, metadata !DIExpression()), !dbg !779
  %25 = bitcast %struct.FStar_UInt128_uint128* %2 to i8*, !dbg !784
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #13, !dbg !784
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %2, metadata !759, metadata !DIExpression()), !dbg !785
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %15, i64 %17, i32 noundef 51) #13, !dbg !786
  %26 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*, !dbg !787
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #13, !dbg !787
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %24) #13, !dbg !787
  %27 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !787
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %27, i8* noundef nonnull align 4 dereferenceable(16) %26, i32 16, i1 false), !dbg !787, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #13, !dbg !787
  %28 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !788
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #13, !dbg !788
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %2, i32 0, i32 0, !dbg !788
  %30 = load i64, i64* %29, align 8, !dbg !788, !tbaa !628
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %2, i32 0, i32 1, !dbg !788
  %32 = load i64, i64* %31, align 8, !dbg !788, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %20, i64 %22, i64 %30, i64 %32) #13, !dbg !788
  %33 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !788
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %33, i8* noundef nonnull align 4 dereferenceable(16) %28, i32 16, i1 false), !dbg !788, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #13, !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #13, !dbg !789
  call void @llvm.dbg.value(metadata i32 1, metadata !760, metadata !DIExpression()), !dbg !790
  %34 = load i64, i64* %19, align 4, !dbg !791, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %34, metadata !762, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !790
  %35 = load i64, i64* %21, align 4, !dbg !791, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %35, metadata !762, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !790
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !792
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %36, i32 0, i32 0, !dbg !792
  %38 = load i64, i64* %37, align 4, !dbg !792, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %38, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !790
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 1, !dbg !792
  %40 = load i64, i64* %39, align 4, !dbg !792, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %40, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !790
  %41 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %34, i64 %35) #13, !dbg !793
  %42 = and i64 %41, 2251799813685247, !dbg !794
  call void @llvm.dbg.value(metadata i64 %42, metadata !764, metadata !DIExpression()), !dbg !790
  %43 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !795
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43) #13, !dbg !795
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !765, metadata !DIExpression()), !dbg !796
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %34, i64 %35, i32 noundef 51) #13, !dbg !797
  %44 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !798
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44) #13, !dbg !798
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %42) #13, !dbg !798
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %33, i8* noundef nonnull align 4 dereferenceable(16) %44, i32 16, i1 false), !dbg !798, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #13, !dbg !798
  %45 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #13, !dbg !799
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !799
  %47 = load i64, i64* %46, align 8, !dbg !799, !tbaa !628
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !799
  %49 = load i64, i64* %48, align 8, !dbg !799, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %38, i64 %40, i64 %47, i64 %49) #13, !dbg !799
  %50 = bitcast %struct.FStar_UInt128_uint128* %36 to i8*, !dbg !799
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %50, i8* noundef nonnull align 4 dereferenceable(16) %45, i32 16, i1 false), !dbg !799, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #13, !dbg !799
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43) #13, !dbg !800
  call void @llvm.dbg.value(metadata i32 2, metadata !766, metadata !DIExpression()), !dbg !801
  %51 = load i64, i64* %37, align 4, !dbg !802, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %51, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !801
  %52 = load i64, i64* %39, align 4, !dbg !802, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %52, metadata !768, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !801
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, !dbg !803
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %53, i32 0, i32 0, !dbg !803
  %55 = load i64, i64* %54, align 4, !dbg !803, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %55, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !801
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 1, !dbg !803
  %57 = load i64, i64* %56, align 4, !dbg !803, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %57, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !801
  %58 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %51, i64 %52) #13, !dbg !804
  %59 = and i64 %58, 2251799813685247, !dbg !805
  call void @llvm.dbg.value(metadata i64 %59, metadata !770, metadata !DIExpression()), !dbg !801
  %60 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !806
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #13, !dbg !806
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !771, metadata !DIExpression()), !dbg !807
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %51, i64 %52, i32 noundef 51) #13, !dbg !808
  %61 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !809
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #13, !dbg !809
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %59) #13, !dbg !809
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %50, i8* noundef nonnull align 4 dereferenceable(16) %61, i32 16, i1 false), !dbg !809, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #13, !dbg !809
  %62 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !810
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #13, !dbg !810
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !810
  %64 = load i64, i64* %63, align 8, !dbg !810, !tbaa !628
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !810
  %66 = load i64, i64* %65, align 8, !dbg !810, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %55, i64 %57, i64 %64, i64 %66) #13, !dbg !810
  %67 = bitcast %struct.FStar_UInt128_uint128* %53 to i8*, !dbg !810
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %67, i8* noundef nonnull align 4 dereferenceable(16) %62, i32 16, i1 false), !dbg !810, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #13, !dbg !810
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #13, !dbg !811
  call void @llvm.dbg.value(metadata i32 3, metadata !772, metadata !DIExpression()), !dbg !812
  %68 = load i64, i64* %54, align 4, !dbg !813, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %68, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !812
  %69 = load i64, i64* %56, align 4, !dbg !813, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %69, metadata !774, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !812
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !814
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %70, i32 0, i32 0, !dbg !814
  %72 = load i64, i64* %71, align 4, !dbg !814, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %72, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !812
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 1, !dbg !814
  %74 = load i64, i64* %73, align 4, !dbg !814, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %74, metadata !775, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !812
  %75 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %68, i64 %69) #13, !dbg !815
  %76 = and i64 %75, 2251799813685247, !dbg !816
  call void @llvm.dbg.value(metadata i64 %76, metadata !776, metadata !DIExpression()), !dbg !812
  %77 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !817
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %77) #13, !dbg !817
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %11, metadata !777, metadata !DIExpression()), !dbg !818
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %68, i64 %69, i32 noundef 51) #13, !dbg !819
  %78 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %78) #13, !dbg !820
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %76) #13, !dbg !820
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %67, i8* noundef nonnull align 4 dereferenceable(16) %78, i32 16, i1 false), !dbg !820, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %78) #13, !dbg !820
  %79 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !821
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %79) #13, !dbg !821
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !821
  %81 = load i64, i64* %80, align 8, !dbg !821, !tbaa !628
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !821
  %83 = load i64, i64* %82, align 8, !dbg !821, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %72, i64 %74, i64 %81, i64 %83) #13, !dbg !821
  %84 = bitcast %struct.FStar_UInt128_uint128* %70 to i8*, !dbg !821
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %84, i8* noundef nonnull align 4 dereferenceable(16) %79, i32 16, i1 false), !dbg !821, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %79) #13, !dbg !821
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %77) #13, !dbg !822
  ret void, !dbg !823
}

declare !dbg !824 void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #9

declare !dbg !827 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #9

declare !dbg !828 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #9

declare !dbg !831 i64 @FStar_UInt128_uint128_to_uint64(i64, i64) local_unnamed_addr #9

declare !dbg !834 void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #0 !dbg !837 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !841, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !842, metadata !DIExpression()), !dbg !853
  %3 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !854
  %4 = load i64, i64* %3, align 4, !dbg !854, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %4, metadata !843, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !855
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !854
  %6 = load i64, i64* %5, align 4, !dbg !854, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %6, metadata !843, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !855
  %7 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %4, i64 %6) #13, !dbg !856
  store i64 %7, i64* %0, align 4, !dbg !857, !tbaa !65
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 1, i32 0, !dbg !858
  %9 = load i64, i64* %8, align 4, !dbg !858, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %9, metadata !845, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !859
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 1, i32 1, !dbg !858
  %11 = load i64, i64* %10, align 4, !dbg !858, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %11, metadata !845, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !859
  %12 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %9, i64 %11) #13, !dbg !860
  %13 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !861
  store i64 %12, i64* %13, align 4, !dbg !862, !tbaa !65
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 2, i32 0, !dbg !863
  %15 = load i64, i64* %14, align 4, !dbg !863, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %15, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !864
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 2, i32 1, !dbg !863
  %17 = load i64, i64* %16, align 4, !dbg !863, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %17, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !864
  %18 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %15, i64 %17) #13, !dbg !865
  %19 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !866
  store i64 %18, i64* %19, align 4, !dbg !867, !tbaa !65
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 3, i32 0, !dbg !868
  %21 = load i64, i64* %20, align 4, !dbg !868, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %21, metadata !849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !869
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 3, i32 1, !dbg !868
  %23 = load i64, i64* %22, align 4, !dbg !868, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %23, metadata !849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !869
  %24 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %21, i64 %23) #13, !dbg !870
  %25 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !871
  store i64 %24, i64* %25, align 4, !dbg !872, !tbaa !65
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 4, i32 0, !dbg !873
  %27 = load i64, i64* %26, align 4, !dbg !873, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %27, metadata !851, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !874
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 4, i32 1, !dbg !873
  %29 = load i64, i64* %28, align 4, !dbg !873, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %29, metadata !851, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !874
  %30 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %27, i64 %29) #13, !dbg !875
  %31 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !876
  store i64 %30, i64* %31, align 4, !dbg !877, !tbaa !65
  ret void, !dbg !878
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !dbg !879 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !883, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64* %1, metadata !884, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 %2, metadata !885, metadata !DIExpression()), !dbg !901
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !902
  %15 = load i64, i64* %14, align 4, !dbg !902, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %15, metadata !886, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !903
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !902
  %17 = load i64, i64* %16, align 4, !dbg !902, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %17, metadata !886, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !903
  %18 = load i64, i64* %1, align 4, !dbg !904, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %18, metadata !888, metadata !DIExpression()), !dbg !903
  %19 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !905
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #13, !dbg !905
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %18, i64 noundef %2) #13, !dbg !906
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !905
  %21 = load i64, i64* %20, align 8, !dbg !905, !tbaa !628
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !905
  %23 = load i64, i64* %22, align 8, !dbg !905, !tbaa !630
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %15, i64 %17, i64 %21, i64 %23) #13, !dbg !905
  %24 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !905
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %24, i8* noundef nonnull align 4 dereferenceable(16) %19, i32 16, i1 false), !dbg !905, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #13, !dbg !905
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 0, !dbg !907
  %26 = load i64, i64* %25, align 4, !dbg !907, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %26, metadata !889, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !908
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 1, !dbg !907
  %28 = load i64, i64* %27, align 4, !dbg !907, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %28, metadata !889, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !908
  %29 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !909
  %30 = load i64, i64* %29, align 4, !dbg !909, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %30, metadata !891, metadata !DIExpression()), !dbg !908
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, !dbg !910
  %32 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !911
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #13, !dbg !911
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %30, i64 noundef %2) #13, !dbg !912
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !911
  %34 = load i64, i64* %33, align 8, !dbg !911, !tbaa !628
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !911
  %36 = load i64, i64* %35, align 8, !dbg !911, !tbaa !630
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %26, i64 %28, i64 %34, i64 %36) #13, !dbg !911
  %37 = bitcast %struct.FStar_UInt128_uint128* %31 to i8*, !dbg !911
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %37, i8* noundef nonnull align 4 dereferenceable(16) %32, i32 16, i1 false), !dbg !911, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #13, !dbg !911
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 0, !dbg !913
  %39 = load i64, i64* %38, align 4, !dbg !913, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %39, metadata !892, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !914
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 1, !dbg !913
  %41 = load i64, i64* %40, align 4, !dbg !913, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %41, metadata !892, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !914
  %42 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !915
  %43 = load i64, i64* %42, align 4, !dbg !915, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %43, metadata !894, metadata !DIExpression()), !dbg !914
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !916
  %45 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !917
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #13, !dbg !917
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %43, i64 noundef %2) #13, !dbg !918
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !917
  %47 = load i64, i64* %46, align 8, !dbg !917, !tbaa !628
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !917
  %49 = load i64, i64* %48, align 8, !dbg !917, !tbaa !630
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %39, i64 %41, i64 %47, i64 %49) #13, !dbg !917
  %50 = bitcast %struct.FStar_UInt128_uint128* %44 to i8*, !dbg !917
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %50, i8* noundef nonnull align 4 dereferenceable(16) %45, i32 16, i1 false), !dbg !917, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #13, !dbg !917
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 0, !dbg !919
  %52 = load i64, i64* %51, align 4, !dbg !919, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %52, metadata !895, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !920
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 1, !dbg !919
  %54 = load i64, i64* %53, align 4, !dbg !919, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %54, metadata !895, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !920
  %55 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !921
  %56 = load i64, i64* %55, align 4, !dbg !921, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %56, metadata !897, metadata !DIExpression()), !dbg !920
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, !dbg !922
  %58 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !923
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #13, !dbg !923
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %56, i64 noundef %2) #13, !dbg !924
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !923
  %60 = load i64, i64* %59, align 8, !dbg !923, !tbaa !628
  %61 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !923
  %62 = load i64, i64* %61, align 8, !dbg !923, !tbaa !630
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %52, i64 %54, i64 %60, i64 %62) #13, !dbg !923
  %63 = bitcast %struct.FStar_UInt128_uint128* %57 to i8*, !dbg !923
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %63, i8* noundef nonnull align 4 dereferenceable(16) %58, i32 16, i1 false), !dbg !923, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #13, !dbg !923
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 0, !dbg !925
  %65 = load i64, i64* %64, align 4, !dbg !925, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %65, metadata !898, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !926
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 1, !dbg !925
  %67 = load i64, i64* %66, align 4, !dbg !925, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %67, metadata !898, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !926
  %68 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !927
  %69 = load i64, i64* %68, align 4, !dbg !927, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %69, metadata !900, metadata !DIExpression()), !dbg !926
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !928
  %71 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !929
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %71) #13, !dbg !929
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %69, i64 noundef %2) #13, !dbg !930
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !929
  %73 = load i64, i64* %72, align 8, !dbg !929, !tbaa !628
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !929
  %75 = load i64, i64* %74, align 8, !dbg !929, !tbaa !630
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %65, i64 %67, i64 %73, i64 %75) #13, !dbg !929
  %76 = bitcast %struct.FStar_UInt128_uint128* %70 to i8*, !dbg !929
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %76, i8* noundef nonnull align 4 dereferenceable(16) %71, i32 16, i1 false), !dbg !929, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %71) #13, !dbg !929
  ret void, !dbg !931
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* nocapture noundef %0) unnamed_addr #4 !dbg !932 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !936, metadata !DIExpression()), !dbg !951
  %2 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !952
  %3 = load i64, i64* %2, align 4, !dbg !952, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %3, metadata !937, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i32 4, metadata !938, metadata !DIExpression()), !dbg !953
  %4 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !954
  %5 = load i64, i64* %4, align 4, !dbg !954, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %5, metadata !940, metadata !DIExpression()), !dbg !953
  store i64 %5, i64* %2, align 4, !dbg !955, !tbaa !65
  call void @llvm.dbg.value(metadata i32 3, metadata !941, metadata !DIExpression()), !dbg !956
  %6 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !957
  %7 = load i64, i64* %6, align 4, !dbg !957, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %7, metadata !943, metadata !DIExpression()), !dbg !956
  store i64 %7, i64* %4, align 4, !dbg !958, !tbaa !65
  call void @llvm.dbg.value(metadata i32 2, metadata !944, metadata !DIExpression()), !dbg !959
  %8 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !960
  %9 = load i64, i64* %8, align 4, !dbg !960, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %9, metadata !946, metadata !DIExpression()), !dbg !959
  store i64 %9, i64* %6, align 4, !dbg !961, !tbaa !65
  call void @llvm.dbg.value(metadata i32 1, metadata !947, metadata !DIExpression()), !dbg !962
  %10 = load i64, i64* %0, align 4, !dbg !963, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %10, metadata !949, metadata !DIExpression()), !dbg !962
  store i64 %10, i64* %8, align 4, !dbg !964, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %3, metadata !950, metadata !DIExpression()), !dbg !951
  %11 = mul i64 %3, 19, !dbg !965
  store i64 %11, i64* %0, align 4, !dbg !966, !tbaa !65
  ret void, !dbg !967
}

declare !dbg !968 void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times_(i64* nocapture noundef %0, %struct.FStar_UInt128_uint128* nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !969 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !973, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !974, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata i32 %2, metadata !975, metadata !DIExpression()), !dbg !978
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef %1, i64* noundef %0), !dbg !979
  call void @llvm.dbg.value(metadata i32 1, metadata !976, metadata !DIExpression()), !dbg !980
  %4 = icmp ugt i32 %2, 1, !dbg !981
  br i1 %4, label %6, label %5, !dbg !983

5:                                                ; preds = %6, %3
  ret void, !dbg !984

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %8, %6 ], [ 1, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !976, metadata !DIExpression()), !dbg !980
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef %1, i64* noundef %0), !dbg !985
  %8 = add nuw i32 %7, 1, !dbg !986
  call void @llvm.dbg.value(metadata i32 %8, metadata !976, metadata !DIExpression()), !dbg !980
  %9 = icmp eq i32 %8, %2, !dbg !981
  br i1 %9, label %5, label %6, !dbg !983, !llvm.loop !987
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef %1) unnamed_addr #0 !dbg !989 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !993, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64* %1, metadata !994, metadata !DIExpression()), !dbg !1003
  call fastcc void @Hacl_Bignum_Fsquare_fsquare__(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1), !dbg !1004
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* noundef %0), !dbg !1005
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 0, !dbg !1006
  %9 = load i64, i64* %8, align 4, !dbg !1006, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %9, metadata !995, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1003
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 1, !dbg !1006
  %11 = load i64, i64* %10, align 4, !dbg !1006, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %11, metadata !995, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1003
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !1007
  %13 = load i64, i64* %12, align 4, !dbg !1007, !tbaa.struct !566
  call void @llvm.dbg.value(metadata i64 %13, metadata !996, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1003
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !1007
  %15 = load i64, i64* %14, align 4, !dbg !1007, !tbaa.struct !622
  call void @llvm.dbg.value(metadata i64 %15, metadata !996, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1003
  %16 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*, !dbg !1008
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #13, !dbg !1008
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %3, metadata !997, metadata !DIExpression()), !dbg !1009
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 2251799813685247) #13, !dbg !1010
  %17 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !1011
  %18 = load i64, i64* %17, align 8, !dbg !1011, !tbaa !628
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !1011
  %20 = load i64, i64* %19, align 8, !dbg !1011, !tbaa !630
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %9, i64 %11, i64 %18, i64 %20) #13, !dbg !1011
  %21 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !1012
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #13, !dbg !1012
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !998, metadata !DIExpression()), !dbg !1013
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %9, i64 %11, i32 noundef 51) #13, !dbg !1014
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1015
  %23 = load i64, i64* %22, align 8, !dbg !1015, !tbaa !628
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1015
  %25 = load i64, i64* %24, align 8, !dbg !1015, !tbaa !630
  %26 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %23, i64 %25) #13, !dbg !1015
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 19, i64 noundef %26) #13, !dbg !1016
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !1017
  %28 = load i64, i64* %27, align 8, !dbg !1017, !tbaa !628
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !1017
  %30 = load i64, i64* %29, align 8, !dbg !1017, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %13, i64 %15, i64 %28, i64 %30) #13, !dbg !1017
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !1018
  %32 = bitcast %struct.FStar_UInt128_uint128* %31 to i8*, !dbg !1019
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %32, i8* noundef nonnull align 4 dereferenceable(16) %16, i32 16, i1 false), !dbg !1019, !tbaa.struct !566
  %33 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !1020
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %33, i8* noundef nonnull align 4 dereferenceable(16) %21, i32 16, i1 false), !dbg !1020, !tbaa.struct !566
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* noundef %1, %struct.FStar_UInt128_uint128* noundef %0), !dbg !1021
  %34 = load i64, i64* %1, align 4, !dbg !1022, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %34, metadata !999, metadata !DIExpression()), !dbg !1003
  %35 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !1023
  %36 = load i64, i64* %35, align 4, !dbg !1023, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %36, metadata !1000, metadata !DIExpression()), !dbg !1003
  %37 = and i64 %34, 2251799813685247, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %37, metadata !1001, metadata !DIExpression()), !dbg !1003
  %38 = lshr i64 %34, 51, !dbg !1025
  %39 = add i64 %36, %38, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %39, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i64 %37, i64* %1, align 4, !dbg !1027, !tbaa !65
  store i64 %39, i64* %35, align 4, !dbg !1028, !tbaa !65
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #13, !dbg !1029
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #13, !dbg !1029
  ret void, !dbg !1029
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare__(%struct.FStar_UInt128_uint128* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !1030 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %22 = alloca %struct.FStar_UInt128_uint128, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.FStar_UInt128_uint128, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 8
  %26 = alloca %struct.FStar_UInt128_uint128, align 8
  %27 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !1032, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64* %1, metadata !1033, metadata !DIExpression()), !dbg !1049
  %28 = load i64, i64* %1, align 4, !dbg !1050, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %28, metadata !1034, metadata !DIExpression()), !dbg !1049
  %29 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !1051
  %30 = load i64, i64* %29, align 4, !dbg !1051, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %30, metadata !1035, metadata !DIExpression()), !dbg !1049
  %31 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !1052
  %32 = load i64, i64* %31, align 4, !dbg !1052, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %32, metadata !1036, metadata !DIExpression()), !dbg !1049
  %33 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !1053
  %34 = load i64, i64* %33, align 4, !dbg !1053, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %34, metadata !1037, metadata !DIExpression()), !dbg !1049
  %35 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1054
  %36 = load i64, i64* %35, align 4, !dbg !1054, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %36, metadata !1038, metadata !DIExpression()), !dbg !1049
  %37 = shl i64 %28, 1, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %37, metadata !1039, metadata !DIExpression()), !dbg !1049
  %38 = shl i64 %30, 1, !dbg !1056
  call void @llvm.dbg.value(metadata i64 %38, metadata !1040, metadata !DIExpression()), !dbg !1049
  %39 = mul i64 %32, 38, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %39, metadata !1041, metadata !DIExpression()), !dbg !1049
  %40 = mul i64 %36, 19, !dbg !1058
  call void @llvm.dbg.value(metadata i64 %40, metadata !1042, metadata !DIExpression()), !dbg !1049
  %41 = mul i64 %36, 38, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %41, metadata !1043, metadata !DIExpression()), !dbg !1049
  %42 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*, !dbg !1060
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #13, !dbg !1060
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %3, metadata !1044, metadata !DIExpression()), !dbg !1061
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %28, i64 noundef %28) #13, !dbg !1062
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %41, i64 noundef %30) #13, !dbg !1063
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !1064
  %44 = load i64, i64* %43, align 8, !dbg !1064, !tbaa !628
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !1064
  %46 = load i64, i64* %45, align 8, !dbg !1064, !tbaa !630
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !1064
  %48 = load i64, i64* %47, align 8, !dbg !1064, !tbaa !628
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !1064
  %50 = load i64, i64* %49, align 8, !dbg !1064, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %44, i64 %46, i64 %48, i64 %50) #13, !dbg !1064
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %39, i64 noundef %34) #13, !dbg !1065
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !1066
  %52 = load i64, i64* %51, align 8, !dbg !1066, !tbaa !628
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !1066
  %54 = load i64, i64* %53, align 8, !dbg !1066, !tbaa !630
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1066
  %56 = load i64, i64* %55, align 8, !dbg !1066, !tbaa !628
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1066
  %58 = load i64, i64* %57, align 8, !dbg !1066, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %52, i64 %54, i64 %56, i64 %58) #13, !dbg !1066
  %59 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !1067
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #13, !dbg !1067
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !1045, metadata !DIExpression()), !dbg !1068
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %37, i64 noundef %30) #13, !dbg !1069
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %41, i64 noundef %32) #13, !dbg !1070
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !1071
  %61 = load i64, i64* %60, align 8, !dbg !1071, !tbaa !628
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !1071
  %63 = load i64, i64* %62, align 8, !dbg !1071, !tbaa !630
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1071
  %65 = load i64, i64* %64, align 8, !dbg !1071, !tbaa !628
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1071
  %67 = load i64, i64* %66, align 8, !dbg !1071, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %61, i64 %63, i64 %65, i64 %67) #13, !dbg !1071
  %68 = mul i64 %34, 19, !dbg !1072
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %68, i64 noundef %34) #13, !dbg !1073
  %69 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !1074
  %70 = load i64, i64* %69, align 8, !dbg !1074, !tbaa !628
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !1074
  %72 = load i64, i64* %71, align 8, !dbg !1074, !tbaa !630
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !1074
  %74 = load i64, i64* %73, align 8, !dbg !1074, !tbaa !628
  %75 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !1074
  %76 = load i64, i64* %75, align 8, !dbg !1074, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %70, i64 %72, i64 %74, i64 %76) #13, !dbg !1074
  %77 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !1075
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %77) #13, !dbg !1075
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %13, metadata !1046, metadata !DIExpression()), !dbg !1076
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %37, i64 noundef %32) #13, !dbg !1077
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %30, i64 noundef %30) #13, !dbg !1078
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !1079
  %79 = load i64, i64* %78, align 8, !dbg !1079, !tbaa !628
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !1079
  %81 = load i64, i64* %80, align 8, !dbg !1079, !tbaa !630
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !1079
  %83 = load i64, i64* %82, align 8, !dbg !1079, !tbaa !628
  %84 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !1079
  %85 = load i64, i64* %84, align 8, !dbg !1079, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %79, i64 %81, i64 %83, i64 %85) #13, !dbg !1079
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %41, i64 noundef %34) #13, !dbg !1080
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !1081
  %87 = load i64, i64* %86, align 8, !dbg !1081, !tbaa !628
  %88 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !1081
  %89 = load i64, i64* %88, align 8, !dbg !1081, !tbaa !630
  %90 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !1081
  %91 = load i64, i64* %90, align 8, !dbg !1081, !tbaa !628
  %92 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !1081
  %93 = load i64, i64* %92, align 8, !dbg !1081, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %87, i64 %89, i64 %91, i64 %93) #13, !dbg !1081
  %94 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !1082
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %94) #13, !dbg !1082
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %18, metadata !1047, metadata !DIExpression()), !dbg !1083
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %37, i64 noundef %34) #13, !dbg !1084
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef %38, i64 noundef %32) #13, !dbg !1085
  %95 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 0, !dbg !1086
  %96 = load i64, i64* %95, align 8, !dbg !1086, !tbaa !628
  %97 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 1, !dbg !1086
  %98 = load i64, i64* %97, align 8, !dbg !1086, !tbaa !630
  %99 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 0, !dbg !1086
  %100 = load i64, i64* %99, align 8, !dbg !1086, !tbaa !628
  %101 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 1, !dbg !1086
  %102 = load i64, i64* %101, align 8, !dbg !1086, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %96, i64 %98, i64 %100, i64 %102) #13, !dbg !1086
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %36, i64 noundef %40) #13, !dbg !1087
  %103 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !1088
  %104 = load i64, i64* %103, align 8, !dbg !1088, !tbaa !628
  %105 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !1088
  %106 = load i64, i64* %105, align 8, !dbg !1088, !tbaa !630
  %107 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 0, !dbg !1088
  %108 = load i64, i64* %107, align 8, !dbg !1088, !tbaa !628
  %109 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 1, !dbg !1088
  %110 = load i64, i64* %109, align 8, !dbg !1088, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %104, i64 %106, i64 %108, i64 %110) #13, !dbg !1088
  %111 = bitcast %struct.FStar_UInt128_uint128* %23 to i8*, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %111) #13, !dbg !1089
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %23, metadata !1048, metadata !DIExpression()), !dbg !1090
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %37, i64 noundef %36) #13, !dbg !1091
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %38, i64 noundef %34) #13, !dbg !1092
  %112 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 0, !dbg !1093
  %113 = load i64, i64* %112, align 8, !dbg !1093, !tbaa !628
  %114 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 1, !dbg !1093
  %115 = load i64, i64* %114, align 8, !dbg !1093, !tbaa !630
  %116 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 0, !dbg !1093
  %117 = load i64, i64* %116, align 8, !dbg !1093, !tbaa !628
  %118 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 1, !dbg !1093
  %119 = load i64, i64* %118, align 8, !dbg !1093, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %113, i64 %115, i64 %117, i64 %119) #13, !dbg !1093
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %32, i64 noundef %32) #13, !dbg !1094
  %120 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 0, !dbg !1095
  %121 = load i64, i64* %120, align 8, !dbg !1095, !tbaa !628
  %122 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 1, !dbg !1095
  %123 = load i64, i64* %122, align 8, !dbg !1095, !tbaa !630
  %124 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 0, !dbg !1095
  %125 = load i64, i64* %124, align 8, !dbg !1095, !tbaa !628
  %126 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 1, !dbg !1095
  %127 = load i64, i64* %126, align 8, !dbg !1095, !tbaa !630
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %121, i64 %123, i64 %125, i64 %127) #13, !dbg !1095
  %128 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !1096
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %128, i8* noundef nonnull align 4 dereferenceable(16) %42, i32 16, i1 false), !dbg !1096, !tbaa.struct !566
  %129 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, !dbg !1097
  %130 = bitcast %struct.FStar_UInt128_uint128* %129 to i8*, !dbg !1098
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %130, i8* noundef nonnull align 4 dereferenceable(16) %59, i32 16, i1 false), !dbg !1098, !tbaa.struct !566
  %131 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !1099
  %132 = bitcast %struct.FStar_UInt128_uint128* %131 to i8*, !dbg !1100
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %132, i8* noundef nonnull align 4 dereferenceable(16) %77, i32 16, i1 false), !dbg !1100, !tbaa.struct !566
  %133 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, !dbg !1101
  %134 = bitcast %struct.FStar_UInt128_uint128* %133 to i8*, !dbg !1102
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %134, i8* noundef nonnull align 4 dereferenceable(16) %94, i32 16, i1 false), !dbg !1102, !tbaa.struct !566
  %135 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !1103
  %136 = bitcast %struct.FStar_UInt128_uint128* %135 to i8*, !dbg !1104
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %136, i8* noundef nonnull align 4 dereferenceable(16) %111, i32 16, i1 false), !dbg !1104, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %111) #13, !dbg !1105
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %94) #13, !dbg !1105
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %77) #13, !dbg !1105
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %59) #13, !dbg !1105
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #13, !dbg !1105
  ret void, !dbg !1105
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_crecip(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !1106 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1108, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64* %1, metadata !1109, metadata !DIExpression()), !dbg !1110
  call fastcc void @Hacl_Bignum_Crecip_crecip(i64* noundef %0, i64* noundef %1), !dbg !1111
  ret void, !dbg !1112
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract(i8* nocapture noundef writeonly %0, i64* nocapture noundef %1) unnamed_addr #4 !dbg !1113 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1115, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i64* %1, metadata !1116, metadata !DIExpression()), !dbg !1117
  call fastcc void @Hacl_EC_Format_fcontract_first_carry_full(i64* noundef %1), !dbg !1118
  call fastcc void @Hacl_EC_Format_fcontract_second_carry_full(i64* noundef %1), !dbg !1119
  call fastcc void @Hacl_EC_Format_fcontract_trim(i64* noundef %1), !dbg !1120
  call fastcc void @Hacl_EC_Format_fcontract_store(i8* noundef %0, i64* noundef %1), !dbg !1121
  ret void, !dbg !1122
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Crecip_crecip(i64* nocapture noundef %0, i64* nocapture noundef readonly %1) unnamed_addr #0 !dbg !1123 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !1125, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64* %1, metadata !1126, metadata !DIExpression()), !dbg !1141
  %4 = bitcast [20 x i64]* %3 to i8*, !dbg !1142
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %4) #13, !dbg !1142
  call void @llvm.dbg.declare(metadata [20 x i64]* %3, metadata !1127, metadata !DIExpression()), !dbg !1143
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false), !dbg !1143
  %5 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 0, !dbg !1144
  call void @llvm.dbg.value(metadata i64* %5, metadata !1131, metadata !DIExpression()), !dbg !1141
  %6 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 5, !dbg !1145
  call void @llvm.dbg.value(metadata i64* %6, metadata !1132, metadata !DIExpression()), !dbg !1141
  %7 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 10, !dbg !1146
  call void @llvm.dbg.value(metadata i64* %7, metadata !1133, metadata !DIExpression()), !dbg !1141
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %5, i64* noundef %1, i32 noundef 1), !dbg !1147
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %5, i32 noundef 2), !dbg !1148
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef %1), !dbg !1149
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %5, i64* noundef nonnull %7, i64* noundef nonnull %5), !dbg !1150
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %5, i32 noundef 1), !dbg !1151
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !1152
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %7, i32 noundef 5), !dbg !1153
  call void @llvm.dbg.value(metadata i64* %6, metadata !1134, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64* %7, metadata !1135, metadata !DIExpression()), !dbg !1141
  %8 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i32 0, i32 15, !dbg !1154
  call void @llvm.dbg.value(metadata i64* %8, metadata !1136, metadata !DIExpression()), !dbg !1141
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !1155
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %7, i32 noundef 10), !dbg !1156
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %8, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !1157
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %8, i32 noundef 20), !dbg !1158
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %6, i64* noundef nonnull %6, i64* noundef nonnull %8), !dbg !1159
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* noundef nonnull %6, i32 noundef 10), !dbg !1160
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %7, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !1161
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %7, i32 noundef 50), !dbg !1162
  call void @llvm.dbg.value(metadata i64* %5, metadata !1137, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64* %6, metadata !1138, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64* %7, metadata !1139, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64* %8, metadata !1140, metadata !DIExpression()), !dbg !1141
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %8, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !1163
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(i64* noundef nonnull %6, i64* noundef nonnull %8, i32 noundef 100), !dbg !1164
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %6, i64* noundef nonnull %6, i64* noundef nonnull %8), !dbg !1165
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* noundef nonnull %6, i32 noundef 50), !dbg !1166
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %6, i64* noundef nonnull %6, i64* noundef nonnull %7), !dbg !1167
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* noundef nonnull %6, i32 noundef 5), !dbg !1168
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef %0, i64* noundef nonnull %6, i64* noundef nonnull %5), !dbg !1169
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %4) #13, !dbg !1170
  ret void, !dbg !1170
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(i64* nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !1171 {
  %3 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata i64* %0, metadata !1175, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i32 %1, metadata !1176, metadata !DIExpression()), !dbg !1180
  %5 = bitcast [5 x %struct.FStar_UInt128_uint128]* %3 to i8*, !dbg !1181
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #13, !dbg !1181
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %3, metadata !1177, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 0, metadata !1178, metadata !DIExpression()), !dbg !1183
  %6 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !1178, metadata !DIExpression()), !dbg !1183
  br label %9, !dbg !1184

7:                                                ; preds = %9
  %8 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 0, !dbg !1185
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_(i64* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %8, i32 noundef %1), !dbg !1186
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #13, !dbg !1187
  ret void, !dbg !1187

9:                                                ; preds = %2, %9
  %10 = phi i32 [ 0, %2 ], [ %13, %9 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !1178, metadata !DIExpression()), !dbg !1183
  %11 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %3, i32 0, i32 %10, !dbg !1188
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #13, !dbg !1190
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0) #13, !dbg !1190
  %12 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !1190
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %12, i8* noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false), !dbg !1190, !tbaa.struct !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13, !dbg !1190
  %13 = add nuw nsw i32 %10, 1, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %13, metadata !1178, metadata !DIExpression()), !dbg !1183
  %14 = icmp eq i32 %13, 5, !dbg !1192
  br i1 %14, label %7, label %9, !dbg !1184, !llvm.loop !1193
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_first_carry_full(i64* nocapture noundef %0) unnamed_addr #4 !dbg !1195 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1197, metadata !DIExpression()), !dbg !1198
  call fastcc void @Hacl_EC_Format_fcontract_first_carry_pass(i64* noundef %0), !dbg !1199
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i64* noundef %0), !dbg !1200
  ret void, !dbg !1201
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_second_carry_full(i64* nocapture noundef %0) unnamed_addr #4 !dbg !1202 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1204, metadata !DIExpression()), !dbg !1209
  call fastcc void @Hacl_EC_Format_fcontract_second_carry_pass(i64* noundef %0), !dbg !1210
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i64* noundef %0), !dbg !1211
  %2 = load i64, i64* %0, align 4, !dbg !1212, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %2, metadata !1205, metadata !DIExpression()), !dbg !1209
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1213
  %4 = load i64, i64* %3, align 4, !dbg !1213, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %4, metadata !1206, metadata !DIExpression()), !dbg !1209
  %5 = and i64 %2, 2251799813685247, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %5, metadata !1207, metadata !DIExpression()), !dbg !1209
  %6 = lshr i64 %2, 51, !dbg !1215
  %7 = add i64 %4, %6, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %7, metadata !1208, metadata !DIExpression()), !dbg !1209
  store i64 %5, i64* %0, align 4, !dbg !1217, !tbaa !65
  store i64 %7, i64* %3, align 4, !dbg !1218, !tbaa !65
  ret void, !dbg !1219
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_trim(i64* nocapture noundef %0) unnamed_addr #4 !dbg !1220 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1222, metadata !DIExpression()), !dbg !1239
  %2 = load i64, i64* %0, align 4, !dbg !1240, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %2, metadata !1223, metadata !DIExpression()), !dbg !1239
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1241
  %4 = load i64, i64* %3, align 4, !dbg !1241, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %4, metadata !1224, metadata !DIExpression()), !dbg !1239
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !1242
  %6 = load i64, i64* %5, align 4, !dbg !1242, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %6, metadata !1225, metadata !DIExpression()), !dbg !1239
  %7 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !1243
  %8 = load i64, i64* %7, align 4, !dbg !1243, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %8, metadata !1226, metadata !DIExpression()), !dbg !1239
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !1244
  %10 = load i64, i64* %9, align 4, !dbg !1244, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %10, metadata !1227, metadata !DIExpression()), !dbg !1239
  %11 = call fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %2), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %11, metadata !1228, metadata !DIExpression()), !dbg !1239
  %12 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %4), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %12, metadata !1229, metadata !DIExpression()), !dbg !1239
  %13 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %6), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %13, metadata !1230, metadata !DIExpression()), !dbg !1239
  %14 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %8), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %14, metadata !1231, metadata !DIExpression()), !dbg !1239
  %15 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %10), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %15, metadata !1232, metadata !DIExpression()), !dbg !1239
  %16 = and i64 %12, %11, !dbg !1250
  %17 = and i64 %16, %13, !dbg !1251
  %18 = and i64 %17, %14, !dbg !1252
  %19 = and i64 %18, %15, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %19, metadata !1233, metadata !DIExpression()), !dbg !1239
  %20 = and i64 %19, 2251799813685229, !dbg !1254
  %21 = sub i64 %2, %20, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %21, metadata !1234, metadata !DIExpression()), !dbg !1239
  %22 = and i64 %19, 2251799813685247, !dbg !1256
  %23 = sub i64 %4, %22, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %23, metadata !1235, metadata !DIExpression()), !dbg !1239
  %24 = sub i64 %6, %22, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %24, metadata !1236, metadata !DIExpression()), !dbg !1239
  %25 = sub i64 %8, %22, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %25, metadata !1237, metadata !DIExpression()), !dbg !1239
  %26 = sub i64 %10, %22, !dbg !1260
  call void @llvm.dbg.value(metadata i64 %26, metadata !1238, metadata !DIExpression()), !dbg !1239
  store i64 %21, i64* %0, align 4, !dbg !1261, !tbaa !65
  store i64 %23, i64* %3, align 4, !dbg !1262, !tbaa !65
  store i64 %24, i64* %5, align 4, !dbg !1263, !tbaa !65
  store i64 %25, i64* %7, align 4, !dbg !1264, !tbaa !65
  store i64 %26, i64* %9, align 4, !dbg !1265, !tbaa !65
  ret void, !dbg !1266
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_store(i8* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #4 !dbg !1267 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1269, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64* %1, metadata !1270, metadata !DIExpression()), !dbg !1284
  %3 = load i64, i64* %1, align 4, !dbg !1285, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %3, metadata !1271, metadata !DIExpression()), !dbg !1284
  %4 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !1286
  %5 = load i64, i64* %4, align 4, !dbg !1286, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %5, metadata !1272, metadata !DIExpression()), !dbg !1284
  %6 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !1287
  %7 = load i64, i64* %6, align 4, !dbg !1287, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %7, metadata !1273, metadata !DIExpression()), !dbg !1284
  %8 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !1288
  %9 = load i64, i64* %8, align 4, !dbg !1288, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %9, metadata !1274, metadata !DIExpression()), !dbg !1284
  %10 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1289
  %11 = load i64, i64* %10, align 4, !dbg !1289, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %11, metadata !1275, metadata !DIExpression()), !dbg !1284
  %12 = shl i64 %5, 51, !dbg !1290
  %13 = or i64 %12, %3, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %13, metadata !1276, metadata !DIExpression()), !dbg !1284
  %14 = shl i64 %7, 38, !dbg !1292
  %15 = lshr i64 %5, 13, !dbg !1293
  %16 = or i64 %14, %15, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %16, metadata !1277, metadata !DIExpression()), !dbg !1284
  %17 = shl i64 %9, 25, !dbg !1295
  %18 = lshr i64 %7, 26, !dbg !1296
  %19 = or i64 %17, %18, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %19, metadata !1278, metadata !DIExpression()), !dbg !1284
  %20 = shl i64 %11, 12, !dbg !1298
  %21 = lshr i64 %9, 39, !dbg !1299
  %22 = or i64 %20, %21, !dbg !1300
  call void @llvm.dbg.value(metadata i64 %22, metadata !1279, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8* %0, metadata !1280, metadata !DIExpression()), !dbg !1284
  %23 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !1301
  call void @llvm.dbg.value(metadata i8* %23, metadata !1281, metadata !DIExpression()), !dbg !1284
  %24 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1302
  call void @llvm.dbg.value(metadata i8* %24, metadata !1282, metadata !DIExpression()), !dbg !1284
  %25 = getelementptr inbounds i8, i8* %0, i32 24, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %25, metadata !1283, metadata !DIExpression()), !dbg !1284
  call fastcc void @store64(i8* noundef %0, i64 noundef %13), !dbg !1304
  call fastcc void @store64(i8* noundef nonnull %23, i64 noundef %16), !dbg !1305
  call fastcc void @store64(i8* noundef nonnull %24, i64 noundef %19), !dbg !1306
  call fastcc void @store64(i8* noundef nonnull %25, i64 noundef %22), !dbg !1307
  ret void, !dbg !1308
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_first_carry_pass(i64* nocapture noundef %0) unnamed_addr #4 !dbg !1309 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1311, metadata !DIExpression()), !dbg !1325
  %2 = load i64, i64* %0, align 4, !dbg !1326, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %2, metadata !1312, metadata !DIExpression()), !dbg !1325
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1327
  %4 = load i64, i64* %3, align 4, !dbg !1327, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %4, metadata !1313, metadata !DIExpression()), !dbg !1325
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !1328
  %6 = load i64, i64* %5, align 4, !dbg !1328, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %6, metadata !1314, metadata !DIExpression()), !dbg !1325
  %7 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !1329
  %8 = load i64, i64* %7, align 4, !dbg !1329, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %8, metadata !1315, metadata !DIExpression()), !dbg !1325
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !1330
  %10 = load i64, i64* %9, align 4, !dbg !1330, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %10, metadata !1316, metadata !DIExpression()), !dbg !1325
  %11 = lshr i64 %2, 51, !dbg !1331
  %12 = add i64 %4, %11, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %12, metadata !1317, metadata !DIExpression()), !dbg !1325
  %13 = and i64 %2, 2251799813685247, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %13, metadata !1318, metadata !DIExpression()), !dbg !1325
  %14 = lshr i64 %12, 51, !dbg !1334
  %15 = add i64 %14, %6, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %15, metadata !1319, metadata !DIExpression()), !dbg !1325
  %16 = and i64 %12, 2251799813685247, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %16, metadata !1320, metadata !DIExpression()), !dbg !1325
  %17 = lshr i64 %15, 51, !dbg !1337
  %18 = add i64 %17, %8, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %18, metadata !1321, metadata !DIExpression()), !dbg !1325
  %19 = and i64 %15, 2251799813685247, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %19, metadata !1322, metadata !DIExpression()), !dbg !1325
  %20 = lshr i64 %18, 51, !dbg !1340
  %21 = add i64 %20, %10, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %21, metadata !1323, metadata !DIExpression()), !dbg !1325
  %22 = and i64 %18, 2251799813685247, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %22, metadata !1324, metadata !DIExpression()), !dbg !1325
  store i64 %13, i64* %0, align 4, !dbg !1343, !tbaa !65
  store i64 %16, i64* %3, align 4, !dbg !1344, !tbaa !65
  store i64 %19, i64* %5, align 4, !dbg !1345, !tbaa !65
  store i64 %22, i64* %7, align 4, !dbg !1346, !tbaa !65
  store i64 %21, i64* %9, align 4, !dbg !1347, !tbaa !65
  ret void, !dbg !1348
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Modulo_carry_top(i64* nocapture noundef %0) unnamed_addr #4 !dbg !1349 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1351, metadata !DIExpression()), !dbg !1356
  %2 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !1357
  %3 = load i64, i64* %2, align 4, !dbg !1357, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %3, metadata !1352, metadata !DIExpression()), !dbg !1356
  %4 = load i64, i64* %0, align 4, !dbg !1358, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1356
  %5 = and i64 %3, 2251799813685247, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %5, metadata !1354, metadata !DIExpression()), !dbg !1356
  %6 = lshr i64 %3, 51, !dbg !1360
  %7 = mul nuw nsw i64 %6, 19, !dbg !1361
  %8 = add i64 %7, %4, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %8, metadata !1355, metadata !DIExpression()), !dbg !1356
  store i64 %5, i64* %2, align 4, !dbg !1363, !tbaa !65
  store i64 %8, i64* %0, align 4, !dbg !1364, !tbaa !65
  ret void, !dbg !1365
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_EC_Format_fcontract_second_carry_pass(i64* nocapture noundef %0) unnamed_addr #4 !dbg !1366 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1368, metadata !DIExpression()), !dbg !1382
  %2 = load i64, i64* %0, align 4, !dbg !1383, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %2, metadata !1369, metadata !DIExpression()), !dbg !1382
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1384
  %4 = load i64, i64* %3, align 4, !dbg !1384, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %4, metadata !1370, metadata !DIExpression()), !dbg !1382
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !1385
  %6 = load i64, i64* %5, align 4, !dbg !1385, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %6, metadata !1371, metadata !DIExpression()), !dbg !1382
  %7 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !1386
  %8 = load i64, i64* %7, align 4, !dbg !1386, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %8, metadata !1372, metadata !DIExpression()), !dbg !1382
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !1387
  %10 = load i64, i64* %9, align 4, !dbg !1387, !tbaa !65
  call void @llvm.dbg.value(metadata i64 %10, metadata !1373, metadata !DIExpression()), !dbg !1382
  %11 = lshr i64 %2, 51, !dbg !1388
  %12 = add i64 %4, %11, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %12, metadata !1374, metadata !DIExpression()), !dbg !1382
  %13 = and i64 %2, 2251799813685247, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %13, metadata !1375, metadata !DIExpression()), !dbg !1382
  %14 = lshr i64 %12, 51, !dbg !1391
  %15 = add i64 %14, %6, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %15, metadata !1376, metadata !DIExpression()), !dbg !1382
  %16 = and i64 %12, 2251799813685247, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %16, metadata !1377, metadata !DIExpression()), !dbg !1382
  %17 = lshr i64 %15, 51, !dbg !1394
  %18 = add i64 %17, %8, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %18, metadata !1378, metadata !DIExpression()), !dbg !1382
  %19 = and i64 %15, 2251799813685247, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %19, metadata !1379, metadata !DIExpression()), !dbg !1382
  %20 = lshr i64 %18, 51, !dbg !1397
  %21 = add i64 %20, %10, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %21, metadata !1380, metadata !DIExpression()), !dbg !1382
  %22 = and i64 %18, 2251799813685247, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %22, metadata !1381, metadata !DIExpression()), !dbg !1382
  store i64 %13, i64* %0, align 4, !dbg !1400, !tbaa !65
  store i64 %16, i64* %3, align 4, !dbg !1401, !tbaa !65
  store i64 %19, i64* %5, align 4, !dbg !1402, !tbaa !65
  store i64 %22, i64* %7, align 4, !dbg !1403, !tbaa !65
  store i64 %21, i64* %9, align 4, !dbg !1404, !tbaa !65
  ret void, !dbg !1405
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %0) unnamed_addr #10 !dbg !1406 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1411, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 2251799813685229, metadata !1412, metadata !DIExpression()), !dbg !1415
  %2 = and i64 %0, 9223372036854775807, !dbg !1416
  %3 = add nsw i64 %2, -2251799813685229, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %3, metadata !1413, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %0, metadata !1414, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !1415
  %4 = or i64 %3, %0, !dbg !1418
  %5 = ashr i64 %4, 63, !dbg !1418
  %6 = xor i64 %5, -1, !dbg !1418
  ret i64 %6, !dbg !1419
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %0) unnamed_addr #10 !dbg !1420 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1422, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i64 2251799813685247, metadata !1423, metadata !DIExpression()), !dbg !1424
  %2 = xor i64 %0, -2251799813685248, !dbg !1425
  call void @llvm.dbg.value(metadata i64 %0, metadata !1422, metadata !DIExpression(DW_OP_constu, 18444492273895866368, DW_OP_xor, DW_OP_stack_value)), !dbg !1424
  %3 = shl i64 %0, 32, !dbg !1426
  %4 = and i64 %2, %3, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %4, metadata !1422, metadata !DIExpression()), !dbg !1424
  %5 = shl i64 %4, 16, !dbg !1428
  %6 = and i64 %5, %4, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %6, metadata !1422, metadata !DIExpression()), !dbg !1424
  %7 = shl i64 %6, 8, !dbg !1430
  %8 = and i64 %7, %6, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %8, metadata !1422, metadata !DIExpression()), !dbg !1424
  %9 = shl i64 %8, 4, !dbg !1432
  %10 = and i64 %9, %8, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %10, metadata !1422, metadata !DIExpression()), !dbg !1424
  %11 = shl i64 %10, 2, !dbg !1434
  %12 = and i64 %11, %10, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %12, metadata !1422, metadata !DIExpression()), !dbg !1424
  %13 = shl i64 %12, 1, !dbg !1436
  %14 = and i64 %13, %12, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %14, metadata !1422, metadata !DIExpression()), !dbg !1424
  %15 = ashr i64 %14, 63, !dbg !1438
  ret i64 %15, !dbg !1439
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store64(i8* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #11 !dbg !1440 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1444, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %1, metadata !1445, metadata !DIExpression()), !dbg !1446
  %3 = bitcast i8* %0 to i64*, !dbg !1447
  store i64 %1, i64* %3, align 1, !dbg !1447
  ret void, !dbg !1448
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Curve25519.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "7095fd7f3c6a8710b4a7e7ecfb36b1c5")
!2 = !{!3, !8, !11, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 48, baseType: !10)
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !13)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !15, line: 27, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !6, line: 47, baseType: !17)
!17 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!18 = !{i32 1, !"NumRegisterParameters", i32 0}
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!26 = distinct !DISubprogram(name: "Hacl_EC_crypto_scalarmult", scope: !1, file: !1, line: 807, type: !27, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!30 = !{!31, !32, !33, !34, !38, !40, !41, !42, !46, !47, !48, !49, !50, !51, !52, !56, !57}
!31 = !DILocalVariable(name: "mypublic", arg: 1, scope: !26, file: !1, line: 807, type: !29)
!32 = !DILocalVariable(name: "secret", arg: 2, scope: !26, file: !1, line: 807, type: !29)
!33 = !DILocalVariable(name: "basepoint", arg: 3, scope: !26, file: !1, line: 807, type: !29)
!34 = !DILocalVariable(name: "buf0", scope: !26, file: !1, line: 809, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 640, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 10)
!38 = !DILocalVariable(name: "x0", scope: !26, file: !1, line: 810, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!40 = !DILocalVariable(name: "z", scope: !26, file: !1, line: 811, type: !39)
!41 = !DILocalVariable(name: "q", scope: !26, file: !1, line: 814, type: !39)
!42 = !DILocalVariable(name: "e", scope: !26, file: !1, line: 815, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 32)
!46 = !DILocalVariable(name: "e0", scope: !26, file: !1, line: 817, type: !11)
!47 = !DILocalVariable(name: "e31", scope: !26, file: !1, line: 818, type: !11)
!48 = !DILocalVariable(name: "e01", scope: !26, file: !1, line: 819, type: !11)
!49 = !DILocalVariable(name: "e311", scope: !26, file: !1, line: 820, type: !11)
!50 = !DILocalVariable(name: "e312", scope: !26, file: !1, line: 821, type: !11)
!51 = !DILocalVariable(name: "scalar", scope: !26, file: !1, line: 824, type: !29)
!52 = !DILocalVariable(name: "buf", scope: !26, file: !1, line: 825, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 960, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 15)
!56 = !DILocalVariable(name: "nq", scope: !26, file: !1, line: 826, type: !39)
!57 = !DILocalVariable(name: "x", scope: !26, file: !1, line: 827, type: !39)
!58 = !DILocation(line: 0, scope: !26)
!59 = !DILocation(line: 809, column: 3, scope: !26)
!60 = !DILocation(line: 809, column: 12, scope: !26)
!61 = !DILocation(line: 810, column: 18, scope: !26)
!62 = !DILocation(line: 811, column: 22, scope: !26)
!63 = !DILocation(line: 812, column: 3, scope: !26)
!64 = !DILocation(line: 813, column: 9, scope: !26)
!65 = !{!66, !66, i64 0}
!66 = !{!"long long", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 815, column: 3, scope: !26)
!70 = !DILocation(line: 815, column: 11, scope: !26)
!71 = !DILocation(line: 816, column: 3, scope: !26)
!72 = !DILocation(line: 817, column: 16, scope: !26)
!73 = !{!67, !67, i64 0}
!74 = !DILocation(line: 818, column: 17, scope: !26)
!75 = !DILocation(line: 819, column: 20, scope: !26)
!76 = !DILocation(line: 820, column: 22, scope: !26)
!77 = !DILocation(line: 821, column: 23, scope: !26)
!78 = !DILocation(line: 822, column: 9, scope: !26)
!79 = !DILocation(line: 823, column: 10, scope: !26)
!80 = !DILocation(line: 825, column: 3, scope: !26)
!81 = !DILocation(line: 825, column: 12, scope: !26)
!82 = !DILocation(line: 826, column: 18, scope: !26)
!83 = !DILocation(line: 828, column: 9, scope: !26)
!84 = !DILocation(line: 829, column: 3, scope: !26)
!85 = !DILocation(line: 830, column: 3, scope: !26)
!86 = !DILocation(line: 831, column: 1, scope: !26)
!87 = distinct !DISubprogram(name: "Hacl_EC_Format_fexpand", scope: !1, file: !1, line: 656, type: !88, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !39, !29}
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!91 = !DILocalVariable(name: "output", arg: 1, scope: !87, file: !1, line: 656, type: !39)
!92 = !DILocalVariable(name: "input", arg: 2, scope: !87, file: !1, line: 656, type: !29)
!93 = !DILocalVariable(name: "i0", scope: !87, file: !1, line: 658, type: !8)
!94 = !DILocalVariable(name: "x00", scope: !87, file: !1, line: 659, type: !29)
!95 = !DILocalVariable(name: "i1", scope: !87, file: !1, line: 660, type: !8)
!96 = !DILocalVariable(name: "x01", scope: !87, file: !1, line: 661, type: !29)
!97 = !DILocalVariable(name: "i2", scope: !87, file: !1, line: 662, type: !8)
!98 = !DILocalVariable(name: "x02", scope: !87, file: !1, line: 663, type: !29)
!99 = !DILocalVariable(name: "i3", scope: !87, file: !1, line: 664, type: !8)
!100 = !DILocalVariable(name: "x0", scope: !87, file: !1, line: 665, type: !29)
!101 = !DILocalVariable(name: "i4", scope: !87, file: !1, line: 666, type: !8)
!102 = !DILocalVariable(name: "output0", scope: !87, file: !1, line: 667, type: !8)
!103 = !DILocalVariable(name: "output1", scope: !87, file: !1, line: 668, type: !8)
!104 = !DILocalVariable(name: "output2", scope: !87, file: !1, line: 669, type: !8)
!105 = !DILocalVariable(name: "output3", scope: !87, file: !1, line: 670, type: !8)
!106 = !DILocalVariable(name: "output4", scope: !87, file: !1, line: 671, type: !8)
!107 = !DILocation(line: 0, scope: !87)
!108 = !DILocation(line: 658, column: 17, scope: !87)
!109 = !DILocation(line: 659, column: 24, scope: !87)
!110 = !DILocation(line: 660, column: 17, scope: !87)
!111 = !DILocation(line: 661, column: 24, scope: !87)
!112 = !DILocation(line: 662, column: 17, scope: !87)
!113 = !DILocation(line: 663, column: 24, scope: !87)
!114 = !DILocation(line: 664, column: 17, scope: !87)
!115 = !DILocation(line: 665, column: 23, scope: !87)
!116 = !DILocation(line: 666, column: 17, scope: !87)
!117 = !DILocation(line: 667, column: 25, scope: !87)
!118 = !DILocation(line: 668, column: 25, scope: !87)
!119 = !DILocation(line: 668, column: 41, scope: !87)
!120 = !DILocation(line: 669, column: 25, scope: !87)
!121 = !DILocation(line: 669, column: 41, scope: !87)
!122 = !DILocation(line: 670, column: 25, scope: !87)
!123 = !DILocation(line: 670, column: 41, scope: !87)
!124 = !DILocation(line: 671, column: 25, scope: !87)
!125 = !DILocation(line: 671, column: 42, scope: !87)
!126 = !DILocation(line: 672, column: 14, scope: !87)
!127 = !DILocation(line: 673, column: 3, scope: !87)
!128 = !DILocation(line: 673, column: 14, scope: !87)
!129 = !DILocation(line: 674, column: 3, scope: !87)
!130 = !DILocation(line: 674, column: 14, scope: !87)
!131 = !DILocation(line: 675, column: 3, scope: !87)
!132 = !DILocation(line: 675, column: 14, scope: !87)
!133 = !DILocation(line: 676, column: 3, scope: !87)
!134 = !DILocation(line: 676, column: 14, scope: !87)
!135 = !DILocation(line: 677, column: 1, scope: !87)
!136 = distinct !DISubprogram(name: "Hacl_EC_Ladder_cmult", scope: !1, file: !1, line: 643, type: !137, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !39, !29, !39}
!139 = !{!140, !141, !142, !143, !147, !148, !149, !150}
!140 = !DILocalVariable(name: "result", arg: 1, scope: !136, file: !1, line: 643, type: !39)
!141 = !DILocalVariable(name: "n1", arg: 2, scope: !136, file: !1, line: 643, type: !29)
!142 = !DILocalVariable(name: "q", arg: 3, scope: !136, file: !1, line: 643, type: !39)
!143 = !DILocalVariable(name: "point_buf", scope: !136, file: !1, line: 645, type: !144)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2560, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 40)
!147 = !DILocalVariable(name: "nq", scope: !136, file: !1, line: 646, type: !39)
!148 = !DILocalVariable(name: "nqpq", scope: !136, file: !1, line: 647, type: !39)
!149 = !DILocalVariable(name: "nq2", scope: !136, file: !1, line: 648, type: !39)
!150 = !DILocalVariable(name: "nqpq2", scope: !136, file: !1, line: 649, type: !39)
!151 = !DILocation(line: 0, scope: !136)
!152 = !DILocation(line: 645, column: 3, scope: !136)
!153 = !DILocation(line: 645, column: 12, scope: !136)
!154 = !DILocation(line: 646, column: 18, scope: !136)
!155 = !DILocation(line: 647, column: 30, scope: !136)
!156 = !DILocation(line: 648, column: 29, scope: !136)
!157 = !DILocation(line: 649, column: 31, scope: !136)
!158 = !DILocation(line: 650, column: 3, scope: !136)
!159 = !DILocation(line: 651, column: 10, scope: !136)
!160 = !DILocation(line: 652, column: 3, scope: !136)
!161 = !DILocation(line: 653, column: 3, scope: !136)
!162 = !DILocation(line: 654, column: 1, scope: !136)
!163 = distinct !DISubprogram(name: "Hacl_EC_Format_scalar_of_point", scope: !1, file: !1, line: 795, type: !164, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !29, !39}
!166 = !{!167, !168, !169, !170, !171, !172, !173}
!167 = !DILocalVariable(name: "scalar", arg: 1, scope: !163, file: !1, line: 795, type: !29)
!168 = !DILocalVariable(name: "point", arg: 2, scope: !163, file: !1, line: 795, type: !39)
!169 = !DILocalVariable(name: "x", scope: !163, file: !1, line: 797, type: !39)
!170 = !DILocalVariable(name: "z", scope: !163, file: !1, line: 798, type: !39)
!171 = !DILocalVariable(name: "buf", scope: !163, file: !1, line: 799, type: !35)
!172 = !DILocalVariable(name: "zmone", scope: !163, file: !1, line: 800, type: !39)
!173 = !DILocalVariable(name: "sc", scope: !163, file: !1, line: 801, type: !39)
!174 = !DILocation(line: 0, scope: !163)
!175 = !DILocation(line: 798, column: 23, scope: !163)
!176 = !DILocation(line: 799, column: 3, scope: !163)
!177 = !DILocation(line: 799, column: 12, scope: !163)
!178 = !DILocation(line: 800, column: 21, scope: !163)
!179 = !DILocation(line: 801, column: 22, scope: !163)
!180 = !DILocation(line: 802, column: 3, scope: !163)
!181 = !DILocation(line: 803, column: 3, scope: !163)
!182 = !DILocation(line: 804, column: 3, scope: !163)
!183 = !DILocation(line: 805, column: 1, scope: !163)
!184 = distinct !DISubprogram(name: "Hacl_Curve25519_crypto_scalarmult", scope: !1, file: !1, line: 833, type: !27, scopeLine: 834, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!185 = !{!186, !187, !188}
!186 = !DILocalVariable(name: "mypublic", arg: 1, scope: !184, file: !1, line: 833, type: !29)
!187 = !DILocalVariable(name: "secret", arg: 2, scope: !184, file: !1, line: 833, type: !29)
!188 = !DILocalVariable(name: "basepoint", arg: 3, scope: !184, file: !1, line: 833, type: !29)
!189 = !DILocation(line: 0, scope: !184)
!190 = !DILocation(line: 835, column: 3, scope: !184)
!191 = !DILocation(line: 836, column: 1, scope: !184)
!192 = distinct !DISubprogram(name: "load64", scope: !193, file: !193, line: 347, type: !194, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !196)
!193 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!194 = !DISubroutineType(types: !195)
!195 = !{!8, !29}
!196 = !{!197, !198}
!197 = !DILocalVariable(name: "b", arg: 1, scope: !192, file: !193, line: 347, type: !29)
!198 = !DILocalVariable(name: "x", scope: !192, file: !193, line: 348, type: !8)
!199 = !DILocation(line: 0, scope: !192)
!200 = !DILocation(line: 349, column: 3, scope: !192)
!201 = !DILocation(line: 350, column: 3, scope: !192)
!202 = distinct !DISubprogram(name: "Hacl_EC_Point_copy", scope: !1, file: !1, line: 507, type: !203, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !39, !39}
!205 = !{!206, !207}
!206 = !DILocalVariable(name: "output", arg: 1, scope: !202, file: !1, line: 507, type: !39)
!207 = !DILocalVariable(name: "input", arg: 2, scope: !202, file: !1, line: 507, type: !39)
!208 = !DILocation(line: 0, scope: !202)
!209 = !DILocation(line: 509, column: 3, scope: !202)
!210 = !DILocation(line: 510, column: 17, scope: !202)
!211 = !DILocation(line: 510, column: 3, scope: !202)
!212 = !DILocation(line: 511, column: 11, scope: !202)
!213 = !DILocation(line: 513, column: 1, scope: !202)
!214 = distinct !DISubprogram(name: "Hacl_EC_Ladder_BigLoop_cmult_big_loop", scope: !1, file: !1, line: 624, type: !215, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !29, !39, !39, !39, !39, !39, !3}
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !228}
!218 = !DILocalVariable(name: "n1", arg: 1, scope: !214, file: !1, line: 625, type: !29)
!219 = !DILocalVariable(name: "nq", arg: 2, scope: !214, file: !1, line: 626, type: !39)
!220 = !DILocalVariable(name: "nqpq", arg: 3, scope: !214, file: !1, line: 627, type: !39)
!221 = !DILocalVariable(name: "nq2", arg: 4, scope: !214, file: !1, line: 628, type: !39)
!222 = !DILocalVariable(name: "nqpq2", arg: 5, scope: !214, file: !1, line: 629, type: !39)
!223 = !DILocalVariable(name: "q", arg: 6, scope: !214, file: !1, line: 630, type: !39)
!224 = !DILocalVariable(name: "i", arg: 7, scope: !214, file: !1, line: 631, type: !3)
!225 = !DILocalVariable(name: "i1", scope: !226, file: !1, line: 636, type: !3)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 635, column: 3)
!227 = distinct !DILexicalBlock(scope: !214, file: !1, line: 634, column: 7)
!228 = !DILocalVariable(name: "byte", scope: !226, file: !1, line: 637, type: !11)
!229 = !DILocation(line: 0, scope: !214)
!230 = !DILocation(line: 634, column: 11, scope: !227)
!231 = !DILocation(line: 634, column: 7, scope: !214)
!232 = !DILocation(line: 636, column: 21, scope: !226)
!233 = !DILocation(line: 0, scope: !226)
!234 = !DILocation(line: 637, column: 20, scope: !226)
!235 = !DILocation(line: 638, column: 5, scope: !226)
!236 = !DILocation(line: 639, column: 5, scope: !226)
!237 = !DILocation(line: 640, column: 3, scope: !226)
!238 = !DILocation(line: 641, column: 1, scope: !214)
!239 = distinct !DISubprogram(name: "Hacl_EC_Ladder_SmallLoop_cmult_small_loop", scope: !1, file: !1, line: 604, type: !240, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !39, !39, !39, !39, !39, !11, !3}
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !253}
!243 = !DILocalVariable(name: "nq", arg: 1, scope: !239, file: !1, line: 605, type: !39)
!244 = !DILocalVariable(name: "nqpq", arg: 2, scope: !239, file: !1, line: 606, type: !39)
!245 = !DILocalVariable(name: "nq2", arg: 3, scope: !239, file: !1, line: 607, type: !39)
!246 = !DILocalVariable(name: "nqpq2", arg: 4, scope: !239, file: !1, line: 608, type: !39)
!247 = !DILocalVariable(name: "q", arg: 5, scope: !239, file: !1, line: 609, type: !39)
!248 = !DILocalVariable(name: "byt", arg: 6, scope: !239, file: !1, line: 610, type: !11)
!249 = !DILocalVariable(name: "i", arg: 7, scope: !239, file: !1, line: 611, type: !3)
!250 = !DILocalVariable(name: "i_", scope: !251, file: !1, line: 616, type: !3)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 615, column: 3)
!252 = distinct !DILexicalBlock(scope: !239, file: !1, line: 614, column: 7)
!253 = !DILocalVariable(name: "byt_", scope: !251, file: !1, line: 618, type: !11)
!254 = !DILocation(line: 0, scope: !239)
!255 = !DILocation(line: 614, column: 11, scope: !252)
!256 = !DILocation(line: 614, column: 7, scope: !239)
!257 = !DILocation(line: 616, column: 21, scope: !251)
!258 = !DILocation(line: 0, scope: !251)
!259 = !DILocation(line: 617, column: 5, scope: !251)
!260 = !DILocation(line: 618, column: 24, scope: !251)
!261 = !DILocation(line: 619, column: 5, scope: !251)
!262 = !DILocation(line: 620, column: 3, scope: !251)
!263 = !DILocation(line: 621, column: 1, scope: !239)
!264 = distinct !DISubprogram(name: "Hacl_EC_Ladder_SmallLoop_cmult_small_loop_double_step", scope: !1, file: !1, line: 589, type: !265, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !39, !39, !39, !39, !39, !11}
!267 = !{!268, !269, !270, !271, !272, !273, !274}
!268 = !DILocalVariable(name: "nq", arg: 1, scope: !264, file: !1, line: 590, type: !39)
!269 = !DILocalVariable(name: "nqpq", arg: 2, scope: !264, file: !1, line: 591, type: !39)
!270 = !DILocalVariable(name: "nq2", arg: 3, scope: !264, file: !1, line: 592, type: !39)
!271 = !DILocalVariable(name: "nqpq2", arg: 4, scope: !264, file: !1, line: 593, type: !39)
!272 = !DILocalVariable(name: "q", arg: 5, scope: !264, file: !1, line: 594, type: !39)
!273 = !DILocalVariable(name: "byt", arg: 6, scope: !264, file: !1, line: 595, type: !11)
!274 = !DILocalVariable(name: "byt1", scope: !264, file: !1, line: 599, type: !11)
!275 = !DILocation(line: 0, scope: !264)
!276 = !DILocation(line: 598, column: 3, scope: !264)
!277 = !DILocation(line: 599, column: 22, scope: !264)
!278 = !DILocation(line: 600, column: 3, scope: !264)
!279 = !DILocation(line: 601, column: 1, scope: !264)
!280 = distinct !DISubprogram(name: "Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step", scope: !1, file: !1, line: 572, type: !265, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289}
!282 = !DILocalVariable(name: "nq", arg: 1, scope: !280, file: !1, line: 573, type: !39)
!283 = !DILocalVariable(name: "nqpq", arg: 2, scope: !280, file: !1, line: 574, type: !39)
!284 = !DILocalVariable(name: "nq2", arg: 3, scope: !280, file: !1, line: 575, type: !39)
!285 = !DILocalVariable(name: "nqpq2", arg: 4, scope: !280, file: !1, line: 576, type: !39)
!286 = !DILocalVariable(name: "q", arg: 5, scope: !280, file: !1, line: 577, type: !39)
!287 = !DILocalVariable(name: "byt", arg: 6, scope: !280, file: !1, line: 578, type: !11)
!288 = !DILocalVariable(name: "bit", scope: !280, file: !1, line: 581, type: !8)
!289 = !DILocalVariable(name: "bit0", scope: !280, file: !1, line: 584, type: !8)
!290 = !DILocation(line: 0, scope: !280)
!291 = !DILocation(line: 581, column: 33, scope: !280)
!292 = !DILocation(line: 582, column: 3, scope: !280)
!293 = !DILocation(line: 583, column: 3, scope: !280)
!294 = !DILocation(line: 585, column: 3, scope: !280)
!295 = !DILocation(line: 586, column: 1, scope: !280)
!296 = distinct !DISubprogram(name: "Hacl_EC_Point_swap_conditional", scope: !1, file: !1, line: 500, type: !297, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !299)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !39, !39, !8}
!299 = !{!300, !301, !302, !303}
!300 = !DILocalVariable(name: "a", arg: 1, scope: !296, file: !1, line: 500, type: !39)
!301 = !DILocalVariable(name: "b", arg: 2, scope: !296, file: !1, line: 500, type: !39)
!302 = !DILocalVariable(name: "iswap", arg: 3, scope: !296, file: !1, line: 500, type: !8)
!303 = !DILocalVariable(name: "swap1", scope: !296, file: !1, line: 502, type: !8)
!304 = !DILocation(line: 0, scope: !296)
!305 = !DILocation(line: 502, column: 33, scope: !296)
!306 = !DILocation(line: 503, column: 3, scope: !296)
!307 = !DILocation(line: 504, column: 37, scope: !296)
!308 = !DILocation(line: 504, column: 55, scope: !296)
!309 = !DILocation(line: 504, column: 3, scope: !296)
!310 = !DILocation(line: 505, column: 1, scope: !296)
!311 = distinct !DISubprogram(name: "Hacl_EC_AddAndDouble_fmonty", scope: !1, file: !1, line: 516, type: !312, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !39, !39, !39, !39, !39}
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!315 = !DILocalVariable(name: "pp", arg: 1, scope: !311, file: !1, line: 517, type: !39)
!316 = !DILocalVariable(name: "ppq", arg: 2, scope: !311, file: !1, line: 518, type: !39)
!317 = !DILocalVariable(name: "p", arg: 3, scope: !311, file: !1, line: 519, type: !39)
!318 = !DILocalVariable(name: "pq", arg: 4, scope: !311, file: !1, line: 520, type: !39)
!319 = !DILocalVariable(name: "qmqp", arg: 5, scope: !311, file: !1, line: 521, type: !39)
!320 = !DILocalVariable(name: "qx", scope: !311, file: !1, line: 524, type: !39)
!321 = !DILocalVariable(name: "x2", scope: !311, file: !1, line: 525, type: !39)
!322 = !DILocalVariable(name: "z2", scope: !311, file: !1, line: 526, type: !39)
!323 = !DILocalVariable(name: "x3", scope: !311, file: !1, line: 527, type: !39)
!324 = !DILocalVariable(name: "z3", scope: !311, file: !1, line: 528, type: !39)
!325 = !DILocalVariable(name: "x", scope: !311, file: !1, line: 529, type: !39)
!326 = !DILocalVariable(name: "z", scope: !311, file: !1, line: 530, type: !39)
!327 = !DILocalVariable(name: "xprime", scope: !311, file: !1, line: 531, type: !39)
!328 = !DILocalVariable(name: "zprime", scope: !311, file: !1, line: 532, type: !39)
!329 = !DILocalVariable(name: "buf", scope: !311, file: !1, line: 533, type: !144)
!330 = !DILocalVariable(name: "origx", scope: !311, file: !1, line: 534, type: !39)
!331 = !DILocalVariable(name: "origxprime", scope: !311, file: !1, line: 535, type: !39)
!332 = !DILocalVariable(name: "xxprime0", scope: !311, file: !1, line: 536, type: !39)
!333 = !DILocalVariable(name: "zzprime0", scope: !311, file: !1, line: 537, type: !39)
!334 = !DILocalVariable(name: "origxprime0", scope: !311, file: !1, line: 546, type: !39)
!335 = !DILocalVariable(name: "xx0", scope: !311, file: !1, line: 547, type: !39)
!336 = !DILocalVariable(name: "zz0", scope: !311, file: !1, line: 548, type: !39)
!337 = !DILocalVariable(name: "xxprime", scope: !311, file: !1, line: 549, type: !39)
!338 = !DILocalVariable(name: "zzprime", scope: !311, file: !1, line: 550, type: !39)
!339 = !DILocalVariable(name: "zzzprime", scope: !311, file: !1, line: 551, type: !39)
!340 = !DILocalVariable(name: "zzz", scope: !311, file: !1, line: 560, type: !39)
!341 = !DILocalVariable(name: "xx", scope: !311, file: !1, line: 561, type: !39)
!342 = !DILocalVariable(name: "zz", scope: !311, file: !1, line: 562, type: !39)
!343 = !DILocalVariable(name: "scalar", scope: !311, file: !1, line: 565, type: !8)
!344 = !DILocation(line: 0, scope: !311)
!345 = !DILocation(line: 526, column: 21, scope: !311)
!346 = !DILocation(line: 528, column: 22, scope: !311)
!347 = !DILocation(line: 530, column: 19, scope: !311)
!348 = !DILocation(line: 532, column: 25, scope: !311)
!349 = !DILocation(line: 533, column: 3, scope: !311)
!350 = !DILocation(line: 533, column: 12, scope: !311)
!351 = !DILocation(line: 534, column: 21, scope: !311)
!352 = !DILocation(line: 535, column: 30, scope: !311)
!353 = !DILocation(line: 536, column: 28, scope: !311)
!354 = !DILocation(line: 537, column: 28, scope: !311)
!355 = !DILocation(line: 538, column: 3, scope: !311)
!356 = !DILocation(line: 539, column: 3, scope: !311)
!357 = !DILocation(line: 540, column: 3, scope: !311)
!358 = !DILocation(line: 541, column: 3, scope: !311)
!359 = !DILocation(line: 542, column: 3, scope: !311)
!360 = !DILocation(line: 543, column: 3, scope: !311)
!361 = !DILocation(line: 544, column: 3, scope: !311)
!362 = !DILocation(line: 545, column: 3, scope: !311)
!363 = !DILocation(line: 547, column: 23, scope: !311)
!364 = !DILocation(line: 548, column: 23, scope: !311)
!365 = !DILocation(line: 551, column: 28, scope: !311)
!366 = !DILocation(line: 552, column: 3, scope: !311)
!367 = !DILocation(line: 553, column: 3, scope: !311)
!368 = !DILocation(line: 554, column: 3, scope: !311)
!369 = !DILocation(line: 555, column: 3, scope: !311)
!370 = !DILocation(line: 556, column: 3, scope: !311)
!371 = !DILocation(line: 557, column: 3, scope: !311)
!372 = !DILocation(line: 558, column: 3, scope: !311)
!373 = !DILocation(line: 559, column: 3, scope: !311)
!374 = !DILocation(line: 560, column: 23, scope: !311)
!375 = !DILocation(line: 563, column: 3, scope: !311)
!376 = !DILocation(line: 564, column: 3, scope: !311)
!377 = !DILocation(line: 566, column: 3, scope: !311)
!378 = !DILocation(line: 567, column: 3, scope: !311)
!379 = !DILocation(line: 568, column: 3, scope: !311)
!380 = !DILocation(line: 569, column: 1, scope: !311)
!381 = distinct !DISubprogram(name: "Hacl_EC_Point_swap_conditional_", scope: !1, file: !1, line: 490, type: !382, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !39, !39, !8, !3}
!384 = !{!385, !386, !387, !388, !389}
!385 = !DILocalVariable(name: "a", arg: 1, scope: !381, file: !1, line: 490, type: !39)
!386 = !DILocalVariable(name: "b", arg: 2, scope: !381, file: !1, line: 490, type: !39)
!387 = !DILocalVariable(name: "swap1", arg: 3, scope: !381, file: !1, line: 490, type: !8)
!388 = !DILocalVariable(name: "ctr", arg: 4, scope: !381, file: !1, line: 490, type: !3)
!389 = !DILocalVariable(name: "i", scope: !390, file: !1, line: 495, type: !3)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 493, column: 3)
!391 = distinct !DILexicalBlock(scope: !381, file: !1, line: 492, column: 7)
!392 = !DILocation(line: 0, scope: !381)
!393 = !DILocation(line: 492, column: 13, scope: !391)
!394 = !DILocation(line: 492, column: 7, scope: !381)
!395 = !DILocation(line: 494, column: 5, scope: !390)
!396 = !DILocation(line: 495, column: 22, scope: !390)
!397 = !DILocation(line: 0, scope: !390)
!398 = !DILocation(line: 496, column: 5, scope: !390)
!399 = !DILocation(line: 497, column: 3, scope: !390)
!400 = !DILocation(line: 498, column: 1, scope: !381)
!401 = distinct !DISubprogram(name: "Hacl_EC_Point_swap_conditional_step", scope: !1, file: !1, line: 477, type: !382, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!403 = !DILocalVariable(name: "a", arg: 1, scope: !401, file: !1, line: 477, type: !39)
!404 = !DILocalVariable(name: "b", arg: 2, scope: !401, file: !1, line: 477, type: !39)
!405 = !DILocalVariable(name: "swap1", arg: 3, scope: !401, file: !1, line: 477, type: !8)
!406 = !DILocalVariable(name: "ctr", arg: 4, scope: !401, file: !1, line: 477, type: !3)
!407 = !DILocalVariable(name: "i", scope: !401, file: !1, line: 479, type: !3)
!408 = !DILocalVariable(name: "ai", scope: !401, file: !1, line: 480, type: !8)
!409 = !DILocalVariable(name: "bi", scope: !401, file: !1, line: 481, type: !8)
!410 = !DILocalVariable(name: "x", scope: !401, file: !1, line: 482, type: !8)
!411 = !DILocalVariable(name: "ai1", scope: !401, file: !1, line: 483, type: !8)
!412 = !DILocalVariable(name: "bi1", scope: !401, file: !1, line: 484, type: !8)
!413 = !DILocation(line: 0, scope: !401)
!414 = !DILocation(line: 479, column: 20, scope: !401)
!415 = !DILocation(line: 480, column: 17, scope: !401)
!416 = !DILocation(line: 481, column: 17, scope: !401)
!417 = !DILocation(line: 482, column: 28, scope: !401)
!418 = !DILocation(line: 482, column: 22, scope: !401)
!419 = !DILocation(line: 483, column: 21, scope: !401)
!420 = !DILocation(line: 484, column: 21, scope: !401)
!421 = !DILocation(line: 485, column: 8, scope: !401)
!422 = !DILocation(line: 486, column: 8, scope: !401)
!423 = !DILocation(line: 487, column: 1, scope: !401)
!424 = distinct !DISubprogram(name: "Hacl_Bignum_fsum", scope: !1, file: !1, line: 355, type: !203, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !425)
!425 = !{!426, !427, !428, !430, !431, !433, !434, !436, !437, !439, !440, !442}
!426 = !DILocalVariable(name: "a", arg: 1, scope: !424, file: !1, line: 355, type: !39)
!427 = !DILocalVariable(name: "b", arg: 2, scope: !424, file: !1, line: 355, type: !39)
!428 = !DILocalVariable(name: "xi", scope: !429, file: !1, line: 358, type: !8)
!429 = distinct !DILexicalBlock(scope: !424, file: !1, line: 357, column: 3)
!430 = !DILocalVariable(name: "yi", scope: !429, file: !1, line: 359, type: !8)
!431 = !DILocalVariable(name: "xi", scope: !432, file: !1, line: 363, type: !8)
!432 = distinct !DILexicalBlock(scope: !424, file: !1, line: 362, column: 3)
!433 = !DILocalVariable(name: "yi", scope: !432, file: !1, line: 364, type: !8)
!434 = !DILocalVariable(name: "xi", scope: !435, file: !1, line: 368, type: !8)
!435 = distinct !DILexicalBlock(scope: !424, file: !1, line: 367, column: 3)
!436 = !DILocalVariable(name: "yi", scope: !435, file: !1, line: 369, type: !8)
!437 = !DILocalVariable(name: "xi", scope: !438, file: !1, line: 373, type: !8)
!438 = distinct !DILexicalBlock(scope: !424, file: !1, line: 372, column: 3)
!439 = !DILocalVariable(name: "yi", scope: !438, file: !1, line: 374, type: !8)
!440 = !DILocalVariable(name: "xi", scope: !441, file: !1, line: 378, type: !8)
!441 = distinct !DILexicalBlock(scope: !424, file: !1, line: 377, column: 3)
!442 = !DILocalVariable(name: "yi", scope: !441, file: !1, line: 379, type: !8)
!443 = !DILocation(line: 0, scope: !424)
!444 = !DILocation(line: 358, column: 19, scope: !429)
!445 = !DILocation(line: 0, scope: !429)
!446 = !DILocation(line: 359, column: 19, scope: !429)
!447 = !DILocation(line: 360, column: 16, scope: !429)
!448 = !DILocation(line: 360, column: 11, scope: !429)
!449 = !DILocation(line: 363, column: 19, scope: !432)
!450 = !DILocation(line: 0, scope: !432)
!451 = !DILocation(line: 364, column: 19, scope: !432)
!452 = !DILocation(line: 365, column: 16, scope: !432)
!453 = !DILocation(line: 365, column: 11, scope: !432)
!454 = !DILocation(line: 368, column: 19, scope: !435)
!455 = !DILocation(line: 0, scope: !435)
!456 = !DILocation(line: 369, column: 19, scope: !435)
!457 = !DILocation(line: 370, column: 16, scope: !435)
!458 = !DILocation(line: 370, column: 11, scope: !435)
!459 = !DILocation(line: 373, column: 19, scope: !438)
!460 = !DILocation(line: 0, scope: !438)
!461 = !DILocation(line: 374, column: 19, scope: !438)
!462 = !DILocation(line: 375, column: 16, scope: !438)
!463 = !DILocation(line: 375, column: 11, scope: !438)
!464 = !DILocation(line: 378, column: 19, scope: !441)
!465 = !DILocation(line: 0, scope: !441)
!466 = !DILocation(line: 379, column: 19, scope: !441)
!467 = !DILocation(line: 380, column: 16, scope: !441)
!468 = !DILocation(line: 380, column: 11, scope: !441)
!469 = !DILocation(line: 382, column: 1, scope: !424)
!470 = distinct !DISubprogram(name: "Hacl_Bignum_fdifference", scope: !1, file: !1, line: 384, type: !203, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !471)
!471 = !{!472, !473, !474, !478, !479, !480, !481, !482, !483, !485, !486, !488, !489, !491, !492, !494, !495, !497}
!472 = !DILocalVariable(name: "a", arg: 1, scope: !470, file: !1, line: 384, type: !39)
!473 = !DILocalVariable(name: "b", arg: 2, scope: !470, file: !1, line: 384, type: !39)
!474 = !DILocalVariable(name: "tmp", scope: !470, file: !1, line: 386, type: !475)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 5)
!478 = !DILocalVariable(name: "b0", scope: !470, file: !1, line: 388, type: !8)
!479 = !DILocalVariable(name: "b1", scope: !470, file: !1, line: 389, type: !8)
!480 = !DILocalVariable(name: "b2", scope: !470, file: !1, line: 390, type: !8)
!481 = !DILocalVariable(name: "b3", scope: !470, file: !1, line: 391, type: !8)
!482 = !DILocalVariable(name: "b4", scope: !470, file: !1, line: 392, type: !8)
!483 = !DILocalVariable(name: "xi", scope: !484, file: !1, line: 399, type: !8)
!484 = distinct !DILexicalBlock(scope: !470, file: !1, line: 398, column: 3)
!485 = !DILocalVariable(name: "yi", scope: !484, file: !1, line: 400, type: !8)
!486 = !DILocalVariable(name: "xi", scope: !487, file: !1, line: 404, type: !8)
!487 = distinct !DILexicalBlock(scope: !470, file: !1, line: 403, column: 3)
!488 = !DILocalVariable(name: "yi", scope: !487, file: !1, line: 405, type: !8)
!489 = !DILocalVariable(name: "xi", scope: !490, file: !1, line: 409, type: !8)
!490 = distinct !DILexicalBlock(scope: !470, file: !1, line: 408, column: 3)
!491 = !DILocalVariable(name: "yi", scope: !490, file: !1, line: 410, type: !8)
!492 = !DILocalVariable(name: "xi", scope: !493, file: !1, line: 414, type: !8)
!493 = distinct !DILexicalBlock(scope: !470, file: !1, line: 413, column: 3)
!494 = !DILocalVariable(name: "yi", scope: !493, file: !1, line: 415, type: !8)
!495 = !DILocalVariable(name: "xi", scope: !496, file: !1, line: 419, type: !8)
!496 = distinct !DILexicalBlock(scope: !470, file: !1, line: 418, column: 3)
!497 = !DILocalVariable(name: "yi", scope: !496, file: !1, line: 420, type: !8)
!498 = !DILocation(line: 0, scope: !470)
!499 = !DILocation(line: 387, column: 3, scope: !470)
!500 = !DILocation(line: 393, column: 16, scope: !470)
!501 = !DILocation(line: 394, column: 16, scope: !470)
!502 = !DILocation(line: 395, column: 16, scope: !470)
!503 = !DILocation(line: 396, column: 16, scope: !470)
!504 = !DILocation(line: 397, column: 16, scope: !470)
!505 = !DILocation(line: 399, column: 19, scope: !484)
!506 = !DILocation(line: 0, scope: !484)
!507 = !DILocation(line: 401, column: 16, scope: !484)
!508 = !DILocation(line: 401, column: 11, scope: !484)
!509 = !DILocation(line: 404, column: 19, scope: !487)
!510 = !DILocation(line: 0, scope: !487)
!511 = !DILocation(line: 406, column: 16, scope: !487)
!512 = !DILocation(line: 406, column: 11, scope: !487)
!513 = !DILocation(line: 409, column: 19, scope: !490)
!514 = !DILocation(line: 0, scope: !490)
!515 = !DILocation(line: 411, column: 16, scope: !490)
!516 = !DILocation(line: 411, column: 11, scope: !490)
!517 = !DILocation(line: 414, column: 19, scope: !493)
!518 = !DILocation(line: 0, scope: !493)
!519 = !DILocation(line: 416, column: 16, scope: !493)
!520 = !DILocation(line: 416, column: 11, scope: !493)
!521 = !DILocation(line: 419, column: 19, scope: !496)
!522 = !DILocation(line: 0, scope: !496)
!523 = !DILocation(line: 421, column: 16, scope: !496)
!524 = !DILocation(line: 421, column: 11, scope: !496)
!525 = !DILocation(line: 423, column: 1, scope: !470)
!526 = distinct !DISubprogram(name: "Hacl_Bignum_fmul", scope: !1, file: !1, line: 466, type: !527, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !39, !39, !39}
!529 = !{!530, !531, !532}
!530 = !DILocalVariable(name: "output", arg: 1, scope: !526, file: !1, line: 466, type: !39)
!531 = !DILocalVariable(name: "a", arg: 2, scope: !526, file: !1, line: 466, type: !39)
!532 = !DILocalVariable(name: "b", arg: 3, scope: !526, file: !1, line: 466, type: !39)
!533 = !DILocation(line: 0, scope: !526)
!534 = !DILocation(line: 468, column: 3, scope: !526)
!535 = !DILocation(line: 469, column: 1, scope: !526)
!536 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_times", scope: !1, file: !1, line: 299, type: !537, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !39, !39, !3}
!539 = !{!540, !541, !542, !543, !552}
!540 = !DILocalVariable(name: "output", arg: 1, scope: !536, file: !1, line: 299, type: !39)
!541 = !DILocalVariable(name: "input", arg: 2, scope: !536, file: !1, line: 299, type: !39)
!542 = !DILocalVariable(name: "count1", arg: 3, scope: !536, file: !1, line: 299, type: !3)
!543 = !DILocalVariable(name: "t", scope: !536, file: !1, line: 302, type: !544)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 640, elements: !476)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !546, line: 37, baseType: !547)
!546 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !546, line: 35, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !546, line: 30, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !548, file: !546, line: 32, baseType: !8, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !548, file: !546, line: 33, baseType: !8, size: 64, offset: 64)
!552 = !DILocalVariable(name: "_i", scope: !553, file: !1, line: 303, type: !3)
!553 = distinct !DILexicalBlock(scope: !536, file: !1, line: 303, column: 3)
!554 = !DILocation(line: 0, scope: !536)
!555 = !DILocation(line: 302, column: 3, scope: !536)
!556 = !DILocation(line: 302, column: 19, scope: !536)
!557 = !DILocation(line: 0, scope: !553)
!558 = !DILocation(line: 303, column: 3, scope: !553)
!559 = !DILocation(line: 305, column: 3, scope: !536)
!560 = !DILocation(line: 306, column: 46, scope: !536)
!561 = !DILocation(line: 306, column: 3, scope: !536)
!562 = !DILocation(line: 307, column: 1, scope: !536)
!563 = !DILocation(line: 304, column: 5, scope: !564)
!564 = distinct !DILexicalBlock(scope: !553, file: !1, line: 303, column: 3)
!565 = !DILocation(line: 304, column: 13, scope: !564)
!566 = !{i64 0, i64 8, !65, i64 8, i64 8, !65}
!567 = !DILocation(line: 303, column: 45, scope: !564)
!568 = !DILocation(line: 303, column: 29, scope: !564)
!569 = distinct !{!569, !558, !570, !571, !572}
!570 = !DILocation(line: 304, column: 57, scope: !553)
!571 = !{!"llvm.loop.mustprogress"}
!572 = !{!"llvm.loop.unroll.disable"}
!573 = distinct !DISubprogram(name: "Hacl_Bignum_fscalar", scope: !1, file: !1, line: 425, type: !297, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !574)
!574 = !{!575, !576, !577, !578, !579, !581, !583, !585, !587, !589, !591, !592, !593, !594}
!575 = !DILocalVariable(name: "output", arg: 1, scope: !573, file: !1, line: 425, type: !39)
!576 = !DILocalVariable(name: "b", arg: 2, scope: !573, file: !1, line: 425, type: !39)
!577 = !DILocalVariable(name: "s", arg: 3, scope: !573, file: !1, line: 425, type: !8)
!578 = !DILocalVariable(name: "tmp", scope: !573, file: !1, line: 428, type: !544)
!579 = !DILocalVariable(name: "_i", scope: !580, file: !1, line: 429, type: !3)
!580 = distinct !DILexicalBlock(scope: !573, file: !1, line: 429, column: 3)
!581 = !DILocalVariable(name: "xi", scope: !582, file: !1, line: 432, type: !8)
!582 = distinct !DILexicalBlock(scope: !573, file: !1, line: 431, column: 3)
!583 = !DILocalVariable(name: "xi", scope: !584, file: !1, line: 436, type: !8)
!584 = distinct !DILexicalBlock(scope: !573, file: !1, line: 435, column: 3)
!585 = !DILocalVariable(name: "xi", scope: !586, file: !1, line: 440, type: !8)
!586 = distinct !DILexicalBlock(scope: !573, file: !1, line: 439, column: 3)
!587 = !DILocalVariable(name: "xi", scope: !588, file: !1, line: 444, type: !8)
!588 = distinct !DILexicalBlock(scope: !573, file: !1, line: 443, column: 3)
!589 = !DILocalVariable(name: "xi", scope: !590, file: !1, line: 448, type: !8)
!590 = distinct !DILexicalBlock(scope: !573, file: !1, line: 447, column: 3)
!591 = !DILocalVariable(name: "b4", scope: !573, file: !1, line: 452, type: !545)
!592 = !DILocalVariable(name: "b0", scope: !573, file: !1, line: 453, type: !545)
!593 = !DILocalVariable(name: "b4_", scope: !573, file: !1, line: 455, type: !545)
!594 = !DILocalVariable(name: "b0_", scope: !573, file: !1, line: 457, type: !545)
!595 = !DILocation(line: 0, scope: !573)
!596 = !DILocation(line: 428, column: 3, scope: !573)
!597 = !DILocation(line: 428, column: 19, scope: !573)
!598 = !DILocation(line: 0, scope: !580)
!599 = !DILocation(line: 429, column: 3, scope: !580)
!600 = !DILocation(line: 432, column: 19, scope: !582)
!601 = !DILocation(line: 0, scope: !582)
!602 = !DILocation(line: 433, column: 5, scope: !582)
!603 = !DILocation(line: 433, column: 15, scope: !582)
!604 = !DILocation(line: 436, column: 19, scope: !584)
!605 = !DILocation(line: 0, scope: !584)
!606 = !DILocation(line: 437, column: 5, scope: !584)
!607 = !DILocation(line: 437, column: 15, scope: !584)
!608 = !DILocation(line: 440, column: 19, scope: !586)
!609 = !DILocation(line: 0, scope: !586)
!610 = !DILocation(line: 441, column: 5, scope: !586)
!611 = !DILocation(line: 441, column: 15, scope: !586)
!612 = !DILocation(line: 444, column: 19, scope: !588)
!613 = !DILocation(line: 0, scope: !588)
!614 = !DILocation(line: 445, column: 5, scope: !588)
!615 = !DILocation(line: 445, column: 15, scope: !588)
!616 = !DILocation(line: 448, column: 19, scope: !590)
!617 = !DILocation(line: 0, scope: !590)
!618 = !DILocation(line: 449, column: 5, scope: !590)
!619 = !DILocation(line: 449, column: 15, scope: !590)
!620 = !DILocation(line: 451, column: 3, scope: !573)
!621 = !DILocation(line: 452, column: 24, scope: !573)
!622 = !{i64 0, i64 8, !65}
!623 = !DILocation(line: 453, column: 24, scope: !573)
!624 = !DILocation(line: 454, column: 3, scope: !573)
!625 = !DILocation(line: 455, column: 3, scope: !573)
!626 = !DILocation(line: 455, column: 34, scope: !573)
!627 = !DILocation(line: 455, column: 9, scope: !573)
!628 = !{!629, !66, i64 0}
!629 = !{!"", !66, i64 0, !66, i64 8}
!630 = !{!629, !66, i64 8}
!631 = !DILocation(line: 456, column: 3, scope: !573)
!632 = !DILocation(line: 457, column: 3, scope: !573)
!633 = !DILocation(line: 460, column: 41, scope: !573)
!634 = !DILocation(line: 460, column: 9, scope: !573)
!635 = !DILocation(line: 459, column: 7, scope: !573)
!636 = !DILocation(line: 458, column: 5, scope: !573)
!637 = !DILocation(line: 461, column: 13, scope: !573)
!638 = !DILocation(line: 462, column: 13, scope: !573)
!639 = !DILocation(line: 463, column: 3, scope: !573)
!640 = !DILocation(line: 464, column: 1, scope: !573)
!641 = !DILocation(line: 430, column: 5, scope: !642)
!642 = distinct !DILexicalBlock(scope: !580, file: !1, line: 429, column: 3)
!643 = !DILocation(line: 430, column: 15, scope: !642)
!644 = !DILocation(line: 429, column: 45, scope: !642)
!645 = !DILocation(line: 429, column: 29, scope: !642)
!646 = distinct !{!646, !599, !647, !571, !572}
!647 = !DILocation(line: 430, column: 59, scope: !580)
!648 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_fmul", scope: !1, file: !1, line: 192, type: !527, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !657, !658, !659, !660, !661, !662, !663, !664}
!650 = !DILocalVariable(name: "output", arg: 1, scope: !648, file: !1, line: 192, type: !39)
!651 = !DILocalVariable(name: "input", arg: 2, scope: !648, file: !1, line: 192, type: !39)
!652 = !DILocalVariable(name: "input21", arg: 3, scope: !648, file: !1, line: 192, type: !39)
!653 = !DILocalVariable(name: "tmp", scope: !648, file: !1, line: 194, type: !475)
!654 = !DILocalVariable(name: "t", scope: !648, file: !1, line: 197, type: !544)
!655 = !DILocalVariable(name: "_i", scope: !656, file: !1, line: 198, type: !3)
!656 = distinct !DILexicalBlock(scope: !648, file: !1, line: 198, column: 3)
!657 = !DILocalVariable(name: "b4", scope: !648, file: !1, line: 202, type: !545)
!658 = !DILocalVariable(name: "b0", scope: !648, file: !1, line: 203, type: !545)
!659 = !DILocalVariable(name: "b4_", scope: !648, file: !1, line: 205, type: !545)
!660 = !DILocalVariable(name: "b0_", scope: !648, file: !1, line: 207, type: !545)
!661 = !DILocalVariable(name: "i0", scope: !648, file: !1, line: 214, type: !8)
!662 = !DILocalVariable(name: "i1", scope: !648, file: !1, line: 215, type: !8)
!663 = !DILocalVariable(name: "i0_", scope: !648, file: !1, line: 216, type: !8)
!664 = !DILocalVariable(name: "i1_", scope: !648, file: !1, line: 217, type: !8)
!665 = !DILocation(line: 0, scope: !648)
!666 = !DILocation(line: 194, column: 3, scope: !648)
!667 = !DILocation(line: 194, column: 12, scope: !648)
!668 = !DILocation(line: 195, column: 3, scope: !648)
!669 = !DILocation(line: 197, column: 3, scope: !648)
!670 = !DILocation(line: 197, column: 19, scope: !648)
!671 = !DILocation(line: 0, scope: !656)
!672 = !DILocation(line: 198, column: 3, scope: !656)
!673 = !DILocation(line: 200, column: 38, scope: !648)
!674 = !DILocation(line: 200, column: 3, scope: !648)
!675 = !DILocation(line: 201, column: 3, scope: !648)
!676 = !DILocation(line: 202, column: 24, scope: !648)
!677 = !DILocation(line: 203, column: 24, scope: !648)
!678 = !DILocation(line: 204, column: 3, scope: !648)
!679 = !DILocation(line: 205, column: 3, scope: !648)
!680 = !DILocation(line: 205, column: 34, scope: !648)
!681 = !DILocation(line: 205, column: 9, scope: !648)
!682 = !DILocation(line: 206, column: 3, scope: !648)
!683 = !DILocation(line: 207, column: 3, scope: !648)
!684 = !DILocation(line: 210, column: 41, scope: !648)
!685 = !DILocation(line: 210, column: 9, scope: !648)
!686 = !DILocation(line: 209, column: 7, scope: !648)
!687 = !DILocation(line: 208, column: 5, scope: !648)
!688 = !DILocation(line: 211, column: 3, scope: !648)
!689 = !DILocation(line: 211, column: 11, scope: !648)
!690 = !DILocation(line: 212, column: 11, scope: !648)
!691 = !DILocation(line: 213, column: 3, scope: !648)
!692 = !DILocation(line: 214, column: 17, scope: !648)
!693 = !DILocation(line: 215, column: 17, scope: !648)
!694 = !DILocation(line: 216, column: 21, scope: !648)
!695 = !DILocation(line: 217, column: 27, scope: !648)
!696 = !DILocation(line: 217, column: 21, scope: !648)
!697 = !DILocation(line: 218, column: 14, scope: !648)
!698 = !DILocation(line: 219, column: 14, scope: !648)
!699 = !DILocation(line: 220, column: 1, scope: !648)
!700 = !DILocation(line: 199, column: 5, scope: !701)
!701 = distinct !DILexicalBlock(scope: !656, file: !1, line: 198, column: 3)
!702 = !DILocation(line: 199, column: 13, scope: !701)
!703 = !DILocation(line: 198, column: 45, scope: !701)
!704 = !DILocation(line: 198, column: 29, scope: !701)
!705 = distinct !{!705, !672, !706, !571, !572}
!706 = !DILocation(line: 199, column: 57, scope: !656)
!707 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !546, file: !546, line: 65, type: !708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!547, !8}
!710 = !{}
!711 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_mul_shift_reduce_", scope: !1, file: !1, line: 165, type: !712, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !715)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !714, !39, !39}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 32)
!715 = !{!716, !717, !718, !719, !721, !723, !725, !727, !728}
!716 = !DILocalVariable(name: "output", arg: 1, scope: !711, file: !1, line: 165, type: !714)
!717 = !DILocalVariable(name: "input", arg: 2, scope: !711, file: !1, line: 165, type: !39)
!718 = !DILocalVariable(name: "input21", arg: 3, scope: !711, file: !1, line: 165, type: !39)
!719 = !DILocalVariable(name: "input2i", scope: !720, file: !1, line: 168, type: !8)
!720 = distinct !DILexicalBlock(scope: !711, file: !1, line: 167, column: 3)
!721 = !DILocalVariable(name: "input2i", scope: !722, file: !1, line: 173, type: !8)
!722 = distinct !DILexicalBlock(scope: !711, file: !1, line: 172, column: 3)
!723 = !DILocalVariable(name: "input2i", scope: !724, file: !1, line: 178, type: !8)
!724 = distinct !DILexicalBlock(scope: !711, file: !1, line: 177, column: 3)
!725 = !DILocalVariable(name: "input2i", scope: !726, file: !1, line: 183, type: !8)
!726 = distinct !DILexicalBlock(scope: !711, file: !1, line: 182, column: 3)
!727 = !DILocalVariable(name: "i", scope: !711, file: !1, line: 187, type: !3)
!728 = !DILocalVariable(name: "input2i", scope: !711, file: !1, line: 188, type: !8)
!729 = !DILocation(line: 0, scope: !711)
!730 = !DILocation(line: 168, column: 24, scope: !720)
!731 = !DILocation(line: 0, scope: !720)
!732 = !DILocation(line: 169, column: 5, scope: !720)
!733 = !DILocation(line: 170, column: 5, scope: !720)
!734 = !DILocation(line: 173, column: 24, scope: !722)
!735 = !DILocation(line: 0, scope: !722)
!736 = !DILocation(line: 174, column: 5, scope: !722)
!737 = !DILocation(line: 175, column: 5, scope: !722)
!738 = !DILocation(line: 178, column: 24, scope: !724)
!739 = !DILocation(line: 0, scope: !724)
!740 = !DILocation(line: 179, column: 5, scope: !724)
!741 = !DILocation(line: 180, column: 5, scope: !724)
!742 = !DILocation(line: 183, column: 24, scope: !726)
!743 = !DILocation(line: 0, scope: !726)
!744 = !DILocation(line: 184, column: 5, scope: !726)
!745 = !DILocation(line: 185, column: 5, scope: !726)
!746 = !DILocation(line: 188, column: 22, scope: !711)
!747 = !DILocation(line: 189, column: 3, scope: !711)
!748 = !DILocation(line: 190, column: 1, scope: !711)
!749 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_wide_", scope: !1, file: !1, line: 96, type: !750, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !714}
!752 = !{!753, !754, !756, !757, !758, !759, !760, !762, !763, !764, !765, !766, !768, !769, !770, !771, !772, !774, !775, !776, !777}
!753 = !DILocalVariable(name: "tmp", arg: 1, scope: !749, file: !1, line: 96, type: !714)
!754 = !DILocalVariable(name: "ctr", scope: !755, file: !1, line: 99, type: !3)
!755 = distinct !DILexicalBlock(scope: !749, file: !1, line: 98, column: 3)
!756 = !DILocalVariable(name: "tctr", scope: !755, file: !1, line: 100, type: !545)
!757 = !DILocalVariable(name: "tctrp1", scope: !755, file: !1, line: 101, type: !545)
!758 = !DILocalVariable(name: "r0", scope: !755, file: !1, line: 102, type: !8)
!759 = !DILocalVariable(name: "c", scope: !755, file: !1, line: 103, type: !545)
!760 = !DILocalVariable(name: "ctr", scope: !761, file: !1, line: 108, type: !3)
!761 = distinct !DILexicalBlock(scope: !749, file: !1, line: 107, column: 3)
!762 = !DILocalVariable(name: "tctr", scope: !761, file: !1, line: 109, type: !545)
!763 = !DILocalVariable(name: "tctrp1", scope: !761, file: !1, line: 110, type: !545)
!764 = !DILocalVariable(name: "r0", scope: !761, file: !1, line: 111, type: !8)
!765 = !DILocalVariable(name: "c", scope: !761, file: !1, line: 112, type: !545)
!766 = !DILocalVariable(name: "ctr", scope: !767, file: !1, line: 117, type: !3)
!767 = distinct !DILexicalBlock(scope: !749, file: !1, line: 116, column: 3)
!768 = !DILocalVariable(name: "tctr", scope: !767, file: !1, line: 118, type: !545)
!769 = !DILocalVariable(name: "tctrp1", scope: !767, file: !1, line: 119, type: !545)
!770 = !DILocalVariable(name: "r0", scope: !767, file: !1, line: 120, type: !8)
!771 = !DILocalVariable(name: "c", scope: !767, file: !1, line: 121, type: !545)
!772 = !DILocalVariable(name: "ctr", scope: !773, file: !1, line: 126, type: !3)
!773 = distinct !DILexicalBlock(scope: !749, file: !1, line: 125, column: 3)
!774 = !DILocalVariable(name: "tctr", scope: !773, file: !1, line: 127, type: !545)
!775 = !DILocalVariable(name: "tctrp1", scope: !773, file: !1, line: 128, type: !545)
!776 = !DILocalVariable(name: "r0", scope: !773, file: !1, line: 129, type: !8)
!777 = !DILocalVariable(name: "c", scope: !773, file: !1, line: 130, type: !545)
!778 = !DILocation(line: 0, scope: !749)
!779 = !DILocation(line: 0, scope: !755)
!780 = !DILocation(line: 100, column: 28, scope: !755)
!781 = !DILocation(line: 101, column: 30, scope: !755)
!782 = !DILocation(line: 102, column: 19, scope: !755)
!783 = !DILocation(line: 102, column: 57, scope: !755)
!784 = !DILocation(line: 103, column: 5, scope: !755)
!785 = !DILocation(line: 103, column: 21, scope: !755)
!786 = !DILocation(line: 103, column: 25, scope: !755)
!787 = !DILocation(line: 104, column: 16, scope: !755)
!788 = !DILocation(line: 105, column: 31, scope: !755)
!789 = !DILocation(line: 106, column: 3, scope: !749)
!790 = !DILocation(line: 0, scope: !761)
!791 = !DILocation(line: 109, column: 28, scope: !761)
!792 = !DILocation(line: 110, column: 30, scope: !761)
!793 = !DILocation(line: 111, column: 19, scope: !761)
!794 = !DILocation(line: 111, column: 57, scope: !761)
!795 = !DILocation(line: 112, column: 5, scope: !761)
!796 = !DILocation(line: 112, column: 21, scope: !761)
!797 = !DILocation(line: 112, column: 25, scope: !761)
!798 = !DILocation(line: 113, column: 16, scope: !761)
!799 = !DILocation(line: 114, column: 31, scope: !761)
!800 = !DILocation(line: 115, column: 3, scope: !749)
!801 = !DILocation(line: 0, scope: !767)
!802 = !DILocation(line: 118, column: 28, scope: !767)
!803 = !DILocation(line: 119, column: 30, scope: !767)
!804 = !DILocation(line: 120, column: 19, scope: !767)
!805 = !DILocation(line: 120, column: 57, scope: !767)
!806 = !DILocation(line: 121, column: 5, scope: !767)
!807 = !DILocation(line: 121, column: 21, scope: !767)
!808 = !DILocation(line: 121, column: 25, scope: !767)
!809 = !DILocation(line: 122, column: 16, scope: !767)
!810 = !DILocation(line: 123, column: 31, scope: !767)
!811 = !DILocation(line: 124, column: 3, scope: !749)
!812 = !DILocation(line: 0, scope: !773)
!813 = !DILocation(line: 127, column: 28, scope: !773)
!814 = !DILocation(line: 128, column: 30, scope: !773)
!815 = !DILocation(line: 129, column: 19, scope: !773)
!816 = !DILocation(line: 129, column: 57, scope: !773)
!817 = !DILocation(line: 130, column: 5, scope: !773)
!818 = !DILocation(line: 130, column: 21, scope: !773)
!819 = !DILocation(line: 130, column: 25, scope: !773)
!820 = !DILocation(line: 131, column: 16, scope: !773)
!821 = !DILocation(line: 132, column: 31, scope: !773)
!822 = !DILocation(line: 133, column: 3, scope: !749)
!823 = !DILocation(line: 134, column: 1, scope: !749)
!824 = !DISubprogram(name: "FStar_UInt128_logand", scope: !546, file: !546, line: 49, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !710)
!825 = !DISubroutineType(types: !826)
!826 = !{!547, !547, !547}
!827 = !DISubprogram(name: "FStar_UInt128_add", scope: !546, file: !546, line: 41, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !710)
!828 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !546, file: !546, line: 78, type: !829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !710)
!829 = !DISubroutineType(types: !830)
!830 = !{!547, !8, !8}
!831 = !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !546, file: !546, line: 67, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !710)
!832 = !DISubroutineType(types: !833)
!833 = !{!8, !547}
!834 = !DISubprogram(name: "FStar_UInt128_shift_right", scope: !546, file: !546, line: 59, type: !835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !710)
!835 = !DISubroutineType(types: !836)
!836 = !{!547, !547, !3}
!837 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_copy_from_wide_", scope: !1, file: !1, line: 38, type: !838, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !39, !714}
!840 = !{!841, !842, !843, !845, !847, !849, !851}
!841 = !DILocalVariable(name: "output", arg: 1, scope: !837, file: !1, line: 38, type: !39)
!842 = !DILocalVariable(name: "input", arg: 2, scope: !837, file: !1, line: 38, type: !714)
!843 = !DILocalVariable(name: "xi", scope: !844, file: !1, line: 41, type: !545)
!844 = distinct !DILexicalBlock(scope: !837, file: !1, line: 40, column: 3)
!845 = !DILocalVariable(name: "xi", scope: !846, file: !1, line: 45, type: !545)
!846 = distinct !DILexicalBlock(scope: !837, file: !1, line: 44, column: 3)
!847 = !DILocalVariable(name: "xi", scope: !848, file: !1, line: 49, type: !545)
!848 = distinct !DILexicalBlock(scope: !837, file: !1, line: 48, column: 3)
!849 = !DILocalVariable(name: "xi", scope: !850, file: !1, line: 53, type: !545)
!850 = distinct !DILexicalBlock(scope: !837, file: !1, line: 52, column: 3)
!851 = !DILocalVariable(name: "xi", scope: !852, file: !1, line: 57, type: !545)
!852 = distinct !DILexicalBlock(scope: !837, file: !1, line: 56, column: 3)
!853 = !DILocation(line: 0, scope: !837)
!854 = !DILocation(line: 41, column: 26, scope: !844)
!855 = !DILocation(line: 0, scope: !844)
!856 = !DILocation(line: 42, column: 18, scope: !844)
!857 = !DILocation(line: 42, column: 16, scope: !844)
!858 = !DILocation(line: 45, column: 26, scope: !846)
!859 = !DILocation(line: 0, scope: !846)
!860 = !DILocation(line: 46, column: 18, scope: !846)
!861 = !DILocation(line: 46, column: 5, scope: !846)
!862 = !DILocation(line: 46, column: 16, scope: !846)
!863 = !DILocation(line: 49, column: 26, scope: !848)
!864 = !DILocation(line: 0, scope: !848)
!865 = !DILocation(line: 50, column: 18, scope: !848)
!866 = !DILocation(line: 50, column: 5, scope: !848)
!867 = !DILocation(line: 50, column: 16, scope: !848)
!868 = !DILocation(line: 53, column: 26, scope: !850)
!869 = !DILocation(line: 0, scope: !850)
!870 = !DILocation(line: 54, column: 18, scope: !850)
!871 = !DILocation(line: 54, column: 5, scope: !850)
!872 = !DILocation(line: 54, column: 16, scope: !850)
!873 = !DILocation(line: 57, column: 26, scope: !852)
!874 = !DILocation(line: 0, scope: !852)
!875 = !DILocation(line: 58, column: 18, scope: !852)
!876 = !DILocation(line: 58, column: 5, scope: !852)
!877 = !DILocation(line: 58, column: 16, scope: !852)
!878 = !DILocation(line: 60, column: 1, scope: !837)
!879 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_sum_scalar_multiplication_", scope: !1, file: !1, line: 63, type: !880, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !714, !39, !8}
!882 = !{!883, !884, !885, !886, !888, !889, !891, !892, !894, !895, !897, !898, !900}
!883 = !DILocalVariable(name: "output", arg: 1, scope: !879, file: !1, line: 64, type: !714)
!884 = !DILocalVariable(name: "input", arg: 2, scope: !879, file: !1, line: 65, type: !39)
!885 = !DILocalVariable(name: "s", arg: 3, scope: !879, file: !1, line: 66, type: !8)
!886 = !DILocalVariable(name: "xi", scope: !887, file: !1, line: 70, type: !545)
!887 = distinct !DILexicalBlock(scope: !879, file: !1, line: 69, column: 3)
!888 = !DILocalVariable(name: "yi", scope: !887, file: !1, line: 71, type: !8)
!889 = !DILocalVariable(name: "xi", scope: !890, file: !1, line: 75, type: !545)
!890 = distinct !DILexicalBlock(scope: !879, file: !1, line: 74, column: 3)
!891 = !DILocalVariable(name: "yi", scope: !890, file: !1, line: 76, type: !8)
!892 = !DILocalVariable(name: "xi", scope: !893, file: !1, line: 80, type: !545)
!893 = distinct !DILexicalBlock(scope: !879, file: !1, line: 79, column: 3)
!894 = !DILocalVariable(name: "yi", scope: !893, file: !1, line: 81, type: !8)
!895 = !DILocalVariable(name: "xi", scope: !896, file: !1, line: 85, type: !545)
!896 = distinct !DILexicalBlock(scope: !879, file: !1, line: 84, column: 3)
!897 = !DILocalVariable(name: "yi", scope: !896, file: !1, line: 86, type: !8)
!898 = !DILocalVariable(name: "xi", scope: !899, file: !1, line: 90, type: !545)
!899 = distinct !DILexicalBlock(scope: !879, file: !1, line: 89, column: 3)
!900 = !DILocalVariable(name: "yi", scope: !899, file: !1, line: 91, type: !8)
!901 = !DILocation(line: 0, scope: !879)
!902 = !DILocation(line: 70, column: 26, scope: !887)
!903 = !DILocation(line: 0, scope: !887)
!904 = !DILocation(line: 71, column: 19, scope: !887)
!905 = !DILocation(line: 72, column: 18, scope: !887)
!906 = !DILocation(line: 72, column: 44, scope: !887)
!907 = !DILocation(line: 75, column: 26, scope: !890)
!908 = !DILocation(line: 0, scope: !890)
!909 = !DILocation(line: 76, column: 19, scope: !890)
!910 = !DILocation(line: 77, column: 5, scope: !890)
!911 = !DILocation(line: 77, column: 18, scope: !890)
!912 = !DILocation(line: 77, column: 44, scope: !890)
!913 = !DILocation(line: 80, column: 26, scope: !893)
!914 = !DILocation(line: 0, scope: !893)
!915 = !DILocation(line: 81, column: 19, scope: !893)
!916 = !DILocation(line: 82, column: 5, scope: !893)
!917 = !DILocation(line: 82, column: 18, scope: !893)
!918 = !DILocation(line: 82, column: 44, scope: !893)
!919 = !DILocation(line: 85, column: 26, scope: !896)
!920 = !DILocation(line: 0, scope: !896)
!921 = !DILocation(line: 86, column: 19, scope: !896)
!922 = !DILocation(line: 87, column: 5, scope: !896)
!923 = !DILocation(line: 87, column: 18, scope: !896)
!924 = !DILocation(line: 87, column: 44, scope: !896)
!925 = !DILocation(line: 90, column: 26, scope: !899)
!926 = !DILocation(line: 0, scope: !899)
!927 = !DILocation(line: 91, column: 19, scope: !899)
!928 = !DILocation(line: 92, column: 5, scope: !899)
!929 = !DILocation(line: 92, column: 18, scope: !899)
!930 = !DILocation(line: 92, column: 44, scope: !899)
!931 = !DILocation(line: 94, column: 1, scope: !879)
!932 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_shift_reduce", scope: !1, file: !1, line: 136, type: !933, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !39}
!935 = !{!936, !937, !938, !940, !941, !943, !944, !946, !947, !949, !950}
!936 = !DILocalVariable(name: "output", arg: 1, scope: !932, file: !1, line: 136, type: !39)
!937 = !DILocalVariable(name: "tmp", scope: !932, file: !1, line: 138, type: !8)
!938 = !DILocalVariable(name: "ctr", scope: !939, file: !1, line: 140, type: !3)
!939 = distinct !DILexicalBlock(scope: !932, file: !1, line: 139, column: 3)
!940 = !DILocalVariable(name: "z", scope: !939, file: !1, line: 141, type: !8)
!941 = !DILocalVariable(name: "ctr", scope: !942, file: !1, line: 145, type: !3)
!942 = distinct !DILexicalBlock(scope: !932, file: !1, line: 144, column: 3)
!943 = !DILocalVariable(name: "z", scope: !942, file: !1, line: 146, type: !8)
!944 = !DILocalVariable(name: "ctr", scope: !945, file: !1, line: 150, type: !3)
!945 = distinct !DILexicalBlock(scope: !932, file: !1, line: 149, column: 3)
!946 = !DILocalVariable(name: "z", scope: !945, file: !1, line: 151, type: !8)
!947 = !DILocalVariable(name: "ctr", scope: !948, file: !1, line: 155, type: !3)
!948 = distinct !DILexicalBlock(scope: !932, file: !1, line: 154, column: 3)
!949 = !DILocalVariable(name: "z", scope: !948, file: !1, line: 156, type: !8)
!950 = !DILocalVariable(name: "b0", scope: !932, file: !1, line: 160, type: !8)
!951 = !DILocation(line: 0, scope: !932)
!952 = !DILocation(line: 138, column: 18, scope: !932)
!953 = !DILocation(line: 0, scope: !939)
!954 = !DILocation(line: 141, column: 18, scope: !939)
!955 = !DILocation(line: 142, column: 17, scope: !939)
!956 = !DILocation(line: 0, scope: !942)
!957 = !DILocation(line: 146, column: 18, scope: !942)
!958 = !DILocation(line: 147, column: 17, scope: !942)
!959 = !DILocation(line: 0, scope: !945)
!960 = !DILocation(line: 151, column: 18, scope: !945)
!961 = !DILocation(line: 152, column: 17, scope: !945)
!962 = !DILocation(line: 0, scope: !948)
!963 = !DILocation(line: 156, column: 18, scope: !948)
!964 = !DILocation(line: 157, column: 17, scope: !948)
!965 = !DILocation(line: 161, column: 30, scope: !932)
!966 = !DILocation(line: 161, column: 14, scope: !932)
!967 = !DILocation(line: 162, column: 1, scope: !932)
!968 = !DISubprogram(name: "FStar_UInt128_add_mod", scope: !546, file: !546, line: 43, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !710)
!969 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_times_", scope: !1, file: !1, line: 291, type: !970, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !39, !714, !3}
!972 = !{!973, !974, !975, !976}
!973 = !DILocalVariable(name: "input", arg: 1, scope: !969, file: !1, line: 291, type: !39)
!974 = !DILocalVariable(name: "tmp", arg: 2, scope: !969, file: !1, line: 291, type: !714)
!975 = !DILocalVariable(name: "count1", arg: 3, scope: !969, file: !1, line: 291, type: !3)
!976 = !DILocalVariable(name: "i", scope: !977, file: !1, line: 294, type: !3)
!977 = distinct !DILexicalBlock(scope: !969, file: !1, line: 294, column: 3)
!978 = !DILocation(line: 0, scope: !969)
!979 = !DILocation(line: 293, column: 3, scope: !969)
!980 = !DILocation(line: 0, scope: !977)
!981 = !DILocation(line: 294, column: 37, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !1, line: 294, column: 3)
!983 = !DILocation(line: 294, column: 3, scope: !977)
!984 = !DILocation(line: 296, column: 1, scope: !969)
!985 = !DILocation(line: 295, column: 5, scope: !982)
!986 = !DILocation(line: 294, column: 53, scope: !982)
!987 = distinct !{!987, !983, !988, !571, !572}
!988 = !DILocation(line: 295, column: 44, scope: !977)
!989 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_", scope: !1, file: !1, line: 266, type: !990, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !992)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !714, !39}
!992 = !{!993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002}
!993 = !DILocalVariable(name: "tmp", arg: 1, scope: !989, file: !1, line: 266, type: !714)
!994 = !DILocalVariable(name: "output", arg: 2, scope: !989, file: !1, line: 266, type: !39)
!995 = !DILocalVariable(name: "b4", scope: !989, file: !1, line: 270, type: !545)
!996 = !DILocalVariable(name: "b0", scope: !989, file: !1, line: 271, type: !545)
!997 = !DILocalVariable(name: "b4_", scope: !989, file: !1, line: 273, type: !545)
!998 = !DILocalVariable(name: "b0_", scope: !989, file: !1, line: 275, type: !545)
!999 = !DILocalVariable(name: "i0", scope: !989, file: !1, line: 282, type: !8)
!1000 = !DILocalVariable(name: "i1", scope: !989, file: !1, line: 283, type: !8)
!1001 = !DILocalVariable(name: "i0_", scope: !989, file: !1, line: 284, type: !8)
!1002 = !DILocalVariable(name: "i1_", scope: !989, file: !1, line: 285, type: !8)
!1003 = !DILocation(line: 0, scope: !989)
!1004 = !DILocation(line: 268, column: 3, scope: !989)
!1005 = !DILocation(line: 269, column: 3, scope: !989)
!1006 = !DILocation(line: 270, column: 24, scope: !989)
!1007 = !DILocation(line: 271, column: 24, scope: !989)
!1008 = !DILocation(line: 272, column: 3, scope: !989)
!1009 = !DILocation(line: 273, column: 3, scope: !989)
!1010 = !DILocation(line: 273, column: 34, scope: !989)
!1011 = !DILocation(line: 273, column: 9, scope: !989)
!1012 = !DILocation(line: 274, column: 3, scope: !989)
!1013 = !DILocation(line: 275, column: 3, scope: !989)
!1014 = !DILocation(line: 278, column: 41, scope: !989)
!1015 = !DILocation(line: 278, column: 9, scope: !989)
!1016 = !DILocation(line: 277, column: 7, scope: !989)
!1017 = !DILocation(line: 276, column: 5, scope: !989)
!1018 = !DILocation(line: 279, column: 3, scope: !989)
!1019 = !DILocation(line: 279, column: 13, scope: !989)
!1020 = !DILocation(line: 280, column: 13, scope: !989)
!1021 = !DILocation(line: 281, column: 3, scope: !989)
!1022 = !DILocation(line: 282, column: 17, scope: !989)
!1023 = !DILocation(line: 283, column: 17, scope: !989)
!1024 = !DILocation(line: 284, column: 21, scope: !989)
!1025 = !DILocation(line: 285, column: 27, scope: !989)
!1026 = !DILocation(line: 285, column: 21, scope: !989)
!1027 = !DILocation(line: 286, column: 14, scope: !989)
!1028 = !DILocation(line: 287, column: 14, scope: !989)
!1029 = !DILocation(line: 288, column: 1, scope: !989)
!1030 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare__", scope: !1, file: !1, line: 222, type: !990, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048}
!1032 = !DILocalVariable(name: "tmp", arg: 1, scope: !1030, file: !1, line: 222, type: !714)
!1033 = !DILocalVariable(name: "output", arg: 2, scope: !1030, file: !1, line: 222, type: !39)
!1034 = !DILocalVariable(name: "r0", scope: !1030, file: !1, line: 224, type: !8)
!1035 = !DILocalVariable(name: "r1", scope: !1030, file: !1, line: 225, type: !8)
!1036 = !DILocalVariable(name: "r2", scope: !1030, file: !1, line: 226, type: !8)
!1037 = !DILocalVariable(name: "r3", scope: !1030, file: !1, line: 227, type: !8)
!1038 = !DILocalVariable(name: "r4", scope: !1030, file: !1, line: 228, type: !8)
!1039 = !DILocalVariable(name: "d0", scope: !1030, file: !1, line: 229, type: !8)
!1040 = !DILocalVariable(name: "d1", scope: !1030, file: !1, line: 230, type: !8)
!1041 = !DILocalVariable(name: "d2", scope: !1030, file: !1, line: 231, type: !8)
!1042 = !DILocalVariable(name: "d419", scope: !1030, file: !1, line: 232, type: !8)
!1043 = !DILocalVariable(name: "d4", scope: !1030, file: !1, line: 233, type: !8)
!1044 = !DILocalVariable(name: "s0", scope: !1030, file: !1, line: 235, type: !545)
!1045 = !DILocalVariable(name: "s1", scope: !1030, file: !1, line: 240, type: !545)
!1046 = !DILocalVariable(name: "s2", scope: !1030, file: !1, line: 245, type: !545)
!1047 = !DILocalVariable(name: "s3", scope: !1030, file: !1, line: 250, type: !545)
!1048 = !DILocalVariable(name: "s4", scope: !1030, file: !1, line: 255, type: !545)
!1049 = !DILocation(line: 0, scope: !1030)
!1050 = !DILocation(line: 224, column: 17, scope: !1030)
!1051 = !DILocation(line: 225, column: 17, scope: !1030)
!1052 = !DILocation(line: 226, column: 17, scope: !1030)
!1053 = !DILocation(line: 227, column: 17, scope: !1030)
!1054 = !DILocation(line: 228, column: 17, scope: !1030)
!1055 = !DILocation(line: 229, column: 20, scope: !1030)
!1056 = !DILocation(line: 230, column: 20, scope: !1030)
!1057 = !DILocation(line: 231, column: 35, scope: !1030)
!1058 = !DILocation(line: 232, column: 22, scope: !1030)
!1059 = !DILocation(line: 233, column: 22, scope: !1030)
!1060 = !DILocation(line: 234, column: 3, scope: !1030)
!1061 = !DILocation(line: 235, column: 3, scope: !1030)
!1062 = !DILocation(line: 236, column: 41, scope: !1030)
!1063 = !DILocation(line: 237, column: 9, scope: !1030)
!1064 = !DILocation(line: 236, column: 23, scope: !1030)
!1065 = !DILocation(line: 238, column: 7, scope: !1030)
!1066 = !DILocation(line: 236, column: 5, scope: !1030)
!1067 = !DILocation(line: 239, column: 3, scope: !1030)
!1068 = !DILocation(line: 240, column: 3, scope: !1030)
!1069 = !DILocation(line: 241, column: 41, scope: !1030)
!1070 = !DILocation(line: 242, column: 9, scope: !1030)
!1071 = !DILocation(line: 241, column: 23, scope: !1030)
!1072 = !DILocation(line: 243, column: 33, scope: !1030)
!1073 = !DILocation(line: 243, column: 7, scope: !1030)
!1074 = !DILocation(line: 241, column: 5, scope: !1030)
!1075 = !DILocation(line: 244, column: 3, scope: !1030)
!1076 = !DILocation(line: 245, column: 3, scope: !1030)
!1077 = !DILocation(line: 246, column: 41, scope: !1030)
!1078 = !DILocation(line: 247, column: 9, scope: !1030)
!1079 = !DILocation(line: 246, column: 23, scope: !1030)
!1080 = !DILocation(line: 248, column: 7, scope: !1030)
!1081 = !DILocation(line: 246, column: 5, scope: !1030)
!1082 = !DILocation(line: 249, column: 3, scope: !1030)
!1083 = !DILocation(line: 250, column: 3, scope: !1030)
!1084 = !DILocation(line: 251, column: 41, scope: !1030)
!1085 = !DILocation(line: 252, column: 9, scope: !1030)
!1086 = !DILocation(line: 251, column: 23, scope: !1030)
!1087 = !DILocation(line: 253, column: 7, scope: !1030)
!1088 = !DILocation(line: 251, column: 5, scope: !1030)
!1089 = !DILocation(line: 254, column: 3, scope: !1030)
!1090 = !DILocation(line: 255, column: 3, scope: !1030)
!1091 = !DILocation(line: 256, column: 41, scope: !1030)
!1092 = !DILocation(line: 257, column: 9, scope: !1030)
!1093 = !DILocation(line: 256, column: 23, scope: !1030)
!1094 = !DILocation(line: 258, column: 7, scope: !1030)
!1095 = !DILocation(line: 256, column: 5, scope: !1030)
!1096 = !DILocation(line: 259, column: 13, scope: !1030)
!1097 = !DILocation(line: 260, column: 3, scope: !1030)
!1098 = !DILocation(line: 260, column: 13, scope: !1030)
!1099 = !DILocation(line: 261, column: 3, scope: !1030)
!1100 = !DILocation(line: 261, column: 13, scope: !1030)
!1101 = !DILocation(line: 262, column: 3, scope: !1030)
!1102 = !DILocation(line: 262, column: 13, scope: !1030)
!1103 = !DILocation(line: 263, column: 3, scope: !1030)
!1104 = !DILocation(line: 263, column: 13, scope: !1030)
!1105 = !DILocation(line: 264, column: 1, scope: !1030)
!1106 = distinct !DISubprogram(name: "Hacl_Bignum_crecip", scope: !1, file: !1, line: 471, type: !203, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1107)
!1107 = !{!1108, !1109}
!1108 = !DILocalVariable(name: "output", arg: 1, scope: !1106, file: !1, line: 471, type: !39)
!1109 = !DILocalVariable(name: "input", arg: 2, scope: !1106, file: !1, line: 471, type: !39)
!1110 = !DILocation(line: 0, scope: !1106)
!1111 = !DILocation(line: 473, column: 3, scope: !1106)
!1112 = !DILocation(line: 474, column: 1, scope: !1106)
!1113 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract", scope: !1, file: !1, line: 787, type: !164, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1114)
!1114 = !{!1115, !1116}
!1115 = !DILocalVariable(name: "output", arg: 1, scope: !1113, file: !1, line: 787, type: !29)
!1116 = !DILocalVariable(name: "input", arg: 2, scope: !1113, file: !1, line: 787, type: !39)
!1117 = !DILocation(line: 0, scope: !1113)
!1118 = !DILocation(line: 789, column: 3, scope: !1113)
!1119 = !DILocation(line: 790, column: 3, scope: !1113)
!1120 = !DILocation(line: 791, column: 3, scope: !1113)
!1121 = !DILocation(line: 792, column: 3, scope: !1113)
!1122 = !DILocation(line: 793, column: 1, scope: !1113)
!1123 = distinct !DISubprogram(name: "Hacl_Bignum_Crecip_crecip", scope: !1, file: !1, line: 318, type: !203, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1124)
!1124 = !{!1125, !1126, !1127, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1125 = !DILocalVariable(name: "out", arg: 1, scope: !1123, file: !1, line: 318, type: !39)
!1126 = !DILocalVariable(name: "z", arg: 2, scope: !1123, file: !1, line: 318, type: !39)
!1127 = !DILocalVariable(name: "buf", scope: !1123, file: !1, line: 320, type: !1128)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1280, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 20)
!1131 = !DILocalVariable(name: "a", scope: !1123, file: !1, line: 321, type: !39)
!1132 = !DILocalVariable(name: "t00", scope: !1123, file: !1, line: 322, type: !39)
!1133 = !DILocalVariable(name: "b0", scope: !1123, file: !1, line: 323, type: !39)
!1134 = !DILocalVariable(name: "t01", scope: !1123, file: !1, line: 331, type: !39)
!1135 = !DILocalVariable(name: "b1", scope: !1123, file: !1, line: 332, type: !39)
!1136 = !DILocalVariable(name: "c0", scope: !1123, file: !1, line: 333, type: !39)
!1137 = !DILocalVariable(name: "a0", scope: !1123, file: !1, line: 342, type: !39)
!1138 = !DILocalVariable(name: "t0", scope: !1123, file: !1, line: 343, type: !39)
!1139 = !DILocalVariable(name: "b", scope: !1123, file: !1, line: 344, type: !39)
!1140 = !DILocalVariable(name: "c", scope: !1123, file: !1, line: 345, type: !39)
!1141 = !DILocation(line: 0, scope: !1123)
!1142 = !DILocation(line: 320, column: 3, scope: !1123)
!1143 = !DILocation(line: 320, column: 12, scope: !1123)
!1144 = !DILocation(line: 321, column: 17, scope: !1123)
!1145 = !DILocation(line: 322, column: 23, scope: !1123)
!1146 = !DILocation(line: 323, column: 22, scope: !1123)
!1147 = !DILocation(line: 324, column: 3, scope: !1123)
!1148 = !DILocation(line: 325, column: 3, scope: !1123)
!1149 = !DILocation(line: 326, column: 3, scope: !1123)
!1150 = !DILocation(line: 327, column: 3, scope: !1123)
!1151 = !DILocation(line: 328, column: 3, scope: !1123)
!1152 = !DILocation(line: 329, column: 3, scope: !1123)
!1153 = !DILocation(line: 330, column: 3, scope: !1123)
!1154 = !DILocation(line: 333, column: 22, scope: !1123)
!1155 = !DILocation(line: 334, column: 3, scope: !1123)
!1156 = !DILocation(line: 335, column: 3, scope: !1123)
!1157 = !DILocation(line: 336, column: 3, scope: !1123)
!1158 = !DILocation(line: 337, column: 3, scope: !1123)
!1159 = !DILocation(line: 338, column: 3, scope: !1123)
!1160 = !DILocation(line: 339, column: 3, scope: !1123)
!1161 = !DILocation(line: 340, column: 3, scope: !1123)
!1162 = !DILocation(line: 341, column: 3, scope: !1123)
!1163 = !DILocation(line: 346, column: 3, scope: !1123)
!1164 = !DILocation(line: 347, column: 3, scope: !1123)
!1165 = !DILocation(line: 348, column: 3, scope: !1123)
!1166 = !DILocation(line: 349, column: 3, scope: !1123)
!1167 = !DILocation(line: 350, column: 3, scope: !1123)
!1168 = !DILocation(line: 351, column: 3, scope: !1123)
!1169 = !DILocation(line: 352, column: 3, scope: !1123)
!1170 = !DILocation(line: 353, column: 1, scope: !1123)
!1171 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_times_inplace", scope: !1, file: !1, line: 309, type: !1172, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1174)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !39, !3}
!1174 = !{!1175, !1176, !1177, !1178}
!1175 = !DILocalVariable(name: "output", arg: 1, scope: !1171, file: !1, line: 309, type: !39)
!1176 = !DILocalVariable(name: "count1", arg: 2, scope: !1171, file: !1, line: 309, type: !3)
!1177 = !DILocalVariable(name: "t", scope: !1171, file: !1, line: 312, type: !544)
!1178 = !DILocalVariable(name: "_i", scope: !1179, file: !1, line: 313, type: !3)
!1179 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 313, column: 3)
!1180 = !DILocation(line: 0, scope: !1171)
!1181 = !DILocation(line: 312, column: 3, scope: !1171)
!1182 = !DILocation(line: 312, column: 19, scope: !1171)
!1183 = !DILocation(line: 0, scope: !1179)
!1184 = !DILocation(line: 313, column: 3, scope: !1179)
!1185 = !DILocation(line: 315, column: 46, scope: !1171)
!1186 = !DILocation(line: 315, column: 3, scope: !1171)
!1187 = !DILocation(line: 316, column: 1, scope: !1171)
!1188 = !DILocation(line: 314, column: 5, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 313, column: 3)
!1190 = !DILocation(line: 314, column: 13, scope: !1189)
!1191 = !DILocation(line: 313, column: 45, scope: !1189)
!1192 = !DILocation(line: 313, column: 29, scope: !1189)
!1193 = distinct !{!1193, !1184, !1194, !571, !572}
!1194 = !DILocation(line: 314, column: 57, scope: !1179)
!1195 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_first_carry_full", scope: !1, file: !1, line: 701, type: !933, scopeLine: 702, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1196)
!1196 = !{!1197}
!1197 = !DILocalVariable(name: "input", arg: 1, scope: !1195, file: !1, line: 701, type: !39)
!1198 = !DILocation(line: 0, scope: !1195)
!1199 = !DILocation(line: 703, column: 3, scope: !1195)
!1200 = !DILocation(line: 704, column: 3, scope: !1195)
!1201 = !DILocation(line: 705, column: 1, scope: !1195)
!1202 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_second_carry_full", scope: !1, file: !1, line: 729, type: !933, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1208}
!1204 = !DILocalVariable(name: "input", arg: 1, scope: !1202, file: !1, line: 729, type: !39)
!1205 = !DILocalVariable(name: "i0", scope: !1202, file: !1, line: 733, type: !8)
!1206 = !DILocalVariable(name: "i1", scope: !1202, file: !1, line: 734, type: !8)
!1207 = !DILocalVariable(name: "i0_", scope: !1202, file: !1, line: 735, type: !8)
!1208 = !DILocalVariable(name: "i1_", scope: !1202, file: !1, line: 736, type: !8)
!1209 = !DILocation(line: 0, scope: !1202)
!1210 = !DILocation(line: 731, column: 3, scope: !1202)
!1211 = !DILocation(line: 732, column: 3, scope: !1202)
!1212 = !DILocation(line: 733, column: 17, scope: !1202)
!1213 = !DILocation(line: 734, column: 17, scope: !1202)
!1214 = !DILocation(line: 735, column: 21, scope: !1202)
!1215 = !DILocation(line: 736, column: 27, scope: !1202)
!1216 = !DILocation(line: 736, column: 21, scope: !1202)
!1217 = !DILocation(line: 737, column: 13, scope: !1202)
!1218 = !DILocation(line: 738, column: 13, scope: !1202)
!1219 = !DILocation(line: 739, column: 1, scope: !1202)
!1220 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_trim", scope: !1, file: !1, line: 741, type: !933, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!1222 = !DILocalVariable(name: "input", arg: 1, scope: !1220, file: !1, line: 741, type: !39)
!1223 = !DILocalVariable(name: "a0", scope: !1220, file: !1, line: 743, type: !8)
!1224 = !DILocalVariable(name: "a1", scope: !1220, file: !1, line: 744, type: !8)
!1225 = !DILocalVariable(name: "a2", scope: !1220, file: !1, line: 745, type: !8)
!1226 = !DILocalVariable(name: "a3", scope: !1220, file: !1, line: 746, type: !8)
!1227 = !DILocalVariable(name: "a4", scope: !1220, file: !1, line: 747, type: !8)
!1228 = !DILocalVariable(name: "mask0", scope: !1220, file: !1, line: 748, type: !8)
!1229 = !DILocalVariable(name: "mask1", scope: !1220, file: !1, line: 749, type: !8)
!1230 = !DILocalVariable(name: "mask2", scope: !1220, file: !1, line: 750, type: !8)
!1231 = !DILocalVariable(name: "mask3", scope: !1220, file: !1, line: 751, type: !8)
!1232 = !DILocalVariable(name: "mask4", scope: !1220, file: !1, line: 752, type: !8)
!1233 = !DILocalVariable(name: "mask", scope: !1220, file: !1, line: 753, type: !8)
!1234 = !DILocalVariable(name: "a0_", scope: !1220, file: !1, line: 754, type: !8)
!1235 = !DILocalVariable(name: "a1_", scope: !1220, file: !1, line: 755, type: !8)
!1236 = !DILocalVariable(name: "a2_", scope: !1220, file: !1, line: 756, type: !8)
!1237 = !DILocalVariable(name: "a3_", scope: !1220, file: !1, line: 757, type: !8)
!1238 = !DILocalVariable(name: "a4_", scope: !1220, file: !1, line: 758, type: !8)
!1239 = !DILocation(line: 0, scope: !1220)
!1240 = !DILocation(line: 743, column: 17, scope: !1220)
!1241 = !DILocation(line: 744, column: 17, scope: !1220)
!1242 = !DILocation(line: 745, column: 17, scope: !1220)
!1243 = !DILocation(line: 746, column: 17, scope: !1220)
!1244 = !DILocation(line: 747, column: 17, scope: !1220)
!1245 = !DILocation(line: 748, column: 20, scope: !1220)
!1246 = !DILocation(line: 749, column: 20, scope: !1220)
!1247 = !DILocation(line: 750, column: 20, scope: !1220)
!1248 = !DILocation(line: 751, column: 20, scope: !1220)
!1249 = !DILocation(line: 752, column: 20, scope: !1220)
!1250 = !DILocation(line: 753, column: 28, scope: !1220)
!1251 = !DILocation(line: 753, column: 37, scope: !1220)
!1252 = !DILocation(line: 753, column: 46, scope: !1220)
!1253 = !DILocation(line: 753, column: 55, scope: !1220)
!1254 = !DILocation(line: 754, column: 51, scope: !1220)
!1255 = !DILocation(line: 754, column: 21, scope: !1220)
!1256 = !DILocation(line: 755, column: 51, scope: !1220)
!1257 = !DILocation(line: 755, column: 21, scope: !1220)
!1258 = !DILocation(line: 756, column: 21, scope: !1220)
!1259 = !DILocation(line: 757, column: 21, scope: !1220)
!1260 = !DILocation(line: 758, column: 21, scope: !1220)
!1261 = !DILocation(line: 759, column: 13, scope: !1220)
!1262 = !DILocation(line: 760, column: 13, scope: !1220)
!1263 = !DILocation(line: 761, column: 13, scope: !1220)
!1264 = !DILocation(line: 762, column: 13, scope: !1220)
!1265 = !DILocation(line: 763, column: 13, scope: !1220)
!1266 = !DILocation(line: 764, column: 1, scope: !1220)
!1267 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_store", scope: !1, file: !1, line: 766, type: !164, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283}
!1269 = !DILocalVariable(name: "output", arg: 1, scope: !1267, file: !1, line: 766, type: !29)
!1270 = !DILocalVariable(name: "input", arg: 2, scope: !1267, file: !1, line: 766, type: !39)
!1271 = !DILocalVariable(name: "t0", scope: !1267, file: !1, line: 768, type: !8)
!1272 = !DILocalVariable(name: "t1", scope: !1267, file: !1, line: 769, type: !8)
!1273 = !DILocalVariable(name: "t2", scope: !1267, file: !1, line: 770, type: !8)
!1274 = !DILocalVariable(name: "t3", scope: !1267, file: !1, line: 771, type: !8)
!1275 = !DILocalVariable(name: "t4", scope: !1267, file: !1, line: 772, type: !8)
!1276 = !DILocalVariable(name: "o0", scope: !1267, file: !1, line: 773, type: !8)
!1277 = !DILocalVariable(name: "o1", scope: !1267, file: !1, line: 774, type: !8)
!1278 = !DILocalVariable(name: "o2", scope: !1267, file: !1, line: 775, type: !8)
!1279 = !DILocalVariable(name: "o3", scope: !1267, file: !1, line: 776, type: !8)
!1280 = !DILocalVariable(name: "b0", scope: !1267, file: !1, line: 777, type: !29)
!1281 = !DILocalVariable(name: "b1", scope: !1267, file: !1, line: 778, type: !29)
!1282 = !DILocalVariable(name: "b2", scope: !1267, file: !1, line: 779, type: !29)
!1283 = !DILocalVariable(name: "b3", scope: !1267, file: !1, line: 780, type: !29)
!1284 = !DILocation(line: 0, scope: !1267)
!1285 = !DILocation(line: 768, column: 17, scope: !1267)
!1286 = !DILocation(line: 769, column: 17, scope: !1267)
!1287 = !DILocation(line: 770, column: 17, scope: !1267)
!1288 = !DILocation(line: 771, column: 17, scope: !1267)
!1289 = !DILocation(line: 772, column: 17, scope: !1267)
!1290 = !DILocation(line: 773, column: 20, scope: !1267)
!1291 = !DILocation(line: 773, column: 37, scope: !1267)
!1292 = !DILocation(line: 774, column: 20, scope: !1267)
!1293 = !DILocation(line: 774, column: 42, scope: !1267)
!1294 = !DILocation(line: 774, column: 37, scope: !1267)
!1295 = !DILocation(line: 775, column: 20, scope: !1267)
!1296 = !DILocation(line: 775, column: 42, scope: !1267)
!1297 = !DILocation(line: 775, column: 37, scope: !1267)
!1298 = !DILocation(line: 776, column: 20, scope: !1267)
!1299 = !DILocation(line: 776, column: 42, scope: !1267)
!1300 = !DILocation(line: 776, column: 37, scope: !1267)
!1301 = !DILocation(line: 778, column: 24, scope: !1267)
!1302 = !DILocation(line: 779, column: 24, scope: !1267)
!1303 = !DILocation(line: 780, column: 24, scope: !1267)
!1304 = !DILocation(line: 781, column: 3, scope: !1267)
!1305 = !DILocation(line: 782, column: 3, scope: !1267)
!1306 = !DILocation(line: 783, column: 3, scope: !1267)
!1307 = !DILocation(line: 784, column: 3, scope: !1267)
!1308 = !DILocation(line: 785, column: 1, scope: !1267)
!1309 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_first_carry_pass", scope: !1, file: !1, line: 679, type: !933, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1311 = !DILocalVariable(name: "input", arg: 1, scope: !1309, file: !1, line: 679, type: !39)
!1312 = !DILocalVariable(name: "t0", scope: !1309, file: !1, line: 681, type: !8)
!1313 = !DILocalVariable(name: "t1", scope: !1309, file: !1, line: 682, type: !8)
!1314 = !DILocalVariable(name: "t2", scope: !1309, file: !1, line: 683, type: !8)
!1315 = !DILocalVariable(name: "t3", scope: !1309, file: !1, line: 684, type: !8)
!1316 = !DILocalVariable(name: "t4", scope: !1309, file: !1, line: 685, type: !8)
!1317 = !DILocalVariable(name: "t1_", scope: !1309, file: !1, line: 686, type: !8)
!1318 = !DILocalVariable(name: "t0_", scope: !1309, file: !1, line: 687, type: !8)
!1319 = !DILocalVariable(name: "t2_", scope: !1309, file: !1, line: 688, type: !8)
!1320 = !DILocalVariable(name: "t1__", scope: !1309, file: !1, line: 689, type: !8)
!1321 = !DILocalVariable(name: "t3_", scope: !1309, file: !1, line: 690, type: !8)
!1322 = !DILocalVariable(name: "t2__", scope: !1309, file: !1, line: 691, type: !8)
!1323 = !DILocalVariable(name: "t4_", scope: !1309, file: !1, line: 692, type: !8)
!1324 = !DILocalVariable(name: "t3__", scope: !1309, file: !1, line: 693, type: !8)
!1325 = !DILocation(line: 0, scope: !1309)
!1326 = !DILocation(line: 681, column: 17, scope: !1309)
!1327 = !DILocation(line: 682, column: 17, scope: !1309)
!1328 = !DILocation(line: 683, column: 17, scope: !1309)
!1329 = !DILocation(line: 684, column: 17, scope: !1309)
!1330 = !DILocation(line: 685, column: 17, scope: !1309)
!1331 = !DILocation(line: 686, column: 27, scope: !1309)
!1332 = !DILocation(line: 686, column: 21, scope: !1309)
!1333 = !DILocation(line: 687, column: 21, scope: !1309)
!1334 = !DILocation(line: 688, column: 28, scope: !1309)
!1335 = !DILocation(line: 688, column: 21, scope: !1309)
!1336 = !DILocation(line: 689, column: 23, scope: !1309)
!1337 = !DILocation(line: 690, column: 28, scope: !1309)
!1338 = !DILocation(line: 690, column: 21, scope: !1309)
!1339 = !DILocation(line: 691, column: 23, scope: !1309)
!1340 = !DILocation(line: 692, column: 28, scope: !1309)
!1341 = !DILocation(line: 692, column: 21, scope: !1309)
!1342 = !DILocation(line: 693, column: 23, scope: !1309)
!1343 = !DILocation(line: 694, column: 13, scope: !1309)
!1344 = !DILocation(line: 695, column: 13, scope: !1309)
!1345 = !DILocation(line: 696, column: 13, scope: !1309)
!1346 = !DILocation(line: 697, column: 13, scope: !1309)
!1347 = !DILocation(line: 698, column: 13, scope: !1309)
!1348 = !DILocation(line: 699, column: 1, scope: !1309)
!1349 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top", scope: !1, file: !1, line: 27, type: !933, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355}
!1351 = !DILocalVariable(name: "b", arg: 1, scope: !1349, file: !1, line: 27, type: !39)
!1352 = !DILocalVariable(name: "b4", scope: !1349, file: !1, line: 29, type: !8)
!1353 = !DILocalVariable(name: "b0", scope: !1349, file: !1, line: 30, type: !8)
!1354 = !DILocalVariable(name: "b4_", scope: !1349, file: !1, line: 31, type: !8)
!1355 = !DILocalVariable(name: "b0_", scope: !1349, file: !1, line: 32, type: !8)
!1356 = !DILocation(line: 0, scope: !1349)
!1357 = !DILocation(line: 29, column: 17, scope: !1349)
!1358 = !DILocation(line: 30, column: 17, scope: !1349)
!1359 = !DILocation(line: 31, column: 21, scope: !1349)
!1360 = !DILocation(line: 32, column: 43, scope: !1349)
!1361 = !DILocation(line: 32, column: 37, scope: !1349)
!1362 = !DILocation(line: 32, column: 21, scope: !1349)
!1363 = !DILocation(line: 33, column: 9, scope: !1349)
!1364 = !DILocation(line: 34, column: 9, scope: !1349)
!1365 = !DILocation(line: 35, column: 1, scope: !1349)
!1366 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_second_carry_pass", scope: !1, file: !1, line: 707, type: !933, scopeLine: 708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1367)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1368 = !DILocalVariable(name: "input", arg: 1, scope: !1366, file: !1, line: 707, type: !39)
!1369 = !DILocalVariable(name: "t0", scope: !1366, file: !1, line: 709, type: !8)
!1370 = !DILocalVariable(name: "t1", scope: !1366, file: !1, line: 710, type: !8)
!1371 = !DILocalVariable(name: "t2", scope: !1366, file: !1, line: 711, type: !8)
!1372 = !DILocalVariable(name: "t3", scope: !1366, file: !1, line: 712, type: !8)
!1373 = !DILocalVariable(name: "t4", scope: !1366, file: !1, line: 713, type: !8)
!1374 = !DILocalVariable(name: "t1_", scope: !1366, file: !1, line: 714, type: !8)
!1375 = !DILocalVariable(name: "t0_", scope: !1366, file: !1, line: 715, type: !8)
!1376 = !DILocalVariable(name: "t2_", scope: !1366, file: !1, line: 716, type: !8)
!1377 = !DILocalVariable(name: "t1__", scope: !1366, file: !1, line: 717, type: !8)
!1378 = !DILocalVariable(name: "t3_", scope: !1366, file: !1, line: 718, type: !8)
!1379 = !DILocalVariable(name: "t2__", scope: !1366, file: !1, line: 719, type: !8)
!1380 = !DILocalVariable(name: "t4_", scope: !1366, file: !1, line: 720, type: !8)
!1381 = !DILocalVariable(name: "t3__", scope: !1366, file: !1, line: 721, type: !8)
!1382 = !DILocation(line: 0, scope: !1366)
!1383 = !DILocation(line: 709, column: 17, scope: !1366)
!1384 = !DILocation(line: 710, column: 17, scope: !1366)
!1385 = !DILocation(line: 711, column: 17, scope: !1366)
!1386 = !DILocation(line: 712, column: 17, scope: !1366)
!1387 = !DILocation(line: 713, column: 17, scope: !1366)
!1388 = !DILocation(line: 714, column: 27, scope: !1366)
!1389 = !DILocation(line: 714, column: 21, scope: !1366)
!1390 = !DILocation(line: 715, column: 21, scope: !1366)
!1391 = !DILocation(line: 716, column: 28, scope: !1366)
!1392 = !DILocation(line: 716, column: 21, scope: !1366)
!1393 = !DILocation(line: 717, column: 23, scope: !1366)
!1394 = !DILocation(line: 718, column: 28, scope: !1366)
!1395 = !DILocation(line: 718, column: 21, scope: !1366)
!1396 = !DILocation(line: 719, column: 23, scope: !1366)
!1397 = !DILocation(line: 720, column: 28, scope: !1366)
!1398 = !DILocation(line: 720, column: 21, scope: !1366)
!1399 = !DILocation(line: 721, column: 23, scope: !1366)
!1400 = !DILocation(line: 722, column: 13, scope: !1366)
!1401 = !DILocation(line: 723, column: 13, scope: !1366)
!1402 = !DILocation(line: 724, column: 13, scope: !1366)
!1403 = !DILocation(line: 725, column: 13, scope: !1366)
!1404 = !DILocation(line: 726, column: 13, scope: !1366)
!1405 = !DILocation(line: 727, column: 1, scope: !1366)
!1406 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !1407, file: !1407, line: 168, type: !1408, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1410)
!1407 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!8, !8, !8}
!1410 = !{!1411, !1412, !1413, !1414}
!1411 = !DILocalVariable(name: "x", arg: 1, scope: !1406, file: !1407, line: 168, type: !8)
!1412 = !DILocalVariable(name: "y", arg: 2, scope: !1406, file: !1407, line: 168, type: !8)
!1413 = !DILocalVariable(name: "low63", scope: !1406, file: !1407, line: 169, type: !8)
!1414 = !DILocalVariable(name: "high_bit", scope: !1406, file: !1407, line: 173, type: !8)
!1415 = !DILocation(line: 0, scope: !1406)
!1416 = !DILocation(line: 170, column: 42, scope: !1406)
!1417 = !DILocation(line: 170, column: 74, scope: !1406)
!1418 = !DILocation(line: 177, column: 16, scope: !1406)
!1419 = !DILocation(line: 177, column: 3, scope: !1406)
!1420 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !1407, file: !1407, line: 157, type: !1408, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1421)
!1421 = !{!1422, !1423}
!1422 = !DILocalVariable(name: "x", arg: 1, scope: !1420, file: !1407, line: 157, type: !8)
!1423 = !DILocalVariable(name: "y", arg: 2, scope: !1420, file: !1407, line: 157, type: !8)
!1424 = !DILocation(line: 0, scope: !1420)
!1425 = !DILocation(line: 158, column: 7, scope: !1420)
!1426 = !DILocation(line: 159, column: 10, scope: !1420)
!1427 = !DILocation(line: 159, column: 5, scope: !1420)
!1428 = !DILocation(line: 160, column: 10, scope: !1420)
!1429 = !DILocation(line: 160, column: 5, scope: !1420)
!1430 = !DILocation(line: 161, column: 10, scope: !1420)
!1431 = !DILocation(line: 161, column: 5, scope: !1420)
!1432 = !DILocation(line: 162, column: 10, scope: !1420)
!1433 = !DILocation(line: 162, column: 5, scope: !1420)
!1434 = !DILocation(line: 163, column: 10, scope: !1420)
!1435 = !DILocation(line: 163, column: 5, scope: !1420)
!1436 = !DILocation(line: 164, column: 10, scope: !1420)
!1437 = !DILocation(line: 164, column: 5, scope: !1420)
!1438 = !DILocation(line: 165, column: 23, scope: !1420)
!1439 = !DILocation(line: 165, column: 3, scope: !1420)
!1440 = distinct !DISubprogram(name: "store64", scope: !193, file: !193, line: 357, type: !1441, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !29, !8}
!1443 = !{!1444, !1445}
!1444 = !DILocalVariable(name: "b", arg: 1, scope: !1440, file: !193, line: 357, type: !29)
!1445 = !DILocalVariable(name: "i", arg: 2, scope: !1440, file: !193, line: 357, type: !8)
!1446 = !DILocation(line: 0, scope: !1440)
!1447 = !DILocation(line: 357, column: 54, scope: !1440)
!1448 = !DILocation(line: 357, column: 72, scope: !1440)
