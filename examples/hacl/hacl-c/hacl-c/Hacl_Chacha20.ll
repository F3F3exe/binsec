; ModuleID = 'hacl-c/hacl-c/Hacl_Chacha20.c'
source_filename = "hacl-c/hacl-c/Hacl_Chacha20.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_key_block(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 !dbg !16 {
  %5 = alloca [16 x i32], align 4
  %6 = alloca [16 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !24, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i8* %1, metadata !25, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i8* %2, metadata !26, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32 %3, metadata !27, metadata !DIExpression()), !dbg !34
  %7 = bitcast [16 x i32]* %6 to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #7, !dbg !35
  call void @llvm.dbg.declare(metadata [16 x i32]* %6, metadata !28, metadata !DIExpression()), !dbg !36
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false), !dbg !36
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 0, !dbg !37
  call void @llvm.dbg.value(metadata i32* %8, metadata !32, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32* %8, metadata !38, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i8* %1, metadata !43, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i8* %2, metadata !44, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i32* %8, metadata !45, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata [16 x i32]* %6, metadata !46, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !49
  call void @llvm.dbg.value(metadata i32* %14, metadata !47, metadata !DIExpression()), !dbg !49
  store i32 1634760805, i32* %8, align 4, !dbg !51, !tbaa !52
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 1, !dbg !56
  store i32 857760878, i32* %9, align 4, !dbg !57, !tbaa !52
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 2, !dbg !58
  store i32 2036477234, i32* %10, align 4, !dbg !59, !tbaa !52
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 3, !dbg !60
  store i32 1797285236, i32* %11, align 4, !dbg !61, !tbaa !52
  call void @llvm.dbg.value(metadata [16 x i32]* %6, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !75
  call void @llvm.dbg.value(metadata i8* %1, metadata !67, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i32 8, metadata !68, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !77
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 4
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(32) %13, i8* noundef nonnull align 1 dereferenceable(32) %1, i32 32, i1 false), !dbg !78
  call void @llvm.dbg.value(metadata i32 undef, metadata !69, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i32 undef, metadata !71, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 undef, metadata !74, metadata !DIExpression()), !dbg !79
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 12, !dbg !80
  store i32 0, i32* %14, align 4, !dbg !81, !tbaa !52
  call void @llvm.dbg.value(metadata [16 x i32]* %6, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 52, DW_OP_stack_value)), !dbg !82
  call void @llvm.dbg.value(metadata i8* %2, metadata !67, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 3, metadata !68, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !84
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i32 0, i32 13
  %16 = bitcast i32* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(12) %16, i8* noundef nonnull align 1 dereferenceable(12) %2, i32 12, i1 false), !dbg !85
  call void @llvm.dbg.value(metadata i32 undef, metadata !69, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata i32 undef, metadata !71, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32 undef, metadata !74, metadata !DIExpression()), !dbg !86
  %17 = bitcast [16 x i32]* %5 to i8*, !dbg !87
  call void @llvm.dbg.value(metadata i8* %0, metadata !92, metadata !DIExpression()) #7, !dbg !87
  call void @llvm.dbg.value(metadata i32* %8, metadata !93, metadata !DIExpression()) #7, !dbg !87
  call void @llvm.dbg.value(metadata i32 %3, metadata !94, metadata !DIExpression()) #7, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %17) #7, !dbg !97
  call void @llvm.dbg.declare(metadata [16 x i32]* %5, metadata !95, metadata !DIExpression()) #7, !dbg !98
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %17, i8 0, i32 64, i1 false) #7, !dbg !98
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i32 0, i32 0, !dbg !99
  call fastcc void @Hacl_Impl_Chacha20_chacha20_core(i32* noundef nonnull %18, i32* noundef nonnull %8, i32 noundef %3) #7, !dbg !100
  call void @llvm.dbg.value(metadata i8* %0, metadata !101, metadata !DIExpression()) #7, !dbg !112
  call void @llvm.dbg.value(metadata i32* %18, metadata !104, metadata !DIExpression()) #7, !dbg !112
  call void @llvm.dbg.value(metadata i32 16, metadata !105, metadata !DIExpression()) #7, !dbg !112
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()) #7, !dbg !114
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %0, i8* noundef nonnull align 4 dereferenceable(64) %17, i32 64, i1 false) #7, !dbg !115
  call void @llvm.dbg.value(metadata i32 undef, metadata !106, metadata !DIExpression()) #7, !dbg !114
  call void @llvm.dbg.value(metadata i32 undef, metadata !108, metadata !DIExpression()) #7, !dbg !124
  call void @llvm.dbg.value(metadata i32 undef, metadata !111, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !124
  call void @llvm.dbg.value(metadata i32 undef, metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !125
  call void @llvm.dbg.value(metadata i32 undef, metadata !122, metadata !DIExpression()) #7, !dbg !125
  call void @llvm.dbg.value(metadata i32 undef, metadata !106, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %17) #7, !dbg !126
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #7, !dbg !127
  ret void, !dbg !127
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i8* nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 !dbg !128 {
  %7 = alloca [16 x i32], align 4
  %8 = alloca [64 x i8], align 1
  %9 = alloca [48 x i32], align 4
  %10 = alloca [16 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !132, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i8* %1, metadata !133, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i32 %2, metadata !134, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i8* %3, metadata !135, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i8* %4, metadata !136, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i32 %5, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i8* %0, metadata !139, metadata !DIExpression()) #7, !dbg !149
  call void @llvm.dbg.value(metadata i8* %1, metadata !142, metadata !DIExpression()) #7, !dbg !149
  call void @llvm.dbg.value(metadata i32 %2, metadata !143, metadata !DIExpression()) #7, !dbg !149
  call void @llvm.dbg.value(metadata i8* %3, metadata !144, metadata !DIExpression()) #7, !dbg !149
  call void @llvm.dbg.value(metadata i8* %4, metadata !145, metadata !DIExpression()) #7, !dbg !149
  call void @llvm.dbg.value(metadata i32 %5, metadata !146, metadata !DIExpression()) #7, !dbg !149
  %11 = bitcast [16 x i32]* %10 to i8*, !dbg !151
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %11) #7, !dbg !151
  call void @llvm.dbg.declare(metadata [16 x i32]* %10, metadata !147, metadata !DIExpression()) #7, !dbg !152
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %11, i8 0, i32 64, i1 false) #7, !dbg !152
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 0, !dbg !153
  call void @llvm.dbg.value(metadata i32* %12, metadata !148, metadata !DIExpression()) #7, !dbg !149
  call void @llvm.dbg.value(metadata i32* %12, metadata !38, metadata !DIExpression()) #7, !dbg !154
  call void @llvm.dbg.value(metadata i8* %3, metadata !43, metadata !DIExpression()) #7, !dbg !154
  call void @llvm.dbg.value(metadata i8* %4, metadata !44, metadata !DIExpression()) #7, !dbg !154
  call void @llvm.dbg.value(metadata i32* %12, metadata !45, metadata !DIExpression()) #7, !dbg !154
  call void @llvm.dbg.value(metadata [16 x i32]* %10, metadata !46, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #7, !dbg !154
  store i32 1634760805, i32* %12, align 4, !dbg !156, !tbaa !52
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 1, !dbg !157
  store i32 857760878, i32* %13, align 4, !dbg !158, !tbaa !52
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 2, !dbg !159
  store i32 2036477234, i32* %14, align 4, !dbg !160, !tbaa !52
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 3, !dbg !161
  store i32 1797285236, i32* %15, align 4, !dbg !162, !tbaa !52
  call void @llvm.dbg.value(metadata [16 x i32]* %10, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #7, !dbg !163
  call void @llvm.dbg.value(metadata i8* %3, metadata !67, metadata !DIExpression()) #7, !dbg !163
  call void @llvm.dbg.value(metadata i32 8, metadata !68, metadata !DIExpression()) #7, !dbg !163
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()) #7, !dbg !165
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 4
  %17 = bitcast i32* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(32) %17, i8* noundef nonnull align 1 dereferenceable(32) %3, i32 32, i1 false) #7, !dbg !166
  call void @llvm.dbg.value(metadata i32 undef, metadata !69, metadata !DIExpression()) #7, !dbg !165
  call void @llvm.dbg.value(metadata i32 undef, metadata !71, metadata !DIExpression()) #7, !dbg !167
  call void @llvm.dbg.value(metadata i32 undef, metadata !74, metadata !DIExpression()) #7, !dbg !167
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 12, !dbg !168
  store i32 0, i32* %18, align 4, !dbg !169, !tbaa !52
  call void @llvm.dbg.value(metadata [16 x i32]* %10, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 52, DW_OP_stack_value)) #7, !dbg !170
  call void @llvm.dbg.value(metadata i8* %4, metadata !67, metadata !DIExpression()) #7, !dbg !170
  call void @llvm.dbg.value(metadata i32 3, metadata !68, metadata !DIExpression()) #7, !dbg !170
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()) #7, !dbg !172
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 13
  %20 = bitcast i32* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(12) %20, i8* noundef nonnull align 1 dereferenceable(12) %4, i32 12, i1 false) #7, !dbg !173
  call void @llvm.dbg.value(metadata i32 undef, metadata !69, metadata !DIExpression()) #7, !dbg !172
  call void @llvm.dbg.value(metadata i32 undef, metadata !71, metadata !DIExpression()) #7, !dbg !174
  call void @llvm.dbg.value(metadata i32 undef, metadata !74, metadata !DIExpression()) #7, !dbg !174
  call void @llvm.dbg.value(metadata i8* %0, metadata !175, metadata !DIExpression()) #7, !dbg !190
  call void @llvm.dbg.value(metadata i8* %1, metadata !180, metadata !DIExpression()) #7, !dbg !190
  call void @llvm.dbg.value(metadata i32 %2, metadata !181, metadata !DIExpression()) #7, !dbg !190
  call void @llvm.dbg.value(metadata i32* %12, metadata !182, metadata !DIExpression()) #7, !dbg !190
  call void @llvm.dbg.value(metadata i32 %5, metadata !183, metadata !DIExpression()) #7, !dbg !190
  %21 = lshr i32 %2, 6, !dbg !192
  call void @llvm.dbg.value(metadata i32 %21, metadata !184, metadata !DIExpression()) #7, !dbg !190
  %22 = and i32 %2, 63, !dbg !193
  call void @llvm.dbg.value(metadata i32 %22, metadata !185, metadata !DIExpression()) #7, !dbg !190
  call void @llvm.dbg.value(metadata i8* %0, metadata !186, metadata !DIExpression()) #7, !dbg !190
  call void @llvm.dbg.value(metadata i8* %1, metadata !187, metadata !DIExpression()) #7, !dbg !190
  %23 = and i32 %2, -64, !dbg !194
  call void @llvm.dbg.value(metadata !DIArgList(i8* %0, i32 %23), metadata !188, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !190
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i32 %23), metadata !189, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !190
  call void @llvm.dbg.value(metadata i8* %0, metadata !195, metadata !DIExpression()) #7, !dbg !208
  call void @llvm.dbg.value(metadata i8* %1, metadata !198, metadata !DIExpression()) #7, !dbg !208
  call void @llvm.dbg.value(metadata i32 %21, metadata !199, metadata !DIExpression()) #7, !dbg !208
  call void @llvm.dbg.value(metadata i32* %12, metadata !200, metadata !DIExpression()) #7, !dbg !208
  call void @llvm.dbg.value(metadata i32 %5, metadata !201, metadata !DIExpression()) #7, !dbg !208
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()) #7, !dbg !210
  %24 = icmp ult i32 %2, 64, !dbg !211
  br i1 %24, label %51, label %25, !dbg !212

25:                                               ; preds = %6
  %26 = bitcast [48 x i32]* %9 to i8*
  %27 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i32 0, i32 0
  %28 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i32 0, i32 16
  %29 = bitcast i32* %28 to i8*
  %30 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i32 0, i32 32
  %31 = bitcast i32* %30 to i8*
  br label %32, !dbg !212

