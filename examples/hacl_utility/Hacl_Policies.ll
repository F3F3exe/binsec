; ModuleID = 'Hacl_Policies.ll'
source_filename = "Hacl_Policies.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes_(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef %3) local_unnamed_addr #0 {
  br label %5

5:                                                ; preds = %9, %4
  %.0 = phi i32 [ 0, %4 ], [ %24, %9 ]
  %6 = icmp ult i32 %.0, %2
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = load i8, i8* %3, align 1, !tbaa !6
  ret i8 %8

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, i8* %0, i32 %.0
  %11 = load i8, i8* %10, align 1, !tbaa !6
  %12 = getelementptr inbounds i8, i8* %1, i32 %.0
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
  %isneg.not = icmp eq i8 %22, 0
  %23 = select i1 %isneg.not, i8 0, i8 %14
  store i8 %23, i8* %3, align 1, !tbaa !6
  %24 = add nuw i32 %.0, 1
  br label %5, !llvm.loop !9
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  br label %4

4:                                                ; preds = %6, %3
  %.sroa.0.0 = phi i8 [ -1, %3 ], [ %19, %6 ]
  %.0.i = phi i32 [ 0, %3 ], [ %20, %6 ]
  %5 = icmp ult i32 %.0.i, %2
  br i1 %5, label %6, label %Hacl_Policies_cmp_bytes_.exit

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i32 %.0.i
  %8 = load i8, i8* %7, align 1, !tbaa !6
  %9 = getelementptr inbounds i8, i8* %1, i32 %.0.i
  %10 = load i8, i8* %9, align 1, !tbaa !6
  %11 = xor i8 %8, %10
  %12 = xor i8 %11, -1
  %13 = shl i8 %12, 4
  %14 = and i8 %13, %12
  %15 = shl i8 %14, 2
  %16 = and i8 %15, %14
  %17 = shl i8 %16, 1
  %18 = and i8 %17, %16
  %isneg.not.i = icmp eq i8 %18, 0
  %19 = select i1 %isneg.not.i, i8 0, i8 %.sroa.0.0
  %20 = add nuw i32 %.0.i, 1
  br label %4, !llvm.loop !9

Hacl_Policies_cmp_bytes_.exit:                    ; preds = %4
  %21 = xor i8 %.sroa.0.0, -1
  ret i8 %21
}

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" }

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
