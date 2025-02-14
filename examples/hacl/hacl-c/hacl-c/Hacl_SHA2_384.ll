; ModuleID = 'hacl-c/hacl-c/Hacl_SHA2_384.c'
source_filename = "hacl-c/hacl-c/Hacl_SHA2_384.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

@Hacl_SHA2_384_size_hash = dso_local local_unnamed_addr global i32 48, align 4, !dbg !0
@Hacl_SHA2_384_size_block = dso_local local_unnamed_addr global i32 128, align 4, !dbg !17
@Hacl_SHA2_384_size_state = dso_local local_unnamed_addr global i32 169, align 4, !dbg !19

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Hacl_SHA2_384_init(i64* noundef %0) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !34, metadata !DIExpression()), !dbg !35
  call fastcc void @Hacl_Impl_SHA2_384_init(i64* noundef %0), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
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

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_384_update(i64* nocapture noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #2 !dbg !264 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !269, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i8* %1, metadata !270, metadata !DIExpression()), !dbg !271
  call fastcc void @Hacl_Impl_SHA2_384_update(i64* noundef %0, i8* noundef %1), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_update(i64* nocapture noundef %0, i8* nocapture noundef readonly %1) unnamed_addr #2 !dbg !274 {
  %3 = alloca [16 x i64], align 8
  %4 = bitcast [16 x i64]* %3 to i8*
  %5 = alloca [8 x i64], align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !276, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i8* %1, metadata !277, metadata !DIExpression()), !dbg !333
  %6 = bitcast [16 x i64]* %3 to i8*, !dbg !334
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #12, !dbg !334
  call void @llvm.dbg.declare(metadata [16 x i64]* %3, metadata !278, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !336
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(128) %4, i8 0, i32 128, i1 false), !dbg !337, !tbaa !91
  call void @llvm.dbg.value(metadata i32 undef, metadata !282, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32 undef, metadata !282, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !336
  %7 = getelementptr inbounds [16 x i64], [16 x i64]* %3, i32 0, i32 0, !dbg !339
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(i64* noundef nonnull %7, i8* noundef %1), !dbg !340
  call void @llvm.dbg.value(metadata i64* %10, metadata !284, metadata !DIExpression()), !dbg !333
  %8 = getelementptr inbounds i64, i64* %0, i32 80, !dbg !341
  %9 = bitcast i64* %8 to i8*, !dbg !333
  call void @llvm.dbg.value(metadata i64* %8, metadata !285, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64* %0, metadata !286, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64* %103, metadata !287, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !342
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(128) %9, i8* noundef nonnull align 8 dereferenceable(128) %4, i32 128, i1 false), !dbg !343, !tbaa !91
  call void @llvm.dbg.value(metadata i32 undef, metadata !288, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 undef, metadata !290, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 undef, metadata !288, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !342
  %10 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !345
  br label %30, !dbg !346

11:                                               ; preds = %30
  %12 = bitcast [8 x i64]* %5 to i8*, !dbg !347
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #12, !dbg !347
  call void @llvm.dbg.declare(metadata [8 x i64]* %5, metadata !301, metadata !DIExpression()), !dbg !348
  %13 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 0, !dbg !349
  %14 = bitcast i64* %10 to i8*, !dbg !349
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(64) %12, i8* noundef nonnull align 4 dereferenceable(64) %14, i32 64, i1 false), !dbg !349
  call void @llvm.dbg.value(metadata i32 0, metadata !305, metadata !DIExpression()), !dbg !350
  %15 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 3
  %18 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 4
  %19 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 5
  %20 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 6
  %21 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 7
  %22 = load i64, i64* %13, align 8, !tbaa !91
  %23 = load i64, i64* %15, align 8, !tbaa !91
  %24 = load i64, i64* %16, align 8, !tbaa !91
  %25 = load i64, i64* %17, align 8, !tbaa !91
  %26 = load i64, i64* %18, align 8, !tbaa !91
  %27 = load i64, i64* %19, align 8, !tbaa !91
  %28 = load i64, i64* %20, align 8, !tbaa !91
  %29 = load i64, i64* %21, align 8, !tbaa !91
  call void @llvm.dbg.value(metadata i32 0, metadata !305, metadata !DIExpression()), !dbg !350
  br label %61, !dbg !351

30:                                               ; preds = %2, %30
  %31 = phi i32 [ %58, %30 ], [ 16, %2 ]
  call void @llvm.dbg.value(metadata i32 %31, metadata !293, metadata !DIExpression()), !dbg !352
  %32 = add nsw i32 %31, -16, !dbg !353
  %33 = getelementptr inbounds i64, i64* %8, i32 %32, !dbg !354
  %34 = load i64, i64* %33, align 4, !dbg !354, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %34, metadata !295, metadata !DIExpression()), !dbg !355
  %35 = add nsw i32 %31, -15, !dbg !356
  %36 = getelementptr inbounds i64, i64* %8, i32 %35, !dbg !357
  %37 = load i64, i64* %36, align 4, !dbg !357, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %37, metadata !298, metadata !DIExpression()), !dbg !355
  %38 = add nsw i32 %31, -7, !dbg !358
  %39 = getelementptr inbounds i64, i64* %8, i32 %38, !dbg !359
  %40 = load i64, i64* %39, align 4, !dbg !359, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %40, metadata !299, metadata !DIExpression()), !dbg !355
  %41 = add nsw i32 %31, -2, !dbg !360
  %42 = getelementptr inbounds i64, i64* %8, i32 %41, !dbg !361
  %43 = load i64, i64* %42, align 4, !dbg !361, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %43, metadata !300, metadata !DIExpression()), !dbg !355
  %44 = call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 45), !dbg !362
  %45 = call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 3), !dbg !363
  %46 = lshr i64 %43, 6, !dbg !364
  %47 = xor i64 %45, %46, !dbg !365
  %48 = xor i64 %47, %44, !dbg !366
  %49 = call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 63), !dbg !367
  %50 = call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 56), !dbg !368
  %51 = lshr i64 %37, 7, !dbg !369
  %52 = xor i64 %50, %51, !dbg !370
  %53 = xor i64 %52, %49, !dbg !371
  %54 = add i64 %40, %34, !dbg !372
  %55 = add i64 %54, %53, !dbg !373
  %56 = add i64 %55, %48, !dbg !374
  %57 = getelementptr inbounds i64, i64* %8, i32 %31, !dbg !375
  store i64 %56, i64* %57, align 4, !dbg !376, !tbaa !91
  %58 = add nuw nsw i32 %31, 1, !dbg !377
  call void @llvm.dbg.value(metadata i32 %58, metadata !293, metadata !DIExpression()), !dbg !352
  %59 = icmp eq i32 %58, 80, !dbg !378
  br i1 %59, label %11, label %30, !dbg !346, !llvm.loop !379

