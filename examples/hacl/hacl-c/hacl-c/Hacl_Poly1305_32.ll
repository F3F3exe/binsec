; ModuleID = 'hacl-c/hacl-c/Hacl_Poly1305_32.c'
source_filename = "hacl-c/hacl-c/Hacl_Poly1305_32.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_32_State_poly1305_state = type { i32*, i32* }
%struct.FStar_UInt128_uint128 = type { i64, i64 }

@Hacl_Poly1305_32_empty_log = dso_local local_unnamed_addr global i8* null, align 4, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias i8* @Hacl_Poly1305_32_op_String_Access(i8* nocapture noundef readnone %0, i8* nocapture noundef readnone %1) local_unnamed_addr #0 !dbg !33 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !40, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i8* %1, metadata !41, metadata !DIExpression()), !dbg !42
  ret i8* null, !dbg !43
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @Hacl_Poly1305_32_mk_state(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state* noalias nocapture writeonly sret(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state) align 4 %0, i32* noundef %1, i32* noundef %2) local_unnamed_addr #2 !dbg !44 {
  call void @llvm.dbg.value(metadata i32* %1, metadata !55, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32* %2, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32* %1, metadata !58, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* %2, metadata !61, metadata !DIExpression()), !dbg !62
  %4 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, %struct.Hacl_Impl_Poly1305_32_State_poly1305_state* %0, i32 0, i32 0, !dbg !64
  store i32* %1, i32** %4, align 4, !dbg !64, !tbaa !65, !alias.scope !70
  %5 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, %struct.Hacl_Impl_Poly1305_32_State_poly1305_state* %0, i32 0, i32 1, !dbg !64
  store i32* %2, i32** %5, align 4, !dbg !64, !tbaa !73, !alias.scope !70
  ret void, !dbg !74
}

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_Poly1305_32_init(i32* nocapture writeonly %0, i32* nocapture writeonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #3 !dbg !75 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !79, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !101
  call void @llvm.dbg.value(metadata i32* %1, metadata !79, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !101
  call void @llvm.dbg.value(metadata i8* %2, metadata !80, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* %0, metadata !81, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !101
  call void @llvm.dbg.value(metadata i32* %1, metadata !81, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !101
  call void @llvm.dbg.value(metadata i32* %0, metadata !82, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* %0, metadata !83, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression(DW_OP_deref)), !dbg !109
  call void @llvm.dbg.value(metadata i8* %2, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i8* %2, metadata !111, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata i8* %2, metadata !120, metadata !DIExpression()), !dbg !126
  %13 = bitcast i8* %2 to i64*, !dbg !128
  %14 = load i64, i64* %13, align 1, !dbg !128, !noalias !129
  call void @llvm.dbg.value(metadata i64 %14, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %14, metadata !84, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !101
  %15 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !132
  call void @llvm.dbg.value(metadata i8* %15, metadata !120, metadata !DIExpression()), !dbg !133
  %16 = bitcast i8* %15 to i64*, !dbg !135
  %17 = load i64, i64* %16, align 1, !dbg !135, !noalias !129
  call void @llvm.dbg.value(metadata i64 %17, metadata !125, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %17, metadata !84, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !101
  %18 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #14, !dbg !136
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !92, metadata !DIExpression()), !dbg !137
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 1152921487695413244) #14, !dbg !138
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !139
  %20 = load i64, i64* %19, align 8, !dbg !139, !tbaa !140
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !139
  %22 = load i64, i64* %21, align 8, !dbg !139, !tbaa !143
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %20, i64 %22, i32 noundef 64) #14, !dbg !139
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 1152921487695413247) #14, !dbg !144
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !145
  %24 = load i64, i64* %23, align 8, !dbg !145, !tbaa !140
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !145
  %26 = load i64, i64* %25, align 8, !dbg !145, !tbaa !143
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !145
  %28 = load i64, i64* %27, align 8, !dbg !145, !tbaa !140
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !145
  %30 = load i64, i64* %29, align 8, !dbg !145, !tbaa !143
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %24, i64 %26, i64 %28, i64 %30) #14, !dbg !145
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !146
  %32 = load i64, i64* %31, align 8, !dbg !146, !tbaa !140
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !146
  %34 = load i64, i64* %33, align 8, !dbg !146, !tbaa !143
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %14, i64 %17, i64 %32, i64 %34) #14, !dbg !146
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !147
  %36 = load i64, i64* %35, align 8, !dbg !147, !tbaa !140
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !147
  %38 = load i64, i64* %37, align 8, !dbg !147, !tbaa !143
  %39 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %36, i64 %38) #14, !dbg !147
  %40 = trunc i64 %39 to i32, !dbg !148
  %41 = and i32 %40, 67108863, !dbg !149
  call void @llvm.dbg.value(metadata i32 %41, metadata !93, metadata !DIExpression()), !dbg !101
  %42 = load i64, i64* %35, align 8, !dbg !150, !tbaa !140
  %43 = load i64, i64* %37, align 8, !dbg !150, !tbaa !143
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %42, i64 %43, i32 noundef 26) #14, !dbg !150
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !151
  %45 = load i64, i64* %44, align 8, !dbg !151, !tbaa !140
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !151
  %47 = load i64, i64* %46, align 8, !dbg !151, !tbaa !143
  %48 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %45, i64 %47) #14, !dbg !151
  %49 = trunc i64 %48 to i32, !dbg !152
  %50 = and i32 %49, 67108863, !dbg !153
  call void @llvm.dbg.value(metadata i32 %50, metadata !94, metadata !DIExpression()), !dbg !101
  %51 = load i64, i64* %35, align 8, !dbg !154, !tbaa !140
  %52 = load i64, i64* %37, align 8, !dbg !154, !tbaa !143
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %51, i64 %52, i32 noundef 52) #14, !dbg !154
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !155
  %54 = load i64, i64* %53, align 8, !dbg !155, !tbaa !140
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !155
  %56 = load i64, i64* %55, align 8, !dbg !155, !tbaa !143
  %57 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %54, i64 %56) #14, !dbg !155
  %58 = trunc i64 %57 to i32, !dbg !156
  %59 = and i32 %58, 67108863, !dbg !157
  call void @llvm.dbg.value(metadata i32 %59, metadata !95, metadata !DIExpression()), !dbg !101
  %60 = load i64, i64* %35, align 8, !dbg !158, !tbaa !140
  %61 = load i64, i64* %37, align 8, !dbg !158, !tbaa !143
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %60, i64 %61, i32 noundef 78) #14, !dbg !158
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !159
  %63 = load i64, i64* %62, align 8, !dbg !159, !tbaa !140
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !159
  %65 = load i64, i64* %64, align 8, !dbg !159, !tbaa !143
  %66 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %63, i64 %65) #14, !dbg !159
  %67 = trunc i64 %66 to i32, !dbg !160
  %68 = and i32 %67, 67108863, !dbg !161
  call void @llvm.dbg.value(metadata i32 %68, metadata !96, metadata !DIExpression()), !dbg !101
  %69 = load i64, i64* %35, align 8, !dbg !162, !tbaa !140
  %70 = load i64, i64* %37, align 8, !dbg !162, !tbaa !143
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %69, i64 %70, i32 noundef 104) #14, !dbg !162
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !163
  %72 = load i64, i64* %71, align 8, !dbg !163, !tbaa !140
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !163
  %74 = load i64, i64* %73, align 8, !dbg !163, !tbaa !143
  %75 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %72, i64 %74) #14, !dbg !163
  %76 = trunc i64 %75 to i32, !dbg !164
  %77 = and i32 %76, 67108863, !dbg !165
  call void @llvm.dbg.value(metadata i32 %77, metadata !97, metadata !DIExpression()), !dbg !101
  store i32 %41, i32* %0, align 4, !dbg !166, !tbaa !167
  %78 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !169
  store i32 %50, i32* %78, align 4, !dbg !170, !tbaa !167
  %79 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !171
  store i32 %59, i32* %79, align 4, !dbg !172, !tbaa !167
  %80 = getelementptr inbounds i32, i32* %0, i32 3, !dbg !173
  store i32 %68, i32* %80, align 4, !dbg !174, !tbaa !167
  %81 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !175
  store i32 %77, i32* %81, align 4, !dbg !176, !tbaa !167
  call void @llvm.dbg.value(metadata i32* %0, metadata !98, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !101
  call void @llvm.dbg.value(metadata i32* %1, metadata !98, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !101
  call void @llvm.dbg.value(metadata i32* %1, metadata !99, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* %1, metadata !100, metadata !DIExpression()), !dbg !101
  %82 = bitcast i32* %1 to i8*, !dbg !177
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %82, i8 0, i64 20, i1 false), !dbg !178
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #14, !dbg !177
  ret void, !dbg !177
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

declare !dbg !179 void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #6

declare !dbg !183 void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #6

declare !dbg !184 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #6

declare !dbg !187 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #6

declare !dbg !190 i64 @FStar_UInt128_uint128_to_uint64(i64, i64) local_unnamed_addr #6

declare !dbg !193 void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update_block(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2) local_unnamed_addr #7 !dbg !194 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !196, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !198
  call void @llvm.dbg.value(metadata i32* %1, metadata !196, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !198
  call void @llvm.dbg.value(metadata i8* %2, metadata !197, metadata !DIExpression()), !dbg !198
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_update(i32* %0, i32* %1, i8* noundef %2), !dbg !199
  ret void, !dbg !200
}

; Function Attrs: inlinehint nofree nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_update(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2) unnamed_addr #8 !dbg !201 {
  %4 = alloca [5 x i32], align 4
  %5 = alloca [5 x i64], align 8
  %6 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i32 0, i32 0
  %7 = alloca [5 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !203, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !232
  call void @llvm.dbg.value(metadata i32* %1, metadata !203, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !232
  call void @llvm.dbg.value(metadata i8* %2, metadata !204, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32* %0, metadata !205, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !232
  call void @llvm.dbg.value(metadata i32* %1, metadata !205, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !232
  call void @llvm.dbg.value(metadata i32* %1, metadata !206, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32* %1, metadata !207, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32* %0, metadata !208, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !232
  call void @llvm.dbg.value(metadata i32* %1, metadata !208, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !232
  call void @llvm.dbg.value(metadata i32* %0, metadata !209, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32* %0, metadata !210, metadata !DIExpression()), !dbg !232
  %8 = bitcast [5 x i32]* %7 to i8*, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #14, !dbg !233
  call void @llvm.dbg.declare(metadata [5 x i32]* %7, metadata !211, metadata !DIExpression()), !dbg !234
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false), !dbg !234
  call void @llvm.dbg.value(metadata i8* %2, metadata !215, metadata !DIExpression()), !dbg !232
  %9 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !235
  call void @llvm.dbg.value(metadata i8* %9, metadata !216, metadata !DIExpression()), !dbg !232
  %10 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !236
  call void @llvm.dbg.value(metadata i8* %10, metadata !217, metadata !DIExpression()), !dbg !232
  %11 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !237
  call void @llvm.dbg.value(metadata i8* %11, metadata !218, metadata !DIExpression()), !dbg !232
  %12 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !238
  call void @llvm.dbg.value(metadata i8* %12, metadata !219, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8* %2, metadata !239, metadata !DIExpression()), !dbg !245
  %13 = bitcast i8* %2 to i32*, !dbg !247
  %14 = load i32, i32* %13, align 1, !dbg !247
  call void @llvm.dbg.value(metadata i32 %14, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 %14, metadata !220, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8* %9, metadata !239, metadata !DIExpression()), !dbg !248
  %15 = bitcast i8* %9 to i32*, !dbg !250
  %16 = load i32, i32* %15, align 1, !dbg !250
  call void @llvm.dbg.value(metadata i32 %16, metadata !244, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 %16, metadata !221, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8* %10, metadata !239, metadata !DIExpression()), !dbg !251
  %17 = bitcast i8* %10 to i32*, !dbg !253
  %18 = load i32, i32* %17, align 1, !dbg !253
  call void @llvm.dbg.value(metadata i32 %18, metadata !244, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 %18, metadata !222, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8* %11, metadata !239, metadata !DIExpression()), !dbg !254
  %19 = bitcast i8* %11 to i32*, !dbg !256
  %20 = load i32, i32* %19, align 1, !dbg !256
  call void @llvm.dbg.value(metadata i32 %20, metadata !244, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 %20, metadata !223, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i8* %12, metadata !239, metadata !DIExpression()), !dbg !257
  %21 = bitcast i8* %12 to i32*, !dbg !259
  %22 = load i32, i32* %21, align 1, !dbg !259
  call void @llvm.dbg.value(metadata i32 %22, metadata !244, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i32 %22, metadata !224, metadata !DIExpression()), !dbg !232
  %23 = and i32 %14, 67108863, !dbg !260
  call void @llvm.dbg.value(metadata i32 %23, metadata !225, metadata !DIExpression()), !dbg !232
  %24 = lshr i32 %16, 2, !dbg !261
  %25 = and i32 %24, 67108863, !dbg !262
  call void @llvm.dbg.value(metadata i32 %25, metadata !226, metadata !DIExpression()), !dbg !232
  %26 = lshr i32 %18, 4, !dbg !263
  %27 = and i32 %26, 67108863, !dbg !264
  call void @llvm.dbg.value(metadata i32 %27, metadata !227, metadata !DIExpression()), !dbg !232
  %28 = lshr i32 %20, 6, !dbg !265
  call void @llvm.dbg.value(metadata i32 %28, metadata !228, metadata !DIExpression()), !dbg !232
  %29 = lshr i32 %22, 8, !dbg !266
  call void @llvm.dbg.value(metadata i32 %29, metadata !229, metadata !DIExpression()), !dbg !232
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 0, !dbg !267
  store i32 %23, i32* %30, align 4, !dbg !268, !tbaa !167
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 1, !dbg !269
  store i32 %25, i32* %31, align 4, !dbg !270, !tbaa !167
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 2, !dbg !271
  store i32 %27, i32* %32, align 4, !dbg !272, !tbaa !167
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 3, !dbg !273
  store i32 %28, i32* %33, align 4, !dbg !274, !tbaa !167
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 4, !dbg !275
  call void @llvm.dbg.value(metadata i32 %29, metadata !230, metadata !DIExpression()), !dbg !232
  %35 = or i32 %29, 16777216, !dbg !276
  call void @llvm.dbg.value(metadata i32 %35, metadata !231, metadata !DIExpression()), !dbg !232
  store i32 %35, i32* %34, align 4, !dbg !277, !tbaa !167
  call void @llvm.dbg.value(metadata i32* %1, metadata !278, metadata !DIExpression()) #14, !dbg !291
  call void @llvm.dbg.value(metadata i32* %30, metadata !283, metadata !DIExpression()) #14, !dbg !291
  call void @llvm.dbg.value(metadata i32* %0, metadata !284, metadata !DIExpression()) #14, !dbg !291
  call void @llvm.dbg.value(metadata i32 0, metadata !285, metadata !DIExpression()) #14, !dbg !293
  br label %112, !dbg !294

36:                                               ; preds = %112
  call void @llvm.dbg.value(metadata i32* %1, metadata !295, metadata !DIExpression()) #14, !dbg !307
  call void @llvm.dbg.value(metadata i32* %1, metadata !298, metadata !DIExpression()) #14, !dbg !307
  call void @llvm.dbg.value(metadata i32* %0, metadata !299, metadata !DIExpression()) #14, !dbg !307
  %37 = bitcast [5 x i32]* %4 to i8*, !dbg !309
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %37) #14, !dbg !309
  call void @llvm.dbg.declare(metadata [5 x i32]* %4, metadata !300, metadata !DIExpression()) #14, !dbg !310
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 0, !dbg !311
  %39 = bitcast i32* %1 to i8*, !dbg !311
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(20) %37, i8* noundef nonnull align 4 dereferenceable(20) %39, i32 20, i1 false) #14, !dbg !311
  %40 = bitcast [5 x i64]* %5 to i8*, !dbg !312
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %40) #14, !dbg !312
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !301, metadata !DIExpression()) #14, !dbg !313
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %40, i8 0, i32 40, i1 false) #14, !dbg !313
  call void @llvm.dbg.value(metadata i32* %38, metadata !314, metadata !DIExpression()) #14, !dbg !329
  call void @llvm.dbg.value(metadata i32* %0, metadata !321, metadata !DIExpression()) #14, !dbg !329
  call void @llvm.dbg.value(metadata i32 0, metadata !322, metadata !DIExpression()) #14, !dbg !331
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 4
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 1
  %43 = bitcast i32* %42 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !322, metadata !DIExpression()) #14, !dbg !331
  br label %61, !dbg !332

44:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 4, metadata !327, metadata !DIExpression()) #14, !dbg !329
  %45 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !333
  %46 = load i32, i32* %45, align 4, !dbg !333, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %46, metadata !328, metadata !DIExpression()) #14, !dbg !329
  call void @llvm.dbg.value(metadata i32* %38, metadata !334, metadata !DIExpression()) #14, !dbg !349
  call void @llvm.dbg.value(metadata i32 %46, metadata !340, metadata !DIExpression()) #14, !dbg !349
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()) #14, !dbg !351
  %47 = zext i32 %46 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()) #14, !dbg !351
  br label %48, !dbg !352

48:                                               ; preds = %48, %44
  %49 = phi i32 [ 0, %44 ], [ %57, %48 ]
  call void @llvm.dbg.value(metadata i32 %49, metadata !341, metadata !DIExpression()) #14, !dbg !351
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i32 0, i32 %49, !dbg !353
  %51 = load i64, i64* %50, align 8, !dbg !353, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %51, metadata !343, metadata !DIExpression()) #14, !dbg !355
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 %49, !dbg !356
  %53 = load i32, i32* %52, align 4, !dbg !356, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %53, metadata !346, metadata !DIExpression()) #14, !dbg !355
  %54 = zext i32 %53 to i64, !dbg !357
  call void @llvm.dbg.value(metadata i64 %54, metadata !347, metadata !DIExpression()) #14, !dbg !355
  call void @llvm.dbg.value(metadata i64 %47, metadata !348, metadata !DIExpression()) #14, !dbg !355
  %55 = mul nuw i64 %54, %47, !dbg !358
  %56 = add i64 %55, %51, !dbg !359
  store i64 %56, i64* %50, align 8, !dbg !360, !tbaa !354
  %57 = add nuw nsw i32 %49, 1, !dbg !361
  call void @llvm.dbg.value(metadata i32 %57, metadata !341, metadata !DIExpression()) #14, !dbg !351
  %58 = icmp eq i32 %57, 5, !dbg !362
  br i1 %58, label %59, label %48, !dbg !352, !llvm.loop !363

59:                                               ; preds = %48
  %60 = load i64, i64* %6, align 8
  br label %82, !dbg !367

61:                                               ; preds = %77, %36
  %62 = phi i32 [ 0, %36 ], [ %80, %77 ]
  call void @llvm.dbg.value(metadata i32 %62, metadata !322, metadata !DIExpression()) #14, !dbg !331
  %63 = getelementptr inbounds i32, i32* %0, i32 %62, !dbg !383
  %64 = load i32, i32* %63, align 4, !dbg !383, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %64, metadata !324, metadata !DIExpression()) #14, !dbg !384
  call void @llvm.dbg.value(metadata i32* %38, metadata !334, metadata !DIExpression()) #14, !dbg !385
  call void @llvm.dbg.value(metadata i32 %64, metadata !340, metadata !DIExpression()) #14, !dbg !385
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()) #14, !dbg !387
  %65 = zext i32 %64 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()) #14, !dbg !387
  br label %66, !dbg !388

66:                                               ; preds = %66, %61
  %67 = phi i32 [ 0, %61 ], [ %75, %66 ]
  call void @llvm.dbg.value(metadata i32 %67, metadata !341, metadata !DIExpression()) #14, !dbg !387
  %68 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i32 0, i32 %67, !dbg !389
  %69 = load i64, i64* %68, align 8, !dbg !389, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %69, metadata !343, metadata !DIExpression()) #14, !dbg !390
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 %67, !dbg !391
  %71 = load i32, i32* %70, align 4, !dbg !391, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %71, metadata !346, metadata !DIExpression()) #14, !dbg !390
  %72 = zext i32 %71 to i64, !dbg !392
  call void @llvm.dbg.value(metadata i64 %72, metadata !347, metadata !DIExpression()) #14, !dbg !390
  call void @llvm.dbg.value(metadata i64 %65, metadata !348, metadata !DIExpression()) #14, !dbg !390
  %73 = mul nuw i64 %72, %65, !dbg !393
  %74 = add i64 %73, %69, !dbg !394
  store i64 %74, i64* %68, align 8, !dbg !395, !tbaa !354
  %75 = add nuw nsw i32 %67, 1, !dbg !396
  call void @llvm.dbg.value(metadata i32 %75, metadata !341, metadata !DIExpression()) #14, !dbg !387
  %76 = icmp eq i32 %75, 5, !dbg !397
  br i1 %76, label %77, label %66, !dbg !388, !llvm.loop !398

77:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32* %38, metadata !400, metadata !DIExpression()) #14, !dbg !412
  %78 = load i32, i32* %41, align 4, !dbg !414, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %78, metadata !405, metadata !DIExpression()) #14, !dbg !412
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()) #14, !dbg !415
  call void @llvm.memmove.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %43, i8* noundef nonnull align 4 dereferenceable(16) %37, i32 16, i1 false) #14, !dbg !416, !tbaa !167
  call void @llvm.dbg.value(metadata i32 undef, metadata !408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #14, !dbg !417
  call void @llvm.dbg.value(metadata i32 undef, metadata !411, metadata !DIExpression()) #14, !dbg !417
  call void @llvm.dbg.value(metadata i32 undef, metadata !406, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !415
  call void @llvm.dbg.value(metadata i32* %38, metadata !418, metadata !DIExpression()) #14, !dbg !422
  call void @llvm.dbg.value(metadata i32 %78, metadata !421, metadata !DIExpression()) #14, !dbg !422
  %79 = mul i32 %78, 5, !dbg !424
  store i32 %79, i32* %38, align 4, !dbg !425, !tbaa !167
  %80 = add nuw nsw i32 %62, 1, !dbg !426
  call void @llvm.dbg.value(metadata i32 %80, metadata !322, metadata !DIExpression()) #14, !dbg !331
  %81 = icmp eq i32 %80, 4, !dbg !427
  br i1 %81, label %44, label %61, !dbg !332, !llvm.loop !428

82:                                               ; preds = %59, %82
  %83 = phi i64 [ %60, %59 ], [ %91, %82 ]
  %84 = phi i32 [ 0, %59 ], [ %86, %82 ]
  call void @llvm.dbg.value(metadata i32 %84, metadata !374, metadata !DIExpression()) #14, !dbg !430
  call void @llvm.dbg.value(metadata i32 %84, metadata !375, metadata !DIExpression()) #14, !dbg !431
  %85 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i32 0, i32 %84, !dbg !432
  call void @llvm.dbg.value(metadata i64 %83, metadata !378, metadata !DIExpression()) #14, !dbg !431
  %86 = add nuw nsw i32 %84, 1, !dbg !433
  %87 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i32 0, i32 %86, !dbg !434
  %88 = load i64, i64* %87, align 8, !dbg !434, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %88, metadata !379, metadata !DIExpression()) #14, !dbg !431
  call void @llvm.dbg.value(metadata i64 %83, metadata !380, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)) #14, !dbg !431
  %89 = lshr i64 %83, 26, !dbg !435
  call void @llvm.dbg.value(metadata i64 %89, metadata !381, metadata !DIExpression()) #14, !dbg !431
  %90 = and i64 %83, 67108863, !dbg !436
  store i64 %90, i64* %85, align 8, !dbg !437, !tbaa !354
  %91 = add i64 %88, %89, !dbg !438
  store i64 %91, i64* %87, align 8, !dbg !439, !tbaa !354
  call void @llvm.dbg.value(metadata i32 %86, metadata !374, metadata !DIExpression()) #14, !dbg !430
  %92 = icmp eq i32 %86, 4, !dbg !440
  br i1 %92, label %93, label %82, !dbg !367, !llvm.loop !441

93:                                               ; preds = %82
  %94 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i32 0, i32 0, !dbg !443
  call void @llvm.dbg.value(metadata i64* %94, metadata !444, metadata !DIExpression()) #14, !dbg !452
  %95 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i32 0, i32 4, !dbg !454
  %96 = load i64, i64* %95, align 8, !dbg !454, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %96, metadata !447, metadata !DIExpression()) #14, !dbg !452
  %97 = load i64, i64* %94, align 8, !dbg !455, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %97, metadata !448, metadata !DIExpression()) #14, !dbg !452
  %98 = and i64 %96, 67108863, !dbg !456
  call void @llvm.dbg.value(metadata i64 %98, metadata !449, metadata !DIExpression()) #14, !dbg !452
  %99 = lshr i64 %96, 26, !dbg !457
  %100 = trunc i64 %99 to i32, !dbg !458
  call void @llvm.dbg.value(metadata i32 %100, metadata !450, metadata !DIExpression()) #14, !dbg !452
  %101 = mul i32 %100, 5, !dbg !459
  %102 = zext i32 %101 to i64, !dbg !460
  %103 = add i64 %97, %102, !dbg !461
  call void @llvm.dbg.value(metadata i64 %103, metadata !451, metadata !DIExpression()) #14, !dbg !452
  store i64 %98, i64* %95, align 8, !dbg !462, !tbaa !354
  store i64 %103, i64* %94, align 8, !dbg !463, !tbaa !354
  call void @llvm.dbg.value(metadata i32* %1, metadata !464, metadata !DIExpression()) #14, !dbg !475
  call void @llvm.dbg.value(metadata i64* %94, metadata !469, metadata !DIExpression()) #14, !dbg !475
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()) #14, !dbg !477
  br label %104, !dbg !478

