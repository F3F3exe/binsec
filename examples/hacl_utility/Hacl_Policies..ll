; ModuleID = 'Hacl_Policies..ll'
source_filename = "Hacl_Policies.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes_(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i8* nocapture noundef %3) local_unnamed_addr #0 {
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %4, %.lr.ph
  %.01 = phi i32 [ %12, %.lr.ph ], [ 0, %4 ]
  %5 = getelementptr inbounds i8, i8* %0, i32 %.01
  %6 = load i8, i8* %5, align 1
  %7 = getelementptr inbounds i8, i8* %1, i32 %.01
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call fastcc zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %6, i8 noundef zeroext %8)
  %11 = and i8 %10, %9
  store i8 %11, i8* %3, align 1
  %12 = add nuw i32 %.01, 1
  %exitcond.not = icmp eq i32 %12, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %4
  %13 = load i8, i8* %3, align 1
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = xor i8 %0, %1
  %4 = xor i8 %3, -1
  %5 = shl i8 %4, 4
  %6 = and i8 %5, %4
  %7 = shl i8 %6, 2
  %8 = and i8 %7, %6
  %9 = shl i8 %8, 1
  %10 = and i8 %9, %8
  %11 = ashr exact i8 %10, 7
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0
  store i8 -1, i8* %5, align 1
  %6 = call zeroext i8 @Hacl_Policies_cmp_bytes_(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef nonnull %5)
  %7 = xor i8 %6, -1
  ret i8 %7
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
