; ModuleID = 'hacl-c/hacl-c/AEAD_Poly1305_64.c'
source_filename = "hacl-c/hacl-c/AEAD_Poly1305_64.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_64_State_poly1305_state = type { i64*, i64* }
%struct.FStar_UInt128_uint128 = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"KreMLin abort at %s:%d\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"hacl-c/hacl-c/AEAD_Poly1305_64.c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"noextract flag\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @AEAD_Poly1305_64_seval(i8* nocapture noundef readnone %0) local_unnamed_addr #0 !dbg !23 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !33, metadata !DIExpression()), !dbg !34
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 noundef 340, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !35
  call void @exit(i32 noundef 255) #17, !dbg !36
  unreachable, !dbg !36
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @AEAD_Poly1305_64_selem(i8* nocapture noundef readnone %0) local_unnamed_addr #0 !dbg !37 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !42, metadata !DIExpression()), !dbg !43
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 noundef 346, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !44
  call void @exit(i32 noundef 255) #17, !dbg !45
  unreachable, !dbg !45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @AEAD_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* noalias nocapture writeonly sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, i64* noundef %1, i64* noundef %2) local_unnamed_addr #4 !dbg !46 {
  call void @llvm.dbg.value(metadata i64* %1, metadata !57, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i64* %2, metadata !58, metadata !DIExpression()), !dbg !59
  call fastcc void @Hacl_Impl_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, i64* noundef %1, i64* noundef %2), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* noalias nocapture writeonly sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, i64* noundef %1, i64* noundef %2) unnamed_addr #4 !dbg !62 {
  call void @llvm.dbg.value(metadata i64* %1, metadata !64, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i64* %2, metadata !65, metadata !DIExpression()), !dbg !66
  %4 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %0, i32 0, i32 0, !dbg !67
  store i64* %1, i64** %4, align 4, !dbg !67, !tbaa !68
  %5 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %0, i32 0, i32 1, !dbg !67
  store i64* %2, i64** %5, align 4, !dbg !67, !tbaa !73
  ret void, !dbg !74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @AEAD_Poly1305_64_mul_div_16(i32 noundef %0) local_unnamed_addr #5 !dbg !75 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !79, metadata !DIExpression()), !dbg !80
  %2 = and i32 %0, -16, !dbg !81
  ret i32 %2, !dbg !82
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_pad_last(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #6 !dbg !83 {
  %5 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i64* %0, metadata !91, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !101
  call void @llvm.dbg.value(metadata i64* %1, metadata !91, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !101
  call void @llvm.dbg.value(metadata i8* %2, metadata !92, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 %3, metadata !93, metadata !DIExpression()), !dbg !101
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #18, !dbg !102
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !94, metadata !DIExpression()), !dbg !103
  %7 = icmp eq i32 %3, 0, !dbg !104
  br i1 %7, label %13, label %8, !dbg !105

8:                                                ; preds = %4
  %9 = icmp ugt i32 %3, 15, !dbg !106
  %10 = sub i32 16, %3, !dbg !106
  %11 = select i1 %9, i32 0, i32 %10, !dbg !106
  %12 = getelementptr [16 x i8], [16 x i8]* %5, i32 0, i32 %3, !dbg !106
  call void @llvm.memset.p0i8.i32(i8* align 1 %12, i8 0, i32 %11, i1 false), !dbg !106
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %6, i8* align 1 %2, i32 %3, i1 false), !dbg !106
  call void @llvm.dbg.value(metadata i8* %6, metadata !98, metadata !DIExpression()), !dbg !107
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef nonnull %6), !dbg !108
  br label %13, !dbg !109

13:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #18, !dbg !110
  ret void, !dbg !110
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2) unnamed_addr #6 !dbg !111 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !115, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !140
  call void @llvm.dbg.value(metadata i64* %1, metadata !115, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !140
  call void @llvm.dbg.value(metadata i8* %2, metadata !116, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i64* %0, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !140
  call void @llvm.dbg.value(metadata i64* %1, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !140
  call void @llvm.dbg.value(metadata i64* %1, metadata !118, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i64* %1, metadata !119, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i64* %0, metadata !120, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !140
  call void @llvm.dbg.value(metadata i64* %1, metadata !120, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !140
  call void @llvm.dbg.value(metadata i64* %0, metadata !121, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i64* %0, metadata !122, metadata !DIExpression()), !dbg !140
  %8 = bitcast [3 x i64]* %4 to i8*, !dbg !141
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #18, !dbg !141
  call void @llvm.dbg.declare(metadata [3 x i64]* %4, metadata !123, metadata !DIExpression()), !dbg !142
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false), !dbg !142
  %9 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #18, !dbg !143
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !127, metadata !DIExpression()), !dbg !144
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i8* noundef %2), !dbg !145
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !146
  %11 = load i64, i64* %10, align 8, !dbg !146, !tbaa !147
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !146
  %13 = load i64, i64* %12, align 8, !dbg !146, !tbaa !150
  %14 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %11, i64 %13) #18, !dbg !146
  %15 = and i64 %14, 17592186044415, !dbg !151
  call void @llvm.dbg.value(metadata i64 %15, metadata !135, metadata !DIExpression()), !dbg !140
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %11, i64 %13, i32 noundef 44) #18, !dbg !152
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !153
  %17 = load i64, i64* %16, align 8, !dbg !153, !tbaa !147
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !153
  %19 = load i64, i64* %18, align 8, !dbg !153, !tbaa !150
  %20 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %17, i64 %19) #18, !dbg !153
  %21 = and i64 %20, 17592186044415, !dbg !154
  call void @llvm.dbg.value(metadata i64 %21, metadata !136, metadata !DIExpression()), !dbg !140
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %11, i64 %13, i32 noundef 88) #18, !dbg !155
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !156
  %23 = load i64, i64* %22, align 8, !dbg !156, !tbaa !147
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !156
  %25 = load i64, i64* %24, align 8, !dbg !156, !tbaa !150
  %26 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %23, i64 %25) #18, !dbg !156
  call void @llvm.dbg.value(metadata i64 %26, metadata !137, metadata !DIExpression()), !dbg !140
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 0, !dbg !157
  store i64 %15, i64* %27, align 8, !dbg !158, !tbaa !159
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 1, !dbg !160
  store i64 %21, i64* %28, align 8, !dbg !161, !tbaa !159
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 2, !dbg !162
  call void @llvm.dbg.value(metadata i64 %26, metadata !138, metadata !DIExpression()), !dbg !140
  %30 = or i64 %26, 1099511627776, !dbg !163
  call void @llvm.dbg.value(metadata i64 %30, metadata !139, metadata !DIExpression()), !dbg !140
  store i64 %30, i64* %29, align 8, !dbg !164, !tbaa !159
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* noundef %1, i64* noundef nonnull %27, i64* noundef %0), !dbg !165
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #18, !dbg !166
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #18, !dbg !166
  ret void, !dbg !166
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_init(i64* nocapture %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3, i8* nocapture noundef readonly %4) local_unnamed_addr #6 !dbg !167 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !171, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !181
  call void @llvm.dbg.value(metadata i64* %1, metadata !171, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !181
  call void @llvm.dbg.value(metadata i8* %2, metadata !172, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %3, metadata !173, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i8* %4, metadata !174, metadata !DIExpression()), !dbg !181
  %6 = lshr i32 %3, 4, !dbg !182
  call void @llvm.dbg.value(metadata i32 %6, metadata !175, metadata !DIExpression()), !dbg !181
  %7 = and i32 %3, 15, !dbg !183
  call void @llvm.dbg.value(metadata i32 %7, metadata !176, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i8* %4, metadata !177, metadata !DIExpression()), !dbg !181
  %8 = and i32 %3, -16, !dbg !184
  call void @llvm.dbg.value(metadata i32 %8, metadata !178, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i8* %2, metadata !179, metadata !DIExpression()), !dbg !181
  %9 = getelementptr inbounds i8, i8* %2, i32 %8, !dbg !185
  call void @llvm.dbg.value(metadata i8* %9, metadata !180, metadata !DIExpression()), !dbg !181
  %10 = zext i32 %6 to i64, !dbg !186
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_partial(i64* %0, i64* %1, i8* noundef %2, i64 noundef %10, i8* noundef %4), !dbg !187
  call void @AEAD_Poly1305_64_pad_last(i64* %0, i64* %1, i8* noundef %9, i32 noundef %7), !dbg !188
  ret void, !dbg !189
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_partial(i64* nocapture %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3, i8* nocapture noundef readonly %4) unnamed_addr #6 !dbg !190 {
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !194, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i64* %1, metadata !194, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i8* %2, metadata !195, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i64 %3, metadata !196, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i8* %4, metadata !197, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i64* %0, metadata !198, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i64* %1, metadata !198, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i64* %0, metadata !199, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i64* %0, metadata !200, metadata !DIExpression()), !dbg !209
  %14 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !210
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #18, !dbg !210
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %6, metadata !201, metadata !DIExpression()), !dbg !211
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i8* noundef %4), !dbg !212
  %15 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !213
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #18, !dbg !213
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !202, metadata !DIExpression()), !dbg !214
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 1152921487695413244) #18, !dbg !215
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !216
  %17 = load i64, i64* %16, align 8, !dbg !216, !tbaa !147
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !216
  %19 = load i64, i64* %18, align 8, !dbg !216, !tbaa !150
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %17, i64 %19, i32 noundef 64) #18, !dbg !216
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef 1152921487695413247) #18, !dbg !217
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !218
  %21 = load i64, i64* %20, align 8, !dbg !218, !tbaa !147
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !218
  %23 = load i64, i64* %22, align 8, !dbg !218, !tbaa !150
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !218
  %25 = load i64, i64* %24, align 8, !dbg !218, !tbaa !147
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !218
  %27 = load i64, i64* %26, align 8, !dbg !218, !tbaa !150
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %21, i64 %23, i64 %25, i64 %27) #18, !dbg !218
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !219
  %29 = load i64, i64* %28, align 8, !dbg !219, !tbaa !147
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !219
  %31 = load i64, i64* %30, align 8, !dbg !219, !tbaa !150
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !219
  %33 = load i64, i64* %32, align 8, !dbg !219, !tbaa !147
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !219
  %35 = load i64, i64* %34, align 8, !dbg !219, !tbaa !150
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %29, i64 %31, i64 %33, i64 %35) #18, !dbg !219
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !220
  %37 = load i64, i64* %36, align 8, !dbg !220, !tbaa !147
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !220
  %39 = load i64, i64* %38, align 8, !dbg !220, !tbaa !150
  %40 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %37, i64 %39) #18, !dbg !220
  %41 = and i64 %40, 17592186044415, !dbg !221
  call void @llvm.dbg.value(metadata i64 %41, metadata !203, metadata !DIExpression()), !dbg !209
  %42 = load i64, i64* %36, align 8, !dbg !222, !tbaa !147
  %43 = load i64, i64* %38, align 8, !dbg !222, !tbaa !150
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %42, i64 %43, i32 noundef 44) #18, !dbg !222
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !223
  %45 = load i64, i64* %44, align 8, !dbg !223, !tbaa !147
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !223
  %47 = load i64, i64* %46, align 8, !dbg !223, !tbaa !150
  %48 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %45, i64 %47) #18, !dbg !223
  %49 = and i64 %48, 17592186044415, !dbg !224
  call void @llvm.dbg.value(metadata i64 %49, metadata !204, metadata !DIExpression()), !dbg !209
  %50 = load i64, i64* %36, align 8, !dbg !225, !tbaa !147
  %51 = load i64, i64* %38, align 8, !dbg !225, !tbaa !150
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %50, i64 %51, i32 noundef 88) #18, !dbg !225
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !226
  %53 = load i64, i64* %52, align 8, !dbg !226, !tbaa !147
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !226
  %55 = load i64, i64* %54, align 8, !dbg !226, !tbaa !150
  %56 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %53, i64 %55) #18, !dbg !226
  call void @llvm.dbg.value(metadata i64 %56, metadata !205, metadata !DIExpression()), !dbg !209
  store i64 %41, i64* %0, align 4, !dbg !227, !tbaa !159
  %57 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !228
  store i64 %49, i64* %57, align 4, !dbg !229, !tbaa !159
  %58 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !230
  store i64 %56, i64* %58, align 4, !dbg !231, !tbaa !159
  call void @llvm.dbg.value(metadata i64* %0, metadata !206, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i64* %1, metadata !206, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i64* %1, metadata !207, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i64* %1, metadata !208, metadata !DIExpression()), !dbg !209
  %59 = bitcast i64* %1 to i8*, !dbg !232
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %59, i8 0, i64 24, i1 false), !dbg !233
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* nonnull %0, i64* nonnull %1, i8* noundef %2, i64 noundef %3), !dbg !232
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #18, !dbg !234
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #18, !dbg !234
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_continue(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #6 !dbg !235 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !237, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !245
  call void @llvm.dbg.value(metadata i64* %1, metadata !237, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !245
  call void @llvm.dbg.value(metadata i8* %2, metadata !238, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 %3, metadata !239, metadata !DIExpression()), !dbg !245
  %5 = lshr i32 %3, 4, !dbg !246
  call void @llvm.dbg.value(metadata i32 %5, metadata !240, metadata !DIExpression()), !dbg !245
  %6 = and i32 %3, 15, !dbg !247
  call void @llvm.dbg.value(metadata i32 %6, metadata !241, metadata !DIExpression()), !dbg !245
  %7 = and i32 %3, -16, !dbg !248
  call void @llvm.dbg.value(metadata i32 %7, metadata !242, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i8* %2, metadata !243, metadata !DIExpression()), !dbg !245
  %8 = getelementptr inbounds i8, i8* %2, i32 %7, !dbg !249
  call void @llvm.dbg.value(metadata i8* %8, metadata !244, metadata !DIExpression()), !dbg !245
  %9 = zext i32 %5 to i64, !dbg !250
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* %0, i64* %1, i8* noundef %2, i64 noundef %9), !dbg !251
  call void @AEAD_Poly1305_64_pad_last(i64* %0, i64* %1, i8* noundef %8, i32 noundef %6), !dbg !252
  ret void, !dbg !253
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #6 !dbg !254 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !266
  call void @llvm.dbg.value(metadata i64* %1, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !266
  call void @llvm.dbg.value(metadata i8* %2, metadata !259, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %3, metadata !260, metadata !DIExpression()), !dbg !266
  %5 = icmp eq i64 %3, 0, !dbg !267
  br i1 %5, label %9, label %6, !dbg !268

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !261, metadata !DIExpression()), !dbg !269
  %7 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !270
  call void @llvm.dbg.value(metadata i8* %7, metadata !264, metadata !DIExpression()), !dbg !269
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef %2), !dbg !271
  %8 = add i64 %3, -1, !dbg !272
  call void @llvm.dbg.value(metadata i64 %8, metadata !265, metadata !DIExpression()), !dbg !269
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* %0, i64* %1, i8* noundef nonnull %7, i64 noundef %8), !dbg !273
  br label %9, !dbg !274