104:                                              ; preds = %104, %93
  %105 = phi i32 [ 0, %93 ], [ %110, %104 ]
  call void @llvm.dbg.value(metadata i32 %105, metadata !470, metadata !DIExpression()) #14, !dbg !477
  %106 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i32 0, i32 %105, !dbg !479
  %107 = load i64, i64* %106, align 8, !dbg !479, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %107, metadata !472, metadata !DIExpression()) #14, !dbg !480
  %108 = trunc i64 %107 to i32, !dbg !481
  %109 = getelementptr inbounds i32, i32* %1, i32 %105, !dbg !482
  store i32 %108, i32* %109, align 4, !dbg !483, !tbaa !167
  %110 = add nuw nsw i32 %105, 1, !dbg !484
  call void @llvm.dbg.value(metadata i32 %110, metadata !470, metadata !DIExpression()) #14, !dbg !477
  %111 = icmp eq i32 %110, 5, !dbg !485
  br i1 %111, label %121, label %104, !dbg !478, !llvm.loop !486

112:                                              ; preds = %112, %3
  %113 = phi i32 [ 0, %3 ], [ %119, %112 ]
  call void @llvm.dbg.value(metadata i32 %113, metadata !285, metadata !DIExpression()) #14, !dbg !293
  %114 = getelementptr inbounds i32, i32* %1, i32 %113, !dbg !488
  %115 = load i32, i32* %114, align 4, !dbg !488, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %115, metadata !287, metadata !DIExpression()) #14, !dbg !489
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i32 0, i32 %113, !dbg !490
  %117 = load i32, i32* %116, align 4, !dbg !490, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %117, metadata !290, metadata !DIExpression()) #14, !dbg !489
  %118 = add i32 %117, %115, !dbg !491
  store i32 %118, i32* %114, align 4, !dbg !492, !tbaa !167
  %119 = add nuw nsw i32 %113, 1, !dbg !493
  call void @llvm.dbg.value(metadata i32 %119, metadata !285, metadata !DIExpression()) #14, !dbg !293
  %120 = icmp eq i32 %119, 5, !dbg !494
  br i1 %120, label %36, label %112, !dbg !294, !llvm.loop !495

121:                                              ; preds = %104
  %122 = load i32, i32* %1, align 4, !dbg !497, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %122, metadata !303, metadata !DIExpression()) #14, !dbg !307
  %123 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !498
  %124 = load i32, i32* %123, align 4, !dbg !498, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %124, metadata !304, metadata !DIExpression()) #14, !dbg !307
  %125 = and i32 %122, 67108863, !dbg !499
  call void @llvm.dbg.value(metadata i32 %125, metadata !305, metadata !DIExpression()) #14, !dbg !307
  %126 = lshr i32 %122, 26, !dbg !500
  %127 = add i32 %124, %126, !dbg !501
  call void @llvm.dbg.value(metadata i32 %127, metadata !306, metadata !DIExpression()) #14, !dbg !307
  store i32 %125, i32* %1, align 4, !dbg !502, !tbaa !167
  store i32 %127, i32* %123, align 4, !dbg !503, !tbaa !167
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %40) #14, !dbg !504
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %37) #14, !dbg !504
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #14, !dbg !505
  ret void, !dbg !505
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #7 !dbg !506 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !518
  call void @llvm.dbg.value(metadata i32* %1, metadata !510, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !518
  call void @llvm.dbg.value(metadata i8* %2, metadata !511, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32 %3, metadata !512, metadata !DIExpression()), !dbg !518
  %5 = icmp eq i32 %3, 0, !dbg !519
  br i1 %5, label %9, label %6, !dbg !520

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !513, metadata !DIExpression()), !dbg !521
  %7 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !522
  call void @llvm.dbg.value(metadata i8* %7, metadata !516, metadata !DIExpression()), !dbg !521
  %8 = add i32 %3, -1, !dbg !523
  call void @llvm.dbg.value(metadata i32 %8, metadata !517, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i32* %0, metadata !196, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !524
  call void @llvm.dbg.value(metadata i32* %1, metadata !196, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !524
  call void @llvm.dbg.value(metadata i8* %2, metadata !197, metadata !DIExpression()) #14, !dbg !524
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_update(i32* %0, i32* %1, i8* noundef %2) #14, !dbg !526
  call void @Hacl_Poly1305_32_update(i32* %0, i32* %1, i8* noundef nonnull %7, i32 noundef %8), !dbg !527
  br label %9, !dbg !528

9:                                                ; preds = %6, %4
  ret void, !dbg !529
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update_last(i32* nocapture readonly %0, i32* %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #7 !dbg !530 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !538
  call void @llvm.dbg.value(metadata i32* %1, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !538
  call void @llvm.dbg.value(metadata i8* %2, metadata !533, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i32 %3, metadata !534, metadata !DIExpression()), !dbg !538
  %5 = icmp eq i32 %3, 0, !dbg !539
  br i1 %5, label %8, label %6, !dbg !541

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !542
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(i32* %0, i32* %1, i8* noundef %2, i64 noundef %7), !dbg !543
  br label %8, !dbg !543

8:                                                ; preds = %6, %4
  call void @llvm.dbg.value(metadata i32* %0, metadata !535, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !538
  call void @llvm.dbg.value(metadata i32* %1, metadata !535, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !538
  call void @llvm.dbg.value(metadata i32* %1, metadata !536, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i32* %1, metadata !537, metadata !DIExpression()), !dbg !538
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_last_pass(i32* noundef %1), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: inlinehint nofree nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #8 !dbg !546 {
  %5 = alloca [5 x i32], align 4
  %6 = alloca [5 x i64], align 8
  %7 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i32 0, i32 0
  %8 = alloca [5 x i32], align 4
  %9 = alloca [16 x i8], align 4
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0, !dbg !562
  call void @llvm.dbg.value(metadata i32* %0, metadata !550, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !562
  call void @llvm.dbg.value(metadata i32* %1, metadata !550, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !562
  call void @llvm.dbg.value(metadata i8* %2, metadata !551, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64 %3, metadata !552, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i8 0, metadata !553, metadata !DIExpression()), !dbg !562
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0, !dbg !563
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #14, !dbg !563
  call void @llvm.dbg.declare(metadata [16 x i8]* %9, metadata !554, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32 0, metadata !558, metadata !DIExpression()), !dbg !565
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %10, i8 0, i32 16, i1 false), !dbg !566, !tbaa !568
  call void @llvm.dbg.value(metadata i32 undef, metadata !558, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 undef, metadata !558, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !565
  %12 = trunc i64 %3 to i32, !dbg !569
  call void @llvm.dbg.value(metadata i32 %12, metadata !560, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %12, metadata !561, metadata !DIExpression()), !dbg !562
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 %11, i8* align 1 %2, i32 %12, i1 false), !dbg !570
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 %12, !dbg !571
  store i8 1, i8* %13, align 1, !dbg !572, !tbaa !568
  call void @llvm.dbg.value(metadata i32* %0, metadata !573, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !601
  call void @llvm.dbg.value(metadata i32* %1, metadata !573, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !601
  call void @llvm.dbg.value(metadata i8* %11, metadata !578, metadata !DIExpression()) #14, !dbg !601
  call void @llvm.dbg.value(metadata i8* undef, metadata !579, metadata !DIExpression()) #14, !dbg !601
  call void @llvm.dbg.value(metadata i64 undef, metadata !580, metadata !DIExpression()) #14, !dbg !601
  %14 = bitcast [5 x i32]* %8 to i8*, !dbg !603
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %14) #14, !dbg !603
  call void @llvm.dbg.declare(metadata [5 x i32]* %8, metadata !581, metadata !DIExpression()) #14, !dbg !604
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(20) %14, i8 0, i32 20, i1 false) #14, !dbg !604
  call void @llvm.dbg.value(metadata i8* %11, metadata !582, metadata !DIExpression()) #14, !dbg !601
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 3, !dbg !605
  call void @llvm.dbg.value(metadata i8* %15, metadata !583, metadata !DIExpression()) #14, !dbg !601
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 6, !dbg !606
  call void @llvm.dbg.value(metadata i8* %16, metadata !584, metadata !DIExpression()) #14, !dbg !601
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 9, !dbg !607
  call void @llvm.dbg.value(metadata i8* %17, metadata !585, metadata !DIExpression()) #14, !dbg !601
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 12, !dbg !608
  call void @llvm.dbg.value(metadata i8* %18, metadata !586, metadata !DIExpression()) #14, !dbg !601
  call void @llvm.dbg.value(metadata i8* %11, metadata !239, metadata !DIExpression()) #14, !dbg !609
  %19 = bitcast [16 x i8]* %9 to i32*, !dbg !611
  %20 = load i32, i32* %19, align 4, !dbg !611
  call void @llvm.dbg.value(metadata i32 %20, metadata !244, metadata !DIExpression()) #14, !dbg !609
  call void @llvm.dbg.value(metadata i32 %20, metadata !587, metadata !DIExpression()) #14, !dbg !601
  call void @llvm.dbg.value(metadata i8* %15, metadata !239, metadata !DIExpression()) #14, !dbg !612
  %21 = bitcast i8* %15 to i32*, !dbg !614
  %22 = load i32, i32* %21, align 1, !dbg !614
  call void @llvm.dbg.value(metadata i32 %22, metadata !244, metadata !DIExpression()) #14, !dbg !612
  call void @llvm.dbg.value(metadata i32 %22, metadata !588, metadata !DIExpression()) #14, !dbg !601
  call void @llvm.dbg.value(metadata i8* %16, metadata !239, metadata !DIExpression()) #14, !dbg !615
  %23 = bitcast i8* %16 to i32*, !dbg !617
  %24 = load i32, i32* %23, align 2, !dbg !617
  call void @llvm.dbg.value(metadata i32 %24, metadata !244, metadata !DIExpression()) #14, !dbg !615
  call void @llvm.dbg.value(metadata i32 %24, metadata !589, metadata !DIExpression()) #14, !dbg !601
  call void @llvm.dbg.value(metadata i8* %17, metadata !239, metadata !DIExpression()) #14, !dbg !618
  %25 = bitcast i8* %17 to i32*, !dbg !620
  %26 = load i32, i32* %25, align 1, !dbg !620
  call void @llvm.dbg.value(metadata i32 %26, metadata !244, metadata !DIExpression()) #14, !dbg !618
  call void @llvm.dbg.value(metadata i32 %26, metadata !590, metadata !DIExpression()) #14, !dbg !601
  call void @llvm.dbg.value(metadata i8* %18, metadata !239, metadata !DIExpression()) #14, !dbg !621
  %27 = bitcast i8* %18 to i32*, !dbg !623
  %28 = load i32, i32* %27, align 4, !dbg !623
  call void @llvm.dbg.value(metadata i32 %28, metadata !244, metadata !DIExpression()) #14, !dbg !621
  call void @llvm.dbg.value(metadata i32 %28, metadata !591, metadata !DIExpression()) #14, !dbg !601
  %29 = and i32 %20, 67108863, !dbg !624
  call void @llvm.dbg.value(metadata i32 %29, metadata !592, metadata !DIExpression()) #14, !dbg !601
  %30 = lshr i32 %22, 2, !dbg !625
  %31 = and i32 %30, 67108863, !dbg !626
  call void @llvm.dbg.value(metadata i32 %31, metadata !593, metadata !DIExpression()) #14, !dbg !601
  %32 = lshr i32 %24, 4, !dbg !627
  %33 = and i32 %32, 67108863, !dbg !628
  call void @llvm.dbg.value(metadata i32 %33, metadata !594, metadata !DIExpression()) #14, !dbg !601
  %34 = lshr i32 %26, 6, !dbg !629
  call void @llvm.dbg.value(metadata i32 %34, metadata !595, metadata !DIExpression()) #14, !dbg !601
  %35 = lshr i32 %28, 8, !dbg !630
  call void @llvm.dbg.value(metadata i32 %35, metadata !596, metadata !DIExpression()) #14, !dbg !601
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i32 0, i32 0, !dbg !631
  store i32 %29, i32* %36, align 4, !dbg !632, !tbaa !167
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i32 0, i32 1, !dbg !633
  store i32 %31, i32* %37, align 4, !dbg !634, !tbaa !167
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i32 0, i32 2, !dbg !635
  store i32 %33, i32* %38, align 4, !dbg !636, !tbaa !167
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i32 0, i32 3, !dbg !637
  store i32 %34, i32* %39, align 4, !dbg !638, !tbaa !167
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i32 0, i32 4, !dbg !639
  store i32 %35, i32* %40, align 4, !dbg !640, !tbaa !167
  call void @llvm.dbg.value(metadata i32* %0, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !601
  call void @llvm.dbg.value(metadata i32* %1, metadata !597, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !601
  call void @llvm.dbg.value(metadata i32* %1, metadata !598, metadata !DIExpression()) #14, !dbg !601
  call void @llvm.dbg.value(metadata i32* %0, metadata !599, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !601
  call void @llvm.dbg.value(metadata i32* %1, metadata !599, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !601
  call void @llvm.dbg.value(metadata i32* %0, metadata !600, metadata !DIExpression()) #14, !dbg !601
  call void @llvm.dbg.value(metadata i32* %1, metadata !278, metadata !DIExpression()) #14, !dbg !641
  call void @llvm.dbg.value(metadata i32* %36, metadata !283, metadata !DIExpression()) #14, !dbg !641
  call void @llvm.dbg.value(metadata i32* %0, metadata !284, metadata !DIExpression()) #14, !dbg !641
  call void @llvm.dbg.value(metadata i32 0, metadata !285, metadata !DIExpression()) #14, !dbg !643
  br label %117, !dbg !644

41:                                               ; preds = %117
  call void @llvm.dbg.value(metadata i32* %1, metadata !295, metadata !DIExpression()) #14, !dbg !645
  call void @llvm.dbg.value(metadata i32* %1, metadata !298, metadata !DIExpression()) #14, !dbg !645
  call void @llvm.dbg.value(metadata i32* %0, metadata !299, metadata !DIExpression()) #14, !dbg !645
  %42 = bitcast [5 x i32]* %5 to i8*, !dbg !647
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %42) #14, !dbg !647
  call void @llvm.dbg.declare(metadata [5 x i32]* %5, metadata !300, metadata !DIExpression()) #14, !dbg !648
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0, !dbg !649
  %44 = bitcast i32* %1 to i8*, !dbg !649
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(20) %42, i8* noundef nonnull align 4 dereferenceable(20) %44, i32 20, i1 false) #14, !dbg !649
  %45 = bitcast [5 x i64]* %6 to i8*, !dbg !650
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %45) #14, !dbg !650
  call void @llvm.dbg.declare(metadata [5 x i64]* %6, metadata !301, metadata !DIExpression()) #14, !dbg !651
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %45, i8 0, i32 40, i1 false) #14, !dbg !651
  call void @llvm.dbg.value(metadata i32* %43, metadata !314, metadata !DIExpression()) #14, !dbg !652
  call void @llvm.dbg.value(metadata i32* %0, metadata !321, metadata !DIExpression()) #14, !dbg !652
  call void @llvm.dbg.value(metadata i32 0, metadata !322, metadata !DIExpression()) #14, !dbg !654
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 4
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 1
  %48 = bitcast i32* %47 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !322, metadata !DIExpression()) #14, !dbg !654
  br label %66, !dbg !655

49:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i32 4, metadata !327, metadata !DIExpression()) #14, !dbg !652
  %50 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !656
  %51 = load i32, i32* %50, align 4, !dbg !656, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %51, metadata !328, metadata !DIExpression()) #14, !dbg !652
  call void @llvm.dbg.value(metadata i32* %43, metadata !334, metadata !DIExpression()) #14, !dbg !657
  call void @llvm.dbg.value(metadata i32 %51, metadata !340, metadata !DIExpression()) #14, !dbg !657
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()) #14, !dbg !659
  %52 = zext i32 %51 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()) #14, !dbg !659
  br label %53, !dbg !660

53:                                               ; preds = %53, %49
  %54 = phi i32 [ 0, %49 ], [ %62, %53 ]
  call void @llvm.dbg.value(metadata i32 %54, metadata !341, metadata !DIExpression()) #14, !dbg !659
  %55 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i32 0, i32 %54, !dbg !661
  %56 = load i64, i64* %55, align 8, !dbg !661, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %56, metadata !343, metadata !DIExpression()) #14, !dbg !662
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 %54, !dbg !663
  %58 = load i32, i32* %57, align 4, !dbg !663, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %58, metadata !346, metadata !DIExpression()) #14, !dbg !662
  %59 = zext i32 %58 to i64, !dbg !664
  call void @llvm.dbg.value(metadata i64 %59, metadata !347, metadata !DIExpression()) #14, !dbg !662
  call void @llvm.dbg.value(metadata i64 %52, metadata !348, metadata !DIExpression()) #14, !dbg !662
  %60 = mul nuw i64 %59, %52, !dbg !665
  %61 = add i64 %60, %56, !dbg !666
  store i64 %61, i64* %55, align 8, !dbg !667, !tbaa !354
  %62 = add nuw nsw i32 %54, 1, !dbg !668
  call void @llvm.dbg.value(metadata i32 %62, metadata !341, metadata !DIExpression()) #14, !dbg !659
  %63 = icmp eq i32 %62, 5, !dbg !669
  br i1 %63, label %64, label %53, !dbg !660, !llvm.loop !670

64:                                               ; preds = %53
  %65 = load i64, i64* %7, align 8
  br label %87, !dbg !672

66:                                               ; preds = %82, %41
  %67 = phi i32 [ 0, %41 ], [ %85, %82 ]
  call void @llvm.dbg.value(metadata i32 %67, metadata !322, metadata !DIExpression()) #14, !dbg !654
  %68 = getelementptr inbounds i32, i32* %0, i32 %67, !dbg !674
  %69 = load i32, i32* %68, align 4, !dbg !674, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %69, metadata !324, metadata !DIExpression()) #14, !dbg !675
  call void @llvm.dbg.value(metadata i32* %43, metadata !334, metadata !DIExpression()) #14, !dbg !676
  call void @llvm.dbg.value(metadata i32 %69, metadata !340, metadata !DIExpression()) #14, !dbg !676
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()) #14, !dbg !678
  %70 = zext i32 %69 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()) #14, !dbg !678
  br label %71, !dbg !679

71:                                               ; preds = %71, %66
  %72 = phi i32 [ 0, %66 ], [ %80, %71 ]
  call void @llvm.dbg.value(metadata i32 %72, metadata !341, metadata !DIExpression()) #14, !dbg !678
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i32 0, i32 %72, !dbg !680
  %74 = load i64, i64* %73, align 8, !dbg !680, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %74, metadata !343, metadata !DIExpression()) #14, !dbg !681
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 %72, !dbg !682
  %76 = load i32, i32* %75, align 4, !dbg !682, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %76, metadata !346, metadata !DIExpression()) #14, !dbg !681
  %77 = zext i32 %76 to i64, !dbg !683
  call void @llvm.dbg.value(metadata i64 %77, metadata !347, metadata !DIExpression()) #14, !dbg !681
  call void @llvm.dbg.value(metadata i64 %70, metadata !348, metadata !DIExpression()) #14, !dbg !681
  %78 = mul nuw i64 %77, %70, !dbg !684
  %79 = add i64 %78, %74, !dbg !685
  store i64 %79, i64* %73, align 8, !dbg !686, !tbaa !354
  %80 = add nuw nsw i32 %72, 1, !dbg !687
  call void @llvm.dbg.value(metadata i32 %80, metadata !341, metadata !DIExpression()) #14, !dbg !678
  %81 = icmp eq i32 %80, 5, !dbg !688
  br i1 %81, label %82, label %71, !dbg !679, !llvm.loop !689

82:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32* %43, metadata !400, metadata !DIExpression()) #14, !dbg !691
  %83 = load i32, i32* %46, align 4, !dbg !693, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %83, metadata !405, metadata !DIExpression()) #14, !dbg !691
  call void @llvm.dbg.value(metadata i32 0, metadata !406, metadata !DIExpression()) #14, !dbg !694
  call void @llvm.memmove.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %48, i8* noundef nonnull align 4 dereferenceable(16) %42, i32 16, i1 false) #14, !dbg !695, !tbaa !167
  call void @llvm.dbg.value(metadata i32 undef, metadata !408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #14, !dbg !696
  call void @llvm.dbg.value(metadata i32 undef, metadata !411, metadata !DIExpression()) #14, !dbg !696
  call void @llvm.dbg.value(metadata i32 undef, metadata !406, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !694
  call void @llvm.dbg.value(metadata i32* %43, metadata !418, metadata !DIExpression()) #14, !dbg !697
  call void @llvm.dbg.value(metadata i32 %83, metadata !421, metadata !DIExpression()) #14, !dbg !697
  %84 = mul i32 %83, 5, !dbg !699
  store i32 %84, i32* %43, align 4, !dbg !700, !tbaa !167
  %85 = add nuw nsw i32 %67, 1, !dbg !701
  call void @llvm.dbg.value(metadata i32 %85, metadata !322, metadata !DIExpression()) #14, !dbg !654
  %86 = icmp eq i32 %85, 4, !dbg !702
  br i1 %86, label %49, label %66, !dbg !655, !llvm.loop !703

87:                                               ; preds = %64, %87
  %88 = phi i64 [ %65, %64 ], [ %96, %87 ]
  %89 = phi i32 [ 0, %64 ], [ %91, %87 ]
  call void @llvm.dbg.value(metadata i32 %89, metadata !374, metadata !DIExpression()) #14, !dbg !705
  call void @llvm.dbg.value(metadata i32 %89, metadata !375, metadata !DIExpression()) #14, !dbg !706
  %90 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i32 0, i32 %89, !dbg !707
  call void @llvm.dbg.value(metadata i64 %88, metadata !378, metadata !DIExpression()) #14, !dbg !706
  %91 = add nuw nsw i32 %89, 1, !dbg !708
  %92 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i32 0, i32 %91, !dbg !709
  %93 = load i64, i64* %92, align 8, !dbg !709, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %93, metadata !379, metadata !DIExpression()) #14, !dbg !706
  call void @llvm.dbg.value(metadata i64 %88, metadata !380, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)) #14, !dbg !706
  %94 = lshr i64 %88, 26, !dbg !710
  call void @llvm.dbg.value(metadata i64 %94, metadata !381, metadata !DIExpression()) #14, !dbg !706
  %95 = and i64 %88, 67108863, !dbg !711
  store i64 %95, i64* %90, align 8, !dbg !712, !tbaa !354
  %96 = add i64 %93, %94, !dbg !713
  store i64 %96, i64* %92, align 8, !dbg !714, !tbaa !354
  call void @llvm.dbg.value(metadata i32 %91, metadata !374, metadata !DIExpression()) #14, !dbg !705
  %97 = icmp eq i32 %91, 4, !dbg !715
  br i1 %97, label %98, label %87, !dbg !672, !llvm.loop !716

98:                                               ; preds = %87
  %99 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i32 0, i32 0, !dbg !718
  call void @llvm.dbg.value(metadata i64* %99, metadata !444, metadata !DIExpression()) #14, !dbg !719
  %100 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i32 0, i32 4, !dbg !721
  %101 = load i64, i64* %100, align 8, !dbg !721, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %101, metadata !447, metadata !DIExpression()) #14, !dbg !719
  %102 = load i64, i64* %99, align 8, !dbg !722, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %102, metadata !448, metadata !DIExpression()) #14, !dbg !719
  %103 = and i64 %101, 67108863, !dbg !723
  call void @llvm.dbg.value(metadata i64 %103, metadata !449, metadata !DIExpression()) #14, !dbg !719
  %104 = lshr i64 %101, 26, !dbg !724
  %105 = trunc i64 %104 to i32, !dbg !725
  call void @llvm.dbg.value(metadata i32 %105, metadata !450, metadata !DIExpression()) #14, !dbg !719
  %106 = mul i32 %105, 5, !dbg !726
  %107 = zext i32 %106 to i64, !dbg !727
  %108 = add i64 %102, %107, !dbg !728
  call void @llvm.dbg.value(metadata i64 %108, metadata !451, metadata !DIExpression()) #14, !dbg !719
  store i64 %103, i64* %100, align 8, !dbg !729, !tbaa !354
  store i64 %108, i64* %99, align 8, !dbg !730, !tbaa !354
  call void @llvm.dbg.value(metadata i32* %1, metadata !464, metadata !DIExpression()) #14, !dbg !731
  call void @llvm.dbg.value(metadata i64* %99, metadata !469, metadata !DIExpression()) #14, !dbg !731
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()) #14, !dbg !733
  br label %109, !dbg !734

109:                                              ; preds = %109, %98
  %110 = phi i32 [ 0, %98 ], [ %115, %109 ]
  call void @llvm.dbg.value(metadata i32 %110, metadata !470, metadata !DIExpression()) #14, !dbg !733
  %111 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i32 0, i32 %110, !dbg !735
  %112 = load i64, i64* %111, align 8, !dbg !735, !tbaa !354
  call void @llvm.dbg.value(metadata i64 %112, metadata !472, metadata !DIExpression()) #14, !dbg !736
  %113 = trunc i64 %112 to i32, !dbg !737
  %114 = getelementptr inbounds i32, i32* %1, i32 %110, !dbg !738
  store i32 %113, i32* %114, align 4, !dbg !739, !tbaa !167
  %115 = add nuw nsw i32 %110, 1, !dbg !740
  call void @llvm.dbg.value(metadata i32 %115, metadata !470, metadata !DIExpression()) #14, !dbg !733
  %116 = icmp eq i32 %115, 5, !dbg !741
  br i1 %116, label %126, label %109, !dbg !734, !llvm.loop !742

