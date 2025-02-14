; ModuleID = 'hacl-c/hacl-c/AEAD_Poly1305_64.c'
source_filename = "hacl-c/hacl-c/AEAD_Poly1305_64.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_64_State_poly1305_state = type { i64*, i64* }
%struct.FStar_UInt128_uint128 = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"KreMLin abort at %s:%d\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"hacl-c/hacl-c/AEAD_Poly1305_64.c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"noextract flag\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @AEAD_Poly1305_64_seval(i8* nocapture noundef readnone %0) local_unnamed_addr #0 !dbg !23 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !33, metadata !DIExpression()), !dbg !34
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 noundef 340, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !35
  call void @exit(i32 noundef 255) #16, !dbg !36
  unreachable, !dbg !36
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @AEAD_Poly1305_64_selem(i8* nocapture noundef readnone %0) local_unnamed_addr #0 !dbg !37 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !42, metadata !DIExpression()), !dbg !43
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 noundef 346, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !44
  call void @exit(i32 noundef 255) #16, !dbg !45
  unreachable, !dbg !45
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @AEAD_Poly1305_64_mk_state(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state* noalias nocapture writeonly sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, i64* noundef %1, i64* noundef %2) local_unnamed_addr #4 !dbg !46 {
  call void @llvm.dbg.value(metadata i64* %1, metadata !57, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i64* %2, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i64* %1, metadata !60, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i64* %2, metadata !63, metadata !DIExpression()), !dbg !64
  %4 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %0, i32 0, i32 0, !dbg !66
  store i64* %1, i64** %4, align 4, !dbg !66, !tbaa !67, !alias.scope !72
  %5 = getelementptr inbounds %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, %struct.Hacl_Impl_Poly1305_64_State_poly1305_state* %0, i32 0, i32 1, !dbg !66
  store i64* %2, i64** %5, align 4, !dbg !66, !tbaa !75, !alias.scope !72
  ret void, !dbg !76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @AEAD_Poly1305_64_mul_div_16(i32 noundef %0) local_unnamed_addr #5 !dbg !77 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !81, metadata !DIExpression()), !dbg !82
  %2 = and i32 %0, -16, !dbg !83
  ret i32 %2, !dbg !84
}

; Function Attrs: nounwind uwtable
define dso_local void @AEAD_Poly1305_64_pad_last(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #6 !dbg !85 {
  %5 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i64* %0, metadata !93, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !103
  call void @llvm.dbg.value(metadata i64* %1, metadata !93, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !103
  call void @llvm.dbg.value(metadata i8* %2, metadata !94, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.value(metadata i32 %3, metadata !95, metadata !DIExpression()), !dbg !103
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !104
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #17, !dbg !104
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !96, metadata !DIExpression()), !dbg !105
  %7 = icmp eq i32 %3, 0, !dbg !106
  br i1 %7, label %13, label %8, !dbg !107

8:                                                ; preds = %4
  %9 = icmp ugt i32 %3, 15, !dbg !108
  %10 = sub i32 16, %3, !dbg !108
  %11 = select i1 %9, i32 0, i32 %10, !dbg !108
  %12 = getelementptr [16 x i8], [16 x i8]* %5, i32 0, i32 %3, !dbg !108
  call void @llvm.memset.p0i8.i32(i8* align 1 %12, i8 0, i32 %11, i1 false), !dbg !108
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %6, i8* align 1 %2, i32 %3, i1 false), !dbg !108
  call void @llvm.dbg.value(metadata i8* %6, metadata !100, metadata !DIExpression()), !dbg !109
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef nonnull %6), !dbg !110
  br label %13, !dbg !111

13:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #17, !dbg !112
  ret void, !dbg !112
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2) unnamed_addr #10 !dbg !113 {
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
  %18 = alloca [3 x i64], align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !142
  call void @llvm.dbg.value(metadata i64* %1, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !142
  call void @llvm.dbg.value(metadata i8* %2, metadata !118, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64* %0, metadata !119, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !142
  call void @llvm.dbg.value(metadata i64* %1, metadata !119, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !142
  call void @llvm.dbg.value(metadata i64* %1, metadata !120, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64* %1, metadata !121, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64* %0, metadata !122, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !142
  call void @llvm.dbg.value(metadata i64* %1, metadata !122, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !142
  call void @llvm.dbg.value(metadata i64* %0, metadata !123, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64* %0, metadata !124, metadata !DIExpression()), !dbg !142
  %21 = bitcast [3 x i64]* %18 to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %21) #17, !dbg !143
  call void @llvm.dbg.declare(metadata [3 x i64]* %18, metadata !125, metadata !DIExpression()), !dbg !144
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %21, i8 0, i32 24, i1 false), !dbg !144
  call void @llvm.dbg.value(metadata i8* undef, metadata !145, metadata !DIExpression(DW_OP_deref)), !dbg !152
  call void @llvm.dbg.value(metadata i8* %2, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i8* %2, metadata !154, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i8* %2, metadata !163, metadata !DIExpression()), !dbg !169
  %22 = bitcast i8* %2 to i64*, !dbg !171
  %23 = load i64, i64* %22, align 1, !dbg !171, !noalias !172
  call void @llvm.dbg.value(metadata i64 %23, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i64 %23, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !142
  %24 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !175
  call void @llvm.dbg.value(metadata i8* %24, metadata !163, metadata !DIExpression()), !dbg !176
  %25 = bitcast i8* %24 to i64*, !dbg !178
  %26 = load i64, i64* %25, align 1, !dbg !178, !noalias !172
  call void @llvm.dbg.value(metadata i64 %26, metadata !168, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i64 %26, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !142
  %27 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %23, i64 %26) #17, !dbg !179
  %28 = and i64 %27, 17592186044415, !dbg !180
  call void @llvm.dbg.value(metadata i64 %28, metadata !137, metadata !DIExpression()), !dbg !142
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %23, i64 %26, i32 noundef 44) #17, !dbg !181
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !182
  %30 = load i64, i64* %29, align 8, !dbg !182, !tbaa !183
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !182
  %32 = load i64, i64* %31, align 8, !dbg !182, !tbaa !186
  %33 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %30, i64 %32) #17, !dbg !182
  %34 = and i64 %33, 17592186044415, !dbg !187
  call void @llvm.dbg.value(metadata i64 %34, metadata !138, metadata !DIExpression()), !dbg !142
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 %23, i64 %26, i32 noundef 88) #17, !dbg !188
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 0, !dbg !189
  %36 = load i64, i64* %35, align 8, !dbg !189, !tbaa !183
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 1, !dbg !189
  %38 = load i64, i64* %37, align 8, !dbg !189, !tbaa !186
  %39 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %36, i64 %38) #17, !dbg !189
  call void @llvm.dbg.value(metadata i64 %39, metadata !139, metadata !DIExpression()), !dbg !142
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i32 0, i32 0, !dbg !190
  store i64 %28, i64* %40, align 8, !dbg !191, !tbaa !192
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i32 0, i32 1, !dbg !193
  store i64 %34, i64* %41, align 8, !dbg !194, !tbaa !192
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i32 0, i32 2, !dbg !195
  call void @llvm.dbg.value(metadata i64 %39, metadata !140, metadata !DIExpression()), !dbg !142
  %43 = or i64 %39, 1099511627776, !dbg !196
  call void @llvm.dbg.value(metadata i64 %43, metadata !141, metadata !DIExpression()), !dbg !142
  store i64 %43, i64* %42, align 8, !dbg !197, !tbaa !192
  call void @llvm.dbg.value(metadata i64* %1, metadata !198, metadata !DIExpression()) #17, !dbg !211
  call void @llvm.dbg.value(metadata i64* %40, metadata !203, metadata !DIExpression()) #17, !dbg !211
  call void @llvm.dbg.value(metadata i64* %0, metadata !204, metadata !DIExpression()) #17, !dbg !211
  call void @llvm.dbg.value(metadata i32 0, metadata !205, metadata !DIExpression()) #17, !dbg !213
  br label %174, !dbg !214

44:                                               ; preds = %174
  call void @llvm.dbg.value(metadata i64* %1, metadata !215, metadata !DIExpression()) #17, !dbg !229
  call void @llvm.dbg.value(metadata i64* %1, metadata !218, metadata !DIExpression()) #17, !dbg !229
  call void @llvm.dbg.value(metadata i64* %0, metadata !219, metadata !DIExpression()) #17, !dbg !229
  %45 = bitcast [3 x i64]* %15 to i8*, !dbg !231
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %45) #17, !dbg !231
  call void @llvm.dbg.declare(metadata [3 x i64]* %15, metadata !220, metadata !DIExpression()) #17, !dbg !232
  %46 = bitcast i64* %1 to i8*, !dbg !233
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(24) %45, i8* noundef nonnull align 4 dereferenceable(24) %46, i32 24, i1 false) #17, !dbg !233
  %47 = bitcast [3 x %struct.FStar_UInt128_uint128]* %16 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %47) #17, !dbg !234
  call void @llvm.dbg.declare(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !221, metadata !DIExpression()) #17, !dbg !235
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()) #17, !dbg !236
  %48 = bitcast %struct.FStar_UInt128_uint128* %17 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()) #17, !dbg !236
  br label %168, !dbg !237

49:                                               ; preds = %168
  %50 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i32 0, i32 0, !dbg !233
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !238, metadata !DIExpression()) #17, !dbg !253
  call void @llvm.dbg.value(metadata i64* %50, metadata !244, metadata !DIExpression()) #17, !dbg !253
  call void @llvm.dbg.value(metadata i64* %0, metadata !245, metadata !DIExpression()) #17, !dbg !253
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()) #17, !dbg !255
  %51 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*
  %52 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()) #17, !dbg !255
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i32 0, i32 2
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i32 0, i32 1
  %57 = bitcast i64* %56 to i8*
  br label %79, !dbg !256

58:                                               ; preds = %97
  call void @llvm.dbg.value(metadata i32 2, metadata !251, metadata !DIExpression()) #17, !dbg !253
  %59 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !257
  %60 = load i64, i64* %59, align 4, !dbg !257, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %60, metadata !252, metadata !DIExpression()) #17, !dbg !253
  %61 = bitcast %struct.FStar_UInt128_uint128* %14 to i8*, !dbg !258
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #17, !dbg !258
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !263, metadata !DIExpression()) #17, !dbg !258
  call void @llvm.dbg.value(metadata i64* %50, metadata !264, metadata !DIExpression()) #17, !dbg !258
  call void @llvm.dbg.value(metadata i64 %60, metadata !265, metadata !DIExpression()) #17, !dbg !258
  call void @llvm.dbg.value(metadata i32 0, metadata !266, metadata !DIExpression()) #17, !dbg !273
  %62 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !266, metadata !DIExpression()) #17, !dbg !273
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1
  br label %65, !dbg !274

65:                                               ; preds = %65, %58
  %66 = phi i32 [ 0, %58 ], [ %77, %65 ]
  call void @llvm.dbg.value(metadata i32 %66, metadata !266, metadata !DIExpression()) #17, !dbg !273
  %67 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %66, !dbg !275
  %68 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %67, i32 0, i32 0, !dbg !275
  %69 = load i64, i64* %68, align 8, !dbg !275, !tbaa.struct !276
  call void @llvm.dbg.value(metadata i64 %69, metadata !268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !277
  %70 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %66, i32 1, !dbg !275
  %71 = load i64, i64* %70, align 8, !dbg !275, !tbaa.struct !278
  call void @llvm.dbg.value(metadata i64 %71, metadata !268, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !277
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i32 0, i32 %66, !dbg !279
  %73 = load i64, i64* %72, align 8, !dbg !279, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %73, metadata !271, metadata !DIExpression()) #17, !dbg !277
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #17, !dbg !280
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %73, i64 noundef %60) #17, !dbg !281
  %74 = load i64, i64* %63, align 8, !dbg !280, !tbaa !183
  %75 = load i64, i64* %64, align 8, !dbg !280, !tbaa !186
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %69, i64 %71, i64 %74, i64 %75) #17, !dbg !280
  %76 = bitcast %struct.FStar_UInt128_uint128* %67 to i8*, !dbg !280
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %76, i8* noundef nonnull align 4 dereferenceable(16) %62, i32 16, i1 false) #17, !dbg !280, !tbaa.struct !276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #17, !dbg !280
  %77 = add nuw nsw i32 %66, 1, !dbg !282
  call void @llvm.dbg.value(metadata i32 %77, metadata !266, metadata !DIExpression()) #17, !dbg !273
  %78 = icmp eq i32 %77, 3, !dbg !283
  br i1 %78, label %102, label %65, !dbg !274, !llvm.loop !284

79:                                               ; preds = %97, %49
  %80 = phi i32 [ 0, %49 ], [ %100, %97 ]
  call void @llvm.dbg.value(metadata i32 %80, metadata !246, metadata !DIExpression()) #17, !dbg !255
  %81 = getelementptr inbounds i64, i64* %0, i32 %80, !dbg !288
  %82 = load i64, i64* %81, align 4, !dbg !288, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %82, metadata !248, metadata !DIExpression()) #17, !dbg !289
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %51) #17, !dbg !290
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !263, metadata !DIExpression()) #17, !dbg !290
  call void @llvm.dbg.value(metadata i64* %50, metadata !264, metadata !DIExpression()) #17, !dbg !290
  call void @llvm.dbg.value(metadata i64 %82, metadata !265, metadata !DIExpression()) #17, !dbg !290
  call void @llvm.dbg.value(metadata i32 0, metadata !266, metadata !DIExpression()) #17, !dbg !292
  call void @llvm.dbg.value(metadata i32 0, metadata !266, metadata !DIExpression()) #17, !dbg !292
  br label %83, !dbg !293

83:                                               ; preds = %83, %79
  %84 = phi i32 [ 0, %79 ], [ %95, %83 ]
  call void @llvm.dbg.value(metadata i32 %84, metadata !266, metadata !DIExpression()) #17, !dbg !292
  %85 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %84, !dbg !294
  %86 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %85, i32 0, i32 0, !dbg !294
  %87 = load i64, i64* %86, align 8, !dbg !294, !tbaa.struct !276
  call void @llvm.dbg.value(metadata i64 %87, metadata !268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !295
  %88 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %84, i32 1, !dbg !294
  %89 = load i64, i64* %88, align 8, !dbg !294, !tbaa.struct !278
  call void @llvm.dbg.value(metadata i64 %89, metadata !268, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !295
  %90 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i32 0, i32 %84, !dbg !296
  %91 = load i64, i64* %90, align 8, !dbg !296, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %91, metadata !271, metadata !DIExpression()) #17, !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #17, !dbg !297
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %91, i64 noundef %82) #17, !dbg !298
  %92 = load i64, i64* %53, align 8, !dbg !297, !tbaa !183
  %93 = load i64, i64* %54, align 8, !dbg !297, !tbaa !186
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %87, i64 %89, i64 %92, i64 %93) #17, !dbg !297
  %94 = bitcast %struct.FStar_UInt128_uint128* %85 to i8*, !dbg !297
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %94, i8* noundef nonnull align 4 dereferenceable(16) %52, i32 16, i1 false) #17, !dbg !297, !tbaa.struct !276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #17, !dbg !297
  %95 = add nuw nsw i32 %84, 1, !dbg !299
  call void @llvm.dbg.value(metadata i32 %95, metadata !266, metadata !DIExpression()) #17, !dbg !292
  %96 = icmp eq i32 %95, 3, !dbg !300
  br i1 %96, label %97, label %83, !dbg !293, !llvm.loop !301

