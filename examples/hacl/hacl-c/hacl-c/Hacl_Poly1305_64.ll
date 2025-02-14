; ModuleID = 'hacl-c/hacl-c/Hacl_Poly1305_64.c'
source_filename = "hacl-c/hacl-c/Hacl_Poly1305_64.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_64_State_poly1305_state = type { i64*, i64* }
%struct.FStar_UInt128_uint128 = type { i64, i64 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* noalias nocapture writeonly sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, i64* noundef %1, i64* noundef %2) local_unnamed_addr #0 !dbg !26 {
  call void @llvm.dbg.value(metadata i64* %1, metadata !37, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64* %2, metadata !38, metadata !DIExpression()), !dbg !39
  call fastcc void @Hacl_Impl_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, i64* noundef %1, i64* noundef %2), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* noalias nocapture writeonly sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, i64* noundef %1, i64* noundef %2) unnamed_addr #0 !dbg !42 {
  call void @llvm.dbg.value(metadata i64* %1, metadata !44, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i64* %2, metadata !45, metadata !DIExpression()), !dbg !46
  %4 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %0, i32 0, i32 0, !dbg !47
  store i64* %1, i64** %4, align 4, !dbg !47, !tbaa !48
  %5 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %0, i32 0, i32 1, !dbg !47
  store i64* %2, i64** %5, align 4, !dbg !47, !tbaa !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_init(i64* nocapture writeonly %0, i64* nocapture writeonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #2 !dbg !55 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !60, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !80
  call void @llvm.dbg.value(metadata i64* %1, metadata !60, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !80
  call void @llvm.dbg.value(metadata i8* %2, metadata !61, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i64* %0, metadata !62, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !80
  call void @llvm.dbg.value(metadata i64* %1, metadata !62, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !80
  call void @llvm.dbg.value(metadata i64* %0, metadata !63, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i64* %0, metadata !64, metadata !DIExpression()), !dbg !80
  %12 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #14, !dbg !81
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !65, metadata !DIExpression()), !dbg !82
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i8* noundef %2), !dbg !83
  %13 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #14, !dbg !84
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !73, metadata !DIExpression()), !dbg !85
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 1152921487695413244) #14, !dbg !86
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !87
  %15 = load i64, i64* %14, align 8, !dbg !87, !tbaa !88
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !87
  %17 = load i64, i64* %16, align 8, !dbg !87, !tbaa !91
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %15, i64 %17, i32 noundef 64) #14, !dbg !87
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef 1152921487695413247) #14, !dbg !92
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !93
  %19 = load i64, i64* %18, align 8, !dbg !93, !tbaa !88
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !93
  %21 = load i64, i64* %20, align 8, !dbg !93, !tbaa !91
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !93
  %23 = load i64, i64* %22, align 8, !dbg !93, !tbaa !88
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !93
  %25 = load i64, i64* %24, align 8, !dbg !93, !tbaa !91
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %19, i64 %21, i64 %23, i64 %25) #14, !dbg !93
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !94
  %27 = load i64, i64* %26, align 8, !dbg !94, !tbaa !88
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !94
  %29 = load i64, i64* %28, align 8, !dbg !94, !tbaa !91
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !94
  %31 = load i64, i64* %30, align 8, !dbg !94, !tbaa !88
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !94
  %33 = load i64, i64* %32, align 8, !dbg !94, !tbaa !91
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %27, i64 %29, i64 %31, i64 %33) #14, !dbg !94
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !95
  %35 = load i64, i64* %34, align 8, !dbg !95, !tbaa !88
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !95
  %37 = load i64, i64* %36, align 8, !dbg !95, !tbaa !91
  %38 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %35, i64 %37) #14, !dbg !95
  %39 = and i64 %38, 17592186044415, !dbg !96
  call void @llvm.dbg.value(metadata i64 %39, metadata !74, metadata !DIExpression()), !dbg !80
  %40 = load i64, i64* %34, align 8, !dbg !97, !tbaa !88
  %41 = load i64, i64* %36, align 8, !dbg !97, !tbaa !91
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %40, i64 %41, i32 noundef 44) #14, !dbg !97
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !98
  %43 = load i64, i64* %42, align 8, !dbg !98, !tbaa !88
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !98
  %45 = load i64, i64* %44, align 8, !dbg !98, !tbaa !91
  %46 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %43, i64 %45) #14, !dbg !98
  %47 = and i64 %46, 17592186044415, !dbg !99
  call void @llvm.dbg.value(metadata i64 %47, metadata !75, metadata !DIExpression()), !dbg !80
  %48 = load i64, i64* %34, align 8, !dbg !100, !tbaa !88
  %49 = load i64, i64* %36, align 8, !dbg !100, !tbaa !91
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %48, i64 %49, i32 noundef 88) #14, !dbg !100
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !101
  %51 = load i64, i64* %50, align 8, !dbg !101, !tbaa !88
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !101
  %53 = load i64, i64* %52, align 8, !dbg !101, !tbaa !91
  %54 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %51, i64 %53) #14, !dbg !101
  call void @llvm.dbg.value(metadata i64 %54, metadata !76, metadata !DIExpression()), !dbg !80
  store i64 %39, i64* %0, align 4, !dbg !102, !tbaa !103
  %55 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !104
  store i64 %47, i64* %55, align 4, !dbg !105, !tbaa !103
  %56 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !106
  store i64 %54, i64* %56, align 4, !dbg !107, !tbaa !103
  call void @llvm.dbg.value(metadata i64* %0, metadata !77, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !80
  call void @llvm.dbg.value(metadata i64* %1, metadata !77, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !80
  call void @llvm.dbg.value(metadata i64* %1, metadata !78, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i64* %1, metadata !79, metadata !DIExpression()), !dbg !80
  %57 = bitcast i64* %1 to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %57, i8 0, i64 24, i1 false), !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #14, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #14, !dbg !108
  ret void, !dbg !108
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @load128_le(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i8* nocapture noundef readonly %1) unnamed_addr #5 !dbg !110 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !117, metadata !DIExpression(DW_OP_deref)), !dbg !118
  call void @llvm.dbg.value(metadata i8* %1, metadata !116, metadata !DIExpression()), !dbg !118
  call fastcc void @load128_le_(i8* noundef %1, %struct.FStar_UInt128_uint128* noundef %0), !dbg !119
  ret void, !dbg !120
}

declare !dbg !121 void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #6

declare !dbg !125 void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #6

declare !dbg !126 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #6

declare !dbg !129 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #6

declare !dbg !132 i64 @FStar_UInt128_uint128_to_uint64(i64, i64) local_unnamed_addr #6

declare !dbg !135 void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update_block(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2) local_unnamed_addr #2 !dbg !136 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !138, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !140
  call void @llvm.dbg.value(metadata i64* %1, metadata !138, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !140
  call void @llvm.dbg.value(metadata i8* %2, metadata !139, metadata !DIExpression()), !dbg !140
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef %2), !dbg !141
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2) unnamed_addr #2 !dbg !143 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !163
  call void @llvm.dbg.value(metadata i64* %1, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !163
  call void @llvm.dbg.value(metadata i8* %2, metadata !146, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64* %0, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !163
  call void @llvm.dbg.value(metadata i64* %1, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !163
  call void @llvm.dbg.value(metadata i64* %1, metadata !148, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64* %1, metadata !149, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64* %0, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !163
  call void @llvm.dbg.value(metadata i64* %1, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !163
  call void @llvm.dbg.value(metadata i64* %0, metadata !151, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64* %0, metadata !152, metadata !DIExpression()), !dbg !163
  %8 = bitcast [3 x i64]* %4 to i8*, !dbg !164
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #14, !dbg !164
  call void @llvm.dbg.declare(metadata [3 x i64]* %4, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false), !dbg !165
  %9 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #14, !dbg !166
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !157, metadata !DIExpression()), !dbg !167
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i8* noundef %2), !dbg !168
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !169
  %11 = load i64, i64* %10, align 8, !dbg !169, !tbaa !88
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !169
  %13 = load i64, i64* %12, align 8, !dbg !169, !tbaa !91
  %14 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %11, i64 %13) #14, !dbg !169
  %15 = and i64 %14, 17592186044415, !dbg !170
  call void @llvm.dbg.value(metadata i64 %15, metadata !158, metadata !DIExpression()), !dbg !163
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %11, i64 %13, i32 noundef 44) #14, !dbg !171
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !172
  %17 = load i64, i64* %16, align 8, !dbg !172, !tbaa !88
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !172
  %19 = load i64, i64* %18, align 8, !dbg !172, !tbaa !91
  %20 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %17, i64 %19) #14, !dbg !172
  %21 = and i64 %20, 17592186044415, !dbg !173
  call void @llvm.dbg.value(metadata i64 %21, metadata !159, metadata !DIExpression()), !dbg !163
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %11, i64 %13, i32 noundef 88) #14, !dbg !174
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !175
  %23 = load i64, i64* %22, align 8, !dbg !175, !tbaa !88
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !175
  %25 = load i64, i64* %24, align 8, !dbg !175, !tbaa !91
  %26 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %23, i64 %25) #14, !dbg !175
  call void @llvm.dbg.value(metadata i64 %26, metadata !160, metadata !DIExpression()), !dbg !163
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 0, !dbg !176
  store i64 %15, i64* %27, align 8, !dbg !177, !tbaa !103
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 1, !dbg !178
  store i64 %21, i64* %28, align 8, !dbg !179, !tbaa !103
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 2, !dbg !180
  call void @llvm.dbg.value(metadata i64 %26, metadata !161, metadata !DIExpression()), !dbg !163
  %30 = or i64 %26, 1099511627776, !dbg !181
  call void @llvm.dbg.value(metadata i64 %30, metadata !162, metadata !DIExpression()), !dbg !163
  store i64 %30, i64* %29, align 8, !dbg !182, !tbaa !103
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* noundef %1, i64* noundef nonnull %27, i64* noundef %0), !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #14, !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #14, !dbg !184
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 !dbg !185 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !189, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !197
  call void @llvm.dbg.value(metadata i64* %1, metadata !189, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !197
  call void @llvm.dbg.value(metadata i8* %2, metadata !190, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i32 %3, metadata !191, metadata !DIExpression()), !dbg !197
  %5 = icmp eq i32 %3, 0, !dbg !198
  br i1 %5, label %9, label %6, !dbg !199

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !200
  %7 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !201
  call void @llvm.dbg.value(metadata i8* %7, metadata !195, metadata !DIExpression()), !dbg !200
  %8 = add i32 %3, -1, !dbg !202
  call void @llvm.dbg.value(metadata i32 %8, metadata !196, metadata !DIExpression()), !dbg !200
  call void @Hacl_Poly1305_64_update_block(i64* %0, i64* %1, i8* noundef %2), !dbg !203
  call void @Hacl_Poly1305_64_update(i64* %0, i64* %1, i8* noundef nonnull %7, i32 noundef %8), !dbg !204
  br label %9, !dbg !205

9:                                                ; preds = %6, %4
  ret void, !dbg !206
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update_last(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 !dbg !207 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !215
  call void @llvm.dbg.value(metadata i64* %1, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !215
  call void @llvm.dbg.value(metadata i8* %2, metadata !210, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %3, metadata !211, metadata !DIExpression()), !dbg !215
  %5 = icmp eq i32 %3, 0, !dbg !216
  br i1 %5, label %8, label %6, !dbg !218

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !219
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_process_last_block(i64* %0, i64* %1, i8* noundef %2, i64 noundef %7), !dbg !220
  br label %8, !dbg !220

8:                                                ; preds = %6, %4
  call void @llvm.dbg.value(metadata i64* %0, metadata !212, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !215
  call void @llvm.dbg.value(metadata i64* %1, metadata !212, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !215
  call void @llvm.dbg.value(metadata i64* %1, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i64* %1, metadata !214, metadata !DIExpression()), !dbg !215
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* noundef %1), !dbg !221
  ret void, !dbg !222
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_process_last_block(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #2 !dbg !223 {
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !239
  call void @llvm.dbg.value(metadata i64* %0, metadata !227, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !239
  call void @llvm.dbg.value(metadata i64* %1, metadata !227, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !239
  call void @llvm.dbg.value(metadata i8* %2, metadata !228, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i64 %3, metadata !229, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i8 0, metadata !230, metadata !DIExpression()), !dbg !239
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !240
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #14, !dbg !240
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !231, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()), !dbg !242
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !dbg !243, !tbaa !245
  call void @llvm.dbg.value(metadata i32 undef, metadata !235, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32 undef, metadata !235, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !242
  %8 = trunc i64 %3 to i32, !dbg !246
  call void @llvm.dbg.value(metadata i32 %8, metadata !237, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i32 %8, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %7, i8* align 1 %2, i32 %8, i1 false), !dbg !247
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 %8, !dbg !248
  store i8 1, i8* %9, align 1, !dbg !249, !tbaa !245
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_process_last_block_(i8* noundef nonnull %7, i64* %0, i64* %1), !dbg !250
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #14, !dbg !251
  ret void, !dbg !251
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* nocapture noundef %0) unnamed_addr #7 !dbg !252 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !256, metadata !DIExpression()), !dbg !279
  call fastcc void @Hacl_Bignum_Fproduct_carry_limb_(i64* noundef %0), !dbg !280
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i64* noundef %0), !dbg !281
  %2 = load i64, i64* %0, align 4, !dbg !282, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %2, metadata !257, metadata !DIExpression()), !dbg !279
  %3 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !283
  %4 = load i64, i64* %3, align 4, !dbg !283, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %4, metadata !258, metadata !DIExpression()), !dbg !279
  %5 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !284
  %6 = load i64, i64* %5, align 4, !dbg !284, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %6, metadata !259, metadata !DIExpression()), !dbg !279
  %7 = and i64 %2, 17592186044415, !dbg !285
  call void @llvm.dbg.value(metadata i64 %7, metadata !260, metadata !DIExpression()), !dbg !279
  %8 = lshr i64 %2, 44, !dbg !286
  call void @llvm.dbg.value(metadata i64 %8, metadata !261, metadata !DIExpression()), !dbg !279
  %9 = add i64 %4, %8, !dbg !287
  %10 = and i64 %9, 17592186044415, !dbg !288
  call void @llvm.dbg.value(metadata i64 %10, metadata !262, metadata !DIExpression()), !dbg !279
  %11 = lshr i64 %9, 44, !dbg !289
  call void @llvm.dbg.value(metadata i64 %11, metadata !263, metadata !DIExpression()), !dbg !279
  %12 = add i64 %11, %6, !dbg !290
  call void @llvm.dbg.value(metadata i64 %12, metadata !264, metadata !DIExpression()), !dbg !279
  store i64 %7, i64* %0, align 4, !dbg !291, !tbaa !103
  store i64 %10, i64* %3, align 4, !dbg !292, !tbaa !103
  store i64 %12, i64* %5, align 4, !dbg !293, !tbaa !103
  call fastcc void @Hacl_Bignum_Modulo_carry_top(i64* noundef nonnull %0), !dbg !294
  %13 = load i64, i64* %0, align 4, !dbg !295, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %13, metadata !265, metadata !DIExpression()), !dbg !279
  %14 = load i64, i64* %3, align 4, !dbg !296, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %14, metadata !266, metadata !DIExpression()), !dbg !279
  %15 = and i64 %13, 17592186044415, !dbg !297
  call void @llvm.dbg.value(metadata i64 %15, metadata !267, metadata !DIExpression()), !dbg !279
  %16 = lshr i64 %13, 44, !dbg !298
  %17 = add i64 %14, %16, !dbg !299
  call void @llvm.dbg.value(metadata i64 %17, metadata !268, metadata !DIExpression()), !dbg !279
  store i64 %15, i64* %0, align 4, !dbg !300, !tbaa !103
  store i64 %17, i64* %3, align 4, !dbg !301, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %15, metadata !269, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata i64 %17, metadata !270, metadata !DIExpression()), !dbg !279
  %18 = load i64, i64* %5, align 4, !dbg !302, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %18, metadata !271, metadata !DIExpression()), !dbg !279
  %19 = call fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %15), !dbg !303
  call void @llvm.dbg.value(metadata i64 %19, metadata !272, metadata !DIExpression()), !dbg !279
  %20 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %17, i64 noundef 17592186044415), !dbg !304
  call void @llvm.dbg.value(metadata i64 %20, metadata !273, metadata !DIExpression()), !dbg !279
  %21 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %18, i64 noundef 4398046511103), !dbg !305
  call void @llvm.dbg.value(metadata i64 %21, metadata !274, metadata !DIExpression()), !dbg !279
  %22 = and i64 %20, %19, !dbg !306
  %23 = and i64 %22, %21, !dbg !307
  call void @llvm.dbg.value(metadata i64 %23, metadata !275, metadata !DIExpression()), !dbg !279
  %24 = and i64 %23, 17592186044411, !dbg !308
  %25 = sub nsw i64 %15, %24, !dbg !309
  call void @llvm.dbg.value(metadata i64 %25, metadata !276, metadata !DIExpression()), !dbg !279
  %26 = and i64 %23, 17592186044415, !dbg !310
  %27 = sub i64 %17, %26, !dbg !311
  call void @llvm.dbg.value(metadata i64 %27, metadata !277, metadata !DIExpression()), !dbg !279
  %28 = and i64 %23, 4398046511103, !dbg !312
  %29 = sub i64 %18, %28, !dbg !313
  call void @llvm.dbg.value(metadata i64 %29, metadata !278, metadata !DIExpression()), !dbg !279
  store i64 %25, i64* %0, align 4, !dbg !314, !tbaa !103
  store i64 %27, i64* %3, align 4, !dbg !315, !tbaa !103
  store i64 %29, i64* %5, align 4, !dbg !316, !tbaa !103
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_finish(i64* nocapture readnone %0, i64* nocapture readonly %1, i8* nocapture noundef writeonly %2, i8* nocapture noundef readonly %3) local_unnamed_addr #2 !dbg !318 {
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !334
  call void @llvm.dbg.value(metadata i64* %1, metadata !322, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !334
  call void @llvm.dbg.value(metadata i8* %2, metadata !323, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i8* %3, metadata !324, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i64* %0, metadata !325, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !334
  call void @llvm.dbg.value(metadata i64* %1, metadata !325, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !334
  call void @llvm.dbg.value(metadata i64* %1, metadata !326, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i64* %1, metadata !327, metadata !DIExpression()), !dbg !334
  %11 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !335
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #14, !dbg !335
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !328, metadata !DIExpression()), !dbg !336
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i8* noundef %3), !dbg !337
  %12 = load i64, i64* %1, align 4, !dbg !338, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %12, metadata !329, metadata !DIExpression()), !dbg !334
  %13 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !339
  %14 = load i64, i64* %13, align 4, !dbg !339, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %14, metadata !330, metadata !DIExpression()), !dbg !334
  %15 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !340
  %16 = load i64, i64* %15, align 4, !dbg !340, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %16, metadata !331, metadata !DIExpression()), !dbg !334
  %17 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !341
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #14, !dbg !341
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %6, metadata !332, metadata !DIExpression()), !dbg !342
  %18 = shl i64 %16, 24, !dbg !343
  %19 = lshr i64 %14, 20, !dbg !344
  %20 = or i64 %18, %19, !dbg !345
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %20) #14, !dbg !346
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !347
  %22 = load i64, i64* %21, align 8, !dbg !347, !tbaa !88
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !347
  %24 = load i64, i64* %23, align 8, !dbg !347, !tbaa !91
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %22, i64 %24, i32 noundef 64) #14, !dbg !347
  %25 = shl i64 %14, 44, !dbg !348
  %26 = or i64 %25, %12, !dbg !349
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %26) #14, !dbg !350
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !351
  %28 = load i64, i64* %27, align 8, !dbg !351, !tbaa !88
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !351
  %30 = load i64, i64* %29, align 8, !dbg !351, !tbaa !91
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !351
  %32 = load i64, i64* %31, align 8, !dbg !351, !tbaa !88
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !351
  %34 = load i64, i64* %33, align 8, !dbg !351, !tbaa !91
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %28, i64 %30, i64 %32, i64 %34) #14, !dbg !351
  %35 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !352
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35) #14, !dbg !352
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %10, metadata !333, metadata !DIExpression()), !dbg !353
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !354
  %37 = load i64, i64* %36, align 8, !dbg !354, !tbaa !88
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !354
  %39 = load i64, i64* %38, align 8, !dbg !354, !tbaa !91
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !354
  %41 = load i64, i64* %40, align 8, !dbg !354, !tbaa !88
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !354
  %43 = load i64, i64* %42, align 8, !dbg !354, !tbaa !91
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %37, i64 %39, i64 %41, i64 %43) #14, !dbg !354
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !355
  %45 = load i64, i64* %44, align 8, !dbg !355, !tbaa !88
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !355
  %47 = load i64, i64* %46, align 8, !dbg !355, !tbaa !91
  call fastcc void @store128_le(i8* noundef %2, i64 %45, i64 %47), !dbg !355
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35) #14, !dbg !356
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #14, !dbg !356
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #14, !dbg !356
  ret void, !dbg !356
}

