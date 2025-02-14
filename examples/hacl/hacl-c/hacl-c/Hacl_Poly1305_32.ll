; ModuleID = 'hacl-c/hacl-c/Hacl_Poly1305_32.c'
source_filename = "hacl-c/hacl-c/Hacl_Poly1305_32.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_32_State_poly1305_state = type { i32*, i32* }
%struct.FStar_UInt128_uint128 = type { i64, i64 }

@Hacl_Poly1305_32_empty_log = dso_local local_unnamed_addr global i8* null, align 4, !dbg !0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias i8* @Hacl_Poly1305_32_op_String_Access(i8* nocapture noundef readnone %0, i8* nocapture noundef readnone %1) local_unnamed_addr #0 !dbg !33 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !40, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i8* %1, metadata !41, metadata !DIExpression()), !dbg !42
  ret i8* null, !dbg !43
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_Poly1305_32_mk_state(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state* noalias nocapture writeonly sret(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state) align 4 %0, i32* noundef %1, i32* noundef %2) local_unnamed_addr #2 !dbg !44 {
  call void @llvm.dbg.value(metadata i32* %1, metadata !55, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32* %2, metadata !56, metadata !DIExpression()), !dbg !57
  call fastcc void @Hacl_Impl_Poly1305_32_mk_state(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state* sret(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state) align 4 %0, i32* noundef %1, i32* noundef %2), !dbg !58
  ret void, !dbg !59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_Poly1305_32_mk_state(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state* noalias nocapture writeonly sret(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state) align 4 %0, i32* noundef %1, i32* noundef %2) unnamed_addr #2 !dbg !60 {
  call void @llvm.dbg.value(metadata i32* %1, metadata !62, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32* %2, metadata !63, metadata !DIExpression()), !dbg !64
  %4 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, %struct.Hacl_Impl_Poly1305_32_State_poly1305_state* %0, i32 0, i32 0, !dbg !65
  store i32* %1, i32** %4, align 4, !dbg !65, !tbaa !66
  %5 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, %struct.Hacl_Impl_Poly1305_32_State_poly1305_state* %0, i32 0, i32 1, !dbg !65
  store i32* %2, i32** %5, align 4, !dbg !65, !tbaa !71
  ret void, !dbg !72
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_init(i32* nocapture writeonly %0, i32* nocapture writeonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #3 !dbg !73 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !77, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  call void @llvm.dbg.value(metadata i32* %1, metadata !77, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  call void @llvm.dbg.value(metadata i8* %2, metadata !78, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32* %0, metadata !79, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  call void @llvm.dbg.value(metadata i32* %1, metadata !79, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  call void @llvm.dbg.value(metadata i32* %0, metadata !80, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32* %0, metadata !81, metadata !DIExpression()), !dbg !99
  %14 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #15, !dbg !100
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !82, metadata !DIExpression()), !dbg !101
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i8* noundef %2), !dbg !102
  %15 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #15, !dbg !103
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !90, metadata !DIExpression()), !dbg !104
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 1152921487695413244) #15, !dbg !105
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !106
  %17 = load i64, i64* %16, align 8, !dbg !106, !tbaa !107
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !106
  %19 = load i64, i64* %18, align 8, !dbg !106, !tbaa !110
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %17, i64 %19, i32 noundef 64) #15, !dbg !106
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef 1152921487695413247) #15, !dbg !111
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !112
  %21 = load i64, i64* %20, align 8, !dbg !112, !tbaa !107
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !112
  %23 = load i64, i64* %22, align 8, !dbg !112, !tbaa !110
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !112
  %25 = load i64, i64* %24, align 8, !dbg !112, !tbaa !107
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !112
  %27 = load i64, i64* %26, align 8, !dbg !112, !tbaa !110
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %21, i64 %23, i64 %25, i64 %27) #15, !dbg !112
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !113
  %29 = load i64, i64* %28, align 8, !dbg !113, !tbaa !107
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !113
  %31 = load i64, i64* %30, align 8, !dbg !113, !tbaa !110
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !113
  %33 = load i64, i64* %32, align 8, !dbg !113, !tbaa !107
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !113
  %35 = load i64, i64* %34, align 8, !dbg !113, !tbaa !110
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %29, i64 %31, i64 %33, i64 %35) #15, !dbg !113
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !114
  %37 = load i64, i64* %36, align 8, !dbg !114, !tbaa !107
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !114
  %39 = load i64, i64* %38, align 8, !dbg !114, !tbaa !110
  %40 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %37, i64 %39) #15, !dbg !114
  %41 = trunc i64 %40 to i32, !dbg !115
  %42 = and i32 %41, 67108863, !dbg !116
  call void @llvm.dbg.value(metadata i32 %42, metadata !91, metadata !DIExpression()), !dbg !99
  %43 = load i64, i64* %36, align 8, !dbg !117, !tbaa !107
  %44 = load i64, i64* %38, align 8, !dbg !117, !tbaa !110
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %43, i64 %44, i32 noundef 26) #15, !dbg !117
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !118
  %46 = load i64, i64* %45, align 8, !dbg !118, !tbaa !107
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !118
  %48 = load i64, i64* %47, align 8, !dbg !118, !tbaa !110
  %49 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %46, i64 %48) #15, !dbg !118
  %50 = trunc i64 %49 to i32, !dbg !119
  %51 = and i32 %50, 67108863, !dbg !120
  call void @llvm.dbg.value(metadata i32 %51, metadata !92, metadata !DIExpression()), !dbg !99
  %52 = load i64, i64* %36, align 8, !dbg !121, !tbaa !107
  %53 = load i64, i64* %38, align 8, !dbg !121, !tbaa !110
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %52, i64 %53, i32 noundef 52) #15, !dbg !121
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !122
  %55 = load i64, i64* %54, align 8, !dbg !122, !tbaa !107
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !122
  %57 = load i64, i64* %56, align 8, !dbg !122, !tbaa !110
  %58 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %55, i64 %57) #15, !dbg !122
  %59 = trunc i64 %58 to i32, !dbg !123
  %60 = and i32 %59, 67108863, !dbg !124
  call void @llvm.dbg.value(metadata i32 %60, metadata !93, metadata !DIExpression()), !dbg !99
  %61 = load i64, i64* %36, align 8, !dbg !125, !tbaa !107
  %62 = load i64, i64* %38, align 8, !dbg !125, !tbaa !110
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %61, i64 %62, i32 noundef 78) #15, !dbg !125
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !126
  %64 = load i64, i64* %63, align 8, !dbg !126, !tbaa !107
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !126
  %66 = load i64, i64* %65, align 8, !dbg !126, !tbaa !110
  %67 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %64, i64 %66) #15, !dbg !126
  %68 = trunc i64 %67 to i32, !dbg !127
  %69 = and i32 %68, 67108863, !dbg !128
  call void @llvm.dbg.value(metadata i32 %69, metadata !94, metadata !DIExpression()), !dbg !99
  %70 = load i64, i64* %36, align 8, !dbg !129, !tbaa !107
  %71 = load i64, i64* %38, align 8, !dbg !129, !tbaa !110
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %70, i64 %71, i32 noundef 104) #15, !dbg !129
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !130
  %73 = load i64, i64* %72, align 8, !dbg !130, !tbaa !107
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !130
  %75 = load i64, i64* %74, align 8, !dbg !130, !tbaa !110
  %76 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %73, i64 %75) #15, !dbg !130
  %77 = trunc i64 %76 to i32, !dbg !131
  %78 = and i32 %77, 67108863, !dbg !132
  call void @llvm.dbg.value(metadata i32 %78, metadata !95, metadata !DIExpression()), !dbg !99
  store i32 %42, i32* %0, align 4, !dbg !133, !tbaa !134
  %79 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !136
  store i32 %51, i32* %79, align 4, !dbg !137, !tbaa !134
  %80 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !138
  store i32 %60, i32* %80, align 4, !dbg !139, !tbaa !134
  %81 = getelementptr inbounds i32, i32* %0, i32 3, !dbg !140
  store i32 %69, i32* %81, align 4, !dbg !141, !tbaa !134
  %82 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !142
  store i32 %78, i32* %82, align 4, !dbg !143, !tbaa !134
  call void @llvm.dbg.value(metadata i32* %0, metadata !96, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !99
  call void @llvm.dbg.value(metadata i32* %1, metadata !96, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !99
  call void @llvm.dbg.value(metadata i32* %1, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32* %1, metadata !98, metadata !DIExpression()), !dbg !99
  %83 = bitcast i32* %1 to i8*, !dbg !144
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %83, i8 0, i64 20, i1 false), !dbg !145
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #15, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #15, !dbg !144
  ret void, !dbg !144
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @load128_le(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i8* nocapture noundef readonly %1) unnamed_addr #6 !dbg !146 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !152, metadata !DIExpression(DW_OP_deref)), !dbg !153
  call void @llvm.dbg.value(metadata i8* %1, metadata !151, metadata !DIExpression()), !dbg !153
  call fastcc void @load128_le_(i8* noundef %1, %struct.FStar_UInt128_uint128* noundef %0), !dbg !154
  ret void, !dbg !155
}

declare !dbg !156 void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #7

declare !dbg !160 void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #7

declare !dbg !161 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #7

declare !dbg !164 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #7

declare !dbg !167 i64 @FStar_UInt128_uint128_to_uint64(i64, i64) local_unnamed_addr #7