97:                                               ; preds = %83
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %51) #17, !dbg !303
  call void @llvm.dbg.value(metadata i64* %50, metadata !304, metadata !DIExpression()) #17, !dbg !316
  %98 = load i64, i64* %55, align 8, !dbg !318, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %98, metadata !309, metadata !DIExpression()) #17, !dbg !316
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()) #17, !dbg !319
  call void @llvm.memmove.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %57, i8* noundef nonnull align 8 dereferenceable(16) %45, i32 16, i1 false) #17, !dbg !320, !tbaa !192
  call void @llvm.dbg.value(metadata i32 undef, metadata !312, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #17, !dbg !321
  call void @llvm.dbg.value(metadata i32 undef, metadata !315, metadata !DIExpression()) #17, !dbg !321
  call void @llvm.dbg.value(metadata i32 undef, metadata !310, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #17, !dbg !319
  call void @llvm.dbg.value(metadata i64* %50, metadata !322, metadata !DIExpression()) #17, !dbg !326
  call void @llvm.dbg.value(metadata i64 %98, metadata !325, metadata !DIExpression()) #17, !dbg !326
  %99 = mul i64 %98, 20, !dbg !328
  store i64 %99, i64* %50, align 8, !dbg !329, !tbaa !192
  %100 = add nuw nsw i32 %80, 1, !dbg !330
  call void @llvm.dbg.value(metadata i32 %100, metadata !246, metadata !DIExpression()) #17, !dbg !255
  %101 = icmp eq i32 %100, 2, !dbg !331
  br i1 %101, label %58, label %79, !dbg !256, !llvm.loop !332

102:                                              ; preds = %65
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #17, !dbg !334
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !335, metadata !DIExpression()) #17, !dbg !349
  call void @llvm.dbg.value(metadata i32 0, metadata !340, metadata !DIExpression()) #17, !dbg !351
  %103 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*
  %104 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*
  %105 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*
  %106 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0
  %107 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1
  br label %108, !dbg !352

108:                                              ; preds = %108, %102
  %109 = phi i32 [ 0, %102 ], [ %115, %108 ]
  call void @llvm.dbg.value(metadata i32 %109, metadata !340, metadata !DIExpression()) #17, !dbg !351
  call void @llvm.dbg.value(metadata i32 %109, metadata !342, metadata !DIExpression()) #17, !dbg !353
  %110 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %109, !dbg !354
  %111 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %110, i32 0, i32 0, !dbg !354
  %112 = load i64, i64* %111, align 8, !dbg !354, !tbaa.struct !276
  call void @llvm.dbg.value(metadata i64 %112, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !353
  %113 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %109, i32 1, !dbg !354
  %114 = load i64, i64* %113, align 8, !dbg !354, !tbaa.struct !278
  call void @llvm.dbg.value(metadata i64 %114, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !353
  %115 = add nuw nsw i32 %109, 1, !dbg !355
  %116 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %115, !dbg !356
  %117 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %116, i32 0, i32 0, !dbg !356
  %118 = load i64, i64* %117, align 8, !dbg !356, !tbaa.struct !276
  call void @llvm.dbg.value(metadata i64 %118, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !353
  %119 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %115, i32 1, !dbg !356
  %120 = load i64, i64* %119, align 8, !dbg !356, !tbaa.struct !278
  call void @llvm.dbg.value(metadata i64 %120, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !353
  %121 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %112, i64 %114) #17, !dbg !357
  %122 = and i64 %121, 17592186044415, !dbg !358
  call void @llvm.dbg.value(metadata i64 %122, metadata !347, metadata !DIExpression()) #17, !dbg !353
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %103) #17, !dbg !359
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !348, metadata !DIExpression()) #17, !dbg !360
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %112, i64 %114, i32 noundef 44) #17, !dbg !361
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %104) #17, !dbg !362
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %122) #17, !dbg !362
  %123 = bitcast %struct.FStar_UInt128_uint128* %110 to i8*, !dbg !362
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %123, i8* noundef nonnull align 4 dereferenceable(16) %104, i32 16, i1 false) #17, !dbg !362, !tbaa.struct !276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %104) #17, !dbg !362
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %105) #17, !dbg !363
  %124 = load i64, i64* %106, align 8, !dbg !363, !tbaa !183
  %125 = load i64, i64* %107, align 8, !dbg !363, !tbaa !186
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %118, i64 %120, i64 %124, i64 %125) #17, !dbg !363
  %126 = bitcast %struct.FStar_UInt128_uint128* %116 to i8*, !dbg !363
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %126, i8* noundef nonnull align 4 dereferenceable(16) %105, i32 16, i1 false) #17, !dbg !363, !tbaa.struct !276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %105) #17, !dbg !363
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %103) #17, !dbg !364
  call void @llvm.dbg.value(metadata i32 %115, metadata !340, metadata !DIExpression()) #17, !dbg !351
  %127 = icmp eq i32 %115, 2, !dbg !365
  br i1 %127, label %128, label %108, !dbg !352, !llvm.loop !366

128:                                              ; preds = %108
  %129 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !368
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #17, !dbg !368
  %130 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !368
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %130) #17, !dbg !368
  %131 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !368
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %131) #17, !dbg !368
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !371, metadata !DIExpression()) #17, !dbg !368
  %132 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 2, i32 0, !dbg !378
  %133 = load i64, i64* %132, align 8, !dbg !378, !tbaa.struct !276
  call void @llvm.dbg.value(metadata i64 %133, metadata !372, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !368
  %134 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 2, i32 1, !dbg !378
  %135 = load i64, i64* %134, align 8, !dbg !378, !tbaa.struct !278
  call void @llvm.dbg.value(metadata i64 %135, metadata !372, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !368
  %136 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 0, i32 0, !dbg !379
  %137 = load i64, i64* %136, align 8, !dbg !379, !tbaa.struct !276
  call void @llvm.dbg.value(metadata i64 %137, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !368
  %138 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 0, i32 1, !dbg !379
  %139 = load i64, i64* %138, align 8, !dbg !379, !tbaa.struct !278
  call void @llvm.dbg.value(metadata i64 %139, metadata !373, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !368
  %140 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !380
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %140) #17, !dbg !380
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !374, metadata !DIExpression()) #17, !dbg !381
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 4398046511103) #17, !dbg !382
  %141 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !383
  %142 = load i64, i64* %141, align 8, !dbg !383, !tbaa !183
  %143 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !383
  %144 = load i64, i64* %143, align 8, !dbg !383, !tbaa !186
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %133, i64 %135, i64 %142, i64 %144) #17, !dbg !383
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %133, i64 %135, i32 noundef 42) #17, !dbg !384
  %145 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !385
  %146 = load i64, i64* %145, align 8, !dbg !385, !tbaa !183
  %147 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !385
  %148 = load i64, i64* %147, align 8, !dbg !385, !tbaa !186
  %149 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %146, i64 %148) #17, !dbg !385
  call void @llvm.dbg.value(metadata i64 %149, metadata !375, metadata !DIExpression()) #17, !dbg !368
  %150 = mul i64 %149, 5, !dbg !386
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %150) #17, !dbg !387
  %151 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !388
  %152 = load i64, i64* %151, align 8, !dbg !388, !tbaa !183
  %153 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !388
  %154 = load i64, i64* %153, align 8, !dbg !388, !tbaa !186
  %155 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 0
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %155, i64 %137, i64 %139, i64 %152, i64 %154) #17, !dbg !388
  %156 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 2, !dbg !389
  %157 = bitcast %struct.FStar_UInt128_uint128* %156 to i8*, !dbg !390
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %157, i8* noundef nonnull align 4 dereferenceable(16) %140, i32 16, i1 false) #17, !dbg !390, !tbaa.struct !276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %140) #17, !dbg !391
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #17, !dbg !391
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %130) #17, !dbg !391
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %131) #17, !dbg !391
  call void @llvm.dbg.value(metadata i64* %1, metadata !392, metadata !DIExpression()) #17, !dbg !403
  call void @llvm.dbg.value(metadata [3 x %struct.FStar_UInt128_uint128]* %16, metadata !397, metadata !DIExpression()) #17, !dbg !403
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression()) #17, !dbg !405
  br label %158, !dbg !406

158:                                              ; preds = %158, %128
  %159 = phi i32 [ 0, %128 ], [ %166, %158 ]
  call void @llvm.dbg.value(metadata i32 %159, metadata !398, metadata !DIExpression()) #17, !dbg !405
  %160 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %159, i32 0, !dbg !407
  %161 = load i64, i64* %160, align 8, !dbg !407, !tbaa.struct !276
  call void @llvm.dbg.value(metadata i64 %161, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !408
  %162 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %159, i32 1, !dbg !407
  %163 = load i64, i64* %162, align 8, !dbg !407, !tbaa.struct !278
  call void @llvm.dbg.value(metadata i64 %163, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !408
  %164 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %161, i64 %163) #17, !dbg !409
  %165 = getelementptr inbounds i64, i64* %1, i32 %159, !dbg !410
  store i64 %164, i64* %165, align 4, !dbg !411, !tbaa !192
  %166 = add nuw nsw i32 %159, 1, !dbg !412
  call void @llvm.dbg.value(metadata i32 %166, metadata !398, metadata !DIExpression()) #17, !dbg !405
  %167 = icmp eq i32 %166, 3, !dbg !413
  br i1 %167, label %183, label %158, !dbg !406, !llvm.loop !414

168:                                              ; preds = %168, %44
  %169 = phi i32 [ 0, %44 ], [ %172, %168 ]
  call void @llvm.dbg.value(metadata i32 %169, metadata !223, metadata !DIExpression()) #17, !dbg !236
  %170 = getelementptr inbounds [3 x %struct.FStar_UInt128_uint128], [3 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %169, !dbg !416
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48) #17, !dbg !418
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef 0) #17, !dbg !418
  %171 = bitcast %struct.FStar_UInt128_uint128* %170 to i8*, !dbg !418
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %171, i8* noundef nonnull align 4 dereferenceable(16) %48, i32 16, i1 false) #17, !dbg !418, !tbaa.struct !276
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48) #17, !dbg !418
  %172 = add nuw nsw i32 %169, 1, !dbg !419
  call void @llvm.dbg.value(metadata i32 %172, metadata !223, metadata !DIExpression()) #17, !dbg !236
  %173 = icmp eq i32 %172, 3, !dbg !420
  br i1 %173, label %49, label %168, !dbg !237, !llvm.loop !421

174:                                              ; preds = %174, %3
  %175 = phi i32 [ 0, %3 ], [ %181, %174 ]
  call void @llvm.dbg.value(metadata i32 %175, metadata !205, metadata !DIExpression()) #17, !dbg !213
  %176 = getelementptr inbounds i64, i64* %1, i32 %175, !dbg !423
  %177 = load i64, i64* %176, align 4, !dbg !423, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %177, metadata !207, metadata !DIExpression()) #17, !dbg !424
  %178 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i32 0, i32 %175, !dbg !425
  %179 = load i64, i64* %178, align 8, !dbg !425, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %179, metadata !210, metadata !DIExpression()) #17, !dbg !424
  %180 = add i64 %179, %177, !dbg !426
  store i64 %180, i64* %176, align 4, !dbg !427, !tbaa !192
  %181 = add nuw nsw i32 %175, 1, !dbg !428
  call void @llvm.dbg.value(metadata i32 %181, metadata !205, metadata !DIExpression()) #17, !dbg !213
  %182 = icmp eq i32 %181, 3, !dbg !429
  br i1 %182, label %44, label %174, !dbg !214, !llvm.loop !430