60:                                               ; preds = %61
  store i64 %98, i64* %13, align 8, !dbg !383, !tbaa !91
  store i64 %63, i64* %15, align 8, !dbg !383, !tbaa !91
  store i64 %64, i64* %16, align 8, !dbg !383, !tbaa !91
  store i64 %65, i64* %17, align 8, !dbg !383, !tbaa !91
  store i64 %99, i64* %18, align 8, !dbg !383, !tbaa !91
  store i64 %67, i64* %19, align 8, !dbg !383, !tbaa !91
  store i64 %68, i64* %20, align 8, !dbg !383, !tbaa !91
  store i64 %69, i64* %21, align 8, !dbg !383, !tbaa !91
  call void @llvm.dbg.value(metadata i32 0, metadata !325, metadata !DIExpression()), !dbg !384
  br label %106, !dbg !385

61:                                               ; preds = %11, %61
  %62 = phi i32 [ 0, %11 ], [ %100, %61 ]
  %63 = phi i64 [ %22, %11 ], [ %98, %61 ]
  %64 = phi i64 [ %23, %11 ], [ %63, %61 ]
  %65 = phi i64 [ %24, %11 ], [ %64, %61 ]
  %66 = phi i64 [ %25, %11 ], [ %65, %61 ]
  %67 = phi i64 [ %26, %11 ], [ %99, %61 ]
  %68 = phi i64 [ %27, %11 ], [ %67, %61 ]
  %69 = phi i64 [ %28, %11 ], [ %68, %61 ]
  %70 = phi i64 [ %29, %11 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata i32 %62, metadata !305, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i64 %63, metadata !307, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %64, metadata !310, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %65, metadata !311, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %66, metadata !312, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %67, metadata !313, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %68, metadata !314, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %69, metadata !315, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %70, metadata !316, metadata !DIExpression()), !dbg !383
  %71 = getelementptr inbounds i64, i64* %0, i32 %62, !dbg !386
  %72 = load i64, i64* %71, align 4, !dbg !386, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %72, metadata !317, metadata !DIExpression()), !dbg !383
  %73 = getelementptr inbounds i64, i64* %8, i32 %62, !dbg !387
  %74 = load i64, i64* %73, align 4, !dbg !387, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %74, metadata !318, metadata !DIExpression()), !dbg !383
  %75 = call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 50), !dbg !388
  %76 = call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 46), !dbg !389
  %77 = call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 23), !dbg !390
  %78 = xor i64 %76, %77, !dbg !391
  %79 = xor i64 %78, %75, !dbg !392
  %80 = and i64 %68, %67, !dbg !393
  %81 = xor i64 %67, -1, !dbg !394
  %82 = and i64 %69, %81, !dbg !395
  %83 = add i64 %79, %80, !dbg !396
  %84 = add i64 %83, %70, !dbg !397
  %85 = add i64 %84, %82, !dbg !398
  %86 = add i64 %85, %72, !dbg !399
  %87 = add i64 %86, %74, !dbg !400
  call void @llvm.dbg.value(metadata i64 %87, metadata !319, metadata !DIExpression()), !dbg !383
  %88 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 36), !dbg !401
  %89 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 30), !dbg !402
  %90 = call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 25), !dbg !403
  %91 = xor i64 %89, %90, !dbg !404
  %92 = xor i64 %91, %88, !dbg !405
  %93 = and i64 %64, %63, !dbg !406
  %94 = xor i64 %64, %63, !dbg !407
  %95 = and i64 %94, %65, !dbg !407
  %96 = xor i64 %95, %93, !dbg !408
  %97 = add i64 %96, %92, !dbg !409
  call void @llvm.dbg.value(metadata i64 %97, metadata !320, metadata !DIExpression()), !dbg !383
  %98 = add i64 %97, %87, !dbg !410
  call void @llvm.dbg.value(metadata i64 %98, metadata !321, metadata !DIExpression()), !dbg !383
  %99 = add i64 %87, %66, !dbg !411
  call void @llvm.dbg.value(metadata i64 %99, metadata !322, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64* %13, metadata !323, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64* %18, metadata !324, metadata !DIExpression()), !dbg !383
  %100 = add nuw nsw i32 %62, 1, !dbg !412
  call void @llvm.dbg.value(metadata i32 %100, metadata !305, metadata !DIExpression()), !dbg !350
  %101 = icmp eq i32 %100, 80, !dbg !413
  br i1 %101, label %60, label %61, !dbg !351, !llvm.loop !414

102:                                              ; preds = %106
  %103 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !416
  %104 = load i64, i64* %103, align 4, !dbg !417, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %104, metadata !331, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 1, metadata !332, metadata !DIExpression()), !dbg !333
  %105 = add i64 %104, 1, !dbg !418
  store i64 %105, i64* %103, align 4, !dbg !419, !tbaa !91
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #12, !dbg !420
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #12, !dbg !420
  ret void, !dbg !420

106:                                              ; preds = %60, %106
  %107 = phi i32 [ 0, %60 ], [ %113, %106 ]
  call void @llvm.dbg.value(metadata i32 %107, metadata !325, metadata !DIExpression()), !dbg !384
  %108 = getelementptr inbounds i64, i64* %10, i32 %107, !dbg !421
  %109 = load i64, i64* %108, align 4, !dbg !421, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %109, metadata !327, metadata !DIExpression()), !dbg !422
  %110 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i32 0, i32 %107, !dbg !423
  %111 = load i64, i64* %110, align 8, !dbg !423, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %111, metadata !330, metadata !DIExpression()), !dbg !422
  %112 = add i64 %111, %109, !dbg !424
  store i64 %112, i64* %108, align 4, !dbg !425, !tbaa !91
  %113 = add nuw nsw i32 %107, 1, !dbg !426
  call void @llvm.dbg.value(metadata i32 %113, metadata !325, metadata !DIExpression()), !dbg !384
  %114 = icmp eq i32 %113, 8, !dbg !427
  br i1 %114, label %102, label %106, !dbg !385, !llvm.loop !428
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_384_update_multi(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !430 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !434, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i8* %1, metadata !435, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 %2, metadata !436, metadata !DIExpression()), !dbg !437
  call fastcc void @Hacl_Impl_SHA2_384_update_multi(i64* noundef %0, i8* noundef %1, i32 noundef %2), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_update_multi(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !dbg !440 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !442, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i8* %1, metadata !443, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i32 %2, metadata !444, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i32 0, metadata !445, metadata !DIExpression()), !dbg !451
  %4 = icmp eq i32 %2, 0, !dbg !452
  br i1 %4, label %5, label %6, !dbg !453