declare !dbg !170 void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update_block(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2) local_unnamed_addr #8 !dbg !171 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !173, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !175
  call void @llvm.dbg.value(metadata i32* %1, metadata !173, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !175
  call void @llvm.dbg.value(metadata i8* %2, metadata !174, metadata !DIExpression()), !dbg !175
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_update(i32* %0, i32* %1, i8* noundef %2), !dbg !176
  ret void, !dbg !177
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_update(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2) unnamed_addr #8 !dbg !178 {
  %4 = alloca [5 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !180, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i32* %1, metadata !180, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i8* %2, metadata !181, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i32* %0, metadata !182, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i32* %1, metadata !182, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i32* %1, metadata !183, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i32* %1, metadata !184, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i32* %0, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i32* %1, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !209
  call void @llvm.dbg.value(metadata i32* %0, metadata !186, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i32* %0, metadata !187, metadata !DIExpression()), !dbg !209
  %5 = bitcast [5 x i32]* %4 to i8*, !dbg !210
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #15, !dbg !210
  call void @llvm.dbg.declare(metadata [5 x i32]* %4, metadata !188, metadata !DIExpression()), !dbg !211
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !dbg !211
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !209
  %6 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !212
  call void @llvm.dbg.value(metadata i8* %6, metadata !193, metadata !DIExpression()), !dbg !209
  %7 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !213
  call void @llvm.dbg.value(metadata i8* %7, metadata !194, metadata !DIExpression()), !dbg !209
  %8 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !214
  call void @llvm.dbg.value(metadata i8* %8, metadata !195, metadata !DIExpression()), !dbg !209
  %9 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !215
  call void @llvm.dbg.value(metadata i8* %9, metadata !196, metadata !DIExpression()), !dbg !209
  %10 = call fastcc i32 @load32(i8* noundef %2), !dbg !216
  call void @llvm.dbg.value(metadata i32 %10, metadata !197, metadata !DIExpression()), !dbg !209
  %11 = call fastcc i32 @load32(i8* noundef nonnull %6), !dbg !217
  call void @llvm.dbg.value(metadata i32 %11, metadata !198, metadata !DIExpression()), !dbg !209
  %12 = call fastcc i32 @load32(i8* noundef nonnull %7), !dbg !218
  call void @llvm.dbg.value(metadata i32 %12, metadata !199, metadata !DIExpression()), !dbg !209
  %13 = call fastcc i32 @load32(i8* noundef nonnull %8), !dbg !219
  call void @llvm.dbg.value(metadata i32 %13, metadata !200, metadata !DIExpression()), !dbg !209
  %14 = call fastcc i32 @load32(i8* noundef nonnull %9), !dbg !220
  call void @llvm.dbg.value(metadata i32 %14, metadata !201, metadata !DIExpression()), !dbg !209
  %15 = and i32 %10, 67108863, !dbg !221
  call void @llvm.dbg.value(metadata i32 %15, metadata !202, metadata !DIExpression()), !dbg !209
  %16 = lshr i32 %11, 2, !dbg !222
  %17 = and i32 %16, 67108863, !dbg !223
  call void @llvm.dbg.value(metadata i32 %17, metadata !203, metadata !DIExpression()), !dbg !209
  %18 = lshr i32 %12, 4, !dbg !224
  %19 = and i32 %18, 67108863, !dbg !225
  call void @llvm.dbg.value(metadata i32 %19, metadata !204, metadata !DIExpression()), !dbg !209
  %20 = lshr i32 %13, 6, !dbg !226
  call void @llvm.dbg.value(metadata i32 %20, metadata !205, metadata !DIExpression()), !dbg !209
  %21 = lshr i32 %14, 8, !dbg !227
  call void @llvm.dbg.value(metadata i32 %21, metadata !206, metadata !DIExpression()), !dbg !209
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 0, !dbg !228
  store i32 %15, i32* %22, align 4, !dbg !229, !tbaa !134
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 1, !dbg !230
  store i32 %17, i32* %23, align 4, !dbg !231, !tbaa !134
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 2, !dbg !232
  store i32 %19, i32* %24, align 4, !dbg !233, !tbaa !134
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 3, !dbg !234
  store i32 %20, i32* %25, align 4, !dbg !235, !tbaa !134
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 4, !dbg !236
  call void @llvm.dbg.value(metadata i32 %21, metadata !207, metadata !DIExpression()), !dbg !209
  %27 = or i32 %21, 16777216, !dbg !237
  call void @llvm.dbg.value(metadata i32 %27, metadata !208, metadata !DIExpression()), !dbg !209
  store i32 %27, i32* %26, align 4, !dbg !238, !tbaa !134
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i32* noundef %1, i32* noundef nonnull %22, i32* noundef %0), !dbg !239
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #15, !dbg !240
  ret void, !dbg !240
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #8 !dbg !241 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !245, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !253
  call void @llvm.dbg.value(metadata i32* %1, metadata !245, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !253
  call void @llvm.dbg.value(metadata i8* %2, metadata !246, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %3, metadata !247, metadata !DIExpression()), !dbg !253
  %5 = icmp eq i32 %3, 0, !dbg !254
  br i1 %5, label %9, label %6, !dbg !255

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !248, metadata !DIExpression()), !dbg !256
  %7 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !257
  call void @llvm.dbg.value(metadata i8* %7, metadata !251, metadata !DIExpression()), !dbg !256
  %8 = add i32 %3, -1, !dbg !258
  call void @llvm.dbg.value(metadata i32 %8, metadata !252, metadata !DIExpression()), !dbg !256
  call void @Hacl_Poly1305_32_update_block(i32* %0, i32* %1, i8* noundef %2), !dbg !259
  call void @Hacl_Poly1305_32_update(i32* %0, i32* %1, i8* noundef nonnull %7, i32 noundef %8), !dbg !260
  br label %9, !dbg !261

9:                                                ; preds = %6, %4
  ret void, !dbg !262
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update_last(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #8 !dbg !263 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !271
  call void @llvm.dbg.value(metadata i32* %1, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !271
  call void @llvm.dbg.value(metadata i8* %2, metadata !266, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i32 %3, metadata !267, metadata !DIExpression()), !dbg !271
  %5 = icmp eq i32 %3, 0, !dbg !272
  br i1 %5, label %8, label %6, !dbg !274

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !275
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(i32* %0, i32* %1, i8* noundef %2, i64 noundef %7), !dbg !276
  br label %8, !dbg !276

8:                                                ; preds = %6, %4
  call void @llvm.dbg.value(metadata i32* %0, metadata !268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !271
  call void @llvm.dbg.value(metadata i32* %1, metadata !268, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !271
  call void @llvm.dbg.value(metadata i32* %1, metadata !269, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i32* %1, metadata !270, metadata !DIExpression()), !dbg !271
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_last_pass(i32* noundef %1), !dbg !277
  ret void, !dbg !278
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #8 !dbg !279 {
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !295
  call void @llvm.dbg.value(metadata i32* %0, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !295
  call void @llvm.dbg.value(metadata i32* %1, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !295
  call void @llvm.dbg.value(metadata i8* %2, metadata !284, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 %3, metadata !285, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8 0, metadata !286, metadata !DIExpression()), !dbg !295
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !296
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #15, !dbg !296
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !287, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i32 0, metadata !291, metadata !DIExpression()), !dbg !298
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !dbg !299, !tbaa !301
  call void @llvm.dbg.value(metadata i32 undef, metadata !291, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i32 undef, metadata !291, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !298
  %8 = trunc i64 %3 to i32, !dbg !302
  call void @llvm.dbg.value(metadata i32 %8, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 %8, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %7, i8* align 1 %2, i32 %8, i1 false), !dbg !303
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 %8, !dbg !304
  store i8 1, i8* %9, align 1, !dbg !305, !tbaa !301
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block_(i8* noundef nonnull %7, i32* %0, i32* %1), !dbg !306
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #15, !dbg !307
  ret void, !dbg !307
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_last_pass(i32* nocapture noundef %0) unnamed_addr #9 !dbg !308 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !312, metadata !DIExpression()), !dbg !360
  call fastcc void @Hacl_Bignum_Fproduct_carry_limb_(i32* noundef %0), !dbg !361
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i32* noundef %0), !dbg !362
  %2 = load i32, i32* %0, align 4, !dbg !363, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %2, metadata !313, metadata !DIExpression()), !dbg !360
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !364
  %4 = load i32, i32* %3, align 4, !dbg !364, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %4, metadata !314, metadata !DIExpression()), !dbg !360
  %5 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !365
  %6 = load i32, i32* %5, align 4, !dbg !365, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %6, metadata !315, metadata !DIExpression()), !dbg !360
  %7 = getelementptr inbounds i32, i32* %0, i32 3, !dbg !366
  %8 = load i32, i32* %7, align 4, !dbg !366, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %8, metadata !316, metadata !DIExpression()), !dbg !360
  %9 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !367
  %10 = load i32, i32* %9, align 4, !dbg !367, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %10, metadata !317, metadata !DIExpression()), !dbg !360
  %11 = lshr i32 %2, 26, !dbg !368
  %12 = add i32 %4, %11, !dbg !369
  call void @llvm.dbg.value(metadata i32 %12, metadata !318, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i32 67108863, metadata !319, metadata !DIExpression()), !dbg !360
  %13 = and i32 %2, 67108863, !dbg !370
  call void @llvm.dbg.value(metadata i32 %13, metadata !320, metadata !DIExpression()), !dbg !360
  %14 = lshr i32 %12, 26, !dbg !371
  %15 = add i32 %14, %6, !dbg !372
  call void @llvm.dbg.value(metadata i32 %15, metadata !321, metadata !DIExpression()), !dbg !360
  %16 = and i32 %12, 67108863, !dbg !373
  call void @llvm.dbg.value(metadata i32 %16, metadata !322, metadata !DIExpression()), !dbg !360
  %17 = lshr i32 %15, 26, !dbg !374
  %18 = add i32 %17, %8, !dbg !375
  call void @llvm.dbg.value(metadata i32 %18, metadata !323, metadata !DIExpression()), !dbg !360
  %19 = and i32 %15, 67108863, !dbg !376
  call void @llvm.dbg.value(metadata i32 %19, metadata !324, metadata !DIExpression()), !dbg !360
  %20 = lshr i32 %18, 26, !dbg !377
  %21 = add i32 %20, %10, !dbg !378
  call void @llvm.dbg.value(metadata i32 %21, metadata !325, metadata !DIExpression()), !dbg !360
  %22 = and i32 %18, 67108863, !dbg !379
  call void @llvm.dbg.value(metadata i32 %22, metadata !326, metadata !DIExpression()), !dbg !360
  store i32 %13, i32* %0, align 4, !dbg !380, !tbaa !134
  store i32 %16, i32* %3, align 4, !dbg !381, !tbaa !134
  store i32 %19, i32* %5, align 4, !dbg !382, !tbaa !134
  store i32 %22, i32* %7, align 4, !dbg !383, !tbaa !134
  store i32 %21, i32* %9, align 4, !dbg !384, !tbaa !134
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i32* noundef nonnull %0), !dbg !385
  %23 = load i32, i32* %0, align 4, !dbg !386, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %23, metadata !327, metadata !DIExpression()), !dbg !360
  %24 = load i32, i32* %3, align 4, !dbg !387, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %24, metadata !328, metadata !DIExpression()), !dbg !360
  %25 = load i32, i32* %5, align 4, !dbg !388, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %25, metadata !329, metadata !DIExpression()), !dbg !360
  %26 = load i32, i32* %7, align 4, !dbg !389, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %26, metadata !330, metadata !DIExpression()), !dbg !360
  %27 = load i32, i32* %9, align 4, !dbg !390, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %27, metadata !331, metadata !DIExpression()), !dbg !360
  %28 = lshr i32 %23, 26, !dbg !391
  %29 = add i32 %24, %28, !dbg !392
  call void @llvm.dbg.value(metadata i32 %29, metadata !332, metadata !DIExpression()), !dbg !360
  %30 = and i32 %23, 67108863, !dbg !393
  call void @llvm.dbg.value(metadata i32 %30, metadata !333, metadata !DIExpression()), !dbg !360
  %31 = lshr i32 %29, 26, !dbg !394
  %32 = add i32 %31, %25, !dbg !395
  call void @llvm.dbg.value(metadata i32 %32, metadata !334, metadata !DIExpression()), !dbg !360
  %33 = and i32 %29, 67108863, !dbg !396
  call void @llvm.dbg.value(metadata i32 %33, metadata !335, metadata !DIExpression()), !dbg !360
  %34 = lshr i32 %32, 26, !dbg !397
  %35 = add i32 %34, %26, !dbg !398
  call void @llvm.dbg.value(metadata i32 %35, metadata !336, metadata !DIExpression()), !dbg !360
  %36 = and i32 %32, 67108863, !dbg !399
  call void @llvm.dbg.value(metadata i32 %36, metadata !337, metadata !DIExpression()), !dbg !360
  %37 = lshr i32 %35, 26, !dbg !400
  %38 = add i32 %37, %27, !dbg !401
  call void @llvm.dbg.value(metadata i32 %38, metadata !338, metadata !DIExpression()), !dbg !360
  %39 = and i32 %35, 67108863, !dbg !402
  call void @llvm.dbg.value(metadata i32 %39, metadata !339, metadata !DIExpression()), !dbg !360
  store i32 %30, i32* %0, align 4, !dbg !403, !tbaa !134
  store i32 %33, i32* %3, align 4, !dbg !404, !tbaa !134
  store i32 %36, i32* %5, align 4, !dbg !405, !tbaa !134
  store i32 %39, i32* %7, align 4, !dbg !406, !tbaa !134
  store i32 %38, i32* %9, align 4, !dbg !407, !tbaa !134
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i32* noundef nonnull %0), !dbg !408
  %40 = load i32, i32* %0, align 4, !dbg !409, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %40, metadata !340, metadata !DIExpression()), !dbg !360
  %41 = load i32, i32* %3, align 4, !dbg !410, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %41, metadata !341, metadata !DIExpression()), !dbg !360
  %42 = and i32 %40, 67108863, !dbg !411
  call void @llvm.dbg.value(metadata i32 %42, metadata !342, metadata !DIExpression()), !dbg !360
  %43 = lshr i32 %40, 26, !dbg !412
  %44 = add i32 %41, %43, !dbg !413
  call void @llvm.dbg.value(metadata i32 %44, metadata !343, metadata !DIExpression()), !dbg !360
  store i32 %42, i32* %0, align 4, !dbg !414, !tbaa !134
  store i32 %44, i32* %3, align 4, !dbg !415, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %42, metadata !344, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i32 %44, metadata !345, metadata !DIExpression()), !dbg !360
  %45 = load i32, i32* %5, align 4, !dbg !416, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %45, metadata !346, metadata !DIExpression()), !dbg !360
  %46 = load i32, i32* %7, align 4, !dbg !417, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %46, metadata !347, metadata !DIExpression()), !dbg !360
  %47 = load i32, i32* %9, align 4, !dbg !418, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %47, metadata !348, metadata !DIExpression()), !dbg !360
  %48 = call fastcc i32 @FStar_UInt32_gte_mask(i32 noundef %42), !dbg !419
  call void @llvm.dbg.value(metadata i32 %48, metadata !349, metadata !DIExpression()), !dbg !360
  %49 = call fastcc i32 @FStar_UInt32_eq_mask(i32 noundef %44), !dbg !420
  call void @llvm.dbg.value(metadata i32 %49, metadata !350, metadata !DIExpression()), !dbg !360
  %50 = call fastcc i32 @FStar_UInt32_eq_mask(i32 noundef %45), !dbg !421
  call void @llvm.dbg.value(metadata i32 %50, metadata !351, metadata !DIExpression()), !dbg !360
  %51 = call fastcc i32 @FStar_UInt32_eq_mask(i32 noundef %46), !dbg !422
  call void @llvm.dbg.value(metadata i32 %51, metadata !352, metadata !DIExpression()), !dbg !360
  %52 = call fastcc i32 @FStar_UInt32_eq_mask(i32 noundef %47), !dbg !423
  call void @llvm.dbg.value(metadata i32 %52, metadata !353, metadata !DIExpression()), !dbg !360
  %53 = and i32 %49, %48, !dbg !424
  %54 = and i32 %53, %50, !dbg !425
  %55 = and i32 %54, %51, !dbg !426
  %56 = and i32 %55, %52, !dbg !427
  call void @llvm.dbg.value(metadata i32 %56, metadata !354, metadata !DIExpression()), !dbg !360
  %57 = and i32 %56, 67108859, !dbg !428
  %58 = sub nsw i32 %42, %57, !dbg !429
  call void @llvm.dbg.value(metadata i32 %58, metadata !355, metadata !DIExpression()), !dbg !360
  %59 = and i32 %56, 67108863, !dbg !430
  %60 = sub i32 %44, %59, !dbg !431
  call void @llvm.dbg.value(metadata i32 %60, metadata !356, metadata !DIExpression()), !dbg !360
  %61 = sub i32 %45, %59, !dbg !432
  call void @llvm.dbg.value(metadata i32 %61, metadata !357, metadata !DIExpression()), !dbg !360
  %62 = sub i32 %46, %59, !dbg !433
  call void @llvm.dbg.value(metadata i32 %62, metadata !358, metadata !DIExpression()), !dbg !360
  %63 = sub i32 %47, %59, !dbg !434
  call void @llvm.dbg.value(metadata i32 %63, metadata !359, metadata !DIExpression()), !dbg !360
  store i32 %58, i32* %0, align 4, !dbg !435, !tbaa !134
  store i32 %60, i32* %3, align 4, !dbg !436, !tbaa !134
  store i32 %61, i32* %5, align 4, !dbg !437, !tbaa !134
  store i32 %62, i32* %7, align 4, !dbg !438, !tbaa !134
  store i32 %63, i32* %9, align 4, !dbg !439, !tbaa !134
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_finish(i32* nocapture readnone %0, i32* nocapture readonly %1, i8* nocapture noundef writeonly %2, i8* nocapture noundef readonly %3) local_unnamed_addr #3 !dbg !441 {
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
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !445, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !459
  call void @llvm.dbg.value(metadata i32* %1, metadata !445, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !459
  call void @llvm.dbg.value(metadata i8* %2, metadata !446, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i8* %3, metadata !447, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32* %0, metadata !448, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !459
  call void @llvm.dbg.value(metadata i32* %1, metadata !448, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !459
  call void @llvm.dbg.value(metadata i32* %1, metadata !449, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32* %1, metadata !450, metadata !DIExpression()), !dbg !459
  %20 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !460
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #15, !dbg !460
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !451, metadata !DIExpression()), !dbg !461
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i8* noundef %3), !dbg !462
  %21 = load i32, i32* %1, align 4, !dbg !463, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %21, metadata !452, metadata !DIExpression()), !dbg !459
  %22 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !464
  %23 = load i32, i32* %22, align 4, !dbg !464, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %23, metadata !453, metadata !DIExpression()), !dbg !459
  %24 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !465
  %25 = load i32, i32* %24, align 4, !dbg !465, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %25, metadata !454, metadata !DIExpression()), !dbg !459
  %26 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !466
  %27 = load i32, i32* %26, align 4, !dbg !466, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %27, metadata !455, metadata !DIExpression()), !dbg !459
  %28 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !467
  %29 = load i32, i32* %28, align 4, !dbg !467, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %29, metadata !456, metadata !DIExpression()), !dbg !459
  %30 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !468
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #15, !dbg !468
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %6, metadata !457, metadata !DIExpression()), !dbg !469
  %31 = zext i32 %29 to i64, !dbg !470
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %31) #15, !dbg !471
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !472
  %33 = load i64, i64* %32, align 8, !dbg !472, !tbaa !107
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !472
  %35 = load i64, i64* %34, align 8, !dbg !472, !tbaa !110
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %33, i64 %35, i32 noundef 104) #15, !dbg !472
  %36 = zext i32 %27 to i64, !dbg !473
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %36) #15, !dbg !474
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !475
  %38 = load i64, i64* %37, align 8, !dbg !475, !tbaa !107
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !475
  %40 = load i64, i64* %39, align 8, !dbg !475, !tbaa !110
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %38, i64 %40, i32 noundef 78) #15, !dbg !475
  %41 = zext i32 %25 to i64, !dbg !476
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %41) #15, !dbg !477
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !478
  %43 = load i64, i64* %42, align 8, !dbg !478, !tbaa !107
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !478
  %45 = load i64, i64* %44, align 8, !dbg !478, !tbaa !110
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %43, i64 %45, i32 noundef 52) #15, !dbg !478
  %46 = zext i32 %23 to i64, !dbg !479
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %46) #15, !dbg !480
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !481
  %48 = load i64, i64* %47, align 8, !dbg !481, !tbaa !107
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !481
  %50 = load i64, i64* %49, align 8, !dbg !481, !tbaa !110
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %48, i64 %50, i32 noundef 26) #15, !dbg !481
  %51 = zext i32 %21 to i64, !dbg !482
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %51) #15, !dbg !483
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !484
  %53 = load i64, i64* %52, align 8, !dbg !484, !tbaa !107
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !484
  %55 = load i64, i64* %54, align 8, !dbg !484, !tbaa !110
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !484
  %57 = load i64, i64* %56, align 8, !dbg !484, !tbaa !107
  %58 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 1, !dbg !484
  %59 = load i64, i64* %58, align 8, !dbg !484, !tbaa !110
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %53, i64 %55, i64 %57, i64 %59) #15, !dbg !484
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !485
  %61 = load i64, i64* %60, align 8, !dbg !485, !tbaa !107
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !485
  %63 = load i64, i64* %62, align 8, !dbg !485, !tbaa !110
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !485
  %65 = load i64, i64* %64, align 8, !dbg !485, !tbaa !107
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !485
  %67 = load i64, i64* %66, align 8, !dbg !485, !tbaa !110
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %61, i64 %63, i64 %65, i64 %67) #15, !dbg !485
  %68 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !486
  %69 = load i64, i64* %68, align 8, !dbg !486, !tbaa !107
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !486
  %71 = load i64, i64* %70, align 8, !dbg !486, !tbaa !110
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !486
  %73 = load i64, i64* %72, align 8, !dbg !486, !tbaa !107
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !486
  %75 = load i64, i64* %74, align 8, !dbg !486, !tbaa !110
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %69, i64 %71, i64 %73, i64 %75) #15, !dbg !486
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !487
  %77 = load i64, i64* %76, align 8, !dbg !487, !tbaa !107
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !487
  %79 = load i64, i64* %78, align 8, !dbg !487, !tbaa !110
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !487
  %81 = load i64, i64* %80, align 8, !dbg !487, !tbaa !107
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !487
  %83 = load i64, i64* %82, align 8, !dbg !487, !tbaa !110
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %77, i64 %79, i64 %81, i64 %83) #15, !dbg !487
  %84 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*, !dbg !488
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %84) #15, !dbg !488
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %19, metadata !458, metadata !DIExpression()), !dbg !489
  %85 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !490
  %86 = load i64, i64* %85, align 8, !dbg !490, !tbaa !107
  %87 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !490
  %88 = load i64, i64* %87, align 8, !dbg !490, !tbaa !110
  %89 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !490
  %90 = load i64, i64* %89, align 8, !dbg !490, !tbaa !107
  %91 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !490
  %92 = load i64, i64* %91, align 8, !dbg !490, !tbaa !110
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %86, i64 %88, i64 %90, i64 %92) #15, !dbg !490
  %93 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !491
  %94 = load i64, i64* %93, align 8, !dbg !491, !tbaa !107
  %95 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !491
  %96 = load i64, i64* %95, align 8, !dbg !491, !tbaa !110
  call fastcc void @store128_le(i8* noundef %2, i64 %94, i64 %96), !dbg !491
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %84) #15, !dbg !492
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #15, !dbg !492
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #15, !dbg !492
  ret void, !dbg !492
}

declare !dbg !493 void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @store128_le(i8* nocapture noundef writeonly %0, i64 %1, i64 %2) unnamed_addr #6 !dbg !494 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0
  store i64 %1, i64* %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1
  store i64 %2, i64* %6, align 8, !tbaa !110
  call void @llvm.dbg.value(metadata i8* %0, metadata !498, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !499, metadata !DIExpression()), !dbg !501
  call fastcc void @store128_le_(i8* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %4), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_crypto_onetimeauth(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i8* nocapture noundef readonly %3) local_unnamed_addr #3 !dbg !504 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !508, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i8* %1, metadata !509, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 %2, metadata !510, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i8* %3, metadata !511, metadata !DIExpression()), !dbg !512
  call fastcc void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i8* nocapture noundef readonly %3) unnamed_addr #3 !dbg !515 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !517, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i8* %1, metadata !518, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i64 %2, metadata !519, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i8* %3, metadata !520, metadata !DIExpression()), !dbg !521
  call fastcc void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth_(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3), !dbg !522
  ret void, !dbg !523
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @load128_le_(i8* nocapture noundef readonly %0, %struct.FStar_UInt128_uint128* nocapture noundef writeonly %1) unnamed_addr #6 !dbg !524 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !530, metadata !DIExpression()), !dbg !531
  %3 = call fastcc i64 @load64(i8* noundef %0), !dbg !532
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !533
  store i64 %3, i64* %4, align 4, !dbg !534, !tbaa !107
  %5 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !535
  %6 = call fastcc i64 @load64(i8* noundef nonnull %5), !dbg !535
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !536
  store i64 %6, i64* %7, align 4, !dbg !537, !tbaa !110
  ret void, !dbg !538
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @load64(i8* nocapture noundef readonly %0) unnamed_addr #10 !dbg !539 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !543, metadata !DIExpression()), !dbg !545
  %2 = bitcast i8* %0 to i64*, !dbg !546
  %3 = load i64, i64* %2, align 1, !dbg !546
  call void @llvm.dbg.value(metadata i64 %3, metadata !544, metadata !DIExpression()), !dbg !545
  ret i64 %3, !dbg !547
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @load32(i8* nocapture noundef readonly %0) unnamed_addr #10 !dbg !548 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !552, metadata !DIExpression()), !dbg !554
  %2 = bitcast i8* %0 to i32*, !dbg !555
  %3 = load i32, i32* %2, align 1, !dbg !555
  call void @llvm.dbg.value(metadata i32 %3, metadata !553, metadata !DIExpression()), !dbg !554
  ret i32 %3, !dbg !556
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i32* nocapture noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2) unnamed_addr #8 !dbg !557 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !561, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i32* %1, metadata !562, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i32* %2, metadata !563, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i32 0, metadata !564, metadata !DIExpression()), !dbg !571
  br label %5, !dbg !572

4:                                                ; preds = %5
  call fastcc void @Hacl_Bignum_Fmul_fmul(i32* noundef %0, i32* noundef %0, i32* noundef %2), !dbg !573
  ret void, !dbg !574

5:                                                ; preds = %3, %5
  %6 = phi i32 [ 0, %3 ], [ %12, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !564, metadata !DIExpression()), !dbg !571
  %7 = getelementptr inbounds i32, i32* %0, i32 %6, !dbg !575
  %8 = load i32, i32* %7, align 4, !dbg !575, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %8, metadata !566, metadata !DIExpression()), !dbg !576
  %9 = getelementptr inbounds i32, i32* %1, i32 %6, !dbg !577
  %10 = load i32, i32* %9, align 4, !dbg !577, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %10, metadata !569, metadata !DIExpression()), !dbg !576
  %11 = add i32 %10, %8, !dbg !578
  store i32 %11, i32* %7, align 4, !dbg !579, !tbaa !134
  %12 = add nuw nsw i32 %6, 1, !dbg !580
  call void @llvm.dbg.value(metadata i32 %12, metadata !564, metadata !DIExpression()), !dbg !571
  %13 = icmp eq i32 %12, 5, !dbg !581
  br i1 %13, label %4, label %5, !dbg !572, !llvm.loop !582
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul(i32* nocapture noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2) unnamed_addr #8 !dbg !586 {
  %4 = alloca [5 x i32], align 4
  %5 = alloca [5 x i64], align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !588, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i32* %1, metadata !589, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i32* %2, metadata !590, metadata !DIExpression()), !dbg !598
  %6 = bitcast [5 x i32]* %4 to i8*, !dbg !599
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #15, !dbg !599
  call void @llvm.dbg.declare(metadata [5 x i32]* %4, metadata !591, metadata !DIExpression()), !dbg !600
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 0, !dbg !601
  %8 = bitcast i32* %1 to i8*, !dbg !601
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(20) %6, i8* noundef nonnull align 4 dereferenceable(20) %8, i32 20, i1 false), !dbg !601
  %9 = bitcast [5 x i64]* %5 to i8*, !dbg !602
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #15, !dbg !602
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !592, metadata !DIExpression()), !dbg !603
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %9, i8 0, i32 40, i1 false), !dbg !603
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i32 0, i32 0, !dbg !604
  call fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(i64* noundef nonnull %10, i32* noundef nonnull %7, i32* noundef %2), !dbg !605
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(i64* noundef nonnull %10), !dbg !606
  call fastcc void @Hacl_Bignum_Modulo_carry_top_wide(i64* noundef nonnull %10), !dbg !607
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i32* noundef %0, i64* noundef nonnull %10), !dbg !608
  %11 = load i32, i32* %0, align 4, !dbg !609, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %11, metadata !594, metadata !DIExpression()), !dbg !598
  %12 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !610
  %13 = load i32, i32* %12, align 4, !dbg !610, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %13, metadata !595, metadata !DIExpression()), !dbg !598
  %14 = and i32 %11, 67108863, !dbg !611
  call void @llvm.dbg.value(metadata i32 %14, metadata !596, metadata !DIExpression()), !dbg !598
  %15 = lshr i32 %11, 26, !dbg !612
  %16 = add i32 %13, %15, !dbg !613
  call void @llvm.dbg.value(metadata i32 %16, metadata !597, metadata !DIExpression()), !dbg !598
  store i32 %14, i32* %0, align 4, !dbg !614, !tbaa !134
  store i32 %16, i32* %12, align 4, !dbg !615, !tbaa !134
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #15, !dbg !616
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #15, !dbg !616
  ret void, !dbg !616
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(i64* nocapture noundef %0, i32* nocapture noundef %1, i32* nocapture noundef readonly %2) unnamed_addr #9 !dbg !617 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !622, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32* %1, metadata !623, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32* %2, metadata !624, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32 0, metadata !625, metadata !DIExpression()), !dbg !633
  br label %7, !dbg !634

4:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i32 4, metadata !630, metadata !DIExpression()), !dbg !632
  %5 = getelementptr inbounds i32, i32* %2, i32 4, !dbg !635
  %6 = load i32, i32* %5, align 4, !dbg !635, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %6, metadata !631, metadata !DIExpression()), !dbg !632
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(i64* noundef %0, i32* noundef %1, i32 noundef %6), !dbg !636
  ret void, !dbg !637

7:                                                ; preds = %3, %7
  %8 = phi i32 [ 0, %3 ], [ %11, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !625, metadata !DIExpression()), !dbg !633
  %9 = getelementptr inbounds i32, i32* %2, i32 %8, !dbg !638
  %10 = load i32, i32* %9, align 4, !dbg !638, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %10, metadata !627, metadata !DIExpression()), !dbg !639
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(i64* noundef %0, i32* noundef %1, i32 noundef %10), !dbg !640
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i32* noundef %1), !dbg !641
  %11 = add nuw nsw i32 %8, 1, !dbg !642
  call void @llvm.dbg.value(metadata i32 %11, metadata !625, metadata !DIExpression()), !dbg !633
  %12 = icmp eq i32 %11, 4, !dbg !643
  br i1 %12, label %4, label %7, !dbg !634, !llvm.loop !644
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_(i64* nocapture noundef %0) unnamed_addr #9 !dbg !646 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !650, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32 0, metadata !651, metadata !DIExpression()), !dbg !661
  %2 = load i64, i64* %0, align 4
  br label %4, !dbg !662

3:                                                ; preds = %4
  ret void, !dbg !663

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %2, %1 ], [ %13, %4 ]
  %6 = phi i32 [ 0, %1 ], [ %8, %4 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !651, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i32 %6, metadata !653, metadata !DIExpression()), !dbg !664
  %7 = getelementptr inbounds i64, i64* %0, i32 %6, !dbg !665
  call void @llvm.dbg.value(metadata i64 %5, metadata !656, metadata !DIExpression()), !dbg !664
  %8 = add nuw nsw i32 %6, 1, !dbg !666
  %9 = getelementptr inbounds i64, i64* %0, i32 %8, !dbg !667
  %10 = load i64, i64* %9, align 4, !dbg !667, !tbaa !668
  call void @llvm.dbg.value(metadata i64 %10, metadata !657, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i64 %5, metadata !658, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 67108863, DW_OP_and, DW_OP_stack_value)), !dbg !664
  %11 = lshr i64 %5, 26, !dbg !669
  call void @llvm.dbg.value(metadata i64 %11, metadata !659, metadata !DIExpression()), !dbg !664
  %12 = and i64 %5, 67108863, !dbg !670
  store i64 %12, i64* %7, align 4, !dbg !671, !tbaa !668
  %13 = add i64 %10, %11, !dbg !672
  store i64 %13, i64* %9, align 4, !dbg !673, !tbaa !668
  call void @llvm.dbg.value(metadata i32 %8, metadata !651, metadata !DIExpression()), !dbg !661
  %14 = icmp eq i32 %8, 4, !dbg !674
  br i1 %14, label %3, label %4, !dbg !662, !llvm.loop !675
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Modulo_carry_top_wide(i64* nocapture noundef %0) unnamed_addr #6 !dbg !677 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !679, metadata !DIExpression()), !dbg !685
  %2 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !686
  %3 = load i64, i64* %2, align 4, !dbg !686, !tbaa !668
  call void @llvm.dbg.value(metadata i64 %3, metadata !680, metadata !DIExpression()), !dbg !685
  %4 = load i64, i64* %0, align 4, !dbg !687, !tbaa !668
  call void @llvm.dbg.value(metadata i64 %4, metadata !681, metadata !DIExpression()), !dbg !685
  %5 = and i64 %3, 67108863, !dbg !688
  call void @llvm.dbg.value(metadata i64 %5, metadata !682, metadata !DIExpression()), !dbg !685
  %6 = lshr i64 %3, 26, !dbg !689
  %7 = trunc i64 %6 to i32, !dbg !690
  call void @llvm.dbg.value(metadata i32 %7, metadata !683, metadata !DIExpression()), !dbg !685
  %8 = mul i32 %7, 5, !dbg !691
  %9 = zext i32 %8 to i64, !dbg !692
  %10 = add i64 %4, %9, !dbg !693
  call void @llvm.dbg.value(metadata i64 %10, metadata !684, metadata !DIExpression()), !dbg !685
  store i64 %5, i64* %2, align 4, !dbg !694, !tbaa !668
  store i64 %10, i64* %0, align 4, !dbg !695, !tbaa !668
  ret void, !dbg !696
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i32* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #9 !dbg !697 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !701, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64* %1, metadata !702, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 0, metadata !703, metadata !DIExpression()), !dbg !709
  br label %4, !dbg !710

3:                                                ; preds = %4
  ret void, !dbg !711

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %10, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !703, metadata !DIExpression()), !dbg !709
  %6 = getelementptr inbounds i64, i64* %1, i32 %5, !dbg !712
  %7 = load i64, i64* %6, align 4, !dbg !712, !tbaa !668
  call void @llvm.dbg.value(metadata i64 %7, metadata !705, metadata !DIExpression()), !dbg !713
  %8 = trunc i64 %7 to i32, !dbg !714
  %9 = getelementptr inbounds i32, i32* %0, i32 %5, !dbg !715
  store i32 %8, i32* %9, align 4, !dbg !716, !tbaa !134
  %10 = add nuw nsw i32 %5, 1, !dbg !717
  call void @llvm.dbg.value(metadata i32 %10, metadata !703, metadata !DIExpression()), !dbg !709
  %11 = icmp eq i32 %10, 5, !dbg !718
  br i1 %11, label %3, label %4, !dbg !710, !llvm.loop !719
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(i64* nocapture noundef %0, i32* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !dbg !721 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !725, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32* %1, metadata !726, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32 %2, metadata !727, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32 0, metadata !728, metadata !DIExpression()), !dbg !737
  %4 = zext i32 %2 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !728, metadata !DIExpression()), !dbg !737
  br label %6, !dbg !738

5:                                                ; preds = %6
  ret void, !dbg !739

6:                                                ; preds = %3, %6
  %7 = phi i32 [ 0, %3 ], [ %15, %6 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !728, metadata !DIExpression()), !dbg !737
  %8 = getelementptr inbounds i64, i64* %0, i32 %7, !dbg !740
  %9 = load i64, i64* %8, align 4, !dbg !740, !tbaa !668
  call void @llvm.dbg.value(metadata i64 %9, metadata !730, metadata !DIExpression()), !dbg !741
  %10 = getelementptr inbounds i32, i32* %1, i32 %7, !dbg !742
  %11 = load i32, i32* %10, align 4, !dbg !742, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %11, metadata !733, metadata !DIExpression()), !dbg !741
  %12 = zext i32 %11 to i64, !dbg !743
  call void @llvm.dbg.value(metadata i64 %12, metadata !734, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i64 %4, metadata !735, metadata !DIExpression()), !dbg !741
  %13 = mul nuw i64 %12, %4, !dbg !744
  %14 = add i64 %13, %9, !dbg !745
  store i64 %14, i64* %8, align 4, !dbg !746, !tbaa !668
  %15 = add nuw nsw i32 %7, 1, !dbg !747
  call void @llvm.dbg.value(metadata i32 %15, metadata !728, metadata !DIExpression()), !dbg !737
  %16 = icmp eq i32 %15, 5, !dbg !748
  br i1 %16, label %5, label %6, !dbg !738, !llvm.loop !749
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_shift_reduce(i32* nocapture noundef %0) unnamed_addr #9 !dbg !751 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !753, metadata !DIExpression()), !dbg !761
  %2 = bitcast i32* %0 to i8*, !dbg !762
  %3 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !762
  %4 = load i32, i32* %3, align 4, !dbg !762, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %4, metadata !754, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 0, metadata !755, metadata !DIExpression()), !dbg !763
  %5 = getelementptr i32, i32* %0, i32 1, !dbg !764
  %6 = bitcast i32* %5 to i8*, !dbg !764
  call void @llvm.memmove.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %6, i8* noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false), !dbg !765, !tbaa !134
  call void @llvm.dbg.value(metadata i32 undef, metadata !755, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 undef, metadata !757, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !766
  call void @llvm.dbg.value(metadata i32 undef, metadata !760, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i32 undef, metadata !755, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !763
  store i32 %4, i32* %0, align 4, !dbg !767, !tbaa !134
  call fastcc void @Hacl_Bignum_Modulo_reduce(i32* noundef nonnull %0), !dbg !768
  ret void, !dbg !769
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Modulo_reduce(i32* nocapture noundef %0) unnamed_addr #6 !dbg !770 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !772, metadata !DIExpression()), !dbg !774
  %2 = load i32, i32* %0, align 4, !dbg !775, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %2, metadata !773, metadata !DIExpression()), !dbg !774
  %3 = mul i32 %2, 5, !dbg !776
  store i32 %3, i32* %0, align 4, !dbg !777, !tbaa !134
  ret void, !dbg !778
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block_(i8* nocapture noundef readonly %0, i32* nocapture readonly %1, i32* nocapture %2) unnamed_addr #8 !dbg !779 {
  %4 = alloca [5 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %1, metadata !784, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !807
  call void @llvm.dbg.value(metadata i32* %2, metadata !784, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !807
  call void @llvm.dbg.value(metadata i8* %0, metadata !783, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i8* undef, metadata !785, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i64 undef, metadata !786, metadata !DIExpression()), !dbg !807
  %5 = bitcast [5 x i32]* %4 to i8*, !dbg !808
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #15, !dbg !808
  call void @llvm.dbg.declare(metadata [5 x i32]* %4, metadata !787, metadata !DIExpression()), !dbg !809
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !dbg !809
  call void @llvm.dbg.value(metadata i8* %0, metadata !788, metadata !DIExpression()), !dbg !807
  %6 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !810
  call void @llvm.dbg.value(metadata i8* %6, metadata !789, metadata !DIExpression()), !dbg !807
  %7 = getelementptr inbounds i8, i8* %0, i32 6, !dbg !811
  call void @llvm.dbg.value(metadata i8* %7, metadata !790, metadata !DIExpression()), !dbg !807
  %8 = getelementptr inbounds i8, i8* %0, i32 9, !dbg !812
  call void @llvm.dbg.value(metadata i8* %8, metadata !791, metadata !DIExpression()), !dbg !807
  %9 = getelementptr inbounds i8, i8* %0, i32 12, !dbg !813
  call void @llvm.dbg.value(metadata i8* %9, metadata !792, metadata !DIExpression()), !dbg !807
  %10 = call fastcc i32 @load32(i8* noundef %0), !dbg !814
  call void @llvm.dbg.value(metadata i32 %10, metadata !793, metadata !DIExpression()), !dbg !807
  %11 = call fastcc i32 @load32(i8* noundef nonnull %6), !dbg !815
  call void @llvm.dbg.value(metadata i32 %11, metadata !794, metadata !DIExpression()), !dbg !807
  %12 = call fastcc i32 @load32(i8* noundef nonnull %7), !dbg !816
  call void @llvm.dbg.value(metadata i32 %12, metadata !795, metadata !DIExpression()), !dbg !807
  %13 = call fastcc i32 @load32(i8* noundef nonnull %8), !dbg !817
  call void @llvm.dbg.value(metadata i32 %13, metadata !796, metadata !DIExpression()), !dbg !807
  %14 = call fastcc i32 @load32(i8* noundef nonnull %9), !dbg !818
  call void @llvm.dbg.value(metadata i32 %14, metadata !797, metadata !DIExpression()), !dbg !807
  %15 = and i32 %10, 67108863, !dbg !819
  call void @llvm.dbg.value(metadata i32 %15, metadata !798, metadata !DIExpression()), !dbg !807
  %16 = lshr i32 %11, 2, !dbg !820
  %17 = and i32 %16, 67108863, !dbg !821
  call void @llvm.dbg.value(metadata i32 %17, metadata !799, metadata !DIExpression()), !dbg !807
  %18 = lshr i32 %12, 4, !dbg !822
  %19 = and i32 %18, 67108863, !dbg !823
  call void @llvm.dbg.value(metadata i32 %19, metadata !800, metadata !DIExpression()), !dbg !807
  %20 = lshr i32 %13, 6, !dbg !824
  call void @llvm.dbg.value(metadata i32 %20, metadata !801, metadata !DIExpression()), !dbg !807
  %21 = lshr i32 %14, 8, !dbg !825
  call void @llvm.dbg.value(metadata i32 %21, metadata !802, metadata !DIExpression()), !dbg !807
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 0, !dbg !826
  store i32 %15, i32* %22, align 4, !dbg !827, !tbaa !134
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 1, !dbg !828
  store i32 %17, i32* %23, align 4, !dbg !829, !tbaa !134
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 2, !dbg !830
  store i32 %19, i32* %24, align 4, !dbg !831, !tbaa !134
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 3, !dbg !832
  store i32 %20, i32* %25, align 4, !dbg !833, !tbaa !134
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 4, !dbg !834
  store i32 %21, i32* %26, align 4, !dbg !835, !tbaa !134
  call void @llvm.dbg.value(metadata i32* %1, metadata !803, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !807
  call void @llvm.dbg.value(metadata i32* %2, metadata !803, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !807
  call void @llvm.dbg.value(metadata i32* %2, metadata !804, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i32* %1, metadata !805, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !807
  call void @llvm.dbg.value(metadata i32* %2, metadata !805, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !807
  call void @llvm.dbg.value(metadata i32* %1, metadata !806, metadata !DIExpression()), !dbg !807
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i32* noundef %2, i32* noundef nonnull %22, i32* noundef %1), !dbg !836
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #15, !dbg !837
  ret void, !dbg !837
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_limb_(i32* nocapture noundef %0) unnamed_addr #9 !dbg !838 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !840, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i32 0, metadata !841, metadata !DIExpression()), !dbg !851
  %2 = load i32, i32* %0, align 4
  br label %4, !dbg !852

3:                                                ; preds = %4
  ret void, !dbg !853

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %2, %1 ], [ %13, %4 ]
  %6 = phi i32 [ 0, %1 ], [ %8, %4 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !841, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32 %6, metadata !843, metadata !DIExpression()), !dbg !854
  %7 = getelementptr inbounds i32, i32* %0, i32 %6, !dbg !855
  call void @llvm.dbg.value(metadata i32 %5, metadata !846, metadata !DIExpression()), !dbg !854
  %8 = add nuw nsw i32 %6, 1, !dbg !856
  %9 = getelementptr inbounds i32, i32* %0, i32 %8, !dbg !857
  %10 = load i32, i32* %9, align 4, !dbg !857, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %10, metadata !847, metadata !DIExpression()), !dbg !854
  %11 = and i32 %5, 67108863, !dbg !858
  call void @llvm.dbg.value(metadata i32 %11, metadata !848, metadata !DIExpression()), !dbg !854
  %12 = lshr i32 %5, 26, !dbg !859
  call void @llvm.dbg.value(metadata i32 %12, metadata !849, metadata !DIExpression()), !dbg !854
  store i32 %11, i32* %7, align 4, !dbg !860, !tbaa !134
  %13 = add i32 %10, %12, !dbg !861
  store i32 %13, i32* %9, align 4, !dbg !862, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %8, metadata !841, metadata !DIExpression()), !dbg !851
  %14 = icmp eq i32 %8, 4, !dbg !863
  br i1 %14, label %3, label %4, !dbg !852, !llvm.loop !864
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Modulo_carry_top(i32* nocapture noundef %0) unnamed_addr #6 !dbg !866 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !868, metadata !DIExpression()), !dbg !872
  %2 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !873
  %3 = load i32, i32* %2, align 4, !dbg !873, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %3, metadata !869, metadata !DIExpression()), !dbg !872
  %4 = load i32, i32* %0, align 4, !dbg !874, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %4, metadata !870, metadata !DIExpression()), !dbg !872
  %5 = lshr i32 %3, 26, !dbg !875
  call void @llvm.dbg.value(metadata i32 %5, metadata !871, metadata !DIExpression()), !dbg !872
  %6 = and i32 %3, 67108863, !dbg !876
  store i32 %6, i32* %2, align 4, !dbg !877, !tbaa !134
  %7 = mul nuw nsw i32 %5, 5, !dbg !878
  %8 = add i32 %7, %4, !dbg !879
  store i32 %8, i32* %0, align 4, !dbg !880, !tbaa !134
  ret void, !dbg !881
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @FStar_UInt32_gte_mask(i32 noundef %0) unnamed_addr #0 !dbg !882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !887, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata i32 67108859, metadata !888, metadata !DIExpression()), !dbg !889
  %2 = zext i32 %0 to i64, !dbg !890
  %3 = add nsw i64 %2, -67108859, !dbg !891
  %4 = ashr i64 %3, 63, !dbg !892
  %5 = trunc i64 %4 to i32, !dbg !893
  %6 = xor i32 %5, -1, !dbg !894
  ret i32 %6, !dbg !895
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @FStar_UInt32_eq_mask(i32 noundef %0) unnamed_addr #0 !dbg !896 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !898, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 67108863, metadata !899, metadata !DIExpression()), !dbg !900
  %2 = xor i32 %0, -67108864, !dbg !901
  call void @llvm.dbg.value(metadata i32 %0, metadata !898, metadata !DIExpression(DW_OP_constu, 18446744073642442752, DW_OP_xor, DW_OP_stack_value)), !dbg !900
  %3 = shl i32 %0, 16, !dbg !902
  %4 = and i32 %2, %3, !dbg !903
  call void @llvm.dbg.value(metadata i32 %4, metadata !898, metadata !DIExpression()), !dbg !900
  %5 = shl i32 %4, 8, !dbg !904
  %6 = and i32 %5, %4, !dbg !905
  call void @llvm.dbg.value(metadata i32 %6, metadata !898, metadata !DIExpression()), !dbg !900
  %7 = shl i32 %6, 4, !dbg !906
  %8 = and i32 %7, %6, !dbg !907
  call void @llvm.dbg.value(metadata i32 %8, metadata !898, metadata !DIExpression()), !dbg !900
  %9 = shl i32 %8, 2, !dbg !908
  %10 = and i32 %9, %8, !dbg !909
  call void @llvm.dbg.value(metadata i32 %10, metadata !898, metadata !DIExpression()), !dbg !900
  %11 = shl i32 %10, 1, !dbg !910
  %12 = and i32 %11, %10, !dbg !911
  call void @llvm.dbg.value(metadata i32 %12, metadata !898, metadata !DIExpression()), !dbg !900
  %13 = ashr i32 %12, 31, !dbg !912
  ret i32 %13, !dbg !913
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @store128_le_(i8* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #6 !dbg !914 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !916, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !917, metadata !DIExpression()), !dbg !918
  %3 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !919
  %4 = load i64, i64* %3, align 4, !dbg !919, !tbaa !107
  call fastcc void @store64(i8* noundef %0, i64 noundef %4), !dbg !919
  %5 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !920
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !920
  %7 = load i64, i64* %6, align 4, !dbg !920, !tbaa !110
  call fastcc void @store64(i8* noundef nonnull %5, i64 noundef %7), !dbg !920
  ret void, !dbg !921
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store64(i8* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #2 !dbg !922 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !926, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64 %1, metadata !927, metadata !DIExpression()), !dbg !928
  %3 = bitcast i8* %0 to i64*, !dbg !929
  store i64 %1, i64* %3, align 1, !dbg !929
  ret void, !dbg !930
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth_(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i8* nocapture noundef readonly %3) unnamed_addr #3 !dbg !931 {
  %5 = alloca [10 x i32], align 4
  %6 = alloca %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, align 4
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
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !933, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* %1, metadata !934, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i64 %2, metadata !935, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* %3, metadata !936, metadata !DIExpression()), !dbg !956
  %22 = bitcast [10 x i32]* %5 to i8*, !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #15, !dbg !957
  call void @llvm.dbg.declare(metadata [10 x i32]* %5, metadata !937, metadata !DIExpression()), !dbg !958
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %22, i8 0, i32 40, i1 false), !dbg !958
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i32 0, i32 0, !dbg !959
  call void @llvm.dbg.value(metadata i32* %23, metadata !941, metadata !DIExpression()), !dbg !956
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i32 0, i32 5, !dbg !960
  call void @llvm.dbg.value(metadata i32* %24, metadata !942, metadata !DIExpression()), !dbg !956
  %25 = bitcast %struct.Hacl_Impl_Poly1305_32_State_poly1305_state* %6 to i8*, !dbg !961
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #15, !dbg !961
  call void @llvm.dbg.declare(metadata %struct.Hacl_Impl_Poly1305_32_State_poly1305_state* %6, metadata !943, metadata !DIExpression()), !dbg !962
  call fastcc void @Hacl_Impl_Poly1305_32_mk_state(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state* nonnull sret(%struct.Hacl_Impl_Poly1305_32_State_poly1305_state) align 4 %6, i32* noundef nonnull %23, i32* noundef nonnull %24), !dbg !963
  %26 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !964
  call void @llvm.dbg.value(metadata i8* %26, metadata !944, metadata !DIExpression()), !dbg !956
  %27 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, %struct.Hacl_Impl_Poly1305_32_State_poly1305_state* %6, i32 0, i32 0, !dbg !965
  %28 = load i32*, i32** %27, align 4, !dbg !965, !tbaa !66
  %29 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_32_State_poly1305_state, %struct.Hacl_Impl_Poly1305_32_State_poly1305_state* %6, i32 0, i32 1, !dbg !965
  %30 = load i32*, i32** %29, align 4, !dbg !965, !tbaa !71
  call fastcc void @Hacl_Standalone_Poly1305_32_poly1305_complete(i32* %28, i32* %30, i8* noundef %1, i64 noundef %2, i8* noundef %3), !dbg !965
  call void @llvm.dbg.value(metadata i32* undef, metadata !945, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !956
  call void @llvm.dbg.value(metadata i32* %30, metadata !945, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !956
  call void @llvm.dbg.value(metadata i32* %30, metadata !946, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32* %30, metadata !947, metadata !DIExpression()), !dbg !956
  %31 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !966
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #15, !dbg !966
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !948, metadata !DIExpression()), !dbg !967
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i8* noundef nonnull %26), !dbg !968
  %32 = load i32, i32* %30, align 4, !dbg !969, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %32, metadata !949, metadata !DIExpression()), !dbg !956
  %33 = getelementptr inbounds i32, i32* %30, i32 1, !dbg !970
  %34 = load i32, i32* %33, align 4, !dbg !970, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %34, metadata !950, metadata !DIExpression()), !dbg !956
  %35 = getelementptr inbounds i32, i32* %30, i32 2, !dbg !971
  %36 = load i32, i32* %35, align 4, !dbg !971, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %36, metadata !951, metadata !DIExpression()), !dbg !956
  %37 = getelementptr inbounds i32, i32* %30, i32 3, !dbg !972
  %38 = load i32, i32* %37, align 4, !dbg !972, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %38, metadata !952, metadata !DIExpression()), !dbg !956
  %39 = getelementptr inbounds i32, i32* %30, i32 4, !dbg !973
  %40 = load i32, i32* %39, align 4, !dbg !973, !tbaa !134
  call void @llvm.dbg.value(metadata i32 %40, metadata !953, metadata !DIExpression()), !dbg !956
  %41 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !974
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %41) #15, !dbg !974
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !954, metadata !DIExpression()), !dbg !975
  %42 = zext i32 %40 to i64, !dbg !976
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %42) #15, !dbg !977
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !978
  %44 = load i64, i64* %43, align 8, !dbg !978, !tbaa !107
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !978
  %46 = load i64, i64* %45, align 8, !dbg !978, !tbaa !110
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %44, i64 %46, i32 noundef 104) #15, !dbg !978
  %47 = zext i32 %38 to i64, !dbg !979
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %47) #15, !dbg !980
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !981
  %49 = load i64, i64* %48, align 8, !dbg !981, !tbaa !107
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !981
  %51 = load i64, i64* %50, align 8, !dbg !981, !tbaa !110
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %49, i64 %51, i32 noundef 78) #15, !dbg !981
  %52 = zext i32 %36 to i64, !dbg !982
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %52) #15, !dbg !983
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !984
  %54 = load i64, i64* %53, align 8, !dbg !984, !tbaa !107
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !984
  %56 = load i64, i64* %55, align 8, !dbg !984, !tbaa !110
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %54, i64 %56, i32 noundef 52) #15, !dbg !984
  %57 = zext i32 %34 to i64, !dbg !985
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %57) #15, !dbg !986
  %58 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !987
  %59 = load i64, i64* %58, align 8, !dbg !987, !tbaa !107
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !987
  %61 = load i64, i64* %60, align 8, !dbg !987, !tbaa !110
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %59, i64 %61, i32 noundef 26) #15, !dbg !987
  %62 = zext i32 %32 to i64, !dbg !988
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %62) #15, !dbg !989
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !990
  %64 = load i64, i64* %63, align 8, !dbg !990, !tbaa !107
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 1, !dbg !990
  %66 = load i64, i64* %65, align 8, !dbg !990, !tbaa !110
  %67 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 0, !dbg !990
  %68 = load i64, i64* %67, align 8, !dbg !990, !tbaa !107
  %69 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 1, !dbg !990
  %70 = load i64, i64* %69, align 8, !dbg !990, !tbaa !110
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %64, i64 %66, i64 %68, i64 %70) #15, !dbg !990
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !991
  %72 = load i64, i64* %71, align 8, !dbg !991, !tbaa !107
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !991
  %74 = load i64, i64* %73, align 8, !dbg !991, !tbaa !110
  %75 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !991
  %76 = load i64, i64* %75, align 8, !dbg !991, !tbaa !107
  %77 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !991
  %78 = load i64, i64* %77, align 8, !dbg !991, !tbaa !110
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %72, i64 %74, i64 %76, i64 %78) #15, !dbg !991
  %79 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !992
  %80 = load i64, i64* %79, align 8, !dbg !992, !tbaa !107
  %81 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !992
  %82 = load i64, i64* %81, align 8, !dbg !992, !tbaa !110
  %83 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !992
  %84 = load i64, i64* %83, align 8, !dbg !992, !tbaa !107
  %85 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !992
  %86 = load i64, i64* %85, align 8, !dbg !992, !tbaa !110
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %80, i64 %82, i64 %84, i64 %86) #15, !dbg !992
  %87 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !993
  %88 = load i64, i64* %87, align 8, !dbg !993, !tbaa !107
  %89 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !993
  %90 = load i64, i64* %89, align 8, !dbg !993, !tbaa !110
  %91 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !993
  %92 = load i64, i64* %91, align 8, !dbg !993, !tbaa !107
  %93 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !993
  %94 = load i64, i64* %93, align 8, !dbg !993, !tbaa !110
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %88, i64 %90, i64 %92, i64 %94) #15, !dbg !993
  %95 = bitcast %struct.FStar_UInt128_uint128* %21 to i8*, !dbg !994
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %95) #15, !dbg !994
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %21, metadata !955, metadata !DIExpression()), !dbg !995
  %96 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !996
  %97 = load i64, i64* %96, align 8, !dbg !996, !tbaa !107
  %98 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !996
  %99 = load i64, i64* %98, align 8, !dbg !996, !tbaa !110
  %100 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !996
  %101 = load i64, i64* %100, align 8, !dbg !996, !tbaa !107
  %102 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !996
  %103 = load i64, i64* %102, align 8, !dbg !996, !tbaa !110
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %97, i64 %99, i64 %101, i64 %103) #15, !dbg !996
  %104 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 0, !dbg !997
  %105 = load i64, i64* %104, align 8, !dbg !997, !tbaa !107
  %106 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 1, !dbg !997
  %107 = load i64, i64* %106, align 8, !dbg !997, !tbaa !110
  call fastcc void @store128_le(i8* noundef %0, i64 %105, i64 %107), !dbg !997
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %95) #15, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %41) #15, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #15, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #15, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #15, !dbg !998
  ret void, !dbg !998
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_poly1305_complete(i32* nocapture %0, i32* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3, i8* nocapture noundef readonly %4) unnamed_addr #3 !dbg !999 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1003, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1015
  call void @llvm.dbg.value(metadata i32* %1, metadata !1003, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1015
  call void @llvm.dbg.value(metadata i8* %2, metadata !1004, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i64 %3, metadata !1005, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i8* %4, metadata !1006, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i8* %4, metadata !1007, metadata !DIExpression()), !dbg !1015
  %6 = lshr i64 %3, 4, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %6, metadata !1008, metadata !DIExpression()), !dbg !1015
  %7 = and i64 %3, 15, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %7, metadata !1009, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i8* %2, metadata !1010, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i64 %3), metadata !1011, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1015
  call fastcc void @Hacl_Standalone_Poly1305_32_poly1305_partial(i32* %0, i32* %1, i8* noundef %2, i64 noundef %6, i8* noundef %4), !dbg !1018
  %8 = icmp eq i64 %7, 0, !dbg !1019
  br i1 %8, label %13, label %9, !dbg !1021