183:                                              ; preds = %158
  %184 = load i64, i64* %1, align 4, !dbg !432, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %184, metadata !225, metadata !DIExpression()) #17, !dbg !229
  %185 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !433
  %186 = load i64, i64* %185, align 4, !dbg !433, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %186, metadata !226, metadata !DIExpression()) #17, !dbg !229
  %187 = and i64 %184, 17592186044415, !dbg !434
  call void @llvm.dbg.value(metadata i64 %187, metadata !227, metadata !DIExpression()) #17, !dbg !229
  %188 = lshr i64 %184, 44, !dbg !435
  %189 = add i64 %186, %188, !dbg !436
  call void @llvm.dbg.value(metadata i64 %189, metadata !228, metadata !DIExpression()) #17, !dbg !229
  store i64 %187, i64* %1, align 4, !dbg !437, !tbaa !192
  store i64 %189, i64* %185, align 4, !dbg !438, !tbaa !192
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %47) #17, !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %45) #17, !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21) #17, !dbg !440
  ret void, !dbg !440
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_init(i64* nocapture %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3, i8* nocapture noundef readonly %4) local_unnamed_addr #6 !dbg !441 {
  %6 = alloca [16 x i8], align 1
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !445, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !455
  call void @llvm.dbg.value(metadata i64* %1, metadata !445, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !455
  call void @llvm.dbg.value(metadata i8* %2, metadata !446, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 %3, metadata !447, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i8* %4, metadata !448, metadata !DIExpression()), !dbg !455
  %14 = lshr i32 %3, 4, !dbg !456
  call void @llvm.dbg.value(metadata i32 %14, metadata !449, metadata !DIExpression()), !dbg !455
  %15 = and i32 %3, 15, !dbg !457
  call void @llvm.dbg.value(metadata i32 %15, metadata !450, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i8* %4, metadata !451, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 %3, metadata !452, metadata !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value)), !dbg !455
  call void @llvm.dbg.value(metadata i8* %2, metadata !453, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %3), metadata !454, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !455
  %16 = zext i32 %14 to i64, !dbg !458
  %17 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17), !dbg !459
  %18 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18), !dbg !459
  %19 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19), !dbg !459
  %20 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20), !dbg !459
  %21 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21), !dbg !459
  %22 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22), !dbg !459
  call void @llvm.dbg.value(metadata i64* %0, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !459
  call void @llvm.dbg.value(metadata i64* %1, metadata !464, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !459
  call void @llvm.dbg.value(metadata i8* %2, metadata !465, metadata !DIExpression()) #17, !dbg !459
  call void @llvm.dbg.value(metadata i64 %16, metadata !466, metadata !DIExpression()) #17, !dbg !459
  call void @llvm.dbg.value(metadata i8* %4, metadata !467, metadata !DIExpression()) #17, !dbg !459
  call void @llvm.dbg.value(metadata i64* %0, metadata !468, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !459
  call void @llvm.dbg.value(metadata i64* %1, metadata !468, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !459
  call void @llvm.dbg.value(metadata i64* %0, metadata !469, metadata !DIExpression()) #17, !dbg !459
  call void @llvm.dbg.value(metadata i64* %0, metadata !470, metadata !DIExpression()) #17, !dbg !459
  call void @llvm.dbg.value(metadata i8* undef, metadata !145, metadata !DIExpression(DW_OP_deref)) #17, !dbg !480
  call void @llvm.dbg.value(metadata i8* %4, metadata !151, metadata !DIExpression()) #17, !dbg !480
  call void @llvm.dbg.value(metadata i8* %4, metadata !154, metadata !DIExpression()) #17, !dbg !482
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !160, metadata !DIExpression()) #17, !dbg !482
  call void @llvm.dbg.value(metadata i8* %4, metadata !163, metadata !DIExpression()) #17, !dbg !484
  %23 = bitcast i8* %4 to i64*, !dbg !486
  %24 = load i64, i64* %23, align 1, !dbg !486, !noalias !487
  call void @llvm.dbg.value(metadata i64 %24, metadata !168, metadata !DIExpression()) #17, !dbg !484
  call void @llvm.dbg.value(metadata i64 %24, metadata !471, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !459
  %25 = getelementptr inbounds i8, i8* %4, i32 8, !dbg !490
  call void @llvm.dbg.value(metadata i8* %25, metadata !163, metadata !DIExpression()) #17, !dbg !491
  %26 = bitcast i8* %25 to i64*, !dbg !493
  %27 = load i64, i64* %26, align 1, !dbg !493, !noalias !487
  call void @llvm.dbg.value(metadata i64 %27, metadata !168, metadata !DIExpression()) #17, !dbg !491
  call void @llvm.dbg.value(metadata i64 %27, metadata !471, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !459
  %28 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !494
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #17, !dbg !494
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !472, metadata !DIExpression()) #17, !dbg !495
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 1152921487695413244) #17, !dbg !496
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !497
  %30 = load i64, i64* %29, align 8, !dbg !497, !tbaa !183
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !497
  %32 = load i64, i64* %31, align 8, !dbg !497, !tbaa !186
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %30, i64 %32, i32 noundef 64) #17, !dbg !497
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef 1152921487695413247) #17, !dbg !498
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !499
  %34 = load i64, i64* %33, align 8, !dbg !499, !tbaa !183
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !499
  %36 = load i64, i64* %35, align 8, !dbg !499, !tbaa !186
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !499
  %38 = load i64, i64* %37, align 8, !dbg !499, !tbaa !183
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !499
  %40 = load i64, i64* %39, align 8, !dbg !499, !tbaa !186
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %34, i64 %36, i64 %38, i64 %40) #17, !dbg !499
  %41 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !500
  %42 = load i64, i64* %41, align 8, !dbg !500, !tbaa !183
  %43 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !500
  %44 = load i64, i64* %43, align 8, !dbg !500, !tbaa !186
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %24, i64 %27, i64 %42, i64 %44) #17, !dbg !500
  %45 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !501
  %46 = load i64, i64* %45, align 8, !dbg !501, !tbaa !183
  %47 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !501
  %48 = load i64, i64* %47, align 8, !dbg !501, !tbaa !186
  %49 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %46, i64 %48) #17, !dbg !501
  %50 = and i64 %49, 17592186044415, !dbg !502
  call void @llvm.dbg.value(metadata i64 %50, metadata !473, metadata !DIExpression()) #17, !dbg !459
  %51 = load i64, i64* %45, align 8, !dbg !503, !tbaa !183
  %52 = load i64, i64* %47, align 8, !dbg !503, !tbaa !186
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %51, i64 %52, i32 noundef 44) #17, !dbg !503
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !504
  %54 = load i64, i64* %53, align 8, !dbg !504, !tbaa !183
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !504
  %56 = load i64, i64* %55, align 8, !dbg !504, !tbaa !186
  %57 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %54, i64 %56) #17, !dbg !504
  %58 = and i64 %57, 17592186044415, !dbg !505
  call void @llvm.dbg.value(metadata i64 %58, metadata !474, metadata !DIExpression()) #17, !dbg !459
  %59 = load i64, i64* %45, align 8, !dbg !506, !tbaa !183
  %60 = load i64, i64* %47, align 8, !dbg !506, !tbaa !186
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %59, i64 %60, i32 noundef 88) #17, !dbg !506
  %61 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !507
  %62 = load i64, i64* %61, align 8, !dbg !507, !tbaa !183
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !507
  %64 = load i64, i64* %63, align 8, !dbg !507, !tbaa !186
  %65 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %62, i64 %64) #17, !dbg !507
  call void @llvm.dbg.value(metadata i64 %65, metadata !475, metadata !DIExpression()) #17, !dbg !459
  store i64 %50, i64* %0, align 4, !dbg !508, !tbaa !192
  %66 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !509
  store i64 %58, i64* %66, align 4, !dbg !510, !tbaa !192
  %67 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !511
  store i64 %65, i64* %67, align 4, !dbg !512, !tbaa !192
  call void @llvm.dbg.value(metadata i64* %0, metadata !476, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !459
  call void @llvm.dbg.value(metadata i64* %1, metadata !476, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !459
  call void @llvm.dbg.value(metadata i64* %1, metadata !477, metadata !DIExpression()) #17, !dbg !459
  call void @llvm.dbg.value(metadata i64* %1, metadata !478, metadata !DIExpression()) #17, !dbg !459
  %68 = bitcast i64* %1 to i8*, !dbg !513
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %68, i8 0, i64 24, i1 false) #17, !dbg !514
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* nonnull %0, i64* nonnull %1, i8* noundef %2, i64 noundef %16) #17, !dbg !513
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #17, !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17), !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18), !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19), !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20), !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21), !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22), !dbg !515
  call void @llvm.dbg.value(metadata i64* %0, metadata !93, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !516
  call void @llvm.dbg.value(metadata i64* %1, metadata !93, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !516
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %3), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #17, !dbg !516
  call void @llvm.dbg.value(metadata i32 %15, metadata !95, metadata !DIExpression()) #17, !dbg !516
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !518
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #17, !dbg !518
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !96, metadata !DIExpression()) #17, !dbg !519
  %70 = icmp eq i32 %15, 0, !dbg !520
  br i1 %70, label %76, label %71, !dbg !521

71:                                               ; preds = %5
  %72 = and i32 %3, -16, !dbg !522
  call void @llvm.dbg.value(metadata i32 %72, metadata !452, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %72), metadata !454, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !455
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %72), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #17, !dbg !516
  %73 = getelementptr inbounds i8, i8* %2, i32 %72, !dbg !523
  call void @llvm.dbg.value(metadata i8* %73, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i8* %73, metadata !94, metadata !DIExpression()) #17, !dbg !516
  %74 = sub nuw nsw i32 16, %15, !dbg !524
  %75 = getelementptr [16 x i8], [16 x i8]* %6, i32 0, i32 %15, !dbg !524
  call void @llvm.memset.p0i8.i32(i8* align 1 %75, i8 0, i32 %74, i1 false) #17, !dbg !524
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %69, i8* align 1 %73, i32 %15, i1 false) #17, !dbg !524
  call void @llvm.dbg.value(metadata i8* %69, metadata !100, metadata !DIExpression()) #17, !dbg !525
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* nonnull %0, i64* %1, i8* noundef nonnull %69) #17, !dbg !526
  br label %76, !dbg !527

76:                                               ; preds = %5, %71
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #17, !dbg !528
  ret void, !dbg !529
}

; Function Attrs: nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_continue(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #6 !dbg !530 {
  %5 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i64* %0, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !540
  call void @llvm.dbg.value(metadata i64* %1, metadata !532, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !540
  call void @llvm.dbg.value(metadata i8* %2, metadata !533, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32 %3, metadata !534, metadata !DIExpression()), !dbg !540
  %6 = lshr i32 %3, 4, !dbg !541
  call void @llvm.dbg.value(metadata i32 %6, metadata !535, metadata !DIExpression()), !dbg !540
  %7 = and i32 %3, 15, !dbg !542
  call void @llvm.dbg.value(metadata i32 %7, metadata !536, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32 %3, metadata !537, metadata !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value)), !dbg !540
  call void @llvm.dbg.value(metadata i8* %2, metadata !538, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %3), metadata !539, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !540
  %8 = zext i32 %6 to i64, !dbg !543
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* %0, i64* %1, i8* noundef %2, i64 noundef %8), !dbg !544
  call void @llvm.dbg.value(metadata i64* %0, metadata !93, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !545
  call void @llvm.dbg.value(metadata i64* %1, metadata !93, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !545
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %3), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #17, !dbg !545
  call void @llvm.dbg.value(metadata i32 %7, metadata !95, metadata !DIExpression()) #17, !dbg !545
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !547
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #17, !dbg !547
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !96, metadata !DIExpression()) #17, !dbg !548
  %10 = icmp eq i32 %7, 0, !dbg !549
  br i1 %10, label %16, label %11, !dbg !550

11:                                               ; preds = %4
  %12 = and i32 %3, -16, !dbg !551
  call void @llvm.dbg.value(metadata i32 %12, metadata !537, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %12), metadata !539, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !540
  call void @llvm.dbg.value(metadata !DIArgList(i8* %2, i32 %12), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #17, !dbg !545
  %13 = getelementptr inbounds i8, i8* %2, i32 %12, !dbg !552
  call void @llvm.dbg.value(metadata i8* %13, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i8* %13, metadata !94, metadata !DIExpression()) #17, !dbg !545
  %14 = sub nuw nsw i32 16, %7, !dbg !553
  %15 = getelementptr [16 x i8], [16 x i8]* %5, i32 0, i32 %7, !dbg !553
  call void @llvm.memset.p0i8.i32(i8* align 1 %15, i8 0, i32 %14, i1 false) #17, !dbg !553
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %9, i8* align 1 %13, i32 %7, i1 false) #17, !dbg !553
  call void @llvm.dbg.value(metadata i8* %9, metadata !100, metadata !DIExpression()) #17, !dbg !554
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef nonnull %9) #17, !dbg !555
  br label %16, !dbg !556

16:                                               ; preds = %4, %11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #17, !dbg !557
  ret void, !dbg !558
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #6 !dbg !559 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !563, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !571
  call void @llvm.dbg.value(metadata i64* %1, metadata !563, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !571
  call void @llvm.dbg.value(metadata i8* %2, metadata !564, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i64 %3, metadata !565, metadata !DIExpression()), !dbg !571
  %5 = icmp eq i64 %3, 0, !dbg !572
  br i1 %5, label %9, label %6, !dbg !573

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !566, metadata !DIExpression()), !dbg !574
  %7 = getelementptr inbounds i8, i8* %2, i32 16, !dbg !575
  call void @llvm.dbg.value(metadata i8* %7, metadata !569, metadata !DIExpression()), !dbg !574
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef %2), !dbg !576
  %8 = add i64 %3, -1, !dbg !577
  call void @llvm.dbg.value(metadata i64 %8, metadata !570, metadata !DIExpression()), !dbg !574
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(i64* %0, i64* %1, i8* noundef nonnull %7, i64 noundef %8), !dbg !578
  br label %9, !dbg !579

9:                                                ; preds = %6, %4
  ret void, !dbg !580
}