5:                                                ; preds = %6, %3
  ret void, !dbg !454

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !445, metadata !DIExpression()), !dbg !451
  %8 = shl i32 %7, 7, !dbg !455
  %9 = getelementptr inbounds i8, i8* %1, i32 %8, !dbg !456
  call void @llvm.dbg.value(metadata i8* %9, metadata !447, metadata !DIExpression()), !dbg !457
  call fastcc void @Hacl_Impl_SHA2_384_update(i64* noundef %0, i8* noundef %9), !dbg !458
  %10 = add nuw i32 %7, 1, !dbg !459
  call void @llvm.dbg.value(metadata i32 %10, metadata !445, metadata !DIExpression()), !dbg !451
  %11 = icmp eq i32 %10, %2, !dbg !452
  br i1 %11, label %5, label %6, !dbg !453, !llvm.loop !460
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_384_update_last(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #3 !dbg !462 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !466, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i8* %1, metadata !467, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i64 %2, metadata !468, metadata !DIExpression()), !dbg !469
  call fastcc void @Hacl_Impl_SHA2_384_update_last(i64* noundef %0, i8* noundef %1, i64 noundef %2), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_update_last(i64* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #3 !dbg !472 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !474, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i8* %1, metadata !475, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i64 %2, metadata !476, metadata !DIExpression()), !dbg !496
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !497
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #12, !dbg !497
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !477, metadata !DIExpression()), !dbg !498
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(256) %9, i8 0, i32 256, i1 false), !dbg !498
  %10 = icmp ult i64 %2, 112, !dbg !499
  %11 = select i1 %10, i32 1, i32 2
  call void @llvm.dbg.value(metadata i32 %11, metadata !481, metadata !DIExpression()), !dbg !496
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 128, !dbg !501
  %13 = select i1 %10, i8* %12, i8* %9, !dbg !501
  call void @llvm.dbg.value(metadata i8* %13, metadata !482, metadata !DIExpression()), !dbg !496
  %14 = trunc i64 %2 to i32, !dbg !502
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %13, i8* align 1 %1, i32 %14, i1 false), !dbg !503
  %15 = getelementptr inbounds i64, i64* %0, i32 168, !dbg !504
  %16 = load i64, i64* %15, align 4, !dbg !504, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %16, metadata !483, metadata !DIExpression()), !dbg !496
  %17 = getelementptr inbounds i8, i8* %13, i32 %14, !dbg !505
  call void @llvm.dbg.value(metadata i8* %17, metadata !484, metadata !DIExpression()), !dbg !496
  %18 = bitcast %struct.FStar_UInt128_uint128* %5 to i8*, !dbg !506
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #12, !dbg !506
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %5, metadata !485, metadata !DIExpression()), !dbg !507
  call void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %16, i64 noundef 128) #12, !dbg !508
  call void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %2) #12, !dbg !509
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 0, !dbg !510
  %20 = load i64, i64* %19, align 8, !dbg !510, !tbaa !511
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %7, i32 0, i32 1, !dbg !510
  %22 = load i64, i64* %21, align 8, !dbg !510, !tbaa !513
  %23 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 0, !dbg !510
  %24 = load i64, i64* %23, align 8, !dbg !510, !tbaa !511
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %8, i32 0, i32 1, !dbg !510
  %26 = load i64, i64* %25, align 8, !dbg !510, !tbaa !513
  call void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %20, i64 %22, i64 %24, i64 %26) #12, !dbg !510
  %27 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 0, !dbg !514
  %28 = load i64, i64* %27, align 8, !dbg !514, !tbaa !511
  %29 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %6, i32 0, i32 1, !dbg !514
  %30 = load i64, i64* %29, align 8, !dbg !514, !tbaa !513
  call void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* nonnull sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %28, i64 %30, i32 noundef 3) #12, !dbg !514
  %31 = sub i32 111, %14, !dbg !515
  %32 = and i32 %31, 127, !dbg !516
  call void @llvm.dbg.value(metadata i32 %32, metadata !493, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i8* %17, metadata !494, metadata !DIExpression()), !dbg !496
  %33 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !517
  %34 = getelementptr inbounds i8, i8* %33, i32 %32, !dbg !518
  call void @llvm.dbg.value(metadata i8* %34, metadata !495, metadata !DIExpression()), !dbg !496
  store i8 -128, i8* %17, align 1, !dbg !519, !tbaa !520
  %35 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 0, !dbg !521
  %36 = load i64, i64* %35, align 8, !dbg !521, !tbaa !511
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %5, i32 0, i32 1, !dbg !521
  %38 = load i64, i64* %37, align 8, !dbg !521, !tbaa !513
  call fastcc void @store128_be(i8* noundef nonnull %34, i64 %36, i64 %38), !dbg !521
  call fastcc void @Hacl_Impl_SHA2_384_update_multi(i64* noundef %0, i8* noundef nonnull %13, i32 noundef %11), !dbg !522
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #12, !dbg !523
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #12, !dbg !523
  ret void, !dbg !523
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Hacl_SHA2_384_finish(i64* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !524 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !526, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.value(metadata i8* %1, metadata !527, metadata !DIExpression()), !dbg !528
  call fastcc void @Hacl_Impl_SHA2_384_finish(i64* noundef %0, i8* noundef %1), !dbg !529
  ret void, !dbg !530
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_finish(i64* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) unnamed_addr #2 !dbg !531 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !533, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i8* %1, metadata !534, metadata !DIExpression()), !dbg !536
  %3 = getelementptr inbounds i64, i64* %0, i32 160, !dbg !537
  call void @llvm.dbg.value(metadata i64* %3, metadata !535, metadata !DIExpression()), !dbg !536
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(i8* noundef %1, i64* noundef nonnull %3), !dbg !538
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_384_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !540 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !544, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i8* %1, metadata !545, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i32 %2, metadata !546, metadata !DIExpression()), !dbg !547
  call fastcc void @Hacl_Impl_SHA2_384_hash(i8* noundef %0, i8* noundef %1, i32 noundef %2), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_hash(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 !dbg !550 {
  %4 = alloca [169 x i64], align 8
  %5 = bitcast [169 x i64]* %4 to i8*, !dbg !565
  call void @llvm.dbg.value(metadata i8* %0, metadata !552, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i8* %1, metadata !553, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 %2, metadata !554, metadata !DIExpression()), !dbg !565
  %6 = bitcast [169 x i64]* %4 to i8*, !dbg !566
  call void @llvm.lifetime.start.p0i8(i64 1352, i8* nonnull %6) #12, !dbg !566
  call void @llvm.dbg.declare(metadata [169 x i64]* %4, metadata !555, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32 0, metadata !559, metadata !DIExpression()), !dbg !568
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(1352) %5, i8 0, i32 1352, i1 false), !dbg !569, !tbaa !91
  call void @llvm.dbg.value(metadata i32 undef, metadata !559, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 undef, metadata !559, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !568
  %7 = lshr i32 %2, 7, !dbg !571
  call void @llvm.dbg.value(metadata i32 %7, metadata !561, metadata !DIExpression()), !dbg !565
  %8 = and i32 %2, 127, !dbg !572
  call void @llvm.dbg.value(metadata i32 %8, metadata !562, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i8* %1, metadata !563, metadata !DIExpression()), !dbg !565
  %9 = and i32 %2, -128, !dbg !573
  %10 = getelementptr inbounds i8, i8* %1, i32 %9, !dbg !574
  call void @llvm.dbg.value(metadata i8* %10, metadata !564, metadata !DIExpression()), !dbg !565
  %11 = getelementptr inbounds [169 x i64], [169 x i64]* %4, i32 0, i32 0, !dbg !575
  call fastcc void @Hacl_Impl_SHA2_384_init(i64* noundef nonnull %11), !dbg !576
  call fastcc void @Hacl_Impl_SHA2_384_update_multi(i64* noundef nonnull %11, i8* noundef %1, i32 noundef %7), !dbg !577
  %12 = zext i32 %8 to i64, !dbg !578
  call fastcc void @Hacl_Impl_SHA2_384_update_last(i64* noundef nonnull %11, i8* noundef %10, i64 noundef %12), !dbg !579
  call fastcc void @Hacl_Impl_SHA2_384_finish(i64* noundef nonnull %11, i8* noundef %0), !dbg !580
  call void @llvm.lifetime.end.p0i8(i64 1352, i8* nonnull %6) #12, !dbg !581
  ret void, !dbg !581
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(i64* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #2 !dbg !582 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !584, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i8* %1, metadata !585, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 16, metadata !586, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 0, metadata !587, metadata !DIExpression()), !dbg !594
  br label %4, !dbg !595

3:                                                ; preds = %4
  ret void, !dbg !596

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !587, metadata !DIExpression()), !dbg !594
  %6 = shl i32 %5, 3, !dbg !597
  %7 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !598
  call void @llvm.dbg.value(metadata i8* %7, metadata !589, metadata !DIExpression()), !dbg !599
  %8 = call fastcc i64 @load64(i8* noundef %7), !dbg !600
  %9 = call fastcc i64 @__bswap_64(i64 noundef %8), !dbg !600
  call void @llvm.dbg.value(metadata i64 %9, metadata !592, metadata !DIExpression()), !dbg !599
  %10 = getelementptr inbounds i64, i64* %0, i32 %5, !dbg !601
  store i64 %9, i64* %10, align 4, !dbg !602, !tbaa !91
  %11 = add nuw nsw i32 %5, 1, !dbg !603
  call void @llvm.dbg.value(metadata i32 %11, metadata !587, metadata !DIExpression()), !dbg !594
  %12 = icmp eq i32 %11, 16, !dbg !604
  br i1 %12, label %3, label %4, !dbg !595, !llvm.loop !605
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @__bswap_64(i64 noundef %0) unnamed_addr #7 !dbg !607 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !612, metadata !DIExpression()), !dbg !613
  %2 = call i64 @llvm.bswap.i64(i64 %0), !dbg !614
  ret i64 %2, !dbg !615
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @load64(i8* nocapture noundef readonly %0) unnamed_addr #8 !dbg !616 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !621, metadata !DIExpression()), !dbg !623
  %2 = bitcast i8* %0 to i64*, !dbg !624
  %3 = load i64, i64* %2, align 1, !dbg !624
  call void @llvm.dbg.value(metadata i64 %3, metadata !622, metadata !DIExpression()), !dbg !623
  ret i64 %3, !dbg !625
}

declare !dbg !626 void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i32 noundef) local_unnamed_addr #9

