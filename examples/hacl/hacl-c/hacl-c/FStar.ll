; ModuleID = 'hacl-c/hacl-c/FStar.c'
source_filename = "hacl-c/hacl-c/FStar.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_add(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !30 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !40, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !42
  call void @llvm.dbg.value(metadata i64 %2, metadata !40, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !42
  call void @llvm.dbg.value(metadata i64 %3, metadata !41, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !42
  call void @llvm.dbg.value(metadata i64 %4, metadata !41, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !42
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !43
  %7 = add i64 %3, %1, !dbg !44
  store i64 %7, i64* %6, align 4, !dbg !43, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !43
  %9 = add i64 %4, %2, !dbg !50
  call void @llvm.dbg.value(metadata i64 %7, metadata !51, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i64 %3, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i64 %7, metadata !59, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i64 %3, metadata !62, metadata !DIExpression()), !dbg !63
  %10 = xor i64 %7, %3, !dbg !65
  %11 = xor i64 %3, %1, !dbg !66
  %12 = or i64 %10, %11, !dbg !67
  %13 = xor i64 %12, %7, !dbg !68
  %14 = lshr i64 %13, 63, !dbg !69
  %15 = add i64 %9, %14, !dbg !70
  store i64 %15, i64* %8, align 4, !dbg !43, !tbaa !71
  ret void, !dbg !72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !73 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !75, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !77
  call void @llvm.dbg.value(metadata i64 %2, metadata !75, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !77
  call void @llvm.dbg.value(metadata i64 %3, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !77
  call void @llvm.dbg.value(metadata i64 %4, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !77
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !78
  %7 = add i64 %3, %1, !dbg !79
  store i64 %7, i64* %6, align 4, !dbg !78, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !78
  %9 = add i64 %4, %2, !dbg !80
  call void @llvm.dbg.value(metadata i64 %7, metadata !51, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64 %3, metadata !56, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64 %7, metadata !59, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i64 %3, metadata !62, metadata !DIExpression()), !dbg !83
  %10 = xor i64 %7, %3, !dbg !85
  %11 = xor i64 %3, %1, !dbg !86
  %12 = or i64 %10, %11, !dbg !87
  %13 = xor i64 %12, %7, !dbg !88
  %14 = lshr i64 %13, 63, !dbg !89
  %15 = add i64 %9, %14, !dbg !90
  store i64 %15, i64* %8, align 4, !dbg !78, !tbaa !71
  ret void, !dbg !91
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_sub(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !92 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !96
  call void @llvm.dbg.value(metadata i64 %2, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !96
  call void @llvm.dbg.value(metadata i64 %3, metadata !95, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !96
  call void @llvm.dbg.value(metadata i64 %4, metadata !95, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !96
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !97
  %7 = sub i64 %1, %3, !dbg !98
  store i64 %7, i64* %6, align 4, !dbg !97, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !97
  call void @llvm.dbg.value(metadata i64 %1, metadata !51, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %7, metadata !56, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %1, metadata !59, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64 %7, metadata !62, metadata !DIExpression()), !dbg !101
  %9 = xor i64 %7, %1, !dbg !103
  %10 = xor i64 %7, %3, !dbg !104
  %11 = or i64 %10, %9, !dbg !105
  %12 = xor i64 %11, %1, !dbg !106
  %13 = ashr i64 %12, 63, !dbg !107
  %14 = sub i64 %2, %4, !dbg !108
  %15 = add i64 %14, %13, !dbg !108
  store i64 %15, i64* %8, align 4, !dbg !97, !tbaa !71
  ret void, !dbg !109
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @FStar_UInt128_sub_mod(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 !dbg !110 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !112, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !114
  call void @llvm.dbg.value(metadata i64 %2, metadata !112, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !114
  call void @llvm.dbg.value(metadata i64 %3, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !114
  call void @llvm.dbg.value(metadata i64 %4, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !114
  call void @llvm.dbg.value(metadata i64 %1, metadata !115, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !119
  call void @llvm.dbg.value(metadata i64 %2, metadata !115, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !119
  call void @llvm.dbg.value(metadata i64 %3, metadata !118, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !119
  call void @llvm.dbg.value(metadata i64 %4, metadata !118, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !119
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !121
  %7 = sub i64 %1, %3, !dbg !122
  store i64 %7, i64* %6, align 4, !dbg !121, !tbaa !45, !alias.scope !123
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !121
  call void @llvm.dbg.value(metadata i64 %1, metadata !51, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %7, metadata !56, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %1, metadata !59, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i64 %7, metadata !62, metadata !DIExpression()), !dbg !128
  %9 = xor i64 %7, %1, !dbg !130
  %10 = xor i64 %7, %3, !dbg !131
  %11 = or i64 %10, %9, !dbg !132
  %12 = xor i64 %11, %1, !dbg !133
  %13 = ashr i64 %12, 63, !dbg !134
  %14 = sub i64 %2, %4, !dbg !135
  %15 = add i64 %14, %13, !dbg !135
  store i64 %15, i64* %8, align 4, !dbg !121, !tbaa !71, !alias.scope !123
  ret void, !dbg !136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !137 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !141
  call void @llvm.dbg.value(metadata i64 %2, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !141
  call void @llvm.dbg.value(metadata i64 %3, metadata !140, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !141
  call void @llvm.dbg.value(metadata i64 %4, metadata !140, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !141
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !142
  %7 = and i64 %3, %1, !dbg !143
  store i64 %7, i64* %6, align 4, !dbg !142, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !142
  %9 = and i64 %4, %2, !dbg !144
  store i64 %9, i64* %8, align 4, !dbg !142, !tbaa !71
  ret void, !dbg !145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_logxor(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !146 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !150
  call void @llvm.dbg.value(metadata i64 %2, metadata !148, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !150
  call void @llvm.dbg.value(metadata i64 %3, metadata !149, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !150
  call void @llvm.dbg.value(metadata i64 %4, metadata !149, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !150
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !151
  %7 = xor i64 %3, %1, !dbg !152
  store i64 %7, i64* %6, align 4, !dbg !151, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !151
  %9 = xor i64 %4, %2, !dbg !153
  store i64 %9, i64* %8, align 4, !dbg !151, !tbaa !71
  ret void, !dbg !154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !155 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !157, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !159
  call void @llvm.dbg.value(metadata i64 %2, metadata !157, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !159
  call void @llvm.dbg.value(metadata i64 %3, metadata !158, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !159
  call void @llvm.dbg.value(metadata i64 %4, metadata !158, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !159
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !160
  %7 = or i64 %3, %1, !dbg !161
  store i64 %7, i64* %6, align 4, !dbg !160, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !160
  %9 = or i64 %4, %2, !dbg !162
  store i64 %9, i64* %8, align 4, !dbg !160, !tbaa !71
  ret void, !dbg !163
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_lognot(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2) local_unnamed_addr #0 !dbg !164 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !168, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !169
  call void @llvm.dbg.value(metadata i64 %2, metadata !168, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !169
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !170
  %5 = xor i64 %1, -1, !dbg !171
  store i64 %5, i64* %4, align 4, !dbg !170, !tbaa !45
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !170
  %7 = xor i64 %2, -1, !dbg !172
  store i64 %7, i64* %6, align 4, !dbg !170, !tbaa !71
  ret void, !dbg !173
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #1 !dbg !174 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !178, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !180
  call void @llvm.dbg.value(metadata i64 %2, metadata !178, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !180
  call void @llvm.dbg.value(metadata i32 %3, metadata !179, metadata !DIExpression()), !dbg !180
  %5 = icmp ult i32 %3, 64, !dbg !181
  br i1 %5, label %6, label %20, !dbg !183

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 %1, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !188
  call void @llvm.dbg.value(metadata i64 %2, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !188
  call void @llvm.dbg.value(metadata i32 %3, metadata !187, metadata !DIExpression()), !dbg !188
  %7 = icmp eq i32 %3, 0, !dbg !190
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !192
  br i1 %7, label %9, label %11, !dbg !193

9:                                                ; preds = %6
  store i64 %1, i64* %8, align 4, !dbg !194, !tbaa.struct !195, !alias.scope !197
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !194
  store i64 %2, i64* %10, align 4, !dbg !194, !tbaa.struct !200, !alias.scope !197
  br label %26, !dbg !201

11:                                               ; preds = %6
  %12 = zext i32 %3 to i64, !dbg !202
  %13 = shl i64 %1, %12, !dbg !202
  store i64 %13, i64* %8, align 4, !dbg !203, !tbaa !45, !alias.scope !197
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !203
  call void @llvm.dbg.value(metadata i64 %2, metadata !204, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i64 %1, metadata !209, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i32 %3, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i64 %2, metadata !213, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i64 %1, metadata !216, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %3, metadata !217, metadata !DIExpression()), !dbg !218
  %15 = shl i64 %2, %12, !dbg !220
  %16 = sub i32 64, %3, !dbg !221
  %17 = zext i32 %16 to i64, !dbg !222
  %18 = lshr i64 %1, %17, !dbg !222
  %19 = add i64 %18, %15, !dbg !223
  store i64 %19, i64* %14, align 4, !dbg !203, !tbaa !71, !alias.scope !197
  br label %26, !dbg !224

20:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %1, metadata !225, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !229
  call void @llvm.dbg.value(metadata i64 undef, metadata !225, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !229
  call void @llvm.dbg.value(metadata i32 %3, metadata !228, metadata !DIExpression()), !dbg !229
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !231
  store i64 0, i64* %21, align 4, !dbg !231, !tbaa !45, !alias.scope !232
  %22 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !231
  %23 = add i32 %3, -64, !dbg !235
  %24 = zext i32 %23 to i64, !dbg !236
  %25 = shl i64 %1, %24, !dbg !236
  store i64 %25, i64* %22, align 4, !dbg !231, !tbaa !71, !alias.scope !232
  br label %26, !dbg !237

26:                                               ; preds = %11, %9, %20
  ret void, !dbg !238
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #1 !dbg !239 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !243
  call void @llvm.dbg.value(metadata i64 %2, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !243
  call void @llvm.dbg.value(metadata i32 %3, metadata !242, metadata !DIExpression()), !dbg !243
  %5 = icmp ult i32 %3, 64, !dbg !244
  br i1 %5, label %6, label %20, !dbg !246

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 %1, metadata !247, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !251
  call void @llvm.dbg.value(metadata i64 %2, metadata !247, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !251
  call void @llvm.dbg.value(metadata i32 %3, metadata !250, metadata !DIExpression()), !dbg !251
  %7 = icmp eq i32 %3, 0, !dbg !253
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !255
  br i1 %7, label %9, label %11, !dbg !256

9:                                                ; preds = %6
  store i64 %1, i64* %8, align 4, !dbg !257, !tbaa.struct !195, !alias.scope !258
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !257
  store i64 %2, i64* %10, align 4, !dbg !257, !tbaa.struct !200, !alias.scope !258
  br label %26, !dbg !261

11:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %2, metadata !262, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i64 %1, metadata !265, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %3, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i64 %2, metadata !269, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 %1, metadata !272, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i32 %3, metadata !273, metadata !DIExpression()), !dbg !274
  %12 = zext i32 %3 to i64, !dbg !276
  %13 = lshr i64 %1, %12, !dbg !276
  %14 = sub i32 64, %3, !dbg !277
  %15 = zext i32 %14 to i64, !dbg !278
  %16 = shl i64 %2, %15, !dbg !278
  %17 = add i64 %16, %13, !dbg !279
  store i64 %17, i64* %8, align 4, !dbg !280, !tbaa !45, !alias.scope !258
  %18 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !280
  %19 = lshr i64 %2, %12, !dbg !281
  store i64 %19, i64* %18, align 4, !dbg !280, !tbaa !71, !alias.scope !258
  br label %26, !dbg !282

20:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 undef, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !287
  call void @llvm.dbg.value(metadata i64 %2, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !287
  call void @llvm.dbg.value(metadata i32 %3, metadata !286, metadata !DIExpression()), !dbg !287
  %21 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !289
  %22 = add i32 %3, -64, !dbg !290
  %23 = zext i32 %22 to i64, !dbg !291
  %24 = lshr i64 %2, %23, !dbg !291
  store i64 %24, i64* %21, align 4, !dbg !289, !tbaa !45, !alias.scope !292
  %25 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !289
  store i64 0, i64* %25, align 4, !dbg !289, !tbaa !71, !alias.scope !292
  br label %26, !dbg !295

26:                                               ; preds = %11, %9, %20
  ret void, !dbg !296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_eq_mask(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !297 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !299, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !301
  call void @llvm.dbg.value(metadata i64 %2, metadata !299, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !301
  call void @llvm.dbg.value(metadata i64 %3, metadata !300, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !301
  call void @llvm.dbg.value(metadata i64 %4, metadata !300, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !301
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !302
  call void @llvm.dbg.value(metadata i64 %1, metadata !303, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %3, metadata !307, metadata !DIExpression()), !dbg !308
  %7 = xor i64 %1, %3, !dbg !310
  %8 = xor i64 %7, -1, !dbg !310
  call void @llvm.dbg.value(metadata i64 %8, metadata !303, metadata !DIExpression()), !dbg !308
  %9 = shl i64 %8, 32, !dbg !311
  %10 = and i64 %9, %8, !dbg !312
  call void @llvm.dbg.value(metadata i64 %10, metadata !303, metadata !DIExpression()), !dbg !308
  %11 = shl i64 %10, 16, !dbg !313
  %12 = and i64 %11, %10, !dbg !314
  call void @llvm.dbg.value(metadata i64 %12, metadata !303, metadata !DIExpression()), !dbg !308
  %13 = shl i64 %12, 8, !dbg !315
  %14 = and i64 %13, %12, !dbg !316
  call void @llvm.dbg.value(metadata i64 %14, metadata !303, metadata !DIExpression()), !dbg !308
  %15 = shl i64 %14, 4, !dbg !317
  %16 = and i64 %15, %14, !dbg !318
  call void @llvm.dbg.value(metadata i64 %16, metadata !303, metadata !DIExpression()), !dbg !308
  %17 = shl i64 %16, 2, !dbg !319
  %18 = and i64 %17, %16, !dbg !320
  call void @llvm.dbg.value(metadata i64 %18, metadata !303, metadata !DIExpression()), !dbg !308
  %19 = shl i64 %18, 1, !dbg !321
  call void @llvm.dbg.value(metadata i64 undef, metadata !303, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %2, metadata !303, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i64 %4, metadata !307, metadata !DIExpression()), !dbg !322
  %20 = xor i64 %2, %4, !dbg !324
  %21 = xor i64 %20, -1, !dbg !324
  call void @llvm.dbg.value(metadata i64 %21, metadata !303, metadata !DIExpression()), !dbg !322
  %22 = shl i64 %21, 32, !dbg !325
  %23 = and i64 %22, %21, !dbg !326
  call void @llvm.dbg.value(metadata i64 %23, metadata !303, metadata !DIExpression()), !dbg !322
  %24 = shl i64 %23, 16, !dbg !327
  %25 = and i64 %24, %23, !dbg !328
  call void @llvm.dbg.value(metadata i64 %25, metadata !303, metadata !DIExpression()), !dbg !322
  %26 = shl i64 %25, 8, !dbg !329
  %27 = and i64 %26, %25, !dbg !330
  call void @llvm.dbg.value(metadata i64 %27, metadata !303, metadata !DIExpression()), !dbg !322
  %28 = shl i64 %27, 4, !dbg !331
  %29 = and i64 %28, %27, !dbg !332
  call void @llvm.dbg.value(metadata i64 %29, metadata !303, metadata !DIExpression()), !dbg !322
  %30 = shl i64 %29, 2, !dbg !333
  %31 = and i64 %30, %29, !dbg !334
  call void @llvm.dbg.value(metadata i64 %31, metadata !303, metadata !DIExpression()), !dbg !322
  %32 = shl i64 %31, 1, !dbg !335
  call void @llvm.dbg.value(metadata i64 undef, metadata !303, metadata !DIExpression()), !dbg !322
  %33 = and i64 %19, %18, !dbg !336
  %34 = and i64 %33, %31, !dbg !337
  %35 = and i64 %34, %32, !dbg !338
  %36 = ashr i64 %35, 63, !dbg !338
  store i64 %36, i64* %6, align 4, !dbg !302, !tbaa !45
  %37 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !302
  call void @llvm.dbg.value(metadata i64 %1, metadata !303, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i64 %3, metadata !307, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i64 %8, metadata !303, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i64 %10, metadata !303, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i64 %12, metadata !303, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i64 %14, metadata !303, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i64 %16, metadata !303, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i64 %18, metadata !303, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i64 undef, metadata !303, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i64 %2, metadata !303, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 %4, metadata !307, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 %21, metadata !303, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 %23, metadata !303, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 %25, metadata !303, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 %27, metadata !303, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 %29, metadata !303, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 %31, metadata !303, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 undef, metadata !303, metadata !DIExpression()), !dbg !341
  store i64 %36, i64* %37, align 4, !dbg !302, !tbaa !71
  ret void, !dbg !343
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_gte_mask(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !344 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !348
  call void @llvm.dbg.value(metadata i64 %2, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !348
  call void @llvm.dbg.value(metadata i64 %3, metadata !347, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !348
  call void @llvm.dbg.value(metadata i64 %4, metadata !347, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !348
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !349
  call void @llvm.dbg.value(metadata i64 %2, metadata !350, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i64 %4, metadata !353, metadata !DIExpression()), !dbg !356
  %7 = and i64 %2, 9223372036854775807, !dbg !358
  %8 = and i64 %4, 9223372036854775807, !dbg !359
  %9 = icmp uge i64 %7, %8, !dbg !360
  call void @llvm.dbg.value(metadata i1 %9, metadata !354, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !356
  %10 = and i64 %2, -9223372036854775808, !dbg !361
  %11 = and i64 %4, -9223372036854775808, !dbg !362
  %12 = icmp sge i64 %10, %11, !dbg !363
  call void @llvm.dbg.value(metadata i1 %12, metadata !355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !356
  %13 = and i1 %9, %12, !dbg !364
  call void @llvm.dbg.value(metadata i64 %2, metadata !303, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %4, metadata !307, metadata !DIExpression()), !dbg !365
  %14 = xor i64 %2, %4, !dbg !367
  %15 = xor i64 %14, -1, !dbg !367
  call void @llvm.dbg.value(metadata i64 %15, metadata !303, metadata !DIExpression()), !dbg !365
  %16 = shl i64 %15, 32, !dbg !368
  %17 = and i64 %16, %15, !dbg !369
  call void @llvm.dbg.value(metadata i64 %17, metadata !303, metadata !DIExpression()), !dbg !365
  %18 = shl i64 %17, 16, !dbg !370
  %19 = and i64 %18, %17, !dbg !371
  call void @llvm.dbg.value(metadata i64 %19, metadata !303, metadata !DIExpression()), !dbg !365
  %20 = shl i64 %19, 8, !dbg !372
  %21 = and i64 %20, %19, !dbg !373
  call void @llvm.dbg.value(metadata i64 %21, metadata !303, metadata !DIExpression()), !dbg !365
  %22 = shl i64 %21, 4, !dbg !374
  %23 = and i64 %22, %21, !dbg !375
  call void @llvm.dbg.value(metadata i64 %23, metadata !303, metadata !DIExpression()), !dbg !365
  %24 = shl i64 %23, 2, !dbg !376
  %25 = and i64 %24, %23, !dbg !377
  call void @llvm.dbg.value(metadata i64 %25, metadata !303, metadata !DIExpression()), !dbg !365
  %26 = shl i64 %25, 1, !dbg !378
  %27 = and i64 %26, %25, !dbg !379
  call void @llvm.dbg.value(metadata i64 %27, metadata !303, metadata !DIExpression()), !dbg !365
  %28 = ashr i64 %27, 63, !dbg !380
  %29 = xor i64 %28, -1, !dbg !381
  %30 = select i1 %13, i64 %29, i64 0, !dbg !382
  call void @llvm.dbg.value(metadata i64 %2, metadata !303, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %4, metadata !307, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %15, metadata !303, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %17, metadata !303, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %19, metadata !303, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %21, metadata !303, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %23, metadata !303, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %25, metadata !303, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %27, metadata !303, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %1, metadata !350, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i64 %3, metadata !353, metadata !DIExpression()), !dbg !385
  %31 = and i64 %1, 9223372036854775807, !dbg !387
  %32 = and i64 %3, 9223372036854775807, !dbg !388
  %33 = icmp uge i64 %31, %32, !dbg !389
  call void @llvm.dbg.value(metadata i1 %33, metadata !354, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !385
  %34 = and i64 %1, -9223372036854775808, !dbg !390
  %35 = and i64 %3, -9223372036854775808, !dbg !391
  %36 = icmp sge i64 %34, %35, !dbg !392
  call void @llvm.dbg.value(metadata i1 %36, metadata !355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !385
  %37 = and i1 %33, %36, !dbg !393
  %38 = select i1 %37, i64 %28, i64 0, !dbg !394
  %39 = or i64 %30, %38, !dbg !395
  store i64 %39, i64* %6, align 4, !dbg !349, !tbaa !45
  %40 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !349
  call void @llvm.dbg.value(metadata i64 %2, metadata !350, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 %4, metadata !353, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i1 %9, metadata !354, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !396
  call void @llvm.dbg.value(metadata i1 %12, metadata !355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !396
  call void @llvm.dbg.value(metadata i64 %2, metadata !303, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %4, metadata !307, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %15, metadata !303, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %17, metadata !303, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %19, metadata !303, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %21, metadata !303, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %23, metadata !303, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %25, metadata !303, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %27, metadata !303, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %2, metadata !303, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %4, metadata !307, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %15, metadata !303, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %17, metadata !303, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %19, metadata !303, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %21, metadata !303, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %23, metadata !303, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %25, metadata !303, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %27, metadata !303, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i64 %1, metadata !350, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i64 %3, metadata !353, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i1 %33, metadata !354, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !402
  call void @llvm.dbg.value(metadata i1 %36, metadata !355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !402
  store i64 %39, i64* %40, align 4, !dbg !349, !tbaa !71
  ret void, !dbg !404
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1) local_unnamed_addr #0 !dbg !405 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !409, metadata !DIExpression()), !dbg !410
  %3 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !411
  store i64 %1, i64* %3, align 4, !dbg !411, !tbaa !45
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !411
  store i64 0, i64* %4, align 4, !dbg !411, !tbaa !71
  ret void, !dbg !412
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @FStar_UInt128_uint128_to_uint64(i64 returned %0, i64 %1) local_unnamed_addr #2 !dbg !413 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !418
  call void @llvm.dbg.value(metadata i64 %1, metadata !417, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !418
  ret i64 %0, !dbg !419
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 !dbg !420 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !424, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i64 %2, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i64 %1, metadata !427, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i64 %2, metadata !430, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i64 %1, metadata !445, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i64 %2, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i64 %1, metadata !453, metadata !DIExpression()), !dbg !458
  %4 = and i64 %1, 4294967295, !dbg !460
  call void @llvm.dbg.value(metadata i64 %4, metadata !431, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !443
  call void @llvm.dbg.value(metadata i64 %1, metadata !453, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i64 %2, metadata !453, metadata !DIExpression()), !dbg !463
  %5 = and i64 %2, 4294967295, !dbg !465
  %6 = mul nuw i64 %5, %4, !dbg !466
  call void @llvm.dbg.value(metadata i64 %6, metadata !453, metadata !DIExpression()), !dbg !467
  %7 = and i64 %6, 4294967295, !dbg !469
  call void @llvm.dbg.value(metadata i64 %7, metadata !431, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !443
  %8 = lshr i64 %1, 32, !dbg !470
  call void @llvm.dbg.value(metadata i64 %8, metadata !431, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !443
  call void @llvm.dbg.value(metadata i64 %2, metadata !453, metadata !DIExpression()), !dbg !471
  %9 = mul nuw i64 %5, %8, !dbg !473
  call void @llvm.dbg.value(metadata i64 %1, metadata !453, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i64 %2, metadata !453, metadata !DIExpression()), !dbg !476
  %10 = lshr i64 %6, 32, !dbg !478
  %11 = add i64 %10, %9, !dbg !479
  call void @llvm.dbg.value(metadata i64 %11, metadata !431, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !443
  call void @llvm.dbg.value(metadata i64 %4, metadata !439, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i64 %7, metadata !440, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i64 %8, metadata !441, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i64 %11, metadata !442, metadata !DIExpression()), !dbg !443
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !480
  %13 = lshr i64 %2, 32, !dbg !481
  %14 = mul nuw i64 %13, %4, !dbg !482
  call void @llvm.dbg.value(metadata i64 %11, metadata !453, metadata !DIExpression()), !dbg !483
  %15 = and i64 %11, 4294967295, !dbg !485
  %16 = add i64 %15, %14, !dbg !486
  call void @llvm.dbg.value(metadata i64 %16, metadata !487, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i64 %7, metadata !490, metadata !DIExpression()), !dbg !491
  %17 = shl i64 %16, 32, !dbg !493
  %18 = or i64 %17, %7, !dbg !494
  store i64 %18, i64* %12, align 4, !dbg !480, !tbaa !45, !alias.scope !495
  %19 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !480
  %20 = mul nuw i64 %13, %8, !dbg !498
  %21 = lshr i64 %11, 32, !dbg !499
  %22 = add i64 %21, %20, !dbg !500
  call void @llvm.dbg.value(metadata i64 %11, metadata !453, metadata !DIExpression()), !dbg !501
  %23 = lshr i64 %16, 32, !dbg !503
  %24 = add i64 %22, %23, !dbg !504
  store i64 %24, i64* %19, align 4, !dbg !480, !tbaa !71, !alias.scope !495
  ret void, !dbg !505
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, globals: !15, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hacl-c/hacl-c/FStar.c", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "636e3da41ff01cf1a1b752c218415e8b")
!2 = !{!3, !8, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 27, baseType: !5)
!4 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 48, baseType: !7)
!6 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !10)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !12, line: 27, baseType: !13)
!12 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !6, line: 47, baseType: !14)
!14 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!15 = !{!16, !18, !20}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "FStar_UInt128_u32_64", scope: !0, file: !1, line: 107, type: !8, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "FStar_UInt128_u32_32", scope: !0, file: !1, line: 230, type: !8, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "FStar_UInt128_u64_l32_mask", scope: !0, file: !1, line: 223, type: !3, isLocal: true, isDefinition: true)
!22 = !{i32 1, !"NumRegisterParameters", i32 0}
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!30 = distinct !DISubprogram(name: "FStar_UInt128_add", scope: !1, file: !1, line: 37, type: !31, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !33, !33}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "FStar_UInt128_uint128", file: !34, line: 35, baseType: !35)
!34 = !DIFile(filename: "hacl-c/hacl-c/FStar.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "f30034e5606e554271b07b1e7e8a42fa")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 30, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !35, file: !34, line: 32, baseType: !3, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !35, file: !34, line: 33, baseType: !3, size: 64, offset: 64)
!39 = !{!40, !41}
!40 = !DILocalVariable(name: "a", arg: 1, scope: !30, file: !1, line: 37, type: !33)
!41 = !DILocalVariable(name: "b", arg: 2, scope: !30, file: !1, line: 37, type: !33)
!42 = !DILocation(line: 0, scope: !30)
!43 = !DILocation(line: 41, column: 30, scope: !30)
!44 = !DILocation(line: 42, column: 22, scope: !30)
!45 = !{!46, !47, i64 0}
!46 = !{!"", !47, i64 0, !47, i64 8}
!47 = !{!"long long", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 43, column: 24, scope: !30)
!51 = !DILocalVariable(name: "a", arg: 1, scope: !52, file: !1, line: 32, type: !3)
!52 = distinct !DISubprogram(name: "FStar_UInt128_carry", scope: !1, file: !1, line: 32, type: !53, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!3, !3, !3}
!55 = !{!51, !56}
!56 = !DILocalVariable(name: "b", arg: 2, scope: !52, file: !1, line: 32, type: !3)
!57 = !DILocation(line: 0, scope: !52, inlinedAt: !58)
!58 = distinct !DILocation(line: 43, column: 35, scope: !30)
!59 = !DILocalVariable(name: "a", arg: 1, scope: !60, file: !1, line: 27, type: !3)
!60 = distinct !DISubprogram(name: "FStar_UInt128_constant_time_carry", scope: !1, file: !1, line: 27, type: !53, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !61)
!61 = !{!59, !62}
!62 = !DILocalVariable(name: "b", arg: 2, scope: !60, file: !1, line: 27, type: !3)
!63 = !DILocation(line: 0, scope: !60, inlinedAt: !64)
!64 = distinct !DILocation(line: 34, column: 10, scope: !52, inlinedAt: !58)
!65 = !DILocation(line: 29, column: 19, scope: !60, inlinedAt: !64)
!66 = !DILocation(line: 29, column: 35, scope: !60, inlinedAt: !64)
!67 = !DILocation(line: 29, column: 24, scope: !60, inlinedAt: !64)
!68 = !DILocation(line: 29, column: 13, scope: !60, inlinedAt: !64)
!69 = !DILocation(line: 29, column: 42, scope: !60, inlinedAt: !64)
!70 = !DILocation(line: 43, column: 33, scope: !30)
!71 = !{!46, !47, i64 8}
!72 = !DILocation(line: 39, column: 3, scope: !30)
!73 = distinct !DISubprogram(name: "FStar_UInt128_add_mod", scope: !1, file: !1, line: 48, type: !31, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!74 = !{!75, !76}
!75 = !DILocalVariable(name: "a", arg: 1, scope: !73, file: !1, line: 48, type: !33)
!76 = !DILocalVariable(name: "b", arg: 2, scope: !73, file: !1, line: 48, type: !33)
!77 = !DILocation(line: 0, scope: !73)
!78 = !DILocation(line: 52, column: 30, scope: !73)
!79 = !DILocation(line: 53, column: 22, scope: !73)
!80 = !DILocation(line: 54, column: 24, scope: !73)
!81 = !DILocation(line: 0, scope: !52, inlinedAt: !82)
!82 = distinct !DILocation(line: 54, column: 35, scope: !73)
!83 = !DILocation(line: 0, scope: !60, inlinedAt: !84)
!84 = distinct !DILocation(line: 34, column: 10, scope: !52, inlinedAt: !82)
!85 = !DILocation(line: 29, column: 19, scope: !60, inlinedAt: !84)
!86 = !DILocation(line: 29, column: 35, scope: !60, inlinedAt: !84)
!87 = !DILocation(line: 29, column: 24, scope: !60, inlinedAt: !84)
!88 = !DILocation(line: 29, column: 13, scope: !60, inlinedAt: !84)
!89 = !DILocation(line: 29, column: 42, scope: !60, inlinedAt: !84)
!90 = !DILocation(line: 54, column: 33, scope: !73)
!91 = !DILocation(line: 50, column: 3, scope: !73)
!92 = distinct !DISubprogram(name: "FStar_UInt128_sub", scope: !1, file: !1, line: 59, type: !31, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!93 = !{!94, !95}
!94 = !DILocalVariable(name: "a", arg: 1, scope: !92, file: !1, line: 59, type: !33)
!95 = !DILocalVariable(name: "b", arg: 2, scope: !92, file: !1, line: 59, type: !33)
!96 = !DILocation(line: 0, scope: !92)
!97 = !DILocation(line: 63, column: 30, scope: !92)
!98 = !DILocation(line: 64, column: 22, scope: !92)
!99 = !DILocation(line: 0, scope: !52, inlinedAt: !100)
!100 = distinct !DILocation(line: 65, column: 35, scope: !92)
!101 = !DILocation(line: 0, scope: !60, inlinedAt: !102)
!102 = distinct !DILocation(line: 34, column: 10, scope: !52, inlinedAt: !100)
!103 = !DILocation(line: 29, column: 19, scope: !60, inlinedAt: !102)
!104 = !DILocation(line: 29, column: 35, scope: !60, inlinedAt: !102)
!105 = !DILocation(line: 29, column: 24, scope: !60, inlinedAt: !102)
!106 = !DILocation(line: 29, column: 13, scope: !60, inlinedAt: !102)
!107 = !DILocation(line: 29, column: 42, scope: !60, inlinedAt: !102)
!108 = !DILocation(line: 65, column: 33, scope: !92)
!109 = !DILocation(line: 61, column: 3, scope: !92)
!110 = distinct !DISubprogram(name: "FStar_UInt128_sub_mod", scope: !1, file: !1, line: 82, type: !31, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!111 = !{!112, !113}
!112 = !DILocalVariable(name: "a", arg: 1, scope: !110, file: !1, line: 82, type: !33)
!113 = !DILocalVariable(name: "b", arg: 2, scope: !110, file: !1, line: 82, type: !33)
!114 = !DILocation(line: 0, scope: !110)
!115 = !DILocalVariable(name: "a", arg: 1, scope: !116, file: !1, line: 71, type: !33)
!116 = distinct !DISubprogram(name: "FStar_UInt128_sub_mod_impl", scope: !1, file: !1, line: 71, type: !31, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!117 = !{!115, !118}
!118 = !DILocalVariable(name: "b", arg: 2, scope: !116, file: !1, line: 71, type: !33)
!119 = !DILocation(line: 0, scope: !116, inlinedAt: !120)
!120 = distinct !DILocation(line: 84, column: 10, scope: !110)
!121 = !DILocation(line: 75, column: 30, scope: !116, inlinedAt: !120)
!122 = !DILocation(line: 76, column: 22, scope: !116, inlinedAt: !120)
!123 = !{!124}
!124 = distinct !{!124, !125, !"FStar_UInt128_sub_mod_impl: argument 0"}
!125 = distinct !{!125, !"FStar_UInt128_sub_mod_impl"}
!126 = !DILocation(line: 0, scope: !52, inlinedAt: !127)
!127 = distinct !DILocation(line: 77, column: 35, scope: !116, inlinedAt: !120)
!128 = !DILocation(line: 0, scope: !60, inlinedAt: !129)
!129 = distinct !DILocation(line: 34, column: 10, scope: !52, inlinedAt: !127)
!130 = !DILocation(line: 29, column: 19, scope: !60, inlinedAt: !129)
!131 = !DILocation(line: 29, column: 35, scope: !60, inlinedAt: !129)
!132 = !DILocation(line: 29, column: 24, scope: !60, inlinedAt: !129)
!133 = !DILocation(line: 29, column: 13, scope: !60, inlinedAt: !129)
!134 = !DILocation(line: 29, column: 42, scope: !60, inlinedAt: !129)
!135 = !DILocation(line: 77, column: 33, scope: !116, inlinedAt: !120)
!136 = !DILocation(line: 84, column: 3, scope: !110)
!137 = distinct !DISubprogram(name: "FStar_UInt128_logand", scope: !1, file: !1, line: 87, type: !31, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "a", arg: 1, scope: !137, file: !1, line: 87, type: !33)
!140 = !DILocalVariable(name: "b", arg: 2, scope: !137, file: !1, line: 87, type: !33)
!141 = !DILocation(line: 0, scope: !137)
!142 = !DILocation(line: 89, column: 34, scope: !137)
!143 = !DILocation(line: 89, column: 49, scope: !137)
!144 = !DILocation(line: 89, column: 73, scope: !137)
!145 = !DILocation(line: 89, column: 3, scope: !137)
!146 = distinct !DISubprogram(name: "FStar_UInt128_logxor", scope: !1, file: !1, line: 92, type: !31, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!147 = !{!148, !149}
!148 = !DILocalVariable(name: "a", arg: 1, scope: !146, file: !1, line: 92, type: !33)
!149 = !DILocalVariable(name: "b", arg: 2, scope: !146, file: !1, line: 92, type: !33)
!150 = !DILocation(line: 0, scope: !146)
!151 = !DILocation(line: 94, column: 34, scope: !146)
!152 = !DILocation(line: 94, column: 49, scope: !146)
!153 = !DILocation(line: 94, column: 73, scope: !146)
!154 = !DILocation(line: 94, column: 3, scope: !146)
!155 = distinct !DISubprogram(name: "FStar_UInt128_logor", scope: !1, file: !1, line: 97, type: !31, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!156 = !{!157, !158}
!157 = !DILocalVariable(name: "a", arg: 1, scope: !155, file: !1, line: 97, type: !33)
!158 = !DILocalVariable(name: "b", arg: 2, scope: !155, file: !1, line: 97, type: !33)
!159 = !DILocation(line: 0, scope: !155)
!160 = !DILocation(line: 99, column: 34, scope: !155)
!161 = !DILocation(line: 99, column: 49, scope: !155)
!162 = !DILocation(line: 99, column: 73, scope: !155)
!163 = !DILocation(line: 99, column: 3, scope: !155)
!164 = distinct !DISubprogram(name: "FStar_UInt128_lognot", scope: !1, file: !1, line: 102, type: !165, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{!33, !33}
!167 = !{!168}
!168 = !DILocalVariable(name: "a", arg: 1, scope: !164, file: !1, line: 102, type: !33)
!169 = !DILocation(line: 0, scope: !164)
!170 = !DILocation(line: 104, column: 34, scope: !164)
!171 = !DILocation(line: 104, column: 43, scope: !164)
!172 = !DILocation(line: 104, column: 59, scope: !164)
!173 = !DILocation(line: 104, column: 3, scope: !164)
!174 = distinct !DISubprogram(name: "FStar_UInt128_shift_left", scope: !1, file: !1, line: 141, type: !175, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{!33, !33, !8}
!177 = !{!178, !179}
!178 = !DILocalVariable(name: "a", arg: 1, scope: !174, file: !1, line: 141, type: !33)
!179 = !DILocalVariable(name: "s", arg: 2, scope: !174, file: !1, line: 141, type: !8)
!180 = !DILocation(line: 0, scope: !174)
!181 = !DILocation(line: 143, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !174, file: !1, line: 143, column: 7)
!183 = !DILocation(line: 143, column: 7, scope: !174)
!184 = !DILocalVariable(name: "a", arg: 1, scope: !185, file: !1, line: 120, type: !33)
!185 = distinct !DISubprogram(name: "FStar_UInt128_shift_left_small", scope: !1, file: !1, line: 120, type: !175, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!186 = !{!184, !187}
!187 = !DILocalVariable(name: "s", arg: 2, scope: !185, file: !1, line: 120, type: !8)
!188 = !DILocation(line: 0, scope: !185, inlinedAt: !189)
!189 = distinct !DILocation(line: 144, column: 12, scope: !182)
!190 = !DILocation(line: 122, column: 9, scope: !191, inlinedAt: !189)
!191 = distinct !DILexicalBlock(scope: !185, file: !1, line: 122, column: 7)
!192 = !DILocation(line: 0, scope: !191, inlinedAt: !189)
!193 = !DILocation(line: 122, column: 7, scope: !185, inlinedAt: !189)
!194 = !DILocation(line: 123, column: 12, scope: !191, inlinedAt: !189)
!195 = !{i64 0, i64 8, !196, i64 8, i64 8, !196}
!196 = !{!47, !47, i64 0}
!197 = !{!198}
!198 = distinct !{!198, !199, !"FStar_UInt128_shift_left_small: argument 0"}
!199 = distinct !{!199, !"FStar_UInt128_shift_left_small"}
!200 = !{i64 0, i64 8, !196}
!201 = !DILocation(line: 123, column: 5, scope: !191, inlinedAt: !189)
!202 = !DILocation(line: 128, column: 24, scope: !191, inlinedAt: !189)
!203 = !DILocation(line: 127, column: 32, scope: !191, inlinedAt: !189)
!204 = !DILocalVariable(name: "hi", arg: 1, scope: !205, file: !1, line: 114, type: !3)
!205 = distinct !DISubprogram(name: "FStar_UInt128_add_u64_shift_left_respec", scope: !1, file: !1, line: 114, type: !206, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!3, !3, !3, !8}
!208 = !{!204, !209, !210}
!209 = !DILocalVariable(name: "lo", arg: 2, scope: !205, file: !1, line: 114, type: !3)
!210 = !DILocalVariable(name: "s", arg: 3, scope: !205, file: !1, line: 114, type: !8)
!211 = !DILocation(line: 0, scope: !205, inlinedAt: !212)
!212 = distinct !DILocation(line: 129, column: 19, scope: !191, inlinedAt: !189)
!213 = !DILocalVariable(name: "hi", arg: 1, scope: !214, file: !1, line: 109, type: !3)
!214 = distinct !DISubprogram(name: "FStar_UInt128_add_u64_shift_left", scope: !1, file: !1, line: 109, type: !206, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !215)
!215 = !{!213, !216, !217}
!216 = !DILocalVariable(name: "lo", arg: 2, scope: !214, file: !1, line: 109, type: !3)
!217 = !DILocalVariable(name: "s", arg: 3, scope: !214, file: !1, line: 109, type: !8)
!218 = !DILocation(line: 0, scope: !214, inlinedAt: !219)
!219 = distinct !DILocation(line: 116, column: 10, scope: !205, inlinedAt: !212)
!220 = !DILocation(line: 111, column: 14, scope: !214, inlinedAt: !219)
!221 = !DILocation(line: 111, column: 51, scope: !214, inlinedAt: !219)
!222 = !DILocation(line: 111, column: 26, scope: !214, inlinedAt: !219)
!223 = !DILocation(line: 111, column: 20, scope: !214, inlinedAt: !219)
!224 = !DILocation(line: 125, column: 5, scope: !191, inlinedAt: !189)
!225 = !DILocalVariable(name: "a", arg: 1, scope: !226, file: !1, line: 135, type: !33)
!226 = distinct !DISubprogram(name: "FStar_UInt128_shift_left_large", scope: !1, file: !1, line: 135, type: !175, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !227)
!227 = !{!225, !228}
!228 = !DILocalVariable(name: "s", arg: 2, scope: !226, file: !1, line: 135, type: !8)
!229 = !DILocation(line: 0, scope: !226, inlinedAt: !230)
!230 = distinct !DILocation(line: 146, column: 12, scope: !182)
!231 = !DILocation(line: 138, column: 29, scope: !226, inlinedAt: !230)
!232 = !{!233}
!233 = distinct !{!233, !234, !"FStar_UInt128_shift_left_large: argument 0"}
!234 = distinct !{!234, !"FStar_UInt128_shift_left_large"}
!235 = !DILocation(line: 138, column: 72, scope: !226, inlinedAt: !230)
!236 = !DILocation(line: 138, column: 66, scope: !226, inlinedAt: !230)
!237 = !DILocation(line: 146, column: 5, scope: !182)
!238 = !DILocation(line: 147, column: 1, scope: !174)
!239 = distinct !DISubprogram(name: "FStar_UInt128_shift_right", scope: !1, file: !1, line: 181, type: !175, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!240 = !{!241, !242}
!241 = !DILocalVariable(name: "a", arg: 1, scope: !239, file: !1, line: 181, type: !33)
!242 = !DILocalVariable(name: "s", arg: 2, scope: !239, file: !1, line: 181, type: !8)
!243 = !DILocation(line: 0, scope: !239)
!244 = !DILocation(line: 183, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !1, line: 183, column: 7)
!246 = !DILocation(line: 183, column: 7, scope: !239)
!247 = !DILocalVariable(name: "a", arg: 1, scope: !248, file: !1, line: 160, type: !33)
!248 = distinct !DISubprogram(name: "FStar_UInt128_shift_right_small", scope: !1, file: !1, line: 160, type: !175, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !249)
!249 = !{!247, !250}
!250 = !DILocalVariable(name: "s", arg: 2, scope: !248, file: !1, line: 160, type: !8)
!251 = !DILocation(line: 0, scope: !248, inlinedAt: !252)
!252 = distinct !DILocation(line: 184, column: 12, scope: !245)
!253 = !DILocation(line: 162, column: 9, scope: !254, inlinedAt: !252)
!254 = distinct !DILexicalBlock(scope: !248, file: !1, line: 162, column: 7)
!255 = !DILocation(line: 0, scope: !254, inlinedAt: !252)
!256 = !DILocation(line: 162, column: 7, scope: !248, inlinedAt: !252)
!257 = !DILocation(line: 163, column: 12, scope: !254, inlinedAt: !252)
!258 = !{!259}
!259 = distinct !{!259, !260, !"FStar_UInt128_shift_right_small: argument 0"}
!260 = distinct !{!260, !"FStar_UInt128_shift_right_small"}
!261 = !DILocation(line: 163, column: 5, scope: !254, inlinedAt: !252)
!262 = !DILocalVariable(name: "hi", arg: 1, scope: !263, file: !1, line: 154, type: !3)
!263 = distinct !DISubprogram(name: "FStar_UInt128_add_u64_shift_right_respec", scope: !1, file: !1, line: 154, type: !206, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !264)
!264 = !{!262, !265, !266}
!265 = !DILocalVariable(name: "lo", arg: 2, scope: !263, file: !1, line: 154, type: !3)
!266 = !DILocalVariable(name: "s", arg: 3, scope: !263, file: !1, line: 154, type: !8)
!267 = !DILocation(line: 0, scope: !263, inlinedAt: !268)
!268 = distinct !DILocation(line: 168, column: 18, scope: !254, inlinedAt: !252)
!269 = !DILocalVariable(name: "hi", arg: 1, scope: !270, file: !1, line: 149, type: !3)
!270 = distinct !DISubprogram(name: "FStar_UInt128_add_u64_shift_right", scope: !1, file: !1, line: 149, type: !206, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !271)
!271 = !{!269, !272, !273}
!272 = !DILocalVariable(name: "lo", arg: 2, scope: !270, file: !1, line: 149, type: !3)
!273 = !DILocalVariable(name: "s", arg: 3, scope: !270, file: !1, line: 149, type: !8)
!274 = !DILocation(line: 0, scope: !270, inlinedAt: !275)
!275 = distinct !DILocation(line: 156, column: 10, scope: !263, inlinedAt: !268)
!276 = !DILocation(line: 151, column: 14, scope: !270, inlinedAt: !275)
!277 = !DILocation(line: 151, column: 51, scope: !270, inlinedAt: !275)
!278 = !DILocation(line: 151, column: 26, scope: !270, inlinedAt: !275)
!279 = !DILocation(line: 151, column: 20, scope: !270, inlinedAt: !275)
!280 = !DILocation(line: 167, column: 32, scope: !254, inlinedAt: !252)
!281 = !DILocation(line: 169, column: 26, scope: !254, inlinedAt: !252)
!282 = !DILocation(line: 165, column: 5, scope: !254, inlinedAt: !252)
!283 = !DILocalVariable(name: "a", arg: 1, scope: !284, file: !1, line: 175, type: !33)
!284 = distinct !DISubprogram(name: "FStar_UInt128_shift_right_large", scope: !1, file: !1, line: 175, type: !175, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !285)
!285 = !{!283, !286}
!286 = !DILocalVariable(name: "s", arg: 2, scope: !284, file: !1, line: 175, type: !8)
!287 = !DILocation(line: 0, scope: !284, inlinedAt: !288)
!288 = distinct !DILocation(line: 186, column: 12, scope: !245)
!289 = !DILocation(line: 178, column: 29, scope: !284, inlinedAt: !288)
!290 = !DILocation(line: 178, column: 51, scope: !284, inlinedAt: !288)
!291 = !DILocation(line: 178, column: 45, scope: !284, inlinedAt: !288)
!292 = !{!293}
!293 = distinct !{!293, !294, !"FStar_UInt128_shift_right_large: argument 0"}
!294 = distinct !{!294, !"FStar_UInt128_shift_right_large"}
!295 = !DILocation(line: 186, column: 5, scope: !245)
!296 = !DILocation(line: 187, column: 1, scope: !239)
!297 = distinct !DISubprogram(name: "FStar_UInt128_eq_mask", scope: !1, file: !1, line: 189, type: !31, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!298 = !{!299, !300}
!299 = !DILocalVariable(name: "a", arg: 1, scope: !297, file: !1, line: 189, type: !33)
!300 = !DILocalVariable(name: "b", arg: 2, scope: !297, file: !1, line: 189, type: !33)
!301 = !DILocation(line: 0, scope: !297)
!302 = !DILocation(line: 193, column: 30, scope: !297)
!303 = !DILocalVariable(name: "x", arg: 1, scope: !304, file: !305, line: 157, type: !3)
!304 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !305, file: !305, line: 157, type: !53, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !306)
!305 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!306 = !{!303, !307}
!307 = !DILocalVariable(name: "y", arg: 2, scope: !304, file: !305, line: 157, type: !3)
!308 = !DILocation(line: 0, scope: !304, inlinedAt: !309)
!309 = distinct !DILocation(line: 194, column: 16, scope: !297)
!310 = !DILocation(line: 158, column: 7, scope: !304, inlinedAt: !309)
!311 = !DILocation(line: 159, column: 10, scope: !304, inlinedAt: !309)
!312 = !DILocation(line: 159, column: 5, scope: !304, inlinedAt: !309)
!313 = !DILocation(line: 160, column: 10, scope: !304, inlinedAt: !309)
!314 = !DILocation(line: 160, column: 5, scope: !304, inlinedAt: !309)
!315 = !DILocation(line: 161, column: 10, scope: !304, inlinedAt: !309)
!316 = !DILocation(line: 161, column: 5, scope: !304, inlinedAt: !309)
!317 = !DILocation(line: 162, column: 10, scope: !304, inlinedAt: !309)
!318 = !DILocation(line: 162, column: 5, scope: !304, inlinedAt: !309)
!319 = !DILocation(line: 163, column: 10, scope: !304, inlinedAt: !309)
!320 = !DILocation(line: 163, column: 5, scope: !304, inlinedAt: !309)
!321 = !DILocation(line: 164, column: 10, scope: !304, inlinedAt: !309)
!322 = !DILocation(line: 0, scope: !304, inlinedAt: !323)
!323 = distinct !DILocation(line: 194, column: 53, scope: !297)
!324 = !DILocation(line: 158, column: 7, scope: !304, inlinedAt: !323)
!325 = !DILocation(line: 159, column: 10, scope: !304, inlinedAt: !323)
!326 = !DILocation(line: 159, column: 5, scope: !304, inlinedAt: !323)
!327 = !DILocation(line: 160, column: 10, scope: !304, inlinedAt: !323)
!328 = !DILocation(line: 160, column: 5, scope: !304, inlinedAt: !323)
!329 = !DILocation(line: 161, column: 10, scope: !304, inlinedAt: !323)
!330 = !DILocation(line: 161, column: 5, scope: !304, inlinedAt: !323)
!331 = !DILocation(line: 162, column: 10, scope: !304, inlinedAt: !323)
!332 = !DILocation(line: 162, column: 5, scope: !304, inlinedAt: !323)
!333 = !DILocation(line: 163, column: 10, scope: !304, inlinedAt: !323)
!334 = !DILocation(line: 163, column: 5, scope: !304, inlinedAt: !323)
!335 = !DILocation(line: 164, column: 10, scope: !304, inlinedAt: !323)
!336 = !DILocation(line: 164, column: 5, scope: !304, inlinedAt: !323)
!337 = !DILocation(line: 164, column: 5, scope: !304, inlinedAt: !309)
!338 = !DILocation(line: 194, column: 51, scope: !297)
!339 = !DILocation(line: 0, scope: !304, inlinedAt: !340)
!340 = distinct !DILocation(line: 195, column: 17, scope: !297)
!341 = !DILocation(line: 0, scope: !304, inlinedAt: !342)
!342 = distinct !DILocation(line: 195, column: 54, scope: !297)
!343 = !DILocation(line: 191, column: 3, scope: !297)
!344 = distinct !DISubprogram(name: "FStar_UInt128_gte_mask", scope: !1, file: !1, line: 200, type: !31, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !345)
!345 = !{!346, !347}
!346 = !DILocalVariable(name: "a", arg: 1, scope: !344, file: !1, line: 200, type: !33)
!347 = !DILocalVariable(name: "b", arg: 2, scope: !344, file: !1, line: 200, type: !33)
!348 = !DILocation(line: 0, scope: !344)
!349 = !DILocation(line: 204, column: 30, scope: !344)
!350 = !DILocalVariable(name: "x", arg: 1, scope: !351, file: !305, line: 168, type: !3)
!351 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !305, file: !305, line: 168, type: !53, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !352)
!352 = !{!350, !353, !354, !355}
!353 = !DILocalVariable(name: "y", arg: 2, scope: !351, file: !305, line: 168, type: !3)
!354 = !DILocalVariable(name: "low63", scope: !351, file: !305, line: 169, type: !3)
!355 = !DILocalVariable(name: "high_bit", scope: !351, file: !305, line: 173, type: !3)
!356 = !DILocation(line: 0, scope: !351, inlinedAt: !357)
!357 = distinct !DILocation(line: 205, column: 17, scope: !344)
!358 = !DILocation(line: 170, column: 42, scope: !351, inlinedAt: !357)
!359 = !DILocation(line: 171, column: 42, scope: !351, inlinedAt: !357)
!360 = !DILocation(line: 171, column: 75, scope: !351, inlinedAt: !357)
!361 = !DILocation(line: 174, column: 42, scope: !351, inlinedAt: !357)
!362 = !DILocation(line: 175, column: 42, scope: !351, inlinedAt: !357)
!363 = !DILocation(line: 175, column: 75, scope: !351, inlinedAt: !357)
!364 = !DILocation(line: 177, column: 16, scope: !351, inlinedAt: !357)
!365 = !DILocation(line: 0, scope: !304, inlinedAt: !366)
!366 = distinct !DILocation(line: 205, column: 58, scope: !344)
!367 = !DILocation(line: 158, column: 7, scope: !304, inlinedAt: !366)
!368 = !DILocation(line: 159, column: 10, scope: !304, inlinedAt: !366)
!369 = !DILocation(line: 159, column: 5, scope: !304, inlinedAt: !366)
!370 = !DILocation(line: 160, column: 10, scope: !304, inlinedAt: !366)
!371 = !DILocation(line: 160, column: 5, scope: !304, inlinedAt: !366)
!372 = !DILocation(line: 161, column: 10, scope: !304, inlinedAt: !366)
!373 = !DILocation(line: 161, column: 5, scope: !304, inlinedAt: !366)
!374 = !DILocation(line: 162, column: 10, scope: !304, inlinedAt: !366)
!375 = !DILocation(line: 162, column: 5, scope: !304, inlinedAt: !366)
!376 = !DILocation(line: 163, column: 10, scope: !304, inlinedAt: !366)
!377 = !DILocation(line: 163, column: 5, scope: !304, inlinedAt: !366)
!378 = !DILocation(line: 164, column: 10, scope: !304, inlinedAt: !366)
!379 = !DILocation(line: 164, column: 5, scope: !304, inlinedAt: !366)
!380 = !DILocation(line: 165, column: 23, scope: !304, inlinedAt: !366)
!381 = !DILocation(line: 205, column: 57, scope: !344)
!382 = !DILocation(line: 205, column: 55, scope: !344)
!383 = !DILocation(line: 0, scope: !304, inlinedAt: !384)
!384 = distinct !DILocation(line: 206, column: 12, scope: !344)
!385 = !DILocation(line: 0, scope: !351, inlinedAt: !386)
!386 = distinct !DILocation(line: 206, column: 51, scope: !344)
!387 = !DILocation(line: 170, column: 42, scope: !351, inlinedAt: !386)
!388 = !DILocation(line: 171, column: 42, scope: !351, inlinedAt: !386)
!389 = !DILocation(line: 171, column: 75, scope: !351, inlinedAt: !386)
!390 = !DILocation(line: 174, column: 42, scope: !351, inlinedAt: !386)
!391 = !DILocation(line: 175, column: 42, scope: !351, inlinedAt: !386)
!392 = !DILocation(line: 175, column: 75, scope: !351, inlinedAt: !386)
!393 = !DILocation(line: 177, column: 16, scope: !351, inlinedAt: !386)
!394 = !DILocation(line: 206, column: 49, scope: !344)
!395 = !DILocation(line: 206, column: 9, scope: !344)
!396 = !DILocation(line: 0, scope: !351, inlinedAt: !397)
!397 = distinct !DILocation(line: 207, column: 18, scope: !344)
!398 = !DILocation(line: 0, scope: !304, inlinedAt: !399)
!399 = distinct !DILocation(line: 207, column: 59, scope: !344)
!400 = !DILocation(line: 0, scope: !304, inlinedAt: !401)
!401 = distinct !DILocation(line: 208, column: 12, scope: !344)
!402 = !DILocation(line: 0, scope: !351, inlinedAt: !403)
!403 = distinct !DILocation(line: 208, column: 51, scope: !344)
!404 = !DILocation(line: 202, column: 3, scope: !344)
!405 = distinct !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !1, file: !1, line: 213, type: !406, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!33, !3}
!408 = !{!409}
!409 = !DILocalVariable(name: "a", arg: 1, scope: !405, file: !1, line: 213, type: !3)
!410 = !DILocation(line: 0, scope: !405)
!411 = !DILocation(line: 215, column: 34, scope: !405)
!412 = !DILocation(line: 215, column: 3, scope: !405)
!413 = distinct !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !1, file: !1, line: 218, type: !414, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{!3, !33}
!416 = !{!417}
!417 = !DILocalVariable(name: "a", arg: 1, scope: !413, file: !1, line: 218, type: !33)
!418 = !DILocation(line: 0, scope: !413)
!419 = !DILocation(line: 220, column: 3, scope: !413)
!420 = distinct !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !1, file: !1, line: 277, type: !421, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!33, !3, !3}
!423 = !{!424, !425}
!424 = !DILocalVariable(name: "x", arg: 1, scope: !420, file: !1, line: 277, type: !3)
!425 = !DILocalVariable(name: "y", arg: 2, scope: !420, file: !1, line: 277, type: !3)
!426 = !DILocation(line: 0, scope: !420)
!427 = !DILocalVariable(name: "x", arg: 1, scope: !428, file: !1, line: 253, type: !3)
!428 = distinct !DISubprogram(name: "FStar_UInt128_mul_wide_impl", scope: !1, file: !1, line: 253, type: !421, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !429)
!429 = !{!427, !430, !431, !439, !440, !441, !442}
!430 = !DILocalVariable(name: "y", arg: 2, scope: !428, file: !1, line: 253, type: !3)
!431 = !DILocalVariable(name: "scrut", scope: !428, file: !1, line: 255, type: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "K___uint64_t_uint64_t_uint64_t_uint64_t", file: !34, line: 76, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 69, size: 256, elements: !434)
!434 = !{!435, !436, !437, !438}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "fst", scope: !433, file: !34, line: 71, baseType: !3, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !433, file: !34, line: 72, baseType: !3, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thd", scope: !433, file: !34, line: 73, baseType: !3, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !433, file: !34, line: 74, baseType: !3, size: 64, offset: 192)
!439 = !DILocalVariable(name: "u1", scope: !428, file: !1, line: 256, type: !3)
!440 = !DILocalVariable(name: "w3", scope: !428, file: !1, line: 257, type: !3)
!441 = !DILocalVariable(name: "x_", scope: !428, file: !1, line: 258, type: !3)
!442 = !DILocalVariable(name: "t_", scope: !428, file: !1, line: 259, type: !3)
!443 = !DILocation(line: 0, scope: !428, inlinedAt: !444)
!444 = distinct !DILocation(line: 279, column: 10, scope: !420)
!445 = !DILocalVariable(name: "x", arg: 1, scope: !446, file: !1, line: 233, type: !3)
!446 = distinct !DISubprogram(name: "FStar_UInt128_mul_wide_impl_t_", scope: !1, file: !1, line: 233, type: !447, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!432, !3, !3}
!449 = !{!445, !450}
!450 = !DILocalVariable(name: "y", arg: 2, scope: !446, file: !1, line: 233, type: !3)
!451 = !DILocation(line: 0, scope: !446, inlinedAt: !452)
!452 = distinct !DILocation(line: 255, column: 51, scope: !428, inlinedAt: !444)
!453 = !DILocalVariable(name: "a", arg: 1, scope: !454, file: !1, line: 225, type: !3)
!454 = distinct !DISubprogram(name: "FStar_UInt128_u64_mod_32", scope: !1, file: !1, line: 225, type: !455, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!3, !3}
!457 = !{!453}
!458 = !DILocation(line: 0, scope: !454, inlinedAt: !459)
!459 = distinct !DILocation(line: 238, column: 16, scope: !446, inlinedAt: !452)
!460 = !DILocation(line: 227, column: 12, scope: !454, inlinedAt: !459)
!461 = !DILocation(line: 0, scope: !454, inlinedAt: !462)
!462 = distinct !DILocation(line: 239, column: 41, scope: !446, inlinedAt: !452)
!463 = !DILocation(line: 0, scope: !454, inlinedAt: !464)
!464 = distinct !DILocation(line: 239, column: 71, scope: !446, inlinedAt: !452)
!465 = !DILocation(line: 227, column: 12, scope: !454, inlinedAt: !464)
!466 = !DILocation(line: 239, column: 69, scope: !446, inlinedAt: !452)
!467 = !DILocation(line: 0, scope: !454, inlinedAt: !468)
!468 = distinct !DILocation(line: 239, column: 16, scope: !446, inlinedAt: !452)
!469 = !DILocation(line: 227, column: 12, scope: !454, inlinedAt: !468)
!470 = !DILocation(line: 240, column: 18, scope: !446, inlinedAt: !452)
!471 = !DILocation(line: 0, scope: !454, inlinedAt: !472)
!472 = distinct !DILocation(line: 242, column: 11, scope: !446, inlinedAt: !452)
!473 = !DILocation(line: 242, column: 9, scope: !446, inlinedAt: !452)
!474 = !DILocation(line: 0, scope: !454, inlinedAt: !475)
!475 = distinct !DILocation(line: 243, column: 12, scope: !446, inlinedAt: !452)
!476 = !DILocation(line: 0, scope: !454, inlinedAt: !477)
!477 = distinct !DILocation(line: 243, column: 42, scope: !446, inlinedAt: !452)
!478 = !DILocation(line: 243, column: 70, scope: !446, inlinedAt: !452)
!479 = !DILocation(line: 243, column: 9, scope: !446, inlinedAt: !452)
!480 = !DILocation(line: 262, column: 30, scope: !428, inlinedAt: !444)
!481 = !DILocation(line: 264, column: 16, scope: !428, inlinedAt: !444)
!482 = !DILocation(line: 264, column: 11, scope: !428, inlinedAt: !444)
!483 = !DILocation(line: 0, scope: !454, inlinedAt: !484)
!484 = distinct !DILocation(line: 265, column: 13, scope: !428, inlinedAt: !444)
!485 = !DILocation(line: 227, column: 12, scope: !454, inlinedAt: !484)
!486 = !DILocation(line: 265, column: 11, scope: !428, inlinedAt: !444)
!487 = !DILocalVariable(name: "hi", arg: 1, scope: !488, file: !1, line: 248, type: !3)
!488 = distinct !DISubprogram(name: "FStar_UInt128_u32_combine_", scope: !1, file: !1, line: 248, type: !53, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !489)
!489 = !{!487, !490}
!490 = !DILocalVariable(name: "lo", arg: 2, scope: !488, file: !1, line: 248, type: !3)
!491 = !DILocation(line: 0, scope: !488, inlinedAt: !492)
!492 = distinct !DILocation(line: 263, column: 16, scope: !428, inlinedAt: !444)
!493 = !DILocation(line: 250, column: 19, scope: !488, inlinedAt: !492)
!494 = !DILocation(line: 250, column: 13, scope: !488, inlinedAt: !492)
!495 = !{!496}
!496 = distinct !{!496, !497, !"FStar_UInt128_mul_wide_impl: argument 0"}
!497 = distinct !{!497, !"FStar_UInt128_mul_wide_impl"}
!498 = !DILocation(line: 268, column: 9, scope: !428, inlinedAt: !444)
!499 = !DILocation(line: 269, column: 15, scope: !428, inlinedAt: !444)
!500 = !DILocation(line: 269, column: 9, scope: !428, inlinedAt: !444)
!501 = !DILocation(line: 0, scope: !454, inlinedAt: !502)
!502 = distinct !DILocation(line: 271, column: 48, scope: !428, inlinedAt: !444)
!503 = !DILocation(line: 272, column: 11, scope: !428, inlinedAt: !444)
!504 = !DILocation(line: 270, column: 9, scope: !428, inlinedAt: !444)
!505 = !DILocation(line: 279, column: 3, scope: !420)