9:                                                ; preds = %6, %4
  ret void, !dbg !275
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_finish_(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2) local_unnamed_addr #6 !dbg !276 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !278, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !284
  call void @llvm.dbg.value(metadata i64* %1, metadata !278, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !284
  call void @llvm.dbg.value(metadata i8* %2, metadata !279, metadata !DIExpression()), !dbg !284
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef %2), !dbg !285
  call void @llvm.dbg.value(metadata i8* %2, metadata !280, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !284
  call void @llvm.dbg.value(metadata i64* %0, metadata !281, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !284
  call void @llvm.dbg.value(metadata i64* %1, metadata !281, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !284
  call void @llvm.dbg.value(metadata i64* %1, metadata !282, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i64* %1, metadata !283, metadata !DIExpression()), !dbg !284
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* noundef %1), !dbg !286
  ret void, !dbg !287
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* nocapture noundef %0) unnamed_addr #10 !dbg !288 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !292, metadata !DIExpression()), !dbg !315
  call fastcc void @Hacl_Bignum_Fproduct_carry_limb_(i64* noundef %0), !dbg !316
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i64* noundef %0), !dbg !317
  %2 = load i64, i64* %0, align 4, !dbg !318, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %2, metadata !293, metadata !DIExpression()), !dbg !315
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !319
  %4 = load i64, i64* %3, align 4, !dbg !319, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %4, metadata !294, metadata !DIExpression()), !dbg !315
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !320
  %6 = load i64, i64* %5, align 4, !dbg !320, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %6, metadata !295, metadata !DIExpression()), !dbg !315
  %7 = and i64 %2, 17592186044415, !dbg !321
  call void @llvm.dbg.value(metadata i64 %7, metadata !296, metadata !DIExpression()), !dbg !315
  %8 = lshr i64 %2, 44, !dbg !322
  call void @llvm.dbg.value(metadata i64 %8, metadata !297, metadata !DIExpression()), !dbg !315
  %9 = add i64 %4, %8, !dbg !323
  %10 = and i64 %9, 17592186044415, !dbg !324
  call void @llvm.dbg.value(metadata i64 %10, metadata !298, metadata !DIExpression()), !dbg !315
  %11 = lshr i64 %9, 44, !dbg !325
  call void @llvm.dbg.value(metadata i64 %11, metadata !299, metadata !DIExpression()), !dbg !315
  %12 = add i64 %11, %6, !dbg !326
  call void @llvm.dbg.value(metadata i64 %12, metadata !300, metadata !DIExpression()), !dbg !315
  store i64 %7, i64* %0, align 4, !dbg !327, !tbaa !159
  store i64 %10, i64* %3, align 4, !dbg !328, !tbaa !159
  store i64 %12, i64* %5, align 4, !dbg !329, !tbaa !159
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i64* noundef nonnull %0), !dbg !330
  %13 = load i64, i64* %0, align 4, !dbg !331, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %13, metadata !301, metadata !DIExpression()), !dbg !315
  %14 = load i64, i64* %3, align 4, !dbg !332, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %14, metadata !302, metadata !DIExpression()), !dbg !315
  %15 = and i64 %13, 17592186044415, !dbg !333
  call void @llvm.dbg.value(metadata i64 %15, metadata !303, metadata !DIExpression()), !dbg !315
  %16 = lshr i64 %13, 44, !dbg !334
  %17 = add i64 %14, %16, !dbg !335
  call void @llvm.dbg.value(metadata i64 %17, metadata !304, metadata !DIExpression()), !dbg !315
  store i64 %15, i64* %0, align 4, !dbg !336, !tbaa !159
  store i64 %17, i64* %3, align 4, !dbg !337, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %15, metadata !305, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i64 %17, metadata !306, metadata !DIExpression()), !dbg !315
  %18 = load i64, i64* %5, align 4, !dbg !338, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %18, metadata !307, metadata !DIExpression()), !dbg !315
  %19 = call fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %15), !dbg !339
  call void @llvm.dbg.value(metadata i64 %19, metadata !308, metadata !DIExpression()), !dbg !315
  %20 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %17, i64 noundef 17592186044415), !dbg !340
  call void @llvm.dbg.value(metadata i64 %20, metadata !309, metadata !DIExpression()), !dbg !315
  %21 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %18, i64 noundef 4398046511103), !dbg !341
  call void @llvm.dbg.value(metadata i64 %21, metadata !310, metadata !DIExpression()), !dbg !315
  %22 = and i64 %20, %19, !dbg !342
  %23 = and i64 %22, %21, !dbg !343
  call void @llvm.dbg.value(metadata i64 %23, metadata !311, metadata !DIExpression()), !dbg !315
  %24 = and i64 %23, 17592186044411, !dbg !344
  %25 = sub nsw i64 %15, %24, !dbg !345
  call void @llvm.dbg.value(metadata i64 %25, metadata !312, metadata !DIExpression()), !dbg !315
  %26 = and i64 %23, 17592186044415, !dbg !346
  %27 = sub i64 %17, %26, !dbg !347
  call void @llvm.dbg.value(metadata i64 %27, metadata !313, metadata !DIExpression()), !dbg !315
  %28 = and i64 %23, 4398046511103, !dbg !348
  %29 = sub i64 %18, %28, !dbg !349
  call void @llvm.dbg.value(metadata i64 %29, metadata !314, metadata !DIExpression()), !dbg !315
  store i64 %25, i64* %0, align 4, !dbg !350, !tbaa !159
  store i64 %27, i64* %3, align 4, !dbg !351, !tbaa !159
  store i64 %29, i64* %5, align 4, !dbg !352, !tbaa !159
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_finish(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i8* nocapture noundef writeonly %3, i8* nocapture noundef readonly %4) local_unnamed_addr #6 !dbg !354 {
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !358, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !375
  call void @llvm.dbg.value(metadata i64* %1, metadata !358, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !375
  call void @llvm.dbg.value(metadata i8* %2, metadata !359, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i8* %3, metadata !360, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i8* %4, metadata !361, metadata !DIExpression()), !dbg !375
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef %2), !dbg !376
  call void @llvm.dbg.value(metadata i8* %2, metadata !362, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !375
  call void @llvm.dbg.value(metadata i64* %0, metadata !363, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !375
  call void @llvm.dbg.value(metadata i64* %1, metadata !363, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !375
  call void @llvm.dbg.value(metadata i64* %1, metadata !364, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i64* %1, metadata !365, metadata !DIExpression()), !dbg !375
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* noundef %1), !dbg !377
  call void @llvm.dbg.value(metadata i64* %0, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !375
  call void @llvm.dbg.value(metadata i64* %1, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !375
  call void @llvm.dbg.value(metadata i64* %1, metadata !367, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i64* %1, metadata !368, metadata !DIExpression()), !dbg !375
  %12 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !378
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #18, !dbg !378
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %6, metadata !369, metadata !DIExpression()), !dbg !379
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i8* noundef %4), !dbg !380
  %13 = load i64, i64* %1, align 4, !dbg !381, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %13, metadata !370, metadata !DIExpression()), !dbg !375
  %14 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !382
  %15 = load i64, i64* %14, align 4, !dbg !382, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %15, metadata !371, metadata !DIExpression()), !dbg !375
  %16 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !383
  %17 = load i64, i64* %16, align 4, !dbg !383, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %17, metadata !372, metadata !DIExpression()), !dbg !375
  %18 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !384
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #18, !dbg !384
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !373, metadata !DIExpression()), !dbg !385
  %19 = shl i64 %17, 24, !dbg !386
  %20 = lshr i64 %15, 20, !dbg !387
  %21 = or i64 %19, %20, !dbg !388
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %21) #18, !dbg !389
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !390
  %23 = load i64, i64* %22, align 8, !dbg !390, !tbaa !147
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !390
  %25 = load i64, i64* %24, align 8, !dbg !390, !tbaa !150
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %23, i64 %25, i32 noundef 64) #18, !dbg !390
  %26 = shl i64 %15, 44, !dbg !391
  %27 = or i64 %26, %13, !dbg !392
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %27) #18, !dbg !393
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !394
  %29 = load i64, i64* %28, align 8, !dbg !394, !tbaa !147
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !394
  %31 = load i64, i64* %30, align 8, !dbg !394, !tbaa !150
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !394
  %33 = load i64, i64* %32, align 8, !dbg !394, !tbaa !147
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !394
  %35 = load i64, i64* %34, align 8, !dbg !394, !tbaa !150
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %29, i64 %31, i64 %33, i64 %35) #18, !dbg !394
  %36 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !395
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %36) #18, !dbg !395
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %11, metadata !374, metadata !DIExpression()), !dbg !396
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !397
  %38 = load i64, i64* %37, align 8, !dbg !397, !tbaa !147
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !397
  %40 = load i64, i64* %39, align 8, !dbg !397, !tbaa !150
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !397
  %42 = load i64, i64* %41, align 8, !dbg !397, !tbaa !147
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !397
  %44 = load i64, i64* %43, align 8, !dbg !397, !tbaa !150
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %38, i64 %40, i64 %42, i64 %44) #18, !dbg !397
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !398
  %46 = load i64, i64* %45, align 8, !dbg !398, !tbaa !147
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !398
  %48 = load i64, i64* %47, align 8, !dbg !398, !tbaa !150
  call fastcc void @store128_le(i8* noundef %3, i64 %46, i64 %48), !dbg !398
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36) #18, !dbg !399
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #18, !dbg !399
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #18, !dbg !399
  ret void, !dbg !399
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @load128_le(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i8* nocapture noundef readonly %1) unnamed_addr #11 !dbg !400 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !406, metadata !DIExpression(DW_OP_deref)), !dbg !407
  call void @llvm.dbg.value(metadata i8* %1, metadata !405, metadata !DIExpression()), !dbg !407
  call fastcc void @load128_le_(i8* noundef %1, %struct.FStar_UInt128_uint128* noundef %0), !dbg !408
  ret void, !dbg !409
}

declare !dbg !410 void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #12

declare !dbg !414 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #12

declare !dbg !417 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #12

declare !dbg !420 void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @store128_le(i8* nocapture noundef writeonly %0, i64 %1, i64 %2) unnamed_addr #11 !dbg !421 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0
  store i64 %1, i64* %5, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1
  store i64 %2, i64* %6, align 8, !tbaa !150
  call void @llvm.dbg.value(metadata i8* %0, metadata !425, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !426, metadata !DIExpression()), !dbg !428
  call fastcc void @store128_le_(i8* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %4), !dbg !429
  ret void, !dbg !430
}

declare !dbg !431 i64 @FStar_UInt128_uint128_to_uint64(i64, i64) local_unnamed_addr #12

declare !dbg !434 void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #6 !dbg !435 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !439, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i64* %1, metadata !440, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i64* %2, metadata !441, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !449
  br label %5, !dbg !450

4:                                                ; preds = %5
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef %0, i64* noundef %0, i64* noundef %2), !dbg !451
  ret void, !dbg !452