; Function Attrs: nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_finish_(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2) local_unnamed_addr #6 !dbg !581 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !583, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !589
  call void @llvm.dbg.value(metadata i64* %1, metadata !583, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !589
  call void @llvm.dbg.value(metadata i8* %2, metadata !584, metadata !DIExpression()), !dbg !589
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef %2), !dbg !590
  call void @llvm.dbg.value(metadata i8* %2, metadata !585, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !589
  call void @llvm.dbg.value(metadata i64* %0, metadata !586, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !589
  call void @llvm.dbg.value(metadata i64* %1, metadata !586, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !589
  call void @llvm.dbg.value(metadata i64* %1, metadata !587, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i64* %1, metadata !588, metadata !DIExpression()), !dbg !589
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* noundef %1), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* nocapture noundef %0) unnamed_addr #11 !dbg !593 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !595, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i64* %0, metadata !619, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32 0, metadata !622, metadata !DIExpression()), !dbg !633
  %2 = load i64, i64* %0, align 4
  br label %3, !dbg !634

3:                                                ; preds = %3, %1
  %4 = phi i64 [ %2, %1 ], [ %12, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %7, %3 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !622, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i32 %5, metadata !624, metadata !DIExpression()), !dbg !635
  %6 = getelementptr inbounds i64, i64* %0, i32 %5, !dbg !636
  call void @llvm.dbg.value(metadata i64 %4, metadata !627, metadata !DIExpression()), !dbg !635
  %7 = add nuw nsw i32 %5, 1, !dbg !637
  %8 = getelementptr inbounds i64, i64* %0, i32 %7, !dbg !638
  %9 = load i64, i64* %8, align 4, !dbg !638, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %9, metadata !628, metadata !DIExpression()), !dbg !635
  %10 = and i64 %4, 17592186044415, !dbg !639
  call void @llvm.dbg.value(metadata i64 %10, metadata !629, metadata !DIExpression()), !dbg !635
  %11 = lshr i64 %4, 44, !dbg !640
  call void @llvm.dbg.value(metadata i64 %11, metadata !630, metadata !DIExpression()), !dbg !635
  store i64 %10, i64* %6, align 4, !dbg !641, !tbaa !192
  %12 = add i64 %9, %11, !dbg !642
  store i64 %12, i64* %8, align 4, !dbg !643, !tbaa !192
  call void @llvm.dbg.value(metadata i32 %7, metadata !622, metadata !DIExpression()), !dbg !633
  %13 = icmp eq i32 %7, 2, !dbg !644
  br i1 %13, label %14, label %3, !dbg !634, !llvm.loop !645

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i64* %0, metadata !647, metadata !DIExpression()), !dbg !653
  %15 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !655
  %16 = load i64, i64* %15, align 4, !dbg !655, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %16, metadata !650, metadata !DIExpression()), !dbg !653
  %17 = load i64, i64* %0, align 4, !dbg !656, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %17, metadata !651, metadata !DIExpression()), !dbg !653
  %18 = lshr i64 %16, 42, !dbg !657
  call void @llvm.dbg.value(metadata i64 %18, metadata !652, metadata !DIExpression()), !dbg !653
  %19 = and i64 %16, 4398046511103, !dbg !658
  store i64 %19, i64* %15, align 4, !dbg !659, !tbaa !192
  %20 = mul nuw nsw i64 %18, 5, !dbg !660
  %21 = add i64 %20, %17, !dbg !661
  store i64 %21, i64* %0, align 4, !dbg !662, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %21, metadata !596, metadata !DIExpression()), !dbg !618
  %22 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !663
  %23 = load i64, i64* %22, align 4, !dbg !663, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %23, metadata !597, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i64 %19, metadata !598, metadata !DIExpression()), !dbg !618
  %24 = and i64 %21, 17592186044415, !dbg !664
  call void @llvm.dbg.value(metadata i64 %24, metadata !599, metadata !DIExpression()), !dbg !618
  %25 = lshr i64 %21, 44, !dbg !665
  call void @llvm.dbg.value(metadata i64 %25, metadata !600, metadata !DIExpression()), !dbg !618
  %26 = add i64 %23, %25, !dbg !666
  %27 = and i64 %26, 17592186044415, !dbg !667
  call void @llvm.dbg.value(metadata i64 %27, metadata !601, metadata !DIExpression()), !dbg !618
  %28 = lshr i64 %26, 44, !dbg !668
  call void @llvm.dbg.value(metadata i64 %28, metadata !602, metadata !DIExpression()), !dbg !618
  %29 = add nuw nsw i64 %28, %19, !dbg !669
  call void @llvm.dbg.value(metadata i64 %29, metadata !603, metadata !DIExpression()), !dbg !618
  store i64 %24, i64* %0, align 4, !dbg !670, !tbaa !192
  store i64 %27, i64* %22, align 4, !dbg !671, !tbaa !192
  call void @llvm.dbg.value(metadata i64* %0, metadata !647, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64 %29, metadata !650, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64 %24, metadata !651, metadata !DIExpression()), !dbg !672
  %30 = lshr i64 %29, 42, !dbg !674
  call void @llvm.dbg.value(metadata i64 %30, metadata !652, metadata !DIExpression()), !dbg !672
  %31 = and i64 %29, 4398046511103, !dbg !675
  store i64 %31, i64* %15, align 4, !dbg !676, !tbaa !192
  %32 = mul nuw nsw i64 %30, 5, !dbg !677
  %33 = add nuw nsw i64 %32, %24, !dbg !678
  call void @llvm.dbg.value(metadata i64 %33, metadata !604, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i64 %27, metadata !605, metadata !DIExpression()), !dbg !618
  %34 = and i64 %33, 17592186044415, !dbg !679
  call void @llvm.dbg.value(metadata i64 %33, metadata !606, metadata !DIExpression(DW_OP_constu, 17592186044415, DW_OP_and, DW_OP_stack_value)), !dbg !618
  %35 = lshr i64 %33, 44, !dbg !680
  %36 = add nuw nsw i64 %35, %27, !dbg !681
  call void @llvm.dbg.value(metadata i64 %36, metadata !607, metadata !DIExpression()), !dbg !618
  store i64 %34, i64* %0, align 4, !dbg !682, !tbaa !192
  store i64 %36, i64* %22, align 4, !dbg !683, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %33, metadata !608, metadata !DIExpression(DW_OP_constu, 17592186044415, DW_OP_and, DW_OP_stack_value)), !dbg !618
  call void @llvm.dbg.value(metadata i64 %36, metadata !609, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i64 %29, metadata !610, metadata !DIExpression(DW_OP_constu, 4398046511103, DW_OP_and, DW_OP_stack_value)), !dbg !618
  call void @llvm.dbg.value(metadata i64 %33, metadata !684, metadata !DIExpression(DW_OP_constu, 17592186044415, DW_OP_and, DW_OP_stack_value)), !dbg !693
  call void @llvm.dbg.value(metadata i64 17592186044411, metadata !690, metadata !DIExpression()), !dbg !693
  %37 = add nsw i64 %34, -17592186044411, !dbg !695
  call void @llvm.dbg.value(metadata i64 %37, metadata !691, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !693
  call void @llvm.dbg.value(metadata i64 %33, metadata !692, metadata !DIExpression(DW_OP_constu, 17592186044415, DW_OP_and, DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !693
  %38 = ashr i64 %37, 63, !dbg !696
  %39 = xor i64 %38, -1, !dbg !696
  call void @llvm.dbg.value(metadata i64 %39, metadata !611, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i64 %36, metadata !697, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 17592186044415, metadata !700, metadata !DIExpression()), !dbg !701
  %40 = xor i64 %36, -17592186044416, !dbg !703
  call void @llvm.dbg.value(metadata i64 %36, metadata !697, metadata !DIExpression(DW_OP_constu, 18446726481523507200, DW_OP_xor, DW_OP_stack_value)), !dbg !701
  %41 = shl i64 %36, 32, !dbg !704
  %42 = and i64 %41, %40, !dbg !705
  call void @llvm.dbg.value(metadata i64 %42, metadata !697, metadata !DIExpression()), !dbg !701
  %43 = shl i64 %42, 16, !dbg !706
  %44 = and i64 %43, %42, !dbg !707
  call void @llvm.dbg.value(metadata i64 %44, metadata !697, metadata !DIExpression()), !dbg !701
  %45 = shl i64 %44, 8, !dbg !708
  %46 = and i64 %45, %44, !dbg !709
  call void @llvm.dbg.value(metadata i64 %46, metadata !697, metadata !DIExpression()), !dbg !701
  %47 = shl i64 %46, 4, !dbg !710
  %48 = and i64 %47, %46, !dbg !711
  call void @llvm.dbg.value(metadata i64 %48, metadata !697, metadata !DIExpression()), !dbg !701
  %49 = shl i64 %48, 2, !dbg !712
  %50 = and i64 %49, %48, !dbg !713
  call void @llvm.dbg.value(metadata i64 %50, metadata !697, metadata !DIExpression()), !dbg !701
  %51 = shl i64 %50, 1, !dbg !714
  %52 = and i64 %51, %50, !dbg !715
  call void @llvm.dbg.value(metadata i64 %52, metadata !697, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 %52, metadata !612, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_stack_value)), !dbg !618
  call void @llvm.dbg.value(metadata i64 %29, metadata !697, metadata !DIExpression(DW_OP_constu, 4398046511103, DW_OP_and, DW_OP_stack_value)), !dbg !716
  call void @llvm.dbg.value(metadata i64 4398046511103, metadata !700, metadata !DIExpression()), !dbg !716
  %53 = or i64 %29, -4398046511104, !dbg !718
  call void @llvm.dbg.value(metadata i64 %29, metadata !697, metadata !DIExpression(DW_OP_constu, 18446739675663040512, DW_OP_or, DW_OP_stack_value)), !dbg !716
  %54 = shl i64 %29, 32, !dbg !719
  %55 = and i64 %54, %53, !dbg !720
  call void @llvm.dbg.value(metadata i64 %55, metadata !697, metadata !DIExpression()), !dbg !716
  %56 = shl i64 %55, 16, !dbg !721
  %57 = and i64 %56, %55, !dbg !722
  call void @llvm.dbg.value(metadata i64 %57, metadata !697, metadata !DIExpression()), !dbg !716
  %58 = shl i64 %57, 8, !dbg !723
  %59 = and i64 %58, %57, !dbg !724
  call void @llvm.dbg.value(metadata i64 %59, metadata !697, metadata !DIExpression()), !dbg !716
  %60 = shl i64 %59, 4, !dbg !725
  %61 = and i64 %60, %59, !dbg !726
  call void @llvm.dbg.value(metadata i64 %61, metadata !697, metadata !DIExpression()), !dbg !716
  %62 = shl i64 %61, 2, !dbg !727
  %63 = and i64 %62, %61, !dbg !728
  call void @llvm.dbg.value(metadata i64 %63, metadata !697, metadata !DIExpression()), !dbg !716
  %64 = shl i64 %63, 1, !dbg !729
  %65 = and i64 %64, %63, !dbg !730
  call void @llvm.dbg.value(metadata i64 %65, metadata !697, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.value(metadata i64 %65, metadata !613, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_stack_value)), !dbg !618
  %66 = icmp slt i64 %52, 0, !dbg !731
  %67 = icmp slt i64 %65, 0, !dbg !732
  %68 = select i1 %67, i1 %66, i1 false, !dbg !732
  %69 = select i1 %68, i64 %39, i64 0, !dbg !732
  call void @llvm.dbg.value(metadata i64 %69, metadata !614, metadata !DIExpression()), !dbg !618
  %70 = and i64 %69, 17592186044411, !dbg !733
  %71 = sub nsw i64 %34, %70, !dbg !734
  call void @llvm.dbg.value(metadata i64 %71, metadata !615, metadata !DIExpression()), !dbg !618
  %72 = and i64 %69, 17592186044415, !dbg !735
  %73 = sub nsw i64 %36, %72, !dbg !736
  call void @llvm.dbg.value(metadata i64 %73, metadata !616, metadata !DIExpression()), !dbg !618
  %74 = and i64 %69, 4398046511103, !dbg !737
  %75 = sub nsw i64 %31, %74, !dbg !738
  call void @llvm.dbg.value(metadata i64 %75, metadata !617, metadata !DIExpression()), !dbg !618
  store i64 %71, i64* %0, align 4, !dbg !739, !tbaa !192
  store i64 %73, i64* %22, align 4, !dbg !740, !tbaa !192
  store i64 %75, i64* %15, align 4, !dbg !741, !tbaa !192
  ret void, !dbg !742
}

; Function Attrs: nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_finish(i64* nocapture readonly %0, i64* nocapture %1, i8* nocapture noundef readonly %2, i8* nocapture noundef writeonly %3, i8* nocapture noundef readonly %4) local_unnamed_addr #6 !dbg !743 {
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !747, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !764
  call void @llvm.dbg.value(metadata i64* %1, metadata !747, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !764
  call void @llvm.dbg.value(metadata i8* %2, metadata !748, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* %3, metadata !749, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* %4, metadata !750, metadata !DIExpression()), !dbg !764
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(i64* %0, i64* %1, i8* noundef %2), !dbg !765
  call void @llvm.dbg.value(metadata i8* %2, metadata !751, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !764
  call void @llvm.dbg.value(metadata i64* %0, metadata !752, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !764
  call void @llvm.dbg.value(metadata i64* %1, metadata !752, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !764
  call void @llvm.dbg.value(metadata i64* %1, metadata !753, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i64* %1, metadata !754, metadata !DIExpression()), !dbg !764
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(i64* noundef %1), !dbg !766
  call void @llvm.dbg.value(metadata i64* %0, metadata !755, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !764
  call void @llvm.dbg.value(metadata i64* %1, metadata !755, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !764
  call void @llvm.dbg.value(metadata i64* %1, metadata !756, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i64* %1, metadata !757, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* undef, metadata !145, metadata !DIExpression(DW_OP_deref)), !dbg !767
  call void @llvm.dbg.value(metadata i8* %4, metadata !151, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i8* %4, metadata !154, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !160, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i8* %4, metadata !163, metadata !DIExpression()), !dbg !771
  %11 = bitcast i8* %4 to i64*, !dbg !773
  %12 = load i64, i64* %11, align 1, !dbg !773, !noalias !774
  call void @llvm.dbg.value(metadata i64 %12, metadata !168, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i64 %12, metadata !758, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !764
  %13 = getelementptr inbounds i8, i8* %4, i32 8, !dbg !777
  call void @llvm.dbg.value(metadata i8* %13, metadata !163, metadata !DIExpression()), !dbg !778
  %14 = bitcast i8* %13 to i64*, !dbg !780
  %15 = load i64, i64* %14, align 1, !dbg !780, !noalias !774
  call void @llvm.dbg.value(metadata i64 %15, metadata !168, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %15, metadata !758, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !764
  %16 = load i64, i64* %1, align 4, !dbg !781, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %16, metadata !759, metadata !DIExpression()), !dbg !764
  %17 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !782
  %18 = load i64, i64* %17, align 4, !dbg !782, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %18, metadata !760, metadata !DIExpression()), !dbg !764
  %19 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !783
  %20 = load i64, i64* %19, align 4, !dbg !783, !tbaa !192
  call void @llvm.dbg.value(metadata i64 %20, metadata !761, metadata !DIExpression()), !dbg !764
  %21 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !784
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #17, !dbg !784
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %6, metadata !762, metadata !DIExpression()), !dbg !785
  %22 = shl i64 %20, 24, !dbg !786
  %23 = lshr i64 %18, 20, !dbg !787
  %24 = or i64 %22, %23, !dbg !788
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %24) #17, !dbg !789
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !790
  %26 = load i64, i64* %25, align 8, !dbg !790, !tbaa !183
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !790
  %28 = load i64, i64* %27, align 8, !dbg !790, !tbaa !186
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %26, i64 %28, i32 noundef 64) #17, !dbg !790
  %29 = shl i64 %18, 44, !dbg !791
  %30 = or i64 %29, %16, !dbg !792
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %30) #17, !dbg !793
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !794
  %32 = load i64, i64* %31, align 8, !dbg !794, !tbaa !183
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !794
  %34 = load i64, i64* %33, align 8, !dbg !794, !tbaa !186
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !794
  %36 = load i64, i64* %35, align 8, !dbg !794, !tbaa !183
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !794
  %38 = load i64, i64* %37, align 8, !dbg !794, !tbaa !186
  call void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %32, i64 %34, i64 %36, i64 %38) #17, !dbg !794
  %39 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !795
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %39) #17, !dbg !795
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %10, metadata !763, metadata !DIExpression()), !dbg !796
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !797
  %41 = load i64, i64* %40, align 8, !dbg !797, !tbaa !183
  %42 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !797
  %43 = load i64, i64* %42, align 8, !dbg !797, !tbaa !186
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %41, i64 %43, i64 %12, i64 %15) #17, !dbg !797
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !798
  %45 = load i64, i64* %44, align 8, !dbg !798, !tbaa !183
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !798
  %47 = load i64, i64* %46, align 8, !dbg !798, !tbaa !186
  call void @llvm.dbg.value(metadata i64 %45, metadata !799, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !805
  call void @llvm.dbg.value(metadata i64 %47, metadata !799, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !805
  call void @llvm.dbg.value(metadata i8* %3, metadata !804, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i8* %3, metadata !807, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i8* %3, metadata !813, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %45, metadata !818, metadata !DIExpression()), !dbg !819
  %48 = bitcast i8* %3 to i64*, !dbg !821
  store i64 %45, i64* %48, align 1, !dbg !821
  %49 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !822
  call void @llvm.dbg.value(metadata i8* %49, metadata !813, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i64 %47, metadata !818, metadata !DIExpression()), !dbg !823
  %50 = bitcast i8* %49 to i64*, !dbg !825
  store i64 %47, i64* %50, align 1, !dbg !825
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %39) #17, !dbg !826
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #17, !dbg !826
  ret void, !dbg !826
}

declare !dbg !827 void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #12

declare !dbg !831 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #12

declare !dbg !834 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #12

declare !dbg !837 void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #12

declare !dbg !838 i64 @FStar_UInt128_uint128_to_uint64(i64, i64) local_unnamed_addr #12

declare !dbg !841 void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #12

declare !dbg !842 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #12

declare !dbg !845 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #12

