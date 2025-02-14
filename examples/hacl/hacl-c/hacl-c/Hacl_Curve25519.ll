; ModuleID = 'hacl-c/hacl-c/Hacl_Curve25519.c'
source_filename = "hacl-c/hacl-c/Hacl_Curve25519.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_EC_crypto_scalarmult(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !26 {
  %4 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %17 = alloca %struct.FStar_UInt128_uint128, align 4
  %18 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 4
  %20 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %25 = alloca %struct.FStar_UInt128_uint128, align 4
  %26 = alloca [20 x i64], align 8
  %27 = alloca [10 x i64], align 8
  %28 = alloca [40 x i64], align 8
  %29 = alloca [10 x i64], align 8
  %30 = alloca [32 x i8], align 1
  %31 = alloca [15 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !31, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i8* %1, metadata !32, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i8* %2, metadata !33, metadata !DIExpression()), !dbg !58
  %32 = bitcast [10 x i64]* %29 to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %32) #9, !dbg !59
  call void @llvm.dbg.declare(metadata [10 x i64]* %29, metadata !34, metadata !DIExpression()), !dbg !60
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %32, i8 0, i32 80, i1 false), !dbg !60
  %33 = getelementptr inbounds [10 x i64], [10 x i64]* %29, i32 0, i32 0, !dbg !61
  call void @llvm.dbg.value(metadata i64* %33, metadata !38, metadata !DIExpression()), !dbg !58
  %34 = getelementptr inbounds [10 x i64], [10 x i64]* %29, i32 0, i32 5, !dbg !62
  call void @llvm.dbg.value(metadata i64* %34, metadata !40, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i64* %33, metadata !63, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i8* %2, metadata !68, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i8* %2, metadata !85, metadata !DIExpression()), !dbg !92
  %35 = bitcast i8* %2 to i64*, !dbg !94
  %36 = load i64, i64* %35, align 1, !dbg !94
  call void @llvm.dbg.value(metadata i64 %36, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 %36, metadata !69, metadata !DIExpression()), !dbg !83
  %37 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !95
  call void @llvm.dbg.value(metadata i8* %37, metadata !70, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i8* %37, metadata !85, metadata !DIExpression()), !dbg !96
  %38 = bitcast i8* %37 to i64*, !dbg !98
  %39 = load i64, i64* %38, align 1, !dbg !98
  call void @llvm.dbg.value(metadata i64 %39, metadata !91, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i64 %39, metadata !71, metadata !DIExpression()), !dbg !83
  %40 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !99
  call void @llvm.dbg.value(metadata i8* %40, metadata !72, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i8* %40, metadata !85, metadata !DIExpression()), !dbg !100
  %41 = bitcast i8* %40 to i64*, !dbg !102
  %42 = load i64, i64* %41, align 1, !dbg !102
  call void @llvm.dbg.value(metadata i64 %42, metadata !91, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata i64 %42, metadata !73, metadata !DIExpression()), !dbg !83
  %43 = getelementptr inbounds i8, i8* %2, i32 19, !dbg !103
  call void @llvm.dbg.value(metadata i8* %43, metadata !74, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !104
  %44 = bitcast i8* %43 to i64*, !dbg !106
  %45 = load i64, i64* %44, align 1, !dbg !106
  call void @llvm.dbg.value(metadata i64 %45, metadata !91, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i64 %45, metadata !75, metadata !DIExpression()), !dbg !83
  %46 = getelementptr inbounds i8, i8* %2, i32 24, !dbg !107
  call void @llvm.dbg.value(metadata i8* %46, metadata !76, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i8* %46, metadata !85, metadata !DIExpression()), !dbg !108
  %47 = bitcast i8* %46 to i64*, !dbg !110
  %48 = load i64, i64* %47, align 1, !dbg !110
  call void @llvm.dbg.value(metadata i64 %48, metadata !91, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %48, metadata !77, metadata !DIExpression()), !dbg !83
  %49 = and i64 %36, 2251799813685247, !dbg !111
  call void @llvm.dbg.value(metadata i64 %49, metadata !78, metadata !DIExpression()), !dbg !83
  %50 = lshr i64 %39, 3, !dbg !112
  %51 = and i64 %50, 2251799813685247, !dbg !113
  call void @llvm.dbg.value(metadata i64 %51, metadata !79, metadata !DIExpression()), !dbg !83
  %52 = lshr i64 %42, 6, !dbg !114
  %53 = and i64 %52, 2251799813685247, !dbg !115
  call void @llvm.dbg.value(metadata i64 %53, metadata !80, metadata !DIExpression()), !dbg !83
  %54 = lshr i64 %45, 1, !dbg !116
  %55 = and i64 %54, 2251799813685247, !dbg !117
  call void @llvm.dbg.value(metadata i64 %55, metadata !81, metadata !DIExpression()), !dbg !83
  %56 = lshr i64 %48, 12, !dbg !118
  %57 = and i64 %56, 2251799813685247, !dbg !119
  call void @llvm.dbg.value(metadata i64 %57, metadata !82, metadata !DIExpression()), !dbg !83
  store i64 %49, i64* %33, align 8, !dbg !120, !tbaa !121
  %58 = getelementptr inbounds [10 x i64], [10 x i64]* %29, i32 0, i32 1, !dbg !125
  store i64 %51, i64* %58, align 8, !dbg !126, !tbaa !121
  %59 = getelementptr inbounds [10 x i64], [10 x i64]* %29, i32 0, i32 2, !dbg !127
  store i64 %53, i64* %59, align 8, !dbg !128, !tbaa !121
  %60 = getelementptr inbounds [10 x i64], [10 x i64]* %29, i32 0, i32 3, !dbg !129
  store i64 %55, i64* %60, align 8, !dbg !130, !tbaa !121
  %61 = getelementptr inbounds [10 x i64], [10 x i64]* %29, i32 0, i32 4, !dbg !131
  store i64 %57, i64* %61, align 8, !dbg !132, !tbaa !121
  store i64 1, i64* %34, align 8, !dbg !133, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %33, metadata !41, metadata !DIExpression()), !dbg !58
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 0, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %62) #9, !dbg !134
  call void @llvm.dbg.declare(metadata [32 x i8]* %30, metadata !42, metadata !DIExpression()), !dbg !135
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %62, i8* noundef nonnull align 1 dereferenceable(32) %1, i32 32, i1 false), !dbg !136
  %63 = load i8, i8* %62, align 1, !dbg !137, !tbaa !138
  call void @llvm.dbg.value(metadata i8 %63, metadata !46, metadata !DIExpression()), !dbg !58
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i32 0, i32 31, !dbg !139
  %65 = load i8, i8* %64, align 1, !dbg !139, !tbaa !138
  call void @llvm.dbg.value(metadata i8 %65, metadata !47, metadata !DIExpression()), !dbg !58
  %66 = and i8 %63, -8, !dbg !140
  call void @llvm.dbg.value(metadata i8 %66, metadata !48, metadata !DIExpression()), !dbg !58
  %67 = and i8 %65, 63, !dbg !141
  call void @llvm.dbg.value(metadata i8 %65, metadata !49, metadata !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value)), !dbg !58
  %68 = or i8 %67, 64, !dbg !142
  call void @llvm.dbg.value(metadata i8 %68, metadata !50, metadata !DIExpression()), !dbg !58
  store i8 %66, i8* %62, align 1, !dbg !143, !tbaa !138
  store i8 %68, i8* %64, align 1, !dbg !144, !tbaa !138
  call void @llvm.dbg.value(metadata i8* %62, metadata !51, metadata !DIExpression()), !dbg !58
  %69 = bitcast [15 x i64]* %31 to i8*, !dbg !145
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %69) #9, !dbg !145
  call void @llvm.dbg.declare(metadata [15 x i64]* %31, metadata !52, metadata !DIExpression()), !dbg !146
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(120) %69, i8 0, i32 120, i1 false), !dbg !146
  %70 = getelementptr inbounds [15 x i64], [15 x i64]* %31, i32 0, i32 0, !dbg !147
  call void @llvm.dbg.value(metadata i64* %70, metadata !56, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i64* %70, metadata !57, metadata !DIExpression()), !dbg !58
  store i64 1, i64* %70, align 8, !dbg !148, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %70, metadata !149, metadata !DIExpression()) #9, !dbg !164
  call void @llvm.dbg.value(metadata i8* %62, metadata !154, metadata !DIExpression()) #9, !dbg !164
  call void @llvm.dbg.value(metadata i64* %33, metadata !155, metadata !DIExpression()) #9, !dbg !164
  %71 = bitcast [40 x i64]* %28 to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %71) #9, !dbg !166
  call void @llvm.dbg.declare(metadata [40 x i64]* %28, metadata !156, metadata !DIExpression()) #9, !dbg !167
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(320) %71, i8 0, i32 320, i1 false) #9, !dbg !167
  %72 = getelementptr inbounds [40 x i64], [40 x i64]* %28, i32 0, i32 0, !dbg !168
  call void @llvm.dbg.value(metadata i64* %72, metadata !160, metadata !DIExpression()) #9, !dbg !164
  %73 = getelementptr inbounds [40 x i64], [40 x i64]* %28, i32 0, i32 10, !dbg !169
  call void @llvm.dbg.value(metadata i64* %73, metadata !161, metadata !DIExpression()) #9, !dbg !164
  %74 = getelementptr inbounds [40 x i64], [40 x i64]* %28, i32 0, i32 20, !dbg !170
  call void @llvm.dbg.value(metadata i64* %74, metadata !162, metadata !DIExpression()) #9, !dbg !164
  %75 = getelementptr inbounds [40 x i64], [40 x i64]* %28, i32 0, i32 30, !dbg !171
  call void @llvm.dbg.value(metadata i64* %75, metadata !163, metadata !DIExpression()) #9, !dbg !164
  call void @llvm.dbg.value(metadata i64* %73, metadata !172, metadata !DIExpression()) #9, !dbg !178
  call void @llvm.dbg.value(metadata i64* %33, metadata !177, metadata !DIExpression()) #9, !dbg !178
  %76 = bitcast i64* %73 to i8*, !dbg !180
  %77 = bitcast [10 x i64]* %29 to i8*, !dbg !180
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %76, i8* noundef nonnull align 8 dereferenceable(40) %77, i32 40, i1 false) #9, !dbg !180
  %78 = getelementptr inbounds [40 x i64], [40 x i64]* %28, i32 0, i32 15, !dbg !181
  %79 = bitcast i64* %78 to i8*, !dbg !182
  %80 = getelementptr inbounds [10 x i64], [10 x i64]* %29, i32 0, i32 5, !dbg !183
  %81 = bitcast i64* %80 to i8*, !dbg !182
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %79, i8* noundef nonnull align 8 dereferenceable(40) %81, i32 40, i1 false) #9, !dbg !182
  store i64 1, i64* %72, align 8, !dbg !184, !tbaa !121
  call fastcc void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(i8* noundef nonnull %62, i64* noundef nonnull %72, i64* noundef nonnull %73, i64* noundef nonnull %74, i64* noundef nonnull %75, i64* noundef nonnull %33, i32 noundef 32) #9, !dbg !185
  call void @llvm.dbg.value(metadata i64* %70, metadata !172, metadata !DIExpression()) #9, !dbg !186
  call void @llvm.dbg.value(metadata i64* %72, metadata !177, metadata !DIExpression()) #9, !dbg !186
  %82 = bitcast [15 x i64]* %31 to i8*, !dbg !188
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %82, i8* noundef nonnull align 8 dereferenceable(40) %71, i32 40, i1 false) #9, !dbg !188
  %83 = getelementptr inbounds [15 x i64], [15 x i64]* %31, i32 0, i32 5, !dbg !189
  %84 = bitcast i64* %83 to i8*, !dbg !190
  %85 = getelementptr inbounds [40 x i64], [40 x i64]* %28, i32 0, i32 5, !dbg !191
  %86 = bitcast i64* %85 to i8*, !dbg !190
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %84, i8* noundef nonnull align 8 dereferenceable(40) %86, i32 40, i1 false) #9, !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %71) #9, !dbg !192
  call void @llvm.dbg.value(metadata i8* %0, metadata !193, metadata !DIExpression()) #9, !dbg !204
  call void @llvm.dbg.value(metadata i64* %70, metadata !198, metadata !DIExpression()) #9, !dbg !204
  call void @llvm.dbg.value(metadata i64* %70, metadata !199, metadata !DIExpression()) #9, !dbg !204
  %87 = bitcast [10 x i64]* %27 to i8*, !dbg !206
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %87) #9, !dbg !206
  call void @llvm.dbg.declare(metadata [10 x i64]* %27, metadata !201, metadata !DIExpression()) #9, !dbg !207
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %87, i8 0, i32 80, i1 false) #9, !dbg !207
  call void @llvm.dbg.value(metadata i64* %246, metadata !202, metadata !DIExpression()) #9, !dbg !204
  call void @llvm.dbg.value(metadata i64* %246, metadata !208, metadata !DIExpression()) #9, !dbg !212
  call void @llvm.dbg.value(metadata i64* %246, metadata !214, metadata !DIExpression()) #9, !dbg !232
  %88 = bitcast [20 x i64]* %26 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %88) #9, !dbg !234
  call void @llvm.dbg.declare(metadata [20 x i64]* %26, metadata !218, metadata !DIExpression()) #9, !dbg !235
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(160) %88, i8 0, i32 160, i1 false) #9, !dbg !235
  call void @llvm.dbg.value(metadata i32 1, metadata !236, metadata !DIExpression()) #9, !dbg !256
  %89 = bitcast [5 x %struct.FStar_UInt128_uint128]* %24 to i8*, !dbg !258
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %89) #9, !dbg !258
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %24, metadata !243, metadata !DIExpression()) #9, !dbg !259
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !260
  %90 = bitcast %struct.FStar_UInt128_uint128* %25 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !260
  br label %91, !dbg !261

91:                                               ; preds = %91, %3
  %92 = phi i32 [ 0, %3 ], [ %95, %91 ]
  call void @llvm.dbg.value(metadata i32 %92, metadata !254, metadata !DIExpression()) #9, !dbg !260
  %93 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %24, i32 0, i32 %92, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %90) #9, !dbg !264
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef 0) #9, !dbg !264
  %94 = bitcast %struct.FStar_UInt128_uint128* %93 to i8*, !dbg !264
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %94, i8* noundef nonnull align 4 dereferenceable(16) %90, i32 16, i1 false) #9, !dbg !264, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %90) #9, !dbg !264
  %95 = add nuw nsw i32 %92, 1, !dbg !266
  call void @llvm.dbg.value(metadata i32 %95, metadata !254, metadata !DIExpression()) #9, !dbg !260
  %96 = icmp eq i32 %95, 5, !dbg !267
  br i1 %96, label %97, label %91, !dbg !261, !llvm.loop !268

97:                                               ; preds = %91
  %98 = getelementptr inbounds [20 x i64], [20 x i64]* %26, i32 0, i32 0, !dbg !272
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %88, i8* noundef nonnull align 8 dereferenceable(40) %84, i32 40, i1 false) #9, !dbg !273
  %99 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %24, i32 0, i32 0, !dbg !274
  call void @llvm.dbg.value(metadata i64* %98, metadata !275, metadata !DIExpression()) #9, !dbg !285
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %99, metadata !281, metadata !DIExpression()) #9, !dbg !285
  call void @llvm.dbg.value(metadata i32 1, metadata !282, metadata !DIExpression()) #9, !dbg !285
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %99, i64* noundef nonnull %98) #9, !dbg !287
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !288
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %89) #9, !dbg !289
  call void @llvm.dbg.value(metadata i64* %98, metadata !242, metadata !DIExpression()) #9, !dbg !290
  call void @llvm.dbg.value(metadata i32 2, metadata !236, metadata !DIExpression()) #9, !dbg !290
  %100 = bitcast [5 x %struct.FStar_UInt128_uint128]* %22 to i8*, !dbg !292
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %100) #9, !dbg !292
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %22, metadata !243, metadata !DIExpression()) #9, !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !294
  %101 = bitcast %struct.FStar_UInt128_uint128* %23 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !294
  br label %109, !dbg !295

102:                                              ; preds = %109
  %103 = getelementptr inbounds [20 x i64], [20 x i64]* %26, i32 0, i32 5, !dbg !296
  %104 = bitcast i64* %103 to i8*, !dbg !297
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %104, i8* noundef nonnull align 8 dereferenceable(40) %88, i32 40, i1 false) #9, !dbg !297
  %105 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %22, i32 0, i32 0, !dbg !298
  call void @llvm.dbg.value(metadata i64* %103, metadata !275, metadata !DIExpression()) #9, !dbg !299
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %105, metadata !281, metadata !DIExpression()) #9, !dbg !299
  call void @llvm.dbg.value(metadata i32 2, metadata !282, metadata !DIExpression()) #9, !dbg !299
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %105, i64* noundef nonnull %103) #9, !dbg !301
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !302
  call void @llvm.dbg.value(metadata i32 undef, metadata !283, metadata !DIExpression()) #9, !dbg !302
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %105, i64* noundef nonnull %103) #9, !dbg !303
  call void @llvm.dbg.value(metadata i32 undef, metadata !283, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #9, !dbg !302
  %106 = getelementptr inbounds [20 x i64], [20 x i64]* %26, i32 0, i32 10, !dbg !305
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %100) #9, !dbg !306
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %106, i64* noundef nonnull %103, i64* noundef nonnull %83) #9, !dbg !307
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %98, i64* noundef nonnull %106, i64* noundef nonnull %98) #9, !dbg !308
  call void @llvm.dbg.value(metadata i64* %103, metadata !241, metadata !DIExpression()) #9, !dbg !309
  call void @llvm.dbg.value(metadata i64* %98, metadata !242, metadata !DIExpression()) #9, !dbg !309
  call void @llvm.dbg.value(metadata i32 1, metadata !236, metadata !DIExpression()) #9, !dbg !309
  %107 = bitcast [5 x %struct.FStar_UInt128_uint128]* %20 to i8*, !dbg !311
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %107) #9, !dbg !311
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %20, metadata !243, metadata !DIExpression()) #9, !dbg !312
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !313
  %108 = bitcast %struct.FStar_UInt128_uint128* %21 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !313
  br label %115, !dbg !314

109:                                              ; preds = %109, %97
  %110 = phi i32 [ 0, %97 ], [ %113, %109 ]
  call void @llvm.dbg.value(metadata i32 %110, metadata !254, metadata !DIExpression()) #9, !dbg !294
  %111 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %22, i32 0, i32 %110, !dbg !315
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %101) #9, !dbg !316
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 noundef 0) #9, !dbg !316
  %112 = bitcast %struct.FStar_UInt128_uint128* %111 to i8*, !dbg !316
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %112, i8* noundef nonnull align 4 dereferenceable(16) %101, i32 16, i1 false) #9, !dbg !316, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %101) #9, !dbg !316
  %113 = add nuw nsw i32 %110, 1, !dbg !317
  call void @llvm.dbg.value(metadata i32 %113, metadata !254, metadata !DIExpression()) #9, !dbg !294
  %114 = icmp eq i32 %113, 5, !dbg !318
  br i1 %114, label %102, label %109, !dbg !295, !llvm.loop !319

115:                                              ; preds = %115, %102
  %116 = phi i32 [ 0, %102 ], [ %119, %115 ]
  call void @llvm.dbg.value(metadata i32 %116, metadata !254, metadata !DIExpression()) #9, !dbg !313
  %117 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %20, i32 0, i32 %116, !dbg !321
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %108) #9, !dbg !322
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef 0) #9, !dbg !322
  %118 = bitcast %struct.FStar_UInt128_uint128* %117 to i8*, !dbg !322
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %118, i8* noundef nonnull align 4 dereferenceable(16) %108, i32 16, i1 false) #9, !dbg !322, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %108) #9, !dbg !322
  %119 = add nuw nsw i32 %116, 1, !dbg !323
  call void @llvm.dbg.value(metadata i32 %119, metadata !254, metadata !DIExpression()) #9, !dbg !313
  %120 = icmp eq i32 %119, 5, !dbg !324
  br i1 %120, label %121, label %115, !dbg !314, !llvm.loop !325

121:                                              ; preds = %115
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %104, i8* noundef nonnull align 8 dereferenceable(40) %88, i32 40, i1 false) #9, !dbg !327
  %122 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %20, i32 0, i32 0, !dbg !328
  call void @llvm.dbg.value(metadata i64* %103, metadata !275, metadata !DIExpression()) #9, !dbg !329
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %122, metadata !281, metadata !DIExpression()) #9, !dbg !329
  call void @llvm.dbg.value(metadata i32 1, metadata !282, metadata !DIExpression()) #9, !dbg !329
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %122, i64* noundef nonnull %103) #9, !dbg !331
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !332
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %107) #9, !dbg !333
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %106, i64* noundef nonnull %103, i64* noundef nonnull %106) #9, !dbg !334
  call void @llvm.dbg.value(metadata i64* %103, metadata !241, metadata !DIExpression()) #9, !dbg !335
  call void @llvm.dbg.value(metadata i64* %106, metadata !242, metadata !DIExpression()) #9, !dbg !335
  call void @llvm.dbg.value(metadata i32 5, metadata !236, metadata !DIExpression()) #9, !dbg !335
  %123 = bitcast [5 x %struct.FStar_UInt128_uint128]* %18 to i8*, !dbg !337
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %123) #9, !dbg !337
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %18, metadata !243, metadata !DIExpression()) #9, !dbg !338
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !339
  %124 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !339
  br label %132, !dbg !340

125:                                              ; preds = %132
  %126 = bitcast i64* %106 to i8*, !dbg !341
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %104, i8* noundef nonnull align 8 dereferenceable(40) %126, i32 40, i1 false) #9, !dbg !341
  %127 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %18, i32 0, i32 0, !dbg !342
  call void @llvm.dbg.value(metadata i64* %103, metadata !275, metadata !DIExpression()) #9, !dbg !343
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %127, metadata !281, metadata !DIExpression()) #9, !dbg !343
  call void @llvm.dbg.value(metadata i32 5, metadata !282, metadata !DIExpression()) #9, !dbg !343
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %127, i64* noundef nonnull %103) #9, !dbg !345
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !346
  br label %128

128:                                              ; preds = %128, %125
  %129 = phi i32 [ %130, %128 ], [ 1, %125 ]
  call void @llvm.dbg.value(metadata i32 %129, metadata !283, metadata !DIExpression()) #9, !dbg !346
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %127, i64* noundef nonnull %103) #9, !dbg !347
  %130 = add nuw nsw i32 %129, 1, !dbg !348
  call void @llvm.dbg.value(metadata i32 %130, metadata !283, metadata !DIExpression()) #9, !dbg !346
  %131 = icmp eq i32 %130, 5, !dbg !349
  br i1 %131, label %138, label %128, !dbg !350, !llvm.loop !351

132:                                              ; preds = %132, %121
  %133 = phi i32 [ 0, %121 ], [ %136, %132 ]
  call void @llvm.dbg.value(metadata i32 %133, metadata !254, metadata !DIExpression()) #9, !dbg !339
  %134 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %18, i32 0, i32 %133, !dbg !353
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %124) #9, !dbg !354
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef 0) #9, !dbg !354
  %135 = bitcast %struct.FStar_UInt128_uint128* %134 to i8*, !dbg !354
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %135, i8* noundef nonnull align 4 dereferenceable(16) %124, i32 16, i1 false) #9, !dbg !354, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %124) #9, !dbg !354
  %136 = add nuw nsw i32 %133, 1, !dbg !355
  call void @llvm.dbg.value(metadata i32 %136, metadata !254, metadata !DIExpression()) #9, !dbg !339
  %137 = icmp eq i32 %136, 5, !dbg !356
  br i1 %137, label %125, label %132, !dbg !340, !llvm.loop !357

138:                                              ; preds = %128
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %123) #9, !dbg !359
  call void @llvm.dbg.value(metadata i64* %103, metadata !225, metadata !DIExpression()) #9, !dbg !232
  call void @llvm.dbg.value(metadata i64* %106, metadata !226, metadata !DIExpression()) #9, !dbg !232
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %106, i64* noundef nonnull %103, i64* noundef nonnull %106) #9, !dbg !360
  call void @llvm.dbg.value(metadata i64* %103, metadata !241, metadata !DIExpression()) #9, !dbg !361
  call void @llvm.dbg.value(metadata i64* %106, metadata !242, metadata !DIExpression()) #9, !dbg !361
  call void @llvm.dbg.value(metadata i32 10, metadata !236, metadata !DIExpression()) #9, !dbg !361
  %139 = bitcast [5 x %struct.FStar_UInt128_uint128]* %16 to i8*, !dbg !363
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %139) #9, !dbg !363
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %16, metadata !243, metadata !DIExpression()) #9, !dbg !364
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !365
  %140 = bitcast %struct.FStar_UInt128_uint128* %17 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !365
  br label %147, !dbg !366

141:                                              ; preds = %147
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %104, i8* noundef nonnull align 8 dereferenceable(40) %126, i32 40, i1 false) #9, !dbg !367
  %142 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 0, !dbg !368
  call void @llvm.dbg.value(metadata i64* %103, metadata !275, metadata !DIExpression()) #9, !dbg !369
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %142, metadata !281, metadata !DIExpression()) #9, !dbg !369
  call void @llvm.dbg.value(metadata i32 10, metadata !282, metadata !DIExpression()) #9, !dbg !369
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %142, i64* noundef nonnull %103) #9, !dbg !371
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !372
  br label %143

143:                                              ; preds = %143, %141
  %144 = phi i32 [ %145, %143 ], [ 1, %141 ]
  call void @llvm.dbg.value(metadata i32 %144, metadata !283, metadata !DIExpression()) #9, !dbg !372
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %142, i64* noundef nonnull %103) #9, !dbg !373
  %145 = add nuw nsw i32 %144, 1, !dbg !374
  call void @llvm.dbg.value(metadata i32 %145, metadata !283, metadata !DIExpression()) #9, !dbg !372
  %146 = icmp eq i32 %145, 10, !dbg !375
  br i1 %146, label %153, label %143, !dbg !376, !llvm.loop !377

147:                                              ; preds = %147, %138
  %148 = phi i32 [ 0, %138 ], [ %151, %147 ]
  call void @llvm.dbg.value(metadata i32 %148, metadata !254, metadata !DIExpression()) #9, !dbg !365
  %149 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %16, i32 0, i32 %148, !dbg !379
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %140) #9, !dbg !380
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef 0) #9, !dbg !380
  %150 = bitcast %struct.FStar_UInt128_uint128* %149 to i8*, !dbg !380
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %150, i8* noundef nonnull align 4 dereferenceable(16) %140, i32 16, i1 false) #9, !dbg !380, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %140) #9, !dbg !380
  %151 = add nuw nsw i32 %148, 1, !dbg !381
  call void @llvm.dbg.value(metadata i32 %151, metadata !254, metadata !DIExpression()) #9, !dbg !365
  %152 = icmp eq i32 %151, 5, !dbg !382
  br i1 %152, label %141, label %147, !dbg !366, !llvm.loop !383

153:                                              ; preds = %143
  %154 = getelementptr inbounds [20 x i64], [20 x i64]* %26, i32 0, i32 15, !dbg !385
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %139) #9, !dbg !386
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %154, i64* noundef nonnull %103, i64* noundef nonnull %106) #9, !dbg !387
  call void @llvm.dbg.value(metadata i64* %103, metadata !241, metadata !DIExpression()) #9, !dbg !388
  call void @llvm.dbg.value(metadata i64* %154, metadata !242, metadata !DIExpression()) #9, !dbg !388
  call void @llvm.dbg.value(metadata i32 20, metadata !236, metadata !DIExpression()) #9, !dbg !388
  %155 = bitcast [5 x %struct.FStar_UInt128_uint128]* %14 to i8*, !dbg !390
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %155) #9, !dbg !390
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %14, metadata !243, metadata !DIExpression()) #9, !dbg !391
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !392
  %156 = bitcast %struct.FStar_UInt128_uint128* %15 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !392
  br label %164, !dbg !393

157:                                              ; preds = %164
  %158 = bitcast i64* %154 to i8*, !dbg !394
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %104, i8* noundef nonnull align 8 dereferenceable(40) %158, i32 40, i1 false) #9, !dbg !394
  %159 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %14, i32 0, i32 0, !dbg !395
  call void @llvm.dbg.value(metadata i64* %103, metadata !275, metadata !DIExpression()) #9, !dbg !396
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %159, metadata !281, metadata !DIExpression()) #9, !dbg !396
  call void @llvm.dbg.value(metadata i32 20, metadata !282, metadata !DIExpression()) #9, !dbg !396
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %159, i64* noundef nonnull %103) #9, !dbg !398
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !399
  br label %160

160:                                              ; preds = %160, %157
  %161 = phi i32 [ %162, %160 ], [ 1, %157 ]
  call void @llvm.dbg.value(metadata i32 %161, metadata !283, metadata !DIExpression()) #9, !dbg !399
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %159, i64* noundef nonnull %103) #9, !dbg !400
  %162 = add nuw nsw i32 %161, 1, !dbg !401
  call void @llvm.dbg.value(metadata i32 %162, metadata !283, metadata !DIExpression()) #9, !dbg !399
  %163 = icmp eq i32 %162, 20, !dbg !402
  br i1 %163, label %170, label %160, !dbg !403, !llvm.loop !404

164:                                              ; preds = %164, %153
  %165 = phi i32 [ 0, %153 ], [ %168, %164 ]
  call void @llvm.dbg.value(metadata i32 %165, metadata !254, metadata !DIExpression()) #9, !dbg !392
  %166 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %14, i32 0, i32 %165, !dbg !406
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %156) #9, !dbg !407
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef 0) #9, !dbg !407
  %167 = bitcast %struct.FStar_UInt128_uint128* %166 to i8*, !dbg !407
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %167, i8* noundef nonnull align 4 dereferenceable(16) %156, i32 16, i1 false) #9, !dbg !407, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %156) #9, !dbg !407
  %168 = add nuw nsw i32 %165, 1, !dbg !408
  call void @llvm.dbg.value(metadata i32 %168, metadata !254, metadata !DIExpression()) #9, !dbg !392
  %169 = icmp eq i32 %168, 5, !dbg !409
  br i1 %169, label %157, label %164, !dbg !393, !llvm.loop !410

170:                                              ; preds = %160
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %155) #9, !dbg !412
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %103, i64* noundef nonnull %103, i64* noundef nonnull %154) #9, !dbg !413
  call void @llvm.dbg.value(metadata i64* %103, metadata !414, metadata !DIExpression()) #9, !dbg !423
  call void @llvm.dbg.value(metadata i32 10, metadata !419, metadata !DIExpression()) #9, !dbg !423
  %171 = bitcast [5 x %struct.FStar_UInt128_uint128]* %12 to i8*, !dbg !425
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %171) #9, !dbg !425
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %12, metadata !420, metadata !DIExpression()) #9, !dbg !426
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()) #9, !dbg !427
  %172 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()) #9, !dbg !427
  br label %179, !dbg !428

173:                                              ; preds = %179
  %174 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %12, i32 0, i32 0, !dbg !429
  call void @llvm.dbg.value(metadata i64* %103, metadata !275, metadata !DIExpression()) #9, !dbg !430
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %174, metadata !281, metadata !DIExpression()) #9, !dbg !430
  call void @llvm.dbg.value(metadata i32 10, metadata !282, metadata !DIExpression()) #9, !dbg !430
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %174, i64* noundef nonnull %103) #9, !dbg !432
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !433
  br label %175

175:                                              ; preds = %175, %173
  %176 = phi i32 [ %177, %175 ], [ 1, %173 ]
  call void @llvm.dbg.value(metadata i32 %176, metadata !283, metadata !DIExpression()) #9, !dbg !433
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %174, i64* noundef nonnull %103) #9, !dbg !434
  %177 = add nuw nsw i32 %176, 1, !dbg !435
  call void @llvm.dbg.value(metadata i32 %177, metadata !283, metadata !DIExpression()) #9, !dbg !433
  %178 = icmp eq i32 %177, 10, !dbg !436
  br i1 %178, label %185, label %175, !dbg !437, !llvm.loop !438

179:                                              ; preds = %179, %170
  %180 = phi i32 [ 0, %170 ], [ %183, %179 ]
  call void @llvm.dbg.value(metadata i32 %180, metadata !421, metadata !DIExpression()) #9, !dbg !427
  %181 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %12, i32 0, i32 %180, !dbg !440
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %172) #9, !dbg !442
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef 0) #9, !dbg !442
  %182 = bitcast %struct.FStar_UInt128_uint128* %181 to i8*, !dbg !442
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %182, i8* noundef nonnull align 4 dereferenceable(16) %172, i32 16, i1 false) #9, !dbg !442, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %172) #9, !dbg !442
  %183 = add nuw nsw i32 %180, 1, !dbg !443
  call void @llvm.dbg.value(metadata i32 %183, metadata !421, metadata !DIExpression()) #9, !dbg !427
  %184 = icmp eq i32 %183, 5, !dbg !444
  br i1 %184, label %173, label %179, !dbg !428, !llvm.loop !445

185:                                              ; preds = %175
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %171) #9, !dbg !447
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %106, i64* noundef nonnull %103, i64* noundef nonnull %106) #9, !dbg !448
  call void @llvm.dbg.value(metadata i64* %103, metadata !241, metadata !DIExpression()) #9, !dbg !449
  call void @llvm.dbg.value(metadata i64* %106, metadata !242, metadata !DIExpression()) #9, !dbg !449
  call void @llvm.dbg.value(metadata i32 50, metadata !236, metadata !DIExpression()) #9, !dbg !449
  %186 = bitcast [5 x %struct.FStar_UInt128_uint128]* %10 to i8*, !dbg !451
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %186) #9, !dbg !451
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %10, metadata !243, metadata !DIExpression()) #9, !dbg !452
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !453
  %187 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !453
  br label %194, !dbg !454

188:                                              ; preds = %194
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %104, i8* noundef nonnull align 8 dereferenceable(40) %126, i32 40, i1 false) #9, !dbg !455
  %189 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %10, i32 0, i32 0, !dbg !456
  call void @llvm.dbg.value(metadata i64* %103, metadata !275, metadata !DIExpression()) #9, !dbg !457
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %189, metadata !281, metadata !DIExpression()) #9, !dbg !457
  call void @llvm.dbg.value(metadata i32 50, metadata !282, metadata !DIExpression()) #9, !dbg !457
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %189, i64* noundef nonnull %103) #9, !dbg !459
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !460
  br label %190

190:                                              ; preds = %190, %188
  %191 = phi i32 [ %192, %190 ], [ 1, %188 ]
  call void @llvm.dbg.value(metadata i32 %191, metadata !283, metadata !DIExpression()) #9, !dbg !460
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %189, i64* noundef nonnull %103) #9, !dbg !461
  %192 = add nuw nsw i32 %191, 1, !dbg !462
  call void @llvm.dbg.value(metadata i32 %192, metadata !283, metadata !DIExpression()) #9, !dbg !460
  %193 = icmp eq i32 %192, 50, !dbg !463
  br i1 %193, label %200, label %190, !dbg !464, !llvm.loop !465

194:                                              ; preds = %194, %185
  %195 = phi i32 [ 0, %185 ], [ %198, %194 ]
  call void @llvm.dbg.value(metadata i32 %195, metadata !254, metadata !DIExpression()) #9, !dbg !453
  %196 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %10, i32 0, i32 %195, !dbg !467
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %187) #9, !dbg !468
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef 0) #9, !dbg !468
  %197 = bitcast %struct.FStar_UInt128_uint128* %196 to i8*, !dbg !468
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %197, i8* noundef nonnull align 4 dereferenceable(16) %187, i32 16, i1 false) #9, !dbg !468, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %187) #9, !dbg !468
  %198 = add nuw nsw i32 %195, 1, !dbg !469
  call void @llvm.dbg.value(metadata i32 %198, metadata !254, metadata !DIExpression()) #9, !dbg !453
  %199 = icmp eq i32 %198, 5, !dbg !470
  br i1 %199, label %188, label %194, !dbg !454, !llvm.loop !471

200:                                              ; preds = %190
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %186) #9, !dbg !473
  call void @llvm.dbg.value(metadata i64* %98, metadata !228, metadata !DIExpression()) #9, !dbg !232
  call void @llvm.dbg.value(metadata i64* %103, metadata !229, metadata !DIExpression()) #9, !dbg !232
  call void @llvm.dbg.value(metadata i64* %106, metadata !230, metadata !DIExpression()) #9, !dbg !232
  call void @llvm.dbg.value(metadata i64* %154, metadata !231, metadata !DIExpression()) #9, !dbg !232
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %154, i64* noundef nonnull %103, i64* noundef nonnull %106) #9, !dbg !474
  call void @llvm.dbg.value(metadata i64* %103, metadata !241, metadata !DIExpression()) #9, !dbg !475
  call void @llvm.dbg.value(metadata i64* %154, metadata !242, metadata !DIExpression()) #9, !dbg !475
  call void @llvm.dbg.value(metadata i32 100, metadata !236, metadata !DIExpression()) #9, !dbg !475
  %201 = bitcast [5 x %struct.FStar_UInt128_uint128]* %8 to i8*, !dbg !477
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %201) #9, !dbg !477
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %8, metadata !243, metadata !DIExpression()) #9, !dbg !478
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !479
  %202 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !479
  br label %209, !dbg !480

203:                                              ; preds = %209
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %104, i8* noundef nonnull align 8 dereferenceable(40) %158, i32 40, i1 false) #9, !dbg !481
  %204 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %8, i32 0, i32 0, !dbg !482
  call void @llvm.dbg.value(metadata i64* %103, metadata !275, metadata !DIExpression()) #9, !dbg !483
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %204, metadata !281, metadata !DIExpression()) #9, !dbg !483
  call void @llvm.dbg.value(metadata i32 100, metadata !282, metadata !DIExpression()) #9, !dbg !483
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %204, i64* noundef nonnull %103) #9, !dbg !485
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !486
  br label %205

205:                                              ; preds = %205, %203
  %206 = phi i32 [ %207, %205 ], [ 1, %203 ]
  call void @llvm.dbg.value(metadata i32 %206, metadata !283, metadata !DIExpression()) #9, !dbg !486
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %204, i64* noundef nonnull %103) #9, !dbg !487
  %207 = add nuw nsw i32 %206, 1, !dbg !488
  call void @llvm.dbg.value(metadata i32 %207, metadata !283, metadata !DIExpression()) #9, !dbg !486
  %208 = icmp eq i32 %207, 100, !dbg !489
  br i1 %208, label %215, label %205, !dbg !490, !llvm.loop !491

209:                                              ; preds = %209, %200
  %210 = phi i32 [ 0, %200 ], [ %213, %209 ]
  call void @llvm.dbg.value(metadata i32 %210, metadata !254, metadata !DIExpression()) #9, !dbg !479
  %211 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %8, i32 0, i32 %210, !dbg !493
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %202) #9, !dbg !494
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef 0) #9, !dbg !494
  %212 = bitcast %struct.FStar_UInt128_uint128* %211 to i8*, !dbg !494
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %212, i8* noundef nonnull align 4 dereferenceable(16) %202, i32 16, i1 false) #9, !dbg !494, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %202) #9, !dbg !494
  %213 = add nuw nsw i32 %210, 1, !dbg !495
  call void @llvm.dbg.value(metadata i32 %213, metadata !254, metadata !DIExpression()) #9, !dbg !479
  %214 = icmp eq i32 %213, 5, !dbg !496
  br i1 %214, label %203, label %209, !dbg !480, !llvm.loop !497

215:                                              ; preds = %205
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %201) #9, !dbg !499
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %103, i64* noundef nonnull %103, i64* noundef nonnull %154) #9, !dbg !500
  call void @llvm.dbg.value(metadata i64* %103, metadata !414, metadata !DIExpression()) #9, !dbg !501
  call void @llvm.dbg.value(metadata i32 50, metadata !419, metadata !DIExpression()) #9, !dbg !501
  %216 = bitcast [5 x %struct.FStar_UInt128_uint128]* %6 to i8*, !dbg !503
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %216) #9, !dbg !503
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %6, metadata !420, metadata !DIExpression()) #9, !dbg !504
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()) #9, !dbg !505
  %217 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()) #9, !dbg !505
  br label %224, !dbg !506

218:                                              ; preds = %224
  %219 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %6, i32 0, i32 0, !dbg !507
  call void @llvm.dbg.value(metadata i64* %103, metadata !275, metadata !DIExpression()) #9, !dbg !508
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %219, metadata !281, metadata !DIExpression()) #9, !dbg !508
  call void @llvm.dbg.value(metadata i32 50, metadata !282, metadata !DIExpression()) #9, !dbg !508
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %219, i64* noundef nonnull %103) #9, !dbg !510
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !511
  br label %220

220:                                              ; preds = %220, %218
  %221 = phi i32 [ %222, %220 ], [ 1, %218 ]
  call void @llvm.dbg.value(metadata i32 %221, metadata !283, metadata !DIExpression()) #9, !dbg !511
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %219, i64* noundef nonnull %103) #9, !dbg !512
  %222 = add nuw nsw i32 %221, 1, !dbg !513
  call void @llvm.dbg.value(metadata i32 %222, metadata !283, metadata !DIExpression()) #9, !dbg !511
  %223 = icmp eq i32 %222, 50, !dbg !514
  br i1 %223, label %230, label %220, !dbg !515, !llvm.loop !516

224:                                              ; preds = %224, %215
  %225 = phi i32 [ 0, %215 ], [ %228, %224 ]
  call void @llvm.dbg.value(metadata i32 %225, metadata !421, metadata !DIExpression()) #9, !dbg !505
  %226 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %6, i32 0, i32 %225, !dbg !518
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %217) #9, !dbg !519
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0) #9, !dbg !519
  %227 = bitcast %struct.FStar_UInt128_uint128* %226 to i8*, !dbg !519
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %227, i8* noundef nonnull align 4 dereferenceable(16) %217, i32 16, i1 false) #9, !dbg !519, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %217) #9, !dbg !519
  %228 = add nuw nsw i32 %225, 1, !dbg !520
  call void @llvm.dbg.value(metadata i32 %228, metadata !421, metadata !DIExpression()) #9, !dbg !505
  %229 = icmp eq i32 %228, 5, !dbg !521
  br i1 %229, label %218, label %224, !dbg !506, !llvm.loop !522

230:                                              ; preds = %220
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %216) #9, !dbg !524
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %103, i64* noundef nonnull %103, i64* noundef nonnull %106) #9, !dbg !525
  call void @llvm.dbg.value(metadata i64* %103, metadata !414, metadata !DIExpression()) #9, !dbg !526
  call void @llvm.dbg.value(metadata i32 5, metadata !419, metadata !DIExpression()) #9, !dbg !526
  %231 = bitcast [5 x %struct.FStar_UInt128_uint128]* %4 to i8*, !dbg !528
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %231) #9, !dbg !528
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %4, metadata !420, metadata !DIExpression()) #9, !dbg !529
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()) #9, !dbg !530
  %232 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()) #9, !dbg !530
  br label %239, !dbg !531

233:                                              ; preds = %239
  %234 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %4, i32 0, i32 0, !dbg !532
  call void @llvm.dbg.value(metadata i64* %103, metadata !275, metadata !DIExpression()) #9, !dbg !533
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %234, metadata !281, metadata !DIExpression()) #9, !dbg !533
  call void @llvm.dbg.value(metadata i32 5, metadata !282, metadata !DIExpression()) #9, !dbg !533
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %234, i64* noundef nonnull %103) #9, !dbg !535
  call void @llvm.dbg.value(metadata i32 1, metadata !283, metadata !DIExpression()) #9, !dbg !536
  br label %235

235:                                              ; preds = %235, %233
  %236 = phi i32 [ %237, %235 ], [ 1, %233 ]
  call void @llvm.dbg.value(metadata i32 %236, metadata !283, metadata !DIExpression()) #9, !dbg !536
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %234, i64* noundef nonnull %103) #9, !dbg !537
  %237 = add nuw nsw i32 %236, 1, !dbg !538
  call void @llvm.dbg.value(metadata i32 %237, metadata !283, metadata !DIExpression()) #9, !dbg !536
  %238 = icmp eq i32 %237, 5, !dbg !539
  br i1 %238, label %245, label %235, !dbg !540, !llvm.loop !541

239:                                              ; preds = %239, %230
  %240 = phi i32 [ 0, %230 ], [ %243, %239 ]
  call void @llvm.dbg.value(metadata i32 %240, metadata !421, metadata !DIExpression()) #9, !dbg !530
  %241 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %4, i32 0, i32 %240, !dbg !543
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %232) #9, !dbg !544
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0) #9, !dbg !544
  %242 = bitcast %struct.FStar_UInt128_uint128* %241 to i8*, !dbg !544
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %242, i8* noundef nonnull align 4 dereferenceable(16) %232, i32 16, i1 false) #9, !dbg !544, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %232) #9, !dbg !544
  %243 = add nuw nsw i32 %240, 1, !dbg !545
  call void @llvm.dbg.value(metadata i32 %243, metadata !421, metadata !DIExpression()) #9, !dbg !530
  %244 = icmp eq i32 %243, 5, !dbg !546
  br i1 %244, label %233, label %239, !dbg !531, !llvm.loop !547

245:                                              ; preds = %235
  %246 = getelementptr inbounds [10 x i64], [10 x i64]* %27, i32 0, i32 0, !dbg !549
  %247 = getelementptr inbounds [10 x i64], [10 x i64]* %27, i32 0, i32 5, !dbg !550
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %231) #9, !dbg !551
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %246, i64* noundef nonnull %103, i64* noundef nonnull %98) #9, !dbg !552
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %88) #9, !dbg !553
  call void @llvm.dbg.value(metadata i64* %247, metadata !554, metadata !DIExpression()) #9, !dbg !561
  call void @llvm.dbg.value(metadata i64* %70, metadata !559, metadata !DIExpression()) #9, !dbg !561
  call void @llvm.dbg.value(metadata i64* %246, metadata !560, metadata !DIExpression()) #9, !dbg !561
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %247, i64* noundef nonnull %70, i64* noundef nonnull %246) #9, !dbg !563
  call void @llvm.dbg.value(metadata i8* %0, metadata !564, metadata !DIExpression()) #9, !dbg !568
  call void @llvm.dbg.value(metadata i64* %247, metadata !567, metadata !DIExpression()) #9, !dbg !568
  call void @llvm.dbg.value(metadata i64* %247, metadata !570, metadata !DIExpression()) #9, !dbg !575
  call void @llvm.dbg.value(metadata i64* %247, metadata !577, metadata !DIExpression()) #9, !dbg !593
  %248 = load i64, i64* %247, align 8, !dbg !595, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %248, metadata !580, metadata !DIExpression()) #9, !dbg !593
  %249 = getelementptr inbounds [10 x i64], [10 x i64]* %27, i32 0, i32 6, !dbg !596
  %250 = load i64, i64* %249, align 8, !dbg !596, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %250, metadata !581, metadata !DIExpression()) #9, !dbg !593
  %251 = getelementptr inbounds [10 x i64], [10 x i64]* %27, i32 0, i32 7, !dbg !597
  %252 = load i64, i64* %251, align 8, !dbg !597, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %252, metadata !582, metadata !DIExpression()) #9, !dbg !593
  %253 = getelementptr inbounds [10 x i64], [10 x i64]* %27, i32 0, i32 8, !dbg !598
  %254 = load i64, i64* %253, align 8, !dbg !598, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %254, metadata !583, metadata !DIExpression()) #9, !dbg !593
  %255 = getelementptr inbounds [10 x i64], [10 x i64]* %27, i32 0, i32 9, !dbg !599
  %256 = load i64, i64* %255, align 8, !dbg !599, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %256, metadata !584, metadata !DIExpression()) #9, !dbg !593
  %257 = lshr i64 %248, 51, !dbg !600
  %258 = add i64 %250, %257, !dbg !601
  call void @llvm.dbg.value(metadata i64 %258, metadata !585, metadata !DIExpression()) #9, !dbg !593
  %259 = and i64 %248, 2251799813685247, !dbg !602
  call void @llvm.dbg.value(metadata i64 %259, metadata !586, metadata !DIExpression()) #9, !dbg !593
  %260 = lshr i64 %258, 51, !dbg !603
  %261 = add i64 %260, %252, !dbg !604
  call void @llvm.dbg.value(metadata i64 %261, metadata !587, metadata !DIExpression()) #9, !dbg !593
  %262 = and i64 %258, 2251799813685247, !dbg !605
  call void @llvm.dbg.value(metadata i64 %262, metadata !588, metadata !DIExpression()) #9, !dbg !593
  %263 = lshr i64 %261, 51, !dbg !606
  %264 = add i64 %263, %254, !dbg !607
  call void @llvm.dbg.value(metadata i64 %264, metadata !589, metadata !DIExpression()) #9, !dbg !593
  %265 = and i64 %261, 2251799813685247, !dbg !608
  call void @llvm.dbg.value(metadata i64 %265, metadata !590, metadata !DIExpression()) #9, !dbg !593
  %266 = lshr i64 %264, 51, !dbg !609
  %267 = add i64 %266, %256, !dbg !610
  call void @llvm.dbg.value(metadata i64 %267, metadata !591, metadata !DIExpression()) #9, !dbg !593
  %268 = and i64 %264, 2251799813685247, !dbg !611
  call void @llvm.dbg.value(metadata i64 %268, metadata !592, metadata !DIExpression()) #9, !dbg !593
  store i64 %259, i64* %247, align 8, !dbg !612, !tbaa !121
  store i64 %262, i64* %249, align 8, !dbg !613, !tbaa !121
  store i64 %265, i64* %251, align 8, !dbg !614, !tbaa !121
  store i64 %268, i64* %253, align 8, !dbg !615, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %247, metadata !616, metadata !DIExpression()) #9, !dbg !623
  call void @llvm.dbg.value(metadata i64 %267, metadata !619, metadata !DIExpression()) #9, !dbg !623
  call void @llvm.dbg.value(metadata i64 %259, metadata !620, metadata !DIExpression()) #9, !dbg !623
  %269 = and i64 %267, 2251799813685247, !dbg !625
  call void @llvm.dbg.value(metadata i64 %269, metadata !621, metadata !DIExpression()) #9, !dbg !623
  %270 = lshr i64 %267, 51, !dbg !626
  %271 = mul nuw nsw i64 %270, 19, !dbg !627
  %272 = add nuw nsw i64 %271, %259, !dbg !628
  call void @llvm.dbg.value(metadata i64 %272, metadata !622, metadata !DIExpression()) #9, !dbg !623
  store i64 %269, i64* %255, align 8, !dbg !629, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %247, metadata !630, metadata !DIExpression()) #9, !dbg !637
  call void @llvm.dbg.value(metadata i64* %247, metadata !639, metadata !DIExpression()) #9, !dbg !655
  call void @llvm.dbg.value(metadata i64 %272, metadata !642, metadata !DIExpression()) #9, !dbg !655
  call void @llvm.dbg.value(metadata i64 %262, metadata !643, metadata !DIExpression()) #9, !dbg !655
  call void @llvm.dbg.value(metadata i64 %265, metadata !644, metadata !DIExpression()) #9, !dbg !655
  call void @llvm.dbg.value(metadata i64 %268, metadata !645, metadata !DIExpression()) #9, !dbg !655
  call void @llvm.dbg.value(metadata i64 %269, metadata !646, metadata !DIExpression()) #9, !dbg !655
  %273 = lshr i64 %272, 51, !dbg !657
  %274 = add nuw nsw i64 %273, %262, !dbg !658
  call void @llvm.dbg.value(metadata i64 %274, metadata !647, metadata !DIExpression()) #9, !dbg !655
  %275 = and i64 %272, 2251799813685247, !dbg !659
  call void @llvm.dbg.value(metadata i64 %275, metadata !648, metadata !DIExpression()) #9, !dbg !655
  %276 = lshr i64 %274, 51, !dbg !660
  %277 = add nuw nsw i64 %276, %265, !dbg !661
  call void @llvm.dbg.value(metadata i64 %277, metadata !649, metadata !DIExpression()) #9, !dbg !655
  %278 = and i64 %274, 2251799813685247, !dbg !662
  call void @llvm.dbg.value(metadata i64 %278, metadata !650, metadata !DIExpression()) #9, !dbg !655
  %279 = lshr i64 %277, 51, !dbg !663
  %280 = add nuw nsw i64 %279, %268, !dbg !664
  call void @llvm.dbg.value(metadata i64 %280, metadata !651, metadata !DIExpression()) #9, !dbg !655
  %281 = and i64 %277, 2251799813685247, !dbg !665
  call void @llvm.dbg.value(metadata i64 %277, metadata !652, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !655
  %282 = lshr i64 %280, 51, !dbg !666
  %283 = add nuw nsw i64 %282, %269, !dbg !667
  call void @llvm.dbg.value(metadata i64 %283, metadata !653, metadata !DIExpression()) #9, !dbg !655
  %284 = and i64 %280, 2251799813685247, !dbg !668
  call void @llvm.dbg.value(metadata i64 %280, metadata !654, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !655
  store i64 %275, i64* %247, align 8, !dbg !669, !tbaa !121
  store i64 %278, i64* %249, align 8, !dbg !670, !tbaa !121
  store i64 %281, i64* %251, align 8, !dbg !671, !tbaa !121
  store i64 %284, i64* %253, align 8, !dbg !672, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %247, metadata !616, metadata !DIExpression()) #9, !dbg !673
  call void @llvm.dbg.value(metadata i64 %283, metadata !619, metadata !DIExpression()) #9, !dbg !673
  call void @llvm.dbg.value(metadata i64 %275, metadata !620, metadata !DIExpression()) #9, !dbg !673
  %285 = and i64 %283, 2251799813685247, !dbg !675
  call void @llvm.dbg.value(metadata i64 %283, metadata !621, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !673
  %286 = lshr i64 %283, 51, !dbg !676
  %287 = mul nuw nsw i64 %286, 19, !dbg !677
  %288 = add nuw nsw i64 %287, %275, !dbg !678
  call void @llvm.dbg.value(metadata i64 %288, metadata !622, metadata !DIExpression()) #9, !dbg !673
  store i64 %285, i64* %255, align 8, !dbg !679, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %288, metadata !633, metadata !DIExpression()) #9, !dbg !637
  call void @llvm.dbg.value(metadata i64 %278, metadata !634, metadata !DIExpression()) #9, !dbg !637
  %289 = and i64 %288, 2251799813685247, !dbg !680
  call void @llvm.dbg.value(metadata i64 %288, metadata !635, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !637
  %290 = lshr i64 %288, 51, !dbg !681
  %291 = add nuw nsw i64 %290, %278, !dbg !682
  call void @llvm.dbg.value(metadata i64 %291, metadata !636, metadata !DIExpression()) #9, !dbg !637
  store i64 %289, i64* %247, align 8, !dbg !683, !tbaa !121
  store i64 %291, i64* %249, align 8, !dbg !684, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %247, metadata !685, metadata !DIExpression()) #9, !dbg !704
  call void @llvm.dbg.value(metadata i64 %288, metadata !688, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !704
  call void @llvm.dbg.value(metadata i64 %291, metadata !689, metadata !DIExpression()) #9, !dbg !704
  call void @llvm.dbg.value(metadata i64 %277, metadata !690, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !704
  call void @llvm.dbg.value(metadata i64 %280, metadata !691, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !704
  call void @llvm.dbg.value(metadata i64 %283, metadata !692, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !704
  call void @llvm.dbg.value(metadata i64 %288, metadata !706, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !715
  call void @llvm.dbg.value(metadata i64 2251799813685229, metadata !712, metadata !DIExpression()) #9, !dbg !715
  %292 = add nsw i64 %289, -2251799813685229, !dbg !717
  call void @llvm.dbg.value(metadata i64 %292, metadata !713, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)) #9, !dbg !715
  call void @llvm.dbg.value(metadata i64 %288, metadata !714, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_constu, 63, DW_OP_shra, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)) #9, !dbg !715
  %293 = ashr i64 %292, 63, !dbg !718
  %294 = xor i64 %293, -1, !dbg !718
  call void @llvm.dbg.value(metadata i64 %294, metadata !693, metadata !DIExpression()) #9, !dbg !704
  call void @llvm.dbg.value(metadata i64 %291, metadata !719, metadata !DIExpression()) #9, !dbg !723
  call void @llvm.dbg.value(metadata i64 2251799813685247, metadata !722, metadata !DIExpression()) #9, !dbg !723
  %295 = xor i64 %291, -2251799813685248, !dbg !725
  call void @llvm.dbg.value(metadata i64 %291, metadata !719, metadata !DIExpression(DW_OP_constu, 18444492273895866368, DW_OP_xor, DW_OP_stack_value)) #9, !dbg !723
  %296 = shl i64 %291, 32, !dbg !726
  %297 = and i64 %295, %296, !dbg !727
  call void @llvm.dbg.value(metadata i64 %297, metadata !719, metadata !DIExpression()) #9, !dbg !723
  %298 = shl i64 %297, 16, !dbg !728
  %299 = and i64 %298, %297, !dbg !729
  call void @llvm.dbg.value(metadata i64 %299, metadata !719, metadata !DIExpression()) #9, !dbg !723
  %300 = shl i64 %299, 8, !dbg !730
  %301 = and i64 %300, %299, !dbg !731
  call void @llvm.dbg.value(metadata i64 %301, metadata !719, metadata !DIExpression()) #9, !dbg !723
  %302 = shl i64 %301, 4, !dbg !732
  %303 = and i64 %302, %301, !dbg !733
  call void @llvm.dbg.value(metadata i64 %303, metadata !719, metadata !DIExpression()) #9, !dbg !723
  %304 = shl i64 %303, 2, !dbg !734
  %305 = and i64 %304, %303, !dbg !735
  call void @llvm.dbg.value(metadata i64 %305, metadata !719, metadata !DIExpression()) #9, !dbg !723
  %306 = shl i64 %305, 1, !dbg !736
  %307 = and i64 %306, %305, !dbg !737
  call void @llvm.dbg.value(metadata i64 %307, metadata !719, metadata !DIExpression()) #9, !dbg !723
  call void @llvm.dbg.value(metadata i64 %307, metadata !694, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_stack_value)) #9, !dbg !704
  call void @llvm.dbg.value(metadata i64 %277, metadata !719, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !738
  call void @llvm.dbg.value(metadata i64 2251799813685247, metadata !722, metadata !DIExpression()) #9, !dbg !738
  %308 = or i64 %277, -2251799813685248, !dbg !740
  call void @llvm.dbg.value(metadata i64 %277, metadata !719, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_constu, 18444492273895866368, DW_OP_xor, DW_OP_stack_value)) #9, !dbg !738
  %309 = shl i64 %277, 32, !dbg !741
  %310 = and i64 %308, %309, !dbg !742
  call void @llvm.dbg.value(metadata i64 %310, metadata !719, metadata !DIExpression()) #9, !dbg !738
  %311 = shl i64 %310, 16, !dbg !743
  %312 = and i64 %311, %310, !dbg !744
  call void @llvm.dbg.value(metadata i64 %312, metadata !719, metadata !DIExpression()) #9, !dbg !738
  %313 = shl i64 %312, 8, !dbg !745
  %314 = and i64 %313, %312, !dbg !746
  call void @llvm.dbg.value(metadata i64 %314, metadata !719, metadata !DIExpression()) #9, !dbg !738
  %315 = shl i64 %314, 4, !dbg !747
  %316 = and i64 %315, %314, !dbg !748
  call void @llvm.dbg.value(metadata i64 %316, metadata !719, metadata !DIExpression()) #9, !dbg !738
  %317 = shl i64 %316, 2, !dbg !749
  %318 = and i64 %317, %316, !dbg !750
  call void @llvm.dbg.value(metadata i64 %318, metadata !719, metadata !DIExpression()) #9, !dbg !738
  %319 = shl i64 %318, 1, !dbg !751
  %320 = and i64 %319, %318, !dbg !752
  call void @llvm.dbg.value(metadata i64 %320, metadata !719, metadata !DIExpression()) #9, !dbg !738
  call void @llvm.dbg.value(metadata i64 %320, metadata !695, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_stack_value)) #9, !dbg !704
  call void @llvm.dbg.value(metadata i64 %280, metadata !719, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !753
  call void @llvm.dbg.value(metadata i64 2251799813685247, metadata !722, metadata !DIExpression()) #9, !dbg !753
  %321 = or i64 %280, -2251799813685248, !dbg !755
  call void @llvm.dbg.value(metadata i64 %280, metadata !719, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_constu, 18444492273895866368, DW_OP_xor, DW_OP_stack_value)) #9, !dbg !753
  %322 = shl i64 %280, 32, !dbg !756
  %323 = and i64 %321, %322, !dbg !757
  call void @llvm.dbg.value(metadata i64 %323, metadata !719, metadata !DIExpression()) #9, !dbg !753
  %324 = shl i64 %323, 16, !dbg !758
  %325 = and i64 %324, %323, !dbg !759
  call void @llvm.dbg.value(metadata i64 %325, metadata !719, metadata !DIExpression()) #9, !dbg !753
  %326 = shl i64 %325, 8, !dbg !760
  %327 = and i64 %326, %325, !dbg !761
  call void @llvm.dbg.value(metadata i64 %327, metadata !719, metadata !DIExpression()) #9, !dbg !753
  %328 = shl i64 %327, 4, !dbg !762
  %329 = and i64 %328, %327, !dbg !763
  call void @llvm.dbg.value(metadata i64 %329, metadata !719, metadata !DIExpression()) #9, !dbg !753
  %330 = shl i64 %329, 2, !dbg !764
  %331 = and i64 %330, %329, !dbg !765
  call void @llvm.dbg.value(metadata i64 %331, metadata !719, metadata !DIExpression()) #9, !dbg !753
  %332 = shl i64 %331, 1, !dbg !766
  %333 = and i64 %332, %331, !dbg !767
  call void @llvm.dbg.value(metadata i64 %333, metadata !719, metadata !DIExpression()) #9, !dbg !753
  call void @llvm.dbg.value(metadata i64 %333, metadata !696, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_stack_value)) #9, !dbg !704
  call void @llvm.dbg.value(metadata i64 %283, metadata !719, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_stack_value)) #9, !dbg !768
  call void @llvm.dbg.value(metadata i64 2251799813685247, metadata !722, metadata !DIExpression()) #9, !dbg !768
  %334 = or i64 %283, -2251799813685248, !dbg !770
  call void @llvm.dbg.value(metadata i64 %283, metadata !719, metadata !DIExpression(DW_OP_constu, 2251799813685247, DW_OP_and, DW_OP_constu, 18444492273895866368, DW_OP_xor, DW_OP_stack_value)) #9, !dbg !768
  %335 = shl i64 %283, 32, !dbg !771
  %336 = and i64 %334, %335, !dbg !772
  call void @llvm.dbg.value(metadata i64 %336, metadata !719, metadata !DIExpression()) #9, !dbg !768
  %337 = shl i64 %336, 16, !dbg !773
  %338 = and i64 %337, %336, !dbg !774
  call void @llvm.dbg.value(metadata i64 %338, metadata !719, metadata !DIExpression()) #9, !dbg !768
  %339 = shl i64 %338, 8, !dbg !775
  %340 = and i64 %339, %338, !dbg !776
  call void @llvm.dbg.value(metadata i64 %340, metadata !719, metadata !DIExpression()) #9, !dbg !768
  %341 = shl i64 %340, 4, !dbg !777
  %342 = and i64 %341, %340, !dbg !778
  call void @llvm.dbg.value(metadata i64 %342, metadata !719, metadata !DIExpression()) #9, !dbg !768
  %343 = shl i64 %342, 2, !dbg !779
  %344 = and i64 %343, %342, !dbg !780
  call void @llvm.dbg.value(metadata i64 %344, metadata !719, metadata !DIExpression()) #9, !dbg !768
  %345 = shl i64 %344, 1, !dbg !781
  %346 = and i64 %345, %344, !dbg !782
  call void @llvm.dbg.value(metadata i64 %346, metadata !719, metadata !DIExpression()) #9, !dbg !768
  call void @llvm.dbg.value(metadata i64 %346, metadata !697, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shra, DW_OP_stack_value)) #9, !dbg !704
  %347 = icmp slt i64 %307, 0, !dbg !783
  %348 = icmp slt i64 %320, 0, !dbg !784
  %349 = icmp slt i64 %333, 0, !dbg !785
  %350 = icmp slt i64 %346, 0, !dbg !786
  %351 = select i1 %350, i1 %349, i1 false, !dbg !786
  %352 = select i1 %351, i1 %348, i1 false, !dbg !786
  %353 = select i1 %352, i1 %347, i1 false, !dbg !786
  %354 = select i1 %353, i64 %294, i64 0, !dbg !786
  call void @llvm.dbg.value(metadata i64 %354, metadata !698, metadata !DIExpression()) #9, !dbg !704
  %355 = and i64 %354, 2251799813685229, !dbg !787
  %356 = sub nsw i64 %289, %355, !dbg !788
  call void @llvm.dbg.value(metadata i64 %356, metadata !699, metadata !DIExpression()) #9, !dbg !704
  %357 = and i64 %354, 2251799813685247, !dbg !789
  %358 = sub nsw i64 %291, %357, !dbg !790
  call void @llvm.dbg.value(metadata i64 %358, metadata !700, metadata !DIExpression()) #9, !dbg !704
  %359 = sub nsw i64 %281, %357, !dbg !791
  call void @llvm.dbg.value(metadata i64 %359, metadata !701, metadata !DIExpression()) #9, !dbg !704
  %360 = sub nsw i64 %284, %357, !dbg !792
  call void @llvm.dbg.value(metadata i64 %360, metadata !702, metadata !DIExpression()) #9, !dbg !704
  %361 = sub nsw i64 %285, %357, !dbg !793
  call void @llvm.dbg.value(metadata i64 %361, metadata !703, metadata !DIExpression()) #9, !dbg !704
  store i64 %356, i64* %247, align 8, !dbg !794, !tbaa !121
  store i64 %358, i64* %249, align 8, !dbg !795, !tbaa !121
  store i64 %359, i64* %251, align 8, !dbg !796, !tbaa !121
  store i64 %360, i64* %253, align 8, !dbg !797, !tbaa !121
  store i64 %361, i64* %255, align 8, !dbg !798, !tbaa !121
  call void @llvm.dbg.value(metadata i8* %0, metadata !799, metadata !DIExpression()) #9, !dbg !816
  call void @llvm.dbg.value(metadata i64* %247, metadata !802, metadata !DIExpression()) #9, !dbg !816
  call void @llvm.dbg.value(metadata i64 %356, metadata !803, metadata !DIExpression()) #9, !dbg !816
  call void @llvm.dbg.value(metadata i64 %358, metadata !804, metadata !DIExpression()) #9, !dbg !816
  call void @llvm.dbg.value(metadata i64 %359, metadata !805, metadata !DIExpression()) #9, !dbg !816
  call void @llvm.dbg.value(metadata i64 %360, metadata !806, metadata !DIExpression()) #9, !dbg !816
  call void @llvm.dbg.value(metadata i64 %361, metadata !807, metadata !DIExpression()) #9, !dbg !816
  %362 = shl i64 %358, 51, !dbg !818
  %363 = or i64 %362, %356, !dbg !819
  call void @llvm.dbg.value(metadata i64 %363, metadata !808, metadata !DIExpression()) #9, !dbg !816
  %364 = shl i64 %359, 38, !dbg !820
  %365 = lshr i64 %358, 13, !dbg !821
  %366 = or i64 %364, %365, !dbg !822
  call void @llvm.dbg.value(metadata i64 %366, metadata !809, metadata !DIExpression()) #9, !dbg !816
  %367 = shl i64 %360, 25, !dbg !823
  %368 = lshr i64 %359, 26, !dbg !824
  %369 = or i64 %367, %368, !dbg !825
  call void @llvm.dbg.value(metadata i64 %369, metadata !810, metadata !DIExpression()) #9, !dbg !816
  %370 = shl i64 %361, 12, !dbg !826
  %371 = lshr i64 %360, 39, !dbg !827
  %372 = or i64 %370, %371, !dbg !828
  call void @llvm.dbg.value(metadata i64 %372, metadata !811, metadata !DIExpression()) #9, !dbg !816
  call void @llvm.dbg.value(metadata i8* %0, metadata !812, metadata !DIExpression()) #9, !dbg !816
  %373 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !829
  call void @llvm.dbg.value(metadata i8* %373, metadata !813, metadata !DIExpression()) #9, !dbg !816
  %374 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !830
  call void @llvm.dbg.value(metadata i8* %374, metadata !814, metadata !DIExpression()) #9, !dbg !816
  %375 = getelementptr inbounds i8, i8* %0, i32 24, !dbg !831
  call void @llvm.dbg.value(metadata i8* %375, metadata !815, metadata !DIExpression()) #9, !dbg !816
  call void @llvm.dbg.value(metadata i8* %0, metadata !832, metadata !DIExpression()) #9, !dbg !838
  call void @llvm.dbg.value(metadata i64 %363, metadata !837, metadata !DIExpression()) #9, !dbg !838
  %376 = bitcast i8* %0 to i64*, !dbg !840
  store i64 %363, i64* %376, align 1, !dbg !840
  call void @llvm.dbg.value(metadata i8* %373, metadata !832, metadata !DIExpression()) #9, !dbg !841
  call void @llvm.dbg.value(metadata i64 %366, metadata !837, metadata !DIExpression()) #9, !dbg !841
  %377 = bitcast i8* %373 to i64*, !dbg !843
  store i64 %366, i64* %377, align 1, !dbg !843
  call void @llvm.dbg.value(metadata i8* %374, metadata !832, metadata !DIExpression()) #9, !dbg !844
  call void @llvm.dbg.value(metadata i64 %369, metadata !837, metadata !DIExpression()) #9, !dbg !844
  %378 = bitcast i8* %374 to i64*, !dbg !846
  store i64 %369, i64* %378, align 1, !dbg !846
  call void @llvm.dbg.value(metadata i8* %375, metadata !832, metadata !DIExpression()) #9, !dbg !847
  call void @llvm.dbg.value(metadata i64 %372, metadata !837, metadata !DIExpression()) #9, !dbg !847
  %379 = bitcast i8* %375 to i64*, !dbg !849
  store i64 %372, i64* %379, align 1, !dbg !849
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %87) #9, !dbg !850
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %69) #9, !dbg !851
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %62) #9, !dbg !851
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %32) #9, !dbg !851
  ret void, !dbg !851
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_Curve25519_crypto_scalarmult(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !852 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !854, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i8* %1, metadata !855, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i8* %2, metadata !856, metadata !DIExpression()), !dbg !857
  call void @Hacl_EC_crypto_scalarmult(i8* noundef %0, i8* noundef %1, i8* noundef %2), !dbg !858
  ret void, !dbg !859
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(i8* nocapture noundef readonly %0, i64* nocapture noundef %1, i64* nocapture noundef %2, i64* nocapture noundef %3, i64* nocapture noundef %4, i64* nocapture noundef readonly %5, i32 noundef %6) unnamed_addr #0 !dbg !860 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !864, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i64* %1, metadata !865, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i64* %2, metadata !866, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i64* %3, metadata !867, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i64* %4, metadata !868, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i64* %5, metadata !869, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 %6, metadata !870, metadata !DIExpression()), !dbg !875
  %8 = icmp eq i32 %6, 0, !dbg !876
  br i1 %8, label %13, label %9, !dbg !877

9:                                                ; preds = %7
  %10 = add i32 %6, -1, !dbg !878
  call void @llvm.dbg.value(metadata i32 %10, metadata !871, metadata !DIExpression()), !dbg !879
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !880
  %12 = load i8, i8* %11, align 1, !dbg !880, !tbaa !138
  call void @llvm.dbg.value(metadata i8 %12, metadata !874, metadata !DIExpression()), !dbg !879
  call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(i64* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4, i64* noundef %5, i8 noundef zeroext %12, i32 noundef 4), !dbg !881
  call fastcc void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(i8* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4, i64* noundef %5, i32 noundef %10), !dbg !882
  br label %13, !dbg !883

13:                                               ; preds = %9, %7
  ret void, !dbg !884
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(i64* nocapture noundef %0, i64* nocapture noundef %1, i64* nocapture noundef %2, i64* nocapture noundef %3, i64* nocapture noundef readonly %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #0 !dbg !885 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !889, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i64* %1, metadata !890, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i64* %2, metadata !891, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i64* %3, metadata !892, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i64* %4, metadata !893, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i8 %5, metadata !894, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %6, metadata !895, metadata !DIExpression()), !dbg !900
  %8 = icmp eq i32 %6, 0, !dbg !901
  br i1 %8, label %13, label %9, !dbg !902

9:                                                ; preds = %7
  %10 = add i32 %6, -1, !dbg !903
  call void @llvm.dbg.value(metadata i32 %10, metadata !896, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i64* %0, metadata !905, metadata !DIExpression()) #9, !dbg !916
  call void @llvm.dbg.value(metadata i64* %1, metadata !910, metadata !DIExpression()) #9, !dbg !916
  call void @llvm.dbg.value(metadata i64* %2, metadata !911, metadata !DIExpression()) #9, !dbg !916
  call void @llvm.dbg.value(metadata i64* %3, metadata !912, metadata !DIExpression()) #9, !dbg !916
  call void @llvm.dbg.value(metadata i64* %4, metadata !913, metadata !DIExpression()) #9, !dbg !916
  call void @llvm.dbg.value(metadata i8 %5, metadata !914, metadata !DIExpression()) #9, !dbg !916
  call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(i64* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4, i8 noundef zeroext %5) #9, !dbg !918
  %11 = shl i8 %5, 1, !dbg !919
  call void @llvm.dbg.value(metadata i8 %11, metadata !915, metadata !DIExpression()) #9, !dbg !916
  call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(i64* noundef %2, i64* noundef %3, i64* noundef %0, i64* noundef %1, i64* noundef %4, i8 noundef zeroext %11) #9, !dbg !920
  %12 = shl i8 %5, 2, !dbg !921
  call void @llvm.dbg.value(metadata i8 %12, metadata !899, metadata !DIExpression()), !dbg !904
  call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(i64* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4, i8 noundef zeroext %12, i32 noundef %10), !dbg !922
  br label %13, !dbg !923

13:                                               ; preds = %9, %7
  ret void, !dbg !924
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(i64* nocapture noundef %0, i64* nocapture noundef %1, i64* nocapture noundef %2, i64* nocapture noundef %3, i64* nocapture noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #0 !dbg !925 {
  %7 = alloca [5 x %struct.FStar_UInt128_uint128], align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 4
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 4
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 4
  %20 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %21 = alloca %struct.FStar_UInt128_uint128, align 4
  %22 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %25 = alloca %struct.FStar_UInt128_uint128, align 4
  %26 = alloca [40 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !927, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64* %1, metadata !928, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64* %2, metadata !929, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64* %3, metadata !930, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64* %4, metadata !931, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i8 %5, metadata !932, metadata !DIExpression()), !dbg !935
  %27 = lshr i8 %5, 7, !dbg !936
  %28 = zext i8 %27 to i64
  call void @llvm.dbg.value(metadata i64 %28, metadata !933, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64* %0, metadata !937, metadata !DIExpression()) #9, !dbg !945
  call void @llvm.dbg.value(metadata i64* %1, metadata !942, metadata !DIExpression()) #9, !dbg !945
  call void @llvm.dbg.value(metadata i64 %28, metadata !943, metadata !DIExpression()) #9, !dbg !945
  %29 = sub nsw i64 0, %28, !dbg !947
  call void @llvm.dbg.value(metadata i64 %29, metadata !944, metadata !DIExpression()) #9, !dbg !945
  call fastcc void @Hacl_EC_Point_swap_conditional_(i64* noundef %0, i64* noundef %1, i64 noundef %29, i32 noundef 5) #9, !dbg !948
  %30 = getelementptr inbounds i64, i64* %0, i32 5, !dbg !949
  %31 = getelementptr inbounds i64, i64* %1, i32 5, !dbg !950
  call fastcc void @Hacl_EC_Point_swap_conditional_(i64* noundef nonnull %30, i64* noundef nonnull %31, i64 noundef %29, i32 noundef 5) #9, !dbg !951
  call void @llvm.dbg.value(metadata i64* %2, metadata !952, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %3, metadata !957, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %0, metadata !958, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %1, metadata !959, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %4, metadata !960, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %4, metadata !961, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %2, metadata !962, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %2, metadata !963, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %3, metadata !964, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %0, metadata !966, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %30, metadata !967, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %1, metadata !968, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %31, metadata !969, metadata !DIExpression()) #9, !dbg !985
  %32 = bitcast [40 x i64]* %26 to i8*, !dbg !987
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %32) #9, !dbg !987
  call void @llvm.dbg.declare(metadata [40 x i64]* %26, metadata !970, metadata !DIExpression()) #9, !dbg !988
  %33 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 0, !dbg !989
  call void @llvm.dbg.value(metadata i64* %33, metadata !971, metadata !DIExpression()) #9, !dbg !985
  %34 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 5, !dbg !990
  call void @llvm.dbg.value(metadata i64* %34, metadata !972, metadata !DIExpression()) #9, !dbg !985
  %35 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 25, !dbg !991
  call void @llvm.dbg.value(metadata i64* %35, metadata !973, metadata !DIExpression()) #9, !dbg !985
  %36 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 30, !dbg !992
  call void @llvm.dbg.value(metadata i64* %36, metadata !974, metadata !DIExpression()) #9, !dbg !985
  %37 = bitcast i64* %0 to i8*, !dbg !993
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %32, i8* noundef nonnull align 4 dereferenceable(40) %37, i32 40, i1 false) #9, !dbg !993
  call void @llvm.dbg.value(metadata i64* %0, metadata !994, metadata !DIExpression()) #9, !dbg !1013
  call void @llvm.dbg.value(metadata i64* %30, metadata !997, metadata !DIExpression()) #9, !dbg !1013
  %38 = load i64, i64* %0, align 4, !dbg !1015, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %38, metadata !998, metadata !DIExpression()) #9, !dbg !1016
  %39 = load i64, i64* %30, align 4, !dbg !1017, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %39, metadata !1000, metadata !DIExpression()) #9, !dbg !1016
  %40 = add i64 %39, %38, !dbg !1018
  store i64 %40, i64* %0, align 4, !dbg !1019, !tbaa !121
  %41 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1020
  %42 = load i64, i64* %41, align 4, !dbg !1020, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %42, metadata !1001, metadata !DIExpression()) #9, !dbg !1021
  %43 = getelementptr inbounds i64, i64* %0, i32 6, !dbg !1022
  %44 = load i64, i64* %43, align 4, !dbg !1022, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %44, metadata !1003, metadata !DIExpression()) #9, !dbg !1021
  %45 = add i64 %44, %42, !dbg !1023
  store i64 %45, i64* %41, align 4, !dbg !1024, !tbaa !121
  %46 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !1025
  %47 = load i64, i64* %46, align 4, !dbg !1025, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %47, metadata !1004, metadata !DIExpression()) #9, !dbg !1026
  %48 = getelementptr inbounds i64, i64* %0, i32 7, !dbg !1027
  %49 = load i64, i64* %48, align 4, !dbg !1027, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %49, metadata !1006, metadata !DIExpression()) #9, !dbg !1026
  %50 = add i64 %49, %47, !dbg !1028
  store i64 %50, i64* %46, align 4, !dbg !1029, !tbaa !121
  %51 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !1030
  %52 = load i64, i64* %51, align 4, !dbg !1030, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %52, metadata !1007, metadata !DIExpression()) #9, !dbg !1031
  %53 = getelementptr inbounds i64, i64* %0, i32 8, !dbg !1032
  %54 = load i64, i64* %53, align 4, !dbg !1032, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %54, metadata !1009, metadata !DIExpression()) #9, !dbg !1031
  %55 = add i64 %54, %52, !dbg !1033
  store i64 %55, i64* %51, align 4, !dbg !1034, !tbaa !121
  %56 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !1035
  %57 = load i64, i64* %56, align 4, !dbg !1035, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %57, metadata !1010, metadata !DIExpression()) #9, !dbg !1036
  %58 = getelementptr inbounds i64, i64* %0, i32 9, !dbg !1037
  %59 = load i64, i64* %58, align 4, !dbg !1037, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %59, metadata !1012, metadata !DIExpression()) #9, !dbg !1036
  %60 = add i64 %59, %57, !dbg !1038
  store i64 %60, i64* %56, align 4, !dbg !1039, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %30, metadata !1040, metadata !DIExpression()) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64* %33, metadata !1043, metadata !DIExpression()) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1066
  %61 = load i64, i64* %33, align 8, !dbg !1068
  call void @llvm.dbg.value(metadata i64 %61, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1066
  %62 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 1, !dbg !1068
  %63 = load i64, i64* %62, align 8, !dbg !1068
  call void @llvm.dbg.value(metadata i64 %63, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1066
  %64 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 2, !dbg !1068
  %65 = load i64, i64* %64, align 8, !dbg !1068
  call void @llvm.dbg.value(metadata i64 %65, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1066
  %66 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 3, !dbg !1068
  %67 = load i64, i64* %66, align 8, !dbg !1068
  call void @llvm.dbg.value(metadata i64 %67, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1066
  %68 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 4, !dbg !1068
  %69 = load i64, i64* %68, align 8, !dbg !1068
  call void @llvm.dbg.value(metadata i64 %69, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %61, metadata !1046, metadata !DIExpression()) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %63, metadata !1047, metadata !DIExpression()) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %65, metadata !1048, metadata !DIExpression()) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %67, metadata !1049, metadata !DIExpression()) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %69, metadata !1050, metadata !DIExpression()) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %39, metadata !1051, metadata !DIExpression()) #9, !dbg !1069
  call void @llvm.dbg.value(metadata i64 undef, metadata !1053, metadata !DIExpression()) #9, !dbg !1069
  %70 = sub i64 18014398509481832, %39, !dbg !1070
  %71 = add i64 %70, %61, !dbg !1071
  store i64 %71, i64* %30, align 4, !dbg !1072, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %44, metadata !1054, metadata !DIExpression()) #9, !dbg !1073
  call void @llvm.dbg.value(metadata i64 undef, metadata !1056, metadata !DIExpression()) #9, !dbg !1073
  %72 = sub i64 18014398509481976, %44, !dbg !1074
  %73 = add i64 %72, %63, !dbg !1075
  store i64 %73, i64* %43, align 4, !dbg !1076, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %49, metadata !1057, metadata !DIExpression()) #9, !dbg !1077
  call void @llvm.dbg.value(metadata i64 undef, metadata !1059, metadata !DIExpression()) #9, !dbg !1077
  %74 = sub i64 18014398509481976, %49, !dbg !1078
  %75 = add i64 %74, %65, !dbg !1079
  store i64 %75, i64* %48, align 4, !dbg !1080, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %54, metadata !1060, metadata !DIExpression()) #9, !dbg !1081
  call void @llvm.dbg.value(metadata i64 undef, metadata !1062, metadata !DIExpression()) #9, !dbg !1081
  %76 = sub i64 18014398509481976, %54, !dbg !1082
  %77 = add i64 %76, %67, !dbg !1083
  store i64 %77, i64* %53, align 4, !dbg !1084, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %59, metadata !1063, metadata !DIExpression()) #9, !dbg !1085
  call void @llvm.dbg.value(metadata i64 undef, metadata !1065, metadata !DIExpression()) #9, !dbg !1085
  %78 = sub i64 18014398509481976, %59, !dbg !1086
  %79 = add i64 %78, %69, !dbg !1087
  store i64 %79, i64* %58, align 4, !dbg !1088, !tbaa !121
  %80 = bitcast i64* %34 to i8*, !dbg !1089
  %81 = bitcast i64* %1 to i8*, !dbg !1089
  %82 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 10, !dbg !1089
  %83 = bitcast i64* %82 to i8*, !dbg !1089
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(240) %83, i8 0, i32 240, i1 false) #9, !dbg !1089
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %80, i8* noundef nonnull align 4 dereferenceable(40) %81, i32 40, i1 false) #9, !dbg !1089
  call void @llvm.dbg.value(metadata i64* %1, metadata !994, metadata !DIExpression()) #9, !dbg !1090
  call void @llvm.dbg.value(metadata i64* %31, metadata !997, metadata !DIExpression()) #9, !dbg !1090
  %84 = load i64, i64* %1, align 4, !dbg !1092, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %84, metadata !998, metadata !DIExpression()) #9, !dbg !1093
  %85 = load i64, i64* %31, align 4, !dbg !1094, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %85, metadata !1000, metadata !DIExpression()) #9, !dbg !1093
  %86 = add i64 %85, %84, !dbg !1095
  store i64 %86, i64* %1, align 4, !dbg !1096, !tbaa !121
  %87 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !1097
  %88 = load i64, i64* %87, align 4, !dbg !1097, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %88, metadata !1001, metadata !DIExpression()) #9, !dbg !1098
  %89 = getelementptr inbounds i64, i64* %1, i32 6, !dbg !1099
  %90 = load i64, i64* %89, align 4, !dbg !1099, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %90, metadata !1003, metadata !DIExpression()) #9, !dbg !1098
  %91 = add i64 %90, %88, !dbg !1100
  store i64 %91, i64* %87, align 4, !dbg !1101, !tbaa !121
  %92 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !1102
  %93 = load i64, i64* %92, align 4, !dbg !1102, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %93, metadata !1004, metadata !DIExpression()) #9, !dbg !1103
  %94 = getelementptr inbounds i64, i64* %1, i32 7, !dbg !1104
  %95 = load i64, i64* %94, align 4, !dbg !1104, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %95, metadata !1006, metadata !DIExpression()) #9, !dbg !1103
  %96 = add i64 %95, %93, !dbg !1105
  store i64 %96, i64* %92, align 4, !dbg !1106, !tbaa !121
  %97 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !1107
  %98 = load i64, i64* %97, align 4, !dbg !1107, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %98, metadata !1007, metadata !DIExpression()) #9, !dbg !1108
  %99 = getelementptr inbounds i64, i64* %1, i32 8, !dbg !1109
  %100 = load i64, i64* %99, align 4, !dbg !1109, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %100, metadata !1009, metadata !DIExpression()) #9, !dbg !1108
  %101 = add i64 %100, %98, !dbg !1110
  store i64 %101, i64* %97, align 4, !dbg !1111, !tbaa !121
  %102 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1112
  %103 = load i64, i64* %102, align 4, !dbg !1112, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %103, metadata !1010, metadata !DIExpression()) #9, !dbg !1113
  %104 = getelementptr inbounds i64, i64* %1, i32 9, !dbg !1114
  %105 = load i64, i64* %104, align 4, !dbg !1114, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %105, metadata !1012, metadata !DIExpression()) #9, !dbg !1113
  %106 = add i64 %105, %103, !dbg !1115
  store i64 %106, i64* %102, align 4, !dbg !1116, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %31, metadata !1040, metadata !DIExpression()) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64* %34, metadata !1043, metadata !DIExpression()) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1117
  %107 = load i64, i64* %34, align 8, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %107, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1117
  %108 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 6, !dbg !1119
  %109 = load i64, i64* %108, align 8, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %109, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1117
  %110 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 7, !dbg !1119
  %111 = load i64, i64* %110, align 8, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %111, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1117
  %112 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 8, !dbg !1119
  %113 = load i64, i64* %112, align 8, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %113, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1117
  %114 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 9, !dbg !1119
  %115 = load i64, i64* %114, align 8, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %115, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %107, metadata !1046, metadata !DIExpression()) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %109, metadata !1047, metadata !DIExpression()) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %111, metadata !1048, metadata !DIExpression()) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %113, metadata !1049, metadata !DIExpression()) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %115, metadata !1050, metadata !DIExpression()) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %85, metadata !1051, metadata !DIExpression()) #9, !dbg !1120
  call void @llvm.dbg.value(metadata i64 undef, metadata !1053, metadata !DIExpression()) #9, !dbg !1120
  %116 = sub i64 18014398509481832, %85, !dbg !1121
  %117 = add i64 %116, %107, !dbg !1122
  store i64 %117, i64* %31, align 4, !dbg !1123, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %90, metadata !1054, metadata !DIExpression()) #9, !dbg !1124
  call void @llvm.dbg.value(metadata i64 undef, metadata !1056, metadata !DIExpression()) #9, !dbg !1124
  %118 = sub i64 18014398509481976, %90, !dbg !1125
  %119 = add i64 %118, %109, !dbg !1126
  store i64 %119, i64* %89, align 4, !dbg !1127, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %95, metadata !1057, metadata !DIExpression()) #9, !dbg !1128
  call void @llvm.dbg.value(metadata i64 undef, metadata !1059, metadata !DIExpression()) #9, !dbg !1128
  %120 = sub i64 18014398509481976, %95, !dbg !1129
  %121 = add i64 %120, %111, !dbg !1130
  store i64 %121, i64* %94, align 4, !dbg !1131, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %100, metadata !1060, metadata !DIExpression()) #9, !dbg !1132
  call void @llvm.dbg.value(metadata i64 undef, metadata !1062, metadata !DIExpression()) #9, !dbg !1132
  %122 = sub i64 18014398509481976, %100, !dbg !1133
  %123 = add i64 %122, %113, !dbg !1134
  store i64 %123, i64* %99, align 4, !dbg !1135, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %105, metadata !1063, metadata !DIExpression()) #9, !dbg !1136
  call void @llvm.dbg.value(metadata i64 undef, metadata !1065, metadata !DIExpression()) #9, !dbg !1136
  %124 = sub i64 18014398509481976, %105, !dbg !1137
  %125 = add i64 %124, %115, !dbg !1138
  store i64 %125, i64* %104, align 4, !dbg !1139, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %35, metadata !554, metadata !DIExpression()) #9, !dbg !1140
  call void @llvm.dbg.value(metadata i64* %1, metadata !559, metadata !DIExpression()) #9, !dbg !1140
  call void @llvm.dbg.value(metadata i64* %30, metadata !560, metadata !DIExpression()) #9, !dbg !1140
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %35, i64* noundef nonnull %1, i64* noundef nonnull %30) #9, !dbg !1142
  call void @llvm.dbg.value(metadata i64* %36, metadata !554, metadata !DIExpression()) #9, !dbg !1143
  call void @llvm.dbg.value(metadata i64* %0, metadata !559, metadata !DIExpression()) #9, !dbg !1143
  call void @llvm.dbg.value(metadata i64* %31, metadata !560, metadata !DIExpression()) #9, !dbg !1143
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %36, i64* noundef nonnull %0, i64* noundef nonnull %31) #9, !dbg !1145
  call void @llvm.dbg.value(metadata i64* %34, metadata !975, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %174, metadata !977, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %35, metadata !978, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %36, metadata !979, metadata !DIExpression()) #9, !dbg !985
  %126 = bitcast i64* %35 to i8*, !dbg !1146
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %80, i8* noundef nonnull align 8 dereferenceable(40) %126, i32 40, i1 false) #9, !dbg !1146
  call void @llvm.dbg.value(metadata i64* %35, metadata !994, metadata !DIExpression()) #9, !dbg !1147
  call void @llvm.dbg.value(metadata i64* %36, metadata !997, metadata !DIExpression()) #9, !dbg !1147
  %127 = load i64, i64* %35, align 8, !dbg !1149, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %127, metadata !998, metadata !DIExpression()) #9, !dbg !1150
  %128 = load i64, i64* %36, align 8, !dbg !1151, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %128, metadata !1000, metadata !DIExpression()) #9, !dbg !1150
  %129 = add i64 %128, %127, !dbg !1152
  store i64 %129, i64* %35, align 8, !dbg !1153, !tbaa !121
  %130 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 26, !dbg !1154
  %131 = load i64, i64* %130, align 8, !dbg !1154, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %131, metadata !1001, metadata !DIExpression()) #9, !dbg !1155
  %132 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 31, !dbg !1156
  %133 = load i64, i64* %132, align 8, !dbg !1156, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %133, metadata !1003, metadata !DIExpression()) #9, !dbg !1155
  %134 = add i64 %133, %131, !dbg !1157
  store i64 %134, i64* %130, align 8, !dbg !1158, !tbaa !121
  %135 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 27, !dbg !1159
  %136 = load i64, i64* %135, align 8, !dbg !1159, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %136, metadata !1004, metadata !DIExpression()) #9, !dbg !1160
  %137 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 32, !dbg !1161
  %138 = load i64, i64* %137, align 8, !dbg !1161, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %138, metadata !1006, metadata !DIExpression()) #9, !dbg !1160
  %139 = add i64 %138, %136, !dbg !1162
  store i64 %139, i64* %135, align 8, !dbg !1163, !tbaa !121
  %140 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 28, !dbg !1164
  %141 = load i64, i64* %140, align 8, !dbg !1164, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %141, metadata !1007, metadata !DIExpression()) #9, !dbg !1165
  %142 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 33, !dbg !1166
  %143 = load i64, i64* %142, align 8, !dbg !1166, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %143, metadata !1009, metadata !DIExpression()) #9, !dbg !1165
  %144 = add i64 %143, %141, !dbg !1167
  store i64 %144, i64* %140, align 8, !dbg !1168, !tbaa !121
  %145 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 29, !dbg !1169
  %146 = load i64, i64* %145, align 8, !dbg !1169, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %146, metadata !1010, metadata !DIExpression()) #9, !dbg !1170
  %147 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 34, !dbg !1171
  %148 = load i64, i64* %147, align 8, !dbg !1171, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %148, metadata !1012, metadata !DIExpression()) #9, !dbg !1170
  %149 = add i64 %148, %146, !dbg !1172
  store i64 %149, i64* %145, align 8, !dbg !1173, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %36, metadata !1040, metadata !DIExpression()) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64* %34, metadata !1043, metadata !DIExpression()) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1174
  %150 = load i64, i64* %34, align 8, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %150, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1174
  %151 = load i64, i64* %108, align 8, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %151, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1174
  %152 = load i64, i64* %110, align 8, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %152, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1174
  %153 = load i64, i64* %112, align 8, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %153, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1174
  %154 = load i64, i64* %114, align 8, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %154, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %150, metadata !1046, metadata !DIExpression()) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %151, metadata !1047, metadata !DIExpression()) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %152, metadata !1048, metadata !DIExpression()) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %153, metadata !1049, metadata !DIExpression()) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %154, metadata !1050, metadata !DIExpression()) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 undef, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %128, metadata !1051, metadata !DIExpression()) #9, !dbg !1177
  call void @llvm.dbg.value(metadata i64 undef, metadata !1053, metadata !DIExpression()) #9, !dbg !1177
  %155 = sub i64 18014398509481832, %128, !dbg !1178
  %156 = add i64 %155, %150, !dbg !1179
  store i64 %156, i64* %36, align 8, !dbg !1180, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %133, metadata !1054, metadata !DIExpression()) #9, !dbg !1181
  call void @llvm.dbg.value(metadata i64 undef, metadata !1056, metadata !DIExpression()) #9, !dbg !1181
  %157 = sub i64 18014398509481976, %133, !dbg !1182
  %158 = add i64 %157, %151, !dbg !1183
  store i64 %158, i64* %132, align 8, !dbg !1184, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %138, metadata !1057, metadata !DIExpression()) #9, !dbg !1185
  call void @llvm.dbg.value(metadata i64 undef, metadata !1059, metadata !DIExpression()) #9, !dbg !1185
  %159 = sub i64 18014398509481976, %138, !dbg !1186
  %160 = add i64 %159, %152, !dbg !1187
  store i64 %160, i64* %137, align 8, !dbg !1188, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %143, metadata !1060, metadata !DIExpression()) #9, !dbg !1189
  call void @llvm.dbg.value(metadata i64 undef, metadata !1062, metadata !DIExpression()) #9, !dbg !1189
  %161 = sub i64 18014398509481976, %143, !dbg !1190
  %162 = add i64 %161, %153, !dbg !1191
  store i64 %162, i64* %142, align 8, !dbg !1192, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %148, metadata !1063, metadata !DIExpression()) #9, !dbg !1193
  call void @llvm.dbg.value(metadata i64 undef, metadata !1065, metadata !DIExpression()) #9, !dbg !1193
  %163 = sub i64 18014398509481976, %148, !dbg !1194
  %164 = add i64 %163, %154, !dbg !1195
  store i64 %164, i64* %147, align 8, !dbg !1196, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %3, metadata !241, metadata !DIExpression()) #9, !dbg !1197
  call void @llvm.dbg.value(metadata i64* %35, metadata !242, metadata !DIExpression()) #9, !dbg !1197
  call void @llvm.dbg.value(metadata i32 1, metadata !236, metadata !DIExpression()) #9, !dbg !1197
  %165 = bitcast [5 x %struct.FStar_UInt128_uint128]* %24 to i8*, !dbg !1199
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %165) #9, !dbg !1199
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %24, metadata !243, metadata !DIExpression()) #9, !dbg !1200
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !1201
  %166 = bitcast %struct.FStar_UInt128_uint128* %25 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !1201
  br label %167, !dbg !1202

167:                                              ; preds = %167, %6
  %168 = phi i32 [ 0, %6 ], [ %171, %167 ]
  call void @llvm.dbg.value(metadata i32 %168, metadata !254, metadata !DIExpression()) #9, !dbg !1201
  %169 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %24, i32 0, i32 %168, !dbg !1203
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %166) #9, !dbg !1204
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef 0) #9, !dbg !1204
  %170 = bitcast %struct.FStar_UInt128_uint128* %169 to i8*, !dbg !1204
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %170, i8* noundef nonnull align 4 dereferenceable(16) %166, i32 16, i1 false) #9, !dbg !1204, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %166) #9, !dbg !1204
  %171 = add nuw nsw i32 %168, 1, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %171, metadata !254, metadata !DIExpression()) #9, !dbg !1201
  %172 = icmp eq i32 %171, 5, !dbg !1206
  br i1 %172, label %173, label %167, !dbg !1202, !llvm.loop !1207

173:                                              ; preds = %167
  %174 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 20, !dbg !1209
  %175 = bitcast i64* %3 to i8*, !dbg !1210
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %175, i8* noundef nonnull align 8 dereferenceable(40) %126, i32 40, i1 false) #9, !dbg !1210
  %176 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %24, i32 0, i32 0, !dbg !1211
  call void @llvm.dbg.value(metadata i64* %3, metadata !275, metadata !DIExpression()) #9, !dbg !1212
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %176, metadata !281, metadata !DIExpression()) #9, !dbg !1212
  call void @llvm.dbg.value(metadata i32 1, metadata !282, metadata !DIExpression()) #9, !dbg !1212
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %176, i64* noundef %3) #9, !dbg !1214
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %165) #9, !dbg !1215
  call void @llvm.dbg.value(metadata i64* %36, metadata !242, metadata !DIExpression()) #9, !dbg !1216
  call void @llvm.dbg.value(metadata i32 1, metadata !236, metadata !DIExpression()) #9, !dbg !1216
  %177 = bitcast [5 x %struct.FStar_UInt128_uint128]* %22 to i8*, !dbg !1218
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %177) #9, !dbg !1218
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %22, metadata !243, metadata !DIExpression()) #9, !dbg !1219
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !1220
  %178 = bitcast %struct.FStar_UInt128_uint128* %23 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !1220
  br label %179, !dbg !1221

179:                                              ; preds = %179, %173
  %180 = phi i32 [ 0, %173 ], [ %183, %179 ]
  call void @llvm.dbg.value(metadata i32 %180, metadata !254, metadata !DIExpression()) #9, !dbg !1220
  %181 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %22, i32 0, i32 %180, !dbg !1222
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %178) #9, !dbg !1223
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 noundef 0) #9, !dbg !1223
  %182 = bitcast %struct.FStar_UInt128_uint128* %181 to i8*, !dbg !1223
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %182, i8* noundef nonnull align 4 dereferenceable(16) %178, i32 16, i1 false) #9, !dbg !1223, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %178) #9, !dbg !1223
  %183 = add nuw nsw i32 %180, 1, !dbg !1224
  call void @llvm.dbg.value(metadata i32 %183, metadata !254, metadata !DIExpression()) #9, !dbg !1220
  %184 = icmp eq i32 %183, 5, !dbg !1225
  br i1 %184, label %185, label %179, !dbg !1221, !llvm.loop !1226

185:                                              ; preds = %179
  %186 = getelementptr inbounds i64, i64* %3, i32 5, !dbg !1228
  %187 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 35, !dbg !1229
  %188 = bitcast i64* %187 to i8*, !dbg !1230
  %189 = bitcast i64* %36 to i8*, !dbg !1230
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %188, i8* noundef nonnull align 8 dereferenceable(40) %189, i32 40, i1 false) #9, !dbg !1230
  %190 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %22, i32 0, i32 0, !dbg !1231
  call void @llvm.dbg.value(metadata i64* %187, metadata !275, metadata !DIExpression()) #9, !dbg !1232
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %190, metadata !281, metadata !DIExpression()) #9, !dbg !1232
  call void @llvm.dbg.value(metadata i32 1, metadata !282, metadata !DIExpression()) #9, !dbg !1232
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %190, i64* noundef nonnull %187) #9, !dbg !1234
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %177) #9, !dbg !1235
  call void @llvm.dbg.value(metadata i64* %186, metadata !554, metadata !DIExpression()) #9, !dbg !1236
  call void @llvm.dbg.value(metadata i64* %187, metadata !559, metadata !DIExpression()) #9, !dbg !1236
  call void @llvm.dbg.value(metadata i64* %4, metadata !560, metadata !DIExpression()) #9, !dbg !1236
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %186, i64* noundef nonnull %187, i64* noundef %4) #9, !dbg !1238
  call void @llvm.dbg.value(metadata i64* %200, metadata !241, metadata !DIExpression()) #9, !dbg !1239
  call void @llvm.dbg.value(metadata i64* %0, metadata !242, metadata !DIExpression()) #9, !dbg !1239
  call void @llvm.dbg.value(metadata i32 1, metadata !236, metadata !DIExpression()) #9, !dbg !1239
  %191 = bitcast [5 x %struct.FStar_UInt128_uint128]* %20 to i8*, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %191) #9, !dbg !1241
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %20, metadata !243, metadata !DIExpression()) #9, !dbg !1242
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !1243
  %192 = bitcast %struct.FStar_UInt128_uint128* %21 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !1243
  br label %193, !dbg !1244

193:                                              ; preds = %193, %185
  %194 = phi i32 [ 0, %185 ], [ %197, %193 ]
  call void @llvm.dbg.value(metadata i32 %194, metadata !254, metadata !DIExpression()) #9, !dbg !1243
  %195 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %20, i32 0, i32 %194, !dbg !1245
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %192) #9, !dbg !1246
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef 0) #9, !dbg !1246
  %196 = bitcast %struct.FStar_UInt128_uint128* %195 to i8*, !dbg !1246
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %196, i8* noundef nonnull align 4 dereferenceable(16) %192, i32 16, i1 false) #9, !dbg !1246, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %192) #9, !dbg !1246
  %197 = add nuw nsw i32 %194, 1, !dbg !1247
  call void @llvm.dbg.value(metadata i32 %197, metadata !254, metadata !DIExpression()) #9, !dbg !1243
  %198 = icmp eq i32 %197, 5, !dbg !1248
  br i1 %198, label %199, label %193, !dbg !1244, !llvm.loop !1249

199:                                              ; preds = %193
  %200 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 15, !dbg !1251
  %201 = bitcast i64* %200 to i8*, !dbg !1252
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %201, i8* noundef nonnull align 4 dereferenceable(40) %37, i32 40, i1 false) #9, !dbg !1252
  %202 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %20, i32 0, i32 0, !dbg !1253
  call void @llvm.dbg.value(metadata i64* %200, metadata !275, metadata !DIExpression()) #9, !dbg !1254
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %202, metadata !281, metadata !DIExpression()) #9, !dbg !1254
  call void @llvm.dbg.value(metadata i32 1, metadata !282, metadata !DIExpression()) #9, !dbg !1254
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %202, i64* noundef nonnull %200) #9, !dbg !1256
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %191) #9, !dbg !1257
  call void @llvm.dbg.value(metadata i64* %174, metadata !241, metadata !DIExpression()) #9, !dbg !1258
  call void @llvm.dbg.value(metadata i64* %30, metadata !242, metadata !DIExpression()) #9, !dbg !1258
  call void @llvm.dbg.value(metadata i32 1, metadata !236, metadata !DIExpression()) #9, !dbg !1258
  %203 = bitcast [5 x %struct.FStar_UInt128_uint128]* %18 to i8*, !dbg !1260
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %203) #9, !dbg !1260
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %18, metadata !243, metadata !DIExpression()) #9, !dbg !1261
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !1262
  %204 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !254, metadata !DIExpression()) #9, !dbg !1262
  br label %205, !dbg !1263

205:                                              ; preds = %205, %199
  %206 = phi i32 [ 0, %199 ], [ %209, %205 ]
  call void @llvm.dbg.value(metadata i32 %206, metadata !254, metadata !DIExpression()) #9, !dbg !1262
  %207 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %18, i32 0, i32 %206, !dbg !1264
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %204) #9, !dbg !1265
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef 0) #9, !dbg !1265
  %208 = bitcast %struct.FStar_UInt128_uint128* %207 to i8*, !dbg !1265
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %208, i8* noundef nonnull align 4 dereferenceable(16) %204, i32 16, i1 false) #9, !dbg !1265, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %204) #9, !dbg !1265
  %209 = add nuw nsw i32 %206, 1, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %209, metadata !254, metadata !DIExpression()) #9, !dbg !1262
  %210 = icmp eq i32 %209, 5, !dbg !1267
  br i1 %210, label %211, label %205, !dbg !1263, !llvm.loop !1268

211:                                              ; preds = %205
  %212 = bitcast i64* %174 to i8*, !dbg !1270
  %213 = bitcast i64* %30 to i8*, !dbg !1270
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %212, i8* noundef nonnull align 4 dereferenceable(40) %213, i32 40, i1 false) #9, !dbg !1270
  %214 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %18, i32 0, i32 0, !dbg !1271
  call void @llvm.dbg.value(metadata i64* %174, metadata !275, metadata !DIExpression()) #9, !dbg !1272
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %214, metadata !281, metadata !DIExpression()) #9, !dbg !1272
  call void @llvm.dbg.value(metadata i32 1, metadata !282, metadata !DIExpression()) #9, !dbg !1272
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef nonnull %214, i64* noundef nonnull %174) #9, !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %203) #9, !dbg !1275
  call void @llvm.dbg.value(metadata i64* %200, metadata !982, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %174, metadata !983, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64* %2, metadata !554, metadata !DIExpression()) #9, !dbg !1276
  call void @llvm.dbg.value(metadata i64* %200, metadata !559, metadata !DIExpression()) #9, !dbg !1276
  call void @llvm.dbg.value(metadata i64* %174, metadata !560, metadata !DIExpression()) #9, !dbg !1276
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef %2, i64* noundef nonnull %200, i64* noundef nonnull %174) #9, !dbg !1278
  call void @llvm.dbg.value(metadata i64* %174, metadata !1040, metadata !DIExpression()) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64* %200, metadata !1043, metadata !DIExpression()) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1279
  %215 = load i64, i64* %200, align 8, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %215, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1279
  %216 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 16, !dbg !1281
  %217 = load i64, i64* %216, align 8, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %217, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1279
  %218 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 17, !dbg !1281
  %219 = load i64, i64* %218, align 8, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %219, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1279
  %220 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 18, !dbg !1281
  %221 = load i64, i64* %220, align 8, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %221, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1279
  %222 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 19, !dbg !1281
  %223 = load i64, i64* %222, align 8, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %223, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %215, metadata !1046, metadata !DIExpression()) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %217, metadata !1047, metadata !DIExpression()) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %219, metadata !1048, metadata !DIExpression()) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %221, metadata !1049, metadata !DIExpression()) #9, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %223, metadata !1050, metadata !DIExpression()) #9, !dbg !1279
  %224 = add i64 %215, 18014398509481832, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %224, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1279
  %225 = add i64 %217, 18014398509481976, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %225, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1279
  %226 = add i64 %219, 18014398509481976, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %226, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #9, !dbg !1279
  %227 = add i64 %221, 18014398509481976, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %227, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #9, !dbg !1279
  %228 = add i64 %223, 18014398509481976, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %228, metadata !1044, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #9, !dbg !1279
  %229 = load i64, i64* %174, align 8, !dbg !1287, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %229, metadata !1051, metadata !DIExpression()) #9, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %224, metadata !1053, metadata !DIExpression()) #9, !dbg !1288
  %230 = sub i64 %224, %229, !dbg !1289
  store i64 %230, i64* %174, align 8, !dbg !1290, !tbaa !121
  %231 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 21, !dbg !1291
  %232 = load i64, i64* %231, align 8, !dbg !1291, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %232, metadata !1054, metadata !DIExpression()) #9, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %225, metadata !1056, metadata !DIExpression()) #9, !dbg !1292
  %233 = sub i64 %225, %232, !dbg !1293
  store i64 %233, i64* %231, align 8, !dbg !1294, !tbaa !121
  %234 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 22, !dbg !1295
  %235 = load i64, i64* %234, align 8, !dbg !1295, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %235, metadata !1057, metadata !DIExpression()) #9, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %226, metadata !1059, metadata !DIExpression()) #9, !dbg !1296
  %236 = sub i64 %226, %235, !dbg !1297
  store i64 %236, i64* %234, align 8, !dbg !1298, !tbaa !121
  %237 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 23, !dbg !1299
  %238 = load i64, i64* %237, align 8, !dbg !1299, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %238, metadata !1060, metadata !DIExpression()) #9, !dbg !1300
  call void @llvm.dbg.value(metadata i64 %227, metadata !1062, metadata !DIExpression()) #9, !dbg !1300
  %239 = sub i64 %227, %238, !dbg !1301
  store i64 %239, i64* %237, align 8, !dbg !1302, !tbaa !121
  %240 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 24, !dbg !1303
  %241 = load i64, i64* %240, align 8, !dbg !1303, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %241, metadata !1063, metadata !DIExpression()) #9, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %228, metadata !1065, metadata !DIExpression()) #9, !dbg !1304
  %242 = sub i64 %228, %241, !dbg !1305
  store i64 %242, i64* %240, align 8, !dbg !1306, !tbaa !121
  call void @llvm.dbg.value(metadata i64 121665, metadata !984, metadata !DIExpression()) #9, !dbg !985
  %243 = bitcast %struct.FStar_UInt128_uint128* %14 to i8*, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %243) #9, !dbg !1307
  %244 = bitcast %struct.FStar_UInt128_uint128* %16 to i8*, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %244) #9, !dbg !1307
  %245 = bitcast %struct.FStar_UInt128_uint128* %17 to i8*, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %245) #9, !dbg !1307
  call void @llvm.dbg.value(metadata i64* %174, metadata !1311, metadata !DIExpression()) #9, !dbg !1307
  call void @llvm.dbg.value(metadata i64 121665, metadata !1312, metadata !DIExpression()) #9, !dbg !1307
  %246 = bitcast [5 x %struct.FStar_UInt128_uint128]* %7 to i8*, !dbg !1331
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %246) #9, !dbg !1331
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %7, metadata !1313, metadata !DIExpression()) #9, !dbg !1332
  call void @llvm.dbg.value(metadata i32 0, metadata !1314, metadata !DIExpression()) #9, !dbg !1333
  %247 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !1314, metadata !DIExpression()) #9, !dbg !1333
  br label %248, !dbg !1334

248:                                              ; preds = %248, %211
  %249 = phi i32 [ 0, %211 ], [ %252, %248 ]
  call void @llvm.dbg.value(metadata i32 %249, metadata !1314, metadata !DIExpression()) #9, !dbg !1333
  %250 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 %249, !dbg !1335
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %247) #9, !dbg !1337
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 0) #9, !dbg !1337
  %251 = bitcast %struct.FStar_UInt128_uint128* %250 to i8*, !dbg !1337
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %251, i8* noundef nonnull align 4 dereferenceable(16) %247, i32 16, i1 false) #9, !dbg !1337, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %247) #9, !dbg !1337
  %252 = add nuw nsw i32 %249, 1, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %252, metadata !1314, metadata !DIExpression()) #9, !dbg !1333
  %253 = icmp eq i32 %252, 5, !dbg !1339
  br i1 %253, label %254, label %248, !dbg !1334, !llvm.loop !1340

254:                                              ; preds = %248
  %255 = getelementptr inbounds i64, i64* %2, i32 5, !dbg !1342
  call void @llvm.dbg.value(metadata i64* %255, metadata !963, metadata !DIExpression()) #9, !dbg !985
  call void @llvm.dbg.value(metadata i64 %230, metadata !1316, metadata !DIExpression()) #9, !dbg !1343
  %256 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 0, !dbg !1344
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %256, i64 noundef %230, i64 noundef 121665) #9, !dbg !1345
  %257 = load i64, i64* %231, align 8, !dbg !1346, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %257, metadata !1318, metadata !DIExpression()) #9, !dbg !1347
  %258 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 1, !dbg !1348
  %259 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %259) #9, !dbg !1349
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %257, i64 noundef 121665) #9, !dbg !1349
  %260 = bitcast %struct.FStar_UInt128_uint128* %258 to i8*, !dbg !1349
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %260, i8* noundef nonnull align 4 dereferenceable(16) %259, i32 16, i1 false) #9, !dbg !1349, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %259) #9, !dbg !1349
  %261 = load i64, i64* %234, align 8, !dbg !1350, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %261, metadata !1320, metadata !DIExpression()) #9, !dbg !1351
  %262 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 2, !dbg !1352
  %263 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !1353
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %263) #9, !dbg !1353
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %261, i64 noundef 121665) #9, !dbg !1353
  %264 = bitcast %struct.FStar_UInt128_uint128* %262 to i8*, !dbg !1353
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %264, i8* noundef nonnull align 4 dereferenceable(16) %263, i32 16, i1 false) #9, !dbg !1353, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %263) #9, !dbg !1353
  %265 = load i64, i64* %237, align 8, !dbg !1354, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %265, metadata !1322, metadata !DIExpression()) #9, !dbg !1355
  %266 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 3, !dbg !1356
  %267 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !1357
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %267) #9, !dbg !1357
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %265, i64 noundef 121665) #9, !dbg !1357
  %268 = bitcast %struct.FStar_UInt128_uint128* %266 to i8*, !dbg !1357
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %268, i8* noundef nonnull align 4 dereferenceable(16) %267, i32 16, i1 false) #9, !dbg !1357, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %267) #9, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %242, metadata !1324, metadata !DIExpression()) #9, !dbg !1358
  %269 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 4, !dbg !1359
  %270 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !1360
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %270) #9, !dbg !1360
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %242, i64 noundef 121665) #9, !dbg !1360
  %271 = bitcast %struct.FStar_UInt128_uint128* %269 to i8*, !dbg !1360
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %271, i8* noundef nonnull align 4 dereferenceable(16) %270, i32 16, i1 false) #9, !dbg !1360, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %270) #9, !dbg !1360
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* noundef nonnull %256) #9, !dbg !1361
  %272 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 4, i32 0, !dbg !1362
  %273 = load i64, i64* %272, align 8, !dbg !1362, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %273, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1307
  %274 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 4, i32 1, !dbg !1362
  %275 = load i64, i64* %274, align 8, !dbg !1362, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %275, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1307
  %276 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 0, i32 0, !dbg !1364
  %277 = load i64, i64* %276, align 8, !dbg !1364, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %277, metadata !1327, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1307
  %278 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 0, i32 1, !dbg !1364
  %279 = load i64, i64* %278, align 8, !dbg !1364, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %279, metadata !1327, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1307
  %280 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !1365
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %280) #9, !dbg !1365
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %13, metadata !1328, metadata !DIExpression()) #9, !dbg !1366
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef 2251799813685247) #9, !dbg !1367
  %281 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !1368
  %282 = load i64, i64* %281, align 8, !dbg !1368, !tbaa !1369
  %283 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !1368
  %284 = load i64, i64* %283, align 8, !dbg !1368, !tbaa !1371
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %273, i64 %275, i64 %282, i64 %284) #9, !dbg !1368
  %285 = bitcast %struct.FStar_UInt128_uint128* %15 to i8*, !dbg !1372
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %285) #9, !dbg !1372
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %15, metadata !1329, metadata !DIExpression()) #9, !dbg !1373
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %273, i64 %275, i32 noundef 51) #9, !dbg !1374
  %286 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !1375
  %287 = load i64, i64* %286, align 8, !dbg !1375, !tbaa !1369
  %288 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !1375
  %289 = load i64, i64* %288, align 8, !dbg !1375, !tbaa !1371
  %290 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %287, i64 %289) #9, !dbg !1375
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef 19, i64 noundef %290) #9, !dbg !1376
  %291 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !1377
  %292 = load i64, i64* %291, align 8, !dbg !1377, !tbaa !1369
  %293 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !1377
  %294 = load i64, i64* %293, align 8, !dbg !1377, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %277, i64 %279, i64 %292, i64 %294) #9, !dbg !1377
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %271, i8* noundef nonnull align 4 dereferenceable(16) %280, i32 16, i1 false) #9, !dbg !1378, !tbaa.struct !265
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %246, i8* noundef nonnull align 4 dereferenceable(16) %285, i32 16, i1 false) #9, !dbg !1379, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64* %82, metadata !1380, metadata !DIExpression()) #9, !dbg !1396
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %256, metadata !1385, metadata !DIExpression()) #9, !dbg !1396
  %295 = load i64, i64* %276, align 8, !dbg !1398, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %295, metadata !1386, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1399
  %296 = load i64, i64* %278, align 8, !dbg !1398, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %296, metadata !1386, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1399
  %297 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %295, i64 %296) #9, !dbg !1400
  store i64 %297, i64* %82, align 8, !dbg !1401, !tbaa !121
  %298 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 1, i32 0, !dbg !1402
  %299 = load i64, i64* %298, align 8, !dbg !1402, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %299, metadata !1388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1403
  %300 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 1, i32 1, !dbg !1402
  %301 = load i64, i64* %300, align 8, !dbg !1402, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %301, metadata !1388, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1403
  %302 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %299, i64 %301) #9, !dbg !1404
  %303 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 11, !dbg !1405
  store i64 %302, i64* %303, align 8, !dbg !1406, !tbaa !121
  %304 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 2, i32 0, !dbg !1407
  %305 = load i64, i64* %304, align 8, !dbg !1407, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %305, metadata !1390, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1408
  %306 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 2, i32 1, !dbg !1407
  %307 = load i64, i64* %306, align 8, !dbg !1407, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %307, metadata !1390, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1408
  %308 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %305, i64 %307) #9, !dbg !1409
  %309 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 12, !dbg !1410
  store i64 %308, i64* %309, align 8, !dbg !1411, !tbaa !121
  %310 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 3, i32 0, !dbg !1412
  %311 = load i64, i64* %310, align 8, !dbg !1412, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %311, metadata !1392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1413
  %312 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %7, i32 0, i32 3, i32 1, !dbg !1412
  %313 = load i64, i64* %312, align 8, !dbg !1412, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %313, metadata !1392, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1413
  %314 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %311, i64 %313) #9, !dbg !1414
  %315 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 13, !dbg !1415
  store i64 %314, i64* %315, align 8, !dbg !1416, !tbaa !121
  %316 = load i64, i64* %272, align 8, !dbg !1417, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %316, metadata !1394, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1418
  %317 = load i64, i64* %274, align 8, !dbg !1417, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %317, metadata !1394, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1418
  %318 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %316, i64 %317) #9, !dbg !1419
  %319 = getelementptr inbounds [40 x i64], [40 x i64]* %26, i32 0, i32 14, !dbg !1420
  store i64 %318, i64* %319, align 8, !dbg !1421, !tbaa !121
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %285) #9, !dbg !1422
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %280) #9, !dbg !1422
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %246) #9, !dbg !1422
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %243) #9, !dbg !1422
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %244) #9, !dbg !1422
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %245) #9, !dbg !1422
  call void @llvm.dbg.value(metadata i64* %82, metadata !994, metadata !DIExpression()) #9, !dbg !1423
  call void @llvm.dbg.value(metadata i64* %200, metadata !997, metadata !DIExpression()) #9, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %297, metadata !998, metadata !DIExpression()) #9, !dbg !1425
  call void @llvm.dbg.value(metadata i64 %215, metadata !1000, metadata !DIExpression()) #9, !dbg !1425
  %320 = add i64 %297, %215, !dbg !1426
  store i64 %320, i64* %82, align 8, !dbg !1427, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %302, metadata !1001, metadata !DIExpression()) #9, !dbg !1428
  %321 = load i64, i64* %216, align 8, !dbg !1429, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %321, metadata !1003, metadata !DIExpression()) #9, !dbg !1428
  %322 = add i64 %321, %302, !dbg !1430
  store i64 %322, i64* %303, align 8, !dbg !1431, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %308, metadata !1004, metadata !DIExpression()) #9, !dbg !1432
  %323 = load i64, i64* %218, align 8, !dbg !1433, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %323, metadata !1006, metadata !DIExpression()) #9, !dbg !1432
  %324 = add i64 %323, %308, !dbg !1434
  store i64 %324, i64* %309, align 8, !dbg !1435, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %314, metadata !1007, metadata !DIExpression()) #9, !dbg !1436
  %325 = load i64, i64* %220, align 8, !dbg !1437, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %325, metadata !1009, metadata !DIExpression()) #9, !dbg !1436
  %326 = add i64 %325, %314, !dbg !1438
  store i64 %326, i64* %315, align 8, !dbg !1439, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %318, metadata !1010, metadata !DIExpression()) #9, !dbg !1440
  %327 = load i64, i64* %222, align 8, !dbg !1441, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %327, metadata !1012, metadata !DIExpression()) #9, !dbg !1440
  %328 = add i64 %327, %318, !dbg !1442
  store i64 %328, i64* %319, align 8, !dbg !1443, !tbaa !121
  call void @llvm.dbg.value(metadata i64* %2, metadata !554, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)) #9, !dbg !1444
  call void @llvm.dbg.value(metadata i64* %82, metadata !559, metadata !DIExpression()) #9, !dbg !1444
  call void @llvm.dbg.value(metadata i64* %174, metadata !560, metadata !DIExpression()) #9, !dbg !1444
  call fastcc void @Hacl_Bignum_Fmul_fmul(i64* noundef nonnull %255, i64* noundef nonnull %82, i64* noundef nonnull %174) #9, !dbg !1446
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %32) #9, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %28, metadata !934, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64* %2, metadata !937, metadata !DIExpression()) #9, !dbg !1448
  call void @llvm.dbg.value(metadata i64* %3, metadata !942, metadata !DIExpression()) #9, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %28, metadata !943, metadata !DIExpression()) #9, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %29, metadata !944, metadata !DIExpression()) #9, !dbg !1448
  call fastcc void @Hacl_EC_Point_swap_conditional_(i64* noundef %2, i64* noundef %3, i64 noundef %29, i32 noundef 5) #9, !dbg !1450
  call fastcc void @Hacl_EC_Point_swap_conditional_(i64* noundef nonnull %255, i64* noundef nonnull %186, i64 noundef %29, i32 noundef 5) #9, !dbg !1451
  ret void, !dbg !1452
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @Hacl_EC_Point_swap_conditional_(i64* nocapture noundef %0, i64* nocapture noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #5 !dbg !1453 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1457, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64* %1, metadata !1458, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %2, metadata !1459, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 %3, metadata !1460, metadata !DIExpression()), !dbg !1464
  %5 = icmp eq i32 %3, 0, !dbg !1465
  br i1 %5, label %16, label %6, !dbg !1466

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64* %0, metadata !1467, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64* %1, metadata !1470, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %2, metadata !1471, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 %3, metadata !1472, metadata !DIExpression()), !dbg !1479
  %7 = add i32 %3, -1, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %7, metadata !1473, metadata !DIExpression()), !dbg !1479
  %8 = getelementptr inbounds i64, i64* %0, i32 %7, !dbg !1482
  %9 = load i64, i64* %8, align 4, !dbg !1482, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %9, metadata !1474, metadata !DIExpression()), !dbg !1479
  %10 = getelementptr inbounds i64, i64* %1, i32 %7, !dbg !1483
  %11 = load i64, i64* %10, align 4, !dbg !1483, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %11, metadata !1475, metadata !DIExpression()), !dbg !1479
  %12 = xor i64 %11, %9, !dbg !1484
  %13 = and i64 %12, %2, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %13, metadata !1476, metadata !DIExpression()), !dbg !1479
  %14 = xor i64 %13, %9, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %14, metadata !1477, metadata !DIExpression()), !dbg !1479
  %15 = xor i64 %13, %11, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %15, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i64 %14, i64* %8, align 4, !dbg !1488, !tbaa !121
  store i64 %15, i64* %10, align 4, !dbg !1489, !tbaa !121
  call void @llvm.dbg.value(metadata i32 %7, metadata !1461, metadata !DIExpression()), !dbg !1490
  call fastcc void @Hacl_EC_Point_swap_conditional_(i64* noundef %0, i64* noundef %1, i64 noundef %2, i32 noundef %7), !dbg !1491
  br label %16, !dbg !1492

16:                                               ; preds = %6, %4
  ret void, !dbg !1493
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul(i64* nocapture noundef %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #6 !dbg !1494 {
  %4 = alloca [5 x i64], align 8
  %5 = alloca [5 x %struct.FStar_UInt128_uint128], align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !1496, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64* %1, metadata !1497, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64* %2, metadata !1498, metadata !DIExpression()), !dbg !1511
  %12 = bitcast [5 x i64]* %4 to i8*, !dbg !1512
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #9, !dbg !1512
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !1499, metadata !DIExpression()), !dbg !1513
  %13 = bitcast i64* %1 to i8*, !dbg !1514
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 4 dereferenceable(40) %13, i32 40, i1 false), !dbg !1514
  %14 = bitcast [5 x %struct.FStar_UInt128_uint128]* %5 to i8*, !dbg !1515
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %14) #9, !dbg !1515
  call void @llvm.dbg.declare(metadata [5 x %struct.FStar_UInt128_uint128]* %5, metadata !1500, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i32 0, metadata !1501, metadata !DIExpression()), !dbg !1517
  %15 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !1501, metadata !DIExpression()), !dbg !1517
  br label %100, !dbg !1518

16:                                               ; preds = %100
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i32 0, i32 0, !dbg !1514
  %18 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, !dbg !1519
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %18, metadata !1520, metadata !DIExpression()) #9, !dbg !1537
  call void @llvm.dbg.value(metadata i64* %17, metadata !1525, metadata !DIExpression()) #9, !dbg !1537
  call void @llvm.dbg.value(metadata i64* %2, metadata !1526, metadata !DIExpression()) #9, !dbg !1537
  %19 = load i64, i64* %2, align 4, !dbg !1539, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %19, metadata !1527, metadata !DIExpression()) #9, !dbg !1540
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef nonnull %18, i64* noundef nonnull %17, i64 noundef %19) #9, !dbg !1541
  call void @llvm.dbg.value(metadata i64* %17, metadata !1542, metadata !DIExpression()) #9, !dbg !1559
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i32 0, i32 4, !dbg !1561
  %21 = load i64, i64* %20, align 8, !dbg !1561, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %21, metadata !1545, metadata !DIExpression()) #9, !dbg !1559
  call void @llvm.dbg.value(metadata i32 4, metadata !1546, metadata !DIExpression()) #9, !dbg !1562
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i32 0, i32 3, !dbg !1563
  %23 = load i64, i64* %22, align 8, !dbg !1563, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %23, metadata !1548, metadata !DIExpression()) #9, !dbg !1562
  store i64 %23, i64* %20, align 8, !dbg !1564, !tbaa !121
  call void @llvm.dbg.value(metadata i32 3, metadata !1549, metadata !DIExpression()) #9, !dbg !1565
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i32 0, i32 2, !dbg !1566
  %25 = load i64, i64* %24, align 8, !dbg !1566, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %25, metadata !1551, metadata !DIExpression()) #9, !dbg !1565
  store i64 %25, i64* %22, align 8, !dbg !1567, !tbaa !121
  call void @llvm.dbg.value(metadata i32 2, metadata !1552, metadata !DIExpression()) #9, !dbg !1568
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i32 0, i32 1, !dbg !1569
  %27 = load i64, i64* %26, align 8, !dbg !1569, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %27, metadata !1554, metadata !DIExpression()) #9, !dbg !1568
  store i64 %27, i64* %24, align 8, !dbg !1570, !tbaa !121
  call void @llvm.dbg.value(metadata i32 1, metadata !1555, metadata !DIExpression()) #9, !dbg !1571
  %28 = load i64, i64* %17, align 8, !dbg !1572, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %28, metadata !1557, metadata !DIExpression()) #9, !dbg !1571
  store i64 %28, i64* %26, align 8, !dbg !1573, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %21, metadata !1558, metadata !DIExpression()) #9, !dbg !1559
  %29 = mul i64 %21, 19, !dbg !1574
  store i64 %29, i64* %17, align 8, !dbg !1575, !tbaa !121
  %30 = getelementptr inbounds i64, i64* %2, i32 1, !dbg !1576
  %31 = load i64, i64* %30, align 4, !dbg !1576, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %31, metadata !1529, metadata !DIExpression()) #9, !dbg !1577
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef nonnull %18, i64* noundef nonnull %17, i64 noundef %31) #9, !dbg !1578
  call void @llvm.dbg.value(metadata i64* %17, metadata !1542, metadata !DIExpression()) #9, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %23, metadata !1545, metadata !DIExpression()) #9, !dbg !1579
  call void @llvm.dbg.value(metadata i32 4, metadata !1546, metadata !DIExpression()) #9, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %25, metadata !1548, metadata !DIExpression()) #9, !dbg !1581
  store i64 %25, i64* %20, align 8, !dbg !1582, !tbaa !121
  call void @llvm.dbg.value(metadata i32 3, metadata !1549, metadata !DIExpression()) #9, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %27, metadata !1551, metadata !DIExpression()) #9, !dbg !1583
  store i64 %27, i64* %22, align 8, !dbg !1584, !tbaa !121
  call void @llvm.dbg.value(metadata i32 2, metadata !1552, metadata !DIExpression()) #9, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %28, metadata !1554, metadata !DIExpression()) #9, !dbg !1585
  store i64 %28, i64* %24, align 8, !dbg !1586, !tbaa !121
  call void @llvm.dbg.value(metadata i32 1, metadata !1555, metadata !DIExpression()) #9, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %29, metadata !1557, metadata !DIExpression()) #9, !dbg !1587
  store i64 %29, i64* %26, align 8, !dbg !1588, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %23, metadata !1558, metadata !DIExpression()) #9, !dbg !1579
  %32 = mul i64 %23, 19, !dbg !1589
  store i64 %32, i64* %17, align 8, !dbg !1590, !tbaa !121
  %33 = getelementptr inbounds i64, i64* %2, i32 2, !dbg !1591
  %34 = load i64, i64* %33, align 4, !dbg !1591, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %34, metadata !1531, metadata !DIExpression()) #9, !dbg !1592
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef nonnull %18, i64* noundef nonnull %17, i64 noundef %34) #9, !dbg !1593
  call void @llvm.dbg.value(metadata i64* %17, metadata !1542, metadata !DIExpression()) #9, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %25, metadata !1545, metadata !DIExpression()) #9, !dbg !1594
  call void @llvm.dbg.value(metadata i32 4, metadata !1546, metadata !DIExpression()) #9, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %27, metadata !1548, metadata !DIExpression()) #9, !dbg !1596
  store i64 %27, i64* %20, align 8, !dbg !1597, !tbaa !121
  call void @llvm.dbg.value(metadata i32 3, metadata !1549, metadata !DIExpression()) #9, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %28, metadata !1551, metadata !DIExpression()) #9, !dbg !1598
  store i64 %28, i64* %22, align 8, !dbg !1599, !tbaa !121
  call void @llvm.dbg.value(metadata i32 2, metadata !1552, metadata !DIExpression()) #9, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %29, metadata !1554, metadata !DIExpression()) #9, !dbg !1600
  store i64 %29, i64* %24, align 8, !dbg !1601, !tbaa !121
  call void @llvm.dbg.value(metadata i32 1, metadata !1555, metadata !DIExpression()) #9, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %32, metadata !1557, metadata !DIExpression()) #9, !dbg !1602
  store i64 %32, i64* %26, align 8, !dbg !1603, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %25, metadata !1558, metadata !DIExpression()) #9, !dbg !1594
  %35 = mul i64 %25, 19, !dbg !1604
  store i64 %35, i64* %17, align 8, !dbg !1605, !tbaa !121
  %36 = getelementptr inbounds i64, i64* %2, i32 3, !dbg !1606
  %37 = load i64, i64* %36, align 4, !dbg !1606, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %37, metadata !1533, metadata !DIExpression()) #9, !dbg !1607
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef nonnull %18, i64* noundef nonnull %17, i64 noundef %37) #9, !dbg !1608
  call void @llvm.dbg.value(metadata i64* %17, metadata !1542, metadata !DIExpression()) #9, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %27, metadata !1545, metadata !DIExpression()) #9, !dbg !1609
  call void @llvm.dbg.value(metadata i32 4, metadata !1546, metadata !DIExpression()) #9, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %28, metadata !1548, metadata !DIExpression()) #9, !dbg !1611
  store i64 %28, i64* %20, align 8, !dbg !1612, !tbaa !121
  call void @llvm.dbg.value(metadata i32 3, metadata !1549, metadata !DIExpression()) #9, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %29, metadata !1551, metadata !DIExpression()) #9, !dbg !1613
  store i64 %29, i64* %22, align 8, !dbg !1614, !tbaa !121
  call void @llvm.dbg.value(metadata i32 2, metadata !1552, metadata !DIExpression()) #9, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %32, metadata !1554, metadata !DIExpression()) #9, !dbg !1615
  store i64 %32, i64* %24, align 8, !dbg !1616, !tbaa !121
  call void @llvm.dbg.value(metadata i32 1, metadata !1555, metadata !DIExpression()) #9, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %35, metadata !1557, metadata !DIExpression()) #9, !dbg !1617
  store i64 %35, i64* %26, align 8, !dbg !1618, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %27, metadata !1558, metadata !DIExpression()) #9, !dbg !1609
  %38 = mul i64 %27, 19, !dbg !1619
  store i64 %38, i64* %17, align 8, !dbg !1620, !tbaa !121
  call void @llvm.dbg.value(metadata i32 4, metadata !1535, metadata !DIExpression()) #9, !dbg !1537
  %39 = getelementptr inbounds i64, i64* %2, i32 4, !dbg !1621
  %40 = load i64, i64* %39, align 4, !dbg !1621, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %40, metadata !1536, metadata !DIExpression()) #9, !dbg !1537
  call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* noundef nonnull %18, i64* noundef nonnull %17, i64 noundef %40) #9, !dbg !1622
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* noundef nonnull %18), !dbg !1623
  %41 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, i32 0, !dbg !1624
  %42 = load i64, i64* %41, align 8, !dbg !1624, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %42, metadata !1503, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1511
  %43 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, i32 1, !dbg !1624
  %44 = load i64, i64* %43, align 8, !dbg !1624, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %44, metadata !1503, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1511
  %45 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, i32 0, !dbg !1625
  %46 = load i64, i64* %45, align 8, !dbg !1625, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %46, metadata !1504, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1511
  %47 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, i32 1, !dbg !1625
  %48 = load i64, i64* %47, align 8, !dbg !1625, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %48, metadata !1504, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1511
  %49 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !1626
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #9, !dbg !1626
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %7, metadata !1505, metadata !DIExpression()), !dbg !1627
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 2251799813685247) #9, !dbg !1628
  %50 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !1629
  %51 = load i64, i64* %50, align 8, !dbg !1629, !tbaa !1369
  %52 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !1629
  %53 = load i64, i64* %52, align 8, !dbg !1629, !tbaa !1371
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %42, i64 %44, i64 %51, i64 %53) #9, !dbg !1629
  %54 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !1630
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %54) #9, !dbg !1630
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %9, metadata !1506, metadata !DIExpression()), !dbg !1631
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %42, i64 %44, i32 noundef 51) #9, !dbg !1632
  %55 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1633
  %56 = load i64, i64* %55, align 8, !dbg !1633, !tbaa !1369
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1633
  %58 = load i64, i64* %57, align 8, !dbg !1633, !tbaa !1371
  %59 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %56, i64 %58) #9, !dbg !1633
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 19, i64 noundef %59) #9, !dbg !1634
  %60 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !1635
  %61 = load i64, i64* %60, align 8, !dbg !1635, !tbaa !1369
  %62 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !1635
  %63 = load i64, i64* %62, align 8, !dbg !1635, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %46, i64 %48, i64 %61, i64 %63) #9, !dbg !1635
  %64 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, !dbg !1636
  %65 = bitcast %struct.FStar_UInt128_uint128* %64 to i8*, !dbg !1637
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %65, i8* noundef nonnull align 4 dereferenceable(16) %49, i32 16, i1 false), !dbg !1637, !tbaa.struct !265
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %14, i8* noundef nonnull align 4 dereferenceable(16) %54, i32 16, i1 false), !dbg !1638, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64* %0, metadata !1380, metadata !DIExpression()) #9, !dbg !1639
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %18, metadata !1385, metadata !DIExpression()) #9, !dbg !1639
  %66 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, i32 0, !dbg !1641
  %67 = load i64, i64* %66, align 8, !dbg !1641, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %67, metadata !1386, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1642
  %68 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 0, i32 1, !dbg !1641
  %69 = load i64, i64* %68, align 8, !dbg !1641, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %69, metadata !1386, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1642
  %70 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %67, i64 %69) #9, !dbg !1643
  store i64 %70, i64* %0, align 4, !dbg !1644, !tbaa !121
  %71 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 1, i32 0, !dbg !1645
  %72 = load i64, i64* %71, align 8, !dbg !1645, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %72, metadata !1388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1646
  %73 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 1, i32 1, !dbg !1645
  %74 = load i64, i64* %73, align 8, !dbg !1645, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %74, metadata !1388, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1646
  %75 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %72, i64 %74) #9, !dbg !1647
  %76 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1648
  store i64 %75, i64* %76, align 4, !dbg !1649, !tbaa !121
  %77 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 2, i32 0, !dbg !1650
  %78 = load i64, i64* %77, align 8, !dbg !1650, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %78, metadata !1390, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1651
  %79 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 2, i32 1, !dbg !1650
  %80 = load i64, i64* %79, align 8, !dbg !1650, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %80, metadata !1390, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1651
  %81 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %78, i64 %80) #9, !dbg !1652
  %82 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !1653
  store i64 %81, i64* %82, align 4, !dbg !1654, !tbaa !121
  %83 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 3, i32 0, !dbg !1655
  %84 = load i64, i64* %83, align 8, !dbg !1655, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %84, metadata !1392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1656
  %85 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 3, i32 1, !dbg !1655
  %86 = load i64, i64* %85, align 8, !dbg !1655, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %86, metadata !1392, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1656
  %87 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %84, i64 %86) #9, !dbg !1657
  %88 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !1658
  store i64 %87, i64* %88, align 4, !dbg !1659, !tbaa !121
  %89 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, i32 0, !dbg !1660
  %90 = load i64, i64* %89, align 8, !dbg !1660, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %90, metadata !1394, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1661
  %91 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 4, i32 1, !dbg !1660
  %92 = load i64, i64* %91, align 8, !dbg !1660, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %92, metadata !1394, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1661
  %93 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %90, i64 %92) #9, !dbg !1662
  %94 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !1663
  store i64 %93, i64* %94, align 4, !dbg !1664, !tbaa !121
  %95 = load i64, i64* %0, align 4, !dbg !1665, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %95, metadata !1507, metadata !DIExpression()), !dbg !1511
  %96 = load i64, i64* %76, align 4, !dbg !1666, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %96, metadata !1508, metadata !DIExpression()), !dbg !1511
  %97 = and i64 %95, 2251799813685247, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %97, metadata !1509, metadata !DIExpression()), !dbg !1511
  %98 = lshr i64 %95, 51, !dbg !1668
  %99 = add i64 %96, %98, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %99, metadata !1510, metadata !DIExpression()), !dbg !1511
  store i64 %97, i64* %0, align 4, !dbg !1670, !tbaa !121
  store i64 %99, i64* %76, align 4, !dbg !1671, !tbaa !121
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %54) #9, !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %49) #9, !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #9, !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #9, !dbg !1672
  ret void, !dbg !1672

100:                                              ; preds = %3, %100
  %101 = phi i32 [ 0, %3 ], [ %104, %100 ]
  call void @llvm.dbg.value(metadata i32 %101, metadata !1501, metadata !DIExpression()), !dbg !1517
  %102 = getelementptr inbounds [5 x %struct.FStar_UInt128_uint128], [5 x %struct.FStar_UInt128_uint128]* %5, i32 0, i32 %101, !dbg !1673
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #9, !dbg !1675
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0) #9, !dbg !1675
  %103 = bitcast %struct.FStar_UInt128_uint128* %102 to i8*, !dbg !1675
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(16) %103, i8* noundef nonnull align 4 dereferenceable(16) %15, i32 16, i1 false), !dbg !1675, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #9, !dbg !1675
  %104 = add nuw nsw i32 %101, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %104, metadata !1501, metadata !DIExpression()), !dbg !1517
  %105 = icmp eq i32 %104, 5, !dbg !1677
  br i1 %105, label %16, label %100, !dbg !1518, !llvm.loop !1678
}

declare !dbg !1680 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* nocapture noundef %0) unnamed_addr #6 !dbg !1684 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 8
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !1688, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 0, metadata !1689, metadata !DIExpression()), !dbg !1714
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !1715
  %15 = load i64, i64* %14, align 4, !dbg !1715, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %15, metadata !1691, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1714
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !1715
  %17 = load i64, i64* %16, align 4, !dbg !1715, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %17, metadata !1691, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1714
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, !dbg !1716
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %18, i32 0, i32 0, !dbg !1716
  %20 = load i64, i64* %19, align 4, !dbg !1716, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %20, metadata !1692, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1714
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 1, !dbg !1716
  %22 = load i64, i64* %21, align 4, !dbg !1716, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %22, metadata !1692, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1714
  %23 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %15, i64 %17) #9, !dbg !1717
  %24 = and i64 %23, 2251799813685247, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %24, metadata !1693, metadata !DIExpression()), !dbg !1714
  %25 = bitcast %struct.FStar_UInt128_uint128* %2 to i8*, !dbg !1719
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #9, !dbg !1719
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %2, metadata !1694, metadata !DIExpression()), !dbg !1720
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %15, i64 %17, i32 noundef 51) #9, !dbg !1721
  %26 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*, !dbg !1722
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #9, !dbg !1722
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %24) #9, !dbg !1722
  %27 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !1722
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %27, i8* noundef nonnull align 4 dereferenceable(16) %26, i32 16, i1 false), !dbg !1722, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #9, !dbg !1722
  %28 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !1723
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #9, !dbg !1723
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %2, i32 0, i32 0, !dbg !1723
  %30 = load i64, i64* %29, align 8, !dbg !1723, !tbaa !1369
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %2, i32 0, i32 1, !dbg !1723
  %32 = load i64, i64* %31, align 8, !dbg !1723, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %20, i64 %22, i64 %30, i64 %32) #9, !dbg !1723
  %33 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !1723
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %33, i8* noundef nonnull align 4 dereferenceable(16) %28, i32 16, i1 false), !dbg !1723, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #9, !dbg !1723
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #9, !dbg !1724
  call void @llvm.dbg.value(metadata i32 1, metadata !1695, metadata !DIExpression()), !dbg !1725
  %34 = load i64, i64* %19, align 4, !dbg !1726, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %34, metadata !1697, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1725
  %35 = load i64, i64* %21, align 4, !dbg !1726, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %35, metadata !1697, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1725
  %36 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !1727
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %36, i32 0, i32 0, !dbg !1727
  %38 = load i64, i64* %37, align 4, !dbg !1727, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %38, metadata !1698, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1725
  %39 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 1, !dbg !1727
  %40 = load i64, i64* %39, align 4, !dbg !1727, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %40, metadata !1698, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1725
  %41 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %34, i64 %35) #9, !dbg !1728
  %42 = and i64 %41, 2251799813685247, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %42, metadata !1699, metadata !DIExpression()), !dbg !1725
  %43 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !1730
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43) #9, !dbg !1730
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !1700, metadata !DIExpression()), !dbg !1731
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %34, i64 %35, i32 noundef 51) #9, !dbg !1732
  %44 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !1733
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44) #9, !dbg !1733
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %42) #9, !dbg !1733
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %33, i8* noundef nonnull align 4 dereferenceable(16) %44, i32 16, i1 false), !dbg !1733, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #9, !dbg !1733
  %45 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !1734
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #9, !dbg !1734
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !1734
  %47 = load i64, i64* %46, align 8, !dbg !1734, !tbaa !1369
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !1734
  %49 = load i64, i64* %48, align 8, !dbg !1734, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %38, i64 %40, i64 %47, i64 %49) #9, !dbg !1734
  %50 = bitcast %struct.FStar_UInt128_uint128* %36 to i8*, !dbg !1734
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %50, i8* noundef nonnull align 4 dereferenceable(16) %45, i32 16, i1 false), !dbg !1734, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #9, !dbg !1734
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43) #9, !dbg !1735
  call void @llvm.dbg.value(metadata i32 2, metadata !1701, metadata !DIExpression()), !dbg !1736
  %51 = load i64, i64* %37, align 4, !dbg !1737, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %51, metadata !1703, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1736
  %52 = load i64, i64* %39, align 4, !dbg !1737, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %52, metadata !1703, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1736
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, !dbg !1738
  %54 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %53, i32 0, i32 0, !dbg !1738
  %55 = load i64, i64* %54, align 4, !dbg !1738, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %55, metadata !1704, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1736
  %56 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 1, !dbg !1738
  %57 = load i64, i64* %56, align 4, !dbg !1738, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %57, metadata !1704, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1736
  %58 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %51, i64 %52) #9, !dbg !1739
  %59 = and i64 %58, 2251799813685247, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %59, metadata !1705, metadata !DIExpression()), !dbg !1736
  %60 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !1741
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #9, !dbg !1741
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !1706, metadata !DIExpression()), !dbg !1742
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %51, i64 %52, i32 noundef 51) #9, !dbg !1743
  %61 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !1744
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #9, !dbg !1744
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %59) #9, !dbg !1744
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %50, i8* noundef nonnull align 4 dereferenceable(16) %61, i32 16, i1 false), !dbg !1744, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #9, !dbg !1744
  %62 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !1745
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #9, !dbg !1745
  %63 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !1745
  %64 = load i64, i64* %63, align 8, !dbg !1745, !tbaa !1369
  %65 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !1745
  %66 = load i64, i64* %65, align 8, !dbg !1745, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %55, i64 %57, i64 %64, i64 %66) #9, !dbg !1745
  %67 = bitcast %struct.FStar_UInt128_uint128* %53 to i8*, !dbg !1745
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %67, i8* noundef nonnull align 4 dereferenceable(16) %62, i32 16, i1 false), !dbg !1745, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #9, !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #9, !dbg !1746
  call void @llvm.dbg.value(metadata i32 3, metadata !1707, metadata !DIExpression()), !dbg !1747
  %68 = load i64, i64* %54, align 4, !dbg !1748, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %68, metadata !1709, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1747
  %69 = load i64, i64* %56, align 4, !dbg !1748, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %69, metadata !1709, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1747
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !1749
  %71 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %70, i32 0, i32 0, !dbg !1749
  %72 = load i64, i64* %71, align 4, !dbg !1749, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %72, metadata !1710, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1747
  %73 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 1, !dbg !1749
  %74 = load i64, i64* %73, align 4, !dbg !1749, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %74, metadata !1710, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1747
  %75 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %68, i64 %69) #9, !dbg !1750
  %76 = and i64 %75, 2251799813685247, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %76, metadata !1711, metadata !DIExpression()), !dbg !1747
  %77 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !1752
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %77) #9, !dbg !1752
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %11, metadata !1712, metadata !DIExpression()), !dbg !1753
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %68, i64 %69, i32 noundef 51) #9, !dbg !1754
  %78 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !1755
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %78) #9, !dbg !1755
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %76) #9, !dbg !1755
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %67, i8* noundef nonnull align 4 dereferenceable(16) %78, i32 16, i1 false), !dbg !1755, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %78) #9, !dbg !1755
  %79 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !1756
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %79) #9, !dbg !1756
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1756
  %81 = load i64, i64* %80, align 8, !dbg !1756, !tbaa !1369
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1756
  %83 = load i64, i64* %82, align 8, !dbg !1756, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %72, i64 %74, i64 %81, i64 %83) #9, !dbg !1756
  %84 = bitcast %struct.FStar_UInt128_uint128* %70 to i8*, !dbg !1756
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %84, i8* noundef nonnull align 4 dereferenceable(16) %79, i32 16, i1 false), !dbg !1756, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %79) #9, !dbg !1756
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %77) #9, !dbg !1757
  ret void, !dbg !1758
}

declare !dbg !1759 void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #7

declare !dbg !1762 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #7

declare !dbg !1763 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !1766 i64 @FStar_UInt128_uint128_to_uint64(i64, i64) local_unnamed_addr #7

declare !dbg !1769 void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(%struct.FStar_UInt128_uint128* nocapture noundef %0, i64* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #6 !dbg !1772 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !1776, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i64* %1, metadata !1777, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i64 %2, metadata !1778, metadata !DIExpression()), !dbg !1794
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !1795
  %15 = load i64, i64* %14, align 4, !dbg !1795, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %15, metadata !1779, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1796
  %16 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !1795
  %17 = load i64, i64* %16, align 4, !dbg !1795, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %17, metadata !1779, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1796
  %18 = load i64, i64* %1, align 4, !dbg !1797, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %18, metadata !1781, metadata !DIExpression()), !dbg !1796
  %19 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !1798
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #9, !dbg !1798
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %18, i64 noundef %2) #9, !dbg !1799
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !1798
  %21 = load i64, i64* %20, align 8, !dbg !1798, !tbaa !1369
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !1798
  %23 = load i64, i64* %22, align 8, !dbg !1798, !tbaa !1371
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %15, i64 %17, i64 %21, i64 %23) #9, !dbg !1798
  %24 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !1798
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %24, i8* noundef nonnull align 4 dereferenceable(16) %19, i32 16, i1 false), !dbg !1798, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #9, !dbg !1798
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 0, !dbg !1800
  %26 = load i64, i64* %25, align 4, !dbg !1800, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %26, metadata !1782, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1801
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 1, !dbg !1800
  %28 = load i64, i64* %27, align 4, !dbg !1800, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %28, metadata !1782, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1801
  %29 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !1802
  %30 = load i64, i64* %29, align 4, !dbg !1802, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %30, metadata !1784, metadata !DIExpression()), !dbg !1801
  %31 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, !dbg !1803
  %32 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !1804
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #9, !dbg !1804
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %30, i64 noundef %2) #9, !dbg !1805
  %33 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1804
  %34 = load i64, i64* %33, align 8, !dbg !1804, !tbaa !1369
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1804
  %36 = load i64, i64* %35, align 8, !dbg !1804, !tbaa !1371
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %26, i64 %28, i64 %34, i64 %36) #9, !dbg !1804
  %37 = bitcast %struct.FStar_UInt128_uint128* %31 to i8*, !dbg !1804
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %37, i8* noundef nonnull align 4 dereferenceable(16) %32, i32 16, i1 false), !dbg !1804, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #9, !dbg !1804
  %38 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 0, !dbg !1806
  %39 = load i64, i64* %38, align 4, !dbg !1806, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %39, metadata !1785, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1807
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 1, !dbg !1806
  %41 = load i64, i64* %40, align 4, !dbg !1806, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %41, metadata !1785, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1807
  %42 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !1808
  %43 = load i64, i64* %42, align 4, !dbg !1808, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %43, metadata !1787, metadata !DIExpression()), !dbg !1807
  %44 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !1809
  %45 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !1810
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #9, !dbg !1810
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %43, i64 noundef %2) #9, !dbg !1811
  %46 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !1810
  %47 = load i64, i64* %46, align 8, !dbg !1810, !tbaa !1369
  %48 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !1810
  %49 = load i64, i64* %48, align 8, !dbg !1810, !tbaa !1371
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %39, i64 %41, i64 %47, i64 %49) #9, !dbg !1810
  %50 = bitcast %struct.FStar_UInt128_uint128* %44 to i8*, !dbg !1810
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %50, i8* noundef nonnull align 4 dereferenceable(16) %45, i32 16, i1 false), !dbg !1810, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #9, !dbg !1810
  %51 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 0, !dbg !1812
  %52 = load i64, i64* %51, align 4, !dbg !1812, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %52, metadata !1788, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1813
  %53 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 1, !dbg !1812
  %54 = load i64, i64* %53, align 4, !dbg !1812, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %54, metadata !1788, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1813
  %55 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !1814
  %56 = load i64, i64* %55, align 4, !dbg !1814, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %56, metadata !1790, metadata !DIExpression()), !dbg !1813
  %57 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, !dbg !1815
  %58 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !1816
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #9, !dbg !1816
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %56, i64 noundef %2) #9, !dbg !1817
  %59 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1816
  %60 = load i64, i64* %59, align 8, !dbg !1816, !tbaa !1369
  %61 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1816
  %62 = load i64, i64* %61, align 8, !dbg !1816, !tbaa !1371
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %52, i64 %54, i64 %60, i64 %62) #9, !dbg !1816
  %63 = bitcast %struct.FStar_UInt128_uint128* %57 to i8*, !dbg !1816
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %63, i8* noundef nonnull align 4 dereferenceable(16) %58, i32 16, i1 false), !dbg !1816, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #9, !dbg !1816
  %64 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 0, !dbg !1818
  %65 = load i64, i64* %64, align 4, !dbg !1818, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %65, metadata !1791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1819
  %66 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 1, !dbg !1818
  %67 = load i64, i64* %66, align 4, !dbg !1818, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %67, metadata !1791, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1819
  %68 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1820
  %69 = load i64, i64* %68, align 4, !dbg !1820, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %69, metadata !1793, metadata !DIExpression()), !dbg !1819
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !1821
  %71 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !1822
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %71) #9, !dbg !1822
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %69, i64 noundef %2) #9, !dbg !1823
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 0, !dbg !1822
  %73 = load i64, i64* %72, align 8, !dbg !1822, !tbaa !1369
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %13, i32 0, i32 1, !dbg !1822
  %75 = load i64, i64* %74, align 8, !dbg !1822, !tbaa !1371
  call void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %65, i64 %67, i64 %73, i64 %75) #9, !dbg !1822
  %76 = bitcast %struct.FStar_UInt128_uint128* %70 to i8*, !dbg !1822
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %76, i8* noundef nonnull align 4 dereferenceable(16) %71, i32 16, i1 false), !dbg !1822, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %71) #9, !dbg !1822
  ret void, !dbg !1824
}

declare !dbg !1825 void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_(%struct.FStar_UInt128_uint128* noundef %0, i64* nocapture noundef %1) unnamed_addr #6 !dbg !1826 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %22 = alloca %struct.FStar_UInt128_uint128, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.FStar_UInt128_uint128, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 8
  %26 = alloca %struct.FStar_UInt128_uint128, align 8
  %27 = alloca %struct.FStar_UInt128_uint128, align 8
  %28 = alloca %struct.FStar_UInt128_uint128, align 4
  %29 = alloca %struct.FStar_UInt128_uint128, align 8
  %30 = alloca %struct.FStar_UInt128_uint128, align 4
  %31 = alloca %struct.FStar_UInt128_uint128, align 8
  %32 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !1830, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64* %1, metadata !1831, metadata !DIExpression()), !dbg !1840
  %33 = bitcast %struct.FStar_UInt128_uint128* %4 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33), !dbg !1841
  %34 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34), !dbg !1841
  %35 = bitcast %struct.FStar_UInt128_uint128* %6 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35), !dbg !1841
  %36 = bitcast %struct.FStar_UInt128_uint128* %7 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %36), !dbg !1841
  %37 = bitcast %struct.FStar_UInt128_uint128* %9 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37), !dbg !1841
  %38 = bitcast %struct.FStar_UInt128_uint128* %10 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38), !dbg !1841
  %39 = bitcast %struct.FStar_UInt128_uint128* %11 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %39), !dbg !1841
  %40 = bitcast %struct.FStar_UInt128_uint128* %12 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40), !dbg !1841
  %41 = bitcast %struct.FStar_UInt128_uint128* %14 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %41), !dbg !1841
  %42 = bitcast %struct.FStar_UInt128_uint128* %15 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42), !dbg !1841
  %43 = bitcast %struct.FStar_UInt128_uint128* %16 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43), !dbg !1841
  %44 = bitcast %struct.FStar_UInt128_uint128* %17 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44), !dbg !1841
  %45 = bitcast %struct.FStar_UInt128_uint128* %19 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45), !dbg !1841
  %46 = bitcast %struct.FStar_UInt128_uint128* %20 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %46), !dbg !1841
  %47 = bitcast %struct.FStar_UInt128_uint128* %21 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %47), !dbg !1841
  %48 = bitcast %struct.FStar_UInt128_uint128* %22 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48), !dbg !1841
  %49 = bitcast %struct.FStar_UInt128_uint128* %24 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49), !dbg !1841
  %50 = bitcast %struct.FStar_UInt128_uint128* %25 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %50), !dbg !1841
  %51 = bitcast %struct.FStar_UInt128_uint128* %26 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %51), !dbg !1841
  %52 = bitcast %struct.FStar_UInt128_uint128* %27 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52), !dbg !1841
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !1844, metadata !DIExpression()) #9, !dbg !1841
  call void @llvm.dbg.value(metadata i64* %1, metadata !1845, metadata !DIExpression()) #9, !dbg !1841
  %53 = load i64, i64* %1, align 4, !dbg !1862, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %53, metadata !1846, metadata !DIExpression()) #9, !dbg !1841
  %54 = getelementptr inbounds i64, i64* %1, i32 1, !dbg !1863
  %55 = load i64, i64* %54, align 4, !dbg !1863, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %55, metadata !1847, metadata !DIExpression()) #9, !dbg !1841
  %56 = getelementptr inbounds i64, i64* %1, i32 2, !dbg !1864
  %57 = load i64, i64* %56, align 4, !dbg !1864, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %57, metadata !1848, metadata !DIExpression()) #9, !dbg !1841
  %58 = getelementptr inbounds i64, i64* %1, i32 3, !dbg !1865
  %59 = load i64, i64* %58, align 4, !dbg !1865, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %59, metadata !1849, metadata !DIExpression()) #9, !dbg !1841
  %60 = getelementptr inbounds i64, i64* %1, i32 4, !dbg !1866
  %61 = load i64, i64* %60, align 4, !dbg !1866, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %61, metadata !1850, metadata !DIExpression()) #9, !dbg !1841
  %62 = shl i64 %53, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %62, metadata !1851, metadata !DIExpression()) #9, !dbg !1841
  %63 = shl i64 %55, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %63, metadata !1852, metadata !DIExpression()) #9, !dbg !1841
  %64 = mul i64 %57, 38, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %64, metadata !1853, metadata !DIExpression()) #9, !dbg !1841
  %65 = mul i64 %61, 19, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %65, metadata !1854, metadata !DIExpression()) #9, !dbg !1841
  %66 = mul i64 %61, 38, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %66, metadata !1855, metadata !DIExpression()) #9, !dbg !1841
  %67 = bitcast %struct.FStar_UInt128_uint128* %3 to i8*, !dbg !1872
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #9, !dbg !1872
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %3, metadata !1856, metadata !DIExpression()) #9, !dbg !1873
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %53, i64 noundef %53) #9, !dbg !1874
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %66, i64 noundef %55) #9, !dbg !1875
  %68 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !1876
  %69 = load i64, i64* %68, align 8, !dbg !1876, !tbaa !1369
  %70 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !1876
  %71 = load i64, i64* %70, align 8, !dbg !1876, !tbaa !1371
  %72 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !1876
  %73 = load i64, i64* %72, align 8, !dbg !1876, !tbaa !1369
  %74 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !1876
  %75 = load i64, i64* %74, align 8, !dbg !1876, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %69, i64 %71, i64 %73, i64 %75) #9, !dbg !1876
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %64, i64 noundef %59) #9, !dbg !1877
  %76 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0, !dbg !1878
  %77 = load i64, i64* %76, align 8, !dbg !1878, !tbaa !1369
  %78 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1, !dbg !1878
  %79 = load i64, i64* %78, align 8, !dbg !1878, !tbaa !1371
  %80 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !1878
  %81 = load i64, i64* %80, align 8, !dbg !1878, !tbaa !1369
  %82 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !1878
  %83 = load i64, i64* %82, align 8, !dbg !1878, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %77, i64 %79, i64 %81, i64 %83) #9, !dbg !1878
  %84 = bitcast %struct.FStar_UInt128_uint128* %8 to i8*, !dbg !1879
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %84) #9, !dbg !1879
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %8, metadata !1857, metadata !DIExpression()) #9, !dbg !1880
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %62, i64 noundef %55) #9, !dbg !1881
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %66, i64 noundef %57) #9, !dbg !1882
  %85 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 0, !dbg !1883
  %86 = load i64, i64* %85, align 8, !dbg !1883, !tbaa !1369
  %87 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %10, i32 0, i32 1, !dbg !1883
  %88 = load i64, i64* %87, align 8, !dbg !1883, !tbaa !1371
  %89 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 0, !dbg !1883
  %90 = load i64, i64* %89, align 8, !dbg !1883, !tbaa !1369
  %91 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %11, i32 0, i32 1, !dbg !1883
  %92 = load i64, i64* %91, align 8, !dbg !1883, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %86, i64 %88, i64 %90, i64 %92) #9, !dbg !1883
  %93 = mul i64 %59, 19, !dbg !1884
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %93, i64 noundef %59) #9, !dbg !1885
  %94 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 0, !dbg !1886
  %95 = load i64, i64* %94, align 8, !dbg !1886, !tbaa !1369
  %96 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %9, i32 0, i32 1, !dbg !1886
  %97 = load i64, i64* %96, align 8, !dbg !1886, !tbaa !1371
  %98 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 0, !dbg !1886
  %99 = load i64, i64* %98, align 8, !dbg !1886, !tbaa !1369
  %100 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %12, i32 0, i32 1, !dbg !1886
  %101 = load i64, i64* %100, align 8, !dbg !1886, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %95, i64 %97, i64 %99, i64 %101) #9, !dbg !1886
  %102 = bitcast %struct.FStar_UInt128_uint128* %13 to i8*, !dbg !1887
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %102) #9, !dbg !1887
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %13, metadata !1858, metadata !DIExpression()) #9, !dbg !1888
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %62, i64 noundef %57) #9, !dbg !1889
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %55, i64 noundef %55) #9, !dbg !1890
  %103 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 0, !dbg !1891
  %104 = load i64, i64* %103, align 8, !dbg !1891, !tbaa !1369
  %105 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %15, i32 0, i32 1, !dbg !1891
  %106 = load i64, i64* %105, align 8, !dbg !1891, !tbaa !1371
  %107 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 0, !dbg !1891
  %108 = load i64, i64* %107, align 8, !dbg !1891, !tbaa !1369
  %109 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %16, i32 0, i32 1, !dbg !1891
  %110 = load i64, i64* %109, align 8, !dbg !1891, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %104, i64 %106, i64 %108, i64 %110) #9, !dbg !1891
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %66, i64 noundef %59) #9, !dbg !1892
  %111 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 0, !dbg !1893
  %112 = load i64, i64* %111, align 8, !dbg !1893, !tbaa !1369
  %113 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %14, i32 0, i32 1, !dbg !1893
  %114 = load i64, i64* %113, align 8, !dbg !1893, !tbaa !1371
  %115 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 0, !dbg !1893
  %116 = load i64, i64* %115, align 8, !dbg !1893, !tbaa !1369
  %117 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %17, i32 0, i32 1, !dbg !1893
  %118 = load i64, i64* %117, align 8, !dbg !1893, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %112, i64 %114, i64 %116, i64 %118) #9, !dbg !1893
  %119 = bitcast %struct.FStar_UInt128_uint128* %18 to i8*, !dbg !1894
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %119) #9, !dbg !1894
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %18, metadata !1859, metadata !DIExpression()) #9, !dbg !1895
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %62, i64 noundef %59) #9, !dbg !1896
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef %63, i64 noundef %57) #9, !dbg !1897
  %120 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 0, !dbg !1898
  %121 = load i64, i64* %120, align 8, !dbg !1898, !tbaa !1369
  %122 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %20, i32 0, i32 1, !dbg !1898
  %123 = load i64, i64* %122, align 8, !dbg !1898, !tbaa !1371
  %124 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 0, !dbg !1898
  %125 = load i64, i64* %124, align 8, !dbg !1898, !tbaa !1369
  %126 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %21, i32 0, i32 1, !dbg !1898
  %127 = load i64, i64* %126, align 8, !dbg !1898, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %121, i64 %123, i64 %125, i64 %127) #9, !dbg !1898
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %61, i64 noundef %65) #9, !dbg !1899
  %128 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 0, !dbg !1900
  %129 = load i64, i64* %128, align 8, !dbg !1900, !tbaa !1369
  %130 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %19, i32 0, i32 1, !dbg !1900
  %131 = load i64, i64* %130, align 8, !dbg !1900, !tbaa !1371
  %132 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 0, !dbg !1900
  %133 = load i64, i64* %132, align 8, !dbg !1900, !tbaa !1369
  %134 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %22, i32 0, i32 1, !dbg !1900
  %135 = load i64, i64* %134, align 8, !dbg !1900, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %129, i64 %131, i64 %133, i64 %135) #9, !dbg !1900
  %136 = bitcast %struct.FStar_UInt128_uint128* %23 to i8*, !dbg !1901
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %136) #9, !dbg !1901
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %23, metadata !1860, metadata !DIExpression()) #9, !dbg !1902
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %62, i64 noundef %61) #9, !dbg !1903
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %63, i64 noundef %59) #9, !dbg !1904
  %137 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 0, !dbg !1905
  %138 = load i64, i64* %137, align 8, !dbg !1905, !tbaa !1369
  %139 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %25, i32 0, i32 1, !dbg !1905
  %140 = load i64, i64* %139, align 8, !dbg !1905, !tbaa !1371
  %141 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 0, !dbg !1905
  %142 = load i64, i64* %141, align 8, !dbg !1905, !tbaa !1369
  %143 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %26, i32 0, i32 1, !dbg !1905
  %144 = load i64, i64* %143, align 8, !dbg !1905, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %138, i64 %140, i64 %142, i64 %144) #9, !dbg !1905
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %57, i64 noundef %57) #9, !dbg !1906
  %145 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 0, !dbg !1907
  %146 = load i64, i64* %145, align 8, !dbg !1907, !tbaa !1369
  %147 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %24, i32 0, i32 1, !dbg !1907
  %148 = load i64, i64* %147, align 8, !dbg !1907, !tbaa !1371
  %149 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 0, !dbg !1907
  %150 = load i64, i64* %149, align 8, !dbg !1907, !tbaa !1369
  %151 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %27, i32 0, i32 1, !dbg !1907
  %152 = load i64, i64* %151, align 8, !dbg !1907, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %146, i64 %148, i64 %150, i64 %152) #9, !dbg !1907
  %153 = bitcast %struct.FStar_UInt128_uint128* %0 to i8*, !dbg !1908
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %153, i8* noundef nonnull align 4 dereferenceable(16) %67, i32 16, i1 false) #9, !dbg !1908, !tbaa.struct !265
  %154 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, !dbg !1909
  %155 = bitcast %struct.FStar_UInt128_uint128* %154 to i8*, !dbg !1910
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %155, i8* noundef nonnull align 4 dereferenceable(16) %84, i32 16, i1 false) #9, !dbg !1910, !tbaa.struct !265
  %156 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, !dbg !1911
  %157 = bitcast %struct.FStar_UInt128_uint128* %156 to i8*, !dbg !1912
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %157, i8* noundef nonnull align 4 dereferenceable(16) %102, i32 16, i1 false) #9, !dbg !1912, !tbaa.struct !265
  %158 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, !dbg !1913
  %159 = bitcast %struct.FStar_UInt128_uint128* %158 to i8*, !dbg !1914
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %159, i8* noundef nonnull align 4 dereferenceable(16) %119, i32 16, i1 false) #9, !dbg !1914, !tbaa.struct !265
  %160 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, !dbg !1915
  %161 = bitcast %struct.FStar_UInt128_uint128* %160 to i8*, !dbg !1916
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %161, i8* noundef nonnull align 4 dereferenceable(16) %136, i32 16, i1 false) #9, !dbg !1916, !tbaa.struct !265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %136) #9, !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %119) #9, !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %102) #9, !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %84) #9, !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #9, !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %39), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %41), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %46), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %47), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %49), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %50), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %51), !dbg !1917
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52), !dbg !1917
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(%struct.FStar_UInt128_uint128* noundef %0), !dbg !1918
  %162 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 0, !dbg !1919
  %163 = load i64, i64* %162, align 4, !dbg !1919, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %163, metadata !1832, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1840
  %164 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 4, i32 1, !dbg !1919
  %165 = load i64, i64* %164, align 4, !dbg !1919, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %165, metadata !1832, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1840
  %166 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !1920
  %167 = load i64, i64* %166, align 4, !dbg !1920, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %167, metadata !1833, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1840
  %168 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !1920
  %169 = load i64, i64* %168, align 4, !dbg !1920, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %169, metadata !1833, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1840
  %170 = bitcast %struct.FStar_UInt128_uint128* %28 to i8*, !dbg !1921
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %170) #9, !dbg !1921
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %28, metadata !1834, metadata !DIExpression()), !dbg !1922
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 noundef 2251799813685247) #9, !dbg !1923
  %171 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %29, i32 0, i32 0, !dbg !1924
  %172 = load i64, i64* %171, align 8, !dbg !1924, !tbaa !1369
  %173 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %29, i32 0, i32 1, !dbg !1924
  %174 = load i64, i64* %173, align 8, !dbg !1924, !tbaa !1371
  call void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 %163, i64 %165, i64 %172, i64 %174) #9, !dbg !1924
  %175 = bitcast %struct.FStar_UInt128_uint128* %30 to i8*, !dbg !1925
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %175) #9, !dbg !1925
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %30, metadata !1835, metadata !DIExpression()), !dbg !1926
  call void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %32, i64 %163, i64 %165, i32 noundef 51) #9, !dbg !1927
  %176 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %32, i32 0, i32 0, !dbg !1928
  %177 = load i64, i64* %176, align 8, !dbg !1928, !tbaa !1369
  %178 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %32, i32 0, i32 1, !dbg !1928
  %179 = load i64, i64* %178, align 8, !dbg !1928, !tbaa !1371
  %180 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %177, i64 %179) #9, !dbg !1928
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %31, i64 noundef 19, i64 noundef %180) #9, !dbg !1929
  %181 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %31, i32 0, i32 0, !dbg !1930
  %182 = load i64, i64* %181, align 8, !dbg !1930, !tbaa !1369
  %183 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %31, i32 0, i32 1, !dbg !1930
  %184 = load i64, i64* %183, align 8, !dbg !1930, !tbaa !1371
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 %167, i64 %169, i64 %182, i64 %184) #9, !dbg !1930
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %161, i8* noundef nonnull align 4 dereferenceable(16) %170, i32 16, i1 false), !dbg !1931, !tbaa.struct !265
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %153, i8* noundef nonnull align 4 dereferenceable(16) %175, i32 16, i1 false), !dbg !1932, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64* %1, metadata !1380, metadata !DIExpression()) #9, !dbg !1933
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %0, metadata !1385, metadata !DIExpression()) #9, !dbg !1933
  %185 = load i64, i64* %166, align 4, !dbg !1935, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %185, metadata !1386, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1936
  %186 = load i64, i64* %168, align 4, !dbg !1935, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %186, metadata !1386, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1936
  %187 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %185, i64 %186) #9, !dbg !1937
  store i64 %187, i64* %1, align 4, !dbg !1938, !tbaa !121
  %188 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 0, !dbg !1939
  %189 = load i64, i64* %188, align 4, !dbg !1939, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %189, metadata !1388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1940
  %190 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 1, i32 1, !dbg !1939
  %191 = load i64, i64* %190, align 4, !dbg !1939, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %191, metadata !1388, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1940
  %192 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %189, i64 %191) #9, !dbg !1941
  store i64 %192, i64* %54, align 4, !dbg !1942, !tbaa !121
  %193 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 0, !dbg !1943
  %194 = load i64, i64* %193, align 4, !dbg !1943, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %194, metadata !1390, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1944
  %195 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 2, i32 1, !dbg !1943
  %196 = load i64, i64* %195, align 4, !dbg !1943, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %196, metadata !1390, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1944
  %197 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %194, i64 %196) #9, !dbg !1945
  store i64 %197, i64* %56, align 4, !dbg !1946, !tbaa !121
  %198 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 0, !dbg !1947
  %199 = load i64, i64* %198, align 4, !dbg !1947, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %199, metadata !1392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1948
  %200 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 3, i32 1, !dbg !1947
  %201 = load i64, i64* %200, align 4, !dbg !1947, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %201, metadata !1392, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1948
  %202 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %199, i64 %201) #9, !dbg !1949
  store i64 %202, i64* %58, align 4, !dbg !1950, !tbaa !121
  %203 = load i64, i64* %162, align 4, !dbg !1951, !tbaa.struct !265
  call void @llvm.dbg.value(metadata i64 %203, metadata !1394, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !1952
  %204 = load i64, i64* %164, align 4, !dbg !1951, !tbaa.struct !1363
  call void @llvm.dbg.value(metadata i64 %204, metadata !1394, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !1952
  %205 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %203, i64 %204) #9, !dbg !1953
  store i64 %205, i64* %60, align 4, !dbg !1954, !tbaa !121
  %206 = load i64, i64* %1, align 4, !dbg !1955, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %206, metadata !1836, metadata !DIExpression()), !dbg !1840
  %207 = load i64, i64* %54, align 4, !dbg !1956, !tbaa !121
  call void @llvm.dbg.value(metadata i64 %207, metadata !1837, metadata !DIExpression()), !dbg !1840
  %208 = and i64 %206, 2251799813685247, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %208, metadata !1838, metadata !DIExpression()), !dbg !1840
  %209 = lshr i64 %206, 51, !dbg !1958
  %210 = add i64 %207, %209, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %210, metadata !1839, metadata !DIExpression()), !dbg !1840
  store i64 %208, i64* %1, align 4, !dbg !1960, !tbaa !121
  store i64 %210, i64* %54, align 4, !dbg !1961, !tbaa !121
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %175) #9, !dbg !1962
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %170) #9, !dbg !1962
  ret void, !dbg !1962
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/Hacl_Curve25519.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "7095fd7f3c6a8710b4a7e7ecfb36b1c5")
!2 = !{!3, !8, !11, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 48, baseType: !10)
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
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
!26 = distinct !DISubprogram(name: "Hacl_EC_crypto_scalarmult", scope: !1, file: !1, line: 807, type: !27, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!30 = !{!31, !32, !33, !34, !38, !40, !41, !42, !46, !47, !48, !49, !50, !51, !52, !56, !57}
!31 = !DILocalVariable(name: "mypublic", arg: 1, scope: !26, file: !1, line: 807, type: !29)
!32 = !DILocalVariable(name: "secret", arg: 2, scope: !26, file: !1, line: 807, type: !29)
!33 = !DILocalVariable(name: "basepoint", arg: 3, scope: !26, file: !1, line: 807, type: !29)
!34 = !DILocalVariable(name: "buf0", scope: !26, file: !1, line: 809, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 640, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 10)
!38 = !DILocalVariable(name: "x0", scope: !26, file: !1, line: 810, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!40 = !DILocalVariable(name: "z", scope: !26, file: !1, line: 811, type: !39)
!41 = !DILocalVariable(name: "q", scope: !26, file: !1, line: 814, type: !39)
!42 = !DILocalVariable(name: "e", scope: !26, file: !1, line: 815, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 32)
!46 = !DILocalVariable(name: "e0", scope: !26, file: !1, line: 817, type: !11)
!47 = !DILocalVariable(name: "e31", scope: !26, file: !1, line: 818, type: !11)
!48 = !DILocalVariable(name: "e01", scope: !26, file: !1, line: 819, type: !11)
!49 = !DILocalVariable(name: "e311", scope: !26, file: !1, line: 820, type: !11)
!50 = !DILocalVariable(name: "e312", scope: !26, file: !1, line: 821, type: !11)
!51 = !DILocalVariable(name: "scalar", scope: !26, file: !1, line: 824, type: !29)
!52 = !DILocalVariable(name: "buf", scope: !26, file: !1, line: 825, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 960, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 15)
!56 = !DILocalVariable(name: "nq", scope: !26, file: !1, line: 826, type: !39)
!57 = !DILocalVariable(name: "x", scope: !26, file: !1, line: 827, type: !39)
!58 = !DILocation(line: 0, scope: !26)
!59 = !DILocation(line: 809, column: 3, scope: !26)
!60 = !DILocation(line: 809, column: 12, scope: !26)
!61 = !DILocation(line: 810, column: 18, scope: !26)
!62 = !DILocation(line: 811, column: 22, scope: !26)
!63 = !DILocalVariable(name: "output", arg: 1, scope: !64, file: !1, line: 656, type: !39)
!64 = distinct !DISubprogram(name: "Hacl_EC_Format_fexpand", scope: !1, file: !1, line: 656, type: !65, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !39, !29}
!67 = !{!63, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!68 = !DILocalVariable(name: "input", arg: 2, scope: !64, file: !1, line: 656, type: !29)
!69 = !DILocalVariable(name: "i0", scope: !64, file: !1, line: 658, type: !8)
!70 = !DILocalVariable(name: "x00", scope: !64, file: !1, line: 659, type: !29)
!71 = !DILocalVariable(name: "i1", scope: !64, file: !1, line: 660, type: !8)
!72 = !DILocalVariable(name: "x01", scope: !64, file: !1, line: 661, type: !29)
!73 = !DILocalVariable(name: "i2", scope: !64, file: !1, line: 662, type: !8)
!74 = !DILocalVariable(name: "x02", scope: !64, file: !1, line: 663, type: !29)
!75 = !DILocalVariable(name: "i3", scope: !64, file: !1, line: 664, type: !8)
!76 = !DILocalVariable(name: "x0", scope: !64, file: !1, line: 665, type: !29)
!77 = !DILocalVariable(name: "i4", scope: !64, file: !1, line: 666, type: !8)
!78 = !DILocalVariable(name: "output0", scope: !64, file: !1, line: 667, type: !8)
!79 = !DILocalVariable(name: "output1", scope: !64, file: !1, line: 668, type: !8)
!80 = !DILocalVariable(name: "output2", scope: !64, file: !1, line: 669, type: !8)
!81 = !DILocalVariable(name: "output3", scope: !64, file: !1, line: 670, type: !8)
!82 = !DILocalVariable(name: "output4", scope: !64, file: !1, line: 671, type: !8)
!83 = !DILocation(line: 0, scope: !64, inlinedAt: !84)
!84 = distinct !DILocation(line: 812, column: 3, scope: !26)
!85 = !DILocalVariable(name: "b", arg: 1, scope: !86, file: !87, line: 347, type: !29)
!86 = distinct !DISubprogram(name: "load64", scope: !87, file: !87, line: 347, type: !88, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !90)
!87 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!88 = !DISubroutineType(types: !89)
!89 = !{!8, !29}
!90 = !{!85, !91}
!91 = !DILocalVariable(name: "x", scope: !86, file: !87, line: 348, type: !8)
!92 = !DILocation(line: 0, scope: !86, inlinedAt: !93)
!93 = distinct !DILocation(line: 658, column: 17, scope: !64, inlinedAt: !84)
!94 = !DILocation(line: 349, column: 3, scope: !86, inlinedAt: !93)
!95 = !DILocation(line: 659, column: 24, scope: !64, inlinedAt: !84)
!96 = !DILocation(line: 0, scope: !86, inlinedAt: !97)
!97 = distinct !DILocation(line: 660, column: 17, scope: !64, inlinedAt: !84)
!98 = !DILocation(line: 349, column: 3, scope: !86, inlinedAt: !97)
!99 = !DILocation(line: 661, column: 24, scope: !64, inlinedAt: !84)
!100 = !DILocation(line: 0, scope: !86, inlinedAt: !101)
!101 = distinct !DILocation(line: 662, column: 17, scope: !64, inlinedAt: !84)
!102 = !DILocation(line: 349, column: 3, scope: !86, inlinedAt: !101)
!103 = !DILocation(line: 663, column: 24, scope: !64, inlinedAt: !84)
!104 = !DILocation(line: 0, scope: !86, inlinedAt: !105)
!105 = distinct !DILocation(line: 664, column: 17, scope: !64, inlinedAt: !84)
!106 = !DILocation(line: 349, column: 3, scope: !86, inlinedAt: !105)
!107 = !DILocation(line: 665, column: 23, scope: !64, inlinedAt: !84)
!108 = !DILocation(line: 0, scope: !86, inlinedAt: !109)
!109 = distinct !DILocation(line: 666, column: 17, scope: !64, inlinedAt: !84)
!110 = !DILocation(line: 349, column: 3, scope: !86, inlinedAt: !109)
!111 = !DILocation(line: 667, column: 25, scope: !64, inlinedAt: !84)
!112 = !DILocation(line: 668, column: 25, scope: !64, inlinedAt: !84)
!113 = !DILocation(line: 668, column: 41, scope: !64, inlinedAt: !84)
!114 = !DILocation(line: 669, column: 25, scope: !64, inlinedAt: !84)
!115 = !DILocation(line: 669, column: 41, scope: !64, inlinedAt: !84)
!116 = !DILocation(line: 670, column: 25, scope: !64, inlinedAt: !84)
!117 = !DILocation(line: 670, column: 41, scope: !64, inlinedAt: !84)
!118 = !DILocation(line: 671, column: 25, scope: !64, inlinedAt: !84)
!119 = !DILocation(line: 671, column: 42, scope: !64, inlinedAt: !84)
!120 = !DILocation(line: 672, column: 14, scope: !64, inlinedAt: !84)
!121 = !{!122, !122, i64 0}
!122 = !{!"long long", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C/C++ TBAA"}
!125 = !DILocation(line: 673, column: 3, scope: !64, inlinedAt: !84)
!126 = !DILocation(line: 673, column: 14, scope: !64, inlinedAt: !84)
!127 = !DILocation(line: 674, column: 3, scope: !64, inlinedAt: !84)
!128 = !DILocation(line: 674, column: 14, scope: !64, inlinedAt: !84)
!129 = !DILocation(line: 675, column: 3, scope: !64, inlinedAt: !84)
!130 = !DILocation(line: 675, column: 14, scope: !64, inlinedAt: !84)
!131 = !DILocation(line: 676, column: 3, scope: !64, inlinedAt: !84)
!132 = !DILocation(line: 676, column: 14, scope: !64, inlinedAt: !84)
!133 = !DILocation(line: 813, column: 9, scope: !26)
!134 = !DILocation(line: 815, column: 3, scope: !26)
!135 = !DILocation(line: 815, column: 11, scope: !26)
!136 = !DILocation(line: 816, column: 3, scope: !26)
!137 = !DILocation(line: 817, column: 16, scope: !26)
!138 = !{!123, !123, i64 0}
!139 = !DILocation(line: 818, column: 17, scope: !26)
!140 = !DILocation(line: 819, column: 20, scope: !26)
!141 = !DILocation(line: 820, column: 22, scope: !26)
!142 = !DILocation(line: 821, column: 23, scope: !26)
!143 = !DILocation(line: 822, column: 9, scope: !26)
!144 = !DILocation(line: 823, column: 10, scope: !26)
!145 = !DILocation(line: 825, column: 3, scope: !26)
!146 = !DILocation(line: 825, column: 12, scope: !26)
!147 = !DILocation(line: 826, column: 18, scope: !26)
!148 = !DILocation(line: 828, column: 9, scope: !26)
!149 = !DILocalVariable(name: "result", arg: 1, scope: !150, file: !1, line: 643, type: !39)
!150 = distinct !DISubprogram(name: "Hacl_EC_Ladder_cmult", scope: !1, file: !1, line: 643, type: !151, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !153)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !39, !29, !39}
!153 = !{!149, !154, !155, !156, !160, !161, !162, !163}
!154 = !DILocalVariable(name: "n1", arg: 2, scope: !150, file: !1, line: 643, type: !29)
!155 = !DILocalVariable(name: "q", arg: 3, scope: !150, file: !1, line: 643, type: !39)
!156 = !DILocalVariable(name: "point_buf", scope: !150, file: !1, line: 645, type: !157)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2560, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 40)
!160 = !DILocalVariable(name: "nq", scope: !150, file: !1, line: 646, type: !39)
!161 = !DILocalVariable(name: "nqpq", scope: !150, file: !1, line: 647, type: !39)
!162 = !DILocalVariable(name: "nq2", scope: !150, file: !1, line: 648, type: !39)
!163 = !DILocalVariable(name: "nqpq2", scope: !150, file: !1, line: 649, type: !39)
!164 = !DILocation(line: 0, scope: !150, inlinedAt: !165)
!165 = distinct !DILocation(line: 829, column: 3, scope: !26)
!166 = !DILocation(line: 645, column: 3, scope: !150, inlinedAt: !165)
!167 = !DILocation(line: 645, column: 12, scope: !150, inlinedAt: !165)
!168 = !DILocation(line: 646, column: 18, scope: !150, inlinedAt: !165)
!169 = !DILocation(line: 647, column: 30, scope: !150, inlinedAt: !165)
!170 = !DILocation(line: 648, column: 29, scope: !150, inlinedAt: !165)
!171 = !DILocation(line: 649, column: 31, scope: !150, inlinedAt: !165)
!172 = !DILocalVariable(name: "output", arg: 1, scope: !173, file: !1, line: 507, type: !39)
!173 = distinct !DISubprogram(name: "Hacl_EC_Point_copy", scope: !1, file: !1, line: 507, type: !174, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !39, !39}
!176 = !{!172, !177}
!177 = !DILocalVariable(name: "input", arg: 2, scope: !173, file: !1, line: 507, type: !39)
!178 = !DILocation(line: 0, scope: !173, inlinedAt: !179)
!179 = distinct !DILocation(line: 650, column: 3, scope: !150, inlinedAt: !165)
!180 = !DILocation(line: 509, column: 3, scope: !173, inlinedAt: !179)
!181 = !DILocation(line: 510, column: 17, scope: !173, inlinedAt: !179)
!182 = !DILocation(line: 510, column: 3, scope: !173, inlinedAt: !179)
!183 = !DILocation(line: 511, column: 11, scope: !173, inlinedAt: !179)
!184 = !DILocation(line: 651, column: 10, scope: !150, inlinedAt: !165)
!185 = !DILocation(line: 652, column: 3, scope: !150, inlinedAt: !165)
!186 = !DILocation(line: 0, scope: !173, inlinedAt: !187)
!187 = distinct !DILocation(line: 653, column: 3, scope: !150, inlinedAt: !165)
!188 = !DILocation(line: 509, column: 3, scope: !173, inlinedAt: !187)
!189 = !DILocation(line: 510, column: 17, scope: !173, inlinedAt: !187)
!190 = !DILocation(line: 510, column: 3, scope: !173, inlinedAt: !187)
!191 = !DILocation(line: 511, column: 11, scope: !173, inlinedAt: !187)
!192 = !DILocation(line: 654, column: 1, scope: !150, inlinedAt: !165)
!193 = !DILocalVariable(name: "scalar", arg: 1, scope: !194, file: !1, line: 795, type: !29)
!194 = distinct !DISubprogram(name: "Hacl_EC_Format_scalar_of_point", scope: !1, file: !1, line: 795, type: !195, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !29, !39}
!197 = !{!193, !198, !199, !200, !201, !202, !203}
!198 = !DILocalVariable(name: "point", arg: 2, scope: !194, file: !1, line: 795, type: !39)
!199 = !DILocalVariable(name: "x", scope: !194, file: !1, line: 797, type: !39)
!200 = !DILocalVariable(name: "z", scope: !194, file: !1, line: 798, type: !39)
!201 = !DILocalVariable(name: "buf", scope: !194, file: !1, line: 799, type: !35)
!202 = !DILocalVariable(name: "zmone", scope: !194, file: !1, line: 800, type: !39)
!203 = !DILocalVariable(name: "sc", scope: !194, file: !1, line: 801, type: !39)
!204 = !DILocation(line: 0, scope: !194, inlinedAt: !205)
!205 = distinct !DILocation(line: 830, column: 3, scope: !26)
!206 = !DILocation(line: 799, column: 3, scope: !194, inlinedAt: !205)
!207 = !DILocation(line: 799, column: 12, scope: !194, inlinedAt: !205)
!208 = !DILocalVariable(name: "output", arg: 1, scope: !209, file: !1, line: 471, type: !39)
!209 = distinct !DISubprogram(name: "Hacl_Bignum_crecip", scope: !1, file: !1, line: 471, type: !174, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !210)
!210 = !{!208, !211}
!211 = !DILocalVariable(name: "input", arg: 2, scope: !209, file: !1, line: 471, type: !39)
!212 = !DILocation(line: 0, scope: !209, inlinedAt: !213)
!213 = distinct !DILocation(line: 802, column: 3, scope: !194, inlinedAt: !205)
!214 = !DILocalVariable(name: "out", arg: 1, scope: !215, file: !1, line: 318, type: !39)
!215 = distinct !DISubprogram(name: "Hacl_Bignum_Crecip_crecip", scope: !1, file: !1, line: 318, type: !174, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!216 = !{!214, !217, !218, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!217 = !DILocalVariable(name: "z", arg: 2, scope: !215, file: !1, line: 318, type: !39)
!218 = !DILocalVariable(name: "buf", scope: !215, file: !1, line: 320, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1280, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 20)
!222 = !DILocalVariable(name: "a", scope: !215, file: !1, line: 321, type: !39)
!223 = !DILocalVariable(name: "t00", scope: !215, file: !1, line: 322, type: !39)
!224 = !DILocalVariable(name: "b0", scope: !215, file: !1, line: 323, type: !39)
!225 = !DILocalVariable(name: "t01", scope: !215, file: !1, line: 331, type: !39)
!226 = !DILocalVariable(name: "b1", scope: !215, file: !1, line: 332, type: !39)
!227 = !DILocalVariable(name: "c0", scope: !215, file: !1, line: 333, type: !39)
!228 = !DILocalVariable(name: "a0", scope: !215, file: !1, line: 342, type: !39)
!229 = !DILocalVariable(name: "t0", scope: !215, file: !1, line: 343, type: !39)
!230 = !DILocalVariable(name: "b", scope: !215, file: !1, line: 344, type: !39)
!231 = !DILocalVariable(name: "c", scope: !215, file: !1, line: 345, type: !39)
!232 = !DILocation(line: 0, scope: !215, inlinedAt: !233)
!233 = distinct !DILocation(line: 473, column: 3, scope: !209, inlinedAt: !213)
!234 = !DILocation(line: 320, column: 3, scope: !215, inlinedAt: !233)
!235 = !DILocation(line: 320, column: 12, scope: !215, inlinedAt: !233)
!236 = !DILocalVariable(name: "count1", arg: 3, scope: !237, file: !1, line: 299, type: !3)
!237 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_times", scope: !1, file: !1, line: 299, type: !238, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !39, !39, !3}
!240 = !{!241, !242, !236, !243, !254}
!241 = !DILocalVariable(name: "output", arg: 1, scope: !237, file: !1, line: 299, type: !39)
!242 = !DILocalVariable(name: "input", arg: 2, scope: !237, file: !1, line: 299, type: !39)
!243 = !DILocalVariable(name: "t", scope: !237, file: !1, line: 302, type: !244)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 640, elements: !252)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !246, line: 37, baseType: !247)
!246 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !246, line: 35, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 30, size: 128, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !248, file: !246, line: 32, baseType: !8, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !248, file: !246, line: 33, baseType: !8, size: 64, offset: 64)
!252 = !{!253}
!253 = !DISubrange(count: 5)
!254 = !DILocalVariable(name: "_i", scope: !255, file: !1, line: 303, type: !3)
!255 = distinct !DILexicalBlock(scope: !237, file: !1, line: 303, column: 3)
!256 = !DILocation(line: 0, scope: !237, inlinedAt: !257)
!257 = distinct !DILocation(line: 324, column: 3, scope: !215, inlinedAt: !233)
!258 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !257)
!259 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !257)
!260 = !DILocation(line: 0, scope: !255, inlinedAt: !257)
!261 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !257)
!262 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !257)
!263 = distinct !DILexicalBlock(scope: !255, file: !1, line: 303, column: 3)
!264 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !257)
!265 = !{i64 0, i64 8, !121, i64 8, i64 8, !121}
!266 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !257)
!267 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !257)
!268 = distinct !{!268, !261, !269, !270, !271}
!269 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !257)
!270 = !{!"llvm.loop.mustprogress"}
!271 = !{!"llvm.loop.unroll.disable"}
!272 = !DILocation(line: 321, column: 17, scope: !215, inlinedAt: !233)
!273 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !257)
!274 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !257)
!275 = !DILocalVariable(name: "input", arg: 1, scope: !276, file: !1, line: 291, type: !39)
!276 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_times_", scope: !1, file: !1, line: 291, type: !277, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !280)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !39, !279, !3}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 32)
!280 = !{!275, !281, !282, !283}
!281 = !DILocalVariable(name: "tmp", arg: 2, scope: !276, file: !1, line: 291, type: !279)
!282 = !DILocalVariable(name: "count1", arg: 3, scope: !276, file: !1, line: 291, type: !3)
!283 = !DILocalVariable(name: "i", scope: !284, file: !1, line: 294, type: !3)
!284 = distinct !DILexicalBlock(scope: !276, file: !1, line: 294, column: 3)
!285 = !DILocation(line: 0, scope: !276, inlinedAt: !286)
!286 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !257)
!287 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !286)
!288 = !DILocation(line: 0, scope: !284, inlinedAt: !286)
!289 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !257)
!290 = !DILocation(line: 0, scope: !237, inlinedAt: !291)
!291 = distinct !DILocation(line: 325, column: 3, scope: !215, inlinedAt: !233)
!292 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !291)
!293 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !291)
!294 = !DILocation(line: 0, scope: !255, inlinedAt: !291)
!295 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !291)
!296 = !DILocation(line: 322, column: 23, scope: !215, inlinedAt: !233)
!297 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !291)
!298 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !291)
!299 = !DILocation(line: 0, scope: !276, inlinedAt: !300)
!300 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !291)
!301 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !300)
!302 = !DILocation(line: 0, scope: !284, inlinedAt: !300)
!303 = !DILocation(line: 295, column: 5, scope: !304, inlinedAt: !300)
!304 = distinct !DILexicalBlock(scope: !284, file: !1, line: 294, column: 3)
!305 = !DILocation(line: 323, column: 22, scope: !215, inlinedAt: !233)
!306 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !291)
!307 = !DILocation(line: 326, column: 3, scope: !215, inlinedAt: !233)
!308 = !DILocation(line: 327, column: 3, scope: !215, inlinedAt: !233)
!309 = !DILocation(line: 0, scope: !237, inlinedAt: !310)
!310 = distinct !DILocation(line: 328, column: 3, scope: !215, inlinedAt: !233)
!311 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !310)
!312 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !310)
!313 = !DILocation(line: 0, scope: !255, inlinedAt: !310)
!314 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !310)
!315 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !291)
!316 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !291)
!317 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !291)
!318 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !291)
!319 = distinct !{!319, !295, !320, !270, !271}
!320 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !291)
!321 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !310)
!322 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !310)
!323 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !310)
!324 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !310)
!325 = distinct !{!325, !314, !326, !270, !271}
!326 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !310)
!327 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !310)
!328 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !310)
!329 = !DILocation(line: 0, scope: !276, inlinedAt: !330)
!330 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !310)
!331 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !330)
!332 = !DILocation(line: 0, scope: !284, inlinedAt: !330)
!333 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !310)
!334 = !DILocation(line: 329, column: 3, scope: !215, inlinedAt: !233)
!335 = !DILocation(line: 0, scope: !237, inlinedAt: !336)
!336 = distinct !DILocation(line: 330, column: 3, scope: !215, inlinedAt: !233)
!337 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !336)
!338 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !336)
!339 = !DILocation(line: 0, scope: !255, inlinedAt: !336)
!340 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !336)
!341 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !336)
!342 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !336)
!343 = !DILocation(line: 0, scope: !276, inlinedAt: !344)
!344 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !336)
!345 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !344)
!346 = !DILocation(line: 0, scope: !284, inlinedAt: !344)
!347 = !DILocation(line: 295, column: 5, scope: !304, inlinedAt: !344)
!348 = !DILocation(line: 294, column: 53, scope: !304, inlinedAt: !344)
!349 = !DILocation(line: 294, column: 37, scope: !304, inlinedAt: !344)
!350 = !DILocation(line: 294, column: 3, scope: !284, inlinedAt: !344)
!351 = distinct !{!351, !350, !352, !270, !271}
!352 = !DILocation(line: 295, column: 44, scope: !284, inlinedAt: !344)
!353 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !336)
!354 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !336)
!355 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !336)
!356 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !336)
!357 = distinct !{!357, !340, !358, !270, !271}
!358 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !336)
!359 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !336)
!360 = !DILocation(line: 334, column: 3, scope: !215, inlinedAt: !233)
!361 = !DILocation(line: 0, scope: !237, inlinedAt: !362)
!362 = distinct !DILocation(line: 335, column: 3, scope: !215, inlinedAt: !233)
!363 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !362)
!364 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !362)
!365 = !DILocation(line: 0, scope: !255, inlinedAt: !362)
!366 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !362)
!367 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !362)
!368 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !362)
!369 = !DILocation(line: 0, scope: !276, inlinedAt: !370)
!370 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !362)
!371 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !370)
!372 = !DILocation(line: 0, scope: !284, inlinedAt: !370)
!373 = !DILocation(line: 295, column: 5, scope: !304, inlinedAt: !370)
!374 = !DILocation(line: 294, column: 53, scope: !304, inlinedAt: !370)
!375 = !DILocation(line: 294, column: 37, scope: !304, inlinedAt: !370)
!376 = !DILocation(line: 294, column: 3, scope: !284, inlinedAt: !370)
!377 = distinct !{!377, !376, !378, !270, !271}
!378 = !DILocation(line: 295, column: 44, scope: !284, inlinedAt: !370)
!379 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !362)
!380 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !362)
!381 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !362)
!382 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !362)
!383 = distinct !{!383, !366, !384, !270, !271}
!384 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !362)
!385 = !DILocation(line: 333, column: 22, scope: !215, inlinedAt: !233)
!386 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !362)
!387 = !DILocation(line: 336, column: 3, scope: !215, inlinedAt: !233)
!388 = !DILocation(line: 0, scope: !237, inlinedAt: !389)
!389 = distinct !DILocation(line: 337, column: 3, scope: !215, inlinedAt: !233)
!390 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !389)
!391 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !389)
!392 = !DILocation(line: 0, scope: !255, inlinedAt: !389)
!393 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !389)
!394 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !389)
!395 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !389)
!396 = !DILocation(line: 0, scope: !276, inlinedAt: !397)
!397 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !389)
!398 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !397)
!399 = !DILocation(line: 0, scope: !284, inlinedAt: !397)
!400 = !DILocation(line: 295, column: 5, scope: !304, inlinedAt: !397)
!401 = !DILocation(line: 294, column: 53, scope: !304, inlinedAt: !397)
!402 = !DILocation(line: 294, column: 37, scope: !304, inlinedAt: !397)
!403 = !DILocation(line: 294, column: 3, scope: !284, inlinedAt: !397)
!404 = distinct !{!404, !403, !405, !270, !271}
!405 = !DILocation(line: 295, column: 44, scope: !284, inlinedAt: !397)
!406 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !389)
!407 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !389)
!408 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !389)
!409 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !389)
!410 = distinct !{!410, !393, !411, !270, !271}
!411 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !389)
!412 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !389)
!413 = !DILocation(line: 338, column: 3, scope: !215, inlinedAt: !233)
!414 = !DILocalVariable(name: "output", arg: 1, scope: !415, file: !1, line: 309, type: !39)
!415 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_times_inplace", scope: !1, file: !1, line: 309, type: !416, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !39, !3}
!418 = !{!414, !419, !420, !421}
!419 = !DILocalVariable(name: "count1", arg: 2, scope: !415, file: !1, line: 309, type: !3)
!420 = !DILocalVariable(name: "t", scope: !415, file: !1, line: 312, type: !244)
!421 = !DILocalVariable(name: "_i", scope: !422, file: !1, line: 313, type: !3)
!422 = distinct !DILexicalBlock(scope: !415, file: !1, line: 313, column: 3)
!423 = !DILocation(line: 0, scope: !415, inlinedAt: !424)
!424 = distinct !DILocation(line: 339, column: 3, scope: !215, inlinedAt: !233)
!425 = !DILocation(line: 312, column: 3, scope: !415, inlinedAt: !424)
!426 = !DILocation(line: 312, column: 19, scope: !415, inlinedAt: !424)
!427 = !DILocation(line: 0, scope: !422, inlinedAt: !424)
!428 = !DILocation(line: 313, column: 3, scope: !422, inlinedAt: !424)
!429 = !DILocation(line: 315, column: 46, scope: !415, inlinedAt: !424)
!430 = !DILocation(line: 0, scope: !276, inlinedAt: !431)
!431 = distinct !DILocation(line: 315, column: 3, scope: !415, inlinedAt: !424)
!432 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !431)
!433 = !DILocation(line: 0, scope: !284, inlinedAt: !431)
!434 = !DILocation(line: 295, column: 5, scope: !304, inlinedAt: !431)
!435 = !DILocation(line: 294, column: 53, scope: !304, inlinedAt: !431)
!436 = !DILocation(line: 294, column: 37, scope: !304, inlinedAt: !431)
!437 = !DILocation(line: 294, column: 3, scope: !284, inlinedAt: !431)
!438 = distinct !{!438, !437, !439, !270, !271}
!439 = !DILocation(line: 295, column: 44, scope: !284, inlinedAt: !431)
!440 = !DILocation(line: 314, column: 5, scope: !441, inlinedAt: !424)
!441 = distinct !DILexicalBlock(scope: !422, file: !1, line: 313, column: 3)
!442 = !DILocation(line: 314, column: 13, scope: !441, inlinedAt: !424)
!443 = !DILocation(line: 313, column: 45, scope: !441, inlinedAt: !424)
!444 = !DILocation(line: 313, column: 29, scope: !441, inlinedAt: !424)
!445 = distinct !{!445, !428, !446, !270, !271}
!446 = !DILocation(line: 314, column: 57, scope: !422, inlinedAt: !424)
!447 = !DILocation(line: 316, column: 1, scope: !415, inlinedAt: !424)
!448 = !DILocation(line: 340, column: 3, scope: !215, inlinedAt: !233)
!449 = !DILocation(line: 0, scope: !237, inlinedAt: !450)
!450 = distinct !DILocation(line: 341, column: 3, scope: !215, inlinedAt: !233)
!451 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !450)
!452 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !450)
!453 = !DILocation(line: 0, scope: !255, inlinedAt: !450)
!454 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !450)
!455 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !450)
!456 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !450)
!457 = !DILocation(line: 0, scope: !276, inlinedAt: !458)
!458 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !450)
!459 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !458)
!460 = !DILocation(line: 0, scope: !284, inlinedAt: !458)
!461 = !DILocation(line: 295, column: 5, scope: !304, inlinedAt: !458)
!462 = !DILocation(line: 294, column: 53, scope: !304, inlinedAt: !458)
!463 = !DILocation(line: 294, column: 37, scope: !304, inlinedAt: !458)
!464 = !DILocation(line: 294, column: 3, scope: !284, inlinedAt: !458)
!465 = distinct !{!465, !464, !466, !270, !271}
!466 = !DILocation(line: 295, column: 44, scope: !284, inlinedAt: !458)
!467 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !450)
!468 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !450)
!469 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !450)
!470 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !450)
!471 = distinct !{!471, !454, !472, !270, !271}
!472 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !450)
!473 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !450)
!474 = !DILocation(line: 346, column: 3, scope: !215, inlinedAt: !233)
!475 = !DILocation(line: 0, scope: !237, inlinedAt: !476)
!476 = distinct !DILocation(line: 347, column: 3, scope: !215, inlinedAt: !233)
!477 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !476)
!478 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !476)
!479 = !DILocation(line: 0, scope: !255, inlinedAt: !476)
!480 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !476)
!481 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !476)
!482 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !476)
!483 = !DILocation(line: 0, scope: !276, inlinedAt: !484)
!484 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !476)
!485 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !484)
!486 = !DILocation(line: 0, scope: !284, inlinedAt: !484)
!487 = !DILocation(line: 295, column: 5, scope: !304, inlinedAt: !484)
!488 = !DILocation(line: 294, column: 53, scope: !304, inlinedAt: !484)
!489 = !DILocation(line: 294, column: 37, scope: !304, inlinedAt: !484)
!490 = !DILocation(line: 294, column: 3, scope: !284, inlinedAt: !484)
!491 = distinct !{!491, !490, !492, !270, !271}
!492 = !DILocation(line: 295, column: 44, scope: !284, inlinedAt: !484)
!493 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !476)
!494 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !476)
!495 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !476)
!496 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !476)
!497 = distinct !{!497, !480, !498, !270, !271}
!498 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !476)
!499 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !476)
!500 = !DILocation(line: 348, column: 3, scope: !215, inlinedAt: !233)
!501 = !DILocation(line: 0, scope: !415, inlinedAt: !502)
!502 = distinct !DILocation(line: 349, column: 3, scope: !215, inlinedAt: !233)
!503 = !DILocation(line: 312, column: 3, scope: !415, inlinedAt: !502)
!504 = !DILocation(line: 312, column: 19, scope: !415, inlinedAt: !502)
!505 = !DILocation(line: 0, scope: !422, inlinedAt: !502)
!506 = !DILocation(line: 313, column: 3, scope: !422, inlinedAt: !502)
!507 = !DILocation(line: 315, column: 46, scope: !415, inlinedAt: !502)
!508 = !DILocation(line: 0, scope: !276, inlinedAt: !509)
!509 = distinct !DILocation(line: 315, column: 3, scope: !415, inlinedAt: !502)
!510 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !509)
!511 = !DILocation(line: 0, scope: !284, inlinedAt: !509)
!512 = !DILocation(line: 295, column: 5, scope: !304, inlinedAt: !509)
!513 = !DILocation(line: 294, column: 53, scope: !304, inlinedAt: !509)
!514 = !DILocation(line: 294, column: 37, scope: !304, inlinedAt: !509)
!515 = !DILocation(line: 294, column: 3, scope: !284, inlinedAt: !509)
!516 = distinct !{!516, !515, !517, !270, !271}
!517 = !DILocation(line: 295, column: 44, scope: !284, inlinedAt: !509)
!518 = !DILocation(line: 314, column: 5, scope: !441, inlinedAt: !502)
!519 = !DILocation(line: 314, column: 13, scope: !441, inlinedAt: !502)
!520 = !DILocation(line: 313, column: 45, scope: !441, inlinedAt: !502)
!521 = !DILocation(line: 313, column: 29, scope: !441, inlinedAt: !502)
!522 = distinct !{!522, !506, !523, !270, !271}
!523 = !DILocation(line: 314, column: 57, scope: !422, inlinedAt: !502)
!524 = !DILocation(line: 316, column: 1, scope: !415, inlinedAt: !502)
!525 = !DILocation(line: 350, column: 3, scope: !215, inlinedAt: !233)
!526 = !DILocation(line: 0, scope: !415, inlinedAt: !527)
!527 = distinct !DILocation(line: 351, column: 3, scope: !215, inlinedAt: !233)
!528 = !DILocation(line: 312, column: 3, scope: !415, inlinedAt: !527)
!529 = !DILocation(line: 312, column: 19, scope: !415, inlinedAt: !527)
!530 = !DILocation(line: 0, scope: !422, inlinedAt: !527)
!531 = !DILocation(line: 313, column: 3, scope: !422, inlinedAt: !527)
!532 = !DILocation(line: 315, column: 46, scope: !415, inlinedAt: !527)
!533 = !DILocation(line: 0, scope: !276, inlinedAt: !534)
!534 = distinct !DILocation(line: 315, column: 3, scope: !415, inlinedAt: !527)
!535 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !534)
!536 = !DILocation(line: 0, scope: !284, inlinedAt: !534)
!537 = !DILocation(line: 295, column: 5, scope: !304, inlinedAt: !534)
!538 = !DILocation(line: 294, column: 53, scope: !304, inlinedAt: !534)
!539 = !DILocation(line: 294, column: 37, scope: !304, inlinedAt: !534)
!540 = !DILocation(line: 294, column: 3, scope: !284, inlinedAt: !534)
!541 = distinct !{!541, !540, !542, !270, !271}
!542 = !DILocation(line: 295, column: 44, scope: !284, inlinedAt: !534)
!543 = !DILocation(line: 314, column: 5, scope: !441, inlinedAt: !527)
!544 = !DILocation(line: 314, column: 13, scope: !441, inlinedAt: !527)
!545 = !DILocation(line: 313, column: 45, scope: !441, inlinedAt: !527)
!546 = !DILocation(line: 313, column: 29, scope: !441, inlinedAt: !527)
!547 = distinct !{!547, !531, !548, !270, !271}
!548 = !DILocation(line: 314, column: 57, scope: !422, inlinedAt: !527)
!549 = !DILocation(line: 800, column: 21, scope: !194, inlinedAt: !205)
!550 = !DILocation(line: 801, column: 22, scope: !194, inlinedAt: !205)
!551 = !DILocation(line: 316, column: 1, scope: !415, inlinedAt: !527)
!552 = !DILocation(line: 352, column: 3, scope: !215, inlinedAt: !233)
!553 = !DILocation(line: 353, column: 1, scope: !215, inlinedAt: !233)
!554 = !DILocalVariable(name: "output", arg: 1, scope: !555, file: !1, line: 466, type: !39)
!555 = distinct !DISubprogram(name: "Hacl_Bignum_fmul", scope: !1, file: !1, line: 466, type: !556, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !39, !39, !39}
!558 = !{!554, !559, !560}
!559 = !DILocalVariable(name: "a", arg: 2, scope: !555, file: !1, line: 466, type: !39)
!560 = !DILocalVariable(name: "b", arg: 3, scope: !555, file: !1, line: 466, type: !39)
!561 = !DILocation(line: 0, scope: !555, inlinedAt: !562)
!562 = distinct !DILocation(line: 803, column: 3, scope: !194, inlinedAt: !205)
!563 = !DILocation(line: 468, column: 3, scope: !555, inlinedAt: !562)
!564 = !DILocalVariable(name: "output", arg: 1, scope: !565, file: !1, line: 787, type: !29)
!565 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract", scope: !1, file: !1, line: 787, type: !195, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !566)
!566 = !{!564, !567}
!567 = !DILocalVariable(name: "input", arg: 2, scope: !565, file: !1, line: 787, type: !39)
!568 = !DILocation(line: 0, scope: !565, inlinedAt: !569)
!569 = distinct !DILocation(line: 804, column: 3, scope: !194, inlinedAt: !205)
!570 = !DILocalVariable(name: "input", arg: 1, scope: !571, file: !1, line: 701, type: !39)
!571 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_first_carry_full", scope: !1, file: !1, line: 701, type: !572, scopeLine: 702, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !39}
!574 = !{!570}
!575 = !DILocation(line: 0, scope: !571, inlinedAt: !576)
!576 = distinct !DILocation(line: 789, column: 3, scope: !565, inlinedAt: !569)
!577 = !DILocalVariable(name: "input", arg: 1, scope: !578, file: !1, line: 679, type: !39)
!578 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_first_carry_pass", scope: !1, file: !1, line: 679, type: !572, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !579)
!579 = !{!577, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!580 = !DILocalVariable(name: "t0", scope: !578, file: !1, line: 681, type: !8)
!581 = !DILocalVariable(name: "t1", scope: !578, file: !1, line: 682, type: !8)
!582 = !DILocalVariable(name: "t2", scope: !578, file: !1, line: 683, type: !8)
!583 = !DILocalVariable(name: "t3", scope: !578, file: !1, line: 684, type: !8)
!584 = !DILocalVariable(name: "t4", scope: !578, file: !1, line: 685, type: !8)
!585 = !DILocalVariable(name: "t1_", scope: !578, file: !1, line: 686, type: !8)
!586 = !DILocalVariable(name: "t0_", scope: !578, file: !1, line: 687, type: !8)
!587 = !DILocalVariable(name: "t2_", scope: !578, file: !1, line: 688, type: !8)
!588 = !DILocalVariable(name: "t1__", scope: !578, file: !1, line: 689, type: !8)
!589 = !DILocalVariable(name: "t3_", scope: !578, file: !1, line: 690, type: !8)
!590 = !DILocalVariable(name: "t2__", scope: !578, file: !1, line: 691, type: !8)
!591 = !DILocalVariable(name: "t4_", scope: !578, file: !1, line: 692, type: !8)
!592 = !DILocalVariable(name: "t3__", scope: !578, file: !1, line: 693, type: !8)
!593 = !DILocation(line: 0, scope: !578, inlinedAt: !594)
!594 = distinct !DILocation(line: 703, column: 3, scope: !571, inlinedAt: !576)
!595 = !DILocation(line: 681, column: 17, scope: !578, inlinedAt: !594)
!596 = !DILocation(line: 682, column: 17, scope: !578, inlinedAt: !594)
!597 = !DILocation(line: 683, column: 17, scope: !578, inlinedAt: !594)
!598 = !DILocation(line: 684, column: 17, scope: !578, inlinedAt: !594)
!599 = !DILocation(line: 685, column: 17, scope: !578, inlinedAt: !594)
!600 = !DILocation(line: 686, column: 27, scope: !578, inlinedAt: !594)
!601 = !DILocation(line: 686, column: 21, scope: !578, inlinedAt: !594)
!602 = !DILocation(line: 687, column: 21, scope: !578, inlinedAt: !594)
!603 = !DILocation(line: 688, column: 28, scope: !578, inlinedAt: !594)
!604 = !DILocation(line: 688, column: 21, scope: !578, inlinedAt: !594)
!605 = !DILocation(line: 689, column: 23, scope: !578, inlinedAt: !594)
!606 = !DILocation(line: 690, column: 28, scope: !578, inlinedAt: !594)
!607 = !DILocation(line: 690, column: 21, scope: !578, inlinedAt: !594)
!608 = !DILocation(line: 691, column: 23, scope: !578, inlinedAt: !594)
!609 = !DILocation(line: 692, column: 28, scope: !578, inlinedAt: !594)
!610 = !DILocation(line: 692, column: 21, scope: !578, inlinedAt: !594)
!611 = !DILocation(line: 693, column: 23, scope: !578, inlinedAt: !594)
!612 = !DILocation(line: 694, column: 13, scope: !578, inlinedAt: !594)
!613 = !DILocation(line: 695, column: 13, scope: !578, inlinedAt: !594)
!614 = !DILocation(line: 696, column: 13, scope: !578, inlinedAt: !594)
!615 = !DILocation(line: 697, column: 13, scope: !578, inlinedAt: !594)
!616 = !DILocalVariable(name: "b", arg: 1, scope: !617, file: !1, line: 27, type: !39)
!617 = distinct !DISubprogram(name: "Hacl_Bignum_Modulo_carry_top", scope: !1, file: !1, line: 27, type: !572, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !618)
!618 = !{!616, !619, !620, !621, !622}
!619 = !DILocalVariable(name: "b4", scope: !617, file: !1, line: 29, type: !8)
!620 = !DILocalVariable(name: "b0", scope: !617, file: !1, line: 30, type: !8)
!621 = !DILocalVariable(name: "b4_", scope: !617, file: !1, line: 31, type: !8)
!622 = !DILocalVariable(name: "b0_", scope: !617, file: !1, line: 32, type: !8)
!623 = !DILocation(line: 0, scope: !617, inlinedAt: !624)
!624 = distinct !DILocation(line: 704, column: 3, scope: !571, inlinedAt: !576)
!625 = !DILocation(line: 31, column: 21, scope: !617, inlinedAt: !624)
!626 = !DILocation(line: 32, column: 43, scope: !617, inlinedAt: !624)
!627 = !DILocation(line: 32, column: 37, scope: !617, inlinedAt: !624)
!628 = !DILocation(line: 32, column: 21, scope: !617, inlinedAt: !624)
!629 = !DILocation(line: 33, column: 9, scope: !617, inlinedAt: !624)
!630 = !DILocalVariable(name: "input", arg: 1, scope: !631, file: !1, line: 729, type: !39)
!631 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_second_carry_full", scope: !1, file: !1, line: 729, type: !572, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !632)
!632 = !{!630, !633, !634, !635, !636}
!633 = !DILocalVariable(name: "i0", scope: !631, file: !1, line: 733, type: !8)
!634 = !DILocalVariable(name: "i1", scope: !631, file: !1, line: 734, type: !8)
!635 = !DILocalVariable(name: "i0_", scope: !631, file: !1, line: 735, type: !8)
!636 = !DILocalVariable(name: "i1_", scope: !631, file: !1, line: 736, type: !8)
!637 = !DILocation(line: 0, scope: !631, inlinedAt: !638)
!638 = distinct !DILocation(line: 790, column: 3, scope: !565, inlinedAt: !569)
!639 = !DILocalVariable(name: "input", arg: 1, scope: !640, file: !1, line: 707, type: !39)
!640 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_second_carry_pass", scope: !1, file: !1, line: 707, type: !572, scopeLine: 708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !641)
!641 = !{!639, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!642 = !DILocalVariable(name: "t0", scope: !640, file: !1, line: 709, type: !8)
!643 = !DILocalVariable(name: "t1", scope: !640, file: !1, line: 710, type: !8)
!644 = !DILocalVariable(name: "t2", scope: !640, file: !1, line: 711, type: !8)
!645 = !DILocalVariable(name: "t3", scope: !640, file: !1, line: 712, type: !8)
!646 = !DILocalVariable(name: "t4", scope: !640, file: !1, line: 713, type: !8)
!647 = !DILocalVariable(name: "t1_", scope: !640, file: !1, line: 714, type: !8)
!648 = !DILocalVariable(name: "t0_", scope: !640, file: !1, line: 715, type: !8)
!649 = !DILocalVariable(name: "t2_", scope: !640, file: !1, line: 716, type: !8)
!650 = !DILocalVariable(name: "t1__", scope: !640, file: !1, line: 717, type: !8)
!651 = !DILocalVariable(name: "t3_", scope: !640, file: !1, line: 718, type: !8)
!652 = !DILocalVariable(name: "t2__", scope: !640, file: !1, line: 719, type: !8)
!653 = !DILocalVariable(name: "t4_", scope: !640, file: !1, line: 720, type: !8)
!654 = !DILocalVariable(name: "t3__", scope: !640, file: !1, line: 721, type: !8)
!655 = !DILocation(line: 0, scope: !640, inlinedAt: !656)
!656 = distinct !DILocation(line: 731, column: 3, scope: !631, inlinedAt: !638)
!657 = !DILocation(line: 714, column: 27, scope: !640, inlinedAt: !656)
!658 = !DILocation(line: 714, column: 21, scope: !640, inlinedAt: !656)
!659 = !DILocation(line: 715, column: 21, scope: !640, inlinedAt: !656)
!660 = !DILocation(line: 716, column: 28, scope: !640, inlinedAt: !656)
!661 = !DILocation(line: 716, column: 21, scope: !640, inlinedAt: !656)
!662 = !DILocation(line: 717, column: 23, scope: !640, inlinedAt: !656)
!663 = !DILocation(line: 718, column: 28, scope: !640, inlinedAt: !656)
!664 = !DILocation(line: 718, column: 21, scope: !640, inlinedAt: !656)
!665 = !DILocation(line: 719, column: 23, scope: !640, inlinedAt: !656)
!666 = !DILocation(line: 720, column: 28, scope: !640, inlinedAt: !656)
!667 = !DILocation(line: 720, column: 21, scope: !640, inlinedAt: !656)
!668 = !DILocation(line: 721, column: 23, scope: !640, inlinedAt: !656)
!669 = !DILocation(line: 722, column: 13, scope: !640, inlinedAt: !656)
!670 = !DILocation(line: 723, column: 13, scope: !640, inlinedAt: !656)
!671 = !DILocation(line: 724, column: 13, scope: !640, inlinedAt: !656)
!672 = !DILocation(line: 725, column: 13, scope: !640, inlinedAt: !656)
!673 = !DILocation(line: 0, scope: !617, inlinedAt: !674)
!674 = distinct !DILocation(line: 732, column: 3, scope: !631, inlinedAt: !638)
!675 = !DILocation(line: 31, column: 21, scope: !617, inlinedAt: !674)
!676 = !DILocation(line: 32, column: 43, scope: !617, inlinedAt: !674)
!677 = !DILocation(line: 32, column: 37, scope: !617, inlinedAt: !674)
!678 = !DILocation(line: 32, column: 21, scope: !617, inlinedAt: !674)
!679 = !DILocation(line: 33, column: 9, scope: !617, inlinedAt: !674)
!680 = !DILocation(line: 735, column: 21, scope: !631, inlinedAt: !638)
!681 = !DILocation(line: 736, column: 27, scope: !631, inlinedAt: !638)
!682 = !DILocation(line: 736, column: 21, scope: !631, inlinedAt: !638)
!683 = !DILocation(line: 737, column: 13, scope: !631, inlinedAt: !638)
!684 = !DILocation(line: 738, column: 13, scope: !631, inlinedAt: !638)
!685 = !DILocalVariable(name: "input", arg: 1, scope: !686, file: !1, line: 741, type: !39)
!686 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_trim", scope: !1, file: !1, line: 741, type: !572, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !687)
!687 = !{!685, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!688 = !DILocalVariable(name: "a0", scope: !686, file: !1, line: 743, type: !8)
!689 = !DILocalVariable(name: "a1", scope: !686, file: !1, line: 744, type: !8)
!690 = !DILocalVariable(name: "a2", scope: !686, file: !1, line: 745, type: !8)
!691 = !DILocalVariable(name: "a3", scope: !686, file: !1, line: 746, type: !8)
!692 = !DILocalVariable(name: "a4", scope: !686, file: !1, line: 747, type: !8)
!693 = !DILocalVariable(name: "mask0", scope: !686, file: !1, line: 748, type: !8)
!694 = !DILocalVariable(name: "mask1", scope: !686, file: !1, line: 749, type: !8)
!695 = !DILocalVariable(name: "mask2", scope: !686, file: !1, line: 750, type: !8)
!696 = !DILocalVariable(name: "mask3", scope: !686, file: !1, line: 751, type: !8)
!697 = !DILocalVariable(name: "mask4", scope: !686, file: !1, line: 752, type: !8)
!698 = !DILocalVariable(name: "mask", scope: !686, file: !1, line: 753, type: !8)
!699 = !DILocalVariable(name: "a0_", scope: !686, file: !1, line: 754, type: !8)
!700 = !DILocalVariable(name: "a1_", scope: !686, file: !1, line: 755, type: !8)
!701 = !DILocalVariable(name: "a2_", scope: !686, file: !1, line: 756, type: !8)
!702 = !DILocalVariable(name: "a3_", scope: !686, file: !1, line: 757, type: !8)
!703 = !DILocalVariable(name: "a4_", scope: !686, file: !1, line: 758, type: !8)
!704 = !DILocation(line: 0, scope: !686, inlinedAt: !705)
!705 = distinct !DILocation(line: 791, column: 3, scope: !565, inlinedAt: !569)
!706 = !DILocalVariable(name: "x", arg: 1, scope: !707, file: !708, line: 168, type: !8)
!707 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !708, file: !708, line: 168, type: !709, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !711)
!708 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!709 = !DISubroutineType(types: !710)
!710 = !{!8, !8, !8}
!711 = !{!706, !712, !713, !714}
!712 = !DILocalVariable(name: "y", arg: 2, scope: !707, file: !708, line: 168, type: !8)
!713 = !DILocalVariable(name: "low63", scope: !707, file: !708, line: 169, type: !8)
!714 = !DILocalVariable(name: "high_bit", scope: !707, file: !708, line: 173, type: !8)
!715 = !DILocation(line: 0, scope: !707, inlinedAt: !716)
!716 = distinct !DILocation(line: 748, column: 20, scope: !686, inlinedAt: !705)
!717 = !DILocation(line: 170, column: 74, scope: !707, inlinedAt: !716)
!718 = !DILocation(line: 177, column: 16, scope: !707, inlinedAt: !716)
!719 = !DILocalVariable(name: "x", arg: 1, scope: !720, file: !708, line: 157, type: !8)
!720 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !708, file: !708, line: 157, type: !709, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !721)
!721 = !{!719, !722}
!722 = !DILocalVariable(name: "y", arg: 2, scope: !720, file: !708, line: 157, type: !8)
!723 = !DILocation(line: 0, scope: !720, inlinedAt: !724)
!724 = distinct !DILocation(line: 749, column: 20, scope: !686, inlinedAt: !705)
!725 = !DILocation(line: 158, column: 7, scope: !720, inlinedAt: !724)
!726 = !DILocation(line: 159, column: 10, scope: !720, inlinedAt: !724)
!727 = !DILocation(line: 159, column: 5, scope: !720, inlinedAt: !724)
!728 = !DILocation(line: 160, column: 10, scope: !720, inlinedAt: !724)
!729 = !DILocation(line: 160, column: 5, scope: !720, inlinedAt: !724)
!730 = !DILocation(line: 161, column: 10, scope: !720, inlinedAt: !724)
!731 = !DILocation(line: 161, column: 5, scope: !720, inlinedAt: !724)
!732 = !DILocation(line: 162, column: 10, scope: !720, inlinedAt: !724)
!733 = !DILocation(line: 162, column: 5, scope: !720, inlinedAt: !724)
!734 = !DILocation(line: 163, column: 10, scope: !720, inlinedAt: !724)
!735 = !DILocation(line: 163, column: 5, scope: !720, inlinedAt: !724)
!736 = !DILocation(line: 164, column: 10, scope: !720, inlinedAt: !724)
!737 = !DILocation(line: 164, column: 5, scope: !720, inlinedAt: !724)
!738 = !DILocation(line: 0, scope: !720, inlinedAt: !739)
!739 = distinct !DILocation(line: 750, column: 20, scope: !686, inlinedAt: !705)
!740 = !DILocation(line: 158, column: 7, scope: !720, inlinedAt: !739)
!741 = !DILocation(line: 159, column: 10, scope: !720, inlinedAt: !739)
!742 = !DILocation(line: 159, column: 5, scope: !720, inlinedAt: !739)
!743 = !DILocation(line: 160, column: 10, scope: !720, inlinedAt: !739)
!744 = !DILocation(line: 160, column: 5, scope: !720, inlinedAt: !739)
!745 = !DILocation(line: 161, column: 10, scope: !720, inlinedAt: !739)
!746 = !DILocation(line: 161, column: 5, scope: !720, inlinedAt: !739)
!747 = !DILocation(line: 162, column: 10, scope: !720, inlinedAt: !739)
!748 = !DILocation(line: 162, column: 5, scope: !720, inlinedAt: !739)
!749 = !DILocation(line: 163, column: 10, scope: !720, inlinedAt: !739)
!750 = !DILocation(line: 163, column: 5, scope: !720, inlinedAt: !739)
!751 = !DILocation(line: 164, column: 10, scope: !720, inlinedAt: !739)
!752 = !DILocation(line: 164, column: 5, scope: !720, inlinedAt: !739)
!753 = !DILocation(line: 0, scope: !720, inlinedAt: !754)
!754 = distinct !DILocation(line: 751, column: 20, scope: !686, inlinedAt: !705)
!755 = !DILocation(line: 158, column: 7, scope: !720, inlinedAt: !754)
!756 = !DILocation(line: 159, column: 10, scope: !720, inlinedAt: !754)
!757 = !DILocation(line: 159, column: 5, scope: !720, inlinedAt: !754)
!758 = !DILocation(line: 160, column: 10, scope: !720, inlinedAt: !754)
!759 = !DILocation(line: 160, column: 5, scope: !720, inlinedAt: !754)
!760 = !DILocation(line: 161, column: 10, scope: !720, inlinedAt: !754)
!761 = !DILocation(line: 161, column: 5, scope: !720, inlinedAt: !754)
!762 = !DILocation(line: 162, column: 10, scope: !720, inlinedAt: !754)
!763 = !DILocation(line: 162, column: 5, scope: !720, inlinedAt: !754)
!764 = !DILocation(line: 163, column: 10, scope: !720, inlinedAt: !754)
!765 = !DILocation(line: 163, column: 5, scope: !720, inlinedAt: !754)
!766 = !DILocation(line: 164, column: 10, scope: !720, inlinedAt: !754)
!767 = !DILocation(line: 164, column: 5, scope: !720, inlinedAt: !754)
!768 = !DILocation(line: 0, scope: !720, inlinedAt: !769)
!769 = distinct !DILocation(line: 752, column: 20, scope: !686, inlinedAt: !705)
!770 = !DILocation(line: 158, column: 7, scope: !720, inlinedAt: !769)
!771 = !DILocation(line: 159, column: 10, scope: !720, inlinedAt: !769)
!772 = !DILocation(line: 159, column: 5, scope: !720, inlinedAt: !769)
!773 = !DILocation(line: 160, column: 10, scope: !720, inlinedAt: !769)
!774 = !DILocation(line: 160, column: 5, scope: !720, inlinedAt: !769)
!775 = !DILocation(line: 161, column: 10, scope: !720, inlinedAt: !769)
!776 = !DILocation(line: 161, column: 5, scope: !720, inlinedAt: !769)
!777 = !DILocation(line: 162, column: 10, scope: !720, inlinedAt: !769)
!778 = !DILocation(line: 162, column: 5, scope: !720, inlinedAt: !769)
!779 = !DILocation(line: 163, column: 10, scope: !720, inlinedAt: !769)
!780 = !DILocation(line: 163, column: 5, scope: !720, inlinedAt: !769)
!781 = !DILocation(line: 164, column: 10, scope: !720, inlinedAt: !769)
!782 = !DILocation(line: 164, column: 5, scope: !720, inlinedAt: !769)
!783 = !DILocation(line: 753, column: 28, scope: !686, inlinedAt: !705)
!784 = !DILocation(line: 753, column: 37, scope: !686, inlinedAt: !705)
!785 = !DILocation(line: 753, column: 46, scope: !686, inlinedAt: !705)
!786 = !DILocation(line: 753, column: 55, scope: !686, inlinedAt: !705)
!787 = !DILocation(line: 754, column: 51, scope: !686, inlinedAt: !705)
!788 = !DILocation(line: 754, column: 21, scope: !686, inlinedAt: !705)
!789 = !DILocation(line: 755, column: 51, scope: !686, inlinedAt: !705)
!790 = !DILocation(line: 755, column: 21, scope: !686, inlinedAt: !705)
!791 = !DILocation(line: 756, column: 21, scope: !686, inlinedAt: !705)
!792 = !DILocation(line: 757, column: 21, scope: !686, inlinedAt: !705)
!793 = !DILocation(line: 758, column: 21, scope: !686, inlinedAt: !705)
!794 = !DILocation(line: 759, column: 13, scope: !686, inlinedAt: !705)
!795 = !DILocation(line: 760, column: 13, scope: !686, inlinedAt: !705)
!796 = !DILocation(line: 761, column: 13, scope: !686, inlinedAt: !705)
!797 = !DILocation(line: 762, column: 13, scope: !686, inlinedAt: !705)
!798 = !DILocation(line: 763, column: 13, scope: !686, inlinedAt: !705)
!799 = !DILocalVariable(name: "output", arg: 1, scope: !800, file: !1, line: 766, type: !29)
!800 = distinct !DISubprogram(name: "Hacl_EC_Format_fcontract_store", scope: !1, file: !1, line: 766, type: !195, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !801)
!801 = !{!799, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815}
!802 = !DILocalVariable(name: "input", arg: 2, scope: !800, file: !1, line: 766, type: !39)
!803 = !DILocalVariable(name: "t0", scope: !800, file: !1, line: 768, type: !8)
!804 = !DILocalVariable(name: "t1", scope: !800, file: !1, line: 769, type: !8)
!805 = !DILocalVariable(name: "t2", scope: !800, file: !1, line: 770, type: !8)
!806 = !DILocalVariable(name: "t3", scope: !800, file: !1, line: 771, type: !8)
!807 = !DILocalVariable(name: "t4", scope: !800, file: !1, line: 772, type: !8)
!808 = !DILocalVariable(name: "o0", scope: !800, file: !1, line: 773, type: !8)
!809 = !DILocalVariable(name: "o1", scope: !800, file: !1, line: 774, type: !8)
!810 = !DILocalVariable(name: "o2", scope: !800, file: !1, line: 775, type: !8)
!811 = !DILocalVariable(name: "o3", scope: !800, file: !1, line: 776, type: !8)
!812 = !DILocalVariable(name: "b0", scope: !800, file: !1, line: 777, type: !29)
!813 = !DILocalVariable(name: "b1", scope: !800, file: !1, line: 778, type: !29)
!814 = !DILocalVariable(name: "b2", scope: !800, file: !1, line: 779, type: !29)
!815 = !DILocalVariable(name: "b3", scope: !800, file: !1, line: 780, type: !29)
!816 = !DILocation(line: 0, scope: !800, inlinedAt: !817)
!817 = distinct !DILocation(line: 792, column: 3, scope: !565, inlinedAt: !569)
!818 = !DILocation(line: 773, column: 20, scope: !800, inlinedAt: !817)
!819 = !DILocation(line: 773, column: 37, scope: !800, inlinedAt: !817)
!820 = !DILocation(line: 774, column: 20, scope: !800, inlinedAt: !817)
!821 = !DILocation(line: 774, column: 42, scope: !800, inlinedAt: !817)
!822 = !DILocation(line: 774, column: 37, scope: !800, inlinedAt: !817)
!823 = !DILocation(line: 775, column: 20, scope: !800, inlinedAt: !817)
!824 = !DILocation(line: 775, column: 42, scope: !800, inlinedAt: !817)
!825 = !DILocation(line: 775, column: 37, scope: !800, inlinedAt: !817)
!826 = !DILocation(line: 776, column: 20, scope: !800, inlinedAt: !817)
!827 = !DILocation(line: 776, column: 42, scope: !800, inlinedAt: !817)
!828 = !DILocation(line: 776, column: 37, scope: !800, inlinedAt: !817)
!829 = !DILocation(line: 778, column: 24, scope: !800, inlinedAt: !817)
!830 = !DILocation(line: 779, column: 24, scope: !800, inlinedAt: !817)
!831 = !DILocation(line: 780, column: 24, scope: !800, inlinedAt: !817)
!832 = !DILocalVariable(name: "b", arg: 1, scope: !833, file: !87, line: 357, type: !29)
!833 = distinct !DISubprogram(name: "store64", scope: !87, file: !87, line: 357, type: !834, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !29, !8}
!836 = !{!832, !837}
!837 = !DILocalVariable(name: "i", arg: 2, scope: !833, file: !87, line: 357, type: !8)
!838 = !DILocation(line: 0, scope: !833, inlinedAt: !839)
!839 = distinct !DILocation(line: 781, column: 3, scope: !800, inlinedAt: !817)
!840 = !DILocation(line: 357, column: 54, scope: !833, inlinedAt: !839)
!841 = !DILocation(line: 0, scope: !833, inlinedAt: !842)
!842 = distinct !DILocation(line: 782, column: 3, scope: !800, inlinedAt: !817)
!843 = !DILocation(line: 357, column: 54, scope: !833, inlinedAt: !842)
!844 = !DILocation(line: 0, scope: !833, inlinedAt: !845)
!845 = distinct !DILocation(line: 783, column: 3, scope: !800, inlinedAt: !817)
!846 = !DILocation(line: 357, column: 54, scope: !833, inlinedAt: !845)
!847 = !DILocation(line: 0, scope: !833, inlinedAt: !848)
!848 = distinct !DILocation(line: 784, column: 3, scope: !800, inlinedAt: !817)
!849 = !DILocation(line: 357, column: 54, scope: !833, inlinedAt: !848)
!850 = !DILocation(line: 805, column: 1, scope: !194, inlinedAt: !205)
!851 = !DILocation(line: 831, column: 1, scope: !26)
!852 = distinct !DISubprogram(name: "Hacl_Curve25519_crypto_scalarmult", scope: !1, file: !1, line: 833, type: !27, scopeLine: 834, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !853)
!853 = !{!854, !855, !856}
!854 = !DILocalVariable(name: "mypublic", arg: 1, scope: !852, file: !1, line: 833, type: !29)
!855 = !DILocalVariable(name: "secret", arg: 2, scope: !852, file: !1, line: 833, type: !29)
!856 = !DILocalVariable(name: "basepoint", arg: 3, scope: !852, file: !1, line: 833, type: !29)
!857 = !DILocation(line: 0, scope: !852)
!858 = !DILocation(line: 835, column: 3, scope: !852)
!859 = !DILocation(line: 836, column: 1, scope: !852)
!860 = distinct !DISubprogram(name: "Hacl_EC_Ladder_BigLoop_cmult_big_loop", scope: !1, file: !1, line: 624, type: !861, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !29, !39, !39, !39, !39, !39, !3}
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !874}
!864 = !DILocalVariable(name: "n1", arg: 1, scope: !860, file: !1, line: 625, type: !29)
!865 = !DILocalVariable(name: "nq", arg: 2, scope: !860, file: !1, line: 626, type: !39)
!866 = !DILocalVariable(name: "nqpq", arg: 3, scope: !860, file: !1, line: 627, type: !39)
!867 = !DILocalVariable(name: "nq2", arg: 4, scope: !860, file: !1, line: 628, type: !39)
!868 = !DILocalVariable(name: "nqpq2", arg: 5, scope: !860, file: !1, line: 629, type: !39)
!869 = !DILocalVariable(name: "q", arg: 6, scope: !860, file: !1, line: 630, type: !39)
!870 = !DILocalVariable(name: "i", arg: 7, scope: !860, file: !1, line: 631, type: !3)
!871 = !DILocalVariable(name: "i1", scope: !872, file: !1, line: 636, type: !3)
!872 = distinct !DILexicalBlock(scope: !873, file: !1, line: 635, column: 3)
!873 = distinct !DILexicalBlock(scope: !860, file: !1, line: 634, column: 7)
!874 = !DILocalVariable(name: "byte", scope: !872, file: !1, line: 637, type: !11)
!875 = !DILocation(line: 0, scope: !860)
!876 = !DILocation(line: 634, column: 11, scope: !873)
!877 = !DILocation(line: 634, column: 7, scope: !860)
!878 = !DILocation(line: 636, column: 21, scope: !872)
!879 = !DILocation(line: 0, scope: !872)
!880 = !DILocation(line: 637, column: 20, scope: !872)
!881 = !DILocation(line: 638, column: 5, scope: !872)
!882 = !DILocation(line: 639, column: 5, scope: !872)
!883 = !DILocation(line: 640, column: 3, scope: !872)
!884 = !DILocation(line: 641, column: 1, scope: !860)
!885 = distinct !DISubprogram(name: "Hacl_EC_Ladder_SmallLoop_cmult_small_loop", scope: !1, file: !1, line: 604, type: !886, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !39, !39, !39, !39, !39, !11, !3}
!888 = !{!889, !890, !891, !892, !893, !894, !895, !896, !899}
!889 = !DILocalVariable(name: "nq", arg: 1, scope: !885, file: !1, line: 605, type: !39)
!890 = !DILocalVariable(name: "nqpq", arg: 2, scope: !885, file: !1, line: 606, type: !39)
!891 = !DILocalVariable(name: "nq2", arg: 3, scope: !885, file: !1, line: 607, type: !39)
!892 = !DILocalVariable(name: "nqpq2", arg: 4, scope: !885, file: !1, line: 608, type: !39)
!893 = !DILocalVariable(name: "q", arg: 5, scope: !885, file: !1, line: 609, type: !39)
!894 = !DILocalVariable(name: "byt", arg: 6, scope: !885, file: !1, line: 610, type: !11)
!895 = !DILocalVariable(name: "i", arg: 7, scope: !885, file: !1, line: 611, type: !3)
!896 = !DILocalVariable(name: "i_", scope: !897, file: !1, line: 616, type: !3)
!897 = distinct !DILexicalBlock(scope: !898, file: !1, line: 615, column: 3)
!898 = distinct !DILexicalBlock(scope: !885, file: !1, line: 614, column: 7)
!899 = !DILocalVariable(name: "byt_", scope: !897, file: !1, line: 618, type: !11)
!900 = !DILocation(line: 0, scope: !885)
!901 = !DILocation(line: 614, column: 11, scope: !898)
!902 = !DILocation(line: 614, column: 7, scope: !885)
!903 = !DILocation(line: 616, column: 21, scope: !897)
!904 = !DILocation(line: 0, scope: !897)
!905 = !DILocalVariable(name: "nq", arg: 1, scope: !906, file: !1, line: 590, type: !39)
!906 = distinct !DISubprogram(name: "Hacl_EC_Ladder_SmallLoop_cmult_small_loop_double_step", scope: !1, file: !1, line: 589, type: !907, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !39, !39, !39, !39, !39, !11}
!909 = !{!905, !910, !911, !912, !913, !914, !915}
!910 = !DILocalVariable(name: "nqpq", arg: 2, scope: !906, file: !1, line: 591, type: !39)
!911 = !DILocalVariable(name: "nq2", arg: 3, scope: !906, file: !1, line: 592, type: !39)
!912 = !DILocalVariable(name: "nqpq2", arg: 4, scope: !906, file: !1, line: 593, type: !39)
!913 = !DILocalVariable(name: "q", arg: 5, scope: !906, file: !1, line: 594, type: !39)
!914 = !DILocalVariable(name: "byt", arg: 6, scope: !906, file: !1, line: 595, type: !11)
!915 = !DILocalVariable(name: "byt1", scope: !906, file: !1, line: 599, type: !11)
!916 = !DILocation(line: 0, scope: !906, inlinedAt: !917)
!917 = distinct !DILocation(line: 617, column: 5, scope: !897)
!918 = !DILocation(line: 598, column: 3, scope: !906, inlinedAt: !917)
!919 = !DILocation(line: 599, column: 22, scope: !906, inlinedAt: !917)
!920 = !DILocation(line: 600, column: 3, scope: !906, inlinedAt: !917)
!921 = !DILocation(line: 618, column: 24, scope: !897)
!922 = !DILocation(line: 619, column: 5, scope: !897)
!923 = !DILocation(line: 620, column: 3, scope: !897)
!924 = !DILocation(line: 621, column: 1, scope: !885)
!925 = distinct !DISubprogram(name: "Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step", scope: !1, file: !1, line: 572, type: !907, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !926)
!926 = !{!927, !928, !929, !930, !931, !932, !933, !934}
!927 = !DILocalVariable(name: "nq", arg: 1, scope: !925, file: !1, line: 573, type: !39)
!928 = !DILocalVariable(name: "nqpq", arg: 2, scope: !925, file: !1, line: 574, type: !39)
!929 = !DILocalVariable(name: "nq2", arg: 3, scope: !925, file: !1, line: 575, type: !39)
!930 = !DILocalVariable(name: "nqpq2", arg: 4, scope: !925, file: !1, line: 576, type: !39)
!931 = !DILocalVariable(name: "q", arg: 5, scope: !925, file: !1, line: 577, type: !39)
!932 = !DILocalVariable(name: "byt", arg: 6, scope: !925, file: !1, line: 578, type: !11)
!933 = !DILocalVariable(name: "bit", scope: !925, file: !1, line: 581, type: !8)
!934 = !DILocalVariable(name: "bit0", scope: !925, file: !1, line: 584, type: !8)
!935 = !DILocation(line: 0, scope: !925)
!936 = !DILocation(line: 581, column: 33, scope: !925)
!937 = !DILocalVariable(name: "a", arg: 1, scope: !938, file: !1, line: 500, type: !39)
!938 = distinct !DISubprogram(name: "Hacl_EC_Point_swap_conditional", scope: !1, file: !1, line: 500, type: !939, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !39, !39, !8}
!941 = !{!937, !942, !943, !944}
!942 = !DILocalVariable(name: "b", arg: 2, scope: !938, file: !1, line: 500, type: !39)
!943 = !DILocalVariable(name: "iswap", arg: 3, scope: !938, file: !1, line: 500, type: !8)
!944 = !DILocalVariable(name: "swap1", scope: !938, file: !1, line: 502, type: !8)
!945 = !DILocation(line: 0, scope: !938, inlinedAt: !946)
!946 = distinct !DILocation(line: 582, column: 3, scope: !925)
!947 = !DILocation(line: 502, column: 33, scope: !938, inlinedAt: !946)
!948 = !DILocation(line: 503, column: 3, scope: !938, inlinedAt: !946)
!949 = !DILocation(line: 504, column: 37, scope: !938, inlinedAt: !946)
!950 = !DILocation(line: 504, column: 55, scope: !938, inlinedAt: !946)
!951 = !DILocation(line: 504, column: 3, scope: !938, inlinedAt: !946)
!952 = !DILocalVariable(name: "pp", arg: 1, scope: !953, file: !1, line: 517, type: !39)
!953 = distinct !DISubprogram(name: "Hacl_EC_AddAndDouble_fmonty", scope: !1, file: !1, line: 516, type: !954, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !956)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !39, !39, !39, !39, !39}
!956 = !{!952, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984}
!957 = !DILocalVariable(name: "ppq", arg: 2, scope: !953, file: !1, line: 518, type: !39)
!958 = !DILocalVariable(name: "p", arg: 3, scope: !953, file: !1, line: 519, type: !39)
!959 = !DILocalVariable(name: "pq", arg: 4, scope: !953, file: !1, line: 520, type: !39)
!960 = !DILocalVariable(name: "qmqp", arg: 5, scope: !953, file: !1, line: 521, type: !39)
!961 = !DILocalVariable(name: "qx", scope: !953, file: !1, line: 524, type: !39)
!962 = !DILocalVariable(name: "x2", scope: !953, file: !1, line: 525, type: !39)
!963 = !DILocalVariable(name: "z2", scope: !953, file: !1, line: 526, type: !39)
!964 = !DILocalVariable(name: "x3", scope: !953, file: !1, line: 527, type: !39)
!965 = !DILocalVariable(name: "z3", scope: !953, file: !1, line: 528, type: !39)
!966 = !DILocalVariable(name: "x", scope: !953, file: !1, line: 529, type: !39)
!967 = !DILocalVariable(name: "z", scope: !953, file: !1, line: 530, type: !39)
!968 = !DILocalVariable(name: "xprime", scope: !953, file: !1, line: 531, type: !39)
!969 = !DILocalVariable(name: "zprime", scope: !953, file: !1, line: 532, type: !39)
!970 = !DILocalVariable(name: "buf", scope: !953, file: !1, line: 533, type: !157)
!971 = !DILocalVariable(name: "origx", scope: !953, file: !1, line: 534, type: !39)
!972 = !DILocalVariable(name: "origxprime", scope: !953, file: !1, line: 535, type: !39)
!973 = !DILocalVariable(name: "xxprime0", scope: !953, file: !1, line: 536, type: !39)
!974 = !DILocalVariable(name: "zzprime0", scope: !953, file: !1, line: 537, type: !39)
!975 = !DILocalVariable(name: "origxprime0", scope: !953, file: !1, line: 546, type: !39)
!976 = !DILocalVariable(name: "xx0", scope: !953, file: !1, line: 547, type: !39)
!977 = !DILocalVariable(name: "zz0", scope: !953, file: !1, line: 548, type: !39)
!978 = !DILocalVariable(name: "xxprime", scope: !953, file: !1, line: 549, type: !39)
!979 = !DILocalVariable(name: "zzprime", scope: !953, file: !1, line: 550, type: !39)
!980 = !DILocalVariable(name: "zzzprime", scope: !953, file: !1, line: 551, type: !39)
!981 = !DILocalVariable(name: "zzz", scope: !953, file: !1, line: 560, type: !39)
!982 = !DILocalVariable(name: "xx", scope: !953, file: !1, line: 561, type: !39)
!983 = !DILocalVariable(name: "zz", scope: !953, file: !1, line: 562, type: !39)
!984 = !DILocalVariable(name: "scalar", scope: !953, file: !1, line: 565, type: !8)
!985 = !DILocation(line: 0, scope: !953, inlinedAt: !986)
!986 = distinct !DILocation(line: 583, column: 3, scope: !925)
!987 = !DILocation(line: 533, column: 3, scope: !953, inlinedAt: !986)
!988 = !DILocation(line: 533, column: 12, scope: !953, inlinedAt: !986)
!989 = !DILocation(line: 534, column: 21, scope: !953, inlinedAt: !986)
!990 = !DILocation(line: 535, column: 30, scope: !953, inlinedAt: !986)
!991 = !DILocation(line: 536, column: 28, scope: !953, inlinedAt: !986)
!992 = !DILocation(line: 537, column: 28, scope: !953, inlinedAt: !986)
!993 = !DILocation(line: 538, column: 3, scope: !953, inlinedAt: !986)
!994 = !DILocalVariable(name: "a", arg: 1, scope: !995, file: !1, line: 355, type: !39)
!995 = distinct !DISubprogram(name: "Hacl_Bignum_fsum", scope: !1, file: !1, line: 355, type: !174, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !996)
!996 = !{!994, !997, !998, !1000, !1001, !1003, !1004, !1006, !1007, !1009, !1010, !1012}
!997 = !DILocalVariable(name: "b", arg: 2, scope: !995, file: !1, line: 355, type: !39)
!998 = !DILocalVariable(name: "xi", scope: !999, file: !1, line: 358, type: !8)
!999 = distinct !DILexicalBlock(scope: !995, file: !1, line: 357, column: 3)
!1000 = !DILocalVariable(name: "yi", scope: !999, file: !1, line: 359, type: !8)
!1001 = !DILocalVariable(name: "xi", scope: !1002, file: !1, line: 363, type: !8)
!1002 = distinct !DILexicalBlock(scope: !995, file: !1, line: 362, column: 3)
!1003 = !DILocalVariable(name: "yi", scope: !1002, file: !1, line: 364, type: !8)
!1004 = !DILocalVariable(name: "xi", scope: !1005, file: !1, line: 368, type: !8)
!1005 = distinct !DILexicalBlock(scope: !995, file: !1, line: 367, column: 3)
!1006 = !DILocalVariable(name: "yi", scope: !1005, file: !1, line: 369, type: !8)
!1007 = !DILocalVariable(name: "xi", scope: !1008, file: !1, line: 373, type: !8)
!1008 = distinct !DILexicalBlock(scope: !995, file: !1, line: 372, column: 3)
!1009 = !DILocalVariable(name: "yi", scope: !1008, file: !1, line: 374, type: !8)
!1010 = !DILocalVariable(name: "xi", scope: !1011, file: !1, line: 378, type: !8)
!1011 = distinct !DILexicalBlock(scope: !995, file: !1, line: 377, column: 3)
!1012 = !DILocalVariable(name: "yi", scope: !1011, file: !1, line: 379, type: !8)
!1013 = !DILocation(line: 0, scope: !995, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 539, column: 3, scope: !953, inlinedAt: !986)
!1015 = !DILocation(line: 358, column: 19, scope: !999, inlinedAt: !1014)
!1016 = !DILocation(line: 0, scope: !999, inlinedAt: !1014)
!1017 = !DILocation(line: 359, column: 19, scope: !999, inlinedAt: !1014)
!1018 = !DILocation(line: 360, column: 16, scope: !999, inlinedAt: !1014)
!1019 = !DILocation(line: 360, column: 11, scope: !999, inlinedAt: !1014)
!1020 = !DILocation(line: 363, column: 19, scope: !1002, inlinedAt: !1014)
!1021 = !DILocation(line: 0, scope: !1002, inlinedAt: !1014)
!1022 = !DILocation(line: 364, column: 19, scope: !1002, inlinedAt: !1014)
!1023 = !DILocation(line: 365, column: 16, scope: !1002, inlinedAt: !1014)
!1024 = !DILocation(line: 365, column: 11, scope: !1002, inlinedAt: !1014)
!1025 = !DILocation(line: 368, column: 19, scope: !1005, inlinedAt: !1014)
!1026 = !DILocation(line: 0, scope: !1005, inlinedAt: !1014)
!1027 = !DILocation(line: 369, column: 19, scope: !1005, inlinedAt: !1014)
!1028 = !DILocation(line: 370, column: 16, scope: !1005, inlinedAt: !1014)
!1029 = !DILocation(line: 370, column: 11, scope: !1005, inlinedAt: !1014)
!1030 = !DILocation(line: 373, column: 19, scope: !1008, inlinedAt: !1014)
!1031 = !DILocation(line: 0, scope: !1008, inlinedAt: !1014)
!1032 = !DILocation(line: 374, column: 19, scope: !1008, inlinedAt: !1014)
!1033 = !DILocation(line: 375, column: 16, scope: !1008, inlinedAt: !1014)
!1034 = !DILocation(line: 375, column: 11, scope: !1008, inlinedAt: !1014)
!1035 = !DILocation(line: 378, column: 19, scope: !1011, inlinedAt: !1014)
!1036 = !DILocation(line: 0, scope: !1011, inlinedAt: !1014)
!1037 = !DILocation(line: 379, column: 19, scope: !1011, inlinedAt: !1014)
!1038 = !DILocation(line: 380, column: 16, scope: !1011, inlinedAt: !1014)
!1039 = !DILocation(line: 380, column: 11, scope: !1011, inlinedAt: !1014)
!1040 = !DILocalVariable(name: "a", arg: 1, scope: !1041, file: !1, line: 384, type: !39)
!1041 = distinct !DISubprogram(name: "Hacl_Bignum_fdifference", scope: !1, file: !1, line: 384, type: !174, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1042)
!1042 = !{!1040, !1043, !1044, !1046, !1047, !1048, !1049, !1050, !1051, !1053, !1054, !1056, !1057, !1059, !1060, !1062, !1063, !1065}
!1043 = !DILocalVariable(name: "b", arg: 2, scope: !1041, file: !1, line: 384, type: !39)
!1044 = !DILocalVariable(name: "tmp", scope: !1041, file: !1, line: 386, type: !1045)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !252)
!1046 = !DILocalVariable(name: "b0", scope: !1041, file: !1, line: 388, type: !8)
!1047 = !DILocalVariable(name: "b1", scope: !1041, file: !1, line: 389, type: !8)
!1048 = !DILocalVariable(name: "b2", scope: !1041, file: !1, line: 390, type: !8)
!1049 = !DILocalVariable(name: "b3", scope: !1041, file: !1, line: 391, type: !8)
!1050 = !DILocalVariable(name: "b4", scope: !1041, file: !1, line: 392, type: !8)
!1051 = !DILocalVariable(name: "xi", scope: !1052, file: !1, line: 399, type: !8)
!1052 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 398, column: 3)
!1053 = !DILocalVariable(name: "yi", scope: !1052, file: !1, line: 400, type: !8)
!1054 = !DILocalVariable(name: "xi", scope: !1055, file: !1, line: 404, type: !8)
!1055 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 403, column: 3)
!1056 = !DILocalVariable(name: "yi", scope: !1055, file: !1, line: 405, type: !8)
!1057 = !DILocalVariable(name: "xi", scope: !1058, file: !1, line: 409, type: !8)
!1058 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 408, column: 3)
!1059 = !DILocalVariable(name: "yi", scope: !1058, file: !1, line: 410, type: !8)
!1060 = !DILocalVariable(name: "xi", scope: !1061, file: !1, line: 414, type: !8)
!1061 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 413, column: 3)
!1062 = !DILocalVariable(name: "yi", scope: !1061, file: !1, line: 415, type: !8)
!1063 = !DILocalVariable(name: "xi", scope: !1064, file: !1, line: 419, type: !8)
!1064 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 418, column: 3)
!1065 = !DILocalVariable(name: "yi", scope: !1064, file: !1, line: 420, type: !8)
!1066 = !DILocation(line: 0, scope: !1041, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 540, column: 3, scope: !953, inlinedAt: !986)
!1068 = !DILocation(line: 387, column: 3, scope: !1041, inlinedAt: !1067)
!1069 = !DILocation(line: 0, scope: !1052, inlinedAt: !1067)
!1070 = !DILocation(line: 393, column: 16, scope: !1041, inlinedAt: !1067)
!1071 = !DILocation(line: 401, column: 16, scope: !1052, inlinedAt: !1067)
!1072 = !DILocation(line: 401, column: 11, scope: !1052, inlinedAt: !1067)
!1073 = !DILocation(line: 0, scope: !1055, inlinedAt: !1067)
!1074 = !DILocation(line: 394, column: 16, scope: !1041, inlinedAt: !1067)
!1075 = !DILocation(line: 406, column: 16, scope: !1055, inlinedAt: !1067)
!1076 = !DILocation(line: 406, column: 11, scope: !1055, inlinedAt: !1067)
!1077 = !DILocation(line: 0, scope: !1058, inlinedAt: !1067)
!1078 = !DILocation(line: 395, column: 16, scope: !1041, inlinedAt: !1067)
!1079 = !DILocation(line: 411, column: 16, scope: !1058, inlinedAt: !1067)
!1080 = !DILocation(line: 411, column: 11, scope: !1058, inlinedAt: !1067)
!1081 = !DILocation(line: 0, scope: !1061, inlinedAt: !1067)
!1082 = !DILocation(line: 396, column: 16, scope: !1041, inlinedAt: !1067)
!1083 = !DILocation(line: 416, column: 16, scope: !1061, inlinedAt: !1067)
!1084 = !DILocation(line: 416, column: 11, scope: !1061, inlinedAt: !1067)
!1085 = !DILocation(line: 0, scope: !1064, inlinedAt: !1067)
!1086 = !DILocation(line: 397, column: 16, scope: !1041, inlinedAt: !1067)
!1087 = !DILocation(line: 421, column: 16, scope: !1064, inlinedAt: !1067)
!1088 = !DILocation(line: 421, column: 11, scope: !1064, inlinedAt: !1067)
!1089 = !DILocation(line: 541, column: 3, scope: !953, inlinedAt: !986)
!1090 = !DILocation(line: 0, scope: !995, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 542, column: 3, scope: !953, inlinedAt: !986)
!1092 = !DILocation(line: 358, column: 19, scope: !999, inlinedAt: !1091)
!1093 = !DILocation(line: 0, scope: !999, inlinedAt: !1091)
!1094 = !DILocation(line: 359, column: 19, scope: !999, inlinedAt: !1091)
!1095 = !DILocation(line: 360, column: 16, scope: !999, inlinedAt: !1091)
!1096 = !DILocation(line: 360, column: 11, scope: !999, inlinedAt: !1091)
!1097 = !DILocation(line: 363, column: 19, scope: !1002, inlinedAt: !1091)
!1098 = !DILocation(line: 0, scope: !1002, inlinedAt: !1091)
!1099 = !DILocation(line: 364, column: 19, scope: !1002, inlinedAt: !1091)
!1100 = !DILocation(line: 365, column: 16, scope: !1002, inlinedAt: !1091)
!1101 = !DILocation(line: 365, column: 11, scope: !1002, inlinedAt: !1091)
!1102 = !DILocation(line: 368, column: 19, scope: !1005, inlinedAt: !1091)
!1103 = !DILocation(line: 0, scope: !1005, inlinedAt: !1091)
!1104 = !DILocation(line: 369, column: 19, scope: !1005, inlinedAt: !1091)
!1105 = !DILocation(line: 370, column: 16, scope: !1005, inlinedAt: !1091)
!1106 = !DILocation(line: 370, column: 11, scope: !1005, inlinedAt: !1091)
!1107 = !DILocation(line: 373, column: 19, scope: !1008, inlinedAt: !1091)
!1108 = !DILocation(line: 0, scope: !1008, inlinedAt: !1091)
!1109 = !DILocation(line: 374, column: 19, scope: !1008, inlinedAt: !1091)
!1110 = !DILocation(line: 375, column: 16, scope: !1008, inlinedAt: !1091)
!1111 = !DILocation(line: 375, column: 11, scope: !1008, inlinedAt: !1091)
!1112 = !DILocation(line: 378, column: 19, scope: !1011, inlinedAt: !1091)
!1113 = !DILocation(line: 0, scope: !1011, inlinedAt: !1091)
!1114 = !DILocation(line: 379, column: 19, scope: !1011, inlinedAt: !1091)
!1115 = !DILocation(line: 380, column: 16, scope: !1011, inlinedAt: !1091)
!1116 = !DILocation(line: 380, column: 11, scope: !1011, inlinedAt: !1091)
!1117 = !DILocation(line: 0, scope: !1041, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 543, column: 3, scope: !953, inlinedAt: !986)
!1119 = !DILocation(line: 387, column: 3, scope: !1041, inlinedAt: !1118)
!1120 = !DILocation(line: 0, scope: !1052, inlinedAt: !1118)
!1121 = !DILocation(line: 393, column: 16, scope: !1041, inlinedAt: !1118)
!1122 = !DILocation(line: 401, column: 16, scope: !1052, inlinedAt: !1118)
!1123 = !DILocation(line: 401, column: 11, scope: !1052, inlinedAt: !1118)
!1124 = !DILocation(line: 0, scope: !1055, inlinedAt: !1118)
!1125 = !DILocation(line: 394, column: 16, scope: !1041, inlinedAt: !1118)
!1126 = !DILocation(line: 406, column: 16, scope: !1055, inlinedAt: !1118)
!1127 = !DILocation(line: 406, column: 11, scope: !1055, inlinedAt: !1118)
!1128 = !DILocation(line: 0, scope: !1058, inlinedAt: !1118)
!1129 = !DILocation(line: 395, column: 16, scope: !1041, inlinedAt: !1118)
!1130 = !DILocation(line: 411, column: 16, scope: !1058, inlinedAt: !1118)
!1131 = !DILocation(line: 411, column: 11, scope: !1058, inlinedAt: !1118)
!1132 = !DILocation(line: 0, scope: !1061, inlinedAt: !1118)
!1133 = !DILocation(line: 396, column: 16, scope: !1041, inlinedAt: !1118)
!1134 = !DILocation(line: 416, column: 16, scope: !1061, inlinedAt: !1118)
!1135 = !DILocation(line: 416, column: 11, scope: !1061, inlinedAt: !1118)
!1136 = !DILocation(line: 0, scope: !1064, inlinedAt: !1118)
!1137 = !DILocation(line: 397, column: 16, scope: !1041, inlinedAt: !1118)
!1138 = !DILocation(line: 421, column: 16, scope: !1064, inlinedAt: !1118)
!1139 = !DILocation(line: 421, column: 11, scope: !1064, inlinedAt: !1118)
!1140 = !DILocation(line: 0, scope: !555, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 544, column: 3, scope: !953, inlinedAt: !986)
!1142 = !DILocation(line: 468, column: 3, scope: !555, inlinedAt: !1141)
!1143 = !DILocation(line: 0, scope: !555, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 545, column: 3, scope: !953, inlinedAt: !986)
!1145 = !DILocation(line: 468, column: 3, scope: !555, inlinedAt: !1144)
!1146 = !DILocation(line: 552, column: 3, scope: !953, inlinedAt: !986)
!1147 = !DILocation(line: 0, scope: !995, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 553, column: 3, scope: !953, inlinedAt: !986)
!1149 = !DILocation(line: 358, column: 19, scope: !999, inlinedAt: !1148)
!1150 = !DILocation(line: 0, scope: !999, inlinedAt: !1148)
!1151 = !DILocation(line: 359, column: 19, scope: !999, inlinedAt: !1148)
!1152 = !DILocation(line: 360, column: 16, scope: !999, inlinedAt: !1148)
!1153 = !DILocation(line: 360, column: 11, scope: !999, inlinedAt: !1148)
!1154 = !DILocation(line: 363, column: 19, scope: !1002, inlinedAt: !1148)
!1155 = !DILocation(line: 0, scope: !1002, inlinedAt: !1148)
!1156 = !DILocation(line: 364, column: 19, scope: !1002, inlinedAt: !1148)
!1157 = !DILocation(line: 365, column: 16, scope: !1002, inlinedAt: !1148)
!1158 = !DILocation(line: 365, column: 11, scope: !1002, inlinedAt: !1148)
!1159 = !DILocation(line: 368, column: 19, scope: !1005, inlinedAt: !1148)
!1160 = !DILocation(line: 0, scope: !1005, inlinedAt: !1148)
!1161 = !DILocation(line: 369, column: 19, scope: !1005, inlinedAt: !1148)
!1162 = !DILocation(line: 370, column: 16, scope: !1005, inlinedAt: !1148)
!1163 = !DILocation(line: 370, column: 11, scope: !1005, inlinedAt: !1148)
!1164 = !DILocation(line: 373, column: 19, scope: !1008, inlinedAt: !1148)
!1165 = !DILocation(line: 0, scope: !1008, inlinedAt: !1148)
!1166 = !DILocation(line: 374, column: 19, scope: !1008, inlinedAt: !1148)
!1167 = !DILocation(line: 375, column: 16, scope: !1008, inlinedAt: !1148)
!1168 = !DILocation(line: 375, column: 11, scope: !1008, inlinedAt: !1148)
!1169 = !DILocation(line: 378, column: 19, scope: !1011, inlinedAt: !1148)
!1170 = !DILocation(line: 0, scope: !1011, inlinedAt: !1148)
!1171 = !DILocation(line: 379, column: 19, scope: !1011, inlinedAt: !1148)
!1172 = !DILocation(line: 380, column: 16, scope: !1011, inlinedAt: !1148)
!1173 = !DILocation(line: 380, column: 11, scope: !1011, inlinedAt: !1148)
!1174 = !DILocation(line: 0, scope: !1041, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 554, column: 3, scope: !953, inlinedAt: !986)
!1176 = !DILocation(line: 387, column: 3, scope: !1041, inlinedAt: !1175)
!1177 = !DILocation(line: 0, scope: !1052, inlinedAt: !1175)
!1178 = !DILocation(line: 393, column: 16, scope: !1041, inlinedAt: !1175)
!1179 = !DILocation(line: 401, column: 16, scope: !1052, inlinedAt: !1175)
!1180 = !DILocation(line: 401, column: 11, scope: !1052, inlinedAt: !1175)
!1181 = !DILocation(line: 0, scope: !1055, inlinedAt: !1175)
!1182 = !DILocation(line: 394, column: 16, scope: !1041, inlinedAt: !1175)
!1183 = !DILocation(line: 406, column: 16, scope: !1055, inlinedAt: !1175)
!1184 = !DILocation(line: 406, column: 11, scope: !1055, inlinedAt: !1175)
!1185 = !DILocation(line: 0, scope: !1058, inlinedAt: !1175)
!1186 = !DILocation(line: 395, column: 16, scope: !1041, inlinedAt: !1175)
!1187 = !DILocation(line: 411, column: 16, scope: !1058, inlinedAt: !1175)
!1188 = !DILocation(line: 411, column: 11, scope: !1058, inlinedAt: !1175)
!1189 = !DILocation(line: 0, scope: !1061, inlinedAt: !1175)
!1190 = !DILocation(line: 396, column: 16, scope: !1041, inlinedAt: !1175)
!1191 = !DILocation(line: 416, column: 16, scope: !1061, inlinedAt: !1175)
!1192 = !DILocation(line: 416, column: 11, scope: !1061, inlinedAt: !1175)
!1193 = !DILocation(line: 0, scope: !1064, inlinedAt: !1175)
!1194 = !DILocation(line: 397, column: 16, scope: !1041, inlinedAt: !1175)
!1195 = !DILocation(line: 421, column: 16, scope: !1064, inlinedAt: !1175)
!1196 = !DILocation(line: 421, column: 11, scope: !1064, inlinedAt: !1175)
!1197 = !DILocation(line: 0, scope: !237, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 555, column: 3, scope: !953, inlinedAt: !986)
!1199 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !1198)
!1200 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !1198)
!1201 = !DILocation(line: 0, scope: !255, inlinedAt: !1198)
!1202 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !1198)
!1203 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !1198)
!1204 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !1198)
!1205 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !1198)
!1206 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !1198)
!1207 = distinct !{!1207, !1202, !1208, !270, !271}
!1208 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !1198)
!1209 = !DILocation(line: 548, column: 23, scope: !953, inlinedAt: !986)
!1210 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !1198)
!1211 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !1198)
!1212 = !DILocation(line: 0, scope: !276, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !1198)
!1214 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !1213)
!1215 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !1198)
!1216 = !DILocation(line: 0, scope: !237, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 556, column: 3, scope: !953, inlinedAt: !986)
!1218 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !1217)
!1219 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !1217)
!1220 = !DILocation(line: 0, scope: !255, inlinedAt: !1217)
!1221 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !1217)
!1222 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !1217)
!1223 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !1217)
!1224 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !1217)
!1225 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !1217)
!1226 = distinct !{!1226, !1221, !1227, !270, !271}
!1227 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !1217)
!1228 = !DILocation(line: 528, column: 22, scope: !953, inlinedAt: !986)
!1229 = !DILocation(line: 551, column: 28, scope: !953, inlinedAt: !986)
!1230 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !1217)
!1231 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !1217)
!1232 = !DILocation(line: 0, scope: !276, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !1217)
!1234 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !1233)
!1235 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !1217)
!1236 = !DILocation(line: 0, scope: !555, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 557, column: 3, scope: !953, inlinedAt: !986)
!1238 = !DILocation(line: 468, column: 3, scope: !555, inlinedAt: !1237)
!1239 = !DILocation(line: 0, scope: !237, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 558, column: 3, scope: !953, inlinedAt: !986)
!1241 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !1240)
!1242 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !1240)
!1243 = !DILocation(line: 0, scope: !255, inlinedAt: !1240)
!1244 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !1240)
!1245 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !1240)
!1246 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !1240)
!1247 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !1240)
!1248 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !1240)
!1249 = distinct !{!1249, !1244, !1250, !270, !271}
!1250 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !1240)
!1251 = !DILocation(line: 547, column: 23, scope: !953, inlinedAt: !986)
!1252 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !1240)
!1253 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !1240)
!1254 = !DILocation(line: 0, scope: !276, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !1240)
!1256 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !1255)
!1257 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !1240)
!1258 = !DILocation(line: 0, scope: !237, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 559, column: 3, scope: !953, inlinedAt: !986)
!1260 = !DILocation(line: 302, column: 3, scope: !237, inlinedAt: !1259)
!1261 = !DILocation(line: 302, column: 19, scope: !237, inlinedAt: !1259)
!1262 = !DILocation(line: 0, scope: !255, inlinedAt: !1259)
!1263 = !DILocation(line: 303, column: 3, scope: !255, inlinedAt: !1259)
!1264 = !DILocation(line: 304, column: 5, scope: !263, inlinedAt: !1259)
!1265 = !DILocation(line: 304, column: 13, scope: !263, inlinedAt: !1259)
!1266 = !DILocation(line: 303, column: 45, scope: !263, inlinedAt: !1259)
!1267 = !DILocation(line: 303, column: 29, scope: !263, inlinedAt: !1259)
!1268 = distinct !{!1268, !1263, !1269, !270, !271}
!1269 = !DILocation(line: 304, column: 57, scope: !255, inlinedAt: !1259)
!1270 = !DILocation(line: 305, column: 3, scope: !237, inlinedAt: !1259)
!1271 = !DILocation(line: 306, column: 46, scope: !237, inlinedAt: !1259)
!1272 = !DILocation(line: 0, scope: !276, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 306, column: 3, scope: !237, inlinedAt: !1259)
!1274 = !DILocation(line: 293, column: 3, scope: !276, inlinedAt: !1273)
!1275 = !DILocation(line: 307, column: 1, scope: !237, inlinedAt: !1259)
!1276 = !DILocation(line: 0, scope: !555, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 563, column: 3, scope: !953, inlinedAt: !986)
!1278 = !DILocation(line: 468, column: 3, scope: !555, inlinedAt: !1277)
!1279 = !DILocation(line: 0, scope: !1041, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 564, column: 3, scope: !953, inlinedAt: !986)
!1281 = !DILocation(line: 387, column: 3, scope: !1041, inlinedAt: !1280)
!1282 = !DILocation(line: 393, column: 16, scope: !1041, inlinedAt: !1280)
!1283 = !DILocation(line: 394, column: 16, scope: !1041, inlinedAt: !1280)
!1284 = !DILocation(line: 395, column: 16, scope: !1041, inlinedAt: !1280)
!1285 = !DILocation(line: 396, column: 16, scope: !1041, inlinedAt: !1280)
!1286 = !DILocation(line: 397, column: 16, scope: !1041, inlinedAt: !1280)
!1287 = !DILocation(line: 399, column: 19, scope: !1052, inlinedAt: !1280)
!1288 = !DILocation(line: 0, scope: !1052, inlinedAt: !1280)
!1289 = !DILocation(line: 401, column: 16, scope: !1052, inlinedAt: !1280)
!1290 = !DILocation(line: 401, column: 11, scope: !1052, inlinedAt: !1280)
!1291 = !DILocation(line: 404, column: 19, scope: !1055, inlinedAt: !1280)
!1292 = !DILocation(line: 0, scope: !1055, inlinedAt: !1280)
!1293 = !DILocation(line: 406, column: 16, scope: !1055, inlinedAt: !1280)
!1294 = !DILocation(line: 406, column: 11, scope: !1055, inlinedAt: !1280)
!1295 = !DILocation(line: 409, column: 19, scope: !1058, inlinedAt: !1280)
!1296 = !DILocation(line: 0, scope: !1058, inlinedAt: !1280)
!1297 = !DILocation(line: 411, column: 16, scope: !1058, inlinedAt: !1280)
!1298 = !DILocation(line: 411, column: 11, scope: !1058, inlinedAt: !1280)
!1299 = !DILocation(line: 414, column: 19, scope: !1061, inlinedAt: !1280)
!1300 = !DILocation(line: 0, scope: !1061, inlinedAt: !1280)
!1301 = !DILocation(line: 416, column: 16, scope: !1061, inlinedAt: !1280)
!1302 = !DILocation(line: 416, column: 11, scope: !1061, inlinedAt: !1280)
!1303 = !DILocation(line: 419, column: 19, scope: !1064, inlinedAt: !1280)
!1304 = !DILocation(line: 0, scope: !1064, inlinedAt: !1280)
!1305 = !DILocation(line: 421, column: 16, scope: !1064, inlinedAt: !1280)
!1306 = !DILocation(line: 421, column: 11, scope: !1064, inlinedAt: !1280)
!1307 = !DILocation(line: 0, scope: !1308, inlinedAt: !1330)
!1308 = distinct !DISubprogram(name: "Hacl_Bignum_fscalar", scope: !1, file: !1, line: 425, type: !939, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1316, !1318, !1320, !1322, !1324, !1326, !1327, !1328, !1329}
!1310 = !DILocalVariable(name: "output", arg: 1, scope: !1308, file: !1, line: 425, type: !39)
!1311 = !DILocalVariable(name: "b", arg: 2, scope: !1308, file: !1, line: 425, type: !39)
!1312 = !DILocalVariable(name: "s", arg: 3, scope: !1308, file: !1, line: 425, type: !8)
!1313 = !DILocalVariable(name: "tmp", scope: !1308, file: !1, line: 428, type: !244)
!1314 = !DILocalVariable(name: "_i", scope: !1315, file: !1, line: 429, type: !3)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 429, column: 3)
!1316 = !DILocalVariable(name: "xi", scope: !1317, file: !1, line: 432, type: !8)
!1317 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 431, column: 3)
!1318 = !DILocalVariable(name: "xi", scope: !1319, file: !1, line: 436, type: !8)
!1319 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 435, column: 3)
!1320 = !DILocalVariable(name: "xi", scope: !1321, file: !1, line: 440, type: !8)
!1321 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 439, column: 3)
!1322 = !DILocalVariable(name: "xi", scope: !1323, file: !1, line: 444, type: !8)
!1323 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 443, column: 3)
!1324 = !DILocalVariable(name: "xi", scope: !1325, file: !1, line: 448, type: !8)
!1325 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 447, column: 3)
!1326 = !DILocalVariable(name: "b4", scope: !1308, file: !1, line: 452, type: !245)
!1327 = !DILocalVariable(name: "b0", scope: !1308, file: !1, line: 453, type: !245)
!1328 = !DILocalVariable(name: "b4_", scope: !1308, file: !1, line: 455, type: !245)
!1329 = !DILocalVariable(name: "b0_", scope: !1308, file: !1, line: 457, type: !245)
!1330 = distinct !DILocation(line: 566, column: 3, scope: !953, inlinedAt: !986)
!1331 = !DILocation(line: 428, column: 3, scope: !1308, inlinedAt: !1330)
!1332 = !DILocation(line: 428, column: 19, scope: !1308, inlinedAt: !1330)
!1333 = !DILocation(line: 0, scope: !1315, inlinedAt: !1330)
!1334 = !DILocation(line: 429, column: 3, scope: !1315, inlinedAt: !1330)
!1335 = !DILocation(line: 430, column: 5, scope: !1336, inlinedAt: !1330)
!1336 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 429, column: 3)
!1337 = !DILocation(line: 430, column: 15, scope: !1336, inlinedAt: !1330)
!1338 = !DILocation(line: 429, column: 45, scope: !1336, inlinedAt: !1330)
!1339 = !DILocation(line: 429, column: 29, scope: !1336, inlinedAt: !1330)
!1340 = distinct !{!1340, !1334, !1341, !270, !271}
!1341 = !DILocation(line: 430, column: 59, scope: !1315, inlinedAt: !1330)
!1342 = !DILocation(line: 526, column: 21, scope: !953, inlinedAt: !986)
!1343 = !DILocation(line: 0, scope: !1317, inlinedAt: !1330)
!1344 = !DILocation(line: 433, column: 5, scope: !1317, inlinedAt: !1330)
!1345 = !DILocation(line: 433, column: 15, scope: !1317, inlinedAt: !1330)
!1346 = !DILocation(line: 436, column: 19, scope: !1319, inlinedAt: !1330)
!1347 = !DILocation(line: 0, scope: !1319, inlinedAt: !1330)
!1348 = !DILocation(line: 437, column: 5, scope: !1319, inlinedAt: !1330)
!1349 = !DILocation(line: 437, column: 15, scope: !1319, inlinedAt: !1330)
!1350 = !DILocation(line: 440, column: 19, scope: !1321, inlinedAt: !1330)
!1351 = !DILocation(line: 0, scope: !1321, inlinedAt: !1330)
!1352 = !DILocation(line: 441, column: 5, scope: !1321, inlinedAt: !1330)
!1353 = !DILocation(line: 441, column: 15, scope: !1321, inlinedAt: !1330)
!1354 = !DILocation(line: 444, column: 19, scope: !1323, inlinedAt: !1330)
!1355 = !DILocation(line: 0, scope: !1323, inlinedAt: !1330)
!1356 = !DILocation(line: 445, column: 5, scope: !1323, inlinedAt: !1330)
!1357 = !DILocation(line: 445, column: 15, scope: !1323, inlinedAt: !1330)
!1358 = !DILocation(line: 0, scope: !1325, inlinedAt: !1330)
!1359 = !DILocation(line: 449, column: 5, scope: !1325, inlinedAt: !1330)
!1360 = !DILocation(line: 449, column: 15, scope: !1325, inlinedAt: !1330)
!1361 = !DILocation(line: 451, column: 3, scope: !1308, inlinedAt: !1330)
!1362 = !DILocation(line: 452, column: 24, scope: !1308, inlinedAt: !1330)
!1363 = !{i64 0, i64 8, !121}
!1364 = !DILocation(line: 453, column: 24, scope: !1308, inlinedAt: !1330)
!1365 = !DILocation(line: 454, column: 3, scope: !1308, inlinedAt: !1330)
!1366 = !DILocation(line: 455, column: 3, scope: !1308, inlinedAt: !1330)
!1367 = !DILocation(line: 455, column: 34, scope: !1308, inlinedAt: !1330)
!1368 = !DILocation(line: 455, column: 9, scope: !1308, inlinedAt: !1330)
!1369 = !{!1370, !122, i64 0}
!1370 = !{!"", !122, i64 0, !122, i64 8}
!1371 = !{!1370, !122, i64 8}
!1372 = !DILocation(line: 456, column: 3, scope: !1308, inlinedAt: !1330)
!1373 = !DILocation(line: 457, column: 3, scope: !1308, inlinedAt: !1330)
!1374 = !DILocation(line: 460, column: 41, scope: !1308, inlinedAt: !1330)
!1375 = !DILocation(line: 460, column: 9, scope: !1308, inlinedAt: !1330)
!1376 = !DILocation(line: 459, column: 7, scope: !1308, inlinedAt: !1330)
!1377 = !DILocation(line: 458, column: 5, scope: !1308, inlinedAt: !1330)
!1378 = !DILocation(line: 461, column: 13, scope: !1308, inlinedAt: !1330)
!1379 = !DILocation(line: 462, column: 13, scope: !1308, inlinedAt: !1330)
!1380 = !DILocalVariable(name: "output", arg: 1, scope: !1381, file: !1, line: 38, type: !39)
!1381 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_copy_from_wide_", scope: !1, file: !1, line: 38, type: !1382, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !39, !279}
!1384 = !{!1380, !1385, !1386, !1388, !1390, !1392, !1394}
!1385 = !DILocalVariable(name: "input", arg: 2, scope: !1381, file: !1, line: 38, type: !279)
!1386 = !DILocalVariable(name: "xi", scope: !1387, file: !1, line: 41, type: !245)
!1387 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 40, column: 3)
!1388 = !DILocalVariable(name: "xi", scope: !1389, file: !1, line: 45, type: !245)
!1389 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 44, column: 3)
!1390 = !DILocalVariable(name: "xi", scope: !1391, file: !1, line: 49, type: !245)
!1391 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 48, column: 3)
!1392 = !DILocalVariable(name: "xi", scope: !1393, file: !1, line: 53, type: !245)
!1393 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 52, column: 3)
!1394 = !DILocalVariable(name: "xi", scope: !1395, file: !1, line: 57, type: !245)
!1395 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 56, column: 3)
!1396 = !DILocation(line: 0, scope: !1381, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 463, column: 3, scope: !1308, inlinedAt: !1330)
!1398 = !DILocation(line: 41, column: 26, scope: !1387, inlinedAt: !1397)
!1399 = !DILocation(line: 0, scope: !1387, inlinedAt: !1397)
!1400 = !DILocation(line: 42, column: 18, scope: !1387, inlinedAt: !1397)
!1401 = !DILocation(line: 42, column: 16, scope: !1387, inlinedAt: !1397)
!1402 = !DILocation(line: 45, column: 26, scope: !1389, inlinedAt: !1397)
!1403 = !DILocation(line: 0, scope: !1389, inlinedAt: !1397)
!1404 = !DILocation(line: 46, column: 18, scope: !1389, inlinedAt: !1397)
!1405 = !DILocation(line: 46, column: 5, scope: !1389, inlinedAt: !1397)
!1406 = !DILocation(line: 46, column: 16, scope: !1389, inlinedAt: !1397)
!1407 = !DILocation(line: 49, column: 26, scope: !1391, inlinedAt: !1397)
!1408 = !DILocation(line: 0, scope: !1391, inlinedAt: !1397)
!1409 = !DILocation(line: 50, column: 18, scope: !1391, inlinedAt: !1397)
!1410 = !DILocation(line: 50, column: 5, scope: !1391, inlinedAt: !1397)
!1411 = !DILocation(line: 50, column: 16, scope: !1391, inlinedAt: !1397)
!1412 = !DILocation(line: 53, column: 26, scope: !1393, inlinedAt: !1397)
!1413 = !DILocation(line: 0, scope: !1393, inlinedAt: !1397)
!1414 = !DILocation(line: 54, column: 18, scope: !1393, inlinedAt: !1397)
!1415 = !DILocation(line: 54, column: 5, scope: !1393, inlinedAt: !1397)
!1416 = !DILocation(line: 54, column: 16, scope: !1393, inlinedAt: !1397)
!1417 = !DILocation(line: 57, column: 26, scope: !1395, inlinedAt: !1397)
!1418 = !DILocation(line: 0, scope: !1395, inlinedAt: !1397)
!1419 = !DILocation(line: 58, column: 18, scope: !1395, inlinedAt: !1397)
!1420 = !DILocation(line: 58, column: 5, scope: !1395, inlinedAt: !1397)
!1421 = !DILocation(line: 58, column: 16, scope: !1395, inlinedAt: !1397)
!1422 = !DILocation(line: 464, column: 1, scope: !1308, inlinedAt: !1330)
!1423 = !DILocation(line: 0, scope: !995, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 567, column: 3, scope: !953, inlinedAt: !986)
!1425 = !DILocation(line: 0, scope: !999, inlinedAt: !1424)
!1426 = !DILocation(line: 360, column: 16, scope: !999, inlinedAt: !1424)
!1427 = !DILocation(line: 360, column: 11, scope: !999, inlinedAt: !1424)
!1428 = !DILocation(line: 0, scope: !1002, inlinedAt: !1424)
!1429 = !DILocation(line: 364, column: 19, scope: !1002, inlinedAt: !1424)
!1430 = !DILocation(line: 365, column: 16, scope: !1002, inlinedAt: !1424)
!1431 = !DILocation(line: 365, column: 11, scope: !1002, inlinedAt: !1424)
!1432 = !DILocation(line: 0, scope: !1005, inlinedAt: !1424)
!1433 = !DILocation(line: 369, column: 19, scope: !1005, inlinedAt: !1424)
!1434 = !DILocation(line: 370, column: 16, scope: !1005, inlinedAt: !1424)
!1435 = !DILocation(line: 370, column: 11, scope: !1005, inlinedAt: !1424)
!1436 = !DILocation(line: 0, scope: !1008, inlinedAt: !1424)
!1437 = !DILocation(line: 374, column: 19, scope: !1008, inlinedAt: !1424)
!1438 = !DILocation(line: 375, column: 16, scope: !1008, inlinedAt: !1424)
!1439 = !DILocation(line: 375, column: 11, scope: !1008, inlinedAt: !1424)
!1440 = !DILocation(line: 0, scope: !1011, inlinedAt: !1424)
!1441 = !DILocation(line: 379, column: 19, scope: !1011, inlinedAt: !1424)
!1442 = !DILocation(line: 380, column: 16, scope: !1011, inlinedAt: !1424)
!1443 = !DILocation(line: 380, column: 11, scope: !1011, inlinedAt: !1424)
!1444 = !DILocation(line: 0, scope: !555, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 568, column: 3, scope: !953, inlinedAt: !986)
!1446 = !DILocation(line: 468, column: 3, scope: !555, inlinedAt: !1445)
!1447 = !DILocation(line: 569, column: 1, scope: !953, inlinedAt: !986)
!1448 = !DILocation(line: 0, scope: !938, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 585, column: 3, scope: !925)
!1450 = !DILocation(line: 503, column: 3, scope: !938, inlinedAt: !1449)
!1451 = !DILocation(line: 504, column: 3, scope: !938, inlinedAt: !1449)
!1452 = !DILocation(line: 586, column: 1, scope: !925)
!1453 = distinct !DISubprogram(name: "Hacl_EC_Point_swap_conditional_", scope: !1, file: !1, line: 490, type: !1454, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !39, !39, !8, !3}
!1456 = !{!1457, !1458, !1459, !1460, !1461}
!1457 = !DILocalVariable(name: "a", arg: 1, scope: !1453, file: !1, line: 490, type: !39)
!1458 = !DILocalVariable(name: "b", arg: 2, scope: !1453, file: !1, line: 490, type: !39)
!1459 = !DILocalVariable(name: "swap1", arg: 3, scope: !1453, file: !1, line: 490, type: !8)
!1460 = !DILocalVariable(name: "ctr", arg: 4, scope: !1453, file: !1, line: 490, type: !3)
!1461 = !DILocalVariable(name: "i", scope: !1462, file: !1, line: 495, type: !3)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !1, line: 493, column: 3)
!1463 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 492, column: 7)
!1464 = !DILocation(line: 0, scope: !1453)
!1465 = !DILocation(line: 492, column: 13, scope: !1463)
!1466 = !DILocation(line: 492, column: 7, scope: !1453)
!1467 = !DILocalVariable(name: "a", arg: 1, scope: !1468, file: !1, line: 477, type: !39)
!1468 = distinct !DISubprogram(name: "Hacl_EC_Point_swap_conditional_step", scope: !1, file: !1, line: 477, type: !1454, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1469)
!1469 = !{!1467, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1470 = !DILocalVariable(name: "b", arg: 2, scope: !1468, file: !1, line: 477, type: !39)
!1471 = !DILocalVariable(name: "swap1", arg: 3, scope: !1468, file: !1, line: 477, type: !8)
!1472 = !DILocalVariable(name: "ctr", arg: 4, scope: !1468, file: !1, line: 477, type: !3)
!1473 = !DILocalVariable(name: "i", scope: !1468, file: !1, line: 479, type: !3)
!1474 = !DILocalVariable(name: "ai", scope: !1468, file: !1, line: 480, type: !8)
!1475 = !DILocalVariable(name: "bi", scope: !1468, file: !1, line: 481, type: !8)
!1476 = !DILocalVariable(name: "x", scope: !1468, file: !1, line: 482, type: !8)
!1477 = !DILocalVariable(name: "ai1", scope: !1468, file: !1, line: 483, type: !8)
!1478 = !DILocalVariable(name: "bi1", scope: !1468, file: !1, line: 484, type: !8)
!1479 = !DILocation(line: 0, scope: !1468, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 494, column: 5, scope: !1462)
!1481 = !DILocation(line: 479, column: 20, scope: !1468, inlinedAt: !1480)
!1482 = !DILocation(line: 480, column: 17, scope: !1468, inlinedAt: !1480)
!1483 = !DILocation(line: 481, column: 17, scope: !1468, inlinedAt: !1480)
!1484 = !DILocation(line: 482, column: 28, scope: !1468, inlinedAt: !1480)
!1485 = !DILocation(line: 482, column: 22, scope: !1468, inlinedAt: !1480)
!1486 = !DILocation(line: 483, column: 21, scope: !1468, inlinedAt: !1480)
!1487 = !DILocation(line: 484, column: 21, scope: !1468, inlinedAt: !1480)
!1488 = !DILocation(line: 485, column: 8, scope: !1468, inlinedAt: !1480)
!1489 = !DILocation(line: 486, column: 8, scope: !1468, inlinedAt: !1480)
!1490 = !DILocation(line: 0, scope: !1462)
!1491 = !DILocation(line: 496, column: 5, scope: !1462)
!1492 = !DILocation(line: 497, column: 3, scope: !1462)
!1493 = !DILocation(line: 498, column: 1, scope: !1453)
!1494 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_fmul", scope: !1, file: !1, line: 192, type: !556, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1495)
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1496 = !DILocalVariable(name: "output", arg: 1, scope: !1494, file: !1, line: 192, type: !39)
!1497 = !DILocalVariable(name: "input", arg: 2, scope: !1494, file: !1, line: 192, type: !39)
!1498 = !DILocalVariable(name: "input21", arg: 3, scope: !1494, file: !1, line: 192, type: !39)
!1499 = !DILocalVariable(name: "tmp", scope: !1494, file: !1, line: 194, type: !1045)
!1500 = !DILocalVariable(name: "t", scope: !1494, file: !1, line: 197, type: !244)
!1501 = !DILocalVariable(name: "_i", scope: !1502, file: !1, line: 198, type: !3)
!1502 = distinct !DILexicalBlock(scope: !1494, file: !1, line: 198, column: 3)
!1503 = !DILocalVariable(name: "b4", scope: !1494, file: !1, line: 202, type: !245)
!1504 = !DILocalVariable(name: "b0", scope: !1494, file: !1, line: 203, type: !245)
!1505 = !DILocalVariable(name: "b4_", scope: !1494, file: !1, line: 205, type: !245)
!1506 = !DILocalVariable(name: "b0_", scope: !1494, file: !1, line: 207, type: !245)
!1507 = !DILocalVariable(name: "i0", scope: !1494, file: !1, line: 214, type: !8)
!1508 = !DILocalVariable(name: "i1", scope: !1494, file: !1, line: 215, type: !8)
!1509 = !DILocalVariable(name: "i0_", scope: !1494, file: !1, line: 216, type: !8)
!1510 = !DILocalVariable(name: "i1_", scope: !1494, file: !1, line: 217, type: !8)
!1511 = !DILocation(line: 0, scope: !1494)
!1512 = !DILocation(line: 194, column: 3, scope: !1494)
!1513 = !DILocation(line: 194, column: 12, scope: !1494)
!1514 = !DILocation(line: 195, column: 3, scope: !1494)
!1515 = !DILocation(line: 197, column: 3, scope: !1494)
!1516 = !DILocation(line: 197, column: 19, scope: !1494)
!1517 = !DILocation(line: 0, scope: !1502)
!1518 = !DILocation(line: 198, column: 3, scope: !1502)
!1519 = !DILocation(line: 200, column: 38, scope: !1494)
!1520 = !DILocalVariable(name: "output", arg: 1, scope: !1521, file: !1, line: 165, type: !279)
!1521 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_mul_shift_reduce_", scope: !1, file: !1, line: 165, type: !1522, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1524)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !279, !39, !39}
!1524 = !{!1520, !1525, !1526, !1527, !1529, !1531, !1533, !1535, !1536}
!1525 = !DILocalVariable(name: "input", arg: 2, scope: !1521, file: !1, line: 165, type: !39)
!1526 = !DILocalVariable(name: "input21", arg: 3, scope: !1521, file: !1, line: 165, type: !39)
!1527 = !DILocalVariable(name: "input2i", scope: !1528, file: !1, line: 168, type: !8)
!1528 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 167, column: 3)
!1529 = !DILocalVariable(name: "input2i", scope: !1530, file: !1, line: 173, type: !8)
!1530 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 172, column: 3)
!1531 = !DILocalVariable(name: "input2i", scope: !1532, file: !1, line: 178, type: !8)
!1532 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 177, column: 3)
!1533 = !DILocalVariable(name: "input2i", scope: !1534, file: !1, line: 183, type: !8)
!1534 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 182, column: 3)
!1535 = !DILocalVariable(name: "i", scope: !1521, file: !1, line: 187, type: !3)
!1536 = !DILocalVariable(name: "input2i", scope: !1521, file: !1, line: 188, type: !8)
!1537 = !DILocation(line: 0, scope: !1521, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 200, column: 3, scope: !1494)
!1539 = !DILocation(line: 168, column: 24, scope: !1528, inlinedAt: !1538)
!1540 = !DILocation(line: 0, scope: !1528, inlinedAt: !1538)
!1541 = !DILocation(line: 169, column: 5, scope: !1528, inlinedAt: !1538)
!1542 = !DILocalVariable(name: "output", arg: 1, scope: !1543, file: !1, line: 136, type: !39)
!1543 = distinct !DISubprogram(name: "Hacl_Bignum_Fmul_shift_reduce", scope: !1, file: !1, line: 136, type: !572, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1544)
!1544 = !{!1542, !1545, !1546, !1548, !1549, !1551, !1552, !1554, !1555, !1557, !1558}
!1545 = !DILocalVariable(name: "tmp", scope: !1543, file: !1, line: 138, type: !8)
!1546 = !DILocalVariable(name: "ctr", scope: !1547, file: !1, line: 140, type: !3)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 139, column: 3)
!1548 = !DILocalVariable(name: "z", scope: !1547, file: !1, line: 141, type: !8)
!1549 = !DILocalVariable(name: "ctr", scope: !1550, file: !1, line: 145, type: !3)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 144, column: 3)
!1551 = !DILocalVariable(name: "z", scope: !1550, file: !1, line: 146, type: !8)
!1552 = !DILocalVariable(name: "ctr", scope: !1553, file: !1, line: 150, type: !3)
!1553 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 149, column: 3)
!1554 = !DILocalVariable(name: "z", scope: !1553, file: !1, line: 151, type: !8)
!1555 = !DILocalVariable(name: "ctr", scope: !1556, file: !1, line: 155, type: !3)
!1556 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 154, column: 3)
!1557 = !DILocalVariable(name: "z", scope: !1556, file: !1, line: 156, type: !8)
!1558 = !DILocalVariable(name: "b0", scope: !1543, file: !1, line: 160, type: !8)
!1559 = !DILocation(line: 0, scope: !1543, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 170, column: 5, scope: !1528, inlinedAt: !1538)
!1561 = !DILocation(line: 138, column: 18, scope: !1543, inlinedAt: !1560)
!1562 = !DILocation(line: 0, scope: !1547, inlinedAt: !1560)
!1563 = !DILocation(line: 141, column: 18, scope: !1547, inlinedAt: !1560)
!1564 = !DILocation(line: 142, column: 17, scope: !1547, inlinedAt: !1560)
!1565 = !DILocation(line: 0, scope: !1550, inlinedAt: !1560)
!1566 = !DILocation(line: 146, column: 18, scope: !1550, inlinedAt: !1560)
!1567 = !DILocation(line: 147, column: 17, scope: !1550, inlinedAt: !1560)
!1568 = !DILocation(line: 0, scope: !1553, inlinedAt: !1560)
!1569 = !DILocation(line: 151, column: 18, scope: !1553, inlinedAt: !1560)
!1570 = !DILocation(line: 152, column: 17, scope: !1553, inlinedAt: !1560)
!1571 = !DILocation(line: 0, scope: !1556, inlinedAt: !1560)
!1572 = !DILocation(line: 156, column: 18, scope: !1556, inlinedAt: !1560)
!1573 = !DILocation(line: 157, column: 17, scope: !1556, inlinedAt: !1560)
!1574 = !DILocation(line: 161, column: 30, scope: !1543, inlinedAt: !1560)
!1575 = !DILocation(line: 161, column: 14, scope: !1543, inlinedAt: !1560)
!1576 = !DILocation(line: 173, column: 24, scope: !1530, inlinedAt: !1538)
!1577 = !DILocation(line: 0, scope: !1530, inlinedAt: !1538)
!1578 = !DILocation(line: 174, column: 5, scope: !1530, inlinedAt: !1538)
!1579 = !DILocation(line: 0, scope: !1543, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 175, column: 5, scope: !1530, inlinedAt: !1538)
!1581 = !DILocation(line: 0, scope: !1547, inlinedAt: !1580)
!1582 = !DILocation(line: 142, column: 17, scope: !1547, inlinedAt: !1580)
!1583 = !DILocation(line: 0, scope: !1550, inlinedAt: !1580)
!1584 = !DILocation(line: 147, column: 17, scope: !1550, inlinedAt: !1580)
!1585 = !DILocation(line: 0, scope: !1553, inlinedAt: !1580)
!1586 = !DILocation(line: 152, column: 17, scope: !1553, inlinedAt: !1580)
!1587 = !DILocation(line: 0, scope: !1556, inlinedAt: !1580)
!1588 = !DILocation(line: 157, column: 17, scope: !1556, inlinedAt: !1580)
!1589 = !DILocation(line: 161, column: 30, scope: !1543, inlinedAt: !1580)
!1590 = !DILocation(line: 161, column: 14, scope: !1543, inlinedAt: !1580)
!1591 = !DILocation(line: 178, column: 24, scope: !1532, inlinedAt: !1538)
!1592 = !DILocation(line: 0, scope: !1532, inlinedAt: !1538)
!1593 = !DILocation(line: 179, column: 5, scope: !1532, inlinedAt: !1538)
!1594 = !DILocation(line: 0, scope: !1543, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 180, column: 5, scope: !1532, inlinedAt: !1538)
!1596 = !DILocation(line: 0, scope: !1547, inlinedAt: !1595)
!1597 = !DILocation(line: 142, column: 17, scope: !1547, inlinedAt: !1595)
!1598 = !DILocation(line: 0, scope: !1550, inlinedAt: !1595)
!1599 = !DILocation(line: 147, column: 17, scope: !1550, inlinedAt: !1595)
!1600 = !DILocation(line: 0, scope: !1553, inlinedAt: !1595)
!1601 = !DILocation(line: 152, column: 17, scope: !1553, inlinedAt: !1595)
!1602 = !DILocation(line: 0, scope: !1556, inlinedAt: !1595)
!1603 = !DILocation(line: 157, column: 17, scope: !1556, inlinedAt: !1595)
!1604 = !DILocation(line: 161, column: 30, scope: !1543, inlinedAt: !1595)
!1605 = !DILocation(line: 161, column: 14, scope: !1543, inlinedAt: !1595)
!1606 = !DILocation(line: 183, column: 24, scope: !1534, inlinedAt: !1538)
!1607 = !DILocation(line: 0, scope: !1534, inlinedAt: !1538)
!1608 = !DILocation(line: 184, column: 5, scope: !1534, inlinedAt: !1538)
!1609 = !DILocation(line: 0, scope: !1543, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 185, column: 5, scope: !1534, inlinedAt: !1538)
!1611 = !DILocation(line: 0, scope: !1547, inlinedAt: !1610)
!1612 = !DILocation(line: 142, column: 17, scope: !1547, inlinedAt: !1610)
!1613 = !DILocation(line: 0, scope: !1550, inlinedAt: !1610)
!1614 = !DILocation(line: 147, column: 17, scope: !1550, inlinedAt: !1610)
!1615 = !DILocation(line: 0, scope: !1553, inlinedAt: !1610)
!1616 = !DILocation(line: 152, column: 17, scope: !1553, inlinedAt: !1610)
!1617 = !DILocation(line: 0, scope: !1556, inlinedAt: !1610)
!1618 = !DILocation(line: 157, column: 17, scope: !1556, inlinedAt: !1610)
!1619 = !DILocation(line: 161, column: 30, scope: !1543, inlinedAt: !1610)
!1620 = !DILocation(line: 161, column: 14, scope: !1543, inlinedAt: !1610)
!1621 = !DILocation(line: 188, column: 22, scope: !1521, inlinedAt: !1538)
!1622 = !DILocation(line: 189, column: 3, scope: !1521, inlinedAt: !1538)
!1623 = !DILocation(line: 201, column: 3, scope: !1494)
!1624 = !DILocation(line: 202, column: 24, scope: !1494)
!1625 = !DILocation(line: 203, column: 24, scope: !1494)
!1626 = !DILocation(line: 204, column: 3, scope: !1494)
!1627 = !DILocation(line: 205, column: 3, scope: !1494)
!1628 = !DILocation(line: 205, column: 34, scope: !1494)
!1629 = !DILocation(line: 205, column: 9, scope: !1494)
!1630 = !DILocation(line: 206, column: 3, scope: !1494)
!1631 = !DILocation(line: 207, column: 3, scope: !1494)
!1632 = !DILocation(line: 210, column: 41, scope: !1494)
!1633 = !DILocation(line: 210, column: 9, scope: !1494)
!1634 = !DILocation(line: 209, column: 7, scope: !1494)
!1635 = !DILocation(line: 208, column: 5, scope: !1494)
!1636 = !DILocation(line: 211, column: 3, scope: !1494)
!1637 = !DILocation(line: 211, column: 11, scope: !1494)
!1638 = !DILocation(line: 212, column: 11, scope: !1494)
!1639 = !DILocation(line: 0, scope: !1381, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 213, column: 3, scope: !1494)
!1641 = !DILocation(line: 41, column: 26, scope: !1387, inlinedAt: !1640)
!1642 = !DILocation(line: 0, scope: !1387, inlinedAt: !1640)
!1643 = !DILocation(line: 42, column: 18, scope: !1387, inlinedAt: !1640)
!1644 = !DILocation(line: 42, column: 16, scope: !1387, inlinedAt: !1640)
!1645 = !DILocation(line: 45, column: 26, scope: !1389, inlinedAt: !1640)
!1646 = !DILocation(line: 0, scope: !1389, inlinedAt: !1640)
!1647 = !DILocation(line: 46, column: 18, scope: !1389, inlinedAt: !1640)
!1648 = !DILocation(line: 46, column: 5, scope: !1389, inlinedAt: !1640)
!1649 = !DILocation(line: 46, column: 16, scope: !1389, inlinedAt: !1640)
!1650 = !DILocation(line: 49, column: 26, scope: !1391, inlinedAt: !1640)
!1651 = !DILocation(line: 0, scope: !1391, inlinedAt: !1640)
!1652 = !DILocation(line: 50, column: 18, scope: !1391, inlinedAt: !1640)
!1653 = !DILocation(line: 50, column: 5, scope: !1391, inlinedAt: !1640)
!1654 = !DILocation(line: 50, column: 16, scope: !1391, inlinedAt: !1640)
!1655 = !DILocation(line: 53, column: 26, scope: !1393, inlinedAt: !1640)
!1656 = !DILocation(line: 0, scope: !1393, inlinedAt: !1640)
!1657 = !DILocation(line: 54, column: 18, scope: !1393, inlinedAt: !1640)
!1658 = !DILocation(line: 54, column: 5, scope: !1393, inlinedAt: !1640)
!1659 = !DILocation(line: 54, column: 16, scope: !1393, inlinedAt: !1640)
!1660 = !DILocation(line: 57, column: 26, scope: !1395, inlinedAt: !1640)
!1661 = !DILocation(line: 0, scope: !1395, inlinedAt: !1640)
!1662 = !DILocation(line: 58, column: 18, scope: !1395, inlinedAt: !1640)
!1663 = !DILocation(line: 58, column: 5, scope: !1395, inlinedAt: !1640)
!1664 = !DILocation(line: 58, column: 16, scope: !1395, inlinedAt: !1640)
!1665 = !DILocation(line: 214, column: 17, scope: !1494)
!1666 = !DILocation(line: 215, column: 17, scope: !1494)
!1667 = !DILocation(line: 216, column: 21, scope: !1494)
!1668 = !DILocation(line: 217, column: 27, scope: !1494)
!1669 = !DILocation(line: 217, column: 21, scope: !1494)
!1670 = !DILocation(line: 218, column: 14, scope: !1494)
!1671 = !DILocation(line: 219, column: 14, scope: !1494)
!1672 = !DILocation(line: 220, column: 1, scope: !1494)
!1673 = !DILocation(line: 199, column: 5, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 198, column: 3)
!1675 = !DILocation(line: 199, column: 13, scope: !1674)
!1676 = !DILocation(line: 198, column: 45, scope: !1674)
!1677 = !DILocation(line: 198, column: 29, scope: !1674)
!1678 = distinct !{!1678, !1518, !1679, !270, !271}
!1679 = !DILocation(line: 199, column: 57, scope: !1502)
!1680 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !246, file: !246, line: 65, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1683)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!247, !8}
!1683 = !{}
!1684 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_carry_wide_", scope: !1, file: !1, line: 96, type: !1685, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1687)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !279}
!1687 = !{!1688, !1689, !1691, !1692, !1693, !1694, !1695, !1697, !1698, !1699, !1700, !1701, !1703, !1704, !1705, !1706, !1707, !1709, !1710, !1711, !1712}
!1688 = !DILocalVariable(name: "tmp", arg: 1, scope: !1684, file: !1, line: 96, type: !279)
!1689 = !DILocalVariable(name: "ctr", scope: !1690, file: !1, line: 99, type: !3)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 98, column: 3)
!1691 = !DILocalVariable(name: "tctr", scope: !1690, file: !1, line: 100, type: !245)
!1692 = !DILocalVariable(name: "tctrp1", scope: !1690, file: !1, line: 101, type: !245)
!1693 = !DILocalVariable(name: "r0", scope: !1690, file: !1, line: 102, type: !8)
!1694 = !DILocalVariable(name: "c", scope: !1690, file: !1, line: 103, type: !245)
!1695 = !DILocalVariable(name: "ctr", scope: !1696, file: !1, line: 108, type: !3)
!1696 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 107, column: 3)
!1697 = !DILocalVariable(name: "tctr", scope: !1696, file: !1, line: 109, type: !245)
!1698 = !DILocalVariable(name: "tctrp1", scope: !1696, file: !1, line: 110, type: !245)
!1699 = !DILocalVariable(name: "r0", scope: !1696, file: !1, line: 111, type: !8)
!1700 = !DILocalVariable(name: "c", scope: !1696, file: !1, line: 112, type: !245)
!1701 = !DILocalVariable(name: "ctr", scope: !1702, file: !1, line: 117, type: !3)
!1702 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 116, column: 3)
!1703 = !DILocalVariable(name: "tctr", scope: !1702, file: !1, line: 118, type: !245)
!1704 = !DILocalVariable(name: "tctrp1", scope: !1702, file: !1, line: 119, type: !245)
!1705 = !DILocalVariable(name: "r0", scope: !1702, file: !1, line: 120, type: !8)
!1706 = !DILocalVariable(name: "c", scope: !1702, file: !1, line: 121, type: !245)
!1707 = !DILocalVariable(name: "ctr", scope: !1708, file: !1, line: 126, type: !3)
!1708 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 125, column: 3)
!1709 = !DILocalVariable(name: "tctr", scope: !1708, file: !1, line: 127, type: !245)
!1710 = !DILocalVariable(name: "tctrp1", scope: !1708, file: !1, line: 128, type: !245)
!1711 = !DILocalVariable(name: "r0", scope: !1708, file: !1, line: 129, type: !8)
!1712 = !DILocalVariable(name: "c", scope: !1708, file: !1, line: 130, type: !245)
!1713 = !DILocation(line: 0, scope: !1684)
!1714 = !DILocation(line: 0, scope: !1690)
!1715 = !DILocation(line: 100, column: 28, scope: !1690)
!1716 = !DILocation(line: 101, column: 30, scope: !1690)
!1717 = !DILocation(line: 102, column: 19, scope: !1690)
!1718 = !DILocation(line: 102, column: 57, scope: !1690)
!1719 = !DILocation(line: 103, column: 5, scope: !1690)
!1720 = !DILocation(line: 103, column: 21, scope: !1690)
!1721 = !DILocation(line: 103, column: 25, scope: !1690)
!1722 = !DILocation(line: 104, column: 16, scope: !1690)
!1723 = !DILocation(line: 105, column: 31, scope: !1690)
!1724 = !DILocation(line: 106, column: 3, scope: !1684)
!1725 = !DILocation(line: 0, scope: !1696)
!1726 = !DILocation(line: 109, column: 28, scope: !1696)
!1727 = !DILocation(line: 110, column: 30, scope: !1696)
!1728 = !DILocation(line: 111, column: 19, scope: !1696)
!1729 = !DILocation(line: 111, column: 57, scope: !1696)
!1730 = !DILocation(line: 112, column: 5, scope: !1696)
!1731 = !DILocation(line: 112, column: 21, scope: !1696)
!1732 = !DILocation(line: 112, column: 25, scope: !1696)
!1733 = !DILocation(line: 113, column: 16, scope: !1696)
!1734 = !DILocation(line: 114, column: 31, scope: !1696)
!1735 = !DILocation(line: 115, column: 3, scope: !1684)
!1736 = !DILocation(line: 0, scope: !1702)
!1737 = !DILocation(line: 118, column: 28, scope: !1702)
!1738 = !DILocation(line: 119, column: 30, scope: !1702)
!1739 = !DILocation(line: 120, column: 19, scope: !1702)
!1740 = !DILocation(line: 120, column: 57, scope: !1702)
!1741 = !DILocation(line: 121, column: 5, scope: !1702)
!1742 = !DILocation(line: 121, column: 21, scope: !1702)
!1743 = !DILocation(line: 121, column: 25, scope: !1702)
!1744 = !DILocation(line: 122, column: 16, scope: !1702)
!1745 = !DILocation(line: 123, column: 31, scope: !1702)
!1746 = !DILocation(line: 124, column: 3, scope: !1684)
!1747 = !DILocation(line: 0, scope: !1708)
!1748 = !DILocation(line: 127, column: 28, scope: !1708)
!1749 = !DILocation(line: 128, column: 30, scope: !1708)
!1750 = !DILocation(line: 129, column: 19, scope: !1708)
!1751 = !DILocation(line: 129, column: 57, scope: !1708)
!1752 = !DILocation(line: 130, column: 5, scope: !1708)
!1753 = !DILocation(line: 130, column: 21, scope: !1708)
!1754 = !DILocation(line: 130, column: 25, scope: !1708)
!1755 = !DILocation(line: 131, column: 16, scope: !1708)
!1756 = !DILocation(line: 132, column: 31, scope: !1708)
!1757 = !DILocation(line: 133, column: 3, scope: !1684)
!1758 = !DILocation(line: 134, column: 1, scope: !1684)
!1759 = !DISubprogram(name: "FStar_UInt128_logand", scope: !246, file: !246, line: 49, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1683)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!247, !247, !247}
!1762 = !DISubprogram(name: "FStar_UInt128_add", scope: !246, file: !246, line: 41, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1683)
!1763 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !246, file: !246, line: 78, type: !1764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1683)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!247, !8, !8}
!1766 = !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !246, file: !246, line: 67, type: !1767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1683)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!8, !247}
!1769 = !DISubprogram(name: "FStar_UInt128_shift_right", scope: !246, file: !246, line: 59, type: !1770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1683)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!247, !247, !3}
!1772 = distinct !DISubprogram(name: "Hacl_Bignum_Fproduct_sum_scalar_multiplication_", scope: !1, file: !1, line: 63, type: !1773, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{null, !279, !39, !8}
!1775 = !{!1776, !1777, !1778, !1779, !1781, !1782, !1784, !1785, !1787, !1788, !1790, !1791, !1793}
!1776 = !DILocalVariable(name: "output", arg: 1, scope: !1772, file: !1, line: 64, type: !279)
!1777 = !DILocalVariable(name: "input", arg: 2, scope: !1772, file: !1, line: 65, type: !39)
!1778 = !DILocalVariable(name: "s", arg: 3, scope: !1772, file: !1, line: 66, type: !8)
!1779 = !DILocalVariable(name: "xi", scope: !1780, file: !1, line: 70, type: !245)
!1780 = distinct !DILexicalBlock(scope: !1772, file: !1, line: 69, column: 3)
!1781 = !DILocalVariable(name: "yi", scope: !1780, file: !1, line: 71, type: !8)
!1782 = !DILocalVariable(name: "xi", scope: !1783, file: !1, line: 75, type: !245)
!1783 = distinct !DILexicalBlock(scope: !1772, file: !1, line: 74, column: 3)
!1784 = !DILocalVariable(name: "yi", scope: !1783, file: !1, line: 76, type: !8)
!1785 = !DILocalVariable(name: "xi", scope: !1786, file: !1, line: 80, type: !245)
!1786 = distinct !DILexicalBlock(scope: !1772, file: !1, line: 79, column: 3)
!1787 = !DILocalVariable(name: "yi", scope: !1786, file: !1, line: 81, type: !8)
!1788 = !DILocalVariable(name: "xi", scope: !1789, file: !1, line: 85, type: !245)
!1789 = distinct !DILexicalBlock(scope: !1772, file: !1, line: 84, column: 3)
!1790 = !DILocalVariable(name: "yi", scope: !1789, file: !1, line: 86, type: !8)
!1791 = !DILocalVariable(name: "xi", scope: !1792, file: !1, line: 90, type: !245)
!1792 = distinct !DILexicalBlock(scope: !1772, file: !1, line: 89, column: 3)
!1793 = !DILocalVariable(name: "yi", scope: !1792, file: !1, line: 91, type: !8)
!1794 = !DILocation(line: 0, scope: !1772)
!1795 = !DILocation(line: 70, column: 26, scope: !1780)
!1796 = !DILocation(line: 0, scope: !1780)
!1797 = !DILocation(line: 71, column: 19, scope: !1780)
!1798 = !DILocation(line: 72, column: 18, scope: !1780)
!1799 = !DILocation(line: 72, column: 44, scope: !1780)
!1800 = !DILocation(line: 75, column: 26, scope: !1783)
!1801 = !DILocation(line: 0, scope: !1783)
!1802 = !DILocation(line: 76, column: 19, scope: !1783)
!1803 = !DILocation(line: 77, column: 5, scope: !1783)
!1804 = !DILocation(line: 77, column: 18, scope: !1783)
!1805 = !DILocation(line: 77, column: 44, scope: !1783)
!1806 = !DILocation(line: 80, column: 26, scope: !1786)
!1807 = !DILocation(line: 0, scope: !1786)
!1808 = !DILocation(line: 81, column: 19, scope: !1786)
!1809 = !DILocation(line: 82, column: 5, scope: !1786)
!1810 = !DILocation(line: 82, column: 18, scope: !1786)
!1811 = !DILocation(line: 82, column: 44, scope: !1786)
!1812 = !DILocation(line: 85, column: 26, scope: !1789)
!1813 = !DILocation(line: 0, scope: !1789)
!1814 = !DILocation(line: 86, column: 19, scope: !1789)
!1815 = !DILocation(line: 87, column: 5, scope: !1789)
!1816 = !DILocation(line: 87, column: 18, scope: !1789)
!1817 = !DILocation(line: 87, column: 44, scope: !1789)
!1818 = !DILocation(line: 90, column: 26, scope: !1792)
!1819 = !DILocation(line: 0, scope: !1792)
!1820 = !DILocation(line: 91, column: 19, scope: !1792)
!1821 = !DILocation(line: 92, column: 5, scope: !1792)
!1822 = !DILocation(line: 92, column: 18, scope: !1792)
!1823 = !DILocation(line: 92, column: 44, scope: !1792)
!1824 = !DILocation(line: 94, column: 1, scope: !1772)
!1825 = !DISubprogram(name: "FStar_UInt128_add_mod", scope: !246, file: !246, line: 43, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1683)
!1826 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare_", scope: !1, file: !1, line: 266, type: !1827, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !279, !39}
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839}
!1830 = !DILocalVariable(name: "tmp", arg: 1, scope: !1826, file: !1, line: 266, type: !279)
!1831 = !DILocalVariable(name: "output", arg: 2, scope: !1826, file: !1, line: 266, type: !39)
!1832 = !DILocalVariable(name: "b4", scope: !1826, file: !1, line: 270, type: !245)
!1833 = !DILocalVariable(name: "b0", scope: !1826, file: !1, line: 271, type: !245)
!1834 = !DILocalVariable(name: "b4_", scope: !1826, file: !1, line: 273, type: !245)
!1835 = !DILocalVariable(name: "b0_", scope: !1826, file: !1, line: 275, type: !245)
!1836 = !DILocalVariable(name: "i0", scope: !1826, file: !1, line: 282, type: !8)
!1837 = !DILocalVariable(name: "i1", scope: !1826, file: !1, line: 283, type: !8)
!1838 = !DILocalVariable(name: "i0_", scope: !1826, file: !1, line: 284, type: !8)
!1839 = !DILocalVariable(name: "i1_", scope: !1826, file: !1, line: 285, type: !8)
!1840 = !DILocation(line: 0, scope: !1826)
!1841 = !DILocation(line: 0, scope: !1842, inlinedAt: !1861)
!1842 = distinct !DISubprogram(name: "Hacl_Bignum_Fsquare_fsquare__", scope: !1, file: !1, line: 222, type: !1827, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1843)
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860}
!1844 = !DILocalVariable(name: "tmp", arg: 1, scope: !1842, file: !1, line: 222, type: !279)
!1845 = !DILocalVariable(name: "output", arg: 2, scope: !1842, file: !1, line: 222, type: !39)
!1846 = !DILocalVariable(name: "r0", scope: !1842, file: !1, line: 224, type: !8)
!1847 = !DILocalVariable(name: "r1", scope: !1842, file: !1, line: 225, type: !8)
!1848 = !DILocalVariable(name: "r2", scope: !1842, file: !1, line: 226, type: !8)
!1849 = !DILocalVariable(name: "r3", scope: !1842, file: !1, line: 227, type: !8)
!1850 = !DILocalVariable(name: "r4", scope: !1842, file: !1, line: 228, type: !8)
!1851 = !DILocalVariable(name: "d0", scope: !1842, file: !1, line: 229, type: !8)
!1852 = !DILocalVariable(name: "d1", scope: !1842, file: !1, line: 230, type: !8)
!1853 = !DILocalVariable(name: "d2", scope: !1842, file: !1, line: 231, type: !8)
!1854 = !DILocalVariable(name: "d419", scope: !1842, file: !1, line: 232, type: !8)
!1855 = !DILocalVariable(name: "d4", scope: !1842, file: !1, line: 233, type: !8)
!1856 = !DILocalVariable(name: "s0", scope: !1842, file: !1, line: 235, type: !245)
!1857 = !DILocalVariable(name: "s1", scope: !1842, file: !1, line: 240, type: !245)
!1858 = !DILocalVariable(name: "s2", scope: !1842, file: !1, line: 245, type: !245)
!1859 = !DILocalVariable(name: "s3", scope: !1842, file: !1, line: 250, type: !245)
!1860 = !DILocalVariable(name: "s4", scope: !1842, file: !1, line: 255, type: !245)
!1861 = distinct !DILocation(line: 268, column: 3, scope: !1826)
!1862 = !DILocation(line: 224, column: 17, scope: !1842, inlinedAt: !1861)
!1863 = !DILocation(line: 225, column: 17, scope: !1842, inlinedAt: !1861)
!1864 = !DILocation(line: 226, column: 17, scope: !1842, inlinedAt: !1861)
!1865 = !DILocation(line: 227, column: 17, scope: !1842, inlinedAt: !1861)
!1866 = !DILocation(line: 228, column: 17, scope: !1842, inlinedAt: !1861)
!1867 = !DILocation(line: 229, column: 20, scope: !1842, inlinedAt: !1861)
!1868 = !DILocation(line: 230, column: 20, scope: !1842, inlinedAt: !1861)
!1869 = !DILocation(line: 231, column: 35, scope: !1842, inlinedAt: !1861)
!1870 = !DILocation(line: 232, column: 22, scope: !1842, inlinedAt: !1861)
!1871 = !DILocation(line: 233, column: 22, scope: !1842, inlinedAt: !1861)
!1872 = !DILocation(line: 234, column: 3, scope: !1842, inlinedAt: !1861)
!1873 = !DILocation(line: 235, column: 3, scope: !1842, inlinedAt: !1861)
!1874 = !DILocation(line: 236, column: 41, scope: !1842, inlinedAt: !1861)
!1875 = !DILocation(line: 237, column: 9, scope: !1842, inlinedAt: !1861)
!1876 = !DILocation(line: 236, column: 23, scope: !1842, inlinedAt: !1861)
!1877 = !DILocation(line: 238, column: 7, scope: !1842, inlinedAt: !1861)
!1878 = !DILocation(line: 236, column: 5, scope: !1842, inlinedAt: !1861)
!1879 = !DILocation(line: 239, column: 3, scope: !1842, inlinedAt: !1861)
!1880 = !DILocation(line: 240, column: 3, scope: !1842, inlinedAt: !1861)
!1881 = !DILocation(line: 241, column: 41, scope: !1842, inlinedAt: !1861)
!1882 = !DILocation(line: 242, column: 9, scope: !1842, inlinedAt: !1861)
!1883 = !DILocation(line: 241, column: 23, scope: !1842, inlinedAt: !1861)
!1884 = !DILocation(line: 243, column: 33, scope: !1842, inlinedAt: !1861)
!1885 = !DILocation(line: 243, column: 7, scope: !1842, inlinedAt: !1861)
!1886 = !DILocation(line: 241, column: 5, scope: !1842, inlinedAt: !1861)
!1887 = !DILocation(line: 244, column: 3, scope: !1842, inlinedAt: !1861)
!1888 = !DILocation(line: 245, column: 3, scope: !1842, inlinedAt: !1861)
!1889 = !DILocation(line: 246, column: 41, scope: !1842, inlinedAt: !1861)
!1890 = !DILocation(line: 247, column: 9, scope: !1842, inlinedAt: !1861)
!1891 = !DILocation(line: 246, column: 23, scope: !1842, inlinedAt: !1861)
!1892 = !DILocation(line: 248, column: 7, scope: !1842, inlinedAt: !1861)
!1893 = !DILocation(line: 246, column: 5, scope: !1842, inlinedAt: !1861)
!1894 = !DILocation(line: 249, column: 3, scope: !1842, inlinedAt: !1861)
!1895 = !DILocation(line: 250, column: 3, scope: !1842, inlinedAt: !1861)
!1896 = !DILocation(line: 251, column: 41, scope: !1842, inlinedAt: !1861)
!1897 = !DILocation(line: 252, column: 9, scope: !1842, inlinedAt: !1861)
!1898 = !DILocation(line: 251, column: 23, scope: !1842, inlinedAt: !1861)
!1899 = !DILocation(line: 253, column: 7, scope: !1842, inlinedAt: !1861)
!1900 = !DILocation(line: 251, column: 5, scope: !1842, inlinedAt: !1861)
!1901 = !DILocation(line: 254, column: 3, scope: !1842, inlinedAt: !1861)
!1902 = !DILocation(line: 255, column: 3, scope: !1842, inlinedAt: !1861)
!1903 = !DILocation(line: 256, column: 41, scope: !1842, inlinedAt: !1861)
!1904 = !DILocation(line: 257, column: 9, scope: !1842, inlinedAt: !1861)
!1905 = !DILocation(line: 256, column: 23, scope: !1842, inlinedAt: !1861)
!1906 = !DILocation(line: 258, column: 7, scope: !1842, inlinedAt: !1861)
!1907 = !DILocation(line: 256, column: 5, scope: !1842, inlinedAt: !1861)
!1908 = !DILocation(line: 259, column: 13, scope: !1842, inlinedAt: !1861)
!1909 = !DILocation(line: 260, column: 3, scope: !1842, inlinedAt: !1861)
!1910 = !DILocation(line: 260, column: 13, scope: !1842, inlinedAt: !1861)
!1911 = !DILocation(line: 261, column: 3, scope: !1842, inlinedAt: !1861)
!1912 = !DILocation(line: 261, column: 13, scope: !1842, inlinedAt: !1861)
!1913 = !DILocation(line: 262, column: 3, scope: !1842, inlinedAt: !1861)
!1914 = !DILocation(line: 262, column: 13, scope: !1842, inlinedAt: !1861)
!1915 = !DILocation(line: 263, column: 3, scope: !1842, inlinedAt: !1861)
!1916 = !DILocation(line: 263, column: 13, scope: !1842, inlinedAt: !1861)
!1917 = !DILocation(line: 264, column: 1, scope: !1842, inlinedAt: !1861)
!1918 = !DILocation(line: 269, column: 3, scope: !1826)
!1919 = !DILocation(line: 270, column: 24, scope: !1826)
!1920 = !DILocation(line: 271, column: 24, scope: !1826)
!1921 = !DILocation(line: 272, column: 3, scope: !1826)
!1922 = !DILocation(line: 273, column: 3, scope: !1826)
!1923 = !DILocation(line: 273, column: 34, scope: !1826)
!1924 = !DILocation(line: 273, column: 9, scope: !1826)
!1925 = !DILocation(line: 274, column: 3, scope: !1826)
!1926 = !DILocation(line: 275, column: 3, scope: !1826)
!1927 = !DILocation(line: 278, column: 41, scope: !1826)
!1928 = !DILocation(line: 278, column: 9, scope: !1826)
!1929 = !DILocation(line: 277, column: 7, scope: !1826)
!1930 = !DILocation(line: 276, column: 5, scope: !1826)
!1931 = !DILocation(line: 279, column: 13, scope: !1826)
!1932 = !DILocation(line: 280, column: 13, scope: !1826)
!1933 = !DILocation(line: 0, scope: !1381, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 281, column: 3, scope: !1826)
!1935 = !DILocation(line: 41, column: 26, scope: !1387, inlinedAt: !1934)
!1936 = !DILocation(line: 0, scope: !1387, inlinedAt: !1934)
!1937 = !DILocation(line: 42, column: 18, scope: !1387, inlinedAt: !1934)
!1938 = !DILocation(line: 42, column: 16, scope: !1387, inlinedAt: !1934)
!1939 = !DILocation(line: 45, column: 26, scope: !1389, inlinedAt: !1934)
!1940 = !DILocation(line: 0, scope: !1389, inlinedAt: !1934)
!1941 = !DILocation(line: 46, column: 18, scope: !1389, inlinedAt: !1934)
!1942 = !DILocation(line: 46, column: 16, scope: !1389, inlinedAt: !1934)
!1943 = !DILocation(line: 49, column: 26, scope: !1391, inlinedAt: !1934)
!1944 = !DILocation(line: 0, scope: !1391, inlinedAt: !1934)
!1945 = !DILocation(line: 50, column: 18, scope: !1391, inlinedAt: !1934)
!1946 = !DILocation(line: 50, column: 16, scope: !1391, inlinedAt: !1934)
!1947 = !DILocation(line: 53, column: 26, scope: !1393, inlinedAt: !1934)
!1948 = !DILocation(line: 0, scope: !1393, inlinedAt: !1934)
!1949 = !DILocation(line: 54, column: 18, scope: !1393, inlinedAt: !1934)
!1950 = !DILocation(line: 54, column: 16, scope: !1393, inlinedAt: !1934)
!1951 = !DILocation(line: 57, column: 26, scope: !1395, inlinedAt: !1934)
!1952 = !DILocation(line: 0, scope: !1395, inlinedAt: !1934)
!1953 = !DILocation(line: 58, column: 18, scope: !1395, inlinedAt: !1934)
!1954 = !DILocation(line: 58, column: 16, scope: !1395, inlinedAt: !1934)
!1955 = !DILocation(line: 282, column: 17, scope: !1826)
!1956 = !DILocation(line: 283, column: 17, scope: !1826)
!1957 = !DILocation(line: 284, column: 21, scope: !1826)
!1958 = !DILocation(line: 285, column: 27, scope: !1826)
!1959 = !DILocation(line: 285, column: 21, scope: !1826)
!1960 = !DILocation(line: 286, column: 14, scope: !1826)
!1961 = !DILocation(line: 287, column: 14, scope: !1826)
!1962 = !DILocation(line: 288, column: 1, scope: !1826)