32:                                               ; preds = %47, %25
  %33 = phi i32 [ 0, %25 ], [ %49, %47 ]
  call void @llvm.dbg.value(metadata i32 %33, metadata !202, metadata !DIExpression()) #7, !dbg !210
  %34 = shl i32 %33, 6, !dbg !213
  %35 = getelementptr inbounds i8, i8* %1, i32 %34, !dbg !214
  call void @llvm.dbg.value(metadata i8* %35, metadata !204, metadata !DIExpression()) #7, !dbg !215
  %36 = add i32 %33, %5, !dbg !216
  call void @llvm.dbg.value(metadata i8* %35, metadata !217, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.dbg.value(metadata i32* %12, metadata !223, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.dbg.value(metadata i32 %36, metadata !224, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %26) #7, !dbg !240
  call void @llvm.dbg.declare(metadata [48 x i32]* %9, metadata !225, metadata !DIExpression()) #7, !dbg !241
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(192) %26, i8 0, i32 192, i1 false) #7, !dbg !241
  call void @llvm.dbg.value(metadata i32* %27, metadata !229, metadata !DIExpression()) #7, !dbg !238
  call void @llvm.dbg.value(metadata i32* %28, metadata !230, metadata !DIExpression()) #7, !dbg !238
  call fastcc void @Hacl_Impl_Chacha20_chacha20_core(i32* noundef nonnull %27, i32* noundef nonnull %12, i32 noundef %36) #7, !dbg !242
  call void @llvm.dbg.value(metadata i32* %28, metadata !62, metadata !DIExpression()) #7, !dbg !243
  call void @llvm.dbg.value(metadata i8* %35, metadata !67, metadata !DIExpression()) #7, !dbg !243
  call void @llvm.dbg.value(metadata i32 16, metadata !68, metadata !DIExpression()) #7, !dbg !243
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()) #7, !dbg !245
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %29, i8* noundef nonnull align 1 dereferenceable(64) %35, i32 64, i1 false) #7, !dbg !246
  call void @llvm.dbg.value(metadata i32 undef, metadata !69, metadata !DIExpression()) #7, !dbg !245
  call void @llvm.dbg.value(metadata i32 undef, metadata !71, metadata !DIExpression()) #7, !dbg !247
  call void @llvm.dbg.value(metadata i32 undef, metadata !74, metadata !DIExpression()) #7, !dbg !247
  br label %37, !dbg !248

37:                                               ; preds = %37, %32
  %38 = phi i32 [ %45, %37 ], [ 0, %32 ]
  call void @llvm.dbg.value(metadata i32 %38, metadata !232, metadata !DIExpression()) #7, !dbg !249
  %39 = getelementptr inbounds i32, i32* %28, i32 %38, !dbg !250
  %40 = load i32, i32* %39, align 4, !dbg !250, !tbaa !52
  call void @llvm.dbg.value(metadata i32 %40, metadata !234, metadata !DIExpression()) #7, !dbg !251
  %41 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i32 0, i32 %38, !dbg !252
  %42 = load i32, i32* %41, align 4, !dbg !252, !tbaa !52
  call void @llvm.dbg.value(metadata i32 %42, metadata !237, metadata !DIExpression()) #7, !dbg !251
  %43 = xor i32 %42, %40, !dbg !253
  %44 = getelementptr inbounds i32, i32* %30, i32 %38, !dbg !254
  store i32 %43, i32* %44, align 4, !dbg !255, !tbaa !52
  %45 = add nuw nsw i32 %38, 1, !dbg !256
  call void @llvm.dbg.value(metadata i32 %45, metadata !232, metadata !DIExpression()) #7, !dbg !249
  %46 = icmp eq i32 %45, 16, !dbg !257
  br i1 %46, label %47, label %37, !dbg !248, !llvm.loop !258

47:                                               ; preds = %37
  %48 = getelementptr inbounds i8, i8* %0, i32 %34, !dbg !262
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %48, i8* noundef nonnull align 4 dereferenceable(64) %31, i32 64, i1 false) #7, !dbg !263
  call void @llvm.dbg.value(metadata i32 undef, metadata !108, metadata !DIExpression()) #7, !dbg !266
  call void @llvm.dbg.value(metadata i32 undef, metadata !111, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !266
  call void @llvm.dbg.value(metadata i32 undef, metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !267
  call void @llvm.dbg.value(metadata i32 undef, metadata !122, metadata !DIExpression()) #7, !dbg !267
  call void @llvm.dbg.value(metadata i32 undef, metadata !106, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !268
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %26) #7, !dbg !269
  %49 = add nuw nsw i32 %33, 1, !dbg !270
  call void @llvm.dbg.value(metadata i32 %49, metadata !202, metadata !DIExpression()) #7, !dbg !210
  %50 = icmp eq i32 %49, %21, !dbg !211
  br i1 %50, label %51, label %32, !dbg !212, !llvm.loop !271

51:                                               ; preds = %47, %6
  %52 = icmp eq i32 %22, 0, !dbg !273
  br i1 %52, label %71, label %53, !dbg !275

53:                                               ; preds = %51
  %54 = getelementptr inbounds i8, i8* %1, i32 %23, !dbg !276
  call void @llvm.dbg.value(metadata i8* %54, metadata !189, metadata !DIExpression()) #7, !dbg !190
  %55 = getelementptr inbounds i8, i8* %0, i32 %23, !dbg !277
  call void @llvm.dbg.value(metadata i8* %55, metadata !188, metadata !DIExpression()) #7, !dbg !190
  %56 = add i32 %21, %5, !dbg !278
  call void @llvm.dbg.value(metadata i8* %55, metadata !279, metadata !DIExpression()) #7, !dbg !297
  call void @llvm.dbg.value(metadata i8* %54, metadata !282, metadata !DIExpression()) #7, !dbg !297
  call void @llvm.dbg.value(metadata i32 %22, metadata !283, metadata !DIExpression()) #7, !dbg !297
  call void @llvm.dbg.value(metadata i32* %12, metadata !284, metadata !DIExpression()) #7, !dbg !297
  call void @llvm.dbg.value(metadata i32 %56, metadata !285, metadata !DIExpression()) #7, !dbg !297
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i32 0, i32 0, !dbg !299
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %57) #7, !dbg !299
  call void @llvm.dbg.declare(metadata [64 x i8]* %8, metadata !286, metadata !DIExpression()) #7, !dbg !300
  %58 = bitcast [16 x i32]* %7 to i8*, !dbg !301
  call void @llvm.dbg.value(metadata i8* %57, metadata !92, metadata !DIExpression()) #7, !dbg !301
  call void @llvm.dbg.value(metadata i32* %12, metadata !93, metadata !DIExpression()) #7, !dbg !301
  call void @llvm.dbg.value(metadata i32 %56, metadata !94, metadata !DIExpression()) #7, !dbg !301
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %58) #7, !dbg !303
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !95, metadata !DIExpression()) #7, !dbg !304
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %58, i8 0, i32 64, i1 false) #7, !dbg !304
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i32 0, i32 0, !dbg !305
  call fastcc void @Hacl_Impl_Chacha20_chacha20_core(i32* noundef nonnull %59, i32* noundef nonnull %12, i32 noundef %56) #7, !dbg !306
  call void @llvm.dbg.value(metadata i8* %57, metadata !101, metadata !DIExpression()) #7, !dbg !307
  call void @llvm.dbg.value(metadata i32* %59, metadata !104, metadata !DIExpression()) #7, !dbg !307
  call void @llvm.dbg.value(metadata i32 16, metadata !105, metadata !DIExpression()) #7, !dbg !307
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()) #7, !dbg !309
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %57, i8* noundef nonnull align 4 dereferenceable(64) %58, i32 64, i1 false) #7, !dbg !310
  call void @llvm.dbg.value(metadata i32 undef, metadata !106, metadata !DIExpression()) #7, !dbg !309
  call void @llvm.dbg.value(metadata i32 undef, metadata !108, metadata !DIExpression()) #7, !dbg !312
  call void @llvm.dbg.value(metadata i32 undef, metadata !111, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !312
  call void @llvm.dbg.value(metadata i32 undef, metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !313
  call void @llvm.dbg.value(metadata i32 undef, metadata !122, metadata !DIExpression()) #7, !dbg !313
  call void @llvm.dbg.value(metadata i32 undef, metadata !106, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !309
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %58) #7, !dbg !314
  call void @llvm.dbg.value(metadata i8* %57, metadata !290, metadata !DIExpression()) #7, !dbg !297
  call void @llvm.dbg.value(metadata i32 0, metadata !291, metadata !DIExpression()) #7, !dbg !315
  br label %60, !dbg !316

60:                                               ; preds = %60, %53
  %61 = phi i32 [ %68, %60 ], [ 0, %53 ]
  call void @llvm.dbg.value(metadata i32 %61, metadata !291, metadata !DIExpression()) #7, !dbg !315
  %62 = getelementptr inbounds i8, i8* %54, i32 %61, !dbg !317
  %63 = load i8, i8* %62, align 1, !dbg !317, !tbaa !318
  call void @llvm.dbg.value(metadata i8 %63, metadata !293, metadata !DIExpression()) #7, !dbg !319
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i32 0, i32 %61, !dbg !320
  %65 = load i8, i8* %64, align 1, !dbg !320, !tbaa !318
  call void @llvm.dbg.value(metadata i8 %65, metadata !296, metadata !DIExpression()) #7, !dbg !319
  %66 = xor i8 %65, %63, !dbg !321
  %67 = getelementptr inbounds i8, i8* %55, i32 %61, !dbg !322
  store i8 %66, i8* %67, align 1, !dbg !323, !tbaa !318
  %68 = add nuw nsw i32 %61, 1, !dbg !324
  call void @llvm.dbg.value(metadata i32 %68, metadata !291, metadata !DIExpression()) #7, !dbg !315
  %69 = icmp eq i32 %68, %22, !dbg !325
  br i1 %69, label %70, label %60, !dbg !316, !llvm.loop !326

70:                                               ; preds = %60
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %57) #7, !dbg !328
  br label %71, !dbg !329

71:                                               ; preds = %51, %70
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #7, !dbg !330
  ret void, !dbg !331
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: inlinehint nofree nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20_core(i32* nocapture noundef %0, i32* nocapture noundef %1, i32 noundef %2) unnamed_addr #5 !dbg !332 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !336, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32* %1, metadata !337, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %2, metadata !338, metadata !DIExpression()), !dbg !339
  %4 = getelementptr inbounds i32, i32* %1, i32 12, !dbg !340
  store i32 %2, i32* %4, align 4, !dbg !341, !tbaa !52
  call void @llvm.dbg.value(metadata i32* %0, metadata !342, metadata !DIExpression()) #7, !dbg !348
  call void @llvm.dbg.value(metadata i32* %1, metadata !347, metadata !DIExpression()) #7, !dbg !348
  %5 = bitcast i32* %0 to i8*, !dbg !350
  %6 = bitcast i32* %1 to i8*, !dbg !350
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) %5, i8* noundef nonnull align 4 dereferenceable(64) %6, i32 64, i1 false) #7, !dbg !350
  call void @llvm.dbg.value(metadata i32* %0, metadata !351, metadata !DIExpression()) #7, !dbg !358
  call void @llvm.dbg.value(metadata i32 0, metadata !356, metadata !DIExpression()) #7, !dbg !360
  %7 = getelementptr inbounds i32, i32* %0, i32 4
  %8 = getelementptr inbounds i32, i32* %0, i32 12
  %9 = getelementptr inbounds i32, i32* %0, i32 8
  %10 = getelementptr inbounds i32, i32* %0, i32 1
  %11 = getelementptr inbounds i32, i32* %0, i32 5
  %12 = getelementptr inbounds i32, i32* %0, i32 13
  %13 = getelementptr inbounds i32, i32* %0, i32 9
  %14 = getelementptr inbounds i32, i32* %0, i32 2
  %15 = getelementptr inbounds i32, i32* %0, i32 6
  %16 = getelementptr inbounds i32, i32* %0, i32 14
  %17 = getelementptr inbounds i32, i32* %0, i32 10
  %18 = getelementptr inbounds i32, i32* %0, i32 3
  %19 = getelementptr inbounds i32, i32* %0, i32 7
  %20 = getelementptr inbounds i32, i32* %0, i32 15
  %21 = getelementptr inbounds i32, i32* %0, i32 11
  %22 = load i32, i32* %0, align 4, !tbaa !52
  %23 = load i32, i32* %7, align 4, !tbaa !52
  %24 = load i32, i32* %8, align 4, !tbaa !52
  %25 = load i32, i32* %9, align 4, !tbaa !52
  %26 = load i32, i32* %10, align 4, !tbaa !52
  %27 = load i32, i32* %11, align 4, !tbaa !52
  %28 = load i32, i32* %12, align 4, !tbaa !52
  %29 = load i32, i32* %13, align 4, !tbaa !52
  %30 = load i32, i32* %14, align 4, !tbaa !52
  %31 = load i32, i32* %15, align 4, !tbaa !52
  %32 = load i32, i32* %16, align 4, !tbaa !52
  %33 = load i32, i32* %17, align 4, !tbaa !52
  %34 = load i32, i32* %18, align 4, !tbaa !52
  %35 = load i32, i32* %19, align 4, !tbaa !52
  %36 = load i32, i32* %20, align 4, !tbaa !52
  %37 = load i32, i32* %21, align 4, !tbaa !52
  call void @llvm.dbg.value(metadata i32 0, metadata !356, metadata !DIExpression()) #7, !dbg !360
  br label %38, !dbg !361

