; ModuleID = 'donna.ll'
source_filename = "donna_wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @curve25519_donna(i8* noundef writeonly %0, i8* nocapture noundef readonly %1, i8* noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [10 x i32], align 4
  %5 = alloca [10 x i64], align 8
  %6 = alloca [10 x i64], align 8
  %7 = alloca [10 x i64], align 8
  %8 = alloca [10 x i64], align 8
  %9 = alloca [10 x i64], align 8
  %10 = alloca [10 x i64], align 8
  %11 = alloca [10 x i64], align 8
  %12 = alloca [10 x i64], align 8
  %13 = alloca [10 x i64], align 8
  %14 = alloca [10 x i64], align 8
  %15 = alloca [10 x i64], align 8
  %16 = alloca [10 x i64], align 8
  %17 = alloca [19 x i64], align 8
  %18 = alloca [19 x i64], align 8
  %19 = alloca [19 x i64], align 8
  %20 = alloca [19 x i64], align 8
  %21 = alloca [19 x i64], align 8
  %22 = alloca [19 x i64], align 8
  %23 = alloca [19 x i64], align 8
  %24 = alloca [19 x i64], align 8
  %25 = alloca [19 x i64], align 8
  %26 = alloca [19 x i64], align 8
  %27 = alloca [19 x i64], align 8
  %28 = alloca [19 x i64], align 8
  %29 = alloca [19 x i64], align 8
  %30 = alloca [19 x i64], align 8
  %31 = alloca [19 x i64], align 8
  %32 = alloca [10 x i64], align 8
  %33 = alloca [10 x i64], align 8
  %34 = alloca [11 x i64], align 8
  %35 = alloca [10 x i64], align 8
  %36 = alloca [32 x i8], align 1
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %36, i32 0, i32 0
  %38 = bitcast [10 x i64]* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %38) #7
  %39 = bitcast [10 x i64]* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %39) #7
  %40 = bitcast [11 x i64]* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %40) #7
  %41 = bitcast [10 x i64]* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %41) #7
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %36, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %42) #7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %37, i8* noundef nonnull align 1 dereferenceable(32) %1, i32 32, i1 false), !tbaa !6
  %43 = load i8, i8* %42, align 1, !tbaa !6
  %44 = and i8 %43, -8
  store i8 %44, i8* %42, align 1, !tbaa !6
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %36, i32 0, i32 31
  %46 = load i8, i8* %45, align 1, !tbaa !6
  %47 = and i8 %46, 63
  %48 = or i8 %47, 64
  store i8 %48, i8* %45, align 1, !tbaa !6
  %49 = getelementptr inbounds [10 x i64], [10 x i64]* %32, i32 0, i32 0
  %50 = load i8, i8* %2, align 1, !tbaa !6
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds i8, i8* %2, i32 1
  %53 = load i8, i8* %52, align 1, !tbaa !6
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 8
  %56 = or i64 %55, %51
  %57 = getelementptr inbounds i8, i8* %2, i32 2
  %58 = load i8, i8* %57, align 1, !tbaa !6
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 16
  %61 = or i64 %56, %60
  %62 = getelementptr inbounds i8, i8* %2, i32 3
  %63 = load i8, i8* %62, align 1, !tbaa !6
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 24
  %66 = and i64 %65, 50331648
  %67 = or i64 %61, %66
  store i64 %67, i64* %49, align 8, !tbaa !9
  %68 = getelementptr inbounds i8, i8* %2, i32 4
  %69 = load i8, i8* %68, align 1, !tbaa !6
  %70 = zext i8 %69 to i64
  %71 = shl nuw nsw i64 %70, 8
  %72 = or i64 %71, %64
  %73 = getelementptr inbounds i8, i8* %2, i32 5
  %74 = load i8, i8* %73, align 1, !tbaa !6
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 16
  %77 = or i64 %72, %76
  %78 = getelementptr inbounds i8, i8* %2, i32 6
  %79 = load i8, i8* %78, align 1, !tbaa !6
  %80 = zext i8 %79 to i64
  %81 = shl nuw nsw i64 %80, 24
  %82 = or i64 %77, %81
  %83 = lshr i64 %82, 2
  %84 = and i64 %83, 33554431
  %85 = getelementptr inbounds [10 x i64], [10 x i64]* %32, i32 0, i32 1
  store i64 %84, i64* %85, align 8, !tbaa !9
  %86 = getelementptr inbounds i8, i8* %2, i32 7
  %87 = load i8, i8* %86, align 1, !tbaa !6
  %88 = zext i8 %87 to i64
  %89 = shl nuw nsw i64 %88, 8
  %90 = or i64 %89, %80
  %91 = getelementptr inbounds i8, i8* %2, i32 8
  %92 = load i8, i8* %91, align 1, !tbaa !6
  %93 = zext i8 %92 to i64
  %94 = shl nuw nsw i64 %93, 16
  %95 = or i64 %90, %94
  %96 = getelementptr inbounds i8, i8* %2, i32 9
  %97 = load i8, i8* %96, align 1, !tbaa !6
  %98 = zext i8 %97 to i64
  %99 = shl nuw nsw i64 %98, 24
  %100 = or i64 %95, %99
  %101 = lshr i64 %100, 3
  %102 = and i64 %101, 67108863
  %103 = getelementptr inbounds [10 x i64], [10 x i64]* %32, i32 0, i32 2
  store i64 %102, i64* %103, align 8, !tbaa !9
  %104 = getelementptr inbounds i8, i8* %2, i32 10
  %105 = load i8, i8* %104, align 1, !tbaa !6
  %106 = zext i8 %105 to i64
  %107 = shl nuw nsw i64 %106, 8
  %108 = or i64 %107, %98
  %109 = getelementptr inbounds i8, i8* %2, i32 11
  %110 = load i8, i8* %109, align 1, !tbaa !6
  %111 = zext i8 %110 to i64
  %112 = shl nuw nsw i64 %111, 16
  %113 = or i64 %108, %112
  %114 = getelementptr inbounds i8, i8* %2, i32 12
  %115 = load i8, i8* %114, align 1, !tbaa !6
  %116 = zext i8 %115 to i64
  %117 = shl nuw nsw i64 %116, 24
  %118 = or i64 %113, %117
  %119 = lshr i64 %118, 5
  %120 = and i64 %119, 33554431
  %121 = getelementptr inbounds [10 x i64], [10 x i64]* %32, i32 0, i32 3
  store i64 %120, i64* %121, align 8, !tbaa !9
  %122 = getelementptr inbounds i8, i8* %2, i32 13
  %123 = load i8, i8* %122, align 1, !tbaa !6
  %124 = zext i8 %123 to i64
  %125 = shl nuw nsw i64 %124, 8
  %126 = or i64 %125, %116
  %127 = getelementptr inbounds i8, i8* %2, i32 14
  %128 = load i8, i8* %127, align 1, !tbaa !6
  %129 = zext i8 %128 to i64
  %130 = shl nuw nsw i64 %129, 16
  %131 = or i64 %126, %130
  %132 = getelementptr inbounds i8, i8* %2, i32 15
  %133 = load i8, i8* %132, align 1, !tbaa !6
  %134 = zext i8 %133 to i64
  %135 = shl nuw nsw i64 %134, 24
  %136 = or i64 %131, %135
  %137 = lshr i64 %136, 6
  %138 = and i64 %137, 67108863
  %139 = getelementptr inbounds [10 x i64], [10 x i64]* %32, i32 0, i32 4
  store i64 %138, i64* %139, align 8, !tbaa !9
  %140 = getelementptr inbounds i8, i8* %2, i32 16
  %141 = load i8, i8* %140, align 1, !tbaa !6
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds i8, i8* %2, i32 17
  %144 = load i8, i8* %143, align 1, !tbaa !6
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 8
  %147 = or i64 %146, %142
  %148 = getelementptr inbounds i8, i8* %2, i32 18
  %149 = load i8, i8* %148, align 1, !tbaa !6
  %150 = zext i8 %149 to i64
  %151 = shl nuw nsw i64 %150, 16
  %152 = or i64 %147, %151
  %153 = getelementptr inbounds i8, i8* %2, i32 19
  %154 = load i8, i8* %153, align 1, !tbaa !6
  %155 = zext i8 %154 to i64
  %156 = shl nuw nsw i64 %155, 24
  %157 = and i64 %156, 16777216
  %158 = or i64 %152, %157
  %159 = getelementptr inbounds [10 x i64], [10 x i64]* %32, i32 0, i32 5
  store i64 %158, i64* %159, align 8, !tbaa !9
  %160 = getelementptr inbounds i8, i8* %2, i32 20
  %161 = load i8, i8* %160, align 1, !tbaa !6
  %162 = zext i8 %161 to i64
  %163 = shl nuw nsw i64 %162, 8
  %164 = or i64 %163, %155
  %165 = getelementptr inbounds i8, i8* %2, i32 21
  %166 = load i8, i8* %165, align 1, !tbaa !6
  %167 = zext i8 %166 to i64
  %168 = shl nuw nsw i64 %167, 16
  %169 = or i64 %164, %168
  %170 = getelementptr inbounds i8, i8* %2, i32 22
  %171 = load i8, i8* %170, align 1, !tbaa !6
  %172 = zext i8 %171 to i64
  %173 = shl nuw nsw i64 %172, 24
  %174 = or i64 %169, %173
  %175 = lshr i64 %174, 1
  %176 = and i64 %175, 67108863
  %177 = getelementptr inbounds [10 x i64], [10 x i64]* %32, i32 0, i32 6
  store i64 %176, i64* %177, align 8, !tbaa !9
  %178 = getelementptr inbounds i8, i8* %2, i32 23
  %179 = load i8, i8* %178, align 1, !tbaa !6
  %180 = zext i8 %179 to i64
  %181 = shl nuw nsw i64 %180, 8
  %182 = or i64 %181, %172
  %183 = getelementptr inbounds i8, i8* %2, i32 24
  %184 = load i8, i8* %183, align 1, !tbaa !6
  %185 = zext i8 %184 to i64
  %186 = shl nuw nsw i64 %185, 16
  %187 = or i64 %182, %186
  %188 = getelementptr inbounds i8, i8* %2, i32 25
  %189 = load i8, i8* %188, align 1, !tbaa !6
  %190 = zext i8 %189 to i64
  %191 = shl nuw nsw i64 %190, 24
  %192 = or i64 %187, %191
  %193 = lshr i64 %192, 3
  %194 = and i64 %193, 33554431
  %195 = getelementptr inbounds [10 x i64], [10 x i64]* %32, i32 0, i32 7
  store i64 %194, i64* %195, align 8, !tbaa !9
  %196 = getelementptr inbounds i8, i8* %2, i32 26
  %197 = load i8, i8* %196, align 1, !tbaa !6
  %198 = zext i8 %197 to i64
  %199 = shl nuw nsw i64 %198, 8
  %200 = or i64 %199, %190
  %201 = getelementptr inbounds i8, i8* %2, i32 27
  %202 = load i8, i8* %201, align 1, !tbaa !6
  %203 = zext i8 %202 to i64
  %204 = shl nuw nsw i64 %203, 16
  %205 = or i64 %200, %204
  %206 = getelementptr inbounds i8, i8* %2, i32 28
  %207 = load i8, i8* %206, align 1, !tbaa !6
  %208 = zext i8 %207 to i64
  %209 = shl nuw nsw i64 %208, 24
  %210 = or i64 %205, %209
  %211 = lshr i64 %210, 4
  %212 = and i64 %211, 67108863
  %213 = getelementptr inbounds [10 x i64], [10 x i64]* %32, i32 0, i32 8
  store i64 %212, i64* %213, align 8, !tbaa !9
  %214 = getelementptr inbounds i8, i8* %2, i32 29
  %215 = load i8, i8* %214, align 1, !tbaa !6
  %216 = zext i8 %215 to i64
  %217 = shl nuw nsw i64 %216, 8
  %218 = or i64 %217, %208
  %219 = getelementptr inbounds i8, i8* %2, i32 30
  %220 = load i8, i8* %219, align 1, !tbaa !6
  %221 = zext i8 %220 to i64
  %222 = shl nuw nsw i64 %221, 16
  %223 = or i64 %218, %222
  %224 = getelementptr inbounds i8, i8* %2, i32 31
  %225 = load i8, i8* %224, align 1, !tbaa !6
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, 24
  %228 = or i64 %223, %227
  %229 = lshr i64 %228, 6
  %230 = and i64 %229, 33554431
  %231 = getelementptr inbounds [10 x i64], [10 x i64]* %32, i32 0, i32 9
  store i64 %230, i64* %231, align 8, !tbaa !9
  %232 = getelementptr inbounds [10 x i64], [10 x i64]* %33, i32 0, i32 0
  %233 = bitcast [19 x i64]* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %233) #7
  %234 = bitcast [19 x i64]* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %234) #7
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(152) %234, i8 0, i32 152, i1 false) #7
  %235 = getelementptr inbounds [19 x i64], [19 x i64]* %25, i32 0, i32 0
  store i64 1, i64* %235, align 8
  %236 = bitcast [19 x i64]* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %236) #7
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(152) %236, i8 0, i32 152, i1 false) #7
  %237 = getelementptr inbounds [19 x i64], [19 x i64]* %26, i32 0, i32 0
  store i64 1, i64* %237, align 8
  %238 = bitcast [19 x i64]* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %238) #7
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(152) %238, i8 0, i32 152, i1 false) #7
  %239 = getelementptr inbounds [19 x i64], [19 x i64]* %24, i32 0, i32 0
  %240 = getelementptr inbounds [19 x i64], [19 x i64]* %27, i32 0, i32 0
  %241 = bitcast [19 x i64]* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %241) #7
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(152) %241, i8 0, i32 152, i1 false) #7
  %242 = bitcast [19 x i64]* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %242) #7
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(152) %242, i8 0, i32 152, i1 false) #7
  %243 = getelementptr inbounds [19 x i64], [19 x i64]* %29, i32 0, i32 0
  store i64 1, i64* %243, align 8
  %244 = bitcast [19 x i64]* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %244) #7
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(152) %244, i8 0, i32 152, i1 false) #7
  %245 = bitcast [19 x i64]* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %245) #7
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(152) %245, i8 0, i32 152, i1 false) #7
  %246 = getelementptr inbounds [19 x i64], [19 x i64]* %31, i32 0, i32 0
  store i64 1, i64* %246, align 8
  %247 = getelementptr inbounds [19 x i64], [19 x i64]* %28, i32 0, i32 0
  %248 = getelementptr inbounds [19 x i64], [19 x i64]* %30, i32 0, i32 0
  %249 = bitcast [10 x i64]* %32 to i8*
  %250 = getelementptr inbounds [19 x i64], [19 x i64]* %24, i32 0, i32 10
  %251 = bitcast i64* %250 to i8*
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(72) %251, i8 0, i32 72, i1 false) #7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %233, i8* noundef nonnull align 8 dereferenceable(80) %249, i32 80, i1 false) #7
  %252 = bitcast [10 x i64]* %15 to i8*
  %253 = bitcast [10 x i64]* %16 to i8*
  %254 = bitcast [19 x i64]* %17 to i8*
  %255 = bitcast [19 x i64]* %18 to i8*
  %256 = bitcast [19 x i64]* %19 to i8*
  %257 = bitcast [19 x i64]* %20 to i8*
  %258 = bitcast [19 x i64]* %21 to i8*
  %259 = bitcast [19 x i64]* %22 to i8*
  %260 = bitcast [19 x i64]* %23 to i8*
  %261 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 0
  %262 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 0
  %263 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 18
  %264 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 8
  %265 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 17
  %266 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 7
  %267 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 16
  %268 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 6
  %269 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 15
  %270 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 5
  %271 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 14
  %272 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 4
  %273 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 13
  %274 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 3
  %275 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 12
  %276 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 2
  %277 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 11
  %278 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 1
  %279 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 10
  %280 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 18
  %281 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 8
  %282 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 17
  %283 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 7
  %284 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 16
  %285 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 6
  %286 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 15
  %287 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 5
  %288 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 14
  %289 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 4
  %290 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 13
  %291 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 3
  %292 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 12
  %293 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 2
  %294 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 11
  %295 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 1
  %296 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 10
  %297 = getelementptr inbounds [19 x i64], [19 x i64]* %23, i32 0, i32 0
  %298 = getelementptr inbounds [19 x i64], [19 x i64]* %22, i32 0, i32 0
  %299 = getelementptr inbounds [19 x i64], [19 x i64]* %18, i32 0, i32 0
  %300 = getelementptr inbounds [19 x i64], [19 x i64]* %19, i32 0, i32 0
  %301 = getelementptr inbounds [19 x i64], [19 x i64]* %17, i32 0, i32 10
  %302 = bitcast i64* %301 to i8*
  %303 = getelementptr inbounds [19 x i64], [19 x i64]* %17, i32 0, i32 0
  %304 = getelementptr inbounds [19 x i64], [19 x i64]* %17, i32 0, i32 1
  br label %305

305:                                              ; preds = %1066, %3
  %306 = phi i64* [ %239, %3 ], [ %325, %1066 ]
  %307 = phi i32 [ 0, %3 ], [ %1067, %1066 ]
  %308 = phi i64* [ %246, %3 ], [ %327, %1066 ]
  %309 = phi i64* [ %248, %3 ], [ %328, %1066 ]
  %310 = phi i64* [ %243, %3 ], [ %326, %1066 ]
  %311 = phi i64* [ %247, %3 ], [ %319, %1066 ]
  %312 = phi i64* [ %235, %3 ], [ %324, %1066 ]
  %313 = phi i64* [ %240, %3 ], [ %322, %1066 ]
  %314 = phi i64* [ %237, %3 ], [ %323, %1066 ]
  %315 = sub nuw nsw i32 31, %307
  %316 = getelementptr inbounds [32 x i8], [32 x i8]* %36, i32 0, i32 %315
  %317 = load i8, i8* %316, align 1, !tbaa !6
  br label %318

318:                                              ; preds = %1062, %305
  %319 = phi i64* [ %306, %305 ], [ %325, %1062 ]
  %320 = phi i8 [ %317, %305 ], [ %1063, %1062 ]
  %321 = phi i32 [ 0, %305 ], [ %1064, %1062 ]
  %322 = phi i64* [ %308, %305 ], [ %327, %1062 ]
  %323 = phi i64* [ %309, %305 ], [ %328, %1062 ]
  %324 = phi i64* [ %310, %305 ], [ %326, %1062 ]
  %325 = phi i64* [ %311, %305 ], [ %319, %1062 ]
  %326 = phi i64* [ %312, %305 ], [ %324, %1062 ]
  %327 = phi i64* [ %313, %305 ], [ %322, %1062 ]
  %328 = phi i64* [ %314, %305 ], [ %323, %1062 ]
  %329 = lshr i8 %320, 7
  %330 = zext i8 %329 to i32
  %331 = sub nsw i32 0, %330
  br label %332

