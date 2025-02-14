; ModuleID = 'hacl-c/hacl-c/Hacl_SHA2_384.c'
source_filename = "hacl-c/hacl-c/Hacl_SHA2_384.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

@Hacl_SHA2_384_size_hash = dso_local local_unnamed_addr global i32 48, align 4, !dbg !0
@Hacl_SHA2_384_size_block = dso_local local_unnamed_addr global i32 128, align 4, !dbg !17
@Hacl_SHA2_384_size_state = dso_local local_unnamed_addr global i32 169, align 4, !dbg !19

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_SHA2_384_init(i64* noundef %0) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !34, metadata !DIExpression()), !dbg !35
  call fastcc void @Hacl_Impl_SHA2_384_init(i64* noundef %0), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @Hacl_Impl_SHA2_384_init(i64* noundef writeonly %0) unnamed_addr #0 !dbg !38 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !40, metadata !DIExpression()), !dbg !81
  %2 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !82
  call void @llvm.dbg.value(metadata i64* %2, metadata !41, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64* %0, metadata !42, metadata !DIExpression()), !dbg !81
  %3 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !83
  call void @llvm.dbg.value(metadata i64* %3, metadata !43, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64* %0, metadata !44, metadata !DIExpression()), !dbg !81
  %4 = getelementptr inbounds i64, i64* %0, i32 16, !dbg !84
  call void @llvm.dbg.value(metadata i64* %4, metadata !45, metadata !DIExpression()), !dbg !81
  %5 = getelementptr inbounds i64, i64* %0, i32 32, !dbg !85
  call void @llvm.dbg.value(metadata i64* %5, metadata !46, metadata !DIExpression()), !dbg !81
  %6 = getelementptr inbounds i64, i64* %0, i32 48, !dbg !86
  call void @llvm.dbg.value(metadata i64* %6, metadata !47, metadata !DIExpression()), !dbg !81
  %7 = getelementptr inbounds i64, i64* %0, i32 64, !dbg !87
  call void @llvm.dbg.value(metadata i64* %7, metadata !48, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64* %0, metadata !49, metadata !DIExpression()), !dbg !81
  %8 = getelementptr inbounds i64, i64* %0, i32 8, !dbg !88
  call void @llvm.dbg.value(metadata i64* %8, metadata !50, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64* %0, metadata !51, metadata !DIExpression()), !dbg !81
  %9 = getelementptr inbounds i64, i64* %0, i32 4, !dbg !89
  call void @llvm.dbg.value(metadata i64* %9, metadata !52, metadata !DIExpression()), !dbg !81
  store i64 4794697086780616226, i64* %0, align 4, !dbg !90, !tbaa !91
  %10 = getelementptr inbounds i64, i64* %0, i32 1, !dbg !95
  store i64 8158064640168781261, i64* %10, align 4, !dbg !96, !tbaa !91
  %11 = getelementptr inbounds i64, i64* %0, i32 2, !dbg !97
  store i64 -5349999486874862801, i64* %11, align 4, !dbg !98, !tbaa !91
  %12 = getelementptr inbounds i64, i64* %0, i32 3, !dbg !99
  store i64 -1606136188198331460, i64* %12, align 4, !dbg !100, !tbaa !91
  store i64 4131703408338449720, i64* %9, align 4, !dbg !101, !tbaa !91
  %13 = getelementptr inbounds i64, i64* %0, i32 5, !dbg !102
  store i64 6480981068601479193, i64* %13, align 4, !dbg !103, !tbaa !91
  %14 = getelementptr inbounds i64, i64* %0, i32 6, !dbg !104
  store i64 -7908458776815382629, i64* %14, align 4, !dbg !105, !tbaa !91
  %15 = getelementptr inbounds i64, i64* %0, i32 7, !dbg !106
  store i64 -6116909921290321640, i64* %15, align 4, !dbg !107, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %8, metadata !53, metadata !DIExpression()), !dbg !81
  %16 = getelementptr inbounds i64, i64* %0, i32 12, !dbg !108
  call void @llvm.dbg.value(metadata i64* %16, metadata !54, metadata !DIExpression()), !dbg !81
  store i64 -2880145864133508542, i64* %8, align 4, !dbg !109, !tbaa !91
  %17 = getelementptr inbounds i64, i64* %0, i32 9, !dbg !110
  store i64 1334009975649890238, i64* %17, align 4, !dbg !111, !tbaa !91
  %18 = getelementptr inbounds i64, i64* %0, i32 10, !dbg !112
  store i64 2608012711638119052, i64* %18, align 4, !dbg !113, !tbaa !91
  %19 = getelementptr inbounds i64, i64* %0, i32 11, !dbg !114
  store i64 6128411473006802146, i64* %19, align 4, !dbg !115, !tbaa !91
  store i64 8268148722764581231, i64* %16, align 4, !dbg !116, !tbaa !91
  %20 = getelementptr inbounds i64, i64* %0, i32 13, !dbg !117
  store i64 -9160688886553864527, i64* %20, align 4, !dbg !118, !tbaa !91
  %21 = getelementptr inbounds i64, i64* %0, i32 14, !dbg !119
  store i64 -7215885187991268811, i64* %21, align 4, !dbg !120, !tbaa !91
  %22 = getelementptr inbounds i64, i64* %0, i32 15, !dbg !121
  store i64 -4495734319001033068, i64* %22, align 4, !dbg !122, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %4, metadata !55, metadata !DIExpression()), !dbg !81
  %23 = getelementptr inbounds i64, i64* %0, i32 24, !dbg !123
  call void @llvm.dbg.value(metadata i64* %23, metadata !56, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64* %4, metadata !57, metadata !DIExpression()), !dbg !81
  %24 = getelementptr inbounds i64, i64* %0, i32 20, !dbg !124
  call void @llvm.dbg.value(metadata i64* %24, metadata !58, metadata !DIExpression()), !dbg !81
  store i64 -1973867731355612462, i64* %4, align 4, !dbg !125, !tbaa !91
  %25 = getelementptr inbounds i64, i64* %0, i32 17, !dbg !126
  store i64 -1171420211273849373, i64* %25, align 4, !dbg !127, !tbaa !91
  %26 = getelementptr inbounds i64, i64* %0, i32 18, !dbg !128
  store i64 1135362057144423861, i64* %26, align 4, !dbg !129, !tbaa !91
  %27 = getelementptr inbounds i64, i64* %0, i32 19, !dbg !130
  store i64 2597628984639134821, i64* %27, align 4, !dbg !131, !tbaa !91
  store i64 3308224258029322869, i64* %24, align 4, !dbg !132, !tbaa !91
  %28 = getelementptr inbounds i64, i64* %0, i32 21, !dbg !133
  store i64 5365058923640841347, i64* %28, align 4, !dbg !134, !tbaa !91
  %29 = getelementptr inbounds i64, i64* %0, i32 22, !dbg !135
  store i64 6679025012923562964, i64* %29, align 4, !dbg !136, !tbaa !91
  %30 = getelementptr inbounds i64, i64* %0, i32 23, !dbg !137
  store i64 8573033837759648693, i64* %30, align 4, !dbg !138, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %23, metadata !59, metadata !DIExpression()), !dbg !81
  %31 = getelementptr inbounds i64, i64* %0, i32 28, !dbg !139
  call void @llvm.dbg.value(metadata i64* %31, metadata !60, metadata !DIExpression()), !dbg !81
  store i64 -7476448914759557205, i64* %23, align 4, !dbg !140, !tbaa !91
  %32 = getelementptr inbounds i64, i64* %0, i32 25, !dbg !141
  store i64 -6327057829258317296, i64* %32, align 4, !dbg !142, !tbaa !91
  %33 = getelementptr inbounds i64, i64* %0, i32 26, !dbg !143
  store i64 -5763719355590565569, i64* %33, align 4, !dbg !144, !tbaa !91
  %34 = getelementptr inbounds i64, i64* %0, i32 27, !dbg !145
  store i64 -4658551843659510044, i64* %34, align 4, !dbg !146, !tbaa !91
  store i64 -4116276920077217854, i64* %31, align 4, !dbg !147, !tbaa !91
  %35 = getelementptr inbounds i64, i64* %0, i32 29, !dbg !148
  store i64 -3051310485924567259, i64* %35, align 4, !dbg !149, !tbaa !91
  %36 = getelementptr inbounds i64, i64* %0, i32 30, !dbg !150
  store i64 489312712824947311, i64* %36, align 4, !dbg !151, !tbaa !91
  %37 = getelementptr inbounds i64, i64* %0, i32 31, !dbg !152
  store i64 1452737877330783856, i64* %37, align 4, !dbg !153, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %5, metadata !61, metadata !DIExpression()), !dbg !81
  %38 = getelementptr inbounds i64, i64* %0, i32 40, !dbg !154
  call void @llvm.dbg.value(metadata i64* %38, metadata !62, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64* %5, metadata !63, metadata !DIExpression()), !dbg !81
  %39 = getelementptr inbounds i64, i64* %0, i32 36, !dbg !155
  call void @llvm.dbg.value(metadata i64* %39, metadata !64, metadata !DIExpression()), !dbg !81
  store i64 2861767655752347644, i64* %5, align 4, !dbg !156, !tbaa !91
  %40 = getelementptr inbounds i64, i64* %0, i32 33, !dbg !157
  store i64 3322285676063803686, i64* %40, align 4, !dbg !158, !tbaa !91
  %41 = getelementptr inbounds i64, i64* %0, i32 34, !dbg !159
  store i64 5560940570517711597, i64* %41, align 4, !dbg !160, !tbaa !91
  %42 = getelementptr inbounds i64, i64* %0, i32 35, !dbg !161
  store i64 5996557281743188959, i64* %42, align 4, !dbg !162, !tbaa !91
  store i64 7280758554555802590, i64* %39, align 4, !dbg !163, !tbaa !91
  %43 = getelementptr inbounds i64, i64* %0, i32 37, !dbg !164
  store i64 8532644243296465576, i64* %43, align 4, !dbg !165, !tbaa !91
  %44 = getelementptr inbounds i64, i64* %0, i32 38, !dbg !166
  store i64 -9096487096722542874, i64* %44, align 4, !dbg !167, !tbaa !91
  %45 = getelementptr inbounds i64, i64* %0, i32 39, !dbg !168
  store i64 -7894198246740708037, i64* %45, align 4, !dbg !169, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %38, metadata !65, metadata !DIExpression()), !dbg !81
  %46 = getelementptr inbounds i64, i64* %0, i32 44, !dbg !170
  call void @llvm.dbg.value(metadata i64* %46, metadata !66, metadata !DIExpression()), !dbg !81
  store i64 -6719396339535248540, i64* %38, align 4, !dbg !171, !tbaa !91
  %47 = getelementptr inbounds i64, i64* %0, i32 41, !dbg !172
  store i64 -6333637450476146687, i64* %47, align 4, !dbg !173, !tbaa !91
  %48 = getelementptr inbounds i64, i64* %0, i32 42, !dbg !174
  store i64 -4446306890439682159, i64* %48, align 4, !dbg !175, !tbaa !91
  %49 = getelementptr inbounds i64, i64* %0, i32 43, !dbg !176
  store i64 -4076793802049405392, i64* %49, align 4, !dbg !177, !tbaa !91
  store i64 -3345356375505022440, i64* %46, align 4, !dbg !178, !tbaa !91
  %50 = getelementptr inbounds i64, i64* %0, i32 45, !dbg !179
  store i64 -2983346525034927856, i64* %50, align 4, !dbg !180, !tbaa !91
  %51 = getelementptr inbounds i64, i64* %0, i32 46, !dbg !181
  store i64 -860691631967231958, i64* %51, align 4, !dbg !182, !tbaa !91
  %52 = getelementptr inbounds i64, i64* %0, i32 47, !dbg !183
  store i64 1182934255886127544, i64* %52, align 4, !dbg !184, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %6, metadata !67, metadata !DIExpression()), !dbg !81
  %53 = getelementptr inbounds i64, i64* %0, i32 56, !dbg !185
  call void @llvm.dbg.value(metadata i64* %53, metadata !68, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64* %6, metadata !69, metadata !DIExpression()), !dbg !81
  %54 = getelementptr inbounds i64, i64* %0, i32 52, !dbg !186
  call void @llvm.dbg.value(metadata i64* %54, metadata !70, metadata !DIExpression()), !dbg !81
  store i64 1847814050463011016, i64* %6, align 4, !dbg !187, !tbaa !91
  %55 = getelementptr inbounds i64, i64* %0, i32 49, !dbg !188
  store i64 2177327727835720531, i64* %55, align 4, !dbg !189, !tbaa !91
  %56 = getelementptr inbounds i64, i64* %0, i32 50, !dbg !190
  store i64 2830643537854262169, i64* %56, align 4, !dbg !191, !tbaa !91
  %57 = getelementptr inbounds i64, i64* %0, i32 51, !dbg !192
  store i64 3796741975233480872, i64* %57, align 4, !dbg !193, !tbaa !91
  store i64 4115178125766777443, i64* %54, align 4, !dbg !194, !tbaa !91
  %58 = getelementptr inbounds i64, i64* %0, i32 53, !dbg !195
  store i64 5681478168544905931, i64* %58, align 4, !dbg !196, !tbaa !91
  %59 = getelementptr inbounds i64, i64* %0, i32 54, !dbg !197
  store i64 6601373596472566643, i64* %59, align 4, !dbg !198, !tbaa !91
  %60 = getelementptr inbounds i64, i64* %0, i32 55, !dbg !199
  store i64 7507060721942968483, i64* %60, align 4, !dbg !200, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %53, metadata !71, metadata !DIExpression()), !dbg !81
  %61 = getelementptr inbounds i64, i64* %0, i32 60, !dbg !201
  call void @llvm.dbg.value(metadata i64* %61, metadata !72, metadata !DIExpression()), !dbg !81
  store i64 8399075790359081724, i64* %53, align 4, !dbg !202, !tbaa !91
  %62 = getelementptr inbounds i64, i64* %0, i32 57, !dbg !203
  store i64 8693463985226723168, i64* %62, align 4, !dbg !204, !tbaa !91
  %63 = getelementptr inbounds i64, i64* %0, i32 58, !dbg !205
  store i64 -8878714635349349518, i64* %63, align 4, !dbg !206, !tbaa !91
  %64 = getelementptr inbounds i64, i64* %0, i32 59, !dbg !207
  store i64 -8302665154208450068, i64* %64, align 4, !dbg !208, !tbaa !91
  store i64 -8016688836872298968, i64* %61, align 4, !dbg !209, !tbaa !91
  %65 = getelementptr inbounds i64, i64* %0, i32 61, !dbg !210
  store i64 -6606660893046293015, i64* %65, align 4, !dbg !211, !tbaa !91
  %66 = getelementptr inbounds i64, i64* %0, i32 62, !dbg !212
  store i64 -4685533653050689259, i64* %66, align 4, !dbg !213, !tbaa !91
  %67 = getelementptr inbounds i64, i64* %0, i32 63, !dbg !214
  store i64 -4147400797238176981, i64* %67, align 4, !dbg !215, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %7, metadata !73, metadata !DIExpression()), !dbg !81
  %68 = getelementptr inbounds i64, i64* %0, i32 72, !dbg !216
  call void @llvm.dbg.value(metadata i64* %68, metadata !74, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64* %7, metadata !75, metadata !DIExpression()), !dbg !81
  %69 = getelementptr inbounds i64, i64* %0, i32 68, !dbg !217
  call void @llvm.dbg.value(metadata i64* %69, metadata !76, metadata !DIExpression()), !dbg !81
  store i64 -3880063495543823972, i64* %7, align 4, !dbg !218, !tbaa !91
  %70 = getelementptr inbounds i64, i64* %0, i32 65, !dbg !219
  store i64 -3348786107499101689, i64* %70, align 4, !dbg !220, !tbaa !91
  %71 = getelementptr inbounds i64, i64* %0, i32 66, !dbg !221
  store i64 -1523767162380948706, i64* %71, align 4, !dbg !222, !tbaa !91
  %72 = getelementptr inbounds i64, i64* %0, i32 67, !dbg !223
  store i64 -757361751448694408, i64* %72, align 4, !dbg !224, !tbaa !91
  store i64 500013540394364858, i64* %69, align 4, !dbg !225, !tbaa !91
  %73 = getelementptr inbounds i64, i64* %0, i32 69, !dbg !226
  store i64 748580250866718886, i64* %73, align 4, !dbg !227, !tbaa !91
  %74 = getelementptr inbounds i64, i64* %0, i32 70, !dbg !228
  store i64 1242879168328830382, i64* %74, align 4, !dbg !229, !tbaa !91
  %75 = getelementptr inbounds i64, i64* %0, i32 71, !dbg !230
  store i64 1977374033974150939, i64* %75, align 4, !dbg !231, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %68, metadata !77, metadata !DIExpression()), !dbg !81
  %76 = getelementptr inbounds i64, i64* %0, i32 76, !dbg !232
  call void @llvm.dbg.value(metadata i64* %76, metadata !78, metadata !DIExpression()), !dbg !81
  store i64 2944078676154940804, i64* %68, align 4, !dbg !233, !tbaa !91
  %77 = getelementptr inbounds i64, i64* %0, i32 73, !dbg !234
  store i64 3659926193048069267, i64* %77, align 4, !dbg !235, !tbaa !91
  %78 = getelementptr inbounds i64, i64* %0, i32 74, !dbg !236
  store i64 4368137639120453308, i64* %78, align 4, !dbg !237, !tbaa !91
  %79 = getelementptr inbounds i64, i64* %0, i32 75, !dbg !238
  store i64 4836135668995329356, i64* %79, align 4, !dbg !239, !tbaa !91
  store i64 5532061633213252278, i64* %76, align 4, !dbg !240, !tbaa !91
  %80 = getelementptr inbounds i64, i64* %0, i32 77, !dbg !241
  store i64 6448918945643986474, i64* %80, align 4, !dbg !242, !tbaa !91
  %81 = getelementptr inbounds i64, i64* %0, i32 78, !dbg !243
  store i64 6902733635092675308, i64* %81, align 4, !dbg !244, !tbaa !91
  %82 = getelementptr inbounds i64, i64* %0, i32 79, !dbg !245
  store i64 7801388544844847127, i64* %82, align 4, !dbg !246, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %3, metadata !79, metadata !DIExpression()), !dbg !81
  %83 = getelementptr inbounds i64, i64* %0, i32 164, !dbg !247
  call void @llvm.dbg.value(metadata i64* %83, metadata !80, metadata !DIExpression()), !dbg !81
  store i64 -3766243637369397544, i64* %3, align 4, !dbg !248, !tbaa !91
  %84 = getelementptr inbounds i64, i64* %0, i32 161, !dbg !249
  store i64 7105036623409894663, i64* %84, align 4, !dbg !250, !tbaa !91
  %85 = getelementptr inbounds i64, i64* %0, i32 162, !dbg !251
  store i64 -7973340178411365097, i64* %85, align 4, !dbg !252, !tbaa !91
  %86 = getelementptr inbounds i64, i64* %0, i32 163, !dbg !253
  store i64 1526699215303891257, i64* %86, align 4, !dbg !254, !tbaa !91
  store i64 7436329637833083697, i64* %83, align 4, !dbg !255, !tbaa !91
  %87 = getelementptr inbounds i64, i64* %0, i32 165, !dbg !256
  store i64 -8163818279084223215, i64* %87, align 4, !dbg !257, !tbaa !91
  %88 = getelementptr inbounds i64, i64* %0, i32 166, !dbg !258
  store i64 -2662702644619276377, i64* %88, align 4, !dbg !259, !tbaa !91
  %89 = getelementptr inbounds i64, i64* %0, i32 167, !dbg !260
  store i64 5167115440072839076, i64* %89, align 4, !dbg !261, !tbaa !91
  store i64 0, i64* %2, align 4, !dbg !262, !tbaa !91
  ret void, !dbg !263
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_384_update(i64* nocapture noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #2 !dbg !264 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !269, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i8* %1, metadata !270, metadata !DIExpression()), !dbg !271
  call fastcc void @Hacl_Impl_SHA2_384_update(i64* noundef %0, i8* noundef %1), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_update(i64* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #2 !dbg !274 {
  %3 = alloca [16 x i64], align 8
  %4 = bitcast [16 x i64]* %3 to i8*
  %5 = alloca [8 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !276, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i8* %1, metadata !277, metadata !DIExpression()), !dbg !333
  %6 = bitcast [16 x i64]* %3 to i8*, !dbg !334
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #9, !dbg !334
  call void @llvm.dbg.declare(metadata [16 x i64]* %3, metadata !278, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !336
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(128) %4, i8 0, i32 128, i1 false), !dbg !337, !tbaa !91
  call void @llvm.dbg.value(metadata i32 undef, metadata !282, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 undef, metadata !282, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !336
  br label %7, !dbg !339

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %15, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !348, metadata !DIExpression()) #9, !dbg !354
  %9 = shl i32 %8, 3, !dbg !355
  %10 = getelementptr inbounds i8, i8* %1, i32 %9, !dbg !356
  call void @llvm.dbg.value(metadata i8* %10, metadata !349, metadata !DIExpression()) #9, !dbg !357
  call void @llvm.dbg.value(metadata i8* %10, metadata !358, metadata !DIExpression()) #9, !dbg !365
  %11 = bitcast i8* %10 to i64*, !dbg !367
  %12 = load i64, i64* %11, align 1, !dbg !367
  call void @llvm.dbg.value(metadata i64 %12, metadata !364, metadata !DIExpression()) #9, !dbg !365
  call void @llvm.dbg.value(metadata i64 %12, metadata !368, metadata !DIExpression()) #9, !dbg !374
  %13 = call i64 @llvm.bswap.i64(i64 %12) #9, !dbg !376
  call void @llvm.dbg.value(metadata i64 %13, metadata !352, metadata !DIExpression()) #9, !dbg !357
  %14 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i32 0, i32 %8, !dbg !377
  store i64 %13, i64* %14, align 8, !dbg !378, !tbaa !91
  %15 = add nuw nsw i32 %8, 1, !dbg !379
  call void @llvm.dbg.value(metadata i32 %15, metadata !348, metadata !DIExpression()) #9, !dbg !354
  %16 = icmp eq i32 %15, 16, !dbg !380
  br i1 %16, label %17, label %7, !dbg !339, !llvm.loop !381

17:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i64* %20, metadata !284, metadata !DIExpression()), !dbg !333
  %18 = getelementptr inbounds i64, i64* %0, i32 80, !dbg !385
  %19 = bitcast i64* %18 to i8*, !dbg !333
  call void @llvm.dbg.value(metadata i64* %18, metadata !285, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64* %0, metadata !286, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64* %113, metadata !287, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !386
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(128) %19, i8* noundef nonnull align 8 dereferenceable(128) %4, i32 128, i1 false), !dbg !387, !tbaa !91
  call void @llvm.dbg.value(metadata i32 undef, metadata !288, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i32 undef, metadata !290, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i32 undef, metadata !288, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !386
  %20 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !389
  br label %40, !dbg !390

21:                                               ; preds = %40
  %22 = bitcast [8 x i64]* %5 to i8*, !dbg !391
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %22) #9, !dbg !391
  call void @llvm.dbg.declare(metadata [8 x i64]* %5, metadata !301, metadata !DIExpression()), !dbg !392
  %23 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 0, !dbg !393
  %24 = bitcast i64* %20 to i8*, !dbg !393
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(64) %22, i8* noundef nonnull align 4 dereferenceable(64) %24, i32 64, i1 false), !dbg !393
  call void @llvm.dbg.value(metadata i32 0, metadata !305, metadata !DIExpression()), !dbg !394
  %25 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 1
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 2
  %27 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 3
  %28 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 4
  %29 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 5
  %30 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 6
  %31 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 7
  %32 = load i64, i64* %23, align 8, !tbaa !91
  %33 = load i64, i64* %25, align 8, !tbaa !91
  %34 = load i64, i64* %26, align 8, !tbaa !91
  %35 = load i64, i64* %27, align 8, !tbaa !91
  %36 = load i64, i64* %28, align 8, !tbaa !91
  %37 = load i64, i64* %29, align 8, !tbaa !91
  %38 = load i64, i64* %30, align 8, !tbaa !91
  %39 = load i64, i64* %31, align 8, !tbaa !91
  call void @llvm.dbg.value(metadata i32 0, metadata !305, metadata !DIExpression()), !dbg !394
  br label %71, !dbg !395

