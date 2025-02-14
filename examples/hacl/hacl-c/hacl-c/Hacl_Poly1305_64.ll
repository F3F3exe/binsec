; ModuleID = 'hacl-c/hacl-c/Hacl_Poly1305_64.c'
source_filename = "hacl-c/hacl-c/Hacl_Poly1305_64.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_64_State_poly1305_state = type { i64*, i64* }
%struct.FStar_UInt128_uint128 = type { i64, i64 }

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @Hacl_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* noalias nocapture writeonly sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, i64* noundef %1, i64* noundef %2) local_unnamed_addr #0 !dbg !26 {
  call void @llvm.dbg.value(metadata i64* %1, metadata !37, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64* %2, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64* %1, metadata !40, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64* %2, metadata !43, metadata !DIExpression()), !dbg !44
  %4 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %0, i32 0, i32 0, !dbg !46
  store i64* %1, i64** %4, align 4, !dbg !46, !tbaa !47, !alias.scope !52
  %5 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %0, i32 0, i32 1, !dbg !46
  store i64* %2, i64** %5, align 4, !dbg !46, !tbaa !55, !alias.scope !52
  ret void, !dbg !56
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_Poly1305_64_init(i64* nocapture writeonly %0, i64* nocapture writeonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #2 !dbg !57 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !62, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !82
  call void @llvm.dbg.value(metadata i64* %1, metadata !62, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !82
  call void @llvm.dbg.value(metadata i8* %2, metadata !63, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i64* %0, metadata !64, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !82
  call void @llvm.dbg.value(metadata i64* %1, metadata !64, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !82
  call void @llvm.dbg.value(metadata i64* %0, metadata !65, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i64* %0, metadata !66, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i8* undef, metadata !83, metadata !DIExpression(DW_OP_deref)), !dbg !91
  call void @llvm.dbg.value(metadata i8* %2, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i8* %2, metadata !93, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata i8* %2, metadata !102, metadata !DIExpression()), !dbg !108
  %11 = bitcast i8* %2 to i64*, !dbg !110
  %12 = load i64, i64* %11, align 1, !dbg !110, !noalias !111
  call void @llvm.dbg.value(metadata i64 %12, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %12, metadata !67, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !82
  %13 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !114
  call void @llvm.dbg.value(metadata i8* %13, metadata !102, metadata !DIExpression()), !dbg !115
  %14 = bitcast i8* %13 to i64*, !dbg !117
  %15 = load i64, i64* %14, align 1, !dbg !117, !noalias !111
  call void @llvm.dbg.value(metadata i64 %15, metadata !107, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 %15, metadata !67, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !82
  %16 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !118
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #12, !dbg !118
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !75, metadata !DIExpression()), !dbg !119
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 1152921487695413244) #12, !dbg !120
  %17 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !121
  %18 = load i64, i64* %17, align 8, !dbg !121, !tbaa !122
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !121
  %20 = load i64, i64* %19, align 8, !dbg !121, !tbaa !125
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %18, i64 %20, i32 noundef 64) #12, !dbg !121
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 1152921487695413247) #12, !dbg !126
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !127
  %22 = load i64, i64* %21, align 8, !dbg !127, !tbaa !122
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !127
  %24 = load i64, i64* %23, align 8, !dbg !127, !tbaa !125
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !127
  %26 = load i64, i64* %25, align 8, !dbg !127, !tbaa !122
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !127
  %28 = load i64, i64* %27, align 8, !dbg !127, !tbaa !125
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %22, i64 %24, i64 %26, i64 %28) #12, !dbg !127
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !128
  %30 = load i64, i64* %29, align 8, !dbg !128, !tbaa !122
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !128
  %32 = load i64, i64* %31, align 8, !dbg !128, !tbaa !125
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %12, i64 %15, i64 %30, i64 %32) #12, !dbg !128
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !129
  %34 = load i64, i64* %33, align 8, !dbg !129, !tbaa !122
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !129
  %36 = load i64, i64* %35, align 8, !dbg !129, !tbaa !125
  %37 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %34, i64 %36) #12, !dbg !129
  %38 = and i64 %37, 17592186044415, !dbg !130
  call void @llvm.dbg.value(metadata i64 %38, metadata !76, metadata !DIExpression()), !dbg !82
  %39 = load i64, i64* %33, align 8, !dbg !131, !tbaa !122
  %40 = load i64, i64* %35, align 8, !dbg !131, !tbaa !125
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %39, i64 %40, i32 noundef 44) #12, !dbg !131
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !132
  %42 = load i64, i64* %41, align 8, !dbg !132, !tbaa !122
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !132
  %44 = load i64, i64* %43, align 8, !dbg !132, !tbaa !125
  %45 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %42, i64 %44) #12, !dbg !132
  %46 = and i64 %45, 17592186044415, !dbg !133
  call void @llvm.dbg.value(metadata i64 %46, metadata !77, metadata !DIExpression()), !dbg !82
  %47 = load i64, i64* %33, align 8, !dbg !134, !tbaa !122
  %48 = load i64, i64* %35, align 8, !dbg !134, !tbaa !125
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %47, i64 %48, i32 noundef 88) #12, !dbg !134
  %49 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !135
  %50 = load i64, i64* %49, align 8, !dbg !135, !tbaa !122
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !135
  %52 = load i64, i64* %51, align 8, !dbg !135, !tbaa !125
  %53 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %50, i64 %52) #12, !dbg !135
  call void @llvm.dbg.value(metadata i64 %53, metadata !78, metadata !DIExpression()), !dbg !82
  store i64 %38, i64* %0, align 4, !dbg !136, !tbaa !137
  %54 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !138
  store i64 %46, i64* %54, align 4, !dbg !139, !tbaa !137
  %55 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !140
  store i64 %53, i64* %55, align 4, !dbg !141, !tbaa !137
  call void @llvm.dbg.value(metadata i64* %0, metadata !79, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !82
  call void @llvm.dbg.value(metadata i64* %1, metadata !79, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !82
  call void @llvm.dbg.value(metadata i64* %1, metadata !80, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i64* %1, metadata !81, metadata !DIExpression()), !dbg !82
  %56 = bitcast i64* %1 to i8*, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %56, i8 0, i64 24, i1 false), !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #12, !dbg !142
  ret void, !dbg !142
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #4

declare !dbg !144 void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #5

declare !dbg !148 void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #5

declare !dbg !149 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #5

declare !dbg !152 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #5

declare !dbg !155 i64 @FStar_UInt128_uint128_to_uint64(i64, i64) local_unnamed_addr #5

declare !dbg !158 void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update_block(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2) local_unnamed_addr #2 !dbg !159 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !161, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !163
  call void @llvm.dbg.value(metadata i64* %1, metadata !161, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !163
  call void @llvm.dbg.value(metadata i8* %2, metadata !162, metadata !DIExpression()), !dbg !163
  %7 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !164
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7), !dbg !164
  %8 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !164
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8), !dbg !164
  call void @llvm.dbg.value(metadata i64* %0, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !164
  call void @llvm.dbg.value(metadata i64* %1, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !164
  call void @llvm.dbg.value(metadata i8* %2, metadata !168, metadata !DIExpression()) #12, !dbg !164
  call void @llvm.dbg.value(metadata i64* %0, metadata !169, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !164
  call void @llvm.dbg.value(metadata i64* %1, metadata !169, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !164
  call void @llvm.dbg.value(metadata i64* %1, metadata !170, metadata !DIExpression()) #12, !dbg !164
  call void @llvm.dbg.value(metadata i64* %1, metadata !171, metadata !DIExpression()) #12, !dbg !164
  call void @llvm.dbg.value(metadata i64* %0, metadata !172, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !164
  call void @llvm.dbg.value(metadata i64* %1, metadata !172, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !164
  call void @llvm.dbg.value(metadata i64* %0, metadata !173, metadata !DIExpression()) #12, !dbg !164
  call void @llvm.dbg.value(metadata i64* %0, metadata !174, metadata !DIExpression()) #12, !dbg !164
  %9 = bitcast [3 x i64]* %4 to i8*, !dbg !186
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #12, !dbg !186
  call void @llvm.dbg.declare(metadata [3 x i64]* %4, metadata !175, metadata !DIExpression()) #12, !dbg !187
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %9, i8 0, i32 24, i1 false) #12, !dbg !187
  call void @llvm.dbg.value(metadata i8* undef, metadata !83, metadata !DIExpression(DW_OP_deref)) #12, !dbg !188
  call void @llvm.dbg.value(metadata i8* %2, metadata !90, metadata !DIExpression()) #12, !dbg !188
  call void @llvm.dbg.value(metadata i8* %2, metadata !93, metadata !DIExpression()) #12, !dbg !190
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !99, metadata !DIExpression()) #12, !dbg !190
  call void @llvm.dbg.value(metadata i8* %2, metadata !102, metadata !DIExpression()) #12, !dbg !192
  %10 = bitcast i8* %2 to i64*, !dbg !194
  %11 = load i64, i64* %10, align 1, !dbg !194, !noalias !195
  call void @llvm.dbg.value(metadata i64 %11, metadata !107, metadata !DIExpression()) #12, !dbg !192
  call void @llvm.dbg.value(metadata i64 %11, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !164
  %12 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !198
  call void @llvm.dbg.value(metadata i8* %12, metadata !102, metadata !DIExpression()) #12, !dbg !199
  %13 = bitcast i8* %12 to i64*, !dbg !201
  %14 = load i64, i64* %13, align 1, !dbg !201, !noalias !195
  call void @llvm.dbg.value(metadata i64 %14, metadata !107, metadata !DIExpression()) #12, !dbg !199
  call void @llvm.dbg.value(metadata i64 %14, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !164
  %15 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %11, i64 %14) #12, !dbg !202
  %16 = and i64 %15, 17592186044415, !dbg !203
  call void @llvm.dbg.value(metadata i64 %16, metadata !180, metadata !DIExpression()) #12, !dbg !164
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %11, i64 %14, i32 noundef 44) #12, !dbg !204
  %17 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !205
  %18 = load i64, i64* %17, align 8, !dbg !205, !tbaa !122
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !205
  %20 = load i64, i64* %19, align 8, !dbg !205, !tbaa !125
  %21 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %18, i64 %20) #12, !dbg !205
  %22 = and i64 %21, 17592186044415, !dbg !206
  call void @llvm.dbg.value(metadata i64 %22, metadata !181, metadata !DIExpression()) #12, !dbg !164
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %11, i64 %14, i32 noundef 88) #12, !dbg !207
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !208
  %24 = load i64, i64* %23, align 8, !dbg !208, !tbaa !122
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !208
  %26 = load i64, i64* %25, align 8, !dbg !208, !tbaa !125
  %27 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %24, i64 %26) #12, !dbg !208
  call void @llvm.dbg.value(metadata i64 %27, metadata !182, metadata !DIExpression()) #12, !dbg !164
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 0, !dbg !209
  store i64 %16, i64* %28, align 8, !dbg !210, !tbaa !137
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 1, !dbg !211
  store i64 %22, i64* %29, align 8, !dbg !212, !tbaa !137
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i32 0, i32 2, !dbg !213
  call void @llvm.dbg.value(metadata i64 %27, metadata !183, metadata !DIExpression()) #12, !dbg !164
  %31 = or i64 %27, 1099511627776, !dbg !214
  call void @llvm.dbg.value(metadata i64 %31, metadata !184, metadata !DIExpression()) #12, !dbg !164
  store i64 %31, i64* %30, align 8, !dbg !215, !tbaa !137
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* noundef %1, i64* noundef nonnull %28, i64* noundef %0) #12, !dbg !216
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #12, !dbg !217
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7), !dbg !217
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8), !dbg !217
  ret void, !dbg !218
}

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 !dbg !219 {
  %5 = alloca [3 x i64], align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !223, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !231
  call void @llvm.dbg.value(metadata i64* %1, metadata !223, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !231
  call void @llvm.dbg.value(metadata i8* %2, metadata !224, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i32 %3, metadata !225, metadata !DIExpression()), !dbg !231
  %8 = icmp eq i32 %3, 0, !dbg !232
  br i1 %8, label %37, label %9, !dbg !233

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !226, metadata !DIExpression()), !dbg !234
  %10 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !235
  call void @llvm.dbg.value(metadata i8* %10, metadata !229, metadata !DIExpression()), !dbg !234
  %11 = add i32 %3, -1, !dbg !236
  call void @llvm.dbg.value(metadata i32 %11, metadata !230, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64* %0, metadata !161, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !237
  call void @llvm.dbg.value(metadata i64* %1, metadata !161, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !237
  call void @llvm.dbg.value(metadata i8* %2, metadata !162, metadata !DIExpression()) #12, !dbg !237
  %12 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !239
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #12, !dbg !239
  %13 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !239
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #12, !dbg !239
  call void @llvm.dbg.value(metadata i64* %0, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !239
  call void @llvm.dbg.value(metadata i64* %1, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !239
  call void @llvm.dbg.value(metadata i8* %2, metadata !168, metadata !DIExpression()) #12, !dbg !239
  call void @llvm.dbg.value(metadata i64* %0, metadata !169, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !239
  call void @llvm.dbg.value(metadata i64* %1, metadata !169, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !239
  call void @llvm.dbg.value(metadata i64* %1, metadata !170, metadata !DIExpression()) #12, !dbg !239
  call void @llvm.dbg.value(metadata i64* %1, metadata !171, metadata !DIExpression()) #12, !dbg !239
  call void @llvm.dbg.value(metadata i64* %0, metadata !172, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !239
  call void @llvm.dbg.value(metadata i64* %1, metadata !172, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !239
  call void @llvm.dbg.value(metadata i64* %0, metadata !173, metadata !DIExpression()) #12, !dbg !239
  call void @llvm.dbg.value(metadata i64* %0, metadata !174, metadata !DIExpression()) #12, !dbg !239
  %14 = bitcast [3 x i64]* %5 to i8*, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #12, !dbg !241
  call void @llvm.dbg.declare(metadata [3 x i64]* %5, metadata !175, metadata !DIExpression()) #12, !dbg !242
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %14, i8 0, i32 24, i1 false) #12, !dbg !242
  call void @llvm.dbg.value(metadata i8* undef, metadata !83, metadata !DIExpression(DW_OP_deref)) #12, !dbg !243
  call void @llvm.dbg.value(metadata i8* %2, metadata !90, metadata !DIExpression()) #12, !dbg !243
  call void @llvm.dbg.value(metadata i8* %2, metadata !93, metadata !DIExpression()) #12, !dbg !245
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !99, metadata !DIExpression()) #12, !dbg !245
  call void @llvm.dbg.value(metadata i8* %2, metadata !102, metadata !DIExpression()) #12, !dbg !247
  %15 = bitcast i8* %2 to i64*, !dbg !249
  %16 = load i64, i64* %15, align 1, !dbg !249, !noalias !250
  call void @llvm.dbg.value(metadata i64 %16, metadata !107, metadata !DIExpression()) #12, !dbg !247
  call void @llvm.dbg.value(metadata i64 %16, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !239
  %17 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !253
  call void @llvm.dbg.value(metadata i8* %17, metadata !102, metadata !DIExpression()) #12, !dbg !254
  %18 = bitcast i8* %17 to i64*, !dbg !256
  %19 = load i64, i64* %18, align 1, !dbg !256, !noalias !250
  call void @llvm.dbg.value(metadata i64 %19, metadata !107, metadata !DIExpression()) #12, !dbg !254
  call void @llvm.dbg.value(metadata i64 %19, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !239
  %20 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %16, i64 %19) #12, !dbg !257
  %21 = and i64 %20, 17592186044415, !dbg !258
  call void @llvm.dbg.value(metadata i64 %21, metadata !180, metadata !DIExpression()) #12, !dbg !239
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %16, i64 %19, i32 noundef 44) #12, !dbg !259
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !260
  %23 = load i64, i64* %22, align 8, !dbg !260, !tbaa !122
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !260
  %25 = load i64, i64* %24, align 8, !dbg !260, !tbaa !125
  %26 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %23, i64 %25) #12, !dbg !260
  %27 = and i64 %26, 17592186044415, !dbg !261
  call void @llvm.dbg.value(metadata i64 %27, metadata !181, metadata !DIExpression()) #12, !dbg !239
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %16, i64 %19, i32 noundef 88) #12, !dbg !262
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !263
  %29 = load i64, i64* %28, align 8, !dbg !263, !tbaa !122
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !263
  %31 = load i64, i64* %30, align 8, !dbg !263, !tbaa !125
  %32 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %29, i64 %31) #12, !dbg !263
  call void @llvm.dbg.value(metadata i64 %32, metadata !182, metadata !DIExpression()) #12, !dbg !239
  %33 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 0, !dbg !264
  store i64 %21, i64* %33, align 8, !dbg !265, !tbaa !137
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 1, !dbg !266
  store i64 %27, i64* %34, align 8, !dbg !267, !tbaa !137
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 2, !dbg !268
  call void @llvm.dbg.value(metadata i64 %32, metadata !183, metadata !DIExpression()) #12, !dbg !239
  %36 = or i64 %32, 1099511627776, !dbg !269
  call void @llvm.dbg.value(metadata i64 %36, metadata !184, metadata !DIExpression()) #12, !dbg !239
  store i64 %36, i64* %35, align 8, !dbg !270, !tbaa !137
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* noundef %1, i64* noundef nonnull %33, i64* noundef %0) #12, !dbg !271
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #12, !dbg !272
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #12, !dbg !272
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #12, !dbg !272
  call void @Hacl_Poly1305_64_update(i64* %0, i64* %1, i8* noundef nonnull %10, i32 noundef %11), !dbg !273
  br label %37, !dbg !274

37:                                               ; preds = %9, %4
  ret void, !dbg !275
}

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update_last(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 !dbg !276 {
  %5 = alloca [3 x i64], align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca [16 x i8], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !278, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !284
  call void @llvm.dbg.value(metadata i64* %1, metadata !278, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !284
  call void @llvm.dbg.value(metadata i8* %2, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %3, metadata !280, metadata !DIExpression()), !dbg !284
  %9 = icmp eq i32 %3, 0, !dbg !285
  br i1 %9, label %41, label %10, !dbg !287

10:                                               ; preds = %4
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 0, !dbg !288
  call void @llvm.dbg.value(metadata i64* %0, metadata !293, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !288
  call void @llvm.dbg.value(metadata i64* %1, metadata !293, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !288
  call void @llvm.dbg.value(metadata i8* %2, metadata !294, metadata !DIExpression()) #12, !dbg !288
  call void @llvm.dbg.value(metadata i32 %3, metadata !295, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #12, !dbg !288
  call void @llvm.dbg.value(metadata i8 0, metadata !296, metadata !DIExpression()) #12, !dbg !288
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #12, !dbg !306
  call void @llvm.dbg.declare(metadata [16 x i8]* %8, metadata !297, metadata !DIExpression()) #12, !dbg !307
  call void @llvm.dbg.value(metadata i32 %3, metadata !303, metadata !DIExpression()) #12, !dbg !288
  call void @llvm.dbg.value(metadata i32 %3, metadata !304, metadata !DIExpression()) #12, !dbg !288
  %12 = icmp ugt i32 %3, 15, !dbg !308
  %13 = sub i32 16, %3, !dbg !308
  %14 = select i1 %12, i32 0, i32 %13, !dbg !308
  %15 = getelementptr [16 x i8], [16 x i8]* %8, i32 0, i32 %3, !dbg !308
  call void @llvm.memset.p0i8.i32(i8* align 1 %15, i8 0, i32 %14, i1 false), !dbg !308
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 %11, i8* align 1 %2, i32 %3, i1 false) #12, !dbg !308
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 %3, !dbg !309
  store i8 1, i8* %16, align 1, !dbg !310, !tbaa !311
  %17 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !312
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #12, !dbg !312
  %18 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !312
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #12, !dbg !312
  call void @llvm.dbg.value(metadata i64* %0, metadata !318, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !312
  call void @llvm.dbg.value(metadata i64* %1, metadata !318, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !312
  call void @llvm.dbg.value(metadata i8* %11, metadata !317, metadata !DIExpression()) #12, !dbg !312
  call void @llvm.dbg.value(metadata i8* undef, metadata !319, metadata !DIExpression()) #12, !dbg !312
  call void @llvm.dbg.value(metadata i64 undef, metadata !320, metadata !DIExpression()) #12, !dbg !312
  %19 = bitcast [3 x i64]* %5 to i8*, !dbg !331
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19) #12, !dbg !331
  call void @llvm.dbg.declare(metadata [3 x i64]* %5, metadata !321, metadata !DIExpression()) #12, !dbg !332
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %19, i8 0, i32 24, i1 false) #12, !dbg !332
  call void @llvm.dbg.value(metadata i8* undef, metadata !83, metadata !DIExpression(DW_OP_deref)) #12, !dbg !333
  call void @llvm.dbg.value(metadata i8* %11, metadata !90, metadata !DIExpression()) #12, !dbg !333
  call void @llvm.dbg.value(metadata i8* %11, metadata !93, metadata !DIExpression()) #12, !dbg !335
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !99, metadata !DIExpression()) #12, !dbg !335
  call void @llvm.dbg.value(metadata i8* %11, metadata !102, metadata !DIExpression()) #12, !dbg !337
  %20 = bitcast [16 x i8]* %8 to i64*, !dbg !339
  %21 = load i64, i64* %20, align 8, !dbg !339, !noalias !340
  call void @llvm.dbg.value(metadata i64 %21, metadata !107, metadata !DIExpression()) #12, !dbg !337
  call void @llvm.dbg.value(metadata i64 %21, metadata !322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !312
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 8, !dbg !343
  call void @llvm.dbg.value(metadata i8* %22, metadata !102, metadata !DIExpression()) #12, !dbg !344
  %23 = bitcast i8* %22 to i64*, !dbg !346
  %24 = load i64, i64* %23, align 8, !dbg !346, !noalias !340
  call void @llvm.dbg.value(metadata i64 %24, metadata !107, metadata !DIExpression()) #12, !dbg !344
  call void @llvm.dbg.value(metadata i64 %24, metadata !322, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !312
  %25 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %21, i64 %24) #12, !dbg !347
  %26 = and i64 %25, 17592186044415, !dbg !348
  call void @llvm.dbg.value(metadata i64 %26, metadata !323, metadata !DIExpression()) #12, !dbg !312
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %21, i64 %24, i32 noundef 44) #12, !dbg !349
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !350
  %28 = load i64, i64* %27, align 8, !dbg !350, !tbaa !122
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !350
  %30 = load i64, i64* %29, align 8, !dbg !350, !tbaa !125
  %31 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %28, i64 %30) #12, !dbg !350
  %32 = and i64 %31, 17592186044415, !dbg !351
  call void @llvm.dbg.value(metadata i64 %32, metadata !324, metadata !DIExpression()) #12, !dbg !312
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %21, i64 %24, i32 noundef 88) #12, !dbg !352
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !353
  %34 = load i64, i64* %33, align 8, !dbg !353, !tbaa !122
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !353
  %36 = load i64, i64* %35, align 8, !dbg !353, !tbaa !125
  %37 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %34, i64 %36) #12, !dbg !353
  call void @llvm.dbg.value(metadata i64 %37, metadata !325, metadata !DIExpression()) #12, !dbg !312
  %38 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 0, !dbg !354
  store i64 %26, i64* %38, align 8, !dbg !355, !tbaa !137
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 1, !dbg !356
  store i64 %32, i64* %39, align 8, !dbg !357, !tbaa !137
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 2, !dbg !358
  store i64 %37, i64* %40, align 8, !dbg !359, !tbaa !137
  call void @llvm.dbg.value(metadata i64* %0, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !312
  call void @llvm.dbg.value(metadata i64* %1, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !312
  call void @llvm.dbg.value(metadata i64* %1, metadata !327, metadata !DIExpression()) #12, !dbg !312
  call void @llvm.dbg.value(metadata i64* %0, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !312
  call void @llvm.dbg.value(metadata i64* %1, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !312
  call void @llvm.dbg.value(metadata i64* %0, metadata !329, metadata !DIExpression()) #12, !dbg !312
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* noundef %1, i64* noundef nonnull %38, i64* noundef %0) #12, !dbg !360
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19) #12, !dbg !361
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #12, !dbg !361
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #12, !dbg !361
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #12, !dbg !362
  br label %41, !dbg !363

41:                                               ; preds = %10, %4
  call void @llvm.dbg.value(metadata i64* %0, metadata !281, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !284
  call void @llvm.dbg.value(metadata i64* %1, metadata !281, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !284
  call void @llvm.dbg.value(metadata i64* %1, metadata !282, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i64* %1, metadata !283, metadata !DIExpression()), !dbg !284
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* noundef %1), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* nocapture noundef %0) unnamed_addr #6 !dbg !366 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !370, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata i64* %0, metadata !394, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata i32 0, metadata !397, metadata !DIExpression()), !dbg !408
  %2 = load i64, i64* %0, align 4
  br label %3, !dbg !409

3:                                                ; preds = %3, %1
  %4 = phi i64 [ %2, %1 ], [ %12, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %7, %3 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !397, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 %5, metadata !399, metadata !DIExpression()), !dbg !410
  %6 = getelementptr inbounds i64, i64* %0, i32 %5, !dbg !411
  call void @llvm.dbg.value(metadata i64 %4, metadata !402, metadata !DIExpression()), !dbg !410
  %7 = add nuw nsw i32 %5, 1, !dbg !412
  %8 = getelementptr inbounds i64, i64* %0, i32 %7, !dbg !413
  %9 = load i64, i64* %8, align 4, !dbg !413, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %9, metadata !403, metadata !DIExpression()), !dbg !410
  %10 = and i64 %4, 17592186044415, !dbg !414
  call void @llvm.dbg.value(metadata i64 %10, metadata !404, metadata !DIExpression()), !dbg !410
  %11 = lshr i64 %4, 44, !dbg !415
  call void @llvm.dbg.value(metadata i64 %11, metadata !405, metadata !DIExpression()), !dbg !410
  store i64 %10, i64* %6, align 4, !dbg !416, !tbaa !137
  %12 = add i64 %9, %11, !dbg !417
  store i64 %12, i64* %8, align 4, !dbg !418, !tbaa !137
  call void @llvm.dbg.value(metadata i32 %7, metadata !397, metadata !DIExpression()), !dbg !408
  %13 = icmp eq i32 %7, 2, !dbg !419
  br i1 %13, label %14, label %3, !dbg !409, !llvm.loop !420

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i64* %0, metadata !424, metadata !DIExpression()), !dbg !430
  %15 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !432
  %16 = load i64, i64* %15, align 4, !dbg !432, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %16, metadata !427, metadata !DIExpression()), !dbg !430
  %17 = load i64, i64* %0, align 4, !dbg !433, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %17, metadata !428, metadata !DIExpression()), !dbg !430
  %18 = lshr i64 %16, 42, !dbg !434
  call void @llvm.dbg.value(metadata i64 %18, metadata !429, metadata !DIExpression()), !dbg !430
  %19 = and i64 %16, 4398046511103, !dbg !435
  store i64 %19, i64* %15, align 4, !dbg !436, !tbaa !137
  %20 = mul nuw nsw i64 %18, 5, !dbg !437
  %21 = add i64 %20, %17, !dbg !438
  store i64 %21, i64* %0, align 4, !dbg !439, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %21, metadata !371, metadata !DIExpression()), !dbg !393
  %22 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !440
  %23 = load i64, i64* %22, align 4, !dbg !440, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %23, metadata !372, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata i64 %19, metadata !373, metadata !DIExpression()), !dbg !393
  %24 = and i64 %21, 17592186044415, !dbg !441
  call void @llvm.dbg.value(metadata i64 %24, metadata !374, metadata !DIExpression()), !dbg !393
  %25 = lshr i64 %21, 44, !dbg !442
  call void @llvm.dbg.value(metadata i64 %25, metadata !375, metadata !DIExpression()), !dbg !393
  %26 = add i64 %23, %25, !dbg !443
  %27 = and i64 %26, 17592186044415, !dbg !444
  call void @llvm.dbg.value(metadata i64 %27, metadata !376, metadata !DIExpression()), !dbg !393
  %28 = lshr i64 %26, 44, !dbg !445
  call void @llvm.dbg.value(metadata i64 %28, metadata !377, metadata !DIExpression()), !dbg !393
  %29 = add nuw nsw i64 %28, %19, !dbg !446
  call void @llvm.dbg.value(metadata i64 %29, metadata !378, metadata !DIExpression()), !dbg !393
  store i64 %24, i64* %0, align 4, !dbg !447, !tbaa !137
  store i64 %27, i64* %22, align 4, !dbg !448, !tbaa !137
  call void @llvm.dbg.value(metadata i64* %0, metadata !424, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %29, metadata !427, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %24, metadata !428, metadata !DIExpression()), !dbg !449
  %30 = lshr i64 %29, 42, !dbg !451
  call void @llvm.dbg.value(metadata i64 %30, metadata !429, metadata !DIExpression()), !dbg !449
  %31 = and i64 %29, 4398046511103, !dbg !452
  store i64 %31, i64* %15, align 4, !dbg !453, !tbaa !137
  %32 = mul nuw nsw i64 %30, 5, !dbg !454
  %33 = add nuw nsw i64 %32, %24, !dbg !455
  call void @llvm.dbg.value(metadata i64 %33, metadata !379, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata i64 %27, metadata !380, metadata !DIExpression()), !dbg !393
  %34 = and i64 %33, 17592186044415, !dbg !456
  call void @llvm.dbg.value(metadata i64 %33, metadata !381, metadata !DIExpression(DW_OP_constu, 17592186044415, DW_OP_and, DW_OP_stack_value)), !dbg !393
  %35 = lshr i64 %33, 44, !dbg !457
  %36 = add nuw nsw i64 %35, %27, !dbg !458
  call void @llvm.dbg.value(metadata i64 %36, metadata !382, metadata !DIExpression()), !dbg !393
  store i64 %34, i64* %0, align 4, !dbg !459, !tbaa !137
  store i64 %36, i64* %22, align 4, !dbg !460, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %33, metadata !383, metadata !DIExpression(DW_OP_constu, 17592186044415, DW_OP_and, DW_OP_stack_value)), !dbg !393
  call void @llvm.dbg.value(metadata i64 %36, metadata !384, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata i64 %29, metadata !385, metadata !DIExpression(DW_OP_constu, 4398046511103, DW_OP_and, DW_OP_stack_value)), !dbg !393
  call void @llvm.dbg.value(metadata i64 %33, metadata !461, metadata !DIExpression(DW_OP_constu, 17592186044415, DW_OP_and, DW_OP_stack_value)), !dbg !470
  call void @llvm.dbg.value(metadata i64 17592186044411, metadata !467, metadata !DIExpression()), !dbg !470
  %37 = add nsw i64 %34, -17592186044411, !dbg !472
  call void @llvm.dbg.value(metadata i64 %37, metadata !468, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !470
  call void @llvm.dbg.value(metadata i64 %33, metadata !469, metadata !DIExpression(DW_OP_constu, 17592186044415, DW_OP_and, DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !470
  %38 = ashr i64 %37, 63, !dbg !473
  %39 = xor i64 %38, -1, !dbg !473
  call void @llvm.dbg.value(metadata i64 %39, metadata !386, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata i64 %36, metadata !474, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i64 17592186044415, metadata !477, metadata !DIExpression()), !dbg !478
  %40 = xor i64 %36, -17592186044416, !dbg !480
  call void @llvm.dbg.value(metadata i64 %36, metadata !474, metadata !DIExpression(DW_OP_constu, 18446726481523507200, DW_OP_xor, DW_OP_stack_value)), !dbg !478
  %41 = shl i64 %36, 32, !dbg !481
  %42 = and i64 %41, %40, !dbg !482
  call void @llvm.dbg.value(metadata i64 %42, metadata !474, metadata !DIExpression()), !dbg !478
  %43 = shl i64 %42, 16, !dbg !483
  %44 = and i64 %43, %42, !dbg !484
  call void @llvm.dbg.value(metadata i64 %44, metadata !474, metadata !DIExpression()), !dbg !478
  %45 = shl i64 %44, 8, !dbg !485
  %46 = and i64 %45, %44, !dbg !486
  call void @llvm.dbg.value(metadata i64 %46, metadata !474, metadata !DIExpression()), !dbg !478
  %47 = shl i64 %46, 4, !dbg !487
  %48 = and i64 %47, %46, !dbg !488
  call void @llvm.dbg.value(metadata i64 %48, metadata !474, metadata !DIExpression()), !dbg !478
  %49 = shl i64 %48, 2, !dbg !489
  %50 = and i64 %49, %48, !dbg !490
  call void @llvm.dbg.value(metadata i64 %50, metadata !474, metadata !DIExpression()), !dbg !478
  %51 = shl i64 %50, 1, !dbg !491
  %52 = and i64 %51, %50, !dbg !492
  call void @llvm.dbg.value(metadata i64 %52, metadata !474, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i64 %52, metadata !387, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_stack_value)), !dbg !393
  call void @llvm.dbg.value(metadata i64 %29, metadata !474, metadata !DIExpression(DW_OP_constu, 4398046511103, DW_OP_and, DW_OP_stack_value)), !dbg !493
  call void @llvm.dbg.value(metadata i64 4398046511103, metadata !477, metadata !DIExpression()), !dbg !493
  %53 = or i64 %29, -4398046511104, !dbg !495
  call void @llvm.dbg.value(metadata i64 %29, metadata !474, metadata !DIExpression(DW_OP_constu, 18446739675663040512, DW_OP_or, DW_OP_stack_value)), !dbg !493
  %54 = shl i64 %29, 32, !dbg !496
  %55 = and i64 %54, %53, !dbg !497
  call void @llvm.dbg.value(metadata i64 %55, metadata !474, metadata !DIExpression()), !dbg !493
  %56 = shl i64 %55, 16, !dbg !498
  %57 = and i64 %56, %55, !dbg !499
  call void @llvm.dbg.value(metadata i64 %57, metadata !474, metadata !DIExpression()), !dbg !493
  %58 = shl i64 %57, 8, !dbg !500
  %59 = and i64 %58, %57, !dbg !501
  call void @llvm.dbg.value(metadata i64 %59, metadata !474, metadata !DIExpression()), !dbg !493
  %60 = shl i64 %59, 4, !dbg !502
  %61 = and i64 %60, %59, !dbg !503
  call void @llvm.dbg.value(metadata i64 %61, metadata !474, metadata !DIExpression()), !dbg !493
  %62 = shl i64 %61, 2, !dbg !504
  %63 = and i64 %62, %61, !dbg !505
  call void @llvm.dbg.value(metadata i64 %63, metadata !474, metadata !DIExpression()), !dbg !493
  %64 = shl i64 %63, 1, !dbg !506
  %65 = and i64 %64, %63, !dbg !507
  call void @llvm.dbg.value(metadata i64 %65, metadata !474, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i64 %65, metadata !388, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_stack_value)), !dbg !393
  %66 = icmp slt i64 %52, 0, !dbg !508
  %67 = icmp slt i64 %65, 0, !dbg !509
  %68 = select i1 %67, i1 %66, i1 false, !dbg !509
  %69 = select i1 %68, i64 %39, i64 0, !dbg !509
  call void @llvm.dbg.value(metadata i64 %69, metadata !389, metadata !DIExpression()), !dbg !393
  %70 = and i64 %69, 17592186044411, !dbg !510
  %71 = sub nsw i64 %34, %70, !dbg !511
  call void @llvm.dbg.value(metadata i64 %71, metadata !390, metadata !DIExpression()), !dbg !393
  %72 = and i64 %69, 17592186044415, !dbg !512
  %73 = sub nsw i64 %36, %72, !dbg !513
  call void @llvm.dbg.value(metadata i64 %73, metadata !391, metadata !DIExpression()), !dbg !393
  %74 = and i64 %69, 4398046511103, !dbg !514
  %75 = sub nsw i64 %31, %74, !dbg !515
  call void @llvm.dbg.value(metadata i64 %75, metadata !392, metadata !DIExpression()), !dbg !393
  store i64 %71, i64* %0, align 4, !dbg !516, !tbaa !137
  store i64 %73, i64* %22, align 4, !dbg !517, !tbaa !137
  store i64 %75, i64* %15, align 4, !dbg !518, !tbaa !137
  ret void, !dbg !519
}

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_Poly1305_64_finish(i64* nocapture readnone %0, i64* nocapture readonly %1, i8* nocapture noundef writeonly %2, i8* nocapture noundef readonly %3) local_unnamed_addr #2 !dbg !520 {
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !524, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !536
  call void @llvm.dbg.value(metadata i64* %1, metadata !524, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !536
  call void @llvm.dbg.value(metadata i8* %2, metadata !525, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i8* %3, metadata !526, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i64* %0, metadata !527, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !536
  call void @llvm.dbg.value(metadata i64* %1, metadata !527, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !536
  call void @llvm.dbg.value(metadata i64* %1, metadata !528, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i64* %1, metadata !529, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i8* undef, metadata !83, metadata !DIExpression(DW_OP_deref)), !dbg !537
  call void @llvm.dbg.value(metadata i8* %3, metadata !90, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i8* %3, metadata !93, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !99, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i8* %3, metadata !102, metadata !DIExpression()), !dbg !541
  %10 = bitcast i8* %3 to i64*, !dbg !543
  %11 = load i64, i64* %10, align 1, !dbg !543, !noalias !544
  call void @llvm.dbg.value(metadata i64 %11, metadata !107, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i64 %11, metadata !530, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !536
  %12 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !547
  call void @llvm.dbg.value(metadata i8* %12, metadata !102, metadata !DIExpression()), !dbg !548
  %13 = bitcast i8* %12 to i64*, !dbg !550
  %14 = load i64, i64* %13, align 1, !dbg !550, !noalias !544
  call void @llvm.dbg.value(metadata i64 %14, metadata !107, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.value(metadata i64 %14, metadata !530, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !536
  %15 = load i64, i64* %1, align 4, !dbg !551, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %15, metadata !531, metadata !DIExpression()), !dbg !536
  %16 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !552
  %17 = load i64, i64* %16, align 4, !dbg !552, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %17, metadata !532, metadata !DIExpression()), !dbg !536
  %18 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !553
  %19 = load i64, i64* %18, align 4, !dbg !553, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %19, metadata !533, metadata !DIExpression()), !dbg !536
  %20 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !554
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #12, !dbg !554
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !534, metadata !DIExpression()), !dbg !555
  %21 = shl i64 %19, 24, !dbg !556
  %22 = lshr i64 %17, 20, !dbg !557
  %23 = or i64 %21, %22, !dbg !558
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %23) #12, !dbg !559
  %24 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !560
  %25 = load i64, i64* %24, align 8, !dbg !560, !tbaa !122
  %26 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !560
  %27 = load i64, i64* %26, align 8, !dbg !560, !tbaa !125
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %25, i64 %27, i32 noundef 64) #12, !dbg !560
  %28 = shl i64 %17, 44, !dbg !561
  %29 = or i64 %28, %15, !dbg !562
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %29) #12, !dbg !563
  %30 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !564
  %31 = load i64, i64* %30, align 8, !dbg !564, !tbaa !122
  %32 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !564
  %33 = load i64, i64* %32, align 8, !dbg !564, !tbaa !125
  %34 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !564
  %35 = load i64, i64* %34, align 8, !dbg !564, !tbaa !122
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !564
  %37 = load i64, i64* %36, align 8, !dbg !564, !tbaa !125
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %31, i64 %33, i64 %35, i64 %37) #12, !dbg !564
  %38 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !565
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #12, !dbg !565
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %9, metadata !535, metadata !DIExpression()), !dbg !566
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !567
  %40 = load i64, i64* %39, align 8, !dbg !567, !tbaa !122
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !567
  %42 = load i64, i64* %41, align 8, !dbg !567, !tbaa !125
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %40, i64 %42, i64 %11, i64 %14) #12, !dbg !567
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !568
  %44 = load i64, i64* %43, align 8, !dbg !568, !tbaa !122
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !568
  %46 = load i64, i64* %45, align 8, !dbg !568, !tbaa !125
  call void @llvm.dbg.value(metadata i64 %44, metadata !569, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !575
  call void @llvm.dbg.value(metadata i64 %46, metadata !569, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !575
  call void @llvm.dbg.value(metadata i8* %2, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i8* %2, metadata !577, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !580, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata i8* %2, metadata !583, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i64 %44, metadata !588, metadata !DIExpression()), !dbg !589
  %47 = bitcast i8* %2 to i64*, !dbg !591
  store i64 %44, i64* %47, align 1, !dbg !591
  %48 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !592
  call void @llvm.dbg.value(metadata i8* %48, metadata !583, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i64 %46, metadata !588, metadata !DIExpression()), !dbg !593
  %49 = bitcast i8* %48 to i64*, !dbg !595
  store i64 %46, i64* %49, align 1, !dbg !595
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #12, !dbg !596
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #12, !dbg !596
  ret void, !dbg !596
}

declare !dbg !597 void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_Poly1305_64_crypto_onetimeauth(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2, i8* nocapture noundef readonly %3) local_unnamed_addr #2 !dbg !598 {
  %5 = alloca [3 x i64], align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca [16 x i8], align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca [6 x i64], align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !602, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i8* %1, metadata !603, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i64 %2, metadata !604, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i8* %3, metadata !605, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i8* %0, metadata !607, metadata !DIExpression()) #12, !dbg !613
  call void @llvm.dbg.value(metadata i8* %1, metadata !610, metadata !DIExpression()) #12, !dbg !613
  call void @llvm.dbg.value(metadata i64 %2, metadata !611, metadata !DIExpression()) #12, !dbg !613
  call void @llvm.dbg.value(metadata i8* %3, metadata !612, metadata !DIExpression()) #12, !dbg !613
  %22 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !615
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #12, !dbg !615
  %23 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*, !dbg !615
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #12, !dbg !615
  %24 = bitcast %struct.FStar_UInt128_uint128* %20 to i8*, !dbg !615
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #12, !dbg !615
  call void @llvm.dbg.value(metadata i8* %0, metadata !618, metadata !DIExpression()) #12, !dbg !615
  call void @llvm.dbg.value(metadata i8* %1, metadata !619, metadata !DIExpression()) #12, !dbg !615
  call void @llvm.dbg.value(metadata i64 %2, metadata !620, metadata !DIExpression()) #12, !dbg !615
  call void @llvm.dbg.value(metadata i8* %3, metadata !621, metadata !DIExpression()) #12, !dbg !615
  %25 = bitcast [6 x i64]* %16 to i8*, !dbg !640
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %25) #12, !dbg !640
  call void @llvm.dbg.declare(metadata [6 x i64]* %16, metadata !622, metadata !DIExpression()) #12, !dbg !641
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(48) %25, i8 0, i32 48, i1 false) #12, !dbg !641
  %26 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i32 0, i32 0, !dbg !642
  call void @llvm.dbg.value(metadata i64* %26, metadata !626, metadata !DIExpression()) #12, !dbg !615
  %27 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i32 0, i32 3, !dbg !643
  call void @llvm.dbg.value(metadata i64* %27, metadata !627, metadata !DIExpression()) #12, !dbg !615
  call void @llvm.dbg.value(metadata i64* %26, metadata !628, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !615
  call void @llvm.dbg.value(metadata i64* %27, metadata !628, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !615
  call void @llvm.dbg.value(metadata i8* %3, metadata !629, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #12, !dbg !615
  call void @llvm.dbg.value(metadata i64* %26, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !660
  call void @llvm.dbg.value(metadata i64* %27, metadata !644, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !660
  call void @llvm.dbg.value(metadata i8* %1, metadata !649, metadata !DIExpression()) #12, !dbg !660
  call void @llvm.dbg.value(metadata i64 %2, metadata !650, metadata !DIExpression()) #12, !dbg !660
  call void @llvm.dbg.value(metadata i8* %3, metadata !651, metadata !DIExpression()) #12, !dbg !660
  call void @llvm.dbg.value(metadata i8* %3, metadata !652, metadata !DIExpression()) #12, !dbg !660
  %28 = lshr i64 %2, 4, !dbg !662
  call void @llvm.dbg.value(metadata i64 %28, metadata !653, metadata !DIExpression()) #12, !dbg !660
  %29 = and i64 %2, 15, !dbg !663
  call void @llvm.dbg.value(metadata i64 %29, metadata !654, metadata !DIExpression()) #12, !dbg !660
  call void @llvm.dbg.value(metadata i8* %1, metadata !655, metadata !DIExpression()) #12, !dbg !660
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i64 %2), metadata !656, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #12, !dbg !660
  %30 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !664
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #12, !dbg !664
  %31 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !664
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #12, !dbg !664
  %32 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !664
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #12, !dbg !664
  %33 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !664
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #12, !dbg !664
  %34 = bitcast %struct.FStar_UInt128_uint128* %14 to i8*, !dbg !664
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34) #12, !dbg !664
  %35 = bitcast %struct.FStar_UInt128_uint128* %15 to i8*, !dbg !664
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35) #12, !dbg !664
  call void @llvm.dbg.value(metadata i64* %26, metadata !667, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !664
  call void @llvm.dbg.value(metadata i64* %27, metadata !667, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !664
  call void @llvm.dbg.value(metadata i8* %1, metadata !668, metadata !DIExpression()) #12, !dbg !664
  call void @llvm.dbg.value(metadata i64 %28, metadata !669, metadata !DIExpression()) #12, !dbg !664
  call void @llvm.dbg.value(metadata i8* %3, metadata !670, metadata !DIExpression()) #12, !dbg !664
  call void @llvm.dbg.value(metadata i64* %26, metadata !671, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !664
  call void @llvm.dbg.value(metadata i64* %27, metadata !671, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !664
  call void @llvm.dbg.value(metadata i64* %26, metadata !672, metadata !DIExpression()) #12, !dbg !664
  call void @llvm.dbg.value(metadata i64* %26, metadata !673, metadata !DIExpression()) #12, !dbg !664
  call void @llvm.dbg.value(metadata i8* undef, metadata !83, metadata !DIExpression(DW_OP_deref)) #12, !dbg !683
  call void @llvm.dbg.value(metadata i8* %3, metadata !90, metadata !DIExpression()) #12, !dbg !683
  call void @llvm.dbg.value(metadata i8* %3, metadata !93, metadata !DIExpression()) #12, !dbg !685
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !99, metadata !DIExpression()) #12, !dbg !685
  call void @llvm.dbg.value(metadata i8* %3, metadata !102, metadata !DIExpression()) #12, !dbg !687
  %36 = bitcast i8* %3 to i64*, !dbg !689
  %37 = load i64, i64* %36, align 1, !dbg !689, !noalias !690
  call void @llvm.dbg.value(metadata i64 %37, metadata !107, metadata !DIExpression()) #12, !dbg !687
  call void @llvm.dbg.value(metadata i64 %37, metadata !674, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !664
  %38 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !693
  call void @llvm.dbg.value(metadata i8* %38, metadata !102, metadata !DIExpression()) #12, !dbg !694
  %39 = bitcast i8* %38 to i64*, !dbg !696
  %40 = load i64, i64* %39, align 1, !dbg !696, !noalias !690
  call void @llvm.dbg.value(metadata i64 %40, metadata !107, metadata !DIExpression()) #12, !dbg !694
  call void @llvm.dbg.value(metadata i64 %40, metadata !674, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !664
  %41 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !697
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %41) #12, !dbg !697
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %9, metadata !675, metadata !DIExpression()) #12, !dbg !698
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef 1152921487695413244) #12, !dbg !699
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !700
  %43 = load i64, i64* %42, align 8, !dbg !700, !tbaa !122
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !700
  %45 = load i64, i64* %44, align 8, !dbg !700, !tbaa !125
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %43, i64 %45, i32 noundef 64) #12, !dbg !700
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef 1152921487695413247) #12, !dbg !701
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !702
  %47 = load i64, i64* %46, align 8, !dbg !702, !tbaa !122
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !702
  %49 = load i64, i64* %48, align 8, !dbg !702, !tbaa !125
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !702
  %51 = load i64, i64* %50, align 8, !dbg !702, !tbaa !122
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !702
  %53 = load i64, i64* %52, align 8, !dbg !702, !tbaa !125
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %47, i64 %49, i64 %51, i64 %53) #12, !dbg !702
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !703
  %55 = load i64, i64* %54, align 8, !dbg !703, !tbaa !122
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !703
  %57 = load i64, i64* %56, align 8, !dbg !703, !tbaa !125
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %37, i64 %40, i64 %55, i64 %57) #12, !dbg !703
  %58 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !704
  %59 = load i64, i64* %58, align 8, !dbg !704, !tbaa !122
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !704
  %61 = load i64, i64* %60, align 8, !dbg !704, !tbaa !125
  %62 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %59, i64 %61) #12, !dbg !704
  %63 = and i64 %62, 17592186044415, !dbg !705
  call void @llvm.dbg.value(metadata i64 %63, metadata !676, metadata !DIExpression()) #12, !dbg !664
  %64 = load i64, i64* %58, align 8, !dbg !706, !tbaa !122
  %65 = load i64, i64* %60, align 8, !dbg !706, !tbaa !125
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %64, i64 %65, i32 noundef 44) #12, !dbg !706
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !707
  %67 = load i64, i64* %66, align 8, !dbg !707, !tbaa !122
  %68 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !707
  %69 = load i64, i64* %68, align 8, !dbg !707, !tbaa !125
  %70 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %67, i64 %69) #12, !dbg !707
  %71 = and i64 %70, 17592186044415, !dbg !708
  call void @llvm.dbg.value(metadata i64 %71, metadata !677, metadata !DIExpression()) #12, !dbg !664
  %72 = load i64, i64* %58, align 8, !dbg !709, !tbaa !122
  %73 = load i64, i64* %60, align 8, !dbg !709, !tbaa !125
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %72, i64 %73, i32 noundef 88) #12, !dbg !709
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !710
  %75 = load i64, i64* %74, align 8, !dbg !710, !tbaa !122
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !710
  %77 = load i64, i64* %76, align 8, !dbg !710, !tbaa !125
  %78 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %75, i64 %77) #12, !dbg !710
  call void @llvm.dbg.value(metadata i64 %78, metadata !678, metadata !DIExpression()) #12, !dbg !664
  store i64 %63, i64* %26, align 8, !dbg !711, !tbaa !137
  %79 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i32 0, i32 1, !dbg !712
  store i64 %71, i64* %79, align 8, !dbg !713, !tbaa !137
  %80 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i32 0, i32 2, !dbg !714
  store i64 %78, i64* %80, align 8, !dbg !715, !tbaa !137
  call void @llvm.dbg.value(metadata i64* %26, metadata !679, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !664
  call void @llvm.dbg.value(metadata i64* %27, metadata !679, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !664
  call void @llvm.dbg.value(metadata i64* %27, metadata !680, metadata !DIExpression()) #12, !dbg !664
  call void @llvm.dbg.value(metadata i64* %27, metadata !681, metadata !DIExpression()) #12, !dbg !664
  %81 = bitcast i64* %27 to i8*, !dbg !716
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %81, i8 0, i64 24, i1 false) #12, !dbg !717
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* nonnull %26, i64* nonnull %27, i8* noundef %1, i64 noundef %28) #12, !dbg !716
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %41) #12, !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #12, !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #12, !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #12, !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #12, !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34) #12, !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35) #12, !dbg !718
  %82 = icmp eq i64 %29, 0, !dbg !719
  br i1 %82, label %115, label %83, !dbg !721