332:                                              ; preds = %332, %318
  %333 = phi i32 [ 0, %318 ], [ %347, %332 ]
  %334 = getelementptr inbounds i64, i64* %328, i32 %333
  %335 = load i64, i64* %334, align 4, !tbaa !9
  %336 = trunc i64 %335 to i32
  %337 = getelementptr inbounds i64, i64* %319, i32 %333
  %338 = load i64, i64* %337, align 4, !tbaa !9
  %339 = xor i64 %338, %335
  %340 = trunc i64 %339 to i32
  %341 = and i32 %340, %331
  %342 = xor i32 %341, %336
  %343 = sext i32 %342 to i64
  store i64 %343, i64* %334, align 4, !tbaa !9
  %344 = trunc i64 %338 to i32
  %345 = xor i32 %341, %344
  %346 = sext i32 %345 to i64
  store i64 %346, i64* %337, align 4, !tbaa !9
  %347 = add nuw nsw i32 %333, 1
  %348 = icmp eq i32 %347, 10
  br i1 %348, label %349, label %332, !llvm.loop !11

349:                                              ; preds = %349, %332
  %350 = phi i32 [ %364, %349 ], [ 0, %332 ]
  %351 = getelementptr inbounds i64, i64* %327, i32 %350
  %352 = load i64, i64* %351, align 4, !tbaa !9
  %353 = trunc i64 %352 to i32
  %354 = getelementptr inbounds i64, i64* %326, i32 %350
  %355 = load i64, i64* %354, align 4, !tbaa !9
  %356 = xor i64 %355, %352
  %357 = trunc i64 %356 to i32
  %358 = and i32 %357, %331
  %359 = xor i32 %358, %353
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %351, align 4, !tbaa !9
  %361 = trunc i64 %355 to i32
  %362 = xor i32 %358, %361
  %363 = sext i32 %362 to i64
  store i64 %363, i64* %354, align 4, !tbaa !9
  %364 = add nuw nsw i32 %350, 1
  %365 = icmp eq i32 %364, 10
  br i1 %365, label %366, label %349, !llvm.loop !11

366:                                              ; preds = %349
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %252) #7
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %253) #7
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %254) #7
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %255) #7
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %256) #7
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %257) #7
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %258) #7
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %259) #7
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %260) #7
  %367 = bitcast i64* %328 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %252, i8* noundef nonnull align 4 dereferenceable(80) %367, i32 80, i1 false) #7
  br label %368

368:                                              ; preds = %368, %366
  %369 = phi i32 [ 0, %366 ], [ %381, %368 ]
  %370 = getelementptr inbounds i64, i64* %328, i32 %369
  %371 = load i64, i64* %370, align 4, !tbaa !9
  %372 = getelementptr inbounds i64, i64* %327, i32 %369
  %373 = load i64, i64* %372, align 4, !tbaa !9
  %374 = add nsw i64 %373, %371
  store i64 %374, i64* %370, align 4, !tbaa !9
  %375 = or i32 %369, 1
  %376 = getelementptr inbounds i64, i64* %328, i32 %375
  %377 = load i64, i64* %376, align 4, !tbaa !9
  %378 = getelementptr inbounds i64, i64* %327, i32 %375
  %379 = load i64, i64* %378, align 4, !tbaa !9
  %380 = add nsw i64 %379, %377
  store i64 %380, i64* %376, align 4, !tbaa !9
  %381 = add nuw nsw i32 %369, 2
  %382 = icmp ult i32 %369, 8
  br i1 %382, label %368, label %383, !llvm.loop !14

383:                                              ; preds = %383, %368
  %384 = phi i32 [ %390, %383 ], [ 0, %368 ]
  %385 = getelementptr inbounds [10 x i64], [10 x i64]* %15, i32 0, i32 %384
  %386 = load i64, i64* %385, align 8, !tbaa !9
  %387 = getelementptr inbounds i64, i64* %327, i32 %384
  %388 = load i64, i64* %387, align 4, !tbaa !9
  %389 = sub nsw i64 %386, %388
  store i64 %389, i64* %387, align 4, !tbaa !9
  %390 = add nuw nsw i32 %384, 1
  %391 = icmp eq i32 %390, 10
  br i1 %391, label %392, label %383, !llvm.loop !15

392:                                              ; preds = %383
  %393 = bitcast i64* %319 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %253, i8* noundef nonnull align 4 dereferenceable(80) %393, i32 80, i1 false) #7
  br label %394

394:                                              ; preds = %394, %392
  %395 = phi i32 [ 0, %392 ], [ %407, %394 ]
  %396 = getelementptr inbounds i64, i64* %319, i32 %395
  %397 = load i64, i64* %396, align 4, !tbaa !9
  %398 = getelementptr inbounds i64, i64* %326, i32 %395
  %399 = load i64, i64* %398, align 4, !tbaa !9
  %400 = add nsw i64 %399, %397
  store i64 %400, i64* %396, align 4, !tbaa !9
  %401 = or i32 %395, 1
  %402 = getelementptr inbounds i64, i64* %319, i32 %401
  %403 = load i64, i64* %402, align 4, !tbaa !9
  %404 = getelementptr inbounds i64, i64* %326, i32 %401
  %405 = load i64, i64* %404, align 4, !tbaa !9
  %406 = add nsw i64 %405, %403
  store i64 %406, i64* %402, align 4, !tbaa !9
  %407 = add nuw nsw i32 %395, 2
  %408 = icmp ult i32 %395, 8
  br i1 %408, label %394, label %409, !llvm.loop !14

409:                                              ; preds = %409, %394
  %410 = phi i32 [ %416, %409 ], [ 0, %394 ]
  %411 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i32 0, i32 %410
  %412 = load i64, i64* %411, align 8, !tbaa !9
  %413 = getelementptr inbounds i64, i64* %326, i32 %410
  %414 = load i64, i64* %413, align 4, !tbaa !9
  %415 = sub nsw i64 %412, %414
  store i64 %415, i64* %413, align 4, !tbaa !9
  %416 = add nuw nsw i32 %410, 1
  %417 = icmp eq i32 %416, 10
  br i1 %417, label %418, label %409, !llvm.loop !15

418:                                              ; preds = %409
  call fastcc void @fproduct(i64* noundef nonnull %261, i64* noundef %319, i64* noundef %327) #7
  call fastcc void @fproduct(i64* noundef nonnull %262, i64* noundef %328, i64* noundef %326) #7
  %419 = load i64, i64* %263, align 8, !tbaa !9
  %420 = load i64, i64* %264, align 8, !tbaa !9
  %421 = mul i64 %419, 18
  %422 = add i64 %420, %419
  %423 = add i64 %422, %421
  store i64 %423, i64* %264, align 8, !tbaa !9
  %424 = load i64, i64* %265, align 8, !tbaa !9
  %425 = load i64, i64* %266, align 8, !tbaa !9
  %426 = mul i64 %424, 18
  %427 = add i64 %425, %424
  %428 = add i64 %427, %426
  store i64 %428, i64* %266, align 8, !tbaa !9
  %429 = load i64, i64* %267, align 8, !tbaa !9
  %430 = load i64, i64* %268, align 8, !tbaa !9
  %431 = mul i64 %429, 18
  %432 = add i64 %430, %429
  %433 = add i64 %432, %431
  store i64 %433, i64* %268, align 8, !tbaa !9
  %434 = load i64, i64* %269, align 8, !tbaa !9
  %435 = load i64, i64* %270, align 8, !tbaa !9
  %436 = mul i64 %434, 18
  %437 = add i64 %435, %434
  %438 = add i64 %437, %436
  store i64 %438, i64* %270, align 8, !tbaa !9
  %439 = load i64, i64* %271, align 8, !tbaa !9
  %440 = load i64, i64* %272, align 8, !tbaa !9
  %441 = mul i64 %439, 18
  %442 = add i64 %440, %439
  %443 = add i64 %442, %441
  store i64 %443, i64* %272, align 8, !tbaa !9
  %444 = load i64, i64* %273, align 8, !tbaa !9
  %445 = load i64, i64* %274, align 8, !tbaa !9
  %446 = mul i64 %444, 18
  %447 = add i64 %445, %444
  %448 = add i64 %447, %446
  store i64 %448, i64* %274, align 8, !tbaa !9
  %449 = load i64, i64* %275, align 8, !tbaa !9
  %450 = load i64, i64* %276, align 8, !tbaa !9
  %451 = mul i64 %449, 18
  %452 = add i64 %450, %449
  %453 = add i64 %452, %451
  store i64 %453, i64* %276, align 8, !tbaa !9
  %454 = load i64, i64* %277, align 8, !tbaa !9
  %455 = load i64, i64* %278, align 8, !tbaa !9
  %456 = mul i64 %454, 18
  %457 = add i64 %455, %454
  %458 = add i64 %457, %456
  store i64 %458, i64* %278, align 8, !tbaa !9
  %459 = load i64, i64* %279, align 8, !tbaa !9
  %460 = load i64, i64* %261, align 8, !tbaa !9
  %461 = mul i64 %459, 18
  %462 = add i64 %460, %459
  %463 = add i64 %462, %461
  store i64 %463, i64* %261, align 8, !tbaa !9
  store i64 0, i64* %279, align 8, !tbaa !9
  br label %464

464:                                              ; preds = %464, %418
  %465 = phi i32 [ 0, %418 ], [ %490, %464 ]
  %466 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 %465
  %467 = load i64, i64* %466, align 8, !tbaa !9
  %468 = lshr i64 %467, 32
  %469 = trunc i64 %468 to i32
  %470 = ashr i32 %469, 31
  %471 = lshr i32 %470, 6
  %472 = zext i32 %471 to i64
  %473 = add nsw i64 %467, %472
  %474 = ashr i64 %473, 26
  %475 = mul i64 %474, -67108864
  %476 = add i64 %475, %467
  store i64 %476, i64* %466, align 8, !tbaa !9
  %477 = or i32 %465, 1
  %478 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 %477
  %479 = load i64, i64* %478, align 8, !tbaa !9
  %480 = add nsw i64 %474, %479
  %481 = lshr i64 %480, 32
  %482 = trunc i64 %481 to i32
  %483 = ashr i32 %482, 31
  %484 = lshr i32 %483, 7
  %485 = zext i32 %484 to i64
  %486 = add nsw i64 %480, %485
  %487 = ashr i64 %486, 25
  %488 = mul i64 %487, -33554432
  %489 = add i64 %488, %480
  store i64 %489, i64* %478, align 8, !tbaa !9
  %490 = add nuw nsw i32 %465, 2
  %491 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 %490
  %492 = load i64, i64* %491, align 8, !tbaa !9
  %493 = add nsw i64 %487, %492
  store i64 %493, i64* %491, align 8, !tbaa !9
  %494 = icmp ult i32 %465, 8
  br i1 %494, label %464, label %495, !llvm.loop !16

495:                                              ; preds = %464
  %496 = load i64, i64* %279, align 8, !tbaa !9
  %497 = load i64, i64* %261, align 8, !tbaa !9
  %498 = mul i64 %496, 18
  %499 = add i64 %497, %496
  %500 = add i64 %499, %498
  store i64 %500, i64* %261, align 8, !tbaa !9
  store i64 0, i64* %279, align 8, !tbaa !9
  %501 = lshr i64 %500, 32
  %502 = trunc i64 %501 to i32
  %503 = ashr i32 %502, 31
  %504 = lshr i32 %503, 6
  %505 = zext i32 %504 to i64
  %506 = add nsw i64 %500, %505
  %507 = ashr i64 %506, 26
  %508 = mul i64 %507, -67108864
  %509 = add i64 %508, %500
  store i64 %509, i64* %261, align 8, !tbaa !9
  %510 = load i64, i64* %278, align 8, !tbaa !9
  %511 = add nsw i64 %507, %510
  store i64 %511, i64* %278, align 8, !tbaa !9
  %512 = load i64, i64* %280, align 8, !tbaa !9
  %513 = load i64, i64* %281, align 8, !tbaa !9
  %514 = mul i64 %512, 18
  %515 = add i64 %513, %512
  %516 = add i64 %515, %514
  store i64 %516, i64* %281, align 8, !tbaa !9
  %517 = load i64, i64* %282, align 8, !tbaa !9
  %518 = load i64, i64* %283, align 8, !tbaa !9
  %519 = mul i64 %517, 18
  %520 = add i64 %518, %517
  %521 = add i64 %520, %519
  store i64 %521, i64* %283, align 8, !tbaa !9
  %522 = load i64, i64* %284, align 8, !tbaa !9
  %523 = load i64, i64* %285, align 8, !tbaa !9
  %524 = mul i64 %522, 18
  %525 = add i64 %523, %522
  %526 = add i64 %525, %524
  store i64 %526, i64* %285, align 8, !tbaa !9
  %527 = load i64, i64* %286, align 8, !tbaa !9
  %528 = load i64, i64* %287, align 8, !tbaa !9
  %529 = mul i64 %527, 18
  %530 = add i64 %528, %527
  %531 = add i64 %530, %529
  store i64 %531, i64* %287, align 8, !tbaa !9
  %532 = load i64, i64* %288, align 8, !tbaa !9
  %533 = load i64, i64* %289, align 8, !tbaa !9
  %534 = mul i64 %532, 18
  %535 = add i64 %533, %532
  %536 = add i64 %535, %534
  store i64 %536, i64* %289, align 8, !tbaa !9
  %537 = load i64, i64* %290, align 8, !tbaa !9
  %538 = load i64, i64* %291, align 8, !tbaa !9
  %539 = mul i64 %537, 18
  %540 = add i64 %538, %537
  %541 = add i64 %540, %539
  store i64 %541, i64* %291, align 8, !tbaa !9
  %542 = load i64, i64* %292, align 8, !tbaa !9
  %543 = load i64, i64* %293, align 8, !tbaa !9
  %544 = mul i64 %542, 18
  %545 = add i64 %543, %542
  %546 = add i64 %545, %544
  store i64 %546, i64* %293, align 8, !tbaa !9
  %547 = load i64, i64* %294, align 8, !tbaa !9
  %548 = load i64, i64* %295, align 8, !tbaa !9
  %549 = mul i64 %547, 18
  %550 = add i64 %548, %547
  %551 = add i64 %550, %549
  store i64 %551, i64* %295, align 8, !tbaa !9
  %552 = load i64, i64* %296, align 8, !tbaa !9
  %553 = load i64, i64* %262, align 8, !tbaa !9
  %554 = mul i64 %552, 18
  %555 = add i64 %553, %552
  %556 = add i64 %555, %554
  store i64 %556, i64* %262, align 8, !tbaa !9
  store i64 0, i64* %296, align 8, !tbaa !9
  br label %557

557:                                              ; preds = %557, %495
  %558 = phi i32 [ 0, %495 ], [ %583, %557 ]
  %559 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 %558
  %560 = load i64, i64* %559, align 8, !tbaa !9
  %561 = lshr i64 %560, 32
  %562 = trunc i64 %561 to i32
  %563 = ashr i32 %562, 31
  %564 = lshr i32 %563, 6
  %565 = zext i32 %564 to i64
  %566 = add nsw i64 %560, %565
  %567 = ashr i64 %566, 26
  %568 = mul i64 %567, -67108864
  %569 = add i64 %568, %560
  store i64 %569, i64* %559, align 8, !tbaa !9
  %570 = or i32 %558, 1
  %571 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 %570
  %572 = load i64, i64* %571, align 8, !tbaa !9
  %573 = add nsw i64 %567, %572
  %574 = lshr i64 %573, 32
  %575 = trunc i64 %574 to i32
  %576 = ashr i32 %575, 31
  %577 = lshr i32 %576, 7
  %578 = zext i32 %577 to i64
  %579 = add nsw i64 %573, %578
  %580 = ashr i64 %579, 25
  %581 = mul i64 %580, -33554432
  %582 = add i64 %581, %573
  store i64 %582, i64* %571, align 8, !tbaa !9
  %583 = add nuw nsw i32 %558, 2
  %584 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 %583
  %585 = load i64, i64* %584, align 8, !tbaa !9
  %586 = add nsw i64 %580, %585
  store i64 %586, i64* %584, align 8, !tbaa !9
  %587 = icmp ult i32 %558, 8
  br i1 %587, label %557, label %588, !llvm.loop !16

588:                                              ; preds = %557
  %589 = load i64, i64* %296, align 8, !tbaa !9
  %590 = load i64, i64* %262, align 8, !tbaa !9
  %591 = mul i64 %589, 18
  %592 = add i64 %590, %589
  %593 = add i64 %592, %591
  store i64 %593, i64* %262, align 8, !tbaa !9
  store i64 0, i64* %296, align 8, !tbaa !9
  %594 = lshr i64 %593, 32
  %595 = trunc i64 %594 to i32
  %596 = ashr i32 %595, 31
  %597 = lshr i32 %596, 6
  %598 = zext i32 %597 to i64
  %599 = add nsw i64 %593, %598
  %600 = ashr i64 %599, 26
  %601 = mul i64 %600, -67108864
  %602 = add i64 %601, %593
  store i64 %602, i64* %262, align 8, !tbaa !9
  %603 = load i64, i64* %295, align 8, !tbaa !9
  %604 = add nsw i64 %600, %603
  store i64 %604, i64* %295, align 8, !tbaa !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %253, i8* noundef nonnull align 8 dereferenceable(80) %257, i32 80, i1 false) #7
  br label %605

605:                                              ; preds = %605, %588
  %606 = phi i32 [ 0, %588 ], [ %618, %605 ]
  %607 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 %606
  %608 = load i64, i64* %607, align 8, !tbaa !9
  %609 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 %606
  %610 = load i64, i64* %609, align 8, !tbaa !9
  %611 = add nsw i64 %610, %608
  store i64 %611, i64* %607, align 8, !tbaa !9
  %612 = or i32 %606, 1
  %613 = getelementptr inbounds [19 x i64], [19 x i64]* %20, i32 0, i32 %612
  %614 = load i64, i64* %613, align 8, !tbaa !9
  %615 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 %612
  %616 = load i64, i64* %615, align 8, !tbaa !9
  %617 = add nsw i64 %616, %614
  store i64 %617, i64* %613, align 8, !tbaa !9
  %618 = add nuw nsw i32 %606, 2
  %619 = icmp ult i32 %606, 8
  br i1 %619, label %605, label %620, !llvm.loop !14

620:                                              ; preds = %620, %605
  %621 = phi i32 [ %627, %620 ], [ 0, %605 ]
  %622 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i32 0, i32 %621
  %623 = load i64, i64* %622, align 8, !tbaa !9
  %624 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 %621
  %625 = load i64, i64* %624, align 8, !tbaa !9
  %626 = sub nsw i64 %623, %625
  store i64 %626, i64* %624, align 8, !tbaa !9
  %627 = add nuw nsw i32 %621, 1
  %628 = icmp eq i32 %627, 10
  br i1 %628, label %629, label %620, !llvm.loop !15