38:                                               ; preds = %38, %3
  %39 = phi i32 [ 0, %3 ], [ %152, %38 ]
  %40 = phi i32 [ %22, %3 ], [ %110, %38 ]
  %41 = phi i32 [ %23, %3 ], [ %151, %38 ]
  %42 = phi i32 [ %24, %3 ], [ %124, %38 ]
  %43 = phi i32 [ %25, %3 ], [ %137, %38 ]
  %44 = phi i32 [ %26, %3 ], [ %122, %38 ]
  %45 = phi i32 [ %27, %3 ], [ %115, %38 ]
  %46 = phi i32 [ %28, %3 ], [ %136, %38 ]
  %47 = phi i32 [ %29, %3 ], [ %149, %38 ]
  %48 = phi i32 [ %30, %3 ], [ %134, %38 ]
  %49 = phi i32 [ %31, %3 ], [ %127, %38 ]
  %50 = phi i32 [ %32, %3 ], [ %148, %38 ]
  %51 = phi i32 [ %33, %3 ], [ %113, %38 ]
  %52 = phi i32 [ %34, %3 ], [ %146, %38 ]
  %53 = phi i32 [ %35, %3 ], [ %139, %38 ]
  %54 = phi i32 [ %36, %3 ], [ %112, %38 ]
  %55 = phi i32 [ %37, %3 ], [ %125, %38 ]
  call void @llvm.dbg.value(metadata i32 %39, metadata !356, metadata !DIExpression()) #7, !dbg !360
  call void @llvm.dbg.value(metadata i32* %0, metadata !362, metadata !DIExpression()) #7, !dbg !365
  call void @llvm.dbg.value(metadata i32* %0, metadata !368, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 4, metadata !374, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 8, metadata !375, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 12, metadata !376, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %40, metadata !377, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %41, metadata !378, metadata !DIExpression()) #7, !dbg !397
  %56 = add i32 %41, %40, !dbg !399
  call void @llvm.dbg.value(metadata i32 %42, metadata !379, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %56, metadata !380, metadata !DIExpression()) #7, !dbg !397
  %57 = xor i32 %42, %56, !dbg !400
  call void @llvm.dbg.value(metadata i32 %57, metadata !381, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %57, metadata !401, metadata !DIExpression()) #7, !dbg !407
  call void @llvm.dbg.value(metadata i32 16, metadata !406, metadata !DIExpression()) #7, !dbg !407
  %58 = call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 16) #7, !dbg !409
  call void @llvm.dbg.value(metadata i32 %43, metadata !382, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %58, metadata !383, metadata !DIExpression()) #7, !dbg !397
  %59 = add i32 %58, %43, !dbg !410
  call void @llvm.dbg.value(metadata i32 %41, metadata !384, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %59, metadata !385, metadata !DIExpression()) #7, !dbg !397
  %60 = xor i32 %59, %41, !dbg !411
  call void @llvm.dbg.value(metadata i32 %60, metadata !386, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %60, metadata !401, metadata !DIExpression()) #7, !dbg !412
  call void @llvm.dbg.value(metadata i32 12, metadata !406, metadata !DIExpression()) #7, !dbg !412
  %61 = call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 12) #7, !dbg !414
  call void @llvm.dbg.value(metadata i32 %56, metadata !387, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %61, metadata !388, metadata !DIExpression()) #7, !dbg !397
  %62 = add i32 %61, %56, !dbg !415
  call void @llvm.dbg.value(metadata i32 %58, metadata !389, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %62, metadata !390, metadata !DIExpression()) #7, !dbg !397
  %63 = xor i32 %62, %58, !dbg !416
  call void @llvm.dbg.value(metadata i32 %63, metadata !391, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %63, metadata !401, metadata !DIExpression()) #7, !dbg !417
  call void @llvm.dbg.value(metadata i32 8, metadata !406, metadata !DIExpression()) #7, !dbg !417
  %64 = call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 8) #7, !dbg !419
  call void @llvm.dbg.value(metadata i32 %59, metadata !392, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %64, metadata !393, metadata !DIExpression()) #7, !dbg !397
  %65 = add i32 %64, %59, !dbg !420
  call void @llvm.dbg.value(metadata i32 %61, metadata !394, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %65, metadata !395, metadata !DIExpression()) #7, !dbg !397
  %66 = xor i32 %65, %61, !dbg !421
  call void @llvm.dbg.value(metadata i32 %66, metadata !396, metadata !DIExpression()) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32 %66, metadata !401, metadata !DIExpression()) #7, !dbg !422
  call void @llvm.dbg.value(metadata i32 7, metadata !406, metadata !DIExpression()) #7, !dbg !422
  %67 = call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 7) #7, !dbg !424
  call void @llvm.dbg.value(metadata i32* %0, metadata !368, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 1, metadata !373, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 5, metadata !374, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 9, metadata !375, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 13, metadata !376, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %44, metadata !377, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %45, metadata !378, metadata !DIExpression()) #7, !dbg !425
  %68 = add i32 %45, %44, !dbg !427
  call void @llvm.dbg.value(metadata i32 %46, metadata !379, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %68, metadata !380, metadata !DIExpression()) #7, !dbg !425
  %69 = xor i32 %46, %68, !dbg !428
  call void @llvm.dbg.value(metadata i32 %69, metadata !381, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %69, metadata !401, metadata !DIExpression()) #7, !dbg !429
  call void @llvm.dbg.value(metadata i32 16, metadata !406, metadata !DIExpression()) #7, !dbg !429
  %70 = call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 16) #7, !dbg !431
  call void @llvm.dbg.value(metadata i32 %47, metadata !382, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %70, metadata !383, metadata !DIExpression()) #7, !dbg !425
  %71 = add i32 %70, %47, !dbg !432
  call void @llvm.dbg.value(metadata i32 %45, metadata !384, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %71, metadata !385, metadata !DIExpression()) #7, !dbg !425
  %72 = xor i32 %71, %45, !dbg !433
  call void @llvm.dbg.value(metadata i32 %72, metadata !386, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %72, metadata !401, metadata !DIExpression()) #7, !dbg !434
  call void @llvm.dbg.value(metadata i32 12, metadata !406, metadata !DIExpression()) #7, !dbg !434
  %73 = call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 12) #7, !dbg !436
  call void @llvm.dbg.value(metadata i32 %68, metadata !387, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %73, metadata !388, metadata !DIExpression()) #7, !dbg !425
  %74 = add i32 %73, %68, !dbg !437
  call void @llvm.dbg.value(metadata i32 %70, metadata !389, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %74, metadata !390, metadata !DIExpression()) #7, !dbg !425
  %75 = xor i32 %74, %70, !dbg !438
  call void @llvm.dbg.value(metadata i32 %75, metadata !391, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %75, metadata !401, metadata !DIExpression()) #7, !dbg !439
  call void @llvm.dbg.value(metadata i32 8, metadata !406, metadata !DIExpression()) #7, !dbg !439
  %76 = call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 8) #7, !dbg !441
  call void @llvm.dbg.value(metadata i32 %71, metadata !392, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %76, metadata !393, metadata !DIExpression()) #7, !dbg !425
  %77 = add i32 %76, %71, !dbg !442
  call void @llvm.dbg.value(metadata i32 %73, metadata !394, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %77, metadata !395, metadata !DIExpression()) #7, !dbg !425
  %78 = xor i32 %77, %73, !dbg !443
  call void @llvm.dbg.value(metadata i32 %78, metadata !396, metadata !DIExpression()) #7, !dbg !425
  call void @llvm.dbg.value(metadata i32 %78, metadata !401, metadata !DIExpression()) #7, !dbg !444
  call void @llvm.dbg.value(metadata i32 7, metadata !406, metadata !DIExpression()) #7, !dbg !444
  %79 = call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 7) #7, !dbg !446
  call void @llvm.dbg.value(metadata i32* %0, metadata !368, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 2, metadata !373, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 6, metadata !374, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 10, metadata !375, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 14, metadata !376, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %48, metadata !377, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %49, metadata !378, metadata !DIExpression()) #7, !dbg !447
  %80 = add i32 %49, %48, !dbg !449
  call void @llvm.dbg.value(metadata i32 %50, metadata !379, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %80, metadata !380, metadata !DIExpression()) #7, !dbg !447
  %81 = xor i32 %50, %80, !dbg !450
  call void @llvm.dbg.value(metadata i32 %81, metadata !381, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %81, metadata !401, metadata !DIExpression()) #7, !dbg !451
  call void @llvm.dbg.value(metadata i32 16, metadata !406, metadata !DIExpression()) #7, !dbg !451
  %82 = call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 16) #7, !dbg !453
  call void @llvm.dbg.value(metadata i32 %51, metadata !382, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %82, metadata !383, metadata !DIExpression()) #7, !dbg !447
  %83 = add i32 %82, %51, !dbg !454
  call void @llvm.dbg.value(metadata i32 %49, metadata !384, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %83, metadata !385, metadata !DIExpression()) #7, !dbg !447
  %84 = xor i32 %83, %49, !dbg !455
  call void @llvm.dbg.value(metadata i32 %84, metadata !386, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %84, metadata !401, metadata !DIExpression()) #7, !dbg !456
  call void @llvm.dbg.value(metadata i32 12, metadata !406, metadata !DIExpression()) #7, !dbg !456
  %85 = call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 12) #7, !dbg !458
  call void @llvm.dbg.value(metadata i32 %80, metadata !387, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %85, metadata !388, metadata !DIExpression()) #7, !dbg !447
  %86 = add i32 %85, %80, !dbg !459
  call void @llvm.dbg.value(metadata i32 %82, metadata !389, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %86, metadata !390, metadata !DIExpression()) #7, !dbg !447
  %87 = xor i32 %86, %82, !dbg !460
  call void @llvm.dbg.value(metadata i32 %87, metadata !391, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %87, metadata !401, metadata !DIExpression()) #7, !dbg !461
  call void @llvm.dbg.value(metadata i32 8, metadata !406, metadata !DIExpression()) #7, !dbg !461
  %88 = call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 8) #7, !dbg !463
  call void @llvm.dbg.value(metadata i32 %83, metadata !392, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %88, metadata !393, metadata !DIExpression()) #7, !dbg !447
  %89 = add i32 %88, %83, !dbg !464
  call void @llvm.dbg.value(metadata i32 %85, metadata !394, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %89, metadata !395, metadata !DIExpression()) #7, !dbg !447
  %90 = xor i32 %89, %85, !dbg !465
  call void @llvm.dbg.value(metadata i32 %90, metadata !396, metadata !DIExpression()) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %90, metadata !401, metadata !DIExpression()) #7, !dbg !466
  call void @llvm.dbg.value(metadata i32 7, metadata !406, metadata !DIExpression()) #7, !dbg !466
  %91 = call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 7) #7, !dbg !468
  call void @llvm.dbg.value(metadata i32* %0, metadata !368, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 3, metadata !373, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 7, metadata !374, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 11, metadata !375, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 15, metadata !376, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %52, metadata !377, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %53, metadata !378, metadata !DIExpression()) #7, !dbg !469
  %92 = add i32 %53, %52, !dbg !471
  call void @llvm.dbg.value(metadata i32 %54, metadata !379, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %92, metadata !380, metadata !DIExpression()) #7, !dbg !469
  %93 = xor i32 %54, %92, !dbg !472
  call void @llvm.dbg.value(metadata i32 %93, metadata !381, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %93, metadata !401, metadata !DIExpression()) #7, !dbg !473
  call void @llvm.dbg.value(metadata i32 16, metadata !406, metadata !DIExpression()) #7, !dbg !473
  %94 = call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 16) #7, !dbg !475
  call void @llvm.dbg.value(metadata i32 %55, metadata !382, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %94, metadata !383, metadata !DIExpression()) #7, !dbg !469
  %95 = add i32 %94, %55, !dbg !476
  call void @llvm.dbg.value(metadata i32 %53, metadata !384, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %95, metadata !385, metadata !DIExpression()) #7, !dbg !469
  %96 = xor i32 %95, %53, !dbg !477
  call void @llvm.dbg.value(metadata i32 %96, metadata !386, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %96, metadata !401, metadata !DIExpression()) #7, !dbg !478
  call void @llvm.dbg.value(metadata i32 12, metadata !406, metadata !DIExpression()) #7, !dbg !478
  %97 = call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 12) #7, !dbg !480
  call void @llvm.dbg.value(metadata i32 %92, metadata !387, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %97, metadata !388, metadata !DIExpression()) #7, !dbg !469
  %98 = add i32 %97, %92, !dbg !481
  call void @llvm.dbg.value(metadata i32 %94, metadata !389, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %98, metadata !390, metadata !DIExpression()) #7, !dbg !469
  %99 = xor i32 %98, %94, !dbg !482
  call void @llvm.dbg.value(metadata i32 %99, metadata !391, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %99, metadata !401, metadata !DIExpression()) #7, !dbg !483
  call void @llvm.dbg.value(metadata i32 8, metadata !406, metadata !DIExpression()) #7, !dbg !483
  %100 = call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 8) #7, !dbg !485
  call void @llvm.dbg.value(metadata i32 %95, metadata !392, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %100, metadata !393, metadata !DIExpression()) #7, !dbg !469
  %101 = add i32 %100, %95, !dbg !486
  call void @llvm.dbg.value(metadata i32 %97, metadata !394, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %101, metadata !395, metadata !DIExpression()) #7, !dbg !469
  %102 = xor i32 %101, %97, !dbg !487
  call void @llvm.dbg.value(metadata i32 %102, metadata !396, metadata !DIExpression()) #7, !dbg !469
  call void @llvm.dbg.value(metadata i32 %102, metadata !401, metadata !DIExpression()) #7, !dbg !488
  call void @llvm.dbg.value(metadata i32 7, metadata !406, metadata !DIExpression()) #7, !dbg !488
  %103 = call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 7) #7, !dbg !490
  call void @llvm.dbg.value(metadata i32* %0, metadata !368, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 5, metadata !374, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 10, metadata !375, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 15, metadata !376, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %62, metadata !377, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %79, metadata !378, metadata !DIExpression()) #7, !dbg !491
  %104 = add i32 %79, %62, !dbg !493
  call void @llvm.dbg.value(metadata i32 %100, metadata !379, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %104, metadata !380, metadata !DIExpression()) #7, !dbg !491
  %105 = xor i32 %100, %104, !dbg !494
  call void @llvm.dbg.value(metadata i32 %105, metadata !381, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %105, metadata !401, metadata !DIExpression()) #7, !dbg !495
  call void @llvm.dbg.value(metadata i32 16, metadata !406, metadata !DIExpression()) #7, !dbg !495
  %106 = call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 16) #7, !dbg !497
  call void @llvm.dbg.value(metadata i32 %89, metadata !382, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %106, metadata !383, metadata !DIExpression()) #7, !dbg !491
  %107 = add i32 %106, %89, !dbg !498
  call void @llvm.dbg.value(metadata i32 %79, metadata !384, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %107, metadata !385, metadata !DIExpression()) #7, !dbg !491
  %108 = xor i32 %107, %79, !dbg !499
  call void @llvm.dbg.value(metadata i32 %108, metadata !386, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %108, metadata !401, metadata !DIExpression()) #7, !dbg !500
  call void @llvm.dbg.value(metadata i32 12, metadata !406, metadata !DIExpression()) #7, !dbg !500
  %109 = call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 12) #7, !dbg !502
  call void @llvm.dbg.value(metadata i32 %104, metadata !387, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %109, metadata !388, metadata !DIExpression()) #7, !dbg !491
  %110 = add i32 %109, %104, !dbg !503
  call void @llvm.dbg.value(metadata i32 %106, metadata !389, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %110, metadata !390, metadata !DIExpression()) #7, !dbg !491
  %111 = xor i32 %110, %106, !dbg !504
  call void @llvm.dbg.value(metadata i32 %111, metadata !391, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %111, metadata !401, metadata !DIExpression()) #7, !dbg !505
  call void @llvm.dbg.value(metadata i32 8, metadata !406, metadata !DIExpression()) #7, !dbg !505
  %112 = call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 8) #7, !dbg !507
  call void @llvm.dbg.value(metadata i32 %107, metadata !392, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %112, metadata !393, metadata !DIExpression()) #7, !dbg !491
  %113 = add i32 %112, %107, !dbg !508
  call void @llvm.dbg.value(metadata i32 %109, metadata !394, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %113, metadata !395, metadata !DIExpression()) #7, !dbg !491
  %114 = xor i32 %113, %109, !dbg !509
  call void @llvm.dbg.value(metadata i32 %114, metadata !396, metadata !DIExpression()) #7, !dbg !491
  call void @llvm.dbg.value(metadata i32 %114, metadata !401, metadata !DIExpression()) #7, !dbg !510
  call void @llvm.dbg.value(metadata i32 7, metadata !406, metadata !DIExpression()) #7, !dbg !510
  %115 = call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 7) #7, !dbg !512
  call void @llvm.dbg.value(metadata i32* %0, metadata !368, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 1, metadata !373, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 6, metadata !374, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 11, metadata !375, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 12, metadata !376, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %74, metadata !377, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %91, metadata !378, metadata !DIExpression()) #7, !dbg !513
  %116 = add i32 %91, %74, !dbg !515
  call void @llvm.dbg.value(metadata i32 %64, metadata !379, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %116, metadata !380, metadata !DIExpression()) #7, !dbg !513
  %117 = xor i32 %116, %64, !dbg !516
  call void @llvm.dbg.value(metadata i32 %117, metadata !381, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %117, metadata !401, metadata !DIExpression()) #7, !dbg !517
  call void @llvm.dbg.value(metadata i32 16, metadata !406, metadata !DIExpression()) #7, !dbg !517
  %118 = call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 16) #7, !dbg !519
  call void @llvm.dbg.value(metadata i32 %101, metadata !382, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %118, metadata !383, metadata !DIExpression()) #7, !dbg !513
  %119 = add i32 %118, %101, !dbg !520
  call void @llvm.dbg.value(metadata i32 %91, metadata !384, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %119, metadata !385, metadata !DIExpression()) #7, !dbg !513
  %120 = xor i32 %119, %91, !dbg !521
  call void @llvm.dbg.value(metadata i32 %120, metadata !386, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %120, metadata !401, metadata !DIExpression()) #7, !dbg !522
  call void @llvm.dbg.value(metadata i32 12, metadata !406, metadata !DIExpression()) #7, !dbg !522
  %121 = call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 12) #7, !dbg !524
  call void @llvm.dbg.value(metadata i32 %116, metadata !387, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %121, metadata !388, metadata !DIExpression()) #7, !dbg !513
  %122 = add i32 %121, %116, !dbg !525
  call void @llvm.dbg.value(metadata i32 %118, metadata !389, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %122, metadata !390, metadata !DIExpression()) #7, !dbg !513
  %123 = xor i32 %122, %118, !dbg !526
  call void @llvm.dbg.value(metadata i32 %123, metadata !391, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %123, metadata !401, metadata !DIExpression()) #7, !dbg !527
  call void @llvm.dbg.value(metadata i32 8, metadata !406, metadata !DIExpression()) #7, !dbg !527
  %124 = call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 8) #7, !dbg !529
  call void @llvm.dbg.value(metadata i32 %119, metadata !392, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %124, metadata !393, metadata !DIExpression()) #7, !dbg !513
  %125 = add i32 %124, %119, !dbg !530
  call void @llvm.dbg.value(metadata i32 %121, metadata !394, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %125, metadata !395, metadata !DIExpression()) #7, !dbg !513
  %126 = xor i32 %125, %121, !dbg !531
  call void @llvm.dbg.value(metadata i32 %126, metadata !396, metadata !DIExpression()) #7, !dbg !513
  call void @llvm.dbg.value(metadata i32 %126, metadata !401, metadata !DIExpression()) #7, !dbg !532
  call void @llvm.dbg.value(metadata i32 7, metadata !406, metadata !DIExpression()) #7, !dbg !532
  %127 = call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 7) #7, !dbg !534
  call void @llvm.dbg.value(metadata i32* %0, metadata !368, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 2, metadata !373, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 7, metadata !374, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 8, metadata !375, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 13, metadata !376, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %86, metadata !377, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %103, metadata !378, metadata !DIExpression()) #7, !dbg !535
  %128 = add i32 %103, %86, !dbg !537
  call void @llvm.dbg.value(metadata i32 %76, metadata !379, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %128, metadata !380, metadata !DIExpression()) #7, !dbg !535
  %129 = xor i32 %128, %76, !dbg !538
  call void @llvm.dbg.value(metadata i32 %129, metadata !381, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %129, metadata !401, metadata !DIExpression()) #7, !dbg !539
  call void @llvm.dbg.value(metadata i32 16, metadata !406, metadata !DIExpression()) #7, !dbg !539
  %130 = call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 16) #7, !dbg !541
  call void @llvm.dbg.value(metadata i32 %65, metadata !382, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %130, metadata !383, metadata !DIExpression()) #7, !dbg !535
  %131 = add i32 %130, %65, !dbg !542
  call void @llvm.dbg.value(metadata i32 %103, metadata !384, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %131, metadata !385, metadata !DIExpression()) #7, !dbg !535
  %132 = xor i32 %131, %103, !dbg !543
  call void @llvm.dbg.value(metadata i32 %132, metadata !386, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %132, metadata !401, metadata !DIExpression()) #7, !dbg !544
  call void @llvm.dbg.value(metadata i32 12, metadata !406, metadata !DIExpression()) #7, !dbg !544
  %133 = call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 12) #7, !dbg !546
  call void @llvm.dbg.value(metadata i32 %128, metadata !387, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %133, metadata !388, metadata !DIExpression()) #7, !dbg !535
  %134 = add i32 %133, %128, !dbg !547
  call void @llvm.dbg.value(metadata i32 %130, metadata !389, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %134, metadata !390, metadata !DIExpression()) #7, !dbg !535
  %135 = xor i32 %134, %130, !dbg !548
  call void @llvm.dbg.value(metadata i32 %135, metadata !391, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %135, metadata !401, metadata !DIExpression()) #7, !dbg !549
  call void @llvm.dbg.value(metadata i32 8, metadata !406, metadata !DIExpression()) #7, !dbg !549
  %136 = call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 8) #7, !dbg !551
  call void @llvm.dbg.value(metadata i32 %131, metadata !392, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %136, metadata !393, metadata !DIExpression()) #7, !dbg !535
  %137 = add i32 %136, %131, !dbg !552
  call void @llvm.dbg.value(metadata i32 %133, metadata !394, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %137, metadata !395, metadata !DIExpression()) #7, !dbg !535
  %138 = xor i32 %137, %133, !dbg !553
  call void @llvm.dbg.value(metadata i32 %138, metadata !396, metadata !DIExpression()) #7, !dbg !535
  call void @llvm.dbg.value(metadata i32 %138, metadata !401, metadata !DIExpression()) #7, !dbg !554
  call void @llvm.dbg.value(metadata i32 7, metadata !406, metadata !DIExpression()) #7, !dbg !554
  %139 = call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 7) #7, !dbg !556
  call void @llvm.dbg.value(metadata i32* %0, metadata !368, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 3, metadata !373, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 4, metadata !374, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 9, metadata !375, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 14, metadata !376, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %98, metadata !377, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %67, metadata !378, metadata !DIExpression()) #7, !dbg !557
  %140 = add i32 %98, %67, !dbg !559
  call void @llvm.dbg.value(metadata i32 %88, metadata !379, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %140, metadata !380, metadata !DIExpression()) #7, !dbg !557
  %141 = xor i32 %140, %88, !dbg !560
  call void @llvm.dbg.value(metadata i32 %141, metadata !381, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %141, metadata !401, metadata !DIExpression()) #7, !dbg !561
  call void @llvm.dbg.value(metadata i32 16, metadata !406, metadata !DIExpression()) #7, !dbg !561
  %142 = call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 16) #7, !dbg !563
  call void @llvm.dbg.value(metadata i32 %77, metadata !382, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %142, metadata !383, metadata !DIExpression()) #7, !dbg !557
  %143 = add i32 %142, %77, !dbg !564
  call void @llvm.dbg.value(metadata i32 %67, metadata !384, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %143, metadata !385, metadata !DIExpression()) #7, !dbg !557
  %144 = xor i32 %143, %67, !dbg !565
  call void @llvm.dbg.value(metadata i32 %144, metadata !386, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %144, metadata !401, metadata !DIExpression()) #7, !dbg !566
  call void @llvm.dbg.value(metadata i32 12, metadata !406, metadata !DIExpression()) #7, !dbg !566
  %145 = call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 12) #7, !dbg !568
  call void @llvm.dbg.value(metadata i32 %140, metadata !387, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %145, metadata !388, metadata !DIExpression()) #7, !dbg !557
  %146 = add i32 %145, %140, !dbg !569
  call void @llvm.dbg.value(metadata i32 %142, metadata !389, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %146, metadata !390, metadata !DIExpression()) #7, !dbg !557
  %147 = xor i32 %146, %142, !dbg !570
  call void @llvm.dbg.value(metadata i32 %147, metadata !391, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %147, metadata !401, metadata !DIExpression()) #7, !dbg !571
  call void @llvm.dbg.value(metadata i32 8, metadata !406, metadata !DIExpression()) #7, !dbg !571
  %148 = call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 8) #7, !dbg !573
  call void @llvm.dbg.value(metadata i32 %143, metadata !392, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %148, metadata !393, metadata !DIExpression()) #7, !dbg !557
  %149 = add i32 %148, %143, !dbg !574
  call void @llvm.dbg.value(metadata i32 %145, metadata !394, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %149, metadata !395, metadata !DIExpression()) #7, !dbg !557
  %150 = xor i32 %149, %145, !dbg !575
  call void @llvm.dbg.value(metadata i32 %150, metadata !396, metadata !DIExpression()) #7, !dbg !557
  call void @llvm.dbg.value(metadata i32 %150, metadata !401, metadata !DIExpression()) #7, !dbg !576
  call void @llvm.dbg.value(metadata i32 7, metadata !406, metadata !DIExpression()) #7, !dbg !576
  %151 = call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 7) #7, !dbg !578
  %152 = add nuw nsw i32 %39, 1, !dbg !579
  call void @llvm.dbg.value(metadata i32 %152, metadata !356, metadata !DIExpression()) #7, !dbg !360
  %153 = icmp eq i32 %152, 10, !dbg !580
  br i1 %153, label %154, label %38, !dbg !361, !llvm.loop !581

