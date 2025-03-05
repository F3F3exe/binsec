; ModuleID = 'ghash_ctmul.ll'
source_filename = "ghash_ctmul_wrapper.c"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: noinline nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [16 x i8], align 1
  %2 = alloca [16 x i8], align 1
  %3 = alloca [64 x i8], align 1
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0
  call void @high_input_16(i8* nonnull %4) #2
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0
  call void @high_input_64(i8* nonnull %5) #2
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0
  call void @low_input_16(i8* nonnull %6) #2
  call void @br_ghash_ctmul(i8* nonnull %6, i8* nonnull %4, i8* nonnull %5, i32 64) #2
  ret i32 0
}

declare dso_local void @high_input_16(i8*) local_unnamed_addr #1

declare dso_local void @high_input_64(i8*) local_unnamed_addr #1

declare dso_local void @low_input_16(i8*) local_unnamed_addr #1

declare dso_local void @br_ghash_ctmul(i8*, i8*, i8*, i32) local_unnamed_addr #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 7.1.0 (tags/RELEASE_710/final)"}