629:                                              ; preds = %620
  call fastcc void @fsquare(i64* noundef nonnull %297, i64* noundef nonnull %261) #7
  call fastcc void @fsquare(i64* noundef nonnull %298, i64* noundef nonnull %262) #7
  call fastcc void @fproduct(i64* noundef nonnull %262, i64* noundef nonnull %298, i64* noundef nonnull %49) #7
  %630 = load i64, i64* %280, align 8, !tbaa !9
  %631 = load i64, i64* %281, align 8, !tbaa !9
  %632 = mul i64 %630, 18
  %633 = add i64 %631, %630
  %634 = add i64 %633, %632
  store i64 %634, i64* %281, align 8, !tbaa !9
  %635 = load i64, i64* %282, align 8, !tbaa !9
  %636 = load i64, i64* %283, align 8, !tbaa !9
  %637 = mul i64 %635, 18
  %638 = add i64 %636, %635
  %639 = add i64 %638, %637
  store i64 %639, i64* %283, align 8, !tbaa !9
  %640 = load i64, i64* %284, align 8, !tbaa !9
  %641 = load i64, i64* %285, align 8, !tbaa !9
  %642 = mul i64 %640, 18
  %643 = add i64 %641, %640
  %644 = add i64 %643, %642
  store i64 %644, i64* %285, align 8, !tbaa !9
  %645 = load i64, i64* %286, align 8, !tbaa !9
  %646 = load i64, i64* %287, align 8, !tbaa !9
  %647 = mul i64 %645, 18
  %648 = add i64 %646, %645
  %649 = add i64 %648, %647
  store i64 %649, i64* %287, align 8, !tbaa !9
  %650 = load i64, i64* %288, align 8, !tbaa !9
  %651 = load i64, i64* %289, align 8, !tbaa !9
  %652 = mul i64 %650, 18
  %653 = add i64 %651, %650
  %654 = add i64 %653, %652
  store i64 %654, i64* %289, align 8, !tbaa !9
  %655 = load i64, i64* %290, align 8, !tbaa !9
  %656 = load i64, i64* %291, align 8, !tbaa !9
  %657 = mul i64 %655, 18
  %658 = add i64 %656, %655
  %659 = add i64 %658, %657
  store i64 %659, i64* %291, align 8, !tbaa !9
  %660 = load i64, i64* %292, align 8, !tbaa !9
  %661 = load i64, i64* %293, align 8, !tbaa !9
  %662 = mul i64 %660, 18
  %663 = add i64 %661, %660
  %664 = add i64 %663, %662
  store i64 %664, i64* %293, align 8, !tbaa !9
  %665 = load i64, i64* %294, align 8, !tbaa !9
  %666 = load i64, i64* %295, align 8, !tbaa !9
  %667 = mul i64 %665, 18
  %668 = add i64 %666, %665
  %669 = add i64 %668, %667
  store i64 %669, i64* %295, align 8, !tbaa !9
  %670 = load i64, i64* %296, align 8, !tbaa !9
  %671 = load i64, i64* %262, align 8, !tbaa !9
  %672 = mul i64 %670, 18
  %673 = add i64 %671, %670
  %674 = add i64 %673, %672
  store i64 %674, i64* %262, align 8, !tbaa !9
  store i64 0, i64* %296, align 8, !tbaa !9
  br label %675

675:                                              ; preds = %675, %629
  %676 = phi i32 [ 0, %629 ], [ %701, %675 ]
  %677 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 %676
  %678 = load i64, i64* %677, align 8, !tbaa !9
  %679 = lshr i64 %678, 32
  %680 = trunc i64 %679 to i32
  %681 = ashr i32 %680, 31
  %682 = lshr i32 %681, 6
  %683 = zext i32 %682 to i64
  %684 = add nsw i64 %678, %683
  %685 = ashr i64 %684, 26
  %686 = mul i64 %685, -67108864
  %687 = add i64 %686, %678
  store i64 %687, i64* %677, align 8, !tbaa !9
  %688 = or i32 %676, 1
  %689 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 %688
  %690 = load i64, i64* %689, align 8, !tbaa !9
  %691 = add nsw i64 %685, %690
  %692 = lshr i64 %691, 32
  %693 = trunc i64 %692 to i32
  %694 = ashr i32 %693, 31
  %695 = lshr i32 %694, 7
  %696 = zext i32 %695 to i64
  %697 = add nsw i64 %691, %696
  %698 = ashr i64 %697, 25
  %699 = mul i64 %698, -33554432
  %700 = add i64 %699, %691
  store i64 %700, i64* %689, align 8, !tbaa !9
  %701 = add nuw nsw i32 %676, 2
  %702 = getelementptr inbounds [19 x i64], [19 x i64]* %21, i32 0, i32 %701
  %703 = load i64, i64* %702, align 8, !tbaa !9
  %704 = add nsw i64 %698, %703
  store i64 %704, i64* %702, align 8, !tbaa !9
  %705 = icmp ult i32 %676, 8
  br i1 %705, label %675, label %706, !llvm.loop !16

706:                                              ; preds = %675
  %707 = load i64, i64* %296, align 8, !tbaa !9
  %708 = load i64, i64* %262, align 8, !tbaa !9
  %709 = mul i64 %707, 18
  %710 = add i64 %708, %707
  %711 = add i64 %710, %709
  store i64 %711, i64* %262, align 8, !tbaa !9
  store i64 0, i64* %296, align 8, !tbaa !9
  %712 = lshr i64 %711, 32
  %713 = trunc i64 %712 to i32
  %714 = ashr i32 %713, 31
  %715 = lshr i32 %714, 6
  %716 = zext i32 %715 to i64
  %717 = add nsw i64 %711, %716
  %718 = ashr i64 %717, 26
  %719 = mul i64 %718, -67108864
  %720 = add i64 %719, %711
  store i64 %720, i64* %262, align 8, !tbaa !9
  %721 = load i64, i64* %295, align 8, !tbaa !9
  %722 = add nsw i64 %718, %721
  store i64 %722, i64* %295, align 8, !tbaa !9
  %723 = bitcast i64* %325 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(80) %723, i8* noundef nonnull align 8 dereferenceable(80) %260, i32 80, i1 false) #7
  %724 = bitcast i64* %324 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(80) %724, i8* noundef nonnull align 8 dereferenceable(80) %258, i32 80, i1 false) #7
  call fastcc void @fsquare(i64* noundef nonnull %299, i64* noundef %328) #7
  call fastcc void @fsquare(i64* noundef nonnull %300, i64* noundef %327) #7
  call fastcc void @fproduct(i64* noundef %323, i64* noundef nonnull %299, i64* noundef nonnull %300) #7
  %725 = getelementptr inbounds i64, i64* %323, i32 18
  %726 = load i64, i64* %725, align 4, !tbaa !9
  %727 = getelementptr inbounds i64, i64* %323, i32 8
  %728 = load i64, i64* %727, align 4, !tbaa !9
  %729 = mul i64 %726, 18
  %730 = add i64 %728, %726
  %731 = add i64 %730, %729
  store i64 %731, i64* %727, align 4, !tbaa !9
  %732 = getelementptr inbounds i64, i64* %323, i32 17
  %733 = load i64, i64* %732, align 4, !tbaa !9
  %734 = getelementptr inbounds i64, i64* %323, i32 7
  %735 = load i64, i64* %734, align 4, !tbaa !9
  %736 = mul i64 %733, 18
  %737 = add i64 %735, %733
  %738 = add i64 %737, %736
  store i64 %738, i64* %734, align 4, !tbaa !9
  %739 = getelementptr inbounds i64, i64* %323, i32 16
  %740 = load i64, i64* %739, align 4, !tbaa !9
  %741 = getelementptr inbounds i64, i64* %323, i32 6
  %742 = load i64, i64* %741, align 4, !tbaa !9
  %743 = mul i64 %740, 18
  %744 = add i64 %742, %740
  %745 = add i64 %744, %743
  store i64 %745, i64* %741, align 4, !tbaa !9
  %746 = getelementptr inbounds i64, i64* %323, i32 15
  %747 = load i64, i64* %746, align 4, !tbaa !9
  %748 = getelementptr inbounds i64, i64* %323, i32 5
  %749 = load i64, i64* %748, align 4, !tbaa !9
  %750 = mul i64 %747, 18
  %751 = add i64 %749, %747
  %752 = add i64 %751, %750
  store i64 %752, i64* %748, align 4, !tbaa !9
  %753 = getelementptr inbounds i64, i64* %323, i32 14
  %754 = load i64, i64* %753, align 4, !tbaa !9
  %755 = getelementptr inbounds i64, i64* %323, i32 4
  %756 = load i64, i64* %755, align 4, !tbaa !9
  %757 = mul i64 %754, 18
  %758 = add i64 %756, %754
  %759 = add i64 %758, %757
  store i64 %759, i64* %755, align 4, !tbaa !9
  %760 = getelementptr inbounds i64, i64* %323, i32 13
  %761 = load i64, i64* %760, align 4, !tbaa !9
  %762 = getelementptr inbounds i64, i64* %323, i32 3
  %763 = load i64, i64* %762, align 4, !tbaa !9
  %764 = mul i64 %761, 18
  %765 = add i64 %763, %761
  %766 = add i64 %765, %764
  store i64 %766, i64* %762, align 4, !tbaa !9
  %767 = getelementptr inbounds i64, i64* %323, i32 12
  %768 = load i64, i64* %767, align 4, !tbaa !9
  %769 = getelementptr inbounds i64, i64* %323, i32 2
  %770 = load i64, i64* %769, align 4, !tbaa !9
  %771 = mul i64 %768, 18
  %772 = add i64 %770, %768
  %773 = add i64 %772, %771
  store i64 %773, i64* %769, align 4, !tbaa !9
  %774 = getelementptr inbounds i64, i64* %323, i32 11
  %775 = load i64, i64* %774, align 4, !tbaa !9
  %776 = getelementptr inbounds i64, i64* %323, i32 1
  %777 = load i64, i64* %776, align 4, !tbaa !9
  %778 = mul i64 %775, 18
  %779 = add i64 %777, %775
  %780 = add i64 %779, %778
  store i64 %780, i64* %776, align 4, !tbaa !9
  %781 = getelementptr inbounds i64, i64* %323, i32 10
  %782 = load i64, i64* %781, align 4, !tbaa !9
  %783 = load i64, i64* %323, align 4, !tbaa !9
  %784 = mul i64 %782, 18
  %785 = add i64 %783, %782
  %786 = add i64 %785, %784
  store i64 %786, i64* %323, align 4, !tbaa !9
  store i64 0, i64* %781, align 4, !tbaa !9
  br label %787

787:                                              ; preds = %787, %706
  %788 = phi i32 [ 0, %706 ], [ %813, %787 ]
  %789 = getelementptr inbounds i64, i64* %323, i32 %788
  %790 = load i64, i64* %789, align 4, !tbaa !9
  %791 = lshr i64 %790, 32
  %792 = trunc i64 %791 to i32
  %793 = ashr i32 %792, 31
  %794 = lshr i32 %793, 6
  %795 = zext i32 %794 to i64
  %796 = add nsw i64 %790, %795
  %797 = ashr i64 %796, 26
  %798 = mul i64 %797, -67108864
  %799 = add i64 %798, %790
  store i64 %799, i64* %789, align 4, !tbaa !9
  %800 = or i32 %788, 1
  %801 = getelementptr inbounds i64, i64* %323, i32 %800
  %802 = load i64, i64* %801, align 4, !tbaa !9
  %803 = add nsw i64 %797, %802
  %804 = lshr i64 %803, 32
  %805 = trunc i64 %804 to i32
  %806 = ashr i32 %805, 31
  %807 = lshr i32 %806, 7
  %808 = zext i32 %807 to i64
  %809 = add nsw i64 %803, %808
  %810 = ashr i64 %809, 25
  %811 = mul i64 %810, -33554432
  %812 = add i64 %811, %803
  store i64 %812, i64* %801, align 4, !tbaa !9
  %813 = add nuw nsw i32 %788, 2
  %814 = getelementptr inbounds i64, i64* %323, i32 %813
  %815 = load i64, i64* %814, align 4, !tbaa !9
  %816 = add nsw i64 %810, %815
  store i64 %816, i64* %814, align 4, !tbaa !9
  %817 = icmp ult i32 %788, 8
  br i1 %817, label %787, label %818, !llvm.loop !16

818:                                              ; preds = %787
  %819 = load i64, i64* %781, align 4, !tbaa !9
  %820 = load i64, i64* %323, align 4, !tbaa !9
  %821 = mul i64 %819, 18
  %822 = add i64 %820, %819
  %823 = add i64 %822, %821
  store i64 %823, i64* %323, align 4, !tbaa !9
  store i64 0, i64* %781, align 4, !tbaa !9
  %824 = lshr i64 %823, 32
  %825 = trunc i64 %824 to i32
  %826 = ashr i32 %825, 31
  %827 = lshr i32 %826, 6
  %828 = zext i32 %827 to i64
  %829 = add nsw i64 %823, %828
  %830 = ashr i64 %829, 26
  %831 = mul i64 %830, -67108864
  %832 = add i64 %831, %823
  store i64 %832, i64* %323, align 4, !tbaa !9
  %833 = load i64, i64* %776, align 4, !tbaa !9
  %834 = add nsw i64 %830, %833
  store i64 %834, i64* %776, align 4, !tbaa !9
  br label %835

835:                                              ; preds = %835, %818
  %836 = phi i32 [ 0, %818 ], [ %842, %835 ]
  %837 = getelementptr inbounds [19 x i64], [19 x i64]* %18, i32 0, i32 %836
  %838 = load i64, i64* %837, align 8, !tbaa !9
  %839 = getelementptr inbounds [19 x i64], [19 x i64]* %19, i32 0, i32 %836
  %840 = load i64, i64* %839, align 8, !tbaa !9
  %841 = sub nsw i64 %838, %840
  store i64 %841, i64* %839, align 8, !tbaa !9
  %842 = add nuw nsw i32 %836, 1
  %843 = icmp eq i32 %842, 10
  br i1 %843, label %844, label %835, !llvm.loop !15

844:                                              ; preds = %835
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(72) %302, i8 0, i32 72, i1 false) #7
  br label %845

845:                                              ; preds = %845, %844
  %846 = phi i32 [ 0, %844 ], [ %851, %845 ]
  %847 = getelementptr inbounds [19 x i64], [19 x i64]* %19, i32 0, i32 %846
  %848 = load i64, i64* %847, align 8, !tbaa !9
  %849 = mul nsw i64 %848, 121665
  %850 = getelementptr inbounds [19 x i64], [19 x i64]* %17, i32 0, i32 %846
  store i64 %849, i64* %850, align 8, !tbaa !9
  %851 = add nuw nsw i32 %846, 1
  %852 = icmp eq i32 %851, 10
  br i1 %852, label %853, label %845, !llvm.loop !17

853:                                              ; preds = %845
  store i64 0, i64* %301, align 8, !tbaa !9
  br label %854

854:                                              ; preds = %854, %853
  %855 = phi i32 [ 0, %853 ], [ %880, %854 ]
  %856 = getelementptr inbounds [19 x i64], [19 x i64]* %17, i32 0, i32 %855
  %857 = load i64, i64* %856, align 8, !tbaa !9
  %858 = lshr i64 %857, 32
  %859 = trunc i64 %858 to i32
  %860 = ashr i32 %859, 31
  %861 = lshr i32 %860, 6
  %862 = zext i32 %861 to i64
  %863 = add nsw i64 %857, %862
  %864 = ashr i64 %863, 26
  %865 = mul i64 %864, -67108864
  %866 = add i64 %865, %857
  store i64 %866, i64* %856, align 8, !tbaa !9
  %867 = or i32 %855, 1
  %868 = getelementptr inbounds [19 x i64], [19 x i64]* %17, i32 0, i32 %867
  %869 = load i64, i64* %868, align 8, !tbaa !9
  %870 = add nsw i64 %864, %869
  %871 = lshr i64 %870, 32
  %872 = trunc i64 %871 to i32
  %873 = ashr i32 %872, 31
  %874 = lshr i32 %873, 7
  %875 = zext i32 %874 to i64
  %876 = add nsw i64 %870, %875
  %877 = ashr i64 %876, 25
  %878 = mul i64 %877, -33554432
  %879 = add i64 %878, %870
  store i64 %879, i64* %868, align 8, !tbaa !9
  %880 = add nuw nsw i32 %855, 2
  %881 = getelementptr inbounds [19 x i64], [19 x i64]* %17, i32 0, i32 %880
  %882 = load i64, i64* %881, align 8, !tbaa !9
  %883 = add nsw i64 %877, %882
  store i64 %883, i64* %881, align 8, !tbaa !9
  %884 = icmp ult i32 %855, 8
  br i1 %884, label %854, label %885, !llvm.loop !16

885:                                              ; preds = %854
  %886 = load i64, i64* %301, align 8, !tbaa !9
  %887 = load i64, i64* %303, align 8, !tbaa !9
  %888 = mul i64 %886, 18
  %889 = add i64 %887, %886
  %890 = add i64 %889, %888
  store i64 %890, i64* %303, align 8, !tbaa !9
  store i64 0, i64* %301, align 8, !tbaa !9
  %891 = lshr i64 %890, 32
  %892 = trunc i64 %891 to i32
  %893 = ashr i32 %892, 31
  %894 = lshr i32 %893, 6
  %895 = zext i32 %894 to i64
  %896 = add nsw i64 %890, %895
  %897 = ashr i64 %896, 26
  %898 = mul i64 %897, -67108864
  %899 = add i64 %898, %890
  store i64 %899, i64* %303, align 8, !tbaa !9
  %900 = load i64, i64* %304, align 8, !tbaa !9
  %901 = add nsw i64 %897, %900
  store i64 %901, i64* %304, align 8, !tbaa !9
  br label %902

902:                                              ; preds = %902, %885
  %903 = phi i32 [ 0, %885 ], [ %915, %902 ]
  %904 = getelementptr inbounds [19 x i64], [19 x i64]* %17, i32 0, i32 %903
  %905 = load i64, i64* %904, align 8, !tbaa !9
  %906 = getelementptr inbounds [19 x i64], [19 x i64]* %18, i32 0, i32 %903
  %907 = load i64, i64* %906, align 8, !tbaa !9
  %908 = add nsw i64 %907, %905
  store i64 %908, i64* %904, align 8, !tbaa !9
  %909 = or i32 %903, 1
  %910 = getelementptr inbounds [19 x i64], [19 x i64]* %17, i32 0, i32 %909
  %911 = load i64, i64* %910, align 8, !tbaa !9
  %912 = getelementptr inbounds [19 x i64], [19 x i64]* %18, i32 0, i32 %909
  %913 = load i64, i64* %912, align 8, !tbaa !9
  %914 = add nsw i64 %913, %911
  store i64 %914, i64* %910, align 8, !tbaa !9
  %915 = add nuw nsw i32 %903, 2
  %916 = icmp ult i32 %903, 8
  br i1 %916, label %902, label %917, !llvm.loop !14

