; ModuleID = 'cmp_bytes.ll'
source_filename = "cmp_bytes_wrapper.c"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@b1 = common dso_local global [40 x i8] zeroinitializer, align 1
@b2 = common dso_local global [40 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
  tail call void @high_input_40(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @b1, i32 0, i32 0)) #2
  tail call void @high_input_40(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @b2, i32 0, i32 0)) #2
  %1 = tail call zeroext i8 @Hacl_Policies_cmp_bytes(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @b1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @b2, i32 0, i32 0), i32 40) #2
  ret i32 0
}

declare dso_local void @high_input_40(i8*) local_unnamed_addr #1

declare dso_local zeroext i8 @Hacl_Policies_cmp_bytes(i8*, i8*, i32) local_unnamed_addr #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 7.1.0 (tags/RELEASE_710/final)"}