154:                                              ; preds = %38
  store i32 %110, i32* %0, align 4, !dbg !365, !tbaa !52
  store i32 %151, i32* %7, align 4, !dbg !365, !tbaa !52
  store i32 %124, i32* %8, align 4, !dbg !365, !tbaa !52
  store i32 %137, i32* %9, align 4, !dbg !365, !tbaa !52
  store i32 %122, i32* %10, align 4, !dbg !365, !tbaa !52
  store i32 %115, i32* %11, align 4, !dbg !365, !tbaa !52
  store i32 %136, i32* %12, align 4, !dbg !365, !tbaa !52
  store i32 %149, i32* %13, align 4, !dbg !365, !tbaa !52
  store i32 %134, i32* %14, align 4, !dbg !365, !tbaa !52
  store i32 %127, i32* %15, align 4, !dbg !365, !tbaa !52
  store i32 %148, i32* %16, align 4, !dbg !365, !tbaa !52
  store i32 %113, i32* %17, align 4, !dbg !365, !tbaa !52
  store i32 %146, i32* %18, align 4, !dbg !365, !tbaa !52
  store i32 %139, i32* %19, align 4, !dbg !365, !tbaa !52
  store i32 %112, i32* %20, align 4, !dbg !365, !tbaa !52
  store i32 %125, i32* %21, align 4, !dbg !365, !tbaa !52
  call void @llvm.dbg.value(metadata i32* %0, metadata !583, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32* %1, metadata !586, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 0, metadata !587, metadata !DIExpression()), !dbg !595
  br label %155, !dbg !596