83:                                               ; preds = %4
  %84 = trunc i64 %2 to i32, !dbg !722
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i32 %84), metadata !656, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #12, !dbg !660
  %85 = and i32 %84, -16, !dbg !722
  call void @llvm.dbg.value(metadata !DIArgList(i8* %1, i32 %85), metadata !656, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #12, !dbg !660
  %86 = getelementptr inbounds i8, i8* %1, i32 %85, !dbg !723
  call void @llvm.dbg.value(metadata i8* %86, metadata !656, metadata !DIExpression()) #12, !dbg !660
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 0, !dbg !724
  call void @llvm.dbg.value(metadata i64* %26, metadata !293, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !724
  call void @llvm.dbg.value(metadata i64* %27, metadata !293, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !724
  call void @llvm.dbg.value(metadata i8* %86, metadata !294, metadata !DIExpression()) #12, !dbg !724
  call void @llvm.dbg.value(metadata i64 %29, metadata !295, metadata !DIExpression()) #12, !dbg !724
  call void @llvm.dbg.value(metadata i8 0, metadata !296, metadata !DIExpression()) #12, !dbg !724
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %87) #12, !dbg !726
  call void @llvm.dbg.declare(metadata [16 x i8]* %8, metadata !297, metadata !DIExpression()) #12, !dbg !727
  %88 = trunc i64 %29 to i32, !dbg !728
  call void @llvm.dbg.value(metadata i32 %88, metadata !303, metadata !DIExpression()) #12, !dbg !724
  call void @llvm.dbg.value(metadata i32 %88, metadata !304, metadata !DIExpression()) #12, !dbg !724
  %89 = sub nuw nsw i32 16, %88, !dbg !729
  %90 = getelementptr [16 x i8], [16 x i8]* %8, i32 0, i32 %88, !dbg !729
  call void @llvm.memset.p0i8.i32(i8* align 1 %90, i8 0, i32 %89, i1 false) #12, !dbg !729
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 %87, i8* align 1 %86, i32 %88, i1 false) #12, !dbg !729
  store i8 1, i8* %90, align 1, !dbg !730, !tbaa !311
  %91 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !731
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %91) #12, !dbg !731
  %92 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !731
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %92) #12, !dbg !731
  call void @llvm.dbg.value(metadata i64* %26, metadata !318, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !731
  call void @llvm.dbg.value(metadata i64* %27, metadata !318, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !731
  call void @llvm.dbg.value(metadata i8* %87, metadata !317, metadata !DIExpression()) #12, !dbg !731
  call void @llvm.dbg.value(metadata i8* undef, metadata !319, metadata !DIExpression()) #12, !dbg !731
  call void @llvm.dbg.value(metadata i64 undef, metadata !320, metadata !DIExpression()) #12, !dbg !731
  %93 = bitcast [3 x i64]* %5 to i8*, !dbg !733
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %93) #12, !dbg !733
  call void @llvm.dbg.declare(metadata [3 x i64]* %5, metadata !321, metadata !DIExpression()) #12, !dbg !734
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %93, i8 0, i32 24, i1 false) #12, !dbg !734
  call void @llvm.dbg.value(metadata i8* undef, metadata !83, metadata !DIExpression(DW_OP_deref)) #12, !dbg !735
  call void @llvm.dbg.value(metadata i8* %87, metadata !90, metadata !DIExpression()) #12, !dbg !735
  call void @llvm.dbg.value(metadata i8* %87, metadata !93, metadata !DIExpression()) #12, !dbg !737
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !99, metadata !DIExpression()) #12, !dbg !737
  call void @llvm.dbg.value(metadata i8* %87, metadata !102, metadata !DIExpression()) #12, !dbg !739
  %94 = bitcast [16 x i8]* %8 to i64*, !dbg !741
  %95 = load i64, i64* %94, align 8, !dbg !741, !noalias !742
  call void @llvm.dbg.value(metadata i64 %95, metadata !107, metadata !DIExpression()) #12, !dbg !739
  call void @llvm.dbg.value(metadata i64 %95, metadata !322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !731
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 8, !dbg !745
  call void @llvm.dbg.value(metadata i8* %96, metadata !102, metadata !DIExpression()) #12, !dbg !746
  %97 = bitcast i8* %96 to i64*, !dbg !748
  %98 = load i64, i64* %97, align 8, !dbg !748, !noalias !742
  call void @llvm.dbg.value(metadata i64 %98, metadata !107, metadata !DIExpression()) #12, !dbg !746
  call void @llvm.dbg.value(metadata i64 %98, metadata !322, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !731
  %99 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %95, i64 %98) #12, !dbg !749
  %100 = and i64 %99, 17592186044415, !dbg !750
  call void @llvm.dbg.value(metadata i64 %100, metadata !323, metadata !DIExpression()) #12, !dbg !731
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %95, i64 %98, i32 noundef 44) #12, !dbg !751
  %101 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !752
  %102 = load i64, i64* %101, align 8, !dbg !752, !tbaa !122
  %103 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !752
  %104 = load i64, i64* %103, align 8, !dbg !752, !tbaa !125
  %105 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %102, i64 %104) #12, !dbg !752
  %106 = and i64 %105, 17592186044415, !dbg !753
  call void @llvm.dbg.value(metadata i64 %106, metadata !324, metadata !DIExpression()) #12, !dbg !731
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %95, i64 %98, i32 noundef 88) #12, !dbg !754
  %107 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !755
  %108 = load i64, i64* %107, align 8, !dbg !755, !tbaa !122
  %109 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !755
  %110 = load i64, i64* %109, align 8, !dbg !755, !tbaa !125
  %111 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %108, i64 %110) #12, !dbg !755
  call void @llvm.dbg.value(metadata i64 %111, metadata !325, metadata !DIExpression()) #12, !dbg !731
  %112 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 0, !dbg !756
  store i64 %100, i64* %112, align 8, !dbg !757, !tbaa !137
  %113 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 1, !dbg !758
  store i64 %106, i64* %113, align 8, !dbg !759, !tbaa !137
  %114 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 2, !dbg !760
  store i64 %111, i64* %114, align 8, !dbg !761, !tbaa !137
  call void @llvm.dbg.value(metadata i64* %26, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !731
  call void @llvm.dbg.value(metadata i64* %27, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !731
  call void @llvm.dbg.value(metadata i64* %27, metadata !327, metadata !DIExpression()) #12, !dbg !731
  call void @llvm.dbg.value(metadata i64* %26, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !731
  call void @llvm.dbg.value(metadata i64* %27, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !731
  call void @llvm.dbg.value(metadata i64* %26, metadata !329, metadata !DIExpression()) #12, !dbg !731
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* noundef nonnull %27, i64* noundef nonnull %112, i64* noundef nonnull %26) #12, !dbg !762
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %93) #12, !dbg !763
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %91) #12, !dbg !763
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %92) #12, !dbg !763
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %87) #12, !dbg !764
  br label %115, !dbg !765