40:                                               ; preds = %17, %40
  %41 = phi i32 [ %68, %40 ], [ 16, %17 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !293, metadata !DIExpression()), !dbg !396
  %42 = add nsw i32 %41, -16, !dbg !397
  %43 = getelementptr inbounds i64, i64* %18, i32 %42, !dbg !398
  %44 = load i64, i64* %43, align 4, !dbg !398, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %44, metadata !295, metadata !DIExpression()), !dbg !399
  %45 = add nsw i32 %41, -15, !dbg !400
  %46 = getelementptr inbounds i64, i64* %18, i32 %45, !dbg !401
  %47 = load i64, i64* %46, align 4, !dbg !401, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %47, metadata !298, metadata !DIExpression()), !dbg !399
  %48 = add nsw i32 %41, -7, !dbg !402
  %49 = getelementptr inbounds i64, i64* %18, i32 %48, !dbg !403
  %50 = load i64, i64* %49, align 4, !dbg !403, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %50, metadata !299, metadata !DIExpression()), !dbg !399
  %51 = add nsw i32 %41, -2, !dbg !404
  %52 = getelementptr inbounds i64, i64* %18, i32 %51, !dbg !405
  %53 = load i64, i64* %52, align 4, !dbg !405, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %53, metadata !300, metadata !DIExpression()), !dbg !399
  %54 = call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 45), !dbg !406
  %55 = call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 3), !dbg !407
  %56 = lshr i64 %53, 6, !dbg !408
  %57 = xor i64 %55, %56, !dbg !409
  %58 = xor i64 %57, %54, !dbg !410
  %59 = call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 63), !dbg !411
  %60 = call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 56), !dbg !412
  %61 = lshr i64 %47, 7, !dbg !413
  %62 = xor i64 %60, %61, !dbg !414
  %63 = xor i64 %62, %59, !dbg !415
  %64 = add i64 %50, %44, !dbg !416
  %65 = add i64 %64, %63, !dbg !417
  %66 = add i64 %65, %58, !dbg !418
  %67 = getelementptr inbounds i64, i64* %18, i32 %41, !dbg !419
  store i64 %66, i64* %67, align 4, !dbg !420, !tbaa !91
  %68 = add nuw nsw i32 %41, 1, !dbg !421
  call void @llvm.dbg.value(metadata i32 %68, metadata !293, metadata !DIExpression()), !dbg !396
  %69 = icmp eq i32 %68, 80, !dbg !422
  br i1 %69, label %21, label %40, !dbg !390, !llvm.loop !423

70:                                               ; preds = %71
  store i64 %108, i64* %23, align 8, !dbg !425, !tbaa !91
  store i64 %73, i64* %25, align 8, !dbg !425, !tbaa !91
  store i64 %74, i64* %26, align 8, !dbg !425, !tbaa !91
  store i64 %75, i64* %27, align 8, !dbg !425, !tbaa !91
  store i64 %109, i64* %28, align 8, !dbg !425, !tbaa !91
  store i64 %77, i64* %29, align 8, !dbg !425, !tbaa !91
  store i64 %78, i64* %30, align 8, !dbg !425, !tbaa !91
  store i64 %79, i64* %31, align 8, !dbg !425, !tbaa !91
  call void @llvm.dbg.value(metadata i32 0, metadata !325, metadata !DIExpression()), !dbg !426
  br label %116, !dbg !427

71:                                               ; preds = %21, %71
  %72 = phi i32 [ 0, %21 ], [ %110, %71 ]
  %73 = phi i64 [ %32, %21 ], [ %108, %71 ]
  %74 = phi i64 [ %33, %21 ], [ %73, %71 ]
  %75 = phi i64 [ %34, %21 ], [ %74, %71 ]
  %76 = phi i64 [ %35, %21 ], [ %75, %71 ]
  %77 = phi i64 [ %36, %21 ], [ %109, %71 ]
  %78 = phi i64 [ %37, %21 ], [ %77, %71 ]
  %79 = phi i64 [ %38, %21 ], [ %78, %71 ]
  %80 = phi i64 [ %39, %21 ], [ %79, %71 ]
  call void @llvm.dbg.value(metadata i32 %72, metadata !305, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i64 %73, metadata !307, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %74, metadata !310, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %75, metadata !311, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %76, metadata !312, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %77, metadata !313, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %78, metadata !314, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %79, metadata !315, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %80, metadata !316, metadata !DIExpression()), !dbg !425
  %81 = getelementptr inbounds i64, i64* %0, i32 %72, !dbg !428
  %82 = load i64, i64* %81, align 4, !dbg !428, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %82, metadata !317, metadata !DIExpression()), !dbg !425
  %83 = getelementptr inbounds i64, i64* %18, i32 %72, !dbg !429
  %84 = load i64, i64* %83, align 4, !dbg !429, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %84, metadata !318, metadata !DIExpression()), !dbg !425
  %85 = call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 50), !dbg !430
  %86 = call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 46), !dbg !431
  %87 = call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 23), !dbg !432
  %88 = xor i64 %86, %87, !dbg !433
  %89 = xor i64 %88, %85, !dbg !434
  %90 = and i64 %78, %77, !dbg !435
  %91 = xor i64 %77, -1, !dbg !436
  %92 = and i64 %79, %91, !dbg !437
  %93 = add i64 %89, %90, !dbg !438
  %94 = add i64 %93, %80, !dbg !439
  %95 = add i64 %94, %92, !dbg !440
  %96 = add i64 %95, %82, !dbg !441
  %97 = add i64 %96, %84, !dbg !442
  call void @llvm.dbg.value(metadata i64 %97, metadata !319, metadata !DIExpression()), !dbg !425
  %98 = call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 36), !dbg !443
  %99 = call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 30), !dbg !444
  %100 = call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 25), !dbg !445
  %101 = xor i64 %99, %100, !dbg !446
  %102 = xor i64 %101, %98, !dbg !447
  %103 = and i64 %74, %73, !dbg !448
  %104 = xor i64 %74, %73, !dbg !449
  %105 = and i64 %104, %75, !dbg !449
  %106 = xor i64 %105, %103, !dbg !450
  %107 = add i64 %106, %102, !dbg !451
  call void @llvm.dbg.value(metadata i64 %107, metadata !320, metadata !DIExpression()), !dbg !425
  %108 = add i64 %107, %97, !dbg !452
  call void @llvm.dbg.value(metadata i64 %108, metadata !321, metadata !DIExpression()), !dbg !425
  %109 = add i64 %97, %76, !dbg !453
  call void @llvm.dbg.value(metadata i64 %109, metadata !322, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64* %23, metadata !323, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64* %28, metadata !324, metadata !DIExpression()), !dbg !425
  %110 = add nuw nsw i32 %72, 1, !dbg !454
  call void @llvm.dbg.value(metadata i32 %110, metadata !305, metadata !DIExpression()), !dbg !394
  %111 = icmp eq i32 %110, 80, !dbg !455
  br i1 %111, label %70, label %71, !dbg !395, !llvm.loop !456

112:                                              ; preds = %116
  %113 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !458
  %114 = load i64, i64* %113, align 4, !dbg !459, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %114, metadata !331, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 1, metadata !332, metadata !DIExpression()), !dbg !333
  %115 = add i64 %114, 1, !dbg !460
  store i64 %115, i64* %113, align 4, !dbg !461, !tbaa !91
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %22) #9, !dbg !462
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #9, !dbg !462
  ret void, !dbg !462

116:                                              ; preds = %70, %116
  %117 = phi i32 [ 0, %70 ], [ %123, %116 ]
  call void @llvm.dbg.value(metadata i32 %117, metadata !325, metadata !DIExpression()), !dbg !426
  %118 = getelementptr inbounds i64, i64* %20, i32 %117, !dbg !463
  %119 = load i64, i64* %118, align 4, !dbg !463, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %119, metadata !327, metadata !DIExpression()), !dbg !464
  %120 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 %117, !dbg !465
  %121 = load i64, i64* %120, align 8, !dbg !465, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %121, metadata !330, metadata !DIExpression()), !dbg !464
  %122 = add i64 %121, %119, !dbg !466
  store i64 %122, i64* %118, align 4, !dbg !467, !tbaa !91
  %123 = add nuw nsw i32 %117, 1, !dbg !468
  call void @llvm.dbg.value(metadata i32 %123, metadata !325, metadata !DIExpression()), !dbg !426
  %124 = icmp eq i32 %123, 8, !dbg !469
  br i1 %124, label %112, label %116, !dbg !427, !llvm.loop !470
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_384_update_multi(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !472 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !474, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i8* %1, metadata !475, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i32 %2, metadata !476, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i64* %0, metadata !478, metadata !DIExpression()) #9, !dbg !488
  call void @llvm.dbg.value(metadata i8* %1, metadata !481, metadata !DIExpression()) #9, !dbg !488
  call void @llvm.dbg.value(metadata i32 %2, metadata !482, metadata !DIExpression()) #9, !dbg !488
  call void @llvm.dbg.value(metadata i32 0, metadata !483, metadata !DIExpression()) #9, !dbg !490
  %4 = icmp eq i32 %2, 0, !dbg !491
  br i1 %4, label %11, label %5, !dbg !492

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !483, metadata !DIExpression()) #9, !dbg !490
  %7 = shl i32 %6, 7, !dbg !493
  %8 = getelementptr inbounds i8, i8* %1, i32 %7, !dbg !494
  call void @llvm.dbg.value(metadata i8* %8, metadata !485, metadata !DIExpression()) #9, !dbg !495
  call fastcc void @Hacl_Impl_SHA2_384_update(i64* noundef %0, i8* noundef %8) #9, !dbg !496
  %9 = add nuw i32 %6, 1, !dbg !497
  call void @llvm.dbg.value(metadata i32 %9, metadata !483, metadata !DIExpression()) #9, !dbg !490
  %10 = icmp eq i32 %9, %2, !dbg !491
  br i1 %10, label %11, label %5, !dbg !492, !llvm.loop !498

