; ModuleID = 'hacl-c/hacl-c/Hacl_Chacha20.c'
source_filename = "hacl-c/hacl-c/Hacl_Chacha20.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_key_block(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 !dbg !16 {
  %5 = alloca [16 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !24, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i8* %1, metadata !25, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i8* %2, metadata !26, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32 %3, metadata !27, metadata !DIExpression()), !dbg !34
  %6 = bitcast [16 x i32]* %5 to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #12, !dbg !35
  call void @llvm.dbg.declare(metadata [16 x i32]* %5, metadata !28, metadata !DIExpression()), !dbg !36
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !dbg !36
  %7 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i32 0, i32 0, !dbg !37
  call void @llvm.dbg.value(metadata i32* %7, metadata !32, metadata !DIExpression()), !dbg !34
  call fastcc void @Hacl_Impl_Chacha20_init(i32* noundef nonnull %7, i8* noundef %1, i8* noundef %2), !dbg !38
  call fastcc void @Hacl_Impl_Chacha20_chacha20_block(i8* noundef %0, i32* noundef nonnull %7, i32 noundef %3), !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #12, !dbg !40
  ret void, !dbg !40
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_init(i32* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) unnamed_addr #4 !dbg !41 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !45, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %1, metadata !46, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %2, metadata !47, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32* %0, metadata !48, metadata !DIExpression()), !dbg !52
  %4 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !53
  call void @llvm.dbg.value(metadata i32* %4, metadata !49, metadata !DIExpression()), !dbg !52
  %5 = getelementptr inbounds i32, i32* %0, i32 12, !dbg !54
  call void @llvm.dbg.value(metadata i32* %5, metadata !50, metadata !DIExpression()), !dbg !52
  %6 = getelementptr inbounds i32, i32* %0, i32 13, !dbg !55
  call void @llvm.dbg.value(metadata i32* %6, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 1634760805, i32* %0, align 4, !dbg !56, !tbaa !57
  %7 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !61
  store i32 857760878, i32* %7, align 4, !dbg !62, !tbaa !57
  %8 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !63
  store i32 2036477234, i32* %8, align 4, !dbg !64, !tbaa !57
  %9 = getelementptr inbounds i32, i32* %0, i32 3, !dbg !65
  store i32 1797285236, i32* %9, align 4, !dbg !66, !tbaa !57
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(i32* noundef nonnull %4, i8* noundef %1, i32 noundef 8), !dbg !67
  store i32 0, i32* %5, align 4, !dbg !68, !tbaa !57
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(i32* noundef nonnull %6, i8* noundef %2, i32 noundef 3), !dbg !69
  ret void, !dbg !70
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20_block(i8* nocapture noundef writeonly %0, i32* nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !71 {
  %4 = alloca [16 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !75, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32* %1, metadata !76, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 %2, metadata !77, metadata !DIExpression()), !dbg !79
  %5 = bitcast [16 x i32]* %4 to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #12, !dbg !80
  call void @llvm.dbg.declare(metadata [16 x i32]* %4, metadata !78, metadata !DIExpression()), !dbg !81
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !dbg !81
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i32 0, i32 0, !dbg !82
  call fastcc void @Hacl_Impl_Chacha20_chacha20_core(i32* noundef nonnull %6, i32* noundef %1, i32 noundef %2), !dbg !83
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(i8* noundef %0, i32* noundef nonnull %6), !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #12, !dbg !85
  ret void, !dbg !85
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i8* nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 !dbg !86 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !90, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %1, metadata !91, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 %2, metadata !92, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %3, metadata !93, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %4, metadata !94, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 %5, metadata !95, metadata !DIExpression()), !dbg !96
  call fastcc void @Hacl_Impl_Chacha20_chacha20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5), !dbg !97
  ret void, !dbg !98
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i8* nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 !dbg !99 {
  %7 = alloca [16 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !101, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %1, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i32 %2, metadata !103, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %3, metadata !104, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %4, metadata !105, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i32 %5, metadata !106, metadata !DIExpression()), !dbg !109
  %8 = bitcast [16 x i32]* %7 to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #12, !dbg !110
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !107, metadata !DIExpression()), !dbg !111
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %8, i8 0, i32 64, i1 false), !dbg !111
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i32 0, i32 0, !dbg !112
  call void @llvm.dbg.value(metadata i32* %9, metadata !108, metadata !DIExpression()), !dbg !109
  call fastcc void @Hacl_Impl_Chacha20_init(i32* noundef nonnull %9, i8* noundef %3, i8* noundef %4), !dbg !113
  call fastcc void @Hacl_Impl_Chacha20_chacha20_counter_mode(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef nonnull %9, i32 noundef %5), !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #12, !dbg !115
  ret void, !dbg !115
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(i32* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 !dbg !116 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !120, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i8* %1, metadata !121, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 %2, metadata !122, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 0, metadata !123, metadata !DIExpression()), !dbg !130
  %4 = icmp eq i32 %2, 0, !dbg !131
  br i1 %4, label %5, label %6, !dbg !132

5:                                                ; preds = %6, %3
  ret void, !dbg !133

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %12, %6 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !123, metadata !DIExpression()), !dbg !130
  %8 = shl i32 %7, 2, !dbg !134
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !135
  call void @llvm.dbg.value(metadata i8* %9, metadata !125, metadata !DIExpression()), !dbg !136
  %10 = call fastcc i32 @load32(i8* noundef %9), !dbg !137
  call void @llvm.dbg.value(metadata i32 %10, metadata !128, metadata !DIExpression()), !dbg !136
  %11 = getelementptr inbounds i32, i32* %0, i32 %7, !dbg !138
  store i32 %10, i32* %11, align 4, !dbg !139, !tbaa !57
  %12 = add nuw i32 %7, 1, !dbg !140
  call void @llvm.dbg.value(metadata i32 %12, metadata !123, metadata !DIExpression()), !dbg !130
  %13 = icmp eq i32 %12, %2, !dbg !131
  br i1 %13, label %5, label %6, !dbg !132, !llvm.loop !141
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @load32(i8* nocapture noundef readonly %0) unnamed_addr #5 !dbg !145 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !150, metadata !DIExpression()), !dbg !152
  %2 = bitcast i8* %0 to i32*, !dbg !153
  %3 = load i32, i32* %2, align 1, !dbg !153
  call void @llvm.dbg.value(metadata i32 %3, metadata !151, metadata !DIExpression()), !dbg !152
  ret i32 %3, !dbg !154
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20_core(i32* nocapture noundef %0, i32* nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !dbg !155 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !159, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32* %1, metadata !160, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 %2, metadata !161, metadata !DIExpression()), !dbg !162
  %4 = getelementptr inbounds i32, i32* %1, i32 12, !dbg !163
  store i32 %2, i32* %4, align 4, !dbg !164, !tbaa !57
  call fastcc void @Hacl_Impl_Chacha20_copy_state(i32* noundef %0, i32* noundef %1), !dbg !165
  call fastcc void @Hacl_Impl_Chacha20_rounds(i32* noundef %0), !dbg !166
  call fastcc void @Hacl_Impl_Chacha20_sum_states(i32* noundef %0, i32* noundef %1), !dbg !167
  ret void, !dbg !168
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(i8* nocapture noundef writeonly %0, i32* nocapture noundef readonly %1) unnamed_addr #4 !dbg !169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !171, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32* %1, metadata !172, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 16, metadata !173, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 0, metadata !174, metadata !DIExpression()), !dbg !181
  br label %4, !dbg !182