155:                                              ; preds = %155, %154
  %156 = phi i32 [ 0, %154 ], [ %162, %155 ]
  call void @llvm.dbg.value(metadata i32 %156, metadata !587, metadata !DIExpression()), !dbg !595
  %157 = getelementptr inbounds i32, i32* %0, i32 %156, !dbg !597
  %158 = load i32, i32* %157, align 4, !dbg !597, !tbaa !52
  call void @llvm.dbg.value(metadata i32 %158, metadata !589, metadata !DIExpression()), !dbg !598
  %159 = getelementptr inbounds i32, i32* %1, i32 %156, !dbg !599
  %160 = load i32, i32* %159, align 4, !dbg !599, !tbaa !52
  call void @llvm.dbg.value(metadata i32 %160, metadata !592, metadata !DIExpression()), !dbg !598
  %161 = add i32 %160, %158, !dbg !600
  store i32 %161, i32* %157, align 4, !dbg !601, !tbaa !52
  %162 = add nuw nsw i32 %156, 1, !dbg !602
  call void @llvm.dbg.value(metadata i32 %162, metadata !587, metadata !DIExpression()), !dbg !595
  %163 = icmp eq i32 %162, 16, !dbg !603
  br i1 %163, label %164, label %155, !dbg !596, !llvm.loop !604