11:                                               ; preds = %5, %3
  ret void, !dbg !500
}

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_SHA2_384_update_last(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #3 !dbg !501 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !505, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i8* %1, metadata !506, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i64 %2, metadata !507, metadata !DIExpression()), !dbg !508
  call fastcc void @Hacl_Impl_SHA2_384_update_last(i64* noundef %0, i8* noundef %1, i64 noundef %2), !dbg !509
  ret void, !dbg !510
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_update_last(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #3 !dbg !511 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !513, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i8* %1, metadata !514, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i64 %2, metadata !515, metadata !DIExpression()), !dbg !535
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !536
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #9, !dbg !536
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !516, metadata !DIExpression()), !dbg !537
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(256) %9, i8 0, i32 256, i1 false), !dbg !537
  %10 = icmp ult i64 %2, 112, !dbg !538
  %11 = select i1 %10, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %11, metadata !520, metadata !DIExpression()), !dbg !535
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 128, !dbg !540
  %13 = select i1 %10, i8* %12, i8* %9, !dbg !540
  call void @llvm.dbg.value(metadata i8* %13, metadata !521, metadata !DIExpression()), !dbg !535
  %14 = trunc i64 %2 to i32, !dbg !541
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %13, i8* align 1 %1, i32 %14, i1 false), !dbg !542
  %15 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !543
  %16 = load i64, i64* %15, align 4, !dbg !543, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %16, metadata !522, metadata !DIExpression()), !dbg !535
  %17 = getelementptr inbounds i8, i8* %13, i32 %14, !dbg !544
  call void @llvm.dbg.value(metadata i8* %17, metadata !523, metadata !DIExpression()), !dbg !535
  %18 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !545
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #9, !dbg !545
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !524, metadata !DIExpression()), !dbg !546
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %16, i64 noundef 128) #9, !dbg !547
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %2) #9, !dbg !548
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !549
  %20 = load i64, i64* %19, align 8, !dbg !549, !tbaa !550
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !549
  %22 = load i64, i64* %21, align 8, !dbg !549, !tbaa !552
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !549
  %24 = load i64, i64* %23, align 8, !dbg !549, !tbaa !550
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !549
  %26 = load i64, i64* %25, align 8, !dbg !549, !tbaa !552
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %20, i64 %22, i64 %24, i64 %26) #9, !dbg !549
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !553
  %28 = load i64, i64* %27, align 8, !dbg !553, !tbaa !550
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !553
  %30 = load i64, i64* %29, align 8, !dbg !553, !tbaa !552
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %28, i64 %30, i32 noundef 3) #9, !dbg !553
  %31 = sub i32 111, %14, !dbg !554
  %32 = and i32 %31, 127, !dbg !555
  call void @llvm.dbg.value(metadata i32 %32, metadata !532, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i8* %17, metadata !533, metadata !DIExpression()), !dbg !535
  %33 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !556
  %34 = getelementptr inbounds i8, i8* %33, i32 %32, !dbg !557
  call void @llvm.dbg.value(metadata i8* %34, metadata !534, metadata !DIExpression()), !dbg !535
  store i8 -128, i8* %17, align 1, !dbg !558, !tbaa !559
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !560
  %36 = load i64, i64* %35, align 8, !dbg !560, !tbaa !550
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !560
  %38 = load i64, i64* %37, align 8, !dbg !560, !tbaa !552
  call void @llvm.dbg.value(metadata i64 %36, metadata !561, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #9, !dbg !568
  call void @llvm.dbg.value(metadata i64 %38, metadata !561, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #9, !dbg !568
  call void @llvm.dbg.value(metadata i8* %34, metadata !567, metadata !DIExpression()) #9, !dbg !568
  call void @llvm.dbg.value(metadata i8* %34, metadata !570, metadata !DIExpression()) #9, !dbg !577
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* undef, metadata !576, metadata !DIExpression()) #9, !dbg !577
  call void @llvm.dbg.value(metadata i64 %38, metadata !368, metadata !DIExpression()) #9, !dbg !579
  %39 = call i64 @llvm.bswap.i64(i64 %38) #9, !dbg !581
  call void @llvm.dbg.value(metadata i8* %34, metadata !582, metadata !DIExpression()) #9, !dbg !588
  call void @llvm.dbg.value(metadata i64 %39, metadata !587, metadata !DIExpression()) #9, !dbg !588
  %40 = bitcast i8* %34 to i64*, !dbg !590
  store i64 %39, i64* %40, align 1, !dbg !590
  %41 = getelementptr inbounds i8, i8* %34, i32 8, !dbg !591
  call void @llvm.dbg.value(metadata i64 %36, metadata !368, metadata !DIExpression()) #9, !dbg !592
  %42 = call i64 @llvm.bswap.i64(i64 %36) #9, !dbg !594
  call void @llvm.dbg.value(metadata i8* %41, metadata !582, metadata !DIExpression()) #9, !dbg !595
  call void @llvm.dbg.value(metadata i64 %42, metadata !587, metadata !DIExpression()) #9, !dbg !595
  %43 = bitcast i8* %41 to i64*, !dbg !597
  store i64 %42, i64* %43, align 1, !dbg !597
  call void @llvm.dbg.value(metadata i64* %0, metadata !478, metadata !DIExpression()) #9, !dbg !598
  call void @llvm.dbg.value(metadata i8* %13, metadata !481, metadata !DIExpression()) #9, !dbg !598
  call void @llvm.dbg.value(metadata i32 %11, metadata !482, metadata !DIExpression()) #9, !dbg !598
  call void @llvm.dbg.value(metadata i32 0, metadata !483, metadata !DIExpression()) #9, !dbg !600
  br label %44

44:                                               ; preds = %44, %3
  %45 = phi i32 [ %48, %44 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !483, metadata !DIExpression()) #9, !dbg !600
  %46 = shl i32 %45, 7, !dbg !601
  %47 = getelementptr inbounds i8, i8* %13, i32 %46, !dbg !602
  call void @llvm.dbg.value(metadata i8* %47, metadata !485, metadata !DIExpression()) #9, !dbg !603
  call fastcc void @Hacl_Impl_SHA2_384_update(i64* noundef %0, i8* noundef nonnull %47) #9, !dbg !604
  %48 = add nuw i32 %45, 1, !dbg !605
  call void @llvm.dbg.value(metadata i32 %48, metadata !483, metadata !DIExpression()) #9, !dbg !600
  %49 = icmp eq i32 %48, %11, !dbg !606
  br i1 %49, label %50, label %44, !dbg !607, !llvm.loop !608

50:                                               ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #9, !dbg !610
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #9, !dbg !610
  ret void, !dbg !610
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @Hacl_SHA2_384_finish(i64* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !611 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !613, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i8* %1, metadata !614, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i64* %0, metadata !616, metadata !DIExpression()) #9, !dbg !621
  call void @llvm.dbg.value(metadata i8* %1, metadata !619, metadata !DIExpression()) #9, !dbg !621
  %3 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !623
  call void @llvm.dbg.value(metadata i64* %3, metadata !620, metadata !DIExpression()) #9, !dbg !621
  call void @llvm.dbg.value(metadata i8* %1, metadata !624, metadata !DIExpression()) #9, !dbg !637
  call void @llvm.dbg.value(metadata i64* %3, metadata !629, metadata !DIExpression()) #9, !dbg !637
  call void @llvm.dbg.value(metadata i32 6, metadata !630, metadata !DIExpression()) #9, !dbg !637
  call void @llvm.dbg.value(metadata i32 0, metadata !631, metadata !DIExpression()) #9, !dbg !639
  br label %4, !dbg !640

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %12, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !631, metadata !DIExpression()) #9, !dbg !639
  %6 = getelementptr inbounds i64, i64* %3, i32 %5, !dbg !641
  %7 = load i64, i64* %6, align 4, !dbg !641, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %7, metadata !633, metadata !DIExpression()) #9, !dbg !642
  %8 = shl i32 %5, 3, !dbg !643
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !644
  call void @llvm.dbg.value(metadata i8* %9, metadata !636, metadata !DIExpression()) #9, !dbg !642
  call void @llvm.dbg.value(metadata i64 %7, metadata !368, metadata !DIExpression()) #9, !dbg !645
  %10 = call i64 @llvm.bswap.i64(i64 %7) #9, !dbg !647
  call void @llvm.dbg.value(metadata i8* %9, metadata !582, metadata !DIExpression()) #9, !dbg !648
  call void @llvm.dbg.value(metadata i64 %10, metadata !587, metadata !DIExpression()) #9, !dbg !648
  %11 = bitcast i8* %9 to i64*, !dbg !650
  store i64 %10, i64* %11, align 1, !dbg !650
  %12 = add nuw nsw i32 %5, 1, !dbg !651
  call void @llvm.dbg.value(metadata i32 %12, metadata !631, metadata !DIExpression()) #9, !dbg !639
  %13 = icmp eq i32 %12, 6, !dbg !652
  br i1 %13, label %14, label %4, !dbg !640, !llvm.loop !653

14:                                               ; preds = %4
  ret void, !dbg !655
}

