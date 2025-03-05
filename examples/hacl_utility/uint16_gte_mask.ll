; ModuleID = 'uint16_gte_mask.ll'
source_filename = "uint16_gte_mask.c"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = bitcast i16* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %3) #3
  %4 = bitcast i16* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %4) #3
  call void @high_input_2(i8* nonnull %3) #3
  call void @high_input_2(i8* nonnull %4) #3
  %5 = load i16, i16* %1, align 2, !tbaa !3
  %6 = load i16, i16* %2, align 2, !tbaa !3
  %7 = zext i16 %5 to i32
  %8 = zext i16 %6 to i32
  %9 = sub nsw i32 %7, %8
  %10 = ashr i32 %9, 31
  %11 = and i32 %10, 65535
  %12 = xor i32 %11, 65535
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %3) #3
  ret i32 %12
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare dso_local void @high_input_2(i8*) local_unnamed_addr #2

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
!4 = !{!"short", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