917:                                              ; preds = %902
  call fastcc void @fproduct(i64* noundef %322, i64* noundef nonnull %300, i64* noundef nonnull %303) #7
  %918 = getelementptr inbounds i64, i64* %322, i32 18
  %919 = load i64, i64* %918, align 4, !tbaa !9
  %920 = getelementptr inbounds i64, i64* %322, i32 8
  %921 = load i64, i64* %920, align 4, !tbaa !9
  %922 = mul i64 %919, 18
  %923 = add i64 %921, %919
  %924 = add i64 %923, %922
  store i64 %924, i64* %920, align 4, !tbaa !9
  %925 = getelementptr inbounds i64, i64* %322, i32 17
  %926 = load i64, i64* %925, align 4, !tbaa !9
  %927 = getelementptr inbounds i64, i64* %322, i32 7
  %928 = load i64, i64* %927, align 4, !tbaa !9
  %929 = mul i64 %926, 18
  %930 = add i64 %928, %926
  %931 = add i64 %930, %929
  store i64 %931, i64* %927, align 4, !tbaa !9
  %932 = getelementptr inbounds i64, i64* %322, i32 16
  %933 = load i64, i64* %932, align 4, !tbaa !9
  %934 = getelementptr inbounds i64, i64* %322, i32 6
  %935 = load i64, i64* %934, align 4, !tbaa !9
  %936 = mul i64 %933, 18
  %937 = add i64 %935, %933
  %938 = add i64 %937, %936
  store i64 %938, i64* %934, align 4, !tbaa !9
  %939 = getelementptr inbounds i64, i64* %322, i32 15
  %940 = load i64, i64* %939, align 4, !tbaa !9
  %941 = getelementptr inbounds i64, i64* %322, i32 5
  %942 = load i64, i64* %941, align 4, !tbaa !9
  %943 = mul i64 %940, 18
  %944 = add i64 %942, %940
  %945 = add i64 %944, %943
  store i64 %945, i64* %941, align 4, !tbaa !9
  %946 = getelementptr inbounds i64, i64* %322, i32 14
  %947 = load i64, i64* %946, align 4, !tbaa !9
  %948 = getelementptr inbounds i64, i64* %322, i32 4
  %949 = load i64, i64* %948, align 4, !tbaa !9
  %950 = mul i64 %947, 18
  %951 = add i64 %949, %947
  %952 = add i64 %951, %950
  store i64 %952, i64* %948, align 4, !tbaa !9
  %953 = getelementptr inbounds i64, i64* %322, i32 13
  %954 = load i64, i64* %953, align 4, !tbaa !9
  %955 = getelementptr inbounds i64, i64* %322, i32 3
  %956 = load i64, i64* %955, align 4, !tbaa !9
  %957 = mul i64 %954, 18
  %958 = add i64 %956, %954
  %959 = add i64 %958, %957
  store i64 %959, i64* %955, align 4, !tbaa !9
  %960 = getelementptr inbounds i64, i64* %322, i32 12
  %961 = load i64, i64* %960, align 4, !tbaa !9
  %962 = getelementptr inbounds i64, i64* %322, i32 2
  %963 = load i64, i64* %962, align 4, !tbaa !9
  %964 = mul i64 %961, 18
  %965 = add i64 %963, %961
  %966 = add i64 %965, %964
  store i64 %966, i64* %962, align 4, !tbaa !9
  %967 = getelementptr inbounds i64, i64* %322, i32 11
  %968 = load i64, i64* %967, align 4, !tbaa !9
  %969 = getelementptr inbounds i64, i64* %322, i32 1
  %970 = load i64, i64* %969, align 4, !tbaa !9
  %971 = mul i64 %968, 18
  %972 = add i64 %970, %968
  %973 = add i64 %972, %971
  store i64 %973, i64* %969, align 4, !tbaa !9
  %974 = getelementptr inbounds i64, i64* %322, i32 10
  %975 = load i64, i64* %974, align 4, !tbaa !9
  %976 = load i64, i64* %322, align 4, !tbaa !9
  %977 = mul i64 %975, 18
  %978 = add i64 %976, %975
  %979 = add i64 %978, %977
  store i64 %979, i64* %322, align 4, !tbaa !9
  store i64 0, i64* %974, align 4, !tbaa !9
  br label %980

980:                                              ; preds = %980, %917
  %981 = phi i32 [ 0, %917 ], [ %1006, %980 ]
  %982 = getelementptr inbounds i64, i64* %322, i32 %981
  %983 = load i64, i64* %982, align 4, !tbaa !9
  %984 = lshr i64 %983, 32
  %985 = trunc i64 %984 to i32
  %986 = ashr i32 %985, 31
  %987 = lshr i32 %986, 6
  %988 = zext i32 %987 to i64
  %989 = add nsw i64 %983, %988
  %990 = ashr i64 %989, 26
  %991 = mul i64 %990, -67108864
  %992 = add i64 %991, %983
  store i64 %992, i64* %982, align 4, !tbaa !9
  %993 = or i32 %981, 1
  %994 = getelementptr inbounds i64, i64* %322, i32 %993
  %995 = load i64, i64* %994, align 4, !tbaa !9
  %996 = add nsw i64 %990, %995
  %997 = lshr i64 %996, 32
  %998 = trunc i64 %997 to i32
  %999 = ashr i32 %998, 31
  %1000 = lshr i32 %999, 7
  %1001 = zext i32 %1000 to i64
  %1002 = add nsw i64 %996, %1001
  %1003 = ashr i64 %1002, 25
  %1004 = mul i64 %1003, -33554432
  %1005 = add i64 %1004, %996
  store i64 %1005, i64* %994, align 4, !tbaa !9
  %1006 = add nuw nsw i32 %981, 2
  %1007 = getelementptr inbounds i64, i64* %322, i32 %1006
  %1008 = load i64, i64* %1007, align 4, !tbaa !9
  %1009 = add nsw i64 %1003, %1008
  store i64 %1009, i64* %1007, align 4, !tbaa !9
  %1010 = icmp ult i32 %981, 8
  br i1 %1010, label %980, label %1011, !llvm.loop !16

1011:                                             ; preds = %980
  %1012 = load i64, i64* %974, align 4, !tbaa !9
  %1013 = load i64, i64* %322, align 4, !tbaa !9
  %1014 = mul i64 %1012, 18
  %1015 = add i64 %1013, %1012
  %1016 = add i64 %1015, %1014
  store i64 %1016, i64* %322, align 4, !tbaa !9
  store i64 0, i64* %974, align 4, !tbaa !9
  %1017 = lshr i64 %1016, 32
  %1018 = trunc i64 %1017 to i32
  %1019 = ashr i32 %1018, 31
  %1020 = lshr i32 %1019, 6
  %1021 = zext i32 %1020 to i64
  %1022 = add nsw i64 %1016, %1021
  %1023 = ashr i64 %1022, 26
  %1024 = mul i64 %1023, -67108864
  %1025 = add i64 %1024, %1016
  store i64 %1025, i64* %322, align 4, !tbaa !9
  %1026 = load i64, i64* %969, align 4, !tbaa !9
  %1027 = add nsw i64 %1023, %1026
  store i64 %1027, i64* %969, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %260) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %259) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %258) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %257) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %256) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %255) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %254) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %253) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %252) #7
  br label %1028

1028:                                             ; preds = %1028, %1011
  %1029 = phi i32 [ 0, %1011 ], [ %1043, %1028 ]
  %1030 = getelementptr inbounds i64, i64* %323, i32 %1029
  %1031 = load i64, i64* %1030, align 4, !tbaa !9
  %1032 = trunc i64 %1031 to i32
  %1033 = getelementptr inbounds i64, i64* %325, i32 %1029
  %1034 = load i64, i64* %1033, align 4, !tbaa !9
  %1035 = xor i64 %1034, %1031
  %1036 = trunc i64 %1035 to i32
  %1037 = and i32 %1036, %331
  %1038 = xor i32 %1037, %1032
  %1039 = sext i32 %1038 to i64
  store i64 %1039, i64* %1030, align 4, !tbaa !9
  %1040 = trunc i64 %1034 to i32
  %1041 = xor i32 %1037, %1040
  %1042 = sext i32 %1041 to i64
  store i64 %1042, i64* %1033, align 4, !tbaa !9
  %1043 = add nuw nsw i32 %1029, 1
  %1044 = icmp eq i32 %1043, 10
  br i1 %1044, label %1045, label %1028, !llvm.loop !11

1045:                                             ; preds = %1045, %1028
  %1046 = phi i32 [ %1060, %1045 ], [ 0, %1028 ]
  %1047 = getelementptr inbounds i64, i64* %322, i32 %1046
  %1048 = load i64, i64* %1047, align 4, !tbaa !9
  %1049 = trunc i64 %1048 to i32
  %1050 = getelementptr inbounds i64, i64* %324, i32 %1046
  %1051 = load i64, i64* %1050, align 4, !tbaa !9
  %1052 = xor i64 %1051, %1048
  %1053 = trunc i64 %1052 to i32
  %1054 = and i32 %1053, %331
  %1055 = xor i32 %1054, %1049
  %1056 = sext i32 %1055 to i64
  store i64 %1056, i64* %1047, align 4, !tbaa !9
  %1057 = trunc i64 %1051 to i32
  %1058 = xor i32 %1054, %1057
  %1059 = sext i32 %1058 to i64
  store i64 %1059, i64* %1050, align 4, !tbaa !9
  %1060 = add nuw nsw i32 %1046, 1
  %1061 = icmp eq i32 %1060, 10
  br i1 %1061, label %1062, label %1045, !llvm.loop !11

1062:                                             ; preds = %1045
  %1063 = shl i8 %320, 1
  %1064 = add nuw nsw i32 %321, 1
  %1065 = icmp eq i32 %1064, 8
  br i1 %1065, label %1066, label %318, !llvm.loop !18

1066:                                             ; preds = %1062
  %1067 = add nuw nsw i32 %307, 1
  %1068 = icmp eq i32 %1067, 32
  br i1 %1068, label %1069, label %305, !llvm.loop !19

1069:                                             ; preds = %1066
  %1070 = getelementptr inbounds [11 x i64], [11 x i64]* %34, i32 0, i32 0
  %1071 = bitcast [10 x i64]* %33 to i8*
  %1072 = bitcast i64* %323 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %1071, i8* noundef nonnull align 4 dereferenceable(80) %1072, i32 80, i1 false) #7
  %1073 = bitcast [11 x i64]* %34 to i8*
  %1074 = bitcast i64* %322 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(80) %1073, i8* noundef nonnull align 4 dereferenceable(80) %1074, i32 80, i1 false) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %245) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %244) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %242) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %241) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %238) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %236) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %234) #7
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %233) #7
  %1075 = bitcast [10 x i64]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1075) #7
  %1076 = bitcast [10 x i64]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1076) #7
  %1077 = bitcast [10 x i64]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1077) #7
  %1078 = bitcast [10 x i64]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1078) #7
  %1079 = bitcast [10 x i64]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1079) #7
  %1080 = bitcast [10 x i64]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1080) #7
  %1081 = bitcast [10 x i64]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1081) #7
  %1082 = bitcast [10 x i64]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1082) #7
  %1083 = bitcast [10 x i64]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1083) #7
  %1084 = bitcast [10 x i64]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1084) #7
  %1085 = getelementptr inbounds [10 x i64], [10 x i64]* %5, i32 0, i32 0
  call fastcc void @fsquare(i64* noundef nonnull %1085, i64* noundef nonnull %1070) #7
  %1086 = getelementptr inbounds [10 x i64], [10 x i64]* %14, i32 0, i32 0
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1085) #7
  %1087 = getelementptr inbounds [10 x i64], [10 x i64]* %13, i32 0, i32 0
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  %1088 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i32 0, i32 0
  call fastcc void @fmul(i64* noundef nonnull %1088, i64* noundef nonnull %1087, i64* noundef nonnull %1070) #7
  %1089 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i32 0, i32 0
  call fastcc void @fmul(i64* noundef nonnull %1089, i64* noundef nonnull %1088, i64* noundef nonnull %1085) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1089) #7
  %1090 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i32 0, i32 0
  call fastcc void @fmul(i64* noundef nonnull %1090, i64* noundef nonnull %1087, i64* noundef nonnull %1088) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1090) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  %1091 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i32 0, i32 0
  call fastcc void @fmul(i64* noundef nonnull %1091, i64* noundef nonnull %1087, i64* noundef nonnull %1090) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1091) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  br label %1092

1092:                                             ; preds = %1092, %1069
  %1093 = phi i32 [ 2, %1069 ], [ %1094, %1092 ]
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  %1094 = add nuw nsw i32 %1093, 2
  %1095 = icmp ult i32 %1093, 8
  br i1 %1095, label %1092, label %1096, !llvm.loop !20

1096:                                             ; preds = %1092
  %1097 = getelementptr inbounds [10 x i64], [10 x i64]* %10, i32 0, i32 0
  call fastcc void @fmul(i64* noundef nonnull %1097, i64* noundef nonnull %1086, i64* noundef nonnull %1091) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1097) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  br label %1098

1098:                                             ; preds = %1098, %1096
  %1099 = phi i32 [ 2, %1096 ], [ %1100, %1098 ]
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  %1100 = add nuw nsw i32 %1099, 2
  %1101 = icmp ult i32 %1099, 18
  br i1 %1101, label %1098, label %1102, !llvm.loop !21

1102:                                             ; preds = %1098
  call fastcc void @fmul(i64* noundef nonnull %1087, i64* noundef nonnull %1086, i64* noundef nonnull %1097) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  br label %1103

1103:                                             ; preds = %1103, %1102
  %1104 = phi i32 [ 2, %1102 ], [ %1105, %1103 ]
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  %1105 = add nuw nsw i32 %1104, 2
  %1106 = icmp ult i32 %1104, 8
  br i1 %1106, label %1103, label %1107, !llvm.loop !22

1107:                                             ; preds = %1103
  %1108 = getelementptr inbounds [10 x i64], [10 x i64]* %11, i32 0, i32 0
  call fastcc void @fmul(i64* noundef nonnull %1108, i64* noundef nonnull %1087, i64* noundef nonnull %1091) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1108) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  br label %1109

1109:                                             ; preds = %1109, %1107
  %1110 = phi i32 [ 2, %1107 ], [ %1111, %1109 ]
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  %1111 = add nuw nsw i32 %1110, 2
  %1112 = icmp ult i32 %1110, 48
  br i1 %1112, label %1109, label %1113, !llvm.loop !23

1113:                                             ; preds = %1109
  %1114 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i32 0, i32 0
  call fastcc void @fmul(i64* noundef nonnull %1114, i64* noundef nonnull %1086, i64* noundef nonnull %1108) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1114) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  br label %1115

1115:                                             ; preds = %1115, %1113
  %1116 = phi i32 [ 2, %1113 ], [ %1117, %1115 ]
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  %1117 = add nuw nsw i32 %1116, 2
  %1118 = icmp ult i32 %1116, 98
  br i1 %1118, label %1115, label %1119, !llvm.loop !24

1119:                                             ; preds = %1115
  call fastcc void @fmul(i64* noundef nonnull %1086, i64* noundef nonnull %1087, i64* noundef nonnull %1114) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  br label %1120

1120:                                             ; preds = %1120, %1119
  %1121 = phi i32 [ 2, %1119 ], [ %1122, %1120 ]
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  %1122 = add nuw nsw i32 %1121, 2
  %1123 = icmp ult i32 %1121, 48
  br i1 %1123, label %1120, label %1124, !llvm.loop !25

1124:                                             ; preds = %1120
  %1125 = getelementptr inbounds [10 x i64], [10 x i64]* %35, i32 0, i32 0
  call fastcc void @fmul(i64* noundef nonnull %1087, i64* noundef nonnull %1086, i64* noundef nonnull %1108) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  call fastcc void @fsquare(i64* noundef nonnull %1087, i64* noundef nonnull %1086) #7
  call fastcc void @fsquare(i64* noundef nonnull %1086, i64* noundef nonnull %1087) #7
  call fastcc void @fmul(i64* noundef nonnull %1125, i64* noundef nonnull %1086, i64* noundef nonnull %1089) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1084) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1083) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1082) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1081) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1080) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1079) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1078) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1077) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1076) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1075) #7
  call fastcc void @fmul(i64* noundef nonnull %1070, i64* noundef nonnull %232, i64* noundef nonnull %1125)
  %1126 = bitcast [10 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1126) #7
  br label %1130

1127:                                             ; preds = %1130
  %1128 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 9
  %1129 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 0
  br label %1138

1130:                                             ; preds = %1130, %1124
  %1131 = phi i32 [ 0, %1124 ], [ %1136, %1130 ]
  %1132 = getelementptr inbounds [11 x i64], [11 x i64]* %34, i32 0, i32 %1131
  %1133 = load i64, i64* %1132, align 8, !tbaa !9
  %1134 = trunc i64 %1133 to i32
  %1135 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 %1131
  store i32 %1134, i32* %1135, align 4, !tbaa !26
  %1136 = add nuw nsw i32 %1131, 1
  %1137 = icmp eq i32 %1136, 10
  br i1 %1137, label %1127, label %1130, !llvm.loop !28

1138:                                             ; preds = %1159, %1127
  %1139 = phi i32 [ 0, %1127 ], [ %1169, %1159 ]
  br label %1140

1140:                                             ; preds = %1140, %1138
  %1141 = phi i32 [ 0, %1138 ], [ %1157, %1140 ]
  %1142 = and i32 %1141, 1
  %1143 = icmp eq i32 %1142, 0
  %1144 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 %1141
  %1145 = load i32, i32* %1144, align 4, !tbaa !26
  %1146 = icmp slt i32 %1145, 0
  %1147 = select i1 %1146, i32 %1145, i32 0
  %1148 = select i1 %1143, i32 26, i32 25
  %1149 = select i1 %1143, i32 -67108864, i32 -33554432
  %1150 = ashr i32 %1147, %1148
  %1151 = and i32 %1147, %1149
  %1152 = sub i32 %1145, %1151
  store i32 %1152, i32* %1144, align 4, !tbaa !26
  %1153 = add nuw nsw i32 %1141, 1
  %1154 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 %1153
  %1155 = load i32, i32* %1154, align 4, !tbaa !26
  %1156 = add nsw i32 %1150, %1155
  store i32 %1156, i32* %1154, align 4, !tbaa !26
  %1157 = add nuw nsw i32 %1141, 1
  %1158 = icmp eq i32 %1157, 9
  br i1 %1158, label %1159, label %1140, !llvm.loop !29

1159:                                             ; preds = %1140
  %1160 = load i32, i32* %1128, align 4, !tbaa !26
  %1161 = icmp slt i32 %1160, 0
  %1162 = select i1 %1161, i32 %1160, i32 0
  %1163 = ashr i32 %1162, 25
  %1164 = and i32 %1162, -33554432
  %1165 = sub i32 %1160, %1164
  store i32 %1165, i32* %1128, align 4, !tbaa !26
  %1166 = load i32, i32* %1129, align 4, !tbaa !26
  %1167 = mul nsw i32 %1163, 19
  %1168 = add i32 %1167, %1166
  store i32 %1168, i32* %1129, align 4, !tbaa !26
  %1169 = add nuw nsw i32 %1139, 1
  %1170 = icmp eq i32 %1139, 0
  br i1 %1170, label %1138, label %1171, !llvm.loop !30

1171:                                             ; preds = %1159
  %1172 = icmp slt i32 %1168, 0
  %1173 = select i1 %1172, i32 %1168, i32 0
  %1174 = ashr i32 %1173, 26
  %1175 = and i32 %1173, -67108864
  %1176 = sub i32 %1168, %1175
  store i32 %1176, i32* %1129, align 4, !tbaa !26
  %1177 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 1
  %1178 = load i32, i32* %1177, align 4, !tbaa !26
  %1179 = add nsw i32 %1178, %1174
  store i32 %1179, i32* %1177, align 4, !tbaa !26
  br label %1180