9:                                                ; preds = %5
  %10 = trunc i64 %3 to i32, !dbg !1022
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %10), metadata !1011, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1015
  %11 = and i32 %10, -16, !dbg !1022
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %11), metadata !1011, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1015
  %12 = getelementptr inbounds i8, i8* %2, i32 %11, !dbg !1023
  call void @llvm.dbg.value(metadata i8* %12, metadata !1011, metadata !DIExpression()), !dbg !1015
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(i32* %0, i32* %1, i8* noundef %12, i64 noundef %7), !dbg !1024
  br label %13, !dbg !1024

13:                                               ; preds = %9, %5
  call void @llvm.dbg.value(metadata i32* %0, metadata !1012, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1015
  call void @llvm.dbg.value(metadata i32* %1, metadata !1012, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1015
  call void @llvm.dbg.value(metadata i32* %1, metadata !1013, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i32* %1, metadata !1014, metadata !DIExpression()), !dbg !1015
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_last_pass(i32* noundef %1), !dbg !1025
  ret void, !dbg !1026
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_poly1305_partial(i32* nocapture %0, i32* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3, i8* nocapture noundef readonly %4) unnamed_addr #3 !dbg !1027 {
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
  call void @llvm.dbg.value(metadata i32* %0, metadata !1029, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1046
  call void @llvm.dbg.value(metadata i32* %1, metadata !1029, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %2, metadata !1030, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i64 %3, metadata !1031, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %4, metadata !1032, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i32* %0, metadata !1033, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1046
  call void @llvm.dbg.value(metadata i32* %1, metadata !1033, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1046
  call void @llvm.dbg.value(metadata i32* %0, metadata !1034, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i32* %0, metadata !1035, metadata !DIExpression()), !dbg !1046
  %16 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !1047
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #15, !dbg !1047
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %6, metadata !1036, metadata !DIExpression()), !dbg !1048
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i8* noundef %4), !dbg !1049
  %17 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #15, !dbg !1050
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !1037, metadata !DIExpression()), !dbg !1051
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 1152921487695413244) #15, !dbg !1052
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !1053
  %19 = load i64, i64* %18, align 8, !dbg !1053, !tbaa !107
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !1053
  %21 = load i64, i64* %20, align 8, !dbg !1053, !tbaa !110
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %19, i64 %21, i32 noundef 64) #15, !dbg !1053
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef 1152921487695413247) #15, !dbg !1054
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !1055
  %23 = load i64, i64* %22, align 8, !dbg !1055, !tbaa !107
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !1055
  %25 = load i64, i64* %24, align 8, !dbg !1055, !tbaa !110
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1055
  %27 = load i64, i64* %26, align 8, !dbg !1055, !tbaa !107
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1055
  %29 = load i64, i64* %28, align 8, !dbg !1055, !tbaa !110
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %23, i64 %25, i64 %27, i64 %29) #15, !dbg !1055
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !1056
  %31 = load i64, i64* %30, align 8, !dbg !1056, !tbaa !107
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !1056
  %33 = load i64, i64* %32, align 8, !dbg !1056, !tbaa !110
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !1056
  %35 = load i64, i64* %34, align 8, !dbg !1056, !tbaa !107
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !1056
  %37 = load i64, i64* %36, align 8, !dbg !1056, !tbaa !110
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %31, i64 %33, i64 %35, i64 %37) #15, !dbg !1056
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1057
  %39 = load i64, i64* %38, align 8, !dbg !1057, !tbaa !107
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1057
  %41 = load i64, i64* %40, align 8, !dbg !1057, !tbaa !110
  %42 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %39, i64 %41) #15, !dbg !1057
  %43 = trunc i64 %42 to i32, !dbg !1058
  %44 = and i32 %43, 67108863, !dbg !1059
  call void @llvm.dbg.value(metadata i32 %44, metadata !1038, metadata !DIExpression()), !dbg !1046
  %45 = load i64, i64* %38, align 8, !dbg !1060, !tbaa !107
  %46 = load i64, i64* %40, align 8, !dbg !1060, !tbaa !110
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %45, i64 %46, i32 noundef 26) #15, !dbg !1060
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !1061
  %48 = load i64, i64* %47, align 8, !dbg !1061, !tbaa !107
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !1061
  %50 = load i64, i64* %49, align 8, !dbg !1061, !tbaa !110
  %51 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %48, i64 %50) #15, !dbg !1061
  %52 = trunc i64 %51 to i32, !dbg !1062
  %53 = and i32 %52, 67108863, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %53, metadata !1039, metadata !DIExpression()), !dbg !1046
  %54 = load i64, i64* %38, align 8, !dbg !1064, !tbaa !107
  %55 = load i64, i64* %40, align 8, !dbg !1064, !tbaa !110
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %54, i64 %55, i32 noundef 52) #15, !dbg !1064
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !1065
  %57 = load i64, i64* %56, align 8, !dbg !1065, !tbaa !107
  %58 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !1065
  %59 = load i64, i64* %58, align 8, !dbg !1065, !tbaa !110
  %60 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %57, i64 %59) #15, !dbg !1065
  %61 = trunc i64 %60 to i32, !dbg !1066
  %62 = and i32 %61, 67108863, !dbg !1067
  call void @llvm.dbg.value(metadata i32 %62, metadata !1040, metadata !DIExpression()), !dbg !1046
  %63 = load i64, i64* %38, align 8, !dbg !1068, !tbaa !107
  %64 = load i64, i64* %40, align 8, !dbg !1068, !tbaa !110
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %63, i64 %64, i32 noundef 78) #15, !dbg !1068
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !1069
  %66 = load i64, i64* %65, align 8, !dbg !1069, !tbaa !107
  %67 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !1069
  %68 = load i64, i64* %67, align 8, !dbg !1069, !tbaa !110
  %69 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %66, i64 %68) #15, !dbg !1069
  %70 = trunc i64 %69 to i32, !dbg !1070
  %71 = and i32 %70, 67108863, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %71, metadata !1041, metadata !DIExpression()), !dbg !1046
  %72 = load i64, i64* %38, align 8, !dbg !1072, !tbaa !107
  %73 = load i64, i64* %40, align 8, !dbg !1072, !tbaa !110
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %72, i64 %73, i32 noundef 104) #15, !dbg !1072
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !1073
  %75 = load i64, i64* %74, align 8, !dbg !1073, !tbaa !107
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !1073
  %77 = load i64, i64* %76, align 8, !dbg !1073, !tbaa !110
  %78 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %75, i64 %77) #15, !dbg !1073
  %79 = trunc i64 %78 to i32, !dbg !1074
  %80 = and i32 %79, 67108863, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %80, metadata !1042, metadata !DIExpression()), !dbg !1046
  store i32 %44, i32* %0, align 4, !dbg !1076, !tbaa !134
  %81 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !1077
  store i32 %53, i32* %81, align 4, !dbg !1078, !tbaa !134
  %82 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !1079
  store i32 %62, i32* %82, align 4, !dbg !1080, !tbaa !134
  %83 = getelementptr inbounds i32, i32* %0, i32 3, !dbg !1081
  store i32 %71, i32* %83, align 4, !dbg !1082, !tbaa !134
  %84 = getelementptr inbounds i32, i32* %0, i32 4, !dbg !1083
  store i32 %80, i32* %84, align 4, !dbg !1084, !tbaa !134
  call void @llvm.dbg.value(metadata i32* %0, metadata !1043, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1046
  call void @llvm.dbg.value(metadata i32* %1, metadata !1043, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1046
  call void @llvm.dbg.value(metadata i32* %1, metadata !1044, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i32* %1, metadata !1045, metadata !DIExpression()), !dbg !1046
  %85 = bitcast i32* %1 to i8*, !dbg !1085
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %85, i8 0, i64 20, i1 false), !dbg !1086
  call fastcc void @Hacl_Standalone_Poly1305_32_poly1305_blocks(i32* nonnull %0, i32* nonnull %1, i8* noundef %2, i64 noundef %3), !dbg !1085
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #15, !dbg !1087
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #15, !dbg !1087
  ret void, !dbg !1087
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_poly1305_blocks(i32* nocapture readonly %0, i32* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #8 !dbg !1088 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1090, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1098
  call void @llvm.dbg.value(metadata i32* %1, metadata !1090, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %2, metadata !1091, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %3, metadata !1092, metadata !DIExpression()), !dbg !1098
  %5 = icmp eq i64 %3, 0, !dbg !1099
  br i1 %5, label %9, label %6, !dbg !1100

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !1093, metadata !DIExpression()), !dbg !1101
  %7 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !1102
  call void @llvm.dbg.value(metadata i8* %7, metadata !1096, metadata !DIExpression()), !dbg !1101
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_update(i32* %0, i32* %1, i8* noundef %2), !dbg !1103
  %8 = add i64 %3, -1, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %8, metadata !1097, metadata !DIExpression()), !dbg !1101
  call fastcc void @Hacl_Standalone_Poly1305_32_poly1305_blocks(i32* %0, i32* %1, i8* noundef nonnull %7, i64 noundef %8), !dbg !1105
  br label %9, !dbg !1106

