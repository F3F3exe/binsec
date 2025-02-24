; ModuleID = 'aes_ct_cbcenc.ll'
source_filename = "aes_ct_cbcenc_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.br_block_cbcenc_class_ = type { i32, i32, i32, void (%struct.br_block_cbcenc_class_**, i8*, i32)*, void (%struct.br_block_cbcenc_class_**, i8*, i8*, i32)* }
%struct.br_aes_ct_cbcenc_keys = type { %struct.br_block_cbcenc_class_*, [60 x i32], i32 }

@br_aes_ct_cbcenc_vtable = external constant %struct.br_block_cbcenc_class_, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [32 x i8], align 1
  %2 = alloca [16 x i8], align 1
  %3 = alloca %struct.br_aes_ct_cbcenc_keys, align 4
  %4 = getelementptr inbounds %struct.br_aes_ct_cbcenc_keys, %struct.br_aes_ct_cbcenc_keys* %3, i32 0, i32 0
  store %struct.br_block_cbcenc_class_* @br_aes_ct_cbcenc_vtable, %struct.br_block_cbcenc_class_** %4, align 4
  %5 = getelementptr inbounds %struct.br_aes_ct_cbcenc_keys, %struct.br_aes_ct_cbcenc_keys* %3, i32 0, i32 2
  store i32 2, i32* %5, align 4
  %6 = getelementptr inbounds %struct.br_aes_ct_cbcenc_keys, %struct.br_aes_ct_cbcenc_keys* %3, i32 0, i32 1, i32 0
  %7 = bitcast i32* %6 to i8*
  call void @high_input_240(i8* noundef nonnull %7) #2
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i32 0, i32 0
  call void @high_input_32(i8* noundef nonnull %8) #2
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0
  call void @br_aes_ct_cbcenc_run(%struct.br_aes_ct_cbcenc_keys* noundef nonnull %3, i8* noundef nonnull %9, i8* noundef nonnull %8, i32 noundef 32) #2
  ret i32 0
}

declare void @high_input_240(i8* noundef) local_unnamed_addr #1

declare void @high_input_32(i8* noundef) local_unnamed_addr #1

declare void @br_aes_ct_cbcenc_run(%struct.br_aes_ct_cbcenc_keys* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