1180:                                             ; preds = %1198, %1171
  %1181 = phi i32 [ 0, %1171 ], [ %1205, %1198 ]
  br label %1182

1182:                                             ; preds = %1182, %1180
  %1183 = phi i32 [ 0, %1180 ], [ %1196, %1182 ]
  %1184 = and i32 %1183, 1
  %1185 = icmp eq i32 %1184, 0
  %1186 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 %1183
  %1187 = load i32, i32* %1186, align 4, !tbaa !26
  %1188 = select i1 %1185, i32 26, i32 25
  %1189 = select i1 %1185, i32 67108863, i32 33554431
  %1190 = ashr i32 %1187, %1188
  %1191 = and i32 %1187, %1189
  store i32 %1191, i32* %1186, align 4, !tbaa !26
  %1192 = add nuw nsw i32 %1183, 1
  %1193 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 %1192
  %1194 = load i32, i32* %1193, align 4, !tbaa !26
  %1195 = add nsw i32 %1194, %1190
  store i32 %1195, i32* %1193, align 4, !tbaa !26
  %1196 = add nuw nsw i32 %1183, 1
  %1197 = icmp eq i32 %1196, 9
  br i1 %1197, label %1198, label %1182, !llvm.loop !31

1198:                                             ; preds = %1182
  %1199 = load i32, i32* %1128, align 4, !tbaa !26
  %1200 = ashr i32 %1199, 25
  %1201 = and i32 %1199, 33554431
  store i32 %1201, i32* %1128, align 4, !tbaa !26
  %1202 = mul nsw i32 %1200, 19
  %1203 = load i32, i32* %1129, align 4, !tbaa !26
  %1204 = add nsw i32 %1203, %1202
  store i32 %1204, i32* %1129, align 4, !tbaa !26
  %1205 = add nuw nsw i32 %1181, 1
  %1206 = icmp eq i32 %1181, 0
  br i1 %1206, label %1180, label %1207, !llvm.loop !32

1207:                                             ; preds = %1198
  %1208 = add nsw i32 %1204, -67108845
  %1209 = ashr i32 %1208, 31
  %1210 = xor i32 %1209, -1
  br label %1211

1211:                                             ; preds = %1211, %1207
  %1212 = phi i32 [ 1, %1207 ], [ %1232, %1211 ]
  %1213 = phi i32 [ %1210, %1207 ], [ %1231, %1211 ]
  %1214 = and i32 %1212, 1
  %1215 = icmp eq i32 %1214, 0
  %1216 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 %1212
  %1217 = load i32, i32* %1216, align 4, !tbaa !26
  %1218 = select i1 %1215, i32 -67108864, i32 -33554432
  %1219 = xor i32 %1217, %1218
  %1220 = shl i32 %1217, 16
  %1221 = and i32 %1220, %1219
  %1222 = shl i32 %1221, 8
  %1223 = and i32 %1222, %1221
  %1224 = shl i32 %1223, 4
  %1225 = and i32 %1224, %1223
  %1226 = shl i32 %1225, 2
  %1227 = and i32 %1226, %1225
  %1228 = shl i32 %1227, 1
  %1229 = and i32 %1228, %1227
  %1230 = icmp slt i32 %1229, 0
  %1231 = select i1 %1230, i32 %1213, i32 0
  %1232 = add nuw nsw i32 %1212, 1
  %1233 = icmp eq i32 %1232, 10
  br i1 %1233, label %1234, label %1211, !llvm.loop !33

1234:                                             ; preds = %1211
  %1235 = and i32 %1231, 67108845
  %1236 = sub nsw i32 %1204, %1235
  store i32 %1236, i32* %1129, align 4, !tbaa !26
  br label %1237

1237:                                             ; preds = %1237, %1234
  %1238 = phi i32 [ 1, %1234 ], [ %1246, %1237 ]
  %1239 = and i32 %1238, 1
  %1240 = icmp eq i32 %1239, 0
  %1241 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 %1238
  %1242 = load i32, i32* %1241, align 4, !tbaa !26
  %1243 = select i1 %1240, i32 67108863, i32 33554431
  %1244 = and i32 %1231, %1243
  %1245 = sub nsw i32 %1242, %1244
  store i32 %1245, i32* %1241, align 4, !tbaa !26
  %1246 = add nuw nsw i32 %1238, 1
  %1247 = icmp eq i32 %1246, 10
  br i1 %1247, label %1248, label %1237, !llvm.loop !34

1248:                                             ; preds = %1237
  %1249 = load i32, i32* %1177, align 4, !tbaa !26
  %1250 = shl i32 %1249, 2
  store i32 %1250, i32* %1177, align 4, !tbaa !26
  %1251 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 2
  %1252 = load i32, i32* %1251, align 4, !tbaa !26
  %1253 = shl i32 %1252, 3
  store i32 %1253, i32* %1251, align 4, !tbaa !26
  %1254 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 3
  %1255 = load i32, i32* %1254, align 4, !tbaa !26
  %1256 = shl i32 %1255, 5
  store i32 %1256, i32* %1254, align 4, !tbaa !26
  %1257 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 4
  %1258 = load i32, i32* %1257, align 4, !tbaa !26
  %1259 = shl i32 %1258, 6
  store i32 %1259, i32* %1257, align 4, !tbaa !26
  %1260 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 6
  %1261 = load i32, i32* %1260, align 4, !tbaa !26
  %1262 = shl i32 %1261, 1
  store i32 %1262, i32* %1260, align 4, !tbaa !26
  %1263 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 7
  %1264 = load i32, i32* %1263, align 4, !tbaa !26
  %1265 = shl i32 %1264, 3
  store i32 %1265, i32* %1263, align 4, !tbaa !26
  %1266 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 8
  %1267 = load i32, i32* %1266, align 4, !tbaa !26
  %1268 = shl i32 %1267, 4
  store i32 %1268, i32* %1266, align 4, !tbaa !26
  %1269 = load i32, i32* %1128, align 4, !tbaa !26
  %1270 = shl i32 %1269, 6
  store i32 %1270, i32* %1128, align 4, !tbaa !26
  store i8 0, i8* %0, align 1, !tbaa !6
  %1271 = getelementptr inbounds i8, i8* %0, i32 16
  store i8 0, i8* %1271, align 1, !tbaa !6
  %1272 = trunc i32 %1236 to i8
  store i8 %1272, i8* %0, align 1, !tbaa !6
  %1273 = lshr i32 %1236, 8
  %1274 = trunc i32 %1273 to i8
  %1275 = getelementptr inbounds i8, i8* %0, i32 1
  store i8 %1274, i8* %1275, align 1, !tbaa !6
  %1276 = lshr i32 %1236, 16
  %1277 = trunc i32 %1276 to i8
  %1278 = getelementptr inbounds i8, i8* %0, i32 2
  store i8 %1277, i8* %1278, align 1, !tbaa !6
  %1279 = lshr i32 %1236, 24
  %1280 = getelementptr inbounds i8, i8* %0, i32 3
  %1281 = or i32 %1250, %1279
  %1282 = trunc i32 %1281 to i8
  store i8 %1282, i8* %1280, align 1, !tbaa !6
  %1283 = lshr i32 %1250, 8
  %1284 = trunc i32 %1283 to i8
  %1285 = getelementptr inbounds i8, i8* %0, i32 4
  store i8 %1284, i8* %1285, align 1, !tbaa !6
  %1286 = lshr i32 %1250, 16
  %1287 = trunc i32 %1286 to i8
  %1288 = getelementptr inbounds i8, i8* %0, i32 5
  store i8 %1287, i8* %1288, align 1, !tbaa !6
  %1289 = lshr i32 %1250, 24
  %1290 = getelementptr inbounds i8, i8* %0, i32 6
  %1291 = or i32 %1253, %1289
  %1292 = trunc i32 %1291 to i8
  store i8 %1292, i8* %1290, align 1, !tbaa !6
  %1293 = lshr i32 %1253, 8
  %1294 = trunc i32 %1293 to i8
  %1295 = getelementptr inbounds i8, i8* %0, i32 7
  store i8 %1294, i8* %1295, align 1, !tbaa !6
  %1296 = lshr i32 %1253, 16
  %1297 = trunc i32 %1296 to i8
  %1298 = getelementptr inbounds i8, i8* %0, i32 8
  store i8 %1297, i8* %1298, align 1, !tbaa !6
  %1299 = lshr i32 %1253, 24
  %1300 = getelementptr inbounds i8, i8* %0, i32 9
  %1301 = or i32 %1256, %1299
  %1302 = trunc i32 %1301 to i8
  store i8 %1302, i8* %1300, align 1, !tbaa !6
  %1303 = lshr i32 %1256, 8
  %1304 = trunc i32 %1303 to i8
  %1305 = getelementptr inbounds i8, i8* %0, i32 10
  store i8 %1304, i8* %1305, align 1, !tbaa !6
  %1306 = lshr i32 %1256, 16
  %1307 = trunc i32 %1306 to i8
  %1308 = getelementptr inbounds i8, i8* %0, i32 11
  store i8 %1307, i8* %1308, align 1, !tbaa !6
  %1309 = lshr i32 %1256, 24
  %1310 = getelementptr inbounds i8, i8* %0, i32 12
  %1311 = or i32 %1259, %1309
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %1310, align 1, !tbaa !6
  %1313 = lshr i32 %1259, 8
  %1314 = trunc i32 %1313 to i8
  %1315 = getelementptr inbounds i8, i8* %0, i32 13
  store i8 %1314, i8* %1315, align 1, !tbaa !6
  %1316 = lshr i32 %1259, 16
  %1317 = trunc i32 %1316 to i8
  %1318 = getelementptr inbounds i8, i8* %0, i32 14
  store i8 %1317, i8* %1318, align 1, !tbaa !6
  %1319 = lshr i32 %1259, 24
  %1320 = trunc i32 %1319 to i8
  %1321 = getelementptr inbounds i8, i8* %0, i32 15
  store i8 %1320, i8* %1321, align 1, !tbaa !6
  %1322 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i32 0, i32 5
  %1323 = load i32, i32* %1322, align 4, !tbaa !26
  %1324 = trunc i32 %1323 to i8
  store i8 %1324, i8* %1271, align 1, !tbaa !6
  %1325 = lshr i32 %1323, 8
  %1326 = trunc i32 %1325 to i8
  %1327 = getelementptr inbounds i8, i8* %0, i32 17
  store i8 %1326, i8* %1327, align 1, !tbaa !6
  %1328 = lshr i32 %1323, 16
  %1329 = trunc i32 %1328 to i8
  %1330 = getelementptr inbounds i8, i8* %0, i32 18
  store i8 %1329, i8* %1330, align 1, !tbaa !6
  %1331 = lshr i32 %1323, 24
  %1332 = getelementptr inbounds i8, i8* %0, i32 19
  %1333 = or i32 %1331, %1262
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %1332, align 1, !tbaa !6
  %1335 = lshr i32 %1262, 8
  %1336 = trunc i32 %1335 to i8
  %1337 = getelementptr inbounds i8, i8* %0, i32 20
  store i8 %1336, i8* %1337, align 1, !tbaa !6
  %1338 = lshr i32 %1262, 16
  %1339 = trunc i32 %1338 to i8
  %1340 = getelementptr inbounds i8, i8* %0, i32 21
  store i8 %1339, i8* %1340, align 1, !tbaa !6
  %1341 = lshr i32 %1262, 24
  %1342 = getelementptr inbounds i8, i8* %0, i32 22
  %1343 = or i32 %1265, %1341
  %1344 = trunc i32 %1343 to i8
  store i8 %1344, i8* %1342, align 1, !tbaa !6
  %1345 = lshr i32 %1265, 8
  %1346 = trunc i32 %1345 to i8
  %1347 = getelementptr inbounds i8, i8* %0, i32 23
  store i8 %1346, i8* %1347, align 1, !tbaa !6
  %1348 = lshr i32 %1265, 16
  %1349 = trunc i32 %1348 to i8
  %1350 = getelementptr inbounds i8, i8* %0, i32 24
  store i8 %1349, i8* %1350, align 1, !tbaa !6
  %1351 = lshr i32 %1265, 24
  %1352 = getelementptr inbounds i8, i8* %0, i32 25
  %1353 = or i32 %1268, %1351
  %1354 = trunc i32 %1353 to i8
  store i8 %1354, i8* %1352, align 1, !tbaa !6
  %1355 = lshr i32 %1268, 8
  %1356 = trunc i32 %1355 to i8
  %1357 = getelementptr inbounds i8, i8* %0, i32 26
  store i8 %1356, i8* %1357, align 1, !tbaa !6
  %1358 = lshr i32 %1268, 16
  %1359 = trunc i32 %1358 to i8
  %1360 = getelementptr inbounds i8, i8* %0, i32 27
  store i8 %1359, i8* %1360, align 1, !tbaa !6
  %1361 = lshr i32 %1268, 24
  %1362 = getelementptr inbounds i8, i8* %0, i32 28
  %1363 = or i32 %1270, %1361
  %1364 = trunc i32 %1363 to i8
  store i8 %1364, i8* %1362, align 1, !tbaa !6
  %1365 = lshr i32 %1270, 8
  %1366 = trunc i32 %1365 to i8
  %1367 = getelementptr inbounds i8, i8* %0, i32 29
  store i8 %1366, i8* %1367, align 1, !tbaa !6
  %1368 = lshr i32 %1270, 16
  %1369 = trunc i32 %1368 to i8
  %1370 = getelementptr inbounds i8, i8* %0, i32 30
  store i8 %1369, i8* %1370, align 1, !tbaa !6
  %1371 = lshr i32 %1270, 24
  %1372 = trunc i32 %1371 to i8
  %1373 = getelementptr inbounds i8, i8* %0, i32 31
  store i8 %1372, i8* %1373, align 1, !tbaa !6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1126) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %42) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %41) #7
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %40) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %39) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %38) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @fmul(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [19 x i64], align 8
  %5 = bitcast [19 x i64]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %5) #7
  %6 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 0
  call fastcc void @fproduct(i64* noundef nonnull %6, i64* noundef %1, i64* noundef %2)
  %7 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 18
  %8 = load i64, i64* %7, align 8, !tbaa !9
  %9 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 8
  %10 = load i64, i64* %9, align 8, !tbaa !9
  %11 = mul i64 %8, 18
  %12 = add i64 %10, %8
  %13 = add i64 %12, %11
  store i64 %13, i64* %9, align 8, !tbaa !9
  %14 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 17
  %15 = load i64, i64* %14, align 8, !tbaa !9
  %16 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 7
  %17 = load i64, i64* %16, align 8, !tbaa !9
  %18 = mul i64 %15, 18
  %19 = add i64 %17, %15
  %20 = add i64 %19, %18
  store i64 %20, i64* %16, align 8, !tbaa !9
  %21 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 16
  %22 = load i64, i64* %21, align 8, !tbaa !9
  %23 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 6
  %24 = load i64, i64* %23, align 8, !tbaa !9
  %25 = mul i64 %22, 18
  %26 = add i64 %24, %22
  %27 = add i64 %26, %25
  store i64 %27, i64* %23, align 8, !tbaa !9
  %28 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 15
  %29 = load i64, i64* %28, align 8, !tbaa !9
  %30 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 5
  %31 = load i64, i64* %30, align 8, !tbaa !9
  %32 = mul i64 %29, 18
  %33 = add i64 %31, %29
  %34 = add i64 %33, %32
  store i64 %34, i64* %30, align 8, !tbaa !9
  %35 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 14
  %36 = load i64, i64* %35, align 8, !tbaa !9
  %37 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 4
  %38 = load i64, i64* %37, align 8, !tbaa !9
  %39 = mul i64 %36, 18
  %40 = add i64 %38, %36
  %41 = add i64 %40, %39
  store i64 %41, i64* %37, align 8, !tbaa !9
  %42 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 13
  %43 = load i64, i64* %42, align 8, !tbaa !9
  %44 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 3
  %45 = load i64, i64* %44, align 8, !tbaa !9
  %46 = mul i64 %43, 18
  %47 = add i64 %45, %43
  %48 = add i64 %47, %46
  store i64 %48, i64* %44, align 8, !tbaa !9
  %49 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 12
  %50 = load i64, i64* %49, align 8, !tbaa !9
  %51 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 2
  %52 = load i64, i64* %51, align 8, !tbaa !9
  %53 = mul i64 %50, 18
  %54 = add i64 %52, %50
  %55 = add i64 %54, %53
  store i64 %55, i64* %51, align 8, !tbaa !9
  %56 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 11
  %57 = load i64, i64* %56, align 8, !tbaa !9
  %58 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 1
  %59 = load i64, i64* %58, align 8, !tbaa !9
  %60 = mul i64 %57, 18
  %61 = add i64 %59, %57
  %62 = add i64 %61, %60
  store i64 %62, i64* %58, align 8, !tbaa !9
  %63 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 10
  %64 = load i64, i64* %63, align 8, !tbaa !9
  %65 = load i64, i64* %6, align 8, !tbaa !9
  %66 = mul i64 %64, 18
  %67 = add i64 %65, %64
  %68 = add i64 %67, %66
  store i64 %68, i64* %6, align 8, !tbaa !9
  store i64 0, i64* %63, align 8, !tbaa !9
  br label %69

69:                                               ; preds = %69, %3
  %70 = phi i32 [ 0, %3 ], [ %95, %69 ]
  %71 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 %70
  %72 = load i64, i64* %71, align 8, !tbaa !9
  %73 = lshr i64 %72, 32
  %74 = trunc i64 %73 to i32
  %75 = ashr i32 %74, 31
  %76 = lshr i32 %75, 6
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %72, %77
  %79 = ashr i64 %78, 26
  %80 = mul i64 %79, -67108864
  %81 = add i64 %80, %72
  store i64 %81, i64* %71, align 8, !tbaa !9
  %82 = or i32 %70, 1
  %83 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 %82
  %84 = load i64, i64* %83, align 8, !tbaa !9
  %85 = add nsw i64 %79, %84
  %86 = lshr i64 %85, 32
  %87 = trunc i64 %86 to i32
  %88 = ashr i32 %87, 31
  %89 = lshr i32 %88, 7
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %85, %90
  %92 = ashr i64 %91, 25
  %93 = mul i64 %92, -33554432
  %94 = add i64 %93, %85
  store i64 %94, i64* %83, align 8, !tbaa !9
  %95 = add nuw nsw i32 %70, 2
  %96 = getelementptr inbounds [19 x i64], [19 x i64]* %4, i32 0, i32 %95
  %97 = load i64, i64* %96, align 8, !tbaa !9
  %98 = add nsw i64 %92, %97
  store i64 %98, i64* %96, align 8, !tbaa !9
  %99 = icmp ult i32 %70, 8
  br i1 %99, label %69, label %100, !llvm.loop !16

