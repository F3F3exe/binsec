; ModuleID = 'hacl-c/hacl-c/Hacl_Salsa20.c'
source_filename = "hacl-c/hacl-c/Hacl_Salsa20.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_Salsa20_salsa20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i8* nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #0 !dbg !19 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %1, metadata !28, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32 %2, metadata !29, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %3, metadata !30, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %4, metadata !31, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i64 %5, metadata !32, metadata !DIExpression()), !dbg !33
  call fastcc void @Hacl_Impl_Salsa20_salsa20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i64 noundef %5), !dbg !34
  ret void, !dbg !35
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_salsa20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i8* nocapture noundef readonly %4, i64 noundef %5) unnamed_addr #0 !dbg !36 {
  %7 = alloca [16 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !38, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8* %1, metadata !39, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i32 %2, metadata !40, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8* %3, metadata !41, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8* %4, metadata !42, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i64 %5, metadata !43, metadata !DIExpression()), !dbg !50
  %8 = bitcast [16 x i32]* %7 to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #11, !dbg !51
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !44, metadata !DIExpression()), !dbg !52
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %8, i8 0, i32 64, i1 false), !dbg !52
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i32 0, i32 0, !dbg !53
  call void @llvm.dbg.value(metadata i32* %9, metadata !48, metadata !DIExpression()), !dbg !50
  call fastcc void @Hacl_Impl_Salsa20_init(i32* noundef nonnull %9, i8* noundef %3, i8* noundef %4), !dbg !54
  call fastcc void @Hacl_Impl_Salsa20_salsa20_counter_mode(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef nonnull %9, i64 noundef %5), !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #11, !dbg !56
  ret void, !dbg !56
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_Salsa20_hsalsa20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !57 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !61, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i8* %1, metadata !62, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i8* %2, metadata !63, metadata !DIExpression()), !dbg !64
  call fastcc void @Hacl_Impl_HSalsa20_crypto_core_hsalsa20(i8* noundef %0, i8* noundef %2, i8* noundef %1), !dbg !65
  ret void, !dbg !66
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_HSalsa20_crypto_core_hsalsa20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) unnamed_addr #0 !dbg !67 {
  %4 = alloca [24 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !69, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i8* %1, metadata !70, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i8* %2, metadata !71, metadata !DIExpression()), !dbg !86
  %5 = bitcast [24 x i32]* %4 to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #11, !dbg !87
  call void @llvm.dbg.declare(metadata [24 x i32]* %4, metadata !72, metadata !DIExpression()), !dbg !88
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(96) %5, i8 0, i32 96, i1 false), !dbg !88
  %6 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 0, !dbg !89
  call void @llvm.dbg.value(metadata i32* %6, metadata !76, metadata !DIExpression()), !dbg !86
  %7 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 16, !dbg !90
  call void @llvm.dbg.value(metadata i32* %7, metadata !77, metadata !DIExpression()), !dbg !86
  call fastcc void @Hacl_Impl_HSalsa20_setup(i32* noundef nonnull %6, i8* noundef %2, i8* noundef %1), !dbg !91
  call fastcc void @Hacl_Impl_Salsa20_rounds(i32* noundef nonnull %6), !dbg !92
  %8 = load i32, i32* %6, align 4, !dbg !93, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %8, metadata !78, metadata !DIExpression()), !dbg !86
  %9 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 5, !dbg !98
  %10 = load i32, i32* %9, align 4, !dbg !98, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %10, metadata !79, metadata !DIExpression()), !dbg !86
  %11 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 10, !dbg !99
  %12 = load i32, i32* %11, align 4, !dbg !99, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %12, metadata !80, metadata !DIExpression()), !dbg !86
  %13 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 15, !dbg !100
  %14 = load i32, i32* %13, align 4, !dbg !100, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %14, metadata !81, metadata !DIExpression()), !dbg !86
  %15 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 6, !dbg !101
  %16 = load i32, i32* %15, align 4, !dbg !101, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %16, metadata !82, metadata !DIExpression()), !dbg !86
  %17 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 7, !dbg !102
  %18 = load i32, i32* %17, align 4, !dbg !102, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %18, metadata !83, metadata !DIExpression()), !dbg !86
  %19 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 8, !dbg !103
  %20 = load i32, i32* %19, align 4, !dbg !103, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %20, metadata !84, metadata !DIExpression()), !dbg !86
  %21 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i32 0, i32 9, !dbg !104
  %22 = load i32, i32* %21, align 4, !dbg !104, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %22, metadata !85, metadata !DIExpression()), !dbg !86
  call fastcc void @Hacl_Lib_Create_make_h32_8(i32* noundef nonnull %7, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22), !dbg !105
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(i8* noundef %0, i32* noundef nonnull %7, i32 noundef 8), !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #11, !dbg !107
  ret void, !dbg !107
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_init(i32* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) unnamed_addr #0 !dbg !108 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !112, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i8* %1, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i8* %2, metadata !114, metadata !DIExpression()), !dbg !115
  call fastcc void @Hacl_Impl_Salsa20_setup(i32* noundef %0, i8* noundef %1, i8* noundef %2), !dbg !116
  ret void, !dbg !117
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_salsa20_counter_mode(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef %3, i64 noundef %4) unnamed_addr #0 !dbg !118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !122, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i8* %1, metadata !123, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i32 %2, metadata !124, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i32* %3, metadata !125, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %4, metadata !126, metadata !DIExpression()), !dbg !133
  %6 = lshr i32 %2, 6, !dbg !134
  call void @llvm.dbg.value(metadata i32 %6, metadata !127, metadata !DIExpression()), !dbg !133
  %7 = and i32 %2, 63, !dbg !135
  call void @llvm.dbg.value(metadata i32 %7, metadata !128, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i8* %0, metadata !129, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i8* %1, metadata !130, metadata !DIExpression()), !dbg !133
  %8 = and i32 %2, -64, !dbg !136
  call void @llvm.dbg.value(metadata !DIArgList(i8* %0, i32 %8), metadata !131, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !133
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i32 %8), metadata !132, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !133
  call fastcc void @Hacl_Impl_Salsa20_salsa20_counter_mode_blocks(i8* noundef %0, i8* noundef %1, i32 noundef %6, i32* noundef %3, i64 noundef %4), !dbg !137
  %9 = icmp eq i32 %7, 0, !dbg !138
  br i1 %9, label %15, label %10, !dbg !140

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !141
  call void @llvm.dbg.value(metadata i8* %11, metadata !132, metadata !DIExpression()), !dbg !133
  %12 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !142
  call void @llvm.dbg.value(metadata i8* %12, metadata !131, metadata !DIExpression()), !dbg !133
  %13 = zext i32 %6 to i64, !dbg !143
  %14 = add i64 %13, %4, !dbg !144
  call fastcc void @Hacl_Impl_Salsa20_update_last(i8* noundef %12, i8* noundef %11, i32 noundef %7, i32* noundef %3, i64 noundef %14), !dbg !145
  br label %15, !dbg !145

15:                                               ; preds = %10, %5
  ret void, !dbg !146
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_setup(i32* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) unnamed_addr #0 !dbg !147 {
  %4 = alloca [10 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !151, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i8* %1, metadata !152, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i8* %2, metadata !153, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 0, metadata !154, metadata !DIExpression()), !dbg !173
  %5 = bitcast [10 x i32]* %4 to i8*, !dbg !174
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #11, !dbg !174
  call void @llvm.dbg.declare(metadata [10 x i32]* %4, metadata !155, metadata !DIExpression()), !dbg !175
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false), !dbg !175
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 0, !dbg !176
  call void @llvm.dbg.value(metadata i32* %6, metadata !159, metadata !DIExpression()), !dbg !173
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 8, !dbg !177
  call void @llvm.dbg.value(metadata i32* %7, metadata !160, metadata !DIExpression()), !dbg !173
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(i32* noundef nonnull %6, i8* noundef %1, i32 noundef 8), !dbg !178
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(i32* noundef nonnull %7, i8* noundef %2, i32 noundef 2), !dbg !179
  call void @llvm.dbg.value(metadata i32 0, metadata !161, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i32 0, metadata !162, metadata !DIExpression()), !dbg !173
  %8 = load i32, i32* %6, align 4, !dbg !180, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %8, metadata !163, metadata !DIExpression()), !dbg !173
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 1, !dbg !181
  %10 = load i32, i32* %9, align 4, !dbg !181, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %10, metadata !164, metadata !DIExpression()), !dbg !173
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 2, !dbg !182
  %12 = load i32, i32* %11, align 4, !dbg !182, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %12, metadata !165, metadata !DIExpression()), !dbg !173
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 3, !dbg !183
  %14 = load i32, i32* %13, align 4, !dbg !183, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %14, metadata !166, metadata !DIExpression()), !dbg !173
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 4, !dbg !184
  %16 = load i32, i32* %15, align 4, !dbg !184, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %16, metadata !167, metadata !DIExpression()), !dbg !173
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 5, !dbg !185
  %18 = load i32, i32* %17, align 4, !dbg !185, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %18, metadata !168, metadata !DIExpression()), !dbg !173
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 6, !dbg !186
  %20 = load i32, i32* %19, align 4, !dbg !186, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %20, metadata !169, metadata !DIExpression()), !dbg !173
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 7, !dbg !187
  %22 = load i32, i32* %21, align 4, !dbg !187, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %22, metadata !170, metadata !DIExpression()), !dbg !173
  %23 = load i32, i32* %7, align 4, !dbg !188, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %23, metadata !171, metadata !DIExpression()), !dbg !173
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 9, !dbg !189
  %25 = load i32, i32* %24, align 4, !dbg !189, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %25, metadata !172, metadata !DIExpression()), !dbg !173
  call fastcc void @Hacl_Lib_Create_make_h32_16(i32* noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %23, i32 noundef %25, i32 noundef 0, i32 noundef 0, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22), !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #11, !dbg !191
  ret void, !dbg !191
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(i32* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 !dbg !192 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !196, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i8* %1, metadata !197, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %2, metadata !198, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 0, metadata !199, metadata !DIExpression()), !dbg !206
  %4 = icmp eq i32 %2, 0, !dbg !207
  br i1 %4, label %5, label %6, !dbg !208