115:                                              ; preds = %4, %83
  %116 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !766
  call void @llvm.dbg.value(metadata i8* %116, metadata !629, metadata !DIExpression()) #12, !dbg !615
  call void @llvm.dbg.value(metadata i64* %26, metadata !657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !660
  call void @llvm.dbg.value(metadata i64* %27, metadata !657, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !660
  call void @llvm.dbg.value(metadata i64* %27, metadata !658, metadata !DIExpression()) #12, !dbg !660
  call void @llvm.dbg.value(metadata i64* %27, metadata !659, metadata !DIExpression()) #12, !dbg !660
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* noundef nonnull %27) #12, !dbg !767
  call void @llvm.dbg.value(metadata i64* undef, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !615
  call void @llvm.dbg.value(metadata i64* %27, metadata !630, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !615
  call void @llvm.dbg.value(metadata i64* %27, metadata !631, metadata !DIExpression()) #12, !dbg !615
  call void @llvm.dbg.value(metadata i64* %27, metadata !632, metadata !DIExpression()) #12, !dbg !615
  call void @llvm.dbg.value(metadata i8* undef, metadata !83, metadata !DIExpression(DW_OP_deref)) #12, !dbg !768
  call void @llvm.dbg.value(metadata i8* %3, metadata !90, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #12, !dbg !768
  call void @llvm.dbg.value(metadata i8* %3, metadata !93, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #12, !dbg !770
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !99, metadata !DIExpression()) #12, !dbg !770
  call void @llvm.dbg.value(metadata i8* %3, metadata !102, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #12, !dbg !772
  %117 = bitcast i8* %116 to i64*, !dbg !774
  %118 = load i64, i64* %117, align 1, !dbg !774, !noalias !775
  call void @llvm.dbg.value(metadata i64 %118, metadata !107, metadata !DIExpression()) #12, !dbg !772
  call void @llvm.dbg.value(metadata i64 %118, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !615
  %119 = getelementptr inbounds i8, i8* %3, i32 24, !dbg !778
  call void @llvm.dbg.value(metadata i8* %119, metadata !102, metadata !DIExpression()) #12, !dbg !779
  %120 = bitcast i8* %119 to i64*, !dbg !781
  %121 = load i64, i64* %120, align 1, !dbg !781, !noalias !775
  call void @llvm.dbg.value(metadata i64 %121, metadata !107, metadata !DIExpression()) #12, !dbg !779
  call void @llvm.dbg.value(metadata i64 %121, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !615
  %122 = load i64, i64* %27, align 8, !dbg !782, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %122, metadata !634, metadata !DIExpression()) #12, !dbg !615
  %123 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i32 0, i32 4, !dbg !783
  %124 = load i64, i64* %123, align 8, !dbg !783, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %124, metadata !635, metadata !DIExpression()) #12, !dbg !615
  %125 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i32 0, i32 5, !dbg !784
  %126 = load i64, i64* %125, align 8, !dbg !784, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %126, metadata !636, metadata !DIExpression()) #12, !dbg !615
  %127 = bitcast %struct.FStar_UInt128_uint128* %17 to i8*, !dbg !785
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %127) #12, !dbg !785
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %17, metadata !637, metadata !DIExpression()) #12, !dbg !786
  %128 = shl i64 %126, 24, !dbg !787
  %129 = lshr i64 %124, 20, !dbg !788
  %130 = or i64 %128, %129, !dbg !789
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %130) #12, !dbg !790
  %131 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !791
  %132 = load i64, i64* %131, align 8, !dbg !791, !tbaa !122
  %133 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !791
  %134 = load i64, i64* %133, align 8, !dbg !791, !tbaa !125
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %132, i64 %134, i32 noundef 64) #12, !dbg !791
  %135 = shl i64 %124, 44, !dbg !792
  %136 = or i64 %135, %122, !dbg !793
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %136) #12, !dbg !794
  %137 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !795
  %138 = load i64, i64* %137, align 8, !dbg !795, !tbaa !122
  %139 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 1, !dbg !795
  %140 = load i64, i64* %139, align 8, !dbg !795, !tbaa !125
  %141 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 0, !dbg !795
  %142 = load i64, i64* %141, align 8, !dbg !795, !tbaa !122
  %143 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 1, !dbg !795
  %144 = load i64, i64* %143, align 8, !dbg !795, !tbaa !125
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %138, i64 %140, i64 %142, i64 %144) #12, !dbg !795
  %145 = bitcast %struct.FStar_UInt128_uint128* %21 to i8*, !dbg !796
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %145) #12, !dbg !796
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %21, metadata !638, metadata !DIExpression()) #12, !dbg !797
  %146 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !798
  %147 = load i64, i64* %146, align 8, !dbg !798, !tbaa !122
  %148 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !798
  %149 = load i64, i64* %148, align 8, !dbg !798, !tbaa !125
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %147, i64 %149, i64 %118, i64 %121) #12, !dbg !798
  %150 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 0, !dbg !799
  %151 = load i64, i64* %150, align 8, !dbg !799, !tbaa !122
  %152 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 1, !dbg !799
  %153 = load i64, i64* %152, align 8, !dbg !799, !tbaa !125
  call void @llvm.dbg.value(metadata i64 %151, metadata !569, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !800
  call void @llvm.dbg.value(metadata i64 %153, metadata !569, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !800
  call void @llvm.dbg.value(metadata i8* %0, metadata !574, metadata !DIExpression()) #12, !dbg !800
  call void @llvm.dbg.value(metadata i8* %0, metadata !577, metadata !DIExpression()) #12, !dbg !802
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !580, metadata !DIExpression()) #12, !dbg !802
  call void @llvm.dbg.value(metadata i8* %0, metadata !583, metadata !DIExpression()) #12, !dbg !804
  call void @llvm.dbg.value(metadata i64 %151, metadata !588, metadata !DIExpression()) #12, !dbg !804
  %154 = bitcast i8* %0 to i64*, !dbg !806
  store i64 %151, i64* %154, align 1, !dbg !806
  %155 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !807
  call void @llvm.dbg.value(metadata i8* %155, metadata !583, metadata !DIExpression()) #12, !dbg !808
  call void @llvm.dbg.value(metadata i64 %153, metadata !588, metadata !DIExpression()) #12, !dbg !808
  %156 = bitcast i8* %155 to i64*, !dbg !810
  store i64 %153, i64* %156, align 1, !dbg !810
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %145) #12, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %127) #12, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %25) #12, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #12, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %23) #12, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #12, !dbg !811
  ret void, !dbg !812
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #8 !dbg !813 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca [3 x i64], align 8
  %16 = alloca [3 x %struct.FStar_UInt128_uint128], align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata i64* %0, metadata !817, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64* %1, metadata !818, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64* %2, metadata !819, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i32 0, metadata !820, metadata !DIExpression()), !dbg !827
  br label %155, !dbg !828