117:                                              ; preds = %117, %4
  %118 = phi i32 [ 0, %4 ], [ %124, %117 ]
  call void @llvm.dbg.value(metadata i32 %118, metadata !285, metadata !DIExpression()) #14, !dbg !643
  %119 = getelementptr inbounds i32, i32* %1, i32 %118, !dbg !744
  %120 = load i32, i32* %119, align 4, !dbg !744, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %120, metadata !287, metadata !DIExpression()) #14, !dbg !745
  %121 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i32 0, i32 %118, !dbg !746
  %122 = load i32, i32* %121, align 4, !dbg !746, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %122, metadata !290, metadata !DIExpression()) #14, !dbg !745
  %123 = add i32 %122, %120, !dbg !747
  store i32 %123, i32* %119, align 4, !dbg !748, !tbaa !167
  %124 = add nuw nsw i32 %118, 1, !dbg !749
  call void @llvm.dbg.value(metadata i32 %124, metadata !285, metadata !DIExpression()) #14, !dbg !643
  %125 = icmp eq i32 %124, 5, !dbg !750
  br i1 %125, label %41, label %117, !dbg !644, !llvm.loop !751

126:                                              ; preds = %109
  %127 = load i32, i32* %1, align 4, !dbg !753, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %127, metadata !303, metadata !DIExpression()) #14, !dbg !645
  %128 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !754
  %129 = load i32, i32* %128, align 4, !dbg !754, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %129, metadata !304, metadata !DIExpression()) #14, !dbg !645
  %130 = and i32 %127, 67108863, !dbg !755
  call void @llvm.dbg.value(metadata i32 %130, metadata !305, metadata !DIExpression()) #14, !dbg !645
  %131 = lshr i32 %127, 26, !dbg !756
  %132 = add i32 %129, %131, !dbg !757
  call void @llvm.dbg.value(metadata i32 %132, metadata !306, metadata !DIExpression()) #14, !dbg !645
  store i32 %130, i32* %1, align 4, !dbg !758, !tbaa !167
  store i32 %132, i32* %128, align 4, !dbg !759, !tbaa !167
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %45) #14, !dbg !760
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %42) #14, !dbg !760
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %14) #14, !dbg !761
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #14, !dbg !762
  ret void, !dbg !762
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_last_pass(i32* noundef %0) unnamed_addr #9 !dbg !763 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !765, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32* %0, metadata !814, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !828
  %2 = load i32, i32* %0, align 4
  br label %3, !dbg !829

3:                                                ; preds = %3, %1
  %4 = phi i32 [ %2, %1 ], [ %12, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %7, %3 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !817, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 %5, metadata !819, metadata !DIExpression()), !dbg !830
  %6 = getelementptr inbounds i32, i32* %0, i32 %5, !dbg !831
  call void @llvm.dbg.value(metadata i32 %4, metadata !822, metadata !DIExpression()), !dbg !830
  %7 = add nuw nsw i32 %5, 1, !dbg !832
  %8 = getelementptr inbounds i32, i32* %0, i32 %7, !dbg !833
  %9 = load i32, i32* %8, align 4, !dbg !833, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %9, metadata !823, metadata !DIExpression()), !dbg !830
  %10 = and i32 %4, 67108863, !dbg !834
  call void @llvm.dbg.value(metadata i32 %10, metadata !824, metadata !DIExpression()), !dbg !830
  %11 = lshr i32 %4, 26, !dbg !835
  call void @llvm.dbg.value(metadata i32 %11, metadata !825, metadata !DIExpression()), !dbg !830
  store i32 %10, i32* %6, align 4, !dbg !836, !tbaa !167
  %12 = add i32 %9, %11, !dbg !837
  store i32 %12, i32* %8, align 4, !dbg !838, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %7, metadata !817, metadata !DIExpression()), !dbg !828
  %13 = icmp eq i32 %7, 4, !dbg !839
  br i1 %13, label %14, label %3, !dbg !829, !llvm.loop !840

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32* %0, metadata !842, metadata !DIExpression()), !dbg !848
  %15 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !850
  %16 = load i32, i32* %15, align 4, !dbg !850, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %16, metadata !845, metadata !DIExpression()), !dbg !848
  %17 = load i32, i32* %0, align 4, !dbg !851, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %17, metadata !846, metadata !DIExpression()), !dbg !848
  %18 = lshr i32 %16, 26, !dbg !852
  call void @llvm.dbg.value(metadata i32 %18, metadata !847, metadata !DIExpression()), !dbg !848
  %19 = and i32 %16, 67108863, !dbg !853
  store i32 %19, i32* %15, align 4, !dbg !854, !tbaa !167
  %20 = mul nuw nsw i32 %18, 5, !dbg !855
  %21 = add i32 %20, %17, !dbg !856
  store i32 %21, i32* %0, align 4, !dbg !857, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %21, metadata !766, metadata !DIExpression()), !dbg !813
  %22 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !858
  %23 = load i32, i32* %22, align 4, !dbg !858, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %23, metadata !767, metadata !DIExpression()), !dbg !813
  %24 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !859
  %25 = load i32, i32* %24, align 4, !dbg !859, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %25, metadata !768, metadata !DIExpression()), !dbg !813
  %26 = getelementptr inbounds i32, i32* %0, i32 3, !dbg !860
  %27 = load i32, i32* %26, align 4, !dbg !860, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %27, metadata !769, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %19, metadata !770, metadata !DIExpression()), !dbg !813
  %28 = lshr i32 %21, 26, !dbg !861
  %29 = add i32 %23, %28, !dbg !862
  call void @llvm.dbg.value(metadata i32 %29, metadata !771, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 67108863, metadata !772, metadata !DIExpression()), !dbg !813
  %30 = and i32 %21, 67108863, !dbg !863
  call void @llvm.dbg.value(metadata i32 %30, metadata !773, metadata !DIExpression()), !dbg !813
  %31 = lshr i32 %29, 26, !dbg !864
  %32 = add i32 %31, %25, !dbg !865
  call void @llvm.dbg.value(metadata i32 %32, metadata !774, metadata !DIExpression()), !dbg !813
  %33 = and i32 %29, 67108863, !dbg !866
  call void @llvm.dbg.value(metadata i32 %33, metadata !775, metadata !DIExpression()), !dbg !813
  %34 = lshr i32 %32, 26, !dbg !867
  %35 = add i32 %34, %27, !dbg !868
  call void @llvm.dbg.value(metadata i32 %35, metadata !776, metadata !DIExpression()), !dbg !813
  %36 = and i32 %32, 67108863, !dbg !869
  call void @llvm.dbg.value(metadata i32 %36, metadata !777, metadata !DIExpression()), !dbg !813
  %37 = lshr i32 %35, 26, !dbg !870
  %38 = add nuw nsw i32 %37, %19, !dbg !871
  call void @llvm.dbg.value(metadata i32 %38, metadata !778, metadata !DIExpression()), !dbg !813
  %39 = and i32 %35, 67108863, !dbg !872
  call void @llvm.dbg.value(metadata i32 %39, metadata !779, metadata !DIExpression()), !dbg !813
  store i32 %30, i32* %0, align 4, !dbg !873, !tbaa !167
  store i32 %33, i32* %22, align 4, !dbg !874, !tbaa !167
  store i32 %36, i32* %24, align 4, !dbg !875, !tbaa !167
  store i32 %39, i32* %26, align 4, !dbg !876, !tbaa !167
  call void @llvm.dbg.value(metadata i32* %0, metadata !842, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i32 %38, metadata !845, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i32 %30, metadata !846, metadata !DIExpression()), !dbg !877
  %40 = lshr i32 %38, 26, !dbg !879
  call void @llvm.dbg.value(metadata i32 %40, metadata !847, metadata !DIExpression()), !dbg !877
  %41 = and i32 %38, 67108863, !dbg !880
  store i32 %41, i32* %15, align 4, !dbg !881, !tbaa !167
  %42 = mul nuw nsw i32 %40, 5, !dbg !882
  %43 = add nuw nsw i32 %42, %30, !dbg !883
  call void @llvm.dbg.value(metadata i32 %43, metadata !780, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %33, metadata !781, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %36, metadata !782, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %39, metadata !783, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %41, metadata !784, metadata !DIExpression()), !dbg !813
  %44 = lshr i32 %43, 26, !dbg !884
  %45 = add nuw nsw i32 %44, %33, !dbg !885
  call void @llvm.dbg.value(metadata i32 %45, metadata !785, metadata !DIExpression()), !dbg !813
  %46 = and i32 %43, 67108863, !dbg !886
  call void @llvm.dbg.value(metadata i32 %46, metadata !786, metadata !DIExpression()), !dbg !813
  %47 = lshr i32 %45, 26, !dbg !887
  %48 = add nuw nsw i32 %47, %36, !dbg !888
  call void @llvm.dbg.value(metadata i32 %48, metadata !787, metadata !DIExpression()), !dbg !813
  %49 = and i32 %45, 67108863, !dbg !889
  call void @llvm.dbg.value(metadata i32 %49, metadata !788, metadata !DIExpression()), !dbg !813
  %50 = lshr i32 %48, 26, !dbg !890
  %51 = add nuw nsw i32 %50, %39, !dbg !891
  call void @llvm.dbg.value(metadata i32 %51, metadata !789, metadata !DIExpression()), !dbg !813
  %52 = and i32 %48, 67108863, !dbg !892
  call void @llvm.dbg.value(metadata i32 %48, metadata !790, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)), !dbg !813
  %53 = lshr i32 %51, 26, !dbg !893
  %54 = add nuw nsw i32 %53, %41, !dbg !894
  call void @llvm.dbg.value(metadata i32 %54, metadata !791, metadata !DIExpression()), !dbg !813
  %55 = and i32 %51, 67108863, !dbg !895
  call void @llvm.dbg.value(metadata i32 %51, metadata !792, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)), !dbg !813
  store i32 %46, i32* %0, align 4, !dbg !896, !tbaa !167
  store i32 %49, i32* %22, align 4, !dbg !897, !tbaa !167
  store i32 %52, i32* %24, align 4, !dbg !898, !tbaa !167
  store i32 %55, i32* %26, align 4, !dbg !899, !tbaa !167
  call void @llvm.dbg.value(metadata i32* %0, metadata !842, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %54, metadata !845, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %46, metadata !846, metadata !DIExpression()), !dbg !900
  %56 = lshr i32 %54, 26, !dbg !902
  call void @llvm.dbg.value(metadata i32 %56, metadata !847, metadata !DIExpression()), !dbg !900
  %57 = and i32 %54, 67108863, !dbg !903
  store i32 %57, i32* %15, align 4, !dbg !904, !tbaa !167
  %58 = mul nuw nsw i32 %56, 5, !dbg !905
  %59 = add nuw nsw i32 %58, %46, !dbg !906
  call void @llvm.dbg.value(metadata i32 %59, metadata !793, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %49, metadata !794, metadata !DIExpression()), !dbg !813
  %60 = and i32 %59, 67108863, !dbg !907
  call void @llvm.dbg.value(metadata i32 %60, metadata !795, metadata !DIExpression()), !dbg !813
  %61 = lshr i32 %59, 26, !dbg !908
  %62 = add nuw nsw i32 %61, %49, !dbg !909
  call void @llvm.dbg.value(metadata i32 %62, metadata !796, metadata !DIExpression()), !dbg !813
  store i32 %60, i32* %0, align 4, !dbg !910, !tbaa !167
  store i32 %62, i32* %22, align 4, !dbg !911, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %60, metadata !797, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %62, metadata !798, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %48, metadata !799, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)), !dbg !813
  call void @llvm.dbg.value(metadata i32 %51, metadata !800, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)), !dbg !813
  call void @llvm.dbg.value(metadata i32 %54, metadata !801, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)), !dbg !813
  call void @llvm.dbg.value(metadata i32 %60, metadata !912, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i32 67108859, metadata !918, metadata !DIExpression()), !dbg !919
  %63 = zext i32 %60 to i64, !dbg !921
  %64 = add nsw i64 %63, -67108859, !dbg !922
  %65 = ashr i64 %64, 63, !dbg !923
  %66 = trunc i64 %65 to i32, !dbg !924
  %67 = xor i32 %66, -1, !dbg !925
  call void @llvm.dbg.value(metadata i32 %67, metadata !802, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %62, metadata !926, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 67108863, metadata !929, metadata !DIExpression()), !dbg !930
  %68 = xor i32 %62, -67108864, !dbg !932
  call void @llvm.dbg.value(metadata i32 %62, metadata !926, metadata !DIExpression(DW_OP_constu, 18446744073642442752, DW_OP_xor, DW_OP_stack_value)), !dbg !930
  %69 = shl i32 %62, 16, !dbg !933
  %70 = and i32 %68, %69, !dbg !934
  call void @llvm.dbg.value(metadata i32 %70, metadata !926, metadata !DIExpression()), !dbg !930
  %71 = shl i32 %70, 8, !dbg !935
  %72 = and i32 %71, %70, !dbg !936
  call void @llvm.dbg.value(metadata i32 %72, metadata !926, metadata !DIExpression()), !dbg !930
  %73 = shl i32 %72, 4, !dbg !937
  %74 = and i32 %73, %72, !dbg !938
  call void @llvm.dbg.value(metadata i32 %74, metadata !926, metadata !DIExpression()), !dbg !930
  %75 = shl i32 %74, 2, !dbg !939
  %76 = and i32 %75, %74, !dbg !940
  call void @llvm.dbg.value(metadata i32 %76, metadata !926, metadata !DIExpression()), !dbg !930
  %77 = shl i32 %76, 1, !dbg !941
  %78 = and i32 %77, %76, !dbg !942
  call void @llvm.dbg.value(metadata i32 %78, metadata !926, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 %78, metadata !803, metadata !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value)), !dbg !813
  call void @llvm.dbg.value(metadata i32 %48, metadata !926, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)), !dbg !943
  call void @llvm.dbg.value(metadata i32 67108863, metadata !929, metadata !DIExpression()), !dbg !943
  %79 = or i32 %48, -67108864, !dbg !945
  call void @llvm.dbg.value(metadata i32 %48, metadata !926, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_constu, 18446744073642442752, DW_OP_xor, DW_OP_stack_value)), !dbg !943
  %80 = shl i32 %48, 16, !dbg !946
  %81 = and i32 %79, %80, !dbg !947
  call void @llvm.dbg.value(metadata i32 %81, metadata !926, metadata !DIExpression()), !dbg !943
  %82 = shl i32 %81, 8, !dbg !948
  %83 = and i32 %82, %81, !dbg !949
  call void @llvm.dbg.value(metadata i32 %83, metadata !926, metadata !DIExpression()), !dbg !943
  %84 = shl i32 %83, 4, !dbg !950
  %85 = and i32 %84, %83, !dbg !951
  call void @llvm.dbg.value(metadata i32 %85, metadata !926, metadata !DIExpression()), !dbg !943
  %86 = shl i32 %85, 2, !dbg !952
  %87 = and i32 %86, %85, !dbg !953
  call void @llvm.dbg.value(metadata i32 %87, metadata !926, metadata !DIExpression()), !dbg !943
  %88 = shl i32 %87, 1, !dbg !954
  %89 = and i32 %88, %87, !dbg !955
  call void @llvm.dbg.value(metadata i32 %89, metadata !926, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i32 %89, metadata !804, metadata !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value)), !dbg !813
  call void @llvm.dbg.value(metadata i32 %51, metadata !926, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)), !dbg !956
  call void @llvm.dbg.value(metadata i32 67108863, metadata !929, metadata !DIExpression()), !dbg !956
  %90 = or i32 %51, -67108864, !dbg !958
  call void @llvm.dbg.value(metadata i32 %51, metadata !926, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_constu, 18446744073642442752, DW_OP_xor, DW_OP_stack_value)), !dbg !956
  %91 = shl i32 %51, 16, !dbg !959
  %92 = and i32 %90, %91, !dbg !960
  call void @llvm.dbg.value(metadata i32 %92, metadata !926, metadata !DIExpression()), !dbg !956
  %93 = shl i32 %92, 8, !dbg !961
  %94 = and i32 %93, %92, !dbg !962
  call void @llvm.dbg.value(metadata i32 %94, metadata !926, metadata !DIExpression()), !dbg !956
  %95 = shl i32 %94, 4, !dbg !963
  %96 = and i32 %95, %94, !dbg !964
  call void @llvm.dbg.value(metadata i32 %96, metadata !926, metadata !DIExpression()), !dbg !956
  %97 = shl i32 %96, 2, !dbg !965
  %98 = and i32 %97, %96, !dbg !966
  call void @llvm.dbg.value(metadata i32 %98, metadata !926, metadata !DIExpression()), !dbg !956
  %99 = shl i32 %98, 1, !dbg !967
  %100 = and i32 %99, %98, !dbg !968
  call void @llvm.dbg.value(metadata i32 %100, metadata !926, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 %100, metadata !805, metadata !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value)), !dbg !813
  call void @llvm.dbg.value(metadata i32 %54, metadata !926, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)), !dbg !969
  call void @llvm.dbg.value(metadata i32 67108863, metadata !929, metadata !DIExpression()), !dbg !969
  %101 = or i32 %54, -67108864, !dbg !971
  call void @llvm.dbg.value(metadata i32 %54, metadata !926, metadata !DIExpression(DW_OP_constu, 67108863, DW_OP_and, DW_OP_constu, 18446744073642442752, DW_OP_xor, DW_OP_stack_value)), !dbg !969
  %102 = shl i32 %54, 16, !dbg !972
  %103 = and i32 %101, %102, !dbg !973
  call void @llvm.dbg.value(metadata i32 %103, metadata !926, metadata !DIExpression()), !dbg !969
  %104 = shl i32 %103, 8, !dbg !974
  %105 = and i32 %104, %103, !dbg !975
  call void @llvm.dbg.value(metadata i32 %105, metadata !926, metadata !DIExpression()), !dbg !969
  %106 = shl i32 %105, 4, !dbg !976
  %107 = and i32 %106, %105, !dbg !977
  call void @llvm.dbg.value(metadata i32 %107, metadata !926, metadata !DIExpression()), !dbg !969
  %108 = shl i32 %107, 2, !dbg !978
  %109 = and i32 %108, %107, !dbg !979
  call void @llvm.dbg.value(metadata i32 %109, metadata !926, metadata !DIExpression()), !dbg !969
  %110 = shl i32 %109, 1, !dbg !980
  %111 = and i32 %110, %109, !dbg !981
  call void @llvm.dbg.value(metadata i32 %111, metadata !926, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i32 %111, metadata !806, metadata !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value)), !dbg !813
  %112 = icmp slt i32 %78, 0, !dbg !982
  %113 = icmp slt i32 %89, 0, !dbg !983
  %114 = icmp slt i32 %100, 0, !dbg !984
  %115 = icmp slt i32 %111, 0, !dbg !985
  %116 = select i1 %115, i1 %114, i1 false, !dbg !985
  %117 = select i1 %116, i1 %113, i1 false, !dbg !985
  %118 = select i1 %117, i1 %112, i1 false, !dbg !985
  %119 = select i1 %118, i32 %67, i32 0, !dbg !985
  call void @llvm.dbg.value(metadata i32 %119, metadata !807, metadata !DIExpression()), !dbg !813
  %120 = and i32 %119, 67108859, !dbg !986
  %121 = sub nsw i32 %60, %120, !dbg !987
  call void @llvm.dbg.value(metadata i32 %121, metadata !808, metadata !DIExpression()), !dbg !813
  %122 = and i32 %119, 67108863, !dbg !988
  %123 = sub nsw i32 %62, %122, !dbg !989
  call void @llvm.dbg.value(metadata i32 %123, metadata !809, metadata !DIExpression()), !dbg !813
  %124 = sub nsw i32 %52, %122, !dbg !990
  call void @llvm.dbg.value(metadata i32 %124, metadata !810, metadata !DIExpression()), !dbg !813
  %125 = sub nsw i32 %55, %122, !dbg !991
  call void @llvm.dbg.value(metadata i32 %125, metadata !811, metadata !DIExpression()), !dbg !813
  %126 = sub nsw i32 %57, %122, !dbg !992
  call void @llvm.dbg.value(metadata i32 %126, metadata !812, metadata !DIExpression()), !dbg !813
  store i32 %121, i32* %0, align 4, !dbg !993, !tbaa !167
  store i32 %123, i32* %22, align 4, !dbg !994, !tbaa !167
  store i32 %124, i32* %24, align 4, !dbg !995, !tbaa !167
  store i32 %125, i32* %26, align 4, !dbg !996, !tbaa !167
  store i32 %126, i32* %15, align 4, !dbg !997, !tbaa !167
  ret void, !dbg !998
}

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_Poly1305_32_finish(i32* nocapture readnone %0, i32* nocapture readonly %1, i8* nocapture noundef writeonly %2, i8* nocapture noundef readonly %3) local_unnamed_addr #3 !dbg !999 {
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !1003, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1017
  call void @llvm.dbg.value(metadata i32* %1, metadata !1003, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %2, metadata !1004, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %3, metadata !1005, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i32* %0, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1017
  call void @llvm.dbg.value(metadata i32* %1, metadata !1006, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1017
  call void @llvm.dbg.value(metadata i32* %1, metadata !1007, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i32* %1, metadata !1008, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression(DW_OP_deref)), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %3, metadata !108, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8* %3, metadata !111, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !117, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8* %3, metadata !120, metadata !DIExpression()), !dbg !1022
  %19 = bitcast i8* %3 to i64*, !dbg !1024
  %20 = load i64, i64* %19, align 1, !dbg !1024, !noalias !1025
  call void @llvm.dbg.value(metadata i64 %20, metadata !125, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i64 %20, metadata !1009, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1017
  %21 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %21, metadata !120, metadata !DIExpression()), !dbg !1029
  %22 = bitcast i8* %21 to i64*, !dbg !1031
  %23 = load i64, i64* %22, align 1, !dbg !1031, !noalias !1025
  call void @llvm.dbg.value(metadata i64 %23, metadata !125, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %23, metadata !1009, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1017
  %24 = load i32, i32* %1, align 4, !dbg !1032, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %24, metadata !1010, metadata !DIExpression()), !dbg !1017
  %25 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !1033
  %26 = load i32, i32* %25, align 4, !dbg !1033, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %26, metadata !1011, metadata !DIExpression()), !dbg !1017
  %27 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !1034
  %28 = load i32, i32* %27, align 4, !dbg !1034, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %28, metadata !1012, metadata !DIExpression()), !dbg !1017
  %29 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !1035
  %30 = load i32, i32* %29, align 4, !dbg !1035, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %30, metadata !1013, metadata !DIExpression()), !dbg !1017
  %31 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !1036
  %32 = load i32, i32* %31, align 4, !dbg !1036, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %32, metadata !1014, metadata !DIExpression()), !dbg !1017
  %33 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #14, !dbg !1037
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !1015, metadata !DIExpression()), !dbg !1038
  %34 = zext i32 %32 to i64, !dbg !1039
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %34) #14, !dbg !1040
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1041
  %36 = load i64, i64* %35, align 8, !dbg !1041, !tbaa !140
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1041
  %38 = load i64, i64* %37, align 8, !dbg !1041, !tbaa !143
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %36, i64 %38, i32 noundef 104) #14, !dbg !1041
  %39 = zext i32 %30 to i64, !dbg !1042
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %39) #14, !dbg !1043
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !1044
  %41 = load i64, i64* %40, align 8, !dbg !1044, !tbaa !140
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !1044
  %43 = load i64, i64* %42, align 8, !dbg !1044, !tbaa !143
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %41, i64 %43, i32 noundef 78) #14, !dbg !1044
  %44 = zext i32 %28 to i64, !dbg !1045
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %44) #14, !dbg !1046
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !1047
  %46 = load i64, i64* %45, align 8, !dbg !1047, !tbaa !140
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !1047
  %48 = load i64, i64* %47, align 8, !dbg !1047, !tbaa !143
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %46, i64 %48, i32 noundef 52) #14, !dbg !1047
  %49 = zext i32 %26 to i64, !dbg !1048
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %49) #14, !dbg !1049
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !1050
  %51 = load i64, i64* %50, align 8, !dbg !1050, !tbaa !140
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !1050
  %53 = load i64, i64* %52, align 8, !dbg !1050, !tbaa !143
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %51, i64 %53, i32 noundef 26) #14, !dbg !1050
  %54 = zext i32 %24 to i64, !dbg !1051
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %54) #14, !dbg !1052
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !1053
  %56 = load i64, i64* %55, align 8, !dbg !1053, !tbaa !140
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !1053
  %58 = load i64, i64* %57, align 8, !dbg !1053, !tbaa !143
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !1053
  %60 = load i64, i64* %59, align 8, !dbg !1053, !tbaa !140
  %61 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !1053
  %62 = load i64, i64* %61, align 8, !dbg !1053, !tbaa !143
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %56, i64 %58, i64 %60, i64 %62) #14, !dbg !1053
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !1054
  %64 = load i64, i64* %63, align 8, !dbg !1054, !tbaa !140
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !1054
  %66 = load i64, i64* %65, align 8, !dbg !1054, !tbaa !143
  %67 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !1054
  %68 = load i64, i64* %67, align 8, !dbg !1054, !tbaa !140
  %69 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !1054
  %70 = load i64, i64* %69, align 8, !dbg !1054, !tbaa !143
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %64, i64 %66, i64 %68, i64 %70) #14, !dbg !1054
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !1055
  %72 = load i64, i64* %71, align 8, !dbg !1055, !tbaa !140
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !1055
  %74 = load i64, i64* %73, align 8, !dbg !1055, !tbaa !143
  %75 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1055
  %76 = load i64, i64* %75, align 8, !dbg !1055, !tbaa !140
  %77 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1055
  %78 = load i64, i64* %77, align 8, !dbg !1055, !tbaa !143
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %72, i64 %74, i64 %76, i64 %78) #14, !dbg !1055
  %79 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !1056
  %80 = load i64, i64* %79, align 8, !dbg !1056, !tbaa !140
  %81 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !1056
  %82 = load i64, i64* %81, align 8, !dbg !1056, !tbaa !143
  %83 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !1056
  %84 = load i64, i64* %83, align 8, !dbg !1056, !tbaa !140
  %85 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !1056
  %86 = load i64, i64* %85, align 8, !dbg !1056, !tbaa !143
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %80, i64 %82, i64 %84, i64 %86) #14, !dbg !1056
  %87 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !1057
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %87) #14, !dbg !1057
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %18, metadata !1016, metadata !DIExpression()), !dbg !1058
  %88 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !1059
  %89 = load i64, i64* %88, align 8, !dbg !1059, !tbaa !140
  %90 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !1059
  %91 = load i64, i64* %90, align 8, !dbg !1059, !tbaa !143
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %89, i64 %91, i64 %20, i64 %23) #14, !dbg !1059
  %92 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !1060
  %93 = load i64, i64* %92, align 8, !dbg !1060, !tbaa !140
  %94 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 1, !dbg !1060
  %95 = load i64, i64* %94, align 8, !dbg !1060, !tbaa !143
  call void @llvm.dbg.value(metadata i64 %93, metadata !1061, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %95, metadata !1061, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %2, metadata !1066, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %2, metadata !1069, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !1072, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i8* %2, metadata !1075, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %93, metadata !1080, metadata !DIExpression()), !dbg !1081
  %96 = bitcast i8* %2 to i64*, !dbg !1083
  store i64 %93, i64* %96, align 1, !dbg !1083
  %97 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !1084
  call void @llvm.dbg.value(metadata i8* %97, metadata !1075, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 %95, metadata !1080, metadata !DIExpression()), !dbg !1085
  %98 = bitcast i8* %97 to i64*, !dbg !1087
  store i64 %95, i64* %98, align 1, !dbg !1087
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %87) #14, !dbg !1088
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #14, !dbg !1088
  ret void, !dbg !1088
}