5:                                                ; preds = %6, %3
  ret void, !dbg !209

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %12, %6 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !199, metadata !DIExpression()), !dbg !206
  %8 = shl i32 %7, 2, !dbg !210
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !211
  call void @llvm.dbg.value(metadata i8* %9, metadata !201, metadata !DIExpression()), !dbg !212
  %10 = call fastcc i32 @load32(i8* noundef %9), !dbg !213
  call void @llvm.dbg.value(metadata i32 %10, metadata !204, metadata !DIExpression()), !dbg !212
  %11 = getelementptr inbounds i32, i32* %0, i32 %7, !dbg !214
  store i32 %10, i32* %11, align 4, !dbg !215, !tbaa !94
  %12 = add nuw i32 %7, 1, !dbg !216
  call void @llvm.dbg.value(metadata i32 %12, metadata !199, metadata !DIExpression()), !dbg !206
  %13 = icmp eq i32 %12, %2, !dbg !207
  br i1 %13, label %5, label %6, !dbg !208, !llvm.loop !217
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Lib_Create_make_h32_16(i32* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) unnamed_addr #5 !dbg !221 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !225, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 1634760805, metadata !226, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %1, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %2, metadata !228, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %3, metadata !229, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %4, metadata !230, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 857760878, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %5, metadata !232, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %6, metadata !233, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %7, metadata !234, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %8, metadata !235, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 2036477234, metadata !236, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %9, metadata !237, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %10, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %11, metadata !239, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 %12, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 1797285236, metadata !241, metadata !DIExpression()), !dbg !242
  call fastcc void @Hacl_Lib_Create_make_h32_8(i32* noundef %0, i32 noundef 1634760805, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 857760878, i32 noundef %5, i32 noundef %6), !dbg !243
  %14 = getelementptr inbounds i32, i32* %0, i32 8, !dbg !244
  call fastcc void @Hacl_Lib_Create_make_h32_8(i32* noundef nonnull %14, i32 noundef %7, i32 noundef %8, i32 noundef 2036477234, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef 1797285236), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @load32(i8* nocapture noundef readonly %0) unnamed_addr #6 !dbg !247 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !252, metadata !DIExpression()), !dbg !254
  %2 = bitcast i8* %0 to i32*, !dbg !255
  %3 = load i32, i32* %2, align 1, !dbg !255
  call void @llvm.dbg.value(metadata i32 %3, metadata !253, metadata !DIExpression()), !dbg !254
  ret i32 %3, !dbg !256
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Lib_Create_make_h32_8(i32* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #5 !dbg !257 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !261, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %1, metadata !262, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %2, metadata !263, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %3, metadata !264, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %4, metadata !265, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %5, metadata !266, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %6, metadata !267, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %7, metadata !268, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %8, metadata !269, metadata !DIExpression()), !dbg !270
  call fastcc void @Hacl_Lib_Create_make_h32_4(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4), !dbg !271
  %10 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !272
  call fastcc void @Hacl_Lib_Create_make_h32_4(i32* noundef nonnull %10, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8), !dbg !273
  ret void, !dbg !274
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Lib_Create_make_h32_4(i32* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 !dbg !275 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %2, metadata !281, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %3, metadata !282, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %4, metadata !283, metadata !DIExpression()), !dbg !284
  store i32 %1, i32* %0, align 4, !dbg !285, !tbaa !94
  %6 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !286
  store i32 %2, i32* %6, align 4, !dbg !287, !tbaa !94
  %7 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !288
  store i32 %3, i32* %7, align 4, !dbg !289, !tbaa !94
  %8 = getelementptr inbounds i32, i32* %0, i32 3, !dbg !290
  store i32 %4, i32* %8, align 4, !dbg !291, !tbaa !94
  ret void, !dbg !292
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_salsa20_counter_mode_blocks(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef %3, i64 noundef %4) unnamed_addr #0 !dbg !293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !295, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i8* %1, metadata !296, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i32 %2, metadata !297, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i32* %3, metadata !298, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i64 %4, metadata !299, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !307
  %6 = icmp eq i32 %2, 0, !dbg !308
  br i1 %6, label %7, label %8, !dbg !309

7:                                                ; preds = %8, %5
  ret void, !dbg !310

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %15, %8 ], [ 0, %5 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !300, metadata !DIExpression()), !dbg !307
  %10 = shl i32 %9, 6, !dbg !311
  %11 = getelementptr inbounds i8, i8* %1, i32 %10, !dbg !312
  call void @llvm.dbg.value(metadata i8* %11, metadata !302, metadata !DIExpression()), !dbg !313
  %12 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !314
  call void @llvm.dbg.value(metadata i8* %12, metadata !305, metadata !DIExpression()), !dbg !313
  %13 = zext i32 %9 to i64, !dbg !315
  %14 = add i64 %13, %4, !dbg !316
  call fastcc void @Hacl_Impl_Salsa20_update(i8* noundef %12, i8* noundef %11, i32* noundef %3, i64 noundef %14), !dbg !317
  %15 = add nuw i32 %9, 1, !dbg !318
  call void @llvm.dbg.value(metadata i32 %15, metadata !300, metadata !DIExpression()), !dbg !307
  %16 = icmp eq i32 %15, %2, !dbg !308
  br i1 %16, label %7, label %8, !dbg !309, !llvm.loop !319
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_update_last(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef %3, i64 noundef %4) unnamed_addr #0 !dbg !321 {
  %6 = alloca [64 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !323, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i8* %1, metadata !324, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %2, metadata !325, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32* %3, metadata !326, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i64 %4, metadata !327, metadata !DIExpression()), !dbg !339
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i32 0, i32 0, !dbg !340
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #11, !dbg !340
  call void @llvm.dbg.declare(metadata [64 x i8]* %6, metadata !328, metadata !DIExpression()), !dbg !341
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 64, i1 false), !dbg !341
  call fastcc void @Hacl_Impl_Salsa20_salsa20_block(i8* noundef nonnull %7, i32* noundef %3, i64 noundef %4), !dbg !342
  call void @llvm.dbg.value(metadata i8* %7, metadata !332, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 0, metadata !333, metadata !DIExpression()), !dbg !343
  %8 = icmp eq i32 %2, 0, !dbg !344
  br i1 %8, label %9, label %10, !dbg !345

9:                                                ; preds = %10, %5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #11, !dbg !346
  ret void, !dbg !346

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %18, %10 ], [ 0, %5 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !333, metadata !DIExpression()), !dbg !343
  %12 = getelementptr inbounds i8, i8* %1, i32 %11, !dbg !347
  %13 = load i8, i8* %12, align 1, !dbg !347, !tbaa !348
  call void @llvm.dbg.value(metadata i8 %13, metadata !335, metadata !DIExpression()), !dbg !349
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i32 0, i32 %11, !dbg !350
  %15 = load i8, i8* %14, align 1, !dbg !350, !tbaa !348
  call void @llvm.dbg.value(metadata i8 %15, metadata !338, metadata !DIExpression()), !dbg !349
  %16 = xor i8 %15, %13, !dbg !351
  %17 = getelementptr inbounds i8, i8* %0, i32 %11, !dbg !352
  store i8 %16, i8* %17, align 1, !dbg !353, !tbaa !348
  %18 = add nuw i32 %11, 1, !dbg !354
  call void @llvm.dbg.value(metadata i32 %18, metadata !333, metadata !DIExpression()), !dbg !343
  %19 = icmp eq i32 %18, %2, !dbg !344
  br i1 %19, label %9, label %10, !dbg !345, !llvm.loop !355
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_update(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32* nocapture noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !357 {
  %5 = alloca [48 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !361, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i8* %1, metadata !362, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i32* %2, metadata !363, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i64 %3, metadata !364, metadata !DIExpression()), !dbg !378
  %6 = bitcast [48 x i32]* %5 to i8*, !dbg !379
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %6) #11, !dbg !379
  call void @llvm.dbg.declare(metadata [48 x i32]* %5, metadata !365, metadata !DIExpression()), !dbg !380
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(192) %6, i8 0, i32 192, i1 false), !dbg !380
  %7 = getelementptr inbounds [48 x i32], [48 x i32]* %5, i32 0, i32 0, !dbg !381
  call void @llvm.dbg.value(metadata i32* %7, metadata !369, metadata !DIExpression()), !dbg !378
  %8 = getelementptr inbounds [48 x i32], [48 x i32]* %5, i32 0, i32 16, !dbg !382
  call void @llvm.dbg.value(metadata i32* %8, metadata !370, metadata !DIExpression()), !dbg !378
  %9 = getelementptr inbounds [48 x i32], [48 x i32]* %5, i32 0, i32 32, !dbg !383
  call void @llvm.dbg.value(metadata i32* %9, metadata !371, metadata !DIExpression()), !dbg !378
  call fastcc void @Hacl_Impl_Salsa20_salsa20_core(i32* noundef nonnull %7, i32* noundef %2, i64 noundef %3), !dbg !384
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(i32* noundef nonnull %8, i8* noundef %1, i32 noundef 16), !dbg !385
  call void @llvm.dbg.value(metadata i32 0, metadata !372, metadata !DIExpression()), !dbg !386
  br label %11, !dbg !387

10:                                               ; preds = %11
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(i8* noundef %0, i32* noundef nonnull %9, i32 noundef 16), !dbg !388
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %6) #11, !dbg !389
  ret void, !dbg !389