18:                                               ; preds = %155
  call void @llvm.dbg.value(metadata i64* %0, metadata !829, metadata !DIExpression()) #12, !dbg !843
  call void @llvm.dbg.value(metadata i64* %0, metadata !832, metadata !DIExpression()) #12, !dbg !843
  call void @llvm.dbg.value(metadata i64* %2, metadata !833, metadata !DIExpression()) #12, !dbg !843
  %19 = bitcast [3 x i64]* %15 to i8*, !dbg !845
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19) #12, !dbg !845
  call void @llvm.dbg.declare(metadata [3 x i64]* %15, metadata !834, metadata !DIExpression()) #12, !dbg !846
  %20 = bitcast i64* %0 to i8*, !dbg !847
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %19, i8* noundef nonnull align 4 dereferenceable(24) %20, i32 24, i1 false) #12, !dbg !847
  %21 = bitcast [3 x %struct.FStar_UInt128_uint128]* %16 to i8*, !dbg !848
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %21) #12, !dbg !848
  call void @llvm.dbg.declare(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !835, metadata !DIExpression()) #12, !dbg !849
  call void @llvm.dbg.value(metadata i32 0, metadata !837, metadata !DIExpression()) #12, !dbg !850
  %22 = bitcast %struct.FStar_UInt128_uint128* %17 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !837, metadata !DIExpression()) #12, !dbg !850
  br label %142, !dbg !851

23:                                               ; preds = %142
  %24 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i32 0, i32 0, !dbg !847
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !852, metadata !DIExpression()) #12, !dbg !867
  call void @llvm.dbg.value(metadata i64* %24, metadata !858, metadata !DIExpression()) #12, !dbg !867
  call void @llvm.dbg.value(metadata i64* %2, metadata !859, metadata !DIExpression()) #12, !dbg !867
  call void @llvm.dbg.value(metadata i32 0, metadata !860, metadata !DIExpression()) #12, !dbg !869
  %25 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*
  %26 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0
  %28 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1
  call void @llvm.dbg.value(metadata i32 0, metadata !860, metadata !DIExpression()) #12, !dbg !869
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i32 0, i32 2
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i32 0, i32 1
  %31 = bitcast i64* %30 to i8*
  br label %53, !dbg !870

32:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 2, metadata !865, metadata !DIExpression()) #12, !dbg !867
  %33 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !871
  %34 = load i64, i64* %33, align 4, !dbg !871, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %34, metadata !866, metadata !DIExpression()) #12, !dbg !867
  %35 = bitcast %struct.FStar_UInt128_uint128* %14 to i8*, !dbg !872
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35) #12, !dbg !872
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !877, metadata !DIExpression()) #12, !dbg !872
  call void @llvm.dbg.value(metadata i64* %24, metadata !878, metadata !DIExpression()) #12, !dbg !872
  call void @llvm.dbg.value(metadata i64 %34, metadata !879, metadata !DIExpression()) #12, !dbg !872
  call void @llvm.dbg.value(metadata i32 0, metadata !880, metadata !DIExpression()) #12, !dbg !887
  %36 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !880, metadata !DIExpression()) #12, !dbg !887
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1
  br label %39, !dbg !888

39:                                               ; preds = %39, %32
  %40 = phi i32 [ 0, %32 ], [ %51, %39 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !880, metadata !DIExpression()) #12, !dbg !887
  %41 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %40, !dbg !889
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %41, i32 0, i32 0, !dbg !889
  %43 = load i64, i64* %42, align 8, !dbg !889, !tbaa.struct !890
  call void @llvm.dbg.value(metadata i64 %43, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !891
  %44 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %40, i32 1, !dbg !889
  %45 = load i64, i64* %44, align 8, !dbg !889, !tbaa.struct !892
  call void @llvm.dbg.value(metadata i64 %45, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !891
  %46 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i32 0, i32 %40, !dbg !893
  %47 = load i64, i64* %46, align 8, !dbg !893, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %47, metadata !885, metadata !DIExpression()) #12, !dbg !891
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %36) #12, !dbg !894
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %47, i64 noundef %34) #12, !dbg !895
  %48 = load i64, i64* %37, align 8, !dbg !894, !tbaa !122
  %49 = load i64, i64* %38, align 8, !dbg !894, !tbaa !125
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %43, i64 %45, i64 %48, i64 %49) #12, !dbg !894
  %50 = bitcast %struct.FStar_UInt128_uint128* %41 to i8*, !dbg !894
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %50, i8* noundef nonnull align 4 dereferenceable(16) %36, i32 16, i1 false) #12, !dbg !894, !tbaa.struct !890
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36) #12, !dbg !894
  %51 = add nuw nsw i32 %40, 1, !dbg !896
  call void @llvm.dbg.value(metadata i32 %51, metadata !880, metadata !DIExpression()) #12, !dbg !887
  %52 = icmp eq i32 %51, 3, !dbg !897
  br i1 %52, label %76, label %39, !dbg !888, !llvm.loop !898

53:                                               ; preds = %71, %23
  %54 = phi i32 [ 0, %23 ], [ %74, %71 ]
  call void @llvm.dbg.value(metadata i32 %54, metadata !860, metadata !DIExpression()) #12, !dbg !869
  %55 = getelementptr inbounds i64, i64* %2, i32 %54, !dbg !900
  %56 = load i64, i64* %55, align 4, !dbg !900, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %56, metadata !862, metadata !DIExpression()) #12, !dbg !901
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #12, !dbg !902
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !877, metadata !DIExpression()) #12, !dbg !902
  call void @llvm.dbg.value(metadata i64* %24, metadata !878, metadata !DIExpression()) #12, !dbg !902
  call void @llvm.dbg.value(metadata i64 %56, metadata !879, metadata !DIExpression()) #12, !dbg !902
  call void @llvm.dbg.value(metadata i32 0, metadata !880, metadata !DIExpression()) #12, !dbg !904
  call void @llvm.dbg.value(metadata i32 0, metadata !880, metadata !DIExpression()) #12, !dbg !904
  br label %57, !dbg !905

57:                                               ; preds = %57, %53
  %58 = phi i32 [ 0, %53 ], [ %69, %57 ]
  call void @llvm.dbg.value(metadata i32 %58, metadata !880, metadata !DIExpression()) #12, !dbg !904
  %59 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %58, !dbg !906
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %59, i32 0, i32 0, !dbg !906
  %61 = load i64, i64* %60, align 8, !dbg !906, !tbaa.struct !890
  call void @llvm.dbg.value(metadata i64 %61, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !907
  %62 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %58, i32 1, !dbg !906
  %63 = load i64, i64* %62, align 8, !dbg !906, !tbaa.struct !892
  call void @llvm.dbg.value(metadata i64 %63, metadata !882, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !907
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i32 0, i32 %58, !dbg !908
  %65 = load i64, i64* %64, align 8, !dbg !908, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %65, metadata !885, metadata !DIExpression()) #12, !dbg !907
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #12, !dbg !909
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %65, i64 noundef %56) #12, !dbg !910
  %66 = load i64, i64* %27, align 8, !dbg !909, !tbaa !122
  %67 = load i64, i64* %28, align 8, !dbg !909, !tbaa !125
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %61, i64 %63, i64 %66, i64 %67) #12, !dbg !909
  %68 = bitcast %struct.FStar_UInt128_uint128* %59 to i8*, !dbg !909
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %68, i8* noundef nonnull align 4 dereferenceable(16) %26, i32 16, i1 false) #12, !dbg !909, !tbaa.struct !890
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #12, !dbg !909
  %69 = add nuw nsw i32 %58, 1, !dbg !911
  call void @llvm.dbg.value(metadata i32 %69, metadata !880, metadata !DIExpression()) #12, !dbg !904
  %70 = icmp eq i32 %69, 3, !dbg !912
  br i1 %70, label %71, label %57, !dbg !905, !llvm.loop !913

71:                                               ; preds = %57
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #12, !dbg !915
  call void @llvm.dbg.value(metadata i64* %24, metadata !916, metadata !DIExpression()) #12, !dbg !926
  %72 = load i64, i64* %29, align 8, !dbg !928, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %72, metadata !919, metadata !DIExpression()) #12, !dbg !926
  call void @llvm.dbg.value(metadata i32 0, metadata !920, metadata !DIExpression()) #12, !dbg !929
  call void @llvm.memmove.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %31, i8* noundef nonnull align 8 dereferenceable(16) %19, i32 16, i1 false) #12, !dbg !930, !tbaa !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !922, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #12, !dbg !931
  call void @llvm.dbg.value(metadata i32 undef, metadata !925, metadata !DIExpression()) #12, !dbg !931
  call void @llvm.dbg.value(metadata i32 undef, metadata !920, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !929
  call void @llvm.dbg.value(metadata i64* %24, metadata !932, metadata !DIExpression()) #12, !dbg !936
  call void @llvm.dbg.value(metadata i64 %72, metadata !935, metadata !DIExpression()) #12, !dbg !936
  %73 = mul i64 %72, 20, !dbg !938
  store i64 %73, i64* %24, align 8, !dbg !939, !tbaa !137
  %74 = add nuw nsw i32 %54, 1, !dbg !940
  call void @llvm.dbg.value(metadata i32 %74, metadata !860, metadata !DIExpression()) #12, !dbg !869
  %75 = icmp eq i32 %74, 2, !dbg !941
  br i1 %75, label %32, label %53, !dbg !870, !llvm.loop !942

76:                                               ; preds = %39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35) #12, !dbg !944
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !945, metadata !DIExpression()) #12, !dbg !959
  call void @llvm.dbg.value(metadata i32 0, metadata !950, metadata !DIExpression()) #12, !dbg !961
  %77 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*
  %78 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*
  %79 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0
  %81 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1
  br label %82, !dbg !962

82:                                               ; preds = %82, %76
  %83 = phi i32 [ 0, %76 ], [ %89, %82 ]
  call void @llvm.dbg.value(metadata i32 %83, metadata !950, metadata !DIExpression()) #12, !dbg !961
  call void @llvm.dbg.value(metadata i32 %83, metadata !952, metadata !DIExpression()) #12, !dbg !963
  %84 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %83, !dbg !964
  %85 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %84, i32 0, i32 0, !dbg !964
  %86 = load i64, i64* %85, align 8, !dbg !964, !tbaa.struct !890
  call void @llvm.dbg.value(metadata i64 %86, metadata !955, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !963
  %87 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %83, i32 1, !dbg !964
  %88 = load i64, i64* %87, align 8, !dbg !964, !tbaa.struct !892
  call void @llvm.dbg.value(metadata i64 %88, metadata !955, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !963
  %89 = add nuw nsw i32 %83, 1, !dbg !965
  %90 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %89, !dbg !966
  %91 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %90, i32 0, i32 0, !dbg !966
  %92 = load i64, i64* %91, align 8, !dbg !966, !tbaa.struct !890
  call void @llvm.dbg.value(metadata i64 %92, metadata !956, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !963
  %93 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %89, i32 1, !dbg !966
  %94 = load i64, i64* %93, align 8, !dbg !966, !tbaa.struct !892
  call void @llvm.dbg.value(metadata i64 %94, metadata !956, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !963
  %95 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %86, i64 %88) #12, !dbg !967
  %96 = and i64 %95, 17592186044415, !dbg !968
  call void @llvm.dbg.value(metadata i64 %96, metadata !957, metadata !DIExpression()) #12, !dbg !963
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %77) #12, !dbg !969
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !958, metadata !DIExpression()) #12, !dbg !970
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %86, i64 %88, i32 noundef 44) #12, !dbg !971
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %78) #12, !dbg !972
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %96) #12, !dbg !972
  %97 = bitcast %struct.FStar_UInt128_uint128* %84 to i8*, !dbg !972
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %97, i8* noundef nonnull align 4 dereferenceable(16) %78, i32 16, i1 false) #12, !dbg !972, !tbaa.struct !890
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %78) #12, !dbg !972
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %79) #12, !dbg !973
  %98 = load i64, i64* %80, align 8, !dbg !973, !tbaa !122
  %99 = load i64, i64* %81, align 8, !dbg !973, !tbaa !125
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %92, i64 %94, i64 %98, i64 %99) #12, !dbg !973
  %100 = bitcast %struct.FStar_UInt128_uint128* %90 to i8*, !dbg !973
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %100, i8* noundef nonnull align 4 dereferenceable(16) %79, i32 16, i1 false) #12, !dbg !973, !tbaa.struct !890
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %79) #12, !dbg !973
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %77) #12, !dbg !974
  call void @llvm.dbg.value(metadata i32 %89, metadata !950, metadata !DIExpression()) #12, !dbg !961
  %101 = icmp eq i32 %89, 2, !dbg !975
  br i1 %101, label %102, label %82, !dbg !962, !llvm.loop !976

102:                                              ; preds = %82
  %103 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !978
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %103) #12, !dbg !978
  %104 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !978
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %104) #12, !dbg !978
  %105 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !978
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %105) #12, !dbg !978
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !981, metadata !DIExpression()) #12, !dbg !978
  %106 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 2, i32 0, !dbg !988
  %107 = load i64, i64* %106, align 8, !dbg !988, !tbaa.struct !890
  call void @llvm.dbg.value(metadata i64 %107, metadata !982, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !978
  %108 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 2, i32 1, !dbg !988
  %109 = load i64, i64* %108, align 8, !dbg !988, !tbaa.struct !892
  call void @llvm.dbg.value(metadata i64 %109, metadata !982, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !978
  %110 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 0, i32 0, !dbg !989
  %111 = load i64, i64* %110, align 8, !dbg !989, !tbaa.struct !890
  call void @llvm.dbg.value(metadata i64 %111, metadata !983, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !978
  %112 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 0, i32 1, !dbg !989
  %113 = load i64, i64* %112, align 8, !dbg !989, !tbaa.struct !892
  call void @llvm.dbg.value(metadata i64 %113, metadata !983, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !978
  %114 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !990
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %114) #12, !dbg !990
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !984, metadata !DIExpression()) #12, !dbg !991
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 4398046511103) #12, !dbg !992
  %115 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !993
  %116 = load i64, i64* %115, align 8, !dbg !993, !tbaa !122
  %117 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !993
  %118 = load i64, i64* %117, align 8, !dbg !993, !tbaa !125
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %107, i64 %109, i64 %116, i64 %118) #12, !dbg !993
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %107, i64 %109, i32 noundef 42) #12, !dbg !994
  %119 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !995
  %120 = load i64, i64* %119, align 8, !dbg !995, !tbaa !122
  %121 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !995
  %122 = load i64, i64* %121, align 8, !dbg !995, !tbaa !125
  %123 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %120, i64 %122) #12, !dbg !995
  call void @llvm.dbg.value(metadata i64 %123, metadata !985, metadata !DIExpression()) #12, !dbg !978
  %124 = mul i64 %123, 5, !dbg !996
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %124) #12, !dbg !997
  %125 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !998
  %126 = load i64, i64* %125, align 8, !dbg !998, !tbaa !122
  %127 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !998
  %128 = load i64, i64* %127, align 8, !dbg !998, !tbaa !125
  %129 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 0
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %129, i64 %111, i64 %113, i64 %126, i64 %128) #12, !dbg !998
  %130 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 2, !dbg !999
  %131 = bitcast %struct.FStar_UInt128_uint128* %130 to i8*, !dbg !1000
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %131, i8* noundef nonnull align 4 dereferenceable(16) %114, i32 16, i1 false) #12, !dbg !1000, !tbaa.struct !890
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %114) #12, !dbg !1001
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %103) #12, !dbg !1001
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %104) #12, !dbg !1001
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %105) #12, !dbg !1001
  call void @llvm.dbg.value(metadata i64* %0, metadata !1002, metadata !DIExpression()) #12, !dbg !1013
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !1007, metadata !DIExpression()) #12, !dbg !1013
  call void @llvm.dbg.value(metadata i32 0, metadata !1008, metadata !DIExpression()) #12, !dbg !1015
  br label %132, !dbg !1016

132:                                              ; preds = %132, %102
  %133 = phi i32 [ 0, %102 ], [ %140, %132 ]
  call void @llvm.dbg.value(metadata i32 %133, metadata !1008, metadata !DIExpression()) #12, !dbg !1015
  %134 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %133, i32 0, !dbg !1017
  %135 = load i64, i64* %134, align 8, !dbg !1017, !tbaa.struct !890
  call void @llvm.dbg.value(metadata i64 %135, metadata !1010, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !1018
  %136 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %133, i32 1, !dbg !1017
  %137 = load i64, i64* %136, align 8, !dbg !1017, !tbaa.struct !892
  call void @llvm.dbg.value(metadata i64 %137, metadata !1010, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !1018
  %138 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %135, i64 %137) #12, !dbg !1019
  %139 = getelementptr inbounds i64, i64* %0, i32 %133, !dbg !1020
  store i64 %138, i64* %139, align 4, !dbg !1021, !tbaa !137
  %140 = add nuw nsw i32 %133, 1, !dbg !1022
  call void @llvm.dbg.value(metadata i32 %140, metadata !1008, metadata !DIExpression()) #12, !dbg !1015
  %141 = icmp eq i32 %140, 3, !dbg !1023
  br i1 %141, label %148, label %132, !dbg !1016, !llvm.loop !1024

142:                                              ; preds = %142, %18
  %143 = phi i32 [ 0, %18 ], [ %146, %142 ]
  call void @llvm.dbg.value(metadata i32 %143, metadata !837, metadata !DIExpression()) #12, !dbg !850
  %144 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %143, !dbg !1026
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #12, !dbg !1028
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef 0) #12, !dbg !1028
  %145 = bitcast %struct.FStar_UInt128_uint128* %144 to i8*, !dbg !1028
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %145, i8* noundef nonnull align 4 dereferenceable(16) %22, i32 16, i1 false) #12, !dbg !1028, !tbaa.struct !890
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #12, !dbg !1028
  %146 = add nuw nsw i32 %143, 1, !dbg !1029
  call void @llvm.dbg.value(metadata i32 %146, metadata !837, metadata !DIExpression()) #12, !dbg !850
  %147 = icmp eq i32 %146, 3, !dbg !1030
  br i1 %147, label %23, label %142, !dbg !851, !llvm.loop !1031

148:                                              ; preds = %132
  %149 = load i64, i64* %0, align 4, !dbg !1033, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %149, metadata !839, metadata !DIExpression()) #12, !dbg !843
  %150 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1034
  %151 = load i64, i64* %150, align 4, !dbg !1034, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %151, metadata !840, metadata !DIExpression()) #12, !dbg !843
  %152 = and i64 %149, 17592186044415, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %152, metadata !841, metadata !DIExpression()) #12, !dbg !843
  %153 = lshr i64 %149, 44, !dbg !1036
  %154 = add i64 %151, %153, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %154, metadata !842, metadata !DIExpression()) #12, !dbg !843
  store i64 %152, i64* %0, align 4, !dbg !1038, !tbaa !137
  store i64 %154, i64* %150, align 4, !dbg !1039, !tbaa !137
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %21) #12, !dbg !1040
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19) #12, !dbg !1040
  ret void, !dbg !1041

155:                                              ; preds = %3, %155
  %156 = phi i32 [ 0, %3 ], [ %162, %155 ]
  call void @llvm.dbg.value(metadata i32 %156, metadata !820, metadata !DIExpression()), !dbg !827
  %157 = getelementptr inbounds i64, i64* %0, i32 %156, !dbg !1042
  %158 = load i64, i64* %157, align 4, !dbg !1042, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %158, metadata !822, metadata !DIExpression()), !dbg !1043
  %159 = getelementptr inbounds i64, i64* %1, i32 %156, !dbg !1044
  %160 = load i64, i64* %159, align 4, !dbg !1044, !tbaa !137
  call void @llvm.dbg.value(metadata i64 %160, metadata !825, metadata !DIExpression()), !dbg !1043
  %161 = add i64 %160, %158, !dbg !1045
  store i64 %161, i64* %157, align 4, !dbg !1046, !tbaa !137
  %162 = add nuw nsw i32 %156, 1, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %162, metadata !820, metadata !DIExpression()), !dbg !827
  %163 = icmp eq i32 %162, 3, !dbg !1048
  br i1 %163, label %18, label %155, !dbg !828, !llvm.loop !1049
}

