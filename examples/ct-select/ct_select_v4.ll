; ModuleID = 'ct_select_v4.ll'
source_filename = "ct_select_v4.c"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #3
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #3
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #3
  call void @high_input_1(i8* nonnull %1) #3
  call void @low_input_4(i8* nonnull %4) #3
  call void @low_input_4(i8* nonnull %5) #3
  %6 = load i32, i32* %2, align 4, !tbaa !3
  %7 = load i32, i32* %3, align 4, !tbaa !3
  %8 = load i8, i8* %1, align 1, !tbaa !7, !range !9
  %9 = icmp ne i8 %8, 0
  %10 = call i32 @ct_select_u32_v4(i32 %6, i32 %7, i1 zeroext %9) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #3
  ret i32 %10
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare dso_local void @high_input_1(i8*) local_unnamed_addr #2

declare dso_local void @low_input_4(i8*) local_unnamed_addr #2

declare dso_local i32 @ct_select_u32_v4(i32, i32, i1 zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 7.1.0 (tags/RELEASE_710/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"_Bool", !5, i64 0}
!9 = !{i8 0, i8 2}