100:                                              ; preds = %69
  %101 = load i64, i64* %63, align 8, !tbaa !9
  %102 = load i64, i64* %6, align 8, !tbaa !9
  %103 = mul i64 %101, 18
  %104 = add i64 %102, %101
  %105 = add i64 %104, %103
  store i64 %105, i64* %6, align 8, !tbaa !9
  store i64 0, i64* %63, align 8, !tbaa !9
  %106 = lshr i64 %105, 32
  %107 = trunc i64 %106 to i32
  %108 = ashr i32 %107, 31
  %109 = lshr i32 %108, 6
  %110 = zext i32 %109 to i64
  %111 = add nsw i64 %105, %110
  %112 = ashr i64 %111, 26
  %113 = mul i64 %112, -67108864
  %114 = add i64 %113, %105
  store i64 %114, i64* %6, align 8, !tbaa !9
  %115 = load i64, i64* %58, align 8, !tbaa !9
  %116 = add nsw i64 %112, %115
  store i64 %116, i64* %58, align 8, !tbaa !9
  %117 = bitcast i64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(80) %117, i8* noundef nonnull align 8 dereferenceable(80) %5, i32 80, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %5) #7
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = alloca [32 x i8], align 1
  %2 = alloca [32 x i8], align 1
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7
  call void @high_input_32(i8* noundef nonnull %4) #7
  call void @high_input_32(i8* noundef nonnull %5) #7
  call void @low_input_32(i8* noundef nonnull %6) #7
  %7 = call i32 @curve25519_donna(i8* noundef nonnull %4, i8* noundef nonnull %5, i8* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7
  ret i32 0
}

declare void @high_input_32(i8* noundef) local_unnamed_addr #3