declare !dbg !1051 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !1054 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #2 !dbg !1055 {
  %5 = alloca [3 x i64], align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !1057, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1065
  call void @llvm.dbg.value(metadata i64* %1, metadata !1057, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1065
  call void @llvm.dbg.value(metadata i8* %2, metadata !1058, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i64 %3, metadata !1059, metadata !DIExpression()), !dbg !1065
  %8 = icmp eq i64 %3, 0, !dbg !1066
  br i1 %8, label %37, label %9, !dbg !1067

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !1060, metadata !DIExpression()), !dbg !1068
  %10 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !1069
  call void @llvm.dbg.value(metadata i8* %10, metadata !1063, metadata !DIExpression()), !dbg !1068
  %11 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !1070
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11), !dbg !1070
  %12 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !1070
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12), !dbg !1070
  call void @llvm.dbg.value(metadata i64* %0, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !1070
  call void @llvm.dbg.value(metadata i64* %1, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !1070
  call void @llvm.dbg.value(metadata i8* %2, metadata !168, metadata !DIExpression()) #12, !dbg !1070
  call void @llvm.dbg.value(metadata i64* %0, metadata !169, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !1070
  call void @llvm.dbg.value(metadata i64* %1, metadata !169, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !1070
  call void @llvm.dbg.value(metadata i64* %1, metadata !170, metadata !DIExpression()) #12, !dbg !1070
  call void @llvm.dbg.value(metadata i64* %1, metadata !171, metadata !DIExpression()) #12, !dbg !1070
  call void @llvm.dbg.value(metadata i64* %0, metadata !172, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #12, !dbg !1070
  call void @llvm.dbg.value(metadata i64* %1, metadata !172, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #12, !dbg !1070
  call void @llvm.dbg.value(metadata i64* %0, metadata !173, metadata !DIExpression()) #12, !dbg !1070
  call void @llvm.dbg.value(metadata i64* %0, metadata !174, metadata !DIExpression()) #12, !dbg !1070
  %13 = bitcast [3 x i64]* %5 to i8*, !dbg !1072
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #12, !dbg !1072
  call void @llvm.dbg.declare(metadata [3 x i64]* %5, metadata !175, metadata !DIExpression()) #12, !dbg !1073
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %13, i8 0, i32 24, i1 false) #12, !dbg !1073
  call void @llvm.dbg.value(metadata i8* undef, metadata !83, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1074
  call void @llvm.dbg.value(metadata i8* %2, metadata !90, metadata !DIExpression()) #12, !dbg !1074
  call void @llvm.dbg.value(metadata i8* %2, metadata !93, metadata !DIExpression()) #12, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !99, metadata !DIExpression()) #12, !dbg !1076
  call void @llvm.dbg.value(metadata i8* %2, metadata !102, metadata !DIExpression()) #12, !dbg !1078
  %14 = bitcast i8* %2 to i64*, !dbg !1080
  %15 = load i64, i64* %14, align 1, !dbg !1080, !noalias !1081
  call void @llvm.dbg.value(metadata i64 %15, metadata !107, metadata !DIExpression()) #12, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %15, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #12, !dbg !1070
  %16 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !1084
  call void @llvm.dbg.value(metadata i8* %16, metadata !102, metadata !DIExpression()) #12, !dbg !1085
  %17 = bitcast i8* %16 to i64*, !dbg !1087
  %18 = load i64, i64* %17, align 1, !dbg !1087, !noalias !1081
  call void @llvm.dbg.value(metadata i64 %18, metadata !107, metadata !DIExpression()) #12, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %18, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #12, !dbg !1070
  %19 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %15, i64 %18) #12, !dbg !1088
  %20 = and i64 %19, 17592186044415, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %20, metadata !180, metadata !DIExpression()) #12, !dbg !1070
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %15, i64 %18, i32 noundef 44) #12, !dbg !1090
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !1091
  %22 = load i64, i64* %21, align 8, !dbg !1091, !tbaa !122
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !1091
  %24 = load i64, i64* %23, align 8, !dbg !1091, !tbaa !125
  %25 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %22, i64 %24) #12, !dbg !1091
  %26 = and i64 %25, 17592186044415, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %26, metadata !181, metadata !DIExpression()) #12, !dbg !1070
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %15, i64 %18, i32 noundef 88) #12, !dbg !1093
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1094
  %28 = load i64, i64* %27, align 8, !dbg !1094, !tbaa !122
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1094
  %30 = load i64, i64* %29, align 8, !dbg !1094, !tbaa !125
  %31 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %28, i64 %30) #12, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %31, metadata !182, metadata !DIExpression()) #12, !dbg !1070
  %32 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 0, !dbg !1095
  store i64 %20, i64* %32, align 8, !dbg !1096, !tbaa !137
  %33 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 1, !dbg !1097
  store i64 %26, i64* %33, align 8, !dbg !1098, !tbaa !137
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i32 0, i32 2, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %31, metadata !183, metadata !DIExpression()) #12, !dbg !1070
  %35 = or i64 %31, 1099511627776, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %35, metadata !184, metadata !DIExpression()) #12, !dbg !1070
  store i64 %35, i64* %34, align 8, !dbg !1101, !tbaa !137
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(i64* noundef %1, i64* noundef nonnull %32, i64* noundef %0) #12, !dbg !1102
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #12, !dbg !1103
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11), !dbg !1103
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12), !dbg !1103
  %36 = add i64 %3, -1, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %36, metadata !1064, metadata !DIExpression()), !dbg !1068
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* %0, i64* %1, i8* noundef nonnull %10, i64 noundef %36), !dbg !1105
  br label %37, !dbg !1106

37:                                               ; preds = %9, %4
  ret void, !dbg !1107
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #11