11:                                               ; preds = %4, %11
  %12 = phi i32 [ 0, %4 ], [ %19, %11 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !372, metadata !DIExpression()), !dbg !386
  %13 = getelementptr inbounds i32, i32* %8, i32 %12, !dbg !390
  %14 = load i32, i32* %13, align 4, !dbg !390, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %14, metadata !374, metadata !DIExpression()), !dbg !391
  %15 = getelementptr inbounds [48 x i32], [48 x i32]* %5, i32 0, i32 %12, !dbg !392
  %16 = load i32, i32* %15, align 4, !dbg !392, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %16, metadata !377, metadata !DIExpression()), !dbg !391
  %17 = xor i32 %16, %14, !dbg !393
  %18 = getelementptr inbounds i32, i32* %9, i32 %12, !dbg !394
  store i32 %17, i32* %18, align 4, !dbg !395, !tbaa !94
  %19 = add nuw nsw i32 %12, 1, !dbg !396
  call void @llvm.dbg.value(metadata i32 %19, metadata !372, metadata !DIExpression()), !dbg !386
  %20 = icmp eq i32 %19, 16, !dbg !397
  br i1 %20, label %10, label %11, !dbg !387, !llvm.loop !398
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_salsa20_core(i32* nocapture noundef %0, i32* nocapture noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !400 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !404, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32* %1, metadata !405, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i64 %2, metadata !406, metadata !DIExpression()), !dbg !409
  %4 = trunc i64 %2 to i32, !dbg !410
  call void @llvm.dbg.value(metadata i32 %4, metadata !407, metadata !DIExpression()), !dbg !409
  %5 = lshr i64 %2, 32, !dbg !411
  %6 = trunc i64 %5 to i32, !dbg !412
  call void @llvm.dbg.value(metadata i32 %6, metadata !408, metadata !DIExpression()), !dbg !409
  %7 = getelementptr inbounds i32, i32* %1, i32 8, !dbg !413
  store i32 %4, i32* %7, align 4, !dbg !414, !tbaa !94
  %8 = getelementptr inbounds i32, i32* %1, i32 9, !dbg !415
  store i32 %6, i32* %8, align 4, !dbg !416, !tbaa !94
  call fastcc void @Hacl_Impl_Salsa20_copy_state(i32* noundef %0, i32* noundef %1), !dbg !417
  call fastcc void @Hacl_Impl_Salsa20_rounds(i32* noundef %0), !dbg !418
  call fastcc void @Hacl_Impl_Salsa20_sum_states(i32* noundef %0, i32* noundef %1), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(i8* nocapture noundef writeonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 !dbg !421 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !425, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i32* %1, metadata !426, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i32 %2, metadata !427, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i32 0, metadata !428, metadata !DIExpression()), !dbg !435
  %4 = icmp eq i32 %2, 0, !dbg !436
  br i1 %4, label %5, label %6, !dbg !437

5:                                                ; preds = %6, %3
  ret void, !dbg !438

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %12, %6 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !428, metadata !DIExpression()), !dbg !435
  %8 = getelementptr inbounds i32, i32* %1, i32 %7, !dbg !439
  %9 = load i32, i32* %8, align 4, !dbg !439, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %9, metadata !430, metadata !DIExpression()), !dbg !440
  %10 = shl i32 %7, 2, !dbg !441
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !442
  call void @llvm.dbg.value(metadata i8* %11, metadata !433, metadata !DIExpression()), !dbg !440
  call fastcc void @store32(i8* noundef %11, i32 noundef %9), !dbg !443
  %12 = add nuw i32 %7, 1, !dbg !444
  call void @llvm.dbg.value(metadata i32 %12, metadata !428, metadata !DIExpression()), !dbg !435
  %13 = icmp eq i32 %12, %2, !dbg !436
  br i1 %13, label %5, label %6, !dbg !437, !llvm.loop !445
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Salsa20_copy_state(i32* nocapture noundef writeonly %0, i32* nocapture noundef readonly %1) unnamed_addr #8 !dbg !447 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !451, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32* %1, metadata !452, metadata !DIExpression()), !dbg !453
  %3 = bitcast i32* %0 to i8*, !dbg !454
  %4 = bitcast i32* %1 to i8*, !dbg !454
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %3, i8* noundef nonnull align 4 dereferenceable(64) %4, i32 64, i1 false), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_rounds(i32* nocapture noundef %0) unnamed_addr #4 !dbg !456 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !460, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i32 0, metadata !461, metadata !DIExpression()), !dbg !464
  br label %3, !dbg !465

2:                                                ; preds = %3
  ret void, !dbg !466

3:                                                ; preds = %1, %3
  %4 = phi i32 [ 0, %1 ], [ %5, %3 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !461, metadata !DIExpression()), !dbg !464
  call fastcc void @Hacl_Impl_Salsa20_double_round(i32* noundef %0), !dbg !467
  %5 = add nuw nsw i32 %4, 1, !dbg !469
  call void @llvm.dbg.value(metadata i32 %5, metadata !461, metadata !DIExpression()), !dbg !464
  %6 = icmp eq i32 %5, 10, !dbg !470
  br i1 %6, label %2, label %3, !dbg !465, !llvm.loop !471
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_sum_states(i32* nocapture noundef %0, i32* nocapture noundef readonly %1) unnamed_addr #4 !dbg !473 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !475, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata i32* %1, metadata !476, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata i32 0, metadata !477, metadata !DIExpression()), !dbg !484
  br label %4, !dbg !485