declare void @low_input_32(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @fproduct(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1, i64* nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load i64, i64* %1, align 4, !tbaa !9
  %5 = shl i64 %4, 32
  %6 = ashr exact i64 %5, 32
  %7 = load i64, i64* %2, align 4, !tbaa !9
  %8 = shl i64 %7, 32
  %9 = ashr exact i64 %8, 32
  %10 = mul nsw i64 %9, %6
  store i64 %10, i64* %0, align 4, !tbaa !9
  %11 = load i64, i64* %1, align 4, !tbaa !9
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i64, i64* %2, i32 1
  %15 = load i64, i64* %14, align 4, !tbaa !9
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  %18 = mul nsw i64 %17, %13
  %19 = getelementptr inbounds i64, i64* %1, i32 1
  %20 = load i64, i64* %19, align 4, !tbaa !9
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = load i64, i64* %2, align 4, !tbaa !9
  %24 = shl i64 %23, 32
  %25 = ashr exact i64 %24, 32
  %26 = mul nsw i64 %25, %22
  %27 = add nsw i64 %26, %18
  %28 = getelementptr inbounds i64, i64* %0, i32 1
  store i64 %27, i64* %28, align 4, !tbaa !9
  %29 = load i64, i64* %19, align 4, !tbaa !9
  %30 = shl i64 %29, 32
  %31 = ashr exact i64 %30, 31
  %32 = load i64, i64* %14, align 4, !tbaa !9
  %33 = shl i64 %32, 32
  %34 = ashr exact i64 %33, 32
  %35 = mul nsw i64 %34, %31
  %36 = load i64, i64* %1, align 4, !tbaa !9
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds i64, i64* %2, i32 2
  %40 = load i64, i64* %39, align 4, !tbaa !9
  %41 = shl i64 %40, 32
  %42 = ashr exact i64 %41, 32
  %43 = mul nsw i64 %42, %38
  %44 = add nsw i64 %43, %35
  %45 = getelementptr inbounds i64, i64* %1, i32 2
  %46 = load i64, i64* %45, align 4, !tbaa !9
  %47 = shl i64 %46, 32
  %48 = ashr exact i64 %47, 32
  %49 = load i64, i64* %2, align 4, !tbaa !9
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = mul nsw i64 %51, %48
  %53 = add nsw i64 %44, %52
  %54 = getelementptr inbounds i64, i64* %0, i32 2
  store i64 %53, i64* %54, align 4, !tbaa !9
  %55 = load i64, i64* %19, align 4, !tbaa !9
  %56 = shl i64 %55, 32
  %57 = ashr exact i64 %56, 32
  %58 = load i64, i64* %39, align 4, !tbaa !9
  %59 = shl i64 %58, 32
  %60 = ashr exact i64 %59, 32
  %61 = mul nsw i64 %60, %57
  %62 = load i64, i64* %45, align 4, !tbaa !9
  %63 = shl i64 %62, 32
  %64 = ashr exact i64 %63, 32
  %65 = load i64, i64* %14, align 4, !tbaa !9
  %66 = shl i64 %65, 32
  %67 = ashr exact i64 %66, 32
  %68 = mul nsw i64 %67, %64
  %69 = add nsw i64 %68, %61
  %70 = load i64, i64* %1, align 4, !tbaa !9
  %71 = shl i64 %70, 32
  %72 = ashr exact i64 %71, 32
  %73 = getelementptr inbounds i64, i64* %2, i32 3
  %74 = load i64, i64* %73, align 4, !tbaa !9
  %75 = shl i64 %74, 32
  %76 = ashr exact i64 %75, 32
  %77 = mul nsw i64 %76, %72
  %78 = add nsw i64 %69, %77
  %79 = getelementptr inbounds i64, i64* %1, i32 3
  %80 = load i64, i64* %79, align 4, !tbaa !9
  %81 = shl i64 %80, 32
  %82 = ashr exact i64 %81, 32
  %83 = load i64, i64* %2, align 4, !tbaa !9
  %84 = shl i64 %83, 32
  %85 = ashr exact i64 %84, 32
  %86 = mul nsw i64 %85, %82
  %87 = add nsw i64 %78, %86
  %88 = getelementptr inbounds i64, i64* %0, i32 3
  store i64 %87, i64* %88, align 4, !tbaa !9
  %89 = load i64, i64* %45, align 4, !tbaa !9
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  %92 = load i64, i64* %39, align 4, !tbaa !9
  %93 = shl i64 %92, 32
  %94 = ashr exact i64 %93, 32
  %95 = mul nsw i64 %94, %91
  %96 = load i64, i64* %19, align 4, !tbaa !9
  %97 = shl i64 %96, 32
  %98 = ashr exact i64 %97, 32
  %99 = load i64, i64* %73, align 4, !tbaa !9
  %100 = shl i64 %99, 32
  %101 = ashr exact i64 %100, 32
  %102 = mul nsw i64 %101, %98
  %103 = load i64, i64* %79, align 4, !tbaa !9
  %104 = shl i64 %103, 32
  %105 = ashr exact i64 %104, 32
  %106 = load i64, i64* %14, align 4, !tbaa !9
  %107 = shl i64 %106, 32
  %108 = ashr exact i64 %107, 32
  %109 = mul nsw i64 %108, %105
  %110 = add nsw i64 %109, %102
  %111 = shl nsw i64 %110, 1
  %112 = add nsw i64 %111, %95
  %113 = load i64, i64* %1, align 4, !tbaa !9
  %114 = shl i64 %113, 32
  %115 = ashr exact i64 %114, 32
  %116 = getelementptr inbounds i64, i64* %2, i32 4
  %117 = load i64, i64* %116, align 4, !tbaa !9
  %118 = shl i64 %117, 32
  %119 = ashr exact i64 %118, 32
  %120 = mul nsw i64 %119, %115
  %121 = add nsw i64 %112, %120
  %122 = getelementptr inbounds i64, i64* %1, i32 4
  %123 = load i64, i64* %122, align 4, !tbaa !9
  %124 = shl i64 %123, 32
  %125 = ashr exact i64 %124, 32
  %126 = load i64, i64* %2, align 4, !tbaa !9
  %127 = shl i64 %126, 32
  %128 = ashr exact i64 %127, 32
  %129 = mul nsw i64 %128, %125
  %130 = add nsw i64 %121, %129
  %131 = getelementptr inbounds i64, i64* %0, i32 4
  store i64 %130, i64* %131, align 4, !tbaa !9
  %132 = load i64, i64* %45, align 4, !tbaa !9
  %133 = shl i64 %132, 32
  %134 = ashr exact i64 %133, 32
  %135 = load i64, i64* %73, align 4, !tbaa !9
  %136 = shl i64 %135, 32
  %137 = ashr exact i64 %136, 32
  %138 = mul nsw i64 %137, %134
  %139 = load i64, i64* %79, align 4, !tbaa !9
  %140 = shl i64 %139, 32
  %141 = ashr exact i64 %140, 32
  %142 = load i64, i64* %39, align 4, !tbaa !9
  %143 = shl i64 %142, 32
  %144 = ashr exact i64 %143, 32
  %145 = mul nsw i64 %144, %141
  %146 = add nsw i64 %145, %138
  %147 = load i64, i64* %19, align 4, !tbaa !9
  %148 = shl i64 %147, 32
  %149 = ashr exact i64 %148, 32
  %150 = load i64, i64* %116, align 4, !tbaa !9
  %151 = shl i64 %150, 32
  %152 = ashr exact i64 %151, 32
  %153 = mul nsw i64 %152, %149
  %154 = add nsw i64 %146, %153
  %155 = load i64, i64* %122, align 4, !tbaa !9
  %156 = shl i64 %155, 32
  %157 = ashr exact i64 %156, 32
  %158 = load i64, i64* %14, align 4, !tbaa !9
  %159 = shl i64 %158, 32
  %160 = ashr exact i64 %159, 32
  %161 = mul nsw i64 %160, %157
  %162 = add nsw i64 %154, %161
  %163 = load i64, i64* %1, align 4, !tbaa !9
  %164 = shl i64 %163, 32
  %165 = ashr exact i64 %164, 32
  %166 = getelementptr inbounds i64, i64* %2, i32 5
  %167 = load i64, i64* %166, align 4, !tbaa !9
  %168 = shl i64 %167, 32
  %169 = ashr exact i64 %168, 32
  %170 = mul nsw i64 %169, %165
  %171 = add nsw i64 %162, %170
  %172 = getelementptr inbounds i64, i64* %1, i32 5
  %173 = load i64, i64* %172, align 4, !tbaa !9
  %174 = shl i64 %173, 32
  %175 = ashr exact i64 %174, 32
  %176 = load i64, i64* %2, align 4, !tbaa !9
  %177 = shl i64 %176, 32
  %178 = ashr exact i64 %177, 32
  %179 = mul nsw i64 %178, %175
  %180 = add nsw i64 %171, %179
  %181 = getelementptr inbounds i64, i64* %0, i32 5
  store i64 %180, i64* %181, align 4, !tbaa !9
  %182 = load i64, i64* %79, align 4, !tbaa !9
  %183 = shl i64 %182, 32
  %184 = ashr exact i64 %183, 32
  %185 = load i64, i64* %73, align 4, !tbaa !9
  %186 = shl i64 %185, 32
  %187 = ashr exact i64 %186, 32
  %188 = mul nsw i64 %187, %184
  %189 = load i64, i64* %19, align 4, !tbaa !9
  %190 = shl i64 %189, 32
  %191 = ashr exact i64 %190, 32
  %192 = load i64, i64* %166, align 4, !tbaa !9
  %193 = shl i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = mul nsw i64 %194, %191
  %196 = add nsw i64 %195, %188
  %197 = load i64, i64* %172, align 4, !tbaa !9
  %198 = shl i64 %197, 32
  %199 = ashr exact i64 %198, 32
  %200 = load i64, i64* %14, align 4, !tbaa !9
  %201 = shl i64 %200, 32
  %202 = ashr exact i64 %201, 32
  %203 = mul nsw i64 %202, %199
  %204 = add nsw i64 %196, %203
  %205 = shl nsw i64 %204, 1
  %206 = load i64, i64* %45, align 4, !tbaa !9
  %207 = shl i64 %206, 32
  %208 = ashr exact i64 %207, 32
  %209 = load i64, i64* %116, align 4, !tbaa !9
  %210 = shl i64 %209, 32
  %211 = ashr exact i64 %210, 32
  %212 = mul nsw i64 %211, %208
  %213 = add nsw i64 %205, %212
  %214 = load i64, i64* %122, align 4, !tbaa !9
  %215 = shl i64 %214, 32
  %216 = ashr exact i64 %215, 32
  %217 = load i64, i64* %39, align 4, !tbaa !9
  %218 = shl i64 %217, 32
  %219 = ashr exact i64 %218, 32
  %220 = mul nsw i64 %219, %216
  %221 = add nsw i64 %213, %220
  %222 = load i64, i64* %1, align 4, !tbaa !9
  %223 = shl i64 %222, 32
  %224 = ashr exact i64 %223, 32
  %225 = getelementptr inbounds i64, i64* %2, i32 6
  %226 = load i64, i64* %225, align 4, !tbaa !9
  %227 = shl i64 %226, 32
  %228 = ashr exact i64 %227, 32
  %229 = mul nsw i64 %228, %224
  %230 = add nsw i64 %221, %229
  %231 = getelementptr inbounds i64, i64* %1, i32 6
  %232 = load i64, i64* %231, align 4, !tbaa !9
  %233 = shl i64 %232, 32
  %234 = ashr exact i64 %233, 32
  %235 = load i64, i64* %2, align 4, !tbaa !9
  %236 = shl i64 %235, 32
  %237 = ashr exact i64 %236, 32
  %238 = mul nsw i64 %237, %234
  %239 = add nsw i64 %230, %238
  %240 = getelementptr inbounds i64, i64* %0, i32 6
  store i64 %239, i64* %240, align 4, !tbaa !9
  %241 = load i64, i64* %79, align 4, !tbaa !9
  %242 = shl i64 %241, 32
  %243 = ashr exact i64 %242, 32
  %244 = load i64, i64* %116, align 4, !tbaa !9
  %245 = shl i64 %244, 32
  %246 = ashr exact i64 %245, 32
  %247 = mul nsw i64 %246, %243
  %248 = load i64, i64* %122, align 4, !tbaa !9
  %249 = shl i64 %248, 32
  %250 = ashr exact i64 %249, 32
  %251 = load i64, i64* %73, align 4, !tbaa !9
  %252 = shl i64 %251, 32
  %253 = ashr exact i64 %252, 32
  %254 = mul nsw i64 %253, %250
  %255 = add nsw i64 %254, %247
  %256 = load i64, i64* %45, align 4, !tbaa !9
  %257 = shl i64 %256, 32
  %258 = ashr exact i64 %257, 32
  %259 = load i64, i64* %166, align 4, !tbaa !9
  %260 = shl i64 %259, 32
  %261 = ashr exact i64 %260, 32
  %262 = mul nsw i64 %261, %258
  %263 = add nsw i64 %255, %262
  %264 = load i64, i64* %172, align 4, !tbaa !9
  %265 = shl i64 %264, 32
  %266 = ashr exact i64 %265, 32
  %267 = load i64, i64* %39, align 4, !tbaa !9
  %268 = shl i64 %267, 32
  %269 = ashr exact i64 %268, 32
  %270 = mul nsw i64 %269, %266
  %271 = add nsw i64 %263, %270
  %272 = load i64, i64* %19, align 4, !tbaa !9
  %273 = shl i64 %272, 32
  %274 = ashr exact i64 %273, 32
  %275 = load i64, i64* %225, align 4, !tbaa !9
  %276 = shl i64 %275, 32
  %277 = ashr exact i64 %276, 32
  %278 = mul nsw i64 %277, %274
  %279 = add nsw i64 %271, %278
  %280 = load i64, i64* %231, align 4, !tbaa !9
  %281 = shl i64 %280, 32
  %282 = ashr exact i64 %281, 32
  %283 = load i64, i64* %14, align 4, !tbaa !9
  %284 = shl i64 %283, 32
  %285 = ashr exact i64 %284, 32
  %286 = mul nsw i64 %285, %282
  %287 = add nsw i64 %279, %286
  %288 = load i64, i64* %1, align 4, !tbaa !9
  %289 = shl i64 %288, 32
  %290 = ashr exact i64 %289, 32
  %291 = getelementptr inbounds i64, i64* %2, i32 7
  %292 = load i64, i64* %291, align 4, !tbaa !9
  %293 = shl i64 %292, 32
  %294 = ashr exact i64 %293, 32
  %295 = mul nsw i64 %294, %290
  %296 = add nsw i64 %287, %295
  %297 = getelementptr inbounds i64, i64* %1, i32 7
  %298 = load i64, i64* %297, align 4, !tbaa !9
  %299 = shl i64 %298, 32
  %300 = ashr exact i64 %299, 32
  %301 = load i64, i64* %2, align 4, !tbaa !9
  %302 = shl i64 %301, 32
  %303 = ashr exact i64 %302, 32
  %304 = mul nsw i64 %303, %300
  %305 = add nsw i64 %296, %304
  %306 = getelementptr inbounds i64, i64* %0, i32 7
  store i64 %305, i64* %306, align 4, !tbaa !9
  %307 = load i64, i64* %122, align 4, !tbaa !9
  %308 = shl i64 %307, 32
  %309 = ashr exact i64 %308, 32
  %310 = load i64, i64* %116, align 4, !tbaa !9
  %311 = shl i64 %310, 32
  %312 = ashr exact i64 %311, 32
  %313 = mul nsw i64 %312, %309
  %314 = load i64, i64* %79, align 4, !tbaa !9
  %315 = shl i64 %314, 32
  %316 = ashr exact i64 %315, 32
  %317 = load i64, i64* %166, align 4, !tbaa !9
  %318 = shl i64 %317, 32
  %319 = ashr exact i64 %318, 32
  %320 = mul nsw i64 %319, %316
  %321 = load i64, i64* %172, align 4, !tbaa !9
  %322 = shl i64 %321, 32
  %323 = ashr exact i64 %322, 32
  %324 = load i64, i64* %73, align 4, !tbaa !9
  %325 = shl i64 %324, 32
  %326 = ashr exact i64 %325, 32
  %327 = mul nsw i64 %326, %323
  %328 = add nsw i64 %327, %320
  %329 = load i64, i64* %19, align 4, !tbaa !9
  %330 = shl i64 %329, 32
  %331 = ashr exact i64 %330, 32
  %332 = load i64, i64* %291, align 4, !tbaa !9
  %333 = shl i64 %332, 32
  %334 = ashr exact i64 %333, 32
  %335 = mul nsw i64 %334, %331
  %336 = add nsw i64 %328, %335
  %337 = load i64, i64* %297, align 4, !tbaa !9
  %338 = shl i64 %337, 32
  %339 = ashr exact i64 %338, 32
  %340 = load i64, i64* %14, align 4, !tbaa !9
  %341 = shl i64 %340, 32
  %342 = ashr exact i64 %341, 32
  %343 = mul nsw i64 %342, %339
  %344 = add nsw i64 %336, %343
  %345 = shl nsw i64 %344, 1
  %346 = add nsw i64 %345, %313
  %347 = load i64, i64* %45, align 4, !tbaa !9
  %348 = shl i64 %347, 32
  %349 = ashr exact i64 %348, 32
  %350 = load i64, i64* %225, align 4, !tbaa !9
  %351 = shl i64 %350, 32
  %352 = ashr exact i64 %351, 32
  %353 = mul nsw i64 %352, %349
  %354 = add nsw i64 %346, %353
  %355 = load i64, i64* %231, align 4, !tbaa !9
  %356 = shl i64 %355, 32
  %357 = ashr exact i64 %356, 32
  %358 = load i64, i64* %39, align 4, !tbaa !9
  %359 = shl i64 %358, 32
  %360 = ashr exact i64 %359, 32
  %361 = mul nsw i64 %360, %357
  %362 = add nsw i64 %354, %361
  %363 = load i64, i64* %1, align 4, !tbaa !9
  %364 = shl i64 %363, 32
  %365 = ashr exact i64 %364, 32
  %366 = getelementptr inbounds i64, i64* %2, i32 8
  %367 = load i64, i64* %366, align 4, !tbaa !9
  %368 = shl i64 %367, 32
  %369 = ashr exact i64 %368, 32
  %370 = mul nsw i64 %369, %365
  %371 = add nsw i64 %362, %370
  %372 = getelementptr inbounds i64, i64* %1, i32 8
  %373 = load i64, i64* %372, align 4, !tbaa !9
  %374 = shl i64 %373, 32
  %375 = ashr exact i64 %374, 32
  %376 = load i64, i64* %2, align 4, !tbaa !9
  %377 = shl i64 %376, 32
  %378 = ashr exact i64 %377, 32
  %379 = mul nsw i64 %378, %375
  %380 = add nsw i64 %371, %379
  %381 = getelementptr inbounds i64, i64* %0, i32 8
  store i64 %380, i64* %381, align 4, !tbaa !9
  %382 = load i64, i64* %122, align 4, !tbaa !9
  %383 = shl i64 %382, 32
  %384 = ashr exact i64 %383, 32
  %385 = load i64, i64* %166, align 4, !tbaa !9
  %386 = shl i64 %385, 32
  %387 = ashr exact i64 %386, 32
  %388 = mul nsw i64 %387, %384
  %389 = load i64, i64* %172, align 4, !tbaa !9
  %390 = shl i64 %389, 32
  %391 = ashr exact i64 %390, 32
  %392 = load i64, i64* %116, align 4, !tbaa !9
  %393 = shl i64 %392, 32
  %394 = ashr exact i64 %393, 32
  %395 = mul nsw i64 %394, %391
  %396 = add nsw i64 %395, %388
  %397 = load i64, i64* %79, align 4, !tbaa !9
  %398 = shl i64 %397, 32
  %399 = ashr exact i64 %398, 32
  %400 = load i64, i64* %225, align 4, !tbaa !9
  %401 = shl i64 %400, 32
  %402 = ashr exact i64 %401, 32
  %403 = mul nsw i64 %402, %399
  %404 = add nsw i64 %396, %403
  %405 = load i64, i64* %231, align 4, !tbaa !9
  %406 = shl i64 %405, 32
  %407 = ashr exact i64 %406, 32
  %408 = load i64, i64* %73, align 4, !tbaa !9
  %409 = shl i64 %408, 32
  %410 = ashr exact i64 %409, 32
  %411 = mul nsw i64 %410, %407
  %412 = add nsw i64 %404, %411
  %413 = load i64, i64* %45, align 4, !tbaa !9
  %414 = shl i64 %413, 32
  %415 = ashr exact i64 %414, 32
  %416 = load i64, i64* %291, align 4, !tbaa !9
  %417 = shl i64 %416, 32
  %418 = ashr exact i64 %417, 32
  %419 = mul nsw i64 %418, %415
  %420 = add nsw i64 %412, %419
  %421 = load i64, i64* %297, align 4, !tbaa !9
  %422 = shl i64 %421, 32
  %423 = ashr exact i64 %422, 32
  %424 = load i64, i64* %39, align 4, !tbaa !9
  %425 = shl i64 %424, 32
  %426 = ashr exact i64 %425, 32
  %427 = mul nsw i64 %426, %423
  %428 = add nsw i64 %420, %427
  %429 = load i64, i64* %19, align 4, !tbaa !9
  %430 = shl i64 %429, 32
  %431 = ashr exact i64 %430, 32
  %432 = load i64, i64* %366, align 4, !tbaa !9
  %433 = shl i64 %432, 32
  %434 = ashr exact i64 %433, 32
  %435 = mul nsw i64 %434, %431
  %436 = add nsw i64 %428, %435
  %437 = load i64, i64* %372, align 4, !tbaa !9
  %438 = shl i64 %437, 32
  %439 = ashr exact i64 %438, 32
  %440 = load i64, i64* %14, align 4, !tbaa !9
  %441 = shl i64 %440, 32
  %442 = ashr exact i64 %441, 32
  %443 = mul nsw i64 %442, %439
  %444 = add nsw i64 %436, %443
  %445 = load i64, i64* %1, align 4, !tbaa !9
  %446 = shl i64 %445, 32
  %447 = ashr exact i64 %446, 32
  %448 = getelementptr inbounds i64, i64* %2, i32 9
  %449 = load i64, i64* %448, align 4, !tbaa !9
  %450 = shl i64 %449, 32
  %451 = ashr exact i64 %450, 32
  %452 = mul nsw i64 %451, %447
  %453 = add nsw i64 %444, %452
  %454 = getelementptr inbounds i64, i64* %1, i32 9
  %455 = load i64, i64* %454, align 4, !tbaa !9
  %456 = shl i64 %455, 32
  %457 = ashr exact i64 %456, 32
  %458 = load i64, i64* %2, align 4, !tbaa !9
  %459 = shl i64 %458, 32
  %460 = ashr exact i64 %459, 32
  %461 = mul nsw i64 %460, %457
  %462 = add nsw i64 %453, %461
  %463 = getelementptr inbounds i64, i64* %0, i32 9
  store i64 %462, i64* %463, align 4, !tbaa !9
  %464 = load i64, i64* %172, align 4, !tbaa !9
  %465 = shl i64 %464, 32
  %466 = ashr exact i64 %465, 32
  %467 = load i64, i64* %166, align 4, !tbaa !9
  %468 = shl i64 %467, 32
  %469 = ashr exact i64 %468, 32
  %470 = mul nsw i64 %469, %466
  %471 = load i64, i64* %79, align 4, !tbaa !9
  %472 = shl i64 %471, 32
  %473 = ashr exact i64 %472, 32
  %474 = load i64, i64* %291, align 4, !tbaa !9
  %475 = shl i64 %474, 32
  %476 = ashr exact i64 %475, 32
  %477 = mul nsw i64 %476, %473
  %478 = add nsw i64 %477, %470
  %479 = load i64, i64* %297, align 4, !tbaa !9
  %480 = shl i64 %479, 32
  %481 = ashr exact i64 %480, 32
  %482 = load i64, i64* %73, align 4, !tbaa !9
  %483 = shl i64 %482, 32
  %484 = ashr exact i64 %483, 32
  %485 = mul nsw i64 %484, %481
  %486 = add nsw i64 %478, %485
  %487 = load i64, i64* %19, align 4, !tbaa !9
  %488 = shl i64 %487, 32
  %489 = ashr exact i64 %488, 32
  %490 = load i64, i64* %448, align 4, !tbaa !9
  %491 = shl i64 %490, 32
  %492 = ashr exact i64 %491, 32
  %493 = mul nsw i64 %492, %489
  %494 = add nsw i64 %486, %493
  %495 = load i64, i64* %454, align 4, !tbaa !9
  %496 = shl i64 %495, 32
  %497 = ashr exact i64 %496, 32
  %498 = load i64, i64* %14, align 4, !tbaa !9
  %499 = shl i64 %498, 32
  %500 = ashr exact i64 %499, 32
  %501 = mul nsw i64 %500, %497
  %502 = add nsw i64 %494, %501
  %503 = shl nsw i64 %502, 1
  %504 = load i64, i64* %122, align 4, !tbaa !9
  %505 = shl i64 %504, 32
  %506 = ashr exact i64 %505, 32
  %507 = load i64, i64* %225, align 4, !tbaa !9
  %508 = shl i64 %507, 32
  %509 = ashr exact i64 %508, 32
  %510 = mul nsw i64 %509, %506
  %511 = add nsw i64 %503, %510
  %512 = load i64, i64* %231, align 4, !tbaa !9
  %513 = shl i64 %512, 32
  %514 = ashr exact i64 %513, 32
  %515 = load i64, i64* %116, align 4, !tbaa !9
  %516 = shl i64 %515, 32
  %517 = ashr exact i64 %516, 32
  %518 = mul nsw i64 %517, %514
  %519 = add nsw i64 %511, %518
  %520 = load i64, i64* %45, align 4, !tbaa !9
  %521 = shl i64 %520, 32
  %522 = ashr exact i64 %521, 32
  %523 = load i64, i64* %366, align 4, !tbaa !9
  %524 = shl i64 %523, 32
  %525 = ashr exact i64 %524, 32
  %526 = mul nsw i64 %525, %522
  %527 = add nsw i64 %519, %526
  %528 = load i64, i64* %372, align 4, !tbaa !9
  %529 = shl i64 %528, 32
  %530 = ashr exact i64 %529, 32
  %531 = load i64, i64* %39, align 4, !tbaa !9
  %532 = shl i64 %531, 32
  %533 = ashr exact i64 %532, 32
  %534 = mul nsw i64 %533, %530
  %535 = add nsw i64 %527, %534
  %536 = getelementptr inbounds i64, i64* %0, i32 10
  store i64 %535, i64* %536, align 4, !tbaa !9
  %537 = load i64, i64* %172, align 4, !tbaa !9
  %538 = shl i64 %537, 32
  %539 = ashr exact i64 %538, 32
  %540 = load i64, i64* %225, align 4, !tbaa !9
  %541 = shl i64 %540, 32
  %542 = ashr exact i64 %541, 32
  %543 = mul nsw i64 %542, %539
  %544 = load i64, i64* %231, align 4, !tbaa !9
  %545 = shl i64 %544, 32
  %546 = ashr exact i64 %545, 32
  %547 = load i64, i64* %166, align 4, !tbaa !9
  %548 = shl i64 %547, 32
  %549 = ashr exact i64 %548, 32
  %550 = mul nsw i64 %549, %546
  %551 = add nsw i64 %550, %543
  %552 = load i64, i64* %122, align 4, !tbaa !9
  %553 = shl i64 %552, 32
  %554 = ashr exact i64 %553, 32
  %555 = load i64, i64* %291, align 4, !tbaa !9
  %556 = shl i64 %555, 32
  %557 = ashr exact i64 %556, 32
  %558 = mul nsw i64 %557, %554
  %559 = add nsw i64 %551, %558
  %560 = load i64, i64* %297, align 4, !tbaa !9
  %561 = shl i64 %560, 32
  %562 = ashr exact i64 %561, 32
  %563 = load i64, i64* %116, align 4, !tbaa !9
  %564 = shl i64 %563, 32
  %565 = ashr exact i64 %564, 32
  %566 = mul nsw i64 %565, %562
  %567 = add nsw i64 %559, %566
  %568 = load i64, i64* %79, align 4, !tbaa !9
  %569 = shl i64 %568, 32
  %570 = ashr exact i64 %569, 32
  %571 = load i64, i64* %366, align 4, !tbaa !9
  %572 = shl i64 %571, 32
  %573 = ashr exact i64 %572, 32
  %574 = mul nsw i64 %573, %570
  %575 = add nsw i64 %567, %574
  %576 = load i64, i64* %372, align 4, !tbaa !9
  %577 = shl i64 %576, 32
  %578 = ashr exact i64 %577, 32
  %579 = load i64, i64* %73, align 4, !tbaa !9
  %580 = shl i64 %579, 32
  %581 = ashr exact i64 %580, 32
  %582 = mul nsw i64 %581, %578
  %583 = add nsw i64 %575, %582
  %584 = load i64, i64* %45, align 4, !tbaa !9
  %585 = shl i64 %584, 32
  %586 = ashr exact i64 %585, 32
  %587 = load i64, i64* %448, align 4, !tbaa !9
  %588 = shl i64 %587, 32
  %589 = ashr exact i64 %588, 32
  %590 = mul nsw i64 %589, %586
  %591 = add nsw i64 %583, %590
  %592 = load i64, i64* %454, align 4, !tbaa !9
  %593 = shl i64 %592, 32
  %594 = ashr exact i64 %593, 32
  %595 = load i64, i64* %39, align 4, !tbaa !9
  %596 = shl i64 %595, 32
  %597 = ashr exact i64 %596, 32
  %598 = mul nsw i64 %597, %594
  %599 = add nsw i64 %591, %598
  %600 = getelementptr inbounds i64, i64* %0, i32 11
  store i64 %599, i64* %600, align 4, !tbaa !9
  %601 = load i64, i64* %231, align 4, !tbaa !9
  %602 = shl i64 %601, 32
  %603 = ashr exact i64 %602, 32
  %604 = load i64, i64* %225, align 4, !tbaa !9
  %605 = shl i64 %604, 32
  %606 = ashr exact i64 %605, 32
  %607 = mul nsw i64 %606, %603
  %608 = load i64, i64* %172, align 4, !tbaa !9
  %609 = shl i64 %608, 32
  %610 = ashr exact i64 %609, 32
  %611 = load i64, i64* %291, align 4, !tbaa !9
  %612 = shl i64 %611, 32
  %613 = ashr exact i64 %612, 32
  %614 = mul nsw i64 %613, %610
  %615 = load i64, i64* %297, align 4, !tbaa !9
  %616 = shl i64 %615, 32
  %617 = ashr exact i64 %616, 32
  %618 = load i64, i64* %166, align 4, !tbaa !9
  %619 = shl i64 %618, 32
  %620 = ashr exact i64 %619, 32
  %621 = mul nsw i64 %620, %617
  %622 = add nsw i64 %621, %614
  %623 = load i64, i64* %79, align 4, !tbaa !9
  %624 = shl i64 %623, 32
  %625 = ashr exact i64 %624, 32
  %626 = load i64, i64* %448, align 4, !tbaa !9
  %627 = shl i64 %626, 32
  %628 = ashr exact i64 %627, 32
  %629 = mul nsw i64 %628, %625
  %630 = add nsw i64 %622, %629
  %631 = load i64, i64* %454, align 4, !tbaa !9
  %632 = shl i64 %631, 32
  %633 = ashr exact i64 %632, 32
  %634 = load i64, i64* %73, align 4, !tbaa !9
  %635 = shl i64 %634, 32
  %636 = ashr exact i64 %635, 32
  %637 = mul nsw i64 %636, %633
  %638 = add nsw i64 %630, %637
  %639 = shl nsw i64 %638, 1
  %640 = add nsw i64 %639, %607
  %641 = load i64, i64* %122, align 4, !tbaa !9
  %642 = shl i64 %641, 32
  %643 = ashr exact i64 %642, 32
  %644 = load i64, i64* %366, align 4, !tbaa !9
  %645 = shl i64 %644, 32
  %646 = ashr exact i64 %645, 32
  %647 = mul nsw i64 %646, %643
  %648 = add nsw i64 %640, %647
  %649 = load i64, i64* %372, align 4, !tbaa !9
  %650 = shl i64 %649, 32
  %651 = ashr exact i64 %650, 32
  %652 = load i64, i64* %116, align 4, !tbaa !9
  %653 = shl i64 %652, 32
  %654 = ashr exact i64 %653, 32
  %655 = mul nsw i64 %654, %651
  %656 = add nsw i64 %648, %655
  %657 = getelementptr inbounds i64, i64* %0, i32 12
  store i64 %656, i64* %657, align 4, !tbaa !9
  %658 = load i64, i64* %231, align 4, !tbaa !9
  %659 = shl i64 %658, 32
  %660 = ashr exact i64 %659, 32
  %661 = load i64, i64* %291, align 4, !tbaa !9
  %662 = shl i64 %661, 32
  %663 = ashr exact i64 %662, 32
  %664 = mul nsw i64 %663, %660
  %665 = load i64, i64* %297, align 4, !tbaa !9
  %666 = shl i64 %665, 32
  %667 = ashr exact i64 %666, 32
  %668 = load i64, i64* %225, align 4, !tbaa !9
  %669 = shl i64 %668, 32
  %670 = ashr exact i64 %669, 32
  %671 = mul nsw i64 %670, %667
  %672 = add nsw i64 %671, %664
  %673 = load i64, i64* %172, align 4, !tbaa !9
  %674 = shl i64 %673, 32
  %675 = ashr exact i64 %674, 32
  %676 = load i64, i64* %366, align 4, !tbaa !9
  %677 = shl i64 %676, 32
  %678 = ashr exact i64 %677, 32
  %679 = mul nsw i64 %678, %675
  %680 = add nsw i64 %672, %679
  %681 = load i64, i64* %372, align 4, !tbaa !9
  %682 = shl i64 %681, 32
  %683 = ashr exact i64 %682, 32
  %684 = load i64, i64* %166, align 4, !tbaa !9
  %685 = shl i64 %684, 32
  %686 = ashr exact i64 %685, 32
  %687 = mul nsw i64 %686, %683
  %688 = add nsw i64 %680, %687
  %689 = load i64, i64* %122, align 4, !tbaa !9
  %690 = shl i64 %689, 32
  %691 = ashr exact i64 %690, 32
  %692 = load i64, i64* %448, align 4, !tbaa !9
  %693 = shl i64 %692, 32
  %694 = ashr exact i64 %693, 32
  %695 = mul nsw i64 %694, %691
  %696 = add nsw i64 %688, %695
  %697 = load i64, i64* %454, align 4, !tbaa !9
  %698 = shl i64 %697, 32
  %699 = ashr exact i64 %698, 32
  %700 = load i64, i64* %116, align 4, !tbaa !9
  %701 = shl i64 %700, 32
  %702 = ashr exact i64 %701, 32
  %703 = mul nsw i64 %702, %699
  %704 = add nsw i64 %696, %703
  %705 = getelementptr inbounds i64, i64* %0, i32 13
  store i64 %704, i64* %705, align 4, !tbaa !9
  %706 = load i64, i64* %297, align 4, !tbaa !9
  %707 = shl i64 %706, 32
  %708 = ashr exact i64 %707, 32
  %709 = load i64, i64* %291, align 4, !tbaa !9
  %710 = shl i64 %709, 32
  %711 = ashr exact i64 %710, 32
  %712 = mul nsw i64 %711, %708
  %713 = load i64, i64* %172, align 4, !tbaa !9
  %714 = shl i64 %713, 32
  %715 = ashr exact i64 %714, 32
  %716 = load i64, i64* %448, align 4, !tbaa !9
  %717 = shl i64 %716, 32
  %718 = ashr exact i64 %717, 32
  %719 = mul nsw i64 %718, %715
  %720 = add nsw i64 %719, %712
  %721 = load i64, i64* %454, align 4, !tbaa !9
  %722 = shl i64 %721, 32
  %723 = ashr exact i64 %722, 32
  %724 = load i64, i64* %166, align 4, !tbaa !9
  %725 = shl i64 %724, 32
  %726 = ashr exact i64 %725, 32
  %727 = mul nsw i64 %726, %723
  %728 = add nsw i64 %720, %727
  %729 = shl nsw i64 %728, 1
  %730 = load i64, i64* %231, align 4, !tbaa !9
  %731 = shl i64 %730, 32
  %732 = ashr exact i64 %731, 32
  %733 = load i64, i64* %366, align 4, !tbaa !9
  %734 = shl i64 %733, 32
  %735 = ashr exact i64 %734, 32
  %736 = mul nsw i64 %735, %732
  %737 = add nsw i64 %729, %736
  %738 = load i64, i64* %372, align 4, !tbaa !9
  %739 = shl i64 %738, 32
  %740 = ashr exact i64 %739, 32
  %741 = load i64, i64* %225, align 4, !tbaa !9
  %742 = shl i64 %741, 32
  %743 = ashr exact i64 %742, 32
  %744 = mul nsw i64 %743, %740
  %745 = add nsw i64 %737, %744
  %746 = getelementptr inbounds i64, i64* %0, i32 14
  store i64 %745, i64* %746, align 4, !tbaa !9
  %747 = load i64, i64* %297, align 4, !tbaa !9
  %748 = shl i64 %747, 32
  %749 = ashr exact i64 %748, 32
  %750 = load i64, i64* %366, align 4, !tbaa !9
  %751 = shl i64 %750, 32
  %752 = ashr exact i64 %751, 32
  %753 = mul nsw i64 %752, %749
  %754 = load i64, i64* %372, align 4, !tbaa !9
  %755 = shl i64 %754, 32
  %756 = ashr exact i64 %755, 32
  %757 = load i64, i64* %291, align 4, !tbaa !9
  %758 = shl i64 %757, 32
  %759 = ashr exact i64 %758, 32
  %760 = mul nsw i64 %759, %756
  %761 = add nsw i64 %760, %753
  %762 = load i64, i64* %231, align 4, !tbaa !9
  %763 = shl i64 %762, 32
  %764 = ashr exact i64 %763, 32
  %765 = load i64, i64* %448, align 4, !tbaa !9
  %766 = shl i64 %765, 32
  %767 = ashr exact i64 %766, 32
  %768 = mul nsw i64 %767, %764
  %769 = add nsw i64 %761, %768
  %770 = load i64, i64* %454, align 4, !tbaa !9
  %771 = shl i64 %770, 32
  %772 = ashr exact i64 %771, 32
  %773 = load i64, i64* %225, align 4, !tbaa !9
  %774 = shl i64 %773, 32
  %775 = ashr exact i64 %774, 32
  %776 = mul nsw i64 %775, %772
  %777 = add nsw i64 %769, %776
  %778 = getelementptr inbounds i64, i64* %0, i32 15
  store i64 %777, i64* %778, align 4, !tbaa !9
  %779 = load i64, i64* %372, align 4, !tbaa !9
  %780 = shl i64 %779, 32
  %781 = ashr exact i64 %780, 32
  %782 = load i64, i64* %366, align 4, !tbaa !9
  %783 = shl i64 %782, 32
  %784 = ashr exact i64 %783, 32
  %785 = mul nsw i64 %784, %781
  %786 = load i64, i64* %297, align 4, !tbaa !9
  %787 = shl i64 %786, 32
  %788 = ashr exact i64 %787, 32
  %789 = load i64, i64* %448, align 4, !tbaa !9
  %790 = shl i64 %789, 32
  %791 = ashr exact i64 %790, 32
  %792 = mul nsw i64 %791, %788
  %793 = load i64, i64* %454, align 4, !tbaa !9
  %794 = shl i64 %793, 32
  %795 = ashr exact i64 %794, 32
  %796 = load i64, i64* %291, align 4, !tbaa !9
  %797 = shl i64 %796, 32
  %798 = ashr exact i64 %797, 32
  %799 = mul nsw i64 %798, %795
  %800 = add nsw i64 %799, %792
  %801 = shl nsw i64 %800, 1
  %802 = add nsw i64 %801, %785
  %803 = getelementptr inbounds i64, i64* %0, i32 16
  store i64 %802, i64* %803, align 4, !tbaa !9
  %804 = load i64, i64* %372, align 4, !tbaa !9
  %805 = shl i64 %804, 32
  %806 = ashr exact i64 %805, 32
  %807 = load i64, i64* %448, align 4, !tbaa !9
  %808 = shl i64 %807, 32
  %809 = ashr exact i64 %808, 32
  %810 = mul nsw i64 %809, %806
  %811 = load i64, i64* %454, align 4, !tbaa !9
  %812 = shl i64 %811, 32
  %813 = ashr exact i64 %812, 32
  %814 = load i64, i64* %366, align 4, !tbaa !9
  %815 = shl i64 %814, 32
  %816 = ashr exact i64 %815, 32
  %817 = mul nsw i64 %816, %813
  %818 = add nsw i64 %817, %810
  %819 = getelementptr inbounds i64, i64* %0, i32 17
  store i64 %818, i64* %819, align 4, !tbaa !9
  %820 = load i64, i64* %454, align 4, !tbaa !9
  %821 = shl i64 %820, 32
  %822 = ashr exact i64 %821, 31
  %823 = load i64, i64* %448, align 4, !tbaa !9
  %824 = shl i64 %823, 32
  %825 = ashr exact i64 %824, 32
  %826 = mul nsw i64 %825, %822
  %827 = getelementptr inbounds i64, i64* %0, i32 18
  store i64 %826, i64* %827, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @fsquare(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [19 x i64], align 8
  %4 = bitcast [19 x i64]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %4) #7
  %5 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 0
  %6 = load i64, i64* %1, align 4, !tbaa !9
  %7 = shl i64 %6, 32
  %8 = ashr exact i64 %7, 32
  %9 = mul nsw i64 %8, %8
  store i64 %9, i64* %5, align 8, !tbaa !9
  %10 = ashr exact i64 %7, 31
  %11 = getelementptr inbounds i64, i64* %1, i32 1
  %12 = load i64, i64* %11, align 4, !tbaa !9
  %13 = shl i64 %12, 32
  %14 = ashr exact i64 %13, 32
  %15 = mul nsw i64 %14, %10
  %16 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 1
  store i64 %15, i64* %16, align 8, !tbaa !9
  %17 = mul nsw i64 %14, %14
  %18 = getelementptr inbounds i64, i64* %1, i32 2
  %19 = load i64, i64* %18, align 4, !tbaa !9
  %20 = shl i64 %19, 32
  %21 = ashr exact i64 %20, 32
  %22 = mul nsw i64 %21, %8
  %23 = add nsw i64 %22, %17
  %24 = shl nsw i64 %23, 1
  %25 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 2
  store i64 %24, i64* %25, align 8, !tbaa !9
  %26 = mul nsw i64 %21, %14
  %27 = getelementptr inbounds i64, i64* %1, i32 3
  %28 = load i64, i64* %27, align 4, !tbaa !9
  %29 = shl i64 %28, 32
  %30 = ashr exact i64 %29, 32
  %31 = mul nsw i64 %30, %8
  %32 = add nsw i64 %31, %26
  %33 = shl nsw i64 %32, 1
  %34 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 3
  store i64 %33, i64* %34, align 8, !tbaa !9
  %35 = mul nsw i64 %21, %21
  %36 = ashr exact i64 %13, 30
  %37 = mul nsw i64 %30, %36
  %38 = add nsw i64 %37, %35
  %39 = getelementptr inbounds i64, i64* %1, i32 4
  %40 = load i64, i64* %39, align 4, !tbaa !9
  %41 = shl i64 %40, 32
  %42 = ashr exact i64 %41, 32
  %43 = mul nsw i64 %42, %10
  %44 = add nsw i64 %38, %43
  %45 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 4
  store i64 %44, i64* %45, align 8, !tbaa !9
  %46 = mul nsw i64 %30, %21
  %47 = mul nsw i64 %42, %14
  %48 = add nsw i64 %47, %46
  %49 = getelementptr inbounds i64, i64* %1, i32 5
  %50 = load i64, i64* %49, align 4, !tbaa !9
  %51 = shl i64 %50, 32
  %52 = ashr exact i64 %51, 32
  %53 = mul nsw i64 %52, %8
  %54 = add nsw i64 %48, %53
  %55 = shl nsw i64 %54, 1
  %56 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 5
  store i64 %55, i64* %56, align 8, !tbaa !9
  %57 = mul nsw i64 %30, %30
  %58 = mul nsw i64 %42, %21
  %59 = add nsw i64 %58, %57
  %60 = getelementptr inbounds i64, i64* %1, i32 6
  %61 = load i64, i64* %60, align 4, !tbaa !9
  %62 = shl i64 %61, 32
  %63 = ashr exact i64 %62, 32
  %64 = mul nsw i64 %63, %8
  %65 = ashr exact i64 %13, 31
  %66 = mul nsw i64 %52, %65
  %67 = add i64 %59, %66
  %68 = add i64 %67, %64
  %69 = shl nsw i64 %68, 1
  %70 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 6
  store i64 %69, i64* %70, align 8, !tbaa !9
  %71 = mul nsw i64 %42, %30
  %72 = mul nsw i64 %52, %21
  %73 = add nsw i64 %72, %71
  %74 = mul nsw i64 %63, %14
  %75 = add nsw i64 %73, %74
  %76 = getelementptr inbounds i64, i64* %1, i32 7
  %77 = load i64, i64* %76, align 4, !tbaa !9
  %78 = shl i64 %77, 32
  %79 = ashr exact i64 %78, 32
  %80 = mul nsw i64 %79, %8
  %81 = add nsw i64 %75, %80
  %82 = shl nsw i64 %81, 1
  %83 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 7
  store i64 %82, i64* %83, align 8, !tbaa !9
  %84 = mul nsw i64 %42, %42
  %85 = mul nsw i64 %63, %21
  %86 = getelementptr inbounds i64, i64* %1, i32 8
  %87 = load i64, i64* %86, align 4, !tbaa !9
  %88 = shl i64 %87, 32
  %89 = ashr exact i64 %88, 32
  %90 = mul nsw i64 %89, %8
  %91 = add nsw i64 %90, %85
  %92 = mul nsw i64 %79, %14
  %93 = mul nsw i64 %52, %30
  %94 = add nsw i64 %92, %93
  %95 = shl nsw i64 %94, 1
  %96 = add nsw i64 %91, %95
  %97 = shl nsw i64 %96, 1
  %98 = add nsw i64 %97, %84
  %99 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 8
  store i64 %98, i64* %99, align 8, !tbaa !9
  %100 = mul nsw i64 %52, %42
  %101 = mul nsw i64 %63, %30
  %102 = add nsw i64 %101, %100
  %103 = mul nsw i64 %79, %21
  %104 = add nsw i64 %102, %103
  %105 = mul nsw i64 %89, %14
  %106 = add nsw i64 %104, %105
  %107 = getelementptr inbounds i64, i64* %1, i32 9
  %108 = load i64, i64* %107, align 4, !tbaa !9
  %109 = shl i64 %108, 32
  %110 = ashr exact i64 %109, 32
  %111 = mul nsw i64 %110, %8
  %112 = add nsw i64 %106, %111
  %113 = shl nsw i64 %112, 1
  %114 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 9
  store i64 %113, i64* %114, align 8, !tbaa !9
  %115 = mul nsw i64 %52, %52
  %116 = mul nsw i64 %63, %42
  %117 = add nsw i64 %116, %115
  %118 = mul nsw i64 %89, %21
  %119 = add nsw i64 %117, %118
  %120 = mul nsw i64 %79, %30
  %121 = mul nsw i64 %110, %14
  %122 = add nsw i64 %121, %120
  %123 = shl nsw i64 %122, 1
  %124 = add nsw i64 %119, %123
  %125 = shl nsw i64 %124, 1
  %126 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 10
  store i64 %125, i64* %126, align 8, !tbaa !9
  %127 = mul nsw i64 %63, %52
  %128 = mul nsw i64 %79, %42
  %129 = add nsw i64 %128, %127
  %130 = mul nsw i64 %89, %30
  %131 = add nsw i64 %129, %130
  %132 = mul nsw i64 %110, %21
  %133 = add nsw i64 %131, %132
  %134 = shl nsw i64 %133, 1
  %135 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 11
  store i64 %134, i64* %135, align 8, !tbaa !9
  %136 = mul nsw i64 %63, %63
  %137 = mul nsw i64 %89, %42
  %138 = mul nsw i64 %79, %52
  %139 = mul nsw i64 %110, %30
  %140 = add nsw i64 %139, %138
  %141 = shl nsw i64 %140, 1
  %142 = add nsw i64 %141, %137
  %143 = shl nsw i64 %142, 1
  %144 = add nsw i64 %143, %136
  %145 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 12
  store i64 %144, i64* %145, align 8, !tbaa !9
  %146 = mul nsw i64 %79, %63
  %147 = mul nsw i64 %89, %52
  %148 = add nsw i64 %147, %146
  %149 = mul nsw i64 %110, %42
  %150 = add nsw i64 %148, %149
  %151 = shl nsw i64 %150, 1
  %152 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 13
  store i64 %151, i64* %152, align 8, !tbaa !9
  %153 = mul nsw i64 %79, %79
  %154 = mul nsw i64 %89, %63
  %155 = add nsw i64 %154, %153
  %156 = ashr exact i64 %51, 31
  %157 = mul nsw i64 %110, %156
  %158 = add nsw i64 %155, %157
  %159 = shl nsw i64 %158, 1
  %160 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 14
  store i64 %159, i64* %160, align 8, !tbaa !9
  %161 = mul nsw i64 %89, %79
  %162 = mul nsw i64 %110, %63
  %163 = add nsw i64 %162, %161
  %164 = shl nsw i64 %163, 1
  %165 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 15
  store i64 %164, i64* %165, align 8, !tbaa !9
  %166 = mul nsw i64 %89, %89
  %167 = ashr exact i64 %78, 30
  %168 = mul nsw i64 %110, %167
  %169 = add nsw i64 %168, %166
  %170 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 16
  store i64 %169, i64* %170, align 8, !tbaa !9
  %171 = ashr exact i64 %88, 31
  %172 = mul nsw i64 %110, %171
  %173 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 17
  store i64 %172, i64* %173, align 8, !tbaa !9
  %174 = ashr exact i64 %109, 31
  %175 = mul nsw i64 %174, %110
  %176 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 18
  store i64 %175, i64* %176, align 8, !tbaa !9
  %177 = mul i64 %175, 19
  %178 = add i64 %177, %98
  store i64 %178, i64* %99, align 8, !tbaa !9
  %179 = mul i64 %172, 18
  %180 = add i64 %172, %82
  %181 = add i64 %180, %179
  store i64 %181, i64* %83, align 8, !tbaa !9
  %182 = mul i64 %169, 18
  %183 = add i64 %169, %69
  %184 = add i64 %183, %182
  store i64 %184, i64* %70, align 8, !tbaa !9
  %185 = mul i64 %163, 36
  %186 = add i64 %164, %55
  %187 = add i64 %186, %185
  store i64 %187, i64* %56, align 8, !tbaa !9
  %188 = mul i64 %158, 36
  %189 = add i64 %159, %44
  %190 = add i64 %189, %188
  store i64 %190, i64* %45, align 8, !tbaa !9
  %191 = mul i64 %150, 36
  %192 = add i64 %151, %33
  %193 = add i64 %192, %191
  store i64 %193, i64* %34, align 8, !tbaa !9
  %194 = mul i64 %144, 18
  %195 = add i64 %144, %24
  %196 = add i64 %195, %194
  store i64 %196, i64* %25, align 8, !tbaa !9
  %197 = mul i64 %133, 36
  %198 = add i64 %134, %15
  %199 = add i64 %198, %197
  store i64 %199, i64* %16, align 8, !tbaa !9
  %200 = mul i64 %124, 36
  %201 = add i64 %125, %9
  %202 = add i64 %201, %200
  store i64 %202, i64* %5, align 8, !tbaa !9
  store i64 0, i64* %126, align 8, !tbaa !9
  br label %203

203:                                              ; preds = %203, %2
  %204 = phi i32 [ 0, %2 ], [ %229, %203 ]
  %205 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 %204
  %206 = load i64, i64* %205, align 8, !tbaa !9
  %207 = lshr i64 %206, 32
  %208 = trunc i64 %207 to i32
  %209 = ashr i32 %208, 31
  %210 = lshr i32 %209, 6
  %211 = zext i32 %210 to i64
  %212 = add nsw i64 %206, %211
  %213 = ashr i64 %212, 26
  %214 = mul i64 %213, -67108864
  %215 = add i64 %214, %206
  store i64 %215, i64* %205, align 8, !tbaa !9
  %216 = or i32 %204, 1
  %217 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 %216
  %218 = load i64, i64* %217, align 8, !tbaa !9
  %219 = add nsw i64 %213, %218
  %220 = lshr i64 %219, 32
  %221 = trunc i64 %220 to i32
  %222 = ashr i32 %221, 31
  %223 = lshr i32 %222, 7
  %224 = zext i32 %223 to i64
  %225 = add nsw i64 %219, %224
  %226 = ashr i64 %225, 25
  %227 = mul i64 %226, -33554432
  %228 = add i64 %227, %219
  store i64 %228, i64* %217, align 8, !tbaa !9
  %229 = add nuw nsw i32 %204, 2
  %230 = getelementptr inbounds [19 x i64], [19 x i64]* %3, i32 0, i32 %229
  %231 = load i64, i64* %230, align 8, !tbaa !9
  %232 = add nsw i64 %226, %231
  store i64 %232, i64* %230, align 8, !tbaa !9
  %233 = icmp ult i32 %204, 8
  br i1 %233, label %203, label %234, !llvm.loop !16

234:                                              ; preds = %203
  %235 = load i64, i64* %126, align 8, !tbaa !9
  %236 = load i64, i64* %5, align 8, !tbaa !9
  %237 = mul i64 %235, 18
  %238 = add i64 %236, %235
  %239 = add i64 %238, %237
  store i64 %239, i64* %5, align 8, !tbaa !9
  store i64 0, i64* %126, align 8, !tbaa !9
  %240 = lshr i64 %239, 32
  %241 = trunc i64 %240 to i32
  %242 = ashr i32 %241, 31
  %243 = lshr i32 %242, 6
  %244 = zext i32 %243 to i64
  %245 = add nsw i64 %239, %244
  %246 = ashr i64 %245, 26
  %247 = mul i64 %246, -67108864
  %248 = add i64 %247, %239
  store i64 %248, i64* %5, align 8, !tbaa !9
  %249 = load i64, i64* %16, align 8, !tbaa !9
  %250 = add nsw i64 %246, %249
  store i64 %250, i64* %16, align 8, !tbaa !9
  %251 = bitcast i64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(80) %251, i8* noundef nonnull align 8 dereferenceable(80) %4, i32 80, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %4) #7
  ret void
}

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12, !13}
!21 = distinct !{!21, !12, !13}
!22 = distinct !{!22, !12, !13}
!23 = distinct !{!23, !12, !13}
!24 = distinct !{!24, !12, !13}
!25 = distinct !{!25, !12, !13}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !7, i64 0}
!28 = distinct !{!28, !12, !13}
!29 = distinct !{!29, !12, !13}
!30 = distinct !{!30, !12, !13}
!31 = distinct !{!31, !12, !13}
!32 = distinct !{!32, !12, !13}
!33 = distinct !{!33, !12, !13}
!34 = distinct !{!34, !12, !13}