3:                                                ; preds = %4
  ret void, !dbg !183

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %10, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !174, metadata !DIExpression()), !dbg !181
  %6 = getelementptr inbounds i32, i32* %1, i32 %5, !dbg !184
  %7 = load i32, i32* %6, align 4, !dbg !184, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %7, metadata !176, metadata !DIExpression()), !dbg !185
  %8 = shl i32 %5, 2, !dbg !186
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !187
  call void @llvm.dbg.value(metadata i8* %9, metadata !179, metadata !DIExpression()), !dbg !185
  call fastcc void @store32(i8* noundef %9, i32 noundef %7), !dbg !188
  %10 = add nuw nsw i32 %5, 1, !dbg !189
  call void @llvm.dbg.value(metadata i32 %10, metadata !174, metadata !DIExpression()), !dbg !181
  %11 = icmp eq i32 %10, 16, !dbg !190
  br i1 %11, label %3, label %4, !dbg !182, !llvm.loop !191
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_copy_state(i32* nocapture noundef writeonly %0, i32* nocapture noundef readonly %1) unnamed_addr #7 !dbg !193 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !197, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata i32* %1, metadata !198, metadata !DIExpression()), !dbg !199
  %3 = bitcast i32* %0 to i8*, !dbg !200
  %4 = bitcast i32* %1 to i8*, !dbg !200
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %3, i8* noundef nonnull align 4 dereferenceable(64) %4, i32 64, i1 false), !dbg !200
  ret void, !dbg !201
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_rounds(i32* nocapture noundef %0) unnamed_addr #4 !dbg !202 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !206, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i32 0, metadata !207, metadata !DIExpression()), !dbg !210
  br label %3, !dbg !211

2:                                                ; preds = %3
  ret void, !dbg !212

3:                                                ; preds = %1, %3
  %4 = phi i32 [ 0, %1 ], [ %5, %3 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !207, metadata !DIExpression()), !dbg !210
  call fastcc void @Hacl_Impl_Chacha20_double_round(i32* noundef %0), !dbg !213
  %5 = add nuw nsw i32 %4, 1, !dbg !215
  call void @llvm.dbg.value(metadata i32 %5, metadata !207, metadata !DIExpression()), !dbg !210
  %6 = icmp eq i32 %5, 10, !dbg !216
  br i1 %6, label %2, label %3, !dbg !211, !llvm.loop !217
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_sum_states(i32* nocapture noundef %0, i32* nocapture noundef readonly %1) unnamed_addr #4 !dbg !219 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !221, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32* %1, metadata !222, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()), !dbg !230
  br label %4, !dbg !231

3:                                                ; preds = %4
  ret void, !dbg !232

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !223, metadata !DIExpression()), !dbg !230
  %6 = getelementptr inbounds i32, i32* %0, i32 %5, !dbg !233
  %7 = load i32, i32* %6, align 4, !dbg !233, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %7, metadata !225, metadata !DIExpression()), !dbg !234
  %8 = getelementptr inbounds i32, i32* %1, i32 %5, !dbg !235
  %9 = load i32, i32* %8, align 4, !dbg !235, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %9, metadata !228, metadata !DIExpression()), !dbg !234
  %10 = add i32 %9, %7, !dbg !236
  store i32 %10, i32* %6, align 4, !dbg !237, !tbaa !57
  %11 = add nuw nsw i32 %5, 1, !dbg !238
  call void @llvm.dbg.value(metadata i32 %11, metadata !223, metadata !DIExpression()), !dbg !230
  %12 = icmp eq i32 %11, 16, !dbg !239
  br i1 %12, label %3, label %4, !dbg !231, !llvm.loop !240
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_double_round(i32* nocapture noundef %0) unnamed_addr #8 !dbg !242 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !244, metadata !DIExpression()), !dbg !245
  call fastcc void @Hacl_Impl_Chacha20_quarter_round(i32* noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 12), !dbg !246
  call fastcc void @Hacl_Impl_Chacha20_quarter_round(i32* noundef %0, i32 noundef 1, i32 noundef 5, i32 noundef 9, i32 noundef 13), !dbg !247
  call fastcc void @Hacl_Impl_Chacha20_quarter_round(i32* noundef %0, i32 noundef 2, i32 noundef 6, i32 noundef 10, i32 noundef 14), !dbg !248
  call fastcc void @Hacl_Impl_Chacha20_quarter_round(i32* noundef %0, i32 noundef 3, i32 noundef 7, i32 noundef 11, i32 noundef 15), !dbg !249
  call fastcc void @Hacl_Impl_Chacha20_quarter_round(i32* noundef %0, i32 noundef 0, i32 noundef 5, i32 noundef 10, i32 noundef 15), !dbg !250
  call fastcc void @Hacl_Impl_Chacha20_quarter_round(i32* noundef %0, i32 noundef 1, i32 noundef 6, i32 noundef 11, i32 noundef 12), !dbg !251
  call fastcc void @Hacl_Impl_Chacha20_quarter_round(i32* noundef %0, i32 noundef 2, i32 noundef 7, i32 noundef 8, i32 noundef 13), !dbg !252
  call fastcc void @Hacl_Impl_Chacha20_quarter_round(i32* noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef 9, i32 noundef 14), !dbg !253
  ret void, !dbg !254
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_quarter_round(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #8 !dbg !255 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !259, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %2, metadata !261, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %3, metadata !262, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %4, metadata !263, metadata !DIExpression()), !dbg !284
  %6 = getelementptr inbounds i32, i32* %0, i32 %1, !dbg !285
  %7 = load i32, i32* %6, align 4, !dbg !285, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %7, metadata !264, metadata !DIExpression()), !dbg !284
  %8 = getelementptr inbounds i32, i32* %0, i32 %2, !dbg !286
  %9 = load i32, i32* %8, align 4, !dbg !286, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %9, metadata !265, metadata !DIExpression()), !dbg !284
  %10 = add i32 %9, %7, !dbg !287
  store i32 %10, i32* %6, align 4, !dbg !288, !tbaa !57
  %11 = getelementptr inbounds i32, i32* %0, i32 %4, !dbg !289
  %12 = load i32, i32* %11, align 4, !dbg !289, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %12, metadata !266, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %10, metadata !267, metadata !DIExpression()), !dbg !284
  %13 = xor i32 %12, %10, !dbg !290
  call void @llvm.dbg.value(metadata i32 %13, metadata !268, metadata !DIExpression()), !dbg !284
  %14 = call fastcc i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %13, i32 noundef 16), !dbg !291
  store i32 %14, i32* %11, align 4, !dbg !292, !tbaa !57
  %15 = getelementptr inbounds i32, i32* %0, i32 %3, !dbg !293
  %16 = load i32, i32* %15, align 4, !dbg !293, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %16, metadata !269, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %14, metadata !270, metadata !DIExpression()), !dbg !284
  %17 = add i32 %16, %14, !dbg !294
  store i32 %17, i32* %15, align 4, !dbg !295, !tbaa !57
  %18 = load i32, i32* %8, align 4, !dbg !296, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %18, metadata !271, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %17, metadata !272, metadata !DIExpression()), !dbg !284
  %19 = xor i32 %18, %17, !dbg !297
  call void @llvm.dbg.value(metadata i32 %19, metadata !273, metadata !DIExpression()), !dbg !284
  %20 = call fastcc i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %19, i32 noundef 12), !dbg !298
  store i32 %20, i32* %8, align 4, !dbg !299, !tbaa !57
  %21 = load i32, i32* %6, align 4, !dbg !300, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %21, metadata !274, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %20, metadata !275, metadata !DIExpression()), !dbg !284
  %22 = add i32 %21, %20, !dbg !301
  store i32 %22, i32* %6, align 4, !dbg !302, !tbaa !57
  %23 = load i32, i32* %11, align 4, !dbg !303, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %23, metadata !276, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %22, metadata !277, metadata !DIExpression()), !dbg !284
  %24 = xor i32 %23, %22, !dbg !304
  call void @llvm.dbg.value(metadata i32 %24, metadata !278, metadata !DIExpression()), !dbg !284
  %25 = call fastcc i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %24, i32 noundef 8), !dbg !305
  store i32 %25, i32* %11, align 4, !dbg !306, !tbaa !57
  %26 = load i32, i32* %15, align 4, !dbg !307, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %26, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %25, metadata !280, metadata !DIExpression()), !dbg !284
  %27 = add i32 %26, %25, !dbg !308
  store i32 %27, i32* %15, align 4, !dbg !309, !tbaa !57
  %28 = load i32, i32* %8, align 4, !dbg !310, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %28, metadata !281, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %27, metadata !282, metadata !DIExpression()), !dbg !284
  %29 = xor i32 %28, %27, !dbg !311
  call void @llvm.dbg.value(metadata i32 %29, metadata !283, metadata !DIExpression()), !dbg !284
  %30 = call fastcc i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %29, i32 noundef 7), !dbg !312
  store i32 %30, i32* %8, align 4, !dbg !313, !tbaa !57
  ret void, !dbg !314
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !dbg !315 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !319, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %1, metadata !320, metadata !DIExpression()), !dbg !321
  %3 = shl i32 %0, %1, !dbg !322
  %4 = sub i32 32, %1, !dbg !323
  %5 = lshr i32 %0, %4, !dbg !324
  %6 = or i32 %5, %3, !dbg !325
  ret i32 %6, !dbg !326
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store32(i8* nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !dbg !327 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !331, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i32 %1, metadata !332, metadata !DIExpression()), !dbg !333
  %3 = bitcast i8* %0 to i32*, !dbg !334
  store i32 %1, i32* %3, align 1, !dbg !334
  ret void, !dbg !335
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20_counter_mode(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !336 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !340, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i8* %1, metadata !341, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %2, metadata !342, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32* %3, metadata !343, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %4, metadata !344, metadata !DIExpression()), !dbg !351
  %6 = lshr i32 %2, 6, !dbg !352
  call void @llvm.dbg.value(metadata i32 %6, metadata !345, metadata !DIExpression()), !dbg !351
  %7 = and i32 %2, 63, !dbg !353
  call void @llvm.dbg.value(metadata i32 %7, metadata !346, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i8* %0, metadata !347, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i8* %1, metadata !348, metadata !DIExpression()), !dbg !351
  %8 = and i32 %2, -64, !dbg !354
  call void @llvm.dbg.value(metadata !DIArgList(i8* %0, i32 %8), metadata !349, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i32 %8), metadata !350, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !351
  call fastcc void @Hacl_Impl_Chacha20_chacha20_counter_mode_blocks(i8* noundef %0, i8* noundef %1, i32 noundef %6, i32* noundef %3, i32 noundef %4), !dbg !355
  %9 = icmp eq i32 %7, 0, !dbg !356
  br i1 %9, label %14, label %10, !dbg !358

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !359
  call void @llvm.dbg.value(metadata i8* %11, metadata !350, metadata !DIExpression()), !dbg !351
  %12 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !360
  call void @llvm.dbg.value(metadata i8* %12, metadata !349, metadata !DIExpression()), !dbg !351
  %13 = add i32 %6, %4, !dbg !361
  call fastcc void @Hacl_Impl_Chacha20_update_last(i8* noundef %12, i8* noundef %11, i32 noundef %7, i32* noundef %3, i32 noundef %13), !dbg !362
  br label %14, !dbg !362