3:                                                ; preds = %4
  ret void, !dbg !486

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !477, metadata !DIExpression()), !dbg !484
  %6 = getelementptr inbounds i32, i32* %0, i32 %5, !dbg !487
  %7 = load i32, i32* %6, align 4, !dbg !487, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %7, metadata !479, metadata !DIExpression()), !dbg !488
  %8 = getelementptr inbounds i32, i32* %1, i32 %5, !dbg !489
  %9 = load i32, i32* %8, align 4, !dbg !489, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %9, metadata !482, metadata !DIExpression()), !dbg !488
  %10 = add i32 %9, %7, !dbg !490
  store i32 %10, i32* %6, align 4, !dbg !491, !tbaa !94
  %11 = add nuw nsw i32 %5, 1, !dbg !492
  call void @llvm.dbg.value(metadata i32 %11, metadata !477, metadata !DIExpression()), !dbg !484
  %12 = icmp eq i32 %11, 16, !dbg !493
  br i1 %12, label %3, label %4, !dbg !485, !llvm.loop !494
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Salsa20_double_round(i32* nocapture noundef %0) unnamed_addr #9 !dbg !496 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !498, metadata !DIExpression()), !dbg !499
  call fastcc void @Hacl_Impl_Salsa20_quarter_round(i32* noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 12), !dbg !500
  call fastcc void @Hacl_Impl_Salsa20_quarter_round(i32* noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef 13, i32 noundef 1), !dbg !501
  call fastcc void @Hacl_Impl_Salsa20_quarter_round(i32* noundef %0, i32 noundef 10, i32 noundef 14, i32 noundef 2, i32 noundef 6), !dbg !502
  call fastcc void @Hacl_Impl_Salsa20_quarter_round(i32* noundef %0, i32 noundef 15, i32 noundef 3, i32 noundef 7, i32 noundef 11), !dbg !503
  call fastcc void @Hacl_Impl_Salsa20_quarter_round(i32* noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3), !dbg !504
  call fastcc void @Hacl_Impl_Salsa20_quarter_round(i32* noundef %0, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 4), !dbg !505
  call fastcc void @Hacl_Impl_Salsa20_quarter_round(i32* noundef %0, i32 noundef 10, i32 noundef 11, i32 noundef 8, i32 noundef 9), !dbg !506
  call fastcc void @Hacl_Impl_Salsa20_quarter_round(i32* noundef %0, i32 noundef 15, i32 noundef 12, i32 noundef 13, i32 noundef 14), !dbg !507
  ret void, !dbg !508
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Salsa20_quarter_round(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #9 !dbg !509 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !511, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata i32 %1, metadata !512, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata i32 %2, metadata !513, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata i32 %3, metadata !514, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata i32 %4, metadata !515, metadata !DIExpression()), !dbg !516
  call fastcc void @Hacl_Impl_Salsa20_line(i32* noundef %0, i32 noundef %2, i32 noundef %1, i32 noundef %4, i32 noundef 7), !dbg !517
  call fastcc void @Hacl_Impl_Salsa20_line(i32* noundef %0, i32 noundef %3, i32 noundef %2, i32 noundef %1, i32 noundef 9), !dbg !518
  call fastcc void @Hacl_Impl_Salsa20_line(i32* noundef %0, i32 noundef %4, i32 noundef %3, i32 noundef %2, i32 noundef 13), !dbg !519
  call fastcc void @Hacl_Impl_Salsa20_line(i32* noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %3, i32 noundef 18), !dbg !520
  ret void, !dbg !521
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Salsa20_line(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #9 !dbg !522 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !524, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 %1, metadata !525, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 %2, metadata !526, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 %3, metadata !527, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 %4, metadata !528, metadata !DIExpression()), !dbg !534
  %6 = getelementptr inbounds i32, i32* %0, i32 %1, !dbg !535
  %7 = load i32, i32* %6, align 4, !dbg !535, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %7, metadata !529, metadata !DIExpression()), !dbg !534
  %8 = getelementptr inbounds i32, i32* %0, i32 %2, !dbg !536
  %9 = load i32, i32* %8, align 4, !dbg !536, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %9, metadata !530, metadata !DIExpression()), !dbg !534
  %10 = getelementptr inbounds i32, i32* %0, i32 %3, !dbg !537
  %11 = load i32, i32* %10, align 4, !dbg !537, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %11, metadata !531, metadata !DIExpression()), !dbg !534
  %12 = add i32 %11, %9, !dbg !538
  call void @llvm.dbg.value(metadata i32 %12, metadata !532, metadata !DIExpression()), !dbg !534
  %13 = shl i32 %12, %4, !dbg !539
  %14 = sub i32 32, %4, !dbg !540
  %15 = lshr i32 %12, %14, !dbg !541
  %16 = or i32 %13, %15, !dbg !542
  call void @llvm.dbg.value(metadata i32 %16, metadata !533, metadata !DIExpression()), !dbg !534
  %17 = xor i32 %16, %7, !dbg !543
  store i32 %17, i32* %6, align 4, !dbg !544, !tbaa !94
  ret void, !dbg !545
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store32(i8* nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !dbg !546 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !550, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %1, metadata !551, metadata !DIExpression()), !dbg !552
  %3 = bitcast i8* %0 to i32*, !dbg !553
  store i32 %1, i32* %3, align 1, !dbg !553
  ret void, !dbg !554
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_salsa20_block(i8* nocapture noundef writeonly %0, i32* nocapture noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !555 {
  %4 = alloca [16 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !559, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32* %1, metadata !560, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %2, metadata !561, metadata !DIExpression()), !dbg !563
  %5 = bitcast [16 x i32]* %4 to i8*, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #11, !dbg !564
  call void @llvm.dbg.declare(metadata [16 x i32]* %4, metadata !562, metadata !DIExpression()), !dbg !565
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !dbg !565
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i32 0, i32 0, !dbg !566
  call fastcc void @Hacl_Impl_Salsa20_salsa20_core(i32* noundef nonnull %6, i32* noundef %1, i64 noundef %2), !dbg !567
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(i8* noundef %0, i32* noundef nonnull %6, i32 noundef 16), !dbg !568
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #11, !dbg !569
  ret void, !dbg !569
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_HSalsa20_setup(i32* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) unnamed_addr #0 !dbg !570 {
  %4 = alloca [12 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !572, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i8* %1, metadata !573, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i8* %2, metadata !574, metadata !DIExpression()), !dbg !593
  %5 = bitcast [12 x i32]* %4 to i8*, !dbg !594
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #11, !dbg !594
  call void @llvm.dbg.declare(metadata [12 x i32]* %4, metadata !575, metadata !DIExpression()), !dbg !595
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 48, i1 false), !dbg !595
  %6 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 0, !dbg !596
  call void @llvm.dbg.value(metadata i32* %6, metadata !579, metadata !DIExpression()), !dbg !593
  %7 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 8, !dbg !597
  call void @llvm.dbg.value(metadata i32* %7, metadata !580, metadata !DIExpression()), !dbg !593
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(i32* noundef nonnull %6, i8* noundef %1, i32 noundef 8), !dbg !598
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(i32* noundef nonnull %7, i8* noundef %2, i32 noundef 4), !dbg !599
  %8 = load i32, i32* %6, align 4, !dbg !600, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %8, metadata !581, metadata !DIExpression()), !dbg !593
  %9 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 1, !dbg !601
  %10 = load i32, i32* %9, align 4, !dbg !601, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %10, metadata !582, metadata !DIExpression()), !dbg !593
  %11 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 2, !dbg !602
  %12 = load i32, i32* %11, align 4, !dbg !602, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %12, metadata !583, metadata !DIExpression()), !dbg !593
  %13 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 3, !dbg !603
  %14 = load i32, i32* %13, align 4, !dbg !603, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %14, metadata !584, metadata !DIExpression()), !dbg !593
  %15 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 4, !dbg !604
  %16 = load i32, i32* %15, align 4, !dbg !604, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %16, metadata !585, metadata !DIExpression()), !dbg !593
  %17 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 5, !dbg !605
  %18 = load i32, i32* %17, align 4, !dbg !605, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %18, metadata !586, metadata !DIExpression()), !dbg !593
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 6, !dbg !606
  %20 = load i32, i32* %19, align 4, !dbg !606, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %20, metadata !587, metadata !DIExpression()), !dbg !593
  %21 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 7, !dbg !607
  %22 = load i32, i32* %21, align 4, !dbg !607, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %22, metadata !588, metadata !DIExpression()), !dbg !593
  %23 = load i32, i32* %7, align 4, !dbg !608, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %23, metadata !589, metadata !DIExpression()), !dbg !593
  %24 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 9, !dbg !609
  %25 = load i32, i32* %24, align 4, !dbg !609, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %25, metadata !590, metadata !DIExpression()), !dbg !593
  %26 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 10, !dbg !610
  %27 = load i32, i32* %26, align 4, !dbg !610, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %27, metadata !591, metadata !DIExpression()), !dbg !593
  %28 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i32 0, i32 11, !dbg !611
  %29 = load i32, i32* %28, align 4, !dbg !611, !tbaa !94
  call void @llvm.dbg.value(metadata i32 %29, metadata !592, metadata !DIExpression()), !dbg !593
  call fastcc void @Hacl_Lib_Create_make_h32_16(i32* noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22), !dbg !612
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #11, !dbg !613
  ret void, !dbg !613
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Salsa20.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "54aec34bd2af851fa8c64a1a83791c8a")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 48, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !10)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{i32 1, !"NumRegisterParameters", i32 0}
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!19 = distinct !DISubprogram(name: "Hacl_Salsa20_salsa20", scope: !1, file: !1, line: 369, type: !20, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !22, !8, !22, !22, !3}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!27, !28, !29, !30, !31, !32}
!27 = !DILocalVariable(name: "output", arg: 1, scope: !19, file: !1, line: 370, type: !22)
!28 = !DILocalVariable(name: "plain", arg: 2, scope: !19, file: !1, line: 371, type: !22)
!29 = !DILocalVariable(name: "len", arg: 3, scope: !19, file: !1, line: 372, type: !8)
!30 = !DILocalVariable(name: "k", arg: 4, scope: !19, file: !1, line: 373, type: !22)
!31 = !DILocalVariable(name: "n1", arg: 5, scope: !19, file: !1, line: 374, type: !22)
!32 = !DILocalVariable(name: "ctr", arg: 6, scope: !19, file: !1, line: 375, type: !3)
!33 = !DILocation(line: 0, scope: !19)
!34 = !DILocation(line: 378, column: 3, scope: !19)
!35 = !DILocation(line: 379, column: 1, scope: !19)
!36 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_salsa20", scope: !1, file: !1, line: 295, type: !20, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !48}
!38 = !DILocalVariable(name: "output", arg: 1, scope: !36, file: !1, line: 296, type: !22)
!39 = !DILocalVariable(name: "plain", arg: 2, scope: !36, file: !1, line: 297, type: !22)
!40 = !DILocalVariable(name: "len", arg: 3, scope: !36, file: !1, line: 298, type: !8)
!41 = !DILocalVariable(name: "k", arg: 4, scope: !36, file: !1, line: 299, type: !22)
!42 = !DILocalVariable(name: "n1", arg: 5, scope: !36, file: !1, line: 300, type: !22)
!43 = !DILocalVariable(name: "ctr", arg: 6, scope: !36, file: !1, line: 301, type: !3)
!44 = !DILocalVariable(name: "buf", scope: !36, file: !1, line: 304, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 16)
!48 = !DILocalVariable(name: "st", scope: !36, file: !1, line: 305, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!50 = !DILocation(line: 0, scope: !36)
!51 = !DILocation(line: 304, column: 3, scope: !36)
!52 = !DILocation(line: 304, column: 12, scope: !36)
!53 = !DILocation(line: 305, column: 18, scope: !36)
!54 = !DILocation(line: 306, column: 3, scope: !36)
!55 = !DILocation(line: 307, column: 3, scope: !36)
!56 = !DILocation(line: 308, column: 1, scope: !36)
!57 = distinct !DISubprogram(name: "Hacl_Salsa20_hsalsa20", scope: !1, file: !1, line: 381, type: !58, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !22, !22, !22}
!60 = !{!61, !62, !63}
!61 = !DILocalVariable(name: "output", arg: 1, scope: !57, file: !1, line: 381, type: !22)
!62 = !DILocalVariable(name: "key", arg: 2, scope: !57, file: !1, line: 381, type: !22)
!63 = !DILocalVariable(name: "nonce", arg: 3, scope: !57, file: !1, line: 381, type: !22)
!64 = !DILocation(line: 0, scope: !57)
!65 = !DILocation(line: 383, column: 3, scope: !57)
!66 = !DILocation(line: 384, column: 1, scope: !57)
!67 = distinct !DISubprogram(name: "Hacl_Impl_HSalsa20_crypto_core_hsalsa20", scope: !1, file: !1, line: 349, type: !58, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!68 = !{!69, !70, !71, !72, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!69 = !DILocalVariable(name: "output", arg: 1, scope: !67, file: !1, line: 349, type: !22)
!70 = !DILocalVariable(name: "nonce", arg: 2, scope: !67, file: !1, line: 349, type: !22)
!71 = !DILocalVariable(name: "key", arg: 3, scope: !67, file: !1, line: 349, type: !22)
!72 = !DILocalVariable(name: "tmp", scope: !67, file: !1, line: 351, type: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 768, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 24)
!76 = !DILocalVariable(name: "st", scope: !67, file: !1, line: 352, type: !49)
!77 = !DILocalVariable(name: "hs", scope: !67, file: !1, line: 353, type: !49)
!78 = !DILocalVariable(name: "hs0", scope: !67, file: !1, line: 356, type: !8)
!79 = !DILocalVariable(name: "hs1", scope: !67, file: !1, line: 357, type: !8)
!80 = !DILocalVariable(name: "hs2", scope: !67, file: !1, line: 358, type: !8)
!81 = !DILocalVariable(name: "hs3", scope: !67, file: !1, line: 359, type: !8)
!82 = !DILocalVariable(name: "hs4", scope: !67, file: !1, line: 360, type: !8)
!83 = !DILocalVariable(name: "hs5", scope: !67, file: !1, line: 361, type: !8)
!84 = !DILocalVariable(name: "hs6", scope: !67, file: !1, line: 362, type: !8)
!85 = !DILocalVariable(name: "hs7", scope: !67, file: !1, line: 363, type: !8)
!86 = !DILocation(line: 0, scope: !67)
!87 = !DILocation(line: 351, column: 3, scope: !67)
!88 = !DILocation(line: 351, column: 12, scope: !67)
!89 = !DILocation(line: 352, column: 18, scope: !67)
!90 = !DILocation(line: 353, column: 22, scope: !67)
!91 = !DILocation(line: 354, column: 3, scope: !67)
!92 = !DILocation(line: 355, column: 3, scope: !67)
!93 = !DILocation(line: 356, column: 18, scope: !67)
!94 = !{!95, !95, i64 0}
!95 = !{!"int", !96, i64 0}
!96 = !{!"omnipotent char", !97, i64 0}
!97 = !{!"Simple C/C++ TBAA"}
!98 = !DILocation(line: 357, column: 18, scope: !67)
!99 = !DILocation(line: 358, column: 18, scope: !67)
!100 = !DILocation(line: 359, column: 18, scope: !67)
!101 = !DILocation(line: 360, column: 18, scope: !67)
!102 = !DILocation(line: 361, column: 18, scope: !67)
!103 = !DILocation(line: 362, column: 18, scope: !67)
!104 = !DILocation(line: 363, column: 18, scope: !67)
!105 = !DILocation(line: 364, column: 3, scope: !67)
!106 = !DILocation(line: 365, column: 3, scope: !67)
!107 = !DILocation(line: 366, column: 1, scope: !67)
!108 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_init", scope: !1, file: !1, line: 214, type: !109, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !49, !22, !22}
!111 = !{!112, !113, !114}
!112 = !DILocalVariable(name: "st", arg: 1, scope: !108, file: !1, line: 214, type: !49)
!113 = !DILocalVariable(name: "k", arg: 2, scope: !108, file: !1, line: 214, type: !22)
!114 = !DILocalVariable(name: "n1", arg: 3, scope: !108, file: !1, line: 214, type: !22)
!115 = !DILocation(line: 0, scope: !108)
!116 = !DILocation(line: 216, column: 3, scope: !108)
!117 = !DILocation(line: 217, column: 1, scope: !108)
!118 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_salsa20_counter_mode", scope: !1, file: !1, line: 275, type: !119, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !22, !22, !8, !49, !3}
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!122 = !DILocalVariable(name: "output", arg: 1, scope: !118, file: !1, line: 276, type: !22)
!123 = !DILocalVariable(name: "plain", arg: 2, scope: !118, file: !1, line: 277, type: !22)
!124 = !DILocalVariable(name: "len", arg: 3, scope: !118, file: !1, line: 278, type: !8)
!125 = !DILocalVariable(name: "st", arg: 4, scope: !118, file: !1, line: 279, type: !49)
!126 = !DILocalVariable(name: "ctr", arg: 5, scope: !118, file: !1, line: 280, type: !3)
!127 = !DILocalVariable(name: "blocks_len", scope: !118, file: !1, line: 283, type: !8)
!128 = !DILocalVariable(name: "part_len", scope: !118, file: !1, line: 284, type: !8)
!129 = !DILocalVariable(name: "output_", scope: !118, file: !1, line: 285, type: !22)
!130 = !DILocalVariable(name: "plain_", scope: !118, file: !1, line: 286, type: !22)
!131 = !DILocalVariable(name: "output__", scope: !118, file: !1, line: 287, type: !22)
!132 = !DILocalVariable(name: "plain__", scope: !118, file: !1, line: 288, type: !22)
!133 = !DILocation(line: 0, scope: !118)
!134 = !DILocation(line: 283, column: 29, scope: !118)
!135 = !DILocation(line: 284, column: 27, scope: !118)
!136 = !DILocation(line: 287, column: 46, scope: !118)
!137 = !DILocation(line: 289, column: 3, scope: !118)
!138 = !DILocation(line: 290, column: 16, scope: !139)
!139 = distinct !DILexicalBlock(scope: !118, file: !1, line: 290, column: 7)
!140 = !DILocation(line: 290, column: 7, scope: !118)
!141 = !DILocation(line: 288, column: 28, scope: !118)
!142 = !DILocation(line: 287, column: 30, scope: !118)
!143 = !DILocation(line: 291, column: 74, scope: !139)
!144 = !DILocation(line: 291, column: 72, scope: !139)
!145 = !DILocation(line: 291, column: 5, scope: !139)
!146 = !DILocation(line: 292, column: 1, scope: !118)
!147 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_setup", scope: !1, file: !1, line: 100, type: !148, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !49, !22, !22, !3}
!150 = !{!151, !152, !153, !154, !155, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!151 = !DILocalVariable(name: "st", arg: 1, scope: !147, file: !1, line: 100, type: !49)
!152 = !DILocalVariable(name: "k", arg: 2, scope: !147, file: !1, line: 100, type: !22)
!153 = !DILocalVariable(name: "n1", arg: 3, scope: !147, file: !1, line: 100, type: !22)
!154 = !DILocalVariable(name: "c", arg: 4, scope: !147, file: !1, line: 100, type: !3)
!155 = !DILocalVariable(name: "tmp", scope: !147, file: !1, line: 102, type: !156)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 10)
!159 = !DILocalVariable(name: "k_", scope: !147, file: !1, line: 103, type: !49)
!160 = !DILocalVariable(name: "n_", scope: !147, file: !1, line: 104, type: !49)
!161 = !DILocalVariable(name: "c0", scope: !147, file: !1, line: 107, type: !8)
!162 = !DILocalVariable(name: "c1", scope: !147, file: !1, line: 108, type: !8)
!163 = !DILocalVariable(name: "k0", scope: !147, file: !1, line: 109, type: !8)
!164 = !DILocalVariable(name: "k1", scope: !147, file: !1, line: 110, type: !8)
!165 = !DILocalVariable(name: "k2", scope: !147, file: !1, line: 111, type: !8)
!166 = !DILocalVariable(name: "k3", scope: !147, file: !1, line: 112, type: !8)
!167 = !DILocalVariable(name: "k4", scope: !147, file: !1, line: 113, type: !8)
!168 = !DILocalVariable(name: "k5", scope: !147, file: !1, line: 114, type: !8)
!169 = !DILocalVariable(name: "k6", scope: !147, file: !1, line: 115, type: !8)
!170 = !DILocalVariable(name: "k7", scope: !147, file: !1, line: 116, type: !8)
!171 = !DILocalVariable(name: "n0", scope: !147, file: !1, line: 117, type: !8)
!172 = !DILocalVariable(name: "n11", scope: !147, file: !1, line: 118, type: !8)
!173 = !DILocation(line: 0, scope: !147)
!174 = !DILocation(line: 102, column: 3, scope: !147)
!175 = !DILocation(line: 102, column: 12, scope: !147)
!176 = !DILocation(line: 103, column: 18, scope: !147)
!177 = !DILocation(line: 104, column: 22, scope: !147)
!178 = !DILocation(line: 105, column: 3, scope: !147)
!179 = !DILocation(line: 106, column: 3, scope: !147)
!180 = !DILocation(line: 109, column: 17, scope: !147)
!181 = !DILocation(line: 110, column: 17, scope: !147)
!182 = !DILocation(line: 111, column: 17, scope: !147)
!183 = !DILocation(line: 112, column: 17, scope: !147)
!184 = !DILocation(line: 113, column: 17, scope: !147)
!185 = !DILocation(line: 114, column: 17, scope: !147)
!186 = !DILocation(line: 115, column: 17, scope: !147)
!187 = !DILocation(line: 116, column: 17, scope: !147)
!188 = !DILocation(line: 117, column: 17, scope: !147)
!189 = !DILocation(line: 118, column: 18, scope: !147)
!190 = !DILocation(line: 119, column: 3, scope: !147)
!191 = !DILocation(line: 136, column: 1, scope: !147)
!192 = distinct !DISubprogram(name: "Hacl_Lib_LoadStore32_uint32s_from_le_bytes", scope: !1, file: !1, line: 79, type: !193, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !49, !22, !8}
!195 = !{!196, !197, !198, !199, !201, !204}
!196 = !DILocalVariable(name: "output", arg: 1, scope: !192, file: !1, line: 79, type: !49)
!197 = !DILocalVariable(name: "input", arg: 2, scope: !192, file: !1, line: 79, type: !22)
!198 = !DILocalVariable(name: "len", arg: 3, scope: !192, file: !1, line: 79, type: !8)
!199 = !DILocalVariable(name: "i", scope: !200, file: !1, line: 81, type: !8)
!200 = distinct !DILexicalBlock(scope: !192, file: !1, line: 81, column: 3)
!201 = !DILocalVariable(name: "x0", scope: !202, file: !1, line: 83, type: !22)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 82, column: 3)
!203 = distinct !DILexicalBlock(scope: !200, file: !1, line: 81, column: 3)
!204 = !DILocalVariable(name: "inputi", scope: !202, file: !1, line: 84, type: !8)
!205 = !DILocation(line: 0, scope: !192)
!206 = !DILocation(line: 0, scope: !200)
!207 = !DILocation(line: 81, column: 37, scope: !203)
!208 = !DILocation(line: 81, column: 3, scope: !200)
!209 = !DILocation(line: 87, column: 1, scope: !192)
!210 = !DILocation(line: 83, column: 40, scope: !202)
!211 = !DILocation(line: 83, column: 25, scope: !202)
!212 = !DILocation(line: 0, scope: !202)
!213 = !DILocation(line: 84, column: 23, scope: !202)
!214 = !DILocation(line: 85, column: 5, scope: !202)
!215 = !DILocation(line: 85, column: 15, scope: !202)
!216 = !DILocation(line: 81, column: 50, scope: !203)
!217 = distinct !{!217, !208, !218, !219, !220}
!218 = !DILocation(line: 86, column: 3, scope: !200)
!219 = !{!"llvm.loop.mustprogress"}
!220 = !{!"llvm.loop.unroll.disable"}
!221 = distinct !DISubprogram(name: "Hacl_Lib_Create_make_h32_16", scope: !1, file: !1, line: 54, type: !222, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !49, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!225 = !DILocalVariable(name: "b", arg: 1, scope: !221, file: !1, line: 55, type: !49)
!226 = !DILocalVariable(name: "s0", arg: 2, scope: !221, file: !1, line: 56, type: !8)
!227 = !DILocalVariable(name: "s1", arg: 3, scope: !221, file: !1, line: 57, type: !8)
!228 = !DILocalVariable(name: "s2", arg: 4, scope: !221, file: !1, line: 58, type: !8)
!229 = !DILocalVariable(name: "s3", arg: 5, scope: !221, file: !1, line: 59, type: !8)
!230 = !DILocalVariable(name: "s4", arg: 6, scope: !221, file: !1, line: 60, type: !8)
!231 = !DILocalVariable(name: "s5", arg: 7, scope: !221, file: !1, line: 61, type: !8)
!232 = !DILocalVariable(name: "s6", arg: 8, scope: !221, file: !1, line: 62, type: !8)
!233 = !DILocalVariable(name: "s7", arg: 9, scope: !221, file: !1, line: 63, type: !8)
!234 = !DILocalVariable(name: "s8", arg: 10, scope: !221, file: !1, line: 64, type: !8)
!235 = !DILocalVariable(name: "s9", arg: 11, scope: !221, file: !1, line: 65, type: !8)
!236 = !DILocalVariable(name: "s10", arg: 12, scope: !221, file: !1, line: 66, type: !8)
!237 = !DILocalVariable(name: "s11", arg: 13, scope: !221, file: !1, line: 67, type: !8)
!238 = !DILocalVariable(name: "s12", arg: 14, scope: !221, file: !1, line: 68, type: !8)
!239 = !DILocalVariable(name: "s13", arg: 15, scope: !221, file: !1, line: 69, type: !8)
!240 = !DILocalVariable(name: "s14", arg: 16, scope: !221, file: !1, line: 70, type: !8)
!241 = !DILocalVariable(name: "s15", arg: 17, scope: !221, file: !1, line: 71, type: !8)
!242 = !DILocation(line: 0, scope: !221)
!243 = !DILocation(line: 74, column: 3, scope: !221)
!244 = !DILocation(line: 75, column: 32, scope: !221)
!245 = !DILocation(line: 75, column: 3, scope: !221)
!246 = !DILocation(line: 76, column: 1, scope: !221)
!247 = distinct !DISubprogram(name: "load32", scope: !248, file: !248, line: 341, type: !249, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !251)
!248 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!249 = !DISubroutineType(types: !250)
!250 = !{!8, !22}
!251 = !{!252, !253}
!252 = !DILocalVariable(name: "b", arg: 1, scope: !247, file: !248, line: 341, type: !22)
!253 = !DILocalVariable(name: "x", scope: !247, file: !248, line: 342, type: !8)
!254 = !DILocation(line: 0, scope: !247)
!255 = !DILocation(line: 343, column: 3, scope: !247)
!256 = !DILocation(line: 344, column: 3, scope: !247)
!257 = distinct !DISubprogram(name: "Hacl_Lib_Create_make_h32_8", scope: !1, file: !1, line: 37, type: !258, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !49, !8, !8, !8, !8, !8, !8, !8, !8}
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269}
!261 = !DILocalVariable(name: "b", arg: 1, scope: !257, file: !1, line: 38, type: !49)
!262 = !DILocalVariable(name: "s0", arg: 2, scope: !257, file: !1, line: 39, type: !8)
!263 = !DILocalVariable(name: "s1", arg: 3, scope: !257, file: !1, line: 40, type: !8)
!264 = !DILocalVariable(name: "s2", arg: 4, scope: !257, file: !1, line: 41, type: !8)
!265 = !DILocalVariable(name: "s3", arg: 5, scope: !257, file: !1, line: 42, type: !8)
!266 = !DILocalVariable(name: "s4", arg: 6, scope: !257, file: !1, line: 43, type: !8)
!267 = !DILocalVariable(name: "s5", arg: 7, scope: !257, file: !1, line: 44, type: !8)
!268 = !DILocalVariable(name: "s6", arg: 8, scope: !257, file: !1, line: 45, type: !8)
!269 = !DILocalVariable(name: "s7", arg: 9, scope: !257, file: !1, line: 46, type: !8)
!270 = !DILocation(line: 0, scope: !257)
!271 = !DILocation(line: 49, column: 3, scope: !257)
!272 = !DILocation(line: 50, column: 32, scope: !257)
!273 = !DILocation(line: 50, column: 3, scope: !257)
!274 = !DILocation(line: 51, column: 1, scope: !257)
!275 = distinct !DISubprogram(name: "Hacl_Lib_Create_make_h32_4", scope: !1, file: !1, line: 28, type: !276, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !49, !8, !8, !8, !8}
!278 = !{!279, !280, !281, !282, !283}
!279 = !DILocalVariable(name: "b", arg: 1, scope: !275, file: !1, line: 28, type: !49)
!280 = !DILocalVariable(name: "s0", arg: 2, scope: !275, file: !1, line: 28, type: !8)
!281 = !DILocalVariable(name: "s1", arg: 3, scope: !275, file: !1, line: 28, type: !8)
!282 = !DILocalVariable(name: "s2", arg: 4, scope: !275, file: !1, line: 28, type: !8)
!283 = !DILocalVariable(name: "s3", arg: 5, scope: !275, file: !1, line: 28, type: !8)
!284 = !DILocation(line: 0, scope: !275)
!285 = !DILocation(line: 30, column: 9, scope: !275)
!286 = !DILocation(line: 31, column: 3, scope: !275)
!287 = !DILocation(line: 31, column: 9, scope: !275)
!288 = !DILocation(line: 32, column: 3, scope: !275)
!289 = !DILocation(line: 32, column: 9, scope: !275)
!290 = !DILocation(line: 33, column: 3, scope: !275)
!291 = !DILocation(line: 33, column: 9, scope: !275)
!292 = !DILocation(line: 34, column: 1, scope: !275)
!293 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_salsa20_counter_mode_blocks", scope: !1, file: !1, line: 258, type: !119, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !302, !305}
!295 = !DILocalVariable(name: "output", arg: 1, scope: !293, file: !1, line: 259, type: !22)
!296 = !DILocalVariable(name: "plain", arg: 2, scope: !293, file: !1, line: 260, type: !22)
!297 = !DILocalVariable(name: "len", arg: 3, scope: !293, file: !1, line: 261, type: !8)
!298 = !DILocalVariable(name: "st", arg: 4, scope: !293, file: !1, line: 262, type: !49)
!299 = !DILocalVariable(name: "ctr", arg: 5, scope: !293, file: !1, line: 263, type: !3)
!300 = !DILocalVariable(name: "i", scope: !301, file: !1, line: 266, type: !8)
!301 = distinct !DILexicalBlock(scope: !293, file: !1, line: 266, column: 3)
!302 = !DILocalVariable(name: "b", scope: !303, file: !1, line: 268, type: !22)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 267, column: 3)
!304 = distinct !DILexicalBlock(scope: !301, file: !1, line: 266, column: 3)
!305 = !DILocalVariable(name: "o", scope: !303, file: !1, line: 269, type: !22)
!306 = !DILocation(line: 0, scope: !293)
!307 = !DILocation(line: 0, scope: !301)
!308 = !DILocation(line: 266, column: 37, scope: !304)
!309 = !DILocation(line: 266, column: 3, scope: !301)
!310 = !DILocation(line: 272, column: 1, scope: !293)
!311 = !DILocation(line: 268, column: 40, scope: !303)
!312 = !DILocation(line: 268, column: 24, scope: !303)
!313 = !DILocation(line: 0, scope: !303)
!314 = !DILocation(line: 269, column: 25, scope: !303)
!315 = !DILocation(line: 270, column: 46, scope: !303)
!316 = !DILocation(line: 270, column: 44, scope: !303)
!317 = !DILocation(line: 270, column: 5, scope: !303)
!318 = !DILocation(line: 266, column: 50, scope: !304)
!319 = distinct !{!319, !309, !320, !219, !220}
!320 = !DILocation(line: 271, column: 3, scope: !301)
!321 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_update_last", scope: !1, file: !1, line: 220, type: !119, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !332, !333, !335, !338}
!323 = !DILocalVariable(name: "output", arg: 1, scope: !321, file: !1, line: 221, type: !22)
!324 = !DILocalVariable(name: "plain", arg: 2, scope: !321, file: !1, line: 222, type: !22)
!325 = !DILocalVariable(name: "len", arg: 3, scope: !321, file: !1, line: 223, type: !8)
!326 = !DILocalVariable(name: "st", arg: 4, scope: !321, file: !1, line: 224, type: !49)
!327 = !DILocalVariable(name: "ctr", arg: 5, scope: !321, file: !1, line: 225, type: !3)
!328 = !DILocalVariable(name: "block", scope: !321, file: !1, line: 228, type: !329)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 64)
!332 = !DILocalVariable(name: "mask", scope: !321, file: !1, line: 230, type: !22)
!333 = !DILocalVariable(name: "i", scope: !334, file: !1, line: 231, type: !8)
!334 = distinct !DILexicalBlock(scope: !321, file: !1, line: 231, column: 3)
!335 = !DILocalVariable(name: "xi", scope: !336, file: !1, line: 233, type: !23)
!336 = distinct !DILexicalBlock(scope: !337, file: !1, line: 232, column: 3)
!337 = distinct !DILexicalBlock(scope: !334, file: !1, line: 231, column: 3)
!338 = !DILocalVariable(name: "yi", scope: !336, file: !1, line: 234, type: !23)
!339 = !DILocation(line: 0, scope: !321)
!340 = !DILocation(line: 228, column: 3, scope: !321)
!341 = !DILocation(line: 228, column: 11, scope: !321)
!342 = !DILocation(line: 229, column: 3, scope: !321)
!343 = !DILocation(line: 0, scope: !334)
!344 = !DILocation(line: 231, column: 37, scope: !337)
!345 = !DILocation(line: 231, column: 3, scope: !334)
!346 = !DILocation(line: 237, column: 1, scope: !321)
!347 = !DILocation(line: 233, column: 18, scope: !336)
!348 = !{!96, !96, i64 0}
!349 = !DILocation(line: 0, scope: !336)
!350 = !DILocation(line: 234, column: 18, scope: !336)
!351 = !DILocation(line: 235, column: 20, scope: !336)
!352 = !DILocation(line: 235, column: 5, scope: !336)
!353 = !DILocation(line: 235, column: 15, scope: !336)
!354 = !DILocation(line: 231, column: 50, scope: !337)
!355 = distinct !{!355, !345, !356, !219, !220}
!356 = !DILocation(line: 236, column: 3, scope: !334)
!357 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_update", scope: !1, file: !1, line: 240, type: !358, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !22, !22, !49, !3}
!360 = !{!361, !362, !363, !364, !365, !369, !370, !371, !372, !374, !377}
!361 = !DILocalVariable(name: "output", arg: 1, scope: !357, file: !1, line: 240, type: !22)
!362 = !DILocalVariable(name: "plain", arg: 2, scope: !357, file: !1, line: 240, type: !22)
!363 = !DILocalVariable(name: "st", arg: 3, scope: !357, file: !1, line: 240, type: !49)
!364 = !DILocalVariable(name: "ctr", arg: 4, scope: !357, file: !1, line: 240, type: !3)
!365 = !DILocalVariable(name: "b", scope: !357, file: !1, line: 242, type: !366)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1536, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 48)
!369 = !DILocalVariable(name: "k", scope: !357, file: !1, line: 243, type: !49)
!370 = !DILocalVariable(name: "ib", scope: !357, file: !1, line: 244, type: !49)
!371 = !DILocalVariable(name: "ob", scope: !357, file: !1, line: 245, type: !49)
!372 = !DILocalVariable(name: "i", scope: !373, file: !1, line: 248, type: !8)
!373 = distinct !DILexicalBlock(scope: !357, file: !1, line: 248, column: 3)
!374 = !DILocalVariable(name: "xi", scope: !375, file: !1, line: 250, type: !8)
!375 = distinct !DILexicalBlock(scope: !376, file: !1, line: 249, column: 3)
!376 = distinct !DILexicalBlock(scope: !373, file: !1, line: 248, column: 3)
!377 = !DILocalVariable(name: "yi", scope: !375, file: !1, line: 251, type: !8)
!378 = !DILocation(line: 0, scope: !357)
!379 = !DILocation(line: 242, column: 3, scope: !357)
!380 = !DILocation(line: 242, column: 12, scope: !357)
!381 = !DILocation(line: 243, column: 17, scope: !357)
!382 = !DILocation(line: 244, column: 20, scope: !357)
!383 = !DILocation(line: 245, column: 20, scope: !357)
!384 = !DILocation(line: 246, column: 3, scope: !357)
!385 = !DILocation(line: 247, column: 3, scope: !357)
!386 = !DILocation(line: 0, scope: !373)
!387 = !DILocation(line: 248, column: 3, scope: !373)
!388 = !DILocation(line: 254, column: 3, scope: !357)
!389 = !DILocation(line: 255, column: 1, scope: !357)
!390 = !DILocation(line: 250, column: 19, scope: !375)
!391 = !DILocation(line: 0, scope: !375)
!392 = !DILocation(line: 251, column: 19, scope: !375)
!393 = !DILocation(line: 252, column: 16, scope: !375)
!394 = !DILocation(line: 252, column: 5, scope: !375)
!395 = !DILocation(line: 252, column: 11, scope: !375)
!396 = !DILocation(line: 248, column: 60, scope: !376)
!397 = !DILocation(line: 248, column: 37, scope: !376)
!398 = distinct !{!398, !387, !399, !219, !220}
!399 = !DILocation(line: 253, column: 3, scope: !373)
!400 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_salsa20_core", scope: !1, file: !1, line: 195, type: !401, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !49, !49, !3}
!403 = !{!404, !405, !406, !407, !408}
!404 = !DILocalVariable(name: "k", arg: 1, scope: !400, file: !1, line: 195, type: !49)
!405 = !DILocalVariable(name: "st", arg: 2, scope: !400, file: !1, line: 195, type: !49)
!406 = !DILocalVariable(name: "ctr", arg: 3, scope: !400, file: !1, line: 195, type: !3)
!407 = !DILocalVariable(name: "c0", scope: !400, file: !1, line: 197, type: !8)
!408 = !DILocalVariable(name: "c1", scope: !400, file: !1, line: 198, type: !8)
!409 = !DILocation(line: 0, scope: !400)
!410 = !DILocation(line: 197, column: 17, scope: !400)
!411 = !DILocation(line: 198, column: 32, scope: !400)
!412 = !DILocation(line: 198, column: 17, scope: !400)
!413 = !DILocation(line: 199, column: 3, scope: !400)
!414 = !DILocation(line: 199, column: 10, scope: !400)
!415 = !DILocation(line: 200, column: 3, scope: !400)
!416 = !DILocation(line: 200, column: 10, scope: !400)
!417 = !DILocation(line: 201, column: 3, scope: !400)
!418 = !DILocation(line: 202, column: 3, scope: !400)
!419 = !DILocation(line: 203, column: 3, scope: !400)
!420 = !DILocation(line: 204, column: 1, scope: !400)
!421 = distinct !DISubprogram(name: "Hacl_Lib_LoadStore32_uint32s_to_le_bytes", scope: !1, file: !1, line: 90, type: !422, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !22, !49, !8}
!424 = !{!425, !426, !427, !428, !430, !433}
!425 = !DILocalVariable(name: "output", arg: 1, scope: !421, file: !1, line: 90, type: !22)
!426 = !DILocalVariable(name: "input", arg: 2, scope: !421, file: !1, line: 90, type: !49)
!427 = !DILocalVariable(name: "len", arg: 3, scope: !421, file: !1, line: 90, type: !8)
!428 = !DILocalVariable(name: "i", scope: !429, file: !1, line: 92, type: !8)
!429 = distinct !DILexicalBlock(scope: !421, file: !1, line: 92, column: 3)
!430 = !DILocalVariable(name: "hd1", scope: !431, file: !1, line: 94, type: !8)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 93, column: 3)
!432 = distinct !DILexicalBlock(scope: !429, file: !1, line: 92, column: 3)
!433 = !DILocalVariable(name: "x0", scope: !431, file: !1, line: 95, type: !22)
!434 = !DILocation(line: 0, scope: !421)
!435 = !DILocation(line: 0, scope: !429)
!436 = !DILocation(line: 92, column: 37, scope: !432)
!437 = !DILocation(line: 92, column: 3, scope: !429)
!438 = !DILocation(line: 98, column: 1, scope: !421)
!439 = !DILocation(line: 94, column: 20, scope: !431)
!440 = !DILocation(line: 0, scope: !431)
!441 = !DILocation(line: 95, column: 41, scope: !431)
!442 = !DILocation(line: 95, column: 26, scope: !431)
!443 = !DILocation(line: 96, column: 5, scope: !431)
!444 = !DILocation(line: 92, column: 50, scope: !432)
!445 = distinct !{!445, !437, !446, !219, !220}
!446 = !DILocation(line: 97, column: 3, scope: !429)
!447 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_copy_state", scope: !1, file: !1, line: 190, type: !448, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !49, !49}
!450 = !{!451, !452}
!451 = !DILocalVariable(name: "st", arg: 1, scope: !447, file: !1, line: 190, type: !49)
!452 = !DILocalVariable(name: "st_", arg: 2, scope: !447, file: !1, line: 190, type: !49)
!453 = !DILocation(line: 0, scope: !447)
!454 = !DILocation(line: 192, column: 3, scope: !447)
!455 = !DILocation(line: 193, column: 1, scope: !447)
!456 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_rounds", scope: !1, file: !1, line: 174, type: !457, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !49}
!459 = !{!460, !461}
!460 = !DILocalVariable(name: "st", arg: 1, scope: !456, file: !1, line: 174, type: !49)
!461 = !DILocalVariable(name: "i", scope: !462, file: !1, line: 176, type: !8)
!462 = distinct !DILexicalBlock(scope: !456, file: !1, line: 176, column: 3)
!463 = !DILocation(line: 0, scope: !456)
!464 = !DILocation(line: 0, scope: !462)
!465 = !DILocation(line: 176, column: 3, scope: !462)
!466 = !DILocation(line: 178, column: 1, scope: !456)
!467 = !DILocation(line: 177, column: 5, scope: !468)
!468 = distinct !DILexicalBlock(scope: !462, file: !1, line: 176, column: 3)
!469 = !DILocation(line: 176, column: 60, scope: !468)
!470 = !DILocation(line: 176, column: 37, scope: !468)
!471 = distinct !{!471, !465, !472, !219, !220}
!472 = !DILocation(line: 177, column: 38, scope: !462)
!473 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_sum_states", scope: !1, file: !1, line: 180, type: !448, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !474)
!474 = !{!475, !476, !477, !479, !482}
!475 = !DILocalVariable(name: "st", arg: 1, scope: !473, file: !1, line: 180, type: !49)
!476 = !DILocalVariable(name: "st_", arg: 2, scope: !473, file: !1, line: 180, type: !49)
!477 = !DILocalVariable(name: "i", scope: !478, file: !1, line: 182, type: !8)
!478 = distinct !DILexicalBlock(scope: !473, file: !1, line: 182, column: 3)
!479 = !DILocalVariable(name: "xi", scope: !480, file: !1, line: 184, type: !8)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 183, column: 3)
!481 = distinct !DILexicalBlock(scope: !478, file: !1, line: 182, column: 3)
!482 = !DILocalVariable(name: "yi", scope: !480, file: !1, line: 185, type: !8)
!483 = !DILocation(line: 0, scope: !473)
!484 = !DILocation(line: 0, scope: !478)
!485 = !DILocation(line: 182, column: 3, scope: !478)
!486 = !DILocation(line: 188, column: 1, scope: !473)
!487 = !DILocation(line: 184, column: 19, scope: !480)
!488 = !DILocation(line: 0, scope: !480)
!489 = !DILocation(line: 185, column: 19, scope: !480)
!490 = !DILocation(line: 186, column: 16, scope: !480)
!491 = !DILocation(line: 186, column: 11, scope: !480)
!492 = !DILocation(line: 182, column: 60, scope: !481)
!493 = !DILocation(line: 182, column: 37, scope: !481)
!494 = distinct !{!494, !485, !495, !219, !220}
!495 = !DILocation(line: 187, column: 3, scope: !478)
!496 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_double_round", scope: !1, file: !1, line: 158, type: !457, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !497)
!497 = !{!498}
!498 = !DILocalVariable(name: "st", arg: 1, scope: !496, file: !1, line: 158, type: !49)
!499 = !DILocation(line: 0, scope: !496)
!500 = !DILocation(line: 160, column: 3, scope: !496)
!501 = !DILocation(line: 161, column: 3, scope: !496)
!502 = !DILocation(line: 162, column: 3, scope: !496)
!503 = !DILocation(line: 163, column: 3, scope: !496)
!504 = !DILocation(line: 164, column: 3, scope: !496)
!505 = !DILocation(line: 165, column: 3, scope: !496)
!506 = !DILocation(line: 166, column: 3, scope: !496)
!507 = !DILocation(line: 167, column: 3, scope: !496)
!508 = !DILocation(line: 172, column: 1, scope: !496)
!509 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_quarter_round", scope: !1, file: !1, line: 150, type: !276, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !510)
!510 = !{!511, !512, !513, !514, !515}
!511 = !DILocalVariable(name: "st", arg: 1, scope: !509, file: !1, line: 150, type: !49)
!512 = !DILocalVariable(name: "a", arg: 2, scope: !509, file: !1, line: 150, type: !8)
!513 = !DILocalVariable(name: "b", arg: 3, scope: !509, file: !1, line: 150, type: !8)
!514 = !DILocalVariable(name: "c", arg: 4, scope: !509, file: !1, line: 150, type: !8)
!515 = !DILocalVariable(name: "d", arg: 5, scope: !509, file: !1, line: 150, type: !8)
!516 = !DILocation(line: 0, scope: !509)
!517 = !DILocation(line: 152, column: 3, scope: !509)
!518 = !DILocation(line: 153, column: 3, scope: !509)
!519 = !DILocation(line: 154, column: 3, scope: !509)
!520 = !DILocation(line: 155, column: 3, scope: !509)
!521 = !DILocation(line: 156, column: 1, scope: !509)
!522 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_line", scope: !1, file: !1, line: 139, type: !276, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!524 = !DILocalVariable(name: "st", arg: 1, scope: !522, file: !1, line: 139, type: !49)
!525 = !DILocalVariable(name: "a", arg: 2, scope: !522, file: !1, line: 139, type: !8)
!526 = !DILocalVariable(name: "b", arg: 3, scope: !522, file: !1, line: 139, type: !8)
!527 = !DILocalVariable(name: "d", arg: 4, scope: !522, file: !1, line: 139, type: !8)
!528 = !DILocalVariable(name: "s", arg: 5, scope: !522, file: !1, line: 139, type: !8)
!529 = !DILocalVariable(name: "sa", scope: !522, file: !1, line: 141, type: !8)
!530 = !DILocalVariable(name: "sb", scope: !522, file: !1, line: 142, type: !8)
!531 = !DILocalVariable(name: "sd", scope: !522, file: !1, line: 143, type: !8)
!532 = !DILocalVariable(name: "sbd", scope: !522, file: !1, line: 144, type: !8)
!533 = !DILocalVariable(name: "sbds", scope: !522, file: !1, line: 145, type: !8)
!534 = !DILocation(line: 0, scope: !522)
!535 = !DILocation(line: 141, column: 17, scope: !522)
!536 = !DILocation(line: 142, column: 17, scope: !522)
!537 = !DILocation(line: 143, column: 17, scope: !522)
!538 = !DILocation(line: 144, column: 21, scope: !522)
!539 = !DILocation(line: 145, column: 23, scope: !522)
!540 = !DILocation(line: 145, column: 52, scope: !522)
!541 = !DILocation(line: 145, column: 34, scope: !522)
!542 = !DILocation(line: 145, column: 28, scope: !522)
!543 = !DILocation(line: 146, column: 14, scope: !522)
!544 = !DILocation(line: 146, column: 9, scope: !522)
!545 = !DILocation(line: 147, column: 1, scope: !522)
!546 = distinct !DISubprogram(name: "store32", scope: !248, file: !248, line: 355, type: !547, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !22, !8}
!549 = !{!550, !551}
!550 = !DILocalVariable(name: "b", arg: 1, scope: !546, file: !248, line: 355, type: !22)
!551 = !DILocalVariable(name: "i", arg: 2, scope: !546, file: !248, line: 355, type: !8)
!552 = !DILocation(line: 0, scope: !546)
!553 = !DILocation(line: 355, column: 54, scope: !546)
!554 = !DILocation(line: 355, column: 72, scope: !546)
!555 = distinct !DISubprogram(name: "Hacl_Impl_Salsa20_salsa20_block", scope: !1, file: !1, line: 207, type: !556, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !22, !49, !3}
!558 = !{!559, !560, !561, !562}
!559 = !DILocalVariable(name: "stream_block", arg: 1, scope: !555, file: !1, line: 207, type: !22)
!560 = !DILocalVariable(name: "st", arg: 2, scope: !555, file: !1, line: 207, type: !49)
!561 = !DILocalVariable(name: "ctr", arg: 3, scope: !555, file: !1, line: 207, type: !3)
!562 = !DILocalVariable(name: "st_", scope: !555, file: !1, line: 209, type: !45)
!563 = !DILocation(line: 0, scope: !555)
!564 = !DILocation(line: 209, column: 3, scope: !555)
!565 = !DILocation(line: 209, column: 12, scope: !555)
!566 = !DILocation(line: 210, column: 34, scope: !555)
!567 = !DILocation(line: 210, column: 3, scope: !555)
!568 = !DILocation(line: 211, column: 3, scope: !555)
!569 = !DILocation(line: 212, column: 1, scope: !555)
!570 = distinct !DISubprogram(name: "Hacl_Impl_HSalsa20_setup", scope: !1, file: !1, line: 310, type: !109, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !571)
!571 = !{!572, !573, !574, !575, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!572 = !DILocalVariable(name: "st", arg: 1, scope: !570, file: !1, line: 310, type: !49)
!573 = !DILocalVariable(name: "k", arg: 2, scope: !570, file: !1, line: 310, type: !22)
!574 = !DILocalVariable(name: "n1", arg: 3, scope: !570, file: !1, line: 310, type: !22)
!575 = !DILocalVariable(name: "tmp", scope: !570, file: !1, line: 312, type: !576)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 384, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 12)
!579 = !DILocalVariable(name: "k_", scope: !570, file: !1, line: 313, type: !49)
!580 = !DILocalVariable(name: "n_", scope: !570, file: !1, line: 314, type: !49)
!581 = !DILocalVariable(name: "k0", scope: !570, file: !1, line: 317, type: !8)
!582 = !DILocalVariable(name: "k1", scope: !570, file: !1, line: 318, type: !8)
!583 = !DILocalVariable(name: "k2", scope: !570, file: !1, line: 319, type: !8)
!584 = !DILocalVariable(name: "k3", scope: !570, file: !1, line: 320, type: !8)
!585 = !DILocalVariable(name: "k4", scope: !570, file: !1, line: 321, type: !8)
!586 = !DILocalVariable(name: "k5", scope: !570, file: !1, line: 322, type: !8)
!587 = !DILocalVariable(name: "k6", scope: !570, file: !1, line: 323, type: !8)
!588 = !DILocalVariable(name: "k7", scope: !570, file: !1, line: 324, type: !8)
!589 = !DILocalVariable(name: "n0", scope: !570, file: !1, line: 325, type: !8)
!590 = !DILocalVariable(name: "n11", scope: !570, file: !1, line: 326, type: !8)
!591 = !DILocalVariable(name: "n2", scope: !570, file: !1, line: 327, type: !8)
!592 = !DILocalVariable(name: "n3", scope: !570, file: !1, line: 328, type: !8)
!593 = !DILocation(line: 0, scope: !570)
!594 = !DILocation(line: 312, column: 3, scope: !570)
!595 = !DILocation(line: 312, column: 12, scope: !570)
!596 = !DILocation(line: 313, column: 18, scope: !570)
!597 = !DILocation(line: 314, column: 22, scope: !570)
!598 = !DILocation(line: 315, column: 3, scope: !570)
!599 = !DILocation(line: 316, column: 3, scope: !570)
!600 = !DILocation(line: 317, column: 17, scope: !570)
!601 = !DILocation(line: 318, column: 17, scope: !570)
!602 = !DILocation(line: 319, column: 17, scope: !570)
!603 = !DILocation(line: 320, column: 17, scope: !570)
!604 = !DILocation(line: 321, column: 17, scope: !570)
!605 = !DILocation(line: 322, column: 17, scope: !570)
!606 = !DILocation(line: 323, column: 17, scope: !570)
!607 = !DILocation(line: 324, column: 17, scope: !570)
!608 = !DILocation(line: 325, column: 17, scope: !570)
!609 = !DILocation(line: 326, column: 18, scope: !570)
!610 = !DILocation(line: 327, column: 17, scope: !570)
!611 = !DILocation(line: 328, column: 17, scope: !570)
!612 = !DILocation(line: 329, column: 3, scope: !570)
!613 = !DILocation(line: 346, column: 1, scope: !570)