; Function Attrs: nounwind uwtable
define dso_local void @Hacl_SHA2_384_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !656 {
  %4 = alloca [169 x i64], align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !660, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8* %1, metadata !661, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i32 %2, metadata !662, metadata !DIExpression()), !dbg !663
  %5 = bitcast [169 x i64]* %4 to i8*, !dbg !664
  call void @llvm.dbg.value(metadata i8* %0, metadata !667, metadata !DIExpression()) #9, !dbg !664
  call void @llvm.dbg.value(metadata i8* %1, metadata !668, metadata !DIExpression()) #9, !dbg !664
  call void @llvm.dbg.value(metadata i32 %2, metadata !669, metadata !DIExpression()) #9, !dbg !664
  call void @llvm.lifetime.start.p0i8(i64 1352, i8* nonnull %5) #9, !dbg !681
  call void @llvm.dbg.declare(metadata [169 x i64]* %4, metadata !670, metadata !DIExpression()) #9, !dbg !682
  call void @llvm.dbg.value(metadata i32 0, metadata !674, metadata !DIExpression()) #9, !dbg !683
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(1352) %5, i8 0, i32 1352, i1 false) #9, !dbg !684, !tbaa !91
  call void @llvm.dbg.value(metadata i32 undef, metadata !674, metadata !DIExpression()) #9, !dbg !683
  call void @llvm.dbg.value(metadata i32 undef, metadata !674, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #9, !dbg !683
  %6 = lshr i32 %2, 7, !dbg !686
  call void @llvm.dbg.value(metadata i32 %6, metadata !676, metadata !DIExpression()) #9, !dbg !664
  %7 = and i32 %2, 127, !dbg !687
  call void @llvm.dbg.value(metadata i32 %7, metadata !677, metadata !DIExpression()) #9, !dbg !664
  call void @llvm.dbg.value(metadata i8* %1, metadata !678, metadata !DIExpression()) #9, !dbg !664
  %8 = and i32 %2, -128, !dbg !688
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !689
  call void @llvm.dbg.value(metadata i8* %9, metadata !679, metadata !DIExpression()) #9, !dbg !664
  %10 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 0, !dbg !690
  call void @llvm.dbg.value(metadata i64* %10, metadata !40, metadata !DIExpression()) #9, !dbg !691
  %11 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 168, !dbg !693
  call void @llvm.dbg.value(metadata i64* %11, metadata !41, metadata !DIExpression()) #9, !dbg !691
  call void @llvm.dbg.value(metadata i64* %10, metadata !42, metadata !DIExpression()) #9, !dbg !691
  %12 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 160, !dbg !694
  call void @llvm.dbg.value(metadata i64* %12, metadata !43, metadata !DIExpression()) #9, !dbg !691
  call void @llvm.dbg.value(metadata i64* %10, metadata !44, metadata !DIExpression()) #9, !dbg !691
  %13 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 16, !dbg !695
  call void @llvm.dbg.value(metadata i64* %13, metadata !45, metadata !DIExpression()) #9, !dbg !691
  %14 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 32, !dbg !696
  call void @llvm.dbg.value(metadata i64* %14, metadata !46, metadata !DIExpression()) #9, !dbg !691
  %15 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 48, !dbg !697
  call void @llvm.dbg.value(metadata i64* %15, metadata !47, metadata !DIExpression()) #9, !dbg !691
  %16 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 64, !dbg !698
  call void @llvm.dbg.value(metadata i64* %16, metadata !48, metadata !DIExpression()) #9, !dbg !691
  call void @llvm.dbg.value(metadata i64* %10, metadata !49, metadata !DIExpression()) #9, !dbg !691
  %17 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 8, !dbg !699
  call void @llvm.dbg.value(metadata i64* %17, metadata !50, metadata !DIExpression()) #9, !dbg !691
  call void @llvm.dbg.value(metadata i64* %10, metadata !51, metadata !DIExpression()) #9, !dbg !691
  %18 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 4, !dbg !700
  call void @llvm.dbg.value(metadata i64* %18, metadata !52, metadata !DIExpression()) #9, !dbg !691
  store i64 4794697086780616226, i64* %10, align 8, !dbg !701, !tbaa !91
  %19 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 1, !dbg !702
  store i64 8158064640168781261, i64* %19, align 8, !dbg !703, !tbaa !91
  %20 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 2, !dbg !704
  store i64 -5349999486874862801, i64* %20, align 8, !dbg !705, !tbaa !91
  %21 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 3, !dbg !706
  store i64 -1606136188198331460, i64* %21, align 8, !dbg !707, !tbaa !91
  store i64 4131703408338449720, i64* %18, align 8, !dbg !708, !tbaa !91
  %22 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 5, !dbg !709
  store i64 6480981068601479193, i64* %22, align 8, !dbg !710, !tbaa !91
  %23 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 6, !dbg !711
  store i64 -7908458776815382629, i64* %23, align 8, !dbg !712, !tbaa !91
  %24 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 7, !dbg !713
  store i64 -6116909921290321640, i64* %24, align 8, !dbg !714, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %17, metadata !53, metadata !DIExpression()) #9, !dbg !691
  %25 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 12, !dbg !715
  call void @llvm.dbg.value(metadata i64* %25, metadata !54, metadata !DIExpression()) #9, !dbg !691
  store i64 -2880145864133508542, i64* %17, align 8, !dbg !716, !tbaa !91
  %26 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 9, !dbg !717
  store i64 1334009975649890238, i64* %26, align 8, !dbg !718, !tbaa !91
  %27 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 10, !dbg !719
  store i64 2608012711638119052, i64* %27, align 8, !dbg !720, !tbaa !91
  %28 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 11, !dbg !721
  store i64 6128411473006802146, i64* %28, align 8, !dbg !722, !tbaa !91
  store i64 8268148722764581231, i64* %25, align 8, !dbg !723, !tbaa !91
  %29 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 13, !dbg !724
  store i64 -9160688886553864527, i64* %29, align 8, !dbg !725, !tbaa !91
  %30 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 14, !dbg !726
  store i64 -7215885187991268811, i64* %30, align 8, !dbg !727, !tbaa !91
  %31 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 15, !dbg !728
  store i64 -4495734319001033068, i64* %31, align 8, !dbg !729, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %13, metadata !55, metadata !DIExpression()) #9, !dbg !691
  %32 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 24, !dbg !730
  call void @llvm.dbg.value(metadata i64* %32, metadata !56, metadata !DIExpression()) #9, !dbg !691
  call void @llvm.dbg.value(metadata i64* %13, metadata !57, metadata !DIExpression()) #9, !dbg !691
  %33 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 20, !dbg !731
  call void @llvm.dbg.value(metadata i64* %33, metadata !58, metadata !DIExpression()) #9, !dbg !691
  store i64 -1973867731355612462, i64* %13, align 8, !dbg !732, !tbaa !91
  %34 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 17, !dbg !733
  store i64 -1171420211273849373, i64* %34, align 8, !dbg !734, !tbaa !91
  %35 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 18, !dbg !735
  store i64 1135362057144423861, i64* %35, align 8, !dbg !736, !tbaa !91
  %36 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 19, !dbg !737
  store i64 2597628984639134821, i64* %36, align 8, !dbg !738, !tbaa !91
  store i64 3308224258029322869, i64* %33, align 8, !dbg !739, !tbaa !91
  %37 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 21, !dbg !740
  store i64 5365058923640841347, i64* %37, align 8, !dbg !741, !tbaa !91
  %38 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 22, !dbg !742
  store i64 6679025012923562964, i64* %38, align 8, !dbg !743, !tbaa !91
  %39 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 23, !dbg !744
  store i64 8573033837759648693, i64* %39, align 8, !dbg !745, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %32, metadata !59, metadata !DIExpression()) #9, !dbg !691
  %40 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 28, !dbg !746
  call void @llvm.dbg.value(metadata i64* %40, metadata !60, metadata !DIExpression()) #9, !dbg !691
  store i64 -7476448914759557205, i64* %32, align 8, !dbg !747, !tbaa !91
  %41 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 25, !dbg !748
  store i64 -6327057829258317296, i64* %41, align 8, !dbg !749, !tbaa !91
  %42 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 26, !dbg !750
  store i64 -5763719355590565569, i64* %42, align 8, !dbg !751, !tbaa !91
  %43 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 27, !dbg !752
  store i64 -4658551843659510044, i64* %43, align 8, !dbg !753, !tbaa !91
  store i64 -4116276920077217854, i64* %40, align 8, !dbg !754, !tbaa !91
  %44 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 29, !dbg !755
  store i64 -3051310485924567259, i64* %44, align 8, !dbg !756, !tbaa !91
  %45 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 30, !dbg !757
  store i64 489312712824947311, i64* %45, align 8, !dbg !758, !tbaa !91
  %46 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 31, !dbg !759
  store i64 1452737877330783856, i64* %46, align 8, !dbg !760, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %14, metadata !61, metadata !DIExpression()) #9, !dbg !691
  %47 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 40, !dbg !761
  call void @llvm.dbg.value(metadata i64* %47, metadata !62, metadata !DIExpression()) #9, !dbg !691
  call void @llvm.dbg.value(metadata i64* %14, metadata !63, metadata !DIExpression()) #9, !dbg !691
  %48 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 36, !dbg !762
  call void @llvm.dbg.value(metadata i64* %48, metadata !64, metadata !DIExpression()) #9, !dbg !691
  store i64 2861767655752347644, i64* %14, align 8, !dbg !763, !tbaa !91
  %49 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 33, !dbg !764
  store i64 3322285676063803686, i64* %49, align 8, !dbg !765, !tbaa !91
  %50 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 34, !dbg !766
  store i64 5560940570517711597, i64* %50, align 8, !dbg !767, !tbaa !91
  %51 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 35, !dbg !768
  store i64 5996557281743188959, i64* %51, align 8, !dbg !769, !tbaa !91
  store i64 7280758554555802590, i64* %48, align 8, !dbg !770, !tbaa !91
  %52 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 37, !dbg !771
  store i64 8532644243296465576, i64* %52, align 8, !dbg !772, !tbaa !91
  %53 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 38, !dbg !773
  store i64 -9096487096722542874, i64* %53, align 8, !dbg !774, !tbaa !91
  %54 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 39, !dbg !775
  store i64 -7894198246740708037, i64* %54, align 8, !dbg !776, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %47, metadata !65, metadata !DIExpression()) #9, !dbg !691
  %55 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 44, !dbg !777
  call void @llvm.dbg.value(metadata i64* %55, metadata !66, metadata !DIExpression()) #9, !dbg !691
  store i64 -6719396339535248540, i64* %47, align 8, !dbg !778, !tbaa !91
  %56 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 41, !dbg !779
  store i64 -6333637450476146687, i64* %56, align 8, !dbg !780, !tbaa !91
  %57 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 42, !dbg !781
  store i64 -4446306890439682159, i64* %57, align 8, !dbg !782, !tbaa !91
  %58 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 43, !dbg !783
  store i64 -4076793802049405392, i64* %58, align 8, !dbg !784, !tbaa !91
  store i64 -3345356375505022440, i64* %55, align 8, !dbg !785, !tbaa !91
  %59 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 45, !dbg !786
  store i64 -2983346525034927856, i64* %59, align 8, !dbg !787, !tbaa !91
  %60 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 46, !dbg !788
  store i64 -860691631967231958, i64* %60, align 8, !dbg !789, !tbaa !91
  %61 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 47, !dbg !790
  store i64 1182934255886127544, i64* %61, align 8, !dbg !791, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %15, metadata !67, metadata !DIExpression()) #9, !dbg !691
  %62 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 56, !dbg !792
  call void @llvm.dbg.value(metadata i64* %62, metadata !68, metadata !DIExpression()) #9, !dbg !691
  call void @llvm.dbg.value(metadata i64* %15, metadata !69, metadata !DIExpression()) #9, !dbg !691
  %63 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 52, !dbg !793
  call void @llvm.dbg.value(metadata i64* %63, metadata !70, metadata !DIExpression()) #9, !dbg !691
  store i64 1847814050463011016, i64* %15, align 8, !dbg !794, !tbaa !91
  %64 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 49, !dbg !795
  store i64 2177327727835720531, i64* %64, align 8, !dbg !796, !tbaa !91
  %65 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 50, !dbg !797
  store i64 2830643537854262169, i64* %65, align 8, !dbg !798, !tbaa !91
  %66 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 51, !dbg !799
  store i64 3796741975233480872, i64* %66, align 8, !dbg !800, !tbaa !91
  store i64 4115178125766777443, i64* %63, align 8, !dbg !801, !tbaa !91
  %67 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 53, !dbg !802
  store i64 5681478168544905931, i64* %67, align 8, !dbg !803, !tbaa !91
  %68 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 54, !dbg !804
  store i64 6601373596472566643, i64* %68, align 8, !dbg !805, !tbaa !91
  %69 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 55, !dbg !806
  store i64 7507060721942968483, i64* %69, align 8, !dbg !807, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %62, metadata !71, metadata !DIExpression()) #9, !dbg !691
  %70 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 60, !dbg !808
  call void @llvm.dbg.value(metadata i64* %70, metadata !72, metadata !DIExpression()) #9, !dbg !691
  store i64 8399075790359081724, i64* %62, align 8, !dbg !809, !tbaa !91
  %71 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 57, !dbg !810
  store i64 8693463985226723168, i64* %71, align 8, !dbg !811, !tbaa !91
  %72 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 58, !dbg !812
  store i64 -8878714635349349518, i64* %72, align 8, !dbg !813, !tbaa !91
  %73 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 59, !dbg !814
  store i64 -8302665154208450068, i64* %73, align 8, !dbg !815, !tbaa !91
  store i64 -8016688836872298968, i64* %70, align 8, !dbg !816, !tbaa !91
  %74 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 61, !dbg !817
  store i64 -6606660893046293015, i64* %74, align 8, !dbg !818, !tbaa !91
  %75 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 62, !dbg !819
  store i64 -4685533653050689259, i64* %75, align 8, !dbg !820, !tbaa !91
  %76 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 63, !dbg !821
  store i64 -4147400797238176981, i64* %76, align 8, !dbg !822, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %16, metadata !73, metadata !DIExpression()) #9, !dbg !691
  %77 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 72, !dbg !823
  call void @llvm.dbg.value(metadata i64* %77, metadata !74, metadata !DIExpression()) #9, !dbg !691
  call void @llvm.dbg.value(metadata i64* %16, metadata !75, metadata !DIExpression()) #9, !dbg !691
  %78 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 68, !dbg !824
  call void @llvm.dbg.value(metadata i64* %78, metadata !76, metadata !DIExpression()) #9, !dbg !691
  store i64 -3880063495543823972, i64* %16, align 8, !dbg !825, !tbaa !91
  %79 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 65, !dbg !826
  store i64 -3348786107499101689, i64* %79, align 8, !dbg !827, !tbaa !91
  %80 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 66, !dbg !828
  store i64 -1523767162380948706, i64* %80, align 8, !dbg !829, !tbaa !91
  %81 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 67, !dbg !830
  store i64 -757361751448694408, i64* %81, align 8, !dbg !831, !tbaa !91
  store i64 500013540394364858, i64* %78, align 8, !dbg !832, !tbaa !91
  %82 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 69, !dbg !833
  store i64 748580250866718886, i64* %82, align 8, !dbg !834, !tbaa !91
  %83 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 70, !dbg !835
  store i64 1242879168328830382, i64* %83, align 8, !dbg !836, !tbaa !91
  %84 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 71, !dbg !837
  store i64 1977374033974150939, i64* %84, align 8, !dbg !838, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %77, metadata !77, metadata !DIExpression()) #9, !dbg !691
  %85 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 76, !dbg !839
  call void @llvm.dbg.value(metadata i64* %85, metadata !78, metadata !DIExpression()) #9, !dbg !691
  store i64 2944078676154940804, i64* %77, align 8, !dbg !840, !tbaa !91
  %86 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 73, !dbg !841
  store i64 3659926193048069267, i64* %86, align 8, !dbg !842, !tbaa !91
  %87 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 74, !dbg !843
  store i64 4368137639120453308, i64* %87, align 8, !dbg !844, !tbaa !91
  %88 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 75, !dbg !845
  store i64 4836135668995329356, i64* %88, align 8, !dbg !846, !tbaa !91
  store i64 5532061633213252278, i64* %85, align 8, !dbg !847, !tbaa !91
  %89 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 77, !dbg !848
  store i64 6448918945643986474, i64* %89, align 8, !dbg !849, !tbaa !91
  %90 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 78, !dbg !850
  store i64 6902733635092675308, i64* %90, align 8, !dbg !851, !tbaa !91
  %91 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 79, !dbg !852
  store i64 7801388544844847127, i64* %91, align 8, !dbg !853, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %12, metadata !79, metadata !DIExpression()) #9, !dbg !691
  %92 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 164, !dbg !854
  call void @llvm.dbg.value(metadata i64* %92, metadata !80, metadata !DIExpression()) #9, !dbg !691
  store i64 -3766243637369397544, i64* %12, align 8, !dbg !855, !tbaa !91
  %93 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 161, !dbg !856
  store i64 7105036623409894663, i64* %93, align 8, !dbg !857, !tbaa !91
  %94 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 162, !dbg !858
  store i64 -7973340178411365097, i64* %94, align 8, !dbg !859, !tbaa !91
  %95 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 163, !dbg !860
  store i64 1526699215303891257, i64* %95, align 8, !dbg !861, !tbaa !91
  store i64 7436329637833083697, i64* %92, align 8, !dbg !862, !tbaa !91
  %96 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 165, !dbg !863
  store i64 -8163818279084223215, i64* %96, align 8, !dbg !864, !tbaa !91
  %97 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 166, !dbg !865
  store i64 -2662702644619276377, i64* %97, align 8, !dbg !866, !tbaa !91
  %98 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 167, !dbg !867
  store i64 5167115440072839076, i64* %98, align 8, !dbg !868, !tbaa !91
  store i64 0, i64* %11, align 8, !dbg !869, !tbaa !91
  call void @llvm.dbg.value(metadata i64* %10, metadata !478, metadata !DIExpression()) #9, !dbg !870
  call void @llvm.dbg.value(metadata i8* %1, metadata !481, metadata !DIExpression()) #9, !dbg !870
  call void @llvm.dbg.value(metadata i32 %6, metadata !482, metadata !DIExpression()) #9, !dbg !870
  call void @llvm.dbg.value(metadata i32 0, metadata !483, metadata !DIExpression()) #9, !dbg !872
  %99 = icmp ult i32 %2, 128, !dbg !873
  br i1 %99, label %106, label %100, !dbg !874

100:                                              ; preds = %3, %100
  %101 = phi i32 [ %104, %100 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %101, metadata !483, metadata !DIExpression()) #9, !dbg !872
  %102 = shl i32 %101, 7, !dbg !875
  %103 = getelementptr inbounds i8, i8* %1, i32 %102, !dbg !876
  call void @llvm.dbg.value(metadata i8* %103, metadata !485, metadata !DIExpression()) #9, !dbg !877
  call fastcc void @Hacl_Impl_SHA2_384_update(i64* noundef nonnull %10, i8* noundef %103) #9, !dbg !878
  %104 = add nuw nsw i32 %101, 1, !dbg !879
  call void @llvm.dbg.value(metadata i32 %104, metadata !483, metadata !DIExpression()) #9, !dbg !872
  %105 = icmp eq i32 %104, %6, !dbg !873
  br i1 %105, label %106, label %100, !dbg !874, !llvm.loop !880

106:                                              ; preds = %100, %3
  %107 = zext i32 %7 to i64, !dbg !882
  call fastcc void @Hacl_Impl_SHA2_384_update_last(i64* noundef nonnull %10, i8* noundef %9, i64 noundef %107) #9, !dbg !883
  call void @llvm.dbg.value(metadata i64* %10, metadata !616, metadata !DIExpression()) #9, !dbg !884
  call void @llvm.dbg.value(metadata i8* %0, metadata !619, metadata !DIExpression()) #9, !dbg !884
  call void @llvm.dbg.value(metadata i64* %12, metadata !620, metadata !DIExpression()) #9, !dbg !884
  call void @llvm.dbg.value(metadata i8* %0, metadata !624, metadata !DIExpression()) #9, !dbg !886
  call void @llvm.dbg.value(metadata i64* %12, metadata !629, metadata !DIExpression()) #9, !dbg !886
  call void @llvm.dbg.value(metadata i32 6, metadata !630, metadata !DIExpression()) #9, !dbg !886
  call void @llvm.dbg.value(metadata i32 0, metadata !631, metadata !DIExpression()) #9, !dbg !888
  br label %108, !dbg !889

108:                                              ; preds = %108, %106
  %109 = phi i32 [ 0, %106 ], [ %116, %108 ]
  call void @llvm.dbg.value(metadata i32 %109, metadata !631, metadata !DIExpression()) #9, !dbg !888
  %110 = getelementptr inbounds i64, i64* %12, i32 %109, !dbg !890
  %111 = load i64, i64* %110, align 8, !dbg !890, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %111, metadata !633, metadata !DIExpression()) #9, !dbg !891
  %112 = shl i32 %109, 3, !dbg !892
  %113 = getelementptr inbounds i8, i8* %0, i32 %112, !dbg !893
  call void @llvm.dbg.value(metadata i8* %113, metadata !636, metadata !DIExpression()) #9, !dbg !891
  call void @llvm.dbg.value(metadata i64 %111, metadata !368, metadata !DIExpression()) #9, !dbg !894
  %114 = call i64 @llvm.bswap.i64(i64 %111) #9, !dbg !896
  call void @llvm.dbg.value(metadata i8* %113, metadata !582, metadata !DIExpression()) #9, !dbg !897
  call void @llvm.dbg.value(metadata i64 %114, metadata !587, metadata !DIExpression()) #9, !dbg !897
  %115 = bitcast i8* %113 to i64*, !dbg !899
  store i64 %114, i64* %115, align 1, !dbg !899
  %116 = add nuw nsw i32 %109, 1, !dbg !900
  call void @llvm.dbg.value(metadata i32 %116, metadata !631, metadata !DIExpression()) #9, !dbg !888
  %117 = icmp eq i32 %116, 6, !dbg !901
  br i1 %117, label %118, label %108, !dbg !889, !llvm.loop !902

118:                                              ; preds = %108
  call void @llvm.lifetime.end.p0i8(i64 1352, i8* nonnull %5) #9, !dbg !904
  ret void, !dbg !905
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #6

declare !dbg !906 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #7

declare !dbg !910 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #7