5:                                                ; preds = %3, %5
  %6 = phi i32 [ 0, %3 ], [ %12, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !442, metadata !DIExpression()), !dbg !449
  %7 = getelementptr inbounds i64, i64* %0, i32 %6, !dbg !453
  %8 = load i64, i64* %7, align 4, !dbg !453, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %8, metadata !444, metadata !DIExpression()), !dbg !454
  %9 = getelementptr inbounds i64, i64* %1, i32 %6, !dbg !455
  %10 = load i64, i64* %9, align 4, !dbg !455, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %10, metadata !447, metadata !DIExpression()), !dbg !454
  %11 = add i64 %10, %8, !dbg !456
  store i64 %11, i64* %7, align 4, !dbg !457, !tbaa !159
  %12 = add nuw nsw i32 %6, 1, !dbg !458
  call void @llvm.dbg.value(metadata i32 %12, metadata !442, metadata !DIExpression()), !dbg !449
  %13 = icmp eq i32 %12, 3, !dbg !459
  br i1 %13, label %4, label %5, !dbg !450, !llvm.loop !460
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #6 !dbg !464 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca [3 x %struct.FStar_UInt128_uint128], align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata i64* %0, metadata !466, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i64* %1, metadata !467, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i64* %2, metadata !468, metadata !DIExpression()), !dbg !478
  %7 = bitcast [3 x i64]* %4 to i8*, !dbg !479
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #18, !dbg !479
  call void @llvm.dbg.declare(metadata [3 x i64]* %4, metadata !469, metadata !DIExpression()), !dbg !480
  %8 = bitcast i64* %1 to i8*, !dbg !481
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %7, i8* noundef nonnull align 4 dereferenceable(24) %8, i32 24, i1 false), !dbg !481
  %9 = bitcast [3 x %struct.FStar_UInt128_uint128]* %5 to i8*, !dbg !482
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #18, !dbg !482
  call void @llvm.dbg.declare(metadata [3 x %struct.FStar_UInt128_uint128]* %5, metadata !470, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata i32 0, metadata !472, metadata !DIExpression()), !dbg !484
  %10 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !472, metadata !DIExpression()), !dbg !484
  br label %20, !dbg !485

11:                                               ; preds = %20
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 0, !dbg !481
  %13 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, !dbg !486
  call fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(%struct.FStar_UInt128_uint128* noundef nonnull %13, i64* noundef nonnull %12, i64* noundef %2), !dbg !487
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* noundef nonnull %13), !dbg !488
  call fastcc void @Hacl_Bignum_Modulo_carry_top_wide(%struct.FStar_UInt128_uint128* noundef nonnull %13), !dbg !489
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %13), !dbg !490
  %14 = load i64, i64* %0, align 4, !dbg !491, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %14, metadata !474, metadata !DIExpression()), !dbg !478
  %15 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !492
  %16 = load i64, i64* %15, align 4, !dbg !492, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %16, metadata !475, metadata !DIExpression()), !dbg !478
  %17 = and i64 %14, 17592186044415, !dbg !493
  call void @llvm.dbg.value(metadata i64 %17, metadata !476, metadata !DIExpression()), !dbg !478
  %18 = lshr i64 %14, 44, !dbg !494
  %19 = add i64 %16, %18, !dbg !495
  call void @llvm.dbg.value(metadata i64 %19, metadata !477, metadata !DIExpression()), !dbg !478
  store i64 %17, i64* %0, align 4, !dbg !496, !tbaa !159
  store i64 %19, i64* %15, align 4, !dbg !497, !tbaa !159
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #18, !dbg !498
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #18, !dbg !498
  ret void, !dbg !498

20:                                               ; preds = %3, %20
  %21 = phi i32 [ 0, %3 ], [ %24, %20 ]
  call void @llvm.dbg.value(metadata i32 %21, metadata !472, metadata !DIExpression()), !dbg !484
  %22 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 %21, !dbg !499
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #18, !dbg !501
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0) #18, !dbg !501
  %23 = bitcast %struct.FStar_UInt128_uint128* %22 to i8*, !dbg !501
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %23, i8* noundef nonnull align 4 dereferenceable(16) %10, i32 16, i1 false), !dbg !501, !tbaa.struct !502
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #18, !dbg !501
  %24 = add nuw nsw i32 %21, 1, !dbg !503
  call void @llvm.dbg.value(metadata i32 %24, metadata !472, metadata !DIExpression()), !dbg !484
  %25 = icmp eq i32 %24, 3, !dbg !504
  br i1 %25, label %11, label %20, !dbg !485, !llvm.loop !505
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef %1, i64* nocapture noundef readonly %2) unnamed_addr #6 !dbg !507 {
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !512, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i64* %1, metadata !513, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i64* %2, metadata !514, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 0, metadata !515, metadata !DIExpression()), !dbg !523
  br label %7, !dbg !524

4:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !520, metadata !DIExpression()), !dbg !522
  %5 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !525
  %6 = load i64, i64* %5, align 4, !dbg !525, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %6, metadata !521, metadata !DIExpression()), !dbg !522
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %6), !dbg !526
  ret void, !dbg !527

7:                                                ; preds = %3, %7
  %8 = phi i32 [ 0, %3 ], [ %11, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !515, metadata !DIExpression()), !dbg !523
  %9 = getelementptr inbounds i64, i64* %2, i32 %8, !dbg !528
  %10 = load i64, i64* %9, align 4, !dbg !528, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %10, metadata !517, metadata !DIExpression()), !dbg !529
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %10), !dbg !530
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* noundef %1), !dbg !531
  %11 = add nuw nsw i32 %8, 1, !dbg !532
  call void @llvm.dbg.value(metadata i32 %11, metadata !515, metadata !DIExpression()), !dbg !523
  %12 = icmp eq i32 %11, 2, !dbg !533
  br i1 %12, label %4, label %7, !dbg !524, !llvm.loop !534
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* nocapture noundef %0) unnamed_addr #6 !dbg !536 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 8
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !540, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i32 0, metadata !541, metadata !DIExpression()), !dbg !551
  %5 = bitcast %struct.FStar_UInt128_uint128* %2 to i8*
  %6 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*
  %7 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %2, i32 0, i32 0
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %2, i32 0, i32 1
  br label %11, !dbg !552

10:                                               ; preds = %11
  ret void, !dbg !553

11:                                               ; preds = %1, %11
  %12 = phi i32 [ 0, %1 ], [ %18, %11 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !541, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i32 %12, metadata !543, metadata !DIExpression()), !dbg !554
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %12, !dbg !555
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !555
  %15 = load i64, i64* %14, align 4, !dbg !555, !tbaa.struct !502
  call void @llvm.dbg.value(metadata i64 %15, metadata !546, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !554
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %12, i32 1, !dbg !555
  %17 = load i64, i64* %16, align 4, !dbg !555, !tbaa.struct !556
  call void @llvm.dbg.value(metadata i64 %17, metadata !546, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !554
  %18 = add nuw nsw i32 %12, 1, !dbg !557
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %18, !dbg !558
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !558
  %21 = load i64, i64* %20, align 4, !dbg !558, !tbaa.struct !502
  call void @llvm.dbg.value(metadata i64 %21, metadata !547, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !554
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %18, i32 1, !dbg !558
  %23 = load i64, i64* %22, align 4, !dbg !558, !tbaa.struct !556
  call void @llvm.dbg.value(metadata i64 %23, metadata !547, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !554
  %24 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %15, i64 %17) #18, !dbg !559
  %25 = and i64 %24, 17592186044415, !dbg !560
  call void @llvm.dbg.value(metadata i64 %25, metadata !548, metadata !DIExpression()), !dbg !554
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #18, !dbg !561
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %2, metadata !549, metadata !DIExpression()), !dbg !562
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %15, i64 %17, i32 noundef 44) #18, !dbg !563
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #18, !dbg !564
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %25) #18, !dbg !564
  %26 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !564
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %26, i8* noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false), !dbg !564, !tbaa.struct !502
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #18, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #18, !dbg !565
  %27 = load i64, i64* %8, align 8, !dbg !565, !tbaa !147
  %28 = load i64, i64* %9, align 8, !dbg !565, !tbaa !150
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %21, i64 %23, i64 %27, i64 %28) #18, !dbg !565
  %29 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*, !dbg !565
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %29, i8* noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false), !dbg !565, !tbaa.struct !502
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #18, !dbg !565
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #18, !dbg !566
  call void @llvm.dbg.value(metadata i32 %18, metadata !541, metadata !DIExpression()), !dbg !551
  %30 = icmp eq i32 %18, 2, !dbg !567
  br i1 %30, label %10, label %11, !dbg !552, !llvm.loop !568
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_carry_top_wide(%struct.FStar_UInt128_uint128* nocapture noundef %0) unnamed_addr #6 !dbg !570 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 4
  %3 = alloca %struct.FStar_UInt128_uint128, align 8
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !572, metadata !DIExpression()), !dbg !578
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 0, !dbg !579
  %8 = load i64, i64* %7, align 4, !dbg !579, !tbaa.struct !502
  call void @llvm.dbg.value(metadata i64 %8, metadata !573, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !578
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 1, !dbg !579
  %10 = load i64, i64* %9, align 4, !dbg !579, !tbaa.struct !556
  call void @llvm.dbg.value(metadata i64 %10, metadata !573, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !578
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !580
  %12 = load i64, i64* %11, align 4, !dbg !580, !tbaa.struct !502
  call void @llvm.dbg.value(metadata i64 %12, metadata !574, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !578
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !580
  %14 = load i64, i64* %13, align 4, !dbg !580, !tbaa.struct !556
  call void @llvm.dbg.value(metadata i64 %14, metadata !574, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !578
  %15 = bitcast %struct.FStar_UInt128_uint128* %2 to i8*, !dbg !581
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #18, !dbg !581
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %2, metadata !575, metadata !DIExpression()), !dbg !582
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef 4398046511103) #18, !dbg !583
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %3, i32 0, i32 0, !dbg !584
  %17 = load i64, i64* %16, align 8, !dbg !584, !tbaa !147
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %3, i32 0, i32 1, !dbg !584
  %19 = load i64, i64* %18, align 8, !dbg !584, !tbaa !150
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %8, i64 %10, i64 %17, i64 %19) #18, !dbg !584
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %8, i64 %10, i32 noundef 42) #18, !dbg !585
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !586
  %21 = load i64, i64* %20, align 8, !dbg !586, !tbaa !147
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !586
  %23 = load i64, i64* %22, align 8, !dbg !586, !tbaa !150
  %24 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %21, i64 %23) #18, !dbg !586
  call void @llvm.dbg.value(metadata i64 %24, metadata !576, metadata !DIExpression()), !dbg !578
  %25 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !587
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #18, !dbg !587
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !577, metadata !DIExpression()), !dbg !588
  %26 = mul i64 %24, 5, !dbg !589
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %26) #18, !dbg !590
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !591
  %28 = load i64, i64* %27, align 8, !dbg !591, !tbaa !147
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !591
  %30 = load i64, i64* %29, align 8, !dbg !591, !tbaa !150
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %12, i64 %14, i64 %28, i64 %30) #18, !dbg !591
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !592
  %32 = bitcast %struct.FStar_UInt128_uint128* %31 to i8*, !dbg !593
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %32, i8* noundef nonnull align 4 dereferenceable(16) %15, i32 16, i1 false), !dbg !593, !tbaa.struct !502
  %33 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !594
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %33, i8* noundef nonnull align 4 dereferenceable(16) %25, i32 16, i1 false), !dbg !594, !tbaa.struct !502
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #18, !dbg !595
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #18, !dbg !595
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #6 !dbg !596 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !600, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !601, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 0, metadata !602, metadata !DIExpression()), !dbg !608
  br label %4, !dbg !609

3:                                                ; preds = %4
  ret void, !dbg !610

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %12, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !602, metadata !DIExpression()), !dbg !608
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 %5, i32 0, !dbg !611
  %7 = load i64, i64* %6, align 4, !dbg !611, !tbaa.struct !502
  call void @llvm.dbg.value(metadata i64 %7, metadata !604, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !612
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 %5, i32 1, !dbg !611
  %9 = load i64, i64* %8, align 4, !dbg !611, !tbaa.struct !556
  call void @llvm.dbg.value(metadata i64 %9, metadata !604, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !612
  %10 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %7, i64 %9) #18, !dbg !613
  %11 = getelementptr inbounds i64, i64* %0, i32 %5, !dbg !614
  store i64 %10, i64* %11, align 4, !dbg !615, !tbaa !159
  %12 = add nuw nsw i32 %5, 1, !dbg !616
  call void @llvm.dbg.value(metadata i32 %12, metadata !602, metadata !DIExpression()), !dbg !608
  %13 = icmp eq i32 %12, 3, !dbg !617
  br i1 %13, label %3, label %4, !dbg !609, !llvm.loop !618
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #6 !dbg !620 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !624, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64* %1, metadata !625, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64 %2, metadata !626, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i32 0, metadata !627, metadata !DIExpression()), !dbg !634
  %6 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !627, metadata !DIExpression()), !dbg !634
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1
  br label %10, !dbg !635

9:                                                ; preds = %10
  ret void, !dbg !636

