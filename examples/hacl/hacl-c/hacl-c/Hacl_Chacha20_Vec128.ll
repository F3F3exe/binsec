; ModuleID = 'hacl-c/hacl-c/Hacl_Chacha20_Vec128.c'
source_filename = "hacl-c/hacl-c/Hacl_Chacha20_Vec128.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.vec = type { [4 x i32] }

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_Chacha20_Vec128_chacha20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i8* nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 !dbg !20 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !24, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i8* %1, metadata !25, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i32 %2, metadata !26, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i8* %3, metadata !27, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i8* %4, metadata !28, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i32 %5, metadata !29, metadata !DIExpression()), !dbg !30
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5), !dbg !31
  ret void, !dbg !32
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i8* nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 !dbg !33 {
  %7 = alloca [4 x %struct.vec], align 4
  %8 = bitcast [4 x %struct.vec]* %7 to i8*, !dbg !55
  call void @llvm.dbg.value(metadata i8* %0, metadata !35, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i8* %1, metadata !36, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 %2, metadata !37, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i8* %3, metadata !38, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i8* %4, metadata !39, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 %5, metadata !40, metadata !DIExpression()), !dbg !55
  %9 = bitcast [4 x %struct.vec]* %7 to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %9) #10, !dbg !56
  call void @llvm.dbg.declare(metadata [4 x %struct.vec]* %7, metadata !41, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32 0, metadata !51, metadata !DIExpression()), !dbg !58
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %8, i8 0, i32 64, i1 false), !dbg !59
  call void @llvm.dbg.value(metadata i32 undef, metadata !51, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 undef, metadata !51, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !58
  %10 = getelementptr inbounds [4 x %struct.vec], [4 x %struct.vec]* %7, i32 0, i32 0, !dbg !61
  call void @llvm.dbg.value(metadata %struct.vec* %10, metadata !53, metadata !DIExpression()), !dbg !55
  call fastcc void @Hacl_Impl_Chacha20_Vec128_init(%struct.vec* noundef nonnull %10, i8* noundef %3, i8* noundef %4, i32 noundef %5), !dbg !62
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode(i8* noundef %0, i8* noundef %1, i32 noundef %2, %struct.vec* noundef nonnull %10), !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %9) #10, !dbg !64
  ret void, !dbg !64
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_init(%struct.vec* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #4 !dbg !65 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i8* %1, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i8* %2, metadata !71, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 %3, metadata !72, metadata !DIExpression()), !dbg !73
  call fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_setup(%struct.vec* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3), !dbg !74
  ret void, !dbg !75
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, %struct.vec* nocapture noundef %3) unnamed_addr #0 !dbg !76 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !80, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i8* %1, metadata !81, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %2, metadata !82, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata %struct.vec* %3, metadata !83, metadata !DIExpression()), !dbg !90
  %5 = lshr i32 %2, 6, !dbg !91
  call void @llvm.dbg.value(metadata i32 %5, metadata !84, metadata !DIExpression()), !dbg !90
  %6 = and i32 %2, 63, !dbg !92
  call void @llvm.dbg.value(metadata i32 %6, metadata !85, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i8* %0, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i8* %1, metadata !87, metadata !DIExpression()), !dbg !90
  %7 = and i32 %2, -64, !dbg !93
  call void @llvm.dbg.value(metadata !DIArgList(i8* %0, i32 %7), metadata !88, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !90
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i32 %7), metadata !89, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !90
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks(i8* noundef %0, i8* noundef %1, i32 noundef %5, %struct.vec* noundef %3), !dbg !94
  %8 = icmp eq i32 %6, 0, !dbg !95
  br i1 %8, label %12, label %9, !dbg !97

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !98
  call void @llvm.dbg.value(metadata i8* %10, metadata !89, metadata !DIExpression()), !dbg !90
  %11 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !99
  call void @llvm.dbg.value(metadata i8* %11, metadata !88, metadata !DIExpression()), !dbg !90
  call fastcc void @Hacl_Impl_Chacha20_Vec128_update_last(i8* noundef %11, i8* noundef %10, i32 noundef %6, %struct.vec* noundef %3), !dbg !100
  br label %12, !dbg !100