declare !dbg !913 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !916 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Hacl_SHA2_384_size_hash", scope: !2, file: !3, line: 333, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hacl-c/hacl-c/Hacl_SHA2_384.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "ab6d60fb9ac77b099f54d26ef605434f")
!4 = !{!5, !10, !13}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 42, baseType: !9)
!8 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 27, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 48, baseType: !12)
!12 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 38, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !{!0, !17, !19}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "Hacl_SHA2_384_size_block", scope: !2, file: !3, line: 335, type: !5, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "Hacl_SHA2_384_size_state", scope: !2, file: !3, line: 337, type: !5, isLocal: false, isDefinition: true)
!21 = !{i32 1, !"NumRegisterParameters", i32 0}
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!29 = distinct !DISubprogram(name: "Hacl_SHA2_384_init", scope: !3, file: !3, line: 339, type: !30, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!33 = !{!34}
!34 = !DILocalVariable(name: "state", arg: 1, scope: !29, file: !3, line: 339, type: !32)
!35 = !DILocation(line: 0, scope: !29)
!36 = !DILocation(line: 341, column: 3, scope: !29)
!37 = !DILocation(line: 342, column: 1, scope: !29)
!38 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_384_init", scope: !3, file: !3, line: 49, type: !30, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!40 = !DILocalVariable(name: "state", arg: 1, scope: !38, file: !3, line: 49, type: !32)
!41 = !DILocalVariable(name: "n1", scope: !38, file: !3, line: 51, type: !32)
!42 = !DILocalVariable(name: "k1", scope: !38, file: !3, line: 52, type: !32)
!43 = !DILocalVariable(name: "h_01", scope: !38, file: !3, line: 53, type: !32)
!44 = !DILocalVariable(name: "p10", scope: !38, file: !3, line: 54, type: !32)
!45 = !DILocalVariable(name: "p20", scope: !38, file: !3, line: 55, type: !32)
!46 = !DILocalVariable(name: "p3", scope: !38, file: !3, line: 56, type: !32)
!47 = !DILocalVariable(name: "p4", scope: !38, file: !3, line: 57, type: !32)
!48 = !DILocalVariable(name: "p5", scope: !38, file: !3, line: 58, type: !32)
!49 = !DILocalVariable(name: "p11", scope: !38, file: !3, line: 59, type: !32)
!50 = !DILocalVariable(name: "p21", scope: !38, file: !3, line: 60, type: !32)
!51 = !DILocalVariable(name: "p12", scope: !38, file: !3, line: 61, type: !32)
!52 = !DILocalVariable(name: "p22", scope: !38, file: !3, line: 62, type: !32)
!53 = !DILocalVariable(name: "p13", scope: !38, file: !3, line: 71, type: !32)
!54 = !DILocalVariable(name: "p23", scope: !38, file: !3, line: 72, type: !32)
!55 = !DILocalVariable(name: "p14", scope: !38, file: !3, line: 81, type: !32)
!56 = !DILocalVariable(name: "p24", scope: !38, file: !3, line: 82, type: !32)
!57 = !DILocalVariable(name: "p15", scope: !38, file: !3, line: 83, type: !32)
!58 = !DILocalVariable(name: "p25", scope: !38, file: !3, line: 84, type: !32)
!59 = !DILocalVariable(name: "p16", scope: !38, file: !3, line: 93, type: !32)
!60 = !DILocalVariable(name: "p26", scope: !38, file: !3, line: 94, type: !32)
!61 = !DILocalVariable(name: "p17", scope: !38, file: !3, line: 103, type: !32)
!62 = !DILocalVariable(name: "p27", scope: !38, file: !3, line: 104, type: !32)
!63 = !DILocalVariable(name: "p18", scope: !38, file: !3, line: 105, type: !32)
!64 = !DILocalVariable(name: "p28", scope: !38, file: !3, line: 106, type: !32)
!65 = !DILocalVariable(name: "p19", scope: !38, file: !3, line: 115, type: !32)
!66 = !DILocalVariable(name: "p29", scope: !38, file: !3, line: 116, type: !32)
!67 = !DILocalVariable(name: "p110", scope: !38, file: !3, line: 125, type: !32)
!68 = !DILocalVariable(name: "p210", scope: !38, file: !3, line: 126, type: !32)
!69 = !DILocalVariable(name: "p111", scope: !38, file: !3, line: 127, type: !32)
!70 = !DILocalVariable(name: "p211", scope: !38, file: !3, line: 128, type: !32)
!71 = !DILocalVariable(name: "p112", scope: !38, file: !3, line: 137, type: !32)
!72 = !DILocalVariable(name: "p212", scope: !38, file: !3, line: 138, type: !32)
!73 = !DILocalVariable(name: "p113", scope: !38, file: !3, line: 147, type: !32)
!74 = !DILocalVariable(name: "p213", scope: !38, file: !3, line: 148, type: !32)
!75 = !DILocalVariable(name: "p1", scope: !38, file: !3, line: 149, type: !32)
!76 = !DILocalVariable(name: "p214", scope: !38, file: !3, line: 150, type: !32)
!77 = !DILocalVariable(name: "p114", scope: !38, file: !3, line: 159, type: !32)
!78 = !DILocalVariable(name: "p215", scope: !38, file: !3, line: 160, type: !32)
!79 = !DILocalVariable(name: "p115", scope: !38, file: !3, line: 169, type: !32)
!80 = !DILocalVariable(name: "p2", scope: !38, file: !3, line: 170, type: !32)
!81 = !DILocation(line: 0, scope: !38)
!82 = !DILocation(line: 51, column: 24, scope: !38)
!83 = !DILocation(line: 53, column: 26, scope: !38)
!84 = !DILocation(line: 55, column: 22, scope: !38)
!85 = !DILocation(line: 56, column: 21, scope: !38)
!86 = !DILocation(line: 57, column: 21, scope: !38)
!87 = !DILocation(line: 58, column: 21, scope: !38)
!88 = !DILocation(line: 60, column: 23, scope: !38)
!89 = !DILocation(line: 62, column: 23, scope: !38)
!90 = !DILocation(line: 63, column: 11, scope: !38)
!91 = !{!92, !92, i64 0}
!92 = !{!"long long", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !DILocation(line: 64, column: 3, scope: !38)
!96 = !DILocation(line: 64, column: 11, scope: !38)
!97 = !DILocation(line: 65, column: 3, scope: !38)
!98 = !DILocation(line: 65, column: 11, scope: !38)
!99 = !DILocation(line: 66, column: 3, scope: !38)
!100 = !DILocation(line: 66, column: 11, scope: !38)
!101 = !DILocation(line: 67, column: 11, scope: !38)
!102 = !DILocation(line: 68, column: 3, scope: !38)
!103 = !DILocation(line: 68, column: 11, scope: !38)
!104 = !DILocation(line: 69, column: 3, scope: !38)
!105 = !DILocation(line: 69, column: 11, scope: !38)
!106 = !DILocation(line: 70, column: 3, scope: !38)
!107 = !DILocation(line: 70, column: 11, scope: !38)
!108 = !DILocation(line: 72, column: 23, scope: !38)
!109 = !DILocation(line: 73, column: 11, scope: !38)
!110 = !DILocation(line: 74, column: 3, scope: !38)
!111 = !DILocation(line: 74, column: 11, scope: !38)
!112 = !DILocation(line: 75, column: 3, scope: !38)
!113 = !DILocation(line: 75, column: 11, scope: !38)
!114 = !DILocation(line: 76, column: 3, scope: !38)
!115 = !DILocation(line: 76, column: 11, scope: !38)
!116 = !DILocation(line: 77, column: 11, scope: !38)
!117 = !DILocation(line: 78, column: 3, scope: !38)
!118 = !DILocation(line: 78, column: 11, scope: !38)
!119 = !DILocation(line: 79, column: 3, scope: !38)
!120 = !DILocation(line: 79, column: 11, scope: !38)
!121 = !DILocation(line: 80, column: 3, scope: !38)
!122 = !DILocation(line: 80, column: 11, scope: !38)
!123 = !DILocation(line: 82, column: 23, scope: !38)
!124 = !DILocation(line: 84, column: 23, scope: !38)
!125 = !DILocation(line: 85, column: 11, scope: !38)
!126 = !DILocation(line: 86, column: 3, scope: !38)
!127 = !DILocation(line: 86, column: 11, scope: !38)
!128 = !DILocation(line: 87, column: 3, scope: !38)
!129 = !DILocation(line: 87, column: 11, scope: !38)
!130 = !DILocation(line: 88, column: 3, scope: !38)
!131 = !DILocation(line: 88, column: 11, scope: !38)
!132 = !DILocation(line: 89, column: 11, scope: !38)
!133 = !DILocation(line: 90, column: 3, scope: !38)
!134 = !DILocation(line: 90, column: 11, scope: !38)
!135 = !DILocation(line: 91, column: 3, scope: !38)
!136 = !DILocation(line: 91, column: 11, scope: !38)
!137 = !DILocation(line: 92, column: 3, scope: !38)
!138 = !DILocation(line: 92, column: 11, scope: !38)
!139 = !DILocation(line: 94, column: 23, scope: !38)
!140 = !DILocation(line: 95, column: 11, scope: !38)
!141 = !DILocation(line: 96, column: 3, scope: !38)
!142 = !DILocation(line: 96, column: 11, scope: !38)
!143 = !DILocation(line: 97, column: 3, scope: !38)
!144 = !DILocation(line: 97, column: 11, scope: !38)
!145 = !DILocation(line: 98, column: 3, scope: !38)
!146 = !DILocation(line: 98, column: 11, scope: !38)
!147 = !DILocation(line: 99, column: 11, scope: !38)
!148 = !DILocation(line: 100, column: 3, scope: !38)
!149 = !DILocation(line: 100, column: 11, scope: !38)
!150 = !DILocation(line: 101, column: 3, scope: !38)
!151 = !DILocation(line: 101, column: 11, scope: !38)
!152 = !DILocation(line: 102, column: 3, scope: !38)
!153 = !DILocation(line: 102, column: 11, scope: !38)
!154 = !DILocation(line: 104, column: 22, scope: !38)
!155 = !DILocation(line: 106, column: 23, scope: !38)
!156 = !DILocation(line: 107, column: 11, scope: !38)
!157 = !DILocation(line: 108, column: 3, scope: !38)
!158 = !DILocation(line: 108, column: 11, scope: !38)
!159 = !DILocation(line: 109, column: 3, scope: !38)
!160 = !DILocation(line: 109, column: 11, scope: !38)
!161 = !DILocation(line: 110, column: 3, scope: !38)
!162 = !DILocation(line: 110, column: 11, scope: !38)
!163 = !DILocation(line: 111, column: 11, scope: !38)
!164 = !DILocation(line: 112, column: 3, scope: !38)
!165 = !DILocation(line: 112, column: 11, scope: !38)
!166 = !DILocation(line: 113, column: 3, scope: !38)
!167 = !DILocation(line: 113, column: 11, scope: !38)
!168 = !DILocation(line: 114, column: 3, scope: !38)
!169 = !DILocation(line: 114, column: 11, scope: !38)
!170 = !DILocation(line: 116, column: 23, scope: !38)
!171 = !DILocation(line: 117, column: 11, scope: !38)
!172 = !DILocation(line: 118, column: 3, scope: !38)
!173 = !DILocation(line: 118, column: 11, scope: !38)
!174 = !DILocation(line: 119, column: 3, scope: !38)
!175 = !DILocation(line: 119, column: 11, scope: !38)
!176 = !DILocation(line: 120, column: 3, scope: !38)
!177 = !DILocation(line: 120, column: 11, scope: !38)
!178 = !DILocation(line: 121, column: 11, scope: !38)
!179 = !DILocation(line: 122, column: 3, scope: !38)
!180 = !DILocation(line: 122, column: 11, scope: !38)
!181 = !DILocation(line: 123, column: 3, scope: !38)
!182 = !DILocation(line: 123, column: 11, scope: !38)
!183 = !DILocation(line: 124, column: 3, scope: !38)
!184 = !DILocation(line: 124, column: 11, scope: !38)
!185 = !DILocation(line: 126, column: 23, scope: !38)
!186 = !DILocation(line: 128, column: 25, scope: !38)
!187 = !DILocation(line: 129, column: 12, scope: !38)
!188 = !DILocation(line: 130, column: 3, scope: !38)
!189 = !DILocation(line: 130, column: 12, scope: !38)
!190 = !DILocation(line: 131, column: 3, scope: !38)
!191 = !DILocation(line: 131, column: 12, scope: !38)
!192 = !DILocation(line: 132, column: 3, scope: !38)
!193 = !DILocation(line: 132, column: 12, scope: !38)
!194 = !DILocation(line: 133, column: 12, scope: !38)
!195 = !DILocation(line: 134, column: 3, scope: !38)
!196 = !DILocation(line: 134, column: 12, scope: !38)
!197 = !DILocation(line: 135, column: 3, scope: !38)
!198 = !DILocation(line: 135, column: 12, scope: !38)
!199 = !DILocation(line: 136, column: 3, scope: !38)
!200 = !DILocation(line: 136, column: 12, scope: !38)
!201 = !DILocation(line: 138, column: 25, scope: !38)
!202 = !DILocation(line: 139, column: 12, scope: !38)
!203 = !DILocation(line: 140, column: 3, scope: !38)
!204 = !DILocation(line: 140, column: 12, scope: !38)
!205 = !DILocation(line: 141, column: 3, scope: !38)
!206 = !DILocation(line: 141, column: 12, scope: !38)
!207 = !DILocation(line: 142, column: 3, scope: !38)
!208 = !DILocation(line: 142, column: 12, scope: !38)
!209 = !DILocation(line: 143, column: 12, scope: !38)
!210 = !DILocation(line: 144, column: 3, scope: !38)
!211 = !DILocation(line: 144, column: 12, scope: !38)
!212 = !DILocation(line: 145, column: 3, scope: !38)
!213 = !DILocation(line: 145, column: 12, scope: !38)
!214 = !DILocation(line: 146, column: 3, scope: !38)
!215 = !DILocation(line: 146, column: 12, scope: !38)
!216 = !DILocation(line: 148, column: 23, scope: !38)
!217 = !DILocation(line: 150, column: 25, scope: !38)
!218 = !DILocation(line: 151, column: 10, scope: !38)
!219 = !DILocation(line: 152, column: 3, scope: !38)
!220 = !DILocation(line: 152, column: 10, scope: !38)
!221 = !DILocation(line: 153, column: 3, scope: !38)
!222 = !DILocation(line: 153, column: 10, scope: !38)
!223 = !DILocation(line: 154, column: 3, scope: !38)
!224 = !DILocation(line: 154, column: 10, scope: !38)
!225 = !DILocation(line: 155, column: 12, scope: !38)
!226 = !DILocation(line: 156, column: 3, scope: !38)
!227 = !DILocation(line: 156, column: 12, scope: !38)
!228 = !DILocation(line: 157, column: 3, scope: !38)
!229 = !DILocation(line: 157, column: 12, scope: !38)
!230 = !DILocation(line: 158, column: 3, scope: !38)
!231 = !DILocation(line: 158, column: 12, scope: !38)
!232 = !DILocation(line: 160, column: 25, scope: !38)
!233 = !DILocation(line: 161, column: 12, scope: !38)
!234 = !DILocation(line: 162, column: 3, scope: !38)
!235 = !DILocation(line: 162, column: 12, scope: !38)
!236 = !DILocation(line: 163, column: 3, scope: !38)
!237 = !DILocation(line: 163, column: 12, scope: !38)
!238 = !DILocation(line: 164, column: 3, scope: !38)
!239 = !DILocation(line: 164, column: 12, scope: !38)
!240 = !DILocation(line: 165, column: 12, scope: !38)
!241 = !DILocation(line: 166, column: 3, scope: !38)
!242 = !DILocation(line: 166, column: 12, scope: !38)
!243 = !DILocation(line: 167, column: 3, scope: !38)
!244 = !DILocation(line: 167, column: 12, scope: !38)
!245 = !DILocation(line: 168, column: 3, scope: !38)
!246 = !DILocation(line: 168, column: 12, scope: !38)
!247 = !DILocation(line: 170, column: 23, scope: !38)
!248 = !DILocation(line: 171, column: 12, scope: !38)
!249 = !DILocation(line: 172, column: 3, scope: !38)
!250 = !DILocation(line: 172, column: 12, scope: !38)
!251 = !DILocation(line: 173, column: 3, scope: !38)
!252 = !DILocation(line: 173, column: 12, scope: !38)
!253 = !DILocation(line: 174, column: 3, scope: !38)
!254 = !DILocation(line: 174, column: 12, scope: !38)
!255 = !DILocation(line: 175, column: 10, scope: !38)
!256 = !DILocation(line: 176, column: 3, scope: !38)
!257 = !DILocation(line: 176, column: 10, scope: !38)
!258 = !DILocation(line: 177, column: 3, scope: !38)
!259 = !DILocation(line: 177, column: 10, scope: !38)
!260 = !DILocation(line: 178, column: 3, scope: !38)
!261 = !DILocation(line: 178, column: 10, scope: !38)
!262 = !DILocation(line: 179, column: 10, scope: !38)
!263 = !DILocation(line: 180, column: 1, scope: !38)
!264 = distinct !DISubprogram(name: "Hacl_SHA2_384_update", scope: !3, file: !3, line: 344, type: !265, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !32, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!268 = !{!269, !270}
!269 = !DILocalVariable(name: "state", arg: 1, scope: !264, file: !3, line: 344, type: !32)
!270 = !DILocalVariable(name: "data_8", arg: 2, scope: !264, file: !3, line: 344, type: !267)
!271 = !DILocation(line: 0, scope: !264)
!272 = !DILocation(line: 346, column: 3, scope: !264)
!273 = !DILocation(line: 347, column: 1, scope: !264)
!274 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_384_update", scope: !3, file: !3, line: 182, type: !265, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!275 = !{!276, !277, !278, !282, !284, !285, !286, !287, !288, !290, !293, !295, !298, !299, !300, !301, !305, !307, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !327, !330, !331, !332}
!276 = !DILocalVariable(name: "state", arg: 1, scope: !274, file: !3, line: 182, type: !32)
!277 = !DILocalVariable(name: "data", arg: 2, scope: !274, file: !3, line: 182, type: !267)
!278 = !DILocalVariable(name: "data_w", scope: !274, file: !3, line: 185, type: !279)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 16)
!282 = !DILocalVariable(name: "_i", scope: !283, file: !3, line: 186, type: !5)
!283 = distinct !DILexicalBlock(scope: !274, file: !3, line: 186, column: 3)
!284 = !DILocalVariable(name: "hash_w", scope: !274, file: !3, line: 189, type: !32)
!285 = !DILocalVariable(name: "ws_w", scope: !274, file: !3, line: 190, type: !32)
!286 = !DILocalVariable(name: "k_w", scope: !274, file: !3, line: 191, type: !32)
!287 = !DILocalVariable(name: "counter_w", scope: !274, file: !3, line: 192, type: !32)
!288 = !DILocalVariable(name: "i", scope: !289, file: !3, line: 193, type: !5)
!289 = distinct !DILexicalBlock(scope: !274, file: !3, line: 193, column: 3)
!290 = !DILocalVariable(name: "b", scope: !291, file: !3, line: 195, type: !10)
!291 = distinct !DILexicalBlock(scope: !292, file: !3, line: 194, column: 3)
!292 = distinct !DILexicalBlock(scope: !289, file: !3, line: 193, column: 3)
!293 = !DILocalVariable(name: "i", scope: !294, file: !3, line: 198, type: !5)
!294 = distinct !DILexicalBlock(scope: !274, file: !3, line: 198, column: 3)
!295 = !DILocalVariable(name: "t16", scope: !296, file: !3, line: 200, type: !10)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 199, column: 3)
!297 = distinct !DILexicalBlock(scope: !294, file: !3, line: 198, column: 3)
!298 = !DILocalVariable(name: "t15", scope: !296, file: !3, line: 201, type: !10)
!299 = !DILocalVariable(name: "t7", scope: !296, file: !3, line: 202, type: !10)
!300 = !DILocalVariable(name: "t2", scope: !296, file: !3, line: 203, type: !10)
!301 = !DILocalVariable(name: "hash_0", scope: !274, file: !3, line: 214, type: !302)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 512, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 8)
!305 = !DILocalVariable(name: "i", scope: !306, file: !3, line: 216, type: !5)
!306 = distinct !DILexicalBlock(scope: !274, file: !3, line: 216, column: 3)
!307 = !DILocalVariable(name: "a", scope: !308, file: !3, line: 218, type: !10)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 217, column: 3)
!309 = distinct !DILexicalBlock(scope: !306, file: !3, line: 216, column: 3)
!310 = !DILocalVariable(name: "b", scope: !308, file: !3, line: 219, type: !10)
!311 = !DILocalVariable(name: "c", scope: !308, file: !3, line: 220, type: !10)
!312 = !DILocalVariable(name: "d", scope: !308, file: !3, line: 221, type: !10)
!313 = !DILocalVariable(name: "e", scope: !308, file: !3, line: 222, type: !10)
!314 = !DILocalVariable(name: "f1", scope: !308, file: !3, line: 223, type: !10)
!315 = !DILocalVariable(name: "g", scope: !308, file: !3, line: 224, type: !10)
!316 = !DILocalVariable(name: "h", scope: !308, file: !3, line: 225, type: !10)
!317 = !DILocalVariable(name: "k_t", scope: !308, file: !3, line: 226, type: !10)
!318 = !DILocalVariable(name: "ws_t", scope: !308, file: !3, line: 227, type: !10)
!319 = !DILocalVariable(name: "t1", scope: !308, file: !3, line: 229, type: !10)
!320 = !DILocalVariable(name: "t2", scope: !308, file: !3, line: 240, type: !10)
!321 = !DILocalVariable(name: "x1", scope: !308, file: !3, line: 246, type: !10)
!322 = !DILocalVariable(name: "x5", scope: !308, file: !3, line: 247, type: !10)
!323 = !DILocalVariable(name: "p1", scope: !308, file: !3, line: 248, type: !32)
!324 = !DILocalVariable(name: "p2", scope: !308, file: !3, line: 249, type: !32)
!325 = !DILocalVariable(name: "i", scope: !326, file: !3, line: 259, type: !5)
!326 = distinct !DILexicalBlock(scope: !274, file: !3, line: 259, column: 3)
!327 = !DILocalVariable(name: "xi", scope: !328, file: !3, line: 261, type: !10)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 260, column: 3)
!329 = distinct !DILexicalBlock(scope: !326, file: !3, line: 259, column: 3)
!330 = !DILocalVariable(name: "yi", scope: !328, file: !3, line: 262, type: !10)
!331 = !DILocalVariable(name: "c0", scope: !274, file: !3, line: 265, type: !10)
!332 = !DILocalVariable(name: "one1", scope: !274, file: !3, line: 266, type: !10)
!333 = !DILocation(line: 0, scope: !274)
!334 = !DILocation(line: 185, column: 3, scope: !274)
!335 = !DILocation(line: 185, column: 12, scope: !274)
!336 = !DILocation(line: 0, scope: !283)
!337 = !DILocation(line: 187, column: 16, scope: !338)
!338 = distinct !DILexicalBlock(scope: !283, file: !3, line: 186, column: 3)
!339 = !DILocation(line: 30, column: 3, scope: !340, inlinedAt: !353)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 30, column: 3)
!341 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes", scope: !3, file: !3, line: 28, type: !342, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !32, !267, !5}
!344 = !{!345, !346, !347, !348, !349, !352}
!345 = !DILocalVariable(name: "output", arg: 1, scope: !341, file: !3, line: 28, type: !32)
!346 = !DILocalVariable(name: "input", arg: 2, scope: !341, file: !3, line: 28, type: !267)
!347 = !DILocalVariable(name: "len", arg: 3, scope: !341, file: !3, line: 28, type: !5)
!348 = !DILocalVariable(name: "i", scope: !340, file: !3, line: 30, type: !5)
!349 = !DILocalVariable(name: "x0", scope: !350, file: !3, line: 32, type: !267)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 31, column: 3)
!351 = distinct !DILexicalBlock(scope: !340, file: !3, line: 30, column: 3)
!352 = !DILocalVariable(name: "inputi", scope: !350, file: !3, line: 33, type: !10)
!353 = distinct !DILocation(line: 188, column: 3, scope: !274)
!354 = !DILocation(line: 0, scope: !340, inlinedAt: !353)
!355 = !DILocation(line: 32, column: 40, scope: !350, inlinedAt: !353)
!356 = !DILocation(line: 32, column: 25, scope: !350, inlinedAt: !353)
!357 = !DILocation(line: 0, scope: !350, inlinedAt: !353)
!358 = !DILocalVariable(name: "b", arg: 1, scope: !359, file: !360, line: 347, type: !267)
!359 = distinct !DISubprogram(name: "load64", scope: !360, file: !360, line: 347, type: !361, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!360 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!361 = !DISubroutineType(types: !362)
!362 = !{!10, !267}
!363 = !{!358, !364}
!364 = !DILocalVariable(name: "x", scope: !359, file: !360, line: 348, type: !10)
!365 = !DILocation(line: 0, scope: !359, inlinedAt: !366)
!366 = distinct !DILocation(line: 33, column: 23, scope: !350, inlinedAt: !353)
!367 = !DILocation(line: 349, column: 3, scope: !359, inlinedAt: !366)
!368 = !DILocalVariable(name: "__bsx", arg: 1, scope: !369, file: !370, line: 70, type: !11)
!369 = distinct !DISubprogram(name: "__bswap_64", scope: !370, file: !370, line: 70, type: !371, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!370 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!371 = !DISubroutineType(types: !372)
!372 = !{!11, !11}
!373 = !{!368}
!374 = !DILocation(line: 0, scope: !369, inlinedAt: !375)
!375 = distinct !DILocation(line: 33, column: 23, scope: !350, inlinedAt: !353)
!376 = !DILocation(line: 75, column: 10, scope: !369, inlinedAt: !375)
!377 = !DILocation(line: 34, column: 5, scope: !350, inlinedAt: !353)
!378 = !DILocation(line: 34, column: 15, scope: !350, inlinedAt: !353)
!379 = !DILocation(line: 30, column: 50, scope: !351, inlinedAt: !353)
!380 = !DILocation(line: 30, column: 37, scope: !351, inlinedAt: !353)
!381 = distinct !{!381, !339, !382, !383, !384}
!382 = !DILocation(line: 35, column: 3, scope: !340, inlinedAt: !353)
!383 = !{!"llvm.loop.mustprogress"}
!384 = !{!"llvm.loop.unroll.disable"}
!385 = !DILocation(line: 190, column: 26, scope: !274)
!386 = !DILocation(line: 0, scope: !289)
!387 = !DILocation(line: 196, column: 13, scope: !291)
!388 = !DILocation(line: 0, scope: !291)
!389 = !DILocation(line: 189, column: 28, scope: !274)
!390 = !DILocation(line: 198, column: 3, scope: !294)
!391 = !DILocation(line: 214, column: 3, scope: !274)
!392 = !DILocation(line: 214, column: 12, scope: !274)
!393 = !DILocation(line: 215, column: 3, scope: !274)
!394 = !DILocation(line: 0, scope: !306)
!395 = !DILocation(line: 216, column: 3, scope: !306)
!396 = !DILocation(line: 0, scope: !294)
!397 = !DILocation(line: 200, column: 27, scope: !296)
!398 = !DILocation(line: 200, column: 20, scope: !296)
!399 = !DILocation(line: 0, scope: !296)
!400 = !DILocation(line: 201, column: 27, scope: !296)
!401 = !DILocation(line: 201, column: 20, scope: !296)
!402 = !DILocation(line: 202, column: 26, scope: !296)
!403 = !DILocation(line: 202, column: 19, scope: !296)
!404 = !DILocation(line: 203, column: 26, scope: !296)
!405 = !DILocation(line: 203, column: 19, scope: !296)
!406 = !DILocation(line: 205, column: 29, scope: !296)
!407 = !DILocation(line: 206, column: 31, scope: !296)
!408 = !DILocation(line: 206, column: 77, scope: !296)
!409 = !DILocation(line: 206, column: 72, scope: !296)
!410 = !DILocation(line: 206, column: 7, scope: !296)
!411 = !DILocation(line: 210, column: 33, scope: !296)
!412 = !DILocation(line: 211, column: 35, scope: !296)
!413 = !DILocation(line: 211, column: 82, scope: !296)
!414 = !DILocation(line: 211, column: 76, scope: !296)
!415 = !DILocation(line: 211, column: 11, scope: !296)
!416 = !DILocation(line: 207, column: 7, scope: !296)
!417 = !DILocation(line: 209, column: 9, scope: !296)
!418 = !DILocation(line: 212, column: 11, scope: !296)
!419 = !DILocation(line: 204, column: 5, scope: !296)
!420 = !DILocation(line: 204, column: 13, scope: !296)
!421 = !DILocation(line: 198, column: 61, scope: !297)
!422 = !DILocation(line: 198, column: 38, scope: !297)
!423 = distinct !{!423, !390, !424, !383, !384}
!424 = !DILocation(line: 213, column: 3, scope: !294)
!425 = !DILocation(line: 0, scope: !308)
!426 = !DILocation(line: 0, scope: !326)
!427 = !DILocation(line: 259, column: 3, scope: !326)
!428 = !DILocation(line: 226, column: 20, scope: !308)
!429 = !DILocation(line: 227, column: 21, scope: !308)
!430 = !DILocation(line: 232, column: 30, scope: !308)
!431 = !DILocation(line: 234, column: 32, scope: !308)
!432 = !DILocation(line: 235, column: 33, scope: !308)
!433 = !DILocation(line: 235, column: 11, scope: !308)
!434 = !DILocation(line: 233, column: 9, scope: !308)
!435 = !DILocation(line: 236, column: 13, scope: !308)
!436 = !DILocation(line: 236, column: 22, scope: !308)
!437 = !DILocation(line: 236, column: 25, scope: !308)
!438 = !DILocation(line: 236, column: 19, scope: !308)
!439 = !DILocation(line: 231, column: 7, scope: !308)
!440 = !DILocation(line: 236, column: 7, scope: !308)
!441 = !DILocation(line: 237, column: 7, scope: !308)
!442 = !DILocation(line: 238, column: 7, scope: !308)
!443 = !DILocation(line: 241, column: 28, scope: !308)
!444 = !DILocation(line: 243, column: 30, scope: !308)
!445 = !DILocation(line: 244, column: 31, scope: !308)
!446 = !DILocation(line: 244, column: 9, scope: !308)
!447 = !DILocation(line: 242, column: 7, scope: !308)
!448 = !DILocation(line: 245, column: 13, scope: !308)
!449 = !DILocation(line: 245, column: 29, scope: !308)
!450 = !DILocation(line: 245, column: 18, scope: !308)
!451 = !DILocation(line: 245, column: 7, scope: !308)
!452 = !DILocation(line: 246, column: 22, scope: !308)
!453 = !DILocation(line: 247, column: 21, scope: !308)
!454 = !DILocation(line: 216, column: 60, scope: !309)
!455 = !DILocation(line: 216, column: 37, scope: !309)
!456 = distinct !{!456, !395, !457, !383, !384}
!457 = !DILocation(line: 258, column: 3, scope: !306)
!458 = !DILocation(line: 192, column: 31, scope: !274)
!459 = !DILocation(line: 265, column: 17, scope: !274)
!460 = !DILocation(line: 267, column: 22, scope: !274)
!461 = !DILocation(line: 267, column: 17, scope: !274)
!462 = !DILocation(line: 268, column: 1, scope: !274)
!463 = !DILocation(line: 261, column: 19, scope: !328)
!464 = !DILocation(line: 0, scope: !328)
!465 = !DILocation(line: 262, column: 19, scope: !328)
!466 = !DILocation(line: 263, column: 20, scope: !328)
!467 = !DILocation(line: 263, column: 15, scope: !328)
!468 = !DILocation(line: 259, column: 59, scope: !329)
!469 = !DILocation(line: 259, column: 37, scope: !329)
!470 = distinct !{!470, !427, !471, !383, !384}
!471 = !DILocation(line: 264, column: 3, scope: !326)
!472 = distinct !DISubprogram(name: "Hacl_SHA2_384_update_multi", scope: !3, file: !3, line: 349, type: !342, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !473)
!473 = !{!474, !475, !476}
!474 = !DILocalVariable(name: "state", arg: 1, scope: !472, file: !3, line: 349, type: !32)
!475 = !DILocalVariable(name: "data", arg: 2, scope: !472, file: !3, line: 349, type: !267)
!476 = !DILocalVariable(name: "n1", arg: 3, scope: !472, file: !3, line: 349, type: !5)
!477 = !DILocation(line: 0, scope: !472)
!478 = !DILocalVariable(name: "state", arg: 1, scope: !479, file: !3, line: 270, type: !32)
!479 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_384_update_multi", scope: !3, file: !3, line: 270, type: !342, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !480)
!480 = !{!478, !481, !482, !483, !485}
!481 = !DILocalVariable(name: "data", arg: 2, scope: !479, file: !3, line: 270, type: !267)
!482 = !DILocalVariable(name: "n1", arg: 3, scope: !479, file: !3, line: 270, type: !5)
!483 = !DILocalVariable(name: "i", scope: !484, file: !3, line: 272, type: !5)
!484 = distinct !DILexicalBlock(scope: !479, file: !3, line: 272, column: 3)
!485 = !DILocalVariable(name: "b", scope: !486, file: !3, line: 274, type: !267)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 273, column: 3)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 272, column: 3)
!488 = !DILocation(line: 0, scope: !479, inlinedAt: !489)
!489 = distinct !DILocation(line: 351, column: 3, scope: !472)
!490 = !DILocation(line: 0, scope: !484, inlinedAt: !489)
!491 = !DILocation(line: 272, column: 37, scope: !487, inlinedAt: !489)
!492 = !DILocation(line: 272, column: 3, scope: !484, inlinedAt: !489)
!493 = !DILocation(line: 274, column: 27, scope: !486, inlinedAt: !489)
!494 = !DILocation(line: 274, column: 23, scope: !486, inlinedAt: !489)
!495 = !DILocation(line: 0, scope: !486, inlinedAt: !489)
!496 = !DILocation(line: 275, column: 5, scope: !486, inlinedAt: !489)
!497 = !DILocation(line: 272, column: 49, scope: !487, inlinedAt: !489)
!498 = distinct !{!498, !492, !499, !383, !384}
!499 = !DILocation(line: 276, column: 3, scope: !484, inlinedAt: !489)
!500 = !DILocation(line: 352, column: 1, scope: !472)
!501 = distinct !DISubprogram(name: "Hacl_SHA2_384_update_last", scope: !3, file: !3, line: 354, type: !502, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !32, !267, !10}
!504 = !{!505, !506, !507}
!505 = !DILocalVariable(name: "state", arg: 1, scope: !501, file: !3, line: 354, type: !32)
!506 = !DILocalVariable(name: "data", arg: 2, scope: !501, file: !3, line: 354, type: !267)
!507 = !DILocalVariable(name: "len", arg: 3, scope: !501, file: !3, line: 354, type: !10)
!508 = !DILocation(line: 0, scope: !501)
!509 = !DILocation(line: 356, column: 3, scope: !501)
!510 = !DILocation(line: 357, column: 1, scope: !501)
!511 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_384_update_last", scope: !3, file: !3, line: 279, type: !502, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!512 = !{!513, !514, !515, !516, !520, !521, !522, !523, !524, !532, !533, !534}
!513 = !DILocalVariable(name: "state", arg: 1, scope: !511, file: !3, line: 279, type: !32)
!514 = !DILocalVariable(name: "data", arg: 2, scope: !511, file: !3, line: 279, type: !267)
!515 = !DILocalVariable(name: "len", arg: 3, scope: !511, file: !3, line: 279, type: !10)
!516 = !DILocalVariable(name: "blocks", scope: !511, file: !3, line: 281, type: !517)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 256)
!520 = !DILocalVariable(name: "nb", scope: !511, file: !3, line: 282, type: !5)
!521 = !DILocalVariable(name: "final_blocks", scope: !511, file: !3, line: 287, type: !267)
!522 = !DILocalVariable(name: "n1", scope: !511, file: !3, line: 293, type: !10)
!523 = !DILocalVariable(name: "padding", scope: !511, file: !3, line: 294, type: !267)
!524 = !DILocalVariable(name: "encodedlen", scope: !511, file: !3, line: 296, type: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !526, line: 37, baseType: !527)
!526 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !526, line: 35, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 30, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !528, file: !526, line: 32, baseType: !10, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !528, file: !526, line: 33, baseType: !10, size: 64, offset: 64)
!532 = !DILocalVariable(name: "pad0len", scope: !511, file: !3, line: 301, type: !5)
!533 = !DILocalVariable(name: "buf1", scope: !511, file: !3, line: 304, type: !267)
!534 = !DILocalVariable(name: "buf2", scope: !511, file: !3, line: 305, type: !267)
!535 = !DILocation(line: 0, scope: !511)
!536 = !DILocation(line: 281, column: 3, scope: !511)
!537 = !DILocation(line: 281, column: 11, scope: !511)
!538 = !DILocation(line: 283, column: 11, scope: !539)
!539 = distinct !DILexicalBlock(scope: !511, file: !3, line: 283, column: 7)
!540 = !DILocation(line: 288, column: 7, scope: !511)
!541 = !DILocation(line: 292, column: 30, scope: !511)
!542 = !DILocation(line: 292, column: 3, scope: !511)
!543 = !DILocation(line: 293, column: 17, scope: !511)
!544 = !DILocation(line: 294, column: 35, scope: !511)
!545 = !DILocation(line: 295, column: 3, scope: !511)
!546 = !DILocation(line: 296, column: 3, scope: !511)
!547 = !DILocation(line: 297, column: 48, scope: !511)
!548 = !DILocation(line: 298, column: 9, scope: !511)
!549 = !DILocation(line: 297, column: 30, scope: !511)
!550 = !{!551, !92, i64 0}
!551 = !{!"", !92, i64 0, !92, i64 8}
!552 = !{!551, !92, i64 8}
!553 = !DILocation(line: 297, column: 5, scope: !511)
!554 = !DILocation(line: 302, column: 21, scope: !511)
!555 = !DILocation(line: 303, column: 5, scope: !511)
!556 = !DILocation(line: 305, column: 27, scope: !511)
!557 = !DILocation(line: 305, column: 42, scope: !511)
!558 = !DILocation(line: 306, column: 12, scope: !511)
!559 = !{!93, !93, i64 0}
!560 = !DILocation(line: 307, column: 3, scope: !511)
!561 = !DILocalVariable(name: "n", arg: 2, scope: !562, file: !360, line: 557, type: !565)
!562 = distinct !DISubprogram(name: "store128_be", scope: !360, file: !360, line: 557, type: !563, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !566)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !267, !565}
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !360, line: 510, baseType: !527)
!566 = !{!567, !561}
!567 = !DILocalVariable(name: "b", arg: 1, scope: !562, file: !360, line: 557, type: !267)
!568 = !DILocation(line: 0, scope: !562, inlinedAt: !569)
!569 = distinct !DILocation(line: 307, column: 3, scope: !511)
!570 = !DILocalVariable(name: "b", arg: 1, scope: !571, file: !360, line: 532, type: !267)
!571 = distinct !DISubprogram(name: "store128_be_", scope: !360, file: !360, line: 532, type: !572, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !575)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !267, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 32)
!575 = !{!570, !576}
!576 = !DILocalVariable(name: "n", arg: 2, scope: !571, file: !360, line: 532, type: !574)
!577 = !DILocation(line: 0, scope: !571, inlinedAt: !578)
!578 = distinct !DILocation(line: 557, column: 59, scope: !562, inlinedAt: !569)
!579 = !DILocation(line: 0, scope: !369, inlinedAt: !580)
!580 = distinct !DILocation(line: 533, column: 3, scope: !571, inlinedAt: !578)
!581 = !DILocation(line: 75, column: 10, scope: !369, inlinedAt: !580)
!582 = !DILocalVariable(name: "b", arg: 1, scope: !583, file: !360, line: 357, type: !267)
!583 = distinct !DISubprogram(name: "store64", scope: !360, file: !360, line: 357, type: !584, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !267, !10}
!586 = !{!582, !587}
!587 = !DILocalVariable(name: "i", arg: 2, scope: !583, file: !360, line: 357, type: !10)
!588 = !DILocation(line: 0, scope: !583, inlinedAt: !589)
!589 = distinct !DILocation(line: 533, column: 3, scope: !571, inlinedAt: !578)
!590 = !DILocation(line: 357, column: 54, scope: !583, inlinedAt: !589)
!591 = !DILocation(line: 534, column: 3, scope: !571, inlinedAt: !578)
!592 = !DILocation(line: 0, scope: !369, inlinedAt: !593)
!593 = distinct !DILocation(line: 534, column: 3, scope: !571, inlinedAt: !578)
!594 = !DILocation(line: 75, column: 10, scope: !369, inlinedAt: !593)
!595 = !DILocation(line: 0, scope: !583, inlinedAt: !596)
!596 = distinct !DILocation(line: 534, column: 3, scope: !571, inlinedAt: !578)
!597 = !DILocation(line: 357, column: 54, scope: !583, inlinedAt: !596)
!598 = !DILocation(line: 0, scope: !479, inlinedAt: !599)
!599 = distinct !DILocation(line: 308, column: 3, scope: !511)
!600 = !DILocation(line: 0, scope: !484, inlinedAt: !599)
!601 = !DILocation(line: 274, column: 27, scope: !486, inlinedAt: !599)
!602 = !DILocation(line: 274, column: 23, scope: !486, inlinedAt: !599)
!603 = !DILocation(line: 0, scope: !486, inlinedAt: !599)
!604 = !DILocation(line: 275, column: 5, scope: !486, inlinedAt: !599)
!605 = !DILocation(line: 272, column: 49, scope: !487, inlinedAt: !599)
!606 = !DILocation(line: 272, column: 37, scope: !487, inlinedAt: !599)
!607 = !DILocation(line: 272, column: 3, scope: !484, inlinedAt: !599)
!608 = distinct !{!608, !607, !609, !383, !384}
!609 = !DILocation(line: 276, column: 3, scope: !484, inlinedAt: !599)
!610 = !DILocation(line: 309, column: 1, scope: !511)
!611 = distinct !DISubprogram(name: "Hacl_SHA2_384_finish", scope: !3, file: !3, line: 359, type: !265, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!612 = !{!613, !614}
!613 = !DILocalVariable(name: "state", arg: 1, scope: !611, file: !3, line: 359, type: !32)
!614 = !DILocalVariable(name: "hash1", arg: 2, scope: !611, file: !3, line: 359, type: !267)
!615 = !DILocation(line: 0, scope: !611)
!616 = !DILocalVariable(name: "state", arg: 1, scope: !617, file: !3, line: 311, type: !32)
!617 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_384_finish", scope: !3, file: !3, line: 311, type: !265, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!618 = !{!616, !619, !620}
!619 = !DILocalVariable(name: "hash1", arg: 2, scope: !617, file: !3, line: 311, type: !267)
!620 = !DILocalVariable(name: "hash_w", scope: !617, file: !3, line: 313, type: !32)
!621 = !DILocation(line: 0, scope: !617, inlinedAt: !622)
!622 = distinct !DILocation(line: 361, column: 3, scope: !611)
!623 = !DILocation(line: 313, column: 28, scope: !617, inlinedAt: !622)
!624 = !DILocalVariable(name: "output", arg: 1, scope: !625, file: !3, line: 39, type: !267)
!625 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes", scope: !3, file: !3, line: 39, type: !626, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !267, !32, !5}
!628 = !{!624, !629, !630, !631, !633, !636}
!629 = !DILocalVariable(name: "input", arg: 2, scope: !625, file: !3, line: 39, type: !32)
!630 = !DILocalVariable(name: "len", arg: 3, scope: !625, file: !3, line: 39, type: !5)
!631 = !DILocalVariable(name: "i", scope: !632, file: !3, line: 41, type: !5)
!632 = distinct !DILexicalBlock(scope: !625, file: !3, line: 41, column: 3)
!633 = !DILocalVariable(name: "hd1", scope: !634, file: !3, line: 43, type: !10)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 42, column: 3)
!635 = distinct !DILexicalBlock(scope: !632, file: !3, line: 41, column: 3)
!636 = !DILocalVariable(name: "x0", scope: !634, file: !3, line: 44, type: !267)
!637 = !DILocation(line: 0, scope: !625, inlinedAt: !638)
!638 = distinct !DILocation(line: 314, column: 3, scope: !617, inlinedAt: !622)
!639 = !DILocation(line: 0, scope: !632, inlinedAt: !638)
!640 = !DILocation(line: 41, column: 3, scope: !632, inlinedAt: !638)
!641 = !DILocation(line: 43, column: 20, scope: !634, inlinedAt: !638)
!642 = !DILocation(line: 0, scope: !634, inlinedAt: !638)
!643 = !DILocation(line: 44, column: 41, scope: !634, inlinedAt: !638)
!644 = !DILocation(line: 44, column: 26, scope: !634, inlinedAt: !638)
!645 = !DILocation(line: 0, scope: !369, inlinedAt: !646)
!646 = distinct !DILocation(line: 45, column: 5, scope: !634, inlinedAt: !638)
!647 = !DILocation(line: 75, column: 10, scope: !369, inlinedAt: !646)
!648 = !DILocation(line: 0, scope: !583, inlinedAt: !649)
!649 = distinct !DILocation(line: 45, column: 5, scope: !634, inlinedAt: !638)
!650 = !DILocation(line: 357, column: 54, scope: !583, inlinedAt: !649)
!651 = !DILocation(line: 41, column: 50, scope: !635, inlinedAt: !638)
!652 = !DILocation(line: 41, column: 37, scope: !635, inlinedAt: !638)
!653 = distinct !{!653, !640, !654, !383, !384}
!654 = !DILocation(line: 46, column: 3, scope: !632, inlinedAt: !638)
!655 = !DILocation(line: 362, column: 1, scope: !611)
!656 = distinct !DISubprogram(name: "Hacl_SHA2_384_hash", scope: !3, file: !3, line: 364, type: !657, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !267, !267, !5}
!659 = !{!660, !661, !662}
!660 = !DILocalVariable(name: "hash1", arg: 1, scope: !656, file: !3, line: 364, type: !267)
!661 = !DILocalVariable(name: "input", arg: 2, scope: !656, file: !3, line: 364, type: !267)
!662 = !DILocalVariable(name: "len", arg: 3, scope: !656, file: !3, line: 364, type: !5)
!663 = !DILocation(line: 0, scope: !656)
!664 = !DILocation(line: 0, scope: !665, inlinedAt: !680)
!665 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_384_hash", scope: !3, file: !3, line: 317, type: !657, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !666)
!666 = !{!667, !668, !669, !670, !674, !676, !677, !678, !679}
!667 = !DILocalVariable(name: "hash1", arg: 1, scope: !665, file: !3, line: 317, type: !267)
!668 = !DILocalVariable(name: "input", arg: 2, scope: !665, file: !3, line: 317, type: !267)
!669 = !DILocalVariable(name: "len", arg: 3, scope: !665, file: !3, line: 317, type: !5)
!670 = !DILocalVariable(name: "state", scope: !665, file: !3, line: 320, type: !671)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 10816, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 169)
!674 = !DILocalVariable(name: "_i", scope: !675, file: !3, line: 321, type: !5)
!675 = distinct !DILexicalBlock(scope: !665, file: !3, line: 321, column: 3)
!676 = !DILocalVariable(name: "n1", scope: !665, file: !3, line: 323, type: !5)
!677 = !DILocalVariable(name: "r", scope: !665, file: !3, line: 324, type: !5)
!678 = !DILocalVariable(name: "input_blocks", scope: !665, file: !3, line: 325, type: !267)
!679 = !DILocalVariable(name: "input_last", scope: !665, file: !3, line: 326, type: !267)
!680 = distinct !DILocation(line: 366, column: 3, scope: !656)
!681 = !DILocation(line: 320, column: 3, scope: !665, inlinedAt: !680)
!682 = !DILocation(line: 320, column: 12, scope: !665, inlinedAt: !680)
!683 = !DILocation(line: 0, scope: !675, inlinedAt: !680)
!684 = !DILocation(line: 322, column: 15, scope: !685, inlinedAt: !680)
!685 = distinct !DILexicalBlock(scope: !675, file: !3, line: 321, column: 3)
!686 = !DILocation(line: 323, column: 21, scope: !665, inlinedAt: !680)
!687 = !DILocation(line: 324, column: 20, scope: !665, inlinedAt: !680)
!688 = !DILocation(line: 326, column: 36, scope: !665, inlinedAt: !680)
!689 = !DILocation(line: 326, column: 31, scope: !665, inlinedAt: !680)
!690 = !DILocation(line: 327, column: 27, scope: !665, inlinedAt: !680)
!691 = !DILocation(line: 0, scope: !38, inlinedAt: !692)
!692 = distinct !DILocation(line: 327, column: 3, scope: !665, inlinedAt: !680)
!693 = !DILocation(line: 51, column: 24, scope: !38, inlinedAt: !692)
!694 = !DILocation(line: 53, column: 26, scope: !38, inlinedAt: !692)
!695 = !DILocation(line: 55, column: 22, scope: !38, inlinedAt: !692)
!696 = !DILocation(line: 56, column: 21, scope: !38, inlinedAt: !692)
!697 = !DILocation(line: 57, column: 21, scope: !38, inlinedAt: !692)
!698 = !DILocation(line: 58, column: 21, scope: !38, inlinedAt: !692)
!699 = !DILocation(line: 60, column: 23, scope: !38, inlinedAt: !692)
!700 = !DILocation(line: 62, column: 23, scope: !38, inlinedAt: !692)
!701 = !DILocation(line: 63, column: 11, scope: !38, inlinedAt: !692)
!702 = !DILocation(line: 64, column: 3, scope: !38, inlinedAt: !692)
!703 = !DILocation(line: 64, column: 11, scope: !38, inlinedAt: !692)
!704 = !DILocation(line: 65, column: 3, scope: !38, inlinedAt: !692)
!705 = !DILocation(line: 65, column: 11, scope: !38, inlinedAt: !692)
!706 = !DILocation(line: 66, column: 3, scope: !38, inlinedAt: !692)
!707 = !DILocation(line: 66, column: 11, scope: !38, inlinedAt: !692)
!708 = !DILocation(line: 67, column: 11, scope: !38, inlinedAt: !692)
!709 = !DILocation(line: 68, column: 3, scope: !38, inlinedAt: !692)
!710 = !DILocation(line: 68, column: 11, scope: !38, inlinedAt: !692)
!711 = !DILocation(line: 69, column: 3, scope: !38, inlinedAt: !692)
!712 = !DILocation(line: 69, column: 11, scope: !38, inlinedAt: !692)
!713 = !DILocation(line: 70, column: 3, scope: !38, inlinedAt: !692)
!714 = !DILocation(line: 70, column: 11, scope: !38, inlinedAt: !692)
!715 = !DILocation(line: 72, column: 23, scope: !38, inlinedAt: !692)
!716 = !DILocation(line: 73, column: 11, scope: !38, inlinedAt: !692)
!717 = !DILocation(line: 74, column: 3, scope: !38, inlinedAt: !692)
!718 = !DILocation(line: 74, column: 11, scope: !38, inlinedAt: !692)
!719 = !DILocation(line: 75, column: 3, scope: !38, inlinedAt: !692)
!720 = !DILocation(line: 75, column: 11, scope: !38, inlinedAt: !692)
!721 = !DILocation(line: 76, column: 3, scope: !38, inlinedAt: !692)
!722 = !DILocation(line: 76, column: 11, scope: !38, inlinedAt: !692)
!723 = !DILocation(line: 77, column: 11, scope: !38, inlinedAt: !692)
!724 = !DILocation(line: 78, column: 3, scope: !38, inlinedAt: !692)
!725 = !DILocation(line: 78, column: 11, scope: !38, inlinedAt: !692)
!726 = !DILocation(line: 79, column: 3, scope: !38, inlinedAt: !692)
!727 = !DILocation(line: 79, column: 11, scope: !38, inlinedAt: !692)
!728 = !DILocation(line: 80, column: 3, scope: !38, inlinedAt: !692)
!729 = !DILocation(line: 80, column: 11, scope: !38, inlinedAt: !692)
!730 = !DILocation(line: 82, column: 23, scope: !38, inlinedAt: !692)
!731 = !DILocation(line: 84, column: 23, scope: !38, inlinedAt: !692)
!732 = !DILocation(line: 85, column: 11, scope: !38, inlinedAt: !692)
!733 = !DILocation(line: 86, column: 3, scope: !38, inlinedAt: !692)
!734 = !DILocation(line: 86, column: 11, scope: !38, inlinedAt: !692)
!735 = !DILocation(line: 87, column: 3, scope: !38, inlinedAt: !692)
!736 = !DILocation(line: 87, column: 11, scope: !38, inlinedAt: !692)
!737 = !DILocation(line: 88, column: 3, scope: !38, inlinedAt: !692)
!738 = !DILocation(line: 88, column: 11, scope: !38, inlinedAt: !692)
!739 = !DILocation(line: 89, column: 11, scope: !38, inlinedAt: !692)
!740 = !DILocation(line: 90, column: 3, scope: !38, inlinedAt: !692)
!741 = !DILocation(line: 90, column: 11, scope: !38, inlinedAt: !692)
!742 = !DILocation(line: 91, column: 3, scope: !38, inlinedAt: !692)
!743 = !DILocation(line: 91, column: 11, scope: !38, inlinedAt: !692)
!744 = !DILocation(line: 92, column: 3, scope: !38, inlinedAt: !692)
!745 = !DILocation(line: 92, column: 11, scope: !38, inlinedAt: !692)
!746 = !DILocation(line: 94, column: 23, scope: !38, inlinedAt: !692)
!747 = !DILocation(line: 95, column: 11, scope: !38, inlinedAt: !692)
!748 = !DILocation(line: 96, column: 3, scope: !38, inlinedAt: !692)
!749 = !DILocation(line: 96, column: 11, scope: !38, inlinedAt: !692)
!750 = !DILocation(line: 97, column: 3, scope: !38, inlinedAt: !692)
!751 = !DILocation(line: 97, column: 11, scope: !38, inlinedAt: !692)
!752 = !DILocation(line: 98, column: 3, scope: !38, inlinedAt: !692)
!753 = !DILocation(line: 98, column: 11, scope: !38, inlinedAt: !692)
!754 = !DILocation(line: 99, column: 11, scope: !38, inlinedAt: !692)
!755 = !DILocation(line: 100, column: 3, scope: !38, inlinedAt: !692)
!756 = !DILocation(line: 100, column: 11, scope: !38, inlinedAt: !692)
!757 = !DILocation(line: 101, column: 3, scope: !38, inlinedAt: !692)
!758 = !DILocation(line: 101, column: 11, scope: !38, inlinedAt: !692)
!759 = !DILocation(line: 102, column: 3, scope: !38, inlinedAt: !692)
!760 = !DILocation(line: 102, column: 11, scope: !38, inlinedAt: !692)
!761 = !DILocation(line: 104, column: 22, scope: !38, inlinedAt: !692)
!762 = !DILocation(line: 106, column: 23, scope: !38, inlinedAt: !692)
!763 = !DILocation(line: 107, column: 11, scope: !38, inlinedAt: !692)
!764 = !DILocation(line: 108, column: 3, scope: !38, inlinedAt: !692)
!765 = !DILocation(line: 108, column: 11, scope: !38, inlinedAt: !692)
!766 = !DILocation(line: 109, column: 3, scope: !38, inlinedAt: !692)
!767 = !DILocation(line: 109, column: 11, scope: !38, inlinedAt: !692)
!768 = !DILocation(line: 110, column: 3, scope: !38, inlinedAt: !692)
!769 = !DILocation(line: 110, column: 11, scope: !38, inlinedAt: !692)
!770 = !DILocation(line: 111, column: 11, scope: !38, inlinedAt: !692)
!771 = !DILocation(line: 112, column: 3, scope: !38, inlinedAt: !692)
!772 = !DILocation(line: 112, column: 11, scope: !38, inlinedAt: !692)
!773 = !DILocation(line: 113, column: 3, scope: !38, inlinedAt: !692)
!774 = !DILocation(line: 113, column: 11, scope: !38, inlinedAt: !692)
!775 = !DILocation(line: 114, column: 3, scope: !38, inlinedAt: !692)
!776 = !DILocation(line: 114, column: 11, scope: !38, inlinedAt: !692)
!777 = !DILocation(line: 116, column: 23, scope: !38, inlinedAt: !692)
!778 = !DILocation(line: 117, column: 11, scope: !38, inlinedAt: !692)
!779 = !DILocation(line: 118, column: 3, scope: !38, inlinedAt: !692)
!780 = !DILocation(line: 118, column: 11, scope: !38, inlinedAt: !692)
!781 = !DILocation(line: 119, column: 3, scope: !38, inlinedAt: !692)
!782 = !DILocation(line: 119, column: 11, scope: !38, inlinedAt: !692)
!783 = !DILocation(line: 120, column: 3, scope: !38, inlinedAt: !692)
!784 = !DILocation(line: 120, column: 11, scope: !38, inlinedAt: !692)
!785 = !DILocation(line: 121, column: 11, scope: !38, inlinedAt: !692)
!786 = !DILocation(line: 122, column: 3, scope: !38, inlinedAt: !692)
!787 = !DILocation(line: 122, column: 11, scope: !38, inlinedAt: !692)
!788 = !DILocation(line: 123, column: 3, scope: !38, inlinedAt: !692)
!789 = !DILocation(line: 123, column: 11, scope: !38, inlinedAt: !692)
!790 = !DILocation(line: 124, column: 3, scope: !38, inlinedAt: !692)
!791 = !DILocation(line: 124, column: 11, scope: !38, inlinedAt: !692)
!792 = !DILocation(line: 126, column: 23, scope: !38, inlinedAt: !692)
!793 = !DILocation(line: 128, column: 25, scope: !38, inlinedAt: !692)
!794 = !DILocation(line: 129, column: 12, scope: !38, inlinedAt: !692)
!795 = !DILocation(line: 130, column: 3, scope: !38, inlinedAt: !692)
!796 = !DILocation(line: 130, column: 12, scope: !38, inlinedAt: !692)
!797 = !DILocation(line: 131, column: 3, scope: !38, inlinedAt: !692)
!798 = !DILocation(line: 131, column: 12, scope: !38, inlinedAt: !692)
!799 = !DILocation(line: 132, column: 3, scope: !38, inlinedAt: !692)
!800 = !DILocation(line: 132, column: 12, scope: !38, inlinedAt: !692)
!801 = !DILocation(line: 133, column: 12, scope: !38, inlinedAt: !692)
!802 = !DILocation(line: 134, column: 3, scope: !38, inlinedAt: !692)
!803 = !DILocation(line: 134, column: 12, scope: !38, inlinedAt: !692)
!804 = !DILocation(line: 135, column: 3, scope: !38, inlinedAt: !692)
!805 = !DILocation(line: 135, column: 12, scope: !38, inlinedAt: !692)
!806 = !DILocation(line: 136, column: 3, scope: !38, inlinedAt: !692)
!807 = !DILocation(line: 136, column: 12, scope: !38, inlinedAt: !692)
!808 = !DILocation(line: 138, column: 25, scope: !38, inlinedAt: !692)
!809 = !DILocation(line: 139, column: 12, scope: !38, inlinedAt: !692)
!810 = !DILocation(line: 140, column: 3, scope: !38, inlinedAt: !692)
!811 = !DILocation(line: 140, column: 12, scope: !38, inlinedAt: !692)
!812 = !DILocation(line: 141, column: 3, scope: !38, inlinedAt: !692)
!813 = !DILocation(line: 141, column: 12, scope: !38, inlinedAt: !692)
!814 = !DILocation(line: 142, column: 3, scope: !38, inlinedAt: !692)
!815 = !DILocation(line: 142, column: 12, scope: !38, inlinedAt: !692)
!816 = !DILocation(line: 143, column: 12, scope: !38, inlinedAt: !692)
!817 = !DILocation(line: 144, column: 3, scope: !38, inlinedAt: !692)
!818 = !DILocation(line: 144, column: 12, scope: !38, inlinedAt: !692)
!819 = !DILocation(line: 145, column: 3, scope: !38, inlinedAt: !692)
!820 = !DILocation(line: 145, column: 12, scope: !38, inlinedAt: !692)
!821 = !DILocation(line: 146, column: 3, scope: !38, inlinedAt: !692)
!822 = !DILocation(line: 146, column: 12, scope: !38, inlinedAt: !692)
!823 = !DILocation(line: 148, column: 23, scope: !38, inlinedAt: !692)
!824 = !DILocation(line: 150, column: 25, scope: !38, inlinedAt: !692)
!825 = !DILocation(line: 151, column: 10, scope: !38, inlinedAt: !692)
!826 = !DILocation(line: 152, column: 3, scope: !38, inlinedAt: !692)
!827 = !DILocation(line: 152, column: 10, scope: !38, inlinedAt: !692)
!828 = !DILocation(line: 153, column: 3, scope: !38, inlinedAt: !692)
!829 = !DILocation(line: 153, column: 10, scope: !38, inlinedAt: !692)
!830 = !DILocation(line: 154, column: 3, scope: !38, inlinedAt: !692)
!831 = !DILocation(line: 154, column: 10, scope: !38, inlinedAt: !692)
!832 = !DILocation(line: 155, column: 12, scope: !38, inlinedAt: !692)
!833 = !DILocation(line: 156, column: 3, scope: !38, inlinedAt: !692)
!834 = !DILocation(line: 156, column: 12, scope: !38, inlinedAt: !692)
!835 = !DILocation(line: 157, column: 3, scope: !38, inlinedAt: !692)
!836 = !DILocation(line: 157, column: 12, scope: !38, inlinedAt: !692)
!837 = !DILocation(line: 158, column: 3, scope: !38, inlinedAt: !692)
!838 = !DILocation(line: 158, column: 12, scope: !38, inlinedAt: !692)
!839 = !DILocation(line: 160, column: 25, scope: !38, inlinedAt: !692)
!840 = !DILocation(line: 161, column: 12, scope: !38, inlinedAt: !692)
!841 = !DILocation(line: 162, column: 3, scope: !38, inlinedAt: !692)
!842 = !DILocation(line: 162, column: 12, scope: !38, inlinedAt: !692)
!843 = !DILocation(line: 163, column: 3, scope: !38, inlinedAt: !692)
!844 = !DILocation(line: 163, column: 12, scope: !38, inlinedAt: !692)
!845 = !DILocation(line: 164, column: 3, scope: !38, inlinedAt: !692)
!846 = !DILocation(line: 164, column: 12, scope: !38, inlinedAt: !692)
!847 = !DILocation(line: 165, column: 12, scope: !38, inlinedAt: !692)
!848 = !DILocation(line: 166, column: 3, scope: !38, inlinedAt: !692)
!849 = !DILocation(line: 166, column: 12, scope: !38, inlinedAt: !692)
!850 = !DILocation(line: 167, column: 3, scope: !38, inlinedAt: !692)
!851 = !DILocation(line: 167, column: 12, scope: !38, inlinedAt: !692)
!852 = !DILocation(line: 168, column: 3, scope: !38, inlinedAt: !692)
!853 = !DILocation(line: 168, column: 12, scope: !38, inlinedAt: !692)
!854 = !DILocation(line: 170, column: 23, scope: !38, inlinedAt: !692)
!855 = !DILocation(line: 171, column: 12, scope: !38, inlinedAt: !692)
!856 = !DILocation(line: 172, column: 3, scope: !38, inlinedAt: !692)
!857 = !DILocation(line: 172, column: 12, scope: !38, inlinedAt: !692)
!858 = !DILocation(line: 173, column: 3, scope: !38, inlinedAt: !692)
!859 = !DILocation(line: 173, column: 12, scope: !38, inlinedAt: !692)
!860 = !DILocation(line: 174, column: 3, scope: !38, inlinedAt: !692)
!861 = !DILocation(line: 174, column: 12, scope: !38, inlinedAt: !692)
!862 = !DILocation(line: 175, column: 10, scope: !38, inlinedAt: !692)
!863 = !DILocation(line: 176, column: 3, scope: !38, inlinedAt: !692)
!864 = !DILocation(line: 176, column: 10, scope: !38, inlinedAt: !692)
!865 = !DILocation(line: 177, column: 3, scope: !38, inlinedAt: !692)
!866 = !DILocation(line: 177, column: 10, scope: !38, inlinedAt: !692)
!867 = !DILocation(line: 178, column: 3, scope: !38, inlinedAt: !692)
!868 = !DILocation(line: 178, column: 10, scope: !38, inlinedAt: !692)
!869 = !DILocation(line: 179, column: 10, scope: !38, inlinedAt: !692)
!870 = !DILocation(line: 0, scope: !479, inlinedAt: !871)
!871 = distinct !DILocation(line: 328, column: 3, scope: !665, inlinedAt: !680)
!872 = !DILocation(line: 0, scope: !484, inlinedAt: !871)
!873 = !DILocation(line: 272, column: 37, scope: !487, inlinedAt: !871)
!874 = !DILocation(line: 272, column: 3, scope: !484, inlinedAt: !871)
!875 = !DILocation(line: 274, column: 27, scope: !486, inlinedAt: !871)
!876 = !DILocation(line: 274, column: 23, scope: !486, inlinedAt: !871)
!877 = !DILocation(line: 0, scope: !486, inlinedAt: !871)
!878 = !DILocation(line: 275, column: 5, scope: !486, inlinedAt: !871)
!879 = !DILocation(line: 272, column: 49, scope: !487, inlinedAt: !871)
!880 = distinct !{!880, !874, !881, !383, !384}
!881 = !DILocation(line: 276, column: 3, scope: !484, inlinedAt: !871)
!882 = !DILocation(line: 329, column: 53, scope: !665, inlinedAt: !680)
!883 = !DILocation(line: 329, column: 3, scope: !665, inlinedAt: !680)
!884 = !DILocation(line: 0, scope: !617, inlinedAt: !885)
!885 = distinct !DILocation(line: 330, column: 3, scope: !665, inlinedAt: !680)
!886 = !DILocation(line: 0, scope: !625, inlinedAt: !887)
!887 = distinct !DILocation(line: 314, column: 3, scope: !617, inlinedAt: !885)
!888 = !DILocation(line: 0, scope: !632, inlinedAt: !887)
!889 = !DILocation(line: 41, column: 3, scope: !632, inlinedAt: !887)
!890 = !DILocation(line: 43, column: 20, scope: !634, inlinedAt: !887)
!891 = !DILocation(line: 0, scope: !634, inlinedAt: !887)
!892 = !DILocation(line: 44, column: 41, scope: !634, inlinedAt: !887)
!893 = !DILocation(line: 44, column: 26, scope: !634, inlinedAt: !887)
!894 = !DILocation(line: 0, scope: !369, inlinedAt: !895)
!895 = distinct !DILocation(line: 45, column: 5, scope: !634, inlinedAt: !887)
!896 = !DILocation(line: 75, column: 10, scope: !369, inlinedAt: !895)
!897 = !DILocation(line: 0, scope: !583, inlinedAt: !898)
!898 = distinct !DILocation(line: 45, column: 5, scope: !634, inlinedAt: !887)
!899 = !DILocation(line: 357, column: 54, scope: !583, inlinedAt: !898)
!900 = !DILocation(line: 41, column: 50, scope: !635, inlinedAt: !887)
!901 = !DILocation(line: 41, column: 37, scope: !635, inlinedAt: !887)
!902 = distinct !{!902, !889, !903, !383, !384}
!903 = !DILocation(line: 46, column: 3, scope: !632, inlinedAt: !887)
!904 = !DILocation(line: 331, column: 1, scope: !665, inlinedAt: !680)
!905 = !DILocation(line: 367, column: 1, scope: !656)
!906 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !526, file: !526, line: 57, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!527, !527, !5}
!909 = !{}
!910 = !DISubprogram(name: "FStar_UInt128_add", scope: !526, file: !526, line: 41, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!911 = !DISubroutineType(types: !912)
!912 = !{!527, !527, !527}
!913 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !526, file: !526, line: 78, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!914 = !DISubroutineType(types: !915)
!915 = !{!527, !10, !10}
!916 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !526, file: !526, line: 65, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !909)
!917 = !DISubroutineType(types: !918)
!918 = !{!527, !10}