10:                                               ; preds = %3, %10
  %11 = phi i32 [ 0, %3 ], [ %22, %10 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !627, metadata !DIExpression()), !dbg !634
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %11, !dbg !637
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !637
  %14 = load i64, i64* %13, align 4, !dbg !637, !tbaa.struct !502
  call void @llvm.dbg.value(metadata i64 %14, metadata !629, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !638
  %15 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %11, i32 1, !dbg !637
  %16 = load i64, i64* %15, align 4, !dbg !637, !tbaa.struct !556
  call void @llvm.dbg.value(metadata i64 %16, metadata !629, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !638
  %17 = getelementptr inbounds i64, i64* %1, i32 %11, !dbg !639
  %18 = load i64, i64* %17, align 4, !dbg !639, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %18, metadata !632, metadata !DIExpression()), !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #18, !dbg !640
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %18, i64 noundef %2) #18, !dbg !641
  %19 = load i64, i64* %7, align 8, !dbg !640, !tbaa !147
  %20 = load i64, i64* %8, align 8, !dbg !640, !tbaa !150
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %14, i64 %16, i64 %19, i64 %20) #18, !dbg !640
  %21 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !640
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %21, i8* noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false), !dbg !640, !tbaa.struct !502
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #18, !dbg !640
  %22 = add nuw nsw i32 %11, 1, !dbg !642
  call void @llvm.dbg.value(metadata i32 %22, metadata !627, metadata !DIExpression()), !dbg !634
  %23 = icmp eq i32 %22, 3, !dbg !643
  br i1 %23, label %9, label %10, !dbg !635, !llvm.loop !644
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* nocapture noundef %0) unnamed_addr #10 !dbg !646 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !648, metadata !DIExpression()), !dbg !656
  %2 = bitcast i64* %0 to i8*, !dbg !657
  %3 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !657
  %4 = load i64, i64* %3, align 4, !dbg !657, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %4, metadata !649, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()), !dbg !658
  %5 = getelementptr i64, i64* %0, i32 1, !dbg !659
  %6 = bitcast i64* %5 to i8*, !dbg !659
  call void @llvm.memmove.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %6, i8* noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false), !dbg !660, !tbaa !159
  call void @llvm.dbg.value(metadata i32 undef, metadata !650, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i32 undef, metadata !652, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !661
  call void @llvm.dbg.value(metadata i32 undef, metadata !655, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i32 undef, metadata !650, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !658
  store i64 %4, i64* %0, align 4, !dbg !662, !tbaa !159
  call fastcc void @Hacl_Bignum_Modulo_reduce(i64* noundef nonnull %0), !dbg !663
  ret void, !dbg !664
}

declare !dbg !665 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Modulo_reduce(i64* nocapture noundef %0) unnamed_addr #11 !dbg !668 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !670, metadata !DIExpression()), !dbg !672
  %2 = load i64, i64* %0, align 4, !dbg !673, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %2, metadata !671, metadata !DIExpression()), !dbg !672
  %3 = mul i64 %2, 20, !dbg !674
  store i64 %3, i64* %0, align 4, !dbg !675, !tbaa !159
  ret void, !dbg !676
}

declare !dbg !677 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #12

declare !dbg !678 void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #12

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_limb_(i64* nocapture noundef %0) unnamed_addr #10 !dbg !679 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !681, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i32 0, metadata !682, metadata !DIExpression()), !dbg !692
  %2 = load i64, i64* %0, align 4
  br label %4, !dbg !693

