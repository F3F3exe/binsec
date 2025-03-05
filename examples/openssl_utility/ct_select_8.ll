; ModuleID = 'ct_select_8.ll'
source_filename = "ct_select_8.c"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: noinline nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %1 to i8*
  call void @high_input_4(i8* nonnull %4) #3
  %5 = bitcast i32* %2 to i8*
  call void @high_input_4(i8* nonnull %5) #3
  %6 = bitcast i32* %3 to i8*
  call void @high_input_4(i8* nonnull %6) #3
  %7 = load i32, i32* %1, align 4
  %8 = trunc i32 %7 to i8
  %9 = load i32, i32* %2, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i32, i32* %3, align 4
  %12 = trunc i32 %11 to i8
  %13 = call fastcc zeroext i8 @constant_time_select_8(i8 zeroext %8, i8 zeroext %10, i8 zeroext %12)
  %14 = zext i8 %13 to i32
  ret i32 %14
}

declare dso_local void @high_input_4(i8*) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc zeroext i8 @constant_time_select_8(i8 zeroext, i8 zeroext, i8 zeroext) unnamed_addr #2 {
  %4 = zext i8 %0 to i32
  %5 = zext i8 %1 to i32
  %6 = zext i8 %2 to i32
  %7 = tail call fastcc i32 @constant_time_select(i32 %4, i32 %5, i32 %6)
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i32 @constant_time_select(i32, i32, i32) unnamed_addr #2 {
  %4 = and i32 %1, %0
  %5 = xor i32 %0, -1
  %6 = and i32 %5, %2
  %7 = or i32 %6, %4
  ret i32 %7
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 7.1.0 (tags/RELEASE_710/final)"}