9:                                                ; preds = %6, %4
  ret void, !dbg !1107
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nounwind }

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
!58 = !DILocation(line: 478, column: 10, scope: !44)
!59 = !DILocation(line: 478, column: 3, scope: !44)
!60 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_32_mk_state", scope: !3, file: !3, line: 326, type: !45, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!61 = !{!62, !63}
!62 = !DILocalVariable(name: "r", arg: 1, scope: !60, file: !3, line: 326, type: !52)
!63 = !DILocalVariable(name: "h", arg: 2, scope: !60, file: !3, line: 326, type: !52)
!64 = !DILocation(line: 0, scope: !60)
!65 = !DILocation(line: 328, column: 55, scope: !60)
!66 = !{!67, !68, i64 0}
!67 = !{!"", !68, i64 0, !68, i64 4}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !{!67, !68, i64 4}
!72 = !DILocation(line: 328, column: 3, scope: !60)
!73 = distinct !DISubprogram(name: "Hacl_Poly1305_32_init", scope: !3, file: !3, line: 481, type: !74, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !47, !38}
!76 = !{!77, !78, !79, !80, !81, !82, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!77 = !DILocalVariable(name: "st", arg: 1, scope: !73, file: !3, line: 481, type: !47)
!78 = !DILocalVariable(name: "k1", arg: 2, scope: !73, file: !3, line: 481, type: !38)
!79 = !DILocalVariable(name: "scrut", scope: !73, file: !3, line: 483, type: !47)
!80 = !DILocalVariable(name: "r", scope: !73, file: !3, line: 484, type: !52)
!81 = !DILocalVariable(name: "x0", scope: !73, file: !3, line: 485, type: !52)
!82 = !DILocalVariable(name: "k10", scope: !73, file: !3, line: 486, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !84, line: 37, baseType: !85)
!84 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !84, line: 35, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 30, size: 128, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !86, file: !84, line: 32, baseType: !6, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !86, file: !84, line: 33, baseType: !6, size: 64, offset: 64)
!90 = !DILocalVariable(name: "k_clamped", scope: !73, file: !3, line: 488, type: !83)
!91 = !DILocalVariable(name: "r0", scope: !73, file: !3, line: 493, type: !11)
!92 = !DILocalVariable(name: "r1", scope: !73, file: !3, line: 495, type: !11)
!93 = !DILocalVariable(name: "r2", scope: !73, file: !3, line: 499, type: !11)
!94 = !DILocalVariable(name: "r3", scope: !73, file: !3, line: 503, type: !11)
!95 = !DILocalVariable(name: "r4", scope: !73, file: !3, line: 507, type: !11)
!96 = !DILocalVariable(name: "scrut0", scope: !73, file: !3, line: 515, type: !47)
!97 = !DILocalVariable(name: "h", scope: !73, file: !3, line: 516, type: !52)
!98 = !DILocalVariable(name: "x00", scope: !73, file: !3, line: 517, type: !52)
!99 = !DILocation(line: 0, scope: !73)
!100 = !DILocation(line: 486, column: 3, scope: !73)
!101 = !DILocation(line: 486, column: 19, scope: !73)
!102 = !DILocation(line: 486, column: 25, scope: !73)
!103 = !DILocation(line: 487, column: 3, scope: !73)
!104 = !DILocation(line: 488, column: 3, scope: !73)
!105 = !DILocation(line: 490, column: 52, scope: !73)
!106 = !DILocation(line: 490, column: 27, scope: !73)
!107 = !{!108, !109, i64 0}
!108 = !{!"", !109, i64 0, !109, i64 8}
!109 = !{!"long long", !69, i64 0}
!110 = !{!108, !109, i64 8}
!111 = !DILocation(line: 492, column: 9, scope: !73)
!112 = !DILocation(line: 490, column: 7, scope: !73)
!113 = !DILocation(line: 489, column: 5, scope: !73)
!114 = !DILocation(line: 493, column: 27, scope: !73)
!115 = !DILocation(line: 493, column: 17, scope: !73)
!116 = !DILocation(line: 493, column: 70, scope: !73)
!117 = !DILocation(line: 496, column: 47, scope: !73)
!118 = !DILocation(line: 496, column: 15, scope: !73)
!119 = !DILocation(line: 496, column: 5, scope: !73)
!120 = !DILocation(line: 497, column: 5, scope: !73)
!121 = !DILocation(line: 500, column: 47, scope: !73)
!122 = !DILocation(line: 500, column: 15, scope: !73)
!123 = !DILocation(line: 500, column: 5, scope: !73)
!124 = !DILocation(line: 501, column: 5, scope: !73)
!125 = !DILocation(line: 504, column: 47, scope: !73)
!126 = !DILocation(line: 504, column: 15, scope: !73)
!127 = !DILocation(line: 504, column: 5, scope: !73)
!128 = !DILocation(line: 505, column: 5, scope: !73)
!129 = !DILocation(line: 508, column: 47, scope: !73)
!130 = !DILocation(line: 508, column: 15, scope: !73)
!131 = !DILocation(line: 508, column: 5, scope: !73)
!132 = !DILocation(line: 509, column: 5, scope: !73)
!133 = !DILocation(line: 510, column: 10, scope: !73)
!134 = !{!135, !135, i64 0}
!135 = !{!"int", !69, i64 0}
!136 = !DILocation(line: 511, column: 3, scope: !73)
!137 = !DILocation(line: 511, column: 10, scope: !73)
!138 = !DILocation(line: 512, column: 3, scope: !73)
!139 = !DILocation(line: 512, column: 10, scope: !73)
!140 = !DILocation(line: 513, column: 3, scope: !73)
!141 = !DILocation(line: 513, column: 10, scope: !73)
!142 = !DILocation(line: 514, column: 3, scope: !73)
!143 = !DILocation(line: 514, column: 10, scope: !73)
!144 = !DILocation(line: 523, column: 1, scope: !73)
!145 = !DILocation(line: 519, column: 11, scope: !73)
!146 = distinct !DISubprogram(name: "load128_le", scope: !37, file: !37, line: 543, type: !147, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !150)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !38}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !37, line: 510, baseType: !85)
!150 = !{!151, !152}
!151 = !DILocalVariable(name: "b", arg: 1, scope: !146, file: !37, line: 543, type: !38)
!152 = !DILocalVariable(name: "r", scope: !146, file: !37, line: 544, type: !149)
!153 = !DILocation(line: 0, scope: !146)
!154 = !DILocation(line: 545, column: 3, scope: !146)
!155 = !DILocation(line: 546, column: 3, scope: !146)
!156 = !DISubprogram(name: "FStar_UInt128_logand", scope: !84, file: !84, line: 49, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{!85, !85, !85}
!159 = !{}
!160 = !DISubprogram(name: "FStar_UInt128_logor", scope: !84, file: !84, line: 53, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !159)
!161 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !84, file: !84, line: 57, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !159)
!162 = !DISubroutineType(types: !163)
!163 = !{!85, !85, !11}
!164 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !84, file: !84, line: 65, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !159)
!165 = !DISubroutineType(types: !166)
!166 = !{!85, !6}
!167 = !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !84, file: !84, line: 67, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !159)
!168 = !DISubroutineType(types: !169)
!169 = !{!6, !85}
!170 = !DISubprogram(name: "FStar_UInt128_shift_right", scope: !84, file: !84, line: 59, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !159)
!171 = distinct !DISubprogram(name: "Hacl_Poly1305_32_update_block", scope: !3, file: !3, line: 527, type: !74, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!172 = !{!173, !174}
!173 = !DILocalVariable(name: "st", arg: 1, scope: !171, file: !3, line: 527, type: !47)
!174 = !DILocalVariable(name: "m", arg: 2, scope: !171, file: !3, line: 527, type: !38)
!175 = !DILocation(line: 0, scope: !171)
!176 = !DILocation(line: 529, column: 3, scope: !171)
!177 = !DILocation(line: 530, column: 1, scope: !171)
!178 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_32_poly1305_update", scope: !3, file: !3, line: 160, type: !74, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!180 = !DILocalVariable(name: "st", arg: 1, scope: !178, file: !3, line: 161, type: !47)
!181 = !DILocalVariable(name: "m", arg: 2, scope: !178, file: !3, line: 162, type: !38)
!182 = !DILocalVariable(name: "scrut0", scope: !178, file: !3, line: 165, type: !47)
!183 = !DILocalVariable(name: "h", scope: !178, file: !3, line: 166, type: !52)
!184 = !DILocalVariable(name: "acc", scope: !178, file: !3, line: 167, type: !52)
!185 = !DILocalVariable(name: "scrut", scope: !178, file: !3, line: 168, type: !47)
!186 = !DILocalVariable(name: "r", scope: !178, file: !3, line: 169, type: !52)
!187 = !DILocalVariable(name: "r5", scope: !178, file: !3, line: 170, type: !52)
!188 = !DILocalVariable(name: "tmp", scope: !178, file: !3, line: 171, type: !189)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 5)
!192 = !DILocalVariable(name: "s0", scope: !178, file: !3, line: 172, type: !38)
!193 = !DILocalVariable(name: "s1", scope: !178, file: !3, line: 173, type: !38)
!194 = !DILocalVariable(name: "s2", scope: !178, file: !3, line: 174, type: !38)
!195 = !DILocalVariable(name: "s3", scope: !178, file: !3, line: 175, type: !38)
!196 = !DILocalVariable(name: "s4", scope: !178, file: !3, line: 176, type: !38)
!197 = !DILocalVariable(name: "i0", scope: !178, file: !3, line: 177, type: !11)
!198 = !DILocalVariable(name: "i1", scope: !178, file: !3, line: 178, type: !11)
!199 = !DILocalVariable(name: "i2", scope: !178, file: !3, line: 179, type: !11)
!200 = !DILocalVariable(name: "i3", scope: !178, file: !3, line: 180, type: !11)
!201 = !DILocalVariable(name: "i4", scope: !178, file: !3, line: 181, type: !11)
!202 = !DILocalVariable(name: "r0", scope: !178, file: !3, line: 182, type: !11)
!203 = !DILocalVariable(name: "r1", scope: !178, file: !3, line: 183, type: !11)
!204 = !DILocalVariable(name: "r2", scope: !178, file: !3, line: 184, type: !11)
!205 = !DILocalVariable(name: "r3", scope: !178, file: !3, line: 185, type: !11)
!206 = !DILocalVariable(name: "r4", scope: !178, file: !3, line: 186, type: !11)
!207 = !DILocalVariable(name: "b4", scope: !178, file: !3, line: 192, type: !11)
!208 = !DILocalVariable(name: "b4_", scope: !178, file: !3, line: 193, type: !11)
!209 = !DILocation(line: 0, scope: !178)
!210 = !DILocation(line: 171, column: 3, scope: !178)
!211 = !DILocation(line: 171, column: 12, scope: !178)
!212 = !DILocation(line: 173, column: 19, scope: !178)
!213 = !DILocation(line: 174, column: 19, scope: !178)
!214 = !DILocation(line: 175, column: 19, scope: !178)
!215 = !DILocation(line: 176, column: 19, scope: !178)
!216 = !DILocation(line: 177, column: 17, scope: !178)
!217 = !DILocation(line: 178, column: 17, scope: !178)
!218 = !DILocation(line: 179, column: 17, scope: !178)
!219 = !DILocation(line: 180, column: 17, scope: !178)
!220 = !DILocation(line: 181, column: 17, scope: !178)
!221 = !DILocation(line: 182, column: 20, scope: !178)
!222 = !DILocation(line: 183, column: 20, scope: !178)
!223 = !DILocation(line: 183, column: 36, scope: !178)
!224 = !DILocation(line: 184, column: 20, scope: !178)
!225 = !DILocation(line: 184, column: 36, scope: !178)
!226 = !DILocation(line: 185, column: 20, scope: !178)
!227 = !DILocation(line: 186, column: 20, scope: !178)
!228 = !DILocation(line: 187, column: 3, scope: !178)
!229 = !DILocation(line: 187, column: 11, scope: !178)
!230 = !DILocation(line: 188, column: 3, scope: !178)
!231 = !DILocation(line: 188, column: 11, scope: !178)
!232 = !DILocation(line: 189, column: 3, scope: !178)
!233 = !DILocation(line: 189, column: 11, scope: !178)
!234 = !DILocation(line: 190, column: 3, scope: !178)
!235 = !DILocation(line: 190, column: 11, scope: !178)
!236 = !DILocation(line: 191, column: 3, scope: !178)
!237 = !DILocation(line: 193, column: 39, scope: !178)
!238 = !DILocation(line: 194, column: 11, scope: !178)
!239 = !DILocation(line: 195, column: 3, scope: !178)
!240 = !DILocation(line: 196, column: 1, scope: !178)
!241 = distinct !DISubprogram(name: "Hacl_Poly1305_32_update", scope: !3, file: !3, line: 533, type: !242, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !47, !38, !11}
!244 = !{!245, !246, !247, !248, !251, !252}
!245 = !DILocalVariable(name: "st", arg: 1, scope: !241, file: !3, line: 534, type: !47)
!246 = !DILocalVariable(name: "m", arg: 2, scope: !241, file: !3, line: 535, type: !38)
!247 = !DILocalVariable(name: "len1", arg: 3, scope: !241, file: !3, line: 536, type: !11)
!248 = !DILocalVariable(name: "block", scope: !249, file: !3, line: 541, type: !38)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 540, column: 3)
!250 = distinct !DILexicalBlock(scope: !241, file: !3, line: 539, column: 7)
!251 = !DILocalVariable(name: "m_", scope: !249, file: !3, line: 542, type: !38)
!252 = !DILocalVariable(name: "len2", scope: !249, file: !3, line: 543, type: !11)
!253 = !DILocation(line: 0, scope: !241)
!254 = !DILocation(line: 539, column: 14, scope: !250)
!255 = !DILocation(line: 539, column: 7, scope: !241)
!256 = !DILocation(line: 0, scope: !249)
!257 = !DILocation(line: 542, column: 21, scope: !249)
!258 = !DILocation(line: 543, column: 26, scope: !249)
!259 = !DILocation(line: 544, column: 5, scope: !249)
!260 = !DILocation(line: 545, column: 5, scope: !249)
!261 = !DILocation(line: 546, column: 3, scope: !249)
!262 = !DILocation(line: 547, column: 1, scope: !241)
!263 = distinct !DISubprogram(name: "Hacl_Poly1305_32_update_last", scope: !3, file: !3, line: 550, type: !242, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!264 = !{!265, !266, !267, !268, !269, !270}
!265 = !DILocalVariable(name: "st", arg: 1, scope: !263, file: !3, line: 551, type: !47)
!266 = !DILocalVariable(name: "m", arg: 2, scope: !263, file: !3, line: 552, type: !38)
!267 = !DILocalVariable(name: "len1", arg: 3, scope: !263, file: !3, line: 553, type: !11)
!268 = !DILocalVariable(name: "scrut", scope: !263, file: !3, line: 558, type: !47)
!269 = !DILocalVariable(name: "h", scope: !263, file: !3, line: 559, type: !52)
!270 = !DILocalVariable(name: "acc", scope: !263, file: !3, line: 560, type: !52)
!271 = !DILocation(line: 0, scope: !263)
!272 = !DILocation(line: 556, column: 24, scope: !273)
!273 = distinct !DILexicalBlock(scope: !263, file: !3, line: 556, column: 7)
!274 = !DILocation(line: 556, column: 7, scope: !263)
!275 = !DILocation(line: 556, column: 9, scope: !273)
!276 = !DILocation(line: 557, column: 5, scope: !273)
!277 = !DILocation(line: 561, column: 3, scope: !263)
!278 = !DILocation(line: 562, column: 1, scope: !263)
!279 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_32_poly1305_process_last_block", scope: !3, file: !3, line: 235, type: !280, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !47, !38, !6}
!282 = !{!283, !284, !285, !286, !287, !291, !293, !294}
!283 = !DILocalVariable(name: "st", arg: 1, scope: !279, file: !3, line: 236, type: !47)
!284 = !DILocalVariable(name: "m", arg: 2, scope: !279, file: !3, line: 237, type: !38)
!285 = !DILocalVariable(name: "rem_", arg: 3, scope: !279, file: !3, line: 238, type: !6)
!286 = !DILocalVariable(name: "zero1", scope: !279, file: !3, line: 241, type: !14)
!287 = !DILocalVariable(name: "block", scope: !279, file: !3, line: 243, type: !288)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 16)
!291 = !DILocalVariable(name: "_i", scope: !292, file: !3, line: 244, type: !11)
!292 = distinct !DILexicalBlock(scope: !279, file: !3, line: 244, column: 3)
!293 = !DILocalVariable(name: "i0", scope: !279, file: !3, line: 246, type: !11)
!294 = !DILocalVariable(name: "i", scope: !279, file: !3, line: 247, type: !11)
!295 = !DILocation(line: 0, scope: !279)
!296 = !DILocation(line: 243, column: 3, scope: !279)
!297 = !DILocation(line: 243, column: 11, scope: !279)
!298 = !DILocation(line: 0, scope: !292)
!299 = !DILocation(line: 245, column: 15, scope: !300)
!300 = distinct !DILexicalBlock(scope: !292, file: !3, line: 244, column: 3)
!301 = !{!69, !69, i64 0}
!302 = !DILocation(line: 246, column: 17, scope: !279)
!303 = !DILocation(line: 248, column: 3, scope: !279)
!304 = !DILocation(line: 249, column: 3, scope: !279)
!305 = !DILocation(line: 249, column: 13, scope: !279)
!306 = !DILocation(line: 250, column: 3, scope: !279)
!307 = !DILocation(line: 251, column: 1, scope: !279)
!308 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_32_poly1305_last_pass", scope: !3, file: !3, line: 253, type: !309, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !52}
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!312 = !DILocalVariable(name: "acc", arg: 1, scope: !308, file: !3, line: 253, type: !52)
!313 = !DILocalVariable(name: "t0", scope: !308, file: !3, line: 257, type: !11)
!314 = !DILocalVariable(name: "t10", scope: !308, file: !3, line: 258, type: !11)
!315 = !DILocalVariable(name: "t20", scope: !308, file: !3, line: 259, type: !11)
!316 = !DILocalVariable(name: "t30", scope: !308, file: !3, line: 260, type: !11)
!317 = !DILocalVariable(name: "t40", scope: !308, file: !3, line: 261, type: !11)
!318 = !DILocalVariable(name: "t1_", scope: !308, file: !3, line: 262, type: !11)
!319 = !DILocalVariable(name: "mask_261", scope: !308, file: !3, line: 263, type: !11)
!320 = !DILocalVariable(name: "t0_", scope: !308, file: !3, line: 264, type: !11)
!321 = !DILocalVariable(name: "t2_", scope: !308, file: !3, line: 265, type: !11)
!322 = !DILocalVariable(name: "t1__", scope: !308, file: !3, line: 266, type: !11)
!323 = !DILocalVariable(name: "t3_", scope: !308, file: !3, line: 267, type: !11)
!324 = !DILocalVariable(name: "t2__", scope: !308, file: !3, line: 268, type: !11)
!325 = !DILocalVariable(name: "t4_", scope: !308, file: !3, line: 269, type: !11)
!326 = !DILocalVariable(name: "t3__", scope: !308, file: !3, line: 270, type: !11)
!327 = !DILocalVariable(name: "t00", scope: !308, file: !3, line: 277, type: !11)
!328 = !DILocalVariable(name: "t1", scope: !308, file: !3, line: 278, type: !11)
!329 = !DILocalVariable(name: "t2", scope: !308, file: !3, line: 279, type: !11)
!330 = !DILocalVariable(name: "t3", scope: !308, file: !3, line: 280, type: !11)
!331 = !DILocalVariable(name: "t4", scope: !308, file: !3, line: 281, type: !11)
!332 = !DILocalVariable(name: "t1_0", scope: !308, file: !3, line: 282, type: !11)
!333 = !DILocalVariable(name: "t0_0", scope: !308, file: !3, line: 283, type: !11)
!334 = !DILocalVariable(name: "t2_0", scope: !308, file: !3, line: 284, type: !11)
!335 = !DILocalVariable(name: "t1__0", scope: !308, file: !3, line: 285, type: !11)
!336 = !DILocalVariable(name: "t3_0", scope: !308, file: !3, line: 286, type: !11)
!337 = !DILocalVariable(name: "t2__0", scope: !308, file: !3, line: 287, type: !11)
!338 = !DILocalVariable(name: "t4_0", scope: !308, file: !3, line: 288, type: !11)
!339 = !DILocalVariable(name: "t3__0", scope: !308, file: !3, line: 289, type: !11)
!340 = !DILocalVariable(name: "i0", scope: !308, file: !3, line: 296, type: !11)
!341 = !DILocalVariable(name: "i1", scope: !308, file: !3, line: 297, type: !11)
!342 = !DILocalVariable(name: "i0_", scope: !308, file: !3, line: 298, type: !11)
!343 = !DILocalVariable(name: "i1_", scope: !308, file: !3, line: 299, type: !11)
!344 = !DILocalVariable(name: "a0", scope: !308, file: !3, line: 302, type: !11)
!345 = !DILocalVariable(name: "a1", scope: !308, file: !3, line: 303, type: !11)
!346 = !DILocalVariable(name: "a2", scope: !308, file: !3, line: 304, type: !11)
!347 = !DILocalVariable(name: "a3", scope: !308, file: !3, line: 305, type: !11)
!348 = !DILocalVariable(name: "a4", scope: !308, file: !3, line: 306, type: !11)
!349 = !DILocalVariable(name: "mask0", scope: !308, file: !3, line: 307, type: !11)
!350 = !DILocalVariable(name: "mask1", scope: !308, file: !3, line: 308, type: !11)
!351 = !DILocalVariable(name: "mask2", scope: !308, file: !3, line: 309, type: !11)
!352 = !DILocalVariable(name: "mask3", scope: !308, file: !3, line: 310, type: !11)
!353 = !DILocalVariable(name: "mask4", scope: !308, file: !3, line: 311, type: !11)
!354 = !DILocalVariable(name: "mask", scope: !308, file: !3, line: 312, type: !11)
!355 = !DILocalVariable(name: "a0_", scope: !308, file: !3, line: 313, type: !11)
!356 = !DILocalVariable(name: "a1_", scope: !308, file: !3, line: 314, type: !11)
!357 = !DILocalVariable(name: "a2_", scope: !308, file: !3, line: 315, type: !11)
!358 = !DILocalVariable(name: "a3_", scope: !308, file: !3, line: 316, type: !11)
!359 = !DILocalVariable(name: "a4_", scope: !308, file: !3, line: 317, type: !11)
!360 = !DILocation(line: 0, scope: !308)
!361 = !DILocation(line: 255, column: 3, scope: !308)
!362 = !DILocation(line: 256, column: 3, scope: !308)
!363 = !DILocation(line: 257, column: 17, scope: !308)
!364 = !DILocation(line: 258, column: 18, scope: !308)
!365 = !DILocation(line: 259, column: 18, scope: !308)
!366 = !DILocation(line: 260, column: 18, scope: !308)
!367 = !DILocation(line: 261, column: 18, scope: !308)
!368 = !DILocation(line: 262, column: 28, scope: !308)
!369 = !DILocation(line: 262, column: 22, scope: !308)
!370 = !DILocation(line: 264, column: 21, scope: !308)
!371 = !DILocation(line: 265, column: 29, scope: !308)
!372 = !DILocation(line: 265, column: 22, scope: !308)
!373 = !DILocation(line: 266, column: 23, scope: !308)
!374 = !DILocation(line: 267, column: 29, scope: !308)
!375 = !DILocation(line: 267, column: 22, scope: !308)
!376 = !DILocation(line: 268, column: 23, scope: !308)
!377 = !DILocation(line: 269, column: 29, scope: !308)
!378 = !DILocation(line: 269, column: 22, scope: !308)
!379 = !DILocation(line: 270, column: 23, scope: !308)
!380 = !DILocation(line: 271, column: 11, scope: !308)
!381 = !DILocation(line: 272, column: 11, scope: !308)
!382 = !DILocation(line: 273, column: 11, scope: !308)
!383 = !DILocation(line: 274, column: 11, scope: !308)
!384 = !DILocation(line: 275, column: 11, scope: !308)
!385 = !DILocation(line: 276, column: 3, scope: !308)
!386 = !DILocation(line: 277, column: 18, scope: !308)
!387 = !DILocation(line: 278, column: 17, scope: !308)
!388 = !DILocation(line: 279, column: 17, scope: !308)
!389 = !DILocation(line: 280, column: 17, scope: !308)
!390 = !DILocation(line: 281, column: 17, scope: !308)
!391 = !DILocation(line: 282, column: 29, scope: !308)
!392 = !DILocation(line: 282, column: 22, scope: !308)
!393 = !DILocation(line: 283, column: 23, scope: !308)
!394 = !DILocation(line: 284, column: 30, scope: !308)
!395 = !DILocation(line: 284, column: 22, scope: !308)
!396 = !DILocation(line: 285, column: 25, scope: !308)
!397 = !DILocation(line: 286, column: 30, scope: !308)
!398 = !DILocation(line: 286, column: 22, scope: !308)
!399 = !DILocation(line: 287, column: 25, scope: !308)
!400 = !DILocation(line: 288, column: 30, scope: !308)
!401 = !DILocation(line: 288, column: 22, scope: !308)
!402 = !DILocation(line: 289, column: 25, scope: !308)
!403 = !DILocation(line: 290, column: 11, scope: !308)
!404 = !DILocation(line: 291, column: 11, scope: !308)
!405 = !DILocation(line: 292, column: 11, scope: !308)
!406 = !DILocation(line: 293, column: 11, scope: !308)
!407 = !DILocation(line: 294, column: 11, scope: !308)
!408 = !DILocation(line: 295, column: 3, scope: !308)
!409 = !DILocation(line: 296, column: 17, scope: !308)
!410 = !DILocation(line: 297, column: 17, scope: !308)
!411 = !DILocation(line: 298, column: 21, scope: !308)
!412 = !DILocation(line: 299, column: 27, scope: !308)
!413 = !DILocation(line: 299, column: 21, scope: !308)
!414 = !DILocation(line: 300, column: 11, scope: !308)
!415 = !DILocation(line: 301, column: 11, scope: !308)
!416 = !DILocation(line: 304, column: 17, scope: !308)
!417 = !DILocation(line: 305, column: 17, scope: !308)
!418 = !DILocation(line: 306, column: 17, scope: !308)
!419 = !DILocation(line: 307, column: 20, scope: !308)
!420 = !DILocation(line: 308, column: 20, scope: !308)
!421 = !DILocation(line: 309, column: 20, scope: !308)
!422 = !DILocation(line: 310, column: 20, scope: !308)
!423 = !DILocation(line: 311, column: 20, scope: !308)
!424 = !DILocation(line: 312, column: 28, scope: !308)
!425 = !DILocation(line: 312, column: 37, scope: !308)
!426 = !DILocation(line: 312, column: 46, scope: !308)
!427 = !DILocation(line: 312, column: 55, scope: !308)
!428 = !DILocation(line: 313, column: 45, scope: !308)
!429 = !DILocation(line: 313, column: 21, scope: !308)
!430 = !DILocation(line: 314, column: 45, scope: !308)
!431 = !DILocation(line: 314, column: 21, scope: !308)
!432 = !DILocation(line: 315, column: 21, scope: !308)
!433 = !DILocation(line: 316, column: 21, scope: !308)
!434 = !DILocation(line: 317, column: 21, scope: !308)
!435 = !DILocation(line: 318, column: 11, scope: !308)
!436 = !DILocation(line: 319, column: 11, scope: !308)
!437 = !DILocation(line: 320, column: 11, scope: !308)
!438 = !DILocation(line: 321, column: 11, scope: !308)
!439 = !DILocation(line: 322, column: 11, scope: !308)
!440 = !DILocation(line: 323, column: 1, scope: !308)
!441 = distinct !DISubprogram(name: "Hacl_Poly1305_32_finish", scope: !3, file: !3, line: 565, type: !442, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !47, !38, !38}
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!445 = !DILocalVariable(name: "st", arg: 1, scope: !441, file: !3, line: 566, type: !47)
!446 = !DILocalVariable(name: "mac", arg: 2, scope: !441, file: !3, line: 567, type: !38)
!447 = !DILocalVariable(name: "k1", arg: 3, scope: !441, file: !3, line: 568, type: !38)
!448 = !DILocalVariable(name: "scrut", scope: !441, file: !3, line: 571, type: !47)
!449 = !DILocalVariable(name: "h", scope: !441, file: !3, line: 572, type: !52)
!450 = !DILocalVariable(name: "acc", scope: !441, file: !3, line: 573, type: !52)
!451 = !DILocalVariable(name: "k_", scope: !441, file: !3, line: 574, type: !83)
!452 = !DILocalVariable(name: "h0", scope: !441, file: !3, line: 575, type: !11)
!453 = !DILocalVariable(name: "h1", scope: !441, file: !3, line: 576, type: !11)
!454 = !DILocalVariable(name: "h2", scope: !441, file: !3, line: 577, type: !11)
!455 = !DILocalVariable(name: "h3", scope: !441, file: !3, line: 578, type: !11)
!456 = !DILocalVariable(name: "h4", scope: !441, file: !3, line: 579, type: !11)
!457 = !DILocalVariable(name: "acc_", scope: !441, file: !3, line: 581, type: !83)
!458 = !DILocalVariable(name: "mac_", scope: !441, file: !3, line: 591, type: !83)
!459 = !DILocation(line: 0, scope: !441)
!460 = !DILocation(line: 574, column: 3, scope: !441)
!461 = !DILocation(line: 574, column: 19, scope: !441)
!462 = !DILocation(line: 574, column: 24, scope: !441)
!463 = !DILocation(line: 575, column: 17, scope: !441)
!464 = !DILocation(line: 576, column: 17, scope: !441)
!465 = !DILocation(line: 577, column: 17, scope: !441)
!466 = !DILocation(line: 578, column: 17, scope: !441)
!467 = !DILocation(line: 579, column: 17, scope: !441)
!468 = !DILocation(line: 580, column: 3, scope: !441)
!469 = !DILocation(line: 581, column: 3, scope: !441)
!470 = !DILocation(line: 582, column: 82, scope: !441)
!471 = !DILocation(line: 582, column: 50, scope: !441)
!472 = !DILocation(line: 582, column: 25, scope: !441)
!473 = !DILocation(line: 584, column: 84, scope: !441)
!474 = !DILocation(line: 584, column: 52, scope: !441)
!475 = !DILocation(line: 584, column: 27, scope: !441)
!476 = !DILocation(line: 586, column: 86, scope: !441)
!477 = !DILocation(line: 586, column: 54, scope: !441)
!478 = !DILocation(line: 586, column: 29, scope: !441)
!479 = !DILocation(line: 588, column: 88, scope: !441)
!480 = !DILocation(line: 588, column: 56, scope: !441)
!481 = !DILocation(line: 588, column: 31, scope: !441)
!482 = !DILocation(line: 590, column: 45, scope: !441)
!483 = !DILocation(line: 590, column: 13, scope: !441)
!484 = !DILocation(line: 588, column: 11, scope: !441)
!485 = !DILocation(line: 586, column: 9, scope: !441)
!486 = !DILocation(line: 584, column: 7, scope: !441)
!487 = !DILocation(line: 582, column: 5, scope: !441)
!488 = !DILocation(line: 591, column: 3, scope: !441)
!489 = !DILocation(line: 591, column: 19, scope: !441)
!490 = !DILocation(line: 591, column: 26, scope: !441)
!491 = !DILocation(line: 592, column: 3, scope: !441)
!492 = !DILocation(line: 593, column: 1, scope: !441)
!493 = !DISubprogram(name: "FStar_UInt128_add_mod", scope: !84, file: !84, line: 43, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !159)
!494 = distinct !DISubprogram(name: "store128_le", scope: !37, file: !37, line: 549, type: !495, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !38, !149}
!497 = !{!498, !499}
!498 = !DILocalVariable(name: "b", arg: 1, scope: !494, file: !37, line: 549, type: !38)
!499 = !DILocalVariable(name: "n", arg: 2, scope: !494, file: !37, line: 549, type: !149)
!500 = !DILocation(line: 0, scope: !494)
!501 = !DILocation(line: 549, column: 54, scope: !494)
!502 = !DILocation(line: 549, column: 59, scope: !494)
!503 = !DILocation(line: 549, column: 80, scope: !494)
!504 = distinct !DISubprogram(name: "Hacl_Poly1305_32_crypto_onetimeauth", scope: !3, file: !3, line: 596, type: !505, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !38, !38, !6, !38}
!507 = !{!508, !509, !510, !511}
!508 = !DILocalVariable(name: "output", arg: 1, scope: !504, file: !3, line: 597, type: !38)
!509 = !DILocalVariable(name: "input", arg: 2, scope: !504, file: !3, line: 598, type: !38)
!510 = !DILocalVariable(name: "len1", arg: 3, scope: !504, file: !3, line: 599, type: !6)
!511 = !DILocalVariable(name: "k1", arg: 4, scope: !504, file: !3, line: 600, type: !38)
!512 = !DILocation(line: 0, scope: !504)
!513 = !DILocation(line: 603, column: 3, scope: !504)
!514 = !DILocation(line: 604, column: 1, scope: !504)
!515 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_32_crypto_onetimeauth", scope: !3, file: !3, line: 460, type: !505, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!516 = !{!517, !518, !519, !520}
!517 = !DILocalVariable(name: "output", arg: 1, scope: !515, file: !3, line: 461, type: !38)
!518 = !DILocalVariable(name: "input", arg: 2, scope: !515, file: !3, line: 462, type: !38)
!519 = !DILocalVariable(name: "len1", arg: 3, scope: !515, file: !3, line: 463, type: !6)
!520 = !DILocalVariable(name: "k1", arg: 4, scope: !515, file: !3, line: 464, type: !38)
!521 = !DILocation(line: 0, scope: !515)
!522 = !DILocation(line: 467, column: 3, scope: !515)
!523 = !DILocation(line: 468, column: 1, scope: !515)
!524 = distinct !DISubprogram(name: "load128_le_", scope: !37, file: !37, line: 517, type: !525, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !38, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!528 = !{!529, !530}
!529 = !DILocalVariable(name: "b", arg: 1, scope: !524, file: !37, line: 517, type: !38)
!530 = !DILocalVariable(name: "r", arg: 2, scope: !524, file: !37, line: 517, type: !527)
!531 = !DILocation(line: 0, scope: !524)
!532 = !DILocation(line: 518, column: 12, scope: !524)
!533 = !DILocation(line: 518, column: 6, scope: !524)
!534 = !DILocation(line: 518, column: 10, scope: !524)
!535 = !DILocation(line: 519, column: 13, scope: !524)
!536 = !DILocation(line: 519, column: 6, scope: !524)
!537 = !DILocation(line: 519, column: 11, scope: !524)
!538 = !DILocation(line: 520, column: 1, scope: !524)
!539 = distinct !DISubprogram(name: "load64", scope: !37, file: !37, line: 347, type: !540, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{!6, !38}
!542 = !{!543, !544}
!543 = !DILocalVariable(name: "b", arg: 1, scope: !539, file: !37, line: 347, type: !38)
!544 = !DILocalVariable(name: "x", scope: !539, file: !37, line: 348, type: !6)
!545 = !DILocation(line: 0, scope: !539)
!546 = !DILocation(line: 349, column: 3, scope: !539)
!547 = !DILocation(line: 350, column: 3, scope: !539)
!548 = distinct !DISubprogram(name: "load32", scope: !37, file: !37, line: 341, type: !549, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{!11, !38}
!551 = !{!552, !553}
!552 = !DILocalVariable(name: "b", arg: 1, scope: !548, file: !37, line: 341, type: !38)
!553 = !DILocalVariable(name: "x", scope: !548, file: !37, line: 342, type: !11)
!554 = !DILocation(line: 0, scope: !548)
!555 = !DILocation(line: 343, column: 3, scope: !548)
!556 = !DILocation(line: 344, column: 3, scope: !548)
!557 = distinct !DISubprogram(name: "Hacl_Bignum_AddAndMultiply_add_and_multiply", scope: !3, file: !3, line: 148, type: !558, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !52, !52, !52}
!560 = !{!561, !562, !563, !564, !566, !569}
!561 = !DILocalVariable(name: "acc", arg: 1, scope: !557, file: !3, line: 148, type: !52)
!562 = !DILocalVariable(name: "block", arg: 2, scope: !557, file: !3, line: 148, type: !52)
!563 = !DILocalVariable(name: "r", arg: 3, scope: !557, file: !3, line: 148, type: !52)
!564 = !DILocalVariable(name: "i", scope: !565, file: !3, line: 150, type: !11)
!565 = distinct !DILexicalBlock(scope: !557, file: !3, line: 150, column: 3)
!566 = !DILocalVariable(name: "xi", scope: !567, file: !3, line: 152, type: !11)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 151, column: 3)
!568 = distinct !DILexicalBlock(scope: !565, file: !3, line: 150, column: 3)
!569 = !DILocalVariable(name: "yi", scope: !567, file: !3, line: 153, type: !11)
!570 = !DILocation(line: 0, scope: !557)
!571 = !DILocation(line: 0, scope: !565)
!572 = !DILocation(line: 150, column: 3, scope: !565)
!573 = !DILocation(line: 156, column: 3, scope: !557)
!574 = !DILocation(line: 157, column: 1, scope: !557)
!575 = !DILocation(line: 152, column: 19, scope: !567)
!576 = !DILocation(line: 0, scope: !567)
!577 = !DILocation(line: 153, column: 19, scope: !567)
!578 = !DILocation(line: 154, column: 17, scope: !567)
!579 = !DILocation(line: 154, column: 12, scope: !567)
!580 = !DILocation(line: 150, column: 59, scope: !568)
!581 = !DILocation(line: 150, column: 37, scope: !568)
!582 = distinct !{!582, !572, !583, !584, !585}
!583 = !DILocation(line: 155, column: 3, scope: !565)
!584 = !{!"llvm.loop.mustprogress"}
!585 = !{!"llvm.loop.unroll.disable"}
!586 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_fmul", scope: !3, file: !3, line: 130, type: !558, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!587 = !{!588, !589, !590, !591, !592, !594, !595, !596, !597}
!588 = !DILocalVariable(name: "output", arg: 1, scope: !586, file: !3, line: 130, type: !52)
!589 = !DILocalVariable(name: "input", arg: 2, scope: !586, file: !3, line: 130, type: !52)
!590 = !DILocalVariable(name: "input2", arg: 3, scope: !586, file: !3, line: 130, type: !52)
!591 = !DILocalVariable(name: "tmp", scope: !586, file: !3, line: 132, type: !189)
!592 = !DILocalVariable(name: "t", scope: !586, file: !3, line: 134, type: !593)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !190)
!594 = !DILocalVariable(name: "i0", scope: !586, file: !3, line: 139, type: !11)
!595 = !DILocalVariable(name: "i1", scope: !586, file: !3, line: 140, type: !11)
!596 = !DILocalVariable(name: "i0_", scope: !586, file: !3, line: 141, type: !11)
!597 = !DILocalVariable(name: "i1_", scope: !586, file: !3, line: 142, type: !11)
!598 = !DILocation(line: 0, scope: !586)
!599 = !DILocation(line: 132, column: 3, scope: !586)
!600 = !DILocation(line: 132, column: 12, scope: !586)
!601 = !DILocation(line: 133, column: 3, scope: !586)
!602 = !DILocation(line: 134, column: 3, scope: !586)
!603 = !DILocation(line: 134, column: 12, scope: !586)
!604 = !DILocation(line: 135, column: 38, scope: !586)
!605 = !DILocation(line: 135, column: 3, scope: !586)
!606 = !DILocation(line: 136, column: 3, scope: !586)
!607 = !DILocation(line: 137, column: 3, scope: !586)
!608 = !DILocation(line: 138, column: 3, scope: !586)
!609 = !DILocation(line: 139, column: 17, scope: !586)
!610 = !DILocation(line: 140, column: 17, scope: !586)
!611 = !DILocation(line: 141, column: 21, scope: !586)
!612 = !DILocation(line: 142, column: 27, scope: !586)
!613 = !DILocation(line: 142, column: 21, scope: !586)
!614 = !DILocation(line: 143, column: 14, scope: !586)
!615 = !DILocation(line: 144, column: 14, scope: !586)
!616 = !DILocation(line: 145, column: 1, scope: !586)
!617 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_mul_shift_reduce_", scope: !3, file: !3, line: 117, type: !618, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !621)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !620, !52, !52}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!621 = !{!622, !623, !624, !625, !627, !630, !631}
!622 = !DILocalVariable(name: "output", arg: 1, scope: !617, file: !3, line: 117, type: !620)
!623 = !DILocalVariable(name: "input", arg: 2, scope: !617, file: !3, line: 117, type: !52)
!624 = !DILocalVariable(name: "input2", arg: 3, scope: !617, file: !3, line: 117, type: !52)
!625 = !DILocalVariable(name: "i", scope: !626, file: !3, line: 119, type: !11)
!626 = distinct !DILexicalBlock(scope: !617, file: !3, line: 119, column: 3)
!627 = !DILocalVariable(name: "input2i", scope: !628, file: !3, line: 121, type: !11)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 120, column: 3)
!629 = distinct !DILexicalBlock(scope: !626, file: !3, line: 119, column: 3)
!630 = !DILocalVariable(name: "i", scope: !617, file: !3, line: 125, type: !11)
!631 = !DILocalVariable(name: "input2i", scope: !617, file: !3, line: 126, type: !11)
!632 = !DILocation(line: 0, scope: !617)
!633 = !DILocation(line: 0, scope: !626)
!634 = !DILocation(line: 119, column: 3, scope: !626)
!635 = !DILocation(line: 126, column: 22, scope: !617)
!636 = !DILocation(line: 127, column: 3, scope: !617)
!637 = !DILocation(line: 128, column: 1, scope: !617)
!638 = !DILocation(line: 121, column: 24, scope: !628)
!639 = !DILocation(line: 0, scope: !628)
!640 = !DILocation(line: 122, column: 5, scope: !628)
!641 = !DILocation(line: 123, column: 5, scope: !628)
!642 = !DILocation(line: 119, column: 59, scope: !629)
!643 = !DILocation(line: 119, column: 37, scope: !629)
!644 = distinct !{!644, !634, !645, !584, !585}
!645 = !DILocation(line: 124, column: 3, scope: !626)
!646 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_wide_", scope: !3, file: !3, line: 75, type: !647, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !620}
!649 = !{!650, !651, !653, !656, !657, !658, !659}
!650 = !DILocalVariable(name: "tmp", arg: 1, scope: !646, file: !3, line: 75, type: !620)
!651 = !DILocalVariable(name: "i", scope: !652, file: !3, line: 77, type: !11)
!652 = distinct !DILexicalBlock(scope: !646, file: !3, line: 77, column: 3)
!653 = !DILocalVariable(name: "ctr", scope: !654, file: !3, line: 79, type: !11)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 78, column: 3)
!655 = distinct !DILexicalBlock(scope: !652, file: !3, line: 77, column: 3)
!656 = !DILocalVariable(name: "tctr", scope: !654, file: !3, line: 80, type: !6)
!657 = !DILocalVariable(name: "tctrp1", scope: !654, file: !3, line: 81, type: !6)
!658 = !DILocalVariable(name: "r0", scope: !654, file: !3, line: 82, type: !11)
!659 = !DILocalVariable(name: "c", scope: !654, file: !3, line: 83, type: !6)
!660 = !DILocation(line: 0, scope: !646)
!661 = !DILocation(line: 0, scope: !652)
!662 = !DILocation(line: 77, column: 3, scope: !652)
!663 = !DILocation(line: 87, column: 1, scope: !646)
!664 = !DILocation(line: 0, scope: !654)
!665 = !DILocation(line: 80, column: 21, scope: !654)
!666 = !DILocation(line: 81, column: 31, scope: !654)
!667 = !DILocation(line: 81, column: 23, scope: !654)
!668 = !{!109, !109, i64 0}
!669 = !DILocation(line: 83, column: 23, scope: !654)
!670 = !DILocation(line: 84, column: 16, scope: !654)
!671 = !DILocation(line: 84, column: 14, scope: !654)
!672 = !DILocation(line: 85, column: 38, scope: !654)
!673 = !DILocation(line: 85, column: 29, scope: !654)
!674 = !DILocation(line: 77, column: 37, scope: !655)
!675 = distinct !{!675, !662, !676, !584, !585}
!676 = !DILocation(line: 86, column: 3, scope: !652)
!677 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top_wide", scope: !3, file: !3, line: 42, type: !647, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !678)
!678 = !{!679, !680, !681, !682, !683, !684}
!679 = !DILocalVariable(name: "b", arg: 1, scope: !677, file: !3, line: 42, type: !620)
!680 = !DILocalVariable(name: "b4", scope: !677, file: !3, line: 44, type: !6)
!681 = !DILocalVariable(name: "b0", scope: !677, file: !3, line: 45, type: !6)
!682 = !DILocalVariable(name: "b4_", scope: !677, file: !3, line: 46, type: !6)
!683 = !DILocalVariable(name: "b4_26", scope: !677, file: !3, line: 47, type: !11)
!684 = !DILocalVariable(name: "b0_", scope: !677, file: !3, line: 48, type: !6)
!685 = !DILocation(line: 0, scope: !677)
!686 = !DILocation(line: 44, column: 17, scope: !677)
!687 = !DILocation(line: 45, column: 17, scope: !677)
!688 = !DILocation(line: 46, column: 21, scope: !677)
!689 = !DILocation(line: 47, column: 34, scope: !677)
!690 = !DILocation(line: 47, column: 20, scope: !677)
!691 = !DILocation(line: 48, column: 58, scope: !677)
!692 = !DILocation(line: 48, column: 23, scope: !677)
!693 = !DILocation(line: 48, column: 21, scope: !677)
!694 = !DILocation(line: 49, column: 9, scope: !677)
!695 = !DILocation(line: 50, column: 9, scope: !677)
!696 = !DILocation(line: 51, column: 1, scope: !677)
!697 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_copy_from_wide_", scope: !3, file: !3, line: 53, type: !698, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !52, !620}
!700 = !{!701, !702, !703, !705}
!701 = !DILocalVariable(name: "output", arg: 1, scope: !697, file: !3, line: 53, type: !52)
!702 = !DILocalVariable(name: "input", arg: 2, scope: !697, file: !3, line: 53, type: !620)
!703 = !DILocalVariable(name: "i", scope: !704, file: !3, line: 55, type: !11)
!704 = distinct !DILexicalBlock(scope: !697, file: !3, line: 55, column: 3)
!705 = !DILocalVariable(name: "xi", scope: !706, file: !3, line: 57, type: !6)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 56, column: 3)
!707 = distinct !DILexicalBlock(scope: !704, file: !3, line: 55, column: 3)
!708 = !DILocation(line: 0, scope: !697)
!709 = !DILocation(line: 0, scope: !704)
!710 = !DILocation(line: 55, column: 3, scope: !704)
!711 = !DILocation(line: 60, column: 1, scope: !697)
!712 = !DILocation(line: 57, column: 19, scope: !706)
!713 = !DILocation(line: 0, scope: !706)
!714 = !DILocation(line: 58, column: 17, scope: !706)
!715 = !DILocation(line: 58, column: 5, scope: !706)
!716 = !DILocation(line: 58, column: 15, scope: !706)
!717 = !DILocation(line: 55, column: 59, scope: !707)
!718 = !DILocation(line: 55, column: 37, scope: !707)
!719 = distinct !{!719, !710, !720, !584, !585}
!720 = !DILocation(line: 59, column: 3, scope: !704)
!721 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_sum_scalar_multiplication_", scope: !3, file: !3, line: 63, type: !722, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !724)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !620, !52, !11}
!724 = !{!725, !726, !727, !728, !730, !733, !734, !735}
!725 = !DILocalVariable(name: "output", arg: 1, scope: !721, file: !3, line: 63, type: !620)
!726 = !DILocalVariable(name: "input", arg: 2, scope: !721, file: !3, line: 63, type: !52)
!727 = !DILocalVariable(name: "s", arg: 3, scope: !721, file: !3, line: 63, type: !11)
!728 = !DILocalVariable(name: "i", scope: !729, file: !3, line: 65, type: !11)
!729 = distinct !DILexicalBlock(scope: !721, file: !3, line: 65, column: 3)
!730 = !DILocalVariable(name: "xi", scope: !731, file: !3, line: 67, type: !6)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 66, column: 3)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 65, column: 3)
!733 = !DILocalVariable(name: "yi", scope: !731, file: !3, line: 68, type: !11)
!734 = !DILocalVariable(name: "x_wide", scope: !731, file: !3, line: 69, type: !6)
!735 = !DILocalVariable(name: "y_wide", scope: !731, file: !3, line: 70, type: !6)
!736 = !DILocation(line: 0, scope: !721)
!737 = !DILocation(line: 0, scope: !729)
!738 = !DILocation(line: 65, column: 3, scope: !729)
!739 = !DILocation(line: 73, column: 1, scope: !721)
!740 = !DILocation(line: 67, column: 19, scope: !731)
!741 = !DILocation(line: 0, scope: !731)
!742 = !DILocation(line: 68, column: 19, scope: !731)
!743 = !DILocation(line: 69, column: 23, scope: !731)
!744 = !DILocation(line: 71, column: 29, scope: !731)
!745 = !DILocation(line: 71, column: 20, scope: !731)
!746 = !DILocation(line: 71, column: 15, scope: !731)
!747 = !DILocation(line: 65, column: 59, scope: !732)
!748 = !DILocation(line: 65, column: 37, scope: !732)
!749 = distinct !{!749, !738, !750, !584, !585}
!750 = !DILocation(line: 72, column: 3, scope: !729)
!751 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_shift_reduce", scope: !3, file: !3, line: 103, type: !309, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !752)
!752 = !{!753, !754, !755, !757, !760}
!753 = !DILocalVariable(name: "output", arg: 1, scope: !751, file: !3, line: 103, type: !52)
!754 = !DILocalVariable(name: "tmp", scope: !751, file: !3, line: 105, type: !11)
!755 = !DILocalVariable(name: "i", scope: !756, file: !3, line: 106, type: !11)
!756 = distinct !DILexicalBlock(scope: !751, file: !3, line: 106, column: 3)
!757 = !DILocalVariable(name: "ctr", scope: !758, file: !3, line: 108, type: !11)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 107, column: 3)
!759 = distinct !DILexicalBlock(scope: !756, file: !3, line: 106, column: 3)
!760 = !DILocalVariable(name: "z", scope: !758, file: !3, line: 109, type: !11)
!761 = !DILocation(line: 0, scope: !751)
!762 = !DILocation(line: 105, column: 18, scope: !751)
!763 = !DILocation(line: 0, scope: !756)
!764 = !DILocation(line: 106, column: 3, scope: !756)
!765 = !DILocation(line: 110, column: 17, scope: !758)
!766 = !DILocation(line: 0, scope: !758)
!767 = !DILocation(line: 112, column: 14, scope: !751)
!768 = !DILocation(line: 113, column: 3, scope: !751)
!769 = !DILocation(line: 114, column: 1, scope: !751)
!770 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_reduce", scope: !3, file: !3, line: 27, type: !309, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !771)
!771 = !{!772, !773}
!772 = !DILocalVariable(name: "b", arg: 1, scope: !770, file: !3, line: 27, type: !52)
!773 = !DILocalVariable(name: "b0", scope: !770, file: !3, line: 29, type: !11)
!774 = !DILocation(line: 0, scope: !770)
!775 = !DILocation(line: 29, column: 17, scope: !770)
!776 = !DILocation(line: 30, column: 32, scope: !770)
!777 = !DILocation(line: 30, column: 9, scope: !770)
!778 = !DILocation(line: 31, column: 1, scope: !770)
!779 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_32_poly1305_process_last_block_", scope: !3, file: !3, line: 199, type: !780, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !38, !47, !38, !6}
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806}
!783 = !DILocalVariable(name: "block", arg: 1, scope: !779, file: !3, line: 200, type: !38)
!784 = !DILocalVariable(name: "st", arg: 2, scope: !779, file: !3, line: 201, type: !47)
!785 = !DILocalVariable(name: "m", arg: 3, scope: !779, file: !3, line: 202, type: !38)
!786 = !DILocalVariable(name: "rem_", arg: 4, scope: !779, file: !3, line: 203, type: !6)
!787 = !DILocalVariable(name: "tmp", scope: !779, file: !3, line: 206, type: !189)
!788 = !DILocalVariable(name: "s0", scope: !779, file: !3, line: 207, type: !38)
!789 = !DILocalVariable(name: "s1", scope: !779, file: !3, line: 208, type: !38)
!790 = !DILocalVariable(name: "s2", scope: !779, file: !3, line: 209, type: !38)
!791 = !DILocalVariable(name: "s3", scope: !779, file: !3, line: 210, type: !38)
!792 = !DILocalVariable(name: "s4", scope: !779, file: !3, line: 211, type: !38)
!793 = !DILocalVariable(name: "i0", scope: !779, file: !3, line: 212, type: !11)
!794 = !DILocalVariable(name: "i1", scope: !779, file: !3, line: 213, type: !11)
!795 = !DILocalVariable(name: "i2", scope: !779, file: !3, line: 214, type: !11)
!796 = !DILocalVariable(name: "i3", scope: !779, file: !3, line: 215, type: !11)
!797 = !DILocalVariable(name: "i4", scope: !779, file: !3, line: 216, type: !11)
!798 = !DILocalVariable(name: "r0", scope: !779, file: !3, line: 217, type: !11)
!799 = !DILocalVariable(name: "r1", scope: !779, file: !3, line: 218, type: !11)
!800 = !DILocalVariable(name: "r2", scope: !779, file: !3, line: 219, type: !11)
!801 = !DILocalVariable(name: "r3", scope: !779, file: !3, line: 220, type: !11)
!802 = !DILocalVariable(name: "r4", scope: !779, file: !3, line: 221, type: !11)
!803 = !DILocalVariable(name: "scrut0", scope: !779, file: !3, line: 227, type: !47)
!804 = !DILocalVariable(name: "h", scope: !779, file: !3, line: 228, type: !52)
!805 = !DILocalVariable(name: "scrut", scope: !779, file: !3, line: 229, type: !47)
!806 = !DILocalVariable(name: "r", scope: !779, file: !3, line: 230, type: !52)
!807 = !DILocation(line: 0, scope: !779)
!808 = !DILocation(line: 206, column: 3, scope: !779)
!809 = !DILocation(line: 206, column: 12, scope: !779)
!810 = !DILocation(line: 208, column: 23, scope: !779)
!811 = !DILocation(line: 209, column: 23, scope: !779)
!812 = !DILocation(line: 210, column: 23, scope: !779)
!813 = !DILocation(line: 211, column: 23, scope: !779)
!814 = !DILocation(line: 212, column: 17, scope: !779)
!815 = !DILocation(line: 213, column: 17, scope: !779)
!816 = !DILocation(line: 214, column: 17, scope: !779)
!817 = !DILocation(line: 215, column: 17, scope: !779)
!818 = !DILocation(line: 216, column: 17, scope: !779)
!819 = !DILocation(line: 217, column: 20, scope: !779)
!820 = !DILocation(line: 218, column: 20, scope: !779)
!821 = !DILocation(line: 218, column: 36, scope: !779)
!822 = !DILocation(line: 219, column: 20, scope: !779)
!823 = !DILocation(line: 219, column: 36, scope: !779)
!824 = !DILocation(line: 220, column: 20, scope: !779)
!825 = !DILocation(line: 221, column: 20, scope: !779)
!826 = !DILocation(line: 222, column: 3, scope: !779)
!827 = !DILocation(line: 222, column: 11, scope: !779)
!828 = !DILocation(line: 223, column: 3, scope: !779)
!829 = !DILocation(line: 223, column: 11, scope: !779)
!830 = !DILocation(line: 224, column: 3, scope: !779)
!831 = !DILocation(line: 224, column: 11, scope: !779)
!832 = !DILocation(line: 225, column: 3, scope: !779)
!833 = !DILocation(line: 225, column: 11, scope: !779)
!834 = !DILocation(line: 226, column: 3, scope: !779)
!835 = !DILocation(line: 226, column: 11, scope: !779)
!836 = !DILocation(line: 231, column: 3, scope: !779)
!837 = !DILocation(line: 232, column: 1, scope: !779)
!838 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_limb_", scope: !3, file: !3, line: 89, type: !309, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !839)
!839 = !{!840, !841, !843, !846, !847, !848, !849}
!840 = !DILocalVariable(name: "tmp", arg: 1, scope: !838, file: !3, line: 89, type: !52)
!841 = !DILocalVariable(name: "i", scope: !842, file: !3, line: 91, type: !11)
!842 = distinct !DILexicalBlock(scope: !838, file: !3, line: 91, column: 3)
!843 = !DILocalVariable(name: "ctr", scope: !844, file: !3, line: 93, type: !11)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 92, column: 3)
!845 = distinct !DILexicalBlock(scope: !842, file: !3, line: 91, column: 3)
!846 = !DILocalVariable(name: "tctr", scope: !844, file: !3, line: 94, type: !11)
!847 = !DILocalVariable(name: "tctrp1", scope: !844, file: !3, line: 95, type: !11)
!848 = !DILocalVariable(name: "r0", scope: !844, file: !3, line: 96, type: !11)
!849 = !DILocalVariable(name: "c", scope: !844, file: !3, line: 97, type: !11)
!850 = !DILocation(line: 0, scope: !838)
!851 = !DILocation(line: 0, scope: !842)
!852 = !DILocation(line: 91, column: 3, scope: !842)
!853 = !DILocation(line: 101, column: 1, scope: !838)
!854 = !DILocation(line: 0, scope: !844)
!855 = !DILocation(line: 94, column: 21, scope: !844)
!856 = !DILocation(line: 95, column: 31, scope: !844)
!857 = !DILocation(line: 95, column: 23, scope: !844)
!858 = !DILocation(line: 96, column: 24, scope: !844)
!859 = !DILocation(line: 97, column: 23, scope: !844)
!860 = !DILocation(line: 98, column: 14, scope: !844)
!861 = !DILocation(line: 99, column: 38, scope: !844)
!862 = !DILocation(line: 99, column: 29, scope: !844)
!863 = !DILocation(line: 91, column: 37, scope: !845)
!864 = distinct !{!864, !852, !865, !584, !585}
!865 = !DILocation(line: 100, column: 3, scope: !842)
!866 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top", scope: !3, file: !3, line: 33, type: !309, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !867)
!867 = !{!868, !869, !870, !871}
!868 = !DILocalVariable(name: "b", arg: 1, scope: !866, file: !3, line: 33, type: !52)
!869 = !DILocalVariable(name: "b4", scope: !866, file: !3, line: 35, type: !11)
!870 = !DILocalVariable(name: "b0", scope: !866, file: !3, line: 36, type: !11)
!871 = !DILocalVariable(name: "b4_26", scope: !866, file: !3, line: 37, type: !11)
!872 = !DILocation(line: 0, scope: !866)
!873 = !DILocation(line: 35, column: 17, scope: !866)
!874 = !DILocation(line: 36, column: 17, scope: !866)
!875 = !DILocation(line: 37, column: 23, scope: !866)
!876 = !DILocation(line: 38, column: 14, scope: !866)
!877 = !DILocation(line: 38, column: 9, scope: !866)
!878 = !DILocation(line: 39, column: 35, scope: !866)
!879 = !DILocation(line: 39, column: 43, scope: !866)
!880 = !DILocation(line: 39, column: 9, scope: !866)
!881 = !DILocation(line: 40, column: 1, scope: !866)
!882 = distinct !DISubprogram(name: "FStar_UInt32_gte_mask", scope: !883, file: !883, line: 153, type: !884, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !886)
!883 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!884 = !DISubroutineType(types: !885)
!885 = !{!11, !11, !11}
!886 = !{!887, !888}
!887 = !DILocalVariable(name: "x", arg: 1, scope: !882, file: !883, line: 153, type: !11)
!888 = !DILocalVariable(name: "y", arg: 2, scope: !882, file: !883, line: 153, type: !11)
!889 = !DILocation(line: 0, scope: !882)
!890 = !DILocation(line: 154, column: 24, scope: !882)
!891 = !DILocation(line: 154, column: 35, scope: !882)
!892 = !DILocation(line: 154, column: 40, scope: !882)
!893 = !DILocation(line: 154, column: 12, scope: !882)
!894 = !DILocation(line: 154, column: 10, scope: !882)
!895 = !DILocation(line: 154, column: 3, scope: !882)
!896 = distinct !DISubprogram(name: "FStar_UInt32_eq_mask", scope: !883, file: !883, line: 143, type: !884, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!897 = !{!898, !899}
!898 = !DILocalVariable(name: "x", arg: 1, scope: !896, file: !883, line: 143, type: !11)
!899 = !DILocalVariable(name: "y", arg: 2, scope: !896, file: !883, line: 143, type: !11)
!900 = !DILocation(line: 0, scope: !896)
!901 = !DILocation(line: 144, column: 7, scope: !896)
!902 = !DILocation(line: 145, column: 10, scope: !896)
!903 = !DILocation(line: 145, column: 5, scope: !896)
!904 = !DILocation(line: 146, column: 10, scope: !896)
!905 = !DILocation(line: 146, column: 5, scope: !896)
!906 = !DILocation(line: 147, column: 10, scope: !896)
!907 = !DILocation(line: 147, column: 5, scope: !896)
!908 = !DILocation(line: 148, column: 10, scope: !896)
!909 = !DILocation(line: 148, column: 5, scope: !896)
!910 = !DILocation(line: 149, column: 10, scope: !896)
!911 = !DILocation(line: 149, column: 5, scope: !896)
!912 = !DILocation(line: 150, column: 23, scope: !896)
!913 = !DILocation(line: 150, column: 3, scope: !896)
!914 = distinct !DISubprogram(name: "store128_le_", scope: !37, file: !37, line: 522, type: !525, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !915)
!915 = !{!916, !917}
!916 = !DILocalVariable(name: "b", arg: 1, scope: !914, file: !37, line: 522, type: !38)
!917 = !DILocalVariable(name: "n", arg: 2, scope: !914, file: !37, line: 522, type: !527)
!918 = !DILocation(line: 0, scope: !914)
!919 = !DILocation(line: 523, column: 3, scope: !914)
!920 = !DILocation(line: 524, column: 3, scope: !914)
!921 = !DILocation(line: 525, column: 1, scope: !914)
!922 = distinct !DISubprogram(name: "store64", scope: !37, file: !37, line: 357, type: !923, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !925)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !38, !6}
!925 = !{!926, !927}
!926 = !DILocalVariable(name: "b", arg: 1, scope: !922, file: !37, line: 357, type: !38)
!927 = !DILocalVariable(name: "i", arg: 2, scope: !922, file: !37, line: 357, type: !6)
!928 = !DILocation(line: 0, scope: !922)
!929 = !DILocation(line: 357, column: 54, scope: !922)
!930 = !DILocation(line: 357, column: 72, scope: !922)
!931 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_32_crypto_onetimeauth_", scope: !3, file: !3, line: 422, type: !505, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !932)
!932 = !{!933, !934, !935, !936, !937, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955}
!933 = !DILocalVariable(name: "output", arg: 1, scope: !931, file: !3, line: 423, type: !38)
!934 = !DILocalVariable(name: "input", arg: 2, scope: !931, file: !3, line: 424, type: !38)
!935 = !DILocalVariable(name: "len1", arg: 3, scope: !931, file: !3, line: 425, type: !6)
!936 = !DILocalVariable(name: "k1", arg: 4, scope: !931, file: !3, line: 426, type: !38)
!937 = !DILocalVariable(name: "buf", scope: !931, file: !3, line: 429, type: !938)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 10)
!941 = !DILocalVariable(name: "r", scope: !931, file: !3, line: 430, type: !52)
!942 = !DILocalVariable(name: "h", scope: !931, file: !3, line: 431, type: !52)
!943 = !DILocalVariable(name: "st", scope: !931, file: !3, line: 432, type: !47)
!944 = !DILocalVariable(name: "key_s", scope: !931, file: !3, line: 433, type: !38)
!945 = !DILocalVariable(name: "scrut", scope: !931, file: !3, line: 435, type: !47)
!946 = !DILocalVariable(name: "h5", scope: !931, file: !3, line: 436, type: !52)
!947 = !DILocalVariable(name: "acc", scope: !931, file: !3, line: 437, type: !52)
!948 = !DILocalVariable(name: "k_", scope: !931, file: !3, line: 438, type: !83)
!949 = !DILocalVariable(name: "h0", scope: !931, file: !3, line: 439, type: !11)
!950 = !DILocalVariable(name: "h1", scope: !931, file: !3, line: 440, type: !11)
!951 = !DILocalVariable(name: "h2", scope: !931, file: !3, line: 441, type: !11)
!952 = !DILocalVariable(name: "h3", scope: !931, file: !3, line: 442, type: !11)
!953 = !DILocalVariable(name: "h4", scope: !931, file: !3, line: 443, type: !11)
!954 = !DILocalVariable(name: "acc_", scope: !931, file: !3, line: 445, type: !83)
!955 = !DILocalVariable(name: "mac_", scope: !931, file: !3, line: 455, type: !83)
!956 = !DILocation(line: 0, scope: !931)
!957 = !DILocation(line: 429, column: 3, scope: !931)
!958 = !DILocation(line: 429, column: 12, scope: !931)
!959 = !DILocation(line: 430, column: 17, scope: !931)
!960 = !DILocation(line: 431, column: 21, scope: !931)
!961 = !DILocation(line: 432, column: 3, scope: !931)
!962 = !DILocation(line: 432, column: 46, scope: !931)
!963 = !DILocation(line: 432, column: 51, scope: !931)
!964 = !DILocation(line: 433, column: 23, scope: !931)
!965 = !DILocation(line: 434, column: 3, scope: !931)
!966 = !DILocation(line: 438, column: 3, scope: !931)
!967 = !DILocation(line: 438, column: 19, scope: !931)
!968 = !DILocation(line: 438, column: 24, scope: !931)
!969 = !DILocation(line: 439, column: 17, scope: !931)
!970 = !DILocation(line: 440, column: 17, scope: !931)
!971 = !DILocation(line: 441, column: 17, scope: !931)
!972 = !DILocation(line: 442, column: 17, scope: !931)
!973 = !DILocation(line: 443, column: 17, scope: !931)
!974 = !DILocation(line: 444, column: 3, scope: !931)
!975 = !DILocation(line: 445, column: 3, scope: !931)
!976 = !DILocation(line: 446, column: 82, scope: !931)
!977 = !DILocation(line: 446, column: 50, scope: !931)
!978 = !DILocation(line: 446, column: 25, scope: !931)
!979 = !DILocation(line: 448, column: 84, scope: !931)
!980 = !DILocation(line: 448, column: 52, scope: !931)
!981 = !DILocation(line: 448, column: 27, scope: !931)
!982 = !DILocation(line: 450, column: 86, scope: !931)
!983 = !DILocation(line: 450, column: 54, scope: !931)
!984 = !DILocation(line: 450, column: 29, scope: !931)
!985 = !DILocation(line: 452, column: 88, scope: !931)
!986 = !DILocation(line: 452, column: 56, scope: !931)
!987 = !DILocation(line: 452, column: 31, scope: !931)
!988 = !DILocation(line: 454, column: 45, scope: !931)
!989 = !DILocation(line: 454, column: 13, scope: !931)
!990 = !DILocation(line: 452, column: 11, scope: !931)
!991 = !DILocation(line: 450, column: 9, scope: !931)
!992 = !DILocation(line: 448, column: 7, scope: !931)
!993 = !DILocation(line: 446, column: 5, scope: !931)
!994 = !DILocation(line: 455, column: 3, scope: !931)
!995 = !DILocation(line: 455, column: 19, scope: !931)
!996 = !DILocation(line: 455, column: 26, scope: !931)
!997 = !DILocation(line: 456, column: 3, scope: !931)
!998 = !DILocation(line: 457, column: 1, scope: !931)
!999 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_32_poly1305_complete", scope: !3, file: !3, line: 400, type: !1000, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !47, !38, !6, !38}
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!1003 = !DILocalVariable(name: "st", arg: 1, scope: !999, file: !3, line: 401, type: !47)
!1004 = !DILocalVariable(name: "m", arg: 2, scope: !999, file: !3, line: 402, type: !38)
!1005 = !DILocalVariable(name: "len1", arg: 3, scope: !999, file: !3, line: 403, type: !6)
!1006 = !DILocalVariable(name: "k1", arg: 4, scope: !999, file: !3, line: 404, type: !38)
!1007 = !DILocalVariable(name: "kr", scope: !999, file: !3, line: 407, type: !38)
!1008 = !DILocalVariable(name: "len16", scope: !999, file: !3, line: 408, type: !6)
!1009 = !DILocalVariable(name: "rem16", scope: !999, file: !3, line: 409, type: !6)
!1010 = !DILocalVariable(name: "part_input", scope: !999, file: !3, line: 410, type: !38)
!1011 = !DILocalVariable(name: "last_block", scope: !999, file: !3, line: 411, type: !38)
!1012 = !DILocalVariable(name: "scrut", scope: !999, file: !3, line: 415, type: !47)
!1013 = !DILocalVariable(name: "h", scope: !999, file: !3, line: 416, type: !52)
!1014 = !DILocalVariable(name: "acc", scope: !999, file: !3, line: 417, type: !52)
!1015 = !DILocation(line: 0, scope: !999)
!1016 = !DILocation(line: 408, column: 25, scope: !999)
!1017 = !DILocation(line: 409, column: 25, scope: !999)
!1018 = !DILocation(line: 412, column: 3, scope: !999)
!1019 = !DILocation(line: 413, column: 15, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !999, file: !3, line: 413, column: 7)
!1021 = !DILocation(line: 413, column: 7, scope: !999)
!1022 = !DILocation(line: 411, column: 29, scope: !999)
!1023 = !DILocation(line: 411, column: 27, scope: !999)
!1024 = !DILocation(line: 414, column: 5, scope: !1020)
!1025 = !DILocation(line: 418, column: 3, scope: !999)
!1026 = !DILocation(line: 419, column: 1, scope: !999)
!1027 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_32_poly1305_partial", scope: !3, file: !3, line: 349, type: !1000, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1029 = !DILocalVariable(name: "st", arg: 1, scope: !1027, file: !3, line: 350, type: !47)
!1030 = !DILocalVariable(name: "input", arg: 2, scope: !1027, file: !3, line: 351, type: !38)
!1031 = !DILocalVariable(name: "len1", arg: 3, scope: !1027, file: !3, line: 352, type: !6)
!1032 = !DILocalVariable(name: "kr", arg: 4, scope: !1027, file: !3, line: 353, type: !38)
!1033 = !DILocalVariable(name: "scrut", scope: !1027, file: !3, line: 356, type: !47)
!1034 = !DILocalVariable(name: "r", scope: !1027, file: !3, line: 357, type: !52)
!1035 = !DILocalVariable(name: "x0", scope: !1027, file: !3, line: 358, type: !52)
!1036 = !DILocalVariable(name: "k1", scope: !1027, file: !3, line: 359, type: !83)
!1037 = !DILocalVariable(name: "k_clamped", scope: !1027, file: !3, line: 361, type: !83)
!1038 = !DILocalVariable(name: "r0", scope: !1027, file: !3, line: 366, type: !11)
!1039 = !DILocalVariable(name: "r1", scope: !1027, file: !3, line: 368, type: !11)
!1040 = !DILocalVariable(name: "r2", scope: !1027, file: !3, line: 372, type: !11)
!1041 = !DILocalVariable(name: "r3", scope: !1027, file: !3, line: 376, type: !11)
!1042 = !DILocalVariable(name: "r4", scope: !1027, file: !3, line: 380, type: !11)
!1043 = !DILocalVariable(name: "scrut0", scope: !1027, file: !3, line: 388, type: !47)
!1044 = !DILocalVariable(name: "h", scope: !1027, file: !3, line: 389, type: !52)
!1045 = !DILocalVariable(name: "x00", scope: !1027, file: !3, line: 390, type: !52)
!1046 = !DILocation(line: 0, scope: !1027)
!1047 = !DILocation(line: 359, column: 3, scope: !1027)
!1048 = !DILocation(line: 359, column: 19, scope: !1027)
!1049 = !DILocation(line: 359, column: 24, scope: !1027)
!1050 = !DILocation(line: 360, column: 3, scope: !1027)
!1051 = !DILocation(line: 361, column: 3, scope: !1027)
!1052 = !DILocation(line: 363, column: 52, scope: !1027)
!1053 = !DILocation(line: 363, column: 27, scope: !1027)
!1054 = !DILocation(line: 365, column: 9, scope: !1027)
!1055 = !DILocation(line: 363, column: 7, scope: !1027)
!1056 = !DILocation(line: 362, column: 5, scope: !1027)
!1057 = !DILocation(line: 366, column: 27, scope: !1027)
!1058 = !DILocation(line: 366, column: 17, scope: !1027)
!1059 = !DILocation(line: 366, column: 70, scope: !1027)
!1060 = !DILocation(line: 369, column: 47, scope: !1027)
!1061 = !DILocation(line: 369, column: 15, scope: !1027)
!1062 = !DILocation(line: 369, column: 5, scope: !1027)
!1063 = !DILocation(line: 370, column: 5, scope: !1027)
!1064 = !DILocation(line: 373, column: 47, scope: !1027)
!1065 = !DILocation(line: 373, column: 15, scope: !1027)
!1066 = !DILocation(line: 373, column: 5, scope: !1027)
!1067 = !DILocation(line: 374, column: 5, scope: !1027)
!1068 = !DILocation(line: 377, column: 47, scope: !1027)
!1069 = !DILocation(line: 377, column: 15, scope: !1027)
!1070 = !DILocation(line: 377, column: 5, scope: !1027)
!1071 = !DILocation(line: 378, column: 5, scope: !1027)
!1072 = !DILocation(line: 381, column: 47, scope: !1027)
!1073 = !DILocation(line: 381, column: 15, scope: !1027)
!1074 = !DILocation(line: 381, column: 5, scope: !1027)
!1075 = !DILocation(line: 382, column: 5, scope: !1027)
!1076 = !DILocation(line: 383, column: 10, scope: !1027)
!1077 = !DILocation(line: 384, column: 3, scope: !1027)
!1078 = !DILocation(line: 384, column: 10, scope: !1027)
!1079 = !DILocation(line: 385, column: 3, scope: !1027)
!1080 = !DILocation(line: 385, column: 10, scope: !1027)
!1081 = !DILocation(line: 386, column: 3, scope: !1027)
!1082 = !DILocation(line: 386, column: 10, scope: !1027)
!1083 = !DILocation(line: 387, column: 3, scope: !1027)
!1084 = !DILocation(line: 387, column: 10, scope: !1027)
!1085 = !DILocation(line: 396, column: 3, scope: !1027)
!1086 = !DILocation(line: 392, column: 11, scope: !1027)
!1087 = !DILocation(line: 397, column: 1, scope: !1027)
!1088 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_32_poly1305_blocks", scope: !3, file: !3, line: 332, type: !280, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1096, !1097}
!1090 = !DILocalVariable(name: "st", arg: 1, scope: !1088, file: !3, line: 333, type: !47)
!1091 = !DILocalVariable(name: "m", arg: 2, scope: !1088, file: !3, line: 334, type: !38)
!1092 = !DILocalVariable(name: "len1", arg: 3, scope: !1088, file: !3, line: 335, type: !6)
!1093 = !DILocalVariable(name: "block", scope: !1094, file: !3, line: 340, type: !38)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 339, column: 3)
!1095 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 338, column: 7)
!1096 = !DILocalVariable(name: "tail1", scope: !1094, file: !3, line: 341, type: !38)
!1097 = !DILocalVariable(name: "len2", scope: !1094, file: !3, line: 343, type: !6)
!1098 = !DILocation(line: 0, scope: !1088)
!1099 = !DILocation(line: 338, column: 14, scope: !1095)
!1100 = !DILocation(line: 338, column: 7, scope: !1088)
!1101 = !DILocation(line: 0, scope: !1094)
!1102 = !DILocation(line: 341, column: 24, scope: !1094)
!1103 = !DILocation(line: 342, column: 5, scope: !1094)
!1104 = !DILocation(line: 343, column: 26, scope: !1094)
!1105 = !DILocation(line: 344, column: 5, scope: !1094)
!1106 = !DILocation(line: 345, column: 3, scope: !1094)
!1107 = !DILocation(line: 346, column: 1, scope: !1088)
