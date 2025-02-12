; ModuleID = 'Hacl_Policies.ll'
source_filename = "Hacl_Policies.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes_(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %._crit_edge, label %._crit_edge1

._crit_edge1:                                     ; preds = %4
  br label %8

._crit_edge:                                      ; preds = %4
  br label %6

6:                                                ; preds = %._crit_edge2, %._crit_edge
  %7 = load i8, i8* %3, align 1, !tbaa !6
  ret i8 %7

8:                                                ; preds = %._crit_edge3, %._crit_edge1
  %9 = phi i32 [ %25, %._crit_edge3 ], [ 0, %._crit_edge1 ]
  %10 = getelementptr inbounds i8, i8* %0, i32 %9
  %11 = load i8, i8* %10, align 1, !tbaa !6
  %12 = getelementptr inbounds i8, i8* %1, i32 %9
  %13 = load i8, i8* %12, align 1, !tbaa !6
  %14 = load i8, i8* %3, align 1, !tbaa !6
  %15 = xor i8 %11, %13
  %16 = xor i8 %15, -1
  %17 = shl i8 %16, 4
  %18 = and i8 %17, %16
  %19 = shl i8 %18, 2
  %20 = and i8 %19, %18
  %21 = shl i8 %20, 1
  %22 = and i8 %21, %20
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i8 0, i8 %14
  store i8 %24, i8* %3, align 1, !tbaa !6
  %25 = add nuw i32 %9, 1
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %._crit_edge2, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %8
  br label %8

._crit_edge2:                                     ; preds = %8
  br label %6
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %._crit_edge, label %._crit_edge1

._crit_edge1:                                     ; preds = %3
  br label %5

._crit_edge:                                      ; preds = %3
  br label %26

5:                                                ; preds = %._crit_edge2, %._crit_edge1
  %6 = phi i8 [ %21, %._crit_edge2 ], [ -1, %._crit_edge1 ]
  %7 = phi i32 [ %22, %._crit_edge2 ], [ 0, %._crit_edge1 ]
  %8 = getelementptr inbounds i8, i8* %0, i32 %7
  %9 = load i8, i8* %8, align 1, !tbaa !6
  %10 = getelementptr inbounds i8, i8* %1, i32 %7
  %11 = load i8, i8* %10, align 1, !tbaa !6
  %12 = xor i8 %9, %11
  %13 = xor i8 %12, -1
  %14 = shl i8 %13, 4
  %15 = and i8 %14, %13
  %16 = shl i8 %15, 2
  %17 = and i8 %16, %15
  %18 = shl i8 %17, 1
  %19 = and i8 %18, %17
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i8 0, i8 %6
  %22 = add nuw i32 %7, 1
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %._crit_edge2, !llvm.loop !9

._crit_edge2:                                     ; preds = %5
  br label %5

24:                                               ; preds = %5
  %25 = xor i8 %21, -1
  br label %26

26:                                               ; preds = %24, %._crit_edge
  %27 = phi i8 [ 0, %._crit_edge ], [ %25, %24 ]
  ret i8 %27
}

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