declare !dbg !357 void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @store128_le(i8* nocapture noundef writeonly %0, i64 %1, i64 %2) unnamed_addr #5 !dbg !358 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0
  store i64 %1, i64* %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1
  store i64 %2, i64* %6, align 8, !tbaa !91
  call void @llvm.dbg.value(metadata i8* %0, metadata !362, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !363, metadata !DIExpression()), !dbg !365
  call fastcc void @store128_le_(i8* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %4), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_crypto_onetimeauth(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i8* nocapture noundef readonly %3) local_unnamed_addr #2 !dbg !368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !372, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i8* %1, metadata !373, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i64 %2, metadata !374, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i8* %3, metadata !375, metadata !DIExpression()), !dbg !376
  call fastcc void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i8* nocapture noundef readonly %3) unnamed_addr #2 !dbg !379 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !381, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i8* %1, metadata !382, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i64 %2, metadata !383, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i8* %3, metadata !384, metadata !DIExpression()), !dbg !385
  call fastcc void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth_(i8* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @load128_le_(i8* nocapture noundef readonly %0, %struct.FStar_UInt128_uint128* nocapture noundef writeonly %1) unnamed_addr #5 !dbg !388 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !393, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !394, metadata !DIExpression()), !dbg !395
  %3 = call fastcc i64 @load64(i8* noundef %0), !dbg !396
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !397
  store i64 %3, i64* %4, align 4, !dbg !398, !tbaa !88
  %5 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !399
  %6 = call fastcc i64 @load64(i8* noundef nonnull %5), !dbg !399
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !400
  store i64 %6, i64* %7, align 4, !dbg !401, !tbaa !91
  ret void, !dbg !402
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @load64(i8* nocapture noundef readonly %0) unnamed_addr #8 !dbg !403 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !407, metadata !DIExpression()), !dbg !409
  %2 = bitcast i8* %0 to i64*, !dbg !410
  %3 = load i64, i64* %2, align 1, !dbg !410
  call void @llvm.dbg.value(metadata i64 %3, metadata !408, metadata !DIExpression()), !dbg !409
  ret i64 %3, !dbg !411
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #2 !dbg !412 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !416, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64* %1, metadata !417, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64* %2, metadata !418, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i32 0, metadata !419, metadata !DIExpression()), !dbg !426
  br label %5, !dbg !427

4:                                                ; preds = %5
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef %0, i64* noundef %0, i64* noundef %2), !dbg !428
  ret void, !dbg !429

5:                                                ; preds = %3, %5
  %6 = phi i32 [ 0, %3 ], [ %12, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !419, metadata !DIExpression()), !dbg !426
  %7 = getelementptr inbounds i64, i64* %0, i32 %6, !dbg !430
  %8 = load i64, i64* %7, align 4, !dbg !430, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %8, metadata !421, metadata !DIExpression()), !dbg !431
  %9 = getelementptr inbounds i64, i64* %1, i32 %6, !dbg !432
  %10 = load i64, i64* %9, align 4, !dbg !432, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %10, metadata !424, metadata !DIExpression()), !dbg !431
  %11 = add i64 %10, %8, !dbg !433
  store i64 %11, i64* %7, align 4, !dbg !434, !tbaa !103
  %12 = add nuw nsw i32 %6, 1, !dbg !435
  call void @llvm.dbg.value(metadata i32 %12, metadata !419, metadata !DIExpression()), !dbg !426
  %13 = icmp eq i32 %12, 3, !dbg !436
  br i1 %13, label %4, label %5, !dbg !427, !llvm.loop !437
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #2 !dbg !441 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca [3 x %struct.FStar_UInt128_uint128], align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata i64* %0, metadata !443, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i64* %1, metadata !444, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i64* %2, metadata !445, metadata !DIExpression()), !dbg !455
  %7 = bitcast [3 x i64]* %4 to i8*, !dbg !456
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #14, !dbg !456
  call void @llvm.dbg.declare(metadata [3 x i64]* %4, metadata !446, metadata !DIExpression()), !dbg !457
  %8 = bitcast i64* %1 to i8*, !dbg !458
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %7, i8* noundef nonnull align 4 dereferenceable(24) %8, i32 24, i1 false), !dbg !458
  %9 = bitcast [3 x %struct.FStar_UInt128_uint128]* %5 to i8*, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #14, !dbg !459
  call void @llvm.dbg.declare(metadata [3 x %struct.FStar_UInt128_uint128]* %5, metadata !447, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 0, metadata !449, metadata !DIExpression()), !dbg !461
  %10 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !449, metadata !DIExpression()), !dbg !461
  br label %20, !dbg !462

11:                                               ; preds = %20
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 0, !dbg !458
  %13 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, !dbg !463
  call fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(%struct.FStar_UInt128_uint128* noundef nonnull %13, i64* noundef nonnull %12, i64* noundef %2), !dbg !464
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* noundef nonnull %13), !dbg !465
  call fastcc void @Hacl_Bignum_Modulo_carry_top_wide(%struct.FStar_UInt128_uint128* noundef nonnull %13), !dbg !466
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %13), !dbg !467
  %14 = load i64, i64* %0, align 4, !dbg !468, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %14, metadata !451, metadata !DIExpression()), !dbg !455
  %15 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !469
  %16 = load i64, i64* %15, align 4, !dbg !469, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %16, metadata !452, metadata !DIExpression()), !dbg !455
  %17 = and i64 %14, 17592186044415, !dbg !470
  call void @llvm.dbg.value(metadata i64 %17, metadata !453, metadata !DIExpression()), !dbg !455
  %18 = lshr i64 %14, 44, !dbg !471
  %19 = add i64 %16, %18, !dbg !472
  call void @llvm.dbg.value(metadata i64 %19, metadata !454, metadata !DIExpression()), !dbg !455
  store i64 %17, i64* %0, align 4, !dbg !473, !tbaa !103
  store i64 %19, i64* %15, align 4, !dbg !474, !tbaa !103
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #14, !dbg !475
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #14, !dbg !475
  ret void, !dbg !475

20:                                               ; preds = %3, %20
  %21 = phi i32 [ 0, %3 ], [ %24, %20 ]
  call void @llvm.dbg.value(metadata i32 %21, metadata !449, metadata !DIExpression()), !dbg !461
  %22 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 %21, !dbg !476
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #14, !dbg !478
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0) #14, !dbg !478
  %23 = bitcast %struct.FStar_UInt128_uint128* %22 to i8*, !dbg !478
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %23, i8* noundef nonnull align 4 dereferenceable(16) %10, i32 16, i1 false), !dbg !478, !tbaa.struct !479
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #14, !dbg !478
  %24 = add nuw nsw i32 %21, 1, !dbg !480
  call void @llvm.dbg.value(metadata i32 %24, metadata !449, metadata !DIExpression()), !dbg !461
  %25 = icmp eq i32 %24, 3, !dbg !481
  br i1 %25, label %11, label %20, !dbg !462, !llvm.loop !482
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef %1, i64* nocapture noundef readonly %2) unnamed_addr #2 !dbg !484 {
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !489, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i64* %1, metadata !490, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i64* %2, metadata !491, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()), !dbg !500
  br label %7, !dbg !501

4:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !497, metadata !DIExpression()), !dbg !499
  %5 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !502
  %6 = load i64, i64* %5, align 4, !dbg !502, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %6, metadata !498, metadata !DIExpression()), !dbg !499
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %6), !dbg !503
  ret void, !dbg !504

7:                                                ; preds = %3, %7
  %8 = phi i32 [ 0, %3 ], [ %11, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !492, metadata !DIExpression()), !dbg !500
  %9 = getelementptr inbounds i64, i64* %2, i32 %8, !dbg !505
  %10 = load i64, i64* %9, align 4, !dbg !505, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %10, metadata !494, metadata !DIExpression()), !dbg !506
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef %0, i64* noundef %1, i64 noundef %10), !dbg !507
  call fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* noundef %1), !dbg !508
  %11 = add nuw nsw i32 %8, 1, !dbg !509
  call void @llvm.dbg.value(metadata i32 %11, metadata !492, metadata !DIExpression()), !dbg !500
  %12 = icmp eq i32 %11, 2, !dbg !510
  br i1 %12, label %4, label %7, !dbg !501, !llvm.loop !511
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* nocapture noundef %0) unnamed_addr #2 !dbg !513 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 8
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !517, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32 0, metadata !518, metadata !DIExpression()), !dbg !528
  %5 = bitcast %struct.FStar_UInt128_uint128* %2 to i8*
  %6 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*
  %7 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %2, i32 0, i32 0
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %2, i32 0, i32 1
  br label %11, !dbg !529

10:                                               ; preds = %11
  ret void, !dbg !530