164:                                              ; preds = %155
  ret void, !dbg !606
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { inlinehint nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!38 = !DILocalVariable(name: "st", arg: 1, scope: !39, file: !1, line: 136, type: !33)
!39 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_init", scope: !1, file: !1, line: 136, type: !40, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !33, !19, !19}
!42 = !{!38, !43, !44, !45, !46, !47, !48}
!43 = !DILocalVariable(name: "k", arg: 2, scope: !39, file: !1, line: 136, type: !19)
!44 = !DILocalVariable(name: "n1", arg: 3, scope: !39, file: !1, line: 136, type: !19)
!45 = !DILocalVariable(name: "stcst", scope: !39, file: !1, line: 138, type: !33)
!46 = !DILocalVariable(name: "stk", scope: !39, file: !1, line: 139, type: !33)
!47 = !DILocalVariable(name: "stc", scope: !39, file: !1, line: 140, type: !33)
!48 = !DILocalVariable(name: "stn", scope: !39, file: !1, line: 141, type: !33)
!49 = !DILocation(line: 0, scope: !39, inlinedAt: !50)
!50 = distinct !DILocation(line: 246, column: 3, scope: !16)
!51 = !DILocation(line: 142, column: 13, scope: !39, inlinedAt: !50)
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 143, column: 3, scope: !39, inlinedAt: !50)
!57 = !DILocation(line: 143, column: 13, scope: !39, inlinedAt: !50)
!58 = !DILocation(line: 144, column: 3, scope: !39, inlinedAt: !50)
!59 = !DILocation(line: 144, column: 13, scope: !39, inlinedAt: !50)
!60 = !DILocation(line: 145, column: 3, scope: !39, inlinedAt: !50)
!61 = !DILocation(line: 145, column: 13, scope: !39, inlinedAt: !50)
!62 = !DILocalVariable(name: "output", arg: 1, scope: !63, file: !1, line: 28, type: !33)
!63 = distinct !DISubprogram(name: "Hacl_Lib_LoadStore32_uint32s_from_le_bytes", scope: !1, file: !1, line: 28, type: !64, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !33, !19, !3}
!66 = !{!62, !67, !68, !69, !71, !74}
!67 = !DILocalVariable(name: "input", arg: 2, scope: !63, file: !1, line: 28, type: !19)
!68 = !DILocalVariable(name: "len", arg: 3, scope: !63, file: !1, line: 28, type: !3)
!69 = !DILocalVariable(name: "i", scope: !70, file: !1, line: 30, type: !3)
!70 = distinct !DILexicalBlock(scope: !63, file: !1, line: 30, column: 3)
!71 = !DILocalVariable(name: "x0", scope: !72, file: !1, line: 32, type: !19)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 31, column: 3)
!73 = distinct !DILexicalBlock(scope: !70, file: !1, line: 30, column: 3)
!74 = !DILocalVariable(name: "inputi", scope: !72, file: !1, line: 33, type: !3)
!75 = !DILocation(line: 0, scope: !63, inlinedAt: !76)
!76 = distinct !DILocation(line: 146, column: 3, scope: !39, inlinedAt: !50)
!77 = !DILocation(line: 0, scope: !70, inlinedAt: !76)
!78 = !DILocation(line: 34, column: 15, scope: !72, inlinedAt: !76)
!79 = !DILocation(line: 0, scope: !72, inlinedAt: !76)
!80 = !DILocation(line: 140, column: 22, scope: !39, inlinedAt: !50)
!81 = !DILocation(line: 147, column: 11, scope: !39, inlinedAt: !50)
!82 = !DILocation(line: 0, scope: !63, inlinedAt: !83)
!83 = distinct !DILocation(line: 148, column: 3, scope: !39, inlinedAt: !50)
!84 = !DILocation(line: 0, scope: !70, inlinedAt: !83)
!85 = !DILocation(line: 34, column: 15, scope: !72, inlinedAt: !83)
!86 = !DILocation(line: 0, scope: !72, inlinedAt: !83)
!87 = !DILocation(line: 0, scope: !88, inlinedAt: !96)
!88 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_block", scope: !1, file: !1, line: 129, type: !89, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !19, !33, !3}
!91 = !{!92, !93, !94, !95}
!92 = !DILocalVariable(name: "stream_block", arg: 1, scope: !88, file: !1, line: 129, type: !19)
!93 = !DILocalVariable(name: "st", arg: 2, scope: !88, file: !1, line: 129, type: !33)
!94 = !DILocalVariable(name: "ctr", arg: 3, scope: !88, file: !1, line: 129, type: !3)
!95 = !DILocalVariable(name: "st_", scope: !88, file: !1, line: 131, type: !29)
!96 = distinct !DILocation(line: 247, column: 3, scope: !16)
!97 = !DILocation(line: 131, column: 3, scope: !88, inlinedAt: !96)
!98 = !DILocation(line: 131, column: 12, scope: !88, inlinedAt: !96)
!99 = !DILocation(line: 132, column: 36, scope: !88, inlinedAt: !96)
!100 = !DILocation(line: 132, column: 3, scope: !88, inlinedAt: !96)
!101 = !DILocalVariable(name: "output", arg: 1, scope: !102, file: !1, line: 39, type: !19)
!102 = distinct !DISubprogram(name: "Hacl_Lib_LoadStore32_uint32s_to_le_bytes", scope: !1, file: !1, line: 39, type: !89, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!103 = !{!101, !104, !105, !106, !108, !111}
!104 = !DILocalVariable(name: "input", arg: 2, scope: !102, file: !1, line: 39, type: !33)
!105 = !DILocalVariable(name: "len", arg: 3, scope: !102, file: !1, line: 39, type: !3)
!106 = !DILocalVariable(name: "i", scope: !107, file: !1, line: 41, type: !3)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 41, column: 3)
!108 = !DILocalVariable(name: "hd1", scope: !109, file: !1, line: 43, type: !3)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 42, column: 3)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 41, column: 3)
!111 = !DILocalVariable(name: "x0", scope: !109, file: !1, line: 44, type: !19)
!112 = !DILocation(line: 0, scope: !102, inlinedAt: !113)
!113 = distinct !DILocation(line: 133, column: 3, scope: !88, inlinedAt: !96)
!114 = !DILocation(line: 0, scope: !107, inlinedAt: !113)
!115 = !DILocation(line: 355, column: 54, scope: !116, inlinedAt: !123)
!116 = distinct !DISubprogram(name: "store32", scope: !117, file: !117, line: 355, type: !118, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!117 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!118 = !DISubroutineType(types: !119)
!119 = !{null, !19, !3}
!120 = !{!121, !122}
!121 = !DILocalVariable(name: "b", arg: 1, scope: !116, file: !117, line: 355, type: !19)
!122 = !DILocalVariable(name: "i", arg: 2, scope: !116, file: !117, line: 355, type: !3)
!123 = distinct !DILocation(line: 45, column: 5, scope: !109, inlinedAt: !113)
!124 = !DILocation(line: 0, scope: !109, inlinedAt: !113)
!125 = !DILocation(line: 0, scope: !116, inlinedAt: !123)
!126 = !DILocation(line: 134, column: 1, scope: !88, inlinedAt: !96)
!127 = !DILocation(line: 248, column: 1, scope: !16)
!128 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20", scope: !1, file: !1, line: 272, type: !129, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !19, !19, !3, !19, !19, !3}
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DILocalVariable(name: "output", arg: 1, scope: !128, file: !1, line: 273, type: !19)
!133 = !DILocalVariable(name: "plain", arg: 2, scope: !128, file: !1, line: 274, type: !19)
!134 = !DILocalVariable(name: "len", arg: 3, scope: !128, file: !1, line: 275, type: !3)
!135 = !DILocalVariable(name: "k", arg: 4, scope: !128, file: !1, line: 276, type: !19)
!136 = !DILocalVariable(name: "n1", arg: 5, scope: !128, file: !1, line: 277, type: !19)
!137 = !DILocalVariable(name: "ctr", arg: 6, scope: !128, file: !1, line: 278, type: !3)
!138 = !DILocation(line: 0, scope: !128)
!139 = !DILocalVariable(name: "output", arg: 1, scope: !140, file: !1, line: 228, type: !19)
!140 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20", scope: !1, file: !1, line: 227, type: !129, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!141 = !{!139, !142, !143, !144, !145, !146, !147, !148}
!142 = !DILocalVariable(name: "plain", arg: 2, scope: !140, file: !1, line: 229, type: !19)
!143 = !DILocalVariable(name: "len", arg: 3, scope: !140, file: !1, line: 230, type: !3)
!144 = !DILocalVariable(name: "k", arg: 4, scope: !140, file: !1, line: 231, type: !19)
!145 = !DILocalVariable(name: "n1", arg: 5, scope: !140, file: !1, line: 232, type: !19)
!146 = !DILocalVariable(name: "ctr", arg: 6, scope: !140, file: !1, line: 233, type: !3)
!147 = !DILocalVariable(name: "buf", scope: !140, file: !1, line: 236, type: !29)
!148 = !DILocalVariable(name: "st", scope: !140, file: !1, line: 237, type: !33)
!149 = !DILocation(line: 0, scope: !140, inlinedAt: !150)
!150 = distinct !DILocation(line: 281, column: 3, scope: !128)
!151 = !DILocation(line: 236, column: 3, scope: !140, inlinedAt: !150)
!152 = !DILocation(line: 236, column: 12, scope: !140, inlinedAt: !150)
!153 = !DILocation(line: 237, column: 18, scope: !140, inlinedAt: !150)
!154 = !DILocation(line: 0, scope: !39, inlinedAt: !155)
!155 = distinct !DILocation(line: 238, column: 3, scope: !140, inlinedAt: !150)
!156 = !DILocation(line: 142, column: 13, scope: !39, inlinedAt: !155)
!157 = !DILocation(line: 143, column: 3, scope: !39, inlinedAt: !155)
!158 = !DILocation(line: 143, column: 13, scope: !39, inlinedAt: !155)
!159 = !DILocation(line: 144, column: 3, scope: !39, inlinedAt: !155)
!160 = !DILocation(line: 144, column: 13, scope: !39, inlinedAt: !155)
!161 = !DILocation(line: 145, column: 3, scope: !39, inlinedAt: !155)
!162 = !DILocation(line: 145, column: 13, scope: !39, inlinedAt: !155)
!163 = !DILocation(line: 0, scope: !63, inlinedAt: !164)
!164 = distinct !DILocation(line: 146, column: 3, scope: !39, inlinedAt: !155)
!165 = !DILocation(line: 0, scope: !70, inlinedAt: !164)
!166 = !DILocation(line: 34, column: 15, scope: !72, inlinedAt: !164)
!167 = !DILocation(line: 0, scope: !72, inlinedAt: !164)
!168 = !DILocation(line: 140, column: 22, scope: !39, inlinedAt: !155)
!169 = !DILocation(line: 147, column: 11, scope: !39, inlinedAt: !155)
!170 = !DILocation(line: 0, scope: !63, inlinedAt: !171)
!171 = distinct !DILocation(line: 148, column: 3, scope: !39, inlinedAt: !155)
!172 = !DILocation(line: 0, scope: !70, inlinedAt: !171)
!173 = !DILocation(line: 34, column: 15, scope: !72, inlinedAt: !171)
!174 = !DILocation(line: 0, scope: !72, inlinedAt: !171)
!175 = !DILocalVariable(name: "output", arg: 1, scope: !176, file: !1, line: 208, type: !19)
!176 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_counter_mode", scope: !1, file: !1, line: 207, type: !177, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !19, !19, !3, !33, !3}
!179 = !{!175, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!180 = !DILocalVariable(name: "plain", arg: 2, scope: !176, file: !1, line: 209, type: !19)
!181 = !DILocalVariable(name: "len", arg: 3, scope: !176, file: !1, line: 210, type: !3)
!182 = !DILocalVariable(name: "st", arg: 4, scope: !176, file: !1, line: 211, type: !33)
!183 = !DILocalVariable(name: "ctr", arg: 5, scope: !176, file: !1, line: 212, type: !3)
!184 = !DILocalVariable(name: "blocks_len", scope: !176, file: !1, line: 215, type: !3)
!185 = !DILocalVariable(name: "part_len", scope: !176, file: !1, line: 216, type: !3)
!186 = !DILocalVariable(name: "output_", scope: !176, file: !1, line: 217, type: !19)
!187 = !DILocalVariable(name: "plain_", scope: !176, file: !1, line: 218, type: !19)
!188 = !DILocalVariable(name: "output__", scope: !176, file: !1, line: 219, type: !19)
!189 = !DILocalVariable(name: "plain__", scope: !176, file: !1, line: 220, type: !19)
!190 = !DILocation(line: 0, scope: !176, inlinedAt: !191)
!191 = distinct !DILocation(line: 239, column: 3, scope: !140, inlinedAt: !150)
!192 = !DILocation(line: 215, column: 29, scope: !176, inlinedAt: !191)
!193 = !DILocation(line: 216, column: 27, scope: !176, inlinedAt: !191)
!194 = !DILocation(line: 219, column: 46, scope: !176, inlinedAt: !191)
!195 = !DILocalVariable(name: "output", arg: 1, scope: !196, file: !1, line: 191, type: !19)
!196 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_counter_mode_blocks", scope: !1, file: !1, line: 190, type: !177, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !197)
!197 = !{!195, !198, !199, !200, !201, !202, !204, !207}
!198 = !DILocalVariable(name: "plain", arg: 2, scope: !196, file: !1, line: 192, type: !19)
!199 = !DILocalVariable(name: "num_blocks", arg: 3, scope: !196, file: !1, line: 193, type: !3)
!200 = !DILocalVariable(name: "st", arg: 4, scope: !196, file: !1, line: 194, type: !33)
!201 = !DILocalVariable(name: "ctr", arg: 5, scope: !196, file: !1, line: 195, type: !3)
!202 = !DILocalVariable(name: "i", scope: !203, file: !1, line: 198, type: !3)
!203 = distinct !DILexicalBlock(scope: !196, file: !1, line: 198, column: 3)
!204 = !DILocalVariable(name: "b", scope: !205, file: !1, line: 200, type: !19)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 199, column: 3)
!206 = distinct !DILexicalBlock(scope: !203, file: !1, line: 198, column: 3)
!207 = !DILocalVariable(name: "o", scope: !205, file: !1, line: 201, type: !19)
!208 = !DILocation(line: 0, scope: !196, inlinedAt: !209)
!209 = distinct !DILocation(line: 221, column: 3, scope: !176, inlinedAt: !191)
!210 = !DILocation(line: 0, scope: !203, inlinedAt: !209)
!211 = !DILocation(line: 198, column: 37, scope: !206, inlinedAt: !209)
!212 = !DILocation(line: 198, column: 3, scope: !203, inlinedAt: !209)
!213 = !DILocation(line: 200, column: 40, scope: !205, inlinedAt: !209)
!214 = !DILocation(line: 200, column: 24, scope: !205, inlinedAt: !209)
!215 = !DILocation(line: 0, scope: !205, inlinedAt: !209)
!216 = !DILocation(line: 202, column: 45, scope: !205, inlinedAt: !209)
!217 = !DILocalVariable(name: "plain", arg: 2, scope: !218, file: !1, line: 152, type: !19)
!218 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_update", scope: !1, file: !1, line: 152, type: !219, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !19, !19, !33, !3}
!221 = !{!222, !217, !223, !224, !225, !229, !230, !231, !232, !234, !237}
!222 = !DILocalVariable(name: "output", arg: 1, scope: !218, file: !1, line: 152, type: !19)
!223 = !DILocalVariable(name: "st", arg: 3, scope: !218, file: !1, line: 152, type: !33)
!224 = !DILocalVariable(name: "ctr", arg: 4, scope: !218, file: !1, line: 152, type: !3)
!225 = !DILocalVariable(name: "b", scope: !218, file: !1, line: 154, type: !226)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 1536, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 48)
!229 = !DILocalVariable(name: "k", scope: !218, file: !1, line: 155, type: !33)
!230 = !DILocalVariable(name: "ib", scope: !218, file: !1, line: 156, type: !33)
!231 = !DILocalVariable(name: "ob", scope: !218, file: !1, line: 157, type: !33)
!232 = !DILocalVariable(name: "i", scope: !233, file: !1, line: 160, type: !3)
!233 = distinct !DILexicalBlock(scope: !218, file: !1, line: 160, column: 3)
!234 = !DILocalVariable(name: "xi", scope: !235, file: !1, line: 162, type: !3)
!235 = distinct !DILexicalBlock(scope: !236, file: !1, line: 161, column: 3)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 160, column: 3)
!237 = !DILocalVariable(name: "yi", scope: !235, file: !1, line: 163, type: !3)
!238 = !DILocation(line: 0, scope: !218, inlinedAt: !239)
!239 = distinct !DILocation(line: 202, column: 5, scope: !205, inlinedAt: !209)
!240 = !DILocation(line: 154, column: 3, scope: !218, inlinedAt: !239)
!241 = !DILocation(line: 154, column: 12, scope: !218, inlinedAt: !239)
!242 = !DILocation(line: 158, column: 3, scope: !218, inlinedAt: !239)
!243 = !DILocation(line: 0, scope: !63, inlinedAt: !244)
!244 = distinct !DILocation(line: 159, column: 3, scope: !218, inlinedAt: !239)
!245 = !DILocation(line: 0, scope: !70, inlinedAt: !244)
!246 = !DILocation(line: 34, column: 15, scope: !72, inlinedAt: !244)
!247 = !DILocation(line: 0, scope: !72, inlinedAt: !244)
!248 = !DILocation(line: 160, column: 3, scope: !233, inlinedAt: !239)
!249 = !DILocation(line: 0, scope: !233, inlinedAt: !239)
!250 = !DILocation(line: 162, column: 19, scope: !235, inlinedAt: !239)
!251 = !DILocation(line: 0, scope: !235, inlinedAt: !239)
!252 = !DILocation(line: 163, column: 19, scope: !235, inlinedAt: !239)
!253 = !DILocation(line: 164, column: 16, scope: !235, inlinedAt: !239)
!254 = !DILocation(line: 164, column: 5, scope: !235, inlinedAt: !239)
!255 = !DILocation(line: 164, column: 11, scope: !235, inlinedAt: !239)
!256 = !DILocation(line: 160, column: 60, scope: !236, inlinedAt: !239)
!257 = !DILocation(line: 160, column: 37, scope: !236, inlinedAt: !239)
!258 = distinct !{!258, !248, !259, !260, !261}
!259 = !DILocation(line: 165, column: 3, scope: !233, inlinedAt: !239)
!260 = !{!"llvm.loop.mustprogress"}
!261 = !{!"llvm.loop.unroll.disable"}
!262 = !DILocation(line: 201, column: 25, scope: !205, inlinedAt: !209)
!263 = !DILocation(line: 355, column: 54, scope: !116, inlinedAt: !264)
!264 = distinct !DILocation(line: 45, column: 5, scope: !109, inlinedAt: !265)
!265 = distinct !DILocation(line: 166, column: 3, scope: !218, inlinedAt: !239)
!266 = !DILocation(line: 0, scope: !109, inlinedAt: !265)
!267 = !DILocation(line: 0, scope: !116, inlinedAt: !264)
!268 = !DILocation(line: 0, scope: !107, inlinedAt: !265)
!269 = !DILocation(line: 167, column: 1, scope: !218, inlinedAt: !239)
!270 = !DILocation(line: 198, column: 57, scope: !206, inlinedAt: !209)
!271 = distinct !{!271, !212, !272, !260, !261}
!272 = !DILocation(line: 203, column: 3, scope: !203, inlinedAt: !209)
!273 = !DILocation(line: 222, column: 16, scope: !274, inlinedAt: !191)
!274 = distinct !DILexicalBlock(scope: !176, file: !1, line: 222, column: 7)
!275 = !DILocation(line: 222, column: 7, scope: !176, inlinedAt: !191)
!276 = !DILocation(line: 220, column: 28, scope: !176, inlinedAt: !191)
!277 = !DILocation(line: 219, column: 30, scope: !176, inlinedAt: !191)
!278 = !DILocation(line: 223, column: 73, scope: !274, inlinedAt: !191)
!279 = !DILocalVariable(name: "output", arg: 1, scope: !280, file: !1, line: 171, type: !19)
!280 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_update_last", scope: !1, file: !1, line: 170, type: !177, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!281 = !{!279, !282, !283, !284, !285, !286, !290, !291, !293, !296}
!282 = !DILocalVariable(name: "plain", arg: 2, scope: !280, file: !1, line: 172, type: !19)
!283 = !DILocalVariable(name: "len", arg: 3, scope: !280, file: !1, line: 173, type: !3)
!284 = !DILocalVariable(name: "st", arg: 4, scope: !280, file: !1, line: 174, type: !33)
!285 = !DILocalVariable(name: "ctr", arg: 5, scope: !280, file: !1, line: 175, type: !3)
!286 = !DILocalVariable(name: "block", scope: !280, file: !1, line: 178, type: !287)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 512, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 64)
!290 = !DILocalVariable(name: "mask", scope: !280, file: !1, line: 180, type: !19)
!291 = !DILocalVariable(name: "i", scope: !292, file: !1, line: 181, type: !3)
!292 = distinct !DILexicalBlock(scope: !280, file: !1, line: 181, column: 3)
!293 = !DILocalVariable(name: "xi", scope: !294, file: !1, line: 183, type: !20)
!294 = distinct !DILexicalBlock(scope: !295, file: !1, line: 182, column: 3)
!295 = distinct !DILexicalBlock(scope: !292, file: !1, line: 181, column: 3)
!296 = !DILocalVariable(name: "yi", scope: !294, file: !1, line: 184, type: !20)
!297 = !DILocation(line: 0, scope: !280, inlinedAt: !298)
!298 = distinct !DILocation(line: 223, column: 5, scope: !274, inlinedAt: !191)
!299 = !DILocation(line: 178, column: 3, scope: !280, inlinedAt: !298)
!300 = !DILocation(line: 178, column: 11, scope: !280, inlinedAt: !298)
!301 = !DILocation(line: 0, scope: !88, inlinedAt: !302)
!302 = distinct !DILocation(line: 179, column: 3, scope: !280, inlinedAt: !298)
!303 = !DILocation(line: 131, column: 3, scope: !88, inlinedAt: !302)
!304 = !DILocation(line: 131, column: 12, scope: !88, inlinedAt: !302)
!305 = !DILocation(line: 132, column: 36, scope: !88, inlinedAt: !302)
!306 = !DILocation(line: 132, column: 3, scope: !88, inlinedAt: !302)
!307 = !DILocation(line: 0, scope: !102, inlinedAt: !308)
!308 = distinct !DILocation(line: 133, column: 3, scope: !88, inlinedAt: !302)
!309 = !DILocation(line: 0, scope: !107, inlinedAt: !308)
!310 = !DILocation(line: 355, column: 54, scope: !116, inlinedAt: !311)
!311 = distinct !DILocation(line: 45, column: 5, scope: !109, inlinedAt: !308)
!312 = !DILocation(line: 0, scope: !109, inlinedAt: !308)
!313 = !DILocation(line: 0, scope: !116, inlinedAt: !311)
!314 = !DILocation(line: 134, column: 1, scope: !88, inlinedAt: !302)
!315 = !DILocation(line: 0, scope: !292, inlinedAt: !298)
!316 = !DILocation(line: 181, column: 3, scope: !292, inlinedAt: !298)
!317 = !DILocation(line: 183, column: 18, scope: !294, inlinedAt: !298)
!318 = !{!54, !54, i64 0}
!319 = !DILocation(line: 0, scope: !294, inlinedAt: !298)
!320 = !DILocation(line: 184, column: 18, scope: !294, inlinedAt: !298)
!321 = !DILocation(line: 185, column: 20, scope: !294, inlinedAt: !298)
!322 = !DILocation(line: 185, column: 5, scope: !294, inlinedAt: !298)
!323 = !DILocation(line: 185, column: 15, scope: !294, inlinedAt: !298)
!324 = !DILocation(line: 181, column: 50, scope: !295, inlinedAt: !298)
!325 = !DILocation(line: 181, column: 37, scope: !295, inlinedAt: !298)
!326 = distinct !{!326, !316, !327, !260, !261}
!327 = !DILocation(line: 186, column: 3, scope: !292, inlinedAt: !298)
!328 = !DILocation(line: 187, column: 1, scope: !280, inlinedAt: !298)
!329 = !DILocation(line: 223, column: 5, scope: !274, inlinedAt: !191)
!330 = !DILocation(line: 240, column: 1, scope: !140, inlinedAt: !150)
!331 = !DILocation(line: 282, column: 1, scope: !128)
!332 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_core", scope: !1, file: !1, line: 120, type: !333, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !33, !33, !3}
!335 = !{!336, !337, !338}
!336 = !DILocalVariable(name: "k", arg: 1, scope: !332, file: !1, line: 120, type: !33)
!337 = !DILocalVariable(name: "st", arg: 2, scope: !332, file: !1, line: 120, type: !33)
!338 = !DILocalVariable(name: "ctr", arg: 3, scope: !332, file: !1, line: 120, type: !3)
!339 = !DILocation(line: 0, scope: !332)
!340 = !DILocation(line: 122, column: 3, scope: !332)
!341 = !DILocation(line: 122, column: 11, scope: !332)
!342 = !DILocalVariable(name: "st", arg: 1, scope: !343, file: !1, line: 115, type: !33)
!343 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_copy_state", scope: !1, file: !1, line: 115, type: !344, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !33, !33}
!346 = !{!342, !347}
!347 = !DILocalVariable(name: "st_", arg: 2, scope: !343, file: !1, line: 115, type: !33)
!348 = !DILocation(line: 0, scope: !343, inlinedAt: !349)
!349 = distinct !DILocation(line: 123, column: 3, scope: !332)
!350 = !DILocation(line: 117, column: 3, scope: !343, inlinedAt: !349)
!351 = !DILocalVariable(name: "st", arg: 1, scope: !352, file: !1, line: 99, type: !33)
!352 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_rounds", scope: !1, file: !1, line: 99, type: !353, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !33}
!355 = !{!351, !356}
!356 = !DILocalVariable(name: "i", scope: !357, file: !1, line: 101, type: !3)
!357 = distinct !DILexicalBlock(scope: !352, file: !1, line: 101, column: 3)
!358 = !DILocation(line: 0, scope: !352, inlinedAt: !359)
!359 = distinct !DILocation(line: 124, column: 3, scope: !332)
!360 = !DILocation(line: 0, scope: !357, inlinedAt: !359)
!361 = !DILocation(line: 101, column: 3, scope: !357, inlinedAt: !359)
!362 = !DILocalVariable(name: "st", arg: 1, scope: !363, file: !1, line: 87, type: !33)
!363 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_double_round", scope: !1, file: !1, line: 87, type: !353, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !364)
!364 = !{!362}
!365 = !DILocation(line: 0, scope: !363, inlinedAt: !366)
!366 = distinct !DILocation(line: 102, column: 5, scope: !367, inlinedAt: !359)
!367 = distinct !DILexicalBlock(scope: !357, file: !1, line: 101, column: 3)
!368 = !DILocalVariable(name: "st", arg: 1, scope: !369, file: !1, line: 55, type: !33)
!369 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_quarter_round", scope: !1, file: !1, line: 55, type: !370, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !33, !3, !3, !3, !3}
!372 = !{!368, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!373 = !DILocalVariable(name: "a", arg: 2, scope: !369, file: !1, line: 55, type: !3)
!374 = !DILocalVariable(name: "b", arg: 3, scope: !369, file: !1, line: 55, type: !3)
!375 = !DILocalVariable(name: "c", arg: 4, scope: !369, file: !1, line: 55, type: !3)
!376 = !DILocalVariable(name: "d", arg: 5, scope: !369, file: !1, line: 55, type: !3)
!377 = !DILocalVariable(name: "sa", scope: !369, file: !1, line: 57, type: !3)
!378 = !DILocalVariable(name: "sb0", scope: !369, file: !1, line: 58, type: !3)
!379 = !DILocalVariable(name: "sd", scope: !369, file: !1, line: 60, type: !3)
!380 = !DILocalVariable(name: "sa10", scope: !369, file: !1, line: 61, type: !3)
!381 = !DILocalVariable(name: "sda", scope: !369, file: !1, line: 62, type: !3)
!382 = !DILocalVariable(name: "sa0", scope: !369, file: !1, line: 64, type: !3)
!383 = !DILocalVariable(name: "sb1", scope: !369, file: !1, line: 65, type: !3)
!384 = !DILocalVariable(name: "sd0", scope: !369, file: !1, line: 67, type: !3)
!385 = !DILocalVariable(name: "sa11", scope: !369, file: !1, line: 68, type: !3)
!386 = !DILocalVariable(name: "sda0", scope: !369, file: !1, line: 69, type: !3)
!387 = !DILocalVariable(name: "sa2", scope: !369, file: !1, line: 71, type: !3)
!388 = !DILocalVariable(name: "sb2", scope: !369, file: !1, line: 72, type: !3)
!389 = !DILocalVariable(name: "sd1", scope: !369, file: !1, line: 74, type: !3)
!390 = !DILocalVariable(name: "sa12", scope: !369, file: !1, line: 75, type: !3)
!391 = !DILocalVariable(name: "sda1", scope: !369, file: !1, line: 76, type: !3)
!392 = !DILocalVariable(name: "sa3", scope: !369, file: !1, line: 78, type: !3)
!393 = !DILocalVariable(name: "sb", scope: !369, file: !1, line: 79, type: !3)
!394 = !DILocalVariable(name: "sd2", scope: !369, file: !1, line: 81, type: !3)
!395 = !DILocalVariable(name: "sa1", scope: !369, file: !1, line: 82, type: !3)
!396 = !DILocalVariable(name: "sda2", scope: !369, file: !1, line: 83, type: !3)
!397 = !DILocation(line: 0, scope: !369, inlinedAt: !398)
!398 = distinct !DILocation(line: 89, column: 3, scope: !363, inlinedAt: !366)
!399 = !DILocation(line: 59, column: 14, scope: !369, inlinedAt: !398)
!400 = !DILocation(line: 62, column: 21, scope: !369, inlinedAt: !398)
!401 = !DILocalVariable(name: "a", arg: 1, scope: !402, file: !1, line: 49, type: !3)
!402 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_rotate_left", scope: !1, file: !1, line: 49, type: !403, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!3, !3, !3}
!405 = !{!401, !406}
!406 = !DILocalVariable(name: "s", arg: 2, scope: !402, file: !1, line: 49, type: !3)
!407 = !DILocation(line: 0, scope: !402, inlinedAt: !408)
!408 = distinct !DILocation(line: 63, column: 11, scope: !369, inlinedAt: !398)
!409 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !408)
!410 = !DILocation(line: 66, column: 15, scope: !369, inlinedAt: !398)
!411 = !DILocation(line: 69, column: 23, scope: !369, inlinedAt: !398)
!412 = !DILocation(line: 0, scope: !402, inlinedAt: !413)
!413 = distinct !DILocation(line: 70, column: 11, scope: !369, inlinedAt: !398)
!414 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !413)
!415 = !DILocation(line: 73, column: 15, scope: !369, inlinedAt: !398)
!416 = !DILocation(line: 76, column: 23, scope: !369, inlinedAt: !398)
!417 = !DILocation(line: 0, scope: !402, inlinedAt: !418)
!418 = distinct !DILocation(line: 77, column: 11, scope: !369, inlinedAt: !398)
!419 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !418)
!420 = !DILocation(line: 80, column: 15, scope: !369, inlinedAt: !398)
!421 = !DILocation(line: 83, column: 23, scope: !369, inlinedAt: !398)
!422 = !DILocation(line: 0, scope: !402, inlinedAt: !423)
!423 = distinct !DILocation(line: 84, column: 11, scope: !369, inlinedAt: !398)
!424 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !423)
!425 = !DILocation(line: 0, scope: !369, inlinedAt: !426)
!426 = distinct !DILocation(line: 90, column: 3, scope: !363, inlinedAt: !366)
!427 = !DILocation(line: 59, column: 14, scope: !369, inlinedAt: !426)
!428 = !DILocation(line: 62, column: 21, scope: !369, inlinedAt: !426)
!429 = !DILocation(line: 0, scope: !402, inlinedAt: !430)
!430 = distinct !DILocation(line: 63, column: 11, scope: !369, inlinedAt: !426)
!431 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !430)
!432 = !DILocation(line: 66, column: 15, scope: !369, inlinedAt: !426)
!433 = !DILocation(line: 69, column: 23, scope: !369, inlinedAt: !426)
!434 = !DILocation(line: 0, scope: !402, inlinedAt: !435)
!435 = distinct !DILocation(line: 70, column: 11, scope: !369, inlinedAt: !426)
!436 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !435)
!437 = !DILocation(line: 73, column: 15, scope: !369, inlinedAt: !426)
!438 = !DILocation(line: 76, column: 23, scope: !369, inlinedAt: !426)
!439 = !DILocation(line: 0, scope: !402, inlinedAt: !440)
!440 = distinct !DILocation(line: 77, column: 11, scope: !369, inlinedAt: !426)
!441 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !440)
!442 = !DILocation(line: 80, column: 15, scope: !369, inlinedAt: !426)
!443 = !DILocation(line: 83, column: 23, scope: !369, inlinedAt: !426)
!444 = !DILocation(line: 0, scope: !402, inlinedAt: !445)
!445 = distinct !DILocation(line: 84, column: 11, scope: !369, inlinedAt: !426)
!446 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !445)
!447 = !DILocation(line: 0, scope: !369, inlinedAt: !448)
!448 = distinct !DILocation(line: 91, column: 3, scope: !363, inlinedAt: !366)
!449 = !DILocation(line: 59, column: 14, scope: !369, inlinedAt: !448)
!450 = !DILocation(line: 62, column: 21, scope: !369, inlinedAt: !448)
!451 = !DILocation(line: 0, scope: !402, inlinedAt: !452)
!452 = distinct !DILocation(line: 63, column: 11, scope: !369, inlinedAt: !448)
!453 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !452)
!454 = !DILocation(line: 66, column: 15, scope: !369, inlinedAt: !448)
!455 = !DILocation(line: 69, column: 23, scope: !369, inlinedAt: !448)
!456 = !DILocation(line: 0, scope: !402, inlinedAt: !457)
!457 = distinct !DILocation(line: 70, column: 11, scope: !369, inlinedAt: !448)
!458 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !457)
!459 = !DILocation(line: 73, column: 15, scope: !369, inlinedAt: !448)
!460 = !DILocation(line: 76, column: 23, scope: !369, inlinedAt: !448)
!461 = !DILocation(line: 0, scope: !402, inlinedAt: !462)
!462 = distinct !DILocation(line: 77, column: 11, scope: !369, inlinedAt: !448)
!463 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !462)
!464 = !DILocation(line: 80, column: 15, scope: !369, inlinedAt: !448)
!465 = !DILocation(line: 83, column: 23, scope: !369, inlinedAt: !448)
!466 = !DILocation(line: 0, scope: !402, inlinedAt: !467)
!467 = distinct !DILocation(line: 84, column: 11, scope: !369, inlinedAt: !448)
!468 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !467)
!469 = !DILocation(line: 0, scope: !369, inlinedAt: !470)
!470 = distinct !DILocation(line: 92, column: 3, scope: !363, inlinedAt: !366)
!471 = !DILocation(line: 59, column: 14, scope: !369, inlinedAt: !470)
!472 = !DILocation(line: 62, column: 21, scope: !369, inlinedAt: !470)
!473 = !DILocation(line: 0, scope: !402, inlinedAt: !474)
!474 = distinct !DILocation(line: 63, column: 11, scope: !369, inlinedAt: !470)
!475 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !474)
!476 = !DILocation(line: 66, column: 15, scope: !369, inlinedAt: !470)
!477 = !DILocation(line: 69, column: 23, scope: !369, inlinedAt: !470)
!478 = !DILocation(line: 0, scope: !402, inlinedAt: !479)
!479 = distinct !DILocation(line: 70, column: 11, scope: !369, inlinedAt: !470)
!480 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !479)
!481 = !DILocation(line: 73, column: 15, scope: !369, inlinedAt: !470)
!482 = !DILocation(line: 76, column: 23, scope: !369, inlinedAt: !470)
!483 = !DILocation(line: 0, scope: !402, inlinedAt: !484)
!484 = distinct !DILocation(line: 77, column: 11, scope: !369, inlinedAt: !470)
!485 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !484)
!486 = !DILocation(line: 80, column: 15, scope: !369, inlinedAt: !470)
!487 = !DILocation(line: 83, column: 23, scope: !369, inlinedAt: !470)
!488 = !DILocation(line: 0, scope: !402, inlinedAt: !489)
!489 = distinct !DILocation(line: 84, column: 11, scope: !369, inlinedAt: !470)
!490 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !489)
!491 = !DILocation(line: 0, scope: !369, inlinedAt: !492)
!492 = distinct !DILocation(line: 93, column: 3, scope: !363, inlinedAt: !366)
!493 = !DILocation(line: 59, column: 14, scope: !369, inlinedAt: !492)
!494 = !DILocation(line: 62, column: 21, scope: !369, inlinedAt: !492)
!495 = !DILocation(line: 0, scope: !402, inlinedAt: !496)
!496 = distinct !DILocation(line: 63, column: 11, scope: !369, inlinedAt: !492)
!497 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !496)
!498 = !DILocation(line: 66, column: 15, scope: !369, inlinedAt: !492)
!499 = !DILocation(line: 69, column: 23, scope: !369, inlinedAt: !492)
!500 = !DILocation(line: 0, scope: !402, inlinedAt: !501)
!501 = distinct !DILocation(line: 70, column: 11, scope: !369, inlinedAt: !492)
!502 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !501)
!503 = !DILocation(line: 73, column: 15, scope: !369, inlinedAt: !492)
!504 = !DILocation(line: 76, column: 23, scope: !369, inlinedAt: !492)
!505 = !DILocation(line: 0, scope: !402, inlinedAt: !506)
!506 = distinct !DILocation(line: 77, column: 11, scope: !369, inlinedAt: !492)
!507 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !506)
!508 = !DILocation(line: 80, column: 15, scope: !369, inlinedAt: !492)
!509 = !DILocation(line: 83, column: 23, scope: !369, inlinedAt: !492)
!510 = !DILocation(line: 0, scope: !402, inlinedAt: !511)
!511 = distinct !DILocation(line: 84, column: 11, scope: !369, inlinedAt: !492)
!512 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !511)
!513 = !DILocation(line: 0, scope: !369, inlinedAt: !514)
!514 = distinct !DILocation(line: 94, column: 3, scope: !363, inlinedAt: !366)
!515 = !DILocation(line: 59, column: 14, scope: !369, inlinedAt: !514)
!516 = !DILocation(line: 62, column: 21, scope: !369, inlinedAt: !514)
!517 = !DILocation(line: 0, scope: !402, inlinedAt: !518)
!518 = distinct !DILocation(line: 63, column: 11, scope: !369, inlinedAt: !514)
!519 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !518)
!520 = !DILocation(line: 66, column: 15, scope: !369, inlinedAt: !514)
!521 = !DILocation(line: 69, column: 23, scope: !369, inlinedAt: !514)
!522 = !DILocation(line: 0, scope: !402, inlinedAt: !523)
!523 = distinct !DILocation(line: 70, column: 11, scope: !369, inlinedAt: !514)
!524 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !523)
!525 = !DILocation(line: 73, column: 15, scope: !369, inlinedAt: !514)
!526 = !DILocation(line: 76, column: 23, scope: !369, inlinedAt: !514)
!527 = !DILocation(line: 0, scope: !402, inlinedAt: !528)
!528 = distinct !DILocation(line: 77, column: 11, scope: !369, inlinedAt: !514)
!529 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !528)
!530 = !DILocation(line: 80, column: 15, scope: !369, inlinedAt: !514)
!531 = !DILocation(line: 83, column: 23, scope: !369, inlinedAt: !514)
!532 = !DILocation(line: 0, scope: !402, inlinedAt: !533)
!533 = distinct !DILocation(line: 84, column: 11, scope: !369, inlinedAt: !514)
!534 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !533)
!535 = !DILocation(line: 0, scope: !369, inlinedAt: !536)
!536 = distinct !DILocation(line: 95, column: 3, scope: !363, inlinedAt: !366)
!537 = !DILocation(line: 59, column: 14, scope: !369, inlinedAt: !536)
!538 = !DILocation(line: 62, column: 21, scope: !369, inlinedAt: !536)
!539 = !DILocation(line: 0, scope: !402, inlinedAt: !540)
!540 = distinct !DILocation(line: 63, column: 11, scope: !369, inlinedAt: !536)
!541 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !540)
!542 = !DILocation(line: 66, column: 15, scope: !369, inlinedAt: !536)
!543 = !DILocation(line: 69, column: 23, scope: !369, inlinedAt: !536)
!544 = !DILocation(line: 0, scope: !402, inlinedAt: !545)
!545 = distinct !DILocation(line: 70, column: 11, scope: !369, inlinedAt: !536)
!546 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !545)
!547 = !DILocation(line: 73, column: 15, scope: !369, inlinedAt: !536)
!548 = !DILocation(line: 76, column: 23, scope: !369, inlinedAt: !536)
!549 = !DILocation(line: 0, scope: !402, inlinedAt: !550)
!550 = distinct !DILocation(line: 77, column: 11, scope: !369, inlinedAt: !536)
!551 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !550)
!552 = !DILocation(line: 80, column: 15, scope: !369, inlinedAt: !536)
!553 = !DILocation(line: 83, column: 23, scope: !369, inlinedAt: !536)
!554 = !DILocation(line: 0, scope: !402, inlinedAt: !555)
!555 = distinct !DILocation(line: 84, column: 11, scope: !369, inlinedAt: !536)
!556 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !555)
!557 = !DILocation(line: 0, scope: !369, inlinedAt: !558)
!558 = distinct !DILocation(line: 96, column: 3, scope: !363, inlinedAt: !366)
!559 = !DILocation(line: 59, column: 14, scope: !369, inlinedAt: !558)
!560 = !DILocation(line: 62, column: 21, scope: !369, inlinedAt: !558)
!561 = !DILocation(line: 0, scope: !402, inlinedAt: !562)
!562 = distinct !DILocation(line: 63, column: 11, scope: !369, inlinedAt: !558)
!563 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !562)
!564 = !DILocation(line: 66, column: 15, scope: !369, inlinedAt: !558)
!565 = !DILocation(line: 69, column: 23, scope: !369, inlinedAt: !558)
!566 = !DILocation(line: 0, scope: !402, inlinedAt: !567)
!567 = distinct !DILocation(line: 70, column: 11, scope: !369, inlinedAt: !558)
!568 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !567)
!569 = !DILocation(line: 73, column: 15, scope: !369, inlinedAt: !558)
!570 = !DILocation(line: 76, column: 23, scope: !369, inlinedAt: !558)
!571 = !DILocation(line: 0, scope: !402, inlinedAt: !572)
!572 = distinct !DILocation(line: 77, column: 11, scope: !369, inlinedAt: !558)
!573 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !572)
!574 = !DILocation(line: 80, column: 15, scope: !369, inlinedAt: !558)
!575 = !DILocation(line: 83, column: 23, scope: !369, inlinedAt: !558)
!576 = !DILocation(line: 0, scope: !402, inlinedAt: !577)
!577 = distinct !DILocation(line: 84, column: 11, scope: !369, inlinedAt: !558)
!578 = !DILocation(line: 51, column: 17, scope: !402, inlinedAt: !577)
!579 = !DILocation(line: 101, column: 60, scope: !367, inlinedAt: !359)
!580 = !DILocation(line: 101, column: 37, scope: !367, inlinedAt: !359)
!581 = distinct !{!581, !361, !582, !260, !261}
!582 = !DILocation(line: 102, column: 39, scope: !357, inlinedAt: !359)
!583 = !DILocalVariable(name: "st", arg: 1, scope: !584, file: !1, line: 105, type: !33)
!584 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_sum_states", scope: !1, file: !1, line: 105, type: !344, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !585)
!585 = !{!583, !586, !587, !589, !592}
!586 = !DILocalVariable(name: "st_", arg: 2, scope: !584, file: !1, line: 105, type: !33)
!587 = !DILocalVariable(name: "i", scope: !588, file: !1, line: 107, type: !3)
!588 = distinct !DILexicalBlock(scope: !584, file: !1, line: 107, column: 3)
!589 = !DILocalVariable(name: "xi", scope: !590, file: !1, line: 109, type: !3)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 108, column: 3)
!591 = distinct !DILexicalBlock(scope: !588, file: !1, line: 107, column: 3)
!592 = !DILocalVariable(name: "yi", scope: !590, file: !1, line: 110, type: !3)
!593 = !DILocation(line: 0, scope: !584, inlinedAt: !594)
!594 = distinct !DILocation(line: 125, column: 3, scope: !332)
!595 = !DILocation(line: 0, scope: !588, inlinedAt: !594)
!596 = !DILocation(line: 107, column: 3, scope: !588, inlinedAt: !594)
!597 = !DILocation(line: 109, column: 19, scope: !590, inlinedAt: !594)
!598 = !DILocation(line: 0, scope: !590, inlinedAt: !594)
!599 = !DILocation(line: 110, column: 19, scope: !590, inlinedAt: !594)
!600 = !DILocation(line: 111, column: 16, scope: !590, inlinedAt: !594)
!601 = !DILocation(line: 111, column: 11, scope: !590, inlinedAt: !594)
!602 = !DILocation(line: 107, column: 60, scope: !591, inlinedAt: !594)
!603 = !DILocation(line: 107, column: 37, scope: !591, inlinedAt: !594)
!604 = distinct !{!604, !596, !605, !260, !261}
!605 = !DILocation(line: 112, column: 3, scope: !588, inlinedAt: !594)
!606 = !DILocation(line: 126, column: 1, scope: !332)