14:                                               ; preds = %10, %5
  ret void, !dbg !363
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20_counter_mode_blocks(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !364 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !366, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i8* %1, metadata !367, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %2, metadata !368, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32* %3, metadata !369, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %4, metadata !370, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !378
  %6 = icmp eq i32 %2, 0, !dbg !379
  br i1 %6, label %7, label %8, !dbg !380

7:                                                ; preds = %8, %5
  ret void, !dbg !381

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %14, %8 ], [ 0, %5 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !371, metadata !DIExpression()), !dbg !378
  %10 = shl i32 %9, 6, !dbg !382
  %11 = getelementptr inbounds i8, i8* %1, i32 %10, !dbg !383
  call void @llvm.dbg.value(metadata i8* %11, metadata !373, metadata !DIExpression()), !dbg !384
  %12 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !385
  call void @llvm.dbg.value(metadata i8* %12, metadata !376, metadata !DIExpression()), !dbg !384
  %13 = add i32 %9, %4, !dbg !386
  call fastcc void @Hacl_Impl_Chacha20_update(i8* noundef %12, i8* noundef %11, i32* noundef %3, i32 noundef %13), !dbg !387
  %14 = add nuw i32 %9, 1, !dbg !388
  call void @llvm.dbg.value(metadata i32 %14, metadata !371, metadata !DIExpression()), !dbg !378
  %15 = icmp eq i32 %14, %2, !dbg !379
  br i1 %15, label %7, label %8, !dbg !380, !llvm.loop !389
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_update_last(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !391 {
  %6 = alloca [64 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !393, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i8* %1, metadata !394, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32 %2, metadata !395, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32* %3, metadata !396, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32 %4, metadata !397, metadata !DIExpression()), !dbg !409
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i32 0, i32 0, !dbg !410
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #12, !dbg !410
  call void @llvm.dbg.declare(metadata [64 x i8]* %6, metadata !398, metadata !DIExpression()), !dbg !411
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 64, i1 false), !dbg !411
  call fastcc void @Hacl_Impl_Chacha20_chacha20_block(i8* noundef nonnull %7, i32* noundef %3, i32 noundef %4), !dbg !412
  call void @llvm.dbg.value(metadata i8* %7, metadata !402, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32 0, metadata !403, metadata !DIExpression()), !dbg !413
  %8 = icmp eq i32 %2, 0, !dbg !414
  br i1 %8, label %9, label %10, !dbg !415

9:                                                ; preds = %10, %5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #12, !dbg !416
  ret void, !dbg !416

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %18, %10 ], [ 0, %5 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !403, metadata !DIExpression()), !dbg !413
  %12 = getelementptr inbounds i8, i8* %1, i32 %11, !dbg !417
  %13 = load i8, i8* %12, align 1, !dbg !417, !tbaa !418
  call void @llvm.dbg.value(metadata i8 %13, metadata !405, metadata !DIExpression()), !dbg !419
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i32 0, i32 %11, !dbg !420
  %15 = load i8, i8* %14, align 1, !dbg !420, !tbaa !418
  call void @llvm.dbg.value(metadata i8 %15, metadata !408, metadata !DIExpression()), !dbg !419
  %16 = xor i8 %15, %13, !dbg !421
  %17 = getelementptr inbounds i8, i8* %0, i32 %11, !dbg !422
  store i8 %16, i8* %17, align 1, !dbg !423, !tbaa !418
  %18 = add nuw i32 %11, 1, !dbg !424
  call void @llvm.dbg.value(metadata i32 %18, metadata !403, metadata !DIExpression()), !dbg !413
  %19 = icmp eq i32 %18, %2, !dbg !414
  br i1 %19, label %9, label %10, !dbg !415, !llvm.loop !425
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_update(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32* nocapture noundef %2, i32 noundef %3) unnamed_addr #0 !dbg !427 {
  %5 = alloca [48 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !431, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i8* %1, metadata !432, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32* %2, metadata !433, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32 %3, metadata !434, metadata !DIExpression()), !dbg !448
  %6 = bitcast [48 x i32]* %5 to i8*, !dbg !449
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #12, !dbg !449
  call void @llvm.dbg.declare(metadata [48 x i32]* %5, metadata !435, metadata !DIExpression()), !dbg !450
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(192) %6, i8 0, i32 192, i1 false), !dbg !450
  %7 = getelementptr inbounds [48 x i32], [48 x i32]* %5, i32 0, i32 0, !dbg !451
  call void @llvm.dbg.value(metadata i32* %7, metadata !439, metadata !DIExpression()), !dbg !448
  %8 = getelementptr inbounds [48 x i32], [48 x i32]* %5, i32 0, i32 16, !dbg !452
  call void @llvm.dbg.value(metadata i32* %8, metadata !440, metadata !DIExpression()), !dbg !448
  %9 = getelementptr inbounds [48 x i32], [48 x i32]* %5, i32 0, i32 32, !dbg !453
  call void @llvm.dbg.value(metadata i32* %9, metadata !441, metadata !DIExpression()), !dbg !448
  call fastcc void @Hacl_Impl_Chacha20_chacha20_core(i32* noundef nonnull %7, i32* noundef %2, i32 noundef %3), !dbg !454
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(i32* noundef nonnull %8, i8* noundef %1, i32 noundef 16), !dbg !455
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !456
  br label %11, !dbg !457