11:                                               ; preds = %1, %11
  %12 = phi i32 [ 0, %1 ], [ %18, %11 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !518, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.value(metadata i32 %12, metadata !520, metadata !DIExpression()), !dbg !531
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %12, !dbg !532
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !532
  %15 = load i64, i64* %14, align 4, !dbg !532, !tbaa.struct !479
  call void @llvm.dbg.value(metadata i64 %15, metadata !523, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !531
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %12, i32 1, !dbg !532
  %17 = load i64, i64* %16, align 4, !dbg !532, !tbaa.struct !533
  call void @llvm.dbg.value(metadata i64 %17, metadata !523, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !531
  %18 = add nuw nsw i32 %12, 1, !dbg !534
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %18, !dbg !535
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !535
  %21 = load i64, i64* %20, align 4, !dbg !535, !tbaa.struct !479
  call void @llvm.dbg.value(metadata i64 %21, metadata !524, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !531
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %18, i32 1, !dbg !535
  %23 = load i64, i64* %22, align 4, !dbg !535, !tbaa.struct !533
  call void @llvm.dbg.value(metadata i64 %23, metadata !524, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !531
  %24 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %15, i64 %17) #14, !dbg !536
  %25 = and i64 %24, 17592186044415, !dbg !537
  call void @llvm.dbg.value(metadata i64 %25, metadata !525, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #14, !dbg !538
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %2, metadata !526, metadata !DIExpression()), !dbg !539
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %15, i64 %17, i32 noundef 44) #14, !dbg !540
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #14, !dbg !541
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %25) #14, !dbg !541
  %26 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !541
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %26, i8* noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false), !dbg !541, !tbaa.struct !479
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #14, !dbg !541
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #14, !dbg !542
  %27 = load i64, i64* %8, align 8, !dbg !542, !tbaa !88
  %28 = load i64, i64* %9, align 8, !dbg !542, !tbaa !91
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %21, i64 %23, i64 %27, i64 %28) #14, !dbg !542
  %29 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*, !dbg !542
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %29, i8* noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false), !dbg !542, !tbaa.struct !479
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #14, !dbg !542
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #14, !dbg !543
  call void @llvm.dbg.value(metadata i32 %18, metadata !518, metadata !DIExpression()), !dbg !528
  %30 = icmp eq i32 %18, 2, !dbg !544
  br i1 %30, label %10, label %11, !dbg !529, !llvm.loop !545
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_carry_top_wide(%struct.FStar_UInt128_uint128* nocapture noundef %0) unnamed_addr #2 !dbg !547 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 4
  %3 = alloca %struct.FStar_UInt128_uint128, align 8
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !549, metadata !DIExpression()), !dbg !555
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 0, !dbg !556
  %8 = load i64, i64* %7, align 4, !dbg !556, !tbaa.struct !479
  call void @llvm.dbg.value(metadata i64 %8, metadata !550, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !555
  %9 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 1, !dbg !556
  %10 = load i64, i64* %9, align 4, !dbg !556, !tbaa.struct !533
  call void @llvm.dbg.value(metadata i64 %10, metadata !550, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !555
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !557
  %12 = load i64, i64* %11, align 4, !dbg !557, !tbaa.struct !479
  call void @llvm.dbg.value(metadata i64 %12, metadata !551, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !555
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !557
  %14 = load i64, i64* %13, align 4, !dbg !557, !tbaa.struct !533
  call void @llvm.dbg.value(metadata i64 %14, metadata !551, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !555
  %15 = bitcast %struct.FStar_UInt128_uint128* %2 to i8*, !dbg !558
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #14, !dbg !558
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %2, metadata !552, metadata !DIExpression()), !dbg !559
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef 4398046511103) #14, !dbg !560
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %3, i32 0, i32 0, !dbg !561
  %17 = load i64, i64* %16, align 8, !dbg !561, !tbaa !88
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %3, i32 0, i32 1, !dbg !561
  %19 = load i64, i64* %18, align 8, !dbg !561, !tbaa !91
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %8, i64 %10, i64 %17, i64 %19) #14, !dbg !561
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %8, i64 %10, i32 noundef 42) #14, !dbg !562
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !563
  %21 = load i64, i64* %20, align 8, !dbg !563, !tbaa !88
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !563
  %23 = load i64, i64* %22, align 8, !dbg !563, !tbaa !91
  %24 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %21, i64 %23) #14, !dbg !563
  call void @llvm.dbg.value(metadata i64 %24, metadata !553, metadata !DIExpression()), !dbg !555
  %25 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #14, !dbg !564
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !554, metadata !DIExpression()), !dbg !565
  %26 = mul i64 %24, 5, !dbg !566
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %26) #14, !dbg !567
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !568
  %28 = load i64, i64* %27, align 8, !dbg !568, !tbaa !88
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !568
  %30 = load i64, i64* %29, align 8, !dbg !568, !tbaa !91
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %12, i64 %14, i64 %28, i64 %30) #14, !dbg !568
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !569
  %32 = bitcast %struct.FStar_UInt128_uint128* %31 to i8*, !dbg !570
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %32, i8* noundef nonnull align 4 dereferenceable(16) %15, i32 16, i1 false), !dbg !570, !tbaa.struct !479
  %33 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !571
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %33, i8* noundef nonnull align 4 dereferenceable(16) %25, i32 16, i1 false), !dbg !571, !tbaa.struct !479
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #14, !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #14, !dbg !572
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(i64* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #2 !dbg !573 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !577, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !578, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i32 0, metadata !579, metadata !DIExpression()), !dbg !585
  br label %4, !dbg !586

3:                                                ; preds = %4
  ret void, !dbg !587

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %12, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !579, metadata !DIExpression()), !dbg !585
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 %5, i32 0, !dbg !588
  %7 = load i64, i64* %6, align 4, !dbg !588, !tbaa.struct !479
  call void @llvm.dbg.value(metadata i64 %7, metadata !581, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !589
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 %5, i32 1, !dbg !588
  %9 = load i64, i64* %8, align 4, !dbg !588, !tbaa.struct !533
  call void @llvm.dbg.value(metadata i64 %9, metadata !581, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !589
  %10 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %7, i64 %9) #14, !dbg !590
  %11 = getelementptr inbounds i64, i64* %0, i32 %5, !dbg !591
  store i64 %10, i64* %11, align 4, !dbg !592, !tbaa !103
  %12 = add nuw nsw i32 %5, 1, !dbg !593
  call void @llvm.dbg.value(metadata i32 %12, metadata !579, metadata !DIExpression()), !dbg !585
  %13 = icmp eq i32 %12, 3, !dbg !594
  br i1 %13, label %3, label %4, !dbg !586, !llvm.loop !595
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #2 !dbg !597 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !601, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i64* %1, metadata !602, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i64 %2, metadata !603, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i32 0, metadata !604, metadata !DIExpression()), !dbg !611
  %6 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !604, metadata !DIExpression()), !dbg !611
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1
  br label %10, !dbg !612

9:                                                ; preds = %10
  ret void, !dbg !613

10:                                               ; preds = %3, %10
  %11 = phi i32 [ 0, %3 ], [ %22, %10 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !604, metadata !DIExpression()), !dbg !611
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %11, !dbg !614
  %13 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !614
  %14 = load i64, i64* %13, align 4, !dbg !614, !tbaa.struct !479
  call void @llvm.dbg.value(metadata i64 %14, metadata !606, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !615
  %15 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 %11, i32 1, !dbg !614
  %16 = load i64, i64* %15, align 4, !dbg !614, !tbaa.struct !533
  call void @llvm.dbg.value(metadata i64 %16, metadata !606, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !615
  %17 = getelementptr inbounds i64, i64* %1, i32 %11, !dbg !616
  %18 = load i64, i64* %17, align 4, !dbg !616, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %18, metadata !609, metadata !DIExpression()), !dbg !615
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #14, !dbg !617
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %18, i64 noundef %2) #14, !dbg !618
  %19 = load i64, i64* %7, align 8, !dbg !617, !tbaa !88
  %20 = load i64, i64* %8, align 8, !dbg !617, !tbaa !91
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %14, i64 %16, i64 %19, i64 %20) #14, !dbg !617
  %21 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !617
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %21, i8* noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false), !dbg !617, !tbaa.struct !479
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #14, !dbg !617
  %22 = add nuw nsw i32 %11, 1, !dbg !619
  call void @llvm.dbg.value(metadata i32 %22, metadata !604, metadata !DIExpression()), !dbg !611
  %23 = icmp eq i32 %22, 3, !dbg !620
  br i1 %23, label %9, label %10, !dbg !612, !llvm.loop !621
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_shift_reduce(i64* nocapture noundef %0) unnamed_addr #7 !dbg !623 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !625, metadata !DIExpression()), !dbg !633
  %2 = bitcast i64* %0 to i8*, !dbg !634
  %3 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !634
  %4 = load i64, i64* %3, align 4, !dbg !634, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %4, metadata !626, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i32 0, metadata !627, metadata !DIExpression()), !dbg !635
  %5 = getelementptr i64, i64* %0, i32 1, !dbg !636
  %6 = bitcast i64* %5 to i8*, !dbg !636
  call void @llvm.memmove.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %6, i8* noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false), !dbg !637, !tbaa !103
  call void @llvm.dbg.value(metadata i32 undef, metadata !627, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 undef, metadata !629, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !638
  call void @llvm.dbg.value(metadata i32 undef, metadata !632, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i32 undef, metadata !627, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !635
  store i64 %4, i64* %0, align 4, !dbg !639, !tbaa !103
  call fastcc void @Hacl_Bignum_Modulo_reduce(i64* noundef nonnull %0), !dbg !640
  ret void, !dbg !641
}

declare !dbg !642 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Modulo_reduce(i64* nocapture noundef %0) unnamed_addr #5 !dbg !645 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !647, metadata !DIExpression()), !dbg !649
  %2 = load i64, i64* %0, align 4, !dbg !650, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %2, metadata !648, metadata !DIExpression()), !dbg !649
  %3 = mul i64 %2, 20, !dbg !651
  store i64 %3, i64* %0, align 4, !dbg !652, !tbaa !103
  ret void, !dbg !653
}

declare !dbg !654 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_process_last_block_(i8* nocapture noundef readonly %0, i64* nocapture readonly %1, i64* nocapture %2) unnamed_addr #2 !dbg !655 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %1, metadata !660, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !672
  call void @llvm.dbg.value(metadata i64* %2, metadata !660, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !672
  call void @llvm.dbg.value(metadata i8* %0, metadata !659, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i8* undef, metadata !661, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64 undef, metadata !662, metadata !DIExpression()), !dbg !672
  %8 = bitcast [3 x i64]* %4 to i8*, !dbg !673
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #14, !dbg !673
  call void @llvm.dbg.declare(metadata [3 x i64]* %4, metadata !663, metadata !DIExpression()), !dbg !674
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false), !dbg !674
  %9 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !675
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #14, !dbg !675
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !664, metadata !DIExpression()), !dbg !676
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i8* noundef %0), !dbg !677
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !678
  %11 = load i64, i64* %10, align 8, !dbg !678, !tbaa !88
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !678
  %13 = load i64, i64* %12, align 8, !dbg !678, !tbaa !91
  %14 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %11, i64 %13) #14, !dbg !678
  %15 = and i64 %14, 17592186044415, !dbg !679
  call void @llvm.dbg.value(metadata i64 %15, metadata !665, metadata !DIExpression()), !dbg !672
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %11, i64 %13, i32 noundef 44) #14, !dbg !680
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !681
  %17 = load i64, i64* %16, align 8, !dbg !681, !tbaa !88
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !681
  %19 = load i64, i64* %18, align 8, !dbg !681, !tbaa !91
  %20 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %17, i64 %19) #14, !dbg !681
  %21 = and i64 %20, 17592186044415, !dbg !682
  call void @llvm.dbg.value(metadata i64 %21, metadata !666, metadata !DIExpression()), !dbg !672
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %11, i64 %13, i32 noundef 88) #14, !dbg !683
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !684
  %23 = load i64, i64* %22, align 8, !dbg !684, !tbaa !88
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !684
  %25 = load i64, i64* %24, align 8, !dbg !684, !tbaa !91
  %26 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %23, i64 %25) #14, !dbg !684
  call void @llvm.dbg.value(metadata i64 %26, metadata !667, metadata !DIExpression()), !dbg !672
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 0, !dbg !685
  store i64 %15, i64* %27, align 8, !dbg !686, !tbaa !103
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 1, !dbg !687
  store i64 %21, i64* %28, align 8, !dbg !688, !tbaa !103
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 2, !dbg !689
  store i64 %26, i64* %29, align 8, !dbg !690, !tbaa !103
  call void @llvm.dbg.value(metadata i64* %1, metadata !668, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !672
  call void @llvm.dbg.value(metadata i64* %2, metadata !668, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !672
  call void @llvm.dbg.value(metadata i64* %2, metadata !669, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64* %1, metadata !670, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !672
  call void @llvm.dbg.value(metadata i64* %2, metadata !670, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !672
  call void @llvm.dbg.value(metadata i64* %1, metadata !671, metadata !DIExpression()), !dbg !672
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* noundef %2, i64* noundef nonnull %27, i64* noundef %1), !dbg !691
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #14, !dbg !692
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #14, !dbg !692
  ret void, !dbg !692
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_limb_(i64* nocapture noundef %0) unnamed_addr #7 !dbg !693 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !695, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 0, metadata !696, metadata !DIExpression()), !dbg !706
  %2 = load i64, i64* %0, align 4
  br label %4, !dbg !707

3:                                                ; preds = %4
  ret void, !dbg !708

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %2, %1 ], [ %13, %4 ]
  %6 = phi i32 [ 0, %1 ], [ %8, %4 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !696, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i32 %6, metadata !698, metadata !DIExpression()), !dbg !709
  %7 = getelementptr inbounds i64, i64* %0, i32 %6, !dbg !710
  call void @llvm.dbg.value(metadata i64 %5, metadata !701, metadata !DIExpression()), !dbg !709
  %8 = add nuw nsw i32 %6, 1, !dbg !711
  %9 = getelementptr inbounds i64, i64* %0, i32 %8, !dbg !712
  %10 = load i64, i64* %9, align 4, !dbg !712, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %10, metadata !702, metadata !DIExpression()), !dbg !709
  %11 = and i64 %5, 17592186044415, !dbg !713
  call void @llvm.dbg.value(metadata i64 %11, metadata !703, metadata !DIExpression()), !dbg !709
  %12 = lshr i64 %5, 44, !dbg !714
  call void @llvm.dbg.value(metadata i64 %12, metadata !704, metadata !DIExpression()), !dbg !709
  store i64 %11, i64* %7, align 4, !dbg !715, !tbaa !103
  %13 = add i64 %10, %12, !dbg !716
  store i64 %13, i64* %9, align 4, !dbg !717, !tbaa !103
  call void @llvm.dbg.value(metadata i32 %8, metadata !696, metadata !DIExpression()), !dbg !706
  %14 = icmp eq i32 %8, 2, !dbg !718
  br i1 %14, label %3, label %4, !dbg !707, !llvm.loop !719
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @Hacl_Bignum_Modulo_carry_top(i64* nocapture noundef %0) unnamed_addr #5 !dbg !721 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !723, metadata !DIExpression()), !dbg !727
  %2 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !728
  %3 = load i64, i64* %2, align 4, !dbg !728, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %3, metadata !724, metadata !DIExpression()), !dbg !727
  %4 = load i64, i64* %0, align 4, !dbg !729, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %4, metadata !725, metadata !DIExpression()), !dbg !727
  %5 = lshr i64 %3, 42, !dbg !730
  call void @llvm.dbg.value(metadata i64 %5, metadata !726, metadata !DIExpression()), !dbg !727
  %6 = and i64 %3, 4398046511103, !dbg !731
  store i64 %6, i64* %2, align 4, !dbg !732, !tbaa !103
  %7 = mul nuw nsw i64 %5, 5, !dbg !733
  %8 = add i64 %7, %4, !dbg !734
  store i64 %8, i64* %0, align 4, !dbg !735, !tbaa !103
  ret void, !dbg !736
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %0) unnamed_addr #10 !dbg !737 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !742, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i64 17592186044411, metadata !743, metadata !DIExpression()), !dbg !746
  %2 = and i64 %0, 9223372036854775807, !dbg !747
  %3 = add nsw i64 %2, -17592186044411, !dbg !748
  call void @llvm.dbg.value(metadata i64 %3, metadata !744, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !746
  call void @llvm.dbg.value(metadata i64 %0, metadata !745, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !746
  %4 = or i64 %3, %0, !dbg !749
  %5 = ashr i64 %4, 63, !dbg !749
  %6 = xor i64 %5, -1, !dbg !749
  ret i64 %6, !dbg !750
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %0, i64 noundef %1) unnamed_addr #10 !dbg !751 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !753, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i64 %1, metadata !754, metadata !DIExpression()), !dbg !755
  %3 = xor i64 %0, %1, !dbg !756
  %4 = xor i64 %3, -1, !dbg !756
  call void @llvm.dbg.value(metadata i64 %4, metadata !753, metadata !DIExpression()), !dbg !755
  %5 = shl i64 %4, 32, !dbg !757
  %6 = and i64 %5, %4, !dbg !758
  call void @llvm.dbg.value(metadata i64 %6, metadata !753, metadata !DIExpression()), !dbg !755
  %7 = shl i64 %6, 16, !dbg !759
  %8 = and i64 %7, %6, !dbg !760
  call void @llvm.dbg.value(metadata i64 %8, metadata !753, metadata !DIExpression()), !dbg !755
  %9 = shl i64 %8, 8, !dbg !761
  %10 = and i64 %9, %8, !dbg !762
  call void @llvm.dbg.value(metadata i64 %10, metadata !753, metadata !DIExpression()), !dbg !755
  %11 = shl i64 %10, 4, !dbg !763
  %12 = and i64 %11, %10, !dbg !764
  call void @llvm.dbg.value(metadata i64 %12, metadata !753, metadata !DIExpression()), !dbg !755
  %13 = shl i64 %12, 2, !dbg !765
  %14 = and i64 %13, %12, !dbg !766
  call void @llvm.dbg.value(metadata i64 %14, metadata !753, metadata !DIExpression()), !dbg !755
  %15 = shl i64 %14, 1, !dbg !767
  %16 = and i64 %15, %14, !dbg !768
  call void @llvm.dbg.value(metadata i64 %16, metadata !753, metadata !DIExpression()), !dbg !755
  %17 = ashr i64 %16, 63, !dbg !769
  ret i64 %17, !dbg !770
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @store128_le_(i8* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #5 !dbg !771 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !773, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !774, metadata !DIExpression()), !dbg !775
  %3 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !776
  %4 = load i64, i64* %3, align 4, !dbg !776, !tbaa !88
  call fastcc void @store64(i8* noundef %0, i64 noundef %4), !dbg !776
  %5 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !777
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !777
  %7 = load i64, i64* %6, align 4, !dbg !777, !tbaa !91
  call fastcc void @store64(i8* noundef nonnull %5, i64 noundef %7), !dbg !777
  ret void, !dbg !778
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store64(i8* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #0 !dbg !779 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !783, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i64 %1, metadata !784, metadata !DIExpression()), !dbg !785
  %3 = bitcast i8* %0 to i64*, !dbg !786
  store i64 %1, i64* %3, align 1, !dbg !786
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth_(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i8* nocapture noundef readonly %3) unnamed_addr #2 !dbg !788 {
  %5 = alloca [6 x i64], align 8
  %6 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !790, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i8* %1, metadata !791, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %2, metadata !792, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i8* %3, metadata !793, metadata !DIExpression()), !dbg !811
  %13 = bitcast [6 x i64]* %5 to i8*, !dbg !812
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %13) #14, !dbg !812
  call void @llvm.dbg.declare(metadata [6 x i64]* %5, metadata !794, metadata !DIExpression()), !dbg !813
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(48) %13, i8 0, i32 48, i1 false), !dbg !813
  %14 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i32 0, i32 0, !dbg !814
  call void @llvm.dbg.value(metadata i64* %14, metadata !798, metadata !DIExpression()), !dbg !811
  %15 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i32 0, i32 3, !dbg !815
  call void @llvm.dbg.value(metadata i64* %15, metadata !799, metadata !DIExpression()), !dbg !811
  %16 = bitcast %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %6 to i8*, !dbg !816
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #14, !dbg !816
  call void @llvm.dbg.declare(metadata %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %6, metadata !800, metadata !DIExpression()), !dbg !817
  call fastcc void @Hacl_Impl_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* nonnull sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %6, i64* noundef nonnull %14, i64* noundef nonnull %15), !dbg !818
  %17 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !819
  call void @llvm.dbg.value(metadata i8* %17, metadata !801, metadata !DIExpression()), !dbg !811
  %18 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %6, i32 0, i32 0, !dbg !820
  %19 = load i64*, i64** %18, align 4, !dbg !820, !tbaa !48
  %20 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %6, i32 0, i32 1, !dbg !820
  %21 = load i64*, i64** %20, align 4, !dbg !820, !tbaa !53
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_complete(i64* %19, i64* %21, i8* noundef %1, i64 noundef %2, i8* noundef %3), !dbg !820
  call void @llvm.dbg.value(metadata i64* undef, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !811
  call void @llvm.dbg.value(metadata i64* %21, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !811
  call void @llvm.dbg.value(metadata i64* %21, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64* %21, metadata !804, metadata !DIExpression()), !dbg !811
  %22 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !821
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #14, !dbg !821
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !805, metadata !DIExpression()), !dbg !822
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i8* noundef nonnull %17), !dbg !823
  %23 = load i64, i64* %21, align 4, !dbg !824, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %23, metadata !806, metadata !DIExpression()), !dbg !811
  %24 = getelementptr inbounds i64, i64* %21, i32 1, !dbg !825
  %25 = load i64, i64* %24, align 4, !dbg !825, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %25, metadata !807, metadata !DIExpression()), !dbg !811
  %26 = getelementptr inbounds i64, i64* %21, i32 2, !dbg !826
  %27 = load i64, i64* %26, align 4, !dbg !826, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %27, metadata !808, metadata !DIExpression()), !dbg !811
  %28 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #14, !dbg !827
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !809, metadata !DIExpression()), !dbg !828
  %29 = shl i64 %27, 24, !dbg !829
  %30 = lshr i64 %25, 20, !dbg !830
  %31 = or i64 %29, %30, !dbg !831
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %31) #14, !dbg !832
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !833
  %33 = load i64, i64* %32, align 8, !dbg !833, !tbaa !88
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !833
  %35 = load i64, i64* %34, align 8, !dbg !833, !tbaa !91
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %33, i64 %35, i32 noundef 64) #14, !dbg !833
  %36 = shl i64 %25, 44, !dbg !834
  %37 = or i64 %36, %23, !dbg !835
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %37) #14, !dbg !836
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !837
  %39 = load i64, i64* %38, align 8, !dbg !837, !tbaa !88
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !837
  %41 = load i64, i64* %40, align 8, !dbg !837, !tbaa !91
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !837
  %43 = load i64, i64* %42, align 8, !dbg !837, !tbaa !88
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !837
  %45 = load i64, i64* %44, align 8, !dbg !837, !tbaa !91
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %39, i64 %41, i64 %43, i64 %45) #14, !dbg !837
  %46 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !838
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %46) #14, !dbg !838
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %12, metadata !810, metadata !DIExpression()), !dbg !839
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !840
  %48 = load i64, i64* %47, align 8, !dbg !840, !tbaa !88
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !840
  %50 = load i64, i64* %49, align 8, !dbg !840, !tbaa !91
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !840
  %52 = load i64, i64* %51, align 8, !dbg !840, !tbaa !88
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !840
  %54 = load i64, i64* %53, align 8, !dbg !840, !tbaa !91
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %48, i64 %50, i64 %52, i64 %54) #14, !dbg !840
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !841
  %56 = load i64, i64* %55, align 8, !dbg !841, !tbaa !88
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !841
  %58 = load i64, i64* %57, align 8, !dbg !841, !tbaa !91
  call fastcc void @store128_le(i8* noundef %0, i64 %56, i64 %58), !dbg !841
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %46) #14, !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #14, !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #14, !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #14, !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %13) #14, !dbg !842
  ret void, !dbg !842
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_complete(i64* nocapture %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3, i8* nocapture noundef readonly %4) unnamed_addr #2 !dbg !843 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !859
  call void @llvm.dbg.value(metadata i64* %1, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !859
  call void @llvm.dbg.value(metadata i8* %2, metadata !848, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i64 %3, metadata !849, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i8* %4, metadata !850, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i8* %4, metadata !851, metadata !DIExpression()), !dbg !859
  %6 = lshr i64 %3, 4, !dbg !860
  call void @llvm.dbg.value(metadata i64 %6, metadata !852, metadata !DIExpression()), !dbg !859
  %7 = and i64 %3, 15, !dbg !861
  call void @llvm.dbg.value(metadata i64 %7, metadata !853, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i8* %2, metadata !854, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i64 %3), metadata !855, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !859
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_partial(i64* %0, i64* %1, i8* noundef %2, i64 noundef %6, i8* noundef %4), !dbg !862
  %8 = icmp eq i64 %7, 0, !dbg !863
  br i1 %8, label %13, label %9, !dbg !865

9:                                                ; preds = %5
  %10 = trunc i64 %3 to i32, !dbg !866
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %10), metadata !855, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !859
  %11 = and i32 %10, -16, !dbg !866
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %11), metadata !855, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !859
  %12 = getelementptr inbounds i8, i8* %2, i32 %11, !dbg !867
  call void @llvm.dbg.value(metadata i8* %12, metadata !855, metadata !DIExpression()), !dbg !859
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_process_last_block(i64* %0, i64* %1, i8* noundef %12, i64 noundef %7), !dbg !868
  br label %13, !dbg !868