declare !dbg !846 void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #13

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i1 immarg) #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #12 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }

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
!60 = !DILocalVariable(name: "r", arg: 1, scope: !61, file: !1, line: 279, type: !54)
!61 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_mk_state", scope: !1, file: !1, line: 279, type: !47, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!62 = !{!60, !63}
!63 = !DILocalVariable(name: "h", arg: 2, scope: !61, file: !1, line: 279, type: !54)
!64 = !DILocation(line: 0, scope: !61, inlinedAt: !65)
!65 = distinct !DILocation(line: 353, column: 10, scope: !46)
!66 = !DILocation(line: 281, column: 55, scope: !61, inlinedAt: !65)
!67 = !{!68, !69, i64 0}
!68 = !{!"", !69, i64 0, !69, i64 4}
!69 = !{!"any pointer", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"Hacl_Impl_Poly1305_64_mk_state: argument 0"}
!74 = distinct !{!74, !"Hacl_Impl_Poly1305_64_mk_state"}
!75 = !{!68, !69, i64 4}
!76 = !DILocation(line: 353, column: 3, scope: !46)
!77 = distinct !DISubprogram(name: "AEAD_Poly1305_64_mul_div_16", scope: !1, file: !1, line: 356, type: !78, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{!3, !3}
!80 = !{!81}
!81 = !DILocalVariable(name: "len1", arg: 1, scope: !77, file: !1, line: 356, type: !3)
!82 = !DILocation(line: 0, scope: !77)
!83 = !DILocation(line: 358, column: 24, scope: !77)
!84 = !DILocation(line: 358, column: 3, scope: !77)
!85 = distinct !DISubprogram(name: "AEAD_Poly1305_64_pad_last", scope: !1, file: !1, line: 362, type: !86, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !49, !88, !3}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 24, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 38, baseType: !91)
!91 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !{!93, !94, !95, !96, !100}
!93 = !DILocalVariable(name: "st", arg: 1, scope: !85, file: !1, line: 363, type: !49)
!94 = !DILocalVariable(name: "input", arg: 2, scope: !85, file: !1, line: 364, type: !88)
!95 = !DILocalVariable(name: "len1", arg: 3, scope: !85, file: !1, line: 365, type: !3)
!96 = !DILocalVariable(name: "b", scope: !85, file: !1, line: 368, type: !97)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 16)
!100 = !DILocalVariable(name: "b0", scope: !101, file: !1, line: 373, type: !88)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 370, column: 3)
!102 = distinct !DILexicalBlock(scope: !85, file: !1, line: 369, column: 7)
!103 = !DILocation(line: 0, scope: !85)
!104 = !DILocation(line: 368, column: 3, scope: !85)
!105 = !DILocation(line: 368, column: 11, scope: !85)
!106 = !DILocation(line: 369, column: 14, scope: !102)
!107 = !DILocation(line: 369, column: 7, scope: !85)
!108 = !DILocation(line: 372, column: 5, scope: !101)
!109 = !DILocation(line: 0, scope: !101)
!110 = !DILocation(line: 374, column: 5, scope: !101)
!111 = !DILocation(line: 375, column: 3, scope: !101)
!112 = !DILocation(line: 376, column: 1, scope: !85)
!113 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_update", scope: !1, file: !1, line: 168, type: !114, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !49, !88}
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !129, !137, !138, !139, !140, !141}
!117 = !DILocalVariable(name: "st", arg: 1, scope: !113, file: !1, line: 169, type: !49)
!118 = !DILocalVariable(name: "m", arg: 2, scope: !113, file: !1, line: 170, type: !88)
!119 = !DILocalVariable(name: "scrut0", scope: !113, file: !1, line: 173, type: !49)
!120 = !DILocalVariable(name: "h", scope: !113, file: !1, line: 174, type: !54)
!121 = !DILocalVariable(name: "acc", scope: !113, file: !1, line: 175, type: !54)
!122 = !DILocalVariable(name: "scrut", scope: !113, file: !1, line: 176, type: !49)
!123 = !DILocalVariable(name: "r", scope: !113, file: !1, line: 177, type: !54)
!124 = !DILocalVariable(name: "r3", scope: !113, file: !1, line: 178, type: !54)
!125 = !DILocalVariable(name: "tmp", scope: !113, file: !1, line: 179, type: !126)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 3)
!129 = !DILocalVariable(name: "m0", scope: !113, file: !1, line: 180, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !131, line: 37, baseType: !132)
!131 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !131, line: 35, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 30, size: 128, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !133, file: !131, line: 32, baseType: !8, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !133, file: !131, line: 33, baseType: !8, size: 64, offset: 64)
!137 = !DILocalVariable(name: "r0", scope: !113, file: !1, line: 181, type: !8)
!138 = !DILocalVariable(name: "r1", scope: !113, file: !1, line: 183, type: !8)
!139 = !DILocalVariable(name: "r2", scope: !113, file: !1, line: 186, type: !8)
!140 = !DILocalVariable(name: "b2", scope: !113, file: !1, line: 190, type: !8)
!141 = !DILocalVariable(name: "b2_", scope: !113, file: !1, line: 191, type: !8)
!142 = !DILocation(line: 0, scope: !113)
!143 = !DILocation(line: 179, column: 3, scope: !113)
!144 = !DILocation(line: 179, column: 12, scope: !113)
!145 = !DILocalVariable(name: "r", scope: !146, file: !27, line: 544, type: !149)
!146 = distinct !DISubprogram(name: "load128_le", scope: !27, file: !27, line: 543, type: !147, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !88}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !27, line: 510, baseType: !132)
!150 = !{!151, !145}
!151 = !DILocalVariable(name: "b", arg: 1, scope: !146, file: !27, line: 543, type: !88)
!152 = !DILocation(line: 0, scope: !146, inlinedAt: !153)
!153 = distinct !DILocation(line: 180, column: 24, scope: !113)
!154 = !DILocalVariable(name: "b", arg: 1, scope: !155, file: !27, line: 517, type: !88)
!155 = distinct !DISubprogram(name: "load128_le_", scope: !27, file: !27, line: 517, type: !156, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !159)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !88, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!159 = !{!154, !160}
!160 = !DILocalVariable(name: "r", arg: 2, scope: !155, file: !27, line: 517, type: !158)
!161 = !DILocation(line: 0, scope: !155, inlinedAt: !162)
!162 = distinct !DILocation(line: 545, column: 3, scope: !146, inlinedAt: !153)
!163 = !DILocalVariable(name: "b", arg: 1, scope: !164, file: !27, line: 347, type: !88)
!164 = distinct !DISubprogram(name: "load64", scope: !27, file: !27, line: 347, type: !165, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{!8, !88}
!167 = !{!163, !168}
!168 = !DILocalVariable(name: "x", scope: !164, file: !27, line: 348, type: !8)
!169 = !DILocation(line: 0, scope: !164, inlinedAt: !170)
!170 = distinct !DILocation(line: 518, column: 12, scope: !155, inlinedAt: !162)
!171 = !DILocation(line: 349, column: 3, scope: !164, inlinedAt: !170)
!172 = !{!173}
!173 = distinct !{!173, !174, !"load128_le: argument 0"}
!174 = distinct !{!174, !"load128_le"}
!175 = !DILocation(line: 519, column: 13, scope: !155, inlinedAt: !162)
!176 = !DILocation(line: 0, scope: !164, inlinedAt: !177)
!177 = distinct !DILocation(line: 519, column: 13, scope: !155, inlinedAt: !162)
!178 = !DILocation(line: 349, column: 3, scope: !164, inlinedAt: !177)
!179 = !DILocation(line: 181, column: 17, scope: !113)
!180 = !DILocation(line: 181, column: 53, scope: !113)
!181 = !DILocation(line: 184, column: 37, scope: !113)
!182 = !DILocation(line: 184, column: 5, scope: !113)
!183 = !{!184, !185, i64 0}
!184 = !{!"", !185, i64 0, !185, i64 8}
!185 = !{!"long long", !70, i64 0}
!186 = !{!184, !185, i64 8}
!187 = !DILocation(line: 185, column: 5, scope: !113)
!188 = !DILocation(line: 186, column: 49, scope: !113)
!189 = !DILocation(line: 186, column: 17, scope: !113)
!190 = !DILocation(line: 187, column: 3, scope: !113)
!191 = !DILocation(line: 187, column: 11, scope: !113)
!192 = !{!185, !185, i64 0}
!193 = !DILocation(line: 188, column: 3, scope: !113)
!194 = !DILocation(line: 188, column: 11, scope: !113)
!195 = !DILocation(line: 189, column: 3, scope: !113)
!196 = !DILocation(line: 191, column: 43, scope: !113)
!197 = !DILocation(line: 192, column: 11, scope: !113)
!198 = !DILocalVariable(name: "acc", arg: 1, scope: !199, file: !1, line: 156, type: !54)
!199 = distinct !DISubprogram(name: "Hacl_Bignum_AddAndMultiply_add_and_multiply", scope: !1, file: !1, line: 156, type: !200, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !54, !54, !54}
!202 = !{!198, !203, !204, !205, !207, !210}
!203 = !DILocalVariable(name: "block", arg: 2, scope: !199, file: !1, line: 156, type: !54)
!204 = !DILocalVariable(name: "r", arg: 3, scope: !199, file: !1, line: 156, type: !54)
!205 = !DILocalVariable(name: "i", scope: !206, file: !1, line: 158, type: !3)
!206 = distinct !DILexicalBlock(scope: !199, file: !1, line: 158, column: 3)
!207 = !DILocalVariable(name: "xi", scope: !208, file: !1, line: 160, type: !8)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 159, column: 3)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 158, column: 3)
!210 = !DILocalVariable(name: "yi", scope: !208, file: !1, line: 161, type: !8)
!211 = !DILocation(line: 0, scope: !199, inlinedAt: !212)
!212 = distinct !DILocation(line: 193, column: 3, scope: !113)
!213 = !DILocation(line: 0, scope: !206, inlinedAt: !212)
!214 = !DILocation(line: 158, column: 3, scope: !206, inlinedAt: !212)
!215 = !DILocalVariable(name: "output", arg: 1, scope: !216, file: !1, line: 135, type: !54)
!216 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_fmul", scope: !1, file: !1, line: 135, type: !200, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!217 = !{!215, !218, !219, !220, !221, !223, !225, !226, !227, !228}
!218 = !DILocalVariable(name: "input", arg: 2, scope: !216, file: !1, line: 135, type: !54)
!219 = !DILocalVariable(name: "input2", arg: 3, scope: !216, file: !1, line: 135, type: !54)
!220 = !DILocalVariable(name: "tmp", scope: !216, file: !1, line: 137, type: !126)
!221 = !DILocalVariable(name: "t", scope: !216, file: !1, line: 140, type: !222)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 384, elements: !127)
!223 = !DILocalVariable(name: "_i", scope: !224, file: !1, line: 141, type: !3)
!224 = distinct !DILexicalBlock(scope: !216, file: !1, line: 141, column: 3)
!225 = !DILocalVariable(name: "i0", scope: !216, file: !1, line: 147, type: !8)
!226 = !DILocalVariable(name: "i1", scope: !216, file: !1, line: 148, type: !8)
!227 = !DILocalVariable(name: "i0_", scope: !216, file: !1, line: 149, type: !8)
!228 = !DILocalVariable(name: "i1_", scope: !216, file: !1, line: 150, type: !8)
!229 = !DILocation(line: 0, scope: !216, inlinedAt: !230)
!230 = distinct !DILocation(line: 164, column: 3, scope: !199, inlinedAt: !212)
!231 = !DILocation(line: 137, column: 3, scope: !216, inlinedAt: !230)
!232 = !DILocation(line: 137, column: 12, scope: !216, inlinedAt: !230)
!233 = !DILocation(line: 138, column: 3, scope: !216, inlinedAt: !230)
!234 = !DILocation(line: 140, column: 3, scope: !216, inlinedAt: !230)
!235 = !DILocation(line: 140, column: 19, scope: !216, inlinedAt: !230)
!236 = !DILocation(line: 0, scope: !224, inlinedAt: !230)
!237 = !DILocation(line: 141, column: 3, scope: !224, inlinedAt: !230)
!238 = !DILocalVariable(name: "output", arg: 1, scope: !239, file: !1, line: 122, type: !242)
!239 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_mul_shift_reduce_", scope: !1, file: !1, line: 122, type: !240, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !243)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !242, !54, !54}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!243 = !{!238, !244, !245, !246, !248, !251, !252}
!244 = !DILocalVariable(name: "input", arg: 2, scope: !239, file: !1, line: 122, type: !54)
!245 = !DILocalVariable(name: "input2", arg: 3, scope: !239, file: !1, line: 122, type: !54)
!246 = !DILocalVariable(name: "i", scope: !247, file: !1, line: 124, type: !3)
!247 = distinct !DILexicalBlock(scope: !239, file: !1, line: 124, column: 3)
!248 = !DILocalVariable(name: "input2i", scope: !249, file: !1, line: 126, type: !8)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 125, column: 3)
!250 = distinct !DILexicalBlock(scope: !247, file: !1, line: 124, column: 3)
!251 = !DILocalVariable(name: "i", scope: !239, file: !1, line: 130, type: !3)
!252 = !DILocalVariable(name: "input2i", scope: !239, file: !1, line: 131, type: !8)
!253 = !DILocation(line: 0, scope: !239, inlinedAt: !254)
!254 = distinct !DILocation(line: 143, column: 3, scope: !216, inlinedAt: !230)
!255 = !DILocation(line: 0, scope: !247, inlinedAt: !254)
!256 = !DILocation(line: 124, column: 3, scope: !247, inlinedAt: !254)
!257 = !DILocation(line: 131, column: 22, scope: !239, inlinedAt: !254)
!258 = !DILocation(line: 0, scope: !259, inlinedAt: !272)
!259 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_sum_scalar_multiplication_", scope: !1, file: !1, line: 66, type: !260, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !242, !54, !8}
!262 = !{!263, !264, !265, !266, !268, !271}
!263 = !DILocalVariable(name: "output", arg: 1, scope: !259, file: !1, line: 67, type: !242)
!264 = !DILocalVariable(name: "input", arg: 2, scope: !259, file: !1, line: 68, type: !54)
!265 = !DILocalVariable(name: "s", arg: 3, scope: !259, file: !1, line: 69, type: !8)
!266 = !DILocalVariable(name: "i", scope: !267, file: !1, line: 72, type: !3)
!267 = distinct !DILexicalBlock(scope: !259, file: !1, line: 72, column: 3)
!268 = !DILocalVariable(name: "xi", scope: !269, file: !1, line: 74, type: !130)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 73, column: 3)
!270 = distinct !DILexicalBlock(scope: !267, file: !1, line: 72, column: 3)
!271 = !DILocalVariable(name: "yi", scope: !269, file: !1, line: 75, type: !8)
!272 = distinct !DILocation(line: 132, column: 3, scope: !239, inlinedAt: !254)
!273 = !DILocation(line: 0, scope: !267, inlinedAt: !272)
!274 = !DILocation(line: 72, column: 3, scope: !267, inlinedAt: !272)
!275 = !DILocation(line: 74, column: 26, scope: !269, inlinedAt: !272)
!276 = !{i64 0, i64 8, !192, i64 8, i64 8, !192}
!277 = !DILocation(line: 0, scope: !269, inlinedAt: !272)
!278 = !{i64 0, i64 8, !192}
!279 = !DILocation(line: 75, column: 19, scope: !269, inlinedAt: !272)
!280 = !DILocation(line: 76, column: 17, scope: !269, inlinedAt: !272)
!281 = !DILocation(line: 76, column: 43, scope: !269, inlinedAt: !272)
!282 = !DILocation(line: 72, column: 59, scope: !270, inlinedAt: !272)
!283 = !DILocation(line: 72, column: 37, scope: !270, inlinedAt: !272)
!284 = distinct !{!284, !274, !285, !286, !287}
!285 = !DILocation(line: 77, column: 3, scope: !267, inlinedAt: !272)
!286 = !{!"llvm.loop.mustprogress"}
!287 = !{!"llvm.loop.unroll.disable"}
!288 = !DILocation(line: 126, column: 24, scope: !249, inlinedAt: !254)
!289 = !DILocation(line: 0, scope: !249, inlinedAt: !254)
!290 = !DILocation(line: 0, scope: !259, inlinedAt: !291)
!291 = distinct !DILocation(line: 127, column: 5, scope: !249, inlinedAt: !254)
!292 = !DILocation(line: 0, scope: !267, inlinedAt: !291)
!293 = !DILocation(line: 72, column: 3, scope: !267, inlinedAt: !291)
!294 = !DILocation(line: 74, column: 26, scope: !269, inlinedAt: !291)
!295 = !DILocation(line: 0, scope: !269, inlinedAt: !291)
!296 = !DILocation(line: 75, column: 19, scope: !269, inlinedAt: !291)
!297 = !DILocation(line: 76, column: 17, scope: !269, inlinedAt: !291)
!298 = !DILocation(line: 76, column: 43, scope: !269, inlinedAt: !291)
!299 = !DILocation(line: 72, column: 59, scope: !270, inlinedAt: !291)
!300 = !DILocation(line: 72, column: 37, scope: !270, inlinedAt: !291)
!301 = distinct !{!301, !293, !302, !286, !287}
!302 = !DILocation(line: 77, column: 3, scope: !267, inlinedAt: !291)
!303 = !DILocation(line: 78, column: 1, scope: !259, inlinedAt: !291)
!304 = !DILocalVariable(name: "output", arg: 1, scope: !305, file: !1, line: 108, type: !54)
!305 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_shift_reduce", scope: !1, file: !1, line: 108, type: !306, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !54}
!308 = !{!304, !309, !310, !312, !315}
!309 = !DILocalVariable(name: "tmp", scope: !305, file: !1, line: 110, type: !8)
!310 = !DILocalVariable(name: "i", scope: !311, file: !1, line: 111, type: !3)
!311 = distinct !DILexicalBlock(scope: !305, file: !1, line: 111, column: 3)
!312 = !DILocalVariable(name: "ctr", scope: !313, file: !1, line: 113, type: !3)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 112, column: 3)
!314 = distinct !DILexicalBlock(scope: !311, file: !1, line: 111, column: 3)
!315 = !DILocalVariable(name: "z", scope: !313, file: !1, line: 114, type: !8)
!316 = !DILocation(line: 0, scope: !305, inlinedAt: !317)
!317 = distinct !DILocation(line: 128, column: 5, scope: !249, inlinedAt: !254)
!318 = !DILocation(line: 110, column: 18, scope: !305, inlinedAt: !317)
!319 = !DILocation(line: 0, scope: !311, inlinedAt: !317)
!320 = !DILocation(line: 115, column: 17, scope: !313, inlinedAt: !317)
!321 = !DILocation(line: 0, scope: !313, inlinedAt: !317)
!322 = !DILocalVariable(name: "b", arg: 1, scope: !323, file: !1, line: 27, type: !54)
!323 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_reduce", scope: !1, file: !1, line: 27, type: !306, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !324)
!324 = !{!322, !325}
!325 = !DILocalVariable(name: "b0", scope: !323, file: !1, line: 29, type: !8)
!326 = !DILocation(line: 0, scope: !323, inlinedAt: !327)
!327 = distinct !DILocation(line: 118, column: 3, scope: !305, inlinedAt: !317)
!328 = !DILocation(line: 30, column: 32, scope: !323, inlinedAt: !327)
!329 = !DILocation(line: 30, column: 9, scope: !323, inlinedAt: !327)
!330 = !DILocation(line: 124, column: 59, scope: !250, inlinedAt: !254)
!331 = !DILocation(line: 124, column: 37, scope: !250, inlinedAt: !254)
!332 = distinct !{!332, !256, !333, !286, !287}
!333 = !DILocation(line: 129, column: 3, scope: !247, inlinedAt: !254)
!334 = !DILocation(line: 78, column: 1, scope: !259, inlinedAt: !272)
!335 = !DILocalVariable(name: "tmp", arg: 1, scope: !336, file: !1, line: 80, type: !242)
!336 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_wide_", scope: !1, file: !1, line: 80, type: !337, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !242}
!339 = !{!335, !340, !342, !345, !346, !347, !348}
!340 = !DILocalVariable(name: "i", scope: !341, file: !1, line: 82, type: !3)
!341 = distinct !DILexicalBlock(scope: !336, file: !1, line: 82, column: 3)
!342 = !DILocalVariable(name: "ctr", scope: !343, file: !1, line: 84, type: !3)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 83, column: 3)
!344 = distinct !DILexicalBlock(scope: !341, file: !1, line: 82, column: 3)
!345 = !DILocalVariable(name: "tctr", scope: !343, file: !1, line: 85, type: !130)
!346 = !DILocalVariable(name: "tctrp1", scope: !343, file: !1, line: 86, type: !130)
!347 = !DILocalVariable(name: "r0", scope: !343, file: !1, line: 87, type: !8)
!348 = !DILocalVariable(name: "c", scope: !343, file: !1, line: 88, type: !130)
!349 = !DILocation(line: 0, scope: !336, inlinedAt: !350)
!350 = distinct !DILocation(line: 144, column: 3, scope: !216, inlinedAt: !230)
!351 = !DILocation(line: 0, scope: !341, inlinedAt: !350)
!352 = !DILocation(line: 82, column: 3, scope: !341, inlinedAt: !350)
!353 = !DILocation(line: 0, scope: !343, inlinedAt: !350)
!354 = !DILocation(line: 85, column: 28, scope: !343, inlinedAt: !350)
!355 = !DILocation(line: 86, column: 38, scope: !343, inlinedAt: !350)
!356 = !DILocation(line: 86, column: 30, scope: !343, inlinedAt: !350)
!357 = !DILocation(line: 87, column: 19, scope: !343, inlinedAt: !350)
!358 = !DILocation(line: 87, column: 57, scope: !343, inlinedAt: !350)
!359 = !DILocation(line: 88, column: 5, scope: !343, inlinedAt: !350)
!360 = !DILocation(line: 88, column: 21, scope: !343, inlinedAt: !350)
!361 = !DILocation(line: 88, column: 25, scope: !343, inlinedAt: !350)
!362 = !DILocation(line: 89, column: 16, scope: !343, inlinedAt: !350)
!363 = !DILocation(line: 90, column: 31, scope: !343, inlinedAt: !350)
!364 = !DILocation(line: 91, column: 3, scope: !344, inlinedAt: !350)
!365 = !DILocation(line: 82, column: 37, scope: !344, inlinedAt: !350)
!366 = distinct !{!366, !352, !367, !286, !287}
!367 = !DILocation(line: 91, column: 3, scope: !341, inlinedAt: !350)
!368 = !DILocation(line: 0, scope: !369, inlinedAt: !377)
!369 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top_wide", scope: !1, file: !1, line: 42, type: !337, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !370)
!370 = !{!371, !372, !373, !374, !375, !376}
!371 = !DILocalVariable(name: "b", arg: 1, scope: !369, file: !1, line: 42, type: !242)
!372 = !DILocalVariable(name: "b2", scope: !369, file: !1, line: 44, type: !130)
!373 = !DILocalVariable(name: "b0", scope: !369, file: !1, line: 45, type: !130)
!374 = !DILocalVariable(name: "b2_", scope: !369, file: !1, line: 47, type: !130)
!375 = !DILocalVariable(name: "b2_42", scope: !369, file: !1, line: 48, type: !8)
!376 = !DILocalVariable(name: "b0_", scope: !369, file: !1, line: 50, type: !130)
!377 = distinct !DILocation(line: 145, column: 3, scope: !216, inlinedAt: !230)
!378 = !DILocation(line: 44, column: 24, scope: !369, inlinedAt: !377)
!379 = !DILocation(line: 45, column: 24, scope: !369, inlinedAt: !377)
!380 = !DILocation(line: 46, column: 3, scope: !369, inlinedAt: !377)
!381 = !DILocation(line: 47, column: 3, scope: !369, inlinedAt: !377)
!382 = !DILocation(line: 47, column: 34, scope: !369, inlinedAt: !377)
!383 = !DILocation(line: 47, column: 9, scope: !369, inlinedAt: !377)
!384 = !DILocation(line: 48, column: 52, scope: !369, inlinedAt: !377)
!385 = !DILocation(line: 48, column: 20, scope: !369, inlinedAt: !377)
!386 = !DILocation(line: 50, column: 87, scope: !369, inlinedAt: !377)
!387 = !DILocation(line: 50, column: 31, scope: !369, inlinedAt: !377)
!388 = !DILocation(line: 50, column: 9, scope: !369, inlinedAt: !377)
!389 = !DILocation(line: 51, column: 3, scope: !369, inlinedAt: !377)
!390 = !DILocation(line: 51, column: 11, scope: !369, inlinedAt: !377)
!391 = !DILocation(line: 53, column: 1, scope: !369, inlinedAt: !377)
!392 = !DILocalVariable(name: "output", arg: 1, scope: !393, file: !1, line: 56, type: !54)
!393 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_copy_from_wide_", scope: !1, file: !1, line: 56, type: !394, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !54, !242}
!396 = !{!392, !397, !398, !400}
!397 = !DILocalVariable(name: "input", arg: 2, scope: !393, file: !1, line: 56, type: !242)
!398 = !DILocalVariable(name: "i", scope: !399, file: !1, line: 58, type: !3)
!399 = distinct !DILexicalBlock(scope: !393, file: !1, line: 58, column: 3)
!400 = !DILocalVariable(name: "xi", scope: !401, file: !1, line: 60, type: !130)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 59, column: 3)
!402 = distinct !DILexicalBlock(scope: !399, file: !1, line: 58, column: 3)
!403 = !DILocation(line: 0, scope: !393, inlinedAt: !404)
!404 = distinct !DILocation(line: 146, column: 3, scope: !216, inlinedAt: !230)
!405 = !DILocation(line: 0, scope: !399, inlinedAt: !404)
!406 = !DILocation(line: 58, column: 3, scope: !399, inlinedAt: !404)
!407 = !DILocation(line: 60, column: 26, scope: !401, inlinedAt: !404)
!408 = !DILocation(line: 0, scope: !401, inlinedAt: !404)
!409 = !DILocation(line: 61, column: 17, scope: !401, inlinedAt: !404)
!410 = !DILocation(line: 61, column: 5, scope: !401, inlinedAt: !404)
!411 = !DILocation(line: 61, column: 15, scope: !401, inlinedAt: !404)
!412 = !DILocation(line: 58, column: 59, scope: !402, inlinedAt: !404)
!413 = !DILocation(line: 58, column: 37, scope: !402, inlinedAt: !404)
!414 = distinct !{!414, !406, !415, !286, !287}
!415 = !DILocation(line: 62, column: 3, scope: !399, inlinedAt: !404)
!416 = !DILocation(line: 142, column: 5, scope: !417, inlinedAt: !230)
!417 = distinct !DILexicalBlock(scope: !224, file: !1, line: 141, column: 3)
!418 = !DILocation(line: 142, column: 13, scope: !417, inlinedAt: !230)
!419 = !DILocation(line: 141, column: 45, scope: !417, inlinedAt: !230)
!420 = !DILocation(line: 141, column: 29, scope: !417, inlinedAt: !230)
!421 = distinct !{!421, !237, !422, !286, !287}
!422 = !DILocation(line: 142, column: 57, scope: !224, inlinedAt: !230)
!423 = !DILocation(line: 160, column: 19, scope: !208, inlinedAt: !212)
!424 = !DILocation(line: 0, scope: !208, inlinedAt: !212)
!425 = !DILocation(line: 161, column: 19, scope: !208, inlinedAt: !212)
!426 = !DILocation(line: 162, column: 17, scope: !208, inlinedAt: !212)
!427 = !DILocation(line: 162, column: 12, scope: !208, inlinedAt: !212)
!428 = !DILocation(line: 158, column: 59, scope: !209, inlinedAt: !212)
!429 = !DILocation(line: 158, column: 37, scope: !209, inlinedAt: !212)
!430 = distinct !{!430, !214, !431, !286, !287}
!431 = !DILocation(line: 163, column: 3, scope: !206, inlinedAt: !212)
!432 = !DILocation(line: 147, column: 17, scope: !216, inlinedAt: !230)
!433 = !DILocation(line: 148, column: 17, scope: !216, inlinedAt: !230)
!434 = !DILocation(line: 149, column: 21, scope: !216, inlinedAt: !230)
!435 = !DILocation(line: 150, column: 27, scope: !216, inlinedAt: !230)
!436 = !DILocation(line: 150, column: 21, scope: !216, inlinedAt: !230)
!437 = !DILocation(line: 151, column: 14, scope: !216, inlinedAt: !230)
!438 = !DILocation(line: 152, column: 14, scope: !216, inlinedAt: !230)
!439 = !DILocation(line: 153, column: 1, scope: !216, inlinedAt: !230)
!440 = !DILocation(line: 194, column: 1, scope: !113)
!441 = distinct !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_init", scope: !1, file: !1, line: 379, type: !442, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !49, !88, !3, !88}
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!445 = !DILocalVariable(name: "st", arg: 1, scope: !441, file: !1, line: 380, type: !49)
!446 = !DILocalVariable(name: "input", arg: 2, scope: !441, file: !1, line: 381, type: !88)
!447 = !DILocalVariable(name: "len1", arg: 3, scope: !441, file: !1, line: 382, type: !3)
!448 = !DILocalVariable(name: "k1", arg: 4, scope: !441, file: !1, line: 383, type: !88)
!449 = !DILocalVariable(name: "len_16", scope: !441, file: !1, line: 386, type: !3)
!450 = !DILocalVariable(name: "rem_16", scope: !441, file: !1, line: 387, type: !3)
!451 = !DILocalVariable(name: "kr", scope: !441, file: !1, line: 388, type: !88)
!452 = !DILocalVariable(name: "len_", scope: !441, file: !1, line: 389, type: !3)
!453 = !DILocalVariable(name: "part_input", scope: !441, file: !1, line: 390, type: !88)
!454 = !DILocalVariable(name: "last_block", scope: !441, file: !1, line: 391, type: !88)
!455 = !DILocation(line: 0, scope: !441)
!456 = !DILocation(line: 386, column: 26, scope: !441)
!457 = !DILocation(line: 387, column: 26, scope: !441)
!458 = !DILocation(line: 392, column: 64, scope: !441)
!459 = !DILocation(line: 0, scope: !460, inlinedAt: !479)
!460 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_poly1305_partial", scope: !1, file: !1, line: 302, type: !461, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !49, !88, !8, !88}
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!464 = !DILocalVariable(name: "st", arg: 1, scope: !460, file: !1, line: 303, type: !49)
!465 = !DILocalVariable(name: "input", arg: 2, scope: !460, file: !1, line: 304, type: !88)
!466 = !DILocalVariable(name: "len1", arg: 3, scope: !460, file: !1, line: 305, type: !8)
!467 = !DILocalVariable(name: "kr", arg: 4, scope: !460, file: !1, line: 306, type: !88)
!468 = !DILocalVariable(name: "scrut", scope: !460, file: !1, line: 309, type: !49)
!469 = !DILocalVariable(name: "r", scope: !460, file: !1, line: 310, type: !54)
!470 = !DILocalVariable(name: "x0", scope: !460, file: !1, line: 311, type: !54)
!471 = !DILocalVariable(name: "k1", scope: !460, file: !1, line: 312, type: !130)
!472 = !DILocalVariable(name: "k_clamped", scope: !460, file: !1, line: 314, type: !130)
!473 = !DILocalVariable(name: "r0", scope: !460, file: !1, line: 319, type: !8)
!474 = !DILocalVariable(name: "r1", scope: !460, file: !1, line: 321, type: !8)
!475 = !DILocalVariable(name: "r2", scope: !460, file: !1, line: 325, type: !8)
!476 = !DILocalVariable(name: "scrut0", scope: !460, file: !1, line: 329, type: !49)
!477 = !DILocalVariable(name: "h", scope: !460, file: !1, line: 330, type: !54)
!478 = !DILocalVariable(name: "x00", scope: !460, file: !1, line: 331, type: !54)
!479 = distinct !DILocation(line: 392, column: 3, scope: !441)
!480 = !DILocation(line: 0, scope: !146, inlinedAt: !481)
!481 = distinct !DILocation(line: 312, column: 24, scope: !460, inlinedAt: !479)
!482 = !DILocation(line: 0, scope: !155, inlinedAt: !483)
!483 = distinct !DILocation(line: 545, column: 3, scope: !146, inlinedAt: !481)
!484 = !DILocation(line: 0, scope: !164, inlinedAt: !485)
!485 = distinct !DILocation(line: 518, column: 12, scope: !155, inlinedAt: !483)
!486 = !DILocation(line: 349, column: 3, scope: !164, inlinedAt: !485)
!487 = !{!488}
!488 = distinct !{!488, !489, !"load128_le: argument 0"}
!489 = distinct !{!489, !"load128_le"}
!490 = !DILocation(line: 519, column: 13, scope: !155, inlinedAt: !483)
!491 = !DILocation(line: 0, scope: !164, inlinedAt: !492)
!492 = distinct !DILocation(line: 519, column: 13, scope: !155, inlinedAt: !483)
!493 = !DILocation(line: 349, column: 3, scope: !164, inlinedAt: !492)
!494 = !DILocation(line: 313, column: 3, scope: !460, inlinedAt: !479)
!495 = !DILocation(line: 314, column: 3, scope: !460, inlinedAt: !479)
!496 = !DILocation(line: 316, column: 52, scope: !460, inlinedAt: !479)
!497 = !DILocation(line: 316, column: 27, scope: !460, inlinedAt: !479)
!498 = !DILocation(line: 318, column: 9, scope: !460, inlinedAt: !479)
!499 = !DILocation(line: 316, column: 7, scope: !460, inlinedAt: !479)
!500 = !DILocation(line: 315, column: 5, scope: !460, inlinedAt: !479)
!501 = !DILocation(line: 319, column: 17, scope: !460, inlinedAt: !479)
!502 = !DILocation(line: 319, column: 60, scope: !460, inlinedAt: !479)
!503 = !DILocation(line: 322, column: 37, scope: !460, inlinedAt: !479)
!504 = !DILocation(line: 322, column: 5, scope: !460, inlinedAt: !479)
!505 = !DILocation(line: 323, column: 5, scope: !460, inlinedAt: !479)
!506 = !DILocation(line: 325, column: 40, scope: !460, inlinedAt: !479)
!507 = !DILocation(line: 325, column: 8, scope: !460, inlinedAt: !479)
!508 = !DILocation(line: 326, column: 10, scope: !460, inlinedAt: !479)
!509 = !DILocation(line: 327, column: 3, scope: !460, inlinedAt: !479)
!510 = !DILocation(line: 327, column: 10, scope: !460, inlinedAt: !479)
!511 = !DILocation(line: 328, column: 3, scope: !460, inlinedAt: !479)
!512 = !DILocation(line: 328, column: 10, scope: !460, inlinedAt: !479)
!513 = !DILocation(line: 335, column: 3, scope: !460, inlinedAt: !479)
!514 = !DILocation(line: 333, column: 11, scope: !460, inlinedAt: !479)
!515 = !DILocation(line: 336, column: 1, scope: !460, inlinedAt: !479)
!516 = !DILocation(line: 0, scope: !85, inlinedAt: !517)
!517 = distinct !DILocation(line: 393, column: 3, scope: !441)
!518 = !DILocation(line: 368, column: 3, scope: !85, inlinedAt: !517)
!519 = !DILocation(line: 368, column: 11, scope: !85, inlinedAt: !517)
!520 = !DILocation(line: 369, column: 14, scope: !102, inlinedAt: !517)
!521 = !DILocation(line: 369, column: 7, scope: !85, inlinedAt: !517)
!522 = !DILocation(line: 389, column: 33, scope: !441)
!523 = !DILocation(line: 391, column: 31, scope: !441)
!524 = !DILocation(line: 372, column: 5, scope: !101, inlinedAt: !517)
!525 = !DILocation(line: 0, scope: !101, inlinedAt: !517)
!526 = !DILocation(line: 374, column: 5, scope: !101, inlinedAt: !517)
!527 = !DILocation(line: 375, column: 3, scope: !101, inlinedAt: !517)
!528 = !DILocation(line: 376, column: 1, scope: !85, inlinedAt: !517)
!529 = !DILocation(line: 394, column: 1, scope: !441)
!530 = distinct !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_continue", scope: !1, file: !1, line: 397, type: !86, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539}
!532 = !DILocalVariable(name: "st", arg: 1, scope: !530, file: !1, line: 398, type: !49)
!533 = !DILocalVariable(name: "input", arg: 2, scope: !530, file: !1, line: 399, type: !88)
!534 = !DILocalVariable(name: "len1", arg: 3, scope: !530, file: !1, line: 400, type: !3)
!535 = !DILocalVariable(name: "len_16", scope: !530, file: !1, line: 403, type: !3)
!536 = !DILocalVariable(name: "rem_16", scope: !530, file: !1, line: 404, type: !3)
!537 = !DILocalVariable(name: "len_", scope: !530, file: !1, line: 405, type: !3)
!538 = !DILocalVariable(name: "part_input", scope: !530, file: !1, line: 406, type: !88)
!539 = !DILocalVariable(name: "last_block", scope: !530, file: !1, line: 407, type: !88)
!540 = !DILocation(line: 0, scope: !530)
!541 = !DILocation(line: 403, column: 26, scope: !530)
!542 = !DILocation(line: 404, column: 26, scope: !530)
!543 = !DILocation(line: 408, column: 63, scope: !530)
!544 = !DILocation(line: 408, column: 3, scope: !530)
!545 = !DILocation(line: 0, scope: !85, inlinedAt: !546)
!546 = distinct !DILocation(line: 409, column: 3, scope: !530)
!547 = !DILocation(line: 368, column: 3, scope: !85, inlinedAt: !546)
!548 = !DILocation(line: 368, column: 11, scope: !85, inlinedAt: !546)
!549 = !DILocation(line: 369, column: 14, scope: !102, inlinedAt: !546)
!550 = !DILocation(line: 369, column: 7, scope: !85, inlinedAt: !546)
!551 = !DILocation(line: 405, column: 33, scope: !530)
!552 = !DILocation(line: 407, column: 31, scope: !530)
!553 = !DILocation(line: 372, column: 5, scope: !101, inlinedAt: !546)
!554 = !DILocation(line: 0, scope: !101, inlinedAt: !546)
!555 = !DILocation(line: 374, column: 5, scope: !101, inlinedAt: !546)
!556 = !DILocation(line: 375, column: 3, scope: !101, inlinedAt: !546)
!557 = !DILocation(line: 376, column: 1, scope: !85, inlinedAt: !546)
!558 = !DILocation(line: 410, column: 1, scope: !530)
!559 = distinct !DISubprogram(name: "Hacl_Standalone_Poly1305_64_poly1305_blocks", scope: !1, file: !1, line: 285, type: !560, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !562)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !49, !88, !8}
!562 = !{!563, !564, !565, !566, !569, !570}
!563 = !DILocalVariable(name: "st", arg: 1, scope: !559, file: !1, line: 286, type: !49)
!564 = !DILocalVariable(name: "m", arg: 2, scope: !559, file: !1, line: 287, type: !88)
!565 = !DILocalVariable(name: "len1", arg: 3, scope: !559, file: !1, line: 288, type: !8)
!566 = !DILocalVariable(name: "block", scope: !567, file: !1, line: 293, type: !88)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 292, column: 3)
!568 = distinct !DILexicalBlock(scope: !559, file: !1, line: 291, column: 7)
!569 = !DILocalVariable(name: "tail1", scope: !567, file: !1, line: 294, type: !88)
!570 = !DILocalVariable(name: "len2", scope: !567, file: !1, line: 296, type: !8)
!571 = !DILocation(line: 0, scope: !559)
!572 = !DILocation(line: 291, column: 14, scope: !568)
!573 = !DILocation(line: 291, column: 7, scope: !559)
!574 = !DILocation(line: 0, scope: !567)
!575 = !DILocation(line: 294, column: 24, scope: !567)
!576 = !DILocation(line: 295, column: 5, scope: !567)
!577 = !DILocation(line: 296, column: 26, scope: !567)
!578 = !DILocation(line: 297, column: 5, scope: !567)
!579 = !DILocation(line: 298, column: 3, scope: !567)
!580 = !DILocation(line: 299, column: 1, scope: !559)
!581 = distinct !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_finish_", scope: !1, file: !1, line: 413, type: !114, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !582)
!582 = !{!583, !584, !585, !586, !587, !588}
!583 = !DILocalVariable(name: "st", arg: 1, scope: !581, file: !1, line: 414, type: !49)
!584 = !DILocalVariable(name: "input", arg: 2, scope: !581, file: !1, line: 415, type: !88)
!585 = !DILocalVariable(name: "x2", scope: !581, file: !1, line: 419, type: !88)
!586 = !DILocalVariable(name: "scrut", scope: !581, file: !1, line: 422, type: !49)
!587 = !DILocalVariable(name: "h", scope: !581, file: !1, line: 423, type: !54)
!588 = !DILocalVariable(name: "acc", scope: !581, file: !1, line: 424, type: !54)
!589 = !DILocation(line: 0, scope: !581)
!590 = !DILocation(line: 418, column: 3, scope: !581)
!591 = !DILocation(line: 425, column: 3, scope: !581)
!592 = !DILocation(line: 426, column: 1, scope: !581)
!593 = distinct !DISubprogram(name: "Hacl_Impl_Poly1305_64_poly1305_last_pass", scope: !1, file: !1, line: 241, type: !306, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!595 = !DILocalVariable(name: "acc", arg: 1, scope: !593, file: !1, line: 241, type: !54)
!596 = !DILocalVariable(name: "a0", scope: !593, file: !1, line: 245, type: !8)
!597 = !DILocalVariable(name: "a10", scope: !593, file: !1, line: 246, type: !8)
!598 = !DILocalVariable(name: "a20", scope: !593, file: !1, line: 247, type: !8)
!599 = !DILocalVariable(name: "a0_", scope: !593, file: !1, line: 248, type: !8)
!600 = !DILocalVariable(name: "r0", scope: !593, file: !1, line: 249, type: !8)
!601 = !DILocalVariable(name: "a1_", scope: !593, file: !1, line: 250, type: !8)
!602 = !DILocalVariable(name: "r1", scope: !593, file: !1, line: 251, type: !8)
!603 = !DILocalVariable(name: "a2_", scope: !593, file: !1, line: 252, type: !8)
!604 = !DILocalVariable(name: "i0", scope: !593, file: !1, line: 257, type: !8)
!605 = !DILocalVariable(name: "i1", scope: !593, file: !1, line: 258, type: !8)
!606 = !DILocalVariable(name: "i0_", scope: !593, file: !1, line: 259, type: !8)
!607 = !DILocalVariable(name: "i1_", scope: !593, file: !1, line: 260, type: !8)
!608 = !DILocalVariable(name: "a00", scope: !593, file: !1, line: 263, type: !8)
!609 = !DILocalVariable(name: "a1", scope: !593, file: !1, line: 264, type: !8)
!610 = !DILocalVariable(name: "a2", scope: !593, file: !1, line: 265, type: !8)
!611 = !DILocalVariable(name: "mask0", scope: !593, file: !1, line: 266, type: !8)
!612 = !DILocalVariable(name: "mask1", scope: !593, file: !1, line: 267, type: !8)
!613 = !DILocalVariable(name: "mask2", scope: !593, file: !1, line: 268, type: !8)
!614 = !DILocalVariable(name: "mask", scope: !593, file: !1, line: 269, type: !8)
!615 = !DILocalVariable(name: "a0_0", scope: !593, file: !1, line: 270, type: !8)
!616 = !DILocalVariable(name: "a1_0", scope: !593, file: !1, line: 271, type: !8)
!617 = !DILocalVariable(name: "a2_0", scope: !593, file: !1, line: 272, type: !8)
!618 = !DILocation(line: 0, scope: !593)
!619 = !DILocalVariable(name: "tmp", arg: 1, scope: !620, file: !1, line: 94, type: !54)
!620 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_limb_", scope: !1, file: !1, line: 94, type: !306, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !621)
!621 = !{!619, !622, !624, !627, !628, !629, !630}
!622 = !DILocalVariable(name: "i", scope: !623, file: !1, line: 96, type: !3)
!623 = distinct !DILexicalBlock(scope: !620, file: !1, line: 96, column: 3)
!624 = !DILocalVariable(name: "ctr", scope: !625, file: !1, line: 98, type: !3)
!625 = distinct !DILexicalBlock(scope: !626, file: !1, line: 97, column: 3)
!626 = distinct !DILexicalBlock(scope: !623, file: !1, line: 96, column: 3)
!627 = !DILocalVariable(name: "tctr", scope: !625, file: !1, line: 99, type: !8)
!628 = !DILocalVariable(name: "tctrp1", scope: !625, file: !1, line: 100, type: !8)
!629 = !DILocalVariable(name: "r0", scope: !625, file: !1, line: 101, type: !8)
!630 = !DILocalVariable(name: "c", scope: !625, file: !1, line: 102, type: !8)
!631 = !DILocation(line: 0, scope: !620, inlinedAt: !632)
!632 = distinct !DILocation(line: 243, column: 3, scope: !593)
!633 = !DILocation(line: 0, scope: !623, inlinedAt: !632)
!634 = !DILocation(line: 96, column: 3, scope: !623, inlinedAt: !632)
!635 = !DILocation(line: 0, scope: !625, inlinedAt: !632)
!636 = !DILocation(line: 99, column: 21, scope: !625, inlinedAt: !632)
!637 = !DILocation(line: 100, column: 31, scope: !625, inlinedAt: !632)
!638 = !DILocation(line: 100, column: 23, scope: !625, inlinedAt: !632)
!639 = !DILocation(line: 101, column: 24, scope: !625, inlinedAt: !632)
!640 = !DILocation(line: 102, column: 23, scope: !625, inlinedAt: !632)
!641 = !DILocation(line: 103, column: 14, scope: !625, inlinedAt: !632)
!642 = !DILocation(line: 104, column: 38, scope: !625, inlinedAt: !632)
!643 = !DILocation(line: 104, column: 29, scope: !625, inlinedAt: !632)
!644 = !DILocation(line: 96, column: 37, scope: !626, inlinedAt: !632)
!645 = distinct !{!645, !634, !646, !286, !287}
!646 = !DILocation(line: 105, column: 3, scope: !623, inlinedAt: !632)
!647 = !DILocalVariable(name: "b", arg: 1, scope: !648, file: !1, line: 33, type: !54)
!648 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top", scope: !1, file: !1, line: 33, type: !306, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !649)
!649 = !{!647, !650, !651, !652}
!650 = !DILocalVariable(name: "b2", scope: !648, file: !1, line: 35, type: !8)
!651 = !DILocalVariable(name: "b0", scope: !648, file: !1, line: 36, type: !8)
!652 = !DILocalVariable(name: "b2_42", scope: !648, file: !1, line: 37, type: !8)
!653 = !DILocation(line: 0, scope: !648, inlinedAt: !654)
!654 = distinct !DILocation(line: 244, column: 3, scope: !593)
!655 = !DILocation(line: 35, column: 17, scope: !648, inlinedAt: !654)
!656 = !DILocation(line: 36, column: 17, scope: !648, inlinedAt: !654)
!657 = !DILocation(line: 37, column: 23, scope: !648, inlinedAt: !654)
!658 = !DILocation(line: 38, column: 14, scope: !648, inlinedAt: !654)
!659 = !DILocation(line: 38, column: 9, scope: !648, inlinedAt: !654)
!660 = !DILocation(line: 39, column: 35, scope: !648, inlinedAt: !654)
!661 = !DILocation(line: 39, column: 43, scope: !648, inlinedAt: !654)
!662 = !DILocation(line: 39, column: 9, scope: !648, inlinedAt: !654)
!663 = !DILocation(line: 246, column: 18, scope: !593)
!664 = !DILocation(line: 248, column: 21, scope: !593)
!665 = !DILocation(line: 249, column: 20, scope: !593)
!666 = !DILocation(line: 250, column: 23, scope: !593)
!667 = !DILocation(line: 250, column: 29, scope: !593)
!668 = !DILocation(line: 251, column: 28, scope: !593)
!669 = !DILocation(line: 252, column: 22, scope: !593)
!670 = !DILocation(line: 253, column: 11, scope: !593)
!671 = !DILocation(line: 254, column: 11, scope: !593)
!672 = !DILocation(line: 0, scope: !648, inlinedAt: !673)
!673 = distinct !DILocation(line: 256, column: 3, scope: !593)
!674 = !DILocation(line: 37, column: 23, scope: !648, inlinedAt: !673)
!675 = !DILocation(line: 38, column: 14, scope: !648, inlinedAt: !673)
!676 = !DILocation(line: 38, column: 9, scope: !648, inlinedAt: !673)
!677 = !DILocation(line: 39, column: 35, scope: !648, inlinedAt: !673)
!678 = !DILocation(line: 39, column: 43, scope: !648, inlinedAt: !673)
!679 = !DILocation(line: 259, column: 21, scope: !593)
!680 = !DILocation(line: 260, column: 27, scope: !593)
!681 = !DILocation(line: 260, column: 21, scope: !593)
!682 = !DILocation(line: 261, column: 11, scope: !593)
!683 = !DILocation(line: 262, column: 11, scope: !593)
!684 = !DILocalVariable(name: "x", arg: 1, scope: !685, file: !686, line: 168, type: !8)
!685 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !686, file: !686, line: 168, type: !687, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !689)
!686 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!687 = !DISubroutineType(types: !688)
!688 = !{!8, !8, !8}
!689 = !{!684, !690, !691, !692}
!690 = !DILocalVariable(name: "y", arg: 2, scope: !685, file: !686, line: 168, type: !8)
!691 = !DILocalVariable(name: "low63", scope: !685, file: !686, line: 169, type: !8)
!692 = !DILocalVariable(name: "high_bit", scope: !685, file: !686, line: 173, type: !8)
!693 = !DILocation(line: 0, scope: !685, inlinedAt: !694)
!694 = distinct !DILocation(line: 266, column: 20, scope: !593)
!695 = !DILocation(line: 170, column: 74, scope: !685, inlinedAt: !694)
!696 = !DILocation(line: 177, column: 16, scope: !685, inlinedAt: !694)
!697 = !DILocalVariable(name: "x", arg: 1, scope: !698, file: !686, line: 157, type: !8)
!698 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !686, file: !686, line: 157, type: !687, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !699)
!699 = !{!697, !700}
!700 = !DILocalVariable(name: "y", arg: 2, scope: !698, file: !686, line: 157, type: !8)
!701 = !DILocation(line: 0, scope: !698, inlinedAt: !702)
!702 = distinct !DILocation(line: 267, column: 20, scope: !593)
!703 = !DILocation(line: 158, column: 7, scope: !698, inlinedAt: !702)
!704 = !DILocation(line: 159, column: 10, scope: !698, inlinedAt: !702)
!705 = !DILocation(line: 159, column: 5, scope: !698, inlinedAt: !702)
!706 = !DILocation(line: 160, column: 10, scope: !698, inlinedAt: !702)
!707 = !DILocation(line: 160, column: 5, scope: !698, inlinedAt: !702)
!708 = !DILocation(line: 161, column: 10, scope: !698, inlinedAt: !702)
!709 = !DILocation(line: 161, column: 5, scope: !698, inlinedAt: !702)
!710 = !DILocation(line: 162, column: 10, scope: !698, inlinedAt: !702)
!711 = !DILocation(line: 162, column: 5, scope: !698, inlinedAt: !702)
!712 = !DILocation(line: 163, column: 10, scope: !698, inlinedAt: !702)
!713 = !DILocation(line: 163, column: 5, scope: !698, inlinedAt: !702)
!714 = !DILocation(line: 164, column: 10, scope: !698, inlinedAt: !702)
!715 = !DILocation(line: 164, column: 5, scope: !698, inlinedAt: !702)
!716 = !DILocation(line: 0, scope: !698, inlinedAt: !717)
!717 = distinct !DILocation(line: 268, column: 20, scope: !593)
!718 = !DILocation(line: 158, column: 7, scope: !698, inlinedAt: !717)
!719 = !DILocation(line: 159, column: 10, scope: !698, inlinedAt: !717)
!720 = !DILocation(line: 159, column: 5, scope: !698, inlinedAt: !717)
!721 = !DILocation(line: 160, column: 10, scope: !698, inlinedAt: !717)
!722 = !DILocation(line: 160, column: 5, scope: !698, inlinedAt: !717)
!723 = !DILocation(line: 161, column: 10, scope: !698, inlinedAt: !717)
!724 = !DILocation(line: 161, column: 5, scope: !698, inlinedAt: !717)
!725 = !DILocation(line: 162, column: 10, scope: !698, inlinedAt: !717)
!726 = !DILocation(line: 162, column: 5, scope: !698, inlinedAt: !717)
!727 = !DILocation(line: 163, column: 10, scope: !698, inlinedAt: !717)
!728 = !DILocation(line: 163, column: 5, scope: !698, inlinedAt: !717)
!729 = !DILocation(line: 164, column: 10, scope: !698, inlinedAt: !717)
!730 = !DILocation(line: 164, column: 5, scope: !698, inlinedAt: !717)
!731 = !DILocation(line: 269, column: 26, scope: !593)
!732 = !DILocation(line: 269, column: 35, scope: !593)
!733 = !DILocation(line: 270, column: 51, scope: !593)
!734 = !DILocation(line: 270, column: 23, scope: !593)
!735 = !DILocation(line: 271, column: 50, scope: !593)
!736 = !DILocation(line: 271, column: 22, scope: !593)
!737 = !DILocation(line: 272, column: 50, scope: !593)
!738 = !DILocation(line: 272, column: 22, scope: !593)
!739 = !DILocation(line: 273, column: 11, scope: !593)
!740 = !DILocation(line: 274, column: 11, scope: !593)
!741 = !DILocation(line: 275, column: 11, scope: !593)
!742 = !DILocation(line: 276, column: 1, scope: !593)
!743 = distinct !DISubprogram(name: "AEAD_Poly1305_64_poly1305_blocks_finish", scope: !1, file: !1, line: 429, type: !744, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !49, !88, !88, !88}
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!747 = !DILocalVariable(name: "st", arg: 1, scope: !743, file: !1, line: 430, type: !49)
!748 = !DILocalVariable(name: "input", arg: 2, scope: !743, file: !1, line: 431, type: !88)
!749 = !DILocalVariable(name: "mac", arg: 3, scope: !743, file: !1, line: 432, type: !88)
!750 = !DILocalVariable(name: "key_s", arg: 4, scope: !743, file: !1, line: 433, type: !88)
!751 = !DILocalVariable(name: "x2", scope: !743, file: !1, line: 437, type: !88)
!752 = !DILocalVariable(name: "scrut", scope: !743, file: !1, line: 440, type: !49)
!753 = !DILocalVariable(name: "h", scope: !743, file: !1, line: 441, type: !54)
!754 = !DILocalVariable(name: "acc", scope: !743, file: !1, line: 442, type: !54)
!755 = !DILocalVariable(name: "scrut0", scope: !743, file: !1, line: 444, type: !49)
!756 = !DILocalVariable(name: "h3", scope: !743, file: !1, line: 445, type: !54)
!757 = !DILocalVariable(name: "acc0", scope: !743, file: !1, line: 446, type: !54)
!758 = !DILocalVariable(name: "k_", scope: !743, file: !1, line: 447, type: !130)
!759 = !DILocalVariable(name: "h0", scope: !743, file: !1, line: 448, type: !8)
!760 = !DILocalVariable(name: "h1", scope: !743, file: !1, line: 449, type: !8)
!761 = !DILocalVariable(name: "h2", scope: !743, file: !1, line: 450, type: !8)
!762 = !DILocalVariable(name: "acc_", scope: !743, file: !1, line: 452, type: !130)
!763 = !DILocalVariable(name: "mac_", scope: !743, file: !1, line: 458, type: !130)
!764 = !DILocation(line: 0, scope: !743)
!765 = !DILocation(line: 436, column: 3, scope: !743)
!766 = !DILocation(line: 443, column: 3, scope: !743)
!767 = !DILocation(line: 0, scope: !146, inlinedAt: !768)
!768 = distinct !DILocation(line: 447, column: 24, scope: !743)
!769 = !DILocation(line: 0, scope: !155, inlinedAt: !770)
!770 = distinct !DILocation(line: 545, column: 3, scope: !146, inlinedAt: !768)
!771 = !DILocation(line: 0, scope: !164, inlinedAt: !772)
!772 = distinct !DILocation(line: 518, column: 12, scope: !155, inlinedAt: !770)
!773 = !DILocation(line: 349, column: 3, scope: !164, inlinedAt: !772)
!774 = !{!775}
!775 = distinct !{!775, !776, !"load128_le: argument 0"}
!776 = distinct !{!776, !"load128_le"}
!777 = !DILocation(line: 519, column: 13, scope: !155, inlinedAt: !770)
!778 = !DILocation(line: 0, scope: !164, inlinedAt: !779)
!779 = distinct !DILocation(line: 519, column: 13, scope: !155, inlinedAt: !770)
!780 = !DILocation(line: 349, column: 3, scope: !164, inlinedAt: !779)
!781 = !DILocation(line: 448, column: 17, scope: !743)
!782 = !DILocation(line: 449, column: 17, scope: !743)
!783 = !DILocation(line: 450, column: 17, scope: !743)
!784 = !DILocation(line: 451, column: 3, scope: !743)
!785 = !DILocation(line: 452, column: 3, scope: !743)
!786 = !DILocation(line: 454, column: 11, scope: !743)
!787 = !DILocation(line: 455, column: 16, scope: !743)
!788 = !DILocation(line: 455, column: 11, scope: !743)
!789 = !DILocation(line: 453, column: 50, scope: !743)
!790 = !DILocation(line: 453, column: 25, scope: !743)
!791 = !DILocation(line: 457, column: 42, scope: !743)
!792 = !DILocation(line: 457, column: 59, scope: !743)
!793 = !DILocation(line: 457, column: 7, scope: !743)
!794 = !DILocation(line: 453, column: 5, scope: !743)
!795 = !DILocation(line: 458, column: 3, scope: !743)
!796 = !DILocation(line: 458, column: 19, scope: !743)
!797 = !DILocation(line: 458, column: 26, scope: !743)
!798 = !DILocation(line: 459, column: 3, scope: !743)
!799 = !DILocalVariable(name: "n", arg: 2, scope: !800, file: !27, line: 549, type: !149)
!800 = distinct !DISubprogram(name: "store128_le", scope: !27, file: !27, line: 549, type: !801, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !88, !149}
!803 = !{!804, !799}
!804 = !DILocalVariable(name: "b", arg: 1, scope: !800, file: !27, line: 549, type: !88)
!805 = !DILocation(line: 0, scope: !800, inlinedAt: !806)
!806 = distinct !DILocation(line: 459, column: 3, scope: !743)
!807 = !DILocalVariable(name: "b", arg: 1, scope: !808, file: !27, line: 522, type: !88)
!808 = distinct !DISubprogram(name: "store128_le_", scope: !27, file: !27, line: 522, type: !156, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !809)
!809 = !{!807, !810}
!810 = !DILocalVariable(name: "n", arg: 2, scope: !808, file: !27, line: 522, type: !158)
!811 = !DILocation(line: 0, scope: !808, inlinedAt: !812)
!812 = distinct !DILocation(line: 549, column: 59, scope: !800, inlinedAt: !806)
!813 = !DILocalVariable(name: "b", arg: 1, scope: !814, file: !27, line: 357, type: !88)
!814 = distinct !DISubprogram(name: "store64", scope: !27, file: !27, line: 357, type: !815, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !88, !8}
!817 = !{!813, !818}
!818 = !DILocalVariable(name: "i", arg: 2, scope: !814, file: !27, line: 357, type: !8)
!819 = !DILocation(line: 0, scope: !814, inlinedAt: !820)
!820 = distinct !DILocation(line: 523, column: 3, scope: !808, inlinedAt: !812)
!821 = !DILocation(line: 357, column: 54, scope: !814, inlinedAt: !820)
!822 = !DILocation(line: 524, column: 3, scope: !808, inlinedAt: !812)
!823 = !DILocation(line: 0, scope: !814, inlinedAt: !824)
!824 = distinct !DILocation(line: 524, column: 3, scope: !808, inlinedAt: !812)
!825 = !DILocation(line: 357, column: 54, scope: !814, inlinedAt: !824)
!826 = !DILocation(line: 460, column: 1, scope: !743)
!827 = !DISubprogram(name: "FStar_UInt128_logor", scope: !131, file: !131, line: 53, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{!132, !132, !132}
!830 = !{}
!831 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !131, file: !131, line: 57, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!832 = !DISubroutineType(types: !833)
!833 = !{!132, !132, !3}
!834 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !131, file: !131, line: 65, type: !835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!835 = !DISubroutineType(types: !836)
!836 = !{!132, !8}
!837 = !DISubprogram(name: "FStar_UInt128_add_mod", scope: !131, file: !131, line: 43, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!838 = !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !131, file: !131, line: 67, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!839 = !DISubroutineType(types: !840)
!840 = !{!8, !132}
!841 = !DISubprogram(name: "FStar_UInt128_shift_right", scope: !131, file: !131, line: 59, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!842 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !131, file: !131, line: 78, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!843 = !DISubroutineType(types: !844)
!844 = !{!132, !8, !8}
!845 = !DISubprogram(name: "FStar_UInt128_add", scope: !131, file: !131, line: 41, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
!846 = !DISubprogram(name: "FStar_UInt128_logand", scope: !131, file: !131, line: 49, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !830)
