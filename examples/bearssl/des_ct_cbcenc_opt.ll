; ModuleID = 'des_ct_cbcenc.ll'
source_filename = "des_ct_cbcenc_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.br_block_cbcenc_class_ = type { i32, i32, i32, ptr, ptr }
%struct.br_des_ct_cbcenc_keys = type { ptr, [96 x i32], i32 }

@br_des_ct_cbcenc_vtable = external constant %struct.br_block_cbcenc_class_, align 4
@len = dso_local local_unnamed_addr global i8 0, align 1
@iv = dso_local global [8 x i32] zeroinitializer, align 4
@data = dso_local local_unnamed_addr global [16 x i8] zeroinitializer, align 1
@skey = dso_local local_unnamed_addr global [96 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca %struct.br_des_ct_cbcenc_keys, align 4
  %2 = alloca [16 x i8], align 1
  store ptr @br_des_ct_cbcenc_vtable, ptr %1, align 4
  %3 = getelementptr inbounds i8, ptr %1, i32 388
  store i32 2, ptr %3, align 4
  store i8 16, ptr @len, align 1
  %4 = getelementptr inbounds i8, ptr %1, i32 4
  call void @high_input_384(ptr noundef nonnull %4) #2
  call void @high_input_16(ptr noundef nonnull %2) #2
  %5 = load i8, ptr @len, align 1
  %6 = zext i8 %5 to i32
  call void @br_des_ct_cbcenc_run(ptr noundef nonnull %1, ptr noundef nonnull @iv, ptr noundef nonnull %2, i32 noundef %6) #2
  ret i32 0
}

declare void @high_input_384(ptr noundef) local_unnamed_addr #1

declare void @high_input_16(ptr noundef) local_unnamed_addr #1

declare void @br_des_ct_cbcenc_run(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)"}