13:                                               ; preds = %9, %5
  call void @llvm.dbg.value(metadata i64* %0, metadata !856, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !859
  call void @llvm.dbg.value(metadata i64* %1, metadata !856, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !859
  call void @llvm.dbg.value(metadata i64* %1, metadata !857, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i64* %1, metadata !858, metadata !DIExpression()), !dbg !859
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* noundef %1), !dbg !869
  ret void, !dbg !870
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_partial(i64* nocapture %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3, i8* nocapture noundef readonly %4) unnamed_addr #2 !dbg !871 {
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !873, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !888
  call void @llvm.dbg.value(metadata i64* %1, metadata !873, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !888
  call void @llvm.dbg.value(metadata i8* %2, metadata !874, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i64 %3, metadata !875, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i8* %4, metadata !876, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i64* %0, metadata !877, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !888
  call void @llvm.dbg.value(metadata i64* %1, metadata !877, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !888
  call void @llvm.dbg.value(metadata i64* %0, metadata !878, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i64* %0, metadata !879, metadata !DIExpression()), !dbg !888
  %14 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !889
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #14, !dbg !889
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %6, metadata !880, metadata !DIExpression()), !dbg !890
  call fastcc void @load128_le(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i8* noundef %4), !dbg !891
  %15 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !892
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #14, !dbg !892
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !881, metadata !DIExpression()), !dbg !893
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 1152921487695413244) #14, !dbg !894
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !895
  %17 = load i64, i64* %16, align 8, !dbg !895, !tbaa !88
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !895
  %19 = load i64, i64* %18, align 8, !dbg !895, !tbaa !91
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %17, i64 %19, i32 noundef 64) #14, !dbg !895
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef 1152921487695413247) #14, !dbg !896
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !897
  %21 = load i64, i64* %20, align 8, !dbg !897, !tbaa !88
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !897
  %23 = load i64, i64* %22, align 8, !dbg !897, !tbaa !91
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !897
  %25 = load i64, i64* %24, align 8, !dbg !897, !tbaa !88
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !897
  %27 = load i64, i64* %26, align 8, !dbg !897, !tbaa !91
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %21, i64 %23, i64 %25, i64 %27) #14, !dbg !897
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !898
  %29 = load i64, i64* %28, align 8, !dbg !898, !tbaa !88
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !898
  %31 = load i64, i64* %30, align 8, !dbg !898, !tbaa !91
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !898
  %33 = load i64, i64* %32, align 8, !dbg !898, !tbaa !88
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !898
  %35 = load i64, i64* %34, align 8, !dbg !898, !tbaa !91
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %29, i64 %31, i64 %33, i64 %35) #14, !dbg !898
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !899
  %37 = load i64, i64* %36, align 8, !dbg !899, !tbaa !88
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !899
  %39 = load i64, i64* %38, align 8, !dbg !899, !tbaa !91
  %40 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %37, i64 %39) #14, !dbg !899
  %41 = and i64 %40, 17592186044415, !dbg !900
  call void @llvm.dbg.value(metadata i64 %41, metadata !882, metadata !DIExpression()), !dbg !888
  %42 = load i64, i64* %36, align 8, !dbg !901, !tbaa !88
  %43 = load i64, i64* %38, align 8, !dbg !901, !tbaa !91
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %42, i64 %43, i32 noundef 44) #14, !dbg !901
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !902
  %45 = load i64, i64* %44, align 8, !dbg !902, !tbaa !88
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !902
  %47 = load i64, i64* %46, align 8, !dbg !902, !tbaa !91
  %48 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %45, i64 %47) #14, !dbg !902
  %49 = and i64 %48, 17592186044415, !dbg !903
  call void @llvm.dbg.value(metadata i64 %49, metadata !883, metadata !DIExpression()), !dbg !888
  %50 = load i64, i64* %36, align 8, !dbg !904, !tbaa !88
  %51 = load i64, i64* %38, align 8, !dbg !904, !tbaa !91
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %50, i64 %51, i32 noundef 88) #14, !dbg !904
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !905
  %53 = load i64, i64* %52, align 8, !dbg !905, !tbaa !88
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !905
  %55 = load i64, i64* %54, align 8, !dbg !905, !tbaa !91
  %56 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %53, i64 %55) #14, !dbg !905
  call void @llvm.dbg.value(metadata i64 %56, metadata !884, metadata !DIExpression()), !dbg !888
  store i64 %41, i64* %0, align 4, !dbg !906, !tbaa !103
  %57 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !907
  store i64 %49, i64* %57, align 4, !dbg !908, !tbaa !103
  %58 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !909
  store i64 %56, i64* %58, align 4, !dbg !910, !tbaa !103
  call void @llvm.dbg.value(metadata i64* %0, metadata !885, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !888
  call void @llvm.dbg.value(metadata i64* %1, metadata !885, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !888
  call void @llvm.dbg.value(metadata i64* %1, metadata !886, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i64* %1, metadata !887, metadata !DIExpression()), !dbg !888
  %59 = bitcast i64* %1 to i8*, !dbg !911
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %59, i8 0, i64 24, i1 false), !dbg !912
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* nonnull %0, i64* nonnull %1, i8* noundef %2, i64 noundef %3), !dbg !911
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #14, !dbg !913
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #14, !dbg !913
  ret void, !dbg !913
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #2 !dbg !914 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !916, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !924
  call void @llvm.dbg.value(metadata i64* %1, metadata !916, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !924
  call void @llvm.dbg.value(metadata i8* %2, metadata !917, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i64 %3, metadata !918, metadata !DIExpression()), !dbg !924
  %5 = icmp eq i64 %3, 0, !dbg !925
  br i1 %5, label %9, label %6, !dbg !926

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !919, metadata !DIExpression()), !dbg !927
  %7 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !928
  call void @llvm.dbg.value(metadata i8* %7, metadata !922, metadata !DIExpression()), !dbg !927
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef %2), !dbg !929
  %8 = add i64 %3, -1, !dbg !930
  call void @llvm.dbg.value(metadata i64 %8, metadata !923, metadata !DIExpression()), !dbg !927
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* %0, i64* %1, i8* noundef nonnull %7, i64 noundef %8), !dbg !931
  br label %9, !dbg !932

