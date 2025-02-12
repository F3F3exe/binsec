; ModuleID = 'cmp_bytes.ll'
source_filename = "cmp_bytes.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [200 x i8], align 1
  %2 = alloca [200 x i8], align 1
  %3 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %3) #3
  %4 = getelementptr inbounds [200 x i8], [200 x i8]* %2, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %4) #3
  call void @high_input_200(i8* noundef nonnull %3) #3
  call void @high_input_200(i8* noundef nonnull %4) #3
  %5 = call zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef nonnull %3, i8* noundef nonnull %4, i32 noundef 200) #3
  %6 = zext i8 %5 to i32
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %3) #3
  ret i32 %6
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @high_input_200(i8* noundef) local_unnamed_addr #2

declare zeroext i8 @Hacl_Policies_cmp_bytes(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
