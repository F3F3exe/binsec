; ModuleID = 'hacl-c/hacl-c/FStar.c'
source_filename = "hacl-c/hacl-c/FStar.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.FStar_UInt128_uint128 = type { i64, i64 }
%struct.K___uint64_t_uint64_t_uint64_t_uint64_t = type { i64, i64, i64, i64 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
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
  %10 = call fastcc i64 @FStar_UInt128_carry(i64 noundef %7, i64 noundef %3), !dbg !51
  %11 = add i64 %9, %10, !dbg !52
  store i64 %11, i64* %8, align 4, !dbg !43, !tbaa !53
  ret void, !dbg !54
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt128_carry(i64 noundef %0, i64 noundef %1) unnamed_addr #2 !dbg !55 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !59, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i64 %1, metadata !60, metadata !DIExpression()), !dbg !61
  %3 = call fastcc i64 @FStar_UInt128_constant_time_carry(i64 noundef %0, i64 noundef %1), !dbg !62
  ret i64 %3, !dbg !63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_add_mod(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !64 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !66, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !68
  call void @llvm.dbg.value(metadata i64 %2, metadata !66, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !68
  call void @llvm.dbg.value(metadata i64 %3, metadata !67, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !68
  call void @llvm.dbg.value(metadata i64 %4, metadata !67, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !68
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !69
  %7 = add i64 %3, %1, !dbg !70
  store i64 %7, i64* %6, align 4, !dbg !69, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !69
  %9 = add i64 %4, %2, !dbg !71
  %10 = call fastcc i64 @FStar_UInt128_carry(i64 noundef %7, i64 noundef %3), !dbg !72
  %11 = add i64 %9, %10, !dbg !73
  store i64 %11, i64* %8, align 4, !dbg !69, !tbaa !53
  ret void, !dbg !74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_sub(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !75 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !77, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !79
  call void @llvm.dbg.value(metadata i64 %2, metadata !77, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !79
  call void @llvm.dbg.value(metadata i64 %3, metadata !78, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !79
  call void @llvm.dbg.value(metadata i64 %4, metadata !78, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !79
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !80
  %7 = sub i64 %1, %3, !dbg !81
  store i64 %7, i64* %6, align 4, !dbg !80, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !80
  %9 = call fastcc i64 @FStar_UInt128_carry(i64 noundef %1, i64 noundef %7), !dbg !82
  %10 = add i64 %9, %4, !dbg !83
  %11 = sub i64 %2, %10, !dbg !83
  store i64 %11, i64* %8, align 4, !dbg !80, !tbaa !53
  ret void, !dbg !84
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_sub_mod(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !85 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !87, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !89
  call void @llvm.dbg.value(metadata i64 %2, metadata !87, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !89
  call void @llvm.dbg.value(metadata i64 %3, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !89
  call void @llvm.dbg.value(metadata i64 %4, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !89
  call fastcc void @FStar_UInt128_sub_mod_impl(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4), !dbg !90
  ret void, !dbg !91
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @FStar_UInt128_sub_mod_impl(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) unnamed_addr #0 !dbg !92 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !96
  call void @llvm.dbg.value(metadata i64 %2, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !96
  call void @llvm.dbg.value(metadata i64 %3, metadata !95, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !96
  call void @llvm.dbg.value(metadata i64 %4, metadata !95, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !96
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !97
  %7 = sub i64 %1, %3, !dbg !98
  store i64 %7, i64* %6, align 4, !dbg !97, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !97
  %9 = call fastcc i64 @FStar_UInt128_carry(i64 noundef %1, i64 noundef %7), !dbg !99
  %10 = add i64 %9, %4, !dbg !100
  %11 = sub i64 %2, %10, !dbg !100
  store i64 %11, i64* %8, align 4, !dbg !97, !tbaa !53
  ret void, !dbg !101
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_logand(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !102 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !104, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !106
  call void @llvm.dbg.value(metadata i64 %2, metadata !104, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !106
  call void @llvm.dbg.value(metadata i64 %3, metadata !105, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !106
  call void @llvm.dbg.value(metadata i64 %4, metadata !105, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !106
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !107
  %7 = and i64 %3, %1, !dbg !108
  store i64 %7, i64* %6, align 4, !dbg !107, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !107
  %9 = and i64 %4, %2, !dbg !109
  store i64 %9, i64* %8, align 4, !dbg !107, !tbaa !53
  ret void, !dbg !110
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_logxor(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !111 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !115
  call void @llvm.dbg.value(metadata i64 %2, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !115
  call void @llvm.dbg.value(metadata i64 %3, metadata !114, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !115
  call void @llvm.dbg.value(metadata i64 %4, metadata !114, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !115
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !116
  %7 = xor i64 %3, %1, !dbg !117
  store i64 %7, i64* %6, align 4, !dbg !116, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !116
  %9 = xor i64 %4, %2, !dbg !118
  store i64 %9, i64* %8, align 4, !dbg !116, !tbaa !53
  ret void, !dbg !119
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_logor(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !120 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !122, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !124
  call void @llvm.dbg.value(metadata i64 %2, metadata !122, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !124
  call void @llvm.dbg.value(metadata i64 %3, metadata !123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !124
  call void @llvm.dbg.value(metadata i64 %4, metadata !123, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !124
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !125
  %7 = or i64 %3, %1, !dbg !126
  store i64 %7, i64* %6, align 4, !dbg !125, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !125
  %9 = or i64 %4, %2, !dbg !127
  store i64 %9, i64* %8, align 4, !dbg !125, !tbaa !53
  ret void, !dbg !128
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_lognot(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2) local_unnamed_addr #0 !dbg !129 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !134
  call void @llvm.dbg.value(metadata i64 %2, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !134
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !135
  %5 = xor i64 %1, -1, !dbg !136
  store i64 %5, i64* %4, align 4, !dbg !135, !tbaa !45
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !135
  %7 = xor i64 %2, -1, !dbg !137
  store i64 %7, i64* %6, align 4, !dbg !135, !tbaa !53
  ret void, !dbg !138
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_shift_left(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 !dbg !139 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !145
  call void @llvm.dbg.value(metadata i64 %2, metadata !143, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !145
  call void @llvm.dbg.value(metadata i32 %3, metadata !144, metadata !DIExpression()), !dbg !145
  %5 = icmp ult i32 %3, 64, !dbg !146
  br i1 %5, label %6, label %7, !dbg !148

6:                                                ; preds = %4
  call fastcc void @FStar_UInt128_shift_left_small(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3), !dbg !149
  br label %8, !dbg !150

7:                                                ; preds = %4
  call fastcc void @FStar_UInt128_shift_left_large(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i32 noundef %3), !dbg !151
  br label %8, !dbg !152

8:                                                ; preds = %7, %6
  ret void, !dbg !153
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @FStar_UInt128_shift_left_small(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) unnamed_addr #0 !dbg !154 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !158
  call void @llvm.dbg.value(metadata i64 %2, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !158
  call void @llvm.dbg.value(metadata i32 %3, metadata !157, metadata !DIExpression()), !dbg !158
  %5 = icmp eq i32 %3, 0, !dbg !159
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !161
  br i1 %5, label %7, label %9, !dbg !162

7:                                                ; preds = %4
  store i64 %1, i64* %6, align 4, !dbg !163, !tbaa.struct !164
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !163
  store i64 %2, i64* %8, align 4, !dbg !163, !tbaa.struct !166
  br label %14, !dbg !167

9:                                                ; preds = %4
  %10 = zext i32 %3 to i64, !dbg !168
  %11 = shl i64 %1, %10, !dbg !168
  store i64 %11, i64* %6, align 4, !dbg !169, !tbaa !45
  %12 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !169
  %13 = call fastcc i64 @FStar_UInt128_add_u64_shift_left_respec(i64 noundef %2, i64 noundef %1, i32 noundef %3), !dbg !170
  store i64 %13, i64* %12, align 4, !dbg !169, !tbaa !53
  br label %14, !dbg !171

14:                                               ; preds = %9, %7
  ret void, !dbg !172
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @FStar_UInt128_shift_left_large(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i32 noundef %2) unnamed_addr #0 !dbg !173 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !177
  call void @llvm.dbg.value(metadata i64 undef, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !177
  call void @llvm.dbg.value(metadata i32 %2, metadata !176, metadata !DIExpression()), !dbg !177
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !178
  store i64 0, i64* %4, align 4, !dbg !178, !tbaa !45
  %5 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !178
  %6 = add i32 %2, -64, !dbg !179
  %7 = zext i32 %6 to i64, !dbg !180
  %8 = shl i64 %1, %7, !dbg !180
  store i64 %8, i64* %5, align 4, !dbg !178, !tbaa !53
  ret void, !dbg !181
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_shift_right(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 !dbg !182 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !186
  call void @llvm.dbg.value(metadata i64 %2, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !186
  call void @llvm.dbg.value(metadata i32 %3, metadata !185, metadata !DIExpression()), !dbg !186
  %5 = icmp ult i32 %3, 64, !dbg !187
  br i1 %5, label %6, label %7, !dbg !189

6:                                                ; preds = %4
  call fastcc void @FStar_UInt128_shift_right_small(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3), !dbg !190
  br label %8, !dbg !191

7:                                                ; preds = %4
  call fastcc void @FStar_UInt128_shift_right_large(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %2, i32 noundef %3), !dbg !192
  br label %8, !dbg !193

8:                                                ; preds = %7, %6
  ret void, !dbg !194
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @FStar_UInt128_shift_right_small(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) unnamed_addr #0 !dbg !195 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !197, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !199
  call void @llvm.dbg.value(metadata i64 %2, metadata !197, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !199
  call void @llvm.dbg.value(metadata i32 %3, metadata !198, metadata !DIExpression()), !dbg !199
  %5 = icmp eq i32 %3, 0, !dbg !200
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !202
  br i1 %5, label %7, label %9, !dbg !203

7:                                                ; preds = %4
  store i64 %1, i64* %6, align 4, !dbg !204, !tbaa.struct !164
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !204
  store i64 %2, i64* %8, align 4, !dbg !204, !tbaa.struct !166
  br label %14, !dbg !205

9:                                                ; preds = %4
  %10 = call fastcc i64 @FStar_UInt128_add_u64_shift_right_respec(i64 noundef %2, i64 noundef %1, i32 noundef %3), !dbg !206
  store i64 %10, i64* %6, align 4, !dbg !207, !tbaa !45
  %11 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !207
  %12 = zext i32 %3 to i64, !dbg !208
  %13 = lshr i64 %2, %12, !dbg !208
  store i64 %13, i64* %11, align 4, !dbg !207, !tbaa !53
  br label %14, !dbg !209

14:                                               ; preds = %9, %7
  ret void, !dbg !210
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @FStar_UInt128_shift_right_large(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i32 noundef %2) unnamed_addr #0 !dbg !211 {
  call void @llvm.dbg.value(metadata i64 undef, metadata !213, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !215
  call void @llvm.dbg.value(metadata i64 %1, metadata !213, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !215
  call void @llvm.dbg.value(metadata i32 %2, metadata !214, metadata !DIExpression()), !dbg !215
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !216
  %5 = add i32 %2, -64, !dbg !217
  %6 = zext i32 %5 to i64, !dbg !218
  %7 = lshr i64 %1, %6, !dbg !218
  store i64 %7, i64* %4, align 4, !dbg !216, !tbaa !45
  %8 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !216
  store i64 0, i64* %8, align 4, !dbg !216, !tbaa !53
  ret void, !dbg !219
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_eq_mask(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !220 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !222, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !224
  call void @llvm.dbg.value(metadata i64 %2, metadata !222, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !224
  call void @llvm.dbg.value(metadata i64 %3, metadata !223, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !224
  call void @llvm.dbg.value(metadata i64 %4, metadata !223, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !224
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !225
  %7 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %1, i64 noundef %3), !dbg !226
  %8 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %2, i64 noundef %4), !dbg !227
  %9 = and i64 %8, %7, !dbg !228
  store i64 %9, i64* %6, align 4, !dbg !225, !tbaa !45
  %10 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !225
  store i64 %9, i64* %10, align 4, !dbg !225, !tbaa !53
  ret void, !dbg !229
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %0, i64 noundef %1) unnamed_addr #2 !dbg !230 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !233, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i64 %1, metadata !234, metadata !DIExpression()), !dbg !235
  %3 = xor i64 %0, %1, !dbg !236
  %4 = xor i64 %3, -1, !dbg !236
  call void @llvm.dbg.value(metadata i64 %4, metadata !233, metadata !DIExpression()), !dbg !235
  %5 = shl i64 %4, 32, !dbg !237
  %6 = and i64 %5, %4, !dbg !238
  call void @llvm.dbg.value(metadata i64 %6, metadata !233, metadata !DIExpression()), !dbg !235
  %7 = shl i64 %6, 16, !dbg !239
  %8 = and i64 %7, %6, !dbg !240
  call void @llvm.dbg.value(metadata i64 %8, metadata !233, metadata !DIExpression()), !dbg !235
  %9 = shl i64 %8, 8, !dbg !241
  %10 = and i64 %9, %8, !dbg !242
  call void @llvm.dbg.value(metadata i64 %10, metadata !233, metadata !DIExpression()), !dbg !235
  %11 = shl i64 %10, 4, !dbg !243
  %12 = and i64 %11, %10, !dbg !244
  call void @llvm.dbg.value(metadata i64 %12, metadata !233, metadata !DIExpression()), !dbg !235
  %13 = shl i64 %12, 2, !dbg !245
  %14 = and i64 %13, %12, !dbg !246
  call void @llvm.dbg.value(metadata i64 %14, metadata !233, metadata !DIExpression()), !dbg !235
  %15 = shl i64 %14, 1, !dbg !247
  %16 = and i64 %15, %14, !dbg !248
  call void @llvm.dbg.value(metadata i64 %16, metadata !233, metadata !DIExpression()), !dbg !235
  %17 = ashr i64 %16, 63, !dbg !249
  ret i64 %17, !dbg !250
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_gte_mask(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 !dbg !251 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !253, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !255
  call void @llvm.dbg.value(metadata i64 %2, metadata !253, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !255
  call void @llvm.dbg.value(metadata i64 %3, metadata !254, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !255
  call void @llvm.dbg.value(metadata i64 %4, metadata !254, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !255
  %6 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !256
  %7 = call fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %2, i64 noundef %4), !dbg !257
  %8 = call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %2, i64 noundef %4), !dbg !258
  %9 = xor i64 %8, -1, !dbg !259
  %10 = and i64 %7, %9, !dbg !260
  %11 = call fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %1, i64 noundef %3), !dbg !261
  %12 = and i64 %11, %8, !dbg !262
  %13 = or i64 %12, %10, !dbg !263
  store i64 %13, i64* %6, align 4, !dbg !256, !tbaa !45
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !256
  store i64 %13, i64* %14, align 4, !dbg !256, !tbaa !53
  ret void, !dbg !264
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %0, i64 noundef %1) unnamed_addr #2 !dbg !265 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !267, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 %1, metadata !268, metadata !DIExpression()), !dbg !271
  %3 = and i64 %0, 9223372036854775807, !dbg !272
  %4 = and i64 %1, 9223372036854775807, !dbg !273
  %5 = icmp uge i64 %3, %4, !dbg !274
  call void @llvm.dbg.value(metadata i1 %5, metadata !269, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !271
  %6 = and i64 %0, -9223372036854775808, !dbg !275
  %7 = and i64 %1, -9223372036854775808, !dbg !276
  %8 = icmp sge i64 %6, %7, !dbg !277
  call void @llvm.dbg.value(metadata i1 %8, metadata !270, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !271
  %9 = and i1 %5, %8, !dbg !278
  %10 = sext i1 %9 to i64, !dbg !278
  ret i64 %10, !dbg !279
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_uint64_to_uint128(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1) local_unnamed_addr #0 !dbg !280 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !284, metadata !DIExpression()), !dbg !285
  %3 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !286
  store i64 %1, i64* %3, align 4, !dbg !286, !tbaa !45
  %4 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !286
  store i64 0, i64* %4, align 4, !dbg !286, !tbaa !53
  ret void, !dbg !287
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @FStar_UInt128_uint128_to_uint64(i64 returned %0, i64 %1) local_unnamed_addr #2 !dbg !288 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !293
  call void @llvm.dbg.value(metadata i64 %1, metadata !292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !293
  ret i64 %0, !dbg !294
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @FStar_UInt128_mul_wide(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 !dbg !295 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !299, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %2, metadata !300, metadata !DIExpression()), !dbg !301
  call fastcc void @FStar_UInt128_mul_wide_impl(%struct.FStar_UInt128_uint128* sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1, i64 noundef %2), !dbg !302
  ret void, !dbg !303
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal fastcc void @FStar_UInt128_mul_wide_impl(%struct.FStar_UInt128_uint128* noalias nocapture writeonly sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 !dbg !304 {
  %4 = alloca %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !306, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i64 %2, metadata !307, metadata !DIExpression()), !dbg !320
  %5 = bitcast %struct.K___uint64_t_uint64_t_uint64_t_uint64_t* %4 to i8*, !dbg !321
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #6, !dbg !321
  call void @llvm.dbg.declare(metadata %struct.K___uint64_t_uint64_t_uint64_t_uint64_t* %4, metadata !308, metadata !DIExpression()), !dbg !322
  call fastcc void @FStar_UInt128_mul_wide_impl_t_(%struct.K___uint64_t_uint64_t_uint64_t_uint64_t* nonnull sret(%struct.K___uint64_t_uint64_t_uint64_t_uint64_t) align 4 %4, i64 noundef %1, i64 noundef %2), !dbg !323
  %6 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, %struct.K___uint64_t_uint64_t_uint64_t_uint64_t* %4, i32 0, i32 0, !dbg !324
  %7 = load i64, i64* %6, align 8, !dbg !324, !tbaa !325
  call void @llvm.dbg.value(metadata i64 %7, metadata !316, metadata !DIExpression()), !dbg !320
  %8 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, %struct.K___uint64_t_uint64_t_uint64_t_uint64_t* %4, i32 0, i32 1, !dbg !327
  %9 = load i64, i64* %8, align 8, !dbg !327, !tbaa !328
  call void @llvm.dbg.value(metadata i64 %9, metadata !317, metadata !DIExpression()), !dbg !320
  %10 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, %struct.K___uint64_t_uint64_t_uint64_t_uint64_t* %4, i32 0, i32 2, !dbg !329
  %11 = load i64, i64* %10, align 8, !dbg !329, !tbaa !330
  call void @llvm.dbg.value(metadata i64 %11, metadata !318, metadata !DIExpression()), !dbg !320
  %12 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, %struct.K___uint64_t_uint64_t_uint64_t_uint64_t* %4, i32 0, i32 3, !dbg !331
  %13 = load i64, i64* %12, align 8, !dbg !331, !tbaa !332
  call void @llvm.dbg.value(metadata i64 %13, metadata !319, metadata !DIExpression()), !dbg !320
  %14 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 0, !dbg !333
  %15 = lshr i64 %2, 32, !dbg !334
  %16 = mul i64 %7, %15, !dbg !335
  %17 = call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %13), !dbg !336
  %18 = add i64 %17, %16, !dbg !337
  %19 = call fastcc i64 @FStar_UInt128_u32_combine_(i64 noundef %18, i64 noundef %9), !dbg !338
  store i64 %19, i64* %14, align 4, !dbg !333, !tbaa !45
  %20 = getelementptr inbounds %struct.FStar_UInt128_uint128, %struct.FStar_UInt128_uint128* %0, i32 0, i32 1, !dbg !333
  %21 = mul i64 %11, %15, !dbg !339
  %22 = lshr i64 %13, 32, !dbg !340
  %23 = add i64 %22, %21, !dbg !341
  %24 = lshr i64 %18, 32, !dbg !342
  %25 = add i64 %23, %24, !dbg !343
  store i64 %25, i64* %20, align 4, !dbg !333, !tbaa !53
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #6, !dbg !344
  ret void, !dbg !344
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt128_constant_time_carry(i64 noundef %0, i64 noundef %1) unnamed_addr #2 !dbg !345 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !347, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 %1, metadata !348, metadata !DIExpression()), !dbg !349
  %3 = xor i64 %1, %0, !dbg !350
  %4 = sub i64 %0, %1, !dbg !351
  %5 = xor i64 %4, %1, !dbg !352
  %6 = or i64 %5, %3, !dbg !353
  %7 = xor i64 %6, %0, !dbg !354
  %8 = lshr i64 %7, 63, !dbg !355
  ret i64 %8, !dbg !356
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt128_add_u64_shift_left_respec(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 !dbg !357 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !361, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.value(metadata i64 %1, metadata !362, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.value(metadata i32 %2, metadata !363, metadata !DIExpression()), !dbg !364
  %4 = call fastcc i64 @FStar_UInt128_add_u64_shift_left(i64 noundef %0, i64 noundef %1, i32 noundef %2), !dbg !365
  ret i64 %4, !dbg !366
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt128_add_u64_shift_left(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 !dbg !367 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !369, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %1, metadata !370, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %2, metadata !371, metadata !DIExpression()), !dbg !372
  %4 = zext i32 %2 to i64, !dbg !373
  %5 = shl i64 %0, %4, !dbg !373
  %6 = sub i32 64, %2, !dbg !374
  %7 = zext i32 %6 to i64, !dbg !375
  %8 = lshr i64 %1, %7, !dbg !375
  %9 = add i64 %8, %5, !dbg !376
  ret i64 %9, !dbg !377
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt128_add_u64_shift_right_respec(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 !dbg !378 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !380, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %1, metadata !381, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i32 %2, metadata !382, metadata !DIExpression()), !dbg !383
  %4 = call fastcc i64 @FStar_UInt128_add_u64_shift_right(i64 noundef %0, i64 noundef %1, i32 noundef %2), !dbg !384
  ret i64 %4, !dbg !385
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt128_add_u64_shift_right(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 !dbg !386 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !388, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i64 %1, metadata !389, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i32 %2, metadata !390, metadata !DIExpression()), !dbg !391
  %4 = zext i32 %2 to i64, !dbg !392
  %5 = lshr i64 %1, %4, !dbg !392
  %6 = sub i32 64, %2, !dbg !393
  %7 = zext i32 %6 to i64, !dbg !394
  %8 = shl i64 %0, %7, !dbg !394
  %9 = add i64 %8, %5, !dbg !395
  ret i64 %9, !dbg !396
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @FStar_UInt128_mul_wide_impl_t_(%struct.K___uint64_t_uint64_t_uint64_t_uint64_t* noalias nocapture writeonly sret(%struct.K___uint64_t_uint64_t_uint64_t_uint64_t) align 4 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !397 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !401, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64 %2, metadata !402, metadata !DIExpression()), !dbg !403
  %4 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, %struct.K___uint64_t_uint64_t_uint64_t_uint64_t* %0, i32 0, i32 0, !dbg !404
  %5 = call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %1), !dbg !405
  store i64 %5, i64* %4, align 4, !dbg !404, !tbaa !325
  %6 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, %struct.K___uint64_t_uint64_t_uint64_t_uint64_t* %0, i32 0, i32 1, !dbg !404
  %7 = call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %2), !dbg !406
  %8 = mul i64 %7, %5, !dbg !407
  %9 = call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %8), !dbg !408
  store i64 %9, i64* %6, align 4, !dbg !404, !tbaa !328
  %10 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, %struct.K___uint64_t_uint64_t_uint64_t_uint64_t* %0, i32 0, i32 2, !dbg !404
  %11 = lshr i64 %1, 32, !dbg !409
  store i64 %11, i64* %10, align 4, !dbg !404, !tbaa !330
  %12 = getelementptr inbounds %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, %struct.K___uint64_t_uint64_t_uint64_t_uint64_t* %0, i32 0, i32 3, !dbg !404
  %13 = mul i64 %7, %11, !dbg !410
  %14 = lshr i64 %8, 32, !dbg !411
  %15 = add i64 %14, %13, !dbg !412
  store i64 %15, i64* %12, align 4, !dbg !404, !tbaa !332
  ret void, !dbg !413
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt128_u32_combine_(i64 noundef %0, i64 noundef %1) unnamed_addr #2 !dbg !414 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !416, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i64 %1, metadata !417, metadata !DIExpression()), !dbg !418
  %3 = shl i64 %0, 32, !dbg !419
  %4 = add i64 %3, %1, !dbg !420
  ret i64 %4, !dbg !421
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %0) unnamed_addr #2 !dbg !422 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !426, metadata !DIExpression()), !dbg !427
  %2 = and i64 %0, 4294967295, !dbg !428
  ret i64 %2, !dbg !429
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!51 = !DILocation(line: 43, column: 35, scope: !30)
!52 = !DILocation(line: 43, column: 33, scope: !30)
!53 = !{!46, !47, i64 8}
!54 = !DILocation(line: 39, column: 3, scope: !30)
!55 = distinct !DISubprogram(name: "FStar_UInt128_carry", scope: !1, file: !1, line: 32, type: !56, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !58)
!56 = !DISubroutineType(types: !57)
!57 = !{!3, !3, !3}
!58 = !{!59, !60}
!59 = !DILocalVariable(name: "a", arg: 1, scope: !55, file: !1, line: 32, type: !3)
!60 = !DILocalVariable(name: "b", arg: 2, scope: !55, file: !1, line: 32, type: !3)
!61 = !DILocation(line: 0, scope: !55)
!62 = !DILocation(line: 34, column: 10, scope: !55)
!63 = !DILocation(line: 34, column: 3, scope: !55)
!64 = distinct !DISubprogram(name: "FStar_UInt128_add_mod", scope: !1, file: !1, line: 48, type: !31, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!65 = !{!66, !67}
!66 = !DILocalVariable(name: "a", arg: 1, scope: !64, file: !1, line: 48, type: !33)
!67 = !DILocalVariable(name: "b", arg: 2, scope: !64, file: !1, line: 48, type: !33)
!68 = !DILocation(line: 0, scope: !64)
!69 = !DILocation(line: 52, column: 30, scope: !64)
!70 = !DILocation(line: 53, column: 22, scope: !64)
!71 = !DILocation(line: 54, column: 24, scope: !64)
!72 = !DILocation(line: 54, column: 35, scope: !64)
!73 = !DILocation(line: 54, column: 33, scope: !64)
!74 = !DILocation(line: 50, column: 3, scope: !64)
!75 = distinct !DISubprogram(name: "FStar_UInt128_sub", scope: !1, file: !1, line: 59, type: !31, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!76 = !{!77, !78}
!77 = !DILocalVariable(name: "a", arg: 1, scope: !75, file: !1, line: 59, type: !33)
!78 = !DILocalVariable(name: "b", arg: 2, scope: !75, file: !1, line: 59, type: !33)
!79 = !DILocation(line: 0, scope: !75)
!80 = !DILocation(line: 63, column: 30, scope: !75)
!81 = !DILocation(line: 64, column: 22, scope: !75)
!82 = !DILocation(line: 65, column: 35, scope: !75)
!83 = !DILocation(line: 65, column: 33, scope: !75)
!84 = !DILocation(line: 61, column: 3, scope: !75)
!85 = distinct !DISubprogram(name: "FStar_UInt128_sub_mod", scope: !1, file: !1, line: 82, type: !31, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!86 = !{!87, !88}
!87 = !DILocalVariable(name: "a", arg: 1, scope: !85, file: !1, line: 82, type: !33)
!88 = !DILocalVariable(name: "b", arg: 2, scope: !85, file: !1, line: 82, type: !33)
!89 = !DILocation(line: 0, scope: !85)
!90 = !DILocation(line: 84, column: 10, scope: !85)
!91 = !DILocation(line: 84, column: 3, scope: !85)
!92 = distinct !DISubprogram(name: "FStar_UInt128_sub_mod_impl", scope: !1, file: !1, line: 71, type: !31, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!93 = !{!94, !95}
!94 = !DILocalVariable(name: "a", arg: 1, scope: !92, file: !1, line: 71, type: !33)
!95 = !DILocalVariable(name: "b", arg: 2, scope: !92, file: !1, line: 71, type: !33)
!96 = !DILocation(line: 0, scope: !92)
!97 = !DILocation(line: 75, column: 30, scope: !92)
!98 = !DILocation(line: 76, column: 22, scope: !92)
!99 = !DILocation(line: 77, column: 35, scope: !92)
!100 = !DILocation(line: 77, column: 33, scope: !92)
!101 = !DILocation(line: 73, column: 3, scope: !92)
!102 = distinct !DISubprogram(name: "FStar_UInt128_logand", scope: !1, file: !1, line: 87, type: !31, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!103 = !{!104, !105}
!104 = !DILocalVariable(name: "a", arg: 1, scope: !102, file: !1, line: 87, type: !33)
!105 = !DILocalVariable(name: "b", arg: 2, scope: !102, file: !1, line: 87, type: !33)
!106 = !DILocation(line: 0, scope: !102)
!107 = !DILocation(line: 89, column: 34, scope: !102)
!108 = !DILocation(line: 89, column: 49, scope: !102)
!109 = !DILocation(line: 89, column: 73, scope: !102)
!110 = !DILocation(line: 89, column: 3, scope: !102)
!111 = distinct !DISubprogram(name: "FStar_UInt128_logxor", scope: !1, file: !1, line: 92, type: !31, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !112)
!112 = !{!113, !114}
!113 = !DILocalVariable(name: "a", arg: 1, scope: !111, file: !1, line: 92, type: !33)
!114 = !DILocalVariable(name: "b", arg: 2, scope: !111, file: !1, line: 92, type: !33)
!115 = !DILocation(line: 0, scope: !111)
!116 = !DILocation(line: 94, column: 34, scope: !111)
!117 = !DILocation(line: 94, column: 49, scope: !111)
!118 = !DILocation(line: 94, column: 73, scope: !111)
!119 = !DILocation(line: 94, column: 3, scope: !111)
!120 = distinct !DISubprogram(name: "FStar_UInt128_logor", scope: !1, file: !1, line: 97, type: !31, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!121 = !{!122, !123}
!122 = !DILocalVariable(name: "a", arg: 1, scope: !120, file: !1, line: 97, type: !33)
!123 = !DILocalVariable(name: "b", arg: 2, scope: !120, file: !1, line: 97, type: !33)
!124 = !DILocation(line: 0, scope: !120)
!125 = !DILocation(line: 99, column: 34, scope: !120)
!126 = !DILocation(line: 99, column: 49, scope: !120)
!127 = !DILocation(line: 99, column: 73, scope: !120)
!128 = !DILocation(line: 99, column: 3, scope: !120)
!129 = distinct !DISubprogram(name: "FStar_UInt128_lognot", scope: !1, file: !1, line: 102, type: !130, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{!33, !33}
!132 = !{!133}
!133 = !DILocalVariable(name: "a", arg: 1, scope: !129, file: !1, line: 102, type: !33)
!134 = !DILocation(line: 0, scope: !129)
!135 = !DILocation(line: 104, column: 34, scope: !129)
!136 = !DILocation(line: 104, column: 43, scope: !129)
!137 = !DILocation(line: 104, column: 59, scope: !129)
!138 = !DILocation(line: 104, column: 3, scope: !129)
!139 = distinct !DISubprogram(name: "FStar_UInt128_shift_left", scope: !1, file: !1, line: 141, type: !140, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{!33, !33, !8}
!142 = !{!143, !144}
!143 = !DILocalVariable(name: "a", arg: 1, scope: !139, file: !1, line: 141, type: !33)
!144 = !DILocalVariable(name: "s", arg: 2, scope: !139, file: !1, line: 141, type: !8)
!145 = !DILocation(line: 0, scope: !139)
!146 = !DILocation(line: 143, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !1, line: 143, column: 7)
!148 = !DILocation(line: 143, column: 7, scope: !139)
!149 = !DILocation(line: 144, column: 12, scope: !147)
!150 = !DILocation(line: 144, column: 5, scope: !147)
!151 = !DILocation(line: 146, column: 12, scope: !147)
!152 = !DILocation(line: 146, column: 5, scope: !147)
!153 = !DILocation(line: 147, column: 1, scope: !139)
!154 = distinct !DISubprogram(name: "FStar_UInt128_shift_left_small", scope: !1, file: !1, line: 120, type: !140, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!155 = !{!156, !157}
!156 = !DILocalVariable(name: "a", arg: 1, scope: !154, file: !1, line: 120, type: !33)
!157 = !DILocalVariable(name: "s", arg: 2, scope: !154, file: !1, line: 120, type: !8)
!158 = !DILocation(line: 0, scope: !154)
!159 = !DILocation(line: 122, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !1, line: 122, column: 7)
!161 = !DILocation(line: 0, scope: !160)
!162 = !DILocation(line: 122, column: 7, scope: !154)
!163 = !DILocation(line: 123, column: 12, scope: !160)
!164 = !{i64 0, i64 8, !165, i64 8, i64 8, !165}
!165 = !{!47, !47, i64 0}
!166 = !{i64 0, i64 8, !165}
!167 = !DILocation(line: 123, column: 5, scope: !160)
!168 = !DILocation(line: 128, column: 24, scope: !160)
!169 = !DILocation(line: 127, column: 32, scope: !160)
!170 = !DILocation(line: 129, column: 19, scope: !160)
!171 = !DILocation(line: 125, column: 5, scope: !160)
!172 = !DILocation(line: 132, column: 1, scope: !154)
!173 = distinct !DISubprogram(name: "FStar_UInt128_shift_left_large", scope: !1, file: !1, line: 135, type: !140, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !174)
!174 = !{!175, !176}
!175 = !DILocalVariable(name: "a", arg: 1, scope: !173, file: !1, line: 135, type: !33)
!176 = !DILocalVariable(name: "s", arg: 2, scope: !173, file: !1, line: 135, type: !8)
!177 = !DILocation(line: 0, scope: !173)
!178 = !DILocation(line: 138, column: 29, scope: !173)
!179 = !DILocation(line: 138, column: 72, scope: !173)
!180 = !DILocation(line: 138, column: 66, scope: !173)
!181 = !DILocation(line: 137, column: 3, scope: !173)
!182 = distinct !DISubprogram(name: "FStar_UInt128_shift_right", scope: !1, file: !1, line: 181, type: !140, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !183)
!183 = !{!184, !185}
!184 = !DILocalVariable(name: "a", arg: 1, scope: !182, file: !1, line: 181, type: !33)
!185 = !DILocalVariable(name: "s", arg: 2, scope: !182, file: !1, line: 181, type: !8)
!186 = !DILocation(line: 0, scope: !182)
!187 = !DILocation(line: 183, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !182, file: !1, line: 183, column: 7)
!189 = !DILocation(line: 183, column: 7, scope: !182)
!190 = !DILocation(line: 184, column: 12, scope: !188)
!191 = !DILocation(line: 184, column: 5, scope: !188)
!192 = !DILocation(line: 186, column: 12, scope: !188)
!193 = !DILocation(line: 186, column: 5, scope: !188)
!194 = !DILocation(line: 187, column: 1, scope: !182)
!195 = distinct !DISubprogram(name: "FStar_UInt128_shift_right_small", scope: !1, file: !1, line: 160, type: !140, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !196)
!196 = !{!197, !198}
!197 = !DILocalVariable(name: "a", arg: 1, scope: !195, file: !1, line: 160, type: !33)
!198 = !DILocalVariable(name: "s", arg: 2, scope: !195, file: !1, line: 160, type: !8)
!199 = !DILocation(line: 0, scope: !195)
!200 = !DILocation(line: 162, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !195, file: !1, line: 162, column: 7)
!202 = !DILocation(line: 0, scope: !201)
!203 = !DILocation(line: 162, column: 7, scope: !195)
!204 = !DILocation(line: 163, column: 12, scope: !201)
!205 = !DILocation(line: 163, column: 5, scope: !201)
!206 = !DILocation(line: 168, column: 18, scope: !201)
!207 = !DILocation(line: 167, column: 32, scope: !201)
!208 = !DILocation(line: 169, column: 26, scope: !201)
!209 = !DILocation(line: 165, column: 5, scope: !201)
!210 = !DILocation(line: 172, column: 1, scope: !195)
!211 = distinct !DISubprogram(name: "FStar_UInt128_shift_right_large", scope: !1, file: !1, line: 175, type: !140, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !212)
!212 = !{!213, !214}
!213 = !DILocalVariable(name: "a", arg: 1, scope: !211, file: !1, line: 175, type: !33)
!214 = !DILocalVariable(name: "s", arg: 2, scope: !211, file: !1, line: 175, type: !8)
!215 = !DILocation(line: 0, scope: !211)
!216 = !DILocation(line: 178, column: 29, scope: !211)
!217 = !DILocation(line: 178, column: 51, scope: !211)
!218 = !DILocation(line: 178, column: 45, scope: !211)
!219 = !DILocation(line: 177, column: 3, scope: !211)
!220 = distinct !DISubprogram(name: "FStar_UInt128_eq_mask", scope: !1, file: !1, line: 189, type: !31, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !221)
!221 = !{!222, !223}
!222 = !DILocalVariable(name: "a", arg: 1, scope: !220, file: !1, line: 189, type: !33)
!223 = !DILocalVariable(name: "b", arg: 2, scope: !220, file: !1, line: 189, type: !33)
!224 = !DILocation(line: 0, scope: !220)
!225 = !DILocation(line: 193, column: 30, scope: !220)
!226 = !DILocation(line: 194, column: 16, scope: !220)
!227 = !DILocation(line: 194, column: 53, scope: !220)
!228 = !DILocation(line: 194, column: 51, scope: !220)
!229 = !DILocation(line: 191, column: 3, scope: !220)
!230 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !231, file: !231, line: 157, type: !56, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!231 = !DIFile(filename: "hacl-c/hacl-c/kremlib_base.h", directory: "/mnt/c/Users/fwill/Documents/HS24/semester_project/tools/binsec/binsec/examples/hacl", checksumkind: CSK_MD5, checksum: "d6560fd4701aab11aac1f04efb4ba74f")
!232 = !{!233, !234}
!233 = !DILocalVariable(name: "x", arg: 1, scope: !230, file: !231, line: 157, type: !3)
!234 = !DILocalVariable(name: "y", arg: 2, scope: !230, file: !231, line: 157, type: !3)
!235 = !DILocation(line: 0, scope: !230)
!236 = !DILocation(line: 158, column: 7, scope: !230)
!237 = !DILocation(line: 159, column: 10, scope: !230)
!238 = !DILocation(line: 159, column: 5, scope: !230)
!239 = !DILocation(line: 160, column: 10, scope: !230)
!240 = !DILocation(line: 160, column: 5, scope: !230)
!241 = !DILocation(line: 161, column: 10, scope: !230)
!242 = !DILocation(line: 161, column: 5, scope: !230)
!243 = !DILocation(line: 162, column: 10, scope: !230)
!244 = !DILocation(line: 162, column: 5, scope: !230)
!245 = !DILocation(line: 163, column: 10, scope: !230)
!246 = !DILocation(line: 163, column: 5, scope: !230)
!247 = !DILocation(line: 164, column: 10, scope: !230)
!248 = !DILocation(line: 164, column: 5, scope: !230)
!249 = !DILocation(line: 165, column: 23, scope: !230)
!250 = !DILocation(line: 165, column: 3, scope: !230)
!251 = distinct !DISubprogram(name: "FStar_UInt128_gte_mask", scope: !1, file: !1, line: 200, type: !31, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!252 = !{!253, !254}
!253 = !DILocalVariable(name: "a", arg: 1, scope: !251, file: !1, line: 200, type: !33)
!254 = !DILocalVariable(name: "b", arg: 2, scope: !251, file: !1, line: 200, type: !33)
!255 = !DILocation(line: 0, scope: !251)
!256 = !DILocation(line: 204, column: 30, scope: !251)
!257 = !DILocation(line: 205, column: 17, scope: !251)
!258 = !DILocation(line: 205, column: 58, scope: !251)
!259 = !DILocation(line: 205, column: 57, scope: !251)
!260 = !DILocation(line: 205, column: 55, scope: !251)
!261 = !DILocation(line: 206, column: 51, scope: !251)
!262 = !DILocation(line: 206, column: 49, scope: !251)
!263 = !DILocation(line: 206, column: 9, scope: !251)
!264 = !DILocation(line: 202, column: 3, scope: !251)
!265 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !231, file: !231, line: 168, type: !56, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DILocalVariable(name: "x", arg: 1, scope: !265, file: !231, line: 168, type: !3)
!268 = !DILocalVariable(name: "y", arg: 2, scope: !265, file: !231, line: 168, type: !3)
!269 = !DILocalVariable(name: "low63", scope: !265, file: !231, line: 169, type: !3)
!270 = !DILocalVariable(name: "high_bit", scope: !265, file: !231, line: 173, type: !3)
!271 = !DILocation(line: 0, scope: !265)
!272 = !DILocation(line: 170, column: 42, scope: !265)
!273 = !DILocation(line: 171, column: 42, scope: !265)
!274 = !DILocation(line: 171, column: 75, scope: !265)
!275 = !DILocation(line: 174, column: 42, scope: !265)
!276 = !DILocation(line: 175, column: 42, scope: !265)
!277 = !DILocation(line: 175, column: 75, scope: !265)
!278 = !DILocation(line: 177, column: 16, scope: !265)
!279 = !DILocation(line: 177, column: 3, scope: !265)
!280 = distinct !DISubprogram(name: "FStar_UInt128_uint64_to_uint128", scope: !1, file: !1, line: 213, type: !281, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{!33, !3}
!283 = !{!284}
!284 = !DILocalVariable(name: "a", arg: 1, scope: !280, file: !1, line: 213, type: !3)
!285 = !DILocation(line: 0, scope: !280)
!286 = !DILocation(line: 215, column: 34, scope: !280)
!287 = !DILocation(line: 215, column: 3, scope: !280)
!288 = distinct !DISubprogram(name: "FStar_UInt128_uint128_to_uint64", scope: !1, file: !1, line: 218, type: !289, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{!3, !33}
!291 = !{!292}
!292 = !DILocalVariable(name: "a", arg: 1, scope: !288, file: !1, line: 218, type: !33)
!293 = !DILocation(line: 0, scope: !288)
!294 = !DILocation(line: 220, column: 3, scope: !288)
!295 = distinct !DISubprogram(name: "FStar_UInt128_mul_wide", scope: !1, file: !1, line: 277, type: !296, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!33, !3, !3}
!298 = !{!299, !300}
!299 = !DILocalVariable(name: "x", arg: 1, scope: !295, file: !1, line: 277, type: !3)
!300 = !DILocalVariable(name: "y", arg: 2, scope: !295, file: !1, line: 277, type: !3)
!301 = !DILocation(line: 0, scope: !295)
!302 = !DILocation(line: 279, column: 10, scope: !295)
!303 = !DILocation(line: 279, column: 3, scope: !295)
!304 = distinct !DISubprogram(name: "FStar_UInt128_mul_wide_impl", scope: !1, file: !1, line: 253, type: !296, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !305)
!305 = !{!306, !307, !308, !316, !317, !318, !319}
!306 = !DILocalVariable(name: "x", arg: 1, scope: !304, file: !1, line: 253, type: !3)
!307 = !DILocalVariable(name: "y", arg: 2, scope: !304, file: !1, line: 253, type: !3)
!308 = !DILocalVariable(name: "scrut", scope: !304, file: !1, line: 255, type: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "K___uint64_t_uint64_t_uint64_t_uint64_t", file: !34, line: 76, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 69, size: 256, elements: !311)
!311 = !{!312, !313, !314, !315}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "fst", scope: !310, file: !34, line: 71, baseType: !3, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !310, file: !34, line: 72, baseType: !3, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "thd", scope: !310, file: !34, line: 73, baseType: !3, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !310, file: !34, line: 74, baseType: !3, size: 64, offset: 192)
!316 = !DILocalVariable(name: "u1", scope: !304, file: !1, line: 256, type: !3)
!317 = !DILocalVariable(name: "w3", scope: !304, file: !1, line: 257, type: !3)
!318 = !DILocalVariable(name: "x_", scope: !304, file: !1, line: 258, type: !3)
!319 = !DILocalVariable(name: "t_", scope: !304, file: !1, line: 259, type: !3)
!320 = !DILocation(line: 0, scope: !304)
!321 = !DILocation(line: 255, column: 3, scope: !304)
!322 = !DILocation(line: 255, column: 43, scope: !304)
!323 = !DILocation(line: 255, column: 51, scope: !304)
!324 = !DILocation(line: 256, column: 23, scope: !304)
!325 = !{!326, !47, i64 0}
!326 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!327 = !DILocation(line: 257, column: 23, scope: !304)
!328 = !{!326, !47, i64 8}
!329 = !DILocation(line: 258, column: 23, scope: !304)
!330 = !{!326, !47, i64 16}
!331 = !DILocation(line: 259, column: 23, scope: !304)
!332 = !{!326, !47, i64 24}
!333 = !DILocation(line: 262, column: 30, scope: !304)
!334 = !DILocation(line: 264, column: 16, scope: !304)
!335 = !DILocation(line: 264, column: 11, scope: !304)
!336 = !DILocation(line: 265, column: 13, scope: !304)
!337 = !DILocation(line: 265, column: 11, scope: !304)
!338 = !DILocation(line: 263, column: 16, scope: !304)
!339 = !DILocation(line: 268, column: 9, scope: !304)
!340 = !DILocation(line: 269, column: 15, scope: !304)
!341 = !DILocation(line: 269, column: 9, scope: !304)
!342 = !DILocation(line: 272, column: 11, scope: !304)
!343 = !DILocation(line: 270, column: 9, scope: !304)
!344 = !DILocation(line: 275, column: 1, scope: !304)
!345 = distinct !DISubprogram(name: "FStar_UInt128_constant_time_carry", scope: !1, file: !1, line: 27, type: !56, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !346)
!346 = !{!347, !348}
!347 = !DILocalVariable(name: "a", arg: 1, scope: !345, file: !1, line: 27, type: !3)
!348 = !DILocalVariable(name: "b", arg: 2, scope: !345, file: !1, line: 27, type: !3)
!349 = !DILocation(line: 0, scope: !345)
!350 = !DILocation(line: 29, column: 19, scope: !345)
!351 = !DILocation(line: 29, column: 30, scope: !345)
!352 = !DILocation(line: 29, column: 35, scope: !345)
!353 = !DILocation(line: 29, column: 24, scope: !345)
!354 = !DILocation(line: 29, column: 13, scope: !345)
!355 = !DILocation(line: 29, column: 42, scope: !345)
!356 = !DILocation(line: 29, column: 3, scope: !345)
!357 = distinct !DISubprogram(name: "FStar_UInt128_add_u64_shift_left_respec", scope: !1, file: !1, line: 114, type: !358, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!3, !3, !3, !8}
!360 = !{!361, !362, !363}
!361 = !DILocalVariable(name: "hi", arg: 1, scope: !357, file: !1, line: 114, type: !3)
!362 = !DILocalVariable(name: "lo", arg: 2, scope: !357, file: !1, line: 114, type: !3)
!363 = !DILocalVariable(name: "s", arg: 3, scope: !357, file: !1, line: 114, type: !8)
!364 = !DILocation(line: 0, scope: !357)
!365 = !DILocation(line: 116, column: 10, scope: !357)
!366 = !DILocation(line: 116, column: 3, scope: !357)
!367 = distinct !DISubprogram(name: "FStar_UInt128_add_u64_shift_left", scope: !1, file: !1, line: 109, type: !358, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !368)
!368 = !{!369, !370, !371}
!369 = !DILocalVariable(name: "hi", arg: 1, scope: !367, file: !1, line: 109, type: !3)
!370 = !DILocalVariable(name: "lo", arg: 2, scope: !367, file: !1, line: 109, type: !3)
!371 = !DILocalVariable(name: "s", arg: 3, scope: !367, file: !1, line: 109, type: !8)
!372 = !DILocation(line: 0, scope: !367)
!373 = !DILocation(line: 111, column: 14, scope: !367)
!374 = !DILocation(line: 111, column: 51, scope: !367)
!375 = !DILocation(line: 111, column: 26, scope: !367)
!376 = !DILocation(line: 111, column: 20, scope: !367)
!377 = !DILocation(line: 111, column: 3, scope: !367)
!378 = distinct !DISubprogram(name: "FStar_UInt128_add_u64_shift_right_respec", scope: !1, file: !1, line: 154, type: !358, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !379)
!379 = !{!380, !381, !382}
!380 = !DILocalVariable(name: "hi", arg: 1, scope: !378, file: !1, line: 154, type: !3)
!381 = !DILocalVariable(name: "lo", arg: 2, scope: !378, file: !1, line: 154, type: !3)
!382 = !DILocalVariable(name: "s", arg: 3, scope: !378, file: !1, line: 154, type: !8)
!383 = !DILocation(line: 0, scope: !378)
!384 = !DILocation(line: 156, column: 10, scope: !378)
!385 = !DILocation(line: 156, column: 3, scope: !378)
!386 = distinct !DISubprogram(name: "FStar_UInt128_add_u64_shift_right", scope: !1, file: !1, line: 149, type: !358, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !387)
!387 = !{!388, !389, !390}
!388 = !DILocalVariable(name: "hi", arg: 1, scope: !386, file: !1, line: 149, type: !3)
!389 = !DILocalVariable(name: "lo", arg: 2, scope: !386, file: !1, line: 149, type: !3)
!390 = !DILocalVariable(name: "s", arg: 3, scope: !386, file: !1, line: 149, type: !8)
!391 = !DILocation(line: 0, scope: !386)
!392 = !DILocation(line: 151, column: 14, scope: !386)
!393 = !DILocation(line: 151, column: 51, scope: !386)
!394 = !DILocation(line: 151, column: 26, scope: !386)
!395 = !DILocation(line: 151, column: 20, scope: !386)
!396 = !DILocation(line: 151, column: 3, scope: !386)
!397 = distinct !DISubprogram(name: "FStar_UInt128_mul_wide_impl_t_", scope: !1, file: !1, line: 233, type: !398, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{!309, !3, !3}
!400 = !{!401, !402}
!401 = !DILocalVariable(name: "x", arg: 1, scope: !397, file: !1, line: 233, type: !3)
!402 = !DILocalVariable(name: "y", arg: 2, scope: !397, file: !1, line: 233, type: !3)
!403 = !DILocation(line: 0, scope: !397)
!404 = !DILocation(line: 237, column: 48, scope: !397)
!405 = !DILocation(line: 238, column: 16, scope: !397)
!406 = !DILocation(line: 239, column: 71, scope: !397)
!407 = !DILocation(line: 239, column: 69, scope: !397)
!408 = !DILocation(line: 239, column: 16, scope: !397)
!409 = !DILocation(line: 240, column: 18, scope: !397)
!410 = !DILocation(line: 242, column: 9, scope: !397)
!411 = !DILocation(line: 243, column: 70, scope: !397)
!412 = !DILocation(line: 243, column: 9, scope: !397)
!413 = !DILocation(line: 235, column: 3, scope: !397)
!414 = distinct !DISubprogram(name: "FStar_UInt128_u32_combine_", scope: !1, file: !1, line: 248, type: !56, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !415)
!415 = !{!416, !417}
!416 = !DILocalVariable(name: "hi", arg: 1, scope: !414, file: !1, line: 248, type: !3)
!417 = !DILocalVariable(name: "lo", arg: 2, scope: !414, file: !1, line: 248, type: !3)
!418 = !DILocation(line: 0, scope: !414)
!419 = !DILocation(line: 250, column: 19, scope: !414)
!420 = !DILocation(line: 250, column: 13, scope: !414)
!421 = !DILocation(line: 250, column: 3, scope: !414)
!422 = distinct !DISubprogram(name: "FStar_UInt128_u64_mod_32", scope: !1, file: !1, line: 225, type: !423, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!3, !3}
!425 = !{!426}
!426 = !DILocalVariable(name: "a", arg: 1, scope: !422, file: !1, line: 225, type: !3)
!427 = !DILocation(line: 0, scope: !422)
!428 = !DILocation(line: 227, column: 12, scope: !422)
!429 = !DILocation(line: 227, column: 3, scope: !422)