12:                                               ; preds = %9, %4
  ret void, !dbg !101
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_setup(%struct.vec* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #4 !dbg !102 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !104, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i8* %1, metadata !105, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i8* %2, metadata !106, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i32 %3, metadata !107, metadata !DIExpression()), !dbg !116
  %5 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 0, !dbg !117
  store i32 1634760805, i32* %5, align 4, !dbg !117, !tbaa.struct !118
  %6 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 1, !dbg !117
  store i32 857760878, i32* %6, align 4, !dbg !117, !tbaa.struct !122
  %7 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 2, !dbg !117
  store i32 2036477234, i32* %7, align 4, !dbg !117, !tbaa.struct !123
  %8 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 3, !dbg !117
  store i32 1797285236, i32* %8, align 4, !dbg !117, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i8* %1, metadata !125, metadata !DIExpression()) #10, !dbg !132
  call void @llvm.dbg.value(metadata i8* undef, metadata !134, metadata !DIExpression(DW_OP_deref)) #10, !dbg !142
  call void @llvm.dbg.value(metadata i8* %1, metadata !141, metadata !DIExpression()) #10, !dbg !142
  %9 = call fastcc i32 @load32(i8* noundef %1) #10, !dbg !144, !noalias !145
  call void @llvm.dbg.value(metadata i32 %9, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !116
  %10 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !150
  %11 = call fastcc i32 @load32(i8* noundef nonnull %10) #10, !dbg !150, !noalias !145
  call void @llvm.dbg.value(metadata i32 %11, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !116
  %12 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !151
  %13 = call fastcc i32 @load32(i8* noundef nonnull %12) #10, !dbg !151, !noalias !145
  call void @llvm.dbg.value(metadata i32 %13, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !116
  %14 = getelementptr inbounds i8, i8* %1, i32 12, !dbg !152
  %15 = call fastcc i32 @load32(i8* noundef nonnull %14) #10, !dbg !152, !noalias !145
  call void @llvm.dbg.value(metadata i32 %15, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !116
  %16 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !153
  call void @llvm.dbg.value(metadata i8* %16, metadata !125, metadata !DIExpression()) #10, !dbg !154
  call void @llvm.dbg.value(metadata i8* undef, metadata !134, metadata !DIExpression(DW_OP_deref)) #10, !dbg !156
  call void @llvm.dbg.value(metadata i8* %16, metadata !141, metadata !DIExpression()) #10, !dbg !156
  %17 = call fastcc i32 @load32(i8* noundef nonnull %16) #10, !dbg !158, !noalias !159
  call void @llvm.dbg.value(metadata i32 %17, metadata !109, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !116
  %18 = getelementptr inbounds i8, i8* %1, i32 20, !dbg !164
  %19 = call fastcc i32 @load32(i8* noundef nonnull %18) #10, !dbg !164, !noalias !159
  call void @llvm.dbg.value(metadata i32 %19, metadata !109, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !116
  %20 = getelementptr inbounds i8, i8* %1, i32 24, !dbg !165
  %21 = call fastcc i32 @load32(i8* noundef nonnull %20) #10, !dbg !165, !noalias !159
  call void @llvm.dbg.value(metadata i32 %21, metadata !109, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !116
  %22 = getelementptr inbounds i8, i8* %1, i32 28, !dbg !166
  %23 = call fastcc i32 @load32(i8* noundef nonnull %22) #10, !dbg !166, !noalias !159
  call void @llvm.dbg.value(metadata i32 %23, metadata !109, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !116
  %24 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 0, !dbg !167
  store i32 %9, i32* %24, align 4, !dbg !167, !tbaa.struct !118
  %25 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 1, !dbg !167
  store i32 %11, i32* %25, align 4, !dbg !167, !tbaa.struct !122
  %26 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 2, !dbg !167
  store i32 %13, i32* %26, align 4, !dbg !167, !tbaa.struct !123
  %27 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 3, !dbg !167
  store i32 %15, i32* %27, align 4, !dbg !167, !tbaa.struct !124
  %28 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 0, !dbg !168
  store i32 %17, i32* %28, align 4, !dbg !168, !tbaa.struct !118
  %29 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 1, !dbg !168
  store i32 %19, i32* %29, align 4, !dbg !168, !tbaa.struct !122
  %30 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 2, !dbg !168
  store i32 %21, i32* %30, align 4, !dbg !168, !tbaa.struct !123
  %31 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 3, !dbg !168
  store i32 %23, i32* %31, align 4, !dbg !168, !tbaa.struct !124
  %32 = call fastcc i32 @load32(i8* noundef %2), !dbg !169
  call void @llvm.dbg.value(metadata i32 %32, metadata !110, metadata !DIExpression()), !dbg !116
  %33 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !170
  call void @llvm.dbg.value(metadata i8* %33, metadata !111, metadata !DIExpression()), !dbg !116
  %34 = call fastcc i32 @load32(i8* noundef nonnull %33), !dbg !171
  call void @llvm.dbg.value(metadata i32 %34, metadata !112, metadata !DIExpression()), !dbg !116
  %35 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !172
  call void @llvm.dbg.value(metadata i8* %35, metadata !113, metadata !DIExpression()), !dbg !116
  %36 = call fastcc i32 @load32(i8* noundef nonnull %35), !dbg !173
  call void @llvm.dbg.value(metadata i32 %36, metadata !114, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i32 %3, metadata !115, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !116
  call void @llvm.dbg.value(metadata i32 %32, metadata !115, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !116
  call void @llvm.dbg.value(metadata i32 %34, metadata !115, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !116
  call void @llvm.dbg.value(metadata i32 %36, metadata !115, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !116
  %37 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 0, !dbg !174
  store i32 %3, i32* %37, align 4, !dbg !174, !tbaa.struct !118
  %38 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 1, !dbg !174
  store i32 %32, i32* %38, align 4, !dbg !174, !tbaa.struct !122
  %39 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 2, !dbg !174
  store i32 %34, i32* %39, align 4, !dbg !174, !tbaa.struct !123
  %40 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 3, !dbg !174
  store i32 %36, i32* %40, align 4, !dbg !174, !tbaa.struct !124
  ret void, !dbg !175
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @load32(i8* nocapture noundef readonly %0) unnamed_addr #5 !dbg !176 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !180, metadata !DIExpression()), !dbg !182
  %2 = bitcast i8* %0 to i32*, !dbg !183
  %3 = load i32, i32* %2, align 1, !dbg !183
  call void @llvm.dbg.value(metadata i32 %3, metadata !181, metadata !DIExpression()), !dbg !182
  ret i32 %3, !dbg !184
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, %struct.vec* nocapture noundef %3) unnamed_addr #0 !dbg !185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !187, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i8* %1, metadata !188, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %2, metadata !189, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata %struct.vec* %3, metadata !190, metadata !DIExpression()), !dbg !203
  %5 = udiv i32 %2, 3, !dbg !204
  call void @llvm.dbg.value(metadata i32 %5, metadata !191, metadata !DIExpression()), !dbg !203
  %6 = urem i32 %2, 3, !dbg !205
  call void @llvm.dbg.value(metadata i32 %6, metadata !192, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i8* %1, metadata !193, metadata !DIExpression()), !dbg !203
  %7 = mul i32 %5, 192, !dbg !206
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !207
  call void @llvm.dbg.value(metadata i8* %8, metadata !194, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i8* %0, metadata !195, metadata !DIExpression()), !dbg !203
  %9 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !208
  call void @llvm.dbg.value(metadata i8* %9, metadata !196, metadata !DIExpression()), !dbg !203
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks3(i8* noundef %0, i8* noundef %1, i32 noundef %5, %struct.vec* noundef %3), !dbg !209
  switch i32 %6, label %15 [
    i32 2, label %10
    i32 1, label %13
  ], !dbg !210

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %8, metadata !197, metadata !DIExpression()), !dbg !211
  %11 = getelementptr inbounds i8, i8* %8, i32 64, !dbg !212
  call void @llvm.dbg.value(metadata i8* %11, metadata !200, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i8* %9, metadata !201, metadata !DIExpression()), !dbg !211
  %12 = getelementptr inbounds i8, i8* %9, i32 64, !dbg !213
  call void @llvm.dbg.value(metadata i8* %12, metadata !202, metadata !DIExpression()), !dbg !211
  call fastcc void @Hacl_Impl_Chacha20_Vec128_update(i8* noundef %9, i8* noundef %8, %struct.vec* noundef %3), !dbg !214
  call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(%struct.vec* noundef %3), !dbg !215
  call fastcc void @Hacl_Impl_Chacha20_Vec128_update(i8* noundef nonnull %12, i8* noundef nonnull %11, %struct.vec* noundef %3), !dbg !216
  br label %14, !dbg !217

13:                                               ; preds = %4
  call fastcc void @Hacl_Impl_Chacha20_Vec128_update(i8* noundef %9, i8* noundef %8, %struct.vec* noundef %3), !dbg !218
  br label %14, !dbg !221

14:                                               ; preds = %10, %13
  call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(%struct.vec* noundef %3), !dbg !222
  br label %15, !dbg !223

15:                                               ; preds = %14, %4
  ret void, !dbg !223
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_update_last(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, %struct.vec* nocapture noundef readonly %3) unnamed_addr #0 !dbg !224 {
  %5 = alloca [64 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !226, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i8* %1, metadata !227, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i32 %2, metadata !228, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata %struct.vec* %3, metadata !229, metadata !DIExpression()), !dbg !241
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0, !dbg !242
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #10, !dbg !242
  call void @llvm.dbg.declare(metadata [64 x i8]* %5, metadata !230, metadata !DIExpression()), !dbg !243
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false), !dbg !243
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_block(i8* noundef nonnull %6, %struct.vec* noundef %3), !dbg !244
  call void @llvm.dbg.value(metadata i8* %6, metadata !234, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()), !dbg !245
  %7 = icmp eq i32 %2, 0, !dbg !246
  br i1 %7, label %8, label %9, !dbg !247

8:                                                ; preds = %9, %4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #10, !dbg !248
  ret void, !dbg !248

9:                                                ; preds = %4, %9
  %10 = phi i32 [ %17, %9 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !235, metadata !DIExpression()), !dbg !245
  %11 = getelementptr inbounds i8, i8* %1, i32 %10, !dbg !249
  %12 = load i8, i8* %11, align 1, !dbg !249, !tbaa !119
  call void @llvm.dbg.value(metadata i8 %12, metadata !237, metadata !DIExpression()), !dbg !250
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 %10, !dbg !251
  %14 = load i8, i8* %13, align 1, !dbg !251, !tbaa !119
  call void @llvm.dbg.value(metadata i8 %14, metadata !240, metadata !DIExpression()), !dbg !250
  %15 = xor i8 %14, %12, !dbg !252
  %16 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !253
  store i8 %15, i8* %16, align 1, !dbg !254, !tbaa !119
  %17 = add nuw i32 %10, 1, !dbg !255
  call void @llvm.dbg.value(metadata i32 %17, metadata !235, metadata !DIExpression()), !dbg !245
  %18 = icmp eq i32 %17, %2, !dbg !246
  br i1 %18, label %8, label %9, !dbg !247, !llvm.loop !256
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks3(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, %struct.vec* nocapture noundef %3) unnamed_addr #0 !dbg !260 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !262, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i8* %1, metadata !263, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i32 %2, metadata !264, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata %struct.vec* %3, metadata !265, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i32 0, metadata !266, metadata !DIExpression()), !dbg !269
  %5 = icmp eq i32 %2, 0, !dbg !270
  br i1 %5, label %6, label %7, !dbg !272

6:                                                ; preds = %7, %4
  ret void, !dbg !273

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !266, metadata !DIExpression()), !dbg !269
  call fastcc void @Hacl_Impl_Chacha20_Vec128_update3_(i8* noundef %0, i8* noundef %1, %struct.vec* noundef %3, i32 noundef %8), !dbg !274
  %9 = add nuw i32 %8, 1, !dbg !275
  call void @llvm.dbg.value(metadata i32 %9, metadata !266, metadata !DIExpression()), !dbg !269
  %10 = icmp eq i32 %9, %2, !dbg !270
  br i1 %10, label %6, label %7, !dbg !272, !llvm.loop !276
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_update(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, %struct.vec* nocapture noundef readonly %2) unnamed_addr #0 !dbg !278 {
  %4 = alloca [4 x %struct.vec], align 4
  %5 = bitcast [4 x %struct.vec]* %4 to i8*, !dbg !288
  call void @llvm.dbg.value(metadata i8* %0, metadata !282, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i8* %1, metadata !283, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata %struct.vec* %2, metadata !284, metadata !DIExpression()), !dbg !288
  %6 = bitcast [4 x %struct.vec]* %4 to i8*, !dbg !289
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #10, !dbg !289
  call void @llvm.dbg.declare(metadata [4 x %struct.vec]* %4, metadata !285, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 0, metadata !286, metadata !DIExpression()), !dbg !291
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !dbg !292
  call void @llvm.dbg.value(metadata i32 undef, metadata !286, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 undef, metadata !286, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !291
  %7 = getelementptr inbounds [4 x %struct.vec], [4 x %struct.vec]* %4, i32 0, i32 0, !dbg !294
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_core(%struct.vec* noundef nonnull %7, %struct.vec* noundef %2), !dbg !295
  call fastcc void @Hacl_Impl_Chacha20_Vec128_xor_block(i8* noundef %0, i8* noundef %1, %struct.vec* noundef nonnull %7), !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #10, !dbg !297
  ret void, !dbg !297
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(%struct.vec* nocapture noundef %0) unnamed_addr #4 !dbg !298 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !302, metadata !DIExpression()), !dbg !303
  call fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_incr(%struct.vec* noundef %0), !dbg !304
  ret void, !dbg !305
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_update3_(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, %struct.vec* nocapture noundef %2, i32 noundef %3) unnamed_addr #0 !dbg !306 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !310, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i8* %1, metadata !311, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 undef, metadata !312, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata %struct.vec* %2, metadata !313, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %3, metadata !314, metadata !DIExpression()), !dbg !317
  %5 = mul i32 %3, 192, !dbg !318
  %6 = getelementptr inbounds i8, i8* %0, i32 %5, !dbg !319
  call void @llvm.dbg.value(metadata i8* %6, metadata !315, metadata !DIExpression()), !dbg !317
  %7 = getelementptr inbounds i8, i8* %1, i32 %5, !dbg !320
  call void @llvm.dbg.value(metadata i8* %7, metadata !316, metadata !DIExpression()), !dbg !317
  call fastcc void @Hacl_Impl_Chacha20_Vec128_update3(i8* noundef %6, i8* noundef %7, %struct.vec* noundef %2), !dbg !321
  call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(%struct.vec* noundef %2), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_update3(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, %struct.vec* nocapture noundef %2) unnamed_addr #0 !dbg !324 {
  %4 = alloca [4 x %struct.vec], align 4
  %5 = bitcast [4 x %struct.vec]* %4 to i8*
  %6 = alloca [4 x %struct.vec], align 4
  %7 = alloca [4 x %struct.vec], align 4
  %8 = bitcast [4 x %struct.vec]* %7 to i8*, !dbg !344
  call void @llvm.dbg.value(metadata i8* %0, metadata !326, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i8* %1, metadata !327, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata %struct.vec* %2, metadata !328, metadata !DIExpression()), !dbg !344
  %9 = bitcast [4 x %struct.vec]* %4 to i8*, !dbg !345
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %9) #10, !dbg !345
  call void @llvm.dbg.declare(metadata [4 x %struct.vec]* %4, metadata !329, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i32 0, metadata !330, metadata !DIExpression()), !dbg !347
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !dbg !348
  %10 = bitcast [4 x %struct.vec]* %6 to i8*
  call void @llvm.dbg.value(metadata i32 undef, metadata !330, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 undef, metadata !330, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !347
  %11 = bitcast [4 x %struct.vec]* %6 to i8*, !dbg !350
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %11) #10, !dbg !350
  call void @llvm.dbg.declare(metadata [4 x %struct.vec]* %6, metadata !332, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 0, metadata !333, metadata !DIExpression()), !dbg !352
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %10, i8 0, i32 64, i1 false), !dbg !353
  call void @llvm.dbg.value(metadata i32 undef, metadata !333, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i32 undef, metadata !333, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !352
  %12 = bitcast [4 x %struct.vec]* %7 to i8*, !dbg !355
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #10, !dbg !355
  call void @llvm.dbg.declare(metadata [4 x %struct.vec]* %7, metadata !335, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i32 0, metadata !336, metadata !DIExpression()), !dbg !357
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %8, i8 0, i32 64, i1 false), !dbg !358
  call void @llvm.dbg.value(metadata i32 undef, metadata !336, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i32 undef, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !357
  %13 = getelementptr inbounds [4 x %struct.vec], [4 x %struct.vec]* %4, i32 0, i32 0, !dbg !360
  %14 = getelementptr inbounds [4 x %struct.vec], [4 x %struct.vec]* %6, i32 0, i32 0, !dbg !361
  %15 = getelementptr inbounds [4 x %struct.vec], [4 x %struct.vec]* %7, i32 0, i32 0, !dbg !362
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_core3(%struct.vec* noundef nonnull %13, %struct.vec* noundef nonnull %14, %struct.vec* noundef nonnull %15, %struct.vec* noundef %2), !dbg !363
  call void @llvm.dbg.value(metadata i8* %1, metadata !338, metadata !DIExpression()), !dbg !344
  %16 = getelementptr inbounds i8, i8* %1, i32 64, !dbg !364
  call void @llvm.dbg.value(metadata i8* %16, metadata !339, metadata !DIExpression()), !dbg !344
  %17 = getelementptr inbounds i8, i8* %1, i32 128, !dbg !365
  call void @llvm.dbg.value(metadata i8* %17, metadata !340, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i8* %0, metadata !341, metadata !DIExpression()), !dbg !344
  %18 = getelementptr inbounds i8, i8* %0, i32 64, !dbg !366
  call void @llvm.dbg.value(metadata i8* %18, metadata !342, metadata !DIExpression()), !dbg !344
  %19 = getelementptr inbounds i8, i8* %0, i32 128, !dbg !367
  call void @llvm.dbg.value(metadata i8* %19, metadata !343, metadata !DIExpression()), !dbg !344
  call fastcc void @Hacl_Impl_Chacha20_Vec128_xor_block(i8* noundef %0, i8* noundef %1, %struct.vec* noundef nonnull %13), !dbg !368
  call fastcc void @Hacl_Impl_Chacha20_Vec128_xor_block(i8* noundef nonnull %18, i8* noundef nonnull %16, %struct.vec* noundef nonnull %14), !dbg !369
  call fastcc void @Hacl_Impl_Chacha20_Vec128_xor_block(i8* noundef nonnull %19, i8* noundef nonnull %17, %struct.vec* noundef nonnull %15), !dbg !370
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #10, !dbg !371
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #10, !dbg !371
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %9) #10, !dbg !371
  ret void, !dbg !371
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_core3(%struct.vec* nocapture noundef %0, %struct.vec* nocapture noundef %1, %struct.vec* nocapture noundef %2, %struct.vec* nocapture noundef %3) unnamed_addr #0 !dbg !372 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !376, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata %struct.vec* %1, metadata !377, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata %struct.vec* %2, metadata !378, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata %struct.vec* %3, metadata !379, metadata !DIExpression()), !dbg !382
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_incr3(%struct.vec* noundef %0, %struct.vec* noundef %1, %struct.vec* noundef %2, %struct.vec* noundef %3), !dbg !383
  call void @llvm.dbg.value(metadata i32 0, metadata !380, metadata !DIExpression()), !dbg !384
  br label %6, !dbg !385

5:                                                ; preds = %6
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_sum3(%struct.vec* noundef %0, %struct.vec* noundef %1, %struct.vec* noundef %2, %struct.vec* noundef %3), !dbg !386
  ret void, !dbg !387

6:                                                ; preds = %4, %6
  %7 = phi i32 [ 0, %4 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !380, metadata !DIExpression()), !dbg !384
  call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(%struct.vec* noundef %0, %struct.vec* noundef %1, %struct.vec* noundef %2), !dbg !388
  %8 = add nuw nsw i32 %7, 1, !dbg !390
  call void @llvm.dbg.value(metadata i32 %8, metadata !380, metadata !DIExpression()), !dbg !384
  %9 = icmp eq i32 %8, 10, !dbg !391
  br i1 %9, label %5, label %6, !dbg !385, !llvm.loop !392
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_xor_block(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, %struct.vec* nocapture noundef readonly %2) unnamed_addr #4 !dbg !394 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !396, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i8* %1, metadata !397, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata %struct.vec* %2, metadata !398, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i8* undef, metadata !134, metadata !DIExpression(DW_OP_deref)) #10, !dbg !416
  call void @llvm.dbg.value(metadata i8* %1, metadata !141, metadata !DIExpression()) #10, !dbg !416
  %4 = call fastcc i32 @load32(i8* noundef %1) #10, !dbg !418, !noalias !419
  call void @llvm.dbg.value(metadata i32 %4, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %5 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !422
  %6 = call fastcc i32 @load32(i8* noundef nonnull %5) #10, !dbg !422, !noalias !419
  call void @llvm.dbg.value(metadata i32 %6, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %7 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !423
  %8 = call fastcc i32 @load32(i8* noundef nonnull %7) #10, !dbg !423, !noalias !419
  call void @llvm.dbg.value(metadata i32 %8, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %9 = getelementptr inbounds i8, i8* %1, i32 12, !dbg !424
  %10 = call fastcc i32 @load32(i8* noundef nonnull %9) #10, !dbg !424, !noalias !419
  call void @llvm.dbg.value(metadata i32 %10, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  %11 = getelementptr inbounds i8, i8* %1, i32 16, !dbg !425
  call void @llvm.dbg.value(metadata i8* undef, metadata !134, metadata !DIExpression(DW_OP_deref)) #10, !dbg !426
  call void @llvm.dbg.value(metadata i8* %11, metadata !141, metadata !DIExpression()) #10, !dbg !426
  %12 = call fastcc i32 @load32(i8* noundef nonnull %11) #10, !dbg !428, !noalias !429
  call void @llvm.dbg.value(metadata i32 %12, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %13 = getelementptr inbounds i8, i8* %1, i32 20, !dbg !432
  %14 = call fastcc i32 @load32(i8* noundef nonnull %13) #10, !dbg !432, !noalias !429
  call void @llvm.dbg.value(metadata i32 %14, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %15 = getelementptr inbounds i8, i8* %1, i32 24, !dbg !433
  %16 = call fastcc i32 @load32(i8* noundef nonnull %15) #10, !dbg !433, !noalias !429
  call void @llvm.dbg.value(metadata i32 %16, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %17 = getelementptr inbounds i8, i8* %1, i32 28, !dbg !434
  %18 = call fastcc i32 @load32(i8* noundef nonnull %17) #10, !dbg !434, !noalias !429
  call void @llvm.dbg.value(metadata i32 %18, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  %19 = getelementptr inbounds i8, i8* %1, i32 32, !dbg !435
  call void @llvm.dbg.value(metadata i8* undef, metadata !134, metadata !DIExpression(DW_OP_deref)) #10, !dbg !436
  call void @llvm.dbg.value(metadata i8* %19, metadata !141, metadata !DIExpression()) #10, !dbg !436
  %20 = call fastcc i32 @load32(i8* noundef nonnull %19) #10, !dbg !438, !noalias !439
  call void @llvm.dbg.value(metadata i32 %20, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %21 = getelementptr inbounds i8, i8* %1, i32 36, !dbg !442
  %22 = call fastcc i32 @load32(i8* noundef nonnull %21) #10, !dbg !442, !noalias !439
  call void @llvm.dbg.value(metadata i32 %22, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %23 = getelementptr inbounds i8, i8* %1, i32 40, !dbg !443
  %24 = call fastcc i32 @load32(i8* noundef nonnull %23) #10, !dbg !443, !noalias !439
  call void @llvm.dbg.value(metadata i32 %24, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %25 = getelementptr inbounds i8, i8* %1, i32 44, !dbg !444
  %26 = call fastcc i32 @load32(i8* noundef nonnull %25) #10, !dbg !444, !noalias !439
  call void @llvm.dbg.value(metadata i32 %26, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  %27 = getelementptr inbounds i8, i8* %1, i32 48, !dbg !445
  call void @llvm.dbg.value(metadata i8* undef, metadata !134, metadata !DIExpression(DW_OP_deref)) #10, !dbg !446
  call void @llvm.dbg.value(metadata i8* %27, metadata !141, metadata !DIExpression()) #10, !dbg !446
  %28 = call fastcc i32 @load32(i8* noundef nonnull %27) #10, !dbg !448, !noalias !449
  call void @llvm.dbg.value(metadata i32 %28, metadata !402, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %29 = getelementptr inbounds i8, i8* %1, i32 52, !dbg !452
  %30 = call fastcc i32 @load32(i8* noundef nonnull %29) #10, !dbg !452, !noalias !449
  call void @llvm.dbg.value(metadata i32 %30, metadata !402, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %31 = getelementptr inbounds i8, i8* %1, i32 56, !dbg !453
  %32 = call fastcc i32 @load32(i8* noundef nonnull %31) #10, !dbg !453, !noalias !449
  call void @llvm.dbg.value(metadata i32 %32, metadata !402, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %33 = getelementptr inbounds i8, i8* %1, i32 60, !dbg !454
  %34 = call fastcc i32 @load32(i8* noundef nonnull %33) #10, !dbg !454, !noalias !449
  call void @llvm.dbg.value(metadata i32 %34, metadata !402, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  %35 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 0, i32 0, i32 0, !dbg !455
  %36 = load i32, i32* %35, align 4, !dbg !455, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %36, metadata !403, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %37 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 0, i32 0, i32 1, !dbg !455
  %38 = load i32, i32* %37, align 4, !dbg !455, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %38, metadata !403, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %39 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 0, i32 0, i32 2, !dbg !455
  %40 = load i32, i32* %39, align 4, !dbg !455, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %40, metadata !403, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %41 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 0, i32 0, i32 3, !dbg !455
  %42 = load i32, i32* %41, align 4, !dbg !455, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %42, metadata !403, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  %43 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 1, i32 0, i32 0, !dbg !456
  %44 = load i32, i32* %43, align 4, !dbg !456, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %44, metadata !404, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %45 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 1, i32 0, i32 1, !dbg !456
  %46 = load i32, i32* %45, align 4, !dbg !456, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %46, metadata !404, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %47 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 1, i32 0, i32 2, !dbg !456
  %48 = load i32, i32* %47, align 4, !dbg !456, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %48, metadata !404, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %49 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 1, i32 0, i32 3, !dbg !456
  %50 = load i32, i32* %49, align 4, !dbg !456, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %50, metadata !404, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  %51 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 2, i32 0, i32 0, !dbg !457
  %52 = load i32, i32* %51, align 4, !dbg !457, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %52, metadata !405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %53 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 2, i32 0, i32 1, !dbg !457
  %54 = load i32, i32* %53, align 4, !dbg !457, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %54, metadata !405, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %55 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 2, i32 0, i32 2, !dbg !457
  %56 = load i32, i32* %55, align 4, !dbg !457, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %56, metadata !405, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %57 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 2, i32 0, i32 3, !dbg !457
  %58 = load i32, i32* %57, align 4, !dbg !457, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %58, metadata !405, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  %59 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 3, i32 0, i32 0, !dbg !458
  %60 = load i32, i32* %59, align 4, !dbg !458, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %60, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %61 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 3, i32 0, i32 1, !dbg !458
  %62 = load i32, i32* %61, align 4, !dbg !458, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %62, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %63 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 3, i32 0, i32 2, !dbg !458
  %64 = load i32, i32* %63, align 4, !dbg !458, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %64, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %65 = getelementptr inbounds %struct.vec, %struct.vec* %2, i32 3, i32 0, i32 3, !dbg !458
  %66 = load i32, i32* %65, align 4, !dbg !458, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %66, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  call void @llvm.dbg.value(metadata i32 %36, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !466
  call void @llvm.dbg.value(metadata i32 %38, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !466
  call void @llvm.dbg.value(metadata i32 %40, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !466
  call void @llvm.dbg.value(metadata i32 %42, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !466
  call void @llvm.dbg.value(metadata i32 %4, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !466
  call void @llvm.dbg.value(metadata i32 %6, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !466
  call void @llvm.dbg.value(metadata i32 %8, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !466
  call void @llvm.dbg.value(metadata i32 %10, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !466
  call void @llvm.dbg.value(metadata i8* undef, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !466
  %67 = xor i32 %36, %4, !dbg !468
  call void @llvm.dbg.value(metadata i32 %67, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %68 = xor i32 %38, %6, !dbg !469
  call void @llvm.dbg.value(metadata i32 %68, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %69 = xor i32 %40, %8, !dbg !470
  call void @llvm.dbg.value(metadata i32 %69, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %70 = xor i32 %42, %10, !dbg !471
  call void @llvm.dbg.value(metadata i32 %70, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  call void @llvm.dbg.value(metadata i32 %44, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !472
  call void @llvm.dbg.value(metadata i32 %46, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !472
  call void @llvm.dbg.value(metadata i32 %48, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !472
  call void @llvm.dbg.value(metadata i32 %50, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !472
  call void @llvm.dbg.value(metadata i32 %12, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !472
  call void @llvm.dbg.value(metadata i32 %14, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !472
  call void @llvm.dbg.value(metadata i32 %16, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !472
  call void @llvm.dbg.value(metadata i32 %18, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !472
  call void @llvm.dbg.value(metadata i8* undef, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !472
  %71 = xor i32 %44, %12, !dbg !474
  call void @llvm.dbg.value(metadata i32 %71, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %72 = xor i32 %46, %14, !dbg !475
  call void @llvm.dbg.value(metadata i32 %72, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %73 = xor i32 %48, %16, !dbg !476
  call void @llvm.dbg.value(metadata i32 %73, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %74 = xor i32 %50, %18, !dbg !477
  call void @llvm.dbg.value(metadata i32 %74, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  call void @llvm.dbg.value(metadata i32 %52, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !478
  call void @llvm.dbg.value(metadata i32 %54, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !478
  call void @llvm.dbg.value(metadata i32 %56, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !478
  call void @llvm.dbg.value(metadata i32 %58, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !478
  call void @llvm.dbg.value(metadata i32 %20, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !478
  call void @llvm.dbg.value(metadata i32 %22, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !478
  call void @llvm.dbg.value(metadata i32 %24, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !478
  call void @llvm.dbg.value(metadata i32 %26, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !478
  call void @llvm.dbg.value(metadata i8* undef, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !478
  %75 = xor i32 %52, %20, !dbg !480
  call void @llvm.dbg.value(metadata i32 %75, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %76 = xor i32 %54, %22, !dbg !481
  call void @llvm.dbg.value(metadata i32 %76, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %77 = xor i32 %56, %24, !dbg !482
  call void @llvm.dbg.value(metadata i32 %77, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %78 = xor i32 %58, %26, !dbg !483
  call void @llvm.dbg.value(metadata i32 %78, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  call void @llvm.dbg.value(metadata i32 %60, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !484
  call void @llvm.dbg.value(metadata i32 %62, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !484
  call void @llvm.dbg.value(metadata i32 %64, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !484
  call void @llvm.dbg.value(metadata i32 %66, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !484
  call void @llvm.dbg.value(metadata i32 %28, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !484
  call void @llvm.dbg.value(metadata i32 %30, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !484
  call void @llvm.dbg.value(metadata i32 %32, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !484
  call void @llvm.dbg.value(metadata i32 %34, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !484
  call void @llvm.dbg.value(metadata i8* undef, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !484
  %79 = xor i32 %60, %28, !dbg !486
  call void @llvm.dbg.value(metadata i32 %79, metadata !410, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !415
  %80 = xor i32 %62, %30, !dbg !487
  call void @llvm.dbg.value(metadata i32 %80, metadata !410, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !415
  %81 = xor i32 %64, %32, !dbg !488
  call void @llvm.dbg.value(metadata i32 %81, metadata !410, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !415
  %82 = xor i32 %66, %34, !dbg !489
  call void @llvm.dbg.value(metadata i32 %82, metadata !410, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !415
  call void @llvm.dbg.value(metadata i8* %0, metadata !411, metadata !DIExpression()), !dbg !415
  %83 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !490
  call void @llvm.dbg.value(metadata i8* %83, metadata !412, metadata !DIExpression()), !dbg !415
  %84 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !491
  call void @llvm.dbg.value(metadata i8* %84, metadata !413, metadata !DIExpression()), !dbg !415
  %85 = getelementptr inbounds i8, i8* %0, i32 48, !dbg !492
  call void @llvm.dbg.value(metadata i8* %85, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i32 %67, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !500
  call void @llvm.dbg.value(metadata i32 %68, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !500
  call void @llvm.dbg.value(metadata i32 %69, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !500
  call void @llvm.dbg.value(metadata i32 %70, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !500
  call void @llvm.dbg.value(metadata i8* %0, metadata !499, metadata !DIExpression()) #10, !dbg !500
  call fastcc void @store32(i8* noundef %0, i32 noundef %67) #10, !dbg !502
  %86 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !503
  call fastcc void @store32(i8* noundef nonnull %86, i32 noundef %68) #10, !dbg !503
  %87 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !504
  call fastcc void @store32(i8* noundef nonnull %87, i32 noundef %69) #10, !dbg !504
  %88 = getelementptr inbounds i8, i8* %0, i32 12, !dbg !505
  call fastcc void @store32(i8* noundef nonnull %88, i32 noundef %70) #10, !dbg !505
  call void @llvm.dbg.value(metadata i32 %71, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !506
  call void @llvm.dbg.value(metadata i32 %72, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !506
  call void @llvm.dbg.value(metadata i32 %73, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !506
  call void @llvm.dbg.value(metadata i32 %74, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !506
  call void @llvm.dbg.value(metadata i8* %83, metadata !499, metadata !DIExpression()) #10, !dbg !506
  call fastcc void @store32(i8* noundef nonnull %83, i32 noundef %71) #10, !dbg !508
  %89 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !509
  call fastcc void @store32(i8* noundef nonnull %89, i32 noundef %72) #10, !dbg !509
  %90 = getelementptr inbounds i8, i8* %0, i32 24, !dbg !510
  call fastcc void @store32(i8* noundef nonnull %90, i32 noundef %73) #10, !dbg !510
  %91 = getelementptr inbounds i8, i8* %0, i32 28, !dbg !511
  call fastcc void @store32(i8* noundef nonnull %91, i32 noundef %74) #10, !dbg !511
  call void @llvm.dbg.value(metadata i32 %75, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !512
  call void @llvm.dbg.value(metadata i32 %76, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !512
  call void @llvm.dbg.value(metadata i32 %77, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !512
  call void @llvm.dbg.value(metadata i32 %78, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !512
  call void @llvm.dbg.value(metadata i8* %84, metadata !499, metadata !DIExpression()) #10, !dbg !512
  call fastcc void @store32(i8* noundef nonnull %84, i32 noundef %75) #10, !dbg !514
  %92 = getelementptr inbounds i8, i8* %0, i32 36, !dbg !515
  call fastcc void @store32(i8* noundef nonnull %92, i32 noundef %76) #10, !dbg !515
  %93 = getelementptr inbounds i8, i8* %0, i32 40, !dbg !516
  call fastcc void @store32(i8* noundef nonnull %93, i32 noundef %77) #10, !dbg !516
  %94 = getelementptr inbounds i8, i8* %0, i32 44, !dbg !517
  call fastcc void @store32(i8* noundef nonnull %94, i32 noundef %78) #10, !dbg !517
  call void @llvm.dbg.value(metadata i32 %79, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !518
  call void @llvm.dbg.value(metadata i32 %80, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !518
  call void @llvm.dbg.value(metadata i32 %81, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !518
  call void @llvm.dbg.value(metadata i32 %82, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !518
  call void @llvm.dbg.value(metadata i8* %85, metadata !499, metadata !DIExpression()) #10, !dbg !518
  call fastcc void @store32(i8* noundef nonnull %85, i32 noundef %79) #10, !dbg !520
  %95 = getelementptr inbounds i8, i8* %0, i32 52, !dbg !521
  call fastcc void @store32(i8* noundef nonnull %95, i32 noundef %80) #10, !dbg !521
  %96 = getelementptr inbounds i8, i8* %0, i32 56, !dbg !522
  call fastcc void @store32(i8* noundef nonnull %96, i32 noundef %81) #10, !dbg !522
  %97 = getelementptr inbounds i8, i8* %0, i32 60, !dbg !523
  call fastcc void @store32(i8* noundef nonnull %97, i32 noundef %82) #10, !dbg !523
  ret void, !dbg !524
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_incr3(%struct.vec* nocapture noundef writeonly %0, %struct.vec* nocapture noundef %1, %struct.vec* nocapture noundef %2, %struct.vec* nocapture noundef readonly %3) unnamed_addr #4 !dbg !525 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !527, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata %struct.vec* %1, metadata !528, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata %struct.vec* %2, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata %struct.vec* %3, metadata !530, metadata !DIExpression()), !dbg !531
  call fastcc void @Hacl_Impl_Chacha20_Vec128_copy_state(%struct.vec* noundef %0, %struct.vec* noundef %3), !dbg !532
  call fastcc void @Hacl_Impl_Chacha20_Vec128_copy_state(%struct.vec* noundef %1, %struct.vec* noundef %3), !dbg !533
  call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(%struct.vec* noundef %1), !dbg !534
  call fastcc void @Hacl_Impl_Chacha20_Vec128_copy_state(%struct.vec* noundef %2, %struct.vec* noundef %1), !dbg !535
  call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(%struct.vec* noundef %2), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(%struct.vec* nocapture noundef %0, %struct.vec* nocapture noundef %1, %struct.vec* nocapture noundef %2) unnamed_addr #4 !dbg !538 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !542, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata %struct.vec* %1, metadata !543, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata %struct.vec* %2, metadata !544, metadata !DIExpression()), !dbg !545
  call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(%struct.vec* noundef %0), !dbg !546
  call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(%struct.vec* noundef %1), !dbg !547
  call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(%struct.vec* noundef %2), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_sum3(%struct.vec* nocapture noundef %0, %struct.vec* nocapture noundef %1, %struct.vec* nocapture noundef %2, %struct.vec* nocapture noundef %3) unnamed_addr #4 !dbg !550 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !552, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata %struct.vec* %1, metadata !553, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata %struct.vec* %2, metadata !554, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata %struct.vec* %3, metadata !555, metadata !DIExpression()), !dbg !556
  call fastcc void @Hacl_Impl_Chacha20_Vec128_sum_states(%struct.vec* noundef %0, %struct.vec* noundef %3), !dbg !557
  call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(%struct.vec* noundef %3), !dbg !558
  call fastcc void @Hacl_Impl_Chacha20_Vec128_sum_states(%struct.vec* noundef %1, %struct.vec* noundef %3), !dbg !559
  call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(%struct.vec* noundef %3), !dbg !560
  call fastcc void @Hacl_Impl_Chacha20_Vec128_sum_states(%struct.vec* noundef %2, %struct.vec* noundef %3), !dbg !561
  ret void, !dbg !562
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_copy_state(%struct.vec* nocapture noundef writeonly %0, %struct.vec* nocapture noundef readonly %1) unnamed_addr #4 !dbg !563 {
  %3 = alloca [4 x i32], align 4
  call void @llvm.dbg.declare(metadata [4 x i32]* %3, metadata !570, metadata !DIExpression()), !dbg !573
  %4 = alloca [4 x i32], align 4
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !571, metadata !DIExpression()), !dbg !574
  %5 = alloca [4 x i32], align 4
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !572, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !567, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata %struct.vec* %1, metadata !568, metadata !DIExpression()), !dbg !576
  %6 = bitcast %struct.vec* %1 to i8*, !dbg !577
  %7 = bitcast [4 x i32]* %3 to i8*, !dbg !578
  %8 = bitcast [4 x i32]* %3 to i8*, !dbg !578
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8), !dbg !578
  %9 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 1, !dbg !579
  %10 = bitcast %struct.vec* %9 to i8*, !dbg !579
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %7, i8* noundef nonnull align 4 dereferenceable(16) %10, i32 16, i1 false), !dbg !579, !tbaa.struct !118
  %11 = bitcast [4 x i32]* %4 to i8*, !dbg !580
  %12 = bitcast [4 x i32]* %4 to i8*, !dbg !580
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12), !dbg !580
  %13 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 2, !dbg !581
  %14 = bitcast %struct.vec* %13 to i8*, !dbg !581
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %11, i8* noundef nonnull align 4 dereferenceable(16) %14, i32 16, i1 false), !dbg !581, !tbaa.struct !118
  %15 = bitcast [4 x i32]* %5 to i8*, !dbg !582
  %16 = bitcast [4 x i32]* %5 to i8*, !dbg !582
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16), !dbg !582
  %17 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 3, !dbg !583
  %18 = bitcast %struct.vec* %17 to i8*, !dbg !583
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %15, i8* noundef nonnull align 4 dereferenceable(16) %18, i32 16, i1 false), !dbg !583, !tbaa.struct !118
  %19 = bitcast %struct.vec* %0 to i8*, !dbg !584
  call void @llvm.memmove.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %19, i8* noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false), !dbg !584
  %20 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, !dbg !585
  %21 = bitcast %struct.vec* %20 to i8*, !dbg !585
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %21, i8* noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false), !dbg !585, !tbaa.struct !118
  %22 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, !dbg !586
  %23 = bitcast %struct.vec* %22 to i8*, !dbg !586
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %23, i8* noundef nonnull align 4 dereferenceable(16) %11, i32 16, i1 false), !dbg !586, !tbaa.struct !118
  %24 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, !dbg !587
  %25 = bitcast %struct.vec* %24 to i8*, !dbg !587
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %25, i8* noundef nonnull align 4 dereferenceable(16) %15, i32 16, i1 false), !dbg !587, !tbaa.struct !118
  %26 = bitcast [4 x i32]* %5 to i8*, !dbg !588
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26), !dbg !588
  %27 = bitcast [4 x i32]* %4 to i8*, !dbg !588
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27), !dbg !588
  %28 = bitcast [4 x i32]* %3 to i8*, !dbg !588
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28), !dbg !588
  ret void, !dbg !588
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(%struct.vec* nocapture noundef %0) unnamed_addr #4 !dbg !589 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !591, metadata !DIExpression()), !dbg !598
  call fastcc void @Hacl_Impl_Chacha20_Vec128_round(%struct.vec* noundef %0), !dbg !599
  %2 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 0, !dbg !600
  %3 = load i32, i32* %2, align 4, !dbg !600, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %3, metadata !592, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !598
  %4 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 1, !dbg !600
  %5 = load i32, i32* %4, align 4, !dbg !600, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %5, metadata !592, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !598
  %6 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 2, !dbg !600
  %7 = load i32, i32* %6, align 4, !dbg !600, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %7, metadata !592, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !598
  %8 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 3, !dbg !600
  %9 = load i32, i32* %8, align 4, !dbg !600, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %9, metadata !592, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !598
  %10 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 0, !dbg !601
  %11 = load i32, i32* %10, align 4, !dbg !601, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %11, metadata !593, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !598
  %12 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 1, !dbg !601
  %13 = load i32, i32* %12, align 4, !dbg !601, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %13, metadata !593, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !598
  %14 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 2, !dbg !601
  %15 = load i32, i32* %14, align 4, !dbg !601, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %15, metadata !593, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !598
  %16 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 3, !dbg !601
  %17 = load i32, i32* %16, align 4, !dbg !601, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %17, metadata !593, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !598
  %18 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 0, !dbg !602
  %19 = load i32, i32* %18, align 4, !dbg !602, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %19, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !598
  %20 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 1, !dbg !602
  %21 = load i32, i32* %20, align 4, !dbg !602, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %21, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !598
  %22 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 2, !dbg !602
  %23 = load i32, i32* %22, align 4, !dbg !602, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %23, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !598
  %24 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 3, !dbg !602
  %25 = load i32, i32* %24, align 4, !dbg !602, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %25, metadata !594, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !598
  store i32 %5, i32* %2, align 4, !dbg !603, !tbaa.struct !118
  store i32 %7, i32* %4, align 4, !dbg !603, !tbaa.struct !122
  store i32 %9, i32* %6, align 4, !dbg !603, !tbaa.struct !123
  store i32 %3, i32* %8, align 4, !dbg !603, !tbaa.struct !124
  store i32 %15, i32* %10, align 4, !dbg !604, !tbaa.struct !118
  store i32 %17, i32* %12, align 4, !dbg !604, !tbaa.struct !122
  store i32 %11, i32* %14, align 4, !dbg !604, !tbaa.struct !123
  store i32 %13, i32* %16, align 4, !dbg !604, !tbaa.struct !124
  store i32 %25, i32* %18, align 4, !dbg !605, !tbaa.struct !118
  store i32 %19, i32* %20, align 4, !dbg !605, !tbaa.struct !122
  store i32 %21, i32* %22, align 4, !dbg !605, !tbaa.struct !123
  store i32 %23, i32* %24, align 4, !dbg !605, !tbaa.struct !124
  call fastcc void @Hacl_Impl_Chacha20_Vec128_round(%struct.vec* noundef %0), !dbg !606
  %26 = load i32, i32* %2, align 4, !dbg !607, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %26, metadata !595, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !598
  %27 = load i32, i32* %4, align 4, !dbg !607, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %27, metadata !595, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !598
  %28 = load i32, i32* %6, align 4, !dbg !607, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %28, metadata !595, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !598
  %29 = load i32, i32* %8, align 4, !dbg !607, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %29, metadata !595, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !598
  %30 = load i32, i32* %10, align 4, !dbg !608, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %30, metadata !596, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !598
  %31 = load i32, i32* %12, align 4, !dbg !608, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %31, metadata !596, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !598
  %32 = load i32, i32* %14, align 4, !dbg !608, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %32, metadata !596, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !598
  %33 = load i32, i32* %16, align 4, !dbg !608, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %33, metadata !596, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !598
  %34 = load i32, i32* %18, align 4, !dbg !609, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %34, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !598
  %35 = load i32, i32* %20, align 4, !dbg !609, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %35, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !598
  %36 = load i32, i32* %22, align 4, !dbg !609, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %36, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !598
  %37 = load i32, i32* %24, align 4, !dbg !609, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %37, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !598
  store i32 %29, i32* %2, align 4, !dbg !610, !tbaa.struct !118
  store i32 %26, i32* %4, align 4, !dbg !610, !tbaa.struct !122
  store i32 %27, i32* %6, align 4, !dbg !610, !tbaa.struct !123
  store i32 %28, i32* %8, align 4, !dbg !610, !tbaa.struct !124
  store i32 %32, i32* %10, align 4, !dbg !611, !tbaa.struct !118
  store i32 %33, i32* %12, align 4, !dbg !611, !tbaa.struct !122
  store i32 %30, i32* %14, align 4, !dbg !611, !tbaa.struct !123
  store i32 %31, i32* %16, align 4, !dbg !611, !tbaa.struct !124
  store i32 %35, i32* %18, align 4, !dbg !612, !tbaa.struct !118
  store i32 %36, i32* %20, align 4, !dbg !612, !tbaa.struct !122
  store i32 %37, i32* %22, align 4, !dbg !612, !tbaa.struct !123
  store i32 %34, i32* %24, align 4, !dbg !612, !tbaa.struct !124
  ret void, !dbg !613
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_round(%struct.vec* nocapture noundef %0) unnamed_addr #4 !dbg !614 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !616, metadata !DIExpression()), !dbg !637
  %2 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 0, !dbg !638
  %3 = load i32, i32* %2, align 4, !dbg !638, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %3, metadata !617, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %4 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 1, !dbg !638
  %5 = load i32, i32* %4, align 4, !dbg !638, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %5, metadata !617, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %6 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 2, !dbg !638
  %7 = load i32, i32* %6, align 4, !dbg !638, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %7, metadata !617, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %8 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 3, !dbg !638
  %9 = load i32, i32* %8, align 4, !dbg !638, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %9, metadata !617, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  %10 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 0, !dbg !639
  %11 = load i32, i32* %10, align 4, !dbg !639, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %11, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %12 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 1, !dbg !639
  %13 = load i32, i32* %12, align 4, !dbg !639, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %13, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %14 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 2, !dbg !639
  %15 = load i32, i32* %14, align 4, !dbg !639, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %15, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %16 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 3, !dbg !639
  %17 = load i32, i32* %16, align 4, !dbg !639, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %17, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  %18 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 0, !dbg !640
  %19 = load i32, i32* %18, align 4, !dbg !640, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %19, metadata !619, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %20 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 1, !dbg !640
  %21 = load i32, i32* %20, align 4, !dbg !640, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %21, metadata !619, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %22 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 2, !dbg !640
  %23 = load i32, i32* %22, align 4, !dbg !640, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %23, metadata !619, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %24 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 3, !dbg !640
  %25 = load i32, i32* %24, align 4, !dbg !640, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %25, metadata !619, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %11, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !646
  call void @llvm.dbg.value(metadata i32 %13, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !646
  call void @llvm.dbg.value(metadata i32 %15, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !646
  call void @llvm.dbg.value(metadata i32 %17, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !646
  call void @llvm.dbg.value(metadata i32 %3, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !646
  call void @llvm.dbg.value(metadata i32 %5, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !646
  call void @llvm.dbg.value(metadata i32 %7, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !646
  call void @llvm.dbg.value(metadata i32 %9, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !646
  call void @llvm.dbg.value(metadata i8* undef, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !646
  %26 = add i32 %11, %3, !dbg !648
  call void @llvm.dbg.value(metadata i32 %26, metadata !620, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %27 = add i32 %13, %5, !dbg !649
  call void @llvm.dbg.value(metadata i32 %27, metadata !620, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %28 = add i32 %15, %7, !dbg !650
  call void @llvm.dbg.value(metadata i32 %28, metadata !620, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %29 = add i32 %17, %9, !dbg !651
  call void @llvm.dbg.value(metadata i32 %29, metadata !620, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %26, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !652
  call void @llvm.dbg.value(metadata i32 %27, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !652
  call void @llvm.dbg.value(metadata i32 %28, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !652
  call void @llvm.dbg.value(metadata i32 %29, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !652
  call void @llvm.dbg.value(metadata i32 %19, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !652
  call void @llvm.dbg.value(metadata i32 %21, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !652
  call void @llvm.dbg.value(metadata i32 %23, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !652
  call void @llvm.dbg.value(metadata i32 %25, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !652
  call void @llvm.dbg.value(metadata i8* undef, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !652
  %30 = xor i32 %19, %26, !dbg !654
  %31 = xor i32 %21, %27, !dbg !655
  %32 = xor i32 %23, %28, !dbg !656
  %33 = xor i32 %25, %29, !dbg !657
  call void @llvm.dbg.value(metadata i32 %30, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !665
  call void @llvm.dbg.value(metadata i32 %31, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !665
  call void @llvm.dbg.value(metadata i32 %32, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !665
  call void @llvm.dbg.value(metadata i32 %33, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !665
  call void @llvm.dbg.value(metadata i8* undef, metadata !664, metadata !DIExpression(DW_OP_deref)), !dbg !665
  call void @llvm.dbg.value(metadata i32 16, metadata !663, metadata !DIExpression()), !dbg !665
  %34 = call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 16), !dbg !667
  call void @llvm.dbg.value(metadata i32 %34, metadata !621, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %35 = call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 16), !dbg !668
  call void @llvm.dbg.value(metadata i32 %35, metadata !621, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %36 = call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 16), !dbg !669
  call void @llvm.dbg.value(metadata i32 %36, metadata !621, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %37 = call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 16), !dbg !670
  call void @llvm.dbg.value(metadata i32 %37, metadata !621, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  store i32 %26, i32* %2, align 4, !dbg !671, !tbaa.struct !118
  store i32 %27, i32* %4, align 4, !dbg !671, !tbaa.struct !122
  store i32 %28, i32* %6, align 4, !dbg !671, !tbaa.struct !123
  store i32 %29, i32* %8, align 4, !dbg !671, !tbaa.struct !124
  store i32 %34, i32* %18, align 4, !dbg !672, !tbaa.struct !118
  store i32 %35, i32* %20, align 4, !dbg !672, !tbaa.struct !122
  store i32 %36, i32* %22, align 4, !dbg !672, !tbaa.struct !123
  store i32 %37, i32* %24, align 4, !dbg !672, !tbaa.struct !124
  %38 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 0, !dbg !673
  %39 = load i32, i32* %38, align 4, !dbg !673, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %39, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %40 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 1, !dbg !673
  %41 = load i32, i32* %40, align 4, !dbg !673, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %41, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %42 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 2, !dbg !673
  %43 = load i32, i32* %42, align 4, !dbg !673, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %43, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %44 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 3, !dbg !673
  %45 = load i32, i32* %44, align 4, !dbg !673, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %45, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %34, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %35, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %36, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %37, metadata !623, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %11, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %13, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %15, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %17, metadata !624, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %34, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !674
  call void @llvm.dbg.value(metadata i32 %35, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !674
  call void @llvm.dbg.value(metadata i32 %36, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !674
  call void @llvm.dbg.value(metadata i32 %37, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !674
  call void @llvm.dbg.value(metadata i32 %39, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !674
  call void @llvm.dbg.value(metadata i32 %41, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !674
  call void @llvm.dbg.value(metadata i32 %43, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !674
  call void @llvm.dbg.value(metadata i32 %45, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !674
  call void @llvm.dbg.value(metadata i8* undef, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !674
  %46 = add i32 %39, %34, !dbg !676
  call void @llvm.dbg.value(metadata i32 %46, metadata !625, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %47 = add i32 %41, %35, !dbg !677
  call void @llvm.dbg.value(metadata i32 %47, metadata !625, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %48 = add i32 %43, %36, !dbg !678
  call void @llvm.dbg.value(metadata i32 %48, metadata !625, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %49 = add i32 %45, %37, !dbg !679
  call void @llvm.dbg.value(metadata i32 %49, metadata !625, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %46, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !680
  call void @llvm.dbg.value(metadata i32 %47, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !680
  call void @llvm.dbg.value(metadata i32 %48, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !680
  call void @llvm.dbg.value(metadata i32 %49, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !680
  call void @llvm.dbg.value(metadata i32 %11, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !680
  call void @llvm.dbg.value(metadata i32 %13, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !680
  call void @llvm.dbg.value(metadata i32 %15, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !680
  call void @llvm.dbg.value(metadata i32 %17, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !680
  call void @llvm.dbg.value(metadata i8* undef, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !680
  %50 = xor i32 %46, %11, !dbg !682
  %51 = xor i32 %47, %13, !dbg !683
  %52 = xor i32 %48, %15, !dbg !684
  %53 = xor i32 %49, %17, !dbg !685
  call void @llvm.dbg.value(metadata i32 %50, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !686
  call void @llvm.dbg.value(metadata i32 %51, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !686
  call void @llvm.dbg.value(metadata i32 %52, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !686
  call void @llvm.dbg.value(metadata i32 %53, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !686
  call void @llvm.dbg.value(metadata i8* undef, metadata !664, metadata !DIExpression(DW_OP_deref)), !dbg !686
  call void @llvm.dbg.value(metadata i32 12, metadata !663, metadata !DIExpression()), !dbg !686
  %54 = call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 12), !dbg !688
  call void @llvm.dbg.value(metadata i32 %54, metadata !626, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %55 = call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 12), !dbg !689
  call void @llvm.dbg.value(metadata i32 %55, metadata !626, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %56 = call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 12), !dbg !690
  call void @llvm.dbg.value(metadata i32 %56, metadata !626, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %57 = call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 12), !dbg !691
  call void @llvm.dbg.value(metadata i32 %57, metadata !626, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  store i32 %46, i32* %38, align 4, !dbg !692, !tbaa.struct !118
  store i32 %47, i32* %40, align 4, !dbg !692, !tbaa.struct !122
  store i32 %48, i32* %42, align 4, !dbg !692, !tbaa.struct !123
  store i32 %49, i32* %44, align 4, !dbg !692, !tbaa.struct !124
  store i32 %54, i32* %10, align 4, !dbg !693, !tbaa.struct !118
  store i32 %55, i32* %12, align 4, !dbg !693, !tbaa.struct !122
  store i32 %56, i32* %14, align 4, !dbg !693, !tbaa.struct !123
  store i32 %57, i32* %16, align 4, !dbg !693, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %26, metadata !627, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %27, metadata !627, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %28, metadata !627, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %29, metadata !627, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %54, metadata !628, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %55, metadata !628, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %56, metadata !628, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %57, metadata !628, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %34, metadata !629, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %35, metadata !629, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %36, metadata !629, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %37, metadata !629, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %54, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !694
  call void @llvm.dbg.value(metadata i32 %55, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !694
  call void @llvm.dbg.value(metadata i32 %56, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !694
  call void @llvm.dbg.value(metadata i32 %57, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !694
  call void @llvm.dbg.value(metadata i32 %26, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !694
  call void @llvm.dbg.value(metadata i32 %27, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !694
  call void @llvm.dbg.value(metadata i32 %28, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !694
  call void @llvm.dbg.value(metadata i32 %29, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !694
  call void @llvm.dbg.value(metadata i8* undef, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !694
  %58 = add i32 %54, %26, !dbg !696
  call void @llvm.dbg.value(metadata i32 %58, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %59 = add i32 %55, %27, !dbg !697
  call void @llvm.dbg.value(metadata i32 %59, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %60 = add i32 %56, %28, !dbg !698
  call void @llvm.dbg.value(metadata i32 %60, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %61 = add i32 %57, %29, !dbg !699
  call void @llvm.dbg.value(metadata i32 %61, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %58, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !700
  call void @llvm.dbg.value(metadata i32 %59, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !700
  call void @llvm.dbg.value(metadata i32 %60, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !700
  call void @llvm.dbg.value(metadata i32 %61, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !700
  call void @llvm.dbg.value(metadata i32 %34, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !700
  call void @llvm.dbg.value(metadata i32 %35, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !700
  call void @llvm.dbg.value(metadata i32 %36, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !700
  call void @llvm.dbg.value(metadata i32 %37, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !700
  call void @llvm.dbg.value(metadata i8* undef, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !700
  %62 = xor i32 %58, %34, !dbg !702
  %63 = xor i32 %59, %35, !dbg !703
  %64 = xor i32 %60, %36, !dbg !704
  %65 = xor i32 %61, %37, !dbg !705
  call void @llvm.dbg.value(metadata i32 %62, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !706
  call void @llvm.dbg.value(metadata i32 %63, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !706
  call void @llvm.dbg.value(metadata i32 %64, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !706
  call void @llvm.dbg.value(metadata i32 %65, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !706
  call void @llvm.dbg.value(metadata i8* undef, metadata !664, metadata !DIExpression(DW_OP_deref)), !dbg !706
  call void @llvm.dbg.value(metadata i32 8, metadata !663, metadata !DIExpression()), !dbg !706
  %66 = call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 8), !dbg !708
  call void @llvm.dbg.value(metadata i32 %66, metadata !631, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %67 = call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 8), !dbg !709
  call void @llvm.dbg.value(metadata i32 %67, metadata !631, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %68 = call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 8), !dbg !710
  call void @llvm.dbg.value(metadata i32 %68, metadata !631, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %69 = call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 8), !dbg !711
  call void @llvm.dbg.value(metadata i32 %69, metadata !631, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  store i32 %58, i32* %2, align 4, !dbg !712, !tbaa.struct !118
  store i32 %59, i32* %4, align 4, !dbg !712, !tbaa.struct !122
  store i32 %60, i32* %6, align 4, !dbg !712, !tbaa.struct !123
  store i32 %61, i32* %8, align 4, !dbg !712, !tbaa.struct !124
  store i32 %66, i32* %18, align 4, !dbg !713, !tbaa.struct !118
  store i32 %67, i32* %20, align 4, !dbg !713, !tbaa.struct !122
  store i32 %68, i32* %22, align 4, !dbg !713, !tbaa.struct !123
  store i32 %69, i32* %24, align 4, !dbg !713, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %46, metadata !632, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %47, metadata !632, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %48, metadata !632, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %49, metadata !632, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %66, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %67, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %68, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %69, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %54, metadata !634, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %55, metadata !634, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %56, metadata !634, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %57, metadata !634, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %66, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !714
  call void @llvm.dbg.value(metadata i32 %67, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !714
  call void @llvm.dbg.value(metadata i32 %68, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !714
  call void @llvm.dbg.value(metadata i32 %69, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !714
  call void @llvm.dbg.value(metadata i32 %46, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !714
  call void @llvm.dbg.value(metadata i32 %47, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !714
  call void @llvm.dbg.value(metadata i32 %48, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !714
  call void @llvm.dbg.value(metadata i32 %49, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !714
  call void @llvm.dbg.value(metadata i8* undef, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !714
  %70 = add i32 %66, %46, !dbg !716
  call void @llvm.dbg.value(metadata i32 %70, metadata !635, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %71 = add i32 %67, %47, !dbg !717
  call void @llvm.dbg.value(metadata i32 %71, metadata !635, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %72 = add i32 %68, %48, !dbg !718
  call void @llvm.dbg.value(metadata i32 %72, metadata !635, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %73 = add i32 %69, %49, !dbg !719
  call void @llvm.dbg.value(metadata i32 %73, metadata !635, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  call void @llvm.dbg.value(metadata i32 %70, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !720
  call void @llvm.dbg.value(metadata i32 %71, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !720
  call void @llvm.dbg.value(metadata i32 %72, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !720
  call void @llvm.dbg.value(metadata i32 %73, metadata !459, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !720
  call void @llvm.dbg.value(metadata i32 %54, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !720
  call void @llvm.dbg.value(metadata i32 %55, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !720
  call void @llvm.dbg.value(metadata i32 %56, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !720
  call void @llvm.dbg.value(metadata i32 %57, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !720
  call void @llvm.dbg.value(metadata i8* undef, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !720
  %74 = xor i32 %70, %54, !dbg !722
  %75 = xor i32 %71, %55, !dbg !723
  %76 = xor i32 %72, %56, !dbg !724
  %77 = xor i32 %73, %57, !dbg !725
  call void @llvm.dbg.value(metadata i32 %74, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !726
  call void @llvm.dbg.value(metadata i32 %75, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !726
  call void @llvm.dbg.value(metadata i32 %76, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !726
  call void @llvm.dbg.value(metadata i32 %77, metadata !658, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !726
  call void @llvm.dbg.value(metadata i8* undef, metadata !664, metadata !DIExpression(DW_OP_deref)), !dbg !726
  call void @llvm.dbg.value(metadata i32 7, metadata !663, metadata !DIExpression()), !dbg !726
  %78 = call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 7), !dbg !728
  call void @llvm.dbg.value(metadata i32 %78, metadata !636, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !637
  %79 = call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 7), !dbg !729
  call void @llvm.dbg.value(metadata i32 %79, metadata !636, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !637
  %80 = call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 7), !dbg !730
  call void @llvm.dbg.value(metadata i32 %80, metadata !636, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !637
  %81 = call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 7), !dbg !731
  call void @llvm.dbg.value(metadata i32 %81, metadata !636, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !637
  store i32 %70, i32* %38, align 4, !dbg !732, !tbaa.struct !118
  store i32 %71, i32* %40, align 4, !dbg !732, !tbaa.struct !122
  store i32 %72, i32* %42, align 4, !dbg !732, !tbaa.struct !123
  store i32 %73, i32* %44, align 4, !dbg !732, !tbaa.struct !124
  store i32 %78, i32* %10, align 4, !dbg !733, !tbaa.struct !118
  store i32 %79, i32* %12, align 4, !dbg !733, !tbaa.struct !122
  store i32 %80, i32* %14, align 4, !dbg !733, !tbaa.struct !123
  store i32 %81, i32* %16, align 4, !dbg !733, !tbaa.struct !124
  ret void, !dbg !734
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_sum_states(%struct.vec* nocapture noundef %0, %struct.vec* nocapture noundef readonly %1) unnamed_addr #4 !dbg !735 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !737, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata %struct.vec* %1, metadata !738, metadata !DIExpression()), !dbg !747
  %3 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 0, i32 0, i32 0, !dbg !748
  %4 = load i32, i32* %3, align 4, !dbg !748, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %4, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !747
  %5 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 0, i32 0, i32 1, !dbg !748
  %6 = load i32, i32* %5, align 4, !dbg !748, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %6, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !747
  %7 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 0, i32 0, i32 2, !dbg !748
  %8 = load i32, i32* %7, align 4, !dbg !748, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %8, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !747
  %9 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 0, i32 0, i32 3, !dbg !748
  %10 = load i32, i32* %9, align 4, !dbg !748, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %10, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !747
  %11 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 1, i32 0, i32 0, !dbg !749
  %12 = load i32, i32* %11, align 4, !dbg !749, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %12, metadata !740, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !747
  %13 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 1, i32 0, i32 1, !dbg !749
  %14 = load i32, i32* %13, align 4, !dbg !749, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %14, metadata !740, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !747
  %15 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 1, i32 0, i32 2, !dbg !749
  %16 = load i32, i32* %15, align 4, !dbg !749, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %16, metadata !740, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !747
  %17 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 1, i32 0, i32 3, !dbg !749
  %18 = load i32, i32* %17, align 4, !dbg !749, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %18, metadata !740, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !747
  %19 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 2, i32 0, i32 0, !dbg !750
  %20 = load i32, i32* %19, align 4, !dbg !750, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %20, metadata !741, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !747
  %21 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 2, i32 0, i32 1, !dbg !750
  %22 = load i32, i32* %21, align 4, !dbg !750, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %22, metadata !741, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !747
  %23 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 2, i32 0, i32 2, !dbg !750
  %24 = load i32, i32* %23, align 4, !dbg !750, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %24, metadata !741, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !747
  %25 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 2, i32 0, i32 3, !dbg !750
  %26 = load i32, i32* %25, align 4, !dbg !750, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %26, metadata !741, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !747
  %27 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 3, i32 0, i32 0, !dbg !751
  %28 = load i32, i32* %27, align 4, !dbg !751, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %28, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !747
  %29 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 3, i32 0, i32 1, !dbg !751
  %30 = load i32, i32* %29, align 4, !dbg !751, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %30, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !747
  %31 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 3, i32 0, i32 2, !dbg !751
  %32 = load i32, i32* %31, align 4, !dbg !751, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %32, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !747
  %33 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 3, i32 0, i32 3, !dbg !751
  %34 = load i32, i32* %33, align 4, !dbg !751, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %34, metadata !742, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !747
  %35 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 0, !dbg !752
  %36 = load i32, i32* %35, align 4, !dbg !752, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %36, metadata !743, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !747
  %37 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 1, !dbg !752
  %38 = load i32, i32* %37, align 4, !dbg !752, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %38, metadata !743, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !747
  %39 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 2, !dbg !752
  %40 = load i32, i32* %39, align 4, !dbg !752, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %40, metadata !743, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !747
  %41 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 0, i32 0, i32 3, !dbg !752
  %42 = load i32, i32* %41, align 4, !dbg !752, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %42, metadata !743, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !747
  %43 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 0, !dbg !753
  %44 = load i32, i32* %43, align 4, !dbg !753, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %44, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !747
  %45 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 1, !dbg !753
  %46 = load i32, i32* %45, align 4, !dbg !753, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %46, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !747
  %47 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 2, !dbg !753
  %48 = load i32, i32* %47, align 4, !dbg !753, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %48, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !747
  %49 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 1, i32 0, i32 3, !dbg !753
  %50 = load i32, i32* %49, align 4, !dbg !753, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %50, metadata !744, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !747
  %51 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 0, !dbg !754
  %52 = load i32, i32* %51, align 4, !dbg !754, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %52, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !747
  %53 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 1, !dbg !754
  %54 = load i32, i32* %53, align 4, !dbg !754, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %54, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !747
  %55 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 2, !dbg !754
  %56 = load i32, i32* %55, align 4, !dbg !754, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %56, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !747
  %57 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 2, i32 0, i32 3, !dbg !754
  %58 = load i32, i32* %57, align 4, !dbg !754, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %58, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !747
  %59 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 0, !dbg !755
  %60 = load i32, i32* %59, align 4, !dbg !755, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %60, metadata !746, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !747
  %61 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 1, !dbg !755
  %62 = load i32, i32* %61, align 4, !dbg !755, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %62, metadata !746, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !747
  %63 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 2, !dbg !755
  %64 = load i32, i32* %63, align 4, !dbg !755, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %64, metadata !746, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !747
  %65 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 3, !dbg !755
  %66 = load i32, i32* %65, align 4, !dbg !755, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %66, metadata !746, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !747
  call void @llvm.dbg.value(metadata i32 %4, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !756
  call void @llvm.dbg.value(metadata i32 %6, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !756
  call void @llvm.dbg.value(metadata i32 %8, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !756
  call void @llvm.dbg.value(metadata i32 %10, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !756
  call void @llvm.dbg.value(metadata i32 %36, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !756
  call void @llvm.dbg.value(metadata i32 %38, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !756
  call void @llvm.dbg.value(metadata i32 %40, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !756
  call void @llvm.dbg.value(metadata i32 %42, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !756
  call void @llvm.dbg.value(metadata i8* undef, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !756
  %67 = add i32 %36, %4, !dbg !758
  %68 = add i32 %38, %6, !dbg !759
  %69 = add i32 %40, %8, !dbg !760
  %70 = add i32 %42, %10, !dbg !761
  store i32 %67, i32* %35, align 4, !dbg !762, !tbaa.struct !118
  store i32 %68, i32* %37, align 4, !dbg !762, !tbaa.struct !122
  store i32 %69, i32* %39, align 4, !dbg !762, !tbaa.struct !123
  store i32 %70, i32* %41, align 4, !dbg !762, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %12, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !763
  call void @llvm.dbg.value(metadata i32 %14, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !763
  call void @llvm.dbg.value(metadata i32 %16, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !763
  call void @llvm.dbg.value(metadata i32 %18, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !763
  call void @llvm.dbg.value(metadata i32 %44, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !763
  call void @llvm.dbg.value(metadata i32 %46, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !763
  call void @llvm.dbg.value(metadata i32 %48, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !763
  call void @llvm.dbg.value(metadata i32 %50, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !763
  call void @llvm.dbg.value(metadata i8* undef, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !763
  %71 = add i32 %44, %12, !dbg !765
  %72 = add i32 %46, %14, !dbg !766
  %73 = add i32 %48, %16, !dbg !767
  %74 = add i32 %50, %18, !dbg !768
  store i32 %71, i32* %43, align 4, !dbg !769, !tbaa.struct !118
  store i32 %72, i32* %45, align 4, !dbg !769, !tbaa.struct !122
  store i32 %73, i32* %47, align 4, !dbg !769, !tbaa.struct !123
  store i32 %74, i32* %49, align 4, !dbg !769, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %20, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !770
  call void @llvm.dbg.value(metadata i32 %22, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !770
  call void @llvm.dbg.value(metadata i32 %24, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !770
  call void @llvm.dbg.value(metadata i32 %26, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !770
  call void @llvm.dbg.value(metadata i32 %52, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !770
  call void @llvm.dbg.value(metadata i32 %54, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !770
  call void @llvm.dbg.value(metadata i32 %56, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !770
  call void @llvm.dbg.value(metadata i32 %58, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !770
  call void @llvm.dbg.value(metadata i8* undef, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !770
  %75 = add i32 %52, %20, !dbg !772
  %76 = add i32 %54, %22, !dbg !773
  %77 = add i32 %56, %24, !dbg !774
  %78 = add i32 %58, %26, !dbg !775
  store i32 %75, i32* %51, align 4, !dbg !776, !tbaa.struct !118
  store i32 %76, i32* %53, align 4, !dbg !776, !tbaa.struct !122
  store i32 %77, i32* %55, align 4, !dbg !776, !tbaa.struct !123
  store i32 %78, i32* %57, align 4, !dbg !776, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %28, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !777
  call void @llvm.dbg.value(metadata i32 %30, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !777
  call void @llvm.dbg.value(metadata i32 %32, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !777
  call void @llvm.dbg.value(metadata i32 %34, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !777
  call void @llvm.dbg.value(metadata i32 %60, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !777
  call void @llvm.dbg.value(metadata i32 %62, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !777
  call void @llvm.dbg.value(metadata i32 %64, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !777
  call void @llvm.dbg.value(metadata i32 %66, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !777
  call void @llvm.dbg.value(metadata i8* undef, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !777
  %79 = add i32 %60, %28, !dbg !779
  %80 = add i32 %62, %30, !dbg !780
  %81 = add i32 %64, %32, !dbg !781
  %82 = add i32 %66, %34, !dbg !782
  store i32 %79, i32* %59, align 4, !dbg !783, !tbaa.struct !118
  store i32 %80, i32* %61, align 4, !dbg !783, !tbaa.struct !122
  store i32 %81, i32* %63, align 4, !dbg !783, !tbaa.struct !123
  store i32 %82, i32* %65, align 4, !dbg !783, !tbaa.struct !124
  ret void, !dbg !784
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store32(i8* nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #6 !dbg !785 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !789, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i32 %1, metadata !790, metadata !DIExpression()), !dbg !791
  %3 = bitcast i8* %0 to i32*, !dbg !792
  store i32 %1, i32* %3, align 1, !dbg !792
  ret void, !dbg !793
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_core(%struct.vec* nocapture noundef %0, %struct.vec* nocapture noundef readonly %1) unnamed_addr #0 !dbg !794 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !796, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata %struct.vec* %1, metadata !797, metadata !DIExpression()), !dbg !800
  call fastcc void @Hacl_Impl_Chacha20_Vec128_copy_state(%struct.vec* noundef %0, %struct.vec* noundef %1), !dbg !801
  call void @llvm.dbg.value(metadata i32 0, metadata !798, metadata !DIExpression()), !dbg !802
  br label %4, !dbg !803

3:                                                ; preds = %4
  call fastcc void @Hacl_Impl_Chacha20_Vec128_sum_states(%struct.vec* noundef %0, %struct.vec* noundef %1), !dbg !804
  ret void, !dbg !805

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !798, metadata !DIExpression()), !dbg !802
  call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(%struct.vec* noundef %0), !dbg !806
  %6 = add nuw nsw i32 %5, 1, !dbg !808
  call void @llvm.dbg.value(metadata i32 %6, metadata !798, metadata !DIExpression()), !dbg !802
  %7 = icmp eq i32 %6, 10, !dbg !809
  br i1 %7, label %3, label %4, !dbg !803, !llvm.loop !810
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_incr(%struct.vec* nocapture noundef %0) unnamed_addr #4 !dbg !812 {
  call void @llvm.dbg.value(metadata %struct.vec* %0, metadata !814, metadata !DIExpression()), !dbg !816
  %2 = getelementptr inbounds %struct.vec, %struct.vec* %0, i32 3, i32 0, i32 0, !dbg !817
  %3 = load i32, i32* %2, align 4, !dbg !817, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %3, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !816
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !816
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !816
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !816
  call void @llvm.dbg.value(metadata i32 %3, metadata !818, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !824
  call void @llvm.dbg.value(metadata i32 undef, metadata !818, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !824
  call void @llvm.dbg.value(metadata i32 undef, metadata !818, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !824
  call void @llvm.dbg.value(metadata i32 undef, metadata !818, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !824
  call void @llvm.dbg.value(metadata i32 1, metadata !823, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !824
  call void @llvm.dbg.value(metadata i32 0, metadata !823, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !824
  call void @llvm.dbg.value(metadata i32 0, metadata !823, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !824
  call void @llvm.dbg.value(metadata i32 0, metadata !823, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !824
  call void @llvm.dbg.value(metadata i32 1, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !826
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !826
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !826
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !826
  call void @llvm.dbg.value(metadata i32 %3, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !826
  call void @llvm.dbg.value(metadata i32 undef, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !826
  call void @llvm.dbg.value(metadata i32 undef, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !826
  call void @llvm.dbg.value(metadata i32 undef, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !826
  call void @llvm.dbg.value(metadata i8* undef, metadata !645, metadata !DIExpression(DW_OP_deref)), !dbg !826
  %4 = add i32 %3, 1, !dbg !828
  store i32 %4, i32* %2, align 4, !dbg !829, !tbaa.struct !118
  ret void, !dbg !830
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_block(i8* nocapture noundef writeonly %0, %struct.vec* nocapture noundef readonly %1) unnamed_addr #0 !dbg !831 {
  %3 = alloca [4 x %struct.vec], align 4
  %4 = bitcast [4 x %struct.vec]* %3 to i8*, !dbg !840
  call void @llvm.dbg.value(metadata i8* %0, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata %struct.vec* %1, metadata !836, metadata !DIExpression()), !dbg !840
  %5 = bitcast [4 x %struct.vec]* %3 to i8*, !dbg !841
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #10, !dbg !841
  call void @llvm.dbg.declare(metadata [4 x %struct.vec]* %3, metadata !837, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i32 0, metadata !838, metadata !DIExpression()), !dbg !843
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !dbg !844
  call void @llvm.dbg.value(metadata i32 undef, metadata !838, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 undef, metadata !838, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !843
  %6 = getelementptr inbounds [4 x %struct.vec], [4 x %struct.vec]* %3, i32 0, i32 0, !dbg !846
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_core(%struct.vec* noundef nonnull %6, %struct.vec* noundef %1), !dbg !847
  call fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_to_key_block(i8* noundef %0, %struct.vec* noundef nonnull %6), !dbg !848
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #10, !dbg !849
  ret void, !dbg !849
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_to_key_block(i8* nocapture noundef writeonly %0, %struct.vec* nocapture noundef readonly %1) unnamed_addr #4 !dbg !850 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !852, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata %struct.vec* %1, metadata !853, metadata !DIExpression()), !dbg !862
  %3 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 0, i32 0, i32 0, !dbg !863
  %4 = load i32, i32* %3, align 4, !dbg !863, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %4, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !862
  %5 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 0, i32 0, i32 1, !dbg !863
  %6 = load i32, i32* %5, align 4, !dbg !863, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %6, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !862
  %7 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 0, i32 0, i32 2, !dbg !863
  %8 = load i32, i32* %7, align 4, !dbg !863, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %8, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !862
  %9 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 0, i32 0, i32 3, !dbg !863
  %10 = load i32, i32* %9, align 4, !dbg !863, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %10, metadata !854, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !862
  %11 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 1, i32 0, i32 0, !dbg !864
  %12 = load i32, i32* %11, align 4, !dbg !864, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %12, metadata !855, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !862
  %13 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 1, i32 0, i32 1, !dbg !864
  %14 = load i32, i32* %13, align 4, !dbg !864, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %14, metadata !855, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !862
  %15 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 1, i32 0, i32 2, !dbg !864
  %16 = load i32, i32* %15, align 4, !dbg !864, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %16, metadata !855, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !862
  %17 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 1, i32 0, i32 3, !dbg !864
  %18 = load i32, i32* %17, align 4, !dbg !864, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %18, metadata !855, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !862
  %19 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 2, i32 0, i32 0, !dbg !865
  %20 = load i32, i32* %19, align 4, !dbg !865, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %20, metadata !856, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !862
  %21 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 2, i32 0, i32 1, !dbg !865
  %22 = load i32, i32* %21, align 4, !dbg !865, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %22, metadata !856, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !862
  %23 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 2, i32 0, i32 2, !dbg !865
  %24 = load i32, i32* %23, align 4, !dbg !865, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %24, metadata !856, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !862
  %25 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 2, i32 0, i32 3, !dbg !865
  %26 = load i32, i32* %25, align 4, !dbg !865, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %26, metadata !856, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !862
  %27 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 3, i32 0, i32 0, !dbg !866
  %28 = load i32, i32* %27, align 4, !dbg !866, !tbaa.struct !118
  call void @llvm.dbg.value(metadata i32 %28, metadata !857, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !862
  %29 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 3, i32 0, i32 1, !dbg !866
  %30 = load i32, i32* %29, align 4, !dbg !866, !tbaa.struct !122
  call void @llvm.dbg.value(metadata i32 %30, metadata !857, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !862
  %31 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 3, i32 0, i32 2, !dbg !866
  %32 = load i32, i32* %31, align 4, !dbg !866, !tbaa.struct !123
  call void @llvm.dbg.value(metadata i32 %32, metadata !857, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !862
  %33 = getelementptr inbounds %struct.vec, %struct.vec* %1, i32 3, i32 0, i32 3, !dbg !866
  %34 = load i32, i32* %33, align 4, !dbg !866, !tbaa.struct !124
  call void @llvm.dbg.value(metadata i32 %34, metadata !857, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !862
  call void @llvm.dbg.value(metadata i8* %0, metadata !858, metadata !DIExpression()), !dbg !862
  %35 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !867
  call void @llvm.dbg.value(metadata i8* %35, metadata !859, metadata !DIExpression()), !dbg !862
  %36 = getelementptr inbounds i8, i8* %0, i32 32, !dbg !868
  call void @llvm.dbg.value(metadata i8* %36, metadata !860, metadata !DIExpression()), !dbg !862
  %37 = getelementptr inbounds i8, i8* %0, i32 48, !dbg !869
  call void @llvm.dbg.value(metadata i8* %37, metadata !861, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.value(metadata i32 %4, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !870
  call void @llvm.dbg.value(metadata i32 %6, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !870
  call void @llvm.dbg.value(metadata i32 %8, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !870
  call void @llvm.dbg.value(metadata i32 %10, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !870
  call void @llvm.dbg.value(metadata i8* %0, metadata !499, metadata !DIExpression()) #10, !dbg !870
  call fastcc void @store32(i8* noundef %0, i32 noundef %4) #10, !dbg !872
  %38 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !873
  call fastcc void @store32(i8* noundef nonnull %38, i32 noundef %6) #10, !dbg !873
  %39 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !874
  call fastcc void @store32(i8* noundef nonnull %39, i32 noundef %8) #10, !dbg !874
  %40 = getelementptr inbounds i8, i8* %0, i32 12, !dbg !875
  call fastcc void @store32(i8* noundef nonnull %40, i32 noundef %10) #10, !dbg !875
  call void @llvm.dbg.value(metadata i32 %12, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !876
  call void @llvm.dbg.value(metadata i32 %14, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !876
  call void @llvm.dbg.value(metadata i32 %16, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !876
  call void @llvm.dbg.value(metadata i32 %18, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !876
  call void @llvm.dbg.value(metadata i8* %35, metadata !499, metadata !DIExpression()) #10, !dbg !876
  call fastcc void @store32(i8* noundef nonnull %35, i32 noundef %12) #10, !dbg !878
  %41 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !879
  call fastcc void @store32(i8* noundef nonnull %41, i32 noundef %14) #10, !dbg !879
  %42 = getelementptr inbounds i8, i8* %0, i32 24, !dbg !880
  call fastcc void @store32(i8* noundef nonnull %42, i32 noundef %16) #10, !dbg !880
  %43 = getelementptr inbounds i8, i8* %0, i32 28, !dbg !881
  call fastcc void @store32(i8* noundef nonnull %43, i32 noundef %18) #10, !dbg !881
  call void @llvm.dbg.value(metadata i32 %20, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !882
  call void @llvm.dbg.value(metadata i32 %22, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !882
  call void @llvm.dbg.value(metadata i32 %24, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !882
  call void @llvm.dbg.value(metadata i32 %26, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !882
  call void @llvm.dbg.value(metadata i8* %36, metadata !499, metadata !DIExpression()) #10, !dbg !882
  call fastcc void @store32(i8* noundef nonnull %36, i32 noundef %20) #10, !dbg !884
  %44 = getelementptr inbounds i8, i8* %0, i32 36, !dbg !885
  call fastcc void @store32(i8* noundef nonnull %44, i32 noundef %22) #10, !dbg !885
  %45 = getelementptr inbounds i8, i8* %0, i32 40, !dbg !886
  call fastcc void @store32(i8* noundef nonnull %45, i32 noundef %24) #10, !dbg !886
  %46 = getelementptr inbounds i8, i8* %0, i32 44, !dbg !887
  call fastcc void @store32(i8* noundef nonnull %46, i32 noundef %26) #10, !dbg !887
  call void @llvm.dbg.value(metadata i32 %28, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !888
  call void @llvm.dbg.value(metadata i32 %30, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !888
  call void @llvm.dbg.value(metadata i32 %32, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !888
  call void @llvm.dbg.value(metadata i32 %34, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !888
  call void @llvm.dbg.value(metadata i8* %37, metadata !499, metadata !DIExpression()) #10, !dbg !888
  call fastcc void @store32(i8* noundef nonnull %37, i32 noundef %28) #10, !dbg !890
  %47 = getelementptr inbounds i8, i8* %0, i32 52, !dbg !891
  call fastcc void @store32(i8* noundef nonnull %47, i32 noundef %30) #10, !dbg !891
  %48 = getelementptr inbounds i8, i8* %0, i32 56, !dbg !892
  call fastcc void @store32(i8* noundef nonnull %48, i32 noundef %32) #10, !dbg !892
  %49 = getelementptr inbounds i8, i8* %0, i32 60, !dbg !893
  call fastcc void @store32(i8* noundef nonnull %49, i32 noundef %34) #10, !dbg !893
  ret void, !dbg !894
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Chacha20_Vec128.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "51fb5cb2112720e6dfe789eef5b087de")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !11)
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{i32 1, !"NumRegisterParameters", i32 0}
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!20 = distinct !DISubprogram(name: "Hacl_Chacha20_Vec128_chacha20", scope: !1, file: !1, line: 384, type: !21, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !8, !8, !3, !8, !8, !3}
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DILocalVariable(name: "output", arg: 1, scope: !20, file: !1, line: 385, type: !8)
!25 = !DILocalVariable(name: "plain", arg: 2, scope: !20, file: !1, line: 386, type: !8)
!26 = !DILocalVariable(name: "len", arg: 3, scope: !20, file: !1, line: 387, type: !3)
!27 = !DILocalVariable(name: "k", arg: 4, scope: !20, file: !1, line: 388, type: !8)
!28 = !DILocalVariable(name: "n1", arg: 5, scope: !20, file: !1, line: 389, type: !8)
!29 = !DILocalVariable(name: "ctr", arg: 6, scope: !20, file: !1, line: 390, type: !3)
!30 = !DILocation(line: 0, scope: !20)
!31 = !DILocation(line: 393, column: 3, scope: !20)
!32 = !DILocation(line: 394, column: 1, scope: !20)
!33 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_chacha20", scope: !1, file: !1, line: 365, type: !21, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !51, !53}
!35 = !DILocalVariable(name: "output", arg: 1, scope: !33, file: !1, line: 366, type: !8)
!36 = !DILocalVariable(name: "plain", arg: 2, scope: !33, file: !1, line: 367, type: !8)
!37 = !DILocalVariable(name: "len", arg: 3, scope: !33, file: !1, line: 368, type: !3)
!38 = !DILocalVariable(name: "k", arg: 4, scope: !33, file: !1, line: 369, type: !8)
!39 = !DILocalVariable(name: "n1", arg: 5, scope: !33, file: !1, line: 370, type: !8)
!40 = !DILocalVariable(name: "ctr", arg: 6, scope: !33, file: !1, line: 371, type: !3)
!41 = !DILocalVariable(name: "buf", scope: !33, file: !1, line: 375, type: !42)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !49)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "vec", file: !44, line: 184, baseType: !45)
!44 = !DIFile(filename: "hacl-c/hacl-c/vec128.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "578bd5280e4e9469e7c4a9c26f12c01b")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 182, size: 128, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !45, file: !44, line: 183, baseType: !48, size: 128)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 128, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 4)
!51 = !DILocalVariable(name: "_i", scope: !52, file: !1, line: 376, type: !3)
!52 = distinct !DILexicalBlock(scope: !33, file: !1, line: 376, column: 3)
!53 = !DILocalVariable(name: "st", scope: !33, file: !1, line: 378, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!55 = !DILocation(line: 0, scope: !33)
!56 = !DILocation(line: 375, column: 3, scope: !33)
!57 = !DILocation(line: 375, column: 7, scope: !33)
!58 = !DILocation(line: 0, scope: !52)
!59 = !DILocation(line: 377, column: 15, scope: !60)
!60 = distinct !DILexicalBlock(scope: !52, file: !1, line: 376, column: 3)
!61 = !DILocation(line: 378, column: 13, scope: !33)
!62 = !DILocation(line: 379, column: 3, scope: !33)
!63 = !DILocation(line: 380, column: 3, scope: !33)
!64 = !DILocation(line: 381, column: 1, scope: !33)
!65 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_init", scope: !1, file: !1, line: 206, type: !66, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !54, !8, !8, !3}
!68 = !{!69, !70, !71, !72}
!69 = !DILocalVariable(name: "st", arg: 1, scope: !65, file: !1, line: 206, type: !54)
!70 = !DILocalVariable(name: "k", arg: 2, scope: !65, file: !1, line: 206, type: !8)
!71 = !DILocalVariable(name: "n1", arg: 3, scope: !65, file: !1, line: 206, type: !8)
!72 = !DILocalVariable(name: "ctr", arg: 4, scope: !65, file: !1, line: 206, type: !3)
!73 = !DILocation(line: 0, scope: !65)
!74 = !DILocation(line: 208, column: 3, scope: !65)
!75 = !DILocation(line: 209, column: 1, scope: !65)
!76 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode", scope: !1, file: !1, line: 346, type: !77, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !8, !8, !3, !54}
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!80 = !DILocalVariable(name: "output", arg: 1, scope: !76, file: !1, line: 347, type: !8)
!81 = !DILocalVariable(name: "plain", arg: 2, scope: !76, file: !1, line: 348, type: !8)
!82 = !DILocalVariable(name: "len", arg: 3, scope: !76, file: !1, line: 349, type: !3)
!83 = !DILocalVariable(name: "st", arg: 4, scope: !76, file: !1, line: 350, type: !54)
!84 = !DILocalVariable(name: "blocks_len", scope: !76, file: !1, line: 353, type: !3)
!85 = !DILocalVariable(name: "part_len", scope: !76, file: !1, line: 354, type: !3)
!86 = !DILocalVariable(name: "output_", scope: !76, file: !1, line: 355, type: !8)
!87 = !DILocalVariable(name: "plain_", scope: !76, file: !1, line: 356, type: !8)
!88 = !DILocalVariable(name: "output__", scope: !76, file: !1, line: 357, type: !8)
!89 = !DILocalVariable(name: "plain__", scope: !76, file: !1, line: 358, type: !8)
!90 = !DILocation(line: 0, scope: !76)
!91 = !DILocation(line: 353, column: 29, scope: !76)
!92 = !DILocation(line: 354, column: 27, scope: !76)
!93 = !DILocation(line: 357, column: 46, scope: !76)
!94 = !DILocation(line: 359, column: 3, scope: !76)
!95 = !DILocation(line: 360, column: 16, scope: !96)
!96 = distinct !DILexicalBlock(scope: !76, file: !1, line: 360, column: 7)
!97 = !DILocation(line: 360, column: 7, scope: !76)
!98 = !DILocation(line: 358, column: 28, scope: !76)
!99 = !DILocation(line: 357, column: 30, scope: !76)
!100 = !DILocation(line: 361, column: 5, scope: !96)
!101 = !DILocation(line: 362, column: 1, scope: !76)
!102 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_State_state_setup", scope: !1, file: !1, line: 51, type: !66, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!104 = !DILocalVariable(name: "st", arg: 1, scope: !102, file: !1, line: 51, type: !54)
!105 = !DILocalVariable(name: "k", arg: 2, scope: !102, file: !1, line: 51, type: !8)
!106 = !DILocalVariable(name: "n1", arg: 3, scope: !102, file: !1, line: 51, type: !8)
!107 = !DILocalVariable(name: "c", arg: 4, scope: !102, file: !1, line: 51, type: !3)
!108 = !DILocalVariable(name: "k0", scope: !102, file: !1, line: 58, type: !43)
!109 = !DILocalVariable(name: "k1", scope: !102, file: !1, line: 59, type: !43)
!110 = !DILocalVariable(name: "n0", scope: !102, file: !1, line: 62, type: !3)
!111 = !DILocalVariable(name: "x00", scope: !102, file: !1, line: 63, type: !8)
!112 = !DILocalVariable(name: "n10", scope: !102, file: !1, line: 64, type: !3)
!113 = !DILocalVariable(name: "x0", scope: !102, file: !1, line: 65, type: !8)
!114 = !DILocalVariable(name: "n2", scope: !102, file: !1, line: 66, type: !3)
!115 = !DILocalVariable(name: "v1", scope: !102, file: !1, line: 67, type: !43)
!116 = !DILocation(line: 0, scope: !102)
!117 = !DILocation(line: 54, column: 5, scope: !102)
!118 = !{i64 0, i64 16, !119}
!119 = !{!120, !120, i64 0}
!120 = !{!"omnipotent char", !121, i64 0}
!121 = !{!"Simple C/C++ TBAA"}
!122 = !{i64 0, i64 12, !119}
!123 = !{i64 0, i64 8, !119}
!124 = !{i64 0, i64 4, !119}
!125 = !DILocalVariable(name: "in", arg: 1, scope: !126, file: !44, line: 258, type: !129)
!126 = distinct !DISubprogram(name: "vec_load128_le", scope: !44, file: !44, line: 258, type: !127, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!127 = !DISubroutineType(types: !128)
!128 = !{!43, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!131 = !{!125}
!132 = !DILocation(line: 0, scope: !126, inlinedAt: !133)
!133 = distinct !DILocation(line: 58, column: 12, scope: !102)
!134 = !DILocalVariable(name: "r", scope: !135, file: !44, line: 243, type: !43)
!135 = distinct !DISubprogram(name: "vec_load_le", scope: !44, file: !44, line: 242, type: !136, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !140)
!136 = !DISubroutineType(types: !137)
!137 = !{!43, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!140 = !{!141, !134}
!141 = !DILocalVariable(name: "in", arg: 1, scope: !135, file: !44, line: 242, type: !138)
!142 = !DILocation(line: 0, scope: !135, inlinedAt: !143)
!143 = distinct !DILocation(line: 259, column: 10, scope: !126, inlinedAt: !133)
!144 = !DILocation(line: 244, column: 12, scope: !135, inlinedAt: !143)
!145 = !{!146, !148}
!146 = distinct !{!146, !147, !"vec_load_le: argument 0"}
!147 = distinct !{!147, !"vec_load_le"}
!148 = distinct !{!148, !149, !"vec_load128_le: argument 0"}
!149 = distinct !{!149, !"vec_load128_le"}
!150 = !DILocation(line: 245, column: 12, scope: !135, inlinedAt: !143)
!151 = !DILocation(line: 246, column: 12, scope: !135, inlinedAt: !143)
!152 = !DILocation(line: 247, column: 12, scope: !135, inlinedAt: !143)
!153 = !DILocation(line: 59, column: 29, scope: !102)
!154 = !DILocation(line: 0, scope: !126, inlinedAt: !155)
!155 = distinct !DILocation(line: 59, column: 12, scope: !102)
!156 = !DILocation(line: 0, scope: !135, inlinedAt: !157)
!157 = distinct !DILocation(line: 259, column: 10, scope: !126, inlinedAt: !155)
!158 = !DILocation(line: 244, column: 12, scope: !135, inlinedAt: !157)
!159 = !{!160, !162}
!160 = distinct !{!160, !161, !"vec_load_le: argument 0"}
!161 = distinct !{!161, !"vec_load_le"}
!162 = distinct !{!162, !163, !"vec_load128_le: argument 0"}
!163 = distinct !{!163, !"vec_load128_le"}
!164 = !DILocation(line: 245, column: 12, scope: !135, inlinedAt: !157)
!165 = !DILocation(line: 246, column: 12, scope: !135, inlinedAt: !157)
!166 = !DILocation(line: 247, column: 12, scope: !135, inlinedAt: !157)
!167 = !DILocation(line: 60, column: 12, scope: !102)
!168 = !DILocation(line: 61, column: 12, scope: !102)
!169 = !DILocation(line: 62, column: 17, scope: !102)
!170 = !DILocation(line: 63, column: 21, scope: !102)
!171 = !DILocation(line: 64, column: 18, scope: !102)
!172 = !DILocation(line: 65, column: 20, scope: !102)
!173 = !DILocation(line: 66, column: 17, scope: !102)
!174 = !DILocation(line: 68, column: 12, scope: !102)
!175 = !DILocation(line: 69, column: 1, scope: !102)
!176 = distinct !DISubprogram(name: "load32", scope: !177, file: !177, line: 341, type: !178, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !179)
!177 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!178 = !DISubroutineType(types: !2)
!179 = !{!180, !181}
!180 = !DILocalVariable(name: "b", arg: 1, scope: !176, file: !177, line: 341, type: !8)
!181 = !DILocalVariable(name: "x", scope: !176, file: !177, line: 342, type: !3)
!182 = !DILocation(line: 0, scope: !176)
!183 = !DILocation(line: 343, column: 3, scope: !176)
!184 = !DILocation(line: 344, column: 3, scope: !176)
!185 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks", scope: !1, file: !1, line: 313, type: !77, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !200, !201, !202}
!187 = !DILocalVariable(name: "output", arg: 1, scope: !185, file: !1, line: 314, type: !8)
!188 = !DILocalVariable(name: "plain", arg: 2, scope: !185, file: !1, line: 315, type: !8)
!189 = !DILocalVariable(name: "len", arg: 3, scope: !185, file: !1, line: 316, type: !3)
!190 = !DILocalVariable(name: "st", arg: 4, scope: !185, file: !1, line: 317, type: !54)
!191 = !DILocalVariable(name: "len3", scope: !185, file: !1, line: 320, type: !3)
!192 = !DILocalVariable(name: "rest3", scope: !185, file: !1, line: 321, type: !3)
!193 = !DILocalVariable(name: "plain_", scope: !185, file: !1, line: 322, type: !8)
!194 = !DILocalVariable(name: "blocks1", scope: !185, file: !1, line: 323, type: !8)
!195 = !DILocalVariable(name: "output_", scope: !185, file: !1, line: 324, type: !8)
!196 = !DILocalVariable(name: "outs", scope: !185, file: !1, line: 325, type: !8)
!197 = !DILocalVariable(name: "block0", scope: !198, file: !1, line: 329, type: !8)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 328, column: 3)
!199 = distinct !DILexicalBlock(scope: !185, file: !1, line: 327, column: 7)
!200 = !DILocalVariable(name: "block1", scope: !198, file: !1, line: 330, type: !8)
!201 = !DILocalVariable(name: "out0", scope: !198, file: !1, line: 331, type: !8)
!202 = !DILocalVariable(name: "out1", scope: !198, file: !1, line: 332, type: !8)
!203 = !DILocation(line: 0, scope: !185)
!204 = !DILocation(line: 320, column: 23, scope: !185)
!205 = !DILocation(line: 321, column: 24, scope: !185)
!206 = !DILocation(line: 323, column: 45, scope: !185)
!207 = !DILocation(line: 323, column: 28, scope: !185)
!208 = !DILocation(line: 325, column: 26, scope: !185)
!209 = !DILocation(line: 326, column: 3, scope: !185)
!210 = !DILocation(line: 327, column: 7, scope: !185)
!211 = !DILocation(line: 0, scope: !198)
!212 = !DILocation(line: 330, column: 31, scope: !198)
!213 = !DILocation(line: 332, column: 26, scope: !198)
!214 = !DILocation(line: 333, column: 5, scope: !198)
!215 = !DILocation(line: 334, column: 5, scope: !198)
!216 = !DILocation(line: 335, column: 5, scope: !198)
!217 = !DILocation(line: 337, column: 3, scope: !198)
!218 = !DILocation(line: 340, column: 5, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 339, column: 3)
!220 = distinct !DILexicalBlock(scope: !199, file: !1, line: 338, column: 12)
!221 = !DILocation(line: 342, column: 3, scope: !219)
!222 = !DILocation(line: 0, scope: !199)
!223 = !DILocation(line: 343, column: 1, scope: !185)
!224 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_update_last", scope: !1, file: !1, line: 212, type: !77, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!225 = !{!226, !227, !228, !229, !230, !234, !235, !237, !240}
!226 = !DILocalVariable(name: "output", arg: 1, scope: !224, file: !1, line: 212, type: !8)
!227 = !DILocalVariable(name: "plain", arg: 2, scope: !224, file: !1, line: 212, type: !8)
!228 = !DILocalVariable(name: "len", arg: 3, scope: !224, file: !1, line: 212, type: !3)
!229 = !DILocalVariable(name: "st", arg: 4, scope: !224, file: !1, line: 212, type: !54)
!230 = !DILocalVariable(name: "block", scope: !224, file: !1, line: 214, type: !231)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 512, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 64)
!234 = !DILocalVariable(name: "mask", scope: !224, file: !1, line: 216, type: !8)
!235 = !DILocalVariable(name: "i", scope: !236, file: !1, line: 217, type: !3)
!236 = distinct !DILexicalBlock(scope: !224, file: !1, line: 217, column: 3)
!237 = !DILocalVariable(name: "xi", scope: !238, file: !1, line: 219, type: !9)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 218, column: 3)
!239 = distinct !DILexicalBlock(scope: !236, file: !1, line: 217, column: 3)
!240 = !DILocalVariable(name: "yi", scope: !238, file: !1, line: 220, type: !9)
!241 = !DILocation(line: 0, scope: !224)
!242 = !DILocation(line: 214, column: 3, scope: !224)
!243 = !DILocation(line: 214, column: 11, scope: !224)
!244 = !DILocation(line: 215, column: 3, scope: !224)
!245 = !DILocation(line: 0, scope: !236)
!246 = !DILocation(line: 217, column: 37, scope: !239)
!247 = !DILocation(line: 217, column: 3, scope: !236)
!248 = !DILocation(line: 223, column: 1, scope: !224)
!249 = !DILocation(line: 219, column: 18, scope: !238)
!250 = !DILocation(line: 0, scope: !238)
!251 = !DILocation(line: 220, column: 18, scope: !238)
!252 = !DILocation(line: 221, column: 20, scope: !238)
!253 = !DILocation(line: 221, column: 5, scope: !238)
!254 = !DILocation(line: 221, column: 15, scope: !238)
!255 = !DILocation(line: 217, column: 50, scope: !239)
!256 = distinct !{!256, !247, !257, !258, !259}
!257 = !DILocation(line: 222, column: 3, scope: !236)
!258 = !{!"llvm.loop.mustprogress"}
!259 = !{!"llvm.loop.unroll.disable"}
!260 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks3", scope: !1, file: !1, line: 301, type: !77, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !261)
!261 = !{!262, !263, !264, !265, !266}
!262 = !DILocalVariable(name: "output", arg: 1, scope: !260, file: !1, line: 302, type: !8)
!263 = !DILocalVariable(name: "plain", arg: 2, scope: !260, file: !1, line: 303, type: !8)
!264 = !DILocalVariable(name: "len", arg: 3, scope: !260, file: !1, line: 304, type: !3)
!265 = !DILocalVariable(name: "st", arg: 4, scope: !260, file: !1, line: 305, type: !54)
!266 = !DILocalVariable(name: "i", scope: !267, file: !1, line: 308, type: !3)
!267 = distinct !DILexicalBlock(scope: !260, file: !1, line: 308, column: 3)
!268 = !DILocation(line: 0, scope: !260)
!269 = !DILocation(line: 0, scope: !267)
!270 = !DILocation(line: 308, column: 37, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !1, line: 308, column: 3)
!272 = !DILocation(line: 308, column: 3, scope: !267)
!273 = !DILocation(line: 310, column: 1, scope: !260)
!274 = !DILocation(line: 309, column: 5, scope: !271)
!275 = !DILocation(line: 308, column: 50, scope: !271)
!276 = distinct !{!276, !272, !277, !258, !259}
!277 = !DILocation(line: 309, column: 65, scope: !267)
!278 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_update", scope: !1, file: !1, line: 249, type: !279, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !8, !8, !54}
!281 = !{!282, !283, !284, !285, !286}
!282 = !DILocalVariable(name: "output", arg: 1, scope: !278, file: !1, line: 249, type: !8)
!283 = !DILocalVariable(name: "plain", arg: 2, scope: !278, file: !1, line: 249, type: !8)
!284 = !DILocalVariable(name: "st", arg: 3, scope: !278, file: !1, line: 249, type: !54)
!285 = !DILocalVariable(name: "k", scope: !278, file: !1, line: 252, type: !42)
!286 = !DILocalVariable(name: "_i", scope: !287, file: !1, line: 253, type: !3)
!287 = distinct !DILexicalBlock(scope: !278, file: !1, line: 253, column: 3)
!288 = !DILocation(line: 0, scope: !278)
!289 = !DILocation(line: 252, column: 3, scope: !278)
!290 = !DILocation(line: 252, column: 7, scope: !278)
!291 = !DILocation(line: 0, scope: !287)
!292 = !DILocation(line: 254, column: 13, scope: !293)
!293 = distinct !DILexicalBlock(scope: !287, file: !1, line: 253, column: 3)
!294 = !DILocation(line: 255, column: 43, scope: !278)
!295 = !DILocation(line: 255, column: 3, scope: !278)
!296 = !DILocation(line: 256, column: 3, scope: !278)
!297 = !DILocation(line: 257, column: 1, scope: !278)
!298 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_state_incr", scope: !1, file: !1, line: 164, type: !299, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !54}
!301 = !{!302}
!302 = !DILocalVariable(name: "st", arg: 1, scope: !298, file: !1, line: 164, type: !54)
!303 = !DILocation(line: 0, scope: !298)
!304 = !DILocation(line: 166, column: 3, scope: !298)
!305 = !DILocation(line: 167, column: 1, scope: !298)
!306 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_update3_", scope: !1, file: !1, line: 286, type: !307, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !8, !8, !3, !54, !3}
!309 = !{!310, !311, !312, !313, !314, !315, !316}
!310 = !DILocalVariable(name: "output", arg: 1, scope: !306, file: !1, line: 287, type: !8)
!311 = !DILocalVariable(name: "plain", arg: 2, scope: !306, file: !1, line: 288, type: !8)
!312 = !DILocalVariable(name: "len", arg: 3, scope: !306, file: !1, line: 289, type: !3)
!313 = !DILocalVariable(name: "st", arg: 4, scope: !306, file: !1, line: 290, type: !54)
!314 = !DILocalVariable(name: "i", arg: 5, scope: !306, file: !1, line: 291, type: !3)
!315 = !DILocalVariable(name: "out_block", scope: !306, file: !1, line: 294, type: !8)
!316 = !DILocalVariable(name: "plain_block", scope: !306, file: !1, line: 295, type: !8)
!317 = !DILocation(line: 0, scope: !306)
!318 = !DILocation(line: 294, column: 48, scope: !306)
!319 = !DILocation(line: 294, column: 31, scope: !306)
!320 = !DILocation(line: 295, column: 32, scope: !306)
!321 = !DILocation(line: 296, column: 3, scope: !306)
!322 = !DILocation(line: 297, column: 3, scope: !306)
!323 = !DILocation(line: 298, column: 1, scope: !306)
!324 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_update3", scope: !1, file: !1, line: 259, type: !279, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !325)
!325 = !{!326, !327, !328, !329, !330, !332, !333, !335, !336, !338, !339, !340, !341, !342, !343}
!326 = !DILocalVariable(name: "output", arg: 1, scope: !324, file: !1, line: 259, type: !8)
!327 = !DILocalVariable(name: "plain", arg: 2, scope: !324, file: !1, line: 259, type: !8)
!328 = !DILocalVariable(name: "st", arg: 3, scope: !324, file: !1, line: 259, type: !54)
!329 = !DILocalVariable(name: "k0", scope: !324, file: !1, line: 262, type: !42)
!330 = !DILocalVariable(name: "_i", scope: !331, file: !1, line: 263, type: !3)
!331 = distinct !DILexicalBlock(scope: !324, file: !1, line: 263, column: 3)
!332 = !DILocalVariable(name: "k1", scope: !324, file: !1, line: 266, type: !42)
!333 = !DILocalVariable(name: "_i", scope: !334, file: !1, line: 267, type: !3)
!334 = distinct !DILexicalBlock(scope: !324, file: !1, line: 267, column: 3)
!335 = !DILocalVariable(name: "k2", scope: !324, file: !1, line: 270, type: !42)
!336 = !DILocalVariable(name: "_i", scope: !337, file: !1, line: 271, type: !3)
!337 = distinct !DILexicalBlock(scope: !324, file: !1, line: 271, column: 3)
!338 = !DILocalVariable(name: "p0", scope: !324, file: !1, line: 274, type: !8)
!339 = !DILocalVariable(name: "p1", scope: !324, file: !1, line: 275, type: !8)
!340 = !DILocalVariable(name: "p2", scope: !324, file: !1, line: 276, type: !8)
!341 = !DILocalVariable(name: "o0", scope: !324, file: !1, line: 277, type: !8)
!342 = !DILocalVariable(name: "o1", scope: !324, file: !1, line: 278, type: !8)
!343 = !DILocalVariable(name: "o2", scope: !324, file: !1, line: 279, type: !8)
!344 = !DILocation(line: 0, scope: !324)
!345 = !DILocation(line: 262, column: 3, scope: !324)
!346 = !DILocation(line: 262, column: 7, scope: !324)
!347 = !DILocation(line: 0, scope: !331)
!348 = !DILocation(line: 264, column: 14, scope: !349)
!349 = distinct !DILexicalBlock(scope: !331, file: !1, line: 263, column: 3)
!350 = !DILocation(line: 266, column: 3, scope: !324)
!351 = !DILocation(line: 266, column: 7, scope: !324)
!352 = !DILocation(line: 0, scope: !334)
!353 = !DILocation(line: 268, column: 14, scope: !354)
!354 = distinct !DILexicalBlock(scope: !334, file: !1, line: 267, column: 3)
!355 = !DILocation(line: 270, column: 3, scope: !324)
!356 = !DILocation(line: 270, column: 7, scope: !324)
!357 = !DILocation(line: 0, scope: !337)
!358 = !DILocation(line: 272, column: 14, scope: !359)
!359 = distinct !DILexicalBlock(scope: !337, file: !1, line: 271, column: 3)
!360 = !DILocation(line: 273, column: 44, scope: !324)
!361 = !DILocation(line: 273, column: 48, scope: !324)
!362 = !DILocation(line: 273, column: 52, scope: !324)
!363 = !DILocation(line: 273, column: 3, scope: !324)
!364 = !DILocation(line: 275, column: 23, scope: !324)
!365 = !DILocation(line: 276, column: 23, scope: !324)
!366 = !DILocation(line: 278, column: 24, scope: !324)
!367 = !DILocation(line: 279, column: 24, scope: !324)
!368 = !DILocation(line: 280, column: 3, scope: !324)
!369 = !DILocation(line: 281, column: 3, scope: !324)
!370 = !DILocation(line: 282, column: 3, scope: !324)
!371 = !DILocation(line: 283, column: 1, scope: !324)
!372 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_chacha20_core3", scope: !1, file: !1, line: 187, type: !373, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !54, !54, !54, !54}
!375 = !{!376, !377, !378, !379, !380}
!376 = !DILocalVariable(name: "k0", arg: 1, scope: !372, file: !1, line: 187, type: !54)
!377 = !DILocalVariable(name: "k1", arg: 2, scope: !372, file: !1, line: 187, type: !54)
!378 = !DILocalVariable(name: "k2", arg: 3, scope: !372, file: !1, line: 187, type: !54)
!379 = !DILocalVariable(name: "st", arg: 4, scope: !372, file: !1, line: 187, type: !54)
!380 = !DILocalVariable(name: "i", scope: !381, file: !1, line: 190, type: !3)
!381 = distinct !DILexicalBlock(scope: !372, file: !1, line: 190, column: 3)
!382 = !DILocation(line: 0, scope: !372)
!383 = !DILocation(line: 189, column: 3, scope: !372)
!384 = !DILocation(line: 0, scope: !381)
!385 = !DILocation(line: 190, column: 3, scope: !381)
!386 = !DILocation(line: 192, column: 3, scope: !372)
!387 = !DILocation(line: 193, column: 1, scope: !372)
!388 = !DILocation(line: 191, column: 5, scope: !389)
!389 = distinct !DILexicalBlock(scope: !381, file: !1, line: 190, column: 3)
!390 = !DILocation(line: 190, column: 60, scope: !389)
!391 = !DILocation(line: 190, column: 37, scope: !389)
!392 = distinct !{!392, !385, !393, !258, !259}
!393 = !DILocation(line: 191, column: 55, scope: !381)
!394 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_xor_block", scope: !1, file: !1, line: 225, type: !279, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!396 = !DILocalVariable(name: "output", arg: 1, scope: !394, file: !1, line: 225, type: !8)
!397 = !DILocalVariable(name: "plain", arg: 2, scope: !394, file: !1, line: 225, type: !8)
!398 = !DILocalVariable(name: "st", arg: 3, scope: !394, file: !1, line: 225, type: !54)
!399 = !DILocalVariable(name: "p0", scope: !394, file: !1, line: 227, type: !43)
!400 = !DILocalVariable(name: "p1", scope: !394, file: !1, line: 228, type: !43)
!401 = !DILocalVariable(name: "p2", scope: !394, file: !1, line: 229, type: !43)
!402 = !DILocalVariable(name: "p3", scope: !394, file: !1, line: 230, type: !43)
!403 = !DILocalVariable(name: "k0", scope: !394, file: !1, line: 231, type: !43)
!404 = !DILocalVariable(name: "k1", scope: !394, file: !1, line: 232, type: !43)
!405 = !DILocalVariable(name: "k2", scope: !394, file: !1, line: 233, type: !43)
!406 = !DILocalVariable(name: "k3", scope: !394, file: !1, line: 234, type: !43)
!407 = !DILocalVariable(name: "o00", scope: !394, file: !1, line: 235, type: !43)
!408 = !DILocalVariable(name: "o10", scope: !394, file: !1, line: 236, type: !43)
!409 = !DILocalVariable(name: "o20", scope: !394, file: !1, line: 237, type: !43)
!410 = !DILocalVariable(name: "o30", scope: !394, file: !1, line: 238, type: !43)
!411 = !DILocalVariable(name: "o0", scope: !394, file: !1, line: 239, type: !8)
!412 = !DILocalVariable(name: "o1", scope: !394, file: !1, line: 240, type: !8)
!413 = !DILocalVariable(name: "o2", scope: !394, file: !1, line: 241, type: !8)
!414 = !DILocalVariable(name: "o3", scope: !394, file: !1, line: 242, type: !8)
!415 = !DILocation(line: 0, scope: !394)
!416 = !DILocation(line: 0, scope: !135, inlinedAt: !417)
!417 = distinct !DILocation(line: 227, column: 12, scope: !394)
!418 = !DILocation(line: 244, column: 12, scope: !135, inlinedAt: !417)
!419 = !{!420}
!420 = distinct !{!420, !421, !"vec_load_le: argument 0"}
!421 = distinct !{!421, !"vec_load_le"}
!422 = !DILocation(line: 245, column: 12, scope: !135, inlinedAt: !417)
!423 = !DILocation(line: 246, column: 12, scope: !135, inlinedAt: !417)
!424 = !DILocation(line: 247, column: 12, scope: !135, inlinedAt: !417)
!425 = !DILocation(line: 228, column: 30, scope: !394)
!426 = !DILocation(line: 0, scope: !135, inlinedAt: !427)
!427 = distinct !DILocation(line: 228, column: 12, scope: !394)
!428 = !DILocation(line: 244, column: 12, scope: !135, inlinedAt: !427)
!429 = !{!430}
!430 = distinct !{!430, !431, !"vec_load_le: argument 0"}
!431 = distinct !{!431, !"vec_load_le"}
!432 = !DILocation(line: 245, column: 12, scope: !135, inlinedAt: !427)
!433 = !DILocation(line: 246, column: 12, scope: !135, inlinedAt: !427)
!434 = !DILocation(line: 247, column: 12, scope: !135, inlinedAt: !427)
!435 = !DILocation(line: 229, column: 30, scope: !394)
!436 = !DILocation(line: 0, scope: !135, inlinedAt: !437)
!437 = distinct !DILocation(line: 229, column: 12, scope: !394)
!438 = !DILocation(line: 244, column: 12, scope: !135, inlinedAt: !437)
!439 = !{!440}
!440 = distinct !{!440, !441, !"vec_load_le: argument 0"}
!441 = distinct !{!441, !"vec_load_le"}
!442 = !DILocation(line: 245, column: 12, scope: !135, inlinedAt: !437)
!443 = !DILocation(line: 246, column: 12, scope: !135, inlinedAt: !437)
!444 = !DILocation(line: 247, column: 12, scope: !135, inlinedAt: !437)
!445 = !DILocation(line: 230, column: 30, scope: !394)
!446 = !DILocation(line: 0, scope: !135, inlinedAt: !447)
!447 = distinct !DILocation(line: 230, column: 12, scope: !394)
!448 = !DILocation(line: 244, column: 12, scope: !135, inlinedAt: !447)
!449 = !{!450}
!450 = distinct !{!450, !451, !"vec_load_le: argument 0"}
!451 = distinct !{!451, !"vec_load_le"}
!452 = !DILocation(line: 245, column: 12, scope: !135, inlinedAt: !447)
!453 = !DILocation(line: 246, column: 12, scope: !135, inlinedAt: !447)
!454 = !DILocation(line: 247, column: 12, scope: !135, inlinedAt: !447)
!455 = !DILocation(line: 231, column: 12, scope: !394)
!456 = !DILocation(line: 232, column: 12, scope: !394)
!457 = !DILocation(line: 233, column: 12, scope: !394)
!458 = !DILocation(line: 234, column: 12, scope: !394)
!459 = !DILocalVariable(name: "v2", arg: 2, scope: !460, file: !44, line: 186, type: !43)
!460 = distinct !DISubprogram(name: "vec_xor", scope: !44, file: !44, line: 186, type: !461, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!43, !43, !43}
!463 = !{!464, !459, !465}
!464 = !DILocalVariable(name: "v1", arg: 1, scope: !460, file: !44, line: 186, type: !43)
!465 = !DILocalVariable(name: "r", scope: !460, file: !44, line: 187, type: !43)
!466 = !DILocation(line: 0, scope: !460, inlinedAt: !467)
!467 = distinct !DILocation(line: 235, column: 13, scope: !394)
!468 = !DILocation(line: 188, column: 20, scope: !460, inlinedAt: !467)
!469 = !DILocation(line: 189, column: 20, scope: !460, inlinedAt: !467)
!470 = !DILocation(line: 190, column: 20, scope: !460, inlinedAt: !467)
!471 = !DILocation(line: 191, column: 20, scope: !460, inlinedAt: !467)
!472 = !DILocation(line: 0, scope: !460, inlinedAt: !473)
!473 = distinct !DILocation(line: 236, column: 13, scope: !394)
!474 = !DILocation(line: 188, column: 20, scope: !460, inlinedAt: !473)
!475 = !DILocation(line: 189, column: 20, scope: !460, inlinedAt: !473)
!476 = !DILocation(line: 190, column: 20, scope: !460, inlinedAt: !473)
!477 = !DILocation(line: 191, column: 20, scope: !460, inlinedAt: !473)
!478 = !DILocation(line: 0, scope: !460, inlinedAt: !479)
!479 = distinct !DILocation(line: 237, column: 13, scope: !394)
!480 = !DILocation(line: 188, column: 20, scope: !460, inlinedAt: !479)
!481 = !DILocation(line: 189, column: 20, scope: !460, inlinedAt: !479)
!482 = !DILocation(line: 190, column: 20, scope: !460, inlinedAt: !479)
!483 = !DILocation(line: 191, column: 20, scope: !460, inlinedAt: !479)
!484 = !DILocation(line: 0, scope: !460, inlinedAt: !485)
!485 = distinct !DILocation(line: 238, column: 13, scope: !394)
!486 = !DILocation(line: 188, column: 20, scope: !460, inlinedAt: !485)
!487 = !DILocation(line: 189, column: 20, scope: !460, inlinedAt: !485)
!488 = !DILocation(line: 190, column: 20, scope: !460, inlinedAt: !485)
!489 = !DILocation(line: 191, column: 20, scope: !460, inlinedAt: !485)
!490 = !DILocation(line: 240, column: 24, scope: !394)
!491 = !DILocation(line: 241, column: 24, scope: !394)
!492 = !DILocation(line: 242, column: 24, scope: !394)
!493 = !DILocalVariable(name: "r", arg: 2, scope: !494, file: !44, line: 251, type: !43)
!494 = distinct !DISubprogram(name: "vec_store_le", scope: !44, file: !44, line: 251, type: !495, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !497, !43}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!498 = !{!499, !493}
!499 = !DILocalVariable(name: "out", arg: 1, scope: !494, file: !44, line: 251, type: !497)
!500 = !DILocation(line: 0, scope: !494, inlinedAt: !501)
!501 = distinct !DILocation(line: 243, column: 3, scope: !394)
!502 = !DILocation(line: 252, column: 3, scope: !494, inlinedAt: !501)
!503 = !DILocation(line: 253, column: 3, scope: !494, inlinedAt: !501)
!504 = !DILocation(line: 254, column: 3, scope: !494, inlinedAt: !501)
!505 = !DILocation(line: 255, column: 3, scope: !494, inlinedAt: !501)
!506 = !DILocation(line: 0, scope: !494, inlinedAt: !507)
!507 = distinct !DILocation(line: 244, column: 3, scope: !394)
!508 = !DILocation(line: 252, column: 3, scope: !494, inlinedAt: !507)
!509 = !DILocation(line: 253, column: 3, scope: !494, inlinedAt: !507)
!510 = !DILocation(line: 254, column: 3, scope: !494, inlinedAt: !507)
!511 = !DILocation(line: 255, column: 3, scope: !494, inlinedAt: !507)
!512 = !DILocation(line: 0, scope: !494, inlinedAt: !513)
!513 = distinct !DILocation(line: 245, column: 3, scope: !394)
!514 = !DILocation(line: 252, column: 3, scope: !494, inlinedAt: !513)
!515 = !DILocation(line: 253, column: 3, scope: !494, inlinedAt: !513)
!516 = !DILocation(line: 254, column: 3, scope: !494, inlinedAt: !513)
!517 = !DILocation(line: 255, column: 3, scope: !494, inlinedAt: !513)
!518 = !DILocation(line: 0, scope: !494, inlinedAt: !519)
!519 = distinct !DILocation(line: 246, column: 3, scope: !394)
!520 = !DILocation(line: 252, column: 3, scope: !494, inlinedAt: !519)
!521 = !DILocation(line: 253, column: 3, scope: !494, inlinedAt: !519)
!522 = !DILocation(line: 254, column: 3, scope: !494, inlinedAt: !519)
!523 = !DILocation(line: 255, column: 3, scope: !494, inlinedAt: !519)
!524 = !DILocation(line: 247, column: 1, scope: !394)
!525 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_chacha20_incr3", scope: !1, file: !1, line: 169, type: !373, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !526)
!526 = !{!527, !528, !529, !530}
!527 = !DILocalVariable(name: "k0", arg: 1, scope: !525, file: !1, line: 169, type: !54)
!528 = !DILocalVariable(name: "k1", arg: 2, scope: !525, file: !1, line: 169, type: !54)
!529 = !DILocalVariable(name: "k2", arg: 3, scope: !525, file: !1, line: 169, type: !54)
!530 = !DILocalVariable(name: "st", arg: 4, scope: !525, file: !1, line: 169, type: !54)
!531 = !DILocation(line: 0, scope: !525)
!532 = !DILocation(line: 171, column: 3, scope: !525)
!533 = !DILocation(line: 172, column: 3, scope: !525)
!534 = !DILocation(line: 173, column: 3, scope: !525)
!535 = !DILocation(line: 174, column: 3, scope: !525)
!536 = !DILocation(line: 175, column: 3, scope: !525)
!537 = !DILocation(line: 176, column: 1, scope: !525)
!538 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_double_round3", scope: !1, file: !1, line: 121, type: !539, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !54, !54, !54}
!541 = !{!542, !543, !544}
!542 = !DILocalVariable(name: "st", arg: 1, scope: !538, file: !1, line: 121, type: !54)
!543 = !DILocalVariable(name: "st_", arg: 2, scope: !538, file: !1, line: 121, type: !54)
!544 = !DILocalVariable(name: "st__", arg: 3, scope: !538, file: !1, line: 121, type: !54)
!545 = !DILocation(line: 0, scope: !538)
!546 = !DILocation(line: 123, column: 3, scope: !538)
!547 = !DILocation(line: 124, column: 3, scope: !538)
!548 = !DILocation(line: 125, column: 3, scope: !538)
!549 = !DILocation(line: 126, column: 1, scope: !538)
!550 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_chacha20_sum3", scope: !1, file: !1, line: 178, type: !373, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !551)
!551 = !{!552, !553, !554, !555}
!552 = !DILocalVariable(name: "k0", arg: 1, scope: !550, file: !1, line: 178, type: !54)
!553 = !DILocalVariable(name: "k1", arg: 2, scope: !550, file: !1, line: 178, type: !54)
!554 = !DILocalVariable(name: "k2", arg: 3, scope: !550, file: !1, line: 178, type: !54)
!555 = !DILocalVariable(name: "st", arg: 4, scope: !550, file: !1, line: 178, type: !54)
!556 = !DILocation(line: 0, scope: !550)
!557 = !DILocation(line: 180, column: 3, scope: !550)
!558 = !DILocation(line: 181, column: 3, scope: !550)
!559 = !DILocation(line: 182, column: 3, scope: !550)
!560 = !DILocation(line: 183, column: 3, scope: !550)
!561 = !DILocation(line: 184, column: 3, scope: !550)
!562 = !DILocation(line: 185, column: 1, scope: !550)
!563 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_copy_state", scope: !1, file: !1, line: 144, type: !564, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !54, !54}
!566 = !{!567, !568, !569, !570, !571, !572}
!567 = !DILocalVariable(name: "st_", arg: 1, scope: !563, file: !1, line: 144, type: !54)
!568 = !DILocalVariable(name: "st", arg: 2, scope: !563, file: !1, line: 144, type: !54)
!569 = !DILocalVariable(name: "st0", scope: !563, file: !1, line: 146, type: !43)
!570 = !DILocalVariable(name: "st1", scope: !563, file: !1, line: 147, type: !43)
!571 = !DILocalVariable(name: "st2", scope: !563, file: !1, line: 148, type: !43)
!572 = !DILocalVariable(name: "st3", scope: !563, file: !1, line: 149, type: !43)
!573 = !DILocation(line: 147, column: 7, scope: !563)
!574 = !DILocation(line: 148, column: 7, scope: !563)
!575 = !DILocation(line: 149, column: 7, scope: !563)
!576 = !DILocation(line: 0, scope: !563)
!577 = !DILocation(line: 146, column: 13, scope: !563)
!578 = !DILocation(line: 147, column: 3, scope: !563)
!579 = !DILocation(line: 147, column: 13, scope: !563)
!580 = !DILocation(line: 148, column: 3, scope: !563)
!581 = !DILocation(line: 148, column: 13, scope: !563)
!582 = !DILocation(line: 149, column: 3, scope: !563)
!583 = !DILocation(line: 149, column: 13, scope: !563)
!584 = !DILocation(line: 150, column: 13, scope: !563)
!585 = !DILocation(line: 151, column: 13, scope: !563)
!586 = !DILocation(line: 152, column: 13, scope: !563)
!587 = !DILocation(line: 153, column: 13, scope: !563)
!588 = !DILocation(line: 154, column: 1, scope: !563)
!589 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_double_round", scope: !1, file: !1, line: 103, type: !299, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DILocalVariable(name: "st", arg: 1, scope: !589, file: !1, line: 103, type: !54)
!592 = !DILocalVariable(name: "r1", scope: !589, file: !1, line: 106, type: !43)
!593 = !DILocalVariable(name: "r20", scope: !589, file: !1, line: 107, type: !43)
!594 = !DILocalVariable(name: "r30", scope: !589, file: !1, line: 108, type: !43)
!595 = !DILocalVariable(name: "r10", scope: !589, file: !1, line: 113, type: !43)
!596 = !DILocalVariable(name: "r2", scope: !589, file: !1, line: 114, type: !43)
!597 = !DILocalVariable(name: "r3", scope: !589, file: !1, line: 115, type: !43)
!598 = !DILocation(line: 0, scope: !589)
!599 = !DILocation(line: 105, column: 3, scope: !589)
!600 = !DILocation(line: 106, column: 12, scope: !589)
!601 = !DILocation(line: 107, column: 13, scope: !589)
!602 = !DILocation(line: 108, column: 13, scope: !589)
!603 = !DILocation(line: 109, column: 12, scope: !589)
!604 = !DILocation(line: 110, column: 12, scope: !589)
!605 = !DILocation(line: 111, column: 12, scope: !589)
!606 = !DILocation(line: 112, column: 3, scope: !589)
!607 = !DILocation(line: 113, column: 13, scope: !589)
!608 = !DILocation(line: 114, column: 12, scope: !589)
!609 = !DILocation(line: 115, column: 12, scope: !589)
!610 = !DILocation(line: 116, column: 12, scope: !589)
!611 = !DILocation(line: 117, column: 12, scope: !589)
!612 = !DILocation(line: 118, column: 12, scope: !589)
!613 = !DILocation(line: 119, column: 1, scope: !589)
!614 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_round", scope: !1, file: !1, line: 71, type: !299, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!616 = !DILocalVariable(name: "st", arg: 1, scope: !614, file: !1, line: 71, type: !54)
!617 = !DILocalVariable(name: "sa", scope: !614, file: !1, line: 73, type: !43)
!618 = !DILocalVariable(name: "sb0", scope: !614, file: !1, line: 74, type: !43)
!619 = !DILocalVariable(name: "sd0", scope: !614, file: !1, line: 75, type: !43)
!620 = !DILocalVariable(name: "sa10", scope: !614, file: !1, line: 76, type: !43)
!621 = !DILocalVariable(name: "sd10", scope: !614, file: !1, line: 77, type: !43)
!622 = !DILocalVariable(name: "sa0", scope: !614, file: !1, line: 80, type: !43)
!623 = !DILocalVariable(name: "sb1", scope: !614, file: !1, line: 81, type: !43)
!624 = !DILocalVariable(name: "sd2", scope: !614, file: !1, line: 82, type: !43)
!625 = !DILocalVariable(name: "sa11", scope: !614, file: !1, line: 83, type: !43)
!626 = !DILocalVariable(name: "sd11", scope: !614, file: !1, line: 84, type: !43)
!627 = !DILocalVariable(name: "sa2", scope: !614, file: !1, line: 87, type: !43)
!628 = !DILocalVariable(name: "sb2", scope: !614, file: !1, line: 88, type: !43)
!629 = !DILocalVariable(name: "sd3", scope: !614, file: !1, line: 89, type: !43)
!630 = !DILocalVariable(name: "sa12", scope: !614, file: !1, line: 90, type: !43)
!631 = !DILocalVariable(name: "sd12", scope: !614, file: !1, line: 91, type: !43)
!632 = !DILocalVariable(name: "sa3", scope: !614, file: !1, line: 94, type: !43)
!633 = !DILocalVariable(name: "sb", scope: !614, file: !1, line: 95, type: !43)
!634 = !DILocalVariable(name: "sd", scope: !614, file: !1, line: 96, type: !43)
!635 = !DILocalVariable(name: "sa1", scope: !614, file: !1, line: 97, type: !43)
!636 = !DILocalVariable(name: "sd1", scope: !614, file: !1, line: 98, type: !43)
!637 = !DILocation(line: 0, scope: !614)
!638 = !DILocation(line: 73, column: 12, scope: !614)
!639 = !DILocation(line: 74, column: 13, scope: !614)
!640 = !DILocation(line: 75, column: 13, scope: !614)
!641 = !DILocalVariable(name: "v2", arg: 2, scope: !642, file: !44, line: 263, type: !43)
!642 = distinct !DISubprogram(name: "vec_add", scope: !44, file: !44, line: 263, type: !461, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !643)
!643 = !{!644, !641, !645}
!644 = !DILocalVariable(name: "v1", arg: 1, scope: !642, file: !44, line: 263, type: !43)
!645 = !DILocalVariable(name: "r", scope: !642, file: !44, line: 264, type: !43)
!646 = !DILocation(line: 0, scope: !642, inlinedAt: !647)
!647 = distinct !DILocation(line: 76, column: 14, scope: !614)
!648 = !DILocation(line: 265, column: 20, scope: !642, inlinedAt: !647)
!649 = !DILocation(line: 266, column: 20, scope: !642, inlinedAt: !647)
!650 = !DILocation(line: 267, column: 20, scope: !642, inlinedAt: !647)
!651 = !DILocation(line: 268, column: 20, scope: !642, inlinedAt: !647)
!652 = !DILocation(line: 0, scope: !460, inlinedAt: !653)
!653 = distinct !DILocation(line: 77, column: 30, scope: !614)
!654 = !DILocation(line: 188, column: 20, scope: !460, inlinedAt: !653)
!655 = !DILocation(line: 189, column: 20, scope: !460, inlinedAt: !653)
!656 = !DILocation(line: 190, column: 20, scope: !460, inlinedAt: !653)
!657 = !DILocation(line: 191, column: 20, scope: !460, inlinedAt: !653)
!658 = !DILocalVariable(name: "v", arg: 1, scope: !659, file: !44, line: 195, type: !43)
!659 = distinct !DISubprogram(name: "vec_rotate_left", scope: !44, file: !44, line: 195, type: !660, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!43, !43, !7}
!662 = !{!658, !663, !664}
!663 = !DILocalVariable(name: "n", arg: 2, scope: !659, file: !44, line: 195, type: !7)
!664 = !DILocalVariable(name: "r", scope: !659, file: !44, line: 196, type: !43)
!665 = !DILocation(line: 0, scope: !659, inlinedAt: !666)
!666 = distinct !DILocation(line: 77, column: 14, scope: !614)
!667 = !DILocation(line: 197, column: 26, scope: !659, inlinedAt: !666)
!668 = !DILocation(line: 198, column: 26, scope: !659, inlinedAt: !666)
!669 = !DILocation(line: 199, column: 26, scope: !659, inlinedAt: !666)
!670 = !DILocation(line: 200, column: 26, scope: !659, inlinedAt: !666)
!671 = !DILocation(line: 78, column: 12, scope: !614)
!672 = !DILocation(line: 79, column: 12, scope: !614)
!673 = !DILocation(line: 80, column: 13, scope: !614)
!674 = !DILocation(line: 0, scope: !642, inlinedAt: !675)
!675 = distinct !DILocation(line: 83, column: 14, scope: !614)
!676 = !DILocation(line: 265, column: 20, scope: !642, inlinedAt: !675)
!677 = !DILocation(line: 266, column: 20, scope: !642, inlinedAt: !675)
!678 = !DILocation(line: 267, column: 20, scope: !642, inlinedAt: !675)
!679 = !DILocation(line: 268, column: 20, scope: !642, inlinedAt: !675)
!680 = !DILocation(line: 0, scope: !460, inlinedAt: !681)
!681 = distinct !DILocation(line: 84, column: 30, scope: !614)
!682 = !DILocation(line: 188, column: 20, scope: !460, inlinedAt: !681)
!683 = !DILocation(line: 189, column: 20, scope: !460, inlinedAt: !681)
!684 = !DILocation(line: 190, column: 20, scope: !460, inlinedAt: !681)
!685 = !DILocation(line: 191, column: 20, scope: !460, inlinedAt: !681)
!686 = !DILocation(line: 0, scope: !659, inlinedAt: !687)
!687 = distinct !DILocation(line: 84, column: 14, scope: !614)
!688 = !DILocation(line: 197, column: 26, scope: !659, inlinedAt: !687)
!689 = !DILocation(line: 198, column: 26, scope: !659, inlinedAt: !687)
!690 = !DILocation(line: 199, column: 26, scope: !659, inlinedAt: !687)
!691 = !DILocation(line: 200, column: 26, scope: !659, inlinedAt: !687)
!692 = !DILocation(line: 85, column: 12, scope: !614)
!693 = !DILocation(line: 86, column: 12, scope: !614)
!694 = !DILocation(line: 0, scope: !642, inlinedAt: !695)
!695 = distinct !DILocation(line: 90, column: 14, scope: !614)
!696 = !DILocation(line: 265, column: 20, scope: !642, inlinedAt: !695)
!697 = !DILocation(line: 266, column: 20, scope: !642, inlinedAt: !695)
!698 = !DILocation(line: 267, column: 20, scope: !642, inlinedAt: !695)
!699 = !DILocation(line: 268, column: 20, scope: !642, inlinedAt: !695)
!700 = !DILocation(line: 0, scope: !460, inlinedAt: !701)
!701 = distinct !DILocation(line: 91, column: 30, scope: !614)
!702 = !DILocation(line: 188, column: 20, scope: !460, inlinedAt: !701)
!703 = !DILocation(line: 189, column: 20, scope: !460, inlinedAt: !701)
!704 = !DILocation(line: 190, column: 20, scope: !460, inlinedAt: !701)
!705 = !DILocation(line: 191, column: 20, scope: !460, inlinedAt: !701)
!706 = !DILocation(line: 0, scope: !659, inlinedAt: !707)
!707 = distinct !DILocation(line: 91, column: 14, scope: !614)
!708 = !DILocation(line: 197, column: 26, scope: !659, inlinedAt: !707)
!709 = !DILocation(line: 198, column: 26, scope: !659, inlinedAt: !707)
!710 = !DILocation(line: 199, column: 26, scope: !659, inlinedAt: !707)
!711 = !DILocation(line: 200, column: 26, scope: !659, inlinedAt: !707)
!712 = !DILocation(line: 92, column: 12, scope: !614)
!713 = !DILocation(line: 93, column: 12, scope: !614)
!714 = !DILocation(line: 0, scope: !642, inlinedAt: !715)
!715 = distinct !DILocation(line: 97, column: 13, scope: !614)
!716 = !DILocation(line: 265, column: 20, scope: !642, inlinedAt: !715)
!717 = !DILocation(line: 266, column: 20, scope: !642, inlinedAt: !715)
!718 = !DILocation(line: 267, column: 20, scope: !642, inlinedAt: !715)
!719 = !DILocation(line: 268, column: 20, scope: !642, inlinedAt: !715)
!720 = !DILocation(line: 0, scope: !460, inlinedAt: !721)
!721 = distinct !DILocation(line: 98, column: 29, scope: !614)
!722 = !DILocation(line: 188, column: 20, scope: !460, inlinedAt: !721)
!723 = !DILocation(line: 189, column: 20, scope: !460, inlinedAt: !721)
!724 = !DILocation(line: 190, column: 20, scope: !460, inlinedAt: !721)
!725 = !DILocation(line: 191, column: 20, scope: !460, inlinedAt: !721)
!726 = !DILocation(line: 0, scope: !659, inlinedAt: !727)
!727 = distinct !DILocation(line: 98, column: 13, scope: !614)
!728 = !DILocation(line: 197, column: 26, scope: !659, inlinedAt: !727)
!729 = !DILocation(line: 198, column: 26, scope: !659, inlinedAt: !727)
!730 = !DILocation(line: 199, column: 26, scope: !659, inlinedAt: !727)
!731 = !DILocation(line: 200, column: 26, scope: !659, inlinedAt: !727)
!732 = !DILocation(line: 99, column: 12, scope: !614)
!733 = !DILocation(line: 100, column: 12, scope: !614)
!734 = !DILocation(line: 101, column: 1, scope: !614)
!735 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_sum_states", scope: !1, file: !1, line: 128, type: !564, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!737 = !DILocalVariable(name: "st_", arg: 1, scope: !735, file: !1, line: 128, type: !54)
!738 = !DILocalVariable(name: "st", arg: 2, scope: !735, file: !1, line: 128, type: !54)
!739 = !DILocalVariable(name: "s0", scope: !735, file: !1, line: 130, type: !43)
!740 = !DILocalVariable(name: "s1", scope: !735, file: !1, line: 131, type: !43)
!741 = !DILocalVariable(name: "s2", scope: !735, file: !1, line: 132, type: !43)
!742 = !DILocalVariable(name: "s3", scope: !735, file: !1, line: 133, type: !43)
!743 = !DILocalVariable(name: "s0_", scope: !735, file: !1, line: 134, type: !43)
!744 = !DILocalVariable(name: "s1_", scope: !735, file: !1, line: 135, type: !43)
!745 = !DILocalVariable(name: "s2_", scope: !735, file: !1, line: 136, type: !43)
!746 = !DILocalVariable(name: "s3_", scope: !735, file: !1, line: 137, type: !43)
!747 = !DILocation(line: 0, scope: !735)
!748 = !DILocation(line: 130, column: 12, scope: !735)
!749 = !DILocation(line: 131, column: 12, scope: !735)
!750 = !DILocation(line: 132, column: 12, scope: !735)
!751 = !DILocation(line: 133, column: 12, scope: !735)
!752 = !DILocation(line: 134, column: 13, scope: !735)
!753 = !DILocation(line: 135, column: 13, scope: !735)
!754 = !DILocation(line: 136, column: 13, scope: !735)
!755 = !DILocation(line: 137, column: 13, scope: !735)
!756 = !DILocation(line: 0, scope: !642, inlinedAt: !757)
!757 = distinct !DILocation(line: 138, column: 13, scope: !735)
!758 = !DILocation(line: 265, column: 20, scope: !642, inlinedAt: !757)
!759 = !DILocation(line: 266, column: 20, scope: !642, inlinedAt: !757)
!760 = !DILocation(line: 267, column: 20, scope: !642, inlinedAt: !757)
!761 = !DILocation(line: 268, column: 20, scope: !642, inlinedAt: !757)
!762 = !DILocation(line: 138, column: 13, scope: !735)
!763 = !DILocation(line: 0, scope: !642, inlinedAt: !764)
!764 = distinct !DILocation(line: 139, column: 13, scope: !735)
!765 = !DILocation(line: 265, column: 20, scope: !642, inlinedAt: !764)
!766 = !DILocation(line: 266, column: 20, scope: !642, inlinedAt: !764)
!767 = !DILocation(line: 267, column: 20, scope: !642, inlinedAt: !764)
!768 = !DILocation(line: 268, column: 20, scope: !642, inlinedAt: !764)
!769 = !DILocation(line: 139, column: 13, scope: !735)
!770 = !DILocation(line: 0, scope: !642, inlinedAt: !771)
!771 = distinct !DILocation(line: 140, column: 13, scope: !735)
!772 = !DILocation(line: 265, column: 20, scope: !642, inlinedAt: !771)
!773 = !DILocation(line: 266, column: 20, scope: !642, inlinedAt: !771)
!774 = !DILocation(line: 267, column: 20, scope: !642, inlinedAt: !771)
!775 = !DILocation(line: 268, column: 20, scope: !642, inlinedAt: !771)
!776 = !DILocation(line: 140, column: 13, scope: !735)
!777 = !DILocation(line: 0, scope: !642, inlinedAt: !778)
!778 = distinct !DILocation(line: 141, column: 13, scope: !735)
!779 = !DILocation(line: 265, column: 20, scope: !642, inlinedAt: !778)
!780 = !DILocation(line: 266, column: 20, scope: !642, inlinedAt: !778)
!781 = !DILocation(line: 267, column: 20, scope: !642, inlinedAt: !778)
!782 = !DILocation(line: 268, column: 20, scope: !642, inlinedAt: !778)
!783 = !DILocation(line: 141, column: 13, scope: !735)
!784 = !DILocation(line: 142, column: 1, scope: !735)
!785 = distinct !DISubprogram(name: "store32", scope: !177, file: !177, line: 355, type: !786, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !8, !3}
!788 = !{!789, !790}
!789 = !DILocalVariable(name: "b", arg: 1, scope: !785, file: !177, line: 355, type: !8)
!790 = !DILocalVariable(name: "i", arg: 2, scope: !785, file: !177, line: 355, type: !3)
!791 = !DILocation(line: 0, scope: !785)
!792 = !DILocation(line: 355, column: 54, scope: !785)
!793 = !DILocation(line: 355, column: 72, scope: !785)
!794 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_chacha20_core", scope: !1, file: !1, line: 156, type: !564, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !795)
!795 = !{!796, !797, !798}
!796 = !DILocalVariable(name: "k", arg: 1, scope: !794, file: !1, line: 156, type: !54)
!797 = !DILocalVariable(name: "st", arg: 2, scope: !794, file: !1, line: 156, type: !54)
!798 = !DILocalVariable(name: "i", scope: !799, file: !1, line: 159, type: !3)
!799 = distinct !DILexicalBlock(scope: !794, file: !1, line: 159, column: 3)
!800 = !DILocation(line: 0, scope: !794)
!801 = !DILocation(line: 158, column: 3, scope: !794)
!802 = !DILocation(line: 0, scope: !799)
!803 = !DILocation(line: 159, column: 3, scope: !799)
!804 = !DILocation(line: 161, column: 3, scope: !794)
!805 = !DILocation(line: 162, column: 1, scope: !794)
!806 = !DILocation(line: 160, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !799, file: !1, line: 159, column: 3)
!808 = !DILocation(line: 159, column: 60, scope: !807)
!809 = !DILocation(line: 159, column: 37, scope: !807)
!810 = distinct !{!810, !803, !811, !258, !259}
!811 = !DILocation(line: 160, column: 45, scope: !799)
!812 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_State_state_incr", scope: !1, file: !1, line: 27, type: !299, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !813)
!813 = !{!814, !815}
!814 = !DILocalVariable(name: "k", arg: 1, scope: !812, file: !1, line: 27, type: !54)
!815 = !DILocalVariable(name: "k3", scope: !812, file: !1, line: 29, type: !43)
!816 = !DILocation(line: 0, scope: !812)
!817 = !DILocation(line: 29, column: 12, scope: !812)
!818 = !DILocalVariable(name: "v1", arg: 1, scope: !819, file: !44, line: 277, type: !43)
!819 = distinct !DISubprogram(name: "vec_increment", scope: !44, file: !44, line: 277, type: !820, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!43, !43}
!822 = !{!818, !823}
!823 = !DILocalVariable(name: "one", scope: !819, file: !44, line: 278, type: !43)
!824 = !DILocation(line: 0, scope: !819, inlinedAt: !825)
!825 = distinct !DILocation(line: 30, column: 11, scope: !812)
!826 = !DILocation(line: 0, scope: !642, inlinedAt: !827)
!827 = distinct !DILocation(line: 279, column: 10, scope: !819, inlinedAt: !825)
!828 = !DILocation(line: 265, column: 20, scope: !642, inlinedAt: !827)
!829 = !DILocation(line: 30, column: 11, scope: !812)
!830 = !DILocation(line: 31, column: 1, scope: !812)
!831 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_chacha20_block", scope: !1, file: !1, line: 195, type: !832, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !8, !54}
!834 = !{!835, !836, !837, !838}
!835 = !DILocalVariable(name: "stream_block", arg: 1, scope: !831, file: !1, line: 195, type: !8)
!836 = !DILocalVariable(name: "st", arg: 2, scope: !831, file: !1, line: 195, type: !54)
!837 = !DILocalVariable(name: "k", scope: !831, file: !1, line: 198, type: !42)
!838 = !DILocalVariable(name: "_i", scope: !839, file: !1, line: 199, type: !3)
!839 = distinct !DILexicalBlock(scope: !831, file: !1, line: 199, column: 3)
!840 = !DILocation(line: 0, scope: !831)
!841 = !DILocation(line: 198, column: 3, scope: !831)
!842 = !DILocation(line: 198, column: 7, scope: !831)
!843 = !DILocation(line: 0, scope: !839)
!844 = !DILocation(line: 200, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !839, file: !1, line: 199, column: 3)
!846 = !DILocation(line: 201, column: 43, scope: !831)
!847 = !DILocation(line: 201, column: 3, scope: !831)
!848 = !DILocation(line: 202, column: 3, scope: !831)
!849 = !DILocation(line: 203, column: 1, scope: !831)
!850 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_Vec128_State_state_to_key_block", scope: !1, file: !1, line: 34, type: !832, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !851)
!851 = !{!852, !853, !854, !855, !856, !857, !858, !859, !860, !861}
!852 = !DILocalVariable(name: "stream_block", arg: 1, scope: !850, file: !1, line: 34, type: !8)
!853 = !DILocalVariable(name: "k", arg: 2, scope: !850, file: !1, line: 34, type: !54)
!854 = !DILocalVariable(name: "k0", scope: !850, file: !1, line: 36, type: !43)
!855 = !DILocalVariable(name: "k1", scope: !850, file: !1, line: 37, type: !43)
!856 = !DILocalVariable(name: "k2", scope: !850, file: !1, line: 38, type: !43)
!857 = !DILocalVariable(name: "k3", scope: !850, file: !1, line: 39, type: !43)
!858 = !DILocalVariable(name: "a", scope: !850, file: !1, line: 40, type: !8)
!859 = !DILocalVariable(name: "b", scope: !850, file: !1, line: 41, type: !8)
!860 = !DILocalVariable(name: "c", scope: !850, file: !1, line: 42, type: !8)
!861 = !DILocalVariable(name: "d", scope: !850, file: !1, line: 43, type: !8)
!862 = !DILocation(line: 0, scope: !850)
!863 = !DILocation(line: 36, column: 12, scope: !850)
!864 = !DILocation(line: 37, column: 12, scope: !850)
!865 = !DILocation(line: 38, column: 12, scope: !850)
!866 = !DILocation(line: 39, column: 12, scope: !850)
!867 = !DILocation(line: 41, column: 29, scope: !850)
!868 = !DILocation(line: 42, column: 29, scope: !850)
!869 = !DILocation(line: 43, column: 29, scope: !850)
!870 = !DILocation(line: 0, scope: !494, inlinedAt: !871)
!871 = distinct !DILocation(line: 44, column: 3, scope: !850)
!872 = !DILocation(line: 252, column: 3, scope: !494, inlinedAt: !871)
!873 = !DILocation(line: 253, column: 3, scope: !494, inlinedAt: !871)
!874 = !DILocation(line: 254, column: 3, scope: !494, inlinedAt: !871)
!875 = !DILocation(line: 255, column: 3, scope: !494, inlinedAt: !871)
!876 = !DILocation(line: 0, scope: !494, inlinedAt: !877)
!877 = distinct !DILocation(line: 45, column: 3, scope: !850)
!878 = !DILocation(line: 252, column: 3, scope: !494, inlinedAt: !877)
!879 = !DILocation(line: 253, column: 3, scope: !494, inlinedAt: !877)
!880 = !DILocation(line: 254, column: 3, scope: !494, inlinedAt: !877)
!881 = !DILocation(line: 255, column: 3, scope: !494, inlinedAt: !877)
!882 = !DILocation(line: 0, scope: !494, inlinedAt: !883)
!883 = distinct !DILocation(line: 46, column: 3, scope: !850)
!884 = !DILocation(line: 252, column: 3, scope: !494, inlinedAt: !883)
!885 = !DILocation(line: 253, column: 3, scope: !494, inlinedAt: !883)
!886 = !DILocation(line: 254, column: 3, scope: !494, inlinedAt: !883)
!887 = !DILocation(line: 255, column: 3, scope: !494, inlinedAt: !883)
!888 = !DILocation(line: 0, scope: !494, inlinedAt: !889)
!889 = distinct !DILocation(line: 47, column: 3, scope: !850)
!890 = !DILocation(line: 252, column: 3, scope: !494, inlinedAt: !889)
!891 = !DILocation(line: 253, column: 3, scope: !494, inlinedAt: !889)
!892 = !DILocation(line: 254, column: 3, scope: !494, inlinedAt: !889)
!893 = !DILocation(line: 255, column: 3, scope: !494, inlinedAt: !889)
!894 = !DILocation(line: 48, column: 1, scope: !850)