declare !dbg !1089 void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_Poly1305_32_crypto_onetimeauth(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i8* nocapture noundef readonly %3) local_unnamed_addr #3 !dbg !1090 {
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca [10 x i32], align 4
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %22 = alloca %struct.FStar_UInt128_uint128, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 8
  %24 = alloca %struct.FStar_UInt128_uint128, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 8
  %26 = alloca %struct.FStar_UInt128_uint128, align 8
  %27 = alloca %struct.FStar_UInt128_uint128, align 8
  %28 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1094, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %1, metadata !1095, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %2, metadata !1096, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %3, metadata !1097, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %0, metadata !1099, metadata !DIExpression()) #14, !dbg !1105
  call void @llvm.dbg.value(metadata i8* %1, metadata !1102, metadata !DIExpression()) #14, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %2, metadata !1103, metadata !DIExpression()) #14, !dbg !1105
  call void @llvm.dbg.value(metadata i8* %3, metadata !1104, metadata !DIExpression()) #14, !dbg !1105
  %29 = bitcast %struct.FStar_UInt128_uint128* %16 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #14, !dbg !1107
  %30 = bitcast %struct.FStar_UInt128_uint128* %17 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #14, !dbg !1107
  %31 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #14, !dbg !1107
  %32 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #14, !dbg !1107
  %33 = bitcast %struct.FStar_UInt128_uint128* %20 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #14, !dbg !1107
  %34 = bitcast %struct.FStar_UInt128_uint128* %21 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34) #14, !dbg !1107
  %35 = bitcast %struct.FStar_UInt128_uint128* %22 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35) #14, !dbg !1107
  %36 = bitcast %struct.FStar_UInt128_uint128* %23 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %36) #14, !dbg !1107
  %37 = bitcast %struct.FStar_UInt128_uint128* %24 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #14, !dbg !1107
  %38 = bitcast %struct.FStar_UInt128_uint128* %25 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #14, !dbg !1107
  %39 = bitcast %struct.FStar_UInt128_uint128* %26 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %39) #14, !dbg !1107
  %40 = bitcast %struct.FStar_UInt128_uint128* %27 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %0, metadata !1110, metadata !DIExpression()) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %1, metadata !1111, metadata !DIExpression()) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i64 %2, metadata !1112, metadata !DIExpression()) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %3, metadata !1113, metadata !DIExpression()) #14, !dbg !1107
  %41 = bitcast [10 x i32]* %14 to i8*, !dbg !1134
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %41) #14, !dbg !1134
  call void @llvm.dbg.declare(metadata [10 x i32]* %14, metadata !1114, metadata !DIExpression()) #14, !dbg !1135
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %41, i8 0, i32 40, i1 false) #14, !dbg !1135
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i32 0, i32 0, !dbg !1136
  call void @llvm.dbg.value(metadata i32* %42, metadata !1118, metadata !DIExpression()) #14, !dbg !1107
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i32 0, i32 5, !dbg !1137
  call void @llvm.dbg.value(metadata i32* %43, metadata !1119, metadata !DIExpression()) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i32* %42, metadata !1120, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i32* %43, metadata !1120, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %3, metadata !1121, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i32* %42, metadata !1138, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !1154
  call void @llvm.dbg.value(metadata i32* %43, metadata !1138, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %1, metadata !1143, metadata !DIExpression()) #14, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %2, metadata !1144, metadata !DIExpression()) #14, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %3, metadata !1145, metadata !DIExpression()) #14, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %3, metadata !1146, metadata !DIExpression()) #14, !dbg !1154
  %44 = lshr i64 %2, 4, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %44, metadata !1147, metadata !DIExpression()) #14, !dbg !1154
  %45 = and i64 %2, 15, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %45, metadata !1148, metadata !DIExpression()) #14, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %1, metadata !1149, metadata !DIExpression()) #14, !dbg !1154
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i64 %2), metadata !1150, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1154
  %46 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %46) #14, !dbg !1158
  %47 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %47) #14, !dbg !1158
  %48 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48) #14, !dbg !1158
  %49 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #14, !dbg !1158
  %50 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %50) #14, !dbg !1158
  %51 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %51) #14, !dbg !1158
  %52 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #14, !dbg !1158
  %53 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i32* %42, metadata !1161, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i32* %43, metadata !1161, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i8* %1, metadata !1162, metadata !DIExpression()) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %44, metadata !1163, metadata !DIExpression()) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i8* %3, metadata !1164, metadata !DIExpression()) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i32* %42, metadata !1165, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i32* %43, metadata !1165, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i32* %42, metadata !1166, metadata !DIExpression()) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i32* %42, metadata !1167, metadata !DIExpression()) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %3, metadata !108, metadata !DIExpression()) #14, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %3, metadata !111, metadata !DIExpression()) #14, !dbg !1181
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !117, metadata !DIExpression()) #14, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %3, metadata !120, metadata !DIExpression()) #14, !dbg !1183
  %54 = bitcast i8* %3 to i64*, !dbg !1185
  %55 = load i64, i64* %54, align 1, !dbg !1185, !noalias !1186
  call void @llvm.dbg.value(metadata i64 %55, metadata !125, metadata !DIExpression()) #14, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %55, metadata !1168, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #14, !dbg !1158
  %56 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %56, metadata !120, metadata !DIExpression()) #14, !dbg !1190
  %57 = bitcast i8* %56 to i64*, !dbg !1192
  %58 = load i64, i64* %57, align 1, !dbg !1192, !noalias !1186
  call void @llvm.dbg.value(metadata i64 %58, metadata !125, metadata !DIExpression()) #14, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %58, metadata !1168, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #14, !dbg !1158
  %59 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !1193
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #14, !dbg !1193
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !1169, metadata !DIExpression()) #14, !dbg !1194
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 1152921487695413244) #14, !dbg !1195
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !1196
  %61 = load i64, i64* %60, align 8, !dbg !1196, !tbaa !140
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !1196
  %63 = load i64, i64* %62, align 8, !dbg !1196, !tbaa !143
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %61, i64 %63, i32 noundef 64) #14, !dbg !1196
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef 1152921487695413247) #14, !dbg !1197
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1198
  %65 = load i64, i64* %64, align 8, !dbg !1198, !tbaa !140
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1198
  %67 = load i64, i64* %66, align 8, !dbg !1198, !tbaa !143
  %68 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !1198
  %69 = load i64, i64* %68, align 8, !dbg !1198, !tbaa !140
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !1198
  %71 = load i64, i64* %70, align 8, !dbg !1198, !tbaa !143
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %65, i64 %67, i64 %69, i64 %71) #14, !dbg !1198
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !1199
  %73 = load i64, i64* %72, align 8, !dbg !1199, !tbaa !140
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !1199
  %75 = load i64, i64* %74, align 8, !dbg !1199, !tbaa !143
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %55, i64 %58, i64 %73, i64 %75) #14, !dbg !1199
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !1200
  %77 = load i64, i64* %76, align 8, !dbg !1200, !tbaa !140
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !1200
  %79 = load i64, i64* %78, align 8, !dbg !1200, !tbaa !143
  %80 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %77, i64 %79) #14, !dbg !1200
  %81 = trunc i64 %80 to i32, !dbg !1201
  %82 = and i32 %81, 67108863, !dbg !1202
  call void @llvm.dbg.value(metadata i32 %82, metadata !1170, metadata !DIExpression()) #14, !dbg !1158
  %83 = load i64, i64* %76, align 8, !dbg !1203, !tbaa !140
  %84 = load i64, i64* %78, align 8, !dbg !1203, !tbaa !143
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %83, i64 %84, i32 noundef 26) #14, !dbg !1203
  %85 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !1204
  %86 = load i64, i64* %85, align 8, !dbg !1204, !tbaa !140
  %87 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !1204
  %88 = load i64, i64* %87, align 8, !dbg !1204, !tbaa !143
  %89 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %86, i64 %88) #14, !dbg !1204
  %90 = trunc i64 %89 to i32, !dbg !1205
  %91 = and i32 %90, 67108863, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %91, metadata !1171, metadata !DIExpression()) #14, !dbg !1158
  %92 = load i64, i64* %76, align 8, !dbg !1207, !tbaa !140
  %93 = load i64, i64* %78, align 8, !dbg !1207, !tbaa !143
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %92, i64 %93, i32 noundef 52) #14, !dbg !1207
  %94 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1208
  %95 = load i64, i64* %94, align 8, !dbg !1208, !tbaa !140
  %96 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1208
  %97 = load i64, i64* %96, align 8, !dbg !1208, !tbaa !143
  %98 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %95, i64 %97) #14, !dbg !1208
  %99 = trunc i64 %98 to i32, !dbg !1209
  %100 = and i32 %99, 67108863, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %100, metadata !1172, metadata !DIExpression()) #14, !dbg !1158
  %101 = load i64, i64* %76, align 8, !dbg !1211, !tbaa !140
  %102 = load i64, i64* %78, align 8, !dbg !1211, !tbaa !143
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %101, i64 %102, i32 noundef 78) #14, !dbg !1211
  %103 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !1212
  %104 = load i64, i64* %103, align 8, !dbg !1212, !tbaa !140
  %105 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !1212
  %106 = load i64, i64* %105, align 8, !dbg !1212, !tbaa !143
  %107 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %104, i64 %106) #14, !dbg !1212
  %108 = trunc i64 %107 to i32, !dbg !1213
  %109 = and i32 %108, 67108863, !dbg !1214
  call void @llvm.dbg.value(metadata i32 %109, metadata !1173, metadata !DIExpression()) #14, !dbg !1158
  %110 = load i64, i64* %76, align 8, !dbg !1215, !tbaa !140
  %111 = load i64, i64* %78, align 8, !dbg !1215, !tbaa !143
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %110, i64 %111, i32 noundef 104) #14, !dbg !1215
  %112 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !1216
  %113 = load i64, i64* %112, align 8, !dbg !1216, !tbaa !140
  %114 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !1216
  %115 = load i64, i64* %114, align 8, !dbg !1216, !tbaa !143
  %116 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %113, i64 %115) #14, !dbg !1216
  %117 = trunc i64 %116 to i32, !dbg !1217
  %118 = and i32 %117, 67108863, !dbg !1218
  call void @llvm.dbg.value(metadata i32 %118, metadata !1174, metadata !DIExpression()) #14, !dbg !1158
  store i32 %82, i32* %42, align 4, !dbg !1219, !tbaa !167
  %119 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i32 0, i32 1, !dbg !1220
  store i32 %91, i32* %119, align 4, !dbg !1221, !tbaa !167
  %120 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i32 0, i32 2, !dbg !1222
  store i32 %100, i32* %120, align 4, !dbg !1223, !tbaa !167
  %121 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i32 0, i32 3, !dbg !1224
  store i32 %109, i32* %121, align 4, !dbg !1225, !tbaa !167
  %122 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i32 0, i32 4, !dbg !1226
  store i32 %118, i32* %122, align 4, !dbg !1227, !tbaa !167
  call void @llvm.dbg.value(metadata i32* %42, metadata !1175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i32* %43, metadata !1175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i32* %43, metadata !1176, metadata !DIExpression()) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i32* %43, metadata !1177, metadata !DIExpression()) #14, !dbg !1158
  %123 = bitcast i32* %43 to i8*, !dbg !1228
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %123, i8 0, i64 20, i1 false) #14, !dbg !1229
  call fastcc void @Hacl_Standalone_Poly1305_32_poly1305_blocks(i32* nonnull %42, i32* nonnull %43, i8* noundef %1, i64 noundef %44) #14, !dbg !1228
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %59) #14, !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %46) #14, !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %47) #14, !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48) #14, !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %49) #14, !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %50) #14, !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %51) #14, !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #14, !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #14, !dbg !1230
  %124 = icmp eq i64 %45, 0, !dbg !1231
  br i1 %124, label %129, label %125, !dbg !1233

125:                                              ; preds = %4
  %126 = trunc i64 %2 to i32, !dbg !1234
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i32 %126), metadata !1150, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1154
  %127 = and i32 %126, -16, !dbg !1234
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i32 %127), metadata !1150, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #14, !dbg !1154
  %128 = getelementptr inbounds i8, i8* %1, i32 %127, !dbg !1235
  call void @llvm.dbg.value(metadata i8* %128, metadata !1150, metadata !DIExpression()) #14, !dbg !1154
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(i32* nonnull %42, i32* nonnull %43, i8* noundef %128, i64 noundef %45) #14, !dbg !1236
  br label %129, !dbg !1236

129:                                              ; preds = %4, %125
  %130 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !1237
  call void @llvm.dbg.value(metadata i8* %130, metadata !1121, metadata !DIExpression()) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i32* %42, metadata !1151, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !1154
  call void @llvm.dbg.value(metadata i32* %43, metadata !1151, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !1154
  call void @llvm.dbg.value(metadata i32* %43, metadata !1152, metadata !DIExpression()) #14, !dbg !1154
  call void @llvm.dbg.value(metadata i32* %43, metadata !1153, metadata !DIExpression()) #14, !dbg !1154
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_last_pass(i32* noundef nonnull %43) #14, !dbg !1238
  call void @llvm.dbg.value(metadata i32* undef, metadata !1122, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i32* %43, metadata !1122, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i32* %43, metadata !1123, metadata !DIExpression()) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i32* %43, metadata !1124, metadata !DIExpression()) #14, !dbg !1107
  call void @llvm.dbg.value(metadata i8* undef, metadata !102, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1239
  call void @llvm.dbg.value(metadata i8* %3, metadata !108, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #14, !dbg !1239
  call void @llvm.dbg.value(metadata i8* %3, metadata !111, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #14, !dbg !1241
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !117, metadata !DIExpression()) #14, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %3, metadata !120, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #14, !dbg !1243
  %131 = bitcast i8* %130 to i64*, !dbg !1245
  %132 = load i64, i64* %131, align 1, !dbg !1245, !noalias !1246
  call void @llvm.dbg.value(metadata i64 %132, metadata !125, metadata !DIExpression()) #14, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %132, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #14, !dbg !1107
  %133 = getelementptr inbounds i8, i8* %3, i32 24, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %133, metadata !120, metadata !DIExpression()) #14, !dbg !1250
  %134 = bitcast i8* %133 to i64*, !dbg !1252
  %135 = load i64, i64* %134, align 1, !dbg !1252, !noalias !1246
  call void @llvm.dbg.value(metadata i64 %135, metadata !125, metadata !DIExpression()) #14, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %135, metadata !1125, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #14, !dbg !1107
  %136 = load i32, i32* %43, align 4, !dbg !1253, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %136, metadata !1126, metadata !DIExpression()) #14, !dbg !1107
  %137 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i32 0, i32 6, !dbg !1254
  %138 = load i32, i32* %137, align 4, !dbg !1254, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %138, metadata !1127, metadata !DIExpression()) #14, !dbg !1107
  %139 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i32 0, i32 7, !dbg !1255
  %140 = load i32, i32* %139, align 4, !dbg !1255, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %140, metadata !1128, metadata !DIExpression()) #14, !dbg !1107
  %141 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i32 0, i32 8, !dbg !1256
  %142 = load i32, i32* %141, align 4, !dbg !1256, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %142, metadata !1129, metadata !DIExpression()) #14, !dbg !1107
  %143 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i32 0, i32 9, !dbg !1257
  %144 = load i32, i32* %143, align 4, !dbg !1257, !tbaa !167
  call void @llvm.dbg.value(metadata i32 %144, metadata !1130, metadata !DIExpression()) #14, !dbg !1107
  %145 = bitcast %struct.FStar_UInt128_uint128* %15 to i8*, !dbg !1258
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %145) #14, !dbg !1258
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %15, metadata !1131, metadata !DIExpression()) #14, !dbg !1259
  %146 = zext i32 %144 to i64, !dbg !1260
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %146) #14, !dbg !1261
  %147 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !1262
  %148 = load i64, i64* %147, align 8, !dbg !1262, !tbaa !140
  %149 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !1262
  %150 = load i64, i64* %149, align 8, !dbg !1262, !tbaa !143
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %148, i64 %150, i32 noundef 104) #14, !dbg !1262
  %151 = zext i32 %142 to i64, !dbg !1263
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %151) #14, !dbg !1264
  %152 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 0, !dbg !1265
  %153 = load i64, i64* %152, align 8, !dbg !1265, !tbaa !140
  %154 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 1, !dbg !1265
  %155 = load i64, i64* %154, align 8, !dbg !1265, !tbaa !143
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %153, i64 %155, i32 noundef 78) #14, !dbg !1265
  %156 = zext i32 %140 to i64, !dbg !1266
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 noundef %156) #14, !dbg !1267
  %157 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %23, i32 0, i32 0, !dbg !1268
  %158 = load i64, i64* %157, align 8, !dbg !1268, !tbaa !140
  %159 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %23, i32 0, i32 1, !dbg !1268
  %160 = load i64, i64* %159, align 8, !dbg !1268, !tbaa !143
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 %158, i64 %160, i32 noundef 52) #14, !dbg !1268
  %161 = zext i32 %138 to i64, !dbg !1269
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %161) #14, !dbg !1270
  %162 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 0, !dbg !1271
  %163 = load i64, i64* %162, align 8, !dbg !1271, !tbaa !140
  %164 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 1, !dbg !1271
  %165 = load i64, i64* %164, align 8, !dbg !1271, !tbaa !143
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 %163, i64 %165, i32 noundef 26) #14, !dbg !1271
  %166 = zext i32 %136 to i64, !dbg !1272
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %166) #14, !dbg !1273
  %167 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 0, !dbg !1274
  %168 = load i64, i64* %167, align 8, !dbg !1274, !tbaa !140
  %169 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 1, !dbg !1274
  %170 = load i64, i64* %169, align 8, !dbg !1274, !tbaa !143
  %171 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 0, !dbg !1274
  %172 = load i64, i64* %171, align 8, !dbg !1274, !tbaa !140
  %173 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 1, !dbg !1274
  %174 = load i64, i64* %173, align 8, !dbg !1274, !tbaa !143
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %168, i64 %170, i64 %172, i64 %174) #14, !dbg !1274
  %175 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 0, !dbg !1275
  %176 = load i64, i64* %175, align 8, !dbg !1275, !tbaa !140
  %177 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 1, !dbg !1275
  %178 = load i64, i64* %177, align 8, !dbg !1275, !tbaa !143
  %179 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 0, !dbg !1275
  %180 = load i64, i64* %179, align 8, !dbg !1275, !tbaa !140
  %181 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 1, !dbg !1275
  %182 = load i64, i64* %181, align 8, !dbg !1275, !tbaa !143
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %176, i64 %178, i64 %180, i64 %182) #14, !dbg !1275
  %183 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !1276
  %184 = load i64, i64* %183, align 8, !dbg !1276, !tbaa !140
  %185 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !1276
  %186 = load i64, i64* %185, align 8, !dbg !1276, !tbaa !143
  %187 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 0, !dbg !1276
  %188 = load i64, i64* %187, align 8, !dbg !1276, !tbaa !140
  %189 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 1, !dbg !1276
  %190 = load i64, i64* %189, align 8, !dbg !1276, !tbaa !143
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %184, i64 %186, i64 %188, i64 %190) #14, !dbg !1276
  %191 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !1277
  %192 = load i64, i64* %191, align 8, !dbg !1277, !tbaa !140
  %193 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !1277
  %194 = load i64, i64* %193, align 8, !dbg !1277, !tbaa !143
  %195 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !1277
  %196 = load i64, i64* %195, align 8, !dbg !1277, !tbaa !140
  %197 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 1, !dbg !1277
  %198 = load i64, i64* %197, align 8, !dbg !1277, !tbaa !143
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %192, i64 %194, i64 %196, i64 %198) #14, !dbg !1277
  %199 = bitcast %struct.FStar_UInt128_uint128* %28 to i8*, !dbg !1278
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %199) #14, !dbg !1278
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %28, metadata !1132, metadata !DIExpression()) #14, !dbg !1279
  %200 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !1280
  %201 = load i64, i64* %200, align 8, !dbg !1280, !tbaa !140
  %202 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !1280
  %203 = load i64, i64* %202, align 8, !dbg !1280, !tbaa !143
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 %201, i64 %203, i64 %132, i64 %135) #14, !dbg !1280
  %204 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %28, i32 0, i32 0, !dbg !1281
  %205 = load i64, i64* %204, align 8, !dbg !1281, !tbaa !140
  %206 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %28, i32 0, i32 1, !dbg !1281
  %207 = load i64, i64* %206, align 8, !dbg !1281, !tbaa !143
  call void @llvm.dbg.value(metadata i64 %205, metadata !1061, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #14, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %207, metadata !1061, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #14, !dbg !1282
  call void @llvm.dbg.value(metadata i8* %0, metadata !1066, metadata !DIExpression()) #14, !dbg !1282
  call void @llvm.dbg.value(metadata i8* %0, metadata !1069, metadata !DIExpression()) #14, !dbg !1284
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !1072, metadata !DIExpression()) #14, !dbg !1284
  call void @llvm.dbg.value(metadata i8* %0, metadata !1075, metadata !DIExpression()) #14, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %205, metadata !1080, metadata !DIExpression()) #14, !dbg !1286
  %208 = bitcast i8* %0 to i64*, !dbg !1288
  store i64 %205, i64* %208, align 1, !dbg !1288
  %209 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %209, metadata !1075, metadata !DIExpression()) #14, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %207, metadata !1080, metadata !DIExpression()) #14, !dbg !1290
  %210 = bitcast i8* %209 to i64*, !dbg !1292
  store i64 %207, i64* %210, align 1, !dbg !1292
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %199) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %145) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %41) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %39) #14, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #14, !dbg !1293
  ret void, !dbg !1294
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_poly1305_blocks(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #7 !dbg !1295 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1297, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1305
  call void @llvm.dbg.value(metadata i32* %1, metadata !1297, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1305
  call void @llvm.dbg.value(metadata i8* %2, metadata !1298, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %3, metadata !1299, metadata !DIExpression()), !dbg !1305
  %5 = icmp eq i64 %3, 0, !dbg !1306
  br i1 %5, label %9, label %6, !dbg !1307

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !1300, metadata !DIExpression()), !dbg !1308
  %7 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %7, metadata !1303, metadata !DIExpression()), !dbg !1308
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_update(i32* %0, i32* %1, i8* noundef %2), !dbg !1310
  %8 = add i64 %3, -1, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %8, metadata !1304, metadata !DIExpression()), !dbg !1308
  call fastcc void @Hacl_Standalone_Poly1305_32_poly1305_blocks(i32* %0, i32* %1, i8* noundef nonnull %7, i64 noundef %8), !dbg !1312
  br label %9, !dbg !1313