attributes #0 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }

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
!40 = !DILocalVariable(name: "r", arg: 1, scope: !41, file: !1, line: 279, type: !34)
!41 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_mk_state", scope: !1, file: !1, line: 279, type: !27, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!42 = !{!40, !43}
!43 = !DILocalVariable(name: "h", arg: 2, scope: !41, file: !1, line: 279, type: !34)
!44 = !DILocation(line: 0, scope: !41, inlinedAt: !45)
!45 = distinct !DILocation(line: 406, column: 10, scope: !26)
!46 = !DILocation(line: 281, column: 55, scope: !41, inlinedAt: !45)
!47 = !{!48, !49, i64 0}
!48 = !{!"", !49, i64 0, !49, i64 4}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"Hacl_Impl_Poly1305_64_mk_state: argument 0"}
!54 = distinct !{!54, !"Hacl_Impl_Poly1305_64_mk_state"}
!55 = !{!48, !49, i64 4}
!56 = !DILocation(line: 406, column: 3, scope: !26)
!57 = distinct !DISubprogram(name: "Hacl_Poly1305_64_init", scope: !1, file: !1, line: 409, type: !58, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !61)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !29, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!61 = !{!62, !63, !64, !65, !66, !67, !75, !76, !77, !78, !79, !80, !81}
!62 = !DILocalVariable(name: "st", arg: 1, scope: !57, file: !1, line: 409, type: !29)
!63 = !DILocalVariable(name: "k1", arg: 2, scope: !57, file: !1, line: 409, type: !60)
!64 = !DILocalVariable(name: "scrut", scope: !57, file: !1, line: 411, type: !29)
!65 = !DILocalVariable(name: "r", scope: !57, file: !1, line: 412, type: !34)
!66 = !DILocalVariable(name: "x0", scope: !57, file: !1, line: 413, type: !34)
!67 = !DILocalVariable(name: "k10", scope: !57, file: !1, line: 414, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !69, line: 37, baseType: !70)
!69 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !69, line: 35, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 30, size: 128, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !71, file: !69, line: 32, baseType: !3, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !71, file: !69, line: 33, baseType: !3, size: 64, offset: 64)
!75 = !DILocalVariable(name: "k_clamped", scope: !57, file: !1, line: 416, type: !68)
!76 = !DILocalVariable(name: "r0", scope: !57, file: !1, line: 421, type: !3)
!77 = !DILocalVariable(name: "r1", scope: !57, file: !1, line: 423, type: !3)
!78 = !DILocalVariable(name: "r2", scope: !57, file: !1, line: 427, type: !3)
!79 = !DILocalVariable(name: "scrut0", scope: !57, file: !1, line: 431, type: !29)
!80 = !DILocalVariable(name: "h", scope: !57, file: !1, line: 432, type: !34)
!81 = !DILocalVariable(name: "x00", scope: !57, file: !1, line: 433, type: !34)
!82 = !DILocation(line: 0, scope: !57)
!83 = !DILocalVariable(name: "r", scope: !84, file: !85, line: 544, type: !88)
!84 = distinct !DISubprogram(name: "load128_le", scope: !85, file: !85, line: 543, type: !86, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !89)
!85 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !60}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !85, line: 510, baseType: !70)
!89 = !{!90, !83}
!90 = !DILocalVariable(name: "b", arg: 1, scope: !84, file: !85, line: 543, type: !60)
!91 = !DILocation(line: 0, scope: !84, inlinedAt: !92)
!92 = distinct !DILocation(line: 414, column: 25, scope: !57)
!93 = !DILocalVariable(name: "b", arg: 1, scope: !94, file: !85, line: 517, type: !60)
!94 = distinct !DISubprogram(name: "load128_le_", scope: !85, file: !85, line: 517, type: !95, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !60, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!98 = !{!93, !99}
!99 = !DILocalVariable(name: "r", arg: 2, scope: !94, file: !85, line: 517, type: !97)
!100 = !DILocation(line: 0, scope: !94, inlinedAt: !101)
!101 = distinct !DILocation(line: 545, column: 3, scope: !84, inlinedAt: !92)
!102 = !DILocalVariable(name: "b", arg: 1, scope: !103, file: !85, line: 347, type: !60)
!103 = distinct !DISubprogram(name: "load64", scope: !85, file: !85, line: 347, type: !104, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!3, !60}
!106 = !{!102, !107}
!107 = !DILocalVariable(name: "x", scope: !103, file: !85, line: 348, type: !3)
!108 = !DILocation(line: 0, scope: !103, inlinedAt: !109)
!109 = distinct !DILocation(line: 518, column: 12, scope: !94, inlinedAt: !101)
!110 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !109)
!111 = !{!112}
!112 = distinct !{!112, !113, !"load128_le: argument 0"}
!113 = distinct !{!113, !"load128_le"}
!114 = !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !101)
!115 = !DILocation(line: 0, scope: !103, inlinedAt: !116)
!116 = distinct !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !101)
!117 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !116)
!118 = !DILocation(line: 415, column: 3, scope: !57)
!119 = !DILocation(line: 416, column: 3, scope: !57)
!120 = !DILocation(line: 418, column: 52, scope: !57)
!121 = !DILocation(line: 418, column: 27, scope: !57)
!122 = !{!123, !124, i64 0}
!123 = !{!"", !124, i64 0, !124, i64 8}
!124 = !{!"long long", !50, i64 0}
!125 = !{!123, !124, i64 8}
!126 = !DILocation(line: 420, column: 9, scope: !57)
!127 = !DILocation(line: 418, column: 7, scope: !57)
!128 = !DILocation(line: 417, column: 5, scope: !57)
!129 = !DILocation(line: 421, column: 17, scope: !57)
!130 = !DILocation(line: 421, column: 60, scope: !57)
!131 = !DILocation(line: 424, column: 37, scope: !57)
!132 = !DILocation(line: 424, column: 5, scope: !57)
!133 = !DILocation(line: 425, column: 5, scope: !57)
!134 = !DILocation(line: 427, column: 40, scope: !57)
!135 = !DILocation(line: 427, column: 8, scope: !57)
!136 = !DILocation(line: 428, column: 10, scope: !57)
!137 = !{!124, !124, i64 0}
!138 = !DILocation(line: 429, column: 3, scope: !57)
!139 = !DILocation(line: 429, column: 10, scope: !57)
!140 = !DILocation(line: 430, column: 3, scope: !57)
!141 = !DILocation(line: 430, column: 10, scope: !57)
!142 = !DILocation(line: 437, column: 1, scope: !57)
!143 = !DILocation(line: 435, column: 11, scope: !57)
!144 = !DISubprogram(name: "FStar_UInt128_logand", scope: !69, file: !69, line: 49, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !147)
!145 = !DISubroutineType(types: !146)
!146 = !{!70, !70, !70}
!147 = !{}
!148 = !DISubprogram(name: "FStar_UInt128_logor", scope: !69, file: !69, line: 53, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !147)
!149 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !69, file: !69, line: 57, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !147)
!150 = !DISubroutineType(types: !151)
!151 = !{!70, !70, !8}
!152 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !69, file: !69, line: 65, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !147)
!153 = !DISubroutineType(types: !154)
!154 = !{!70, !3}
!155 = !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !69, file: !69, line: 67, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !147)
!156 = !DISubroutineType(types: !157)
!157 = !{!3, !70}
!158 = !DISubprogram(name: "FStar_UInt128_shift_right", scope: !69, file: !69, line: 59, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !147)
!159 = distinct !DISubprogram(name: "Hacl_Poly1305_64_update_block", scope: !1, file: !1, line: 439, type: !58, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !160)
!160 = !{!161, !162}
!161 = !DILocalVariable(name: "st", arg: 1, scope: !159, file: !1, line: 439, type: !29)
!162 = !DILocalVariable(name: "m", arg: 2, scope: !159, file: !1, line: 439, type: !60)
!163 = !DILocation(line: 0, scope: !159)
!164 = !DILocation(line: 0, scope: !165, inlinedAt: !185)
!165 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_update", scope: !1, file: !1, line: 168, type: !58, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !179, !180, !181, !182, !183, !184}
!167 = !DILocalVariable(name: "st", arg: 1, scope: !165, file: !1, line: 169, type: !29)
!168 = !DILocalVariable(name: "m", arg: 2, scope: !165, file: !1, line: 170, type: !60)
!169 = !DILocalVariable(name: "scrut0", scope: !165, file: !1, line: 173, type: !29)
!170 = !DILocalVariable(name: "h", scope: !165, file: !1, line: 174, type: !34)
!171 = !DILocalVariable(name: "acc", scope: !165, file: !1, line: 175, type: !34)
!172 = !DILocalVariable(name: "scrut", scope: !165, file: !1, line: 176, type: !29)
!173 = !DILocalVariable(name: "r", scope: !165, file: !1, line: 177, type: !34)
!174 = !DILocalVariable(name: "r3", scope: !165, file: !1, line: 178, type: !34)
!175 = !DILocalVariable(name: "tmp", scope: !165, file: !1, line: 179, type: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 192, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 3)
!179 = !DILocalVariable(name: "m0", scope: !165, file: !1, line: 180, type: !68)
!180 = !DILocalVariable(name: "r0", scope: !165, file: !1, line: 181, type: !3)
!181 = !DILocalVariable(name: "r1", scope: !165, file: !1, line: 183, type: !3)
!182 = !DILocalVariable(name: "r2", scope: !165, file: !1, line: 186, type: !3)
!183 = !DILocalVariable(name: "b2", scope: !165, file: !1, line: 190, type: !3)
!184 = !DILocalVariable(name: "b2_", scope: !165, file: !1, line: 191, type: !3)
!185 = distinct !DILocation(line: 441, column: 3, scope: !159)
!186 = !DILocation(line: 179, column: 3, scope: !165, inlinedAt: !185)
!187 = !DILocation(line: 179, column: 12, scope: !165, inlinedAt: !185)
!188 = !DILocation(line: 0, scope: !84, inlinedAt: !189)
!189 = distinct !DILocation(line: 180, column: 24, scope: !165, inlinedAt: !185)
!190 = !DILocation(line: 0, scope: !94, inlinedAt: !191)
!191 = distinct !DILocation(line: 545, column: 3, scope: !84, inlinedAt: !189)
!192 = !DILocation(line: 0, scope: !103, inlinedAt: !193)
!193 = distinct !DILocation(line: 518, column: 12, scope: !94, inlinedAt: !191)
!194 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !193)
!195 = !{!196}
!196 = distinct !{!196, !197, !"load128_le: argument 0"}
!197 = distinct !{!197, !"load128_le"}
!198 = !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !191)
!199 = !DILocation(line: 0, scope: !103, inlinedAt: !200)
!200 = distinct !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !191)
!201 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !200)
!202 = !DILocation(line: 181, column: 17, scope: !165, inlinedAt: !185)
!203 = !DILocation(line: 181, column: 53, scope: !165, inlinedAt: !185)
!204 = !DILocation(line: 184, column: 37, scope: !165, inlinedAt: !185)
!205 = !DILocation(line: 184, column: 5, scope: !165, inlinedAt: !185)
!206 = !DILocation(line: 185, column: 5, scope: !165, inlinedAt: !185)
!207 = !DILocation(line: 186, column: 49, scope: !165, inlinedAt: !185)
!208 = !DILocation(line: 186, column: 17, scope: !165, inlinedAt: !185)
!209 = !DILocation(line: 187, column: 3, scope: !165, inlinedAt: !185)
!210 = !DILocation(line: 187, column: 11, scope: !165, inlinedAt: !185)
!211 = !DILocation(line: 188, column: 3, scope: !165, inlinedAt: !185)
!212 = !DILocation(line: 188, column: 11, scope: !165, inlinedAt: !185)
!213 = !DILocation(line: 189, column: 3, scope: !165, inlinedAt: !185)
!214 = !DILocation(line: 191, column: 43, scope: !165, inlinedAt: !185)
!215 = !DILocation(line: 192, column: 11, scope: !165, inlinedAt: !185)
!216 = !DILocation(line: 193, column: 3, scope: !165, inlinedAt: !185)
!217 = !DILocation(line: 194, column: 1, scope: !165, inlinedAt: !185)
!218 = !DILocation(line: 442, column: 1, scope: !159)
!219 = distinct !DISubprogram(name: "Hacl_Poly1305_64_update", scope: !1, file: !1, line: 445, type: !220, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !29, !60, !8}
!222 = !{!223, !224, !225, !226, !229, !230}
!223 = !DILocalVariable(name: "st", arg: 1, scope: !219, file: !1, line: 446, type: !29)
!224 = !DILocalVariable(name: "m", arg: 2, scope: !219, file: !1, line: 447, type: !60)
!225 = !DILocalVariable(name: "num_blocks", arg: 3, scope: !219, file: !1, line: 448, type: !8)
!226 = !DILocalVariable(name: "block", scope: !227, file: !1, line: 453, type: !60)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 452, column: 3)
!228 = distinct !DILexicalBlock(scope: !219, file: !1, line: 451, column: 7)
!229 = !DILocalVariable(name: "m_", scope: !227, file: !1, line: 454, type: !60)
!230 = !DILocalVariable(name: "n1", scope: !227, file: !1, line: 455, type: !8)
!231 = !DILocation(line: 0, scope: !219)
!232 = !DILocation(line: 451, column: 20, scope: !228)
!233 = !DILocation(line: 451, column: 7, scope: !219)
!234 = !DILocation(line: 0, scope: !227)
!235 = !DILocation(line: 454, column: 21, scope: !227)
!236 = !DILocation(line: 455, column: 30, scope: !227)
!237 = !DILocation(line: 0, scope: !159, inlinedAt: !238)
!238 = distinct !DILocation(line: 456, column: 5, scope: !227)
!239 = !DILocation(line: 0, scope: !165, inlinedAt: !240)
!240 = distinct !DILocation(line: 441, column: 3, scope: !159, inlinedAt: !238)
!241 = !DILocation(line: 179, column: 3, scope: !165, inlinedAt: !240)
!242 = !DILocation(line: 179, column: 12, scope: !165, inlinedAt: !240)
!243 = !DILocation(line: 0, scope: !84, inlinedAt: !244)
!244 = distinct !DILocation(line: 180, column: 24, scope: !165, inlinedAt: !240)
!245 = !DILocation(line: 0, scope: !94, inlinedAt: !246)
!246 = distinct !DILocation(line: 545, column: 3, scope: !84, inlinedAt: !244)
!247 = !DILocation(line: 0, scope: !103, inlinedAt: !248)
!248 = distinct !DILocation(line: 518, column: 12, scope: !94, inlinedAt: !246)
!249 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !248)
!250 = !{!251}
!251 = distinct !{!251, !252, !"load128_le: argument 0"}
!252 = distinct !{!252, !"load128_le"}
!253 = !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !246)
!254 = !DILocation(line: 0, scope: !103, inlinedAt: !255)
!255 = distinct !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !246)
!256 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !255)
!257 = !DILocation(line: 181, column: 17, scope: !165, inlinedAt: !240)
!258 = !DILocation(line: 181, column: 53, scope: !165, inlinedAt: !240)
!259 = !DILocation(line: 184, column: 37, scope: !165, inlinedAt: !240)
!260 = !DILocation(line: 184, column: 5, scope: !165, inlinedAt: !240)
!261 = !DILocation(line: 185, column: 5, scope: !165, inlinedAt: !240)
!262 = !DILocation(line: 186, column: 49, scope: !165, inlinedAt: !240)
!263 = !DILocation(line: 186, column: 17, scope: !165, inlinedAt: !240)
!264 = !DILocation(line: 187, column: 3, scope: !165, inlinedAt: !240)
!265 = !DILocation(line: 187, column: 11, scope: !165, inlinedAt: !240)
!266 = !DILocation(line: 188, column: 3, scope: !165, inlinedAt: !240)
!267 = !DILocation(line: 188, column: 11, scope: !165, inlinedAt: !240)
!268 = !DILocation(line: 189, column: 3, scope: !165, inlinedAt: !240)
!269 = !DILocation(line: 191, column: 43, scope: !165, inlinedAt: !240)
!270 = !DILocation(line: 192, column: 11, scope: !165, inlinedAt: !240)
!271 = !DILocation(line: 193, column: 3, scope: !165, inlinedAt: !240)
!272 = !DILocation(line: 194, column: 1, scope: !165, inlinedAt: !240)
!273 = !DILocation(line: 457, column: 5, scope: !227)
!274 = !DILocation(line: 458, column: 3, scope: !227)
!275 = !DILocation(line: 459, column: 1, scope: !219)
!276 = distinct !DISubprogram(name: "Hacl_Poly1305_64_update_last", scope: !1, file: !1, line: 462, type: !220, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !277)
!277 = !{!278, !279, !280, !281, !282, !283}
!278 = !DILocalVariable(name: "st", arg: 1, scope: !276, file: !1, line: 463, type: !29)
!279 = !DILocalVariable(name: "m", arg: 2, scope: !276, file: !1, line: 464, type: !60)
!280 = !DILocalVariable(name: "len1", arg: 3, scope: !276, file: !1, line: 465, type: !8)
!281 = !DILocalVariable(name: "scrut", scope: !276, file: !1, line: 470, type: !29)
!282 = !DILocalVariable(name: "h", scope: !276, file: !1, line: 471, type: !34)
!283 = !DILocalVariable(name: "acc", scope: !276, file: !1, line: 472, type: !34)
!284 = !DILocation(line: 0, scope: !276)
!285 = !DILocation(line: 468, column: 24, scope: !286)
!286 = distinct !DILexicalBlock(scope: !276, file: !1, line: 468, column: 7)
!287 = !DILocation(line: 468, column: 7, scope: !276)
!288 = !DILocation(line: 0, scope: !289, inlinedAt: !305)
!289 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_process_last_block", scope: !1, file: !1, line: 223, type: !290, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !29, !60, !3}
!292 = !{!293, !294, !295, !296, !297, !301, !303, !304}
!293 = !DILocalVariable(name: "st", arg: 1, scope: !289, file: !1, line: 224, type: !29)
!294 = !DILocalVariable(name: "m", arg: 2, scope: !289, file: !1, line: 225, type: !60)
!295 = !DILocalVariable(name: "rem_", arg: 3, scope: !289, file: !1, line: 226, type: !3)
!296 = !DILocalVariable(name: "zero1", scope: !289, file: !1, line: 229, type: !11)
!297 = !DILocalVariable(name: "block", scope: !289, file: !1, line: 231, type: !298)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 16)
!301 = !DILocalVariable(name: "_i", scope: !302, file: !1, line: 232, type: !8)
!302 = distinct !DILexicalBlock(scope: !289, file: !1, line: 232, column: 3)
!303 = !DILocalVariable(name: "i0", scope: !289, file: !1, line: 234, type: !8)
!304 = !DILocalVariable(name: "i", scope: !289, file: !1, line: 235, type: !8)
!305 = distinct !DILocation(line: 469, column: 5, scope: !286)
!306 = !DILocation(line: 231, column: 3, scope: !289, inlinedAt: !305)
!307 = !DILocation(line: 231, column: 11, scope: !289, inlinedAt: !305)
!308 = !DILocation(line: 236, column: 3, scope: !289, inlinedAt: !305)
!309 = !DILocation(line: 237, column: 3, scope: !289, inlinedAt: !305)
!310 = !DILocation(line: 237, column: 13, scope: !289, inlinedAt: !305)
!311 = !{!50, !50, i64 0}
!312 = !DILocation(line: 0, scope: !313, inlinedAt: !330)
!313 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_process_last_block_", scope: !1, file: !1, line: 197, type: !314, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !316)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !60, !29, !60, !3}
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!317 = !DILocalVariable(name: "block", arg: 1, scope: !313, file: !1, line: 198, type: !60)
!318 = !DILocalVariable(name: "st", arg: 2, scope: !313, file: !1, line: 199, type: !29)
!319 = !DILocalVariable(name: "m", arg: 3, scope: !313, file: !1, line: 200, type: !60)
!320 = !DILocalVariable(name: "rem_", arg: 4, scope: !313, file: !1, line: 201, type: !3)
!321 = !DILocalVariable(name: "tmp", scope: !313, file: !1, line: 204, type: !176)
!322 = !DILocalVariable(name: "m0", scope: !313, file: !1, line: 205, type: !68)
!323 = !DILocalVariable(name: "r0", scope: !313, file: !1, line: 206, type: !3)
!324 = !DILocalVariable(name: "r1", scope: !313, file: !1, line: 208, type: !3)
!325 = !DILocalVariable(name: "r2", scope: !313, file: !1, line: 211, type: !3)
!326 = !DILocalVariable(name: "scrut0", scope: !313, file: !1, line: 215, type: !29)
!327 = !DILocalVariable(name: "h", scope: !313, file: !1, line: 216, type: !34)
!328 = !DILocalVariable(name: "scrut", scope: !313, file: !1, line: 217, type: !29)
!329 = !DILocalVariable(name: "r", scope: !313, file: !1, line: 218, type: !34)
!330 = distinct !DILocation(line: 238, column: 3, scope: !289, inlinedAt: !305)
!331 = !DILocation(line: 204, column: 3, scope: !313, inlinedAt: !330)
!332 = !DILocation(line: 204, column: 12, scope: !313, inlinedAt: !330)
!333 = !DILocation(line: 0, scope: !84, inlinedAt: !334)
!334 = distinct !DILocation(line: 205, column: 24, scope: !313, inlinedAt: !330)
!335 = !DILocation(line: 0, scope: !94, inlinedAt: !336)
!336 = distinct !DILocation(line: 545, column: 3, scope: !84, inlinedAt: !334)
!337 = !DILocation(line: 0, scope: !103, inlinedAt: !338)
!338 = distinct !DILocation(line: 518, column: 12, scope: !94, inlinedAt: !336)
!339 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !338)
!340 = !{!341}
!341 = distinct !{!341, !342, !"load128_le: argument 0"}
!342 = distinct !{!342, !"load128_le"}
!343 = !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !336)
!344 = !DILocation(line: 0, scope: !103, inlinedAt: !345)
!345 = distinct !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !336)
!346 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !345)
!347 = !DILocation(line: 206, column: 17, scope: !313, inlinedAt: !330)
!348 = !DILocation(line: 206, column: 53, scope: !313, inlinedAt: !330)
!349 = !DILocation(line: 209, column: 37, scope: !313, inlinedAt: !330)
!350 = !DILocation(line: 209, column: 5, scope: !313, inlinedAt: !330)
!351 = !DILocation(line: 210, column: 5, scope: !313, inlinedAt: !330)
!352 = !DILocation(line: 211, column: 49, scope: !313, inlinedAt: !330)
!353 = !DILocation(line: 211, column: 17, scope: !313, inlinedAt: !330)
!354 = !DILocation(line: 212, column: 3, scope: !313, inlinedAt: !330)
!355 = !DILocation(line: 212, column: 11, scope: !313, inlinedAt: !330)
!356 = !DILocation(line: 213, column: 3, scope: !313, inlinedAt: !330)
!357 = !DILocation(line: 213, column: 11, scope: !313, inlinedAt: !330)
!358 = !DILocation(line: 214, column: 3, scope: !313, inlinedAt: !330)
!359 = !DILocation(line: 214, column: 11, scope: !313, inlinedAt: !330)
!360 = !DILocation(line: 219, column: 3, scope: !313, inlinedAt: !330)
!361 = !DILocation(line: 220, column: 1, scope: !313, inlinedAt: !330)
!362 = !DILocation(line: 239, column: 1, scope: !289, inlinedAt: !305)
!363 = !DILocation(line: 469, column: 5, scope: !286)
!364 = !DILocation(line: 473, column: 3, scope: !276)
!365 = !DILocation(line: 474, column: 1, scope: !276)
!366 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_last_pass", scope: !1, file: !1, line: 241, type: !367, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !369)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !34}
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!370 = !DILocalVariable(name: "acc", arg: 1, scope: !366, file: !1, line: 241, type: !34)
!371 = !DILocalVariable(name: "a0", scope: !366, file: !1, line: 245, type: !3)
!372 = !DILocalVariable(name: "a10", scope: !366, file: !1, line: 246, type: !3)
!373 = !DILocalVariable(name: "a20", scope: !366, file: !1, line: 247, type: !3)
!374 = !DILocalVariable(name: "a0_", scope: !366, file: !1, line: 248, type: !3)
!375 = !DILocalVariable(name: "r0", scope: !366, file: !1, line: 249, type: !3)
!376 = !DILocalVariable(name: "a1_", scope: !366, file: !1, line: 250, type: !3)
!377 = !DILocalVariable(name: "r1", scope: !366, file: !1, line: 251, type: !3)
!378 = !DILocalVariable(name: "a2_", scope: !366, file: !1, line: 252, type: !3)
!379 = !DILocalVariable(name: "i0", scope: !366, file: !1, line: 257, type: !3)
!380 = !DILocalVariable(name: "i1", scope: !366, file: !1, line: 258, type: !3)
!381 = !DILocalVariable(name: "i0_", scope: !366, file: !1, line: 259, type: !3)
!382 = !DILocalVariable(name: "i1_", scope: !366, file: !1, line: 260, type: !3)
!383 = !DILocalVariable(name: "a00", scope: !366, file: !1, line: 263, type: !3)
!384 = !DILocalVariable(name: "a1", scope: !366, file: !1, line: 264, type: !3)
!385 = !DILocalVariable(name: "a2", scope: !366, file: !1, line: 265, type: !3)
!386 = !DILocalVariable(name: "mask0", scope: !366, file: !1, line: 266, type: !3)
!387 = !DILocalVariable(name: "mask1", scope: !366, file: !1, line: 267, type: !3)
!388 = !DILocalVariable(name: "mask2", scope: !366, file: !1, line: 268, type: !3)
!389 = !DILocalVariable(name: "mask", scope: !366, file: !1, line: 269, type: !3)
!390 = !DILocalVariable(name: "a0_0", scope: !366, file: !1, line: 270, type: !3)
!391 = !DILocalVariable(name: "a1_0", scope: !366, file: !1, line: 271, type: !3)
!392 = !DILocalVariable(name: "a2_0", scope: !366, file: !1, line: 272, type: !3)
!393 = !DILocation(line: 0, scope: !366)
!394 = !DILocalVariable(name: "tmp", arg: 1, scope: !395, file: !1, line: 94, type: !34)
!395 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_limb_", scope: !1, file: !1, line: 94, type: !367, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !396)
!396 = !{!394, !397, !399, !402, !403, !404, !405}
!397 = !DILocalVariable(name: "i", scope: !398, file: !1, line: 96, type: !8)
!398 = distinct !DILexicalBlock(scope: !395, file: !1, line: 96, column: 3)
!399 = !DILocalVariable(name: "ctr", scope: !400, file: !1, line: 98, type: !8)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 97, column: 3)
!401 = distinct !DILexicalBlock(scope: !398, file: !1, line: 96, column: 3)
!402 = !DILocalVariable(name: "tctr", scope: !400, file: !1, line: 99, type: !3)
!403 = !DILocalVariable(name: "tctrp1", scope: !400, file: !1, line: 100, type: !3)
!404 = !DILocalVariable(name: "r0", scope: !400, file: !1, line: 101, type: !3)
!405 = !DILocalVariable(name: "c", scope: !400, file: !1, line: 102, type: !3)
!406 = !DILocation(line: 0, scope: !395, inlinedAt: !407)
!407 = distinct !DILocation(line: 243, column: 3, scope: !366)
!408 = !DILocation(line: 0, scope: !398, inlinedAt: !407)
!409 = !DILocation(line: 96, column: 3, scope: !398, inlinedAt: !407)
!410 = !DILocation(line: 0, scope: !400, inlinedAt: !407)
!411 = !DILocation(line: 99, column: 21, scope: !400, inlinedAt: !407)
!412 = !DILocation(line: 100, column: 31, scope: !400, inlinedAt: !407)
!413 = !DILocation(line: 100, column: 23, scope: !400, inlinedAt: !407)
!414 = !DILocation(line: 101, column: 24, scope: !400, inlinedAt: !407)
!415 = !DILocation(line: 102, column: 23, scope: !400, inlinedAt: !407)
!416 = !DILocation(line: 103, column: 14, scope: !400, inlinedAt: !407)
!417 = !DILocation(line: 104, column: 38, scope: !400, inlinedAt: !407)
!418 = !DILocation(line: 104, column: 29, scope: !400, inlinedAt: !407)
!419 = !DILocation(line: 96, column: 37, scope: !401, inlinedAt: !407)
!420 = distinct !{!420, !409, !421, !422, !423}
!421 = !DILocation(line: 105, column: 3, scope: !398, inlinedAt: !407)
!422 = !{!"llvm.loop.mustprogress"}
!423 = !{!"llvm.loop.unroll.disable"}
!424 = !DILocalVariable(name: "b", arg: 1, scope: !425, file: !1, line: 33, type: !34)
!425 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top", scope: !1, file: !1, line: 33, type: !367, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !426)
!426 = !{!424, !427, !428, !429}
!427 = !DILocalVariable(name: "b2", scope: !425, file: !1, line: 35, type: !3)
!428 = !DILocalVariable(name: "b0", scope: !425, file: !1, line: 36, type: !3)
!429 = !DILocalVariable(name: "b2_42", scope: !425, file: !1, line: 37, type: !3)
!430 = !DILocation(line: 0, scope: !425, inlinedAt: !431)
!431 = distinct !DILocation(line: 244, column: 3, scope: !366)
!432 = !DILocation(line: 35, column: 17, scope: !425, inlinedAt: !431)
!433 = !DILocation(line: 36, column: 17, scope: !425, inlinedAt: !431)
!434 = !DILocation(line: 37, column: 23, scope: !425, inlinedAt: !431)
!435 = !DILocation(line: 38, column: 14, scope: !425, inlinedAt: !431)
!436 = !DILocation(line: 38, column: 9, scope: !425, inlinedAt: !431)
!437 = !DILocation(line: 39, column: 35, scope: !425, inlinedAt: !431)
!438 = !DILocation(line: 39, column: 43, scope: !425, inlinedAt: !431)
!439 = !DILocation(line: 39, column: 9, scope: !425, inlinedAt: !431)
!440 = !DILocation(line: 246, column: 18, scope: !366)
!441 = !DILocation(line: 248, column: 21, scope: !366)
!442 = !DILocation(line: 249, column: 20, scope: !366)
!443 = !DILocation(line: 250, column: 23, scope: !366)
!444 = !DILocation(line: 250, column: 29, scope: !366)
!445 = !DILocation(line: 251, column: 28, scope: !366)
!446 = !DILocation(line: 252, column: 22, scope: !366)
!447 = !DILocation(line: 253, column: 11, scope: !366)
!448 = !DILocation(line: 254, column: 11, scope: !366)
!449 = !DILocation(line: 0, scope: !425, inlinedAt: !450)
!450 = distinct !DILocation(line: 256, column: 3, scope: !366)
!451 = !DILocation(line: 37, column: 23, scope: !425, inlinedAt: !450)
!452 = !DILocation(line: 38, column: 14, scope: !425, inlinedAt: !450)
!453 = !DILocation(line: 38, column: 9, scope: !425, inlinedAt: !450)
!454 = !DILocation(line: 39, column: 35, scope: !425, inlinedAt: !450)
!455 = !DILocation(line: 39, column: 43, scope: !425, inlinedAt: !450)
!456 = !DILocation(line: 259, column: 21, scope: !366)
!457 = !DILocation(line: 260, column: 27, scope: !366)
!458 = !DILocation(line: 260, column: 21, scope: !366)
!459 = !DILocation(line: 261, column: 11, scope: !366)
!460 = !DILocation(line: 262, column: 11, scope: !366)
!461 = !DILocalVariable(name: "x", arg: 1, scope: !462, file: !463, line: 168, type: !3)
!462 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !463, file: !463, line: 168, type: !464, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !466)
!463 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!464 = !DISubroutineType(types: !465)
!465 = !{!3, !3, !3}
!466 = !{!461, !467, !468, !469}
!467 = !DILocalVariable(name: "y", arg: 2, scope: !462, file: !463, line: 168, type: !3)
!468 = !DILocalVariable(name: "low63", scope: !462, file: !463, line: 169, type: !3)
!469 = !DILocalVariable(name: "high_bit", scope: !462, file: !463, line: 173, type: !3)
!470 = !DILocation(line: 0, scope: !462, inlinedAt: !471)
!471 = distinct !DILocation(line: 266, column: 20, scope: !366)
!472 = !DILocation(line: 170, column: 74, scope: !462, inlinedAt: !471)
!473 = !DILocation(line: 177, column: 16, scope: !462, inlinedAt: !471)
!474 = !DILocalVariable(name: "x", arg: 1, scope: !475, file: !463, line: 157, type: !3)
!475 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !463, file: !463, line: 157, type: !464, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !476)
!476 = !{!474, !477}
!477 = !DILocalVariable(name: "y", arg: 2, scope: !475, file: !463, line: 157, type: !3)
!478 = !DILocation(line: 0, scope: !475, inlinedAt: !479)
!479 = distinct !DILocation(line: 267, column: 20, scope: !366)
!480 = !DILocation(line: 158, column: 7, scope: !475, inlinedAt: !479)
!481 = !DILocation(line: 159, column: 10, scope: !475, inlinedAt: !479)
!482 = !DILocation(line: 159, column: 5, scope: !475, inlinedAt: !479)
!483 = !DILocation(line: 160, column: 10, scope: !475, inlinedAt: !479)
!484 = !DILocation(line: 160, column: 5, scope: !475, inlinedAt: !479)
!485 = !DILocation(line: 161, column: 10, scope: !475, inlinedAt: !479)
!486 = !DILocation(line: 161, column: 5, scope: !475, inlinedAt: !479)
!487 = !DILocation(line: 162, column: 10, scope: !475, inlinedAt: !479)
!488 = !DILocation(line: 162, column: 5, scope: !475, inlinedAt: !479)
!489 = !DILocation(line: 163, column: 10, scope: !475, inlinedAt: !479)
!490 = !DILocation(line: 163, column: 5, scope: !475, inlinedAt: !479)
!491 = !DILocation(line: 164, column: 10, scope: !475, inlinedAt: !479)
!492 = !DILocation(line: 164, column: 5, scope: !475, inlinedAt: !479)
!493 = !DILocation(line: 0, scope: !475, inlinedAt: !494)
!494 = distinct !DILocation(line: 268, column: 20, scope: !366)
!495 = !DILocation(line: 158, column: 7, scope: !475, inlinedAt: !494)
!496 = !DILocation(line: 159, column: 10, scope: !475, inlinedAt: !494)
!497 = !DILocation(line: 159, column: 5, scope: !475, inlinedAt: !494)
!498 = !DILocation(line: 160, column: 10, scope: !475, inlinedAt: !494)
!499 = !DILocation(line: 160, column: 5, scope: !475, inlinedAt: !494)
!500 = !DILocation(line: 161, column: 10, scope: !475, inlinedAt: !494)
!501 = !DILocation(line: 161, column: 5, scope: !475, inlinedAt: !494)
!502 = !DILocation(line: 162, column: 10, scope: !475, inlinedAt: !494)
!503 = !DILocation(line: 162, column: 5, scope: !475, inlinedAt: !494)
!504 = !DILocation(line: 163, column: 10, scope: !475, inlinedAt: !494)
!505 = !DILocation(line: 163, column: 5, scope: !475, inlinedAt: !494)
!506 = !DILocation(line: 164, column: 10, scope: !475, inlinedAt: !494)
!507 = !DILocation(line: 164, column: 5, scope: !475, inlinedAt: !494)
!508 = !DILocation(line: 269, column: 26, scope: !366)
!509 = !DILocation(line: 269, column: 35, scope: !366)
!510 = !DILocation(line: 270, column: 51, scope: !366)
!511 = !DILocation(line: 270, column: 23, scope: !366)
!512 = !DILocation(line: 271, column: 50, scope: !366)
!513 = !DILocation(line: 271, column: 22, scope: !366)
!514 = !DILocation(line: 272, column: 50, scope: !366)
!515 = !DILocation(line: 272, column: 22, scope: !366)
!516 = !DILocation(line: 273, column: 11, scope: !366)
!517 = !DILocation(line: 274, column: 11, scope: !366)
!518 = !DILocation(line: 275, column: 11, scope: !366)
!519 = !DILocation(line: 276, column: 1, scope: !366)
!520 = distinct !DISubprogram(name: "Hacl_Poly1305_64_finish", scope: !1, file: !1, line: 477, type: !521, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !29, !60, !60}
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!524 = !DILocalVariable(name: "st", arg: 1, scope: !520, file: !1, line: 478, type: !29)
!525 = !DILocalVariable(name: "mac", arg: 2, scope: !520, file: !1, line: 479, type: !60)
!526 = !DILocalVariable(name: "k1", arg: 3, scope: !520, file: !1, line: 480, type: !60)
!527 = !DILocalVariable(name: "scrut", scope: !520, file: !1, line: 483, type: !29)
!528 = !DILocalVariable(name: "h", scope: !520, file: !1, line: 484, type: !34)
!529 = !DILocalVariable(name: "acc", scope: !520, file: !1, line: 485, type: !34)
!530 = !DILocalVariable(name: "k_", scope: !520, file: !1, line: 486, type: !68)
!531 = !DILocalVariable(name: "h0", scope: !520, file: !1, line: 487, type: !3)
!532 = !DILocalVariable(name: "h1", scope: !520, file: !1, line: 488, type: !3)
!533 = !DILocalVariable(name: "h2", scope: !520, file: !1, line: 489, type: !3)
!534 = !DILocalVariable(name: "acc_", scope: !520, file: !1, line: 491, type: !68)
!535 = !DILocalVariable(name: "mac_", scope: !520, file: !1, line: 497, type: !68)
!536 = !DILocation(line: 0, scope: !520)
!537 = !DILocation(line: 0, scope: !84, inlinedAt: !538)
!538 = distinct !DILocation(line: 486, column: 24, scope: !520)
!539 = !DILocation(line: 0, scope: !94, inlinedAt: !540)
!540 = distinct !DILocation(line: 545, column: 3, scope: !84, inlinedAt: !538)
!541 = !DILocation(line: 0, scope: !103, inlinedAt: !542)
!542 = distinct !DILocation(line: 518, column: 12, scope: !94, inlinedAt: !540)
!543 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !542)
!544 = !{!545}
!545 = distinct !{!545, !546, !"load128_le: argument 0"}
!546 = distinct !{!546, !"load128_le"}
!547 = !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !540)
!548 = !DILocation(line: 0, scope: !103, inlinedAt: !549)
!549 = distinct !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !540)
!550 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !549)
!551 = !DILocation(line: 487, column: 17, scope: !520)
!552 = !DILocation(line: 488, column: 17, scope: !520)
!553 = !DILocation(line: 489, column: 17, scope: !520)
!554 = !DILocation(line: 490, column: 3, scope: !520)
!555 = !DILocation(line: 491, column: 3, scope: !520)
!556 = !DILocation(line: 493, column: 11, scope: !520)
!557 = !DILocation(line: 494, column: 16, scope: !520)
!558 = !DILocation(line: 494, column: 11, scope: !520)
!559 = !DILocation(line: 492, column: 50, scope: !520)
!560 = !DILocation(line: 492, column: 25, scope: !520)
!561 = !DILocation(line: 496, column: 42, scope: !520)
!562 = !DILocation(line: 496, column: 59, scope: !520)
!563 = !DILocation(line: 496, column: 7, scope: !520)
!564 = !DILocation(line: 492, column: 5, scope: !520)
!565 = !DILocation(line: 497, column: 3, scope: !520)
!566 = !DILocation(line: 497, column: 19, scope: !520)
!567 = !DILocation(line: 497, column: 26, scope: !520)
!568 = !DILocation(line: 498, column: 3, scope: !520)
!569 = !DILocalVariable(name: "n", arg: 2, scope: !570, file: !85, line: 549, type: !88)
!570 = distinct !DISubprogram(name: "store128_le", scope: !85, file: !85, line: 549, type: !571, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !60, !88}
!573 = !{!574, !569}
!574 = !DILocalVariable(name: "b", arg: 1, scope: !570, file: !85, line: 549, type: !60)
!575 = !DILocation(line: 0, scope: !570, inlinedAt: !576)
!576 = distinct !DILocation(line: 498, column: 3, scope: !520)
!577 = !DILocalVariable(name: "b", arg: 1, scope: !578, file: !85, line: 522, type: !60)
!578 = distinct !DISubprogram(name: "store128_le_", scope: !85, file: !85, line: 522, type: !95, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !579)
!579 = !{!577, !580}
!580 = !DILocalVariable(name: "n", arg: 2, scope: !578, file: !85, line: 522, type: !97)
!581 = !DILocation(line: 0, scope: !578, inlinedAt: !582)
!582 = distinct !DILocation(line: 549, column: 59, scope: !570, inlinedAt: !576)
!583 = !DILocalVariable(name: "b", arg: 1, scope: !584, file: !85, line: 357, type: !60)
!584 = distinct !DISubprogram(name: "store64", scope: !85, file: !85, line: 357, type: !585, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !60, !3}
!587 = !{!583, !588}
!588 = !DILocalVariable(name: "i", arg: 2, scope: !584, file: !85, line: 357, type: !3)
!589 = !DILocation(line: 0, scope: !584, inlinedAt: !590)
!590 = distinct !DILocation(line: 523, column: 3, scope: !578, inlinedAt: !582)
!591 = !DILocation(line: 357, column: 54, scope: !584, inlinedAt: !590)
!592 = !DILocation(line: 524, column: 3, scope: !578, inlinedAt: !582)
!593 = !DILocation(line: 0, scope: !584, inlinedAt: !594)
!594 = distinct !DILocation(line: 524, column: 3, scope: !578, inlinedAt: !582)
!595 = !DILocation(line: 357, column: 54, scope: !584, inlinedAt: !594)
!596 = !DILocation(line: 499, column: 1, scope: !520)
!597 = !DISubprogram(name: "FStar_UInt128_add_mod", scope: !69, file: !69, line: 43, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !147)
!598 = distinct !DISubprogram(name: "Hacl_Poly1305_64_crypto_onetimeauth", scope: !1, file: !1, line: 502, type: !599, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !60, !60, !3, !60}
!601 = !{!602, !603, !604, !605}
!602 = !DILocalVariable(name: "output", arg: 1, scope: !598, file: !1, line: 503, type: !60)
!603 = !DILocalVariable(name: "input", arg: 2, scope: !598, file: !1, line: 504, type: !60)
!604 = !DILocalVariable(name: "len1", arg: 3, scope: !598, file: !1, line: 505, type: !3)
!605 = !DILocalVariable(name: "k1", arg: 4, scope: !598, file: !1, line: 506, type: !60)
!606 = !DILocation(line: 0, scope: !598)
!607 = !DILocalVariable(name: "output", arg: 1, scope: !608, file: !1, line: 394, type: !60)
!608 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_crypto_onetimeauth", scope: !1, file: !1, line: 393, type: !599, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !609)
!609 = !{!607, !610, !611, !612}
!610 = !DILocalVariable(name: "input", arg: 2, scope: !608, file: !1, line: 395, type: !60)
!611 = !DILocalVariable(name: "len1", arg: 3, scope: !608, file: !1, line: 396, type: !3)
!612 = !DILocalVariable(name: "k1", arg: 4, scope: !608, file: !1, line: 397, type: !60)
!613 = !DILocation(line: 0, scope: !608, inlinedAt: !614)
!614 = distinct !DILocation(line: 509, column: 3, scope: !598)
!615 = !DILocation(line: 0, scope: !616, inlinedAt: !639)
!616 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_crypto_onetimeauth_", scope: !1, file: !1, line: 361, type: !599, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !617)
!617 = !{!618, !619, !620, !621, !622, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!618 = !DILocalVariable(name: "output", arg: 1, scope: !616, file: !1, line: 362, type: !60)
!619 = !DILocalVariable(name: "input", arg: 2, scope: !616, file: !1, line: 363, type: !60)
!620 = !DILocalVariable(name: "len1", arg: 3, scope: !616, file: !1, line: 364, type: !3)
!621 = !DILocalVariable(name: "k1", arg: 4, scope: !616, file: !1, line: 365, type: !60)
!622 = !DILocalVariable(name: "buf", scope: !616, file: !1, line: 368, type: !623)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 384, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 6)
!626 = !DILocalVariable(name: "r", scope: !616, file: !1, line: 369, type: !34)
!627 = !DILocalVariable(name: "h", scope: !616, file: !1, line: 370, type: !34)
!628 = !DILocalVariable(name: "st", scope: !616, file: !1, line: 371, type: !29)
!629 = !DILocalVariable(name: "key_s", scope: !616, file: !1, line: 372, type: !60)
!630 = !DILocalVariable(name: "scrut", scope: !616, file: !1, line: 374, type: !29)
!631 = !DILocalVariable(name: "h3", scope: !616, file: !1, line: 375, type: !34)
!632 = !DILocalVariable(name: "acc", scope: !616, file: !1, line: 376, type: !34)
!633 = !DILocalVariable(name: "k_", scope: !616, file: !1, line: 377, type: !68)
!634 = !DILocalVariable(name: "h0", scope: !616, file: !1, line: 378, type: !3)
!635 = !DILocalVariable(name: "h1", scope: !616, file: !1, line: 379, type: !3)
!636 = !DILocalVariable(name: "h2", scope: !616, file: !1, line: 380, type: !3)
!637 = !DILocalVariable(name: "acc_", scope: !616, file: !1, line: 382, type: !68)
!638 = !DILocalVariable(name: "mac_", scope: !616, file: !1, line: 388, type: !68)
!639 = distinct !DILocation(line: 400, column: 3, scope: !608, inlinedAt: !614)
!640 = !DILocation(line: 368, column: 3, scope: !616, inlinedAt: !639)
!641 = !DILocation(line: 368, column: 12, scope: !616, inlinedAt: !639)
!642 = !DILocation(line: 369, column: 17, scope: !616, inlinedAt: !639)
!643 = !DILocation(line: 370, column: 21, scope: !616, inlinedAt: !639)
!644 = !DILocalVariable(name: "st", arg: 1, scope: !645, file: !1, line: 340, type: !29)
!645 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_poly1305_complete", scope: !1, file: !1, line: 339, type: !646, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !29, !60, !3, !60}
!648 = !{!644, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!649 = !DILocalVariable(name: "m", arg: 2, scope: !645, file: !1, line: 341, type: !60)
!650 = !DILocalVariable(name: "len1", arg: 3, scope: !645, file: !1, line: 342, type: !3)
!651 = !DILocalVariable(name: "k1", arg: 4, scope: !645, file: !1, line: 343, type: !60)
!652 = !DILocalVariable(name: "kr", scope: !645, file: !1, line: 346, type: !60)
!653 = !DILocalVariable(name: "len16", scope: !645, file: !1, line: 347, type: !3)
!654 = !DILocalVariable(name: "rem16", scope: !645, file: !1, line: 348, type: !3)
!655 = !DILocalVariable(name: "part_input", scope: !645, file: !1, line: 349, type: !60)
!656 = !DILocalVariable(name: "last_block", scope: !645, file: !1, line: 350, type: !60)
!657 = !DILocalVariable(name: "scrut", scope: !645, file: !1, line: 354, type: !29)
!658 = !DILocalVariable(name: "h", scope: !645, file: !1, line: 355, type: !34)
!659 = !DILocalVariable(name: "acc", scope: !645, file: !1, line: 356, type: !34)
!660 = !DILocation(line: 0, scope: !645, inlinedAt: !661)
!661 = distinct !DILocation(line: 373, column: 3, scope: !616, inlinedAt: !639)
!662 = !DILocation(line: 347, column: 25, scope: !645, inlinedAt: !661)
!663 = !DILocation(line: 348, column: 25, scope: !645, inlinedAt: !661)
!664 = !DILocation(line: 0, scope: !665, inlinedAt: !682)
!665 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_poly1305_partial", scope: !1, file: !1, line: 302, type: !646, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!667 = !DILocalVariable(name: "st", arg: 1, scope: !665, file: !1, line: 303, type: !29)
!668 = !DILocalVariable(name: "input", arg: 2, scope: !665, file: !1, line: 304, type: !60)
!669 = !DILocalVariable(name: "len1", arg: 3, scope: !665, file: !1, line: 305, type: !3)
!670 = !DILocalVariable(name: "kr", arg: 4, scope: !665, file: !1, line: 306, type: !60)
!671 = !DILocalVariable(name: "scrut", scope: !665, file: !1, line: 309, type: !29)
!672 = !DILocalVariable(name: "r", scope: !665, file: !1, line: 310, type: !34)
!673 = !DILocalVariable(name: "x0", scope: !665, file: !1, line: 311, type: !34)
!674 = !DILocalVariable(name: "k1", scope: !665, file: !1, line: 312, type: !68)
!675 = !DILocalVariable(name: "k_clamped", scope: !665, file: !1, line: 314, type: !68)
!676 = !DILocalVariable(name: "r0", scope: !665, file: !1, line: 319, type: !3)
!677 = !DILocalVariable(name: "r1", scope: !665, file: !1, line: 321, type: !3)
!678 = !DILocalVariable(name: "r2", scope: !665, file: !1, line: 325, type: !3)
!679 = !DILocalVariable(name: "scrut0", scope: !665, file: !1, line: 329, type: !29)
!680 = !DILocalVariable(name: "h", scope: !665, file: !1, line: 330, type: !34)
!681 = !DILocalVariable(name: "x00", scope: !665, file: !1, line: 331, type: !34)
!682 = distinct !DILocation(line: 351, column: 3, scope: !645, inlinedAt: !661)
!683 = !DILocation(line: 0, scope: !84, inlinedAt: !684)
!684 = distinct !DILocation(line: 312, column: 24, scope: !665, inlinedAt: !682)
!685 = !DILocation(line: 0, scope: !94, inlinedAt: !686)
!686 = distinct !DILocation(line: 545, column: 3, scope: !84, inlinedAt: !684)
!687 = !DILocation(line: 0, scope: !103, inlinedAt: !688)
!688 = distinct !DILocation(line: 518, column: 12, scope: !94, inlinedAt: !686)
!689 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !688)
!690 = !{!691}
!691 = distinct !{!691, !692, !"load128_le: argument 0"}
!692 = distinct !{!692, !"load128_le"}
!693 = !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !686)
!694 = !DILocation(line: 0, scope: !103, inlinedAt: !695)
!695 = distinct !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !686)
!696 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !695)
!697 = !DILocation(line: 313, column: 3, scope: !665, inlinedAt: !682)
!698 = !DILocation(line: 314, column: 3, scope: !665, inlinedAt: !682)
!699 = !DILocation(line: 316, column: 52, scope: !665, inlinedAt: !682)
!700 = !DILocation(line: 316, column: 27, scope: !665, inlinedAt: !682)
!701 = !DILocation(line: 318, column: 9, scope: !665, inlinedAt: !682)
!702 = !DILocation(line: 316, column: 7, scope: !665, inlinedAt: !682)
!703 = !DILocation(line: 315, column: 5, scope: !665, inlinedAt: !682)
!704 = !DILocation(line: 319, column: 17, scope: !665, inlinedAt: !682)
!705 = !DILocation(line: 319, column: 60, scope: !665, inlinedAt: !682)
!706 = !DILocation(line: 322, column: 37, scope: !665, inlinedAt: !682)
!707 = !DILocation(line: 322, column: 5, scope: !665, inlinedAt: !682)
!708 = !DILocation(line: 323, column: 5, scope: !665, inlinedAt: !682)
!709 = !DILocation(line: 325, column: 40, scope: !665, inlinedAt: !682)
!710 = !DILocation(line: 325, column: 8, scope: !665, inlinedAt: !682)
!711 = !DILocation(line: 326, column: 10, scope: !665, inlinedAt: !682)
!712 = !DILocation(line: 327, column: 3, scope: !665, inlinedAt: !682)
!713 = !DILocation(line: 327, column: 10, scope: !665, inlinedAt: !682)
!714 = !DILocation(line: 328, column: 3, scope: !665, inlinedAt: !682)
!715 = !DILocation(line: 328, column: 10, scope: !665, inlinedAt: !682)
!716 = !DILocation(line: 335, column: 3, scope: !665, inlinedAt: !682)
!717 = !DILocation(line: 333, column: 11, scope: !665, inlinedAt: !682)
!718 = !DILocation(line: 336, column: 1, scope: !665, inlinedAt: !682)
!719 = !DILocation(line: 352, column: 15, scope: !720, inlinedAt: !661)
!720 = distinct !DILexicalBlock(scope: !645, file: !1, line: 352, column: 7)
!721 = !DILocation(line: 352, column: 7, scope: !645, inlinedAt: !661)
!722 = !DILocation(line: 350, column: 29, scope: !645, inlinedAt: !661)
!723 = !DILocation(line: 350, column: 27, scope: !645, inlinedAt: !661)
!724 = !DILocation(line: 0, scope: !289, inlinedAt: !725)
!725 = distinct !DILocation(line: 353, column: 5, scope: !720, inlinedAt: !661)
!726 = !DILocation(line: 231, column: 3, scope: !289, inlinedAt: !725)
!727 = !DILocation(line: 231, column: 11, scope: !289, inlinedAt: !725)
!728 = !DILocation(line: 234, column: 17, scope: !289, inlinedAt: !725)
!729 = !DILocation(line: 236, column: 3, scope: !289, inlinedAt: !725)
!730 = !DILocation(line: 237, column: 13, scope: !289, inlinedAt: !725)
!731 = !DILocation(line: 0, scope: !313, inlinedAt: !732)
!732 = distinct !DILocation(line: 238, column: 3, scope: !289, inlinedAt: !725)
!733 = !DILocation(line: 204, column: 3, scope: !313, inlinedAt: !732)
!734 = !DILocation(line: 204, column: 12, scope: !313, inlinedAt: !732)
!735 = !DILocation(line: 0, scope: !84, inlinedAt: !736)
!736 = distinct !DILocation(line: 205, column: 24, scope: !313, inlinedAt: !732)
!737 = !DILocation(line: 0, scope: !94, inlinedAt: !738)
!738 = distinct !DILocation(line: 545, column: 3, scope: !84, inlinedAt: !736)
!739 = !DILocation(line: 0, scope: !103, inlinedAt: !740)
!740 = distinct !DILocation(line: 518, column: 12, scope: !94, inlinedAt: !738)
!741 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !740)
!742 = !{!743}
!743 = distinct !{!743, !744, !"load128_le: argument 0"}
!744 = distinct !{!744, !"load128_le"}
!745 = !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !738)
!746 = !DILocation(line: 0, scope: !103, inlinedAt: !747)
!747 = distinct !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !738)
!748 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !747)
!749 = !DILocation(line: 206, column: 17, scope: !313, inlinedAt: !732)
!750 = !DILocation(line: 206, column: 53, scope: !313, inlinedAt: !732)
!751 = !DILocation(line: 209, column: 37, scope: !313, inlinedAt: !732)
!752 = !DILocation(line: 209, column: 5, scope: !313, inlinedAt: !732)
!753 = !DILocation(line: 210, column: 5, scope: !313, inlinedAt: !732)
!754 = !DILocation(line: 211, column: 49, scope: !313, inlinedAt: !732)
!755 = !DILocation(line: 211, column: 17, scope: !313, inlinedAt: !732)
!756 = !DILocation(line: 212, column: 3, scope: !313, inlinedAt: !732)
!757 = !DILocation(line: 212, column: 11, scope: !313, inlinedAt: !732)
!758 = !DILocation(line: 213, column: 3, scope: !313, inlinedAt: !732)
!759 = !DILocation(line: 213, column: 11, scope: !313, inlinedAt: !732)
!760 = !DILocation(line: 214, column: 3, scope: !313, inlinedAt: !732)
!761 = !DILocation(line: 214, column: 11, scope: !313, inlinedAt: !732)
!762 = !DILocation(line: 219, column: 3, scope: !313, inlinedAt: !732)
!763 = !DILocation(line: 220, column: 1, scope: !313, inlinedAt: !732)
!764 = !DILocation(line: 239, column: 1, scope: !289, inlinedAt: !725)
!765 = !DILocation(line: 353, column: 5, scope: !720, inlinedAt: !661)
!766 = !DILocation(line: 372, column: 23, scope: !616, inlinedAt: !639)
!767 = !DILocation(line: 357, column: 3, scope: !645, inlinedAt: !661)
!768 = !DILocation(line: 0, scope: !84, inlinedAt: !769)
!769 = distinct !DILocation(line: 377, column: 24, scope: !616, inlinedAt: !639)
!770 = !DILocation(line: 0, scope: !94, inlinedAt: !771)
!771 = distinct !DILocation(line: 545, column: 3, scope: !84, inlinedAt: !769)
!772 = !DILocation(line: 0, scope: !103, inlinedAt: !773)
!773 = distinct !DILocation(line: 518, column: 12, scope: !94, inlinedAt: !771)
!774 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !773)
!775 = !{!776}
!776 = distinct !{!776, !777, !"load128_le: argument 0"}
!777 = distinct !{!777, !"load128_le"}
!778 = !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !771)
!779 = !DILocation(line: 0, scope: !103, inlinedAt: !780)
!780 = distinct !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !771)
!781 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !780)
!782 = !DILocation(line: 378, column: 17, scope: !616, inlinedAt: !639)
!783 = !DILocation(line: 379, column: 17, scope: !616, inlinedAt: !639)
!784 = !DILocation(line: 380, column: 17, scope: !616, inlinedAt: !639)
!785 = !DILocation(line: 381, column: 3, scope: !616, inlinedAt: !639)
!786 = !DILocation(line: 382, column: 3, scope: !616, inlinedAt: !639)
!787 = !DILocation(line: 384, column: 11, scope: !616, inlinedAt: !639)
!788 = !DILocation(line: 385, column: 16, scope: !616, inlinedAt: !639)
!789 = !DILocation(line: 385, column: 11, scope: !616, inlinedAt: !639)
!790 = !DILocation(line: 383, column: 50, scope: !616, inlinedAt: !639)
!791 = !DILocation(line: 383, column: 25, scope: !616, inlinedAt: !639)
!792 = !DILocation(line: 387, column: 42, scope: !616, inlinedAt: !639)
!793 = !DILocation(line: 387, column: 59, scope: !616, inlinedAt: !639)
!794 = !DILocation(line: 387, column: 7, scope: !616, inlinedAt: !639)
!795 = !DILocation(line: 383, column: 5, scope: !616, inlinedAt: !639)
!796 = !DILocation(line: 388, column: 3, scope: !616, inlinedAt: !639)
!797 = !DILocation(line: 388, column: 19, scope: !616, inlinedAt: !639)
!798 = !DILocation(line: 388, column: 26, scope: !616, inlinedAt: !639)
!799 = !DILocation(line: 389, column: 3, scope: !616, inlinedAt: !639)
!800 = !DILocation(line: 0, scope: !570, inlinedAt: !801)
!801 = distinct !DILocation(line: 389, column: 3, scope: !616, inlinedAt: !639)
!802 = !DILocation(line: 0, scope: !578, inlinedAt: !803)
!803 = distinct !DILocation(line: 549, column: 59, scope: !570, inlinedAt: !801)
!804 = !DILocation(line: 0, scope: !584, inlinedAt: !805)
!805 = distinct !DILocation(line: 523, column: 3, scope: !578, inlinedAt: !803)
!806 = !DILocation(line: 357, column: 54, scope: !584, inlinedAt: !805)
!807 = !DILocation(line: 524, column: 3, scope: !578, inlinedAt: !803)
!808 = !DILocation(line: 0, scope: !584, inlinedAt: !809)
!809 = distinct !DILocation(line: 524, column: 3, scope: !578, inlinedAt: !803)
!810 = !DILocation(line: 357, column: 54, scope: !584, inlinedAt: !809)
!811 = !DILocation(line: 390, column: 1, scope: !616, inlinedAt: !639)
!812 = !DILocation(line: 510, column: 1, scope: !598)
!813 = distinct !DISubprogram(name: "Hacl_Bignum_AddAndMultiply_add_and_multiply", scope: !1, file: !1, line: 156, type: !814, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !34, !34, !34}
!816 = !{!817, !818, !819, !820, !822, !825}
!817 = !DILocalVariable(name: "acc", arg: 1, scope: !813, file: !1, line: 156, type: !34)
!818 = !DILocalVariable(name: "block", arg: 2, scope: !813, file: !1, line: 156, type: !34)
!819 = !DILocalVariable(name: "r", arg: 3, scope: !813, file: !1, line: 156, type: !34)
!820 = !DILocalVariable(name: "i", scope: !821, file: !1, line: 158, type: !8)
!821 = distinct !DILexicalBlock(scope: !813, file: !1, line: 158, column: 3)
!822 = !DILocalVariable(name: "xi", scope: !823, file: !1, line: 160, type: !3)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 159, column: 3)
!824 = distinct !DILexicalBlock(scope: !821, file: !1, line: 158, column: 3)
!825 = !DILocalVariable(name: "yi", scope: !823, file: !1, line: 161, type: !3)
!826 = !DILocation(line: 0, scope: !813)
!827 = !DILocation(line: 0, scope: !821)
!828 = !DILocation(line: 158, column: 3, scope: !821)
!829 = !DILocalVariable(name: "output", arg: 1, scope: !830, file: !1, line: 135, type: !34)
!830 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_fmul", scope: !1, file: !1, line: 135, type: !814, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !831)
!831 = !{!829, !832, !833, !834, !835, !837, !839, !840, !841, !842}
!832 = !DILocalVariable(name: "input", arg: 2, scope: !830, file: !1, line: 135, type: !34)
!833 = !DILocalVariable(name: "input2", arg: 3, scope: !830, file: !1, line: 135, type: !34)
!834 = !DILocalVariable(name: "tmp", scope: !830, file: !1, line: 137, type: !176)
!835 = !DILocalVariable(name: "t", scope: !830, file: !1, line: 140, type: !836)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 384, elements: !177)
!837 = !DILocalVariable(name: "_i", scope: !838, file: !1, line: 141, type: !8)
!838 = distinct !DILexicalBlock(scope: !830, file: !1, line: 141, column: 3)
!839 = !DILocalVariable(name: "i0", scope: !830, file: !1, line: 147, type: !3)
!840 = !DILocalVariable(name: "i1", scope: !830, file: !1, line: 148, type: !3)
!841 = !DILocalVariable(name: "i0_", scope: !830, file: !1, line: 149, type: !3)
!842 = !DILocalVariable(name: "i1_", scope: !830, file: !1, line: 150, type: !3)
!843 = !DILocation(line: 0, scope: !830, inlinedAt: !844)
!844 = distinct !DILocation(line: 164, column: 3, scope: !813)
!845 = !DILocation(line: 137, column: 3, scope: !830, inlinedAt: !844)
!846 = !DILocation(line: 137, column: 12, scope: !830, inlinedAt: !844)
!847 = !DILocation(line: 138, column: 3, scope: !830, inlinedAt: !844)
!848 = !DILocation(line: 140, column: 3, scope: !830, inlinedAt: !844)
!849 = !DILocation(line: 140, column: 19, scope: !830, inlinedAt: !844)
!850 = !DILocation(line: 0, scope: !838, inlinedAt: !844)
!851 = !DILocation(line: 141, column: 3, scope: !838, inlinedAt: !844)
!852 = !DILocalVariable(name: "output", arg: 1, scope: !853, file: !1, line: 122, type: !856)
!853 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_mul_shift_reduce_", scope: !1, file: !1, line: 122, type: !854, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !857)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !856, !34, !34}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!857 = !{!852, !858, !859, !860, !862, !865, !866}
!858 = !DILocalVariable(name: "input", arg: 2, scope: !853, file: !1, line: 122, type: !34)
!859 = !DILocalVariable(name: "input2", arg: 3, scope: !853, file: !1, line: 122, type: !34)
!860 = !DILocalVariable(name: "i", scope: !861, file: !1, line: 124, type: !8)
!861 = distinct !DILexicalBlock(scope: !853, file: !1, line: 124, column: 3)
!862 = !DILocalVariable(name: "input2i", scope: !863, file: !1, line: 126, type: !3)
!863 = distinct !DILexicalBlock(scope: !864, file: !1, line: 125, column: 3)
!864 = distinct !DILexicalBlock(scope: !861, file: !1, line: 124, column: 3)
!865 = !DILocalVariable(name: "i", scope: !853, file: !1, line: 130, type: !8)
!866 = !DILocalVariable(name: "input2i", scope: !853, file: !1, line: 131, type: !3)
!867 = !DILocation(line: 0, scope: !853, inlinedAt: !868)
!868 = distinct !DILocation(line: 143, column: 3, scope: !830, inlinedAt: !844)
!869 = !DILocation(line: 0, scope: !861, inlinedAt: !868)
!870 = !DILocation(line: 124, column: 3, scope: !861, inlinedAt: !868)
!871 = !DILocation(line: 131, column: 22, scope: !853, inlinedAt: !868)
!872 = !DILocation(line: 0, scope: !873, inlinedAt: !886)
!873 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_sum_scalar_multiplication_", scope: !1, file: !1, line: 66, type: !874, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !856, !34, !3}
!876 = !{!877, !878, !879, !880, !882, !885}
!877 = !DILocalVariable(name: "output", arg: 1, scope: !873, file: !1, line: 67, type: !856)
!878 = !DILocalVariable(name: "input", arg: 2, scope: !873, file: !1, line: 68, type: !34)
!879 = !DILocalVariable(name: "s", arg: 3, scope: !873, file: !1, line: 69, type: !3)
!880 = !DILocalVariable(name: "i", scope: !881, file: !1, line: 72, type: !8)
!881 = distinct !DILexicalBlock(scope: !873, file: !1, line: 72, column: 3)
!882 = !DILocalVariable(name: "xi", scope: !883, file: !1, line: 74, type: !68)
!883 = distinct !DILexicalBlock(scope: !884, file: !1, line: 73, column: 3)
!884 = distinct !DILexicalBlock(scope: !881, file: !1, line: 72, column: 3)
!885 = !DILocalVariable(name: "yi", scope: !883, file: !1, line: 75, type: !3)
!886 = distinct !DILocation(line: 132, column: 3, scope: !853, inlinedAt: !868)
!887 = !DILocation(line: 0, scope: !881, inlinedAt: !886)
!888 = !DILocation(line: 72, column: 3, scope: !881, inlinedAt: !886)
!889 = !DILocation(line: 74, column: 26, scope: !883, inlinedAt: !886)
!890 = !{i64 0, i64 8, !137, i64 8, i64 8, !137}
!891 = !DILocation(line: 0, scope: !883, inlinedAt: !886)
!892 = !{i64 0, i64 8, !137}
!893 = !DILocation(line: 75, column: 19, scope: !883, inlinedAt: !886)
!894 = !DILocation(line: 76, column: 17, scope: !883, inlinedAt: !886)
!895 = !DILocation(line: 76, column: 43, scope: !883, inlinedAt: !886)
!896 = !DILocation(line: 72, column: 59, scope: !884, inlinedAt: !886)
!897 = !DILocation(line: 72, column: 37, scope: !884, inlinedAt: !886)
!898 = distinct !{!898, !888, !899, !422, !423}
!899 = !DILocation(line: 77, column: 3, scope: !881, inlinedAt: !886)
!900 = !DILocation(line: 126, column: 24, scope: !863, inlinedAt: !868)
!901 = !DILocation(line: 0, scope: !863, inlinedAt: !868)
!902 = !DILocation(line: 0, scope: !873, inlinedAt: !903)
!903 = distinct !DILocation(line: 127, column: 5, scope: !863, inlinedAt: !868)
!904 = !DILocation(line: 0, scope: !881, inlinedAt: !903)
!905 = !DILocation(line: 72, column: 3, scope: !881, inlinedAt: !903)
!906 = !DILocation(line: 74, column: 26, scope: !883, inlinedAt: !903)
!907 = !DILocation(line: 0, scope: !883, inlinedAt: !903)
!908 = !DILocation(line: 75, column: 19, scope: !883, inlinedAt: !903)
!909 = !DILocation(line: 76, column: 17, scope: !883, inlinedAt: !903)
!910 = !DILocation(line: 76, column: 43, scope: !883, inlinedAt: !903)
!911 = !DILocation(line: 72, column: 59, scope: !884, inlinedAt: !903)
!912 = !DILocation(line: 72, column: 37, scope: !884, inlinedAt: !903)
!913 = distinct !{!913, !905, !914, !422, !423}
!914 = !DILocation(line: 77, column: 3, scope: !881, inlinedAt: !903)
!915 = !DILocation(line: 78, column: 1, scope: !873, inlinedAt: !903)
!916 = !DILocalVariable(name: "output", arg: 1, scope: !917, file: !1, line: 108, type: !34)
!917 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_shift_reduce", scope: !1, file: !1, line: 108, type: !367, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !918)
!918 = !{!916, !919, !920, !922, !925}
!919 = !DILocalVariable(name: "tmp", scope: !917, file: !1, line: 110, type: !3)
!920 = !DILocalVariable(name: "i", scope: !921, file: !1, line: 111, type: !8)
!921 = distinct !DILexicalBlock(scope: !917, file: !1, line: 111, column: 3)
!922 = !DILocalVariable(name: "ctr", scope: !923, file: !1, line: 113, type: !8)
!923 = distinct !DILexicalBlock(scope: !924, file: !1, line: 112, column: 3)
!924 = distinct !DILexicalBlock(scope: !921, file: !1, line: 111, column: 3)
!925 = !DILocalVariable(name: "z", scope: !923, file: !1, line: 114, type: !3)
!926 = !DILocation(line: 0, scope: !917, inlinedAt: !927)
!927 = distinct !DILocation(line: 128, column: 5, scope: !863, inlinedAt: !868)
!928 = !DILocation(line: 110, column: 18, scope: !917, inlinedAt: !927)
!929 = !DILocation(line: 0, scope: !921, inlinedAt: !927)
!930 = !DILocation(line: 115, column: 17, scope: !923, inlinedAt: !927)
!931 = !DILocation(line: 0, scope: !923, inlinedAt: !927)
!932 = !DILocalVariable(name: "b", arg: 1, scope: !933, file: !1, line: 27, type: !34)
!933 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_reduce", scope: !1, file: !1, line: 27, type: !367, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !934)
!934 = !{!932, !935}
!935 = !DILocalVariable(name: "b0", scope: !933, file: !1, line: 29, type: !3)
!936 = !DILocation(line: 0, scope: !933, inlinedAt: !937)
!937 = distinct !DILocation(line: 118, column: 3, scope: !917, inlinedAt: !927)
!938 = !DILocation(line: 30, column: 32, scope: !933, inlinedAt: !937)
!939 = !DILocation(line: 30, column: 9, scope: !933, inlinedAt: !937)
!940 = !DILocation(line: 124, column: 59, scope: !864, inlinedAt: !868)
!941 = !DILocation(line: 124, column: 37, scope: !864, inlinedAt: !868)
!942 = distinct !{!942, !870, !943, !422, !423}
!943 = !DILocation(line: 129, column: 3, scope: !861, inlinedAt: !868)
!944 = !DILocation(line: 78, column: 1, scope: !873, inlinedAt: !886)
!945 = !DILocalVariable(name: "tmp", arg: 1, scope: !946, file: !1, line: 80, type: !856)
!946 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_wide_", scope: !1, file: !1, line: 80, type: !947, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !856}
!949 = !{!945, !950, !952, !955, !956, !957, !958}
!950 = !DILocalVariable(name: "i", scope: !951, file: !1, line: 82, type: !8)
!951 = distinct !DILexicalBlock(scope: !946, file: !1, line: 82, column: 3)
!952 = !DILocalVariable(name: "ctr", scope: !953, file: !1, line: 84, type: !8)
!953 = distinct !DILexicalBlock(scope: !954, file: !1, line: 83, column: 3)
!954 = distinct !DILexicalBlock(scope: !951, file: !1, line: 82, column: 3)
!955 = !DILocalVariable(name: "tctr", scope: !953, file: !1, line: 85, type: !68)
!956 = !DILocalVariable(name: "tctrp1", scope: !953, file: !1, line: 86, type: !68)
!957 = !DILocalVariable(name: "r0", scope: !953, file: !1, line: 87, type: !3)
!958 = !DILocalVariable(name: "c", scope: !953, file: !1, line: 88, type: !68)
!959 = !DILocation(line: 0, scope: !946, inlinedAt: !960)
!960 = distinct !DILocation(line: 144, column: 3, scope: !830, inlinedAt: !844)
!961 = !DILocation(line: 0, scope: !951, inlinedAt: !960)
!962 = !DILocation(line: 82, column: 3, scope: !951, inlinedAt: !960)
!963 = !DILocation(line: 0, scope: !953, inlinedAt: !960)
!964 = !DILocation(line: 85, column: 28, scope: !953, inlinedAt: !960)
!965 = !DILocation(line: 86, column: 38, scope: !953, inlinedAt: !960)
!966 = !DILocation(line: 86, column: 30, scope: !953, inlinedAt: !960)
!967 = !DILocation(line: 87, column: 19, scope: !953, inlinedAt: !960)
!968 = !DILocation(line: 87, column: 57, scope: !953, inlinedAt: !960)
!969 = !DILocation(line: 88, column: 5, scope: !953, inlinedAt: !960)
!970 = !DILocation(line: 88, column: 21, scope: !953, inlinedAt: !960)
!971 = !DILocation(line: 88, column: 25, scope: !953, inlinedAt: !960)
!972 = !DILocation(line: 89, column: 16, scope: !953, inlinedAt: !960)
!973 = !DILocation(line: 90, column: 31, scope: !953, inlinedAt: !960)
!974 = !DILocation(line: 91, column: 3, scope: !954, inlinedAt: !960)
!975 = !DILocation(line: 82, column: 37, scope: !954, inlinedAt: !960)
!976 = distinct !{!976, !962, !977, !422, !423}
!977 = !DILocation(line: 91, column: 3, scope: !951, inlinedAt: !960)
!978 = !DILocation(line: 0, scope: !979, inlinedAt: !987)
!979 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top_wide", scope: !1, file: !1, line: 42, type: !947, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !980)
!980 = !{!981, !982, !983, !984, !985, !986}
!981 = !DILocalVariable(name: "b", arg: 1, scope: !979, file: !1, line: 42, type: !856)
!982 = !DILocalVariable(name: "b2", scope: !979, file: !1, line: 44, type: !68)
!983 = !DILocalVariable(name: "b0", scope: !979, file: !1, line: 45, type: !68)
!984 = !DILocalVariable(name: "b2_", scope: !979, file: !1, line: 47, type: !68)
!985 = !DILocalVariable(name: "b2_42", scope: !979, file: !1, line: 48, type: !3)
!986 = !DILocalVariable(name: "b0_", scope: !979, file: !1, line: 50, type: !68)
!987 = distinct !DILocation(line: 145, column: 3, scope: !830, inlinedAt: !844)
!988 = !DILocation(line: 44, column: 24, scope: !979, inlinedAt: !987)
!989 = !DILocation(line: 45, column: 24, scope: !979, inlinedAt: !987)
!990 = !DILocation(line: 46, column: 3, scope: !979, inlinedAt: !987)
!991 = !DILocation(line: 47, column: 3, scope: !979, inlinedAt: !987)
!992 = !DILocation(line: 47, column: 34, scope: !979, inlinedAt: !987)
!993 = !DILocation(line: 47, column: 9, scope: !979, inlinedAt: !987)
!994 = !DILocation(line: 48, column: 52, scope: !979, inlinedAt: !987)
!995 = !DILocation(line: 48, column: 20, scope: !979, inlinedAt: !987)
!996 = !DILocation(line: 50, column: 87, scope: !979, inlinedAt: !987)
!997 = !DILocation(line: 50, column: 31, scope: !979, inlinedAt: !987)
!998 = !DILocation(line: 50, column: 9, scope: !979, inlinedAt: !987)
!999 = !DILocation(line: 51, column: 3, scope: !979, inlinedAt: !987)
!1000 = !DILocation(line: 51, column: 11, scope: !979, inlinedAt: !987)
!1001 = !DILocation(line: 53, column: 1, scope: !979, inlinedAt: !987)
!1002 = !DILocalVariable(name: "output", arg: 1, scope: !1003, file: !1, line: 56, type: !34)
!1003 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_copy_from_wide_", scope: !1, file: !1, line: 56, type: !1004, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !34, !856}
!1006 = !{!1002, !1007, !1008, !1010}
!1007 = !DILocalVariable(name: "input", arg: 2, scope: !1003, file: !1, line: 56, type: !856)
!1008 = !DILocalVariable(name: "i", scope: !1009, file: !1, line: 58, type: !8)
!1009 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 58, column: 3)
!1010 = !DILocalVariable(name: "xi", scope: !1011, file: !1, line: 60, type: !68)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 59, column: 3)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 58, column: 3)
!1013 = !DILocation(line: 0, scope: !1003, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 146, column: 3, scope: !830, inlinedAt: !844)
!1015 = !DILocation(line: 0, scope: !1009, inlinedAt: !1014)
!1016 = !DILocation(line: 58, column: 3, scope: !1009, inlinedAt: !1014)
!1017 = !DILocation(line: 60, column: 26, scope: !1011, inlinedAt: !1014)
!1018 = !DILocation(line: 0, scope: !1011, inlinedAt: !1014)
!1019 = !DILocation(line: 61, column: 17, scope: !1011, inlinedAt: !1014)
!1020 = !DILocation(line: 61, column: 5, scope: !1011, inlinedAt: !1014)
!1021 = !DILocation(line: 61, column: 15, scope: !1011, inlinedAt: !1014)
!1022 = !DILocation(line: 58, column: 59, scope: !1012, inlinedAt: !1014)
!1023 = !DILocation(line: 58, column: 37, scope: !1012, inlinedAt: !1014)
!1024 = distinct !{!1024, !1016, !1025, !422, !423}
!1025 = !DILocation(line: 62, column: 3, scope: !1009, inlinedAt: !1014)
!1026 = !DILocation(line: 142, column: 5, scope: !1027, inlinedAt: !844)
!1027 = distinct !DILexicalBlock(scope: !838, file: !1, line: 141, column: 3)
!1028 = !DILocation(line: 142, column: 13, scope: !1027, inlinedAt: !844)
!1029 = !DILocation(line: 141, column: 45, scope: !1027, inlinedAt: !844)
!1030 = !DILocation(line: 141, column: 29, scope: !1027, inlinedAt: !844)
!1031 = distinct !{!1031, !851, !1032, !422, !423}
!1032 = !DILocation(line: 142, column: 57, scope: !838, inlinedAt: !844)
!1033 = !DILocation(line: 147, column: 17, scope: !830, inlinedAt: !844)
!1034 = !DILocation(line: 148, column: 17, scope: !830, inlinedAt: !844)
!1035 = !DILocation(line: 149, column: 21, scope: !830, inlinedAt: !844)
!1036 = !DILocation(line: 150, column: 27, scope: !830, inlinedAt: !844)
!1037 = !DILocation(line: 150, column: 21, scope: !830, inlinedAt: !844)
!1038 = !DILocation(line: 151, column: 14, scope: !830, inlinedAt: !844)
!1039 = !DILocation(line: 152, column: 14, scope: !830, inlinedAt: !844)
!1040 = !DILocation(line: 153, column: 1, scope: !830, inlinedAt: !844)
!1041 = !DILocation(line: 165, column: 1, scope: !813)
!1042 = !DILocation(line: 160, column: 19, scope: !823)
!1043 = !DILocation(line: 0, scope: !823)
!1044 = !DILocation(line: 161, column: 19, scope: !823)
!1045 = !DILocation(line: 162, column: 17, scope: !823)
!1046 = !DILocation(line: 162, column: 12, scope: !823)
!1047 = !DILocation(line: 158, column: 59, scope: !824)
!1048 = !DILocation(line: 158, column: 37, scope: !824)
!1049 = distinct !{!1049, !828, !1050, !422, !423}
!1050 = !DILocation(line: 163, column: 3, scope: !821)
!1051 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !69, file: !69, line: 78, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !147)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!70, !3, !3}
!1054 = !DISubprogram(name: "FStar_UInt128_add", scope: !69, file: !69, line: 41, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !147)
!1055 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_poly1305_blocks", scope: !1, file: !1, line: 285, type: !290, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1063, !1064}
!1057 = !DILocalVariable(name: "st", arg: 1, scope: !1055, file: !1, line: 286, type: !29)
!1058 = !DILocalVariable(name: "m", arg: 2, scope: !1055, file: !1, line: 287, type: !60)
!1059 = !DILocalVariable(name: "len1", arg: 3, scope: !1055, file: !1, line: 288, type: !3)
!1060 = !DILocalVariable(name: "block", scope: !1061, file: !1, line: 293, type: !60)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 292, column: 3)
!1062 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 291, column: 7)
!1063 = !DILocalVariable(name: "tail1", scope: !1061, file: !1, line: 294, type: !60)
!1064 = !DILocalVariable(name: "len2", scope: !1061, file: !1, line: 296, type: !3)
!1065 = !DILocation(line: 0, scope: !1055)
!1066 = !DILocation(line: 291, column: 14, scope: !1062)
!1067 = !DILocation(line: 291, column: 7, scope: !1055)
!1068 = !DILocation(line: 0, scope: !1061)
!1069 = !DILocation(line: 294, column: 24, scope: !1061)
!1070 = !DILocation(line: 0, scope: !165, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 295, column: 5, scope: !1061)
!1072 = !DILocation(line: 179, column: 3, scope: !165, inlinedAt: !1071)
!1073 = !DILocation(line: 179, column: 12, scope: !165, inlinedAt: !1071)
!1074 = !DILocation(line: 0, scope: !84, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 180, column: 24, scope: !165, inlinedAt: !1071)
!1076 = !DILocation(line: 0, scope: !94, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 545, column: 3, scope: !84, inlinedAt: !1075)
!1078 = !DILocation(line: 0, scope: !103, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 518, column: 12, scope: !94, inlinedAt: !1077)
!1080 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !1079)
!1081 = !{!1082}
!1082 = distinct !{!1082, !1083, !"load128_le: argument 0"}
!1083 = distinct !{!1083, !"load128_le"}
!1084 = !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !1077)
!1085 = !DILocation(line: 0, scope: !103, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 519, column: 13, scope: !94, inlinedAt: !1077)
!1087 = !DILocation(line: 349, column: 3, scope: !103, inlinedAt: !1086)
!1088 = !DILocation(line: 181, column: 17, scope: !165, inlinedAt: !1071)
!1089 = !DILocation(line: 181, column: 53, scope: !165, inlinedAt: !1071)
!1090 = !DILocation(line: 184, column: 37, scope: !165, inlinedAt: !1071)
!1091 = !DILocation(line: 184, column: 5, scope: !165, inlinedAt: !1071)
!1092 = !DILocation(line: 185, column: 5, scope: !165, inlinedAt: !1071)
!1093 = !DILocation(line: 186, column: 49, scope: !165, inlinedAt: !1071)
!1094 = !DILocation(line: 186, column: 17, scope: !165, inlinedAt: !1071)
!1095 = !DILocation(line: 187, column: 3, scope: !165, inlinedAt: !1071)
!1096 = !DILocation(line: 187, column: 11, scope: !165, inlinedAt: !1071)
!1097 = !DILocation(line: 188, column: 3, scope: !165, inlinedAt: !1071)
!1098 = !DILocation(line: 188, column: 11, scope: !165, inlinedAt: !1071)
!1099 = !DILocation(line: 189, column: 3, scope: !165, inlinedAt: !1071)
!1100 = !DILocation(line: 191, column: 43, scope: !165, inlinedAt: !1071)
!1101 = !DILocation(line: 192, column: 11, scope: !165, inlinedAt: !1071)
!1102 = !DILocation(line: 193, column: 3, scope: !165, inlinedAt: !1071)
!1103 = !DILocation(line: 194, column: 1, scope: !165, inlinedAt: !1071)
!1104 = !DILocation(line: 296, column: 26, scope: !1061)
!1105 = !DILocation(line: 297, column: 5, scope: !1061)
!1106 = !DILocation(line: 298, column: 3, scope: !1061)
!1107 = !DILocation(line: 299, column: 1, scope: !1055)