declare !dbg !630 void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64, i64, i64, i64) local_unnamed_addr #9

declare !dbg !633 void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef, i64 noundef) local_unnamed_addr #9

declare !dbg !636 void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @store128_be(i8* nocapture noundef writeonly %0, i64 %1, i64 %2) unnamed_addr #10 !dbg !639 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 0
  store i64 %1, i64* %5, align 8, !tbaa !511
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %4, i32 0, i32 1
  store i64 %2, i64* %6, align 8, !tbaa !513
  call void @llvm.dbg.value(metadata i8* %0, metadata !644, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.declare(metadata %struct.FStar_UInt128_uint128* %4, metadata !645, metadata !DIExpression()), !dbg !647
  call fastcc void @store128_be_(i8* noundef %0, %struct.FStar_UInt128_uint128* noundef nonnull %4), !dbg !648
  ret void, !dbg !649
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @store128_be_(i8* nocapture noundef writeonly %0, %struct.FStar_UInt128_uint128* nocapture noundef readonly %1) unnamed_addr #10 !dbg !650 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !655, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata %struct.FStar_UInt128_uint128* %1, metadata !656, metadata !DIExpression()), !dbg !657
  %3 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 1, !dbg !658
  %4 = load i64, i64* %3, align 4, !dbg !658, !tbaa !513
  %5 = call fastcc i64 @__bswap_64(i64 noundef %4), !dbg !658
  call fastcc void @store64(i8* noundef %0, i64 noundef %5), !dbg !658
  %6 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !659
  %7 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %1, i32 0, i32 0, !dbg !659
  %8 = load i64, i64* %7, align 4, !dbg !659, !tbaa !511
  %9 = call fastcc i64 @__bswap_64(i64 noundef %8), !dbg !659
  call fastcc void @store64(i8* noundef nonnull %6, i64 noundef %9), !dbg !659
  ret void, !dbg !660
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store64(i8* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #0 !dbg !661 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !665, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 %1, metadata !666, metadata !DIExpression()), !dbg !667
  %3 = bitcast i8* %0 to i64*, !dbg !668
  store i64 %1, i64* %3, align 1, !dbg !668
  ret void, !dbg !669
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(i8* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #2 !dbg !670 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !674, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i64* %1, metadata !675, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 6, metadata !676, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 0, metadata !677, metadata !DIExpression()), !dbg !684
  br label %4, !dbg !685

3:                                                ; preds = %4
  ret void, !dbg !686

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %11, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !677, metadata !DIExpression()), !dbg !684
  %6 = getelementptr inbounds i64, i64* %1, i32 %5, !dbg !687
  %7 = load i64, i64* %6, align 4, !dbg !687, !tbaa !91
  call void @llvm.dbg.value(metadata i64 %7, metadata !679, metadata !DIExpression()), !dbg !688
  %8 = shl i32 %5, 3, !dbg !689
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !690
  call void @llvm.dbg.value(metadata i8* %9, metadata !682, metadata !DIExpression()), !dbg !688
  %10 = call fastcc i64 @__bswap_64(i64 noundef %7), !dbg !691
  call fastcc void @store64(i8* noundef %9, i64 noundef %10), !dbg !691
  %11 = add nuw nsw i32 %5, 1, !dbg !692
  call void @llvm.dbg.value(metadata i32 %11, metadata !677, metadata !DIExpression()), !dbg !684
  %12 = icmp eq i32 %11, 6, !dbg !693
  br i1 %12, label %3, label %4, !dbg !685, !llvm.loop !694
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }

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
!339 = !DILocation(line: 188, column: 49, scope: !274)
!340 = !DILocation(line: 188, column: 3, scope: !274)
!341 = !DILocation(line: 190, column: 26, scope: !274)
!342 = !DILocation(line: 0, scope: !289)
!343 = !DILocation(line: 196, column: 13, scope: !291)
!344 = !DILocation(line: 0, scope: !291)
!345 = !DILocation(line: 189, column: 28, scope: !274)
!346 = !DILocation(line: 198, column: 3, scope: !294)
!347 = !DILocation(line: 214, column: 3, scope: !274)
!348 = !DILocation(line: 214, column: 12, scope: !274)
!349 = !DILocation(line: 215, column: 3, scope: !274)
!350 = !DILocation(line: 0, scope: !306)
!351 = !DILocation(line: 216, column: 3, scope: !306)
!352 = !DILocation(line: 0, scope: !294)
!353 = !DILocation(line: 200, column: 27, scope: !296)
!354 = !DILocation(line: 200, column: 20, scope: !296)
!355 = !DILocation(line: 0, scope: !296)
!356 = !DILocation(line: 201, column: 27, scope: !296)
!357 = !DILocation(line: 201, column: 20, scope: !296)
!358 = !DILocation(line: 202, column: 26, scope: !296)
!359 = !DILocation(line: 202, column: 19, scope: !296)
!360 = !DILocation(line: 203, column: 26, scope: !296)
!361 = !DILocation(line: 203, column: 19, scope: !296)
!362 = !DILocation(line: 205, column: 29, scope: !296)
!363 = !DILocation(line: 206, column: 31, scope: !296)
!364 = !DILocation(line: 206, column: 77, scope: !296)
!365 = !DILocation(line: 206, column: 72, scope: !296)
!366 = !DILocation(line: 206, column: 7, scope: !296)
!367 = !DILocation(line: 210, column: 33, scope: !296)
!368 = !DILocation(line: 211, column: 35, scope: !296)
!369 = !DILocation(line: 211, column: 82, scope: !296)
!370 = !DILocation(line: 211, column: 76, scope: !296)
!371 = !DILocation(line: 211, column: 11, scope: !296)
!372 = !DILocation(line: 207, column: 7, scope: !296)
!373 = !DILocation(line: 209, column: 9, scope: !296)
!374 = !DILocation(line: 212, column: 11, scope: !296)
!375 = !DILocation(line: 204, column: 5, scope: !296)
!376 = !DILocation(line: 204, column: 13, scope: !296)
!377 = !DILocation(line: 198, column: 61, scope: !297)
!378 = !DILocation(line: 198, column: 38, scope: !297)
!379 = distinct !{!379, !346, !380, !381, !382}
!380 = !DILocation(line: 213, column: 3, scope: !294)
!381 = !{!"llvm.loop.mustprogress"}
!382 = !{!"llvm.loop.unroll.disable"}
!383 = !DILocation(line: 0, scope: !308)
!384 = !DILocation(line: 0, scope: !326)
!385 = !DILocation(line: 259, column: 3, scope: !326)
!386 = !DILocation(line: 226, column: 20, scope: !308)
!387 = !DILocation(line: 227, column: 21, scope: !308)
!388 = !DILocation(line: 232, column: 30, scope: !308)
!389 = !DILocation(line: 234, column: 32, scope: !308)
!390 = !DILocation(line: 235, column: 33, scope: !308)
!391 = !DILocation(line: 235, column: 11, scope: !308)
!392 = !DILocation(line: 233, column: 9, scope: !308)
!393 = !DILocation(line: 236, column: 13, scope: !308)
!394 = !DILocation(line: 236, column: 22, scope: !308)
!395 = !DILocation(line: 236, column: 25, scope: !308)
!396 = !DILocation(line: 236, column: 19, scope: !308)
!397 = !DILocation(line: 231, column: 7, scope: !308)
!398 = !DILocation(line: 236, column: 7, scope: !308)
!399 = !DILocation(line: 237, column: 7, scope: !308)
!400 = !DILocation(line: 238, column: 7, scope: !308)
!401 = !DILocation(line: 241, column: 28, scope: !308)
!402 = !DILocation(line: 243, column: 30, scope: !308)
!403 = !DILocation(line: 244, column: 31, scope: !308)
!404 = !DILocation(line: 244, column: 9, scope: !308)
!405 = !DILocation(line: 242, column: 7, scope: !308)
!406 = !DILocation(line: 245, column: 13, scope: !308)
!407 = !DILocation(line: 245, column: 29, scope: !308)
!408 = !DILocation(line: 245, column: 18, scope: !308)
!409 = !DILocation(line: 245, column: 7, scope: !308)
!410 = !DILocation(line: 246, column: 22, scope: !308)
!411 = !DILocation(line: 247, column: 21, scope: !308)
!412 = !DILocation(line: 216, column: 60, scope: !309)
!413 = !DILocation(line: 216, column: 37, scope: !309)
!414 = distinct !{!414, !351, !415, !381, !382}
!415 = !DILocation(line: 258, column: 3, scope: !306)
!416 = !DILocation(line: 192, column: 31, scope: !274)
!417 = !DILocation(line: 265, column: 17, scope: !274)
!418 = !DILocation(line: 267, column: 22, scope: !274)
!419 = !DILocation(line: 267, column: 17, scope: !274)
!420 = !DILocation(line: 268, column: 1, scope: !274)
!421 = !DILocation(line: 261, column: 19, scope: !328)
!422 = !DILocation(line: 0, scope: !328)
!423 = !DILocation(line: 262, column: 19, scope: !328)
!424 = !DILocation(line: 263, column: 20, scope: !328)
!425 = !DILocation(line: 263, column: 15, scope: !328)
!426 = !DILocation(line: 259, column: 59, scope: !329)
!427 = !DILocation(line: 259, column: 37, scope: !329)
!428 = distinct !{!428, !385, !429, !381, !382}
!429 = !DILocation(line: 264, column: 3, scope: !326)
!430 = distinct !DISubprogram(name: "Hacl_SHA2_384_update_multi", scope: !3, file: !3, line: 349, type: !431, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !32, !267, !5}
!433 = !{!434, !435, !436}
!434 = !DILocalVariable(name: "state", arg: 1, scope: !430, file: !3, line: 349, type: !32)
!435 = !DILocalVariable(name: "data", arg: 2, scope: !430, file: !3, line: 349, type: !267)
!436 = !DILocalVariable(name: "n1", arg: 3, scope: !430, file: !3, line: 349, type: !5)
!437 = !DILocation(line: 0, scope: !430)
!438 = !DILocation(line: 351, column: 3, scope: !430)
!439 = !DILocation(line: 352, column: 1, scope: !430)
!440 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_384_update_multi", scope: !3, file: !3, line: 270, type: !431, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!441 = !{!442, !443, !444, !445, !447}
!442 = !DILocalVariable(name: "state", arg: 1, scope: !440, file: !3, line: 270, type: !32)
!443 = !DILocalVariable(name: "data", arg: 2, scope: !440, file: !3, line: 270, type: !267)
!444 = !DILocalVariable(name: "n1", arg: 3, scope: !440, file: !3, line: 270, type: !5)
!445 = !DILocalVariable(name: "i", scope: !446, file: !3, line: 272, type: !5)
!446 = distinct !DILexicalBlock(scope: !440, file: !3, line: 272, column: 3)
!447 = !DILocalVariable(name: "b", scope: !448, file: !3, line: 274, type: !267)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 273, column: 3)
!449 = distinct !DILexicalBlock(scope: !446, file: !3, line: 272, column: 3)
!450 = !DILocation(line: 0, scope: !440)
!451 = !DILocation(line: 0, scope: !446)
!452 = !DILocation(line: 272, column: 37, scope: !449)
!453 = !DILocation(line: 272, column: 3, scope: !446)
!454 = !DILocation(line: 277, column: 1, scope: !440)
!455 = !DILocation(line: 274, column: 27, scope: !448)
!456 = !DILocation(line: 274, column: 23, scope: !448)
!457 = !DILocation(line: 0, scope: !448)
!458 = !DILocation(line: 275, column: 5, scope: !448)
!459 = !DILocation(line: 272, column: 49, scope: !449)
!460 = distinct !{!460, !453, !461, !381, !382}
!461 = !DILocation(line: 276, column: 3, scope: !446)
!462 = distinct !DISubprogram(name: "Hacl_SHA2_384_update_last", scope: !3, file: !3, line: 354, type: !463, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !32, !267, !10}
!465 = !{!466, !467, !468}
!466 = !DILocalVariable(name: "state", arg: 1, scope: !462, file: !3, line: 354, type: !32)
!467 = !DILocalVariable(name: "data", arg: 2, scope: !462, file: !3, line: 354, type: !267)
!468 = !DILocalVariable(name: "len", arg: 3, scope: !462, file: !3, line: 354, type: !10)
!469 = !DILocation(line: 0, scope: !462)
!470 = !DILocation(line: 356, column: 3, scope: !462)
!471 = !DILocation(line: 357, column: 1, scope: !462)
!472 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_384_update_last", scope: !3, file: !3, line: 279, type: !463, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !473)
!473 = !{!474, !475, !476, !477, !481, !482, !483, !484, !485, !493, !494, !495}
!474 = !DILocalVariable(name: "state", arg: 1, scope: !472, file: !3, line: 279, type: !32)
!475 = !DILocalVariable(name: "data", arg: 2, scope: !472, file: !3, line: 279, type: !267)
!476 = !DILocalVariable(name: "len", arg: 3, scope: !472, file: !3, line: 279, type: !10)
!477 = !DILocalVariable(name: "blocks", scope: !472, file: !3, line: 281, type: !478)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 256)
!481 = !DILocalVariable(name: "nb", scope: !472, file: !3, line: 282, type: !5)
!482 = !DILocalVariable(name: "final_blocks", scope: !472, file: !3, line: 287, type: !267)
!483 = !DILocalVariable(name: "n1", scope: !472, file: !3, line: 293, type: !10)
!484 = !DILocalVariable(name: "padding", scope: !472, file: !3, line: 294, type: !267)
!485 = !DILocalVariable(name: "encodedlen", scope: !472, file: !3, line: 296, type: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_t", file: !487, line: 37, baseType: !488)
!487 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !487, line: 35, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 30, size: 128, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !489, file: !487, line: 32, baseType: !10, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !489, file: !487, line: 33, baseType: !10, size: 64, offset: 64)
!493 = !DILocalVariable(name: "pad0len", scope: !472, file: !3, line: 301, type: !5)
!494 = !DILocalVariable(name: "buf1", scope: !472, file: !3, line: 304, type: !267)
!495 = !DILocalVariable(name: "buf2", scope: !472, file: !3, line: 305, type: !267)
!496 = !DILocation(line: 0, scope: !472)
!497 = !DILocation(line: 281, column: 3, scope: !472)
!498 = !DILocation(line: 281, column: 11, scope: !472)
!499 = !DILocation(line: 283, column: 11, scope: !500)
!500 = distinct !DILexicalBlock(scope: !472, file: !3, line: 283, column: 7)
!501 = !DILocation(line: 288, column: 7, scope: !472)
!502 = !DILocation(line: 292, column: 30, scope: !472)
!503 = !DILocation(line: 292, column: 3, scope: !472)
!504 = !DILocation(line: 293, column: 17, scope: !472)
!505 = !DILocation(line: 294, column: 35, scope: !472)
!506 = !DILocation(line: 295, column: 3, scope: !472)
!507 = !DILocation(line: 296, column: 3, scope: !472)
!508 = !DILocation(line: 297, column: 48, scope: !472)
!509 = !DILocation(line: 298, column: 9, scope: !472)
!510 = !DILocation(line: 297, column: 30, scope: !472)
!511 = !{!512, !92, i64 0}
!512 = !{!"", !92, i64 0, !92, i64 8}
!513 = !{!512, !92, i64 8}
!514 = !DILocation(line: 297, column: 5, scope: !472)
!515 = !DILocation(line: 302, column: 21, scope: !472)
!516 = !DILocation(line: 303, column: 5, scope: !472)
!517 = !DILocation(line: 305, column: 27, scope: !472)
!518 = !DILocation(line: 305, column: 42, scope: !472)
!519 = !DILocation(line: 306, column: 12, scope: !472)
!520 = !{!93, !93, i64 0}
!521 = !DILocation(line: 307, column: 3, scope: !472)
!522 = !DILocation(line: 308, column: 3, scope: !472)
!523 = !DILocation(line: 309, column: 1, scope: !472)
!524 = distinct !DISubprogram(name: "Hacl_SHA2_384_finish", scope: !3, file: !3, line: 359, type: !265, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !525)
!525 = !{!526, !527}
!526 = !DILocalVariable(name: "state", arg: 1, scope: !524, file: !3, line: 359, type: !32)
!527 = !DILocalVariable(name: "hash1", arg: 2, scope: !524, file: !3, line: 359, type: !267)
!528 = !DILocation(line: 0, scope: !524)
!529 = !DILocation(line: 361, column: 3, scope: !524)
!530 = !DILocation(line: 362, column: 1, scope: !524)
!531 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_384_finish", scope: !3, file: !3, line: 311, type: !265, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !532)
!532 = !{!533, !534, !535}
!533 = !DILocalVariable(name: "state", arg: 1, scope: !531, file: !3, line: 311, type: !32)
!534 = !DILocalVariable(name: "hash1", arg: 2, scope: !531, file: !3, line: 311, type: !267)
!535 = !DILocalVariable(name: "hash_w", scope: !531, file: !3, line: 313, type: !32)
!536 = !DILocation(line: 0, scope: !531)
!537 = !DILocation(line: 313, column: 28, scope: !531)
!538 = !DILocation(line: 314, column: 3, scope: !531)
!539 = !DILocation(line: 315, column: 1, scope: !531)
!540 = distinct !DISubprogram(name: "Hacl_SHA2_384_hash", scope: !3, file: !3, line: 364, type: !541, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !267, !267, !5}
!543 = !{!544, !545, !546}
!544 = !DILocalVariable(name: "hash1", arg: 1, scope: !540, file: !3, line: 364, type: !267)
!545 = !DILocalVariable(name: "input", arg: 2, scope: !540, file: !3, line: 364, type: !267)
!546 = !DILocalVariable(name: "len", arg: 3, scope: !540, file: !3, line: 364, type: !5)
!547 = !DILocation(line: 0, scope: !540)
!548 = !DILocation(line: 366, column: 3, scope: !540)
!549 = !DILocation(line: 367, column: 1, scope: !540)
!550 = distinct !DISubprogram(name: "Hacl_Impl_SHA2_384_hash", scope: !3, file: !3, line: 317, type: !541, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !551)
!551 = !{!552, !553, !554, !555, !559, !561, !562, !563, !564}
!552 = !DILocalVariable(name: "hash1", arg: 1, scope: !550, file: !3, line: 317, type: !267)
!553 = !DILocalVariable(name: "input", arg: 2, scope: !550, file: !3, line: 317, type: !267)
!554 = !DILocalVariable(name: "len", arg: 3, scope: !550, file: !3, line: 317, type: !5)
!555 = !DILocalVariable(name: "state", scope: !550, file: !3, line: 320, type: !556)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 10816, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 169)
!559 = !DILocalVariable(name: "_i", scope: !560, file: !3, line: 321, type: !5)
!560 = distinct !DILexicalBlock(scope: !550, file: !3, line: 321, column: 3)
!561 = !DILocalVariable(name: "n1", scope: !550, file: !3, line: 323, type: !5)
!562 = !DILocalVariable(name: "r", scope: !550, file: !3, line: 324, type: !5)
!563 = !DILocalVariable(name: "input_blocks", scope: !550, file: !3, line: 325, type: !267)
!564 = !DILocalVariable(name: "input_last", scope: !550, file: !3, line: 326, type: !267)
!565 = !DILocation(line: 0, scope: !550)
!566 = !DILocation(line: 320, column: 3, scope: !550)
!567 = !DILocation(line: 320, column: 12, scope: !550)
!568 = !DILocation(line: 0, scope: !560)
!569 = !DILocation(line: 322, column: 15, scope: !570)
!570 = distinct !DILexicalBlock(scope: !560, file: !3, line: 321, column: 3)
!571 = !DILocation(line: 323, column: 21, scope: !550)
!572 = !DILocation(line: 324, column: 20, scope: !550)
!573 = !DILocation(line: 326, column: 36, scope: !550)
!574 = !DILocation(line: 326, column: 31, scope: !550)
!575 = !DILocation(line: 327, column: 27, scope: !550)
!576 = !DILocation(line: 327, column: 3, scope: !550)
!577 = !DILocation(line: 328, column: 3, scope: !550)
!578 = !DILocation(line: 329, column: 53, scope: !550)
!579 = !DILocation(line: 329, column: 3, scope: !550)
!580 = !DILocation(line: 330, column: 3, scope: !550)
!581 = !DILocation(line: 331, column: 1, scope: !550)
!582 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes", scope: !3, file: !3, line: 28, type: !431, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!583 = !{!584, !585, !586, !587, !589, !592}
!584 = !DILocalVariable(name: "output", arg: 1, scope: !582, file: !3, line: 28, type: !32)
!585 = !DILocalVariable(name: "input", arg: 2, scope: !582, file: !3, line: 28, type: !267)
!586 = !DILocalVariable(name: "len", arg: 3, scope: !582, file: !3, line: 28, type: !5)
!587 = !DILocalVariable(name: "i", scope: !588, file: !3, line: 30, type: !5)
!588 = distinct !DILexicalBlock(scope: !582, file: !3, line: 30, column: 3)
!589 = !DILocalVariable(name: "x0", scope: !590, file: !3, line: 32, type: !267)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 31, column: 3)
!591 = distinct !DILexicalBlock(scope: !588, file: !3, line: 30, column: 3)
!592 = !DILocalVariable(name: "inputi", scope: !590, file: !3, line: 33, type: !10)
!593 = !DILocation(line: 0, scope: !582)
!594 = !DILocation(line: 0, scope: !588)
!595 = !DILocation(line: 30, column: 3, scope: !588)
!596 = !DILocation(line: 36, column: 1, scope: !582)
!597 = !DILocation(line: 32, column: 40, scope: !590)
!598 = !DILocation(line: 32, column: 25, scope: !590)
!599 = !DILocation(line: 0, scope: !590)
!600 = !DILocation(line: 33, column: 23, scope: !590)
!601 = !DILocation(line: 34, column: 5, scope: !590)
!602 = !DILocation(line: 34, column: 15, scope: !590)
!603 = !DILocation(line: 30, column: 50, scope: !591)
!604 = !DILocation(line: 30, column: 37, scope: !591)
!605 = distinct !{!605, !595, !606, !381, !382}
!606 = !DILocation(line: 35, column: 3, scope: !588)
!607 = distinct !DISubprogram(name: "__bswap_64", scope: !608, file: !608, line: 70, type: !609, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !611)
!608 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!609 = !DISubroutineType(types: !610)
!610 = !{!11, !11}
!611 = !{!612}
!612 = !DILocalVariable(name: "__bsx", arg: 1, scope: !607, file: !608, line: 70, type: !11)
!613 = !DILocation(line: 0, scope: !607)
!614 = !DILocation(line: 75, column: 10, scope: !607)
!615 = !DILocation(line: 75, column: 3, scope: !607)
!616 = distinct !DISubprogram(name: "load64", scope: !617, file: !617, line: 347, type: !618, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !620)
!617 = !DIFile(filename: "hacl-c/hacl-c/kremlib.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "cde125f1f98cb7b9ee1f380d4178ebe4")
!618 = !DISubroutineType(types: !619)
!619 = !{!10, !267}
!620 = !{!621, !622}
!621 = !DILocalVariable(name: "b", arg: 1, scope: !616, file: !617, line: 347, type: !267)
!622 = !DILocalVariable(name: "x", scope: !616, file: !617, line: 348, type: !10)
!623 = !DILocation(line: 0, scope: !616)
!624 = !DILocation(line: 349, column: 3, scope: !616)
!625 = !DILocation(line: 350, column: 3, scope: !616)
!626 = !DISubprogram(name: "FStar_UInt128_shift_left", scope: !487, file: !487, line: 57, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!488, !488, !5}
!629 = !{}
!630 = !DISubprogram(name: "FStar_UInt128_add", scope: !487, file: !487, line: 41, type: !631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !629)
!631 = !DISubroutineType(types: !632)
!632 = !{!488, !488, !488}
!633 = !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !487, file: !487, line: 78, type: !634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !629)
!634 = !DISubroutineType(types: !635)
!635 = !{!488, !10, !10}
!636 = !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !487, file: !487, line: 65, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !629)
!637 = !DISubroutineType(types: !638)
!638 = !{!488, !10}
!639 = distinct !DISubprogram(name: "store128_be", scope: !617, file: !617, line: 557, type: !640, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !267, !642}
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !617, line: 510, baseType: !488)
!643 = !{!644, !645}
!644 = !DILocalVariable(name: "b", arg: 1, scope: !639, file: !617, line: 557, type: !267)
!645 = !DILocalVariable(name: "n", arg: 2, scope: !639, file: !617, line: 557, type: !642)
!646 = !DILocation(line: 0, scope: !639)
!647 = !DILocation(line: 557, column: 54, scope: !639)
!648 = !DILocation(line: 557, column: 59, scope: !639)
!649 = !DILocation(line: 557, column: 80, scope: !639)
!650 = distinct !DISubprogram(name: "store128_be_", scope: !617, file: !617, line: 532, type: !651, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !267, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 32)
!654 = !{!655, !656}
!655 = !DILocalVariable(name: "b", arg: 1, scope: !650, file: !617, line: 532, type: !267)
!656 = !DILocalVariable(name: "n", arg: 2, scope: !650, file: !617, line: 532, type: !653)
!657 = !DILocation(line: 0, scope: !650)
!658 = !DILocation(line: 533, column: 3, scope: !650)
!659 = !DILocation(line: 534, column: 3, scope: !650)
!660 = !DILocation(line: 535, column: 1, scope: !650)
!661 = distinct !DISubprogram(name: "store64", scope: !617, file: !617, line: 357, type: !662, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !267, !10}
!664 = !{!665, !666}
!665 = !DILocalVariable(name: "b", arg: 1, scope: !661, file: !617, line: 357, type: !267)
!666 = !DILocalVariable(name: "i", arg: 2, scope: !661, file: !617, line: 357, type: !10)
!667 = !DILocation(line: 0, scope: !661)
!668 = !DILocation(line: 357, column: 54, scope: !661)
!669 = !DILocation(line: 357, column: 72, scope: !661)
!670 = distinct !DISubprogram(name: "Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes", scope: !3, file: !3, line: 39, type: !671, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !267, !32, !5}
!673 = !{!674, !675, !676, !677, !679, !682}
!674 = !DILocalVariable(name: "output", arg: 1, scope: !670, file: !3, line: 39, type: !267)
!675 = !DILocalVariable(name: "input", arg: 2, scope: !670, file: !3, line: 39, type: !32)
!676 = !DILocalVariable(name: "len", arg: 3, scope: !670, file: !3, line: 39, type: !5)
!677 = !DILocalVariable(name: "i", scope: !678, file: !3, line: 41, type: !5)
!678 = distinct !DILexicalBlock(scope: !670, file: !3, line: 41, column: 3)
!679 = !DILocalVariable(name: "hd1", scope: !680, file: !3, line: 43, type: !10)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 42, column: 3)
!681 = distinct !DILexicalBlock(scope: !678, file: !3, line: 41, column: 3)
!682 = !DILocalVariable(name: "x0", scope: !680, file: !3, line: 44, type: !267)
!683 = !DILocation(line: 0, scope: !670)
!684 = !DILocation(line: 0, scope: !678)
!685 = !DILocation(line: 41, column: 3, scope: !678)
!686 = !DILocation(line: 47, column: 1, scope: !670)
!687 = !DILocation(line: 43, column: 20, scope: !680)
!688 = !DILocation(line: 0, scope: !680)
!689 = !DILocation(line: 44, column: 41, scope: !680)
!690 = !DILocation(line: 44, column: 26, scope: !680)
!691 = !DILocation(line: 45, column: 5, scope: !680)
!692 = !DILocation(line: 41, column: 50, scope: !681)
!693 = !DILocation(line: 41, column: 37, scope: !681)
!694 = distinct !{!694, !685, !695, !381, !382}
!695 = !DILocation(line: 46, column: 3, scope: !678)