3:                                                ; preds = %4
  ret void, !dbg !694

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %2, %1 ], [ %13, %4 ]
  %6 = phi i32 [ 0, %1 ], [ %8, %4 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !682, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i32 %6, metadata !684, metadata !DIExpression()), !dbg !695
  %7 = getelementptr inbounds i64, i64* %0, i32 %6, !dbg !696
  call void @llvm.dbg.value(metadata i64 %5, metadata !687, metadata !DIExpression()), !dbg !695
  %8 = add nuw nsw i32 %6, 1, !dbg !697
  %9 = getelementptr inbounds i64, i64* %0, i32 %8, !dbg !698
  %10 = load i64, i64* %9, align 4, !dbg !698, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %10, metadata !688, metadata !DIExpression()), !dbg !695
  %11 = and i64 %5, 17592186044415, !dbg !699
  call void @llvm.dbg.value(metadata i64 %11, metadata !689, metadata !DIExpression()), !dbg !695
  %12 = lshr i64 %5, 44, !dbg !700
  call void @llvm.dbg.value(metadata i64 %12, metadata !690, metadata !DIExpression()), !dbg !695
  store i64 %11, i64* %7, align 4, !dbg !701, !tbaa !159
  %13 = add i64 %10, %12, !dbg !702
  store i64 %13, i64* %9, align 4, !dbg !703, !tbaa !159
  call void @llvm.dbg.value(metadata i32 %8, metadata !682, metadata !DIExpression()), !dbg !692
  %14 = icmp eq i32 %8, 2, !dbg !704
  br i1 %14, label %3, label %4, !dbg !693, !llvm.loop !705
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Modulo_carry_top(i64* nocapture noundef %0) unnamed_addr #11 !dbg !707 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !709, metadata !DIExpression()), !dbg !713
  %2 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !714
  %3 = load i64, i64* %2, align 4, !dbg !714, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %3, metadata !710, metadata !DIExpression()), !dbg !713
  %4 = load i64, i64* %0, align 4, !dbg !715, !tbaa !159
  call void @llvm.dbg.value(metadata i64 %4, metadata !711, metadata !DIExpression()), !dbg !713
  %5 = lshr i64 %3, 42, !dbg !716
  call void @llvm.dbg.value(metadata i64 %5, metadata !712, metadata !DIExpression()), !dbg !713
  %6 = and i64 %3, 4398046511103, !dbg !717
  store i64 %6, i64* %2, align 4, !dbg !718, !tbaa !159
  %7 = mul nuw nsw i64 %5, 5, !dbg !719
  %8 = add i64 %7, %4, !dbg !720
  store i64 %8, i64* %0, align 4, !dbg !721, !tbaa !159
  ret void, !dbg !722
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %0) unnamed_addr #5 !dbg !723 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !728, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 17592186044411, metadata !729, metadata !DIExpression()), !dbg !732
  %2 = and i64 %0, 9223372036854775807, !dbg !733
  %3 = add nsw i64 %2, -17592186044411, !dbg !734
  call void @llvm.dbg.value(metadata i64 %3, metadata !730, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !732
  call void @llvm.dbg.value(metadata i64 %0, metadata !731, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !732
  %4 = or i64 %3, %0, !dbg !735
  %5 = ashr i64 %4, 63, !dbg !735
  %6 = xor i64 %5, -1, !dbg !735
  ret i64 %6, !dbg !736
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %0, i64 noundef %1) unnamed_addr #5 !dbg !737 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !739, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i64 %1, metadata !740, metadata !DIExpression()), !dbg !741
  %3 = xor i64 %0, %1, !dbg !742
  %4 = xor i64 %3, -1, !dbg !742
  call void @llvm.dbg.value(metadata i64 %4, metadata !739, metadata !DIExpression()), !dbg !741
  %5 = shl i64 %4, 32, !dbg !743
  %6 = and i64 %5, %4, !dbg !744
  call void @llvm.dbg.value(metadata i64 %6, metadata !739, metadata !DIExpression()), !dbg !741
  %7 = shl i64 %6, 16, !dbg !745
  %8 = and i64 %7, %6, !dbg !746
  call void @llvm.dbg.value(metadata i64 %8, metadata !739, metadata !DIExpression()), !dbg !741
  %9 = shl i64 %8, 8, !dbg !747
  %10 = and i64 %9, %8, !dbg !748
  call void @llvm.dbg.value(metadata i64 %10, metadata !739, metadata !DIExpression()), !dbg !741
  %11 = shl i64 %10, 4, !dbg !749
  %12 = and i64 %11, %10, !dbg !750
  call void @llvm.dbg.value(metadata i64 %12, metadata !739, metadata !DIExpression()), !dbg !741
  %13 = shl i64 %12, 2, !dbg !751
  %14 = and i64 %13, %12, !dbg !752
  call void @llvm.dbg.value(metadata i64 %14, metadata !739, metadata !DIExpression()), !dbg !741
  %15 = shl i64 %14, 1, !dbg !753
  %16 = and i64 %15, %14, !dbg !754
  call void @llvm.dbg.value(metadata i64 %16, metadata !739, metadata !DIExpression()), !dbg !741
  %17 = ashr i64 %16, 63, !dbg !755
  ret i64 %17, !dbg !756
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @load128_le_(i8* nocapture noundef readonly %0, %struct.FStar_UInt128_uint128* nocapture noundef writeonly %1) unnamed_addr #11 !dbg !757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !762, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !763, metadata !DIExpression()), !dbg !764
  %3 = call fastcc i64 @load64(i8* noundef %0), !dbg !765
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !766
  store i64 %3, i64* %4, align 4, !dbg !767, !tbaa !147
  %5 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !768
  %6 = call fastcc i64 @load64(i8* noundef nonnull %5), !dbg !768
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !769
  store i64 %6, i64* %7, align 4, !dbg !770, !tbaa !150
  ret void, !dbg !771
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @load64(i8* nocapture noundef readonly %0) unnamed_addr #13 !dbg !772 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !776, metadata !DIExpression()), !dbg !778
  %2 = bitcast i8* %0 to i64*, !dbg !779
  %3 = load i64, i64* %2, align 1, !dbg !779
  call void @llvm.dbg.value(metadata i64 %3, metadata !777, metadata !DIExpression()), !dbg !778
  ret i64 %3, !dbg !780
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @store128_le_(i8* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #11 !dbg !781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !783, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !784, metadata !DIExpression()), !dbg !785
  %3 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !786
  %4 = load i64, i64* %3, align 4, !dbg !786, !tbaa !147
  call fastcc void @store64(i8* noundef %0, i64 noundef %4), !dbg !786
  %5 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !787
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !787
  %7 = load i64, i64* %6, align 4, !dbg !787, !tbaa !150
  call fastcc void @store64(i8* noundef nonnull %5, i64 noundef %7), !dbg !787
  ret void, !dbg !788
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store64(i8* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #4 !dbg !789 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !793, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i64 %1, metadata !794, metadata !DIExpression()), !dbg !795
  %3 = bitcast i8* %0 to i64*, !dbg !796
  store i64 %1, i64* %3, align 1, !dbg !796
  ret void, !dbg !797
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #14

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #12 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { argmemonly nofree nounwind willreturn writeonly }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/AEAD_Poly1305_64.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "0bba2969103dcce6008e347e42c08709")
!2 = !{!3, !8, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 48, baseType: !10)
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !12, line: 27, baseType: !13)
!12 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !6, line: 47, baseType: !14)
!14 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!15 = !{i32 1, !"NumRegisterParameters", i32 0}
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!23 = distinct !DISubprogram(name: "AEAD_Poly1305_64_seval", scope: !1, file: !1, line: 338, type: !24, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !31}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "Prims_nat", file: !27, line: 378, baseType: !28)
!27 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 26, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !6, line: 41, baseType: !30)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!32 = !{!33}
!33 = !DILocalVariable(name: "b", arg: 1, scope: !23, file: !1, line: 338, type: !31)
!34 = !DILocation(line: 0, scope: !23)
!35 = !DILocation(line: 340, column: 3, scope: !23)
!36 = !DILocation(line: 341, column: 3, scope: !23)
!37 = distinct !DISubprogram(name: "AEAD_Poly1305_64_selem", scope: !1, file: !1, line: 344, type: !38, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !41)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !31}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "Prims_int", file: !27, line: 378, baseType: !28)
!41 = !{!42}
!42 = !DILocalVariable(name: "s", arg: 1, scope: !37, file: !1, line: 344, type: !31)
!43 = !DILocation(line: 0, scope: !37)
!44 = !DILocation(line: 346, column: 3, scope: !37)
!45 = !DILocation(line: 347, column: 3, scope: !37)
!46 = distinct !DISubprogram(name: "AEAD_Poly1305_64_mk_state", scope: !1, file: !1, line: 351, type: !47, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !54, !54}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hacl_Impl_Poly1305_64_State_poly1305_state", file: !50, line: 59, baseType: !51)
!50 = !DIFile(filename: "hacl-c/hacl-c/AEAD_Poly1305_64.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "0908bb05e3cebcc46278beb5f390625a")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 54, size: 64, elements: !52)
!52 = !{!53, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !51, file: !50, line: 56, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !51, file: !50, line: 57, baseType: !54, size: 32, offset: 32)
!56 = !{!57, !58}
!57 = !DILocalVariable(name: "r", arg: 1, scope: !46, file: !1, line: 351, type: !54)
!58 = !DILocalVariable(name: "acc", arg: 2, scope: !46, file: !1, line: 351, type: !54)
!59 = !DILocation(line: 0, scope: !46)
!60 = !DILocation(line: 353, column: 10, scope: !46)
!61 = !DILocation(line: 353, column: 3, scope: !46)
!62 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_mk_state", scope: !1, file: !1, line: 279, type: !47, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!63 = !{!64, !65}
!64 = !DILocalVariable(name: "r", arg: 1, scope: !62, file: !1, line: 279, type: !54)
!65 = !DILocalVariable(name: "h", arg: 2, scope: !62, file: !1, line: 279, type: !54)
!66 = !DILocation(line: 0, scope: !62)
!67 = !DILocation(line: 281, column: 55, scope: !62)
!68 = !{!69, !70, i64 0}
!69 = !{!"", !70, i64 0, !70, i64 4}
!70 = !{!"any pointer", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!69, !70, i64 4}
!74 = !DILocation(line: 281, column: 3, scope: !62)
!75 = distinct !DISubprogram(name: "AEAD_Poly1305_64_mul_div_16", scope: !1, file: !1, line: 356, type: !76, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{!3, !3}
!78 = !{!79}
!79 = !DILocalVariable(name: "len1", arg: 1, scope: !75, file: !1, line: 356, type: !3)
!80 = !DILocation(line: 0, scope: !75)
!81 = !DILocation(line: 358, column: 24, scope: !75)
!82 = !DILocation(line: 358, column: 3, scope: !75)
!83 = distinct !DISubprogram(name: "AEAD_Poly1305_64_pad_last", scope: !1, file: !1, line: 362, type: !84, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !90)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !49, !86, !3}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !89)
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !{!91, !92, !93, !94, !98}
!91 = !DILocalVariable(name: "st", arg: 1, scope: !83, file: !1, line: 363, type: !49)
!92 = !DILocalVariable(name: "input", arg: 2, scope: !83, file: !1, line: 364, type: !86)
!93 = !DILocalVariable(name: "len1", arg: 3, scope: !83, file: !1, line: 365, type: !3)
!94 = !DILocalVariable(name: "b", scope: !83, file: !1, line: 368, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 16)
!98 = !DILocalVariable(name: "b0", scope: !99, file: !1, line: 373, type: !86)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 370, column: 3)
!100 = distinct !DILexicalBlock(scope: !83, file: !1, line: 369, column: 7)
!101 = !DILocation(line: 0, scope: !83)
!102 = !DILocation(line: 368, column: 3, scope: !83)
!103 = !DILocation(line: 368, column: 11, scope: !83)
!104 = !DILocation(line: 369, column: 14, scope: !100)
!105 = !DILocation(line: 369, column: 7, scope: !83)
!106 = !DILocation(line: 372, column: 5, scope: !99)
!107 = !DILocation(line: 0, scope: !99)
!108 = !DILocation(line: 374, column: 5, scope: !99)
!109 = !DILocation(line: 375, column: 3, scope: !99)
!110 = !DILocation(line: 376, column: 1, scope: !83)
!111 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_update", scope: !1, file: !1, line: 168, type: !112, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !49, !86}
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !127, !135, !136, !137, !138, !139}
!115 = !DILocalVariable(name: "st", arg: 1, scope: !111, file: !1, line: 169, type: !49)
!116 = !DILocalVariable(name: "m", arg: 2, scope: !111, file: !1, line: 170, type: !86)
!117 = !DILocalVariable(name: "scrut0", scope: !111, file: !1, line: 173, type: !49)
!118 = !DILocalVariable(name: "h", scope: !111, file: !1, line: 174, type: !54)
!119 = !DILocalVariable(name: "acc", scope: !111, file: !1, line: 175, type: !54)
!120 = !DILocalVariable(name: "scrut", scope: !111, file: !1, line: 176, type: !49)
!121 = !DILocalVariable(name: "r", scope: !111, file: !1, line: 177, type: !54)
!122 = !DILocalVariable(name: "r3", scope: !111, file: !1, line: 178, type: !54)
!123 = !DILocalVariable(name: "tmp", scope: !111, file: !1, line: 179, type: !124)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 3)
!127 = !DILocalVariable(name: "m0", scope: !111, file: !1, line: 180, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !129, line: 37, baseType: !130)
!129 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !129, line: 35, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 30, size: 128, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !131, file: !129, line: 32, baseType: !8, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !131, file: !129, line: 33, baseType: !8, size: 64, offset: 64)
!135 = !DILocalVariable(name: "r0", scope: !111, file: !1, line: 181, type: !8)
!136 = !DILocalVariable(name: "r1", scope: !111, file: !1, line: 183, type: !8)
!137 = !DILocalVariable(name: "r2", scope: !111, file: !1, line: 186, type: !8)
!138 = !DILocalVariable(name: "b2", scope: !111, file: !1, line: 190, type: !8)
!139 = !DILocalVariable(name: "b2_", scope: !111, file: !1, line: 191, type: !8)
!140 = !DILocation(line: 0, scope: !111)
!141 = !DILocation(line: 179, column: 3, scope: !111)
!142 = !DILocation(line: 179, column: 12, scope: !111)
!143 = !DILocation(line: 180, column: 3, scope: !111)
!144 = !DILocation(line: 180, column: 19, scope: !111)
!145 = !DILocation(line: 180, column: 24, scope: !111)
!146 = !DILocation(line: 181, column: 17, scope: !111)
!147 = !{!148, !149, i64 0}
!148 = !{!"", !149, i64 0, !149, i64 8}
!149 = !{!"long long", !71, i64 0}
!150 = !{!148, !149, i64 8}
!151 = !DILocation(line: 181, column: 53, scope: !111)
!152 = !DILocation(line: 184, column: 37, scope: !111)
!153 = !DILocation(line: 184, column: 5, scope: !111)
!154 = !DILocation(line: 185, column: 5, scope: !111)
!155 = !DILocation(line: 186, column: 49, scope: !111)
!156 = !DILocation(line: 186, column: 17, scope: !111)
!157 = !DILocation(line: 187, column: 3, scope: !111)
!158 = !DILocation(line: 187, column: 11, scope: !111)
!159 = !{!149, !149, i64 0}
!160 = !DILocation(line: 188, column: 3, scope: !111)
!161 = !DILocation(line: 188, column: 11, scope: !111)
!162 = !DILocation(line: 189, column: 3, scope: !111)
!163 = !DILocation(line: 191, column: 43, scope: !111)
!164 = !DILocation(line: 192, column: 11, scope: !111)
!165 = !DILocation(line: 193, column: 3, scope: !111)
!166 = !DILocation(line: 194, column: 1, scope: !111)
!167 = distinct !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_init", scope: !1, file: !1, line: 379, type: !168, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !49, !86, !3, !86}
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!171 = !DILocalVariable(name: "st", arg: 1, scope: !167, file: !1, line: 380, type: !49)
!172 = !DILocalVariable(name: "input", arg: 2, scope: !167, file: !1, line: 381, type: !86)
!173 = !DILocalVariable(name: "len1", arg: 3, scope: !167, file: !1, line: 382, type: !3)
!174 = !DILocalVariable(name: "k1", arg: 4, scope: !167, file: !1, line: 383, type: !86)
!175 = !DILocalVariable(name: "len_16", scope: !167, file: !1, line: 386, type: !3)
!176 = !DILocalVariable(name: "rem_16", scope: !167, file: !1, line: 387, type: !3)
!177 = !DILocalVariable(name: "kr", scope: !167, file: !1, line: 388, type: !86)
!178 = !DILocalVariable(name: "len_", scope: !167, file: !1, line: 389, type: !3)
!179 = !DILocalVariable(name: "part_input", scope: !167, file: !1, line: 390, type: !86)
!180 = !DILocalVariable(name: "last_block", scope: !167, file: !1, line: 391, type: !86)
!181 = !DILocation(line: 0, scope: !167)
!182 = !DILocation(line: 386, column: 26, scope: !167)
!183 = !DILocation(line: 387, column: 26, scope: !167)
!184 = !DILocation(line: 389, column: 33, scope: !167)
!185 = !DILocation(line: 391, column: 31, scope: !167)
!186 = !DILocation(line: 392, column: 64, scope: !167)
!187 = !DILocation(line: 392, column: 3, scope: !167)
!188 = !DILocation(line: 393, column: 3, scope: !167)
!189 = !DILocation(line: 394, column: 1, scope: !167)
!190 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_poly1305_partial", scope: !1, file: !1, line: 302, type: !191, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !49, !86, !8, !86}
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!194 = !DILocalVariable(name: "st", arg: 1, scope: !190, file: !1, line: 303, type: !49)
!195 = !DILocalVariable(name: "input", arg: 2, scope: !190, file: !1, line: 304, type: !86)
!196 = !DILocalVariable(name: "len1", arg: 3, scope: !190, file: !1, line: 305, type: !8)
!197 = !DILocalVariable(name: "kr", arg: 4, scope: !190, file: !1, line: 306, type: !86)
!198 = !DILocalVariable(name: "scrut", scope: !190, file: !1, line: 309, type: !49)
!199 = !DILocalVariable(name: "r", scope: !190, file: !1, line: 310, type: !54)
!200 = !DILocalVariable(name: "x0", scope: !190, file: !1, line: 311, type: !54)
!201 = !DILocalVariable(name: "k1", scope: !190, file: !1, line: 312, type: !128)
!202 = !DILocalVariable(name: "k_clamped", scope: !190, file: !1, line: 314, type: !128)
!203 = !DILocalVariable(name: "r0", scope: !190, file: !1, line: 319, type: !8)
!204 = !DILocalVariable(name: "r1", scope: !190, file: !1, line: 321, type: !8)
!205 = !DILocalVariable(name: "r2", scope: !190, file: !1, line: 325, type: !8)
!206 = !DILocalVariable(name: "scrut0", scope: !190, file: !1, line: 329, type: !49)
!207 = !DILocalVariable(name: "h", scope: !190, file: !1, line: 330, type: !54)
!208 = !DILocalVariable(name: "x00", scope: !190, file: !1, line: 331, type: !54)
!209 = !DILocation(line: 0, scope: !190)
!210 = !DILocation(line: 312, column: 3, scope: !190)
!211 = !DILocation(line: 312, column: 19, scope: !190)
!212 = !DILocation(line: 312, column: 24, scope: !190)
!213 = !DILocation(line: 313, column: 3, scope: !190)
!214 = !DILocation(line: 314, column: 3, scope: !190)
!215 = !DILocation(line: 316, column: 52, scope: !190)
!216 = !DILocation(line: 316, column: 27, scope: !190)
!217 = !DILocation(line: 318, column: 9, scope: !190)
!218 = !DILocation(line: 316, column: 7, scope: !190)
!219 = !DILocation(line: 315, column: 5, scope: !190)
!220 = !DILocation(line: 319, column: 17, scope: !190)
!221 = !DILocation(line: 319, column: 60, scope: !190)
!222 = !DILocation(line: 322, column: 37, scope: !190)
!223 = !DILocation(line: 322, column: 5, scope: !190)
!224 = !DILocation(line: 323, column: 5, scope: !190)
!225 = !DILocation(line: 325, column: 40, scope: !190)
!226 = !DILocation(line: 325, column: 8, scope: !190)
!227 = !DILocation(line: 326, column: 10, scope: !190)
!228 = !DILocation(line: 327, column: 3, scope: !190)
!229 = !DILocation(line: 327, column: 10, scope: !190)
!230 = !DILocation(line: 328, column: 3, scope: !190)
!231 = !DILocation(line: 328, column: 10, scope: !190)
!232 = !DILocation(line: 335, column: 3, scope: !190)
!233 = !DILocation(line: 333, column: 11, scope: !190)
!234 = !DILocation(line: 336, column: 1, scope: !190)
!235 = distinct !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_continue", scope: !1, file: !1, line: 397, type: !84, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244}
!237 = !DILocalVariable(name: "st", arg: 1, scope: !235, file: !1, line: 398, type: !49)
!238 = !DILocalVariable(name: "input", arg: 2, scope: !235, file: !1, line: 399, type: !86)
!239 = !DILocalVariable(name: "len1", arg: 3, scope: !235, file: !1, line: 400, type: !3)
!240 = !DILocalVariable(name: "len_16", scope: !235, file: !1, line: 403, type: !3)
!241 = !DILocalVariable(name: "rem_16", scope: !235, file: !1, line: 404, type: !3)
!242 = !DILocalVariable(name: "len_", scope: !235, file: !1, line: 405, type: !3)
!243 = !DILocalVariable(name: "part_input", scope: !235, file: !1, line: 406, type: !86)
!244 = !DILocalVariable(name: "last_block", scope: !235, file: !1, line: 407, type: !86)
!245 = !DILocation(line: 0, scope: !235)
!246 = !DILocation(line: 403, column: 26, scope: !235)
!247 = !DILocation(line: 404, column: 26, scope: !235)
!248 = !DILocation(line: 405, column: 33, scope: !235)
!249 = !DILocation(line: 407, column: 31, scope: !235)
!250 = !DILocation(line: 408, column: 63, scope: !235)
!251 = !DILocation(line: 408, column: 3, scope: !235)
!252 = !DILocation(line: 409, column: 3, scope: !235)
!253 = !DILocation(line: 410, column: 1, scope: !235)
!254 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_poly1305_blocks", scope: !1, file: !1, line: 285, type: !255, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !49, !86, !8}
!257 = !{!258, !259, !260, !261, !264, !265}
!258 = !DILocalVariable(name: "st", arg: 1, scope: !254, file: !1, line: 286, type: !49)
!259 = !DILocalVariable(name: "m", arg: 2, scope: !254, file: !1, line: 287, type: !86)
!260 = !DILocalVariable(name: "len1", arg: 3, scope: !254, file: !1, line: 288, type: !8)
!261 = !DILocalVariable(name: "block", scope: !262, file: !1, line: 293, type: !86)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 292, column: 3)
!263 = distinct !DILexicalBlock(scope: !254, file: !1, line: 291, column: 7)
!264 = !DILocalVariable(name: "tail1", scope: !262, file: !1, line: 294, type: !86)
!265 = !DILocalVariable(name: "len2", scope: !262, file: !1, line: 296, type: !8)
!266 = !DILocation(line: 0, scope: !254)
!267 = !DILocation(line: 291, column: 14, scope: !263)
!268 = !DILocation(line: 291, column: 7, scope: !254)
!269 = !DILocation(line: 0, scope: !262)
!270 = !DILocation(line: 294, column: 24, scope: !262)
!271 = !DILocation(line: 295, column: 5, scope: !262)
!272 = !DILocation(line: 296, column: 26, scope: !262)
!273 = !DILocation(line: 297, column: 5, scope: !262)
!274 = !DILocation(line: 298, column: 3, scope: !262)
!275 = !DILocation(line: 299, column: 1, scope: !254)
!276 = distinct !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_finish_", scope: !1, file: !1, line: 413, type: !112, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !277)
!277 = !{!278, !279, !280, !281, !282, !283}
!278 = !DILocalVariable(name: "st", arg: 1, scope: !276, file: !1, line: 414, type: !49)
!279 = !DILocalVariable(name: "input", arg: 2, scope: !276, file: !1, line: 415, type: !86)
!280 = !DILocalVariable(name: "x2", scope: !276, file: !1, line: 419, type: !86)
!281 = !DILocalVariable(name: "scrut", scope: !276, file: !1, line: 422, type: !49)
!282 = !DILocalVariable(name: "h", scope: !276, file: !1, line: 423, type: !54)
!283 = !DILocalVariable(name: "acc", scope: !276, file: !1, line: 424, type: !54)
!284 = !DILocation(line: 0, scope: !276)
!285 = !DILocation(line: 418, column: 3, scope: !276)
!286 = !DILocation(line: 425, column: 3, scope: !276)
!287 = !DILocation(line: 426, column: 1, scope: !276)
!288 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_last_pass", scope: !1, file: !1, line: 241, type: !289, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !54}
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!292 = !DILocalVariable(name: "acc", arg: 1, scope: !288, file: !1, line: 241, type: !54)
!293 = !DILocalVariable(name: "a0", scope: !288, file: !1, line: 245, type: !8)
!294 = !DILocalVariable(name: "a10", scope: !288, file: !1, line: 246, type: !8)
!295 = !DILocalVariable(name: "a20", scope: !288, file: !1, line: 247, type: !8)
!296 = !DILocalVariable(name: "a0_", scope: !288, file: !1, line: 248, type: !8)
!297 = !DILocalVariable(name: "r0", scope: !288, file: !1, line: 249, type: !8)
!298 = !DILocalVariable(name: "a1_", scope: !288, file: !1, line: 250, type: !8)
!299 = !DILocalVariable(name: "r1", scope: !288, file: !1, line: 251, type: !8)
!300 = !DILocalVariable(name: "a2_", scope: !288, file: !1, line: 252, type: !8)
!301 = !DILocalVariable(name: "i0", scope: !288, file: !1, line: 257, type: !8)
!302 = !DILocalVariable(name: "i1", scope: !288, file: !1, line: 258, type: !8)
!303 = !DILocalVariable(name: "i0_", scope: !288, file: !1, line: 259, type: !8)
!304 = !DILocalVariable(name: "i1_", scope: !288, file: !1, line: 260, type: !8)
!305 = !DILocalVariable(name: "a00", scope: !288, file: !1, line: 263, type: !8)
!306 = !DILocalVariable(name: "a1", scope: !288, file: !1, line: 264, type: !8)
!307 = !DILocalVariable(name: "a2", scope: !288, file: !1, line: 265, type: !8)
!308 = !DILocalVariable(name: "mask0", scope: !288, file: !1, line: 266, type: !8)
!309 = !DILocalVariable(name: "mask1", scope: !288, file: !1, line: 267, type: !8)
!310 = !DILocalVariable(name: "mask2", scope: !288, file: !1, line: 268, type: !8)
!311 = !DILocalVariable(name: "mask", scope: !288, file: !1, line: 269, type: !8)
!312 = !DILocalVariable(name: "a0_0", scope: !288, file: !1, line: 270, type: !8)
!313 = !DILocalVariable(name: "a1_0", scope: !288, file: !1, line: 271, type: !8)
!314 = !DILocalVariable(name: "a2_0", scope: !288, file: !1, line: 272, type: !8)
!315 = !DILocation(line: 0, scope: !288)
!316 = !DILocation(line: 243, column: 3, scope: !288)
!317 = !DILocation(line: 244, column: 3, scope: !288)
!318 = !DILocation(line: 245, column: 17, scope: !288)
!319 = !DILocation(line: 246, column: 18, scope: !288)
!320 = !DILocation(line: 247, column: 18, scope: !288)
!321 = !DILocation(line: 248, column: 21, scope: !288)
!322 = !DILocation(line: 249, column: 20, scope: !288)
!323 = !DILocation(line: 250, column: 23, scope: !288)
!324 = !DILocation(line: 250, column: 29, scope: !288)
!325 = !DILocation(line: 251, column: 28, scope: !288)
!326 = !DILocation(line: 252, column: 22, scope: !288)
!327 = !DILocation(line: 253, column: 11, scope: !288)
!328 = !DILocation(line: 254, column: 11, scope: !288)
!329 = !DILocation(line: 255, column: 11, scope: !288)
!330 = !DILocation(line: 256, column: 3, scope: !288)
!331 = !DILocation(line: 257, column: 17, scope: !288)
!332 = !DILocation(line: 258, column: 17, scope: !288)
!333 = !DILocation(line: 259, column: 21, scope: !288)
!334 = !DILocation(line: 260, column: 27, scope: !288)
!335 = !DILocation(line: 260, column: 21, scope: !288)
!336 = !DILocation(line: 261, column: 11, scope: !288)
!337 = !DILocation(line: 262, column: 11, scope: !288)
!338 = !DILocation(line: 265, column: 17, scope: !288)
!339 = !DILocation(line: 266, column: 20, scope: !288)
!340 = !DILocation(line: 267, column: 20, scope: !288)
!341 = !DILocation(line: 268, column: 20, scope: !288)
!342 = !DILocation(line: 269, column: 26, scope: !288)
!343 = !DILocation(line: 269, column: 35, scope: !288)
!344 = !DILocation(line: 270, column: 51, scope: !288)
!345 = !DILocation(line: 270, column: 23, scope: !288)
!346 = !DILocation(line: 271, column: 50, scope: !288)
!347 = !DILocation(line: 271, column: 22, scope: !288)
!348 = !DILocation(line: 272, column: 50, scope: !288)
!349 = !DILocation(line: 272, column: 22, scope: !288)
!350 = !DILocation(line: 273, column: 11, scope: !288)
!351 = !DILocation(line: 274, column: 11, scope: !288)
!352 = !DILocation(line: 275, column: 11, scope: !288)
!353 = !DILocation(line: 276, column: 1, scope: !288)
!354 = distinct !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_finish", scope: !1, file: !1, line: 429, type: !355, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !49, !86, !86, !86}
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!358 = !DILocalVariable(name: "st", arg: 1, scope: !354, file: !1, line: 430, type: !49)
!359 = !DILocalVariable(name: "input", arg: 2, scope: !354, file: !1, line: 431, type: !86)
!360 = !DILocalVariable(name: "mac", arg: 3, scope: !354, file: !1, line: 432, type: !86)
!361 = !DILocalVariable(name: "key_s", arg: 4, scope: !354, file: !1, line: 433, type: !86)
!362 = !DILocalVariable(name: "x2", scope: !354, file: !1, line: 437, type: !86)
!363 = !DILocalVariable(name: "scrut", scope: !354, file: !1, line: 440, type: !49)
!364 = !DILocalVariable(name: "h", scope: !354, file: !1, line: 441, type: !54)
!365 = !DILocalVariable(name: "acc", scope: !354, file: !1, line: 442, type: !54)
!366 = !DILocalVariable(name: "scrut0", scope: !354, file: !1, line: 444, type: !49)
!367 = !DILocalVariable(name: "h3", scope: !354, file: !1, line: 445, type: !54)
!368 = !DILocalVariable(name: "acc0", scope: !354, file: !1, line: 446, type: !54)
!369 = !DILocalVariable(name: "k_", scope: !354, file: !1, line: 447, type: !128)
!370 = !DILocalVariable(name: "h0", scope: !354, file: !1, line: 448, type: !8)
!371 = !DILocalVariable(name: "h1", scope: !354, file: !1, line: 449, type: !8)
!372 = !DILocalVariable(name: "h2", scope: !354, file: !1, line: 450, type: !8)
!373 = !DILocalVariable(name: "acc_", scope: !354, file: !1, line: 452, type: !128)
!374 = !DILocalVariable(name: "mac_", scope: !354, file: !1, line: 458, type: !128)
!375 = !DILocation(line: 0, scope: !354)
!376 = !DILocation(line: 436, column: 3, scope: !354)
!377 = !DILocation(line: 443, column: 3, scope: !354)
!378 = !DILocation(line: 447, column: 3, scope: !354)
!379 = !DILocation(line: 447, column: 19, scope: !354)
!380 = !DILocation(line: 447, column: 24, scope: !354)
!381 = !DILocation(line: 448, column: 17, scope: !354)
!382 = !DILocation(line: 449, column: 17, scope: !354)
!383 = !DILocation(line: 450, column: 17, scope: !354)
!384 = !DILocation(line: 451, column: 3, scope: !354)
!385 = !DILocation(line: 452, column: 3, scope: !354)
!386 = !DILocation(line: 454, column: 11, scope: !354)
!387 = !DILocation(line: 455, column: 16, scope: !354)
!388 = !DILocation(line: 455, column: 11, scope: !354)
!389 = !DILocation(line: 453, column: 50, scope: !354)
!390 = !DILocation(line: 453, column: 25, scope: !354)
!391 = !DILocation(line: 457, column: 42, scope: !354)
!392 = !DILocation(line: 457, column: 59, scope: !354)
!393 = !DILocation(line: 457, column: 7, scope: !354)
!394 = !DILocation(line: 453, column: 5, scope: !354)
!395 = !DILocation(line: 458, column: 3, scope: !354)
!396 = !DILocation(line: 458, column: 19, scope: !354)
!397 = !DILocation(line: 458, column: 26, scope: !354)
!398 = !DILocation(line: 459, column: 3, scope: !354)
!399 = !DILocation(line: 460, column: 1, scope: !354)
!400 = distinct !DISubprogram(name: "load128_le", scope: !27, file: !27, line: 543, type: !401, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !404)
!401 = !DISubroutineType(types: !402)
!402 = !{!403, !86}
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !27, line: 510, baseType: !130)
!404 = !{!405, !406}
!405 = !DILocalVariable(name: "b", arg: 1, scope: !400, file: !27, line: 543, type: !86)
!406 = !DILocalVariable(name: "r", scope: !400, file: !27, line: 544, type: !403)
!407 = !DILocation(line: 0, scope: !400)
!408 = !DILocation(line: 545, column: 3, scope: !400)
!409 = !DILocation(line: 546, column: 3, scope: !400)
!410 = !DISubprogram(name: "FStar_UInt128_logor", scope: !129, file: !129, line: 53, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{!130, !130, !130}
!413 = !{}
!414 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !129, file: !129, line: 57, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !413)
!415 = !DISubroutineType(types: !416)
!416 = !{!130, !130, !3}
!417 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !129, file: !129, line: 65, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !413)
!418 = !DISubroutineType(types: !419)
!419 = !{!130, !8}
!420 = !DISubprogram(name: "FStar_UInt128_add_mod", scope: !129, file: !129, line: 43, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !413)
!421 = distinct !DISubprogram(name: "store128_le", scope: !27, file: !27, line: 549, type: !422, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !86, !403}
!424 = !{!425, !426}
!425 = !DILocalVariable(name: "b", arg: 1, scope: !421, file: !27, line: 549, type: !86)
!426 = !DILocalVariable(name: "n", arg: 2, scope: !421, file: !27, line: 549, type: !403)
!427 = !DILocation(line: 0, scope: !421)
!428 = !DILocation(line: 549, column: 54, scope: !421)
!429 = !DILocation(line: 549, column: 59, scope: !421)
!430 = !DILocation(line: 549, column: 80, scope: !421)
!431 = !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !129, file: !129, line: 67, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !413)
!432 = !DISubroutineType(types: !433)
!433 = !{!8, !130}
!434 = !DISubprogram(name: "FStar_UInt128_shift_right", scope: !129, file: !129, line: 59, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !413)
!435 = distinct !DISubprogram(name: "Hacl_Bignum_AddAndMultiply_add_and_multiply", scope: !1, file: !1, line: 156, type: !436, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !54, !54, !54}
!438 = !{!439, !440, !441, !442, !444, !447}
!439 = !DILocalVariable(name: "acc", arg: 1, scope: !435, file: !1, line: 156, type: !54)
!440 = !DILocalVariable(name: "block", arg: 2, scope: !435, file: !1, line: 156, type: !54)
!441 = !DILocalVariable(name: "r", arg: 3, scope: !435, file: !1, line: 156, type: !54)
!442 = !DILocalVariable(name: "i", scope: !443, file: !1, line: 158, type: !3)
!443 = distinct !DILexicalBlock(scope: !435, file: !1, line: 158, column: 3)
!444 = !DILocalVariable(name: "xi", scope: !445, file: !1, line: 160, type: !8)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 159, column: 3)
!446 = distinct !DILexicalBlock(scope: !443, file: !1, line: 158, column: 3)
!447 = !DILocalVariable(name: "yi", scope: !445, file: !1, line: 161, type: !8)
!448 = !DILocation(line: 0, scope: !435)
!449 = !DILocation(line: 0, scope: !443)
!450 = !DILocation(line: 158, column: 3, scope: !443)
!451 = !DILocation(line: 164, column: 3, scope: !435)
!452 = !DILocation(line: 165, column: 1, scope: !435)
!453 = !DILocation(line: 160, column: 19, scope: !445)
!454 = !DILocation(line: 0, scope: !445)
!455 = !DILocation(line: 161, column: 19, scope: !445)
!456 = !DILocation(line: 162, column: 17, scope: !445)
!457 = !DILocation(line: 162, column: 12, scope: !445)
!458 = !DILocation(line: 158, column: 59, scope: !446)
!459 = !DILocation(line: 158, column: 37, scope: !446)
!460 = distinct !{!460, !450, !461, !462, !463}
!461 = !DILocation(line: 163, column: 3, scope: !443)
!462 = !{!"llvm.loop.mustprogress"}
!463 = !{!"llvm.loop.unroll.disable"}
!464 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_fmul", scope: !1, file: !1, line: 135, type: !436, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !465)
!465 = !{!466, !467, !468, !469, !470, !472, !474, !475, !476, !477}
!466 = !DILocalVariable(name: "output", arg: 1, scope: !464, file: !1, line: 135, type: !54)
!467 = !DILocalVariable(name: "input", arg: 2, scope: !464, file: !1, line: 135, type: !54)
!468 = !DILocalVariable(name: "input2", arg: 3, scope: !464, file: !1, line: 135, type: !54)
!469 = !DILocalVariable(name: "tmp", scope: !464, file: !1, line: 137, type: !124)
!470 = !DILocalVariable(name: "t", scope: !464, file: !1, line: 140, type: !471)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 384, elements: !125)
!472 = !DILocalVariable(name: "_i", scope: !473, file: !1, line: 141, type: !3)
!473 = distinct !DILexicalBlock(scope: !464, file: !1, line: 141, column: 3)
!474 = !DILocalVariable(name: "i0", scope: !464, file: !1, line: 147, type: !8)
!475 = !DILocalVariable(name: "i1", scope: !464, file: !1, line: 148, type: !8)
!476 = !DILocalVariable(name: "i0_", scope: !464, file: !1, line: 149, type: !8)
!477 = !DILocalVariable(name: "i1_", scope: !464, file: !1, line: 150, type: !8)
!478 = !DILocation(line: 0, scope: !464)
!479 = !DILocation(line: 137, column: 3, scope: !464)
!480 = !DILocation(line: 137, column: 12, scope: !464)
!481 = !DILocation(line: 138, column: 3, scope: !464)
!482 = !DILocation(line: 140, column: 3, scope: !464)
!483 = !DILocation(line: 140, column: 19, scope: !464)
!484 = !DILocation(line: 0, scope: !473)
!485 = !DILocation(line: 141, column: 3, scope: !473)
!486 = !DILocation(line: 143, column: 38, scope: !464)
!487 = !DILocation(line: 143, column: 3, scope: !464)
!488 = !DILocation(line: 144, column: 3, scope: !464)
!489 = !DILocation(line: 145, column: 3, scope: !464)
!490 = !DILocation(line: 146, column: 3, scope: !464)
!491 = !DILocation(line: 147, column: 17, scope: !464)
!492 = !DILocation(line: 148, column: 17, scope: !464)
!493 = !DILocation(line: 149, column: 21, scope: !464)
!494 = !DILocation(line: 150, column: 27, scope: !464)
!495 = !DILocation(line: 150, column: 21, scope: !464)
!496 = !DILocation(line: 151, column: 14, scope: !464)
!497 = !DILocation(line: 152, column: 14, scope: !464)
!498 = !DILocation(line: 153, column: 1, scope: !464)
!499 = !DILocation(line: 142, column: 5, scope: !500)
!500 = distinct !DILexicalBlock(scope: !473, file: !1, line: 141, column: 3)
!501 = !DILocation(line: 142, column: 13, scope: !500)
!502 = !{i64 0, i64 8, !159, i64 8, i64 8, !159}
!503 = !DILocation(line: 141, column: 45, scope: !500)
!504 = !DILocation(line: 141, column: 29, scope: !500)
!505 = distinct !{!505, !485, !506, !462, !463}
!506 = !DILocation(line: 142, column: 57, scope: !473)
!507 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_mul_shift_reduce_", scope: !1, file: !1, line: 122, type: !508, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !511)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !510, !54, !54}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!511 = !{!512, !513, !514, !515, !517, !520, !521}
!512 = !DILocalVariable(name: "output", arg: 1, scope: !507, file: !1, line: 122, type: !510)
!513 = !DILocalVariable(name: "input", arg: 2, scope: !507, file: !1, line: 122, type: !54)
!514 = !DILocalVariable(name: "input2", arg: 3, scope: !507, file: !1, line: 122, type: !54)
!515 = !DILocalVariable(name: "i", scope: !516, file: !1, line: 124, type: !3)
!516 = distinct !DILexicalBlock(scope: !507, file: !1, line: 124, column: 3)
!517 = !DILocalVariable(name: "input2i", scope: !518, file: !1, line: 126, type: !8)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 125, column: 3)
!519 = distinct !DILexicalBlock(scope: !516, file: !1, line: 124, column: 3)
!520 = !DILocalVariable(name: "i", scope: !507, file: !1, line: 130, type: !3)
!521 = !DILocalVariable(name: "input2i", scope: !507, file: !1, line: 131, type: !8)
!522 = !DILocation(line: 0, scope: !507)
!523 = !DILocation(line: 0, scope: !516)
!524 = !DILocation(line: 124, column: 3, scope: !516)
!525 = !DILocation(line: 131, column: 22, scope: !507)
!526 = !DILocation(line: 132, column: 3, scope: !507)
!527 = !DILocation(line: 133, column: 1, scope: !507)
!528 = !DILocation(line: 126, column: 24, scope: !518)
!529 = !DILocation(line: 0, scope: !518)
!530 = !DILocation(line: 127, column: 5, scope: !518)
!531 = !DILocation(line: 128, column: 5, scope: !518)
!532 = !DILocation(line: 124, column: 59, scope: !519)
!533 = !DILocation(line: 124, column: 37, scope: !519)
!534 = distinct !{!534, !524, !535, !462, !463}
!535 = !DILocation(line: 129, column: 3, scope: !516)
!536 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_wide_", scope: !1, file: !1, line: 80, type: !537, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !510}
!539 = !{!540, !541, !543, !546, !547, !548, !549}
!540 = !DILocalVariable(name: "tmp", arg: 1, scope: !536, file: !1, line: 80, type: !510)
!541 = !DILocalVariable(name: "i", scope: !542, file: !1, line: 82, type: !3)
!542 = distinct !DILexicalBlock(scope: !536, file: !1, line: 82, column: 3)
!543 = !DILocalVariable(name: "ctr", scope: !544, file: !1, line: 84, type: !3)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 83, column: 3)
!545 = distinct !DILexicalBlock(scope: !542, file: !1, line: 82, column: 3)
!546 = !DILocalVariable(name: "tctr", scope: !544, file: !1, line: 85, type: !128)
!547 = !DILocalVariable(name: "tctrp1", scope: !544, file: !1, line: 86, type: !128)
!548 = !DILocalVariable(name: "r0", scope: !544, file: !1, line: 87, type: !8)
!549 = !DILocalVariable(name: "c", scope: !544, file: !1, line: 88, type: !128)
!550 = !DILocation(line: 0, scope: !536)
!551 = !DILocation(line: 0, scope: !542)
!552 = !DILocation(line: 82, column: 3, scope: !542)
!553 = !DILocation(line: 92, column: 1, scope: !536)
!554 = !DILocation(line: 0, scope: !544)
!555 = !DILocation(line: 85, column: 28, scope: !544)
!556 = !{i64 0, i64 8, !159}
!557 = !DILocation(line: 86, column: 38, scope: !544)
!558 = !DILocation(line: 86, column: 30, scope: !544)
!559 = !DILocation(line: 87, column: 19, scope: !544)
!560 = !DILocation(line: 87, column: 57, scope: !544)
!561 = !DILocation(line: 88, column: 5, scope: !544)
!562 = !DILocation(line: 88, column: 21, scope: !544)
!563 = !DILocation(line: 88, column: 25, scope: !544)
!564 = !DILocation(line: 89, column: 16, scope: !544)
!565 = !DILocation(line: 90, column: 31, scope: !544)
!566 = !DILocation(line: 91, column: 3, scope: !545)
!567 = !DILocation(line: 82, column: 37, scope: !545)
!568 = distinct !{!568, !552, !569, !462, !463}
!569 = !DILocation(line: 91, column: 3, scope: !542)
!570 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top_wide", scope: !1, file: !1, line: 42, type: !537, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !571)
!571 = !{!572, !573, !574, !575, !576, !577}
!572 = !DILocalVariable(name: "b", arg: 1, scope: !570, file: !1, line: 42, type: !510)
!573 = !DILocalVariable(name: "b2", scope: !570, file: !1, line: 44, type: !128)
!574 = !DILocalVariable(name: "b0", scope: !570, file: !1, line: 45, type: !128)
!575 = !DILocalVariable(name: "b2_", scope: !570, file: !1, line: 47, type: !128)
!576 = !DILocalVariable(name: "b2_42", scope: !570, file: !1, line: 48, type: !8)
!577 = !DILocalVariable(name: "b0_", scope: !570, file: !1, line: 50, type: !128)
!578 = !DILocation(line: 0, scope: !570)
!579 = !DILocation(line: 44, column: 24, scope: !570)
!580 = !DILocation(line: 45, column: 24, scope: !570)
!581 = !DILocation(line: 46, column: 3, scope: !570)
!582 = !DILocation(line: 47, column: 3, scope: !570)
!583 = !DILocation(line: 47, column: 34, scope: !570)
!584 = !DILocation(line: 47, column: 9, scope: !570)
!585 = !DILocation(line: 48, column: 52, scope: !570)
!586 = !DILocation(line: 48, column: 20, scope: !570)
!587 = !DILocation(line: 49, column: 3, scope: !570)
!588 = !DILocation(line: 50, column: 3, scope: !570)
!589 = !DILocation(line: 50, column: 87, scope: !570)
!590 = !DILocation(line: 50, column: 31, scope: !570)
!591 = !DILocation(line: 50, column: 9, scope: !570)
!592 = !DILocation(line: 51, column: 3, scope: !570)
!593 = !DILocation(line: 51, column: 11, scope: !570)
!594 = !DILocation(line: 52, column: 11, scope: !570)
!595 = !DILocation(line: 53, column: 1, scope: !570)
!596 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_copy_from_wide_", scope: !1, file: !1, line: 56, type: !597, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !54, !510}
!599 = !{!600, !601, !602, !604}
!600 = !DILocalVariable(name: "output", arg: 1, scope: !596, file: !1, line: 56, type: !54)
!601 = !DILocalVariable(name: "input", arg: 2, scope: !596, file: !1, line: 56, type: !510)
!602 = !DILocalVariable(name: "i", scope: !603, file: !1, line: 58, type: !3)
!603 = distinct !DILexicalBlock(scope: !596, file: !1, line: 58, column: 3)
!604 = !DILocalVariable(name: "xi", scope: !605, file: !1, line: 60, type: !128)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 59, column: 3)
!606 = distinct !DILexicalBlock(scope: !603, file: !1, line: 58, column: 3)
!607 = !DILocation(line: 0, scope: !596)
!608 = !DILocation(line: 0, scope: !603)
!609 = !DILocation(line: 58, column: 3, scope: !603)
!610 = !DILocation(line: 63, column: 1, scope: !596)
!611 = !DILocation(line: 60, column: 26, scope: !605)
!612 = !DILocation(line: 0, scope: !605)
!613 = !DILocation(line: 61, column: 17, scope: !605)
!614 = !DILocation(line: 61, column: 5, scope: !605)
!615 = !DILocation(line: 61, column: 15, scope: !605)
!616 = !DILocation(line: 58, column: 59, scope: !606)
!617 = !DILocation(line: 58, column: 37, scope: !606)
!618 = distinct !{!618, !609, !619, !462, !463}
!619 = !DILocation(line: 62, column: 3, scope: !603)
!620 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_sum_scalar_multiplication_", scope: !1, file: !1, line: 66, type: !621, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !510, !54, !8}
!623 = !{!624, !625, !626, !627, !629, !632}
!624 = !DILocalVariable(name: "output", arg: 1, scope: !620, file: !1, line: 67, type: !510)
!625 = !DILocalVariable(name: "input", arg: 2, scope: !620, file: !1, line: 68, type: !54)
!626 = !DILocalVariable(name: "s", arg: 3, scope: !620, file: !1, line: 69, type: !8)
!627 = !DILocalVariable(name: "i", scope: !628, file: !1, line: 72, type: !3)
!628 = distinct !DILexicalBlock(scope: !620, file: !1, line: 72, column: 3)
!629 = !DILocalVariable(name: "xi", scope: !630, file: !1, line: 74, type: !128)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 73, column: 3)
!631 = distinct !DILexicalBlock(scope: !628, file: !1, line: 72, column: 3)
!632 = !DILocalVariable(name: "yi", scope: !630, file: !1, line: 75, type: !8)
!633 = !DILocation(line: 0, scope: !620)
!634 = !DILocation(line: 0, scope: !628)
!635 = !DILocation(line: 72, column: 3, scope: !628)
!636 = !DILocation(line: 78, column: 1, scope: !620)
!637 = !DILocation(line: 74, column: 26, scope: !630)
!638 = !DILocation(line: 0, scope: !630)
!639 = !DILocation(line: 75, column: 19, scope: !630)
!640 = !DILocation(line: 76, column: 17, scope: !630)
!641 = !DILocation(line: 76, column: 43, scope: !630)
!642 = !DILocation(line: 72, column: 59, scope: !631)
!643 = !DILocation(line: 72, column: 37, scope: !631)
!644 = distinct !{!644, !635, !645, !462, !463}
!645 = !DILocation(line: 77, column: 3, scope: !628)
!646 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_shift_reduce", scope: !1, file: !1, line: 108, type: !289, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !647)
!647 = !{!648, !649, !650, !652, !655}
!648 = !DILocalVariable(name: "output", arg: 1, scope: !646, file: !1, line: 108, type: !54)
!649 = !DILocalVariable(name: "tmp", scope: !646, file: !1, line: 110, type: !8)
!650 = !DILocalVariable(name: "i", scope: !651, file: !1, line: 111, type: !3)
!651 = distinct !DILexicalBlock(scope: !646, file: !1, line: 111, column: 3)
!652 = !DILocalVariable(name: "ctr", scope: !653, file: !1, line: 113, type: !3)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 112, column: 3)
!654 = distinct !DILexicalBlock(scope: !651, file: !1, line: 111, column: 3)
!655 = !DILocalVariable(name: "z", scope: !653, file: !1, line: 114, type: !8)
!656 = !DILocation(line: 0, scope: !646)
!657 = !DILocation(line: 110, column: 18, scope: !646)
!658 = !DILocation(line: 0, scope: !651)
!659 = !DILocation(line: 111, column: 3, scope: !651)
!660 = !DILocation(line: 115, column: 17, scope: !653)
!661 = !DILocation(line: 0, scope: !653)
!662 = !DILocation(line: 117, column: 14, scope: !646)
!663 = !DILocation(line: 118, column: 3, scope: !646)
!664 = !DILocation(line: 119, column: 1, scope: !646)
!665 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !129, file: !129, line: 78, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !413)
!666 = !DISubroutineType(types: !667)
!667 = !{!130, !8, !8}
!668 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_reduce", scope: !1, file: !1, line: 27, type: !289, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !669)
!669 = !{!670, !671}
!670 = !DILocalVariable(name: "b", arg: 1, scope: !668, file: !1, line: 27, type: !54)
!671 = !DILocalVariable(name: "b0", scope: !668, file: !1, line: 29, type: !8)
!672 = !DILocation(line: 0, scope: !668)
!673 = !DILocation(line: 29, column: 17, scope: !668)
!674 = !DILocation(line: 30, column: 32, scope: !668)
!675 = !DILocation(line: 30, column: 9, scope: !668)
!676 = !DILocation(line: 31, column: 1, scope: !668)
!677 = !DISubprogram(name: "FStar_UInt128_add", scope: !129, file: !129, line: 41, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !413)
!678 = !DISubprogram(name: "FStar_UInt128_logand", scope: !129, file: !129, line: 49, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !413)
!679 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_limb_", scope: !1, file: !1, line: 94, type: !289, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !680)
!680 = !{!681, !682, !684, !687, !688, !689, !690}
!681 = !DILocalVariable(name: "tmp", arg: 1, scope: !679, file: !1, line: 94, type: !54)
!682 = !DILocalVariable(name: "i", scope: !683, file: !1, line: 96, type: !3)
!683 = distinct !DILexicalBlock(scope: !679, file: !1, line: 96, column: 3)
!684 = !DILocalVariable(name: "ctr", scope: !685, file: !1, line: 98, type: !3)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 97, column: 3)
!686 = distinct !DILexicalBlock(scope: !683, file: !1, line: 96, column: 3)
!687 = !DILocalVariable(name: "tctr", scope: !685, file: !1, line: 99, type: !8)
!688 = !DILocalVariable(name: "tctrp1", scope: !685, file: !1, line: 100, type: !8)
!689 = !DILocalVariable(name: "r0", scope: !685, file: !1, line: 101, type: !8)
!690 = !DILocalVariable(name: "c", scope: !685, file: !1, line: 102, type: !8)
!691 = !DILocation(line: 0, scope: !679)
!692 = !DILocation(line: 0, scope: !683)
!693 = !DILocation(line: 96, column: 3, scope: !683)
!694 = !DILocation(line: 106, column: 1, scope: !679)
!695 = !DILocation(line: 0, scope: !685)
!696 = !DILocation(line: 99, column: 21, scope: !685)
!697 = !DILocation(line: 100, column: 31, scope: !685)
!698 = !DILocation(line: 100, column: 23, scope: !685)
!699 = !DILocation(line: 101, column: 24, scope: !685)
!700 = !DILocation(line: 102, column: 23, scope: !685)
!701 = !DILocation(line: 103, column: 14, scope: !685)
!702 = !DILocation(line: 104, column: 38, scope: !685)
!703 = !DILocation(line: 104, column: 29, scope: !685)
!704 = !DILocation(line: 96, column: 37, scope: !686)
!705 = distinct !{!705, !693, !706, !462, !463}
!706 = !DILocation(line: 105, column: 3, scope: !683)
!707 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top", scope: !1, file: !1, line: 33, type: !289, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !708)
!708 = !{!709, !710, !711, !712}
!709 = !DILocalVariable(name: "b", arg: 1, scope: !707, file: !1, line: 33, type: !54)
!710 = !DILocalVariable(name: "b2", scope: !707, file: !1, line: 35, type: !8)
!711 = !DILocalVariable(name: "b0", scope: !707, file: !1, line: 36, type: !8)
!712 = !DILocalVariable(name: "b2_42", scope: !707, file: !1, line: 37, type: !8)
!713 = !DILocation(line: 0, scope: !707)
!714 = !DILocation(line: 35, column: 17, scope: !707)
!715 = !DILocation(line: 36, column: 17, scope: !707)
!716 = !DILocation(line: 37, column: 23, scope: !707)
!717 = !DILocation(line: 38, column: 14, scope: !707)
!718 = !DILocation(line: 38, column: 9, scope: !707)
!719 = !DILocation(line: 39, column: 35, scope: !707)
!720 = !DILocation(line: 39, column: 43, scope: !707)
!721 = !DILocation(line: 39, column: 9, scope: !707)
!722 = !DILocation(line: 40, column: 1, scope: !707)
!723 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !724, file: !724, line: 168, type: !725, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !727)
!724 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!725 = !DISubroutineType(types: !726)
!726 = !{!8, !8, !8}
!727 = !{!728, !729, !730, !731}
!728 = !DILocalVariable(name: "x", arg: 1, scope: !723, file: !724, line: 168, type: !8)
!729 = !DILocalVariable(name: "y", arg: 2, scope: !723, file: !724, line: 168, type: !8)
!730 = !DILocalVariable(name: "low63", scope: !723, file: !724, line: 169, type: !8)
!731 = !DILocalVariable(name: "high_bit", scope: !723, file: !724, line: 173, type: !8)
!732 = !DILocation(line: 0, scope: !723)
!733 = !DILocation(line: 170, column: 42, scope: !723)
!734 = !DILocation(line: 170, column: 74, scope: !723)
!735 = !DILocation(line: 177, column: 16, scope: !723)
!736 = !DILocation(line: 177, column: 3, scope: !723)
!737 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !724, file: !724, line: 157, type: !725, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !738)
!738 = !{!739, !740}
!739 = !DILocalVariable(name: "x", arg: 1, scope: !737, file: !724, line: 157, type: !8)
!740 = !DILocalVariable(name: "y", arg: 2, scope: !737, file: !724, line: 157, type: !8)
!741 = !DILocation(line: 0, scope: !737)
!742 = !DILocation(line: 158, column: 7, scope: !737)
!743 = !DILocation(line: 159, column: 10, scope: !737)
!744 = !DILocation(line: 159, column: 5, scope: !737)
!745 = !DILocation(line: 160, column: 10, scope: !737)
!746 = !DILocation(line: 160, column: 5, scope: !737)
!747 = !DILocation(line: 161, column: 10, scope: !737)
!748 = !DILocation(line: 161, column: 5, scope: !737)
!749 = !DILocation(line: 162, column: 10, scope: !737)
!750 = !DILocation(line: 162, column: 5, scope: !737)
!751 = !DILocation(line: 163, column: 10, scope: !737)
!752 = !DILocation(line: 163, column: 5, scope: !737)
!753 = !DILocation(line: 164, column: 10, scope: !737)
!754 = !DILocation(line: 164, column: 5, scope: !737)
!755 = !DILocation(line: 165, column: 23, scope: !737)
!756 = !DILocation(line: 165, column: 3, scope: !737)
!757 = distinct !DISubprogram(name: "load128_le_", scope: !27, file: !27, line: 517, type: !758, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !761)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !86, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 32)
!761 = !{!762, !763}
!762 = !DILocalVariable(name: "b", arg: 1, scope: !757, file: !27, line: 517, type: !86)
!763 = !DILocalVariable(name: "r", arg: 2, scope: !757, file: !27, line: 517, type: !760)
!764 = !DILocation(line: 0, scope: !757)
!765 = !DILocation(line: 518, column: 12, scope: !757)
!766 = !DILocation(line: 518, column: 6, scope: !757)
!767 = !DILocation(line: 518, column: 10, scope: !757)
!768 = !DILocation(line: 519, column: 13, scope: !757)
!769 = !DILocation(line: 519, column: 6, scope: !757)
!770 = !DILocation(line: 519, column: 11, scope: !757)
!771 = !DILocation(line: 520, column: 1, scope: !757)
!772 = distinct !DISubprogram(name: "load64", scope: !27, file: !27, line: 347, type: !773, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!8, !86}
!775 = !{!776, !777}
!776 = !DILocalVariable(name: "b", arg: 1, scope: !772, file: !27, line: 347, type: !86)
!777 = !DILocalVariable(name: "x", scope: !772, file: !27, line: 348, type: !8)
!778 = !DILocation(line: 0, scope: !772)
!779 = !DILocation(line: 349, column: 3, scope: !772)
!780 = !DILocation(line: 350, column: 3, scope: !772)
!781 = distinct !DISubprogram(name: "store128_le_", scope: !27, file: !27, line: 522, type: !758, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !782)
!782 = !{!783, !784}
!783 = !DILocalVariable(name: "b", arg: 1, scope: !781, file: !27, line: 522, type: !86)
!784 = !DILocalVariable(name: "n", arg: 2, scope: !781, file: !27, line: 522, type: !760)
!785 = !DILocation(line: 0, scope: !781)
!786 = !DILocation(line: 523, column: 3, scope: !781)
!787 = !DILocation(line: 524, column: 3, scope: !781)
!788 = !DILocation(line: 525, column: 1, scope: !781)
!789 = distinct !DISubprogram(name: "store64", scope: !27, file: !27, line: 357, type: !790, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !86, !8}
!792 = !{!793, !794}
!793 = !DILocalVariable(name: "b", arg: 1, scope: !789, file: !27, line: 357, type: !86)
!794 = !DILocalVariable(name: "i", arg: 2, scope: !789, file: !27, line: 357, type: !8)
!795 = !DILocation(line: 0, scope: !789)
!796 = !DILocation(line: 357, column: 54, scope: !789)
!797 = !DILocation(line: 357, column: 72, scope: !789)