9:                                                ; preds = %6, %4
  ret void, !dbg !1314
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Hacl_Poly1305_32_empty_log", scope: !2, file: !3, line: 525, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Poly1305_32.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "9d87dd4d24dc48480d606ec313ed2828")
!4 = !{!5, !6, !11, !14, !17, !21}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 48, baseType: !10)
!9 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !9, line: 47, baseType: !20)
!20 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !18, line: 26, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !9, line: 41, baseType: !23)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!0}
!25 = !{i32 1, !"NumRegisterParameters", i32 0}
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!33 = distinct !DISubprogram(name: "Hacl_Poly1305_32_op_String_Access", scope: !3, file: !3, line: 470, type: !34, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{!5, !36, !38}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_Monotonic_HyperStack_mem", file: !37, line: 48, baseType: !5)
!37 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!39 = !{!40, !41}
!40 = !DILocalVariable(name: "h", arg: 1, scope: !33, file: !3, line: 470, type: !36)
!41 = !DILocalVariable(name: "b", arg: 2, scope: !33, file: !3, line: 470, type: !38)
!42 = !DILocation(line: 0, scope: !33)
!43 = !DILocation(line: 472, column: 3, scope: !33)
!44 = distinct !DISubprogram(name: "Hacl_Poly1305_32_mk_state", scope: !3, file: !3, line: 476, type: !45, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !52, !52}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hacl_Impl_Poly1305_32_State_poly1305_state", file: !48, line: 59, baseType: !49)
!48 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Poly1305_32.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cf08103bbcd3a8cbdd346fe5cd11a8c4")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 54, size: 64, elements: !50)
!50 = !{!51, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !49, file: !48, line: 56, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !49, file: !48, line: 57, baseType: !52, size: 32, offset: 32)
!54 = !{!55, !56}
!55 = !DILocalVariable(name: "r", arg: 1, scope: !44, file: !3, line: 476, type: !52)
!56 = !DILocalVariable(name: "acc", arg: 2, scope: !44, file: !3, line: 476, type: !52)
!57 = !DILocation(line: 0, scope: !44)
!58 = !DILocalVariable(name: "r", arg: 1, scope: !59, file: !3, line: 326, type: !52)
!59 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_32_mk_state", scope: !3, file: !3, line: 326, type: !45, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!60 = !{!58, !61}
!61 = !DILocalVariable(name: "h", arg: 2, scope: !59, file: !3, line: 326, type: !52)
!62 = !DILocation(line: 0, scope: !59, inlinedAt: !63)
!63 = distinct !DILocation(line: 478, column: 10, scope: !44)
!64 = !DILocation(line: 328, column: 55, scope: !59, inlinedAt: !63)
!65 = !{!66, !67, i64 0}
!66 = !{!"", !67, i64 0, !67, i64 4}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"Hacl_Impl_Poly1305_32_mk_state: argument 0"}
!72 = distinct !{!72, !"Hacl_Impl_Poly1305_32_mk_state"}
!73 = !{!66, !67, i64 4}
!74 = !DILocation(line: 478, column: 3, scope: !44)
!75 = distinct !DISubprogram(name: "Hacl_Poly1305_32_init", scope: !3, file: !3, line: 481, type: !76, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !47, !38}
!78 = !{!79, !80, !81, !82, !83, !84, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!79 = !DILocalVariable(name: "st", arg: 1, scope: !75, file: !3, line: 481, type: !47)
!80 = !DILocalVariable(name: "k1", arg: 2, scope: !75, file: !3, line: 481, type: !38)
!81 = !DILocalVariable(name: "scrut", scope: !75, file: !3, line: 483, type: !47)
!82 = !DILocalVariable(name: "r", scope: !75, file: !3, line: 484, type: !52)
!83 = !DILocalVariable(name: "x0", scope: !75, file: !3, line: 485, type: !52)
!84 = !DILocalVariable(name: "k10", scope: !75, file: !3, line: 486, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !86, line: 37, baseType: !87)
!86 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !86, line: 35, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 30, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !88, file: !86, line: 32, baseType: !6, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !88, file: !86, line: 33, baseType: !6, size: 64, offset: 64)
!92 = !DILocalVariable(name: "k_clamped", scope: !75, file: !3, line: 488, type: !85)
!93 = !DILocalVariable(name: "r0", scope: !75, file: !3, line: 493, type: !11)
!94 = !DILocalVariable(name: "r1", scope: !75, file: !3, line: 495, type: !11)
!95 = !DILocalVariable(name: "r2", scope: !75, file: !3, line: 499, type: !11)
!96 = !DILocalVariable(name: "r3", scope: !75, file: !3, line: 503, type: !11)
!97 = !DILocalVariable(name: "r4", scope: !75, file: !3, line: 507, type: !11)
!98 = !DILocalVariable(name: "scrut0", scope: !75, file: !3, line: 515, type: !47)
!99 = !DILocalVariable(name: "h", scope: !75, file: !3, line: 516, type: !52)
!100 = !DILocalVariable(name: "x00", scope: !75, file: !3, line: 517, type: !52)
!101 = !DILocation(line: 0, scope: !75)
!102 = !DILocalVariable(name: "r", scope: !103, file: !37, line: 544, type: !106)
!103 = distinct !DISubprogram(name: "load128_le", scope: !37, file: !37, line: 543, type: !104, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !107)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !38}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !37, line: 510, baseType: !87)
!107 = !{!108, !102}
!108 = !DILocalVariable(name: "b", arg: 1, scope: !103, file: !37, line: 543, type: !38)
!109 = !DILocation(line: 0, scope: !103, inlinedAt: !110)
!110 = distinct !DILocation(line: 486, column: 25, scope: !75)
!111 = !DILocalVariable(name: "b", arg: 1, scope: !112, file: !37, line: 517, type: !38)
!112 = distinct !DISubprogram(name: "load128_le_", scope: !37, file: !37, line: 517, type: !113, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !38, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!116 = !{!111, !117}
!117 = !DILocalVariable(name: "r", arg: 2, scope: !112, file: !37, line: 517, type: !115)
!118 = !DILocation(line: 0, scope: !112, inlinedAt: !119)
!119 = distinct !DILocation(line: 545, column: 3, scope: !103, inlinedAt: !110)
!120 = !DILocalVariable(name: "b", arg: 1, scope: !121, file: !37, line: 347, type: !38)
!121 = distinct !DISubprogram(name: "load64", scope: !37, file: !37, line: 347, type: !122, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{!6, !38}
!124 = !{!120, !125}
!125 = !DILocalVariable(name: "x", scope: !121, file: !37, line: 348, type: !6)
!126 = !DILocation(line: 0, scope: !121, inlinedAt: !127)
!127 = distinct !DILocation(line: 518, column: 12, scope: !112, inlinedAt: !119)
!128 = !DILocation(line: 349, column: 3, scope: !121, inlinedAt: !127)
!129 = !{!130}
!130 = distinct !{!130, !131, !"load128_le: argument 0"}
!131 = distinct !{!131, !"load128_le"}
!132 = !DILocation(line: 519, column: 13, scope: !112, inlinedAt: !119)
!133 = !DILocation(line: 0, scope: !121, inlinedAt: !134)
!134 = distinct !DILocation(line: 519, column: 13, scope: !112, inlinedAt: !119)
!135 = !DILocation(line: 349, column: 3, scope: !121, inlinedAt: !134)
!136 = !DILocation(line: 487, column: 3, scope: !75)
!137 = !DILocation(line: 488, column: 3, scope: !75)
!138 = !DILocation(line: 490, column: 52, scope: !75)
!139 = !DILocation(line: 490, column: 27, scope: !75)
!140 = !{!141, !142, i64 0}
!141 = !{!"", !142, i64 0, !142, i64 8}
!142 = !{!"long long", !68, i64 0}
!143 = !{!141, !142, i64 8}
!144 = !DILocation(line: 492, column: 9, scope: !75)
!145 = !DILocation(line: 490, column: 7, scope: !75)
!146 = !DILocation(line: 489, column: 5, scope: !75)
!147 = !DILocation(line: 493, column: 27, scope: !75)
!148 = !DILocation(line: 493, column: 17, scope: !75)
!149 = !DILocation(line: 493, column: 70, scope: !75)
!150 = !DILocation(line: 496, column: 47, scope: !75)
!151 = !DILocation(line: 496, column: 15, scope: !75)
!152 = !DILocation(line: 496, column: 5, scope: !75)
!153 = !DILocation(line: 497, column: 5, scope: !75)
!154 = !DILocation(line: 500, column: 47, scope: !75)
!155 = !DILocation(line: 500, column: 15, scope: !75)
!156 = !DILocation(line: 500, column: 5, scope: !75)
!157 = !DILocation(line: 501, column: 5, scope: !75)
!158 = !DILocation(line: 504, column: 47, scope: !75)
!159 = !DILocation(line: 504, column: 15, scope: !75)
!160 = !DILocation(line: 504, column: 5, scope: !75)
!161 = !DILocation(line: 505, column: 5, scope: !75)
!162 = !DILocation(line: 508, column: 47, scope: !75)
!163 = !DILocation(line: 508, column: 15, scope: !75)
!164 = !DILocation(line: 508, column: 5, scope: !75)
!165 = !DILocation(line: 509, column: 5, scope: !75)
!166 = !DILocation(line: 510, column: 10, scope: !75)
!167 = !{!168, !168, i64 0}
!168 = !{!"int", !68, i64 0}
!169 = !DILocation(line: 511, column: 3, scope: !75)
!170 = !DILocation(line: 511, column: 10, scope: !75)
!171 = !DILocation(line: 512, column: 3, scope: !75)
!172 = !DILocation(line: 512, column: 10, scope: !75)
!173 = !DILocation(line: 513, column: 3, scope: !75)
!174 = !DILocation(line: 513, column: 10, scope: !75)
!175 = !DILocation(line: 514, column: 3, scope: !75)
!176 = !DILocation(line: 514, column: 10, scope: !75)
!177 = !DILocation(line: 523, column: 1, scope: !75)
!178 = !DILocation(line: 519, column: 11, scope: !75)
!179 = !DISubprogram(name: "FStar_UInt128_logand", scope: !86, file: !86, line: 49, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!87, !87, !87}
!182 = !{}
!183 = !DISubprogram(name: "FStar_UInt128_logor", scope: !86, file: !86, line: 53, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !182)
!184 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !86, file: !86, line: 57, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !182)
!185 = !DISubroutineType(types: !186)
!186 = !{!87, !87, !11}
!187 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !86, file: !86, line: 65, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !182)
!188 = !DISubroutineType(types: !189)
!189 = !{!87, !6}
!190 = !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !86, file: !86, line: 67, type: !191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !182)
!191 = !DISubroutineType(types: !192)
!192 = !{!6, !87}
!193 = !DISubprogram(name: "FStar_UInt128_shift_right", scope: !86, file: !86, line: 59, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !182)
!194 = distinct !DISubprogram(name: "Hacl_Poly1305_32_update_block", scope: !3, file: !3, line: 527, type: !76, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!195 = !{!196, !197}
!196 = !DILocalVariable(name: "st", arg: 1, scope: !194, file: !3, line: 527, type: !47)
!197 = !DILocalVariable(name: "m", arg: 2, scope: !194, file: !3, line: 527, type: !38)
!198 = !DILocation(line: 0, scope: !194)
!199 = !DILocation(line: 529, column: 3, scope: !194)
!200 = !DILocation(line: 530, column: 1, scope: !194)
!201 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_32_poly1305_update", scope: !3, file: !3, line: 160, type: !76, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!203 = !DILocalVariable(name: "st", arg: 1, scope: !201, file: !3, line: 161, type: !47)
!204 = !DILocalVariable(name: "m", arg: 2, scope: !201, file: !3, line: 162, type: !38)
!205 = !DILocalVariable(name: "scrut0", scope: !201, file: !3, line: 165, type: !47)
!206 = !DILocalVariable(name: "h", scope: !201, file: !3, line: 166, type: !52)
!207 = !DILocalVariable(name: "acc", scope: !201, file: !3, line: 167, type: !52)
!208 = !DILocalVariable(name: "scrut", scope: !201, file: !3, line: 168, type: !47)
!209 = !DILocalVariable(name: "r", scope: !201, file: !3, line: 169, type: !52)
!210 = !DILocalVariable(name: "r5", scope: !201, file: !3, line: 170, type: !52)
!211 = !DILocalVariable(name: "tmp", scope: !201, file: !3, line: 171, type: !212)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 5)
!215 = !DILocalVariable(name: "s0", scope: !201, file: !3, line: 172, type: !38)
!216 = !DILocalVariable(name: "s1", scope: !201, file: !3, line: 173, type: !38)
!217 = !DILocalVariable(name: "s2", scope: !201, file: !3, line: 174, type: !38)
!218 = !DILocalVariable(name: "s3", scope: !201, file: !3, line: 175, type: !38)
!219 = !DILocalVariable(name: "s4", scope: !201, file: !3, line: 176, type: !38)
!220 = !DILocalVariable(name: "i0", scope: !201, file: !3, line: 177, type: !11)
!221 = !DILocalVariable(name: "i1", scope: !201, file: !3, line: 178, type: !11)
!222 = !DILocalVariable(name: "i2", scope: !201, file: !3, line: 179, type: !11)
!223 = !DILocalVariable(name: "i3", scope: !201, file: !3, line: 180, type: !11)
!224 = !DILocalVariable(name: "i4", scope: !201, file: !3, line: 181, type: !11)
!225 = !DILocalVariable(name: "r0", scope: !201, file: !3, line: 182, type: !11)
!226 = !DILocalVariable(name: "r1", scope: !201, file: !3, line: 183, type: !11)
!227 = !DILocalVariable(name: "r2", scope: !201, file: !3, line: 184, type: !11)
!228 = !DILocalVariable(name: "r3", scope: !201, file: !3, line: 185, type: !11)
!229 = !DILocalVariable(name: "r4", scope: !201, file: !3, line: 186, type: !11)
!230 = !DILocalVariable(name: "b4", scope: !201, file: !3, line: 192, type: !11)
!231 = !DILocalVariable(name: "b4_", scope: !201, file: !3, line: 193, type: !11)
!232 = !DILocation(line: 0, scope: !201)
!233 = !DILocation(line: 171, column: 3, scope: !201)
!234 = !DILocation(line: 171, column: 12, scope: !201)
!235 = !DILocation(line: 173, column: 19, scope: !201)
!236 = !DILocation(line: 174, column: 19, scope: !201)
!237 = !DILocation(line: 175, column: 19, scope: !201)
!238 = !DILocation(line: 176, column: 19, scope: !201)
!239 = !DILocalVariable(name: "b", arg: 1, scope: !240, file: !37, line: 341, type: !38)
!240 = distinct !DISubprogram(name: "load32", scope: !37, file: !37, line: 341, type: !241, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{!11, !38}
!243 = !{!239, !244}
!244 = !DILocalVariable(name: "x", scope: !240, file: !37, line: 342, type: !11)
!245 = !DILocation(line: 0, scope: !240, inlinedAt: !246)
!246 = distinct !DILocation(line: 177, column: 17, scope: !201)
!247 = !DILocation(line: 343, column: 3, scope: !240, inlinedAt: !246)
!248 = !DILocation(line: 0, scope: !240, inlinedAt: !249)
!249 = distinct !DILocation(line: 178, column: 17, scope: !201)
!250 = !DILocation(line: 343, column: 3, scope: !240, inlinedAt: !249)
!251 = !DILocation(line: 0, scope: !240, inlinedAt: !252)
!252 = distinct !DILocation(line: 179, column: 17, scope: !201)
!253 = !DILocation(line: 343, column: 3, scope: !240, inlinedAt: !252)
!254 = !DILocation(line: 0, scope: !240, inlinedAt: !255)
!255 = distinct !DILocation(line: 180, column: 17, scope: !201)
!256 = !DILocation(line: 343, column: 3, scope: !240, inlinedAt: !255)
!257 = !DILocation(line: 0, scope: !240, inlinedAt: !258)
!258 = distinct !DILocation(line: 181, column: 17, scope: !201)
!259 = !DILocation(line: 343, column: 3, scope: !240, inlinedAt: !258)
!260 = !DILocation(line: 182, column: 20, scope: !201)
!261 = !DILocation(line: 183, column: 20, scope: !201)
!262 = !DILocation(line: 183, column: 36, scope: !201)
!263 = !DILocation(line: 184, column: 20, scope: !201)
!264 = !DILocation(line: 184, column: 36, scope: !201)
!265 = !DILocation(line: 185, column: 20, scope: !201)
!266 = !DILocation(line: 186, column: 20, scope: !201)
!267 = !DILocation(line: 187, column: 3, scope: !201)
!268 = !DILocation(line: 187, column: 11, scope: !201)
!269 = !DILocation(line: 188, column: 3, scope: !201)
!270 = !DILocation(line: 188, column: 11, scope: !201)
!271 = !DILocation(line: 189, column: 3, scope: !201)
!272 = !DILocation(line: 189, column: 11, scope: !201)
!273 = !DILocation(line: 190, column: 3, scope: !201)
!274 = !DILocation(line: 190, column: 11, scope: !201)
!275 = !DILocation(line: 191, column: 3, scope: !201)
!276 = !DILocation(line: 193, column: 39, scope: !201)
!277 = !DILocation(line: 194, column: 11, scope: !201)
!278 = !DILocalVariable(name: "acc", arg: 1, scope: !279, file: !3, line: 148, type: !52)
!279 = distinct !DISubprogram(name: "Hacl_Bignum_AddAndMultiply_add_and_multiply", scope: !3, file: !3, line: 148, type: !280, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !52, !52, !52}
!282 = !{!278, !283, !284, !285, !287, !290}
!283 = !DILocalVariable(name: "block", arg: 2, scope: !279, file: !3, line: 148, type: !52)
!284 = !DILocalVariable(name: "r", arg: 3, scope: !279, file: !3, line: 148, type: !52)
!285 = !DILocalVariable(name: "i", scope: !286, file: !3, line: 150, type: !11)
!286 = distinct !DILexicalBlock(scope: !279, file: !3, line: 150, column: 3)
!287 = !DILocalVariable(name: "xi", scope: !288, file: !3, line: 152, type: !11)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 151, column: 3)
!289 = distinct !DILexicalBlock(scope: !286, file: !3, line: 150, column: 3)
!290 = !DILocalVariable(name: "yi", scope: !288, file: !3, line: 153, type: !11)
!291 = !DILocation(line: 0, scope: !279, inlinedAt: !292)
!292 = distinct !DILocation(line: 195, column: 3, scope: !201)
!293 = !DILocation(line: 0, scope: !286, inlinedAt: !292)
!294 = !DILocation(line: 150, column: 3, scope: !286, inlinedAt: !292)
!295 = !DILocalVariable(name: "output", arg: 1, scope: !296, file: !3, line: 130, type: !52)
!296 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_fmul", scope: !3, file: !3, line: 130, type: !280, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !297)
!297 = !{!295, !298, !299, !300, !301, !303, !304, !305, !306}
!298 = !DILocalVariable(name: "input", arg: 2, scope: !296, file: !3, line: 130, type: !52)
!299 = !DILocalVariable(name: "input2", arg: 3, scope: !296, file: !3, line: 130, type: !52)
!300 = !DILocalVariable(name: "tmp", scope: !296, file: !3, line: 132, type: !212)
!301 = !DILocalVariable(name: "t", scope: !296, file: !3, line: 134, type: !302)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !213)
!303 = !DILocalVariable(name: "i0", scope: !296, file: !3, line: 139, type: !11)
!304 = !DILocalVariable(name: "i1", scope: !296, file: !3, line: 140, type: !11)
!305 = !DILocalVariable(name: "i0_", scope: !296, file: !3, line: 141, type: !11)
!306 = !DILocalVariable(name: "i1_", scope: !296, file: !3, line: 142, type: !11)
!307 = !DILocation(line: 0, scope: !296, inlinedAt: !308)
!308 = distinct !DILocation(line: 156, column: 3, scope: !279, inlinedAt: !292)
!309 = !DILocation(line: 132, column: 3, scope: !296, inlinedAt: !308)
!310 = !DILocation(line: 132, column: 12, scope: !296, inlinedAt: !308)
!311 = !DILocation(line: 133, column: 3, scope: !296, inlinedAt: !308)
!312 = !DILocation(line: 134, column: 3, scope: !296, inlinedAt: !308)
!313 = !DILocation(line: 134, column: 12, scope: !296, inlinedAt: !308)
!314 = !DILocalVariable(name: "input", arg: 2, scope: !315, file: !3, line: 117, type: !52)
!315 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_mul_shift_reduce_", scope: !3, file: !3, line: 117, type: !316, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !318, !52, !52}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!319 = !{!320, !314, !321, !322, !324, !327, !328}
!320 = !DILocalVariable(name: "output", arg: 1, scope: !315, file: !3, line: 117, type: !318)
!321 = !DILocalVariable(name: "input2", arg: 3, scope: !315, file: !3, line: 117, type: !52)
!322 = !DILocalVariable(name: "i", scope: !323, file: !3, line: 119, type: !11)
!323 = distinct !DILexicalBlock(scope: !315, file: !3, line: 119, column: 3)
!324 = !DILocalVariable(name: "input2i", scope: !325, file: !3, line: 121, type: !11)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 120, column: 3)
!326 = distinct !DILexicalBlock(scope: !323, file: !3, line: 119, column: 3)
!327 = !DILocalVariable(name: "i", scope: !315, file: !3, line: 125, type: !11)
!328 = !DILocalVariable(name: "input2i", scope: !315, file: !3, line: 126, type: !11)
!329 = !DILocation(line: 0, scope: !315, inlinedAt: !330)
!330 = distinct !DILocation(line: 135, column: 3, scope: !296, inlinedAt: !308)
!331 = !DILocation(line: 0, scope: !323, inlinedAt: !330)
!332 = !DILocation(line: 119, column: 3, scope: !323, inlinedAt: !330)
!333 = !DILocation(line: 126, column: 22, scope: !315, inlinedAt: !330)
!334 = !DILocalVariable(name: "input", arg: 2, scope: !335, file: !3, line: 63, type: !52)
!335 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_sum_scalar_multiplication_", scope: !3, file: !3, line: 63, type: !336, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !318, !52, !11}
!338 = !{!339, !334, !340, !341, !343, !346, !347, !348}
!339 = !DILocalVariable(name: "output", arg: 1, scope: !335, file: !3, line: 63, type: !318)
!340 = !DILocalVariable(name: "s", arg: 3, scope: !335, file: !3, line: 63, type: !11)
!341 = !DILocalVariable(name: "i", scope: !342, file: !3, line: 65, type: !11)
!342 = distinct !DILexicalBlock(scope: !335, file: !3, line: 65, column: 3)
!343 = !DILocalVariable(name: "xi", scope: !344, file: !3, line: 67, type: !6)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 66, column: 3)
!345 = distinct !DILexicalBlock(scope: !342, file: !3, line: 65, column: 3)
!346 = !DILocalVariable(name: "yi", scope: !344, file: !3, line: 68, type: !11)
!347 = !DILocalVariable(name: "x_wide", scope: !344, file: !3, line: 69, type: !6)
!348 = !DILocalVariable(name: "y_wide", scope: !344, file: !3, line: 70, type: !6)
!349 = !DILocation(line: 0, scope: !335, inlinedAt: !350)
!350 = distinct !DILocation(line: 127, column: 3, scope: !315, inlinedAt: !330)
!351 = !DILocation(line: 0, scope: !342, inlinedAt: !350)
!352 = !DILocation(line: 65, column: 3, scope: !342, inlinedAt: !350)
!353 = !DILocation(line: 67, column: 19, scope: !344, inlinedAt: !350)
!354 = !{!142, !142, i64 0}
!355 = !DILocation(line: 0, scope: !344, inlinedAt: !350)
!356 = !DILocation(line: 68, column: 19, scope: !344, inlinedAt: !350)
!357 = !DILocation(line: 69, column: 23, scope: !344, inlinedAt: !350)
!358 = !DILocation(line: 71, column: 29, scope: !344, inlinedAt: !350)
!359 = !DILocation(line: 71, column: 20, scope: !344, inlinedAt: !350)
!360 = !DILocation(line: 71, column: 15, scope: !344, inlinedAt: !350)
!361 = !DILocation(line: 65, column: 59, scope: !345, inlinedAt: !350)
!362 = !DILocation(line: 65, column: 37, scope: !345, inlinedAt: !350)
!363 = distinct !{!363, !352, !364, !365, !366}
!364 = !DILocation(line: 72, column: 3, scope: !342, inlinedAt: !350)
!365 = !{!"llvm.loop.mustprogress"}
!366 = !{!"llvm.loop.unroll.disable"}
!367 = !DILocation(line: 77, column: 3, scope: !368, inlinedAt: !382)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 77, column: 3)
!369 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_wide_", scope: !3, file: !3, line: 75, type: !370, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !318}
!372 = !{!373, !374, !375, !378, !379, !380, !381}
!373 = !DILocalVariable(name: "tmp", arg: 1, scope: !369, file: !3, line: 75, type: !318)
!374 = !DILocalVariable(name: "i", scope: !368, file: !3, line: 77, type: !11)
!375 = !DILocalVariable(name: "ctr", scope: !376, file: !3, line: 79, type: !11)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 78, column: 3)
!377 = distinct !DILexicalBlock(scope: !368, file: !3, line: 77, column: 3)
!378 = !DILocalVariable(name: "tctr", scope: !376, file: !3, line: 80, type: !6)
!379 = !DILocalVariable(name: "tctrp1", scope: !376, file: !3, line: 81, type: !6)
!380 = !DILocalVariable(name: "r0", scope: !376, file: !3, line: 82, type: !11)
!381 = !DILocalVariable(name: "c", scope: !376, file: !3, line: 83, type: !6)
!382 = distinct !DILocation(line: 136, column: 3, scope: !296, inlinedAt: !308)
!383 = !DILocation(line: 121, column: 24, scope: !325, inlinedAt: !330)
!384 = !DILocation(line: 0, scope: !325, inlinedAt: !330)
!385 = !DILocation(line: 0, scope: !335, inlinedAt: !386)
!386 = distinct !DILocation(line: 122, column: 5, scope: !325, inlinedAt: !330)
!387 = !DILocation(line: 0, scope: !342, inlinedAt: !386)
!388 = !DILocation(line: 65, column: 3, scope: !342, inlinedAt: !386)
!389 = !DILocation(line: 67, column: 19, scope: !344, inlinedAt: !386)
!390 = !DILocation(line: 0, scope: !344, inlinedAt: !386)
!391 = !DILocation(line: 68, column: 19, scope: !344, inlinedAt: !386)
!392 = !DILocation(line: 69, column: 23, scope: !344, inlinedAt: !386)
!393 = !DILocation(line: 71, column: 29, scope: !344, inlinedAt: !386)
!394 = !DILocation(line: 71, column: 20, scope: !344, inlinedAt: !386)
!395 = !DILocation(line: 71, column: 15, scope: !344, inlinedAt: !386)
!396 = !DILocation(line: 65, column: 59, scope: !345, inlinedAt: !386)
!397 = !DILocation(line: 65, column: 37, scope: !345, inlinedAt: !386)
!398 = distinct !{!398, !388, !399, !365, !366}
!399 = !DILocation(line: 72, column: 3, scope: !342, inlinedAt: !386)
!400 = !DILocalVariable(name: "output", arg: 1, scope: !401, file: !3, line: 103, type: !52)
!401 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_shift_reduce", scope: !3, file: !3, line: 103, type: !402, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !52}
!404 = !{!400, !405, !406, !408, !411}
!405 = !DILocalVariable(name: "tmp", scope: !401, file: !3, line: 105, type: !11)
!406 = !DILocalVariable(name: "i", scope: !407, file: !3, line: 106, type: !11)
!407 = distinct !DILexicalBlock(scope: !401, file: !3, line: 106, column: 3)
!408 = !DILocalVariable(name: "ctr", scope: !409, file: !3, line: 108, type: !11)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 107, column: 3)
!410 = distinct !DILexicalBlock(scope: !407, file: !3, line: 106, column: 3)
!411 = !DILocalVariable(name: "z", scope: !409, file: !3, line: 109, type: !11)
!412 = !DILocation(line: 0, scope: !401, inlinedAt: !413)
!413 = distinct !DILocation(line: 123, column: 5, scope: !325, inlinedAt: !330)
!414 = !DILocation(line: 105, column: 18, scope: !401, inlinedAt: !413)
!415 = !DILocation(line: 0, scope: !407, inlinedAt: !413)
!416 = !DILocation(line: 110, column: 17, scope: !409, inlinedAt: !413)
!417 = !DILocation(line: 0, scope: !409, inlinedAt: !413)
!418 = !DILocalVariable(name: "b", arg: 1, scope: !419, file: !3, line: 27, type: !52)
!419 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_reduce", scope: !3, file: !3, line: 27, type: !402, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !420)
!420 = !{!418, !421}
!421 = !DILocalVariable(name: "b0", scope: !419, file: !3, line: 29, type: !11)
!422 = !DILocation(line: 0, scope: !419, inlinedAt: !423)
!423 = distinct !DILocation(line: 113, column: 3, scope: !401, inlinedAt: !413)
!424 = !DILocation(line: 30, column: 32, scope: !419, inlinedAt: !423)
!425 = !DILocation(line: 30, column: 9, scope: !419, inlinedAt: !423)
!426 = !DILocation(line: 119, column: 59, scope: !326, inlinedAt: !330)
!427 = !DILocation(line: 119, column: 37, scope: !326, inlinedAt: !330)
!428 = distinct !{!428, !332, !429, !365, !366}
!429 = !DILocation(line: 124, column: 3, scope: !323, inlinedAt: !330)
!430 = !DILocation(line: 0, scope: !368, inlinedAt: !382)
!431 = !DILocation(line: 0, scope: !376, inlinedAt: !382)
!432 = !DILocation(line: 80, column: 21, scope: !376, inlinedAt: !382)
!433 = !DILocation(line: 81, column: 31, scope: !376, inlinedAt: !382)
!434 = !DILocation(line: 81, column: 23, scope: !376, inlinedAt: !382)
!435 = !DILocation(line: 83, column: 23, scope: !376, inlinedAt: !382)
!436 = !DILocation(line: 84, column: 16, scope: !376, inlinedAt: !382)
!437 = !DILocation(line: 84, column: 14, scope: !376, inlinedAt: !382)
!438 = !DILocation(line: 85, column: 38, scope: !376, inlinedAt: !382)
!439 = !DILocation(line: 85, column: 29, scope: !376, inlinedAt: !382)
!440 = !DILocation(line: 77, column: 37, scope: !377, inlinedAt: !382)
!441 = distinct !{!441, !367, !442, !365, !366}
!442 = !DILocation(line: 86, column: 3, scope: !368, inlinedAt: !382)
!443 = !DILocation(line: 135, column: 38, scope: !296, inlinedAt: !308)
!444 = !DILocalVariable(name: "b", arg: 1, scope: !445, file: !3, line: 42, type: !318)
!445 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top_wide", scope: !3, file: !3, line: 42, type: !370, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !446)
!446 = !{!444, !447, !448, !449, !450, !451}
!447 = !DILocalVariable(name: "b4", scope: !445, file: !3, line: 44, type: !6)
!448 = !DILocalVariable(name: "b0", scope: !445, file: !3, line: 45, type: !6)
!449 = !DILocalVariable(name: "b4_", scope: !445, file: !3, line: 46, type: !6)
!450 = !DILocalVariable(name: "b4_26", scope: !445, file: !3, line: 47, type: !11)
!451 = !DILocalVariable(name: "b0_", scope: !445, file: !3, line: 48, type: !6)
!452 = !DILocation(line: 0, scope: !445, inlinedAt: !453)
!453 = distinct !DILocation(line: 137, column: 3, scope: !296, inlinedAt: !308)
!454 = !DILocation(line: 44, column: 17, scope: !445, inlinedAt: !453)
!455 = !DILocation(line: 45, column: 17, scope: !445, inlinedAt: !453)
!456 = !DILocation(line: 46, column: 21, scope: !445, inlinedAt: !453)
!457 = !DILocation(line: 47, column: 34, scope: !445, inlinedAt: !453)
!458 = !DILocation(line: 47, column: 20, scope: !445, inlinedAt: !453)
!459 = !DILocation(line: 48, column: 58, scope: !445, inlinedAt: !453)
!460 = !DILocation(line: 48, column: 23, scope: !445, inlinedAt: !453)
!461 = !DILocation(line: 48, column: 21, scope: !445, inlinedAt: !453)
!462 = !DILocation(line: 49, column: 9, scope: !445, inlinedAt: !453)
!463 = !DILocation(line: 50, column: 9, scope: !445, inlinedAt: !453)
!464 = !DILocalVariable(name: "output", arg: 1, scope: !465, file: !3, line: 53, type: !52)
!465 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_copy_from_wide_", scope: !3, file: !3, line: 53, type: !466, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !52, !318}
!468 = !{!464, !469, !470, !472}
!469 = !DILocalVariable(name: "input", arg: 2, scope: !465, file: !3, line: 53, type: !318)
!470 = !DILocalVariable(name: "i", scope: !471, file: !3, line: 55, type: !11)
!471 = distinct !DILexicalBlock(scope: !465, file: !3, line: 55, column: 3)
!472 = !DILocalVariable(name: "xi", scope: !473, file: !3, line: 57, type: !6)
!473 = distinct !DILexicalBlock(scope: !474, file: !3, line: 56, column: 3)
!474 = distinct !DILexicalBlock(scope: !471, file: !3, line: 55, column: 3)
!475 = !DILocation(line: 0, scope: !465, inlinedAt: !476)
!476 = distinct !DILocation(line: 138, column: 3, scope: !296, inlinedAt: !308)
!477 = !DILocation(line: 0, scope: !471, inlinedAt: !476)
!478 = !DILocation(line: 55, column: 3, scope: !471, inlinedAt: !476)
!479 = !DILocation(line: 57, column: 19, scope: !473, inlinedAt: !476)
!480 = !DILocation(line: 0, scope: !473, inlinedAt: !476)
!481 = !DILocation(line: 58, column: 17, scope: !473, inlinedAt: !476)
!482 = !DILocation(line: 58, column: 5, scope: !473, inlinedAt: !476)
!483 = !DILocation(line: 58, column: 15, scope: !473, inlinedAt: !476)
!484 = !DILocation(line: 55, column: 59, scope: !474, inlinedAt: !476)
!485 = !DILocation(line: 55, column: 37, scope: !474, inlinedAt: !476)
!486 = distinct !{!486, !478, !487, !365, !366}
!487 = !DILocation(line: 59, column: 3, scope: !471, inlinedAt: !476)
!488 = !DILocation(line: 152, column: 19, scope: !288, inlinedAt: !292)
!489 = !DILocation(line: 0, scope: !288, inlinedAt: !292)
!490 = !DILocation(line: 153, column: 19, scope: !288, inlinedAt: !292)
!491 = !DILocation(line: 154, column: 17, scope: !288, inlinedAt: !292)
!492 = !DILocation(line: 154, column: 12, scope: !288, inlinedAt: !292)
!493 = !DILocation(line: 150, column: 59, scope: !289, inlinedAt: !292)
!494 = !DILocation(line: 150, column: 37, scope: !289, inlinedAt: !292)
!495 = distinct !{!495, !294, !496, !365, !366}
!496 = !DILocation(line: 155, column: 3, scope: !286, inlinedAt: !292)
!497 = !DILocation(line: 139, column: 17, scope: !296, inlinedAt: !308)
!498 = !DILocation(line: 140, column: 17, scope: !296, inlinedAt: !308)
!499 = !DILocation(line: 141, column: 21, scope: !296, inlinedAt: !308)
!500 = !DILocation(line: 142, column: 27, scope: !296, inlinedAt: !308)
!501 = !DILocation(line: 142, column: 21, scope: !296, inlinedAt: !308)
!502 = !DILocation(line: 143, column: 14, scope: !296, inlinedAt: !308)
!503 = !DILocation(line: 144, column: 14, scope: !296, inlinedAt: !308)
!504 = !DILocation(line: 145, column: 1, scope: !296, inlinedAt: !308)
!505 = !DILocation(line: 196, column: 1, scope: !201)
!506 = distinct !DISubprogram(name: "Hacl_Poly1305_32_update", scope: !3, file: !3, line: 533, type: !507, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !47, !38, !11}
!509 = !{!510, !511, !512, !513, !516, !517}
!510 = !DILocalVariable(name: "st", arg: 1, scope: !506, file: !3, line: 534, type: !47)
!511 = !DILocalVariable(name: "m", arg: 2, scope: !506, file: !3, line: 535, type: !38)
!512 = !DILocalVariable(name: "len1", arg: 3, scope: !506, file: !3, line: 536, type: !11)
!513 = !DILocalVariable(name: "block", scope: !514, file: !3, line: 541, type: !38)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 540, column: 3)
!515 = distinct !DILexicalBlock(scope: !506, file: !3, line: 539, column: 7)
!516 = !DILocalVariable(name: "m_", scope: !514, file: !3, line: 542, type: !38)
!517 = !DILocalVariable(name: "len2", scope: !514, file: !3, line: 543, type: !11)
!518 = !DILocation(line: 0, scope: !506)
!519 = !DILocation(line: 539, column: 14, scope: !515)
!520 = !DILocation(line: 539, column: 7, scope: !506)
!521 = !DILocation(line: 0, scope: !514)
!522 = !DILocation(line: 542, column: 21, scope: !514)
!523 = !DILocation(line: 543, column: 26, scope: !514)
!524 = !DILocation(line: 0, scope: !194, inlinedAt: !525)
!525 = distinct !DILocation(line: 544, column: 5, scope: !514)
!526 = !DILocation(line: 529, column: 3, scope: !194, inlinedAt: !525)
!527 = !DILocation(line: 545, column: 5, scope: !514)
!528 = !DILocation(line: 546, column: 3, scope: !514)
!529 = !DILocation(line: 547, column: 1, scope: !506)
!530 = distinct !DISubprogram(name: "Hacl_Poly1305_32_update_last", scope: !3, file: !3, line: 550, type: !507, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !531)
!531 = !{!532, !533, !534, !535, !536, !537}
!532 = !DILocalVariable(name: "st", arg: 1, scope: !530, file: !3, line: 551, type: !47)
!533 = !DILocalVariable(name: "m", arg: 2, scope: !530, file: !3, line: 552, type: !38)
!534 = !DILocalVariable(name: "len1", arg: 3, scope: !530, file: !3, line: 553, type: !11)
!535 = !DILocalVariable(name: "scrut", scope: !530, file: !3, line: 558, type: !47)
!536 = !DILocalVariable(name: "h", scope: !530, file: !3, line: 559, type: !52)
!537 = !DILocalVariable(name: "acc", scope: !530, file: !3, line: 560, type: !52)
!538 = !DILocation(line: 0, scope: !530)
!539 = !DILocation(line: 556, column: 24, scope: !540)
!540 = distinct !DILexicalBlock(scope: !530, file: !3, line: 556, column: 7)
!541 = !DILocation(line: 556, column: 7, scope: !530)
!542 = !DILocation(line: 556, column: 9, scope: !540)
!543 = !DILocation(line: 557, column: 5, scope: !540)
!544 = !DILocation(line: 561, column: 3, scope: !530)
!545 = !DILocation(line: 562, column: 1, scope: !530)
!546 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_32_poly1305_process_last_block", scope: !3, file: !3, line: 235, type: !547, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !47, !38, !6}
!549 = !{!550, !551, !552, !553, !554, !558, !560, !561}
!550 = !DILocalVariable(name: "st", arg: 1, scope: !546, file: !3, line: 236, type: !47)
!551 = !DILocalVariable(name: "m", arg: 2, scope: !546, file: !3, line: 237, type: !38)
!552 = !DILocalVariable(name: "rem_", arg: 3, scope: !546, file: !3, line: 238, type: !6)
!553 = !DILocalVariable(name: "zero1", scope: !546, file: !3, line: 241, type: !14)
!554 = !DILocalVariable(name: "block", scope: !546, file: !3, line: 243, type: !555)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 16)
!558 = !DILocalVariable(name: "_i", scope: !559, file: !3, line: 244, type: !11)
!559 = distinct !DILexicalBlock(scope: !546, file: !3, line: 244, column: 3)
!560 = !DILocalVariable(name: "i0", scope: !546, file: !3, line: 246, type: !11)
!561 = !DILocalVariable(name: "i", scope: !546, file: !3, line: 247, type: !11)
!562 = !DILocation(line: 0, scope: !546)
!563 = !DILocation(line: 243, column: 3, scope: !546)
!564 = !DILocation(line: 243, column: 11, scope: !546)
!565 = !DILocation(line: 0, scope: !559)
!566 = !DILocation(line: 245, column: 15, scope: !567)
!567 = distinct !DILexicalBlock(scope: !559, file: !3, line: 244, column: 3)
!568 = !{!68, !68, i64 0}
!569 = !DILocation(line: 246, column: 17, scope: !546)
!570 = !DILocation(line: 248, column: 3, scope: !546)
!571 = !DILocation(line: 249, column: 3, scope: !546)
!572 = !DILocation(line: 249, column: 13, scope: !546)
!573 = !DILocalVariable(name: "st", arg: 2, scope: !574, file: !3, line: 201, type: !47)
!574 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_32_poly1305_process_last_block_", scope: !3, file: !3, line: 199, type: !575, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !38, !47, !38, !6}
!577 = !{!578, !573, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!578 = !DILocalVariable(name: "block", arg: 1, scope: !574, file: !3, line: 200, type: !38)
!579 = !DILocalVariable(name: "m", arg: 3, scope: !574, file: !3, line: 202, type: !38)
!580 = !DILocalVariable(name: "rem_", arg: 4, scope: !574, file: !3, line: 203, type: !6)
!581 = !DILocalVariable(name: "tmp", scope: !574, file: !3, line: 206, type: !212)
!582 = !DILocalVariable(name: "s0", scope: !574, file: !3, line: 207, type: !38)
!583 = !DILocalVariable(name: "s1", scope: !574, file: !3, line: 208, type: !38)
!584 = !DILocalVariable(name: "s2", scope: !574, file: !3, line: 209, type: !38)
!585 = !DILocalVariable(name: "s3", scope: !574, file: !3, line: 210, type: !38)
!586 = !DILocalVariable(name: "s4", scope: !574, file: !3, line: 211, type: !38)
!587 = !DILocalVariable(name: "i0", scope: !574, file: !3, line: 212, type: !11)
!588 = !DILocalVariable(name: "i1", scope: !574, file: !3, line: 213, type: !11)
!589 = !DILocalVariable(name: "i2", scope: !574, file: !3, line: 214, type: !11)
!590 = !DILocalVariable(name: "i3", scope: !574, file: !3, line: 215, type: !11)
!591 = !DILocalVariable(name: "i4", scope: !574, file: !3, line: 216, type: !11)
!592 = !DILocalVariable(name: "r0", scope: !574, file: !3, line: 217, type: !11)
!593 = !DILocalVariable(name: "r1", scope: !574, file: !3, line: 218, type: !11)
!594 = !DILocalVariable(name: "r2", scope: !574, file: !3, line: 219, type: !11)
!595 = !DILocalVariable(name: "r3", scope: !574, file: !3, line: 220, type: !11)
!596 = !DILocalVariable(name: "r4", scope: !574, file: !3, line: 221, type: !11)
!597 = !DILocalVariable(name: "scrut0", scope: !574, file: !3, line: 227, type: !47)
!598 = !DILocalVariable(name: "h", scope: !574, file: !3, line: 228, type: !52)
!599 = !DILocalVariable(name: "scrut", scope: !574, file: !3, line: 229, type: !47)
!600 = !DILocalVariable(name: "r", scope: !574, file: !3, line: 230, type: !52)
!601 = !DILocation(line: 0, scope: !574, inlinedAt: !602)
!602 = distinct !DILocation(line: 250, column: 3, scope: !546)
!603 = !DILocation(line: 206, column: 3, scope: !574, inlinedAt: !602)
!604 = !DILocation(line: 206, column: 12, scope: !574, inlinedAt: !602)
!605 = !DILocation(line: 208, column: 23, scope: !574, inlinedAt: !602)
!606 = !DILocation(line: 209, column: 23, scope: !574, inlinedAt: !602)
!607 = !DILocation(line: 210, column: 23, scope: !574, inlinedAt: !602)
!608 = !DILocation(line: 211, column: 23, scope: !574, inlinedAt: !602)
!609 = !DILocation(line: 0, scope: !240, inlinedAt: !610)
!610 = distinct !DILocation(line: 212, column: 17, scope: !574, inlinedAt: !602)
!611 = !DILocation(line: 343, column: 3, scope: !240, inlinedAt: !610)
!612 = !DILocation(line: 0, scope: !240, inlinedAt: !613)
!613 = distinct !DILocation(line: 213, column: 17, scope: !574, inlinedAt: !602)
!614 = !DILocation(line: 343, column: 3, scope: !240, inlinedAt: !613)
!615 = !DILocation(line: 0, scope: !240, inlinedAt: !616)
!616 = distinct !DILocation(line: 214, column: 17, scope: !574, inlinedAt: !602)
!617 = !DILocation(line: 343, column: 3, scope: !240, inlinedAt: !616)
!618 = !DILocation(line: 0, scope: !240, inlinedAt: !619)
!619 = distinct !DILocation(line: 215, column: 17, scope: !574, inlinedAt: !602)
!620 = !DILocation(line: 343, column: 3, scope: !240, inlinedAt: !619)
!621 = !DILocation(line: 0, scope: !240, inlinedAt: !622)
!622 = distinct !DILocation(line: 216, column: 17, scope: !574, inlinedAt: !602)
!623 = !DILocation(line: 343, column: 3, scope: !240, inlinedAt: !622)
!624 = !DILocation(line: 217, column: 20, scope: !574, inlinedAt: !602)
!625 = !DILocation(line: 218, column: 20, scope: !574, inlinedAt: !602)
!626 = !DILocation(line: 218, column: 36, scope: !574, inlinedAt: !602)
!627 = !DILocation(line: 219, column: 20, scope: !574, inlinedAt: !602)
!628 = !DILocation(line: 219, column: 36, scope: !574, inlinedAt: !602)
!629 = !DILocation(line: 220, column: 20, scope: !574, inlinedAt: !602)
!630 = !DILocation(line: 221, column: 20, scope: !574, inlinedAt: !602)
!631 = !DILocation(line: 222, column: 3, scope: !574, inlinedAt: !602)
!632 = !DILocation(line: 222, column: 11, scope: !574, inlinedAt: !602)
!633 = !DILocation(line: 223, column: 3, scope: !574, inlinedAt: !602)
!634 = !DILocation(line: 223, column: 11, scope: !574, inlinedAt: !602)
!635 = !DILocation(line: 224, column: 3, scope: !574, inlinedAt: !602)
!636 = !DILocation(line: 224, column: 11, scope: !574, inlinedAt: !602)
!637 = !DILocation(line: 225, column: 3, scope: !574, inlinedAt: !602)
!638 = !DILocation(line: 225, column: 11, scope: !574, inlinedAt: !602)
!639 = !DILocation(line: 226, column: 3, scope: !574, inlinedAt: !602)
!640 = !DILocation(line: 226, column: 11, scope: !574, inlinedAt: !602)
!641 = !DILocation(line: 0, scope: !279, inlinedAt: !642)
!642 = distinct !DILocation(line: 231, column: 3, scope: !574, inlinedAt: !602)
!643 = !DILocation(line: 0, scope: !286, inlinedAt: !642)
!644 = !DILocation(line: 150, column: 3, scope: !286, inlinedAt: !642)
!645 = !DILocation(line: 0, scope: !296, inlinedAt: !646)
!646 = distinct !DILocation(line: 156, column: 3, scope: !279, inlinedAt: !642)
!647 = !DILocation(line: 132, column: 3, scope: !296, inlinedAt: !646)
!648 = !DILocation(line: 132, column: 12, scope: !296, inlinedAt: !646)
!649 = !DILocation(line: 133, column: 3, scope: !296, inlinedAt: !646)
!650 = !DILocation(line: 134, column: 3, scope: !296, inlinedAt: !646)
!651 = !DILocation(line: 134, column: 12, scope: !296, inlinedAt: !646)
!652 = !DILocation(line: 0, scope: !315, inlinedAt: !653)
!653 = distinct !DILocation(line: 135, column: 3, scope: !296, inlinedAt: !646)
!654 = !DILocation(line: 0, scope: !323, inlinedAt: !653)
!655 = !DILocation(line: 119, column: 3, scope: !323, inlinedAt: !653)
!656 = !DILocation(line: 126, column: 22, scope: !315, inlinedAt: !653)
!657 = !DILocation(line: 0, scope: !335, inlinedAt: !658)
!658 = distinct !DILocation(line: 127, column: 3, scope: !315, inlinedAt: !653)
!659 = !DILocation(line: 0, scope: !342, inlinedAt: !658)
!660 = !DILocation(line: 65, column: 3, scope: !342, inlinedAt: !658)
!661 = !DILocation(line: 67, column: 19, scope: !344, inlinedAt: !658)
!662 = !DILocation(line: 0, scope: !344, inlinedAt: !658)
!663 = !DILocation(line: 68, column: 19, scope: !344, inlinedAt: !658)
!664 = !DILocation(line: 69, column: 23, scope: !344, inlinedAt: !658)
!665 = !DILocation(line: 71, column: 29, scope: !344, inlinedAt: !658)
!666 = !DILocation(line: 71, column: 20, scope: !344, inlinedAt: !658)
!667 = !DILocation(line: 71, column: 15, scope: !344, inlinedAt: !658)
!668 = !DILocation(line: 65, column: 59, scope: !345, inlinedAt: !658)
!669 = !DILocation(line: 65, column: 37, scope: !345, inlinedAt: !658)
!670 = distinct !{!670, !660, !671, !365, !366}
!671 = !DILocation(line: 72, column: 3, scope: !342, inlinedAt: !658)
!672 = !DILocation(line: 77, column: 3, scope: !368, inlinedAt: !673)
!673 = distinct !DILocation(line: 136, column: 3, scope: !296, inlinedAt: !646)
!674 = !DILocation(line: 121, column: 24, scope: !325, inlinedAt: !653)
!675 = !DILocation(line: 0, scope: !325, inlinedAt: !653)
!676 = !DILocation(line: 0, scope: !335, inlinedAt: !677)
!677 = distinct !DILocation(line: 122, column: 5, scope: !325, inlinedAt: !653)
!678 = !DILocation(line: 0, scope: !342, inlinedAt: !677)
!679 = !DILocation(line: 65, column: 3, scope: !342, inlinedAt: !677)
!680 = !DILocation(line: 67, column: 19, scope: !344, inlinedAt: !677)
!681 = !DILocation(line: 0, scope: !344, inlinedAt: !677)
!682 = !DILocation(line: 68, column: 19, scope: !344, inlinedAt: !677)
!683 = !DILocation(line: 69, column: 23, scope: !344, inlinedAt: !677)
!684 = !DILocation(line: 71, column: 29, scope: !344, inlinedAt: !677)
!685 = !DILocation(line: 71, column: 20, scope: !344, inlinedAt: !677)
!686 = !DILocation(line: 71, column: 15, scope: !344, inlinedAt: !677)
!687 = !DILocation(line: 65, column: 59, scope: !345, inlinedAt: !677)
!688 = !DILocation(line: 65, column: 37, scope: !345, inlinedAt: !677)
!689 = distinct !{!689, !679, !690, !365, !366}
!690 = !DILocation(line: 72, column: 3, scope: !342, inlinedAt: !677)
!691 = !DILocation(line: 0, scope: !401, inlinedAt: !692)
!692 = distinct !DILocation(line: 123, column: 5, scope: !325, inlinedAt: !653)
!693 = !DILocation(line: 105, column: 18, scope: !401, inlinedAt: !692)
!694 = !DILocation(line: 0, scope: !407, inlinedAt: !692)
!695 = !DILocation(line: 110, column: 17, scope: !409, inlinedAt: !692)
!696 = !DILocation(line: 0, scope: !409, inlinedAt: !692)
!697 = !DILocation(line: 0, scope: !419, inlinedAt: !698)
!698 = distinct !DILocation(line: 113, column: 3, scope: !401, inlinedAt: !692)
!699 = !DILocation(line: 30, column: 32, scope: !419, inlinedAt: !698)
!700 = !DILocation(line: 30, column: 9, scope: !419, inlinedAt: !698)
!701 = !DILocation(line: 119, column: 59, scope: !326, inlinedAt: !653)
!702 = !DILocation(line: 119, column: 37, scope: !326, inlinedAt: !653)
!703 = distinct !{!703, !655, !704, !365, !366}
!704 = !DILocation(line: 124, column: 3, scope: !323, inlinedAt: !653)
!705 = !DILocation(line: 0, scope: !368, inlinedAt: !673)
!706 = !DILocation(line: 0, scope: !376, inlinedAt: !673)
!707 = !DILocation(line: 80, column: 21, scope: !376, inlinedAt: !673)
!708 = !DILocation(line: 81, column: 31, scope: !376, inlinedAt: !673)
!709 = !DILocation(line: 81, column: 23, scope: !376, inlinedAt: !673)
!710 = !DILocation(line: 83, column: 23, scope: !376, inlinedAt: !673)
!711 = !DILocation(line: 84, column: 16, scope: !376, inlinedAt: !673)
!712 = !DILocation(line: 84, column: 14, scope: !376, inlinedAt: !673)
!713 = !DILocation(line: 85, column: 38, scope: !376, inlinedAt: !673)
!714 = !DILocation(line: 85, column: 29, scope: !376, inlinedAt: !673)
!715 = !DILocation(line: 77, column: 37, scope: !377, inlinedAt: !673)
!716 = distinct !{!716, !672, !717, !365, !366}
!717 = !DILocation(line: 86, column: 3, scope: !368, inlinedAt: !673)
!718 = !DILocation(line: 135, column: 38, scope: !296, inlinedAt: !646)
!719 = !DILocation(line: 0, scope: !445, inlinedAt: !720)
!720 = distinct !DILocation(line: 137, column: 3, scope: !296, inlinedAt: !646)
!721 = !DILocation(line: 44, column: 17, scope: !445, inlinedAt: !720)
!722 = !DILocation(line: 45, column: 17, scope: !445, inlinedAt: !720)
!723 = !DILocation(line: 46, column: 21, scope: !445, inlinedAt: !720)
!724 = !DILocation(line: 47, column: 34, scope: !445, inlinedAt: !720)
!725 = !DILocation(line: 47, column: 20, scope: !445, inlinedAt: !720)
!726 = !DILocation(line: 48, column: 58, scope: !445, inlinedAt: !720)
!727 = !DILocation(line: 48, column: 23, scope: !445, inlinedAt: !720)
!728 = !DILocation(line: 48, column: 21, scope: !445, inlinedAt: !720)
!729 = !DILocation(line: 49, column: 9, scope: !445, inlinedAt: !720)
!730 = !DILocation(line: 50, column: 9, scope: !445, inlinedAt: !720)
!731 = !DILocation(line: 0, scope: !465, inlinedAt: !732)
!732 = distinct !DILocation(line: 138, column: 3, scope: !296, inlinedAt: !646)
!733 = !DILocation(line: 0, scope: !471, inlinedAt: !732)
!734 = !DILocation(line: 55, column: 3, scope: !471, inlinedAt: !732)
!735 = !DILocation(line: 57, column: 19, scope: !473, inlinedAt: !732)
!736 = !DILocation(line: 0, scope: !473, inlinedAt: !732)
!737 = !DILocation(line: 58, column: 17, scope: !473, inlinedAt: !732)
!738 = !DILocation(line: 58, column: 5, scope: !473, inlinedAt: !732)
!739 = !DILocation(line: 58, column: 15, scope: !473, inlinedAt: !732)
!740 = !DILocation(line: 55, column: 59, scope: !474, inlinedAt: !732)
!741 = !DILocation(line: 55, column: 37, scope: !474, inlinedAt: !732)
!742 = distinct !{!742, !734, !743, !365, !366}
!743 = !DILocation(line: 59, column: 3, scope: !471, inlinedAt: !732)
!744 = !DILocation(line: 152, column: 19, scope: !288, inlinedAt: !642)
!745 = !DILocation(line: 0, scope: !288, inlinedAt: !642)
!746 = !DILocation(line: 153, column: 19, scope: !288, inlinedAt: !642)
!747 = !DILocation(line: 154, column: 17, scope: !288, inlinedAt: !642)
!748 = !DILocation(line: 154, column: 12, scope: !288, inlinedAt: !642)
!749 = !DILocation(line: 150, column: 59, scope: !289, inlinedAt: !642)
!750 = !DILocation(line: 150, column: 37, scope: !289, inlinedAt: !642)
!751 = distinct !{!751, !644, !752, !365, !366}
!752 = !DILocation(line: 155, column: 3, scope: !286, inlinedAt: !642)
!753 = !DILocation(line: 139, column: 17, scope: !296, inlinedAt: !646)
!754 = !DILocation(line: 140, column: 17, scope: !296, inlinedAt: !646)
!755 = !DILocation(line: 141, column: 21, scope: !296, inlinedAt: !646)
!756 = !DILocation(line: 142, column: 27, scope: !296, inlinedAt: !646)
!757 = !DILocation(line: 142, column: 21, scope: !296, inlinedAt: !646)
!758 = !DILocation(line: 143, column: 14, scope: !296, inlinedAt: !646)
!759 = !DILocation(line: 144, column: 14, scope: !296, inlinedAt: !646)
!760 = !DILocation(line: 145, column: 1, scope: !296, inlinedAt: !646)
!761 = !DILocation(line: 232, column: 1, scope: !574, inlinedAt: !602)
!762 = !DILocation(line: 251, column: 1, scope: !546)
!763 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_32_poly1305_last_pass", scope: !3, file: !3, line: 253, type: !402, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812}
!765 = !DILocalVariable(name: "acc", arg: 1, scope: !763, file: !3, line: 253, type: !52)
!766 = !DILocalVariable(name: "t0", scope: !763, file: !3, line: 257, type: !11)
!767 = !DILocalVariable(name: "t10", scope: !763, file: !3, line: 258, type: !11)
!768 = !DILocalVariable(name: "t20", scope: !763, file: !3, line: 259, type: !11)
!769 = !DILocalVariable(name: "t30", scope: !763, file: !3, line: 260, type: !11)
!770 = !DILocalVariable(name: "t40", scope: !763, file: !3, line: 261, type: !11)
!771 = !DILocalVariable(name: "t1_", scope: !763, file: !3, line: 262, type: !11)
!772 = !DILocalVariable(name: "mask_261", scope: !763, file: !3, line: 263, type: !11)
!773 = !DILocalVariable(name: "t0_", scope: !763, file: !3, line: 264, type: !11)
!774 = !DILocalVariable(name: "t2_", scope: !763, file: !3, line: 265, type: !11)
!775 = !DILocalVariable(name: "t1__", scope: !763, file: !3, line: 266, type: !11)
!776 = !DILocalVariable(name: "t3_", scope: !763, file: !3, line: 267, type: !11)
!777 = !DILocalVariable(name: "t2__", scope: !763, file: !3, line: 268, type: !11)
!778 = !DILocalVariable(name: "t4_", scope: !763, file: !3, line: 269, type: !11)
!779 = !DILocalVariable(name: "t3__", scope: !763, file: !3, line: 270, type: !11)
!780 = !DILocalVariable(name: "t00", scope: !763, file: !3, line: 277, type: !11)
!781 = !DILocalVariable(name: "t1", scope: !763, file: !3, line: 278, type: !11)
!782 = !DILocalVariable(name: "t2", scope: !763, file: !3, line: 279, type: !11)
!783 = !DILocalVariable(name: "t3", scope: !763, file: !3, line: 280, type: !11)
!784 = !DILocalVariable(name: "t4", scope: !763, file: !3, line: 281, type: !11)
!785 = !DILocalVariable(name: "t1_0", scope: !763, file: !3, line: 282, type: !11)
!786 = !DILocalVariable(name: "t0_0", scope: !763, file: !3, line: 283, type: !11)
!787 = !DILocalVariable(name: "t2_0", scope: !763, file: !3, line: 284, type: !11)
!788 = !DILocalVariable(name: "t1__0", scope: !763, file: !3, line: 285, type: !11)
!789 = !DILocalVariable(name: "t3_0", scope: !763, file: !3, line: 286, type: !11)
!790 = !DILocalVariable(name: "t2__0", scope: !763, file: !3, line: 287, type: !11)
!791 = !DILocalVariable(name: "t4_0", scope: !763, file: !3, line: 288, type: !11)
!792 = !DILocalVariable(name: "t3__0", scope: !763, file: !3, line: 289, type: !11)
!793 = !DILocalVariable(name: "i0", scope: !763, file: !3, line: 296, type: !11)
!794 = !DILocalVariable(name: "i1", scope: !763, file: !3, line: 297, type: !11)
!795 = !DILocalVariable(name: "i0_", scope: !763, file: !3, line: 298, type: !11)
!796 = !DILocalVariable(name: "i1_", scope: !763, file: !3, line: 299, type: !11)
!797 = !DILocalVariable(name: "a0", scope: !763, file: !3, line: 302, type: !11)
!798 = !DILocalVariable(name: "a1", scope: !763, file: !3, line: 303, type: !11)
!799 = !DILocalVariable(name: "a2", scope: !763, file: !3, line: 304, type: !11)
!800 = !DILocalVariable(name: "a3", scope: !763, file: !3, line: 305, type: !11)
!801 = !DILocalVariable(name: "a4", scope: !763, file: !3, line: 306, type: !11)
!802 = !DILocalVariable(name: "mask0", scope: !763, file: !3, line: 307, type: !11)
!803 = !DILocalVariable(name: "mask1", scope: !763, file: !3, line: 308, type: !11)
!804 = !DILocalVariable(name: "mask2", scope: !763, file: !3, line: 309, type: !11)
!805 = !DILocalVariable(name: "mask3", scope: !763, file: !3, line: 310, type: !11)
!806 = !DILocalVariable(name: "mask4", scope: !763, file: !3, line: 311, type: !11)
!807 = !DILocalVariable(name: "mask", scope: !763, file: !3, line: 312, type: !11)
!808 = !DILocalVariable(name: "a0_", scope: !763, file: !3, line: 313, type: !11)
!809 = !DILocalVariable(name: "a1_", scope: !763, file: !3, line: 314, type: !11)
!810 = !DILocalVariable(name: "a2_", scope: !763, file: !3, line: 315, type: !11)
!811 = !DILocalVariable(name: "a3_", scope: !763, file: !3, line: 316, type: !11)
!812 = !DILocalVariable(name: "a4_", scope: !763, file: !3, line: 317, type: !11)
!813 = !DILocation(line: 0, scope: !763)
!814 = !DILocalVariable(name: "tmp", arg: 1, scope: !815, file: !3, line: 89, type: !52)
!815 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_limb_", scope: !3, file: !3, line: 89, type: !402, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !816)
!816 = !{!814, !817, !819, !822, !823, !824, !825}
!817 = !DILocalVariable(name: "i", scope: !818, file: !3, line: 91, type: !11)
!818 = distinct !DILexicalBlock(scope: !815, file: !3, line: 91, column: 3)
!819 = !DILocalVariable(name: "ctr", scope: !820, file: !3, line: 93, type: !11)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 92, column: 3)
!821 = distinct !DILexicalBlock(scope: !818, file: !3, line: 91, column: 3)
!822 = !DILocalVariable(name: "tctr", scope: !820, file: !3, line: 94, type: !11)
!823 = !DILocalVariable(name: "tctrp1", scope: !820, file: !3, line: 95, type: !11)
!824 = !DILocalVariable(name: "r0", scope: !820, file: !3, line: 96, type: !11)
!825 = !DILocalVariable(name: "c", scope: !820, file: !3, line: 97, type: !11)
!826 = !DILocation(line: 0, scope: !815, inlinedAt: !827)
!827 = distinct !DILocation(line: 255, column: 3, scope: !763)
!828 = !DILocation(line: 0, scope: !818, inlinedAt: !827)
!829 = !DILocation(line: 91, column: 3, scope: !818, inlinedAt: !827)
!830 = !DILocation(line: 0, scope: !820, inlinedAt: !827)
!831 = !DILocation(line: 94, column: 21, scope: !820, inlinedAt: !827)
!832 = !DILocation(line: 95, column: 31, scope: !820, inlinedAt: !827)
!833 = !DILocation(line: 95, column: 23, scope: !820, inlinedAt: !827)
!834 = !DILocation(line: 96, column: 24, scope: !820, inlinedAt: !827)
!835 = !DILocation(line: 97, column: 23, scope: !820, inlinedAt: !827)
!836 = !DILocation(line: 98, column: 14, scope: !820, inlinedAt: !827)
!837 = !DILocation(line: 99, column: 38, scope: !820, inlinedAt: !827)
!838 = !DILocation(line: 99, column: 29, scope: !820, inlinedAt: !827)
!839 = !DILocation(line: 91, column: 37, scope: !821, inlinedAt: !827)
!840 = distinct !{!840, !829, !841, !365, !366}
!841 = !DILocation(line: 100, column: 3, scope: !818, inlinedAt: !827)
!842 = !DILocalVariable(name: "b", arg: 1, scope: !843, file: !3, line: 33, type: !52)
!843 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top", scope: !3, file: !3, line: 33, type: !402, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !844)
!844 = !{!842, !845, !846, !847}
!845 = !DILocalVariable(name: "b4", scope: !843, file: !3, line: 35, type: !11)
!846 = !DILocalVariable(name: "b0", scope: !843, file: !3, line: 36, type: !11)
!847 = !DILocalVariable(name: "b4_26", scope: !843, file: !3, line: 37, type: !11)
!848 = !DILocation(line: 0, scope: !843, inlinedAt: !849)
!849 = distinct !DILocation(line: 256, column: 3, scope: !763)
!850 = !DILocation(line: 35, column: 17, scope: !843, inlinedAt: !849)
!851 = !DILocation(line: 36, column: 17, scope: !843, inlinedAt: !849)
!852 = !DILocation(line: 37, column: 23, scope: !843, inlinedAt: !849)
!853 = !DILocation(line: 38, column: 14, scope: !843, inlinedAt: !849)
!854 = !DILocation(line: 38, column: 9, scope: !843, inlinedAt: !849)
!855 = !DILocation(line: 39, column: 35, scope: !843, inlinedAt: !849)
!856 = !DILocation(line: 39, column: 43, scope: !843, inlinedAt: !849)
!857 = !DILocation(line: 39, column: 9, scope: !843, inlinedAt: !849)
!858 = !DILocation(line: 258, column: 18, scope: !763)
!859 = !DILocation(line: 259, column: 18, scope: !763)
!860 = !DILocation(line: 260, column: 18, scope: !763)
!861 = !DILocation(line: 262, column: 28, scope: !763)
!862 = !DILocation(line: 262, column: 22, scope: !763)
!863 = !DILocation(line: 264, column: 21, scope: !763)
!864 = !DILocation(line: 265, column: 29, scope: !763)
!865 = !DILocation(line: 265, column: 22, scope: !763)
!866 = !DILocation(line: 266, column: 23, scope: !763)
!867 = !DILocation(line: 267, column: 29, scope: !763)
!868 = !DILocation(line: 267, column: 22, scope: !763)
!869 = !DILocation(line: 268, column: 23, scope: !763)
!870 = !DILocation(line: 269, column: 29, scope: !763)
!871 = !DILocation(line: 269, column: 22, scope: !763)
!872 = !DILocation(line: 270, column: 23, scope: !763)
!873 = !DILocation(line: 271, column: 11, scope: !763)
!874 = !DILocation(line: 272, column: 11, scope: !763)
!875 = !DILocation(line: 273, column: 11, scope: !763)
!876 = !DILocation(line: 274, column: 11, scope: !763)
!877 = !DILocation(line: 0, scope: !843, inlinedAt: !878)
!878 = distinct !DILocation(line: 276, column: 3, scope: !763)
!879 = !DILocation(line: 37, column: 23, scope: !843, inlinedAt: !878)
!880 = !DILocation(line: 38, column: 14, scope: !843, inlinedAt: !878)
!881 = !DILocation(line: 38, column: 9, scope: !843, inlinedAt: !878)
!882 = !DILocation(line: 39, column: 35, scope: !843, inlinedAt: !878)
!883 = !DILocation(line: 39, column: 43, scope: !843, inlinedAt: !878)
!884 = !DILocation(line: 282, column: 29, scope: !763)
!885 = !DILocation(line: 282, column: 22, scope: !763)
!886 = !DILocation(line: 283, column: 23, scope: !763)
!887 = !DILocation(line: 284, column: 30, scope: !763)
!888 = !DILocation(line: 284, column: 22, scope: !763)
!889 = !DILocation(line: 285, column: 25, scope: !763)
!890 = !DILocation(line: 286, column: 30, scope: !763)
!891 = !DILocation(line: 286, column: 22, scope: !763)
!892 = !DILocation(line: 287, column: 25, scope: !763)
!893 = !DILocation(line: 288, column: 30, scope: !763)
!894 = !DILocation(line: 288, column: 22, scope: !763)
!895 = !DILocation(line: 289, column: 25, scope: !763)
!896 = !DILocation(line: 290, column: 11, scope: !763)
!897 = !DILocation(line: 291, column: 11, scope: !763)
!898 = !DILocation(line: 292, column: 11, scope: !763)
!899 = !DILocation(line: 293, column: 11, scope: !763)
!900 = !DILocation(line: 0, scope: !843, inlinedAt: !901)
!901 = distinct !DILocation(line: 295, column: 3, scope: !763)
!902 = !DILocation(line: 37, column: 23, scope: !843, inlinedAt: !901)
!903 = !DILocation(line: 38, column: 14, scope: !843, inlinedAt: !901)
!904 = !DILocation(line: 38, column: 9, scope: !843, inlinedAt: !901)
!905 = !DILocation(line: 39, column: 35, scope: !843, inlinedAt: !901)
!906 = !DILocation(line: 39, column: 43, scope: !843, inlinedAt: !901)
!907 = !DILocation(line: 298, column: 21, scope: !763)
!908 = !DILocation(line: 299, column: 27, scope: !763)
!909 = !DILocation(line: 299, column: 21, scope: !763)
!910 = !DILocation(line: 300, column: 11, scope: !763)
!911 = !DILocation(line: 301, column: 11, scope: !763)
!912 = !DILocalVariable(name: "x", arg: 1, scope: !913, file: !914, line: 153, type: !11)
!913 = distinct !DISubprogram(name: "FStar_UInt32_gte_mask", scope: !914, file: !914, line: 153, type: !915, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!914 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!915 = !DISubroutineType(types: !916)
!916 = !{!11, !11, !11}
!917 = !{!912, !918}
!918 = !DILocalVariable(name: "y", arg: 2, scope: !913, file: !914, line: 153, type: !11)
!919 = !DILocation(line: 0, scope: !913, inlinedAt: !920)
!920 = distinct !DILocation(line: 307, column: 20, scope: !763)
!921 = !DILocation(line: 154, column: 24, scope: !913, inlinedAt: !920)
!922 = !DILocation(line: 154, column: 35, scope: !913, inlinedAt: !920)
!923 = !DILocation(line: 154, column: 40, scope: !913, inlinedAt: !920)
!924 = !DILocation(line: 154, column: 12, scope: !913, inlinedAt: !920)
!925 = !DILocation(line: 154, column: 10, scope: !913, inlinedAt: !920)
!926 = !DILocalVariable(name: "x", arg: 1, scope: !927, file: !914, line: 143, type: !11)
!927 = distinct !DISubprogram(name: "FStar_UInt32_eq_mask", scope: !914, file: !914, line: 143, type: !915, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!928 = !{!926, !929}
!929 = !DILocalVariable(name: "y", arg: 2, scope: !927, file: !914, line: 143, type: !11)
!930 = !DILocation(line: 0, scope: !927, inlinedAt: !931)
!931 = distinct !DILocation(line: 308, column: 20, scope: !763)
!932 = !DILocation(line: 144, column: 7, scope: !927, inlinedAt: !931)
!933 = !DILocation(line: 145, column: 10, scope: !927, inlinedAt: !931)
!934 = !DILocation(line: 145, column: 5, scope: !927, inlinedAt: !931)
!935 = !DILocation(line: 146, column: 10, scope: !927, inlinedAt: !931)
!936 = !DILocation(line: 146, column: 5, scope: !927, inlinedAt: !931)
!937 = !DILocation(line: 147, column: 10, scope: !927, inlinedAt: !931)
!938 = !DILocation(line: 147, column: 5, scope: !927, inlinedAt: !931)
!939 = !DILocation(line: 148, column: 10, scope: !927, inlinedAt: !931)
!940 = !DILocation(line: 148, column: 5, scope: !927, inlinedAt: !931)
!941 = !DILocation(line: 149, column: 10, scope: !927, inlinedAt: !931)
!942 = !DILocation(line: 149, column: 5, scope: !927, inlinedAt: !931)
!943 = !DILocation(line: 0, scope: !927, inlinedAt: !944)
!944 = distinct !DILocation(line: 309, column: 20, scope: !763)
!945 = !DILocation(line: 144, column: 7, scope: !927, inlinedAt: !944)
!946 = !DILocation(line: 145, column: 10, scope: !927, inlinedAt: !944)
!947 = !DILocation(line: 145, column: 5, scope: !927, inlinedAt: !944)
!948 = !DILocation(line: 146, column: 10, scope: !927, inlinedAt: !944)
!949 = !DILocation(line: 146, column: 5, scope: !927, inlinedAt: !944)
!950 = !DILocation(line: 147, column: 10, scope: !927, inlinedAt: !944)
!951 = !DILocation(line: 147, column: 5, scope: !927, inlinedAt: !944)
!952 = !DILocation(line: 148, column: 10, scope: !927, inlinedAt: !944)
!953 = !DILocation(line: 148, column: 5, scope: !927, inlinedAt: !944)
!954 = !DILocation(line: 149, column: 10, scope: !927, inlinedAt: !944)
!955 = !DILocation(line: 149, column: 5, scope: !927, inlinedAt: !944)
!956 = !DILocation(line: 0, scope: !927, inlinedAt: !957)
!957 = distinct !DILocation(line: 310, column: 20, scope: !763)
!958 = !DILocation(line: 144, column: 7, scope: !927, inlinedAt: !957)
!959 = !DILocation(line: 145, column: 10, scope: !927, inlinedAt: !957)
!960 = !DILocation(line: 145, column: 5, scope: !927, inlinedAt: !957)
!961 = !DILocation(line: 146, column: 10, scope: !927, inlinedAt: !957)
!962 = !DILocation(line: 146, column: 5, scope: !927, inlinedAt: !957)
!963 = !DILocation(line: 147, column: 10, scope: !927, inlinedAt: !957)
!964 = !DILocation(line: 147, column: 5, scope: !927, inlinedAt: !957)
!965 = !DILocation(line: 148, column: 10, scope: !927, inlinedAt: !957)
!966 = !DILocation(line: 148, column: 5, scope: !927, inlinedAt: !957)
!967 = !DILocation(line: 149, column: 10, scope: !927, inlinedAt: !957)
!968 = !DILocation(line: 149, column: 5, scope: !927, inlinedAt: !957)
!969 = !DILocation(line: 0, scope: !927, inlinedAt: !970)
!970 = distinct !DILocation(line: 311, column: 20, scope: !763)
!971 = !DILocation(line: 144, column: 7, scope: !927, inlinedAt: !970)
!972 = !DILocation(line: 145, column: 10, scope: !927, inlinedAt: !970)
!973 = !DILocation(line: 145, column: 5, scope: !927, inlinedAt: !970)
!974 = !DILocation(line: 146, column: 10, scope: !927, inlinedAt: !970)
!975 = !DILocation(line: 146, column: 5, scope: !927, inlinedAt: !970)
!976 = !DILocation(line: 147, column: 10, scope: !927, inlinedAt: !970)
!977 = !DILocation(line: 147, column: 5, scope: !927, inlinedAt: !970)
!978 = !DILocation(line: 148, column: 10, scope: !927, inlinedAt: !970)
!979 = !DILocation(line: 148, column: 5, scope: !927, inlinedAt: !970)
!980 = !DILocation(line: 149, column: 10, scope: !927, inlinedAt: !970)
!981 = !DILocation(line: 149, column: 5, scope: !927, inlinedAt: !970)
!982 = !DILocation(line: 312, column: 28, scope: !763)
!983 = !DILocation(line: 312, column: 37, scope: !763)
!984 = !DILocation(line: 312, column: 46, scope: !763)
!985 = !DILocation(line: 312, column: 55, scope: !763)
!986 = !DILocation(line: 313, column: 45, scope: !763)
!987 = !DILocation(line: 313, column: 21, scope: !763)
!988 = !DILocation(line: 314, column: 45, scope: !763)
!989 = !DILocation(line: 314, column: 21, scope: !763)
!990 = !DILocation(line: 315, column: 21, scope: !763)
!991 = !DILocation(line: 316, column: 21, scope: !763)
!992 = !DILocation(line: 317, column: 21, scope: !763)
!993 = !DILocation(line: 318, column: 11, scope: !763)
!994 = !DILocation(line: 319, column: 11, scope: !763)
!995 = !DILocation(line: 320, column: 11, scope: !763)
!996 = !DILocation(line: 321, column: 11, scope: !763)
!997 = !DILocation(line: 322, column: 11, scope: !763)
!998 = !DILocation(line: 323, column: 1, scope: !763)
!999 = distinct !DISubprogram(name: "Hacl_Poly1305_32_finish", scope: !3, file: !3, line: 565, type: !1000, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !47, !38, !38}
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016}
!1003 = !DILocalVariable(name: "st", arg: 1, scope: !999, file: !3, line: 566, type: !47)
!1004 = !DILocalVariable(name: "mac", arg: 2, scope: !999, file: !3, line: 567, type: !38)
!1005 = !DILocalVariable(name: "k1", arg: 3, scope: !999, file: !3, line: 568, type: !38)
!1006 = !DILocalVariable(name: "scrut", scope: !999, file: !3, line: 571, type: !47)
!1007 = !DILocalVariable(name: "h", scope: !999, file: !3, line: 572, type: !52)
!1008 = !DILocalVariable(name: "acc", scope: !999, file: !3, line: 573, type: !52)
!1009 = !DILocalVariable(name: "k_", scope: !999, file: !3, line: 574, type: !85)
!1010 = !DILocalVariable(name: "h0", scope: !999, file: !3, line: 575, type: !11)
!1011 = !DILocalVariable(name: "h1", scope: !999, file: !3, line: 576, type: !11)
!1012 = !DILocalVariable(name: "h2", scope: !999, file: !3, line: 577, type: !11)
!1013 = !DILocalVariable(name: "h3", scope: !999, file: !3, line: 578, type: !11)
!1014 = !DILocalVariable(name: "h4", scope: !999, file: !3, line: 579, type: !11)
!1015 = !DILocalVariable(name: "acc_", scope: !999, file: !3, line: 581, type: !85)
!1016 = !DILocalVariable(name: "mac_", scope: !999, file: !3, line: 591, type: !85)
!1017 = !DILocation(line: 0, scope: !999)
!1018 = !DILocation(line: 0, scope: !103, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 574, column: 24, scope: !999)
!1020 = !DILocation(line: 0, scope: !112, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 545, column: 3, scope: !103, inlinedAt: !1019)
!1022 = !DILocation(line: 0, scope: !121, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 518, column: 12, scope: !112, inlinedAt: !1021)
!1024 = !DILocation(line: 349, column: 3, scope: !121, inlinedAt: !1023)
!1025 = !{!1026}
!1026 = distinct !{!1026, !1027, !"load128_le: argument 0"}
!1027 = distinct !{!1027, !"load128_le"}
!1028 = !DILocation(line: 519, column: 13, scope: !112, inlinedAt: !1021)
!1029 = !DILocation(line: 0, scope: !121, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 519, column: 13, scope: !112, inlinedAt: !1021)
!1031 = !DILocation(line: 349, column: 3, scope: !121, inlinedAt: !1030)
!1032 = !DILocation(line: 575, column: 17, scope: !999)
!1033 = !DILocation(line: 576, column: 17, scope: !999)
!1034 = !DILocation(line: 577, column: 17, scope: !999)
!1035 = !DILocation(line: 578, column: 17, scope: !999)
!1036 = !DILocation(line: 579, column: 17, scope: !999)
!1037 = !DILocation(line: 580, column: 3, scope: !999)
!1038 = !DILocation(line: 581, column: 3, scope: !999)
!1039 = !DILocation(line: 582, column: 82, scope: !999)
!1040 = !DILocation(line: 582, column: 50, scope: !999)
!1041 = !DILocation(line: 582, column: 25, scope: !999)
!1042 = !DILocation(line: 584, column: 84, scope: !999)
!1043 = !DILocation(line: 584, column: 52, scope: !999)
!1044 = !DILocation(line: 584, column: 27, scope: !999)
!1045 = !DILocation(line: 586, column: 86, scope: !999)
!1046 = !DILocation(line: 586, column: 54, scope: !999)
!1047 = !DILocation(line: 586, column: 29, scope: !999)
!1048 = !DILocation(line: 588, column: 88, scope: !999)
!1049 = !DILocation(line: 588, column: 56, scope: !999)
!1050 = !DILocation(line: 588, column: 31, scope: !999)
!1051 = !DILocation(line: 590, column: 45, scope: !999)
!1052 = !DILocation(line: 590, column: 13, scope: !999)
!1053 = !DILocation(line: 588, column: 11, scope: !999)
!1054 = !DILocation(line: 586, column: 9, scope: !999)
!1055 = !DILocation(line: 584, column: 7, scope: !999)
!1056 = !DILocation(line: 582, column: 5, scope: !999)
!1057 = !DILocation(line: 591, column: 3, scope: !999)
!1058 = !DILocation(line: 591, column: 19, scope: !999)
!1059 = !DILocation(line: 591, column: 26, scope: !999)
!1060 = !DILocation(line: 592, column: 3, scope: !999)
!1061 = !DILocalVariable(name: "n", arg: 2, scope: !1062, file: !37, line: 549, type: !106)
!1062 = distinct !DISubprogram(name: "store128_le", scope: !37, file: !37, line: 549, type: !1063, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1065)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !38, !106}
!1065 = !{!1066, !1061}
!1066 = !DILocalVariable(name: "b", arg: 1, scope: !1062, file: !37, line: 549, type: !38)
!1067 = !DILocation(line: 0, scope: !1062, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 592, column: 3, scope: !999)
!1069 = !DILocalVariable(name: "b", arg: 1, scope: !1070, file: !37, line: 522, type: !38)
!1070 = distinct !DISubprogram(name: "store128_le_", scope: !37, file: !37, line: 522, type: !113, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1071 = !{!1069, !1072}
!1072 = !DILocalVariable(name: "n", arg: 2, scope: !1070, file: !37, line: 522, type: !115)
!1073 = !DILocation(line: 0, scope: !1070, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 549, column: 59, scope: !1062, inlinedAt: !1068)
!1075 = !DILocalVariable(name: "b", arg: 1, scope: !1076, file: !37, line: 357, type: !38)
!1076 = distinct !DISubprogram(name: "store64", scope: !37, file: !37, line: 357, type: !1077, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1079)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !38, !6}
!1079 = !{!1075, !1080}
!1080 = !DILocalVariable(name: "i", arg: 2, scope: !1076, file: !37, line: 357, type: !6)
!1081 = !DILocation(line: 0, scope: !1076, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 523, column: 3, scope: !1070, inlinedAt: !1074)
!1083 = !DILocation(line: 357, column: 54, scope: !1076, inlinedAt: !1082)
!1084 = !DILocation(line: 524, column: 3, scope: !1070, inlinedAt: !1074)
!1085 = !DILocation(line: 0, scope: !1076, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 524, column: 3, scope: !1070, inlinedAt: !1074)
!1087 = !DILocation(line: 357, column: 54, scope: !1076, inlinedAt: !1086)
!1088 = !DILocation(line: 593, column: 1, scope: !999)
!1089 = !DISubprogram(name: "FStar_UInt128_add_mod", scope: !86, file: !86, line: 43, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !182)
!1090 = distinct !DISubprogram(name: "Hacl_Poly1305_32_crypto_onetimeauth", scope: !3, file: !3, line: 596, type: !1091, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1093)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !38, !38, !6, !38}
!1093 = !{!1094, !1095, !1096, !1097}
!1094 = !DILocalVariable(name: "output", arg: 1, scope: !1090, file: !3, line: 597, type: !38)
!1095 = !DILocalVariable(name: "input", arg: 2, scope: !1090, file: !3, line: 598, type: !38)
!1096 = !DILocalVariable(name: "len1", arg: 3, scope: !1090, file: !3, line: 599, type: !6)
!1097 = !DILocalVariable(name: "k1", arg: 4, scope: !1090, file: !3, line: 600, type: !38)
!1098 = !DILocation(line: 0, scope: !1090)
!1099 = !DILocalVariable(name: "output", arg: 1, scope: !1100, file: !3, line: 461, type: !38)
!1100 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_32_crypto_onetimeauth", scope: !3, file: !3, line: 460, type: !1091, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1101 = !{!1099, !1102, !1103, !1104}
!1102 = !DILocalVariable(name: "input", arg: 2, scope: !1100, file: !3, line: 462, type: !38)
!1103 = !DILocalVariable(name: "len1", arg: 3, scope: !1100, file: !3, line: 463, type: !6)
!1104 = !DILocalVariable(name: "k1", arg: 4, scope: !1100, file: !3, line: 464, type: !38)
!1105 = !DILocation(line: 0, scope: !1100, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 603, column: 3, scope: !1090)
!1107 = !DILocation(line: 0, scope: !1108, inlinedAt: !1133)
!1108 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_32_crypto_onetimeauth_", scope: !3, file: !3, line: 422, type: !1091, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132}
!1110 = !DILocalVariable(name: "output", arg: 1, scope: !1108, file: !3, line: 423, type: !38)
!1111 = !DILocalVariable(name: "input", arg: 2, scope: !1108, file: !3, line: 424, type: !38)
!1112 = !DILocalVariable(name: "len1", arg: 3, scope: !1108, file: !3, line: 425, type: !6)
!1113 = !DILocalVariable(name: "k1", arg: 4, scope: !1108, file: !3, line: 426, type: !38)
!1114 = !DILocalVariable(name: "buf", scope: !1108, file: !3, line: 429, type: !1115)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 10)
!1118 = !DILocalVariable(name: "r", scope: !1108, file: !3, line: 430, type: !52)
!1119 = !DILocalVariable(name: "h", scope: !1108, file: !3, line: 431, type: !52)
!1120 = !DILocalVariable(name: "st", scope: !1108, file: !3, line: 432, type: !47)
!1121 = !DILocalVariable(name: "key_s", scope: !1108, file: !3, line: 433, type: !38)
!1122 = !DILocalVariable(name: "scrut", scope: !1108, file: !3, line: 435, type: !47)
!1123 = !DILocalVariable(name: "h5", scope: !1108, file: !3, line: 436, type: !52)
!1124 = !DILocalVariable(name: "acc", scope: !1108, file: !3, line: 437, type: !52)
!1125 = !DILocalVariable(name: "k_", scope: !1108, file: !3, line: 438, type: !85)
!1126 = !DILocalVariable(name: "h0", scope: !1108, file: !3, line: 439, type: !11)
!1127 = !DILocalVariable(name: "h1", scope: !1108, file: !3, line: 440, type: !11)
!1128 = !DILocalVariable(name: "h2", scope: !1108, file: !3, line: 441, type: !11)
!1129 = !DILocalVariable(name: "h3", scope: !1108, file: !3, line: 442, type: !11)
!1130 = !DILocalVariable(name: "h4", scope: !1108, file: !3, line: 443, type: !11)
!1131 = !DILocalVariable(name: "acc_", scope: !1108, file: !3, line: 445, type: !85)
!1132 = !DILocalVariable(name: "mac_", scope: !1108, file: !3, line: 455, type: !85)
!1133 = distinct !DILocation(line: 467, column: 3, scope: !1100, inlinedAt: !1106)
!1134 = !DILocation(line: 429, column: 3, scope: !1108, inlinedAt: !1133)
!1135 = !DILocation(line: 429, column: 12, scope: !1108, inlinedAt: !1133)
!1136 = !DILocation(line: 430, column: 17, scope: !1108, inlinedAt: !1133)
!1137 = !DILocation(line: 431, column: 21, scope: !1108, inlinedAt: !1133)
!1138 = !DILocalVariable(name: "st", arg: 1, scope: !1139, file: !3, line: 401, type: !47)
!1139 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_32_poly1305_complete", scope: !3, file: !3, line: 400, type: !1140, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !47, !38, !6, !38}
!1142 = !{!1138, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1143 = !DILocalVariable(name: "m", arg: 2, scope: !1139, file: !3, line: 402, type: !38)
!1144 = !DILocalVariable(name: "len1", arg: 3, scope: !1139, file: !3, line: 403, type: !6)
!1145 = !DILocalVariable(name: "k1", arg: 4, scope: !1139, file: !3, line: 404, type: !38)
!1146 = !DILocalVariable(name: "kr", scope: !1139, file: !3, line: 407, type: !38)
!1147 = !DILocalVariable(name: "len16", scope: !1139, file: !3, line: 408, type: !6)
!1148 = !DILocalVariable(name: "rem16", scope: !1139, file: !3, line: 409, type: !6)
!1149 = !DILocalVariable(name: "part_input", scope: !1139, file: !3, line: 410, type: !38)
!1150 = !DILocalVariable(name: "last_block", scope: !1139, file: !3, line: 411, type: !38)
!1151 = !DILocalVariable(name: "scrut", scope: !1139, file: !3, line: 415, type: !47)
!1152 = !DILocalVariable(name: "h", scope: !1139, file: !3, line: 416, type: !52)
!1153 = !DILocalVariable(name: "acc", scope: !1139, file: !3, line: 417, type: !52)
!1154 = !DILocation(line: 0, scope: !1139, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 434, column: 3, scope: !1108, inlinedAt: !1133)
!1156 = !DILocation(line: 408, column: 25, scope: !1139, inlinedAt: !1155)
!1157 = !DILocation(line: 409, column: 25, scope: !1139, inlinedAt: !1155)
!1158 = !DILocation(line: 0, scope: !1159, inlinedAt: !1178)
!1159 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_32_poly1305_partial", scope: !3, file: !3, line: 349, type: !1140, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177}
!1161 = !DILocalVariable(name: "st", arg: 1, scope: !1159, file: !3, line: 350, type: !47)
!1162 = !DILocalVariable(name: "input", arg: 2, scope: !1159, file: !3, line: 351, type: !38)
!1163 = !DILocalVariable(name: "len1", arg: 3, scope: !1159, file: !3, line: 352, type: !6)
!1164 = !DILocalVariable(name: "kr", arg: 4, scope: !1159, file: !3, line: 353, type: !38)
!1165 = !DILocalVariable(name: "scrut", scope: !1159, file: !3, line: 356, type: !47)
!1166 = !DILocalVariable(name: "r", scope: !1159, file: !3, line: 357, type: !52)
!1167 = !DILocalVariable(name: "x0", scope: !1159, file: !3, line: 358, type: !52)
!1168 = !DILocalVariable(name: "k1", scope: !1159, file: !3, line: 359, type: !85)
!1169 = !DILocalVariable(name: "k_clamped", scope: !1159, file: !3, line: 361, type: !85)
!1170 = !DILocalVariable(name: "r0", scope: !1159, file: !3, line: 366, type: !11)
!1171 = !DILocalVariable(name: "r1", scope: !1159, file: !3, line: 368, type: !11)
!1172 = !DILocalVariable(name: "r2", scope: !1159, file: !3, line: 372, type: !11)
!1173 = !DILocalVariable(name: "r3", scope: !1159, file: !3, line: 376, type: !11)
!1174 = !DILocalVariable(name: "r4", scope: !1159, file: !3, line: 380, type: !11)
!1175 = !DILocalVariable(name: "scrut0", scope: !1159, file: !3, line: 388, type: !47)
!1176 = !DILocalVariable(name: "h", scope: !1159, file: !3, line: 389, type: !52)
!1177 = !DILocalVariable(name: "x00", scope: !1159, file: !3, line: 390, type: !52)
!1178 = distinct !DILocation(line: 412, column: 3, scope: !1139, inlinedAt: !1155)
!1179 = !DILocation(line: 0, scope: !103, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 359, column: 24, scope: !1159, inlinedAt: !1178)
!1181 = !DILocation(line: 0, scope: !112, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 545, column: 3, scope: !103, inlinedAt: !1180)
!1183 = !DILocation(line: 0, scope: !121, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 518, column: 12, scope: !112, inlinedAt: !1182)
!1185 = !DILocation(line: 349, column: 3, scope: !121, inlinedAt: !1184)
!1186 = !{!1187}
!1187 = distinct !{!1187, !1188, !"load128_le: argument 0"}
!1188 = distinct !{!1188, !"load128_le"}
!1189 = !DILocation(line: 519, column: 13, scope: !112, inlinedAt: !1182)
!1190 = !DILocation(line: 0, scope: !121, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 519, column: 13, scope: !112, inlinedAt: !1182)
!1192 = !DILocation(line: 349, column: 3, scope: !121, inlinedAt: !1191)
!1193 = !DILocation(line: 360, column: 3, scope: !1159, inlinedAt: !1178)
!1194 = !DILocation(line: 361, column: 3, scope: !1159, inlinedAt: !1178)
!1195 = !DILocation(line: 363, column: 52, scope: !1159, inlinedAt: !1178)
!1196 = !DILocation(line: 363, column: 27, scope: !1159, inlinedAt: !1178)
!1197 = !DILocation(line: 365, column: 9, scope: !1159, inlinedAt: !1178)
!1198 = !DILocation(line: 363, column: 7, scope: !1159, inlinedAt: !1178)
!1199 = !DILocation(line: 362, column: 5, scope: !1159, inlinedAt: !1178)
!1200 = !DILocation(line: 366, column: 27, scope: !1159, inlinedAt: !1178)
!1201 = !DILocation(line: 366, column: 17, scope: !1159, inlinedAt: !1178)
!1202 = !DILocation(line: 366, column: 70, scope: !1159, inlinedAt: !1178)
!1203 = !DILocation(line: 369, column: 47, scope: !1159, inlinedAt: !1178)
!1204 = !DILocation(line: 369, column: 15, scope: !1159, inlinedAt: !1178)
!1205 = !DILocation(line: 369, column: 5, scope: !1159, inlinedAt: !1178)
!1206 = !DILocation(line: 370, column: 5, scope: !1159, inlinedAt: !1178)
!1207 = !DILocation(line: 373, column: 47, scope: !1159, inlinedAt: !1178)
!1208 = !DILocation(line: 373, column: 15, scope: !1159, inlinedAt: !1178)
!1209 = !DILocation(line: 373, column: 5, scope: !1159, inlinedAt: !1178)
!1210 = !DILocation(line: 374, column: 5, scope: !1159, inlinedAt: !1178)
!1211 = !DILocation(line: 377, column: 47, scope: !1159, inlinedAt: !1178)
!1212 = !DILocation(line: 377, column: 15, scope: !1159, inlinedAt: !1178)
!1213 = !DILocation(line: 377, column: 5, scope: !1159, inlinedAt: !1178)
!1214 = !DILocation(line: 378, column: 5, scope: !1159, inlinedAt: !1178)
!1215 = !DILocation(line: 381, column: 47, scope: !1159, inlinedAt: !1178)
!1216 = !DILocation(line: 381, column: 15, scope: !1159, inlinedAt: !1178)
!1217 = !DILocation(line: 381, column: 5, scope: !1159, inlinedAt: !1178)
!1218 = !DILocation(line: 382, column: 5, scope: !1159, inlinedAt: !1178)
!1219 = !DILocation(line: 383, column: 10, scope: !1159, inlinedAt: !1178)
!1220 = !DILocation(line: 384, column: 3, scope: !1159, inlinedAt: !1178)
!1221 = !DILocation(line: 384, column: 10, scope: !1159, inlinedAt: !1178)
!1222 = !DILocation(line: 385, column: 3, scope: !1159, inlinedAt: !1178)
!1223 = !DILocation(line: 385, column: 10, scope: !1159, inlinedAt: !1178)
!1224 = !DILocation(line: 386, column: 3, scope: !1159, inlinedAt: !1178)
!1225 = !DILocation(line: 386, column: 10, scope: !1159, inlinedAt: !1178)
!1226 = !DILocation(line: 387, column: 3, scope: !1159, inlinedAt: !1178)
!1227 = !DILocation(line: 387, column: 10, scope: !1159, inlinedAt: !1178)
!1228 = !DILocation(line: 396, column: 3, scope: !1159, inlinedAt: !1178)
!1229 = !DILocation(line: 392, column: 11, scope: !1159, inlinedAt: !1178)
!1230 = !DILocation(line: 397, column: 1, scope: !1159, inlinedAt: !1178)
!1231 = !DILocation(line: 413, column: 15, scope: !1232, inlinedAt: !1155)
!1232 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 413, column: 7)
!1233 = !DILocation(line: 413, column: 7, scope: !1139, inlinedAt: !1155)
!1234 = !DILocation(line: 411, column: 29, scope: !1139, inlinedAt: !1155)
!1235 = !DILocation(line: 411, column: 27, scope: !1139, inlinedAt: !1155)
!1236 = !DILocation(line: 414, column: 5, scope: !1232, inlinedAt: !1155)
!1237 = !DILocation(line: 433, column: 23, scope: !1108, inlinedAt: !1133)
!1238 = !DILocation(line: 418, column: 3, scope: !1139, inlinedAt: !1155)
!1239 = !DILocation(line: 0, scope: !103, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 438, column: 24, scope: !1108, inlinedAt: !1133)
!1241 = !DILocation(line: 0, scope: !112, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 545, column: 3, scope: !103, inlinedAt: !1240)
!1243 = !DILocation(line: 0, scope: !121, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 518, column: 12, scope: !112, inlinedAt: !1242)
!1245 = !DILocation(line: 349, column: 3, scope: !121, inlinedAt: !1244)
!1246 = !{!1247}
!1247 = distinct !{!1247, !1248, !"load128_le: argument 0"}
!1248 = distinct !{!1248, !"load128_le"}
!1249 = !DILocation(line: 519, column: 13, scope: !112, inlinedAt: !1242)
!1250 = !DILocation(line: 0, scope: !121, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 519, column: 13, scope: !112, inlinedAt: !1242)
!1252 = !DILocation(line: 349, column: 3, scope: !121, inlinedAt: !1251)
!1253 = !DILocation(line: 439, column: 17, scope: !1108, inlinedAt: !1133)
!1254 = !DILocation(line: 440, column: 17, scope: !1108, inlinedAt: !1133)
!1255 = !DILocation(line: 441, column: 17, scope: !1108, inlinedAt: !1133)
!1256 = !DILocation(line: 442, column: 17, scope: !1108, inlinedAt: !1133)
!1257 = !DILocation(line: 443, column: 17, scope: !1108, inlinedAt: !1133)
!1258 = !DILocation(line: 444, column: 3, scope: !1108, inlinedAt: !1133)
!1259 = !DILocation(line: 445, column: 3, scope: !1108, inlinedAt: !1133)
!1260 = !DILocation(line: 446, column: 82, scope: !1108, inlinedAt: !1133)
!1261 = !DILocation(line: 446, column: 50, scope: !1108, inlinedAt: !1133)
!1262 = !DILocation(line: 446, column: 25, scope: !1108, inlinedAt: !1133)
!1263 = !DILocation(line: 448, column: 84, scope: !1108, inlinedAt: !1133)
!1264 = !DILocation(line: 448, column: 52, scope: !1108, inlinedAt: !1133)
!1265 = !DILocation(line: 448, column: 27, scope: !1108, inlinedAt: !1133)
!1266 = !DILocation(line: 450, column: 86, scope: !1108, inlinedAt: !1133)
!1267 = !DILocation(line: 450, column: 54, scope: !1108, inlinedAt: !1133)
!1268 = !DILocation(line: 450, column: 29, scope: !1108, inlinedAt: !1133)
!1269 = !DILocation(line: 452, column: 88, scope: !1108, inlinedAt: !1133)
!1270 = !DILocation(line: 452, column: 56, scope: !1108, inlinedAt: !1133)
!1271 = !DILocation(line: 452, column: 31, scope: !1108, inlinedAt: !1133)
!1272 = !DILocation(line: 454, column: 45, scope: !1108, inlinedAt: !1133)
!1273 = !DILocation(line: 454, column: 13, scope: !1108, inlinedAt: !1133)
!1274 = !DILocation(line: 452, column: 11, scope: !1108, inlinedAt: !1133)
!1275 = !DILocation(line: 450, column: 9, scope: !1108, inlinedAt: !1133)
!1276 = !DILocation(line: 448, column: 7, scope: !1108, inlinedAt: !1133)
!1277 = !DILocation(line: 446, column: 5, scope: !1108, inlinedAt: !1133)
!1278 = !DILocation(line: 455, column: 3, scope: !1108, inlinedAt: !1133)
!1279 = !DILocation(line: 455, column: 19, scope: !1108, inlinedAt: !1133)
!1280 = !DILocation(line: 455, column: 26, scope: !1108, inlinedAt: !1133)
!1281 = !DILocation(line: 456, column: 3, scope: !1108, inlinedAt: !1133)
!1282 = !DILocation(line: 0, scope: !1062, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 456, column: 3, scope: !1108, inlinedAt: !1133)
!1284 = !DILocation(line: 0, scope: !1070, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 549, column: 59, scope: !1062, inlinedAt: !1283)
!1286 = !DILocation(line: 0, scope: !1076, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 523, column: 3, scope: !1070, inlinedAt: !1285)
!1288 = !DILocation(line: 357, column: 54, scope: !1076, inlinedAt: !1287)
!1289 = !DILocation(line: 524, column: 3, scope: !1070, inlinedAt: !1285)
!1290 = !DILocation(line: 0, scope: !1076, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 524, column: 3, scope: !1070, inlinedAt: !1285)
!1292 = !DILocation(line: 357, column: 54, scope: !1076, inlinedAt: !1291)
!1293 = !DILocation(line: 457, column: 1, scope: !1108, inlinedAt: !1133)
!1294 = !DILocation(line: 604, column: 1, scope: !1090)
!1295 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_32_poly1305_blocks", scope: !3, file: !3, line: 332, type: !547, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1296)
!1296 = !{!1297, !1298, !1299, !1300, !1303, !1304}
!1297 = !DILocalVariable(name: "st", arg: 1, scope: !1295, file: !3, line: 333, type: !47)
!1298 = !DILocalVariable(name: "m", arg: 2, scope: !1295, file: !3, line: 334, type: !38)
!1299 = !DILocalVariable(name: "len1", arg: 3, scope: !1295, file: !3, line: 335, type: !6)
!1300 = !DILocalVariable(name: "block", scope: !1301, file: !3, line: 340, type: !38)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 339, column: 3)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 338, column: 7)
!1303 = !DILocalVariable(name: "tail1", scope: !1301, file: !3, line: 341, type: !38)
!1304 = !DILocalVariable(name: "len2", scope: !1301, file: !3, line: 343, type: !6)
!1305 = !DILocation(line: 0, scope: !1295)
!1306 = !DILocation(line: 338, column: 14, scope: !1302)
!1307 = !DILocation(line: 338, column: 7, scope: !1295)
!1308 = !DILocation(line: 0, scope: !1301)
!1309 = !DILocation(line: 341, column: 24, scope: !1301)
!1310 = !DILocation(line: 342, column: 5, scope: !1301)
!1311 = !DILocation(line: 343, column: 26, scope: !1301)
!1312 = !DILocation(line: 344, column: 5, scope: !1301)
!1313 = !DILocation(line: 345, column: 3, scope: !1301)
!1314 = !DILocation(line: 346, column: 1, scope: !1295)
