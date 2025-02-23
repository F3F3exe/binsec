; ModuleID = 'combined.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #6
  call void @high_input_1(i8* noundef nonnull %1) #6
  call void @high_input_1(i8* noundef nonnull %2) #6
  %3 = load i8, i8* %1, align 1, !tbaa !6
  %4 = load i8, i8* %2, align 1, !tbaa !6
  %5 = call fastcc zeroext i8 @FStar_UInt8_gte_mask(i8 noundef zeroext %3, i8 noundef zeroext %4)
  %6 = zext i8 %5 to i32
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #6
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @high_input_1(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @FStar_UInt8_gte_mask(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = icmp uge i8 %0, %1
  %4 = sext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes_(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef %3) local_unnamed_addr #4 {
  %5 = icmp eq i32 %2, 0
  %.pre1 = load i8, i8* %3, align 1, !tbaa !6
  br i1 %5, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %4
  %6 = phi i8 [ %.pre1, %4 ], [ %22, %.preheader ]
  ret i8 %6

.preheader:                                       ; preds = %4, %.preheader
  %7 = phi i8 [ %22, %.preheader ], [ %.pre1, %4 ]
  %8 = phi i32 [ %23, %.preheader ], [ 0, %4 ]
  %9 = getelementptr inbounds i8, i8* %0, i32 %8
  %10 = load i8, i8* %9, align 1, !tbaa !6
  %11 = getelementptr inbounds i8, i8* %1, i32 %8
  %12 = load i8, i8* %11, align 1, !tbaa !6
  %13 = xor i8 %10, %12
  %14 = xor i8 %13, -1
  %15 = shl i8 %14, 4
  %16 = and i8 %15, %14
  %17 = shl i8 %16, 2
  %18 = and i8 %17, %16
  %19 = shl i8 %18, 1
  %20 = and i8 %19, %18
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i8 0, i8 %7
  store i8 %22, i8* %3, align 1, !tbaa !6
  %23 = add nuw i32 %8, 1
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %.loopexit, label %.preheader, !llvm.loop !9
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %25, label %.preheader

.preheader:                                       ; preds = %3, %.preheader
  %5 = phi i8 [ %20, %.preheader ], [ -1, %3 ]
  %6 = phi i32 [ %21, %.preheader ], [ 0, %3 ]
  %7 = getelementptr inbounds i8, i8* %0, i32 %6
  %8 = load i8, i8* %7, align 1, !tbaa !6
  %9 = getelementptr inbounds i8, i8* %1, i32 %6
  %10 = load i8, i8* %9, align 1, !tbaa !6
  %11 = xor i8 %8, %10
  %12 = xor i8 %11, -1
  %13 = shl i8 %12, 4
  %14 = and i8 %13, %12
  %15 = shl i8 %14, 2
  %16 = and i8 %15, %14
  %17 = shl i8 %16, 1
  %18 = and i8 %17, %16
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i8 0, i8 %5
  %21 = add nuw i32 %6, 1
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %.preheader, !llvm.loop !9

23:                                               ; preds = %.preheader
  %24 = xor i8 %20, -1
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i8 [ 0, %3 ], [ %24, %23 ]
  ret i8 %26
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #4 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #5 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #6 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