9:                                                ; preds = %6, %4
  ret void, !dbg !933
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Poly1305_64.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "916dbade399a110eb1bcfd78a50732ef")
!2 = !{!3, !8, !11, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 48, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !10)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
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
!26 = distinct !DISubprogram(name: "Hacl_Poly1305_64_mk_state", scope: !1, file: !1, line: 404, type: !27, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !34, !34}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hacl_Impl_Poly1305_64_State_poly1305_state", file: !30, line: 59, baseType: !31)
!30 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Poly1305_64.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "5b2076ce0bf121af206cc3eb1c4c121c")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 54, size: 64, elements: !32)
!32 = !{!33, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !31, file: !30, line: 56, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !31, file: !30, line: 57, baseType: !34, size: 32, offset: 32)
!36 = !{!37, !38}
!37 = !DILocalVariable(name: "r", arg: 1, scope: !26, file: !1, line: 404, type: !34)
!38 = !DILocalVariable(name: "acc", arg: 2, scope: !26, file: !1, line: 404, type: !34)
!39 = !DILocation(line: 0, scope: !26)
!40 = !DILocation(line: 406, column: 10, scope: !26)
!41 = !DILocation(line: 406, column: 3, scope: !26)
!42 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_mk_state", scope: !1, file: !1, line: 279, type: !27, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !43)
!43 = !{!44, !45}
!44 = !DILocalVariable(name: "r", arg: 1, scope: !42, file: !1, line: 279, type: !34)
!45 = !DILocalVariable(name: "h", arg: 2, scope: !42, file: !1, line: 279, type: !34)
!46 = !DILocation(line: 0, scope: !42)
!47 = !DILocation(line: 281, column: 55, scope: !42)
!48 = !{!49, !50, i64 0}
!49 = !{!"", !50, i64 0, !50, i64 4}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!49, !50, i64 4}
!54 = !DILocation(line: 281, column: 3, scope: !42)
!55 = distinct !DISubprogram(name: "Hacl_Poly1305_64_init", scope: !1, file: !1, line: 409, type: !56, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !29, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!59 = !{!60, !61, !62, !63, !64, !65, !73, !74, !75, !76, !77, !78, !79}
!60 = !DILocalVariable(name: "st", arg: 1, scope: !55, file: !1, line: 409, type: !29)
!61 = !DILocalVariable(name: "k1", arg: 2, scope: !55, file: !1, line: 409, type: !58)
!62 = !DILocalVariable(name: "scrut", scope: !55, file: !1, line: 411, type: !29)
!63 = !DILocalVariable(name: "r", scope: !55, file: !1, line: 412, type: !34)
!64 = !DILocalVariable(name: "x0", scope: !55, file: !1, line: 413, type: !34)
!65 = !DILocalVariable(name: "k10", scope: !55, file: !1, line: 414, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !67, line: 37, baseType: !68)
!67 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !67, line: 35, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 30, size: 128, elements: !70)
!70 = !{!71, !72}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !69, file: !67, line: 32, baseType: !3, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !69, file: !67, line: 33, baseType: !3, size: 64, offset: 64)
!73 = !DILocalVariable(name: "k_clamped", scope: !55, file: !1, line: 416, type: !66)
!74 = !DILocalVariable(name: "r0", scope: !55, file: !1, line: 421, type: !3)
!75 = !DILocalVariable(name: "r1", scope: !55, file: !1, line: 423, type: !3)
!76 = !DILocalVariable(name: "r2", scope: !55, file: !1, line: 427, type: !3)
!77 = !DILocalVariable(name: "scrut0", scope: !55, file: !1, line: 431, type: !29)
!78 = !DILocalVariable(name: "h", scope: !55, file: !1, line: 432, type: !34)
!79 = !DILocalVariable(name: "x00", scope: !55, file: !1, line: 433, type: !34)
!80 = !DILocation(line: 0, scope: !55)
!81 = !DILocation(line: 414, column: 3, scope: !55)
!82 = !DILocation(line: 414, column: 19, scope: !55)
!83 = !DILocation(line: 414, column: 25, scope: !55)
!84 = !DILocation(line: 415, column: 3, scope: !55)
!85 = !DILocation(line: 416, column: 3, scope: !55)
!86 = !DILocation(line: 418, column: 52, scope: !55)
!87 = !DILocation(line: 418, column: 27, scope: !55)
!88 = !{!89, !90, i64 0}
!89 = !{!"", !90, i64 0, !90, i64 8}
!90 = !{!"long long", !51, i64 0}
!91 = !{!89, !90, i64 8}
!92 = !DILocation(line: 420, column: 9, scope: !55)
!93 = !DILocation(line: 418, column: 7, scope: !55)
!94 = !DILocation(line: 417, column: 5, scope: !55)
!95 = !DILocation(line: 421, column: 17, scope: !55)
!96 = !DILocation(line: 421, column: 60, scope: !55)
!97 = !DILocation(line: 424, column: 37, scope: !55)
!98 = !DILocation(line: 424, column: 5, scope: !55)
!99 = !DILocation(line: 425, column: 5, scope: !55)
!100 = !DILocation(line: 427, column: 40, scope: !55)
!101 = !DILocation(line: 427, column: 8, scope: !55)
!102 = !DILocation(line: 428, column: 10, scope: !55)
!103 = !{!90, !90, i64 0}
!104 = !DILocation(line: 429, column: 3, scope: !55)
!105 = !DILocation(line: 429, column: 10, scope: !55)
!106 = !DILocation(line: 430, column: 3, scope: !55)
!107 = !DILocation(line: 430, column: 10, scope: !55)
!108 = !DILocation(line: 437, column: 1, scope: !55)
!109 = !DILocation(line: 435, column: 11, scope: !55)
!110 = distinct !DISubprogram(name: "load128_le", scope: !111, file: !111, line: 543, type: !112, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!111 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !58}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !111, line: 510, baseType: !68)
!115 = !{!116, !117}
!116 = !DILocalVariable(name: "b", arg: 1, scope: !110, file: !111, line: 543, type: !58)
!117 = !DILocalVariable(name: "r", scope: !110, file: !111, line: 544, type: !114)
!118 = !DILocation(line: 0, scope: !110)
!119 = !DILocation(line: 545, column: 3, scope: !110)
!120 = !DILocation(line: 546, column: 3, scope: !110)
!121 = !DISubprogram(name: "FStar_UInt128_logand", scope: !67, file: !67, line: 49, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{!68, !68, !68}
!124 = !{}
!125 = !DISubprogram(name: "FStar_UInt128_logor", scope: !67, file: !67, line: 53, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!126 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !67, file: !67, line: 57, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!127 = !DISubroutineType(types: !128)
!128 = !{!68, !68, !8}
!129 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !67, file: !67, line: 65, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!130 = !DISubroutineType(types: !131)
!131 = !{!68, !3}
!132 = !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !67, file: !67, line: 67, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!133 = !DISubroutineType(types: !134)
!134 = !{!3, !68}
!135 = !DISubprogram(name: "FStar_UInt128_shift_right", scope: !67, file: !67, line: 59, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!136 = distinct !DISubprogram(name: "Hacl_Poly1305_64_update_block", scope: !1, file: !1, line: 439, type: !56, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138, !139}
!138 = !DILocalVariable(name: "st", arg: 1, scope: !136, file: !1, line: 439, type: !29)
!139 = !DILocalVariable(name: "m", arg: 2, scope: !136, file: !1, line: 439, type: !58)
!140 = !DILocation(line: 0, scope: !136)
!141 = !DILocation(line: 441, column: 3, scope: !136)
!142 = !DILocation(line: 442, column: 1, scope: !136)
!143 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_update", scope: !1, file: !1, line: 168, type: !56, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !157, !158, !159, !160, !161, !162}
!145 = !DILocalVariable(name: "st", arg: 1, scope: !143, file: !1, line: 169, type: !29)
!146 = !DILocalVariable(name: "m", arg: 2, scope: !143, file: !1, line: 170, type: !58)
!147 = !DILocalVariable(name: "scrut0", scope: !143, file: !1, line: 173, type: !29)
!148 = !DILocalVariable(name: "h", scope: !143, file: !1, line: 174, type: !34)
!149 = !DILocalVariable(name: "acc", scope: !143, file: !1, line: 175, type: !34)
!150 = !DILocalVariable(name: "scrut", scope: !143, file: !1, line: 176, type: !29)
!151 = !DILocalVariable(name: "r", scope: !143, file: !1, line: 177, type: !34)
!152 = !DILocalVariable(name: "r3", scope: !143, file: !1, line: 178, type: !34)
!153 = !DILocalVariable(name: "tmp", scope: !143, file: !1, line: 179, type: !154)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 192, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 3)
!157 = !DILocalVariable(name: "m0", scope: !143, file: !1, line: 180, type: !66)
!158 = !DILocalVariable(name: "r0", scope: !143, file: !1, line: 181, type: !3)
!159 = !DILocalVariable(name: "r1", scope: !143, file: !1, line: 183, type: !3)
!160 = !DILocalVariable(name: "r2", scope: !143, file: !1, line: 186, type: !3)
!161 = !DILocalVariable(name: "b2", scope: !143, file: !1, line: 190, type: !3)
!162 = !DILocalVariable(name: "b2_", scope: !143, file: !1, line: 191, type: !3)
!163 = !DILocation(line: 0, scope: !143)
!164 = !DILocation(line: 179, column: 3, scope: !143)
!165 = !DILocation(line: 179, column: 12, scope: !143)
!166 = !DILocation(line: 180, column: 3, scope: !143)
!167 = !DILocation(line: 180, column: 19, scope: !143)
!168 = !DILocation(line: 180, column: 24, scope: !143)
!169 = !DILocation(line: 181, column: 17, scope: !143)
!170 = !DILocation(line: 181, column: 53, scope: !143)
!171 = !DILocation(line: 184, column: 37, scope: !143)
!172 = !DILocation(line: 184, column: 5, scope: !143)
!173 = !DILocation(line: 185, column: 5, scope: !143)
!174 = !DILocation(line: 186, column: 49, scope: !143)
!175 = !DILocation(line: 186, column: 17, scope: !143)
!176 = !DILocation(line: 187, column: 3, scope: !143)
!177 = !DILocation(line: 187, column: 11, scope: !143)
!178 = !DILocation(line: 188, column: 3, scope: !143)
!179 = !DILocation(line: 188, column: 11, scope: !143)
!180 = !DILocation(line: 189, column: 3, scope: !143)
!181 = !DILocation(line: 191, column: 43, scope: !143)
!182 = !DILocation(line: 192, column: 11, scope: !143)
!183 = !DILocation(line: 193, column: 3, scope: !143)
!184 = !DILocation(line: 194, column: 1, scope: !143)
!185 = distinct !DISubprogram(name: "Hacl_Poly1305_64_update", scope: !1, file: !1, line: 445, type: !186, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !29, !58, !8}
!188 = !{!189, !190, !191, !192, !195, !196}
!189 = !DILocalVariable(name: "st", arg: 1, scope: !185, file: !1, line: 446, type: !29)
!190 = !DILocalVariable(name: "m", arg: 2, scope: !185, file: !1, line: 447, type: !58)
!191 = !DILocalVariable(name: "num_blocks", arg: 3, scope: !185, file: !1, line: 448, type: !8)
!192 = !DILocalVariable(name: "block", scope: !193, file: !1, line: 453, type: !58)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 452, column: 3)
!194 = distinct !DILexicalBlock(scope: !185, file: !1, line: 451, column: 7)
!195 = !DILocalVariable(name: "m_", scope: !193, file: !1, line: 454, type: !58)
!196 = !DILocalVariable(name: "n1", scope: !193, file: !1, line: 455, type: !8)
!197 = !DILocation(line: 0, scope: !185)
!198 = !DILocation(line: 451, column: 20, scope: !194)
!199 = !DILocation(line: 451, column: 7, scope: !185)
!200 = !DILocation(line: 0, scope: !193)
!201 = !DILocation(line: 454, column: 21, scope: !193)
!202 = !DILocation(line: 455, column: 30, scope: !193)
!203 = !DILocation(line: 456, column: 5, scope: !193)
!204 = !DILocation(line: 457, column: 5, scope: !193)
!205 = !DILocation(line: 458, column: 3, scope: !193)
!206 = !DILocation(line: 459, column: 1, scope: !185)
!207 = distinct !DISubprogram(name: "Hacl_Poly1305_64_update_last", scope: !1, file: !1, line: 462, type: !186, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!208 = !{!209, !210, !211, !212, !213, !214}
!209 = !DILocalVariable(name: "st", arg: 1, scope: !207, file: !1, line: 463, type: !29)
!210 = !DILocalVariable(name: "m", arg: 2, scope: !207, file: !1, line: 464, type: !58)
!211 = !DILocalVariable(name: "len1", arg: 3, scope: !207, file: !1, line: 465, type: !8)
!212 = !DILocalVariable(name: "scrut", scope: !207, file: !1, line: 470, type: !29)
!213 = !DILocalVariable(name: "h", scope: !207, file: !1, line: 471, type: !34)
!214 = !DILocalVariable(name: "acc", scope: !207, file: !1, line: 472, type: !34)
!215 = !DILocation(line: 0, scope: !207)
!216 = !DILocation(line: 468, column: 24, scope: !217)
!217 = distinct !DILexicalBlock(scope: !207, file: !1, line: 468, column: 7)
!218 = !DILocation(line: 468, column: 7, scope: !207)
!219 = !DILocation(line: 468, column: 9, scope: !217)
!220 = !DILocation(line: 469, column: 5, scope: !217)
!221 = !DILocation(line: 473, column: 3, scope: !207)
!222 = !DILocation(line: 474, column: 1, scope: !207)
!223 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_process_last_block", scope: !1, file: !1, line: 223, type: !224, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !29, !58, !3}
!226 = !{!227, !228, !229, !230, !231, !235, !237, !238}
!227 = !DILocalVariable(name: "st", arg: 1, scope: !223, file: !1, line: 224, type: !29)
!228 = !DILocalVariable(name: "m", arg: 2, scope: !223, file: !1, line: 225, type: !58)
!229 = !DILocalVariable(name: "rem_", arg: 3, scope: !223, file: !1, line: 226, type: !3)
!230 = !DILocalVariable(name: "zero1", scope: !223, file: !1, line: 229, type: !11)
!231 = !DILocalVariable(name: "block", scope: !223, file: !1, line: 231, type: !232)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 16)
!235 = !DILocalVariable(name: "_i", scope: !236, file: !1, line: 232, type: !8)
!236 = distinct !DILexicalBlock(scope: !223, file: !1, line: 232, column: 3)
!237 = !DILocalVariable(name: "i0", scope: !223, file: !1, line: 234, type: !8)
!238 = !DILocalVariable(name: "i", scope: !223, file: !1, line: 235, type: !8)
!239 = !DILocation(line: 0, scope: !223)
!240 = !DILocation(line: 231, column: 3, scope: !223)
!241 = !DILocation(line: 231, column: 11, scope: !223)
!242 = !DILocation(line: 0, scope: !236)
!243 = !DILocation(line: 233, column: 15, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !1, line: 232, column: 3)
!245 = !{!51, !51, i64 0}
!246 = !DILocation(line: 234, column: 17, scope: !223)
!247 = !DILocation(line: 236, column: 3, scope: !223)
!248 = !DILocation(line: 237, column: 3, scope: !223)
!249 = !DILocation(line: 237, column: 13, scope: !223)
!250 = !DILocation(line: 238, column: 3, scope: !223)
!251 = !DILocation(line: 239, column: 1, scope: !223)
!252 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_last_pass", scope: !1, file: !1, line: 241, type: !253, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !34}
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!256 = !DILocalVariable(name: "acc", arg: 1, scope: !252, file: !1, line: 241, type: !34)
!257 = !DILocalVariable(name: "a0", scope: !252, file: !1, line: 245, type: !3)
!258 = !DILocalVariable(name: "a10", scope: !252, file: !1, line: 246, type: !3)
!259 = !DILocalVariable(name: "a20", scope: !252, file: !1, line: 247, type: !3)
!260 = !DILocalVariable(name: "a0_", scope: !252, file: !1, line: 248, type: !3)
!261 = !DILocalVariable(name: "r0", scope: !252, file: !1, line: 249, type: !3)
!262 = !DILocalVariable(name: "a1_", scope: !252, file: !1, line: 250, type: !3)
!263 = !DILocalVariable(name: "r1", scope: !252, file: !1, line: 251, type: !3)
!264 = !DILocalVariable(name: "a2_", scope: !252, file: !1, line: 252, type: !3)
!265 = !DILocalVariable(name: "i0", scope: !252, file: !1, line: 257, type: !3)
!266 = !DILocalVariable(name: "i1", scope: !252, file: !1, line: 258, type: !3)
!267 = !DILocalVariable(name: "i0_", scope: !252, file: !1, line: 259, type: !3)
!268 = !DILocalVariable(name: "i1_", scope: !252, file: !1, line: 260, type: !3)
!269 = !DILocalVariable(name: "a00", scope: !252, file: !1, line: 263, type: !3)
!270 = !DILocalVariable(name: "a1", scope: !252, file: !1, line: 264, type: !3)
!271 = !DILocalVariable(name: "a2", scope: !252, file: !1, line: 265, type: !3)
!272 = !DILocalVariable(name: "mask0", scope: !252, file: !1, line: 266, type: !3)
!273 = !DILocalVariable(name: "mask1", scope: !252, file: !1, line: 267, type: !3)
!274 = !DILocalVariable(name: "mask2", scope: !252, file: !1, line: 268, type: !3)
!275 = !DILocalVariable(name: "mask", scope: !252, file: !1, line: 269, type: !3)
!276 = !DILocalVariable(name: "a0_0", scope: !252, file: !1, line: 270, type: !3)
!277 = !DILocalVariable(name: "a1_0", scope: !252, file: !1, line: 271, type: !3)
!278 = !DILocalVariable(name: "a2_0", scope: !252, file: !1, line: 272, type: !3)
!279 = !DILocation(line: 0, scope: !252)
!280 = !DILocation(line: 243, column: 3, scope: !252)
!281 = !DILocation(line: 244, column: 3, scope: !252)
!282 = !DILocation(line: 245, column: 17, scope: !252)
!283 = !DILocation(line: 246, column: 18, scope: !252)
!284 = !DILocation(line: 247, column: 18, scope: !252)
!285 = !DILocation(line: 248, column: 21, scope: !252)
!286 = !DILocation(line: 249, column: 20, scope: !252)
!287 = !DILocation(line: 250, column: 23, scope: !252)
!288 = !DILocation(line: 250, column: 29, scope: !252)
!289 = !DILocation(line: 251, column: 28, scope: !252)
!290 = !DILocation(line: 252, column: 22, scope: !252)
!291 = !DILocation(line: 253, column: 11, scope: !252)
!292 = !DILocation(line: 254, column: 11, scope: !252)
!293 = !DILocation(line: 255, column: 11, scope: !252)
!294 = !DILocation(line: 256, column: 3, scope: !252)
!295 = !DILocation(line: 257, column: 17, scope: !252)
!296 = !DILocation(line: 258, column: 17, scope: !252)
!297 = !DILocation(line: 259, column: 21, scope: !252)
!298 = !DILocation(line: 260, column: 27, scope: !252)
!299 = !DILocation(line: 260, column: 21, scope: !252)
!300 = !DILocation(line: 261, column: 11, scope: !252)
!301 = !DILocation(line: 262, column: 11, scope: !252)
!302 = !DILocation(line: 265, column: 17, scope: !252)
!303 = !DILocation(line: 266, column: 20, scope: !252)
!304 = !DILocation(line: 267, column: 20, scope: !252)
!305 = !DILocation(line: 268, column: 20, scope: !252)
!306 = !DILocation(line: 269, column: 26, scope: !252)
!307 = !DILocation(line: 269, column: 35, scope: !252)
!308 = !DILocation(line: 270, column: 51, scope: !252)
!309 = !DILocation(line: 270, column: 23, scope: !252)
!310 = !DILocation(line: 271, column: 50, scope: !252)
!311 = !DILocation(line: 271, column: 22, scope: !252)
!312 = !DILocation(line: 272, column: 50, scope: !252)
!313 = !DILocation(line: 272, column: 22, scope: !252)
!314 = !DILocation(line: 273, column: 11, scope: !252)
!315 = !DILocation(line: 274, column: 11, scope: !252)
!316 = !DILocation(line: 275, column: 11, scope: !252)
!317 = !DILocation(line: 276, column: 1, scope: !252)
!318 = distinct !DISubprogram(name: "Hacl_Poly1305_64_finish", scope: !1, file: !1, line: 477, type: !319, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !29, !58, !58}
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!322 = !DILocalVariable(name: "st", arg: 1, scope: !318, file: !1, line: 478, type: !29)
!323 = !DILocalVariable(name: "mac", arg: 2, scope: !318, file: !1, line: 479, type: !58)
!324 = !DILocalVariable(name: "k1", arg: 3, scope: !318, file: !1, line: 480, type: !58)
!325 = !DILocalVariable(name: "scrut", scope: !318, file: !1, line: 483, type: !29)
!326 = !DILocalVariable(name: "h", scope: !318, file: !1, line: 484, type: !34)
!327 = !DILocalVariable(name: "acc", scope: !318, file: !1, line: 485, type: !34)
!328 = !DILocalVariable(name: "k_", scope: !318, file: !1, line: 486, type: !66)
!329 = !DILocalVariable(name: "h0", scope: !318, file: !1, line: 487, type: !3)
!330 = !DILocalVariable(name: "h1", scope: !318, file: !1, line: 488, type: !3)
!331 = !DILocalVariable(name: "h2", scope: !318, file: !1, line: 489, type: !3)
!332 = !DILocalVariable(name: "acc_", scope: !318, file: !1, line: 491, type: !66)
!333 = !DILocalVariable(name: "mac_", scope: !318, file: !1, line: 497, type: !66)
!334 = !DILocation(line: 0, scope: !318)
!335 = !DILocation(line: 486, column: 3, scope: !318)
!336 = !DILocation(line: 486, column: 19, scope: !318)
!337 = !DILocation(line: 486, column: 24, scope: !318)
!338 = !DILocation(line: 487, column: 17, scope: !318)
!339 = !DILocation(line: 488, column: 17, scope: !318)
!340 = !DILocation(line: 489, column: 17, scope: !318)
!341 = !DILocation(line: 490, column: 3, scope: !318)
!342 = !DILocation(line: 491, column: 3, scope: !318)
!343 = !DILocation(line: 493, column: 11, scope: !318)
!344 = !DILocation(line: 494, column: 16, scope: !318)
!345 = !DILocation(line: 494, column: 11, scope: !318)
!346 = !DILocation(line: 492, column: 50, scope: !318)
!347 = !DILocation(line: 492, column: 25, scope: !318)
!348 = !DILocation(line: 496, column: 42, scope: !318)
!349 = !DILocation(line: 496, column: 59, scope: !318)
!350 = !DILocation(line: 496, column: 7, scope: !318)
!351 = !DILocation(line: 492, column: 5, scope: !318)
!352 = !DILocation(line: 497, column: 3, scope: !318)
!353 = !DILocation(line: 497, column: 19, scope: !318)
!354 = !DILocation(line: 497, column: 26, scope: !318)
!355 = !DILocation(line: 498, column: 3, scope: !318)
!356 = !DILocation(line: 499, column: 1, scope: !318)
!357 = !DISubprogram(name: "FStar_UInt128_add_mod", scope: !67, file: !67, line: 43, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!358 = distinct !DISubprogram(name: "store128_le", scope: !111, file: !111, line: 549, type: !359, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !58, !114}
!361 = !{!362, !363}
!362 = !DILocalVariable(name: "b", arg: 1, scope: !358, file: !111, line: 549, type: !58)
!363 = !DILocalVariable(name: "n", arg: 2, scope: !358, file: !111, line: 549, type: !114)
!364 = !DILocation(line: 0, scope: !358)
!365 = !DILocation(line: 549, column: 54, scope: !358)
!366 = !DILocation(line: 549, column: 59, scope: !358)
!367 = !DILocation(line: 549, column: 80, scope: !358)
!368 = distinct !DISubprogram(name: "Hacl_Poly1305_64_crypto_onetimeauth", scope: !1, file: !1, line: 502, type: !369, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !58, !58, !3, !58}
!371 = !{!372, !373, !374, !375}
!372 = !DILocalVariable(name: "output", arg: 1, scope: !368, file: !1, line: 503, type: !58)
!373 = !DILocalVariable(name: "input", arg: 2, scope: !368, file: !1, line: 504, type: !58)
!374 = !DILocalVariable(name: "len1", arg: 3, scope: !368, file: !1, line: 505, type: !3)
!375 = !DILocalVariable(name: "k1", arg: 4, scope: !368, file: !1, line: 506, type: !58)
!376 = !DILocation(line: 0, scope: !368)
!377 = !DILocation(line: 509, column: 3, scope: !368)
!378 = !DILocation(line: 510, column: 1, scope: !368)
!379 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_crypto_onetimeauth", scope: !1, file: !1, line: 393, type: !369, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !380)
!380 = !{!381, !382, !383, !384}
!381 = !DILocalVariable(name: "output", arg: 1, scope: !379, file: !1, line: 394, type: !58)
!382 = !DILocalVariable(name: "input", arg: 2, scope: !379, file: !1, line: 395, type: !58)
!383 = !DILocalVariable(name: "len1", arg: 3, scope: !379, file: !1, line: 396, type: !3)
!384 = !DILocalVariable(name: "k1", arg: 4, scope: !379, file: !1, line: 397, type: !58)
!385 = !DILocation(line: 0, scope: !379)
!386 = !DILocation(line: 400, column: 3, scope: !379)
!387 = !DILocation(line: 401, column: 1, scope: !379)
!388 = distinct !DISubprogram(name: "load128_le_", scope: !111, file: !111, line: 517, type: !389, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !392)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !58, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "b", arg: 1, scope: !388, file: !111, line: 517, type: !58)
!394 = !DILocalVariable(name: "r", arg: 2, scope: !388, file: !111, line: 517, type: !391)
!395 = !DILocation(line: 0, scope: !388)
!396 = !DILocation(line: 518, column: 12, scope: !388)
!397 = !DILocation(line: 518, column: 6, scope: !388)
!398 = !DILocation(line: 518, column: 10, scope: !388)
!399 = !DILocation(line: 519, column: 13, scope: !388)
!400 = !DILocation(line: 519, column: 6, scope: !388)
!401 = !DILocation(line: 519, column: 11, scope: !388)
!402 = !DILocation(line: 520, column: 1, scope: !388)
!403 = distinct !DISubprogram(name: "load64", scope: !111, file: !111, line: 347, type: !404, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!3, !58}
!406 = !{!407, !408}
!407 = !DILocalVariable(name: "b", arg: 1, scope: !403, file: !111, line: 347, type: !58)
!408 = !DILocalVariable(name: "x", scope: !403, file: !111, line: 348, type: !3)
!409 = !DILocation(line: 0, scope: !403)
!410 = !DILocation(line: 349, column: 3, scope: !403)
!411 = !DILocation(line: 350, column: 3, scope: !403)
!412 = distinct !DISubprogram(name: "Hacl_Bignum_AddAndMultiply_add_and_multiply", scope: !1, file: !1, line: 156, type: !413, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !34, !34, !34}
!415 = !{!416, !417, !418, !419, !421, !424}
!416 = !DILocalVariable(name: "acc", arg: 1, scope: !412, file: !1, line: 156, type: !34)
!417 = !DILocalVariable(name: "block", arg: 2, scope: !412, file: !1, line: 156, type: !34)
!418 = !DILocalVariable(name: "r", arg: 3, scope: !412, file: !1, line: 156, type: !34)
!419 = !DILocalVariable(name: "i", scope: !420, file: !1, line: 158, type: !8)
!420 = distinct !DILexicalBlock(scope: !412, file: !1, line: 158, column: 3)
!421 = !DILocalVariable(name: "xi", scope: !422, file: !1, line: 160, type: !3)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 159, column: 3)
!423 = distinct !DILexicalBlock(scope: !420, file: !1, line: 158, column: 3)
!424 = !DILocalVariable(name: "yi", scope: !422, file: !1, line: 161, type: !3)
!425 = !DILocation(line: 0, scope: !412)
!426 = !DILocation(line: 0, scope: !420)
!427 = !DILocation(line: 158, column: 3, scope: !420)
!428 = !DILocation(line: 164, column: 3, scope: !412)
!429 = !DILocation(line: 165, column: 1, scope: !412)
!430 = !DILocation(line: 160, column: 19, scope: !422)
!431 = !DILocation(line: 0, scope: !422)
!432 = !DILocation(line: 161, column: 19, scope: !422)
!433 = !DILocation(line: 162, column: 17, scope: !422)
!434 = !DILocation(line: 162, column: 12, scope: !422)
!435 = !DILocation(line: 158, column: 59, scope: !423)
!436 = !DILocation(line: 158, column: 37, scope: !423)
!437 = distinct !{!437, !427, !438, !439, !440}
!438 = !DILocation(line: 163, column: 3, scope: !420)
!439 = !{!"llvm.loop.mustprogress"}
!440 = !{!"llvm.loop.unroll.disable"}
!441 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_fmul", scope: !1, file: !1, line: 135, type: !413, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !442)
!442 = !{!443, !444, !445, !446, !447, !449, !451, !452, !453, !454}
!443 = !DILocalVariable(name: "output", arg: 1, scope: !441, file: !1, line: 135, type: !34)
!444 = !DILocalVariable(name: "input", arg: 2, scope: !441, file: !1, line: 135, type: !34)
!445 = !DILocalVariable(name: "input2", arg: 3, scope: !441, file: !1, line: 135, type: !34)
!446 = !DILocalVariable(name: "tmp", scope: !441, file: !1, line: 137, type: !154)
!447 = !DILocalVariable(name: "t", scope: !441, file: !1, line: 140, type: !448)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 384, elements: !155)
!449 = !DILocalVariable(name: "_i", scope: !450, file: !1, line: 141, type: !8)
!450 = distinct !DILexicalBlock(scope: !441, file: !1, line: 141, column: 3)
!451 = !DILocalVariable(name: "i0", scope: !441, file: !1, line: 147, type: !3)
!452 = !DILocalVariable(name: "i1", scope: !441, file: !1, line: 148, type: !3)
!453 = !DILocalVariable(name: "i0_", scope: !441, file: !1, line: 149, type: !3)
!454 = !DILocalVariable(name: "i1_", scope: !441, file: !1, line: 150, type: !3)
!455 = !DILocation(line: 0, scope: !441)
!456 = !DILocation(line: 137, column: 3, scope: !441)
!457 = !DILocation(line: 137, column: 12, scope: !441)
!458 = !DILocation(line: 138, column: 3, scope: !441)
!459 = !DILocation(line: 140, column: 3, scope: !441)
!460 = !DILocation(line: 140, column: 19, scope: !441)
!461 = !DILocation(line: 0, scope: !450)
!462 = !DILocation(line: 141, column: 3, scope: !450)
!463 = !DILocation(line: 143, column: 38, scope: !441)
!464 = !DILocation(line: 143, column: 3, scope: !441)
!465 = !DILocation(line: 144, column: 3, scope: !441)
!466 = !DILocation(line: 145, column: 3, scope: !441)
!467 = !DILocation(line: 146, column: 3, scope: !441)
!468 = !DILocation(line: 147, column: 17, scope: !441)
!469 = !DILocation(line: 148, column: 17, scope: !441)
!470 = !DILocation(line: 149, column: 21, scope: !441)
!471 = !DILocation(line: 150, column: 27, scope: !441)
!472 = !DILocation(line: 150, column: 21, scope: !441)
!473 = !DILocation(line: 151, column: 14, scope: !441)
!474 = !DILocation(line: 152, column: 14, scope: !441)
!475 = !DILocation(line: 153, column: 1, scope: !441)
!476 = !DILocation(line: 142, column: 5, scope: !477)
!477 = distinct !DILexicalBlock(scope: !450, file: !1, line: 141, column: 3)
!478 = !DILocation(line: 142, column: 13, scope: !477)
!479 = !{i64 0, i64 8, !103, i64 8, i64 8, !103}
!480 = !DILocation(line: 141, column: 45, scope: !477)
!481 = !DILocation(line: 141, column: 29, scope: !477)
!482 = distinct !{!482, !462, !483, !439, !440}
!483 = !DILocation(line: 142, column: 57, scope: !450)
!484 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_mul_shift_reduce_", scope: !1, file: !1, line: 122, type: !485, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !488)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487, !34, !34}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!488 = !{!489, !490, !491, !492, !494, !497, !498}
!489 = !DILocalVariable(name: "output", arg: 1, scope: !484, file: !1, line: 122, type: !487)
!490 = !DILocalVariable(name: "input", arg: 2, scope: !484, file: !1, line: 122, type: !34)
!491 = !DILocalVariable(name: "input2", arg: 3, scope: !484, file: !1, line: 122, type: !34)
!492 = !DILocalVariable(name: "i", scope: !493, file: !1, line: 124, type: !8)
!493 = distinct !DILexicalBlock(scope: !484, file: !1, line: 124, column: 3)
!494 = !DILocalVariable(name: "input2i", scope: !495, file: !1, line: 126, type: !3)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 125, column: 3)
!496 = distinct !DILexicalBlock(scope: !493, file: !1, line: 124, column: 3)
!497 = !DILocalVariable(name: "i", scope: !484, file: !1, line: 130, type: !8)
!498 = !DILocalVariable(name: "input2i", scope: !484, file: !1, line: 131, type: !3)
!499 = !DILocation(line: 0, scope: !484)
!500 = !DILocation(line: 0, scope: !493)
!501 = !DILocation(line: 124, column: 3, scope: !493)
!502 = !DILocation(line: 131, column: 22, scope: !484)
!503 = !DILocation(line: 132, column: 3, scope: !484)
!504 = !DILocation(line: 133, column: 1, scope: !484)
!505 = !DILocation(line: 126, column: 24, scope: !495)
!506 = !DILocation(line: 0, scope: !495)
!507 = !DILocation(line: 127, column: 5, scope: !495)
!508 = !DILocation(line: 128, column: 5, scope: !495)
!509 = !DILocation(line: 124, column: 59, scope: !496)
!510 = !DILocation(line: 124, column: 37, scope: !496)
!511 = distinct !{!511, !501, !512, !439, !440}
!512 = !DILocation(line: 129, column: 3, scope: !493)
!513 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_wide_", scope: !1, file: !1, line: 80, type: !514, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !487}
!516 = !{!517, !518, !520, !523, !524, !525, !526}
!517 = !DILocalVariable(name: "tmp", arg: 1, scope: !513, file: !1, line: 80, type: !487)
!518 = !DILocalVariable(name: "i", scope: !519, file: !1, line: 82, type: !8)
!519 = distinct !DILexicalBlock(scope: !513, file: !1, line: 82, column: 3)
!520 = !DILocalVariable(name: "ctr", scope: !521, file: !1, line: 84, type: !8)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 83, column: 3)
!522 = distinct !DILexicalBlock(scope: !519, file: !1, line: 82, column: 3)
!523 = !DILocalVariable(name: "tctr", scope: !521, file: !1, line: 85, type: !66)
!524 = !DILocalVariable(name: "tctrp1", scope: !521, file: !1, line: 86, type: !66)
!525 = !DILocalVariable(name: "r0", scope: !521, file: !1, line: 87, type: !3)
!526 = !DILocalVariable(name: "c", scope: !521, file: !1, line: 88, type: !66)
!527 = !DILocation(line: 0, scope: !513)
!528 = !DILocation(line: 0, scope: !519)
!529 = !DILocation(line: 82, column: 3, scope: !519)
!530 = !DILocation(line: 92, column: 1, scope: !513)
!531 = !DILocation(line: 0, scope: !521)
!532 = !DILocation(line: 85, column: 28, scope: !521)
!533 = !{i64 0, i64 8, !103}
!534 = !DILocation(line: 86, column: 38, scope: !521)
!535 = !DILocation(line: 86, column: 30, scope: !521)
!536 = !DILocation(line: 87, column: 19, scope: !521)
!537 = !DILocation(line: 87, column: 57, scope: !521)
!538 = !DILocation(line: 88, column: 5, scope: !521)
!539 = !DILocation(line: 88, column: 21, scope: !521)
!540 = !DILocation(line: 88, column: 25, scope: !521)
!541 = !DILocation(line: 89, column: 16, scope: !521)
!542 = !DILocation(line: 90, column: 31, scope: !521)
!543 = !DILocation(line: 91, column: 3, scope: !522)
!544 = !DILocation(line: 82, column: 37, scope: !522)
!545 = distinct !{!545, !529, !546, !439, !440}
!546 = !DILocation(line: 91, column: 3, scope: !519)
!547 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top_wide", scope: !1, file: !1, line: 42, type: !514, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !548)
!548 = !{!549, !550, !551, !552, !553, !554}
!549 = !DILocalVariable(name: "b", arg: 1, scope: !547, file: !1, line: 42, type: !487)
!550 = !DILocalVariable(name: "b2", scope: !547, file: !1, line: 44, type: !66)
!551 = !DILocalVariable(name: "b0", scope: !547, file: !1, line: 45, type: !66)
!552 = !DILocalVariable(name: "b2_", scope: !547, file: !1, line: 47, type: !66)
!553 = !DILocalVariable(name: "b2_42", scope: !547, file: !1, line: 48, type: !3)
!554 = !DILocalVariable(name: "b0_", scope: !547, file: !1, line: 50, type: !66)
!555 = !DILocation(line: 0, scope: !547)
!556 = !DILocation(line: 44, column: 24, scope: !547)
!557 = !DILocation(line: 45, column: 24, scope: !547)
!558 = !DILocation(line: 46, column: 3, scope: !547)
!559 = !DILocation(line: 47, column: 3, scope: !547)
!560 = !DILocation(line: 47, column: 34, scope: !547)
!561 = !DILocation(line: 47, column: 9, scope: !547)
!562 = !DILocation(line: 48, column: 52, scope: !547)
!563 = !DILocation(line: 48, column: 20, scope: !547)
!564 = !DILocation(line: 49, column: 3, scope: !547)
!565 = !DILocation(line: 50, column: 3, scope: !547)
!566 = !DILocation(line: 50, column: 87, scope: !547)
!567 = !DILocation(line: 50, column: 31, scope: !547)
!568 = !DILocation(line: 50, column: 9, scope: !547)
!569 = !DILocation(line: 51, column: 3, scope: !547)
!570 = !DILocation(line: 51, column: 11, scope: !547)
!571 = !DILocation(line: 52, column: 11, scope: !547)
!572 = !DILocation(line: 53, column: 1, scope: !547)
!573 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_copy_from_wide_", scope: !1, file: !1, line: 56, type: !574, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !34, !487}
!576 = !{!577, !578, !579, !581}
!577 = !DILocalVariable(name: "output", arg: 1, scope: !573, file: !1, line: 56, type: !34)
!578 = !DILocalVariable(name: "input", arg: 2, scope: !573, file: !1, line: 56, type: !487)
!579 = !DILocalVariable(name: "i", scope: !580, file: !1, line: 58, type: !8)
!580 = distinct !DILexicalBlock(scope: !573, file: !1, line: 58, column: 3)
!581 = !DILocalVariable(name: "xi", scope: !582, file: !1, line: 60, type: !66)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 59, column: 3)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 58, column: 3)
!584 = !DILocation(line: 0, scope: !573)
!585 = !DILocation(line: 0, scope: !580)
!586 = !DILocation(line: 58, column: 3, scope: !580)
!587 = !DILocation(line: 63, column: 1, scope: !573)
!588 = !DILocation(line: 60, column: 26, scope: !582)
!589 = !DILocation(line: 0, scope: !582)
!590 = !DILocation(line: 61, column: 17, scope: !582)
!591 = !DILocation(line: 61, column: 5, scope: !582)
!592 = !DILocation(line: 61, column: 15, scope: !582)
!593 = !DILocation(line: 58, column: 59, scope: !583)
!594 = !DILocation(line: 58, column: 37, scope: !583)
!595 = distinct !{!595, !586, !596, !439, !440}
!596 = !DILocation(line: 62, column: 3, scope: !580)
!597 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_sum_scalar_multiplication_", scope: !1, file: !1, line: 66, type: !598, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !487, !34, !3}
!600 = !{!601, !602, !603, !604, !606, !609}
!601 = !DILocalVariable(name: "output", arg: 1, scope: !597, file: !1, line: 67, type: !487)
!602 = !DILocalVariable(name: "input", arg: 2, scope: !597, file: !1, line: 68, type: !34)
!603 = !DILocalVariable(name: "s", arg: 3, scope: !597, file: !1, line: 69, type: !3)
!604 = !DILocalVariable(name: "i", scope: !605, file: !1, line: 72, type: !8)
!605 = distinct !DILexicalBlock(scope: !597, file: !1, line: 72, column: 3)
!606 = !DILocalVariable(name: "xi", scope: !607, file: !1, line: 74, type: !66)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 73, column: 3)
!608 = distinct !DILexicalBlock(scope: !605, file: !1, line: 72, column: 3)
!609 = !DILocalVariable(name: "yi", scope: !607, file: !1, line: 75, type: !3)
!610 = !DILocation(line: 0, scope: !597)
!611 = !DILocation(line: 0, scope: !605)
!612 = !DILocation(line: 72, column: 3, scope: !605)
!613 = !DILocation(line: 78, column: 1, scope: !597)
!614 = !DILocation(line: 74, column: 26, scope: !607)
!615 = !DILocation(line: 0, scope: !607)
!616 = !DILocation(line: 75, column: 19, scope: !607)
!617 = !DILocation(line: 76, column: 17, scope: !607)
!618 = !DILocation(line: 76, column: 43, scope: !607)
!619 = !DILocation(line: 72, column: 59, scope: !608)
!620 = !DILocation(line: 72, column: 37, scope: !608)
!621 = distinct !{!621, !612, !622, !439, !440}
!622 = !DILocation(line: 77, column: 3, scope: !605)
!623 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_shift_reduce", scope: !1, file: !1, line: 108, type: !253, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !624)
!624 = !{!625, !626, !627, !629, !632}
!625 = !DILocalVariable(name: "output", arg: 1, scope: !623, file: !1, line: 108, type: !34)
!626 = !DILocalVariable(name: "tmp", scope: !623, file: !1, line: 110, type: !3)
!627 = !DILocalVariable(name: "i", scope: !628, file: !1, line: 111, type: !8)
!628 = distinct !DILexicalBlock(scope: !623, file: !1, line: 111, column: 3)
!629 = !DILocalVariable(name: "ctr", scope: !630, file: !1, line: 113, type: !8)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 112, column: 3)
!631 = distinct !DILexicalBlock(scope: !628, file: !1, line: 111, column: 3)
!632 = !DILocalVariable(name: "z", scope: !630, file: !1, line: 114, type: !3)
!633 = !DILocation(line: 0, scope: !623)
!634 = !DILocation(line: 110, column: 18, scope: !623)
!635 = !DILocation(line: 0, scope: !628)
!636 = !DILocation(line: 111, column: 3, scope: !628)
!637 = !DILocation(line: 115, column: 17, scope: !630)
!638 = !DILocation(line: 0, scope: !630)
!639 = !DILocation(line: 117, column: 14, scope: !623)
!640 = !DILocation(line: 118, column: 3, scope: !623)
!641 = !DILocation(line: 119, column: 1, scope: !623)
!642 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !67, file: !67, line: 78, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!643 = !DISubroutineType(types: !644)
!644 = !{!68, !3, !3}
!645 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_reduce", scope: !1, file: !1, line: 27, type: !253, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !646)
!646 = !{!647, !648}
!647 = !DILocalVariable(name: "b", arg: 1, scope: !645, file: !1, line: 27, type: !34)
!648 = !DILocalVariable(name: "b0", scope: !645, file: !1, line: 29, type: !3)
!649 = !DILocation(line: 0, scope: !645)
!650 = !DILocation(line: 29, column: 17, scope: !645)
!651 = !DILocation(line: 30, column: 32, scope: !645)
!652 = !DILocation(line: 30, column: 9, scope: !645)
!653 = !DILocation(line: 31, column: 1, scope: !645)
!654 = !DISubprogram(name: "FStar_UInt128_add", scope: !67, file: !67, line: 41, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !124)
!655 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_process_last_block_", scope: !1, file: !1, line: 197, type: !656, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !58, !29, !58, !3}
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!659 = !DILocalVariable(name: "block", arg: 1, scope: !655, file: !1, line: 198, type: !58)
!660 = !DILocalVariable(name: "st", arg: 2, scope: !655, file: !1, line: 199, type: !29)
!661 = !DILocalVariable(name: "m", arg: 3, scope: !655, file: !1, line: 200, type: !58)
!662 = !DILocalVariable(name: "rem_", arg: 4, scope: !655, file: !1, line: 201, type: !3)
!663 = !DILocalVariable(name: "tmp", scope: !655, file: !1, line: 204, type: !154)
!664 = !DILocalVariable(name: "m0", scope: !655, file: !1, line: 205, type: !66)
!665 = !DILocalVariable(name: "r0", scope: !655, file: !1, line: 206, type: !3)
!666 = !DILocalVariable(name: "r1", scope: !655, file: !1, line: 208, type: !3)
!667 = !DILocalVariable(name: "r2", scope: !655, file: !1, line: 211, type: !3)
!668 = !DILocalVariable(name: "scrut0", scope: !655, file: !1, line: 215, type: !29)
!669 = !DILocalVariable(name: "h", scope: !655, file: !1, line: 216, type: !34)
!670 = !DILocalVariable(name: "scrut", scope: !655, file: !1, line: 217, type: !29)
!671 = !DILocalVariable(name: "r", scope: !655, file: !1, line: 218, type: !34)
!672 = !DILocation(line: 0, scope: !655)
!673 = !DILocation(line: 204, column: 3, scope: !655)
!674 = !DILocation(line: 204, column: 12, scope: !655)
!675 = !DILocation(line: 205, column: 3, scope: !655)
!676 = !DILocation(line: 205, column: 19, scope: !655)
!677 = !DILocation(line: 205, column: 24, scope: !655)
!678 = !DILocation(line: 206, column: 17, scope: !655)
!679 = !DILocation(line: 206, column: 53, scope: !655)
!680 = !DILocation(line: 209, column: 37, scope: !655)
!681 = !DILocation(line: 209, column: 5, scope: !655)
!682 = !DILocation(line: 210, column: 5, scope: !655)
!683 = !DILocation(line: 211, column: 49, scope: !655)
!684 = !DILocation(line: 211, column: 17, scope: !655)
!685 = !DILocation(line: 212, column: 3, scope: !655)
!686 = !DILocation(line: 212, column: 11, scope: !655)
!687 = !DILocation(line: 213, column: 3, scope: !655)
!688 = !DILocation(line: 213, column: 11, scope: !655)
!689 = !DILocation(line: 214, column: 3, scope: !655)
!690 = !DILocation(line: 214, column: 11, scope: !655)
!691 = !DILocation(line: 219, column: 3, scope: !655)
!692 = !DILocation(line: 220, column: 1, scope: !655)
!693 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_limb_", scope: !1, file: !1, line: 94, type: !253, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !694)
!694 = !{!695, !696, !698, !701, !702, !703, !704}
!695 = !DILocalVariable(name: "tmp", arg: 1, scope: !693, file: !1, line: 94, type: !34)
!696 = !DILocalVariable(name: "i", scope: !697, file: !1, line: 96, type: !8)
!697 = distinct !DILexicalBlock(scope: !693, file: !1, line: 96, column: 3)
!698 = !DILocalVariable(name: "ctr", scope: !699, file: !1, line: 98, type: !8)
!699 = distinct !DILexicalBlock(scope: !700, file: !1, line: 97, column: 3)
!700 = distinct !DILexicalBlock(scope: !697, file: !1, line: 96, column: 3)
!701 = !DILocalVariable(name: "tctr", scope: !699, file: !1, line: 99, type: !3)
!702 = !DILocalVariable(name: "tctrp1", scope: !699, file: !1, line: 100, type: !3)
!703 = !DILocalVariable(name: "r0", scope: !699, file: !1, line: 101, type: !3)
!704 = !DILocalVariable(name: "c", scope: !699, file: !1, line: 102, type: !3)
!705 = !DILocation(line: 0, scope: !693)
!706 = !DILocation(line: 0, scope: !697)
!707 = !DILocation(line: 96, column: 3, scope: !697)
!708 = !DILocation(line: 106, column: 1, scope: !693)
!709 = !DILocation(line: 0, scope: !699)
!710 = !DILocation(line: 99, column: 21, scope: !699)
!711 = !DILocation(line: 100, column: 31, scope: !699)
!712 = !DILocation(line: 100, column: 23, scope: !699)
!713 = !DILocation(line: 101, column: 24, scope: !699)
!714 = !DILocation(line: 102, column: 23, scope: !699)
!715 = !DILocation(line: 103, column: 14, scope: !699)
!716 = !DILocation(line: 104, column: 38, scope: !699)
!717 = !DILocation(line: 104, column: 29, scope: !699)
!718 = !DILocation(line: 96, column: 37, scope: !700)
!719 = distinct !{!719, !707, !720, !439, !440}
!720 = !DILocation(line: 105, column: 3, scope: !697)
!721 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top", scope: !1, file: !1, line: 33, type: !253, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !722)
!722 = !{!723, !724, !725, !726}
!723 = !DILocalVariable(name: "b", arg: 1, scope: !721, file: !1, line: 33, type: !34)
!724 = !DILocalVariable(name: "b2", scope: !721, file: !1, line: 35, type: !3)
!725 = !DILocalVariable(name: "b0", scope: !721, file: !1, line: 36, type: !3)
!726 = !DILocalVariable(name: "b2_42", scope: !721, file: !1, line: 37, type: !3)
!727 = !DILocation(line: 0, scope: !721)
!728 = !DILocation(line: 35, column: 17, scope: !721)
!729 = !DILocation(line: 36, column: 17, scope: !721)
!730 = !DILocation(line: 37, column: 23, scope: !721)
!731 = !DILocation(line: 38, column: 14, scope: !721)
!732 = !DILocation(line: 38, column: 9, scope: !721)
!733 = !DILocation(line: 39, column: 35, scope: !721)
!734 = !DILocation(line: 39, column: 43, scope: !721)
!735 = !DILocation(line: 39, column: 9, scope: !721)
!736 = !DILocation(line: 40, column: 1, scope: !721)
!737 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !738, file: !738, line: 168, type: !739, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !741)
!738 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!739 = !DISubroutineType(types: !740)
!740 = !{!3, !3, !3}
!741 = !{!742, !743, !744, !745}
!742 = !DILocalVariable(name: "x", arg: 1, scope: !737, file: !738, line: 168, type: !3)
!743 = !DILocalVariable(name: "y", arg: 2, scope: !737, file: !738, line: 168, type: !3)
!744 = !DILocalVariable(name: "low63", scope: !737, file: !738, line: 169, type: !3)
!745 = !DILocalVariable(name: "high_bit", scope: !737, file: !738, line: 173, type: !3)
!746 = !DILocation(line: 0, scope: !737)
!747 = !DILocation(line: 170, column: 42, scope: !737)
!748 = !DILocation(line: 170, column: 74, scope: !737)
!749 = !DILocation(line: 177, column: 16, scope: !737)
!750 = !DILocation(line: 177, column: 3, scope: !737)
!751 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !738, file: !738, line: 157, type: !739, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !752)
!752 = !{!753, !754}
!753 = !DILocalVariable(name: "x", arg: 1, scope: !751, file: !738, line: 157, type: !3)
!754 = !DILocalVariable(name: "y", arg: 2, scope: !751, file: !738, line: 157, type: !3)
!755 = !DILocation(line: 0, scope: !751)
!756 = !DILocation(line: 158, column: 7, scope: !751)
!757 = !DILocation(line: 159, column: 10, scope: !751)
!758 = !DILocation(line: 159, column: 5, scope: !751)
!759 = !DILocation(line: 160, column: 10, scope: !751)
!760 = !DILocation(line: 160, column: 5, scope: !751)
!761 = !DILocation(line: 161, column: 10, scope: !751)
!762 = !DILocation(line: 161, column: 5, scope: !751)
!763 = !DILocation(line: 162, column: 10, scope: !751)
!764 = !DILocation(line: 162, column: 5, scope: !751)
!765 = !DILocation(line: 163, column: 10, scope: !751)
!766 = !DILocation(line: 163, column: 5, scope: !751)
!767 = !DILocation(line: 164, column: 10, scope: !751)
!768 = !DILocation(line: 164, column: 5, scope: !751)
!769 = !DILocation(line: 165, column: 23, scope: !751)
!770 = !DILocation(line: 165, column: 3, scope: !751)
!771 = distinct !DISubprogram(name: "store128_le_", scope: !111, file: !111, line: 522, type: !389, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !772)
!772 = !{!773, !774}
!773 = !DILocalVariable(name: "b", arg: 1, scope: !771, file: !111, line: 522, type: !58)
!774 = !DILocalVariable(name: "n", arg: 2, scope: !771, file: !111, line: 522, type: !391)
!775 = !DILocation(line: 0, scope: !771)
!776 = !DILocation(line: 523, column: 3, scope: !771)
!777 = !DILocation(line: 524, column: 3, scope: !771)
!778 = !DILocation(line: 525, column: 1, scope: !771)
!779 = distinct !DISubprogram(name: "store64", scope: !111, file: !111, line: 357, type: !780, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !58, !3}
!782 = !{!783, !784}
!783 = !DILocalVariable(name: "b", arg: 1, scope: !779, file: !111, line: 357, type: !58)
!784 = !DILocalVariable(name: "i", arg: 2, scope: !779, file: !111, line: 357, type: !3)
!785 = !DILocation(line: 0, scope: !779)
!786 = !DILocation(line: 357, column: 54, scope: !779)
!787 = !DILocation(line: 357, column: 72, scope: !779)
!788 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_crypto_onetimeauth_", scope: !1, file: !1, line: 361, type: !369, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !789)
!789 = !{!790, !791, !792, !793, !794, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810}
!790 = !DILocalVariable(name: "output", arg: 1, scope: !788, file: !1, line: 362, type: !58)
!791 = !DILocalVariable(name: "input", arg: 2, scope: !788, file: !1, line: 363, type: !58)
!792 = !DILocalVariable(name: "len1", arg: 3, scope: !788, file: !1, line: 364, type: !3)
!793 = !DILocalVariable(name: "k1", arg: 4, scope: !788, file: !1, line: 365, type: !58)
!794 = !DILocalVariable(name: "buf", scope: !788, file: !1, line: 368, type: !795)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 384, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 6)
!798 = !DILocalVariable(name: "r", scope: !788, file: !1, line: 369, type: !34)
!799 = !DILocalVariable(name: "h", scope: !788, file: !1, line: 370, type: !34)
!800 = !DILocalVariable(name: "st", scope: !788, file: !1, line: 371, type: !29)
!801 = !DILocalVariable(name: "key_s", scope: !788, file: !1, line: 372, type: !58)
!802 = !DILocalVariable(name: "scrut", scope: !788, file: !1, line: 374, type: !29)
!803 = !DILocalVariable(name: "h3", scope: !788, file: !1, line: 375, type: !34)
!804 = !DILocalVariable(name: "acc", scope: !788, file: !1, line: 376, type: !34)
!805 = !DILocalVariable(name: "k_", scope: !788, file: !1, line: 377, type: !66)
!806 = !DILocalVariable(name: "h0", scope: !788, file: !1, line: 378, type: !3)
!807 = !DILocalVariable(name: "h1", scope: !788, file: !1, line: 379, type: !3)
!808 = !DILocalVariable(name: "h2", scope: !788, file: !1, line: 380, type: !3)
!809 = !DILocalVariable(name: "acc_", scope: !788, file: !1, line: 382, type: !66)
!810 = !DILocalVariable(name: "mac_", scope: !788, file: !1, line: 388, type: !66)
!811 = !DILocation(line: 0, scope: !788)
!812 = !DILocation(line: 368, column: 3, scope: !788)
!813 = !DILocation(line: 368, column: 12, scope: !788)
!814 = !DILocation(line: 369, column: 17, scope: !788)
!815 = !DILocation(line: 370, column: 21, scope: !788)
!816 = !DILocation(line: 371, column: 3, scope: !788)
!817 = !DILocation(line: 371, column: 46, scope: !788)
!818 = !DILocation(line: 371, column: 51, scope: !788)
!819 = !DILocation(line: 372, column: 23, scope: !788)
!820 = !DILocation(line: 373, column: 3, scope: !788)
!821 = !DILocation(line: 377, column: 3, scope: !788)
!822 = !DILocation(line: 377, column: 19, scope: !788)
!823 = !DILocation(line: 377, column: 24, scope: !788)
!824 = !DILocation(line: 378, column: 17, scope: !788)
!825 = !DILocation(line: 379, column: 17, scope: !788)
!826 = !DILocation(line: 380, column: 17, scope: !788)
!827 = !DILocation(line: 381, column: 3, scope: !788)
!828 = !DILocation(line: 382, column: 3, scope: !788)
!829 = !DILocation(line: 384, column: 11, scope: !788)
!830 = !DILocation(line: 385, column: 16, scope: !788)
!831 = !DILocation(line: 385, column: 11, scope: !788)
!832 = !DILocation(line: 383, column: 50, scope: !788)
!833 = !DILocation(line: 383, column: 25, scope: !788)
!834 = !DILocation(line: 387, column: 42, scope: !788)
!835 = !DILocation(line: 387, column: 59, scope: !788)
!836 = !DILocation(line: 387, column: 7, scope: !788)
!837 = !DILocation(line: 383, column: 5, scope: !788)
!838 = !DILocation(line: 388, column: 3, scope: !788)
!839 = !DILocation(line: 388, column: 19, scope: !788)
!840 = !DILocation(line: 388, column: 26, scope: !788)
!841 = !DILocation(line: 389, column: 3, scope: !788)
!842 = !DILocation(line: 390, column: 1, scope: !788)
!843 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_poly1305_complete", scope: !1, file: !1, line: 339, type: !844, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !29, !58, !3, !58}
!846 = !{!847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!847 = !DILocalVariable(name: "st", arg: 1, scope: !843, file: !1, line: 340, type: !29)
!848 = !DILocalVariable(name: "m", arg: 2, scope: !843, file: !1, line: 341, type: !58)
!849 = !DILocalVariable(name: "len1", arg: 3, scope: !843, file: !1, line: 342, type: !3)
!850 = !DILocalVariable(name: "k1", arg: 4, scope: !843, file: !1, line: 343, type: !58)
!851 = !DILocalVariable(name: "kr", scope: !843, file: !1, line: 346, type: !58)
!852 = !DILocalVariable(name: "len16", scope: !843, file: !1, line: 347, type: !3)
!853 = !DILocalVariable(name: "rem16", scope: !843, file: !1, line: 348, type: !3)
!854 = !DILocalVariable(name: "part_input", scope: !843, file: !1, line: 349, type: !58)
!855 = !DILocalVariable(name: "last_block", scope: !843, file: !1, line: 350, type: !58)
!856 = !DILocalVariable(name: "scrut", scope: !843, file: !1, line: 354, type: !29)
!857 = !DILocalVariable(name: "h", scope: !843, file: !1, line: 355, type: !34)
!858 = !DILocalVariable(name: "acc", scope: !843, file: !1, line: 356, type: !34)
!859 = !DILocation(line: 0, scope: !843)
!860 = !DILocation(line: 347, column: 25, scope: !843)
!861 = !DILocation(line: 348, column: 25, scope: !843)
!862 = !DILocation(line: 351, column: 3, scope: !843)
!863 = !DILocation(line: 352, column: 15, scope: !864)
!864 = distinct !DILexicalBlock(scope: !843, file: !1, line: 352, column: 7)
!865 = !DILocation(line: 352, column: 7, scope: !843)
!866 = !DILocation(line: 350, column: 29, scope: !843)
!867 = !DILocation(line: 350, column: 27, scope: !843)
!868 = !DILocation(line: 353, column: 5, scope: !864)
!869 = !DILocation(line: 357, column: 3, scope: !843)
!870 = !DILocation(line: 358, column: 1, scope: !843)
!871 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_poly1305_partial", scope: !1, file: !1, line: 302, type: !844, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !872)
!872 = !{!873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887}
!873 = !DILocalVariable(name: "st", arg: 1, scope: !871, file: !1, line: 303, type: !29)
!874 = !DILocalVariable(name: "input", arg: 2, scope: !871, file: !1, line: 304, type: !58)
!875 = !DILocalVariable(name: "len1", arg: 3, scope: !871, file: !1, line: 305, type: !3)
!876 = !DILocalVariable(name: "kr", arg: 4, scope: !871, file: !1, line: 306, type: !58)
!877 = !DILocalVariable(name: "scrut", scope: !871, file: !1, line: 309, type: !29)
!878 = !DILocalVariable(name: "r", scope: !871, file: !1, line: 310, type: !34)
!879 = !DILocalVariable(name: "x0", scope: !871, file: !1, line: 311, type: !34)
!880 = !DILocalVariable(name: "k1", scope: !871, file: !1, line: 312, type: !66)
!881 = !DILocalVariable(name: "k_clamped", scope: !871, file: !1, line: 314, type: !66)
!882 = !DILocalVariable(name: "r0", scope: !871, file: !1, line: 319, type: !3)
!883 = !DILocalVariable(name: "r1", scope: !871, file: !1, line: 321, type: !3)
!884 = !DILocalVariable(name: "r2", scope: !871, file: !1, line: 325, type: !3)
!885 = !DILocalVariable(name: "scrut0", scope: !871, file: !1, line: 329, type: !29)
!886 = !DILocalVariable(name: "h", scope: !871, file: !1, line: 330, type: !34)
!887 = !DILocalVariable(name: "x00", scope: !871, file: !1, line: 331, type: !34)
!888 = !DILocation(line: 0, scope: !871)
!889 = !DILocation(line: 312, column: 3, scope: !871)
!890 = !DILocation(line: 312, column: 19, scope: !871)
!891 = !DILocation(line: 312, column: 24, scope: !871)
!892 = !DILocation(line: 313, column: 3, scope: !871)
!893 = !DILocation(line: 314, column: 3, scope: !871)
!894 = !DILocation(line: 316, column: 52, scope: !871)
!895 = !DILocation(line: 316, column: 27, scope: !871)
!896 = !DILocation(line: 318, column: 9, scope: !871)
!897 = !DILocation(line: 316, column: 7, scope: !871)
!898 = !DILocation(line: 315, column: 5, scope: !871)
!899 = !DILocation(line: 319, column: 17, scope: !871)
!900 = !DILocation(line: 319, column: 60, scope: !871)
!901 = !DILocation(line: 322, column: 37, scope: !871)
!902 = !DILocation(line: 322, column: 5, scope: !871)
!903 = !DILocation(line: 323, column: 5, scope: !871)
!904 = !DILocation(line: 325, column: 40, scope: !871)
!905 = !DILocation(line: 325, column: 8, scope: !871)
!906 = !DILocation(line: 326, column: 10, scope: !871)
!907 = !DILocation(line: 327, column: 3, scope: !871)
!908 = !DILocation(line: 327, column: 10, scope: !871)
!909 = !DILocation(line: 328, column: 3, scope: !871)
!910 = !DILocation(line: 328, column: 10, scope: !871)
!911 = !DILocation(line: 335, column: 3, scope: !871)
!912 = !DILocation(line: 333, column: 11, scope: !871)
!913 = !DILocation(line: 336, column: 1, scope: !871)
!914 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_poly1305_blocks", scope: !1, file: !1, line: 285, type: !224, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !915)
!915 = !{!916, !917, !918, !919, !922, !923}
!916 = !DILocalVariable(name: "st", arg: 1, scope: !914, file: !1, line: 286, type: !29)
!917 = !DILocalVariable(name: "m", arg: 2, scope: !914, file: !1, line: 287, type: !58)
!918 = !DILocalVariable(name: "len1", arg: 3, scope: !914, file: !1, line: 288, type: !3)
!919 = !DILocalVariable(name: "block", scope: !920, file: !1, line: 293, type: !58)
!920 = distinct !DILexicalBlock(scope: !921, file: !1, line: 292, column: 3)
!921 = distinct !DILexicalBlock(scope: !914, file: !1, line: 291, column: 7)
!922 = !DILocalVariable(name: "tail1", scope: !920, file: !1, line: 294, type: !58)
!923 = !DILocalVariable(name: "len2", scope: !920, file: !1, line: 296, type: !3)
!924 = !DILocation(line: 0, scope: !914)
!925 = !DILocation(line: 291, column: 14, scope: !921)
!926 = !DILocation(line: 291, column: 7, scope: !914)
!927 = !DILocation(line: 0, scope: !920)
!928 = !DILocation(line: 294, column: 24, scope: !920)
!929 = !DILocation(line: 295, column: 5, scope: !920)
!930 = !DILocation(line: 296, column: 26, scope: !920)
!931 = !DILocation(line: 297, column: 5, scope: !920)
!932 = !DILocation(line: 298, column: 3, scope: !920)
!933 = !DILocation(line: 299, column: 1, scope: !914)