10:                                               ; preds = %11
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(i8* noundef %0, i32* noundef nonnull %9), !dbg !458
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #12, !dbg !459
  ret void, !dbg !459

11:                                               ; preds = %4, %11
  %12 = phi i32 [ 0, %4 ], [ %19, %11 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !442, metadata !DIExpression()), !dbg !456
  %13 = getelementptr inbounds i32, i32* %8, i32 %12, !dbg !460
  %14 = load i32, i32* %13, align 4, !dbg !460, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %14, metadata !444, metadata !DIExpression()), !dbg !461
  %15 = getelementptr inbounds [48 x i32], [48 x i32]* %5, i32 0, i32 %12, !dbg !462
  %16 = load i32, i32* %15, align 4, !dbg !462, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %16, metadata !447, metadata !DIExpression()), !dbg !461
  %17 = xor i32 %16, %14, !dbg !463
  %18 = getelementptr inbounds i32, i32* %9, i32 %12, !dbg !464
  store i32 %17, i32* %18, align 4, !dbg !465, !tbaa !57
  %19 = add nuw nsw i32 %12, 1, !dbg !466
  call void @llvm.dbg.value(metadata i32 %19, metadata !442, metadata !DIExpression()), !dbg !456
  %20 = icmp eq i32 %19, 16, !dbg !467
  br i1 %20, label %10, label %11, !dbg !457, !llvm.loop !468
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Chacha20.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "c71d7a4942835b2b9fe9ccf0259cecc1")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{i32 1, !"NumRegisterParameters", i32 0}
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!16 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_key_block", scope: !1, file: !1, line: 242, type: !17, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !19, !19, !3}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24, !25, !26, !27, !28, !32}
!24 = !DILocalVariable(name: "block", arg: 1, scope: !16, file: !1, line: 242, type: !19)
!25 = !DILocalVariable(name: "k", arg: 2, scope: !16, file: !1, line: 242, type: !19)
!26 = !DILocalVariable(name: "n1", arg: 3, scope: !16, file: !1, line: 242, type: !19)
!27 = !DILocalVariable(name: "ctr", arg: 4, scope: !16, file: !1, line: 242, type: !3)
!28 = !DILocalVariable(name: "buf", scope: !16, file: !1, line: 244, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 512, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 16)
!32 = !DILocalVariable(name: "st", scope: !16, file: !1, line: 245, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!34 = !DILocation(line: 0, scope: !16)
!35 = !DILocation(line: 244, column: 3, scope: !16)
!36 = !DILocation(line: 244, column: 12, scope: !16)
!37 = !DILocation(line: 245, column: 18, scope: !16)
!38 = !DILocation(line: 246, column: 3, scope: !16)
!39 = !DILocation(line: 247, column: 3, scope: !16)
!40 = !DILocation(line: 248, column: 1, scope: !16)
!41 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_init", scope: !1, file: !1, line: 136, type: !42, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !33, !19, !19}
!44 = !{!45, !46, !47, !48, !49, !50, !51}
!45 = !DILocalVariable(name: "st", arg: 1, scope: !41, file: !1, line: 136, type: !33)
!46 = !DILocalVariable(name: "k", arg: 2, scope: !41, file: !1, line: 136, type: !19)
!47 = !DILocalVariable(name: "n1", arg: 3, scope: !41, file: !1, line: 136, type: !19)
!48 = !DILocalVariable(name: "stcst", scope: !41, file: !1, line: 138, type: !33)
!49 = !DILocalVariable(name: "stk", scope: !41, file: !1, line: 139, type: !33)
!50 = !DILocalVariable(name: "stc", scope: !41, file: !1, line: 140, type: !33)
!51 = !DILocalVariable(name: "stn", scope: !41, file: !1, line: 141, type: !33)
!52 = !DILocation(line: 0, scope: !41)
!53 = !DILocation(line: 139, column: 22, scope: !41)
!54 = !DILocation(line: 140, column: 22, scope: !41)
!55 = !DILocation(line: 141, column: 22, scope: !41)
!56 = !DILocation(line: 142, column: 13, scope: !41)
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !DILocation(line: 143, column: 3, scope: !41)
!62 = !DILocation(line: 143, column: 13, scope: !41)
!63 = !DILocation(line: 144, column: 3, scope: !41)
!64 = !DILocation(line: 144, column: 13, scope: !41)
!65 = !DILocation(line: 145, column: 3, scope: !41)
!66 = !DILocation(line: 145, column: 13, scope: !41)
!67 = !DILocation(line: 146, column: 3, scope: !41)
!68 = !DILocation(line: 147, column: 11, scope: !41)
!69 = !DILocation(line: 148, column: 3, scope: !41)
!70 = !DILocation(line: 149, column: 1, scope: !41)
!71 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_block", scope: !1, file: !1, line: 129, type: !72, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !19, !33, !3}
!74 = !{!75, !76, !77, !78}
!75 = !DILocalVariable(name: "stream_block", arg: 1, scope: !71, file: !1, line: 129, type: !19)
!76 = !DILocalVariable(name: "st", arg: 2, scope: !71, file: !1, line: 129, type: !33)
!77 = !DILocalVariable(name: "ctr", arg: 3, scope: !71, file: !1, line: 129, type: !3)
!78 = !DILocalVariable(name: "st_", scope: !71, file: !1, line: 131, type: !29)
!79 = !DILocation(line: 0, scope: !71)
!80 = !DILocation(line: 131, column: 3, scope: !71)
!81 = !DILocation(line: 131, column: 12, scope: !71)
!82 = !DILocation(line: 132, column: 36, scope: !71)
!83 = !DILocation(line: 132, column: 3, scope: !71)
!84 = !DILocation(line: 133, column: 3, scope: !71)
!85 = !DILocation(line: 134, column: 1, scope: !71)
!86 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20", scope: !1, file: !1, line: 272, type: !87, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !89)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !19, !19, !3, !19, !19, !3}
!89 = !{!90, !91, !92, !93, !94, !95}
!90 = !DILocalVariable(name: "output", arg: 1, scope: !86, file: !1, line: 273, type: !19)
!91 = !DILocalVariable(name: "plain", arg: 2, scope: !86, file: !1, line: 274, type: !19)
!92 = !DILocalVariable(name: "len", arg: 3, scope: !86, file: !1, line: 275, type: !3)
!93 = !DILocalVariable(name: "k", arg: 4, scope: !86, file: !1, line: 276, type: !19)
!94 = !DILocalVariable(name: "n1", arg: 5, scope: !86, file: !1, line: 277, type: !19)
!95 = !DILocalVariable(name: "ctr", arg: 6, scope: !86, file: !1, line: 278, type: !3)
!96 = !DILocation(line: 0, scope: !86)
!97 = !DILocation(line: 281, column: 3, scope: !86)
!98 = !DILocation(line: 282, column: 1, scope: !86)
!99 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20", scope: !1, file: !1, line: 227, type: !87, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108}
!101 = !DILocalVariable(name: "output", arg: 1, scope: !99, file: !1, line: 228, type: !19)
!102 = !DILocalVariable(name: "plain", arg: 2, scope: !99, file: !1, line: 229, type: !19)
!103 = !DILocalVariable(name: "len", arg: 3, scope: !99, file: !1, line: 230, type: !3)
!104 = !DILocalVariable(name: "k", arg: 4, scope: !99, file: !1, line: 231, type: !19)
!105 = !DILocalVariable(name: "n1", arg: 5, scope: !99, file: !1, line: 232, type: !19)
!106 = !DILocalVariable(name: "ctr", arg: 6, scope: !99, file: !1, line: 233, type: !3)
!107 = !DILocalVariable(name: "buf", scope: !99, file: !1, line: 236, type: !29)
!108 = !DILocalVariable(name: "st", scope: !99, file: !1, line: 237, type: !33)
!109 = !DILocation(line: 0, scope: !99)
!110 = !DILocation(line: 236, column: 3, scope: !99)
!111 = !DILocation(line: 236, column: 12, scope: !99)
!112 = !DILocation(line: 237, column: 18, scope: !99)
!113 = !DILocation(line: 238, column: 3, scope: !99)
!114 = !DILocation(line: 239, column: 3, scope: !99)
!115 = !DILocation(line: 240, column: 1, scope: !99)
!116 = distinct !DISubprogram(name: "Hacl_Lib_LoadStore32_uint32s_from_le_bytes", scope: !1, file: !1, line: 28, type: !117, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !33, !19, !3}
!119 = !{!120, !121, !122, !123, !125, !128}
!120 = !DILocalVariable(name: "output", arg: 1, scope: !116, file: !1, line: 28, type: !33)
!121 = !DILocalVariable(name: "input", arg: 2, scope: !116, file: !1, line: 28, type: !19)
!122 = !DILocalVariable(name: "len", arg: 3, scope: !116, file: !1, line: 28, type: !3)
!123 = !DILocalVariable(name: "i", scope: !124, file: !1, line: 30, type: !3)
!124 = distinct !DILexicalBlock(scope: !116, file: !1, line: 30, column: 3)
!125 = !DILocalVariable(name: "x0", scope: !126, file: !1, line: 32, type: !19)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 31, column: 3)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 30, column: 3)
!128 = !DILocalVariable(name: "inputi", scope: !126, file: !1, line: 33, type: !3)
!129 = !DILocation(line: 0, scope: !116)
!130 = !DILocation(line: 0, scope: !124)
!131 = !DILocation(line: 30, column: 37, scope: !127)
!132 = !DILocation(line: 30, column: 3, scope: !124)
!133 = !DILocation(line: 36, column: 1, scope: !116)
!134 = !DILocation(line: 32, column: 40, scope: !126)
!135 = !DILocation(line: 32, column: 25, scope: !126)
!136 = !DILocation(line: 0, scope: !126)
!137 = !DILocation(line: 33, column: 23, scope: !126)
!138 = !DILocation(line: 34, column: 5, scope: !126)
!139 = !DILocation(line: 34, column: 15, scope: !126)
!140 = !DILocation(line: 30, column: 50, scope: !127)
!141 = distinct !{!141, !132, !142, !143, !144}
!142 = !DILocation(line: 35, column: 3, scope: !124)
!143 = !{!"llvm.loop.mustprogress"}
!144 = !{!"llvm.loop.unroll.disable"}
!145 = distinct !DISubprogram(name: "load32", scope: !146, file: !146, line: 341, type: !147, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!146 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!147 = !DISubroutineType(types: !148)
!148 = !{!3, !19}
!149 = !{!150, !151}
!150 = !DILocalVariable(name: "b", arg: 1, scope: !145, file: !146, line: 341, type: !19)
!151 = !DILocalVariable(name: "x", scope: !145, file: !146, line: 342, type: !3)
!152 = !DILocation(line: 0, scope: !145)
!153 = !DILocation(line: 343, column: 3, scope: !145)
!154 = !DILocation(line: 344, column: 3, scope: !145)
!155 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_core", scope: !1, file: !1, line: 120, type: !156, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !33, !33, !3}
!158 = !{!159, !160, !161}
!159 = !DILocalVariable(name: "k", arg: 1, scope: !155, file: !1, line: 120, type: !33)
!160 = !DILocalVariable(name: "st", arg: 2, scope: !155, file: !1, line: 120, type: !33)
!161 = !DILocalVariable(name: "ctr", arg: 3, scope: !155, file: !1, line: 120, type: !3)
!162 = !DILocation(line: 0, scope: !155)
!163 = !DILocation(line: 122, column: 3, scope: !155)
!164 = !DILocation(line: 122, column: 11, scope: !155)
!165 = !DILocation(line: 123, column: 3, scope: !155)
!166 = !DILocation(line: 124, column: 3, scope: !155)
!167 = !DILocation(line: 125, column: 3, scope: !155)
!168 = !DILocation(line: 126, column: 1, scope: !155)
!169 = distinct !DISubprogram(name: "Hacl_Lib_LoadStore32_uint32s_to_le_bytes", scope: !1, file: !1, line: 39, type: !72, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!170 = !{!171, !172, !173, !174, !176, !179}
!171 = !DILocalVariable(name: "output", arg: 1, scope: !169, file: !1, line: 39, type: !19)
!172 = !DILocalVariable(name: "input", arg: 2, scope: !169, file: !1, line: 39, type: !33)
!173 = !DILocalVariable(name: "len", arg: 3, scope: !169, file: !1, line: 39, type: !3)
!174 = !DILocalVariable(name: "i", scope: !175, file: !1, line: 41, type: !3)
!175 = distinct !DILexicalBlock(scope: !169, file: !1, line: 41, column: 3)
!176 = !DILocalVariable(name: "hd1", scope: !177, file: !1, line: 43, type: !3)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 42, column: 3)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 41, column: 3)
!179 = !DILocalVariable(name: "x0", scope: !177, file: !1, line: 44, type: !19)
!180 = !DILocation(line: 0, scope: !169)
!181 = !DILocation(line: 0, scope: !175)
!182 = !DILocation(line: 41, column: 3, scope: !175)
!183 = !DILocation(line: 47, column: 1, scope: !169)
!184 = !DILocation(line: 43, column: 20, scope: !177)
!185 = !DILocation(line: 0, scope: !177)
!186 = !DILocation(line: 44, column: 41, scope: !177)
!187 = !DILocation(line: 44, column: 26, scope: !177)
!188 = !DILocation(line: 45, column: 5, scope: !177)
!189 = !DILocation(line: 41, column: 50, scope: !178)
!190 = !DILocation(line: 41, column: 37, scope: !178)
!191 = distinct !{!191, !182, !192, !143, !144}
!192 = !DILocation(line: 46, column: 3, scope: !175)
!193 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_copy_state", scope: !1, file: !1, line: 115, type: !194, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !196)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !33, !33}
!196 = !{!197, !198}
!197 = !DILocalVariable(name: "st", arg: 1, scope: !193, file: !1, line: 115, type: !33)
!198 = !DILocalVariable(name: "st_", arg: 2, scope: !193, file: !1, line: 115, type: !33)
!199 = !DILocation(line: 0, scope: !193)
!200 = !DILocation(line: 117, column: 3, scope: !193)
!201 = !DILocation(line: 118, column: 1, scope: !193)
!202 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_rounds", scope: !1, file: !1, line: 99, type: !203, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !33}
!205 = !{!206, !207}
!206 = !DILocalVariable(name: "st", arg: 1, scope: !202, file: !1, line: 99, type: !33)
!207 = !DILocalVariable(name: "i", scope: !208, file: !1, line: 101, type: !3)
!208 = distinct !DILexicalBlock(scope: !202, file: !1, line: 101, column: 3)
!209 = !DILocation(line: 0, scope: !202)
!210 = !DILocation(line: 0, scope: !208)
!211 = !DILocation(line: 101, column: 3, scope: !208)
!212 = !DILocation(line: 103, column: 1, scope: !202)
!213 = !DILocation(line: 102, column: 5, scope: !214)
!214 = distinct !DILexicalBlock(scope: !208, file: !1, line: 101, column: 3)
!215 = !DILocation(line: 101, column: 60, scope: !214)
!216 = !DILocation(line: 101, column: 37, scope: !214)
!217 = distinct !{!217, !211, !218, !143, !144}
!218 = !DILocation(line: 102, column: 39, scope: !208)
!219 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_sum_states", scope: !1, file: !1, line: 105, type: !194, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !220)
!220 = !{!221, !222, !223, !225, !228}
!221 = !DILocalVariable(name: "st", arg: 1, scope: !219, file: !1, line: 105, type: !33)
!222 = !DILocalVariable(name: "st_", arg: 2, scope: !219, file: !1, line: 105, type: !33)
!223 = !DILocalVariable(name: "i", scope: !224, file: !1, line: 107, type: !3)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 107, column: 3)
!225 = !DILocalVariable(name: "xi", scope: !226, file: !1, line: 109, type: !3)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 108, column: 3)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 107, column: 3)
!228 = !DILocalVariable(name: "yi", scope: !226, file: !1, line: 110, type: !3)
!229 = !DILocation(line: 0, scope: !219)
!230 = !DILocation(line: 0, scope: !224)
!231 = !DILocation(line: 107, column: 3, scope: !224)
!232 = !DILocation(line: 113, column: 1, scope: !219)
!233 = !DILocation(line: 109, column: 19, scope: !226)
!234 = !DILocation(line: 0, scope: !226)
!235 = !DILocation(line: 110, column: 19, scope: !226)
!236 = !DILocation(line: 111, column: 16, scope: !226)
!237 = !DILocation(line: 111, column: 11, scope: !226)
!238 = !DILocation(line: 107, column: 60, scope: !227)
!239 = !DILocation(line: 107, column: 37, scope: !227)
!240 = distinct !{!240, !231, !241, !143, !144}
!241 = !DILocation(line: 112, column: 3, scope: !224)
!242 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_double_round", scope: !1, file: !1, line: 87, type: !203, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !243)
!243 = !{!244}
!244 = !DILocalVariable(name: "st", arg: 1, scope: !242, file: !1, line: 87, type: !33)
!245 = !DILocation(line: 0, scope: !242)
!246 = !DILocation(line: 89, column: 3, scope: !242)
!247 = !DILocation(line: 90, column: 3, scope: !242)
!248 = !DILocation(line: 91, column: 3, scope: !242)
!249 = !DILocation(line: 92, column: 3, scope: !242)
!250 = !DILocation(line: 93, column: 3, scope: !242)
!251 = !DILocation(line: 94, column: 3, scope: !242)
!252 = !DILocation(line: 95, column: 3, scope: !242)
!253 = !DILocation(line: 96, column: 3, scope: !242)
!254 = !DILocation(line: 97, column: 1, scope: !242)
!255 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_quarter_round", scope: !1, file: !1, line: 55, type: !256, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !33, !3, !3, !3, !3}
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!259 = !DILocalVariable(name: "st", arg: 1, scope: !255, file: !1, line: 55, type: !33)
!260 = !DILocalVariable(name: "a", arg: 2, scope: !255, file: !1, line: 55, type: !3)
!261 = !DILocalVariable(name: "b", arg: 3, scope: !255, file: !1, line: 55, type: !3)
!262 = !DILocalVariable(name: "c", arg: 4, scope: !255, file: !1, line: 55, type: !3)
!263 = !DILocalVariable(name: "d", arg: 5, scope: !255, file: !1, line: 55, type: !3)
!264 = !DILocalVariable(name: "sa", scope: !255, file: !1, line: 57, type: !3)
!265 = !DILocalVariable(name: "sb0", scope: !255, file: !1, line: 58, type: !3)
!266 = !DILocalVariable(name: "sd", scope: !255, file: !1, line: 60, type: !3)
!267 = !DILocalVariable(name: "sa10", scope: !255, file: !1, line: 61, type: !3)
!268 = !DILocalVariable(name: "sda", scope: !255, file: !1, line: 62, type: !3)
!269 = !DILocalVariable(name: "sa0", scope: !255, file: !1, line: 64, type: !3)
!270 = !DILocalVariable(name: "sb1", scope: !255, file: !1, line: 65, type: !3)
!271 = !DILocalVariable(name: "sd0", scope: !255, file: !1, line: 67, type: !3)
!272 = !DILocalVariable(name: "sa11", scope: !255, file: !1, line: 68, type: !3)
!273 = !DILocalVariable(name: "sda0", scope: !255, file: !1, line: 69, type: !3)
!274 = !DILocalVariable(name: "sa2", scope: !255, file: !1, line: 71, type: !3)
!275 = !DILocalVariable(name: "sb2", scope: !255, file: !1, line: 72, type: !3)
!276 = !DILocalVariable(name: "sd1", scope: !255, file: !1, line: 74, type: !3)
!277 = !DILocalVariable(name: "sa12", scope: !255, file: !1, line: 75, type: !3)
!278 = !DILocalVariable(name: "sda1", scope: !255, file: !1, line: 76, type: !3)
!279 = !DILocalVariable(name: "sa3", scope: !255, file: !1, line: 78, type: !3)
!280 = !DILocalVariable(name: "sb", scope: !255, file: !1, line: 79, type: !3)
!281 = !DILocalVariable(name: "sd2", scope: !255, file: !1, line: 81, type: !3)
!282 = !DILocalVariable(name: "sa1", scope: !255, file: !1, line: 82, type: !3)
!283 = !DILocalVariable(name: "sda2", scope: !255, file: !1, line: 83, type: !3)
!284 = !DILocation(line: 0, scope: !255)
!285 = !DILocation(line: 57, column: 17, scope: !255)
!286 = !DILocation(line: 58, column: 18, scope: !255)
!287 = !DILocation(line: 59, column: 14, scope: !255)
!288 = !DILocation(line: 59, column: 9, scope: !255)
!289 = !DILocation(line: 60, column: 17, scope: !255)
!290 = !DILocation(line: 62, column: 21, scope: !255)
!291 = !DILocation(line: 63, column: 11, scope: !255)
!292 = !DILocation(line: 63, column: 9, scope: !255)
!293 = !DILocation(line: 64, column: 18, scope: !255)
!294 = !DILocation(line: 66, column: 15, scope: !255)
!295 = !DILocation(line: 66, column: 9, scope: !255)
!296 = !DILocation(line: 67, column: 18, scope: !255)
!297 = !DILocation(line: 69, column: 23, scope: !255)
!298 = !DILocation(line: 70, column: 11, scope: !255)
!299 = !DILocation(line: 70, column: 9, scope: !255)
!300 = !DILocation(line: 71, column: 18, scope: !255)
!301 = !DILocation(line: 73, column: 15, scope: !255)
!302 = !DILocation(line: 73, column: 9, scope: !255)
!303 = !DILocation(line: 74, column: 18, scope: !255)
!304 = !DILocation(line: 76, column: 23, scope: !255)
!305 = !DILocation(line: 77, column: 11, scope: !255)
!306 = !DILocation(line: 77, column: 9, scope: !255)
!307 = !DILocation(line: 78, column: 18, scope: !255)
!308 = !DILocation(line: 80, column: 15, scope: !255)
!309 = !DILocation(line: 80, column: 9, scope: !255)
!310 = !DILocation(line: 81, column: 18, scope: !255)
!311 = !DILocation(line: 83, column: 23, scope: !255)
!312 = !DILocation(line: 84, column: 11, scope: !255)
!313 = !DILocation(line: 84, column: 9, scope: !255)
!314 = !DILocation(line: 85, column: 1, scope: !255)
!315 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_rotate_left", scope: !1, file: !1, line: 49, type: !316, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !318)
!316 = !DISubroutineType(types: !317)
!317 = !{!3, !3, !3}
!318 = !{!319, !320}
!319 = !DILocalVariable(name: "a", arg: 1, scope: !315, file: !1, line: 49, type: !3)
!320 = !DILocalVariable(name: "s", arg: 2, scope: !315, file: !1, line: 49, type: !3)
!321 = !DILocation(line: 0, scope: !315)
!322 = !DILocation(line: 51, column: 12, scope: !315)
!323 = !DILocation(line: 51, column: 39, scope: !315)
!324 = !DILocation(line: 51, column: 21, scope: !315)
!325 = !DILocation(line: 51, column: 17, scope: !315)
!326 = !DILocation(line: 51, column: 3, scope: !315)
!327 = distinct !DISubprogram(name: "store32", scope: !146, file: !146, line: 355, type: !328, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !330)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !19, !3}
!330 = !{!331, !332}
!331 = !DILocalVariable(name: "b", arg: 1, scope: !327, file: !146, line: 355, type: !19)
!332 = !DILocalVariable(name: "i", arg: 2, scope: !327, file: !146, line: 355, type: !3)
!333 = !DILocation(line: 0, scope: !327)
!334 = !DILocation(line: 355, column: 54, scope: !327)
!335 = !DILocation(line: 355, column: 72, scope: !327)
!336 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_counter_mode", scope: !1, file: !1, line: 207, type: !337, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !19, !19, !3, !33, !3}
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!340 = !DILocalVariable(name: "output", arg: 1, scope: !336, file: !1, line: 208, type: !19)
!341 = !DILocalVariable(name: "plain", arg: 2, scope: !336, file: !1, line: 209, type: !19)
!342 = !DILocalVariable(name: "len", arg: 3, scope: !336, file: !1, line: 210, type: !3)
!343 = !DILocalVariable(name: "st", arg: 4, scope: !336, file: !1, line: 211, type: !33)
!344 = !DILocalVariable(name: "ctr", arg: 5, scope: !336, file: !1, line: 212, type: !3)
!345 = !DILocalVariable(name: "blocks_len", scope: !336, file: !1, line: 215, type: !3)
!346 = !DILocalVariable(name: "part_len", scope: !336, file: !1, line: 216, type: !3)
!347 = !DILocalVariable(name: "output_", scope: !336, file: !1, line: 217, type: !19)
!348 = !DILocalVariable(name: "plain_", scope: !336, file: !1, line: 218, type: !19)
!349 = !DILocalVariable(name: "output__", scope: !336, file: !1, line: 219, type: !19)
!350 = !DILocalVariable(name: "plain__", scope: !336, file: !1, line: 220, type: !19)
!351 = !DILocation(line: 0, scope: !336)
!352 = !DILocation(line: 215, column: 29, scope: !336)
!353 = !DILocation(line: 216, column: 27, scope: !336)
!354 = !DILocation(line: 219, column: 46, scope: !336)
!355 = !DILocation(line: 221, column: 3, scope: !336)
!356 = !DILocation(line: 222, column: 16, scope: !357)
!357 = distinct !DILexicalBlock(scope: !336, file: !1, line: 222, column: 7)
!358 = !DILocation(line: 222, column: 7, scope: !336)
!359 = !DILocation(line: 220, column: 28, scope: !336)
!360 = !DILocation(line: 219, column: 30, scope: !336)
!361 = !DILocation(line: 223, column: 73, scope: !357)
!362 = !DILocation(line: 223, column: 5, scope: !357)
!363 = !DILocation(line: 224, column: 1, scope: !336)
!364 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_counter_mode_blocks", scope: !1, file: !1, line: 190, type: !337, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !373, !376}
!366 = !DILocalVariable(name: "output", arg: 1, scope: !364, file: !1, line: 191, type: !19)
!367 = !DILocalVariable(name: "plain", arg: 2, scope: !364, file: !1, line: 192, type: !19)
!368 = !DILocalVariable(name: "num_blocks", arg: 3, scope: !364, file: !1, line: 193, type: !3)
!369 = !DILocalVariable(name: "st", arg: 4, scope: !364, file: !1, line: 194, type: !33)
!370 = !DILocalVariable(name: "ctr", arg: 5, scope: !364, file: !1, line: 195, type: !3)
!371 = !DILocalVariable(name: "i", scope: !372, file: !1, line: 198, type: !3)
!372 = distinct !DILexicalBlock(scope: !364, file: !1, line: 198, column: 3)
!373 = !DILocalVariable(name: "b", scope: !374, file: !1, line: 200, type: !19)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 199, column: 3)
!375 = distinct !DILexicalBlock(scope: !372, file: !1, line: 198, column: 3)
!376 = !DILocalVariable(name: "o", scope: !374, file: !1, line: 201, type: !19)
!377 = !DILocation(line: 0, scope: !364)
!378 = !DILocation(line: 0, scope: !372)
!379 = !DILocation(line: 198, column: 37, scope: !375)
!380 = !DILocation(line: 198, column: 3, scope: !372)
!381 = !DILocation(line: 204, column: 1, scope: !364)
!382 = !DILocation(line: 200, column: 40, scope: !374)
!383 = !DILocation(line: 200, column: 24, scope: !374)
!384 = !DILocation(line: 0, scope: !374)
!385 = !DILocation(line: 201, column: 25, scope: !374)
!386 = !DILocation(line: 202, column: 45, scope: !374)
!387 = !DILocation(line: 202, column: 5, scope: !374)
!388 = !DILocation(line: 198, column: 57, scope: !375)
!389 = distinct !{!389, !380, !390, !143, !144}
!390 = !DILocation(line: 203, column: 3, scope: !372)
!391 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_update_last", scope: !1, file: !1, line: 170, type: !337, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !392)
!392 = !{!393, !394, !395, !396, !397, !398, !402, !403, !405, !408}
!393 = !DILocalVariable(name: "output", arg: 1, scope: !391, file: !1, line: 171, type: !19)
!394 = !DILocalVariable(name: "plain", arg: 2, scope: !391, file: !1, line: 172, type: !19)
!395 = !DILocalVariable(name: "len", arg: 3, scope: !391, file: !1, line: 173, type: !3)
!396 = !DILocalVariable(name: "st", arg: 4, scope: !391, file: !1, line: 174, type: !33)
!397 = !DILocalVariable(name: "ctr", arg: 5, scope: !391, file: !1, line: 175, type: !3)
!398 = !DILocalVariable(name: "block", scope: !391, file: !1, line: 178, type: !399)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 512, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 64)
!402 = !DILocalVariable(name: "mask", scope: !391, file: !1, line: 180, type: !19)
!403 = !DILocalVariable(name: "i", scope: !404, file: !1, line: 181, type: !3)
!404 = distinct !DILexicalBlock(scope: !391, file: !1, line: 181, column: 3)
!405 = !DILocalVariable(name: "xi", scope: !406, file: !1, line: 183, type: !20)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 182, column: 3)
!407 = distinct !DILexicalBlock(scope: !404, file: !1, line: 181, column: 3)
!408 = !DILocalVariable(name: "yi", scope: !406, file: !1, line: 184, type: !20)
!409 = !DILocation(line: 0, scope: !391)
!410 = !DILocation(line: 178, column: 3, scope: !391)
!411 = !DILocation(line: 178, column: 11, scope: !391)
!412 = !DILocation(line: 179, column: 3, scope: !391)
!413 = !DILocation(line: 0, scope: !404)
!414 = !DILocation(line: 181, column: 37, scope: !407)
!415 = !DILocation(line: 181, column: 3, scope: !404)
!416 = !DILocation(line: 187, column: 1, scope: !391)
!417 = !DILocation(line: 183, column: 18, scope: !406)
!418 = !{!59, !59, i64 0}
!419 = !DILocation(line: 0, scope: !406)
!420 = !DILocation(line: 184, column: 18, scope: !406)
!421 = !DILocation(line: 185, column: 20, scope: !406)
!422 = !DILocation(line: 185, column: 5, scope: !406)
!423 = !DILocation(line: 185, column: 15, scope: !406)
!424 = !DILocation(line: 181, column: 50, scope: !407)
!425 = distinct !{!425, !415, !426, !143, !144}
!426 = !DILocation(line: 186, column: 3, scope: !404)
!427 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_update", scope: !1, file: !1, line: 152, type: !428, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !19, !19, !33, !3}
!430 = !{!431, !432, !433, !434, !435, !439, !440, !441, !442, !444, !447}
!431 = !DILocalVariable(name: "output", arg: 1, scope: !427, file: !1, line: 152, type: !19)
!432 = !DILocalVariable(name: "plain", arg: 2, scope: !427, file: !1, line: 152, type: !19)
!433 = !DILocalVariable(name: "st", arg: 3, scope: !427, file: !1, line: 152, type: !33)
!434 = !DILocalVariable(name: "ctr", arg: 4, scope: !427, file: !1, line: 152, type: !3)
!435 = !DILocalVariable(name: "b", scope: !427, file: !1, line: 154, type: !436)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 1536, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 48)
!439 = !DILocalVariable(name: "k", scope: !427, file: !1, line: 155, type: !33)
!440 = !DILocalVariable(name: "ib", scope: !427, file: !1, line: 156, type: !33)
!441 = !DILocalVariable(name: "ob", scope: !427, file: !1, line: 157, type: !33)
!442 = !DILocalVariable(name: "i", scope: !443, file: !1, line: 160, type: !3)
!443 = distinct !DILexicalBlock(scope: !427, file: !1, line: 160, column: 3)
!444 = !DILocalVariable(name: "xi", scope: !445, file: !1, line: 162, type: !3)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 161, column: 3)
!446 = distinct !DILexicalBlock(scope: !443, file: !1, line: 160, column: 3)
!447 = !DILocalVariable(name: "yi", scope: !445, file: !1, line: 163, type: !3)
!448 = !DILocation(line: 0, scope: !427)
!449 = !DILocation(line: 154, column: 3, scope: !427)
!450 = !DILocation(line: 154, column: 12, scope: !427)
!451 = !DILocation(line: 155, column: 17, scope: !427)
!452 = !DILocation(line: 156, column: 20, scope: !427)
!453 = !DILocation(line: 157, column: 20, scope: !427)
!454 = !DILocation(line: 158, column: 3, scope: !427)
!455 = !DILocation(line: 159, column: 3, scope: !427)
!456 = !DILocation(line: 0, scope: !443)
!457 = !DILocation(line: 160, column: 3, scope: !443)
!458 = !DILocation(line: 166, column: 3, scope: !427)
!459 = !DILocation(line: 167, column: 1, scope: !427)
!460 = !DILocation(line: 162, column: 19, scope: !445)
!461 = !DILocation(line: 0, scope: !445)
!462 = !DILocation(line: 163, column: 19, scope: !445)
!463 = !DILocation(line: 164, column: 16, scope: !445)
!464 = !DILocation(line: 164, column: 5, scope: !445)
!465 = !DILocation(line: 164, column: 11, scope: !445)
!466 = !DILocation(line: 160, column: 60, scope: !446)
!467 = !DILocation(line: 160, column: 37, scope: !446)
!468 = distinct !{!468, !457, !469, !143, !144}
!469 = !DILocation(line: 165, column: 3, scope: !443)
