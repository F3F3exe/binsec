; ModuleID = '08.ll'
source_filename = "08.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: norecurse nounwind readnone willreturn
define dso_local i32 @func(i32 %0) local_unnamed_addr #0 {
  %2 = mul i32 %0, 5
  ret i32 %2
}

; Function Attrs: norecurse nounwind readnone willreturn
define dso_local i32 @issue(i32 %0, i32 %1) #0 {
  %3 = mul i32 %0, 5
  ret i32 %3
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32 (i32, i32)*, align 4
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4
  store i32 2, i32* %3, align 4, !tbaa !3
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4
  store i32 0, i32* %4, align 4, !tbaa !3
  call void @high_input_4(i8* nonnull %7) #4
  call void @low_input_4(i8* nonnull %6) #4
  %.0.sroa_cast = bitcast i32 (i32, i32)** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %.0.sroa_cast)
  store volatile i32 (i32, i32)* @issue, i32 (i32, i32)** %5, align 4, !tbaa !7
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..4 = load volatile i32 (i32, i32)*, i32 (i32, i32)** %5, align 4, !tbaa !7
  %8 = load i32, i32* %3, align 4, !tbaa !3
  %9 = load i32, i32* %4, align 4, !tbaa !3
  %10 = call i32 %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..4(i32 %8, i32 %9) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %.0.sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4
  ret i32 %10
}

declare dso_local void @high_input_4(i8*) local_unnamed_addr #3

declare dso_local void @low_input_4(i8*) local_unnamed_addr #3

attributes #0 = { norecurse nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~20.04.5"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
