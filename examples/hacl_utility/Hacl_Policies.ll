; ModuleID = 'Hacl_Policies.ll'
source_filename = "Hacl_Policies.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes_(i8* nocapture readonly %0, i8* nocapture readonly %1, i32 %2, i8* nocapture %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %8, %4
  %7 = load i8, i8* %3, align 1, !tbaa !3
  ret i8 %7

8:                                                ; preds = %8, %4
  %9 = phi i32 [ %17, %8 ], [ 0, %4 ]
  %10 = getelementptr inbounds i8, i8* %0, i32 %9
  %11 = load i8, i8* %10, align 1, !tbaa !3
  %12 = getelementptr inbounds i8, i8* %1, i32 %9
  %13 = load i8, i8* %12, align 1, !tbaa !3
  %14 = load i8, i8* %3, align 1, !tbaa !3
  %15 = call fastcc zeroext i8 @FStar_UInt8_eq_mask(i8 zeroext %11, i8 zeroext %13)
  %16 = and i8 %15, %14
  store i8 %16, i8* %3, align 1, !tbaa !3
  %17 = add nuw i32 %9, 1
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %6, label %8, !llvm.loop !6
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inlinehint norecurse nounwind readnone willreturn
define internal fastcc zeroext i8 @FStar_UInt8_eq_mask(i8 zeroext %0, i8 zeroext %1) unnamed_addr #2 {
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes(i8* nocapture readonly %0, i8* nocapture readonly %1, i32 %2) local_unnamed_addr #3 {
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #4
  store i8 -1, i8* %5, align 1, !tbaa !3
  %6 = call zeroext i8 @Hacl_Policies_cmp_bytes_(i8* %0, i8* %1, i32 %2, i8* nonnull %5)
  %7 = xor i8 %6, -1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #4
  ret i8 %7
}

attributes #0 = { nofree norecurse nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { inlinehint norecurse nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~20.04.5"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.unroll.disable"}
