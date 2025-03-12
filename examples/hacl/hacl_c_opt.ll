; ModuleID = 'hacl_c.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Hacl_Impl_Poly1305_64_State_poly1305_state = type { ptr, ptr }
%struct.FStar_UInt128_uint128 = type { i64, i64 }
%struct.K___uint64_t_uint64_t_uint64_t_uint64_t = type { i64, i64, i64, i64 }
%struct.vec = type { [4 x i32] }

@.str = private unnamed_addr constant [27 x i8] c"KreMLin abort at %s:%d\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"hacl-c/hacl-c/AEAD_Poly1305_64.c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"noextract flag\00", align 1
@Hacl_Chacha20Poly1305_noncelen = dso_local local_unnamed_addr global i32 12, align 4
@Hacl_Chacha20Poly1305_keylen = dso_local local_unnamed_addr global i32 32, align 4
@Hacl_Chacha20Poly1305_maclen = dso_local local_unnamed_addr global i32 16, align 4
@Hacl_Poly1305_32_empty_log = dso_local local_unnamed_addr global ptr null, align 4
@Hacl_SHA2_256_size_hash = dso_local local_unnamed_addr global i32 32, align 4
@Hacl_SHA2_256_size_block = dso_local local_unnamed_addr global i32 64, align 4
@Hacl_SHA2_256_size_state = dso_local local_unnamed_addr global i32 137, align 4
@Hacl_SHA2_384_size_hash = dso_local local_unnamed_addr global i32 48, align 4
@Hacl_SHA2_384_size_block = dso_local local_unnamed_addr global i32 128, align 4
@Hacl_SHA2_384_size_state = dso_local local_unnamed_addr global i32 169, align 4
@Hacl_SHA2_512_size_word = dso_local local_unnamed_addr global i32 8, align 4
@Hacl_SHA2_512_size_hash_w = dso_local local_unnamed_addr global i32 8, align 4
@Hacl_SHA2_512_size_block_w = dso_local local_unnamed_addr global i32 16, align 4
@Hacl_SHA2_512_size_hash = dso_local local_unnamed_addr global i32 64, align 4
@Hacl_SHA2_512_size_block = dso_local local_unnamed_addr global i32 128, align 4
@Hacl_SHA2_512_size_k_w = dso_local local_unnamed_addr global i32 80, align 4
@Hacl_SHA2_512_size_ws_w = dso_local local_unnamed_addr global i32 80, align 4
@Hacl_SHA2_512_size_whash_w = dso_local local_unnamed_addr global i32 8, align 4
@Hacl_SHA2_512_size_count_w = dso_local local_unnamed_addr global i32 1, align 4
@Hacl_SHA2_512_size_len_8 = dso_local local_unnamed_addr global i32 16, align 4
@Hacl_SHA2_512_size_state = dso_local local_unnamed_addr global i32 169, align 4
@Hacl_SHA2_512_pos_k_w = dso_local local_unnamed_addr global i32 0, align 4
@Hacl_SHA2_512_pos_ws_w = dso_local local_unnamed_addr global i32 80, align 4
@Hacl_SHA2_512_pos_whash_w = dso_local local_unnamed_addr global i32 160, align 4
@Hacl_SHA2_512_pos_count_w = dso_local local_unnamed_addr global i32 168, align 4
@.str.159 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2.161 = private unnamed_addr constant [55 x i8] c"Error on reading, expected %llu bytes, got %llu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Cannot allocate %llu bytes aligned to %llu\0A\00", align 1
@NaCl_crypto_box_NONCEBYTES = dso_local local_unnamed_addr global i32 24, align 4
@NaCl_crypto_box_PUBLICKEYBYTES = dso_local local_unnamed_addr global i32 32, align 4
@NaCl_crypto_box_SECRETKEYBYTES = dso_local local_unnamed_addr global i32 32, align 4
@NaCl_crypto_box_MACBYTES = dso_local local_unnamed_addr global i32 16, align 4
@NaCl_crypto_secretbox_NONCEBYTES = dso_local local_unnamed_addr global i32 24, align 4
@NaCl_crypto_secretbox_KEYBYTES = dso_local local_unnamed_addr global i32 32, align 4
@NaCl_crypto_secretbox_MACBYTES = dso_local local_unnamed_addr global i32 16, align 4
@__const.crypto_scalarmult_base.basepoint = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, align 1
@exit_success = dso_local local_unnamed_addr global i32 0, align 4
@exit_failure = dso_local local_unnamed_addr global i32 1, align 4
@.str.163 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.164 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Cannot open /dev/urandom\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AEAD_Poly1305_64_seval(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 340, ptr noundef nonnull @.str.2)
  tail call void @exit(i32 noundef 255) #11
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AEAD_Poly1305_64_selem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 346, ptr noundef nonnull @.str.2)
  tail call void @exit(i32 noundef 255) #11
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_mk_state(ptr dead_on_unwind noalias writable sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Poly1305_64_mk_state(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_mk_state(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  store ptr %1, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr %2, ptr %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, -15) i32 @AEAD_Poly1305_64_mul_div_16(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, -16
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_pad_last(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [16 x i8], align 1
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = icmp ugt i32 %3, 15
  %9 = sub i32 16, %3
  %10 = select i1 %8, i32 0, i32 %9
  %11 = getelementptr i8, ptr %5, i32 %3
  call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 %10, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %2, i32 %3, i1 false)
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(ptr %0, ptr %1, ptr noundef nonnull %5)
  br label %12

12:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  call fastcc void @load128_le(ptr dead_on_unwind noalias nonnull writable align 4 %5, ptr noundef %2)
  %8 = load i64, ptr %5, align 8
  %9 = getelementptr inbounds i8, ptr %5, i32 8
  %10 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %8, i64 poison)
  %11 = and i64 %10, 17592186044415
  %12 = load i64, ptr %5, align 8
  %13 = load i64, ptr %9, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %12, i64 %13, i32 noundef 44)
  %14 = load i64, ptr %6, align 8
  %15 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %14, i64 poison)
  %16 = and i64 %15, 17592186044415
  %17 = load i64, ptr %5, align 8
  %18 = load i64, ptr %9, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %17, i64 %18, i32 noundef 88)
  %19 = load i64, ptr %7, align 8
  %20 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %19, i64 poison)
  store i64 %11, ptr %4, align 8
  %21 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 %16, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %4, i32 16
  %23 = or i64 %20, 1099511627776
  store i64 %23, ptr %22, align 8
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @load128_le(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @load128_le_(ptr noundef %1, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %0, align 4
  %5 = load i64, ptr %1, align 4
  %6 = add i64 %5, %4
  store i64 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %1, i32 8
  %10 = load i64, ptr %9, align 4
  %11 = add i64 %10, %8
  store i64 %11, ptr %7, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 16
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %1, i32 16
  %15 = load i64, ptr %14, align 4
  %16 = add i64 %15, %13
  store i64 %16, ptr %12, align 4
  tail call fastcc void @Hacl_Bignum_Fmul_fmul(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca [3 x %struct.FStar_UInt128_uint128], align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) %1, i32 24, i1 false)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %5, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %5, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2)
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_(ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Modulo_carry_top_wide(ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(ptr noundef %0, ptr noundef nonnull %5)
  %9 = load i64, ptr %0, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  %11 = load i64, ptr %10, align 4
  %12 = and i64 %9, 17592186044415
  %13 = lshr i64 %9, 44
  %14 = add i64 %11, %13
  store i64 %12, ptr %0, align 4
  store i64 %14, ptr %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %2, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %0, ptr noundef %1, i64 noundef %4)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %1)
  %5 = getelementptr inbounds i8, ptr %2, i32 8
  %6 = load i64, ptr %5, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %0, ptr noundef %1, i64 noundef %6)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %1)
  %7 = getelementptr inbounds i8, ptr %2, i32 16
  %8 = load i64, ptr %7, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %0, ptr noundef %1, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 8
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %.sroa.01.0.copyload = load i64, ptr %0, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.0.0.copyload = load i64, ptr %5, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %6 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.01.0.copyload, i64 poison)
  %7 = and i64 %6, 17592186044415
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %.sroa.01.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 44)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %7)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  %8 = load i64, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i32 8
  %10 = load i64, ptr %9, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %8, i64 %10)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %11 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.01.0.copyload.1 = load i64, ptr %11, align 4
  %.sroa.3.0..sroa_idx.1 = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.3.0.copyload.1 = load i64, ptr %.sroa.3.0..sroa_idx.1, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.0.0.copyload.1 = load i64, ptr %12, align 4
  %.sroa.2.0..sroa_idx.1 = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.2.0.copyload.1 = load i64, ptr %.sroa.2.0..sroa_idx.1, align 4
  %13 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.01.0.copyload.1, i64 poison)
  %14 = and i64 %13, 17592186044415
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %.sroa.01.0.copyload.1, i64 %.sroa.3.0.copyload.1, i32 noundef 44)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %14)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  %15 = load i64, ptr %2, align 8
  %16 = getelementptr inbounds i8, ptr %2, i32 8
  %17 = load i64, ptr %16, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.0.0.copyload.1, i64 %.sroa.2.0.copyload.1, i64 %15, i64 %17)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_carry_top_wide(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 4
  %3 = alloca %struct.FStar_UInt128_uint128, align 8
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.02.0.copyload = load i64, ptr %7, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef 4398046511103)
  %8 = load i64, ptr %3, align 8
  %9 = getelementptr inbounds i8, ptr %3, i32 8
  %10 = load i64, ptr %9, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %.sroa.02.0.copyload, i64 %.sroa.3.0.copyload, i64 %8, i64 %10)
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.02.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 42)
  %11 = load i64, ptr %4, align 8
  %12 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %11, i64 poison)
  %13 = mul i64 %12, 5
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %13)
  %14 = load i64, ptr %6, align 8
  %15 = getelementptr inbounds i8, ptr %6, i32 8
  %16 = load i64, ptr %15, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %14, i64 %16)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.sroa.0.0.copyload = load i64, ptr %1, align 4
  %3 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.0.0.copyload, i64 poison)
  store i64 %3, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 16
  %.sroa.0.0.copyload.1 = load i64, ptr %4, align 4
  %5 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.0.0.copyload.1, i64 poison)
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %5, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %1, i32 32
  %.sroa.0.0.copyload.2 = load i64, ptr %7, align 4
  %8 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.0.0.copyload.2, i64 poison)
  %9 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %8, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %6 = load i64, ptr %1, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %6, i64 noundef %2)
  %7 = load i64, ptr %5, align 8
  %8 = getelementptr inbounds i8, ptr %5, i32 8
  %9 = load i64, ptr %8, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %7, i64 %9)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %10 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.0.0.copyload.1 = load i64, ptr %10, align 4
  %.sroa.2.0..sroa_idx.1 = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.2.0.copyload.1 = load i64, ptr %.sroa.2.0..sroa_idx.1, align 4
  %11 = getelementptr inbounds i8, ptr %1, i32 8
  %12 = load i64, ptr %11, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %12, i64 noundef %2)
  %13 = load i64, ptr %5, align 8
  %14 = getelementptr inbounds i8, ptr %5, i32 8
  %15 = load i64, ptr %14, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.0.0.copyload.1, i64 %.sroa.2.0.copyload.1, i64 %13, i64 %15)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %16 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.0.0.copyload.2 = load i64, ptr %16, align 4
  %.sroa.2.0..sroa_idx.2 = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.2.0.copyload.2 = load i64, ptr %.sroa.2.0..sroa_idx.2, align 4
  %17 = getelementptr inbounds i8, ptr %1, i32 16
  %18 = load i64, ptr %17, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %18, i64 noundef %2)
  %19 = load i64, ptr %5, align 8
  %20 = getelementptr inbounds i8, ptr %5, i32 8
  %21 = load i64, ptr %20, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.0.0.copyload.2, i64 %.sroa.2.0.copyload.2, i64 %19, i64 %21)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_shift_reduce(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 16
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 8
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %5, ptr %6, align 4
  %7 = load i64, ptr %0, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %7, ptr %8, align 4
  store i64 %3, ptr %0, align 4
  tail call fastcc void @Hacl_Bignum_Modulo_reduce(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_reduce(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = mul i64 %2, 20
  store i64 %3, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @load128_le_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.val = load i64, ptr %0, align 1
  %3 = tail call fastcc i64 @load64(i64 %.val)
  %4 = tail call fastcc i64 @__uint64_identity(i64 noundef %3)
  store i64 %4, ptr %1, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 8
  %.val4 = load i64, ptr %5, align 1
  %6 = tail call fastcc i64 @load64(i64 %.val4)
  %7 = tail call fastcc i64 @__uint64_identity(i64 noundef %6)
  %8 = getelementptr inbounds i8, ptr %1, i32 8
  store i64 %7, ptr %8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @load64(i64 %.0.val) unnamed_addr #0 {
  ret i64 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @__uint64_identity(i64 noundef %0) unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_init(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = lshr i32 %3, 4
  %7 = and i32 %3, 15
  %8 = and i32 %3, -16
  %9 = getelementptr inbounds i8, ptr %2, i32 %8
  %10 = zext nneg i32 %6 to i64
  tail call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_partial(ptr %0, ptr %1, ptr noundef %2, i64 noundef %10, ptr noundef %4)
  tail call void @AEAD_Poly1305_64_pad_last(ptr %0, ptr %1, ptr noundef %9, i32 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_partial(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call fastcc void @load128_le(ptr dead_on_unwind noalias nonnull writable align 4 %6, ptr noundef %4)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 1152921487695413244)
  %14 = load i64, ptr %10, align 8
  %15 = getelementptr inbounds i8, ptr %10, i32 8
  %16 = load i64, ptr %15, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %14, i64 %16, i32 noundef 64)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef 1152921487695413247)
  %17 = load i64, ptr %9, align 8
  %18 = getelementptr inbounds i8, ptr %9, i32 8
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %11, align 8
  %21 = getelementptr inbounds i8, ptr %11, i32 8
  %22 = load i64, ptr %21, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %17, i64 %19, i64 %20, i64 %22)
  %23 = load i64, ptr %6, align 8
  %24 = getelementptr inbounds i8, ptr %6, i32 8
  %25 = load i64, ptr %24, align 8
  %26 = load i64, ptr %8, align 8
  %27 = getelementptr inbounds i8, ptr %8, i32 8
  %28 = load i64, ptr %27, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %23, i64 %25, i64 %26, i64 %28)
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds i8, ptr %7, i32 8
  %31 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %29, i64 poison)
  %32 = and i64 %31, 17592186044415
  %33 = load i64, ptr %7, align 8
  %34 = load i64, ptr %30, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %33, i64 %34, i32 noundef 44)
  %35 = load i64, ptr %12, align 8
  %36 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %35, i64 poison)
  %37 = and i64 %36, 17592186044415
  %38 = load i64, ptr %7, align 8
  %39 = load i64, ptr %30, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %38, i64 %39, i32 noundef 88)
  %40 = load i64, ptr %13, align 8
  %41 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %40, i64 poison)
  store i64 %32, ptr %0, align 4
  %42 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %37, ptr %42, align 4
  %43 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %41, ptr %43, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(ptr nonnull %0, ptr nonnull %1, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %6, %4
  %.tr9 = phi ptr [ %2, %4 ], [ %8, %6 ]
  %.tr10 = phi i64 [ %3, %4 ], [ %7, %6 ]
  %5 = icmp eq i64 %.tr10, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %tailrecurse
  %7 = add nsw i64 %.tr10, -1
  %8 = getelementptr inbounds i8, ptr %.tr9, i32 16
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(ptr %0, ptr %1, ptr noundef %.tr9)
  br label %tailrecurse

9:                                                ; preds = %tailrecurse
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_continue(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = lshr i32 %3, 4
  %6 = and i32 %3, 15
  %7 = and i32 %3, -16
  %8 = getelementptr inbounds i8, ptr %2, i32 %7
  %9 = zext nneg i32 %5 to i64
  tail call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks(ptr %0, ptr %1, ptr noundef %2, i64 noundef %9)
  tail call void @AEAD_Poly1305_64_pad_last(ptr %0, ptr %1, ptr noundef %8, i32 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_finish_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(ptr %0, ptr %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_Fproduct_carry_limb_(ptr noundef %0)
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top(ptr noundef %0)
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = and i64 %2, 17592186044415
  %8 = lshr i64 %2, 44
  %9 = add i64 %4, %8
  %10 = and i64 %9, 17592186044415
  %11 = lshr i64 %9, 44
  %12 = add i64 %11, %6
  store i64 %7, ptr %0, align 4
  store i64 %10, ptr %3, align 4
  store i64 %12, ptr %5, align 4
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top(ptr noundef nonnull %0)
  %13 = load i64, ptr %0, align 4
  %14 = load i64, ptr %3, align 4
  %15 = and i64 %13, 17592186044415
  %16 = lshr i64 %13, 44
  %17 = add i64 %14, %16
  store i64 %15, ptr %0, align 4
  store i64 %17, ptr %3, align 4
  %18 = load i64, ptr %5, align 4
  %19 = tail call fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %15)
  %20 = tail call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %17, i64 noundef 17592186044415)
  %21 = tail call fastcc i64 @FStar_UInt64_eq_mask(i64 noundef %18, i64 noundef 4398046511103)
  %22 = and i64 %20, %19
  %23 = and i64 %22, %21
  %24 = and i64 %23, 17592186044411
  %25 = sub nsw i64 %15, %24
  %26 = and i64 %23, 17592186044415
  %27 = sub i64 %17, %26
  %28 = and i64 %23, 4398046511103
  %29 = sub i64 %18, %28
  store i64 %25, ptr %0, align 4
  store i64 %27, ptr %3, align 4
  store i64 %29, ptr %5, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_limb_(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = and i64 %2, 17592186044415
  %6 = lshr i64 %2, 44
  store i64 %5, ptr %0, align 4
  %7 = add i64 %4, %6
  store i64 %7, ptr %3, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 8
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 16
  %11 = load i64, ptr %10, align 4
  %12 = and i64 %9, 17592186044415
  %13 = lshr i64 %9, 44
  store i64 %12, ptr %8, align 4
  %14 = add i64 %11, %13
  store i64 %14, ptr %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_carry_top(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 16
  %3 = load i64, ptr %2, align 4
  %4 = load i64, ptr %0, align 4
  %5 = lshr i64 %3, 42
  %6 = and i64 %3, 4398046511103
  store i64 %6, ptr %2, align 4
  %7 = mul nuw nsw i64 %5, 5
  %8 = add i64 %7, %4
  store i64 %8, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @FStar_UInt64_gte_mask(i64 noundef %0) unnamed_addr #0 {
  %2 = and i64 %0, 9223372036854775807
  %isnotneg = icmp ugt i64 %2, 17592186044410
  %isnotneg6 = icmp sgt i64 %0, -1
  %3 = and i1 %isnotneg6, %isnotneg
  %4 = sext i1 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 -1, 1) i64 @FStar_UInt64_eq_mask(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = xor i64 %0, %1
  %4 = xor i64 %3, -1
  %5 = shl i64 %4, 32
  %6 = and i64 %5, %4
  %7 = shl i64 %6, 16
  %8 = and i64 %7, %6
  %9 = shl i64 %8, 8
  %10 = and i64 %9, %8
  %11 = shl i64 %10, 4
  %12 = and i64 %11, %10
  %13 = shl i64 %12, 2
  %14 = and i64 %13, %12
  %15 = shl i64 %14, 1
  %16 = and i64 %15, %14
  %17 = ashr i64 %16, 63
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AEAD_Poly1305_64_poly1305_blocks_finish(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update(ptr %0, ptr %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass(ptr noundef %1)
  call fastcc void @load128_le(ptr dead_on_unwind noalias nonnull writable align 4 %6, ptr noundef %4)
  %12 = load i64, ptr %1, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 8
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %1, i32 16
  %16 = load i64, ptr %15, align 4
  %17 = shl i64 %16, 24
  %18 = lshr i64 %14, 20
  %19 = or i64 %17, %18
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %19)
  %20 = load i64, ptr %9, align 8
  %21 = getelementptr inbounds i8, ptr %9, i32 8
  %22 = load i64, ptr %21, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %20, i64 %22, i32 noundef 64)
  %23 = shl i64 %14, 44
  %24 = or i64 %23, %12
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %24)
  %25 = load i64, ptr %8, align 8
  %26 = getelementptr inbounds i8, ptr %8, i32 8
  %27 = load i64, ptr %26, align 8
  %28 = load i64, ptr %10, align 8
  %29 = getelementptr inbounds i8, ptr %10, i32 8
  %30 = load i64, ptr %29, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %25, i64 %27, i64 %28, i64 %30)
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds i8, ptr %7, i32 8
  %33 = load i64, ptr %32, align 8
  %34 = load i64, ptr %6, align 8
  %35 = getelementptr inbounds i8, ptr %6, i32 8
  %36 = load i64, ptr %35, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %31, i64 %33, i64 %34, i64 %36)
  %37 = load i64, ptr %11, align 8
  %38 = getelementptr inbounds i8, ptr %11, i32 8
  %39 = load i64, ptr %38, align 8
  call fastcc void @store128_le(ptr noundef %3, i64 %37, i64 %39)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_le(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 %2, ptr %5, align 8
  call fastcc void @store128_le_(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_le_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = tail call fastcc i64 @__uint64_identity(i64 noundef %3)
  tail call fastcc void @store64(ptr noundef %0, i64 noundef %4)
  %5 = getelementptr inbounds i8, ptr %0, i32 8
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  %7 = load i64, ptr %6, align 4
  %8 = tail call fastcc i64 @__uint64_identity(i64 noundef %7)
  tail call fastcc void @store64(ptr noundef nonnull %5, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store64(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_add(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 {
  %6 = add i64 %3, %1
  store i64 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = add i64 %4, %2
  %9 = tail call fastcc i64 @FStar_UInt128_carry(i64 noundef %6, i64 noundef %3)
  %10 = add i64 %8, %9
  store i64 %10, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @FStar_UInt128_carry(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i64 @FStar_UInt128_constant_time_carry(i64 noundef %0, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @FStar_UInt128_constant_time_carry(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = xor i64 %1, %0
  %4 = sub i64 %0, %1
  %5 = xor i64 %4, %1
  %6 = or i64 %5, %3
  %7 = xor i64 %6, %0
  %8 = lshr i64 %7, 63
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_add_mod(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 {
  %6 = add i64 %3, %1
  store i64 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = add i64 %4, %2
  %9 = tail call fastcc i64 @FStar_UInt128_carry(i64 noundef %6, i64 noundef %3)
  %10 = add i64 %8, %9
  store i64 %10, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_sub(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 {
  %6 = sub i64 %1, %3
  store i64 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = tail call fastcc i64 @FStar_UInt128_carry(i64 noundef %1, i64 noundef %6)
  %9 = add i64 %8, %4
  %10 = sub i64 %2, %9
  store i64 %10, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_sub_mod(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 {
  tail call fastcc void @FStar_UInt128_sub_mod_impl(ptr dead_on_unwind noalias writable align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @FStar_UInt128_sub_mod_impl(ptr dead_on_unwind noalias writable align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) unnamed_addr #0 {
  %6 = sub i64 %1, %3
  store i64 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = tail call fastcc i64 @FStar_UInt128_carry(i64 noundef %1, i64 noundef %6)
  %9 = add i64 %8, %4
  %10 = sub i64 %2, %9
  store i64 %10, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_logand(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 {
  %6 = and i64 %3, %1
  store i64 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = and i64 %4, %2
  store i64 %8, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_logxor(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 {
  %6 = xor i64 %3, %1
  store i64 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = xor i64 %4, %2
  store i64 %8, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_logor(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 {
  %6 = or i64 %3, %1
  store i64 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = or i64 %4, %2
  store i64 %8, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_lognot(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2) local_unnamed_addr #0 {
  %4 = xor i64 %1, -1
  store i64 %4, ptr %0, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 8
  %6 = xor i64 %2, -1
  store i64 %6, ptr %5, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_shift_left(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i32 %3, 64
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call fastcc void @FStar_UInt128_shift_left_small(ptr dead_on_unwind noalias writable align 4 %0, i64 %1, i64 %2, i32 noundef %3)
  br label %8

7:                                                ; preds = %4
  tail call fastcc void @FStar_UInt128_shift_left_large(ptr dead_on_unwind noalias writable align 4 %0, i64 %1, i32 noundef %3)
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @FStar_UInt128_shift_left_small(ptr dead_on_unwind noalias writable align 4 %0, i64 %1, i64 %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = zext nneg i32 %3 to i64
  %8 = shl i64 %1, %7
  %9 = tail call fastcc i64 @FStar_UInt128_add_u64_shift_left_respec(i64 noundef %2, i64 noundef %1, i32 noundef %3)
  br label %10

10:                                               ; preds = %4, %6
  %.sink4 = phi i64 [ %8, %6 ], [ %1, %4 ]
  %.sink = phi i64 [ %9, %6 ], [ %2, %4 ]
  store i64 %.sink4, ptr %0, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %.sink, ptr %11, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @FStar_UInt128_shift_left_large(ptr dead_on_unwind noalias writable align 4 %0, i64 %1, i32 noundef %2) unnamed_addr #0 {
  store i64 0, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 8
  %5 = add i32 %2, -64
  %6 = zext nneg i32 %5 to i64
  %7 = shl i64 %1, %6
  store i64 %7, ptr %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @FStar_UInt128_add_u64_shift_left_respec(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i64 @FStar_UInt128_add_u64_shift_left(i64 noundef %0, i64 noundef %1, i32 noundef %2)
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @FStar_UInt128_add_u64_shift_left(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl i64 %0, %4
  %6 = sub nuw nsw i32 64, %2
  %7 = zext nneg i32 %6 to i64
  %8 = lshr i64 %1, %7
  %9 = add i64 %8, %5
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_shift_right(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i32 %3, 64
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call fastcc void @FStar_UInt128_shift_right_small(ptr dead_on_unwind noalias writable align 4 %0, i64 %1, i64 %2, i32 noundef %3)
  br label %8

7:                                                ; preds = %4
  tail call fastcc void @FStar_UInt128_shift_right_large(ptr dead_on_unwind noalias writable align 4 %0, i64 %2, i32 noundef %3)
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @FStar_UInt128_shift_right_small(ptr dead_on_unwind noalias writable align 4 %0, i64 %1, i64 %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i64 @FStar_UInt128_add_u64_shift_right_respec(i64 noundef %2, i64 noundef %1, i32 noundef %3)
  %8 = zext nneg i32 %3 to i64
  %9 = lshr i64 %2, %8
  br label %10

10:                                               ; preds = %4, %6
  %.sink4 = phi i64 [ %7, %6 ], [ %1, %4 ]
  %.sink = phi i64 [ %9, %6 ], [ %2, %4 ]
  store i64 %.sink4, ptr %0, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %.sink, ptr %11, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @FStar_UInt128_shift_right_large(ptr dead_on_unwind noalias writable align 4 %0, i64 %1, i32 noundef %2) unnamed_addr #0 {
  %4 = add i32 %2, -64
  %5 = zext nneg i32 %4 to i64
  %6 = lshr i64 %1, %5
  store i64 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 0, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @FStar_UInt128_add_u64_shift_right_respec(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i64 @FStar_UInt128_add_u64_shift_right(i64 noundef %0, i64 noundef %1, i32 noundef %2)
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @FStar_UInt128_add_u64_shift_right(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = zext nneg i32 %2 to i64
  %5 = lshr i64 %1, %4
  %6 = sub nuw nsw i32 64, %2
  %7 = zext nneg i32 %6 to i64
  %8 = shl i64 %0, %7
  %9 = add i64 %8, %5
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_eq_mask(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @FStar_UInt64_eq_mask.13(i64 noundef %1, i64 noundef %3)
  %7 = tail call fastcc i64 @FStar_UInt64_eq_mask.13(i64 noundef %2, i64 noundef %4)
  %8 = and i64 %7, %6
  store i64 %8, ptr %0, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 8
  %10 = tail call fastcc i64 @FStar_UInt64_eq_mask.13(i64 noundef %1, i64 noundef %3)
  %11 = tail call fastcc i64 @FStar_UInt64_eq_mask.13(i64 noundef %2, i64 noundef %4)
  %12 = and i64 %11, %10
  store i64 %12, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 -1, 1) i64 @FStar_UInt64_eq_mask.13(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = xor i64 %0, %1
  %4 = xor i64 %3, -1
  %5 = shl i64 %4, 32
  %6 = and i64 %5, %4
  %7 = shl i64 %6, 16
  %8 = and i64 %7, %6
  %9 = shl i64 %8, 8
  %10 = and i64 %9, %8
  %11 = shl i64 %10, 4
  %12 = and i64 %11, %10
  %13 = shl i64 %12, 2
  %14 = and i64 %13, %12
  %15 = shl i64 %14, 1
  %16 = and i64 %15, %14
  %17 = ashr i64 %16, 63
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_gte_mask(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @FStar_UInt64_gte_mask.14(i64 noundef %2, i64 noundef %4)
  %7 = tail call fastcc i64 @FStar_UInt64_eq_mask.13(i64 noundef %2, i64 noundef %4)
  %8 = xor i64 %7, -1
  %9 = and i64 %6, %8
  %10 = tail call fastcc i64 @FStar_UInt64_eq_mask.13(i64 noundef %2, i64 noundef %4)
  %11 = tail call fastcc i64 @FStar_UInt64_gte_mask.14(i64 noundef %1, i64 noundef %3)
  %12 = and i64 %11, %10
  %13 = or i64 %12, %9
  store i64 %13, ptr %0, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 8
  %15 = tail call fastcc i64 @FStar_UInt64_gte_mask.14(i64 noundef %2, i64 noundef %4)
  %16 = tail call fastcc i64 @FStar_UInt64_eq_mask.13(i64 noundef %2, i64 noundef %4)
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = tail call fastcc i64 @FStar_UInt64_eq_mask.13(i64 noundef %2, i64 noundef %4)
  %20 = tail call fastcc i64 @FStar_UInt64_gte_mask.14(i64 noundef %1, i64 noundef %3)
  %21 = and i64 %20, %19
  %22 = or i64 %21, %18
  store i64 %22, ptr %14, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @FStar_UInt64_gte_mask.14(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = and i64 %0, 9223372036854775807
  %4 = and i64 %1, 9223372036854775807
  %5 = icmp uge i64 %3, %4
  %6 = and i64 %1, -9223372036854775808
  %7 = icmp sle i64 %6, %0
  %8 = and i1 %5, %7
  %9 = sext i1 %8 to i64
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1) local_unnamed_addr #0 {
  store i64 %1, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 0, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @FStar_UInt128_uint128_to_uint64(i64 %0, i64 %1) local_unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FStar_UInt128_mul_wide(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @FStar_UInt128_mul_wide_impl(ptr dead_on_unwind noalias writable align 4 %0, i64 noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @FStar_UInt128_mul_wide_impl(ptr dead_on_unwind noalias writable align 4 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.K___uint64_t_uint64_t_uint64_t_uint64_t, align 8
  call fastcc void @FStar_UInt128_mul_wide_impl_t_(ptr dead_on_unwind noalias nonnull writable align 4 %4, i64 noundef %1, i64 noundef %2)
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %4, i32 8
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %4, i32 16
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %4, i32 24
  %11 = load i64, ptr %10, align 8
  %12 = lshr i64 %2, 32
  %13 = mul i64 %5, %12
  %14 = call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %11)
  %15 = add i64 %14, %13
  %16 = call fastcc i64 @FStar_UInt128_u32_combine_(i64 noundef %15, i64 noundef %7)
  store i64 %16, ptr %0, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 8
  %18 = mul i64 %9, %12
  %19 = lshr i64 %11, 32
  %20 = add i64 %19, %18
  %21 = call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %11)
  %22 = add i64 %21, %13
  %23 = lshr i64 %22, 32
  %24 = add i64 %20, %23
  store i64 %24, ptr %17, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @FStar_UInt128_mul_wide_impl_t_(ptr dead_on_unwind noalias writable align 4 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %1)
  store i64 %4, ptr %0, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 8
  %6 = tail call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %1)
  %7 = tail call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %2)
  %8 = mul nuw i64 %7, %6
  %9 = tail call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %8)
  store i64 %9, ptr %5, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 16
  %11 = lshr i64 %1, 32
  store i64 %11, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 24
  %13 = tail call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %2)
  %14 = mul nuw i64 %13, %11
  %15 = tail call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %1)
  %16 = tail call fastcc i64 @FStar_UInt128_u64_mod_32(i64 noundef %2)
  %17 = mul nuw i64 %16, %15
  %18 = lshr i64 %17, 32
  %19 = add nuw i64 %18, %14
  store i64 %19, ptr %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 0, 4294967296) i64 @FStar_UInt128_u64_mod_32(i64 noundef %0) unnamed_addr #0 {
  %2 = and i64 %0, 4294967295
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @FStar_UInt128_u32_combine_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = shl i64 %0, 32
  %4 = add i64 %3, %1
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_key_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [16 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Chacha20_init(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2)
  call fastcc void @Hacl_Impl_Chacha20_chacha20_block(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i32 16
  %5 = getelementptr inbounds i8, ptr %0, i32 48
  %6 = getelementptr inbounds i8, ptr %0, i32 52
  store i32 1634760805, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 857760878, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 2036477234, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 1797285236, ptr %9, align 4
  tail call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8)
  store i32 0, ptr %5, align 4
  tail call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20_block(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [16 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Chacha20_chacha20_core(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2)
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20_core(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %1, i32 48
  store i32 %2, ptr %4, align 4
  tail call fastcc void @Hacl_Impl_Chacha20_copy_state(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @Hacl_Impl_Chacha20_rounds(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_sum_states(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %4 = icmp ult i32 %.0, 16
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, ptr %1, i32 %.0
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw nsw i32 %.0, 2
  %9 = getelementptr inbounds i8, ptr %0, i32 %8
  %10 = tail call fastcc i32 @__uint32_identity(i32 noundef %7)
  tail call fastcc void @store32(ptr noundef %9, i32 noundef %10)
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !7

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @__uint32_identity(i32 noundef %0) unnamed_addr #0 {
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store32(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  store i32 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_copy_state(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i32 64, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_rounds(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_sum_states(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = add i32 %4, %3
  store i32 %5, ptr %0, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  store i32 %10, ptr %6, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  store i32 %15, ptr %11, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %1, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  store i32 %20, ptr %16, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 16
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %1, i32 16
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  store i32 %25, ptr %21, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %1, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  store i32 %30, ptr %26, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %1, i32 24
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  store i32 %35, ptr %31, align 4
  %36 = getelementptr inbounds i8, ptr %0, i32 28
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %1, i32 28
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %37
  store i32 %40, ptr %36, align 4
  %41 = getelementptr inbounds i8, ptr %0, i32 32
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds i8, ptr %1, i32 32
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  store i32 %45, ptr %41, align 4
  %46 = getelementptr inbounds i8, ptr %0, i32 36
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds i8, ptr %1, i32 36
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %47
  store i32 %50, ptr %46, align 4
  %51 = getelementptr inbounds i8, ptr %0, i32 40
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds i8, ptr %1, i32 40
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  store i32 %55, ptr %51, align 4
  %56 = getelementptr inbounds i8, ptr %0, i32 44
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds i8, ptr %1, i32 44
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  store i32 %60, ptr %56, align 4
  %61 = getelementptr inbounds i8, ptr %0, i32 48
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds i8, ptr %1, i32 48
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %62
  store i32 %65, ptr %61, align 4
  %66 = getelementptr inbounds i8, ptr %0, i32 52
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds i8, ptr %1, i32 52
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %67
  store i32 %70, ptr %66, align 4
  %71 = getelementptr inbounds i8, ptr %0, i32 56
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds i8, ptr %1, i32 56
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, %72
  store i32 %75, ptr %71, align 4
  %76 = getelementptr inbounds i8, ptr %0, i32 60
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds i8, ptr %1, i32 60
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, %77
  store i32 %80, ptr %76, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_double_round(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 12)
  tail call fastcc void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %0, i32 noundef 1, i32 noundef 5, i32 noundef 9, i32 noundef 13)
  tail call fastcc void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %0, i32 noundef 2, i32 noundef 6, i32 noundef 10, i32 noundef 14)
  tail call fastcc void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %0, i32 noundef 3, i32 noundef 7, i32 noundef 11, i32 noundef 15)
  tail call fastcc void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %0, i32 noundef 0, i32 noundef 5, i32 noundef 10, i32 noundef 15)
  tail call fastcc void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %0, i32 noundef 1, i32 noundef 6, i32 noundef 11, i32 noundef 12)
  tail call fastcc void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %0, i32 noundef 2, i32 noundef 7, i32 noundef 8, i32 noundef 13)
  tail call fastcc void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef 9, i32 noundef 14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_quarter_round(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds i32, ptr %0, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i32, ptr %0, i32 %2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  store i32 %10, ptr %6, align 4
  %11 = getelementptr inbounds i32, ptr %0, i32 %4
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, %10
  %14 = tail call fastcc i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %13, i32 noundef 16)
  store i32 %14, ptr %11, align 4
  %15 = getelementptr inbounds i32, ptr %0, i32 %3
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  store i32 %17, ptr %15, align 4
  %18 = load i32, ptr %8, align 4
  %19 = xor i32 %18, %17
  %20 = tail call fastcc i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %19, i32 noundef 12)
  store i32 %20, ptr %8, align 4
  %21 = load i32, ptr %6, align 4
  %22 = add i32 %21, %20
  store i32 %22, ptr %6, align 4
  %23 = load i32, ptr %11, align 4
  %24 = xor i32 %23, %22
  %25 = tail call fastcc i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %24, i32 noundef 8)
  store i32 %25, ptr %11, align 4
  %26 = load i32, ptr %15, align 4
  %27 = add i32 %26, %25
  store i32 %27, ptr %15, align 4
  %28 = load i32, ptr %8, align 4
  %29 = xor i32 %28, %27
  %30 = tail call fastcc i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %29, i32 noundef 7)
  store i32 %30, ptr %8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @Hacl_Impl_Chacha20_rotate_left(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = shl i32 %0, %1
  %4 = sub nuw nsw i32 32, %1
  %5 = lshr i32 %0, %4
  %6 = or i32 %5, %3
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %12, %6 ]
  %5 = icmp ult i32 %.0, %2
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = shl nuw nsw i32 %.0, 2
  %8 = getelementptr inbounds i8, ptr %1, i32 %7
  %.val = load i32, ptr %8, align 1
  %9 = tail call fastcc i32 @load32(i32 %.val)
  %10 = tail call fastcc i32 @__uint32_identity(i32 noundef %9)
  %11 = getelementptr inbounds i32, ptr %0, i32 %.0
  store i32 %10, ptr %11, align 4
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !9

13:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load32(i32 %.0.val) unnamed_addr #0 {
  ret i32 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [16 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Chacha20_init(ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4)
  call fastcc void @Hacl_Impl_Chacha20_chacha20_counter_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7, i32 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20_counter_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = lshr i32 %2, 6
  %7 = and i32 %2, 63
  tail call fastcc void @Hacl_Impl_Chacha20_chacha20_counter_mode_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %6, ptr noundef %3, i32 noundef %4)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %13, label %8

8:                                                ; preds = %5
  %9 = add i32 %6, %4
  %10 = and i32 %2, -64
  %11 = getelementptr inbounds i8, ptr %0, i32 %10
  %12 = getelementptr inbounds i8, ptr %1, i32 %10
  tail call fastcc void @Hacl_Impl_Chacha20_update_last(ptr noundef %11, ptr noundef %12, i32 noundef %7, ptr noundef %3, i32 noundef %9)
  br label %13

13:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_chacha20_counter_mode_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %8, %5
  %.0 = phi i32 [ 0, %5 ], [ %13, %8 ]
  %7 = icmp ult i32 %.0, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = shl nuw i32 %.0, 6
  %10 = getelementptr inbounds i8, ptr %1, i32 %9
  %11 = getelementptr inbounds i8, ptr %0, i32 %9
  %12 = add i32 %.0, %4
  tail call fastcc void @Hacl_Impl_Chacha20_update(ptr noundef %11, ptr noundef %10, ptr noundef %3, i32 noundef %12)
  %13 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !10

14:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_update_last(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [64 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Chacha20_chacha20_block(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4)
  br label %7

7:                                                ; preds = %9, %5
  %.0 = phi i32 [ 0, %5 ], [ %16, %9 ]
  %8 = icmp ult i32 %.0, %2
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, ptr %1, i32 %.0
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds i8, ptr %6, i32 %.0
  %13 = load i8, ptr %12, align 1
  %14 = xor i8 %13, %11
  %15 = getelementptr inbounds i8, ptr %0, i32 %.0
  store i8 %14, ptr %15, align 1
  %16 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !11

17:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [48 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %5, i8 0, i32 192, i1 false)
  %6 = getelementptr inbounds i8, ptr %5, i32 64
  %7 = getelementptr inbounds i8, ptr %5, i32 128
  call fastcc void @Hacl_Impl_Chacha20_chacha20_core(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3)
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 16)
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %5, align 4
  %10 = xor i32 %9, %8
  store i32 %10, ptr %7, align 4
  %11 = getelementptr inbounds i8, ptr %5, i32 68
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %5, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, %12
  %16 = getelementptr inbounds i8, ptr %5, i32 132
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %5, i32 72
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %5, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, %18
  %22 = getelementptr inbounds i8, ptr %5, i32 136
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %5, i32 76
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds i8, ptr %5, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %26, %24
  %28 = getelementptr inbounds i8, ptr %5, i32 140
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %5, i32 80
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %5, i32 16
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, %30
  %34 = getelementptr inbounds i8, ptr %5, i32 144
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds i8, ptr %5, i32 84
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %5, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %38, %36
  %40 = getelementptr inbounds i8, ptr %5, i32 148
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %5, i32 88
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds i8, ptr %5, i32 24
  %44 = load i32, ptr %43, align 4
  %45 = xor i32 %44, %42
  %46 = getelementptr inbounds i8, ptr %5, i32 152
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds i8, ptr %5, i32 92
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds i8, ptr %5, i32 28
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %48
  %52 = getelementptr inbounds i8, ptr %5, i32 156
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds i8, ptr %5, i32 96
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds i8, ptr %5, i32 32
  %56 = load i32, ptr %55, align 4
  %57 = xor i32 %56, %54
  %58 = getelementptr inbounds i8, ptr %5, i32 160
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds i8, ptr %5, i32 100
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds i8, ptr %5, i32 36
  %62 = load i32, ptr %61, align 4
  %63 = xor i32 %62, %60
  %64 = getelementptr inbounds i8, ptr %5, i32 164
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds i8, ptr %5, i32 104
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds i8, ptr %5, i32 40
  %68 = load i32, ptr %67, align 4
  %69 = xor i32 %68, %66
  %70 = getelementptr inbounds i8, ptr %5, i32 168
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds i8, ptr %5, i32 108
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds i8, ptr %5, i32 44
  %74 = load i32, ptr %73, align 4
  %75 = xor i32 %74, %72
  %76 = getelementptr inbounds i8, ptr %5, i32 172
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds i8, ptr %5, i32 112
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds i8, ptr %5, i32 48
  %80 = load i32, ptr %79, align 4
  %81 = xor i32 %80, %78
  %82 = getelementptr inbounds i8, ptr %5, i32 176
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds i8, ptr %5, i32 116
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds i8, ptr %5, i32 52
  %86 = load i32, ptr %85, align 4
  %87 = xor i32 %86, %84
  %88 = getelementptr inbounds i8, ptr %5, i32 180
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds i8, ptr %5, i32 120
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds i8, ptr %5, i32 56
  %92 = load i32, ptr %91, align 4
  %93 = xor i32 %92, %90
  %94 = getelementptr inbounds i8, ptr %5, i32 184
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds i8, ptr %5, i32 124
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds i8, ptr %5, i32 60
  %98 = load i32, ptr %97, align 4
  %99 = xor i32 %98, %96
  %100 = getelementptr inbounds i8, ptr %5, i32 188
  store i32 %99, ptr %100, align 4
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes(ptr noundef %0, ptr noundef nonnull %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20Poly1305_encode_length(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %1 to i64
  %5 = tail call fastcc i64 @__uint64_identity.21(i64 noundef %4)
  tail call fastcc void @store64.22(ptr noundef %0, i64 noundef %5)
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  %7 = zext i32 %2 to i64
  %8 = tail call fastcc i64 @__uint64_identity.21(i64 noundef %7)
  tail call fastcc void @store64.22(ptr noundef nonnull %6, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 0, 4294967296) i64 @__uint64_identity.21(i64 noundef %0) unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store64.22(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_encrypt_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [80 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %9, i8 0, i32 80, i1 false)
  %10 = getelementptr inbounds i8, ptr %9, i32 64
  call void @Hacl_Chacha20Poly1305_encode_length(ptr noundef nonnull %10, i32 noundef %5, i32 noundef %3)
  call void @Hacl_Chacha20_chacha20(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef %6, ptr noundef %7, i32 noundef 1)
  call void @Hacl_Chacha20_chacha20_key_block(ptr noundef nonnull %9, ptr noundef %6, ptr noundef %7, i32 noundef 0)
  call fastcc void @Hacl_Chacha20Poly1305_aead_encrypt_poly(ptr noundef %0, i32 noundef %3, ptr noundef %1, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %9)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Chacha20Poly1305_aead_encrypt_poly(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [6 x i64], align 8
  %8 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %9 = getelementptr inbounds i8, ptr %5, i32 64
  %10 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i32 48, i1 false)
  %11 = getelementptr inbounds i8, ptr %7, i32 24
  call void @AEAD_Poly1305_64_mk_state(ptr dead_on_unwind nonnull writable sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %8, ptr noundef nonnull %7, ptr noundef nonnull %11)
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds i8, ptr %8, i32 4
  %14 = load ptr, ptr %13, align 4
  call void @AEAD_Poly1305_64_poly1305_blocks_init(ptr %12, ptr %14, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %15 = load ptr, ptr %8, align 4
  %16 = load ptr, ptr %13, align 4
  call void @AEAD_Poly1305_64_poly1305_blocks_continue(ptr %15, ptr %16, ptr noundef %0, i32 noundef %1)
  %17 = load ptr, ptr %8, align 4
  %18 = load ptr, ptr %13, align 4
  call void @AEAD_Poly1305_64_poly1305_blocks_finish(ptr %17, ptr %18, ptr noundef nonnull %9, ptr noundef %2, ptr noundef nonnull %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hacl_Chacha20Poly1305_aead_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call i32 @Hacl_Chacha20Poly1305_aead_encrypt_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Hacl_Chacha20Poly1305_aead_decrypt(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [96 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(96) %9, i8 0, i32 96, i1 false)
  %10 = getelementptr inbounds i8, ptr %9, i32 64
  call void @Hacl_Chacha20Poly1305_encode_length(ptr noundef nonnull %10, i32 noundef %5, i32 noundef %2)
  %11 = getelementptr inbounds i8, ptr %9, i32 80
  call void @Hacl_Chacha20_chacha20_key_block(ptr noundef nonnull %9, ptr noundef %6, ptr noundef %7, i32 noundef 0)
  call fastcc void @Hacl_Chacha20Poly1305_aead_encrypt_poly(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %11, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %9)
  %12 = call zeroext i8 @Hacl_Policies_cmp_bytes(ptr noundef %3, ptr noundef nonnull %11, i32 noundef 16)
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  call void @Hacl_Chacha20_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %6, ptr noundef %7, i32 noundef 1)
  br label %15

15:                                               ; preds = %8, %14
  %.0 = phi i32 [ 0, %14 ], [ 1, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_Vec128_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x %struct.vec], align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %7, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds i8, ptr %7, i32 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %10 = getelementptr inbounds i8, ptr %7, i32 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call fastcc void @Hacl_Impl_Chacha20_Vec128_init(ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = lshr i32 %2, 6
  %6 = and i32 %2, 63
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %5, ptr noundef %3)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %11, label %7

7:                                                ; preds = %4
  %8 = and i32 %2, -64
  %9 = getelementptr inbounds i8, ptr %0, i32 %8
  %10 = getelementptr inbounds i8, ptr %1, i32 %8
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_update_last(ptr noundef %9, ptr noundef %10, i32 noundef %6, ptr noundef %3)
  br label %11

11:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = udiv i32 %2, 3
  %6 = urem i32 %2, 3
  %7 = mul nuw i32 %5, 192
  %8 = getelementptr inbounds i8, ptr %1, i32 %7
  %9 = getelementptr inbounds i8, ptr %0, i32 %7
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks3(ptr noundef %0, ptr noundef %1, i32 noundef %5, ptr noundef %3)
  switch i32 %6, label %14 [
    i32 2, label %10
    i32 1, label %13
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8, ptr %8, i32 64
  %12 = getelementptr inbounds i8, ptr %9, i32 64
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_update(ptr noundef %9, ptr noundef %8, ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_update(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %3)
  br label %14

13:                                               ; preds = %4
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_update(ptr noundef %9, ptr noundef %8, ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %3)
  br label %14

14:                                               ; preds = %4, %13, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_update_last(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [64 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_block(ptr noundef nonnull %5, ptr noundef %3)
  br label %6

6:                                                ; preds = %8, %4
  %.0 = phi i32 [ 0, %4 ], [ %15, %8 ]
  %7 = icmp ult i32 %.0, %2
  br i1 %7, label %8, label %16

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, ptr %1, i32 %.0
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds i8, ptr %5, i32 %.0
  %12 = load i8, ptr %11, align 1
  %13 = xor i8 %12, %10
  %14 = getelementptr inbounds i8, ptr %0, i32 %.0
  store i8 %13, ptr %14, align 1
  %15 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !12

16:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x %struct.vec], align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds i8, ptr %3, i32 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds i8, ptr %3, i32 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_core(ptr noundef nonnull %3, ptr noundef %1)
  call fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_to_key_block(ptr noundef %0, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_core(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_copy_state(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_sum_states(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_to_key_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.sroa.06.sroa.0.0.copyload = load i32, ptr %1, align 4
  %.sroa.06.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 4
  %.sroa.06.sroa.2.0.copyload = load i32, ptr %.sroa.06.sroa.2.0..sroa_idx, align 4
  %.sroa.06.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 8
  %.sroa.06.sroa.3.0.copyload = load i32, ptr %.sroa.06.sroa.3.0..sroa_idx, align 4
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 12
  %.sroa.06.sroa.4.0.copyload = load i32, ptr %.sroa.06.sroa.4.0..sroa_idx, align 4
  %3 = getelementptr inbounds i8, ptr %1, i32 16
  %.sroa.05.sroa.0.0.copyload = load i32, ptr %3, align 4
  %.sroa.05.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 20
  %.sroa.05.sroa.2.0.copyload = load i32, ptr %.sroa.05.sroa.2.0..sroa_idx, align 4
  %.sroa.05.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 24
  %.sroa.05.sroa.3.0.copyload = load i32, ptr %.sroa.05.sroa.3.0..sroa_idx, align 4
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 28
  %.sroa.05.sroa.4.0.copyload = load i32, ptr %.sroa.05.sroa.4.0..sroa_idx, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 32
  %.sroa.04.sroa.0.0.copyload = load i32, ptr %4, align 4
  %.sroa.04.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 36
  %.sroa.04.sroa.2.0.copyload = load i32, ptr %.sroa.04.sroa.2.0..sroa_idx, align 4
  %.sroa.04.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 40
  %.sroa.04.sroa.3.0.copyload = load i32, ptr %.sroa.04.sroa.3.0..sroa_idx, align 4
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 44
  %.sroa.04.sroa.4.0.copyload = load i32, ptr %.sroa.04.sroa.4.0..sroa_idx, align 4
  %5 = getelementptr inbounds i8, ptr %1, i32 48
  %.sroa.0.sroa.0.0.copyload = load i32, ptr %5, align 4
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 52
  %.sroa.0.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 4
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 56
  %.sroa.0.sroa.3.0.copyload = load i32, ptr %.sroa.0.sroa.3.0..sroa_idx, align 4
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 60
  %.sroa.0.sroa.4.0.copyload = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 16
  %7 = getelementptr inbounds i8, ptr %0, i32 32
  %8 = getelementptr inbounds i8, ptr %0, i32 48
  %9 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.06.sroa.0.0.copyload)
  tail call fastcc void @store32.24(ptr noundef %0, i32 noundef %9)
  %10 = getelementptr inbounds i8, ptr %0, i32 4
  %11 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.06.sroa.2.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %10, i32 noundef %11)
  %12 = getelementptr inbounds i8, ptr %0, i32 8
  %13 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.06.sroa.3.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %12, i32 noundef %13)
  %14 = getelementptr inbounds i8, ptr %0, i32 12
  %15 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.06.sroa.4.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %14, i32 noundef %15)
  %16 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.05.sroa.0.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %6, i32 noundef %16)
  %17 = getelementptr inbounds i8, ptr %0, i32 20
  %18 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.05.sroa.2.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %17, i32 noundef %18)
  %19 = getelementptr inbounds i8, ptr %0, i32 24
  %20 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.05.sroa.3.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %19, i32 noundef %20)
  %21 = getelementptr inbounds i8, ptr %0, i32 28
  %22 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.05.sroa.4.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %21, i32 noundef %22)
  %23 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.04.sroa.0.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %7, i32 noundef %23)
  %24 = getelementptr inbounds i8, ptr %0, i32 36
  %25 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.04.sroa.2.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %24, i32 noundef %25)
  %26 = getelementptr inbounds i8, ptr %0, i32 40
  %27 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.04.sroa.3.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %26, i32 noundef %27)
  %28 = getelementptr inbounds i8, ptr %0, i32 44
  %29 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.04.sroa.4.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %28, i32 noundef %29)
  %30 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.0.sroa.0.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %8, i32 noundef %30)
  %31 = getelementptr inbounds i8, ptr %0, i32 52
  %32 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.0.sroa.2.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %31, i32 noundef %32)
  %33 = getelementptr inbounds i8, ptr %0, i32 56
  %34 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.0.sroa.3.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %33, i32 noundef %34)
  %35 = getelementptr inbounds i8, ptr %0, i32 60
  %36 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %.sroa.0.sroa.4.0.copyload)
  tail call fastcc void @store32.24(ptr noundef nonnull %35, i32 noundef %36)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @__uint32_identity.23(i32 noundef %0) unnamed_addr #0 {
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store32.24(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  store i32 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_copy_state(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.sroa.02 = alloca [4 x i32], align 4
  %.sroa.01 = alloca [4 x i32], align 4
  %.sroa.0 = alloca [4 x i32], align 4
  %3 = getelementptr inbounds i8, ptr %1, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.02, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  %4 = getelementptr inbounds i8, ptr %1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.01, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %5 = getelementptr inbounds i8, ptr %1, i32 48
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 16, i1 false)
  %6 = getelementptr inbounds i8, ptr %0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.02, i32 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %0, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.01, i32 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %0, i32 48
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_round(ptr noundef %0)
  %2 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.05.sroa.0.0.copyload = load i32, ptr %2, align 4
  %.sroa.05.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 20
  %.sroa.05.sroa.2.0.copyload = load i32, ptr %.sroa.05.sroa.2.0..sroa_idx, align 4
  %.sroa.05.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.05.sroa.3.0.copyload = load i32, ptr %.sroa.05.sroa.3.0..sroa_idx, align 4
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 28
  %.sroa.05.sroa.4.0.copyload = load i32, ptr %.sroa.05.sroa.4.0..sroa_idx, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.04.sroa.0.0.copyload = load i32, ptr %3, align 4
  %.sroa.04.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 36
  %.sroa.04.sroa.2.0.copyload = load i32, ptr %.sroa.04.sroa.2.0..sroa_idx, align 4
  %.sroa.04.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.04.sroa.3.0.copyload = load i32, ptr %.sroa.04.sroa.3.0..sroa_idx, align 4
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 44
  %.sroa.04.sroa.4.0.copyload = load i32, ptr %.sroa.04.sroa.4.0..sroa_idx, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 48
  %.sroa.03.sroa.0.0.copyload = load i32, ptr %4, align 4
  %.sroa.03.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 52
  %.sroa.03.sroa.2.0.copyload = load i32, ptr %.sroa.03.sroa.2.0..sroa_idx, align 4
  %.sroa.03.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 56
  %.sroa.03.sroa.3.0.copyload = load i32, ptr %.sroa.03.sroa.3.0..sroa_idx, align 4
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 60
  %.sroa.03.sroa.4.0.copyload = load i32, ptr %.sroa.03.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.05.sroa.2.0.copyload, ptr %2, align 4
  store i32 %.sroa.05.sroa.3.0.copyload, ptr %.sroa.05.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.05.sroa.4.0.copyload, ptr %.sroa.05.sroa.3.0..sroa_idx, align 4
  store i32 %.sroa.05.sroa.0.0.copyload, ptr %.sroa.05.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.04.sroa.3.0.copyload, ptr %3, align 4
  store i32 %.sroa.04.sroa.4.0.copyload, ptr %.sroa.04.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.04.sroa.0.0.copyload, ptr %.sroa.04.sroa.3.0..sroa_idx, align 4
  store i32 %.sroa.04.sroa.2.0.copyload, ptr %.sroa.04.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.03.sroa.4.0.copyload, ptr %4, align 4
  store i32 %.sroa.03.sroa.0.0.copyload, ptr %.sroa.03.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.03.sroa.2.0.copyload, ptr %.sroa.03.sroa.3.0..sroa_idx, align 4
  store i32 %.sroa.03.sroa.3.0.copyload, ptr %.sroa.03.sroa.4.0..sroa_idx, align 4
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_round(ptr noundef %0)
  %.sroa.02.sroa.0.0.copyload = load i32, ptr %2, align 4
  %.sroa.02.sroa.2.0.copyload = load i32, ptr %.sroa.05.sroa.2.0..sroa_idx, align 4
  %.sroa.02.sroa.3.0.copyload = load i32, ptr %.sroa.05.sroa.3.0..sroa_idx, align 4
  %.sroa.02.sroa.4.0.copyload = load i32, ptr %.sroa.05.sroa.4.0..sroa_idx, align 4
  %.sroa.01.sroa.0.0.copyload = load i32, ptr %3, align 4
  %.sroa.01.sroa.2.0.copyload = load i32, ptr %.sroa.04.sroa.2.0..sroa_idx, align 4
  %.sroa.01.sroa.3.0.copyload = load i32, ptr %.sroa.04.sroa.3.0..sroa_idx, align 4
  %.sroa.01.sroa.4.0.copyload = load i32, ptr %.sroa.04.sroa.4.0..sroa_idx, align 4
  %.sroa.0.sroa.0.0.copyload = load i32, ptr %4, align 4
  %.sroa.0.sroa.2.0.copyload = load i32, ptr %.sroa.03.sroa.2.0..sroa_idx, align 4
  %.sroa.0.sroa.3.0.copyload = load i32, ptr %.sroa.03.sroa.3.0..sroa_idx, align 4
  %.sroa.0.sroa.4.0.copyload = load i32, ptr %.sroa.03.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.02.sroa.4.0.copyload, ptr %2, align 4
  store i32 %.sroa.02.sroa.0.0.copyload, ptr %.sroa.05.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.02.sroa.2.0.copyload, ptr %.sroa.05.sroa.3.0..sroa_idx, align 4
  store i32 %.sroa.02.sroa.3.0.copyload, ptr %.sroa.05.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.01.sroa.3.0.copyload, ptr %3, align 4
  store i32 %.sroa.01.sroa.4.0.copyload, ptr %.sroa.04.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.01.sroa.0.0.copyload, ptr %.sroa.04.sroa.3.0..sroa_idx, align 4
  store i32 %.sroa.01.sroa.2.0.copyload, ptr %.sroa.04.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.0.sroa.2.0.copyload, ptr %4, align 4
  store i32 %.sroa.0.sroa.3.0.copyload, ptr %.sroa.03.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.0.sroa.4.0.copyload, ptr %.sroa.03.sroa.3.0..sroa_idx, align 4
  store i32 %.sroa.0.sroa.0.0.copyload, ptr %.sroa.03.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_sum_states(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.sroa.07.sroa.0.0.copyload = load i32, ptr %1, align 4
  %.sroa.07.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 4
  %.sroa.07.sroa.2.0.copyload = load i32, ptr %.sroa.07.sroa.2.0..sroa_idx, align 4
  %.sroa.07.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 8
  %.sroa.07.sroa.3.0.copyload = load i32, ptr %.sroa.07.sroa.3.0..sroa_idx, align 4
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 12
  %.sroa.07.sroa.4.0.copyload = load i32, ptr %.sroa.07.sroa.4.0..sroa_idx, align 4
  %3 = getelementptr inbounds i8, ptr %1, i32 16
  %.sroa.06.sroa.0.0.copyload = load i32, ptr %3, align 4
  %.sroa.06.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 20
  %.sroa.06.sroa.2.0.copyload = load i32, ptr %.sroa.06.sroa.2.0..sroa_idx, align 4
  %.sroa.06.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 24
  %.sroa.06.sroa.3.0.copyload = load i32, ptr %.sroa.06.sroa.3.0..sroa_idx, align 4
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 28
  %.sroa.06.sroa.4.0.copyload = load i32, ptr %.sroa.06.sroa.4.0..sroa_idx, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 32
  %.sroa.05.sroa.0.0.copyload = load i32, ptr %4, align 4
  %.sroa.05.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 36
  %.sroa.05.sroa.2.0.copyload = load i32, ptr %.sroa.05.sroa.2.0..sroa_idx, align 4
  %.sroa.05.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 40
  %.sroa.05.sroa.3.0.copyload = load i32, ptr %.sroa.05.sroa.3.0..sroa_idx, align 4
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 44
  %.sroa.05.sroa.4.0.copyload = load i32, ptr %.sroa.05.sroa.4.0..sroa_idx, align 4
  %5 = getelementptr inbounds i8, ptr %1, i32 48
  %.sroa.04.sroa.0.0.copyload = load i32, ptr %5, align 4
  %.sroa.04.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 52
  %.sroa.04.sroa.2.0.copyload = load i32, ptr %.sroa.04.sroa.2.0..sroa_idx, align 4
  %.sroa.04.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 56
  %.sroa.04.sroa.3.0.copyload = load i32, ptr %.sroa.04.sroa.3.0..sroa_idx, align 4
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 60
  %.sroa.04.sroa.4.0.copyload = load i32, ptr %.sroa.04.sroa.4.0..sroa_idx, align 4
  %.sroa.03.sroa.0.0.copyload = load i32, ptr %0, align 4
  %.sroa.03.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 4
  %.sroa.03.sroa.2.0.copyload = load i32, ptr %.sroa.03.sroa.2.0..sroa_idx, align 4
  %.sroa.03.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.03.sroa.3.0.copyload = load i32, ptr %.sroa.03.sroa.3.0..sroa_idx, align 4
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 12
  %.sroa.03.sroa.4.0.copyload = load i32, ptr %.sroa.03.sroa.4.0..sroa_idx, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.02.sroa.0.0.copyload = load i32, ptr %6, align 4
  %.sroa.02.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 20
  %.sroa.02.sroa.2.0.copyload = load i32, ptr %.sroa.02.sroa.2.0..sroa_idx, align 4
  %.sroa.02.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.02.sroa.3.0.copyload = load i32, ptr %.sroa.02.sroa.3.0..sroa_idx, align 4
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 28
  %.sroa.02.sroa.4.0.copyload = load i32, ptr %.sroa.02.sroa.4.0..sroa_idx, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.01.sroa.0.0.copyload = load i32, ptr %7, align 4
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 36
  %.sroa.01.sroa.2.0.copyload = load i32, ptr %.sroa.01.sroa.2.0..sroa_idx, align 4
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.01.sroa.3.0.copyload = load i32, ptr %.sroa.01.sroa.3.0..sroa_idx, align 4
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 44
  %.sroa.01.sroa.4.0.copyload = load i32, ptr %.sroa.01.sroa.4.0..sroa_idx, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 48
  %.sroa.0.sroa.0.0.copyload = load i32, ptr %8, align 4
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 52
  %.sroa.0.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 4
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 56
  %.sroa.0.sroa.3.0.copyload = load i32, ptr %.sroa.0.sroa.3.0..sroa_idx, align 4
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 60
  %.sroa.0.sroa.4.0.copyload = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  %9 = add i32 %.sroa.03.sroa.0.0.copyload, %.sroa.07.sroa.0.0.copyload
  %10 = add i32 %.sroa.03.sroa.2.0.copyload, %.sroa.07.sroa.2.0.copyload
  %11 = add i32 %.sroa.03.sroa.3.0.copyload, %.sroa.07.sroa.3.0.copyload
  %12 = add i32 %.sroa.03.sroa.4.0.copyload, %.sroa.07.sroa.4.0.copyload
  store i32 %9, ptr %0, align 4
  store i32 %10, ptr %.sroa.03.sroa.2.0..sroa_idx, align 4
  store i32 %11, ptr %.sroa.03.sroa.3.0..sroa_idx, align 4
  store i32 %12, ptr %.sroa.03.sroa.4.0..sroa_idx, align 4
  %13 = add i32 %.sroa.02.sroa.0.0.copyload, %.sroa.06.sroa.0.0.copyload
  %14 = add i32 %.sroa.02.sroa.2.0.copyload, %.sroa.06.sroa.2.0.copyload
  %15 = add i32 %.sroa.02.sroa.3.0.copyload, %.sroa.06.sroa.3.0.copyload
  %16 = add i32 %.sroa.02.sroa.4.0.copyload, %.sroa.06.sroa.4.0.copyload
  store i32 %13, ptr %6, align 4
  store i32 %14, ptr %.sroa.02.sroa.2.0..sroa_idx, align 4
  store i32 %15, ptr %.sroa.02.sroa.3.0..sroa_idx, align 4
  store i32 %16, ptr %.sroa.02.sroa.4.0..sroa_idx, align 4
  %17 = add i32 %.sroa.01.sroa.0.0.copyload, %.sroa.05.sroa.0.0.copyload
  %18 = add i32 %.sroa.01.sroa.2.0.copyload, %.sroa.05.sroa.2.0.copyload
  %19 = add i32 %.sroa.01.sroa.3.0.copyload, %.sroa.05.sroa.3.0.copyload
  %20 = add i32 %.sroa.01.sroa.4.0.copyload, %.sroa.05.sroa.4.0.copyload
  store i32 %17, ptr %7, align 4
  store i32 %18, ptr %.sroa.01.sroa.2.0..sroa_idx, align 4
  store i32 %19, ptr %.sroa.01.sroa.3.0..sroa_idx, align 4
  store i32 %20, ptr %.sroa.01.sroa.4.0..sroa_idx, align 4
  %21 = add i32 %.sroa.0.sroa.0.0.copyload, %.sroa.04.sroa.0.0.copyload
  %22 = add i32 %.sroa.0.sroa.2.0.copyload, %.sroa.04.sroa.2.0.copyload
  %23 = add i32 %.sroa.0.sroa.3.0.copyload, %.sroa.04.sroa.3.0.copyload
  %24 = add i32 %.sroa.0.sroa.4.0.copyload, %.sroa.04.sroa.4.0.copyload
  store i32 %21, ptr %8, align 4
  store i32 %22, ptr %.sroa.0.sroa.2.0..sroa_idx, align 4
  store i32 %23, ptr %.sroa.0.sroa.3.0..sroa_idx, align 4
  store i32 %24, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_round(ptr noundef %0) unnamed_addr #0 {
  %.sroa.011.sroa.0.0.copyload = load i32, ptr %0, align 4
  %.sroa.011.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 4
  %.sroa.011.sroa.2.0.copyload = load i32, ptr %.sroa.011.sroa.2.0..sroa_idx, align 4
  %.sroa.011.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.011.sroa.3.0.copyload = load i32, ptr %.sroa.011.sroa.3.0..sroa_idx, align 4
  %.sroa.011.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 12
  %.sroa.011.sroa.4.0.copyload = load i32, ptr %.sroa.011.sroa.4.0..sroa_idx, align 4
  %2 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.010.sroa.0.0.copyload = load i32, ptr %2, align 4
  %.sroa.010.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 20
  %.sroa.010.sroa.2.0.copyload = load i32, ptr %.sroa.010.sroa.2.0..sroa_idx, align 4
  %.sroa.010.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.010.sroa.3.0.copyload = load i32, ptr %.sroa.010.sroa.3.0..sroa_idx, align 4
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 28
  %.sroa.010.sroa.4.0.copyload = load i32, ptr %.sroa.010.sroa.4.0..sroa_idx, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 48
  %.sroa.09.sroa.0.0.copyload = load i32, ptr %3, align 4
  %.sroa.09.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 52
  %.sroa.09.sroa.2.0.copyload = load i32, ptr %.sroa.09.sroa.2.0..sroa_idx, align 4
  %.sroa.09.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 56
  %.sroa.09.sroa.3.0.copyload = load i32, ptr %.sroa.09.sroa.3.0..sroa_idx, align 4
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 60
  %.sroa.09.sroa.4.0.copyload = load i32, ptr %.sroa.09.sroa.4.0..sroa_idx, align 4
  %4 = add i32 %.sroa.010.sroa.0.0.copyload, %.sroa.011.sroa.0.0.copyload
  %5 = add i32 %.sroa.010.sroa.2.0.copyload, %.sroa.011.sroa.2.0.copyload
  %6 = add i32 %.sroa.010.sroa.3.0.copyload, %.sroa.011.sroa.3.0.copyload
  %7 = add i32 %.sroa.010.sroa.4.0.copyload, %.sroa.011.sroa.4.0.copyload
  %8 = xor i32 %.sroa.09.sroa.0.0.copyload, %4
  %9 = xor i32 %.sroa.09.sroa.2.0.copyload, %5
  %10 = xor i32 %.sroa.09.sroa.3.0.copyload, %6
  %11 = xor i32 %.sroa.09.sroa.4.0.copyload, %7
  %12 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 16)
  %13 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 16)
  %14 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 16)
  %15 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 16)
  %16 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.08.sroa.0.0.copyload = load i32, ptr %16, align 4
  %.sroa.08.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 36
  %.sroa.08.sroa.2.0.copyload = load i32, ptr %.sroa.08.sroa.2.0..sroa_idx, align 4
  %.sroa.08.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.08.sroa.3.0.copyload = load i32, ptr %.sroa.08.sroa.3.0..sroa_idx, align 4
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 44
  %.sroa.08.sroa.4.0.copyload = load i32, ptr %.sroa.08.sroa.4.0..sroa_idx, align 4
  %17 = add i32 %12, %.sroa.08.sroa.0.0.copyload
  %18 = add i32 %13, %.sroa.08.sroa.2.0.copyload
  %19 = add i32 %14, %.sroa.08.sroa.3.0.copyload
  %20 = add i32 %.sroa.08.sroa.4.0.copyload, %15
  %21 = xor i32 %.sroa.010.sroa.0.0.copyload, %17
  %22 = xor i32 %.sroa.010.sroa.2.0.copyload, %18
  %23 = xor i32 %.sroa.010.sroa.3.0.copyload, %19
  %24 = xor i32 %.sroa.010.sroa.4.0.copyload, %20
  %25 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 12)
  %26 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 12)
  %27 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 12)
  %28 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 12)
  %29 = add i32 %25, %4
  %30 = add i32 %26, %5
  %31 = add i32 %27, %6
  %32 = add i32 %7, %28
  %33 = xor i32 %12, %29
  %34 = xor i32 %13, %30
  %35 = xor i32 %14, %31
  %36 = xor i32 %15, %32
  %37 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 8)
  %38 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 8)
  %39 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 8)
  %40 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 8)
  store i32 %29, ptr %0, align 4
  store i32 %30, ptr %.sroa.011.sroa.2.0..sroa_idx, align 4
  store i32 %31, ptr %.sroa.011.sroa.3.0..sroa_idx, align 4
  store i32 %32, ptr %.sroa.011.sroa.4.0..sroa_idx, align 4
  store i32 %37, ptr %3, align 4
  store i32 %38, ptr %.sroa.09.sroa.2.0..sroa_idx, align 4
  store i32 %39, ptr %.sroa.09.sroa.3.0..sroa_idx, align 4
  store i32 %40, ptr %.sroa.09.sroa.4.0..sroa_idx, align 4
  %41 = add i32 %37, %17
  %42 = add i32 %38, %18
  %43 = add i32 %39, %19
  %44 = add i32 %20, %40
  %45 = xor i32 %25, %41
  %46 = xor i32 %26, %42
  %47 = xor i32 %27, %43
  %48 = xor i32 %28, %44
  %49 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 7)
  %50 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 7)
  %51 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 7)
  %52 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 7)
  store i32 %41, ptr %16, align 4
  store i32 %42, ptr %.sroa.08.sroa.2.0..sroa_idx, align 4
  store i32 %43, ptr %.sroa.08.sroa.3.0..sroa_idx, align 4
  store i32 %44, ptr %.sroa.08.sroa.4.0..sroa_idx, align 4
  store i32 %49, ptr %2, align 4
  store i32 %50, ptr %.sroa.010.sroa.2.0..sroa_idx, align 4
  store i32 %51, ptr %.sroa.010.sroa.3.0..sroa_idx, align 4
  store i32 %52, ptr %.sroa.010.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_counter_mode_blocks3(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  br label %5

5:                                                ; preds = %7, %4
  %.0 = phi i32 [ 0, %4 ], [ %8, %7 ]
  %6 = icmp ult i32 %.0, %2
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_update3_(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %.0)
  %8 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !13

9:                                                ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x %struct.vec], align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds i8, ptr %4, i32 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %4, i32 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_core(ptr noundef nonnull %4, ptr noundef %2)
  call fastcc void @Hacl_Impl_Chacha20_Vec128_xor_block(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_incr(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_incr(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 48
  %.sroa.0.sroa.0.0.copyload = load i32, ptr %2, align 4
  %3 = add i32 %.sroa.0.sroa.0.0.copyload, 1
  store i32 %3, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_xor_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %.val = load i32, ptr %1, align 1
  %4 = tail call fastcc i32 @load32.25(i32 %.val)
  %5 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %4)
  %6 = getelementptr inbounds i8, ptr %1, i32 4
  %.val123 = load i32, ptr %6, align 1
  %7 = tail call fastcc i32 @load32.25(i32 %.val123)
  %8 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %7)
  %9 = getelementptr inbounds i8, ptr %1, i32 8
  %.val124 = load i32, ptr %9, align 1
  %10 = tail call fastcc i32 @load32.25(i32 %.val124)
  %11 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %10)
  %12 = getelementptr inbounds i8, ptr %1, i32 12
  %.val125 = load i32, ptr %12, align 1
  %13 = tail call fastcc i32 @load32.25(i32 %.val125)
  %14 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %13)
  %15 = getelementptr inbounds i8, ptr %1, i32 16
  %.val126 = load i32, ptr %15, align 1
  %16 = tail call fastcc i32 @load32.25(i32 %.val126)
  %17 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %16)
  %18 = getelementptr inbounds i8, ptr %1, i32 20
  %.val127 = load i32, ptr %18, align 1
  %19 = tail call fastcc i32 @load32.25(i32 %.val127)
  %20 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %19)
  %21 = getelementptr inbounds i8, ptr %1, i32 24
  %.val128 = load i32, ptr %21, align 1
  %22 = tail call fastcc i32 @load32.25(i32 %.val128)
  %23 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %22)
  %24 = getelementptr inbounds i8, ptr %1, i32 28
  %.val129 = load i32, ptr %24, align 1
  %25 = tail call fastcc i32 @load32.25(i32 %.val129)
  %26 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %25)
  %27 = getelementptr inbounds i8, ptr %1, i32 32
  %.val130 = load i32, ptr %27, align 1
  %28 = tail call fastcc i32 @load32.25(i32 %.val130)
  %29 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %28)
  %30 = getelementptr inbounds i8, ptr %1, i32 36
  %.val131 = load i32, ptr %30, align 1
  %31 = tail call fastcc i32 @load32.25(i32 %.val131)
  %32 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %31)
  %33 = getelementptr inbounds i8, ptr %1, i32 40
  %.val132 = load i32, ptr %33, align 1
  %34 = tail call fastcc i32 @load32.25(i32 %.val132)
  %35 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %34)
  %36 = getelementptr inbounds i8, ptr %1, i32 44
  %.val133 = load i32, ptr %36, align 1
  %37 = tail call fastcc i32 @load32.25(i32 %.val133)
  %38 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %37)
  %39 = getelementptr inbounds i8, ptr %1, i32 48
  %.val134 = load i32, ptr %39, align 1
  %40 = tail call fastcc i32 @load32.25(i32 %.val134)
  %41 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %40)
  %42 = getelementptr inbounds i8, ptr %1, i32 52
  %.val135 = load i32, ptr %42, align 1
  %43 = tail call fastcc i32 @load32.25(i32 %.val135)
  %44 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %43)
  %45 = getelementptr inbounds i8, ptr %1, i32 56
  %.val136 = load i32, ptr %45, align 1
  %46 = tail call fastcc i32 @load32.25(i32 %.val136)
  %47 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %46)
  %48 = getelementptr inbounds i8, ptr %1, i32 60
  %.val137 = load i32, ptr %48, align 1
  %49 = tail call fastcc i32 @load32.25(i32 %.val137)
  %50 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %49)
  %.sroa.06.sroa.0.0.copyload = load i32, ptr %2, align 4
  %.sroa.06.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 4
  %.sroa.06.sroa.2.0.copyload = load i32, ptr %.sroa.06.sroa.2.0..sroa_idx, align 4
  %.sroa.06.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 8
  %.sroa.06.sroa.3.0.copyload = load i32, ptr %.sroa.06.sroa.3.0..sroa_idx, align 4
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 12
  %.sroa.06.sroa.4.0.copyload = load i32, ptr %.sroa.06.sroa.4.0..sroa_idx, align 4
  %51 = getelementptr inbounds i8, ptr %2, i32 16
  %.sroa.05.sroa.0.0.copyload = load i32, ptr %51, align 4
  %.sroa.05.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 20
  %.sroa.05.sroa.2.0.copyload = load i32, ptr %.sroa.05.sroa.2.0..sroa_idx, align 4
  %.sroa.05.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 24
  %.sroa.05.sroa.3.0.copyload = load i32, ptr %.sroa.05.sroa.3.0..sroa_idx, align 4
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 28
  %.sroa.05.sroa.4.0.copyload = load i32, ptr %.sroa.05.sroa.4.0..sroa_idx, align 4
  %52 = getelementptr inbounds i8, ptr %2, i32 32
  %.sroa.04.sroa.0.0.copyload = load i32, ptr %52, align 4
  %.sroa.04.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 36
  %.sroa.04.sroa.2.0.copyload = load i32, ptr %.sroa.04.sroa.2.0..sroa_idx, align 4
  %.sroa.04.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 40
  %.sroa.04.sroa.3.0.copyload = load i32, ptr %.sroa.04.sroa.3.0..sroa_idx, align 4
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 44
  %.sroa.04.sroa.4.0.copyload = load i32, ptr %.sroa.04.sroa.4.0..sroa_idx, align 4
  %53 = getelementptr inbounds i8, ptr %2, i32 48
  %.sroa.0.sroa.0.0.copyload = load i32, ptr %53, align 4
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 52
  %.sroa.0.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 4
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 56
  %.sroa.0.sroa.3.0.copyload = load i32, ptr %.sroa.0.sroa.3.0..sroa_idx, align 4
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %2, i32 60
  %.sroa.0.sroa.4.0.copyload = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  %54 = xor i32 %.sroa.06.sroa.0.0.copyload, %5
  %55 = xor i32 %.sroa.06.sroa.2.0.copyload, %8
  %56 = xor i32 %.sroa.06.sroa.3.0.copyload, %11
  %57 = xor i32 %.sroa.06.sroa.4.0.copyload, %14
  %58 = xor i32 %.sroa.05.sroa.0.0.copyload, %17
  %59 = xor i32 %.sroa.05.sroa.2.0.copyload, %20
  %60 = xor i32 %.sroa.05.sroa.3.0.copyload, %23
  %61 = xor i32 %.sroa.05.sroa.4.0.copyload, %26
  %62 = xor i32 %.sroa.04.sroa.0.0.copyload, %29
  %63 = xor i32 %.sroa.04.sroa.2.0.copyload, %32
  %64 = xor i32 %.sroa.04.sroa.3.0.copyload, %35
  %65 = xor i32 %.sroa.04.sroa.4.0.copyload, %38
  %66 = xor i32 %.sroa.0.sroa.0.0.copyload, %41
  %67 = xor i32 %.sroa.0.sroa.2.0.copyload, %44
  %68 = xor i32 %.sroa.0.sroa.3.0.copyload, %47
  %69 = xor i32 %.sroa.0.sroa.4.0.copyload, %50
  %70 = getelementptr inbounds i8, ptr %0, i32 16
  %71 = getelementptr inbounds i8, ptr %0, i32 32
  %72 = getelementptr inbounds i8, ptr %0, i32 48
  %73 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %54)
  tail call fastcc void @store32.24(ptr noundef %0, i32 noundef %73)
  %74 = getelementptr inbounds i8, ptr %0, i32 4
  %75 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %55)
  tail call fastcc void @store32.24(ptr noundef nonnull %74, i32 noundef %75)
  %76 = getelementptr inbounds i8, ptr %0, i32 8
  %77 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %56)
  tail call fastcc void @store32.24(ptr noundef nonnull %76, i32 noundef %77)
  %78 = getelementptr inbounds i8, ptr %0, i32 12
  %79 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %57)
  tail call fastcc void @store32.24(ptr noundef nonnull %78, i32 noundef %79)
  %80 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %58)
  tail call fastcc void @store32.24(ptr noundef nonnull %70, i32 noundef %80)
  %81 = getelementptr inbounds i8, ptr %0, i32 20
  %82 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %59)
  tail call fastcc void @store32.24(ptr noundef nonnull %81, i32 noundef %82)
  %83 = getelementptr inbounds i8, ptr %0, i32 24
  %84 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %60)
  tail call fastcc void @store32.24(ptr noundef nonnull %83, i32 noundef %84)
  %85 = getelementptr inbounds i8, ptr %0, i32 28
  %86 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %61)
  tail call fastcc void @store32.24(ptr noundef nonnull %85, i32 noundef %86)
  %87 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %62)
  tail call fastcc void @store32.24(ptr noundef nonnull %71, i32 noundef %87)
  %88 = getelementptr inbounds i8, ptr %0, i32 36
  %89 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %63)
  tail call fastcc void @store32.24(ptr noundef nonnull %88, i32 noundef %89)
  %90 = getelementptr inbounds i8, ptr %0, i32 40
  %91 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %64)
  tail call fastcc void @store32.24(ptr noundef nonnull %90, i32 noundef %91)
  %92 = getelementptr inbounds i8, ptr %0, i32 44
  %93 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %65)
  tail call fastcc void @store32.24(ptr noundef nonnull %92, i32 noundef %93)
  %94 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %66)
  tail call fastcc void @store32.24(ptr noundef nonnull %72, i32 noundef %94)
  %95 = getelementptr inbounds i8, ptr %0, i32 52
  %96 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %67)
  tail call fastcc void @store32.24(ptr noundef nonnull %95, i32 noundef %96)
  %97 = getelementptr inbounds i8, ptr %0, i32 56
  %98 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %68)
  tail call fastcc void @store32.24(ptr noundef nonnull %97, i32 noundef %98)
  %99 = getelementptr inbounds i8, ptr %0, i32 60
  %100 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %69)
  tail call fastcc void @store32.24(ptr noundef nonnull %99, i32 noundef %100)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load32.25(i32 %.0.val) unnamed_addr #0 {
  ret i32 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_update3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = mul nuw i32 %3, 192
  %6 = getelementptr inbounds i8, ptr %0, i32 %5
  %7 = getelementptr inbounds i8, ptr %1, i32 %5
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_update3(ptr noundef %6, ptr noundef %7, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_update3(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
.preheader43.preheader:
  %3 = alloca [4 x %struct.vec], align 4
  %4 = alloca [4 x %struct.vec], align 4
  %5 = alloca [4 x %struct.vec], align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %3, i32 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %3, i32 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %10 = getelementptr inbounds i8, ptr %4, i32 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds i8, ptr %4, i32 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds i8, ptr %5, i32 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds i8, ptr %5, i32 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_core3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2)
  %15 = getelementptr inbounds i8, ptr %1, i32 64
  %16 = getelementptr inbounds i8, ptr %1, i32 128
  %17 = getelementptr inbounds i8, ptr %0, i32 64
  %18 = getelementptr inbounds i8, ptr %0, i32 128
  call fastcc void @Hacl_Impl_Chacha20_Vec128_xor_block(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call fastcc void @Hacl_Impl_Chacha20_Vec128_xor_block(ptr noundef nonnull %17, ptr noundef nonnull %15, ptr noundef nonnull %4)
  call fastcc void @Hacl_Impl_Chacha20_Vec128_xor_block(ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_core3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_incr3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_sum3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_incr3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_copy_state(ptr noundef %0, ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_copy_state(ptr noundef %1, ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %1)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_copy_state(ptr noundef %2, ptr noundef %1)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_double_round3(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %1)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_double_round(ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_chacha20_sum3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_sum_states(ptr noundef %0, ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_sum_states(ptr noundef %1, ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_state_incr(ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Chacha20_Vec128_sum_states(ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Chacha20_Vec128_State_state_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  store i32 1634760805, ptr %0, align 4
  %.sroa.237.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 4
  store i32 857760878, ptr %.sroa.237.0..sroa_idx, align 4
  %.sroa.338.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  store i32 2036477234, ptr %.sroa.338.0..sroa_idx, align 4
  %.sroa.439.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 12
  store i32 1797285236, ptr %.sroa.439.0..sroa_idx, align 4
  %.val53 = load i32, ptr %1, align 1
  %5 = tail call fastcc i32 @load32.25(i32 %.val53)
  %6 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %5)
  %7 = getelementptr inbounds i8, ptr %1, i32 4
  %.val52 = load i32, ptr %7, align 1
  %8 = tail call fastcc i32 @load32.25(i32 %.val52)
  %9 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %8)
  %10 = getelementptr inbounds i8, ptr %1, i32 8
  %.val51 = load i32, ptr %10, align 1
  %11 = tail call fastcc i32 @load32.25(i32 %.val51)
  %12 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %11)
  %13 = getelementptr inbounds i8, ptr %1, i32 12
  %.val50 = load i32, ptr %13, align 1
  %14 = tail call fastcc i32 @load32.25(i32 %.val50)
  %15 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %14)
  %16 = getelementptr inbounds i8, ptr %1, i32 16
  %.val49 = load i32, ptr %16, align 1
  %17 = tail call fastcc i32 @load32.25(i32 %.val49)
  %18 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %17)
  %19 = getelementptr inbounds i8, ptr %1, i32 20
  %.val48 = load i32, ptr %19, align 1
  %20 = tail call fastcc i32 @load32.25(i32 %.val48)
  %21 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %20)
  %22 = getelementptr inbounds i8, ptr %1, i32 24
  %.val47 = load i32, ptr %22, align 1
  %23 = tail call fastcc i32 @load32.25(i32 %.val47)
  %24 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %23)
  %25 = getelementptr inbounds i8, ptr %1, i32 28
  %.val46 = load i32, ptr %25, align 1
  %26 = tail call fastcc i32 @load32.25(i32 %.val46)
  %27 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %26)
  %28 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %6, ptr %28, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 20
  store i32 %9, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  store i32 %12, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 28
  store i32 %15, ptr %.sroa.4.0..sroa_idx, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 32
  store i32 %18, ptr %29, align 4
  %.sroa.233.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 36
  store i32 %21, ptr %.sroa.233.0..sroa_idx, align 4
  %.sroa.334.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  store i32 %24, ptr %.sroa.334.0..sroa_idx, align 4
  %.sroa.435.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 44
  store i32 %27, ptr %.sroa.435.0..sroa_idx, align 4
  %.val45 = load i32, ptr %2, align 1
  %30 = tail call fastcc i32 @load32.25(i32 %.val45)
  %31 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %30)
  %32 = getelementptr inbounds i8, ptr %2, i32 4
  %.val44 = load i32, ptr %32, align 1
  %33 = tail call fastcc i32 @load32.25(i32 %.val44)
  %34 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %33)
  %35 = getelementptr inbounds i8, ptr %2, i32 8
  %.val = load i32, ptr %35, align 1
  %36 = tail call fastcc i32 @load32.25(i32 %.val)
  %37 = tail call fastcc i32 @__uint32_identity.23(i32 noundef %36)
  %38 = getelementptr inbounds i8, ptr %0, i32 48
  store i32 %3, ptr %38, align 4
  %.sroa.241.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 52
  store i32 %31, ptr %.sroa.241.0..sroa_idx, align 4
  %.sroa.342.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 56
  store i32 %34, ptr %.sroa.342.0..sroa_idx, align 4
  %.sroa.443.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 60
  store i32 %37, ptr %.sroa.443.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_EC_crypto_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [10 x i64], align 8
  %5 = alloca [32 x i8], align 1
  %6 = alloca [15 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i32 80, i1 false)
  %7 = getelementptr inbounds i8, ptr %4, i32 40
  call fastcc void @Hacl_EC_Format_fexpand(ptr noundef nonnull %4, ptr noundef %2)
  store i64 1, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(32) %1, i32 32, i1 false)
  %8 = load i8, ptr %5, align 1
  %9 = getelementptr inbounds i8, ptr %5, i32 31
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %8, -8
  %12 = and i8 %10, 63
  %13 = or disjoint i8 %12, 64
  store i8 %11, ptr %5, align 1
  store i8 %13, ptr %9, align 1
  %14 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(120) %14, i8 0, i32 112, i1 false)
  store i64 1, ptr %6, align 8
  call fastcc void @Hacl_EC_Ladder_cmult(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4)
  call fastcc void @Hacl_EC_Format_scalar_of_point(ptr noundef %0, ptr noundef nonnull %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fexpand(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.val = load i64, ptr %1, align 1
  %3 = tail call fastcc i64 @load64.37(i64 %.val)
  %4 = tail call fastcc i64 @__uint64_identity.26(i64 noundef %3)
  %5 = getelementptr inbounds i8, ptr %1, i32 6
  %.val23 = load i64, ptr %5, align 1
  %6 = tail call fastcc i64 @load64.37(i64 %.val23)
  %7 = tail call fastcc i64 @__uint64_identity.26(i64 noundef %6)
  %8 = getelementptr inbounds i8, ptr %1, i32 12
  %.val24 = load i64, ptr %8, align 1
  %9 = tail call fastcc i64 @load64.37(i64 %.val24)
  %10 = tail call fastcc i64 @__uint64_identity.26(i64 noundef %9)
  %11 = getelementptr inbounds i8, ptr %1, i32 19
  %.val25 = load i64, ptr %11, align 1
  %12 = tail call fastcc i64 @load64.37(i64 %.val25)
  %13 = tail call fastcc i64 @__uint64_identity.26(i64 noundef %12)
  %14 = getelementptr inbounds i8, ptr %1, i32 24
  %.val26 = load i64, ptr %14, align 1
  %15 = tail call fastcc i64 @load64.37(i64 %.val26)
  %16 = tail call fastcc i64 @__uint64_identity.26(i64 noundef %15)
  %17 = and i64 %4, 2251799813685247
  %18 = lshr i64 %7, 3
  %19 = and i64 %18, 2251799813685247
  %20 = lshr i64 %10, 6
  %21 = and i64 %20, 2251799813685247
  %22 = lshr i64 %13, 1
  %23 = and i64 %22, 2251799813685247
  %24 = lshr i64 %16, 12
  %25 = and i64 %24, 2251799813685247
  store i64 %17, ptr %0, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %19, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %21, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %23, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %25, ptr %29, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_cmult(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [40 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(320) %4, i8 0, i32 320, i1 false)
  %5 = getelementptr inbounds i8, ptr %4, i32 80
  %6 = getelementptr inbounds i8, ptr %4, i32 160
  %7 = getelementptr inbounds i8, ptr %4, i32 240
  call fastcc void @Hacl_EC_Point_copy(ptr noundef nonnull %5, ptr noundef %2)
  store i64 1, ptr %4, align 8
  call fastcc void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %2, i32 noundef 32)
  call fastcc void @Hacl_EC_Point_copy(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_scalar_of_point(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [10 x i64], align 8
  %4 = getelementptr inbounds i8, ptr %1, i32 40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i32 80, i1 false)
  %5 = getelementptr inbounds i8, ptr %3, i32 40
  call fastcc void @Hacl_Bignum_crecip(ptr noundef nonnull %3, ptr noundef nonnull %4)
  call fastcc void @Hacl_Bignum_fmul(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %3)
  call fastcc void @Hacl_EC_Format_fcontract(ptr noundef %0, ptr noundef nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_crecip(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_Crecip_crecip(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_fmul(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_EC_Format_fcontract_first_carry_full(ptr noundef %1)
  tail call fastcc void @Hacl_EC_Format_fcontract_second_carry_full(ptr noundef %1)
  tail call fastcc void @Hacl_EC_Format_fcontract_trim(ptr noundef %1)
  tail call fastcc void @Hacl_EC_Format_fcontract_store(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_first_carry_full(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_EC_Format_fcontract_first_carry_pass(ptr noundef %0)
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top.30(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_second_carry_full(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_EC_Format_fcontract_second_carry_pass(ptr noundef %0)
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top.30(ptr noundef %0)
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = and i64 %2, 2251799813685247
  %6 = lshr i64 %2, 51
  %7 = add i64 %4, %6
  store i64 %5, ptr %0, align 4
  store i64 %7, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_trim(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  %10 = load i64, ptr %9, align 4
  %11 = tail call fastcc i64 @FStar_UInt64_gte_mask.28(i64 noundef %2)
  %12 = tail call fastcc i64 @FStar_UInt64_eq_mask.29(i64 noundef %4)
  %13 = tail call fastcc i64 @FStar_UInt64_eq_mask.29(i64 noundef %6)
  %14 = tail call fastcc i64 @FStar_UInt64_eq_mask.29(i64 noundef %8)
  %15 = tail call fastcc i64 @FStar_UInt64_eq_mask.29(i64 noundef %10)
  %16 = and i64 %12, %11
  %17 = and i64 %16, %13
  %18 = and i64 %17, %14
  %19 = and i64 %18, %15
  %20 = and i64 %19, 2251799813685229
  %21 = sub i64 %2, %20
  %22 = and i64 %19, 2251799813685247
  %23 = sub i64 %4, %22
  %24 = sub i64 %6, %22
  %25 = sub i64 %8, %22
  %26 = sub i64 %10, %22
  store i64 %21, ptr %0, align 4
  store i64 %23, ptr %3, align 4
  store i64 %24, ptr %5, align 4
  store i64 %25, ptr %7, align 4
  store i64 %26, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_store(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 8
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %1, i32 16
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 24
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %1, i32 32
  %11 = load i64, ptr %10, align 4
  %12 = shl i64 %5, 51
  %13 = or i64 %12, %3
  %14 = shl i64 %7, 38
  %15 = lshr i64 %5, 13
  %16 = or i64 %14, %15
  %17 = shl i64 %9, 25
  %18 = lshr i64 %7, 26
  %19 = or i64 %17, %18
  %20 = shl i64 %11, 12
  %21 = lshr i64 %9, 39
  %22 = or i64 %20, %21
  %23 = getelementptr inbounds i8, ptr %0, i32 8
  %24 = getelementptr inbounds i8, ptr %0, i32 16
  %25 = getelementptr inbounds i8, ptr %0, i32 24
  %26 = tail call fastcc i64 @__uint64_identity.26(i64 noundef %13)
  tail call fastcc void @store64.27(ptr noundef %0, i64 noundef %26)
  %27 = tail call fastcc i64 @__uint64_identity.26(i64 noundef %16)
  tail call fastcc void @store64.27(ptr noundef nonnull %23, i64 noundef %27)
  %28 = tail call fastcc i64 @__uint64_identity.26(i64 noundef %19)
  tail call fastcc void @store64.27(ptr noundef nonnull %24, i64 noundef %28)
  %29 = tail call fastcc i64 @__uint64_identity.26(i64 noundef %22)
  tail call fastcc void @store64.27(ptr noundef nonnull %25, i64 noundef %29)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @__uint64_identity.26(i64 noundef %0) unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store64.27(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @FStar_UInt64_gte_mask.28(i64 noundef %0) unnamed_addr #0 {
  %2 = and i64 %0, 9223372036854775807
  %isnotneg = icmp ugt i64 %2, 2251799813685228
  %isnotneg6 = icmp sgt i64 %0, -1
  %3 = and i1 %isnotneg6, %isnotneg
  %4 = sext i1 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 -1, 1) i64 @FStar_UInt64_eq_mask.29(i64 noundef %0) unnamed_addr #0 {
  %2 = xor i64 %0, -2251799813685248
  %3 = shl i64 %0, 32
  %4 = and i64 %2, %3
  %5 = shl i64 %4, 16
  %6 = and i64 %5, %4
  %7 = shl i64 %6, 8
  %8 = and i64 %7, %6
  %9 = shl i64 %8, 4
  %10 = and i64 %9, %8
  %11 = shl i64 %10, 2
  %12 = and i64 %11, %10
  %13 = shl i64 %12, 1
  %14 = and i64 %13, %12
  %15 = ashr i64 %14, 63
  ret i64 %15
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_second_carry_pass(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  %10 = load i64, ptr %9, align 4
  %11 = lshr i64 %2, 51
  %12 = add i64 %4, %11
  %13 = and i64 %2, 2251799813685247
  %14 = lshr i64 %12, 51
  %15 = add i64 %14, %6
  %16 = and i64 %12, 2251799813685247
  %17 = lshr i64 %15, 51
  %18 = add i64 %17, %8
  %19 = and i64 %15, 2251799813685247
  %20 = lshr i64 %18, 51
  %21 = add i64 %20, %10
  %22 = and i64 %18, 2251799813685247
  store i64 %13, ptr %0, align 4
  store i64 %16, ptr %3, align 4
  store i64 %19, ptr %5, align 4
  store i64 %22, ptr %7, align 4
  store i64 %21, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_carry_top.30(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 32
  %3 = load i64, ptr %2, align 4
  %4 = load i64, ptr %0, align 4
  %5 = and i64 %3, 2251799813685247
  %6 = lshr i64 %3, 51
  %7 = mul nuw nsw i64 %6, 19
  %8 = add i64 %7, %4
  store i64 %5, ptr %2, align 4
  store i64 %8, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_first_carry_pass(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  %10 = load i64, ptr %9, align 4
  %11 = lshr i64 %2, 51
  %12 = add i64 %4, %11
  %13 = and i64 %2, 2251799813685247
  %14 = lshr i64 %12, 51
  %15 = add i64 %14, %6
  %16 = and i64 %12, 2251799813685247
  %17 = lshr i64 %15, 51
  %18 = add i64 %17, %8
  %19 = and i64 %15, 2251799813685247
  %20 = lshr i64 %18, 51
  %21 = add i64 %20, %10
  %22 = and i64 %18, 2251799813685247
  store i64 %13, ptr %0, align 4
  store i64 %16, ptr %3, align 4
  store i64 %19, ptr %5, align 4
  store i64 %22, ptr %7, align 4
  store i64 %21, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [5 x i64], align 8
  %5 = alloca [5 x %struct.FStar_UInt128_uint128], align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(40) %1, i32 40, i1 false)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %12 = getelementptr inbounds i8, ptr %5, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %13 = getelementptr inbounds i8, ptr %5, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %14 = getelementptr inbounds i8, ptr %5, i32 48
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %15 = getelementptr inbounds i8, ptr %5, i32 64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_.32(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2)
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_.33(ptr noundef nonnull %5)
  %16 = getelementptr inbounds i8, ptr %5, i32 64
  %.sroa.05.0.copyload = load i64, ptr %16, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 72
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.0.0.copyload = load i64, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 2251799813685247)
  %17 = load i64, ptr %8, align 8
  %18 = getelementptr inbounds i8, ptr %8, i32 8
  %19 = load i64, ptr %18, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %.sroa.05.0.copyload, i64 %.sroa.3.0.copyload, i64 %17, i64 %19)
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %.sroa.05.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 51)
  %20 = load i64, ptr %11, align 8
  %21 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %20, i64 poison)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 19, i64 noundef %21)
  %22 = load i64, ptr %10, align 8
  %23 = getelementptr inbounds i8, ptr %10, i32 8
  %24 = load i64, ptr %23, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %22, i64 %24)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.34(ptr noundef %0, ptr noundef nonnull %5)
  %25 = load i64, ptr %0, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 8
  %27 = load i64, ptr %26, align 4
  %28 = and i64 %25, 2251799813685247
  %29 = lshr i64 %25, 51
  %30 = add i64 %27, %29
  store i64 %28, ptr %0, align 4
  store i64 %30, ptr %26, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_.32(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %2, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.35(ptr noundef %0, ptr noundef %1, i64 noundef %4)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.36(ptr noundef %1)
  %5 = getelementptr inbounds i8, ptr %2, i32 8
  %6 = load i64, ptr %5, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.35(ptr noundef %0, ptr noundef %1, i64 noundef %6)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.36(ptr noundef %1)
  %7 = getelementptr inbounds i8, ptr %2, i32 16
  %8 = load i64, ptr %7, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.35(ptr noundef %0, ptr noundef %1, i64 noundef %8)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.36(ptr noundef %1)
  %9 = getelementptr inbounds i8, ptr %2, i32 24
  %10 = load i64, ptr %9, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.35(ptr noundef %0, ptr noundef %1, i64 noundef %10)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.36(ptr noundef %1)
  %11 = getelementptr inbounds i8, ptr %2, i32 32
  %12 = load i64, ptr %11, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.35(ptr noundef %0, ptr noundef %1, i64 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_.33(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 8
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %.sroa.033.0.copyload = load i64, ptr %0, align 4
  %.sroa.335.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.335.0.copyload = load i64, ptr %.sroa.335.0..sroa_idx, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.031.0.copyload = load i64, ptr %14, align 4
  %.sroa.232.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.232.0.copyload = load i64, ptr %.sroa.232.0..sroa_idx, align 4
  %15 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.033.0.copyload, i64 poison)
  %16 = and i64 %15, 2251799813685247
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %.sroa.033.0.copyload, i64 %.sroa.335.0.copyload, i32 noundef 51)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %16)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  %17 = load i64, ptr %2, align 8
  %18 = getelementptr inbounds i8, ptr %2, i32 8
  %19 = load i64, ptr %18, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.031.0.copyload, i64 %.sroa.232.0.copyload, i64 %17, i64 %19)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %.sroa.022.0.copyload = load i64, ptr %14, align 4
  %.sroa.324.0.copyload = load i64, ptr %.sroa.232.0..sroa_idx, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.020.0.copyload = load i64, ptr %20, align 4
  %.sroa.221.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.221.0.copyload = load i64, ptr %.sroa.221.0..sroa_idx, align 4
  %21 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.022.0.copyload, i64 poison)
  %22 = and i64 %21, 2251799813685247
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %.sroa.022.0.copyload, i64 %.sroa.324.0.copyload, i32 noundef 51)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %22)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %23 = load i64, ptr %5, align 8
  %24 = getelementptr inbounds i8, ptr %5, i32 8
  %25 = load i64, ptr %24, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %.sroa.020.0.copyload, i64 %.sroa.221.0.copyload, i64 %23, i64 %25)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %.sroa.011.0.copyload = load i64, ptr %20, align 4
  %.sroa.313.0.copyload = load i64, ptr %.sroa.221.0..sroa_idx, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 48
  %.sroa.09.0.copyload = load i64, ptr %26, align 4
  %.sroa.210.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 56
  %.sroa.210.0.copyload = load i64, ptr %.sroa.210.0..sroa_idx, align 4
  %27 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.011.0.copyload, i64 poison)
  %28 = and i64 %27, 2251799813685247
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %.sroa.011.0.copyload, i64 %.sroa.313.0.copyload, i32 noundef 51)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %28)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false)
  %29 = load i64, ptr %8, align 8
  %30 = getelementptr inbounds i8, ptr %8, i32 8
  %31 = load i64, ptr %30, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %.sroa.09.0.copyload, i64 %.sroa.210.0.copyload, i64 %29, i64 %31)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 16, i1 false)
  %.sroa.01.0.copyload = load i64, ptr %26, align 4
  %.sroa.3.0.copyload = load i64, ptr %.sroa.210.0..sroa_idx, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 64
  %.sroa.0.0.copyload = load i64, ptr %32, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 72
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %33 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.01.0.copyload, i64 poison)
  %34 = and i64 %33, 2251799813685247
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %.sroa.01.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 51)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %34)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %12, i32 16, i1 false)
  %35 = load i64, ptr %11, align 8
  %36 = getelementptr inbounds i8, ptr %11, i32 8
  %37 = load i64, ptr %36, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %35, i64 %37)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %32, ptr noundef nonnull align 4 dereferenceable(16) %13, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.34(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.sroa.07.0.copyload = load i64, ptr %1, align 4
  %3 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.07.0.copyload, i64 poison)
  store i64 %3, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 16
  %.sroa.05.0.copyload = load i64, ptr %4, align 4
  %5 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.05.0.copyload, i64 poison)
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %5, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %1, i32 32
  %.sroa.03.0.copyload = load i64, ptr %7, align 4
  %8 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.03.0.copyload, i64 poison)
  %9 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %8, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %1, i32 48
  %.sroa.01.0.copyload = load i64, ptr %10, align 4
  %11 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.01.0.copyload, i64 poison)
  %12 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %11, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 64
  %.sroa.0.0.copyload = load i64, ptr %13, align 4
  %14 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.0.0.copyload, i64 poison)
  %15 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %14, ptr %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.35(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %.sroa.011.0.copyload = load i64, ptr %0, align 4
  %.sroa.212.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 4
  %14 = load i64, ptr %1, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %14, i64 noundef %2)
  %15 = load i64, ptr %5, align 8
  %16 = getelementptr inbounds i8, ptr %5, i32 8
  %17 = load i64, ptr %16, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.011.0.copyload, i64 %.sroa.212.0.copyload, i64 %15, i64 %17)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %18 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.08.0.copyload = load i64, ptr %18, align 4
  %.sroa.29.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 4
  %19 = getelementptr inbounds i8, ptr %1, i32 8
  %20 = load i64, ptr %19, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %20, i64 noundef %2)
  %21 = load i64, ptr %7, align 8
  %22 = getelementptr inbounds i8, ptr %7, i32 8
  %23 = load i64, ptr %22, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, i64 %21, i64 %23)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %24 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.05.0.copyload = load i64, ptr %24, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 4
  %25 = getelementptr inbounds i8, ptr %1, i32 16
  %26 = load i64, ptr %25, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %26, i64 noundef %2)
  %27 = load i64, ptr %9, align 8
  %28 = getelementptr inbounds i8, ptr %9, i32 8
  %29 = load i64, ptr %28, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload, i64 %27, i64 %29)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 16, i1 false)
  %30 = getelementptr inbounds i8, ptr %0, i32 48
  %.sroa.02.0.copyload = load i64, ptr %30, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 56
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 4
  %31 = getelementptr inbounds i8, ptr %1, i32 24
  %32 = load i64, ptr %31, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %32, i64 noundef %2)
  %33 = load i64, ptr %11, align 8
  %34 = getelementptr inbounds i8, ptr %11, i32 8
  %35 = load i64, ptr %34, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, i64 %33, i64 %35)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 16, i1 false)
  %36 = getelementptr inbounds i8, ptr %0, i32 64
  %.sroa.0.0.copyload = load i64, ptr %36, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 72
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %37 = getelementptr inbounds i8, ptr %1, i32 32
  %38 = load i64, ptr %37, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %38, i64 noundef %2)
  %39 = load i64, ptr %13, align 8
  %40 = getelementptr inbounds i8, ptr %13, i32 8
  %41 = load i64, ptr %40, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %39, i64 %41)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %36, ptr noundef nonnull align 4 dereferenceable(16) %12, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_shift_reduce.36(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 32
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 24
  %5 = load i64, ptr %4, align 4
  store i64 %5, ptr %2, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 16
  %7 = load i64, ptr %6, align 4
  store i64 %7, ptr %4, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 8
  %9 = load i64, ptr %8, align 4
  store i64 %9, ptr %6, align 4
  %10 = load i64, ptr %0, align 4
  store i64 %10, ptr %8, align 4
  %11 = mul i64 %3, 19
  store i64 %11, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Crecip_crecip(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i32 160, i1 false)
  %4 = getelementptr inbounds i8, ptr %3, i32 40
  %5 = getelementptr inbounds i8, ptr %3, i32 80
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 1)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2)
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %1)
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %3)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1)
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 5)
  %6 = getelementptr inbounds i8, ptr %3, i32 120
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 10)
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 20)
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %6)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef nonnull %4, i32 noundef 10)
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 50)
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 100)
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %6)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef nonnull %4, i32 noundef 50)
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef nonnull %4, i32 noundef 5)
  call fastcc void @Hacl_Bignum_Fmul_fmul.31(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %6 = getelementptr inbounds i8, ptr %4, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %4, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %4, i32 48
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %9 = getelementptr inbounds i8, ptr %4, i32 64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(40) %1, i32 40, i1 false)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %5 = getelementptr inbounds i8, ptr %3, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %6 = getelementptr inbounds i8, ptr %3, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %3, i32 48
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %3, i32 64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times_(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_Fsquare_fsquare_(ptr noundef %1, ptr noundef %0)
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 1, %3 ], [ %7, %6 ]
  %5 = icmp ult i32 %.0, %2
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call fastcc void @Hacl_Bignum_Fsquare_fsquare_(ptr noundef %1, ptr noundef %0)
  %7 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !14

8:                                                ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  tail call fastcc void @Hacl_Bignum_Fsquare_fsquare__(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @Hacl_Bignum_Fproduct_carry_wide_.33(ptr noundef %0)
  %8 = getelementptr inbounds i8, ptr %0, i32 64
  %.sroa.05.0.copyload = load i64, ptr %8, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 72
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 2251799813685247)
  %9 = load i64, ptr %4, align 8
  %10 = getelementptr inbounds i8, ptr %4, i32 8
  %11 = load i64, ptr %10, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %.sroa.05.0.copyload, i64 %.sroa.3.0.copyload, i64 %9, i64 %11)
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %.sroa.05.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 51)
  %12 = load i64, ptr %7, align 8
  %13 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %12, i64 poison)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 19, i64 noundef %13)
  %14 = load i64, ptr %6, align 8
  %15 = getelementptr inbounds i8, ptr %6, i32 8
  %16 = load i64, ptr %15, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %14, i64 %16)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.34(ptr noundef %1, ptr noundef nonnull %0)
  %17 = load i64, ptr %1, align 4
  %18 = getelementptr inbounds i8, ptr %1, i32 8
  %19 = load i64, ptr %18, align 4
  %20 = and i64 %17, 2251799813685247
  %21 = lshr i64 %17, 51
  %22 = add i64 %19, %21
  store i64 %20, ptr %1, align 4
  store i64 %22, ptr %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare__(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %22 = alloca %struct.FStar_UInt128_uint128, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.FStar_UInt128_uint128, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 8
  %26 = alloca %struct.FStar_UInt128_uint128, align 8
  %27 = alloca %struct.FStar_UInt128_uint128, align 8
  %28 = load i64, ptr %1, align 4
  %29 = getelementptr inbounds i8, ptr %1, i32 8
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %1, i32 16
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %1, i32 24
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %1, i32 32
  %36 = load i64, ptr %35, align 4
  %37 = shl i64 %28, 1
  %38 = shl i64 %30, 1
  %39 = mul i64 %32, 38
  %40 = mul i64 %36, 19
  %41 = mul i64 %36, 38
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %28, i64 noundef %28)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %41, i64 noundef %30)
  %42 = load i64, ptr %5, align 8
  %43 = getelementptr inbounds i8, ptr %5, i32 8
  %44 = load i64, ptr %43, align 8
  %45 = load i64, ptr %6, align 8
  %46 = getelementptr inbounds i8, ptr %6, i32 8
  %47 = load i64, ptr %46, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %42, i64 %44, i64 %45, i64 %47)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %39, i64 noundef %34)
  %48 = load i64, ptr %4, align 8
  %49 = getelementptr inbounds i8, ptr %4, i32 8
  %50 = load i64, ptr %49, align 8
  %51 = load i64, ptr %7, align 8
  %52 = getelementptr inbounds i8, ptr %7, i32 8
  %53 = load i64, ptr %52, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %48, i64 %50, i64 %51, i64 %53)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %37, i64 noundef %30)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %41, i64 noundef %32)
  %54 = load i64, ptr %10, align 8
  %55 = getelementptr inbounds i8, ptr %10, i32 8
  %56 = load i64, ptr %55, align 8
  %57 = load i64, ptr %11, align 8
  %58 = getelementptr inbounds i8, ptr %11, i32 8
  %59 = load i64, ptr %58, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %54, i64 %56, i64 %57, i64 %59)
  %60 = mul i64 %34, 19
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %60, i64 noundef %34)
  %61 = load i64, ptr %9, align 8
  %62 = getelementptr inbounds i8, ptr %9, i32 8
  %63 = load i64, ptr %62, align 8
  %64 = load i64, ptr %12, align 8
  %65 = getelementptr inbounds i8, ptr %12, i32 8
  %66 = load i64, ptr %65, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %61, i64 %63, i64 %64, i64 %66)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %37, i64 noundef %32)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %30, i64 noundef %30)
  %67 = load i64, ptr %15, align 8
  %68 = getelementptr inbounds i8, ptr %15, i32 8
  %69 = load i64, ptr %68, align 8
  %70 = load i64, ptr %16, align 8
  %71 = getelementptr inbounds i8, ptr %16, i32 8
  %72 = load i64, ptr %71, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %67, i64 %69, i64 %70, i64 %72)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %41, i64 noundef %34)
  %73 = load i64, ptr %14, align 8
  %74 = getelementptr inbounds i8, ptr %14, i32 8
  %75 = load i64, ptr %74, align 8
  %76 = load i64, ptr %17, align 8
  %77 = getelementptr inbounds i8, ptr %17, i32 8
  %78 = load i64, ptr %77, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %73, i64 %75, i64 %76, i64 %78)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %37, i64 noundef %34)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef %38, i64 noundef %32)
  %79 = load i64, ptr %20, align 8
  %80 = getelementptr inbounds i8, ptr %20, i32 8
  %81 = load i64, ptr %80, align 8
  %82 = load i64, ptr %21, align 8
  %83 = getelementptr inbounds i8, ptr %21, i32 8
  %84 = load i64, ptr %83, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %79, i64 %81, i64 %82, i64 %84)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %36, i64 noundef %40)
  %85 = load i64, ptr %19, align 8
  %86 = getelementptr inbounds i8, ptr %19, i32 8
  %87 = load i64, ptr %86, align 8
  %88 = load i64, ptr %22, align 8
  %89 = getelementptr inbounds i8, ptr %22, i32 8
  %90 = load i64, ptr %89, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %85, i64 %87, i64 %88, i64 %90)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %37, i64 noundef %36)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %38, i64 noundef %34)
  %91 = load i64, ptr %25, align 8
  %92 = getelementptr inbounds i8, ptr %25, i32 8
  %93 = load i64, ptr %92, align 8
  %94 = load i64, ptr %26, align 8
  %95 = getelementptr inbounds i8, ptr %26, i32 8
  %96 = load i64, ptr %95, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %91, i64 %93, i64 %94, i64 %96)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %32, i64 noundef %32)
  %97 = load i64, ptr %24, align 8
  %98 = getelementptr inbounds i8, ptr %24, i32 8
  %99 = load i64, ptr %98, align 8
  %100 = load i64, ptr %27, align 8
  %101 = getelementptr inbounds i8, ptr %27, i32 8
  %102 = load i64, ptr %101, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %97, i64 %99, i64 %100, i64 %102)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  %103 = getelementptr inbounds i8, ptr %0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %103, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 16, i1 false)
  %104 = getelementptr inbounds i8, ptr %0, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %104, ptr noundef nonnull align 4 dereferenceable(16) %13, i32 16, i1 false)
  %105 = getelementptr inbounds i8, ptr %0, i32 48
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %105, ptr noundef nonnull align 4 dereferenceable(16) %18, i32 16, i1 false)
  %106 = getelementptr inbounds i8, ptr %0, i32 64
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %106, ptr noundef nonnull align 4 dereferenceable(16) %23, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Point_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(40) %1, i32 40, i1 false)
  %3 = getelementptr inbounds i8, ptr %0, i32 40
  %4 = getelementptr inbounds i8, ptr %1, i32 40
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) %4, i32 40, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_BigLoop_cmult_big_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %9, %7
  %.tr21 = phi i32 [ %6, %7 ], [ %10, %9 ]
  %8 = icmp eq i32 %.tr21, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %tailrecurse
  %10 = add i32 %.tr21, -1
  %11 = getelementptr inbounds i8, ptr %0, i32 %10
  %12 = load i8, ptr %11, align 1
  tail call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %12, i32 noundef 4)
  br label %tailrecurse

13:                                               ; preds = %tailrecurse
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #0 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %9, %7
  %.tr19 = phi i8 [ %5, %7 ], [ %10, %9 ]
  %.tr20 = phi i32 [ %6, %7 ], [ %11, %9 ]
  %8 = icmp eq i32 %.tr20, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %tailrecurse
  %10 = shl i8 %.tr19, 2
  %11 = add nsw i32 %.tr20, -1
  tail call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_double_step(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %.tr19)
  br label %tailrecurse

12:                                               ; preds = %tailrecurse
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_double_step(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  tail call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5)
  %7 = shl i8 %5, 1
  tail call fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(ptr noundef %2, ptr noundef %3, ptr noundef %0, ptr noundef %1, ptr noundef %4, i8 noundef zeroext %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Ladder_SmallLoop_cmult_small_loop_step(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = lshr i8 %5, 7
  %8 = zext nneg i8 %7 to i64
  tail call fastcc void @Hacl_EC_Point_swap_conditional(ptr noundef %0, ptr noundef %1, i64 noundef %8)
  tail call fastcc void @Hacl_EC_AddAndDouble_fmonty(ptr noundef %2, ptr noundef %3, ptr noundef %0, ptr noundef %1, ptr noundef %4)
  tail call fastcc void @Hacl_EC_Point_swap_conditional(ptr noundef %2, ptr noundef %3, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Point_swap_conditional(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = sub nsw i64 0, %2
  tail call fastcc void @Hacl_EC_Point_swap_conditional_(ptr noundef %0, ptr noundef %1, i64 noundef %4, i32 noundef 5)
  %5 = getelementptr inbounds i8, ptr %0, i32 40
  %6 = getelementptr inbounds i8, ptr %1, i32 40
  tail call fastcc void @Hacl_EC_Point_swap_conditional_(ptr noundef nonnull %5, ptr noundef nonnull %6, i64 noundef %4, i32 noundef 5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_AddAndDouble_fmonty(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [40 x i64], align 8
  %7 = getelementptr inbounds i8, ptr %0, i32 40
  %8 = getelementptr inbounds i8, ptr %1, i32 40
  %9 = getelementptr inbounds i8, ptr %2, i32 40
  %10 = getelementptr inbounds i8, ptr %3, i32 40
  %11 = getelementptr inbounds i8, ptr %6, i32 40
  %12 = getelementptr inbounds i8, ptr %6, i32 200
  %13 = getelementptr inbounds i8, ptr %6, i32 240
  %14 = getelementptr inbounds i8, ptr %6, i32 40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(280) %14, i8 0, i32 280, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 4 dereferenceable(40) %2, i32 40, i1 false)
  tail call fastcc void @Hacl_Bignum_fsum(ptr noundef %2, ptr noundef nonnull %9)
  call fastcc void @Hacl_Bignum_fdifference(ptr noundef nonnull %9, ptr noundef nonnull %6)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 4 dereferenceable(40) %3, i32 40, i1 false)
  call fastcc void @Hacl_Bignum_fsum(ptr noundef %3, ptr noundef nonnull %10)
  call fastcc void @Hacl_Bignum_fdifference(ptr noundef nonnull %10, ptr noundef nonnull %11)
  call fastcc void @Hacl_Bignum_fmul(ptr noundef nonnull %12, ptr noundef %3, ptr noundef nonnull %9)
  call fastcc void @Hacl_Bignum_fmul(ptr noundef nonnull %13, ptr noundef %2, ptr noundef nonnull %10)
  %15 = getelementptr inbounds i8, ptr %6, i32 120
  %16 = getelementptr inbounds i8, ptr %6, i32 160
  %17 = getelementptr inbounds i8, ptr %6, i32 280
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 40, i1 false)
  call fastcc void @Hacl_Bignum_fsum(ptr noundef nonnull %12, ptr noundef nonnull %13)
  call fastcc void @Hacl_Bignum_fdifference(ptr noundef nonnull %13, ptr noundef nonnull %11)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef %1, ptr noundef nonnull %12, i32 noundef 1)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %17, ptr noundef nonnull %13, i32 noundef 1)
  call fastcc void @Hacl_Bignum_fmul(ptr noundef nonnull %8, ptr noundef nonnull %17, ptr noundef %4)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %15, ptr noundef %2, i32 noundef 1)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times(ptr noundef nonnull %16, ptr noundef nonnull %9, i32 noundef 1)
  %18 = getelementptr inbounds i8, ptr %6, i32 80
  call fastcc void @Hacl_Bignum_fmul(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %16)
  call fastcc void @Hacl_Bignum_fdifference(ptr noundef nonnull %16, ptr noundef nonnull %15)
  call fastcc void @Hacl_Bignum_fscalar(ptr noundef nonnull %18, ptr noundef nonnull %16)
  call fastcc void @Hacl_Bignum_fsum(ptr noundef nonnull %18, ptr noundef nonnull %15)
  call fastcc void @Hacl_Bignum_fmul(ptr noundef nonnull %7, ptr noundef nonnull %18, ptr noundef nonnull %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_fsum(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 4
  %4 = load i64, ptr %1, align 4
  %5 = add i64 %4, %3
  store i64 %5, ptr %0, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 8
  %9 = load i64, ptr %8, align 4
  %10 = add i64 %9, %7
  store i64 %10, ptr %6, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 16
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 16
  %14 = load i64, ptr %13, align 4
  %15 = add i64 %14, %12
  store i64 %15, ptr %11, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 24
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %1, i32 24
  %19 = load i64, ptr %18, align 4
  %20 = add i64 %19, %17
  store i64 %20, ptr %16, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 32
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %1, i32 32
  %24 = load i64, ptr %23, align 4
  %25 = add i64 %24, %22
  store i64 %25, ptr %21, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_fdifference(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.sroa.0.0.copyload = load i64, ptr %1, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 24
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 32
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 4
  %3 = add i64 %.sroa.0.0.copyload, 18014398509481832
  %4 = add i64 %.sroa.5.0.copyload, 18014398509481976
  %5 = add i64 %.sroa.8.0.copyload, 18014398509481976
  %6 = add i64 %.sroa.11.0.copyload, 18014398509481976
  %7 = add i64 %.sroa.14.0.copyload, 18014398509481976
  %8 = load i64, ptr %0, align 4
  %9 = sub i64 %3, %8
  store i64 %9, ptr %0, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  %11 = load i64, ptr %10, align 4
  %12 = sub i64 %4, %11
  store i64 %12, ptr %10, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 16
  %14 = load i64, ptr %13, align 4
  %15 = sub i64 %5, %14
  store i64 %15, ptr %13, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 24
  %17 = load i64, ptr %16, align 4
  %18 = sub i64 %6, %17
  store i64 %18, ptr %16, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 32
  %20 = load i64, ptr %19, align 4
  %21 = sub i64 %7, %20
  store i64 %21, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_fscalar(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [5 x %struct.FStar_UInt128_uint128], align 8
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %15 = getelementptr inbounds i8, ptr %3, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %16 = getelementptr inbounds i8, ptr %3, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %17 = getelementptr inbounds i8, ptr %3, i32 48
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %18 = getelementptr inbounds i8, ptr %3, i32 64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %19 = load i64, ptr %1, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %19, i64 noundef 121665)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %20 = getelementptr inbounds i8, ptr %1, i32 8
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds i8, ptr %3, i32 16
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %21, i64 noundef 121665)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %23 = getelementptr inbounds i8, ptr %1, i32 16
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds i8, ptr %3, i32 32
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %24, i64 noundef 121665)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %26 = getelementptr inbounds i8, ptr %1, i32 24
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %3, i32 48
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %27, i64 noundef 121665)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 16, i1 false)
  %29 = getelementptr inbounds i8, ptr %1, i32 32
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %3, i32 64
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %30, i64 noundef 121665)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_.33(ptr noundef nonnull %3)
  %.sroa.01.0.copyload = load i64, ptr %31, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 72
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef 2251799813685247)
  %32 = load i64, ptr %11, align 8
  %33 = getelementptr inbounds i8, ptr %11, i32 8
  %34 = load i64, ptr %33, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %.sroa.01.0.copyload, i64 %.sroa.3.0.copyload, i64 %32, i64 %34)
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %.sroa.01.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 51)
  %35 = load i64, ptr %14, align 8
  %36 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %35, i64 poison)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef 19, i64 noundef %36)
  %37 = load i64, ptr %13, align 8
  %38 = getelementptr inbounds i8, ptr %13, i32 8
  %39 = load i64, ptr %38, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %37, i64 %39)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %12, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.34(ptr noundef %0, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Point_swap_conditional_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %6, %4
  %.tr11 = phi i32 [ %3, %4 ], [ %7, %6 ]
  %5 = icmp eq i32 %.tr11, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %tailrecurse
  %7 = add nsw i32 %.tr11, -1
  tail call fastcc void @Hacl_EC_Point_swap_conditional_step(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %.tr11)
  br label %tailrecurse

8:                                                ; preds = %tailrecurse
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Point_swap_conditional_step(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = add nsw i32 %3, -1
  %6 = getelementptr inbounds i64, ptr %0, i32 %5
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i64, ptr %1, i32 %5
  %9 = load i64, ptr %8, align 4
  %10 = xor i64 %9, %7
  %11 = and i64 %10, %2
  %12 = xor i64 %11, %7
  %13 = xor i64 %11, %9
  store i64 %12, ptr %6, align 4
  store i64 %13, ptr %8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @load64.37(i64 %.0.val) unnamed_addr #0 {
  ret i64 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @Hacl_EC_crypto_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Ed25519_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Ed25519_Sign_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Ed25519_Sign_sign_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_sign_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [352 x i8], align 1
  %6 = alloca [65 x i64], align 8
  %7 = alloca [32 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(352) %5, i8 0, i32 352, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(520) %6, i8 0, i32 520, i1 false)
  %8 = getelementptr inbounds i8, ptr %5, i32 160
  %9 = getelementptr inbounds i8, ptr %5, i32 192
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_1(ptr noundef %1, ptr noundef nonnull %5)
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_2(ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false)
  %10 = getelementptr inbounds i8, ptr %6, i32 160
  call fastcc void @Hacl_Impl_Store56_store_56(ptr noundef nonnull %7, ptr noundef nonnull %10)
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g_compress(ptr noundef nonnull %8, ptr noundef nonnull %7)
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_4(ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_5(ptr noundef nonnull %5, ptr noundef nonnull %6)
  call fastcc void @Hacl_Impl_Ed25519_Sign_append_to_sig(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i32 96
  %4 = getelementptr inbounds i8, ptr %1, i32 224
  tail call fastcc void @Hacl_Impl_Ed25519_SecretExpand_secret_expand(ptr noundef nonnull %4, ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g_compress(ptr noundef nonnull %3, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %3, i32 160
  %6 = getelementptr inbounds i8, ptr %2, i32 256
  tail call fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Store56_store_56(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 8
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %1, i32 16
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 24
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %1, i32 32
  %11 = load i64, ptr %10, align 4
  %12 = trunc i64 %11 to i32
  %13 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %3)
  tail call fastcc void @store64.42(ptr noundef %0, i64 noundef %13)
  %14 = getelementptr inbounds i8, ptr %0, i32 7
  %15 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %5)
  tail call fastcc void @store64.42(ptr noundef nonnull %14, i64 noundef %15)
  %16 = getelementptr inbounds i8, ptr %0, i32 14
  %17 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %7)
  tail call fastcc void @store64.42(ptr noundef nonnull %16, i64 noundef %17)
  %18 = getelementptr inbounds i8, ptr %0, i32 21
  %19 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %9)
  tail call fastcc void @store64.42(ptr noundef nonnull %18, i64 noundef %19)
  %20 = getelementptr inbounds i8, ptr %0, i32 28
  %21 = tail call fastcc i32 @__uint32_identity.41(i32 noundef %12)
  tail call fastcc void @store32.66(ptr noundef nonnull %20, i32 noundef %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g_compress(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i32 160, i1 false)
  call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g(ptr noundef nonnull %3, ptr noundef %1)
  call fastcc void @Hacl_Impl_Ed25519_PointCompress_point_compress(ptr noundef %0, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_4(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %3, i32 480
  %6 = getelementptr inbounds i8, ptr %2, i32 96
  %7 = getelementptr inbounds i8, ptr %2, i32 160
  tail call fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_sign_step_5(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i32 160
  %4 = getelementptr inbounds i8, ptr %1, i32 360
  %5 = getelementptr inbounds i8, ptr %1, i32 400
  %6 = getelementptr inbounds i8, ptr %1, i32 440
  %7 = getelementptr inbounds i8, ptr %1, i32 480
  %8 = getelementptr inbounds i8, ptr %0, i32 192
  %9 = getelementptr inbounds i8, ptr %0, i32 224
  tail call fastcc void @Hacl_Impl_Load56_load_32_bytes(ptr noundef nonnull %4, ptr noundef nonnull %9)
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_mul_modq(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %4)
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_add_modq(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %5)
  tail call fastcc void @Hacl_Impl_Store56_store_56(ptr noundef nonnull %8, ptr noundef nonnull %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_append_to_sig(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_copy_bytes(ptr noundef %0, ptr noundef %1)
  %4 = getelementptr inbounds i8, ptr %0, i32 32
  tail call fastcc void @Hacl_Impl_Ed25519_Sign_Steps_copy_bytes(ptr noundef nonnull %4, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_copy_bytes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, i32 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Load56_load_32_bytes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.val = load i64, ptr %1, align 1
  %3 = tail call fastcc i64 @load64.38(i64 %.val)
  %4 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %3)
  %5 = and i64 %4, 72057594037927935
  %6 = getelementptr inbounds i8, ptr %1, i32 7
  %.val24 = load i64, ptr %6, align 1
  %7 = tail call fastcc i64 @load64.38(i64 %.val24)
  %8 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %7)
  %9 = and i64 %8, 72057594037927935
  %10 = getelementptr inbounds i8, ptr %1, i32 14
  %.val25 = load i64, ptr %10, align 1
  %11 = tail call fastcc i64 @load64.38(i64 %.val25)
  %12 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %11)
  %13 = and i64 %12, 72057594037927935
  %14 = getelementptr inbounds i8, ptr %1, i32 21
  %.val26 = load i64, ptr %14, align 1
  %15 = tail call fastcc i64 @load64.38(i64 %.val26)
  %16 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %15)
  %17 = and i64 %16, 72057594037927935
  %18 = getelementptr inbounds i8, ptr %1, i32 28
  %.val27 = load i32, ptr %18, align 1
  %19 = tail call fastcc i32 @load32.40(i32 %.val27)
  %20 = tail call fastcc i32 @__uint32_identity.41(i32 noundef %19)
  %21 = zext i32 %20 to i64
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %5, i64 noundef %9, i64 noundef %13, i64 noundef %17, i64 noundef %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_mul_modq(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [10 x i64], align 8
  %5 = alloca [9 x %struct.FStar_UInt128_uint128], align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i32 80, i1 false)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %5, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %5, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %9 = getelementptr inbounds i8, ptr %5, i32 48
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %10 = getelementptr inbounds i8, ptr %5, i32 64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %11 = getelementptr inbounds i8, ptr %5, i32 80
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %12 = getelementptr inbounds i8, ptr %5, i32 96
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %13 = getelementptr inbounds i8, ptr %5, i32 112
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %14 = getelementptr inbounds i8, ptr %5, i32 128
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  call fastcc void @Hacl_Impl_BignumQ_Mul_mul_5(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2)
  call fastcc void @Hacl_Impl_BignumQ_Mul_carry(ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction_(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_add_modq(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_add_modq_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_add_modq_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [5 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false)
  %5 = load i64, ptr %1, align 4
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 16
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %1, i32 24
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %1, i32 32
  %13 = load i64, ptr %12, align 4
  %14 = load i64, ptr %2, align 4
  %15 = getelementptr inbounds i8, ptr %2, i32 8
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %2, i32 16
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %2, i32 24
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %2, i32 32
  %22 = load i64, ptr %21, align 4
  %23 = add i64 %14, %5
  %24 = add i64 %16, %7
  %25 = add i64 %18, %9
  %26 = add i64 %20, %11
  %27 = add i64 %22, %13
  %28 = lshr i64 %23, 56
  %29 = and i64 %23, 72057594037927935
  %30 = add i64 %24, %28
  %31 = lshr i64 %30, 56
  %32 = and i64 %30, 72057594037927935
  %33 = add i64 %25, %31
  %34 = lshr i64 %33, 56
  %35 = and i64 %33, 72057594037927935
  %36 = add i64 %26, %34
  %37 = lshr i64 %36, 56
  %38 = and i64 %36, 72057594037927935
  %39 = add i64 %27, %37
  call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %4, i64 noundef %29, i64 noundef %32, i64 noundef %35, i64 noundef %38, i64 noundef %39)
  call fastcc void @Hacl_Impl_BignumQ_Mul_subm_conditional(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
  store i64 %1, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %2, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %3, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %4, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %5, ptr %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_subm_conditional(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [5 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false)
  %4 = load i64, ptr %1, align 4
  %5 = getelementptr inbounds i8, ptr %1, i32 8
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %1, i32 16
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %1, i32 24
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %1, i32 32
  %12 = load i64, ptr %11, align 4
  call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %3, i64 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %10, i64 noundef %12)
  %13 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %4, i64 noundef 5175514460705773)
  %14 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %13)
  %15 = add i64 %4, -5175514460705773
  %16 = add i64 %15, %14
  %17 = or disjoint i64 %13, 70332060721272408
  %18 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %6, i64 noundef %17)
  %19 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %18)
  %20 = sub i64 %6, %17
  %21 = add i64 %20, %19
  %22 = or disjoint i64 %18, 5342
  %23 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %8, i64 noundef %22)
  %24 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %23)
  %25 = sub i64 %8, %22
  %26 = add i64 %25, %24
  %27 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %10, i64 noundef %23)
  %28 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %27)
  %29 = sub i64 %10, %23
  %30 = add i64 %29, %28
  %31 = or disjoint i64 %27, 268435456
  %32 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %12, i64 noundef %31)
  %33 = call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %32)
  %34 = sub i64 %12, %31
  %35 = add i64 %34, %33
  call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %16, i64 noundef %21, i64 noundef %26, i64 noundef %30, i64 noundef %35)
  call fastcc void @Hacl_Impl_BignumQ_Mul_choose(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %0, i64 noundef %32)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = sub i64 %0, %1
  %4 = lshr i64 %3, 63
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 0, 72057594037927937) i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %0) unnamed_addr #0 {
  %2 = shl nuw nsw i64 %0, 56
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_choose(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = add nsw i64 %3, -1
  %6 = load i64, ptr %1, align 4
  %7 = getelementptr inbounds i8, ptr %1, i32 8
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %1, i32 16
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %1, i32 24
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 32
  %14 = load i64, ptr %13, align 4
  %15 = load i64, ptr %2, align 4
  %16 = getelementptr inbounds i8, ptr %2, i32 8
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %2, i32 16
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %2, i32 24
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds i8, ptr %2, i32 32
  %23 = load i64, ptr %22, align 4
  %24 = xor i64 %15, %6
  %25 = and i64 %24, %5
  %26 = xor i64 %25, %6
  %27 = xor i64 %17, %8
  %28 = and i64 %27, %5
  %29 = xor i64 %28, %8
  %30 = xor i64 %19, %10
  %31 = and i64 %30, %5
  %32 = xor i64 %31, %10
  %33 = xor i64 %21, %12
  %34 = and i64 %33, %5
  %35 = xor i64 %34, %12
  %36 = xor i64 %23, %14
  %37 = and i64 %36, %5
  %38 = xor i64 %37, %14
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %26, i64 noundef %29, i64 noundef %32, i64 noundef %35, i64 noundef %38)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_mul_5(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %22 = alloca %struct.FStar_UInt128_uint128, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 8
  %24 = alloca %struct.FStar_UInt128_uint128, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 8
  %26 = alloca %struct.FStar_UInt128_uint128, align 8
  %27 = alloca %struct.FStar_UInt128_uint128, align 8
  %28 = alloca %struct.FStar_UInt128_uint128, align 8
  %29 = alloca %struct.FStar_UInt128_uint128, align 8
  %30 = alloca %struct.FStar_UInt128_uint128, align 8
  %31 = alloca %struct.FStar_UInt128_uint128, align 8
  %32 = alloca %struct.FStar_UInt128_uint128, align 8
  %33 = alloca %struct.FStar_UInt128_uint128, align 8
  %34 = alloca %struct.FStar_UInt128_uint128, align 8
  %35 = alloca %struct.FStar_UInt128_uint128, align 8
  %36 = alloca %struct.FStar_UInt128_uint128, align 8
  %37 = alloca %struct.FStar_UInt128_uint128, align 8
  %38 = alloca %struct.FStar_UInt128_uint128, align 8
  %39 = alloca %struct.FStar_UInt128_uint128, align 8
  %40 = alloca %struct.FStar_UInt128_uint128, align 8
  %41 = alloca %struct.FStar_UInt128_uint128, align 8
  %42 = alloca %struct.FStar_UInt128_uint128, align 8
  %43 = alloca %struct.FStar_UInt128_uint128, align 8
  %44 = alloca %struct.FStar_UInt128_uint128, align 8
  %45 = load i64, ptr %1, align 4
  %46 = getelementptr inbounds i8, ptr %1, i32 8
  %47 = load i64, ptr %46, align 4
  %48 = getelementptr inbounds i8, ptr %1, i32 16
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds i8, ptr %1, i32 24
  %51 = load i64, ptr %50, align 4
  %52 = getelementptr inbounds i8, ptr %1, i32 32
  %53 = load i64, ptr %52, align 4
  %54 = load i64, ptr %2, align 4
  %55 = getelementptr inbounds i8, ptr %2, i32 8
  %56 = load i64, ptr %55, align 4
  %57 = getelementptr inbounds i8, ptr %2, i32 16
  %58 = load i64, ptr %57, align 4
  %59 = getelementptr inbounds i8, ptr %2, i32 24
  %60 = load i64, ptr %59, align 4
  %61 = getelementptr inbounds i8, ptr %2, i32 32
  %62 = load i64, ptr %61, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef %45, i64 noundef %54)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %45, i64 noundef %56)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %45, i64 noundef %58)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %45, i64 noundef %60)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %45, i64 noundef %62)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %47, i64 noundef %54)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %47, i64 noundef %56)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %47, i64 noundef %58)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %47, i64 noundef %60)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %47, i64 noundef %62)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %49, i64 noundef %54)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %49, i64 noundef %56)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %49, i64 noundef %58)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %49, i64 noundef %60)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %49, i64 noundef %62)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %51, i64 noundef %54)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %51, i64 noundef %56)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef %51, i64 noundef %58)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %51, i64 noundef %60)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 noundef %51, i64 noundef %62)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 noundef %53, i64 noundef %54)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %53, i64 noundef %56)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %53, i64 noundef %58)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %53, i64 noundef %60)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 noundef %53, i64 noundef %62)
  %.sroa.01.0.copyload = load i64, ptr %4, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8
  %63 = load i64, ptr %5, align 8
  %64 = getelementptr inbounds i8, ptr %5, i32 8
  %65 = load i64, ptr %64, align 8
  %66 = load i64, ptr %9, align 8
  %67 = getelementptr inbounds i8, ptr %9, i32 8
  %68 = load i64, ptr %67, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 %63, i64 %65, i64 %66, i64 %68)
  %69 = load i64, ptr %6, align 8
  %70 = getelementptr inbounds i8, ptr %6, i32 8
  %71 = load i64, ptr %70, align 8
  %72 = load i64, ptr %10, align 8
  %73 = getelementptr inbounds i8, ptr %10, i32 8
  %74 = load i64, ptr %73, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %31, i64 %69, i64 %71, i64 %72, i64 %74)
  %75 = load i64, ptr %31, align 8
  %76 = getelementptr inbounds i8, ptr %31, i32 8
  %77 = load i64, ptr %76, align 8
  %78 = load i64, ptr %14, align 8
  %79 = getelementptr inbounds i8, ptr %14, i32 8
  %80 = load i64, ptr %79, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 %75, i64 %77, i64 %78, i64 %80)
  %81 = load i64, ptr %7, align 8
  %82 = getelementptr inbounds i8, ptr %7, i32 8
  %83 = load i64, ptr %82, align 8
  %84 = load i64, ptr %11, align 8
  %85 = getelementptr inbounds i8, ptr %11, i32 8
  %86 = load i64, ptr %85, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %34, i64 %81, i64 %83, i64 %84, i64 %86)
  %87 = load i64, ptr %34, align 8
  %88 = getelementptr inbounds i8, ptr %34, i32 8
  %89 = load i64, ptr %88, align 8
  %90 = load i64, ptr %15, align 8
  %91 = getelementptr inbounds i8, ptr %15, i32 8
  %92 = load i64, ptr %91, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %33, i64 %87, i64 %89, i64 %90, i64 %92)
  %93 = load i64, ptr %33, align 8
  %94 = getelementptr inbounds i8, ptr %33, i32 8
  %95 = load i64, ptr %94, align 8
  %96 = load i64, ptr %19, align 8
  %97 = getelementptr inbounds i8, ptr %19, i32 8
  %98 = load i64, ptr %97, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %32, i64 %93, i64 %95, i64 %96, i64 %98)
  %99 = load i64, ptr %8, align 8
  %100 = getelementptr inbounds i8, ptr %8, i32 8
  %101 = load i64, ptr %100, align 8
  %102 = load i64, ptr %12, align 8
  %103 = getelementptr inbounds i8, ptr %12, i32 8
  %104 = load i64, ptr %103, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %38, i64 %99, i64 %101, i64 %102, i64 %104)
  %105 = load i64, ptr %38, align 8
  %106 = getelementptr inbounds i8, ptr %38, i32 8
  %107 = load i64, ptr %106, align 8
  %108 = load i64, ptr %16, align 8
  %109 = getelementptr inbounds i8, ptr %16, i32 8
  %110 = load i64, ptr %109, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %37, i64 %105, i64 %107, i64 %108, i64 %110)
  %111 = load i64, ptr %37, align 8
  %112 = getelementptr inbounds i8, ptr %37, i32 8
  %113 = load i64, ptr %112, align 8
  %114 = load i64, ptr %20, align 8
  %115 = getelementptr inbounds i8, ptr %20, i32 8
  %116 = load i64, ptr %115, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %36, i64 %111, i64 %113, i64 %114, i64 %116)
  %117 = load i64, ptr %36, align 8
  %118 = getelementptr inbounds i8, ptr %36, i32 8
  %119 = load i64, ptr %118, align 8
  %120 = load i64, ptr %24, align 8
  %121 = getelementptr inbounds i8, ptr %24, i32 8
  %122 = load i64, ptr %121, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %35, i64 %117, i64 %119, i64 %120, i64 %122)
  %123 = load i64, ptr %13, align 8
  %124 = getelementptr inbounds i8, ptr %13, i32 8
  %125 = load i64, ptr %124, align 8
  %126 = load i64, ptr %17, align 8
  %127 = getelementptr inbounds i8, ptr %17, i32 8
  %128 = load i64, ptr %127, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %41, i64 %123, i64 %125, i64 %126, i64 %128)
  %129 = load i64, ptr %41, align 8
  %130 = getelementptr inbounds i8, ptr %41, i32 8
  %131 = load i64, ptr %130, align 8
  %132 = load i64, ptr %21, align 8
  %133 = getelementptr inbounds i8, ptr %21, i32 8
  %134 = load i64, ptr %133, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %40, i64 %129, i64 %131, i64 %132, i64 %134)
  %135 = load i64, ptr %40, align 8
  %136 = getelementptr inbounds i8, ptr %40, i32 8
  %137 = load i64, ptr %136, align 8
  %138 = load i64, ptr %25, align 8
  %139 = getelementptr inbounds i8, ptr %25, i32 8
  %140 = load i64, ptr %139, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %39, i64 %135, i64 %137, i64 %138, i64 %140)
  %141 = load i64, ptr %18, align 8
  %142 = getelementptr inbounds i8, ptr %18, i32 8
  %143 = load i64, ptr %142, align 8
  %144 = load i64, ptr %22, align 8
  %145 = getelementptr inbounds i8, ptr %22, i32 8
  %146 = load i64, ptr %145, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %43, i64 %141, i64 %143, i64 %144, i64 %146)
  %147 = load i64, ptr %43, align 8
  %148 = getelementptr inbounds i8, ptr %43, i32 8
  %149 = load i64, ptr %148, align 8
  %150 = load i64, ptr %26, align 8
  %151 = getelementptr inbounds i8, ptr %26, i32 8
  %152 = load i64, ptr %151, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %42, i64 %147, i64 %149, i64 %150, i64 %152)
  %153 = load i64, ptr %23, align 8
  %154 = getelementptr inbounds i8, ptr %23, i32 8
  %155 = load i64, ptr %154, align 8
  %156 = load i64, ptr %27, align 8
  %157 = getelementptr inbounds i8, ptr %27, i32 8
  %158 = load i64, ptr %157, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %44, i64 %153, i64 %155, i64 %156, i64 %158)
  %.sroa.0.0.copyload = load i64, ptr %28, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %28, i32 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %159 = load i64, ptr %29, align 8
  %160 = getelementptr inbounds i8, ptr %29, i32 8
  %161 = load i64, ptr %160, align 8
  %162 = load i64, ptr %30, align 8
  %163 = getelementptr inbounds i8, ptr %30, i32 8
  %164 = load i64, ptr %163, align 8
  %165 = load i64, ptr %32, align 8
  %166 = getelementptr inbounds i8, ptr %32, i32 8
  %167 = load i64, ptr %166, align 8
  %168 = load i64, ptr %35, align 8
  %169 = getelementptr inbounds i8, ptr %35, i32 8
  %170 = load i64, ptr %169, align 8
  %171 = load i64, ptr %39, align 8
  %172 = getelementptr inbounds i8, ptr %39, i32 8
  %173 = load i64, ptr %172, align 8
  %174 = load i64, ptr %42, align 8
  %175 = getelementptr inbounds i8, ptr %42, i32 8
  %176 = load i64, ptr %175, align 8
  %177 = load i64, ptr %44, align 8
  %178 = getelementptr inbounds i8, ptr %44, i32 8
  %179 = load i64, ptr %178, align 8
  call fastcc void @Hacl_Lib_Create128_make_h128_9(ptr noundef %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i64 %159, i64 %161, i64 %162, i64 %164, i64 %165, i64 %167, i64 %168, i64 %170, i64 %171, i64 %173, i64 %174, i64 %176, i64 %177, i64 %179, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_carry(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 8
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %.sroa.084.0.copyload = load i64, ptr %1, align 4
  %.sroa.285.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 8
  %.sroa.285.0.copyload = load i64, ptr %.sroa.285.0..sroa_idx, align 4
  %22 = getelementptr inbounds i8, ptr %1, i32 16
  %.sroa.082.0.copyload = load i64, ptr %22, align 4
  %.sroa.283.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 24
  %.sroa.283.0.copyload = load i64, ptr %.sroa.283.0..sroa_idx, align 4
  %23 = getelementptr inbounds i8, ptr %1, i32 32
  %.sroa.080.0.copyload = load i64, ptr %23, align 4
  %.sroa.281.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 40
  %.sroa.281.0.copyload = load i64, ptr %.sroa.281.0..sroa_idx, align 4
  %24 = getelementptr inbounds i8, ptr %1, i32 48
  %.sroa.078.0.copyload = load i64, ptr %24, align 4
  %.sroa.279.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 56
  %.sroa.279.0.copyload = load i64, ptr %.sroa.279.0..sroa_idx, align 4
  %25 = getelementptr inbounds i8, ptr %1, i32 64
  %.sroa.076.0.copyload = load i64, ptr %25, align 4
  %.sroa.277.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 72
  %.sroa.277.0.copyload = load i64, ptr %.sroa.277.0..sroa_idx, align 4
  %26 = getelementptr inbounds i8, ptr %1, i32 80
  %.sroa.074.0.copyload = load i64, ptr %26, align 4
  %.sroa.275.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 88
  %.sroa.275.0.copyload = load i64, ptr %.sroa.275.0..sroa_idx, align 4
  %27 = getelementptr inbounds i8, ptr %1, i32 96
  %.sroa.072.0.copyload = load i64, ptr %27, align 4
  %.sroa.273.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 104
  %.sroa.273.0.copyload = load i64, ptr %.sroa.273.0..sroa_idx, align 4
  %28 = getelementptr inbounds i8, ptr %1, i32 112
  %.sroa.070.0.copyload = load i64, ptr %28, align 4
  %.sroa.271.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 120
  %.sroa.271.0.copyload = load i64, ptr %.sroa.271.0..sroa_idx, align 4
  %29 = getelementptr inbounds i8, ptr %1, i32 128
  %.sroa.068.0.copyload = load i64, ptr %29, align 4
  %.sroa.269.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 136
  %.sroa.269.0.copyload = load i64, ptr %.sroa.269.0..sroa_idx, align 4
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %.sroa.084.0.copyload, i64 %.sroa.285.0.copyload, i32 noundef 56)
  %30 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.084.0.copyload, i64 poison)
  %31 = and i64 %30, 72057594037927935
  %32 = load i64, ptr %3, align 8
  %33 = getelementptr inbounds i8, ptr %3, i32 8
  %34 = load i64, ptr %33, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.082.0.copyload, i64 %.sroa.283.0.copyload, i64 %32, i64 %34)
  %.sroa.056.0.copyload = load i64, ptr %4, align 8
  %.sroa.358.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 8
  %.sroa.358.0.copyload = load i64, ptr %.sroa.358.0..sroa_idx, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %.sroa.056.0.copyload, i64 %.sroa.358.0.copyload, i32 noundef 56)
  %35 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.056.0.copyload, i64 poison)
  %36 = and i64 %35, 72057594037927935
  %37 = load i64, ptr %5, align 8
  %38 = getelementptr inbounds i8, ptr %5, i32 8
  %39 = load i64, ptr %38, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %.sroa.080.0.copyload, i64 %.sroa.281.0.copyload, i64 %37, i64 %39)
  %.sroa.048.0.copyload = load i64, ptr %6, align 8
  %.sroa.350.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 8
  %.sroa.350.0.copyload = load i64, ptr %.sroa.350.0..sroa_idx, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %.sroa.048.0.copyload, i64 %.sroa.350.0.copyload, i32 noundef 56)
  %40 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.048.0.copyload, i64 poison)
  %41 = and i64 %40, 72057594037927935
  %42 = load i64, ptr %7, align 8
  %43 = getelementptr inbounds i8, ptr %7, i32 8
  %44 = load i64, ptr %43, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %.sroa.078.0.copyload, i64 %.sroa.279.0.copyload, i64 %42, i64 %44)
  %.sroa.040.0.copyload = load i64, ptr %8, align 8
  %.sroa.342.0..sroa_idx = getelementptr inbounds i8, ptr %8, i32 8
  %.sroa.342.0.copyload = load i64, ptr %.sroa.342.0..sroa_idx, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %.sroa.040.0.copyload, i64 %.sroa.342.0.copyload, i32 noundef 56)
  %45 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.040.0.copyload, i64 poison)
  %46 = and i64 %45, 72057594037927935
  %47 = load i64, ptr %9, align 8
  %48 = getelementptr inbounds i8, ptr %9, i32 8
  %49 = load i64, ptr %48, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %.sroa.076.0.copyload, i64 %.sroa.277.0.copyload, i64 %47, i64 %49)
  %.sroa.032.0.copyload = load i64, ptr %10, align 8
  %.sroa.334.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 8
  %.sroa.334.0.copyload = load i64, ptr %.sroa.334.0..sroa_idx, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %.sroa.032.0.copyload, i64 %.sroa.334.0.copyload, i32 noundef 56)
  %50 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.032.0.copyload, i64 poison)
  %51 = and i64 %50, 72057594037927935
  %52 = load i64, ptr %11, align 8
  %53 = getelementptr inbounds i8, ptr %11, i32 8
  %54 = load i64, ptr %53, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %.sroa.074.0.copyload, i64 %.sroa.275.0.copyload, i64 %52, i64 %54)
  %.sroa.024.0.copyload = load i64, ptr %12, align 8
  %.sroa.326.0..sroa_idx = getelementptr inbounds i8, ptr %12, i32 8
  %.sroa.326.0.copyload = load i64, ptr %.sroa.326.0..sroa_idx, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %.sroa.024.0.copyload, i64 %.sroa.326.0.copyload, i32 noundef 56)
  %55 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.024.0.copyload, i64 poison)
  %56 = and i64 %55, 72057594037927935
  %57 = load i64, ptr %13, align 8
  %58 = getelementptr inbounds i8, ptr %13, i32 8
  %59 = load i64, ptr %58, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %.sroa.072.0.copyload, i64 %.sroa.273.0.copyload, i64 %57, i64 %59)
  %.sroa.016.0.copyload = load i64, ptr %14, align 8
  %.sroa.318.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 8
  %.sroa.318.0.copyload = load i64, ptr %.sroa.318.0..sroa_idx, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %.sroa.016.0.copyload, i64 %.sroa.318.0.copyload, i32 noundef 56)
  %60 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.016.0.copyload, i64 poison)
  %61 = and i64 %60, 72057594037927935
  %62 = load i64, ptr %15, align 8
  %63 = getelementptr inbounds i8, ptr %15, i32 8
  %64 = load i64, ptr %63, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %.sroa.070.0.copyload, i64 %.sroa.271.0.copyload, i64 %62, i64 %64)
  %.sroa.08.0.copyload = load i64, ptr %16, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds i8, ptr %16, i32 8
  %.sroa.310.0.copyload = load i64, ptr %.sroa.310.0..sroa_idx, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %.sroa.08.0.copyload, i64 %.sroa.310.0.copyload, i32 noundef 56)
  %65 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.08.0.copyload, i64 poison)
  %66 = and i64 %65, 72057594037927935
  %67 = load i64, ptr %17, align 8
  %68 = getelementptr inbounds i8, ptr %17, i32 8
  %69 = load i64, ptr %68, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %.sroa.068.0.copyload, i64 %.sroa.269.0.copyload, i64 %67, i64 %69)
  %.sroa.0.0.copyload = load i64, ptr %18, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %18, i32 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef 0)
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 %.sroa.0.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 56)
  %70 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.0.0.copyload, i64 poison)
  %71 = and i64 %70, 72057594037927935
  %72 = load i64, ptr %19, align 8
  %73 = getelementptr inbounds i8, ptr %19, i32 8
  %74 = load i64, ptr %73, align 8
  %75 = load i64, ptr %20, align 8
  %76 = getelementptr inbounds i8, ptr %20, i32 8
  %77 = load i64, ptr %76, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %72, i64 %74, i64 %75, i64 %77)
  %78 = load i64, ptr %21, align 8
  %79 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %78, i64 poison)
  call fastcc void @Hacl_Lib_Create64_make_h64_10(ptr noundef %0, i64 noundef %31, i64 noundef %36, i64 noundef %41, i64 noundef %46, i64 noundef %51, i64 noundef %56, i64 noundef %61, i64 noundef %66, i64 noundef %71, i64 noundef %79)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [40 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(320) %3, i8 0, i32 320, i1 false)
  %4 = getelementptr inbounds i8, ptr %3, i32 40
  %5 = getelementptr inbounds i8, ptr %3, i32 80
  call fastcc void @Hacl_Impl_BignumQ_Mul_make_m(ptr noundef nonnull %3)
  call fastcc void @Hacl_Impl_BignumQ_Mul_make_mu(ptr noundef nonnull %4)
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_make_m(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef 5175514460705773, i64 noundef 70332060721272408, i64 noundef 5342, i64 noundef 0, i64 noundef 268435456)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_make_mu(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef 44162584779952923, i64 noundef 9390964836247533, i64 noundef 72057594036560134, i64 noundef 72057594037927935, i64 noundef 68719476735)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [9 x %struct.FStar_UInt128_uint128], align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %6, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %9 = getelementptr inbounds i8, ptr %6, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %10 = getelementptr inbounds i8, ptr %6, i32 48
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %11 = getelementptr inbounds i8, ptr %6, i32 64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %12 = getelementptr inbounds i8, ptr %6, i32 80
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %13 = getelementptr inbounds i8, ptr %6, i32 96
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %14 = getelementptr inbounds i8, ptr %6, i32 112
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %15 = getelementptr inbounds i8, ptr %6, i32 128
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %16 = getelementptr inbounds i8, ptr %4, i32 200
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %3, ptr noundef %4)
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__2(ptr noundef %1, ptr noundef %2, ptr noundef %4)
  call fastcc void @Hacl_Impl_BignumQ_Mul_subm_conditional(ptr noundef %0, ptr noundef nonnull %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %3, i32 80
  %6 = getelementptr inbounds i8, ptr %3, i32 160
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_div_248(ptr noundef %3, ptr noundef %1)
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_mul_5(ptr noundef %0, ptr noundef %3, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_carry(ptr noundef nonnull %5, ptr noundef %0)
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_div_264(ptr noundef nonnull %6, ptr noundef nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction__2(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %2, i32 40
  %5 = getelementptr inbounds i8, ptr %2, i32 160
  %6 = getelementptr inbounds i8, ptr %2, i32 200
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_mod_264(ptr noundef nonnull %4, ptr noundef %0)
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_low_mul_5(ptr noundef %2, ptr noundef nonnull %5, ptr noundef %1)
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_sub_mod_264(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_mod_264(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 8
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %1, i32 16
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 24
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %1, i32 32
  %11 = load i64, ptr %10, align 4
  %12 = and i64 %11, 1099511627775
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_low_mul_5(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %22 = alloca %struct.FStar_UInt128_uint128, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 8
  %24 = alloca %struct.FStar_UInt128_uint128, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 8
  %26 = alloca %struct.FStar_UInt128_uint128, align 8
  %27 = alloca %struct.FStar_UInt128_uint128, align 8
  %28 = alloca %struct.FStar_UInt128_uint128, align 8
  %29 = alloca %struct.FStar_UInt128_uint128, align 8
  %30 = alloca %struct.FStar_UInt128_uint128, align 8
  %31 = alloca %struct.FStar_UInt128_uint128, align 8
  %32 = alloca %struct.FStar_UInt128_uint128, align 8
  %33 = alloca %struct.FStar_UInt128_uint128, align 8
  %34 = alloca %struct.FStar_UInt128_uint128, align 8
  %35 = alloca %struct.FStar_UInt128_uint128, align 8
  %36 = alloca %struct.FStar_UInt128_uint128, align 8
  %37 = load i64, ptr %1, align 4
  %38 = getelementptr inbounds i8, ptr %1, i32 8
  %39 = load i64, ptr %38, align 4
  %40 = getelementptr inbounds i8, ptr %1, i32 16
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds i8, ptr %1, i32 24
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds i8, ptr %1, i32 32
  %45 = load i64, ptr %44, align 4
  %46 = load i64, ptr %2, align 4
  %47 = getelementptr inbounds i8, ptr %2, i32 8
  %48 = load i64, ptr %47, align 4
  %49 = getelementptr inbounds i8, ptr %2, i32 16
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr inbounds i8, ptr %2, i32 24
  %52 = load i64, ptr %51, align 4
  %53 = getelementptr inbounds i8, ptr %2, i32 32
  %54 = load i64, ptr %53, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef %37, i64 noundef %46)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %37, i64 noundef %48)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %37, i64 noundef %50)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %37, i64 noundef %52)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %37, i64 noundef %54)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %39, i64 noundef %46)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %39, i64 noundef %48)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %39, i64 noundef %50)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %39, i64 noundef %52)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %41, i64 noundef %46)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %41, i64 noundef %48)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %41, i64 noundef %50)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %43, i64 noundef %46)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %43, i64 noundef %48)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %45, i64 noundef %46)
  %.sroa.0.0.copyload = load i64, ptr %4, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %.sroa.0.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 56)
  %55 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.0.0.copyload, i64 poison)
  %56 = and i64 %55, 72057594037927935
  %57 = load i64, ptr %5, align 8
  %58 = getelementptr inbounds i8, ptr %5, i32 8
  %59 = load i64, ptr %58, align 8
  %60 = load i64, ptr %9, align 8
  %61 = getelementptr inbounds i8, ptr %9, i32 8
  %62 = load i64, ptr %61, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %57, i64 %59, i64 %60, i64 %62)
  %63 = load i64, ptr %21, align 8
  %64 = getelementptr inbounds i8, ptr %21, i32 8
  %65 = load i64, ptr %64, align 8
  %66 = load i64, ptr %19, align 8
  %67 = getelementptr inbounds i8, ptr %19, i32 8
  %68 = load i64, ptr %67, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 %63, i64 %65, i64 %66, i64 %68)
  %69 = load i64, ptr %20, align 8
  %70 = getelementptr inbounds i8, ptr %20, i32 8
  %71 = load i64, ptr %70, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 %69, i64 %71, i32 noundef 56)
  %72 = load i64, ptr %20, align 8
  %73 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %72, i64 poison)
  %74 = and i64 %73, 72057594037927935
  %75 = load i64, ptr %6, align 8
  %76 = getelementptr inbounds i8, ptr %6, i32 8
  %77 = load i64, ptr %76, align 8
  %78 = load i64, ptr %10, align 8
  %79 = getelementptr inbounds i8, ptr %10, i32 8
  %80 = load i64, ptr %79, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 %75, i64 %77, i64 %78, i64 %80)
  %81 = load i64, ptr %25, align 8
  %82 = getelementptr inbounds i8, ptr %25, i32 8
  %83 = load i64, ptr %82, align 8
  %84 = load i64, ptr %13, align 8
  %85 = getelementptr inbounds i8, ptr %13, i32 8
  %86 = load i64, ptr %85, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %81, i64 %83, i64 %84, i64 %86)
  %87 = load i64, ptr %24, align 8
  %88 = getelementptr inbounds i8, ptr %24, i32 8
  %89 = load i64, ptr %88, align 8
  %90 = load i64, ptr %22, align 8
  %91 = getelementptr inbounds i8, ptr %22, i32 8
  %92 = load i64, ptr %91, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %87, i64 %89, i64 %90, i64 %92)
  %93 = load i64, ptr %23, align 8
  %94 = getelementptr inbounds i8, ptr %23, i32 8
  %95 = load i64, ptr %94, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 %93, i64 %95, i32 noundef 56)
  %96 = load i64, ptr %23, align 8
  %97 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %96, i64 poison)
  %98 = and i64 %97, 72057594037927935
  %99 = load i64, ptr %7, align 8
  %100 = getelementptr inbounds i8, ptr %7, i32 8
  %101 = load i64, ptr %100, align 8
  %102 = load i64, ptr %11, align 8
  %103 = getelementptr inbounds i8, ptr %11, i32 8
  %104 = load i64, ptr %103, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %30, i64 %99, i64 %101, i64 %102, i64 %104)
  %105 = load i64, ptr %30, align 8
  %106 = getelementptr inbounds i8, ptr %30, i32 8
  %107 = load i64, ptr %106, align 8
  %108 = load i64, ptr %14, align 8
  %109 = getelementptr inbounds i8, ptr %14, i32 8
  %110 = load i64, ptr %109, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %29, i64 %105, i64 %107, i64 %108, i64 %110)
  %111 = load i64, ptr %29, align 8
  %112 = getelementptr inbounds i8, ptr %29, i32 8
  %113 = load i64, ptr %112, align 8
  %114 = load i64, ptr %16, align 8
  %115 = getelementptr inbounds i8, ptr %16, i32 8
  %116 = load i64, ptr %115, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %28, i64 %111, i64 %113, i64 %114, i64 %116)
  %117 = load i64, ptr %28, align 8
  %118 = getelementptr inbounds i8, ptr %28, i32 8
  %119 = load i64, ptr %118, align 8
  %120 = load i64, ptr %26, align 8
  %121 = getelementptr inbounds i8, ptr %26, i32 8
  %122 = load i64, ptr %121, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 %117, i64 %119, i64 %120, i64 %122)
  %123 = load i64, ptr %27, align 8
  %124 = getelementptr inbounds i8, ptr %27, i32 8
  %125 = load i64, ptr %124, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %31, i64 %123, i64 %125, i32 noundef 56)
  %126 = load i64, ptr %27, align 8
  %127 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %126, i64 poison)
  %128 = and i64 %127, 72057594037927935
  %129 = load i64, ptr %8, align 8
  %130 = getelementptr inbounds i8, ptr %8, i32 8
  %131 = load i64, ptr %130, align 8
  %132 = load i64, ptr %12, align 8
  %133 = getelementptr inbounds i8, ptr %12, i32 8
  %134 = load i64, ptr %133, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %36, i64 %129, i64 %131, i64 %132, i64 %134)
  %135 = load i64, ptr %36, align 8
  %136 = getelementptr inbounds i8, ptr %36, i32 8
  %137 = load i64, ptr %136, align 8
  %138 = load i64, ptr %15, align 8
  %139 = getelementptr inbounds i8, ptr %15, i32 8
  %140 = load i64, ptr %139, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %35, i64 %135, i64 %137, i64 %138, i64 %140)
  %141 = load i64, ptr %35, align 8
  %142 = getelementptr inbounds i8, ptr %35, i32 8
  %143 = load i64, ptr %142, align 8
  %144 = load i64, ptr %17, align 8
  %145 = getelementptr inbounds i8, ptr %17, i32 8
  %146 = load i64, ptr %145, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %34, i64 %141, i64 %143, i64 %144, i64 %146)
  %147 = load i64, ptr %34, align 8
  %148 = getelementptr inbounds i8, ptr %34, i32 8
  %149 = load i64, ptr %148, align 8
  %150 = load i64, ptr %18, align 8
  %151 = getelementptr inbounds i8, ptr %18, i32 8
  %152 = load i64, ptr %151, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %33, i64 %147, i64 %149, i64 %150, i64 %152)
  %153 = load i64, ptr %33, align 8
  %154 = getelementptr inbounds i8, ptr %33, i32 8
  %155 = load i64, ptr %154, align 8
  %156 = load i64, ptr %31, align 8
  %157 = getelementptr inbounds i8, ptr %31, i32 8
  %158 = load i64, ptr %157, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %32, i64 %153, i64 %155, i64 %156, i64 %158)
  %159 = load i64, ptr %32, align 8
  %160 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %159, i64 poison)
  %161 = and i64 %160, 1099511627775
  call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %56, i64 noundef %74, i64 noundef %98, i64 noundef %128, i64 noundef %161)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_sub_mod_264(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 4
  %5 = getelementptr inbounds i8, ptr %1, i32 8
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %1, i32 16
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %1, i32 24
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %1, i32 32
  %12 = load i64, ptr %11, align 4
  %13 = load i64, ptr %2, align 4
  %14 = getelementptr inbounds i8, ptr %2, i32 8
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %2, i32 16
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %2, i32 24
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %2, i32 32
  %21 = load i64, ptr %20, align 4
  %22 = tail call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %4, i64 noundef %13)
  %23 = tail call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %22)
  %24 = sub i64 %4, %13
  %25 = add i64 %24, %23
  %26 = add i64 %22, %15
  %27 = tail call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %6, i64 noundef %26)
  %28 = tail call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %27)
  %29 = sub i64 %6, %26
  %30 = add i64 %29, %28
  %31 = add i64 %27, %17
  %32 = tail call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %8, i64 noundef %31)
  %33 = tail call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %32)
  %34 = sub i64 %8, %31
  %35 = add i64 %34, %33
  %36 = add i64 %32, %19
  %37 = tail call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %10, i64 noundef %36)
  %38 = tail call fastcc i64 @Hacl_Impl_BignumQ_Mul_shiftl_56(i64 noundef %37)
  %39 = sub i64 %10, %36
  %40 = add i64 %39, %38
  %41 = add i64 %37, %21
  %42 = tail call fastcc i64 @Hacl_Impl_BignumQ_Mul_lt(i64 noundef %12, i64 noundef %41)
  %43 = shl nuw nsw i64 %42, 40
  %44 = sub i64 %12, %41
  %45 = add i64 %44, %43
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %25, i64 noundef %30, i64 noundef %35, i64 noundef %40, i64 noundef %45)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_div_248(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i32 32
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %1, i32 40
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %1, i32 48
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %1, i32 56
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %1, i32 64
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 72
  %14 = load i64, ptr %13, align 4
  %15 = shl i64 %6, 32
  %16 = and i64 %15, 72057589742960640
  %17 = lshr i64 %4, 24
  %18 = or i64 %16, %17
  %19 = shl i64 %8, 32
  %20 = and i64 %19, 72057589742960640
  %21 = lshr i64 %6, 24
  %22 = or i64 %20, %21
  %23 = shl i64 %10, 32
  %24 = and i64 %23, 72057589742960640
  %25 = lshr i64 %8, 24
  %26 = or i64 %24, %25
  %27 = shl i64 %12, 32
  %28 = and i64 %27, 72057589742960640
  %29 = lshr i64 %10, 24
  %30 = or i64 %28, %29
  %31 = shl i64 %14, 32
  %32 = and i64 %31, 72057589742960640
  %33 = lshr i64 %12, 24
  %34 = or i64 %32, %33
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %18, i64 noundef %22, i64 noundef %26, i64 noundef %30, i64 noundef %34)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_div_264(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i32 32
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %1, i32 40
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %1, i32 48
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %1, i32 56
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %1, i32 64
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 72
  %14 = load i64, ptr %13, align 4
  %15 = shl i64 %6, 16
  %16 = and i64 %15, 72057594037862400
  %17 = lshr i64 %4, 40
  %18 = or i64 %16, %17
  %19 = shl i64 %8, 16
  %20 = and i64 %19, 72057594037862400
  %21 = lshr i64 %6, 40
  %22 = or i64 %20, %21
  %23 = shl i64 %10, 16
  %24 = and i64 %23, 72057594037862400
  %25 = lshr i64 %8, 40
  %26 = or i64 %24, %25
  %27 = shl i64 %12, 16
  %28 = and i64 %27, 72057594037862400
  %29 = lshr i64 %10, 40
  %30 = or i64 %28, %29
  %31 = shl i64 %14, 16
  %32 = and i64 %31, 72057594037862400
  %33 = lshr i64 %12, 40
  %34 = or i64 %32, %33
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %18, i64 noundef %22, i64 noundef %26, i64 noundef %30, i64 noundef %34)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Lib_Create64_make_h64_10(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10) unnamed_addr #0 {
  store i64 %1, ptr %0, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %2, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %3, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %4, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %5, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 40
  store i64 %6, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 48
  store i64 %7, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 56
  store i64 %8, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 64
  store i64 %9, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 72
  store i64 %10, ptr %20, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Lib_Create128_make_h128_9(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18) unnamed_addr #0 {
  store i64 %1, ptr %0, align 4
  %.sroa.224.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %2, ptr %.sroa.224.0..sroa_idx, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %3, ptr %20, align 4
  %.sroa.222.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %4, ptr %.sroa.222.0..sroa_idx, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %5, ptr %21, align 4
  %.sroa.220.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  store i64 %6, ptr %.sroa.220.0..sroa_idx, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 48
  store i64 %7, ptr %22, align 4
  %.sroa.218.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 56
  store i64 %8, ptr %.sroa.218.0..sroa_idx, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 64
  store i64 %9, ptr %23, align 4
  %.sroa.216.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 72
  store i64 %10, ptr %.sroa.216.0..sroa_idx, align 4
  %24 = getelementptr inbounds i8, ptr %0, i32 80
  store i64 %11, ptr %24, align 4
  %.sroa.214.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 88
  store i64 %12, ptr %.sroa.214.0..sroa_idx, align 4
  %25 = getelementptr inbounds i8, ptr %0, i32 96
  store i64 %13, ptr %25, align 4
  %.sroa.212.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 104
  store i64 %14, ptr %.sroa.212.0..sroa_idx, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 112
  store i64 %15, ptr %26, align 4
  %.sroa.210.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 120
  store i64 %16, ptr %.sroa.210.0..sroa_idx, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 128
  store i64 %17, ptr %27, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 136
  store i64 %18, ptr %.sroa.2.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @load64.38(i64 %.0.val) unnamed_addr #0 {
  ret i64 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @__uint64_identity.39(i64 noundef %0) unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load32.40(i32 %.0.val) unnamed_addr #0 {
  ret i32 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @__uint32_identity.41(i32 noundef %0) unnamed_addr #0 {
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [10 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i32 80, i1 false)
  call fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [64 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Sha512_sha512_pre_pre2_msg(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call fastcc void @Hacl_Impl_Load56_load_64_bytes(ptr noundef %5, ptr noundef nonnull %7)
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction(ptr noundef %0, ptr noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Sha512_sha512_pre_pre2_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_sha512_pre_pre2_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Load56_load_64_bytes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.val55 = load i64, ptr %1, align 1
  %3 = tail call fastcc i64 @load64.38(i64 %.val55)
  %4 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %3)
  %5 = and i64 %4, 72057594037927935
  %6 = getelementptr inbounds i8, ptr %1, i32 7
  %.val54 = load i64, ptr %6, align 1
  %7 = tail call fastcc i64 @load64.38(i64 %.val54)
  %8 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %7)
  %9 = and i64 %8, 72057594037927935
  %10 = getelementptr inbounds i8, ptr %1, i32 14
  %.val53 = load i64, ptr %10, align 1
  %11 = tail call fastcc i64 @load64.38(i64 %.val53)
  %12 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %11)
  %13 = and i64 %12, 72057594037927935
  %14 = getelementptr inbounds i8, ptr %1, i32 21
  %.val52 = load i64, ptr %14, align 1
  %15 = tail call fastcc i64 @load64.38(i64 %.val52)
  %16 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %15)
  %17 = and i64 %16, 72057594037927935
  %18 = getelementptr inbounds i8, ptr %1, i32 28
  %.val51 = load i64, ptr %18, align 1
  %19 = tail call fastcc i64 @load64.38(i64 %.val51)
  %20 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %19)
  %21 = and i64 %20, 72057594037927935
  %22 = getelementptr inbounds i8, ptr %1, i32 35
  %.val50 = load i64, ptr %22, align 1
  %23 = tail call fastcc i64 @load64.38(i64 %.val50)
  %24 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %23)
  %25 = and i64 %24, 72057594037927935
  %26 = getelementptr inbounds i8, ptr %1, i32 42
  %.val49 = load i64, ptr %26, align 1
  %27 = tail call fastcc i64 @load64.38(i64 %.val49)
  %28 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %27)
  %29 = and i64 %28, 72057594037927935
  %30 = getelementptr inbounds i8, ptr %1, i32 49
  %.val48 = load i64, ptr %30, align 1
  %31 = tail call fastcc i64 @load64.38(i64 %.val48)
  %32 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %31)
  %33 = and i64 %32, 72057594037927935
  %34 = getelementptr inbounds i8, ptr %1, i32 56
  %.val = load i64, ptr %34, align 1
  %35 = tail call fastcc i64 @load64.38(i64 %.val)
  %36 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %35)
  %37 = and i64 %36, 72057594037927935
  %38 = getelementptr inbounds i8, ptr %1, i32 63
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i64
  tail call fastcc void @Hacl_Lib_Create64_make_h64_10(ptr noundef %0, i64 noundef %5, i64 noundef %9, i64 noundef %13, i64 noundef %17, i64 noundef %21, i64 noundef %25, i64 noundef %29, i64 noundef %33, i64 noundef %37, i64 noundef %40)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_sha512_pre_pre2_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp ult i32 %4, 65
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_pre2_msg_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %9

8:                                                ; preds = %5
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_pre2_msg_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [128 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %6, i8 0, i32 128, i1 false)
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %7 = add nuw nsw i32 %4, 64
  call fastcc void @Hacl_Impl_SHA2_512_hash(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_pre2_msg_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [128 x i8], align 1
  %7 = getelementptr inbounds i8, ptr %3, i32 64
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %6, i8 0, i32 128, i1 false)
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 64)
  %8 = add i32 %4, -64
  call fastcc void @Hacl_Impl_SHA512_Ed25519_2_hash_block_and_rest(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef %0, ptr noundef %1, i32 noundef 32)
  %6 = getelementptr inbounds i8, ptr %0, i32 32
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 32)
  %7 = getelementptr inbounds i8, ptr %0, i32 64
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef nonnull %7, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_2_hash_block_and_rest(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [169 x i64], align 8
  %6 = lshr i32 %3, 7
  %7 = and i32 %3, 127
  %8 = zext nneg i32 %7 to i64
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(1352) %5, i8 0, i32 1352, i1 false)
  call fastcc void @Hacl_Impl_SHA2_512_init(ptr noundef nonnull %5)
  call fastcc void @Hacl_Impl_SHA2_512_update(ptr noundef nonnull %5, ptr noundef %1)
  call fastcc void @Hacl_Impl_SHA2_512_update_multi(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %6)
  %9 = and i32 %3, -128
  %10 = getelementptr inbounds i8, ptr %2, i32 %9
  call fastcc void @Hacl_Impl_SHA2_512_update_last(ptr noundef nonnull %5, ptr noundef %10, i64 noundef %8)
  call fastcc void @Hacl_Impl_SHA2_512_finish(ptr noundef nonnull %5, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 1344
  %3 = getelementptr inbounds i8, ptr %0, i32 1280
  %4 = getelementptr inbounds i8, ptr %0, i32 128
  %5 = getelementptr inbounds i8, ptr %0, i32 256
  %6 = getelementptr inbounds i8, ptr %0, i32 384
  %7 = getelementptr inbounds i8, ptr %0, i32 512
  %8 = getelementptr inbounds i8, ptr %0, i32 64
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 4794697086780616226, ptr %0, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 8158064640168781261, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 -5349999486874862801, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 -1606136188198331460, ptr %12, align 4
  store i64 4131703408338449720, ptr %9, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 40
  store i64 6480981068601479193, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 48
  store i64 -7908458776815382629, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 56
  store i64 -6116909921290321640, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 96
  store i64 -2880145864133508542, ptr %8, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 72
  store i64 1334009975649890238, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 80
  store i64 2608012711638119052, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 88
  store i64 6128411473006802146, ptr %19, align 4
  store i64 8268148722764581231, ptr %16, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 104
  store i64 -9160688886553864527, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 112
  store i64 -7215885187991268811, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 120
  store i64 -4495734319001033068, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 192
  %24 = getelementptr inbounds i8, ptr %0, i32 160
  store i64 -1973867731355612462, ptr %4, align 4
  %25 = getelementptr inbounds i8, ptr %0, i32 136
  store i64 -1171420211273849373, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 144
  store i64 1135362057144423861, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 152
  store i64 2597628984639134821, ptr %27, align 4
  store i64 3308224258029322869, ptr %24, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 168
  store i64 5365058923640841347, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 176
  store i64 6679025012923562964, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %0, i32 184
  store i64 8573033837759648693, ptr %30, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 224
  store i64 -7476448914759557205, ptr %23, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 200
  store i64 -6327057829258317296, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %0, i32 208
  store i64 -5763719355590565569, ptr %33, align 4
  %34 = getelementptr inbounds i8, ptr %0, i32 216
  store i64 -4658551843659510044, ptr %34, align 4
  store i64 -4116276920077217854, ptr %31, align 4
  %35 = getelementptr inbounds i8, ptr %0, i32 232
  store i64 -3051310485924567259, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %0, i32 240
  store i64 489312712824947311, ptr %36, align 4
  %37 = getelementptr inbounds i8, ptr %0, i32 248
  store i64 1452737877330783856, ptr %37, align 4
  %38 = getelementptr inbounds i8, ptr %0, i32 320
  %39 = getelementptr inbounds i8, ptr %0, i32 288
  store i64 2861767655752347644, ptr %5, align 4
  %40 = getelementptr inbounds i8, ptr %0, i32 264
  store i64 3322285676063803686, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %0, i32 272
  store i64 5560940570517711597, ptr %41, align 4
  %42 = getelementptr inbounds i8, ptr %0, i32 280
  store i64 5996557281743188959, ptr %42, align 4
  store i64 7280758554555802590, ptr %39, align 4
  %43 = getelementptr inbounds i8, ptr %0, i32 296
  store i64 8532644243296465576, ptr %43, align 4
  %44 = getelementptr inbounds i8, ptr %0, i32 304
  store i64 -9096487096722542874, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %0, i32 312
  store i64 -7894198246740708037, ptr %45, align 4
  %46 = getelementptr inbounds i8, ptr %0, i32 352
  store i64 -6719396339535248540, ptr %38, align 4
  %47 = getelementptr inbounds i8, ptr %0, i32 328
  store i64 -6333637450476146687, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %0, i32 336
  store i64 -4446306890439682159, ptr %48, align 4
  %49 = getelementptr inbounds i8, ptr %0, i32 344
  store i64 -4076793802049405392, ptr %49, align 4
  store i64 -3345356375505022440, ptr %46, align 4
  %50 = getelementptr inbounds i8, ptr %0, i32 360
  store i64 -2983346525034927856, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %0, i32 368
  store i64 -860691631967231958, ptr %51, align 4
  %52 = getelementptr inbounds i8, ptr %0, i32 376
  store i64 1182934255886127544, ptr %52, align 4
  %53 = getelementptr inbounds i8, ptr %0, i32 448
  %54 = getelementptr inbounds i8, ptr %0, i32 416
  store i64 1847814050463011016, ptr %6, align 4
  %55 = getelementptr inbounds i8, ptr %0, i32 392
  store i64 2177327727835720531, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %0, i32 400
  store i64 2830643537854262169, ptr %56, align 4
  %57 = getelementptr inbounds i8, ptr %0, i32 408
  store i64 3796741975233480872, ptr %57, align 4
  store i64 4115178125766777443, ptr %54, align 4
  %58 = getelementptr inbounds i8, ptr %0, i32 424
  store i64 5681478168544905931, ptr %58, align 4
  %59 = getelementptr inbounds i8, ptr %0, i32 432
  store i64 6601373596472566643, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %0, i32 440
  store i64 7507060721942968483, ptr %60, align 4
  %61 = getelementptr inbounds i8, ptr %0, i32 480
  store i64 8399075790359081724, ptr %53, align 4
  %62 = getelementptr inbounds i8, ptr %0, i32 456
  store i64 8693463985226723168, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %0, i32 464
  store i64 -8878714635349349518, ptr %63, align 4
  %64 = getelementptr inbounds i8, ptr %0, i32 472
  store i64 -8302665154208450068, ptr %64, align 4
  store i64 -8016688836872298968, ptr %61, align 4
  %65 = getelementptr inbounds i8, ptr %0, i32 488
  store i64 -6606660893046293015, ptr %65, align 4
  %66 = getelementptr inbounds i8, ptr %0, i32 496
  store i64 -4685533653050689259, ptr %66, align 4
  %67 = getelementptr inbounds i8, ptr %0, i32 504
  store i64 -4147400797238176981, ptr %67, align 4
  %68 = getelementptr inbounds i8, ptr %0, i32 576
  %69 = getelementptr inbounds i8, ptr %0, i32 544
  store i64 -3880063495543823972, ptr %7, align 4
  %70 = getelementptr inbounds i8, ptr %0, i32 520
  store i64 -3348786107499101689, ptr %70, align 4
  %71 = getelementptr inbounds i8, ptr %0, i32 528
  store i64 -1523767162380948706, ptr %71, align 4
  %72 = getelementptr inbounds i8, ptr %0, i32 536
  store i64 -757361751448694408, ptr %72, align 4
  store i64 500013540394364858, ptr %69, align 4
  %73 = getelementptr inbounds i8, ptr %0, i32 552
  store i64 748580250866718886, ptr %73, align 4
  %74 = getelementptr inbounds i8, ptr %0, i32 560
  store i64 1242879168328830382, ptr %74, align 4
  %75 = getelementptr inbounds i8, ptr %0, i32 568
  store i64 1977374033974150939, ptr %75, align 4
  %76 = getelementptr inbounds i8, ptr %0, i32 608
  store i64 2944078676154940804, ptr %68, align 4
  %77 = getelementptr inbounds i8, ptr %0, i32 584
  store i64 3659926193048069267, ptr %77, align 4
  %78 = getelementptr inbounds i8, ptr %0, i32 592
  store i64 4368137639120453308, ptr %78, align 4
  %79 = getelementptr inbounds i8, ptr %0, i32 600
  store i64 4836135668995329356, ptr %79, align 4
  store i64 5532061633213252278, ptr %76, align 4
  %80 = getelementptr inbounds i8, ptr %0, i32 616
  store i64 6448918945643986474, ptr %80, align 4
  %81 = getelementptr inbounds i8, ptr %0, i32 624
  store i64 6902733635092675308, ptr %81, align 4
  %82 = getelementptr inbounds i8, ptr %0, i32 632
  store i64 7801388544844847127, ptr %82, align 4
  %83 = getelementptr inbounds i8, ptr %0, i32 1312
  store i64 7640891576956012808, ptr %3, align 4
  %84 = getelementptr inbounds i8, ptr %0, i32 1288
  store i64 -4942790177534073029, ptr %84, align 4
  %85 = getelementptr inbounds i8, ptr %0, i32 1296
  store i64 4354685564936845355, ptr %85, align 4
  %86 = getelementptr inbounds i8, ptr %0, i32 1304
  store i64 -6534734903238641935, ptr %86, align 4
  store i64 5840696475078001361, ptr %83, align 4
  %87 = getelementptr inbounds i8, ptr %0, i32 1320
  store i64 -7276294671716946913, ptr %87, align 4
  %88 = getelementptr inbounds i8, ptr %0, i32 1328
  store i64 2270897969802886507, ptr %88, align 4
  %89 = getelementptr inbounds i8, ptr %0, i32 1336
  store i64 6620516959819538809, ptr %89, align 4
  store i64 0, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
.preheader106.preheader:
  %2 = alloca [16 x i64], align 8
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %2, i32 16
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %2, i32 24
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %2, i32 32
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %2, i32 40
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %2, i32 48
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %2, i32 56
  store i64 0, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %2, i32 64
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %2, i32 72
  store i64 0, ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %2, i32 80
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %2, i32 88
  store i64 0, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %2, i32 96
  store i64 0, ptr %14, align 8
  %15 = getelementptr inbounds i8, ptr %2, i32 104
  store i64 0, ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %2, i32 112
  store i64 0, ptr %16, align 8
  %17 = getelementptr inbounds i8, ptr %2, i32 120
  store i64 0, ptr %17, align 8
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(ptr noundef nonnull %2, ptr noundef %1)
  %18 = getelementptr inbounds i8, ptr %0, i32 1280
  %19 = getelementptr inbounds i8, ptr %0, i32 640
  %20 = load i64, ptr %2, align 8
  store i64 %20, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %2, i32 8
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds i8, ptr %0, i32 648
  store i64 %22, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %2, i32 16
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr %0, i32 656
  store i64 %25, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %2, i32 24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %0, i32 664
  store i64 %28, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %2, i32 32
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds i8, ptr %0, i32 672
  store i64 %31, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %2, i32 40
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds i8, ptr %0, i32 680
  store i64 %34, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %2, i32 48
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds i8, ptr %0, i32 688
  store i64 %37, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %2, i32 56
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds i8, ptr %0, i32 696
  store i64 %40, ptr %41, align 4
  %42 = getelementptr inbounds i8, ptr %2, i32 64
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds i8, ptr %0, i32 704
  store i64 %43, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %2, i32 72
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr %0, i32 712
  store i64 %46, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %2, i32 80
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds i8, ptr %0, i32 720
  store i64 %49, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %2, i32 88
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds i8, ptr %0, i32 728
  store i64 %52, ptr %53, align 4
  %54 = getelementptr inbounds i8, ptr %2, i32 96
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds i8, ptr %0, i32 736
  store i64 %55, ptr %56, align 4
  %57 = getelementptr inbounds i8, ptr %2, i32 104
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr %0, i32 744
  store i64 %58, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %2, i32 112
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds i8, ptr %0, i32 752
  store i64 %61, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %2, i32 120
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds i8, ptr %0, i32 760
  store i64 %64, ptr %65, align 4
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106.preheader, %67
  %.0103 = phi i32 [ %90, %67 ], [ 16, %.preheader106.preheader ]
  %66 = icmp ult i32 %.0103, 80
  br i1 %66, label %67, label %91

67:                                               ; preds = %.preheader106
  %68 = getelementptr i64, ptr %19, i32 %.0103
  %69 = getelementptr i8, ptr %68, i32 -128
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr i8, ptr %68, i32 -120
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr i8, ptr %68, i32 -56
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr i8, ptr %68, i32 -16
  %76 = load i64, ptr %75, align 4
  %77 = call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 45)
  %78 = call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 3)
  %79 = lshr i64 %76, 6
  %80 = xor i64 %78, %79
  %81 = xor i64 %80, %77
  %82 = call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 63)
  %83 = call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 56)
  %84 = lshr i64 %72, 7
  %85 = xor i64 %83, %84
  %86 = xor i64 %85, %82
  %87 = add i64 %74, %70
  %88 = add i64 %87, %86
  %89 = add i64 %88, %81
  store i64 %89, ptr %68, align 4
  %90 = add nuw nsw i32 %.0103, 1
  br label %.preheader106, !llvm.loop !15

91:                                               ; preds = %.preheader106
  %.sroa.0.0.copyload = load i64, ptr %18, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1288
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1296
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1304
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1312
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1320
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1328
  %.sroa.19.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1336
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 4
  br label %92

92:                                               ; preds = %94, %91
  %.sroa.22.0 = phi i64 [ %.sroa.22.0.copyload, %91 ], [ %.sroa.19.0, %94 ]
  %.sroa.19.0 = phi i64 [ %.sroa.19.0.copyload, %91 ], [ %.sroa.16.0, %94 ]
  %.sroa.16.0 = phi i64 [ %.sroa.16.0.copyload, %91 ], [ %.sroa.13.0, %94 ]
  %.sroa.13.0 = phi i64 [ %.sroa.13.0.copyload, %91 ], [ %123, %94 ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload, %91 ], [ %.sroa.7.0, %94 ]
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %91 ], [ %.sroa.4.0, %94 ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload, %91 ], [ %.sroa.0.0, %94 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %91 ], [ %122, %94 ]
  %.0104 = phi i32 [ 0, %91 ], [ %124, %94 ]
  %93 = icmp ult i32 %.0104, 80
  br i1 %93, label %94, label %.preheader.1

94:                                               ; preds = %92
  %95 = getelementptr inbounds i64, ptr %0, i32 %.0104
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds i64, ptr %19, i32 %.0104
  %98 = load i64, ptr %97, align 4
  %99 = call i64 @llvm.fshl.i64(i64 %.sroa.13.0, i64 %.sroa.13.0, i64 50)
  %100 = call i64 @llvm.fshl.i64(i64 %.sroa.13.0, i64 %.sroa.13.0, i64 46)
  %101 = call i64 @llvm.fshl.i64(i64 %.sroa.13.0, i64 %.sroa.13.0, i64 23)
  %102 = xor i64 %100, %101
  %103 = xor i64 %102, %99
  %104 = add i64 %.sroa.22.0, %103
  %105 = and i64 %.sroa.16.0, %.sroa.13.0
  %106 = xor i64 %.sroa.13.0, -1
  %107 = and i64 %.sroa.19.0, %106
  %108 = or i64 %107, %105
  %109 = add i64 %104, %108
  %110 = add i64 %109, %96
  %111 = add i64 %110, %98
  %112 = call i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 36)
  %113 = call i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 30)
  %114 = call i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 25)
  %115 = xor i64 %113, %114
  %116 = xor i64 %115, %112
  %117 = and i64 %.sroa.4.0, %.sroa.0.0
  %118 = xor i64 %.sroa.4.0, %.sroa.0.0
  %119 = and i64 %118, %.sroa.7.0
  %120 = xor i64 %119, %117
  %121 = add i64 %120, %116
  %122 = add i64 %121, %111
  %123 = add i64 %111, %.sroa.10.0
  %124 = add nuw nsw i32 %.0104, 1
  br label %92, !llvm.loop !16

.preheader.1:                                     ; preds = %92
  %125 = load i64, ptr %18, align 4
  %126 = add i64 %.sroa.0.0, %125
  store i64 %126, ptr %18, align 4
  %127 = getelementptr inbounds i8, ptr %0, i32 1288
  %128 = load i64, ptr %127, align 4
  %129 = add i64 %.sroa.4.0, %128
  store i64 %129, ptr %127, align 4
  %130 = getelementptr inbounds i8, ptr %0, i32 1296
  %131 = load i64, ptr %130, align 4
  %132 = add i64 %.sroa.7.0, %131
  store i64 %132, ptr %130, align 4
  %133 = getelementptr inbounds i8, ptr %0, i32 1304
  %134 = load i64, ptr %133, align 4
  %135 = add i64 %.sroa.10.0, %134
  store i64 %135, ptr %133, align 4
  %136 = getelementptr inbounds i8, ptr %0, i32 1312
  %137 = load i64, ptr %136, align 4
  %138 = add i64 %.sroa.13.0, %137
  store i64 %138, ptr %136, align 4
  %139 = getelementptr inbounds i8, ptr %0, i32 1320
  %140 = load i64, ptr %139, align 4
  %141 = add i64 %.sroa.16.0, %140
  store i64 %141, ptr %139, align 4
  %142 = getelementptr inbounds i8, ptr %0, i32 1328
  %143 = load i64, ptr %142, align 4
  %144 = add i64 %.sroa.19.0, %143
  store i64 %144, ptr %142, align 4
  %145 = getelementptr inbounds i8, ptr %0, i32 1336
  %146 = load i64, ptr %145, align 4
  %147 = add i64 %.sroa.22.0, %146
  store i64 %147, ptr %145, align 4
  %148 = getelementptr inbounds i8, ptr %0, i32 1344
  %149 = load i64, ptr %148, align 4
  %150 = add i64 %149, 1
  store i64 %150, ptr %148, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %5 = icmp ult i32 %.0, %2
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = shl nuw i32 %.0, 7
  %8 = getelementptr inbounds i8, ptr %1, i32 %7
  tail call fastcc void @Hacl_Impl_SHA2_512_update(ptr noundef %0, ptr noundef %8)
  %9 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !17

10:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update_last(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 0, i32 256, i1 false)
  %9 = icmp ult i64 %2, 112
  %. = select i1 %9, i32 1, i32 2
  %.018.idx.sroa.sel.idx.sroa.sel.idx = select i1 %9, i32 128, i32 0
  %.018.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %4, i32 %.018.idx.sroa.sel.idx.sroa.sel.idx
  %10 = trunc nuw nsw i64 %2 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %.018.idx.sroa.sel.idx.sroa.sel, ptr align 1 %1, i32 %10, i1 false)
  %11 = getelementptr inbounds i8, ptr %0, i32 1344
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %.018.idx.sroa.sel.idx.sroa.sel, i32 %10
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %12, i64 noundef 128)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %2)
  %14 = load i64, ptr %7, align 8
  %15 = getelementptr inbounds i8, ptr %7, i32 8
  %16 = load i64, ptr %15, align 8
  %17 = load i64, ptr %8, align 8
  %18 = getelementptr inbounds i8, ptr %8, i32 8
  %19 = load i64, ptr %18, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %14, i64 %16, i64 %17, i64 %19)
  %20 = load i64, ptr %6, align 8
  %21 = getelementptr inbounds i8, ptr %6, i32 8
  %22 = load i64, ptr %21, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %20, i64 %22, i32 noundef 3)
  %23 = sub i32 111, %10
  %24 = and i32 %23, 127
  %25 = getelementptr inbounds i8, ptr %13, i32 1
  %26 = getelementptr inbounds i8, ptr %25, i32 %24
  store i8 -128, ptr %13, align 1
  %27 = load i64, ptr %5, align 8
  %28 = getelementptr inbounds i8, ptr %5, i32 8
  %29 = load i64, ptr %28, align 8
  call fastcc void @store128_be(ptr noundef nonnull %26, i64 %27, i64 %29)
  call fastcc void @Hacl_Impl_SHA2_512_update_multi(ptr noundef %0, ptr noundef nonnull %.018.idx.sroa.sel.idx.sroa.sel, i32 noundef %.)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_finish(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i32 1280
  tail call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(ptr noundef %1, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = tail call fastcc i64 @__bswap_64(i64 noundef %3)
  tail call fastcc void @store64.42(ptr noundef %0, i64 noundef %4)
  %5 = getelementptr inbounds i8, ptr %1, i32 8
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = tail call fastcc i64 @__bswap_64(i64 noundef %6)
  tail call fastcc void @store64.42(ptr noundef nonnull %7, i64 noundef %8)
  %9 = getelementptr inbounds i8, ptr %1, i32 16
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 16
  %12 = tail call fastcc i64 @__bswap_64(i64 noundef %10)
  tail call fastcc void @store64.42(ptr noundef nonnull %11, i64 noundef %12)
  %13 = getelementptr inbounds i8, ptr %1, i32 24
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 24
  %16 = tail call fastcc i64 @__bswap_64(i64 noundef %14)
  tail call fastcc void @store64.42(ptr noundef nonnull %15, i64 noundef %16)
  %17 = getelementptr inbounds i8, ptr %1, i32 32
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 32
  %20 = tail call fastcc i64 @__bswap_64(i64 noundef %18)
  tail call fastcc void @store64.42(ptr noundef nonnull %19, i64 noundef %20)
  %21 = getelementptr inbounds i8, ptr %1, i32 40
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 40
  %24 = tail call fastcc i64 @__bswap_64(i64 noundef %22)
  tail call fastcc void @store64.42(ptr noundef nonnull %23, i64 noundef %24)
  %25 = getelementptr inbounds i8, ptr %1, i32 48
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 48
  %28 = tail call fastcc i64 @__bswap_64(i64 noundef %26)
  tail call fastcc void @store64.42(ptr noundef nonnull %27, i64 noundef %28)
  %29 = getelementptr inbounds i8, ptr %1, i32 56
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 56
  %32 = tail call fastcc i64 @__bswap_64(i64 noundef %30)
  tail call fastcc void @store64.42(ptr noundef nonnull %31, i64 noundef %32)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @__bswap_64(i64 noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store64.42(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_be(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 %2, ptr %5, align 8
  call fastcc void @store128_be_(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_be_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = tail call fastcc i64 @__bswap_64(i64 noundef %4)
  tail call fastcc void @store64.42(ptr noundef %0, i64 noundef %5)
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  %7 = load i64, ptr %1, align 4
  %8 = tail call fastcc i64 @__bswap_64(i64 noundef %7)
  tail call fastcc void @store64.42(ptr noundef nonnull %6, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %4 = icmp ult i32 %.0, 16
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = shl nuw nsw i32 %.0, 3
  %7 = getelementptr inbounds i8, ptr %1, i32 %6
  %.val = load i64, ptr %7, align 1
  %8 = tail call fastcc i64 @load64.38(i64 %.val)
  %9 = tail call fastcc i64 @__bswap_64(i64 noundef %8)
  %10 = getelementptr inbounds i64, ptr %0, i32 %.0
  store i64 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !18

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %1, i32 %2, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [169 x i64], align 8
  br label %5

5:                                                ; preds = %7, %3
  %.0 = phi i32 [ 0, %3 ], [ %9, %7 ]
  %6 = icmp ult i32 %.0, 169
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = getelementptr inbounds [169 x i64], ptr %4, i32 0, i32 %.0
  store i64 0, ptr %8, align 8
  %9 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !19

10:                                               ; preds = %5
  %11 = lshr i32 %2, 7
  %12 = and i32 %2, 127
  %13 = and i32 %2, -128
  %14 = getelementptr inbounds i8, ptr %1, i32 %13
  call fastcc void @Hacl_Impl_SHA2_512_init(ptr noundef nonnull %4)
  call fastcc void @Hacl_Impl_SHA2_512_update_multi(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %11)
  %15 = zext nneg i32 %12 to i64
  call fastcc void @Hacl_Impl_SHA2_512_update_last(ptr noundef nonnull %4, ptr noundef %14, i64 noundef %15)
  call fastcc void @Hacl_Impl_SHA2_512_finish(ptr noundef nonnull %4, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Sign_Steps_point_mul_g(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i32 160, i1 false)
  call fastcc void @Hacl_Impl_Ed25519_G_make_g(ptr noundef nonnull %3)
  call fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointCompress_point_compress(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [15 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i32 120, i1 false)
  %4 = getelementptr inbounds i8, ptr %3, i32 40
  %5 = getelementptr inbounds i8, ptr %3, i32 80
  %6 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %1)
  %7 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %1)
  %8 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %1)
  call fastcc void @Hacl_Bignum25519_inverse(ptr noundef nonnull %3, ptr noundef %8)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %3)
  call fastcc void @Hacl_Bignum25519_reduce(ptr noundef nonnull %4)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef nonnull %5, ptr noundef %7, ptr noundef nonnull %3)
  call fastcc void @Hacl_Bignum25519_reduce(ptr noundef nonnull %5)
  %.val = load i64, ptr %4, align 8
  %9 = call fastcc i64 @Hacl_Impl_Ed25519_PointCompress_x_mod_2(i64 %.val)
  call fastcc void @Hacl_Impl_Store51_store_51_(ptr noundef %0, ptr noundef nonnull %5)
  %10 = trunc nuw nsw i64 %9 to i8
  %11 = getelementptr inbounds i8, ptr %0, i32 31
  %12 = load i8, ptr %11, align 1
  %13 = shl nuw i8 %10, 7
  %14 = add i8 %13, %12
  store i8 %14, ptr %11, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0) unnamed_addr #0 {
  ret ptr %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 40
  ret ptr %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 80
  ret ptr %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_inverse(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_Crecip_crecip.58(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_fmul(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_fmul.51(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_reduce(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_EC_Format_reduce(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @Hacl_Impl_Ed25519_PointCompress_x_mod_2(i64 %.0.val) unnamed_addr #0 {
  %1 = and i64 %.0.val, 1
  ret i64 %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Store51_store_51_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 8
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %1, i32 16
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 24
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %1, i32 32
  %11 = load i64, ptr %10, align 4
  %12 = shl i64 %5, 51
  %13 = or i64 %12, %3
  %14 = shl i64 %7, 38
  %15 = lshr i64 %5, 13
  %16 = or i64 %14, %15
  %17 = shl i64 %9, 25
  %18 = lshr i64 %7, 26
  %19 = or i64 %17, %18
  %20 = shl i64 %11, 12
  %21 = lshr i64 %9, 39
  %22 = or i64 %20, %21
  %23 = getelementptr inbounds i8, ptr %0, i32 8
  %24 = getelementptr inbounds i8, ptr %0, i32 16
  %25 = getelementptr inbounds i8, ptr %0, i32 24
  %26 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %13)
  tail call fastcc void @store64.42(ptr noundef %0, i64 noundef %26)
  %27 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %16)
  tail call fastcc void @store64.42(ptr noundef nonnull %23, i64 noundef %27)
  %28 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %19)
  tail call fastcc void @store64.42(ptr noundef nonnull %24, i64 noundef %28)
  %29 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %22)
  tail call fastcc void @store64.42(ptr noundef nonnull %25, i64 noundef %29)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_reduce(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_EC_Format_fcontract_first_carry_full.43(ptr noundef %0)
  tail call fastcc void @Hacl_EC_Format_fcontract_second_carry_full.44(ptr noundef %0)
  tail call fastcc void @Hacl_EC_Format_fcontract_trim.45(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_first_carry_full.43(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_EC_Format_fcontract_first_carry_pass.50(ptr noundef %0)
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top.49(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_second_carry_full.44(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_EC_Format_fcontract_second_carry_pass.48(ptr noundef %0)
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top.49(ptr noundef %0)
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = and i64 %2, 2251799813685247
  %6 = lshr i64 %2, 51
  %7 = add i64 %4, %6
  store i64 %5, ptr %0, align 4
  store i64 %7, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_trim.45(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  %10 = load i64, ptr %9, align 4
  %11 = tail call fastcc i64 @FStar_UInt64_gte_mask.46(i64 noundef %2)
  %12 = tail call fastcc i64 @FStar_UInt64_eq_mask.47(i64 noundef %4)
  %13 = tail call fastcc i64 @FStar_UInt64_eq_mask.47(i64 noundef %6)
  %14 = tail call fastcc i64 @FStar_UInt64_eq_mask.47(i64 noundef %8)
  %15 = tail call fastcc i64 @FStar_UInt64_eq_mask.47(i64 noundef %10)
  %16 = and i64 %12, %11
  %17 = and i64 %16, %13
  %18 = and i64 %17, %14
  %19 = and i64 %18, %15
  %20 = and i64 %19, 2251799813685229
  %21 = sub i64 %2, %20
  %22 = and i64 %19, 2251799813685247
  %23 = sub i64 %4, %22
  %24 = sub i64 %6, %22
  %25 = sub i64 %8, %22
  %26 = sub i64 %10, %22
  store i64 %21, ptr %0, align 4
  store i64 %23, ptr %3, align 4
  store i64 %24, ptr %5, align 4
  store i64 %25, ptr %7, align 4
  store i64 %26, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @FStar_UInt64_gte_mask.46(i64 noundef %0) unnamed_addr #0 {
  %2 = and i64 %0, 9223372036854775807
  %isnotneg = icmp ugt i64 %2, 2251799813685228
  %isnotneg6 = icmp sgt i64 %0, -1
  %3 = and i1 %isnotneg6, %isnotneg
  %4 = sext i1 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 -1, 1) i64 @FStar_UInt64_eq_mask.47(i64 noundef %0) unnamed_addr #0 {
  %2 = xor i64 %0, -2251799813685248
  %3 = shl i64 %0, 32
  %4 = and i64 %2, %3
  %5 = shl i64 %4, 16
  %6 = and i64 %5, %4
  %7 = shl i64 %6, 8
  %8 = and i64 %7, %6
  %9 = shl i64 %8, 4
  %10 = and i64 %9, %8
  %11 = shl i64 %10, 2
  %12 = and i64 %11, %10
  %13 = shl i64 %12, 1
  %14 = and i64 %13, %12
  %15 = ashr i64 %14, 63
  ret i64 %15
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_second_carry_pass.48(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  %10 = load i64, ptr %9, align 4
  %11 = lshr i64 %2, 51
  %12 = add i64 %4, %11
  %13 = and i64 %2, 2251799813685247
  %14 = lshr i64 %12, 51
  %15 = add i64 %14, %6
  %16 = and i64 %12, 2251799813685247
  %17 = lshr i64 %15, 51
  %18 = add i64 %17, %8
  %19 = and i64 %15, 2251799813685247
  %20 = lshr i64 %18, 51
  %21 = add i64 %20, %10
  %22 = and i64 %18, 2251799813685247
  store i64 %13, ptr %0, align 4
  store i64 %16, ptr %3, align 4
  store i64 %19, ptr %5, align 4
  store i64 %22, ptr %7, align 4
  store i64 %21, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_carry_top.49(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 32
  %3 = load i64, ptr %2, align 4
  %4 = load i64, ptr %0, align 4
  %5 = and i64 %3, 2251799813685247
  %6 = lshr i64 %3, 51
  %7 = mul nuw nsw i64 %6, 19
  %8 = add i64 %7, %4
  store i64 %5, ptr %2, align 4
  store i64 %8, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fcontract_first_carry_pass.50(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  %10 = load i64, ptr %9, align 4
  %11 = lshr i64 %2, 51
  %12 = add i64 %4, %11
  %13 = and i64 %2, 2251799813685247
  %14 = lshr i64 %12, 51
  %15 = add i64 %14, %6
  %16 = and i64 %12, 2251799813685247
  %17 = lshr i64 %15, 51
  %18 = add i64 %17, %8
  %19 = and i64 %15, 2251799813685247
  %20 = lshr i64 %18, 51
  %21 = add i64 %20, %10
  %22 = and i64 %18, 2251799813685247
  store i64 %13, ptr %0, align 4
  store i64 %16, ptr %3, align 4
  store i64 %19, ptr %5, align 4
  store i64 %22, ptr %7, align 4
  store i64 %21, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_fmul.51(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [5 x i64], align 8
  %5 = alloca [5 x %struct.FStar_UInt128_uint128], align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(40) %1, i32 40, i1 false)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %12 = getelementptr inbounds i8, ptr %5, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %13 = getelementptr inbounds i8, ptr %5, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %14 = getelementptr inbounds i8, ptr %5, i32 48
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %15 = getelementptr inbounds i8, ptr %5, i32 64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_.53(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2)
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_.54(ptr noundef nonnull %5)
  %16 = getelementptr inbounds i8, ptr %5, i32 64
  %.sroa.05.0.copyload = load i64, ptr %16, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 72
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.0.0.copyload = load i64, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 2251799813685247)
  %17 = load i64, ptr %8, align 8
  %18 = getelementptr inbounds i8, ptr %8, i32 8
  %19 = load i64, ptr %18, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %.sroa.05.0.copyload, i64 %.sroa.3.0.copyload, i64 %17, i64 %19)
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %.sroa.05.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 51)
  %20 = load i64, ptr %11, align 8
  %21 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %20, i64 poison)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 19, i64 noundef %21)
  %22 = load i64, ptr %10, align 8
  %23 = getelementptr inbounds i8, ptr %10, i32 8
  %24 = load i64, ptr %23, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %22, i64 %24)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.55(ptr noundef %0, ptr noundef nonnull %5)
  %25 = load i64, ptr %0, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 8
  %27 = load i64, ptr %26, align 4
  %28 = and i64 %25, 2251799813685247
  %29 = lshr i64 %25, 51
  %30 = add i64 %27, %29
  store i64 %28, ptr %0, align 4
  store i64 %30, ptr %26, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_.53(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %2, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.56(ptr noundef %0, ptr noundef %1, i64 noundef %4)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.57(ptr noundef %1)
  %5 = getelementptr inbounds i8, ptr %2, i32 8
  %6 = load i64, ptr %5, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.56(ptr noundef %0, ptr noundef %1, i64 noundef %6)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.57(ptr noundef %1)
  %7 = getelementptr inbounds i8, ptr %2, i32 16
  %8 = load i64, ptr %7, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.56(ptr noundef %0, ptr noundef %1, i64 noundef %8)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.57(ptr noundef %1)
  %9 = getelementptr inbounds i8, ptr %2, i32 24
  %10 = load i64, ptr %9, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.56(ptr noundef %0, ptr noundef %1, i64 noundef %10)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.57(ptr noundef %1)
  %11 = getelementptr inbounds i8, ptr %2, i32 32
  %12 = load i64, ptr %11, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.56(ptr noundef %0, ptr noundef %1, i64 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_.54(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 8
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 4
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 4
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %.sroa.033.0.copyload = load i64, ptr %0, align 4
  %.sroa.335.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.335.0.copyload = load i64, ptr %.sroa.335.0..sroa_idx, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.031.0.copyload = load i64, ptr %14, align 4
  %.sroa.232.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.232.0.copyload = load i64, ptr %.sroa.232.0..sroa_idx, align 4
  %15 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.033.0.copyload, i64 poison)
  %16 = and i64 %15, 2251799813685247
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %.sroa.033.0.copyload, i64 %.sroa.335.0.copyload, i32 noundef 51)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %16)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  %17 = load i64, ptr %2, align 8
  %18 = getelementptr inbounds i8, ptr %2, i32 8
  %19 = load i64, ptr %18, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.031.0.copyload, i64 %.sroa.232.0.copyload, i64 %17, i64 %19)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %.sroa.022.0.copyload = load i64, ptr %14, align 4
  %.sroa.324.0.copyload = load i64, ptr %.sroa.232.0..sroa_idx, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.020.0.copyload = load i64, ptr %20, align 4
  %.sroa.221.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.221.0.copyload = load i64, ptr %.sroa.221.0..sroa_idx, align 4
  %21 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.022.0.copyload, i64 poison)
  %22 = and i64 %21, 2251799813685247
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %.sroa.022.0.copyload, i64 %.sroa.324.0.copyload, i32 noundef 51)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %22)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %23 = load i64, ptr %5, align 8
  %24 = getelementptr inbounds i8, ptr %5, i32 8
  %25 = load i64, ptr %24, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %.sroa.020.0.copyload, i64 %.sroa.221.0.copyload, i64 %23, i64 %25)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  %.sroa.011.0.copyload = load i64, ptr %20, align 4
  %.sroa.313.0.copyload = load i64, ptr %.sroa.221.0..sroa_idx, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 48
  %.sroa.09.0.copyload = load i64, ptr %26, align 4
  %.sroa.210.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 56
  %.sroa.210.0.copyload = load i64, ptr %.sroa.210.0..sroa_idx, align 4
  %27 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.011.0.copyload, i64 poison)
  %28 = and i64 %27, 2251799813685247
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %.sroa.011.0.copyload, i64 %.sroa.313.0.copyload, i32 noundef 51)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %28)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false)
  %29 = load i64, ptr %8, align 8
  %30 = getelementptr inbounds i8, ptr %8, i32 8
  %31 = load i64, ptr %30, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %.sroa.09.0.copyload, i64 %.sroa.210.0.copyload, i64 %29, i64 %31)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 16, i1 false)
  %.sroa.01.0.copyload = load i64, ptr %26, align 4
  %.sroa.3.0.copyload = load i64, ptr %.sroa.210.0..sroa_idx, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 64
  %.sroa.0.0.copyload = load i64, ptr %32, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 72
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %33 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.01.0.copyload, i64 poison)
  %34 = and i64 %33, 2251799813685247
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %.sroa.01.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 51)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %34)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %12, i32 16, i1 false)
  %35 = load i64, ptr %11, align 8
  %36 = getelementptr inbounds i8, ptr %11, i32 8
  %37 = load i64, ptr %36, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %35, i64 %37)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %32, ptr noundef nonnull align 4 dereferenceable(16) %13, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.55(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.sroa.07.0.copyload = load i64, ptr %1, align 4
  %3 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.07.0.copyload, i64 poison)
  store i64 %3, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 16
  %.sroa.05.0.copyload = load i64, ptr %4, align 4
  %5 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.05.0.copyload, i64 poison)
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %5, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %1, i32 32
  %.sroa.03.0.copyload = load i64, ptr %7, align 4
  %8 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.03.0.copyload, i64 poison)
  %9 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %8, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %1, i32 48
  %.sroa.01.0.copyload = load i64, ptr %10, align 4
  %11 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.01.0.copyload, i64 poison)
  %12 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %11, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 64
  %.sroa.0.0.copyload = load i64, ptr %13, align 4
  %14 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.0.0.copyload, i64 poison)
  %15 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %14, ptr %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.56(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 4
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 4
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %.sroa.011.0.copyload = load i64, ptr %0, align 4
  %.sroa.212.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 4
  %14 = load i64, ptr %1, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %14, i64 noundef %2)
  %15 = load i64, ptr %5, align 8
  %16 = getelementptr inbounds i8, ptr %5, i32 8
  %17 = load i64, ptr %16, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.011.0.copyload, i64 %.sroa.212.0.copyload, i64 %15, i64 %17)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %18 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.08.0.copyload = load i64, ptr %18, align 4
  %.sroa.29.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 4
  %19 = getelementptr inbounds i8, ptr %1, i32 8
  %20 = load i64, ptr %19, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %20, i64 noundef %2)
  %21 = load i64, ptr %7, align 8
  %22 = getelementptr inbounds i8, ptr %7, i32 8
  %23 = load i64, ptr %22, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, i64 %21, i64 %23)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %24 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.05.0.copyload = load i64, ptr %24, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 4
  %25 = getelementptr inbounds i8, ptr %1, i32 16
  %26 = load i64, ptr %25, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %26, i64 noundef %2)
  %27 = load i64, ptr %9, align 8
  %28 = getelementptr inbounds i8, ptr %9, i32 8
  %29 = load i64, ptr %28, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload, i64 %27, i64 %29)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 16, i1 false)
  %30 = getelementptr inbounds i8, ptr %0, i32 48
  %.sroa.02.0.copyload = load i64, ptr %30, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 56
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 4
  %31 = getelementptr inbounds i8, ptr %1, i32 24
  %32 = load i64, ptr %31, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %32, i64 noundef %2)
  %33 = load i64, ptr %11, align 8
  %34 = getelementptr inbounds i8, ptr %11, i32 8
  %35 = load i64, ptr %34, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, i64 %33, i64 %35)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 16, i1 false)
  %36 = getelementptr inbounds i8, ptr %0, i32 64
  %.sroa.0.0.copyload = load i64, ptr %36, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 72
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %37 = getelementptr inbounds i8, ptr %1, i32 32
  %38 = load i64, ptr %37, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %38, i64 noundef %2)
  %39 = load i64, ptr %13, align 8
  %40 = getelementptr inbounds i8, ptr %13, i32 8
  %41 = load i64, ptr %40, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %39, i64 %41)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %36, ptr noundef nonnull align 4 dereferenceable(16) %12, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_shift_reduce.57(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 32
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 24
  %5 = load i64, ptr %4, align 4
  store i64 %5, ptr %2, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 16
  %7 = load i64, ptr %6, align 4
  store i64 %7, ptr %4, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 8
  %9 = load i64, ptr %8, align 4
  store i64 %9, ptr %6, align 4
  %10 = load i64, ptr %0, align 4
  store i64 %10, ptr %8, align 4
  %11 = mul i64 %3, 19
  store i64 %11, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Crecip_crecip.58(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i32 160, i1 false)
  %4 = getelementptr inbounds i8, ptr %3, i32 40
  %5 = getelementptr inbounds i8, ptr %3, i32 80
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 1)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %1)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %3)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 5)
  %6 = getelementptr inbounds i8, ptr %3, i32 120
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 10)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 20)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %6)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace.60(ptr noundef nonnull %4, i32 noundef 10)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 50)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 100)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %6)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace.60(ptr noundef nonnull %4, i32 noundef 50)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace.60(ptr noundef nonnull %4, i32 noundef 5)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %6 = getelementptr inbounds i8, ptr %4, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %4, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %4, i32 48
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %9 = getelementptr inbounds i8, ptr %4, i32 64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(40) %1, i32 40, i1 false)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_.61(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace.60(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %5 = getelementptr inbounds i8, ptr %3, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %6 = getelementptr inbounds i8, ptr %3, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %3, i32 48
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %3, i32 64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_.61(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_times_.61(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_Fsquare_fsquare_.62(ptr noundef %1, ptr noundef %0)
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 1, %3 ], [ %7, %6 ]
  %5 = icmp ult i32 %.0, %2
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call fastcc void @Hacl_Bignum_Fsquare_fsquare_.62(ptr noundef %1, ptr noundef %0)
  %7 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !20

8:                                                ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare_.62(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  tail call fastcc void @Hacl_Bignum_Fsquare_fsquare__.63(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @Hacl_Bignum_Fproduct_carry_wide_.54(ptr noundef %0)
  %8 = getelementptr inbounds i8, ptr %0, i32 64
  %.sroa.05.0.copyload = load i64, ptr %8, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 72
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 2251799813685247)
  %9 = load i64, ptr %4, align 8
  %10 = getelementptr inbounds i8, ptr %4, i32 8
  %11 = load i64, ptr %10, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %.sroa.05.0.copyload, i64 %.sroa.3.0.copyload, i64 %9, i64 %11)
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %.sroa.05.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 51)
  %12 = load i64, ptr %7, align 8
  %13 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %12, i64 poison)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 19, i64 noundef %13)
  %14 = load i64, ptr %6, align 8
  %15 = getelementptr inbounds i8, ptr %6, i32 8
  %16 = load i64, ptr %15, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %14, i64 %16)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.55(ptr noundef %1, ptr noundef nonnull %0)
  %17 = load i64, ptr %1, align 4
  %18 = getelementptr inbounds i8, ptr %1, i32 8
  %19 = load i64, ptr %18, align 4
  %20 = and i64 %17, 2251799813685247
  %21 = lshr i64 %17, 51
  %22 = add i64 %19, %21
  store i64 %20, ptr %1, align 4
  store i64 %22, ptr %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fsquare_fsquare__.63(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 4
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 4
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 4
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  %22 = alloca %struct.FStar_UInt128_uint128, align 8
  %23 = alloca %struct.FStar_UInt128_uint128, align 4
  %24 = alloca %struct.FStar_UInt128_uint128, align 8
  %25 = alloca %struct.FStar_UInt128_uint128, align 8
  %26 = alloca %struct.FStar_UInt128_uint128, align 8
  %27 = alloca %struct.FStar_UInt128_uint128, align 8
  %28 = load i64, ptr %1, align 4
  %29 = getelementptr inbounds i8, ptr %1, i32 8
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %1, i32 16
  %32 = load i64, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %1, i32 24
  %34 = load i64, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %1, i32 32
  %36 = load i64, ptr %35, align 4
  %37 = shl i64 %28, 1
  %38 = shl i64 %30, 1
  %39 = mul i64 %32, 38
  %40 = mul i64 %36, 19
  %41 = mul i64 %36, 38
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %28, i64 noundef %28)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %41, i64 noundef %30)
  %42 = load i64, ptr %5, align 8
  %43 = getelementptr inbounds i8, ptr %5, i32 8
  %44 = load i64, ptr %43, align 8
  %45 = load i64, ptr %6, align 8
  %46 = getelementptr inbounds i8, ptr %6, i32 8
  %47 = load i64, ptr %46, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %42, i64 %44, i64 %45, i64 %47)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %39, i64 noundef %34)
  %48 = load i64, ptr %4, align 8
  %49 = getelementptr inbounds i8, ptr %4, i32 8
  %50 = load i64, ptr %49, align 8
  %51 = load i64, ptr %7, align 8
  %52 = getelementptr inbounds i8, ptr %7, i32 8
  %53 = load i64, ptr %52, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 %48, i64 %50, i64 %51, i64 %53)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %37, i64 noundef %30)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %41, i64 noundef %32)
  %54 = load i64, ptr %10, align 8
  %55 = getelementptr inbounds i8, ptr %10, i32 8
  %56 = load i64, ptr %55, align 8
  %57 = load i64, ptr %11, align 8
  %58 = getelementptr inbounds i8, ptr %11, i32 8
  %59 = load i64, ptr %58, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %54, i64 %56, i64 %57, i64 %59)
  %60 = mul i64 %34, 19
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 noundef %60, i64 noundef %34)
  %61 = load i64, ptr %9, align 8
  %62 = getelementptr inbounds i8, ptr %9, i32 8
  %63 = load i64, ptr %62, align 8
  %64 = load i64, ptr %12, align 8
  %65 = getelementptr inbounds i8, ptr %12, i32 8
  %66 = load i64, ptr %65, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %61, i64 %63, i64 %64, i64 %66)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 noundef %37, i64 noundef %32)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %30, i64 noundef %30)
  %67 = load i64, ptr %15, align 8
  %68 = getelementptr inbounds i8, ptr %15, i32 8
  %69 = load i64, ptr %68, align 8
  %70 = load i64, ptr %16, align 8
  %71 = getelementptr inbounds i8, ptr %16, i32 8
  %72 = load i64, ptr %71, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %67, i64 %69, i64 %70, i64 %72)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %41, i64 noundef %34)
  %73 = load i64, ptr %14, align 8
  %74 = getelementptr inbounds i8, ptr %14, i32 8
  %75 = load i64, ptr %74, align 8
  %76 = load i64, ptr %17, align 8
  %77 = getelementptr inbounds i8, ptr %17, i32 8
  %78 = load i64, ptr %77, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %73, i64 %75, i64 %76, i64 %78)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %37, i64 noundef %34)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 noundef %38, i64 noundef %32)
  %79 = load i64, ptr %20, align 8
  %80 = getelementptr inbounds i8, ptr %20, i32 8
  %81 = load i64, ptr %80, align 8
  %82 = load i64, ptr %21, align 8
  %83 = getelementptr inbounds i8, ptr %21, i32 8
  %84 = load i64, ptr %83, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %79, i64 %81, i64 %82, i64 %84)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %22, i64 noundef %36, i64 noundef %40)
  %85 = load i64, ptr %19, align 8
  %86 = getelementptr inbounds i8, ptr %19, i32 8
  %87 = load i64, ptr %86, align 8
  %88 = load i64, ptr %22, align 8
  %89 = getelementptr inbounds i8, ptr %22, i32 8
  %90 = load i64, ptr %89, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %85, i64 %87, i64 %88, i64 %90)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %25, i64 noundef %37, i64 noundef %36)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %26, i64 noundef %38, i64 noundef %34)
  %91 = load i64, ptr %25, align 8
  %92 = getelementptr inbounds i8, ptr %25, i32 8
  %93 = load i64, ptr %92, align 8
  %94 = load i64, ptr %26, align 8
  %95 = getelementptr inbounds i8, ptr %26, i32 8
  %96 = load i64, ptr %95, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %24, i64 %91, i64 %93, i64 %94, i64 %96)
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %27, i64 noundef %32, i64 noundef %32)
  %97 = load i64, ptr %24, align 8
  %98 = getelementptr inbounds i8, ptr %24, i32 8
  %99 = load i64, ptr %98, align 8
  %100 = load i64, ptr %27, align 8
  %101 = getelementptr inbounds i8, ptr %27, i32 8
  %102 = load i64, ptr %101, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %23, i64 %97, i64 %99, i64 %100, i64 %102)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  %103 = getelementptr inbounds i8, ptr %0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %103, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 16, i1 false)
  %104 = getelementptr inbounds i8, ptr %0, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %104, ptr noundef nonnull align 4 dereferenceable(16) %13, i32 16, i1 false)
  %105 = getelementptr inbounds i8, ptr %0, i32 48
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %105, ptr noundef nonnull align 4 dereferenceable(16) %18, i32 16, i1 false)
  %106 = getelementptr inbounds i8, ptr %0, i32 64
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %106, ptr noundef nonnull align 4 dereferenceable(16) %23, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_G_make_g(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0)
  %3 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0)
  %4 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0)
  %5 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %0)
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %2, i64 noundef 1738742601995546, i64 noundef 1146398526822698, i64 noundef 2070867633025821, i64 noundef 562264141797630, i64 noundef 587772402128613)
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %3, i64 noundef 1801439850948184, i64 noundef 1351079888211148, i64 noundef 450359962737049, i64 noundef 900719925474099, i64 noundef 1801439850948198)
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %4, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %5, i64 noundef 1841354044333475, i64 noundef 16398895984059, i64 noundef 755974180946558, i64 noundef 900171276175154, i64 noundef 1821297809914039)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [80 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(640) %4, i8 0, i32 640, i1 false)
  %5 = getelementptr inbounds i8, ptr %4, i32 160
  call fastcc void @Hacl_Impl_Ed25519_Ladder_make_point_inf(ptr noundef nonnull %4)
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_copy(ptr noundef nonnull %5, ptr noundef %2)
  call fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul_(ptr noundef nonnull %4, ptr noundef %1)
  call fastcc void @Hacl_Impl_Ed25519_SwapConditional_copy(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_make_point_inf(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 40
  %3 = getelementptr inbounds i8, ptr %0, i32 80
  %4 = getelementptr inbounds i8, ptr %0, i32 120
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %4, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SwapConditional_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(160) %1, i32 160, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %7, %5 ]
  %4 = icmp ult i32 %.0, 256
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = sub nuw nsw i32 255, %.0
  tail call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step(ptr noundef %0, ptr noundef %1, i32 noundef %6)
  %7 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !21

8:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @Hacl_Impl_Ed25519_Ladder_Step_ith_bit(ptr noundef %1, i32 noundef %2)
  tail call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_1(ptr noundef %0, i8 noundef zeroext %4)
  tail call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_2(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_3(ptr noundef %0, i8 noundef zeroext %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext range(i8 0, 2) i8 @Hacl_Impl_Ed25519_Ladder_Step_ith_bit(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = lshr i32 %1, 3
  %4 = and i32 %1, 7
  %5 = getelementptr inbounds i8, ptr %0, i32 %3
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = lshr i32 %7, %4
  %9 = trunc nuw i32 %8 to i8
  %10 = and i8 %9, 1
  ret i8 %10
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_1(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i32 160
  %4 = zext nneg i8 %1 to i64
  tail call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond_inplace(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_2(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 160
  %3 = getelementptr inbounds i8, ptr %0, i32 320
  %4 = getelementptr inbounds i8, ptr %0, i32 480
  tail call fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double(ptr noundef nonnull %3, ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Ed25519_PointAdd_point_add(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_loop_step_3(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i32 160
  %4 = getelementptr inbounds i8, ptr %0, i32 320
  %5 = getelementptr inbounds i8, ptr %0, i32 480
  %6 = zext nneg i8 %1 to i64
  tail call fastcc void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = sub nsw i64 0, %4
  %7 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0)
  %8 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %1)
  %9 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %2)
  %10 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i64 noundef %6)
  %11 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0)
  %12 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %1)
  %13 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %2)
  %14 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i64 noundef %6)
  %15 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0)
  %16 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %1)
  %17 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %2)
  %18 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i64 noundef %6)
  %19 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %0)
  %20 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %1)
  %21 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %2)
  %22 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %3)
  tail call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, i64 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = load i64, ptr %2, align 4
  %7 = getelementptr inbounds i8, ptr %2, i32 8
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %2, i32 16
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %2, i32 24
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %2, i32 32
  %14 = load i64, ptr %13, align 4
  %15 = load i64, ptr %3, align 4
  %16 = getelementptr inbounds i8, ptr %3, i32 8
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %3, i32 16
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %3, i32 24
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds i8, ptr %3, i32 32
  %23 = load i64, ptr %22, align 4
  %24 = xor i64 %15, %6
  %25 = and i64 %24, %4
  %26 = xor i64 %17, %8
  %27 = and i64 %26, %4
  %28 = xor i64 %19, %10
  %29 = and i64 %28, %4
  %30 = xor i64 %21, %12
  %31 = and i64 %30, %4
  %32 = xor i64 %23, %14
  %33 = and i64 %32, %4
  %34 = xor i64 %25, %6
  %35 = xor i64 %25, %15
  %36 = xor i64 %27, %8
  %37 = xor i64 %27, %17
  %38 = xor i64 %29, %10
  %39 = xor i64 %29, %19
  %40 = xor i64 %31, %12
  %41 = xor i64 %31, %21
  %42 = xor i64 %33, %14
  %43 = xor i64 %33, %23
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %34, i64 noundef %36, i64 noundef %38, i64 noundef %40, i64 noundef %42)
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %1, i64 noundef %35, i64 noundef %37, i64 noundef %39, i64 noundef %41, i64 noundef %43)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 120
  ret ptr %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [30 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(240) %3, i8 0, i32 240, i1 false)
  call fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointAdd_point_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [30 x i64], align 8
  %5 = getelementptr inbounds i8, ptr %4, i32 80
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(240) %5, i8 0, i32 160, i1 false)
  %6 = getelementptr inbounds i8, ptr %4, i32 40
  %7 = getelementptr inbounds i8, ptr %4, i32 80
  %8 = getelementptr inbounds i8, ptr %4, i32 120
  %9 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %1)
  %10 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %1)
  %11 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %2)
  %12 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(40) %9, i32 40, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 4 dereferenceable(40) %11, i32 40, i1 false)
  call fastcc void @Hacl_Bignum25519_fdifference_reduced(ptr noundef nonnull %4, ptr noundef %10)
  call fastcc void @Hacl_Bignum25519_fdifference(ptr noundef nonnull %6, ptr noundef %12)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %6)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(40) %10, i32 40, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 4 dereferenceable(40) %12, i32 40, i1 false)
  call fastcc void @Hacl_Bignum25519_fsum(ptr noundef nonnull %4, ptr noundef %9)
  call fastcc void @Hacl_Bignum25519_fsum(ptr noundef nonnull %6, ptr noundef %11)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %6)
  %13 = getelementptr inbounds i8, ptr %4, i32 160
  %14 = getelementptr inbounds i8, ptr %4, i32 200
  %15 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %1)
  %16 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %1)
  %17 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %2)
  %18 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %2)
  call fastcc void @Hacl_Bignum25519_times_2d(ptr noundef nonnull %4, ptr noundef %16)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef %18)
  call fastcc void @Hacl_Bignum25519_times_2(ptr noundef nonnull %4, ptr noundef %15)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef nonnull %13, ptr noundef nonnull %4, ptr noundef %17)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 40, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 40, i1 false)
  call fastcc void @Hacl_Bignum25519_fdifference_reduced(ptr noundef nonnull %4, ptr noundef nonnull %8)
  call fastcc void @Hacl_Bignum25519_fdifference(ptr noundef nonnull %14, ptr noundef nonnull %13)
  call fastcc void @Hacl_Bignum25519_fsum(ptr noundef nonnull %13, ptr noundef nonnull %6)
  call fastcc void @Hacl_Bignum25519_fsum(ptr noundef nonnull %8, ptr noundef nonnull %7)
  %19 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0)
  %20 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0)
  %21 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0)
  %22 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %0)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %19, ptr noundef nonnull %4, ptr noundef nonnull %14)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %20, ptr noundef nonnull %13, ptr noundef nonnull %8)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %22, ptr noundef nonnull %4, ptr noundef nonnull %8)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %21, ptr noundef nonnull %13, ptr noundef nonnull %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_fdifference_reduced(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum25519_fdifference(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @Hacl_Bignum25519_reduce_513(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_fdifference(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_fdifference.65(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_fsum(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_fsum.64(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_times_2d(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [5 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false)
  call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %3, i64 noundef 1859910466990425, i64 noundef 932731440258426, i64 noundef 1072319116312658, i64 noundef 1815898335770999, i64 noundef 633789495995903)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_times_2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 8
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %1, i32 16
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 24
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %1, i32 32
  %11 = load i64, ptr %10, align 4
  %12 = shl i64 %3, 1
  %13 = shl i64 %5, 1
  %14 = shl i64 %7, 1
  %15 = shl i64 %9, 1
  %16 = shl i64 %11, 1
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_fsum.64(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 4
  %4 = load i64, ptr %1, align 4
  %5 = add i64 %4, %3
  store i64 %5, ptr %0, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 8
  %9 = load i64, ptr %8, align 4
  %10 = add i64 %9, %7
  store i64 %10, ptr %6, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 16
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 16
  %14 = load i64, ptr %13, align 4
  %15 = add i64 %14, %12
  store i64 %15, ptr %11, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 24
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %1, i32 24
  %19 = load i64, ptr %18, align 4
  %20 = add i64 %19, %17
  store i64 %20, ptr %16, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 32
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %1, i32 32
  %24 = load i64, ptr %23, align 4
  %25 = add i64 %24, %22
  store i64 %25, ptr %21, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_fdifference.65(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.sroa.0.0.copyload = load i64, ptr %1, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 24
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 32
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 4
  %3 = add i64 %.sroa.0.0.copyload, 18014398509481832
  %4 = add i64 %.sroa.5.0.copyload, 18014398509481976
  %5 = add i64 %.sroa.8.0.copyload, 18014398509481976
  %6 = add i64 %.sroa.11.0.copyload, 18014398509481976
  %7 = add i64 %.sroa.14.0.copyload, 18014398509481976
  %8 = load i64, ptr %0, align 4
  %9 = sub i64 %3, %8
  store i64 %9, ptr %0, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  %11 = load i64, ptr %10, align 4
  %12 = sub i64 %4, %11
  store i64 %12, ptr %10, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 16
  %14 = load i64, ptr %13, align 4
  %15 = sub i64 %5, %14
  store i64 %15, ptr %13, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 24
  %17 = load i64, ptr %16, align 4
  %18 = sub i64 %6, %17
  store i64 %18, ptr %16, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 32
  %20 = load i64, ptr %19, align 4
  %21 = sub i64 %7, %20
  store i64 %21, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_reduce_513(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  %10 = load i64, ptr %9, align 4
  %11 = lshr i64 %2, 51
  %12 = add i64 %4, %11
  %13 = and i64 %2, 2251799813685247
  %14 = lshr i64 %12, 51
  %15 = add i64 %14, %6
  %16 = and i64 %12, 2251799813685247
  %17 = lshr i64 %15, 51
  %18 = add i64 %17, %8
  %19 = and i64 %15, 2251799813685247
  %20 = lshr i64 %18, 51
  %21 = add i64 %20, %10
  %22 = and i64 %18, 2251799813685247
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %0, i64 noundef %13, i64 noundef %16, i64 noundef %19, i64 noundef %22, i64 noundef %21)
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top.49(ptr noundef nonnull %0)
  %23 = load i64, ptr %0, align 4
  %24 = load i64, ptr %3, align 4
  %25 = and i64 %23, 2251799813685247
  %26 = lshr i64 %23, 51
  %27 = add i64 %24, %26
  store i64 %25, ptr %0, align 4
  store i64 %27, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %2, i32 40
  %5 = getelementptr inbounds i8, ptr %2, i32 80
  %6 = getelementptr inbounds i8, ptr %2, i32 120
  %7 = getelementptr inbounds i8, ptr %2, i32 200
  %8 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0)
  %9 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0)
  %10 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0)
  %11 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_step_1(ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_step_2(ptr noundef %1, ptr noundef %2)
  tail call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %7)
  tail call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %5)
  tail call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull %7)
  tail call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_step_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i32 40
  %4 = getelementptr inbounds i8, ptr %1, i32 80
  %5 = getelementptr inbounds i8, ptr %1, i32 120
  %6 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0)
  %7 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0)
  %8 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0)
  tail call fastcc void @Hacl_Bignum25519_fsquare(ptr noundef %1, ptr noundef %6)
  tail call fastcc void @Hacl_Bignum25519_fsquare(ptr noundef nonnull %3, ptr noundef %7)
  tail call fastcc void @Hacl_Bignum25519_fsquare(ptr noundef nonnull %4, ptr noundef %8)
  tail call fastcc void @Hacl_Bignum25519_times_2(ptr noundef nonnull %5, ptr noundef nonnull %4)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(40) %1, i32 40, i1 false)
  tail call fastcc void @Hacl_Bignum25519_fsum(ptr noundef nonnull %4, ptr noundef nonnull %3)
  tail call fastcc void @Hacl_Bignum25519_reduce_513(ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_PointDouble_point_double_step_2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i32 40
  %4 = getelementptr inbounds i8, ptr %1, i32 80
  %5 = getelementptr inbounds i8, ptr %1, i32 120
  %6 = getelementptr inbounds i8, ptr %1, i32 160
  %7 = getelementptr inbounds i8, ptr %1, i32 200
  %8 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0)
  %9 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, ptr noundef nonnull align 4 dereferenceable(40) %8, i32 40, i1 false)
  tail call fastcc void @Hacl_Bignum25519_fsum(ptr noundef nonnull %6, ptr noundef %9)
  tail call fastcc void @Hacl_Bignum25519_fsquare(ptr noundef nonnull %7, ptr noundef nonnull %6)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, ptr noundef nonnull align 4 dereferenceable(40) %4, i32 40, i1 false)
  tail call fastcc void @Hacl_Bignum25519_fdifference(ptr noundef nonnull %7, ptr noundef nonnull %6)
  tail call fastcc void @Hacl_Bignum25519_fdifference_reduced(ptr noundef nonnull %3, ptr noundef %1)
  tail call fastcc void @Hacl_Bignum25519_reduce_513(ptr noundef nonnull %5)
  tail call fastcc void @Hacl_Bignum25519_fsum(ptr noundef nonnull %5, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_fsquare(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [5 x %struct.FStar_UInt128_uint128], align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %5 = getelementptr inbounds i8, ptr %3, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %6 = getelementptr inbounds i8, ptr %3, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %3, i32 48
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %3, i32 64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(40) %1, i32 40, i1 false)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_.62(ptr noundef nonnull %3, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Ladder_Step_swap_cond_inplace(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_inplace(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_inplace(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = sub nsw i64 0, %2
  %5 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0)
  %6 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %1)
  %7 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0)
  %8 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %1)
  tail call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %4)
  %9 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0)
  %10 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %1)
  %11 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0)
  %12 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %1)
  tail call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i64 noundef %4)
  %13 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0)
  %14 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %1)
  %15 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0)
  %16 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %1)
  tail call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %4)
  %17 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %0)
  %18 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %1)
  %19 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %0)
  %20 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %1)
  tail call fastcc void @Hacl_Impl_Ed25519_SwapConditional_swap_conditional_step(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, i64 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store32.66(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  store i32 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [10 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i32 80, i1 false)
  call fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [64 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Sha512_sha512_pre_msg(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  call fastcc void @Hacl_Impl_Load56_load_64_bytes(ptr noundef %4, ptr noundef nonnull %6)
  call fastcc void @Hacl_Impl_BignumQ_Mul_barrett_reduction(ptr noundef %0, ptr noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Sha512_sha512_pre_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_sha512_pre_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_sha512_pre_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp ult i32 %3, 97
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_msg_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %8

7:                                                ; preds = %4
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_1_sha512_pre_msg_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [128 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false)
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_2(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %6 = add nuw nsw i32 %3, 32
  call fastcc void @Hacl_Impl_SHA2_512_hash(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_3_sha512_pre_msg_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [128 x i8], align 1
  %6 = getelementptr inbounds i8, ptr %2, i32 96
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false)
  call fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_2(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef 96)
  %7 = add i32 %3, -96
  call fastcc void @Hacl_Impl_SHA512_Ed25519_2_hash_block_and_rest(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA512_Ed25519_1_concat_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef %0, ptr noundef %1, i32 noundef 32)
  %5 = getelementptr inbounds i8, ptr %0, i32 32
  tail call fastcc void @Hacl_Impl_SHA512_Ed25519_1_copy_bytes(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SecretExpand_secret_expand(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_SHA2_512_hash.152(ptr noundef %0, ptr noundef %1)
  %3 = load i8, ptr %0, align 1
  %4 = getelementptr inbounds i8, ptr %0, i32 31
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %3, -8
  store i8 %6, ptr %0, align 1
  %7 = and i8 %5, 63
  %8 = or disjoint i8 %7, 64
  store i8 %8, ptr %4, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_SHA2_512_hash.152(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_512_hash(ptr noundef %0, ptr noundef %1, i32 noundef 32)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Hacl_Ed25519_verify(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i1 %5
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i1 %5
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [45 x i64], align 8
  %6 = alloca [32 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(360) %5, i8 0, i32 360, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false)
  %7 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify__(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  ret i1 %7
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_verify__(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds i8, ptr %4, i32 160
  %8 = getelementptr inbounds i8, ptr %4, i32 320
  %9 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointDecompress_point_decompress(ptr noundef %4, ptr noundef %0)
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_1(ptr noundef nonnull %7, ptr noundef %3)
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, ptr %3, i32 32
  tail call fastcc void @Hacl_Impl_Load56_load_32_bytes(ptr noundef nonnull %8, ptr noundef nonnull %13)
  %14 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_gte_q(ptr noundef nonnull %8)
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  tail call fastcc void @Hacl_Impl_Ed25519_Verify_Steps_verify_step_2(ptr noundef %5, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %0)
  %16 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_4(ptr noundef nonnull %13, ptr noundef %5, ptr noundef %4, ptr noundef nonnull %7)
  br label %17

17:                                               ; preds = %6, %10, %12, %15
  %.0 = phi i1 [ %16, %15 ], [ false, %12 ], [ false, %10 ], [ false, %6 ]
  ret i1 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointDecompress_point_decompress(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [10 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i32 80, i1 false)
  %4 = getelementptr inbounds i8, ptr %3, i32 40
  %5 = getelementptr inbounds i8, ptr %1, i32 31
  %6 = load i8, ptr %5, align 1
  %7 = lshr i8 %6, 7
  %8 = zext nneg i8 %7 to i64
  call fastcc void @Hacl_Impl_Load51_load_51(ptr noundef nonnull %3, ptr noundef %1)
  %9 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef %8)
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0)
  %12 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0)
  %13 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0)
  %14 = call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gett(ptr noundef %0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 40, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 40, i1 false)
  call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %13, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %3)
  br label %15

15:                                               ; preds = %2, %10
  ret i1 %9
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointDecompress_point_decompress(ptr noundef %0, ptr noundef %1)
  ret i1 %3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_gte_q(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  %10 = load i64, ptr %9, align 4
  %11 = icmp ugt i64 %10, 268435456
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %.not = icmp eq i64 %10, 268435456
  br i1 %.not, label %13, label %20

13:                                               ; preds = %12
  %.not16 = icmp ne i64 %8, 0
  %14 = icmp ugt i64 %6, 5342
  %or.cond = select i1 %.not16, i1 true, i1 %14
  br i1 %or.cond, label %20, label %15

15:                                               ; preds = %13
  %.not17 = icmp eq i64 %6, 5342
  br i1 %.not17, label %16, label %20

16:                                               ; preds = %15
  %17 = icmp ugt i64 %4, 70332060721272408
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %.not18 = icmp eq i64 %4, 70332060721272408
  %19 = icmp ugt i64 %2, 5175514460705772
  %spec.select = select i1 %.not18, i1 %19, i1 false
  br label %20

20:                                               ; preds = %18, %16, %15, %13, %12, %1
  %.0 = phi i1 [ true, %1 ], [ false, %12 ], [ true, %13 ], [ false, %15 ], [ true, %16 ], [ %spec.select, %18 ]
  ret i1 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Verify_Steps_verify_step_2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [5 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false)
  call fastcc void @Hacl_Impl_SHA512_ModQ_sha512_modq_pre_pre2(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2)
  call fastcc void @Hacl_Impl_Store56_store_56(ptr noundef %0, ptr noundef nonnull %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_Verify_Steps_verify_step_4(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [60 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(480) %5, i8 0, i32 480, i1 false)
  %6 = getelementptr inbounds i8, ptr %5, i32 160
  %7 = getelementptr inbounds i8, ptr %5, i32 320
  call fastcc void @Hacl_Impl_Ed25519_Verify_Steps_point_mul_g(ptr noundef nonnull %7, ptr noundef %0)
  call fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2)
  call fastcc void @Hacl_Impl_Ed25519_PointAdd_point_add(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %5)
  %8 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal(ptr noundef nonnull %7, ptr noundef nonnull %6)
  ret i1 %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Verify_Steps_point_mul_g(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i32 160, i1 false)
  call fastcc void @Hacl_Impl_Ed25519_G_make_g(ptr noundef nonnull %3)
  call fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i32 160, i1 false)
  %4 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  ret i1 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_1(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_2(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %7

7:                                                ; preds = %3, %5
  %.0 = phi i1 [ %6, %5 ], [ false, %3 ]
  ret i1 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %2, i32 40
  %5 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %0)
  %6 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %1)
  tail call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %2, ptr noundef %5, ptr noundef %6)
  tail call fastcc void @Hacl_Bignum25519_reduce(ptr noundef %2)
  %7 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getx(ptr noundef %1)
  %8 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0)
  tail call fastcc void @Hacl_Bignum25519_fmul(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %8)
  tail call fastcc void @Hacl_Bignum25519_reduce(ptr noundef nonnull %4)
  %9 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_eq(ptr noundef %2, ptr noundef nonnull %4)
  ret i1 %9
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_point_equal_2(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %2, i32 80
  %5 = getelementptr inbounds i8, ptr %2, i32 120
  %6 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %0)
  %7 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %1)
  tail call fastcc void @Hacl_Bignum25519_fmul(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %7)
  tail call fastcc void @Hacl_Bignum25519_reduce(ptr noundef nonnull %4)
  %8 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_gety(ptr noundef %1)
  %9 = tail call fastcc ptr @Hacl_Impl_Ed25519_ExtPoint_getz(ptr noundef %0)
  tail call fastcc void @Hacl_Bignum25519_fmul(ptr noundef nonnull %5, ptr noundef %8, ptr noundef %9)
  tail call fastcc void @Hacl_Bignum25519_reduce(ptr noundef nonnull %5)
  %10 = tail call fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_eq(ptr noundef nonnull %4, ptr noundef nonnull %5)
  ret i1 %10
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_PointEqual_eq(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 4
  %4 = load i64, ptr %1, align 4
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %1, i32 32
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %1, i32 24
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %1, i32 16
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 32
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 24
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 16
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %1, i32 8
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 8
  %22 = load i64, ptr %21, align 4
  %23 = icmp eq i64 %22, %20
  %24 = icmp eq i64 %18, %12
  %or.cond = select i1 %23, i1 %24, i1 false
  %25 = icmp eq i64 %16, %10
  %or.cond20 = select i1 %or.cond, i1 %25, i1 false
  %26 = icmp eq i64 %14, %8
  %spec.select = select i1 %or.cond20, i1 %26, i1 false
  br label %27

27:                                               ; preds = %6, %2
  %28 = phi i1 [ false, %2 ], [ %spec.select, %6 ]
  ret i1 %28
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Load51_load_51(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_EC_Format_fexpand.67(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [20 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false)
  %5 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4)
  ret i1 %5
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_recover_x_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [25 x i64], align 8
  %6 = alloca [5 x i64], align 8
  %7 = load i64, ptr %1, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 8
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %1, i32 16
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %1, i32 24
  %13 = load i64, ptr %12, align 4
  %14 = icmp ugt i64 %7, 2251799813685228
  %15 = icmp eq i64 %9, 2251799813685247
  %or.cond = select i1 %14, i1 %15, i1 false
  %16 = icmp eq i64 %11, 2251799813685247
  %or.cond3 = select i1 %or.cond, i1 %16, i1 false
  %17 = icmp eq i64 %13, 2251799813685247
  %or.cond5 = select i1 %or.cond3, i1 %17, i1 false
  br i1 %or.cond5, label %18, label %.critedge

18:                                               ; preds = %4
  %19 = getelementptr inbounds i8, ptr %1, i32 32
  %20 = load i64, ptr %19, align 4
  %21 = icmp eq i64 %20, 2251799813685247
  br i1 %21, label %.thread90, label %.critedge

.critedge:                                        ; preds = %4, %18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(200) %5, i8 0, i32 200, i1 false)
  %22 = getelementptr inbounds i8, ptr %5, i32 40
  %23 = getelementptr inbounds i8, ptr %5, i32 80
  %24 = getelementptr inbounds i8, ptr %5, i32 120
  call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  call fastcc void @Hacl_Bignum25519_fsquare(ptr noundef nonnull %22, ptr noundef nonnull %1)
  call fastcc void @Hacl_Bignum25519_times_d(ptr noundef nonnull %24, ptr noundef nonnull %22)
  call fastcc void @Hacl_Bignum25519_fsum(ptr noundef nonnull %24, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum25519_reduce_513(ptr noundef nonnull %24)
  call fastcc void @Hacl_Bignum25519_inverse(ptr noundef nonnull %23, ptr noundef nonnull %24)
  call fastcc void @Hacl_Bignum25519_fdifference(ptr noundef nonnull %5, ptr noundef nonnull %22)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %3, ptr noundef nonnull %23, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum25519_reduce(ptr noundef %3)
  %25 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(ptr noundef %3)
  br i1 %25, label %26, label %29

26:                                               ; preds = %.critedge
  %27 = icmp eq i64 %2, 0
  br i1 %27, label %28, label %.thread90

28:                                               ; preds = %26
  call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  br label %.thread90

29:                                               ; preds = %.critedge
  %30 = getelementptr inbounds i8, ptr %3, i32 40
  %31 = getelementptr inbounds i8, ptr %3, i32 80
  %32 = getelementptr inbounds i8, ptr %3, i32 120
  call fastcc void @Hacl_Impl_Ed25519_Pow2_252m2_pow2_252m2(ptr noundef nonnull %30, ptr noundef %3)
  call fastcc void @Hacl_Bignum25519_fsquare(ptr noundef nonnull %31, ptr noundef nonnull %30)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %32, ptr noundef nonnull align 4 dereferenceable(40) %3, i32 40, i1 false)
  call fastcc void @Hacl_Bignum25519_fdifference(ptr noundef nonnull %32, ptr noundef nonnull %31)
  call fastcc void @Hacl_Bignum25519_reduce_513(ptr noundef nonnull %32)
  call fastcc void @Hacl_Bignum25519_reduce(ptr noundef nonnull %32)
  %33 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(ptr noundef nonnull %32)
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false)
  call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %6, i64 noundef 1718705420411056, i64 noundef 234908883556509, i64 noundef 2233514472574048, i64 noundef 2117202627021982, i64 noundef 765476049583133)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef nonnull %30, ptr noundef nonnull %30, ptr noundef nonnull %6)
  br label %35

35:                                               ; preds = %34, %29
  call fastcc void @Hacl_Bignum25519_reduce(ptr noundef nonnull %30)
  call fastcc void @Hacl_Bignum25519_fsquare(ptr noundef nonnull %31, ptr noundef nonnull %30)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %32, ptr noundef nonnull align 4 dereferenceable(40) %3, i32 40, i1 false)
  call fastcc void @Hacl_Bignum25519_fdifference(ptr noundef nonnull %32, ptr noundef nonnull %31)
  call fastcc void @Hacl_Bignum25519_reduce_513(ptr noundef nonnull %32)
  call fastcc void @Hacl_Bignum25519_reduce(ptr noundef nonnull %32)
  %36 = call fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(ptr noundef nonnull %32)
  br i1 %36, label %37, label %.thread90

37:                                               ; preds = %35
  call fastcc void @Hacl_Impl_Ed25519_RecoverX_recover_x_step_5(ptr noundef %0, i64 noundef %2, ptr noundef nonnull %3)
  br label %.thread90

.thread90:                                        ; preds = %26, %35, %18, %37, %28
  %.0 = phi i1 [ true, %28 ], [ true, %37 ], [ false, %18 ], [ false, %35 ], [ false, %26 ]
  ret i1 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum25519_times_d(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [5 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false)
  call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %3, i64 noundef 929955233495203, i64 noundef 466365720129213, i64 noundef 1662059464998953, i64 noundef 2033849074728123, i64 noundef 1442794654840575)
  call fastcc void @Hacl_Bignum25519_fmul(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @Hacl_Impl_Ed25519_RecoverX_is_0(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  %8 = load i64, ptr %7, align 4
  %9 = icmp eq i64 %2, 0
  %10 = icmp eq i64 %4, 0
  %or.cond = select i1 %9, i1 %10, i1 false
  %11 = icmp eq i64 %6, 0
  %or.cond3 = select i1 %or.cond, i1 %11, i1 false
  %12 = icmp eq i64 %8, 0
  %or.cond5 = select i1 %or.cond3, i1 %12, i1 false
  br i1 %or.cond5, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds i8, ptr %0, i32 32
  %15 = load i64, ptr %14, align 4
  %16 = icmp eq i64 %15, 0
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i1 [ false, %1 ], [ %16, %13 ]
  ret i1 %18
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_Pow2_252m2_pow2_252m2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_Crecip_crecip_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_RecoverX_recover_x_step_5(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %2, i32 40
  %5 = load i64, ptr %4, align 4
  %6 = and i64 %5, 1
  %7 = icmp eq i64 %6, %1
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %2, i32 80
  tail call fastcc void @Hacl_Lib_Create64_make_h64_5(ptr noundef nonnull %9, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  tail call fastcc void @Hacl_Bignum25519_fdifference(ptr noundef nonnull %4, ptr noundef nonnull %9)
  tail call fastcc void @Hacl_Bignum25519_reduce_513(ptr noundef nonnull %4)
  tail call fastcc void @Hacl_Bignum25519_reduce(ptr noundef nonnull %4)
  br label %10

10:                                               ; preds = %8, %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(40) %4, i32 40, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Crecip_crecip_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i32 160, i1 false)
  %4 = getelementptr inbounds i8, ptr %3, i32 40
  %5 = getelementptr inbounds i8, ptr %3, i32 80
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 1)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %1)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %3)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 5)
  %6 = getelementptr inbounds i8, ptr %3, i32 120
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 10)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 20)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %6)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace.60(ptr noundef nonnull %4, i32 noundef 10)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 50)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 1)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times.59(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 100)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %6)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace.60(ptr noundef nonnull %4, i32 noundef 50)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fsquare_fsquare_times_inplace.60(ptr noundef nonnull %4, i32 noundef 2)
  call fastcc void @Hacl_Bignum_Fmul_fmul.52(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_EC_Format_fexpand.67(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.val26 = load i64, ptr %1, align 1
  %3 = tail call fastcc i64 @load64.38(i64 %.val26)
  %4 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %3)
  %5 = getelementptr inbounds i8, ptr %1, i32 6
  %.val25 = load i64, ptr %5, align 1
  %6 = tail call fastcc i64 @load64.38(i64 %.val25)
  %7 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %6)
  %8 = getelementptr inbounds i8, ptr %1, i32 12
  %.val24 = load i64, ptr %8, align 1
  %9 = tail call fastcc i64 @load64.38(i64 %.val24)
  %10 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %9)
  %11 = getelementptr inbounds i8, ptr %1, i32 19
  %.val23 = load i64, ptr %11, align 1
  %12 = tail call fastcc i64 @load64.38(i64 %.val23)
  %13 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %12)
  %14 = getelementptr inbounds i8, ptr %1, i32 24
  %.val = load i64, ptr %14, align 1
  %15 = tail call fastcc i64 @load64.38(i64 %.val)
  %16 = tail call fastcc i64 @__uint64_identity.39(i64 noundef %15)
  %17 = and i64 %4, 2251799813685247
  %18 = lshr i64 %7, 3
  %19 = and i64 %18, 2251799813685247
  %20 = lshr i64 %10, 6
  %21 = and i64 %20, 2251799813685247
  %22 = lshr i64 %13, 1
  %23 = and i64 %22, 2251799813685247
  %24 = lshr i64 %16, 12
  %25 = and i64 %24, 2251799813685247
  store i64 %17, ptr %0, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %19, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %21, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %23, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %25, ptr %29, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Ed25519_secret_to_public(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [64 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Ed25519_SecretExpand_secret_expand(ptr noundef nonnull %3, ptr noundef %1)
  call fastcc void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public_(ptr noundef %0, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SecretToPublic_secret_to_public_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i32 160, i1 false)
  call fastcc void @Hacl_Impl_Ed25519_SecretToPublic_point_mul_g(ptr noundef nonnull %3, ptr noundef %1)
  call fastcc void @Hacl_Impl_Ed25519_PointCompress_point_compress(ptr noundef %0, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Ed25519_SecretToPublic_point_mul_g(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [20 x i64], align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i32 160, i1 false)
  call fastcc void @Hacl_Impl_Ed25519_G_make_g(ptr noundef nonnull %3)
  call fastcc void @Hacl_Impl_Ed25519_Ladder_point_mul(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_HMAC_SHA2_256_hmac_core(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac_core(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac_core(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [64 x i8], align 1
  %6 = alloca [64 x i8], align 1
  %7 = alloca [137 x i32], align 4
  %8 = alloca [137 x i32], align 4
  br label %9

9:                                                ; preds = %11, %4
  %.0 = phi i32 [ 0, %4 ], [ %13, %11 ]
  %10 = icmp ult i32 %.0, 64
  br i1 %10, label %11, label %.preheader

11:                                               ; preds = %9
  %12 = getelementptr inbounds [64 x i8], ptr %5, i32 0, i32 %.0
  store i8 54, ptr %12, align 1
  %13 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !22

.preheader:                                       ; preds = %9, %15
  %.019 = phi i32 [ %17, %15 ], [ 0, %9 ]
  %14 = icmp ult i32 %.019, 64
  br i1 %14, label %15, label %18

15:                                               ; preds = %.preheader
  %16 = getelementptr inbounds [64 x i8], ptr %6, i32 0, i32 %.019
  store i8 92, ptr %16, align 1
  %17 = add nuw nsw i32 %.019, 1
  br label %.preheader, !llvm.loop !23

18:                                               ; preds = %.preheader
  call fastcc void @Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace(ptr noundef nonnull %5, ptr noundef %1)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(548) %7, i8 0, i32 548, i1 false)
  %19 = lshr i32 %3, 6
  %20 = and i32 %3, 63
  %21 = and i32 %3, -64
  %22 = getelementptr inbounds i8, ptr %2, i32 %21
  call fastcc void @Hacl_Impl_SHA2_256_init(ptr noundef nonnull %7)
  call fastcc void @Hacl_Impl_SHA2_256_update(ptr noundef nonnull %7, ptr noundef nonnull %5)
  call fastcc void @Hacl_Impl_SHA2_256_update_multi(ptr noundef nonnull %7, ptr noundef %2, i32 noundef %19)
  call fastcc void @Hacl_Impl_SHA2_256_update_last(ptr noundef nonnull %7, ptr noundef %22, i32 noundef %20)
  call fastcc void @Hacl_Impl_SHA2_256_finish(ptr noundef nonnull %7, ptr noundef nonnull %5)
  call fastcc void @Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace(ptr noundef nonnull %6, ptr noundef %1)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(548) %8, i8 0, i32 548, i1 false)
  call fastcc void @Hacl_Impl_SHA2_256_init(ptr noundef nonnull %8)
  call fastcc void @Hacl_Impl_SHA2_256_update(ptr noundef nonnull %8, ptr noundef nonnull %6)
  call fastcc void @Hacl_Impl_SHA2_256_update_last(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 32)
  call fastcc void @Hacl_Impl_SHA2_256_finish(ptr noundef nonnull %8, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_HMAC_SHA2_256_xor_bytes_inplace(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %4 = icmp ult i32 %.0, 64
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %0, i32 %.0
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds i8, ptr %1, i32 %.0
  %9 = load i8, ptr %8, align 1
  %10 = xor i8 %9, %7
  store i8 %10, ptr %6, align 1
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !24

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 544
  %3 = getelementptr inbounds i8, ptr %0, i32 512
  %4 = getelementptr inbounds i8, ptr %0, i32 64
  %5 = getelementptr inbounds i8, ptr %0, i32 128
  %6 = getelementptr inbounds i8, ptr %0, i32 192
  %7 = getelementptr inbounds i8, ptr %0, i32 32
  %8 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 1116352408, ptr %0, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 1899447441, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 -1245643825, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 -373957723, ptr %11, align 4
  store i32 961987163, ptr %8, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 20
  store i32 1508970993, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 -1841331548, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 28
  store i32 -1424204075, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 48
  store i32 -670586216, ptr %7, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 36
  store i32 310598401, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 40
  store i32 607225278, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 44
  store i32 1426881987, ptr %18, align 4
  store i32 1925078388, ptr %15, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 52
  store i32 -2132889090, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 56
  store i32 -1680079193, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 60
  store i32 -1046744716, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 96
  %23 = getelementptr inbounds i8, ptr %0, i32 80
  store i32 -459576895, ptr %4, align 4
  %24 = getelementptr inbounds i8, ptr %0, i32 68
  store i32 -272742522, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %0, i32 72
  store i32 264347078, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 76
  store i32 604807628, ptr %26, align 4
  store i32 770255983, ptr %23, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 84
  store i32 1249150122, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 88
  store i32 1555081692, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 92
  store i32 1996064986, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %0, i32 112
  store i32 -1740746414, ptr %22, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 100
  store i32 -1473132947, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 104
  store i32 -1341970488, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %0, i32 108
  store i32 -1084653625, ptr %33, align 4
  store i32 -958395405, ptr %30, align 4
  %34 = getelementptr inbounds i8, ptr %0, i32 116
  store i32 -710438585, ptr %34, align 4
  %35 = getelementptr inbounds i8, ptr %0, i32 120
  store i32 113926993, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %0, i32 124
  store i32 338241895, ptr %36, align 4
  %37 = getelementptr inbounds i8, ptr %0, i32 160
  %38 = getelementptr inbounds i8, ptr %0, i32 144
  store i32 666307205, ptr %5, align 4
  %39 = getelementptr inbounds i8, ptr %0, i32 132
  store i32 773529912, ptr %39, align 4
  %40 = getelementptr inbounds i8, ptr %0, i32 136
  store i32 1294757372, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %0, i32 140
  store i32 1396182291, ptr %41, align 4
  store i32 1695183700, ptr %38, align 4
  %42 = getelementptr inbounds i8, ptr %0, i32 148
  store i32 1986661051, ptr %42, align 4
  %43 = getelementptr inbounds i8, ptr %0, i32 152
  store i32 -2117940946, ptr %43, align 4
  %44 = getelementptr inbounds i8, ptr %0, i32 156
  store i32 -1838011259, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %0, i32 176
  store i32 -1564481375, ptr %37, align 4
  %46 = getelementptr inbounds i8, ptr %0, i32 164
  store i32 -1474664885, ptr %46, align 4
  %47 = getelementptr inbounds i8, ptr %0, i32 168
  store i32 -1035236496, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %0, i32 172
  store i32 -949202525, ptr %48, align 4
  store i32 -778901479, ptr %45, align 4
  %49 = getelementptr inbounds i8, ptr %0, i32 180
  store i32 -694614492, ptr %49, align 4
  %50 = getelementptr inbounds i8, ptr %0, i32 184
  store i32 -200395387, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %0, i32 188
  store i32 275423344, ptr %51, align 4
  %52 = getelementptr inbounds i8, ptr %0, i32 224
  %53 = getelementptr inbounds i8, ptr %0, i32 208
  store i32 430227734, ptr %6, align 4
  %54 = getelementptr inbounds i8, ptr %0, i32 196
  store i32 506948616, ptr %54, align 4
  %55 = getelementptr inbounds i8, ptr %0, i32 200
  store i32 659060556, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %0, i32 204
  store i32 883997877, ptr %56, align 4
  store i32 958139571, ptr %53, align 4
  %57 = getelementptr inbounds i8, ptr %0, i32 212
  store i32 1322822218, ptr %57, align 4
  %58 = getelementptr inbounds i8, ptr %0, i32 216
  store i32 1537002063, ptr %58, align 4
  %59 = getelementptr inbounds i8, ptr %0, i32 220
  store i32 1747873779, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %0, i32 240
  store i32 1955562222, ptr %52, align 4
  %61 = getelementptr inbounds i8, ptr %0, i32 228
  store i32 2024104815, ptr %61, align 4
  %62 = getelementptr inbounds i8, ptr %0, i32 232
  store i32 -2067236844, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %0, i32 236
  store i32 -1933114872, ptr %63, align 4
  store i32 -1866530822, ptr %60, align 4
  %64 = getelementptr inbounds i8, ptr %0, i32 244
  store i32 -1538233109, ptr %64, align 4
  %65 = getelementptr inbounds i8, ptr %0, i32 248
  store i32 -1090935817, ptr %65, align 4
  %66 = getelementptr inbounds i8, ptr %0, i32 252
  store i32 -965641998, ptr %66, align 4
  %67 = getelementptr inbounds i8, ptr %0, i32 528
  store i32 1779033703, ptr %3, align 4
  %68 = getelementptr inbounds i8, ptr %0, i32 516
  store i32 -1150833019, ptr %68, align 4
  %69 = getelementptr inbounds i8, ptr %0, i32 520
  store i32 1013904242, ptr %69, align 4
  %70 = getelementptr inbounds i8, ptr %0, i32 524
  store i32 -1521486534, ptr %70, align 4
  store i32 1359893119, ptr %67, align 4
  %71 = getelementptr inbounds i8, ptr %0, i32 532
  store i32 -1694144372, ptr %71, align 4
  %72 = getelementptr inbounds i8, ptr %0, i32 536
  store i32 528734635, ptr %72, align 4
  %73 = getelementptr inbounds i8, ptr %0, i32 540
  store i32 1541459225, ptr %73, align 4
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
.preheader102.preheader:
  %2 = alloca [16 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes(ptr noundef nonnull %2, ptr noundef %1)
  %3 = getelementptr inbounds i8, ptr %0, i32 512
  %4 = getelementptr inbounds i8, ptr %0, i32 256
  %5 = load i32, ptr %2, align 4
  store i32 %5, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %2, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 260
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %2, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 264
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %2, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 268
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %2, i32 16
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 272
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %2, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 276
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %2, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 280
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %2, i32 28
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 284
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %2, i32 32
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 288
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %2, i32 36
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 292
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %2, i32 40
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %0, i32 296
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %2, i32 44
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %0, i32 300
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %2, i32 48
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds i8, ptr %0, i32 304
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds i8, ptr %2, i32 52
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds i8, ptr %0, i32 308
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %2, i32 56
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds i8, ptr %0, i32 312
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %2, i32 60
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds i8, ptr %0, i32 316
  store i32 %49, ptr %50, align 4
  br label %.preheader102

.preheader102:                                    ; preds = %.preheader102.preheader, %52
  %.099 = phi i32 [ %75, %52 ], [ 16, %.preheader102.preheader ]
  %51 = icmp ult i32 %.099, 64
  br i1 %51, label %52, label %76

52:                                               ; preds = %.preheader102
  %53 = getelementptr i32, ptr %4, i32 %.099
  %54 = getelementptr i8, ptr %53, i32 -64
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %53, i32 -60
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i8, ptr %53, i32 -28
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr i8, ptr %53, i32 -8
  %61 = load i32, ptr %60, align 4
  %62 = call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 15)
  %63 = call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13)
  %64 = lshr i32 %61, 10
  %65 = xor i32 %63, %64
  %66 = xor i32 %65, %62
  %67 = call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 25)
  %68 = call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 14)
  %69 = lshr i32 %57, 3
  %70 = xor i32 %68, %69
  %71 = xor i32 %70, %67
  %72 = add i32 %59, %55
  %73 = add i32 %72, %71
  %74 = add i32 %73, %66
  store i32 %74, ptr %53, align 4
  %75 = add nuw nsw i32 %.099, 1
  br label %.preheader102, !llvm.loop !25

76:                                               ; preds = %.preheader102
  %.sroa.0.0.copyload = load i32, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 516
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 520
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 524
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 528
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 532
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 536
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 540
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 4
  br label %77

77:                                               ; preds = %79, %76
  %.sroa.22.0 = phi i32 [ %.sroa.22.0.copyload, %76 ], [ %.sroa.19.0, %79 ]
  %.sroa.19.0 = phi i32 [ %.sroa.19.0.copyload, %76 ], [ %.sroa.16.0, %79 ]
  %.sroa.16.0 = phi i32 [ %.sroa.16.0.copyload, %76 ], [ %.sroa.13.0, %79 ]
  %.sroa.13.0 = phi i32 [ %.sroa.13.0.copyload, %76 ], [ %108, %79 ]
  %.sroa.10.0 = phi i32 [ %.sroa.10.0.copyload, %76 ], [ %.sroa.7.0, %79 ]
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %76 ], [ %.sroa.4.0, %79 ]
  %.sroa.4.0 = phi i32 [ %.sroa.4.0.copyload, %76 ], [ %.sroa.0.0, %79 ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %76 ], [ %107, %79 ]
  %.0100 = phi i32 [ 0, %76 ], [ %109, %79 ]
  %78 = icmp ult i32 %.0100, 64
  br i1 %78, label %79, label %.preheader.1

79:                                               ; preds = %77
  %80 = getelementptr inbounds i32, ptr %0, i32 %.0100
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds i32, ptr %4, i32 %.0100
  %83 = load i32, ptr %82, align 4
  %84 = call i32 @llvm.fshl.i32(i32 %.sroa.13.0, i32 %.sroa.13.0, i32 26)
  %85 = call i32 @llvm.fshl.i32(i32 %.sroa.13.0, i32 %.sroa.13.0, i32 21)
  %86 = call i32 @llvm.fshl.i32(i32 %.sroa.13.0, i32 %.sroa.13.0, i32 7)
  %87 = xor i32 %85, %86
  %88 = xor i32 %87, %84
  %89 = add i32 %.sroa.22.0, %88
  %90 = and i32 %.sroa.16.0, %.sroa.13.0
  %91 = xor i32 %.sroa.13.0, -1
  %92 = and i32 %.sroa.19.0, %91
  %93 = or i32 %92, %90
  %94 = add i32 %89, %93
  %95 = add i32 %94, %81
  %96 = add i32 %95, %83
  %97 = call i32 @llvm.fshl.i32(i32 %.sroa.0.0, i32 %.sroa.0.0, i32 30)
  %98 = call i32 @llvm.fshl.i32(i32 %.sroa.0.0, i32 %.sroa.0.0, i32 19)
  %99 = call i32 @llvm.fshl.i32(i32 %.sroa.0.0, i32 %.sroa.0.0, i32 10)
  %100 = xor i32 %98, %99
  %101 = xor i32 %100, %97
  %102 = and i32 %.sroa.4.0, %.sroa.0.0
  %103 = xor i32 %.sroa.4.0, %.sroa.0.0
  %104 = and i32 %103, %.sroa.7.0
  %105 = xor i32 %104, %102
  %106 = add i32 %105, %101
  %107 = add i32 %106, %96
  %108 = add i32 %96, %.sroa.10.0
  %109 = add nuw nsw i32 %.0100, 1
  br label %77, !llvm.loop !26

.preheader.1:                                     ; preds = %77
  %110 = load i32, ptr %3, align 4
  %111 = add i32 %.sroa.0.0, %110
  store i32 %111, ptr %3, align 4
  %112 = getelementptr inbounds i8, ptr %0, i32 516
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %.sroa.4.0, %113
  store i32 %114, ptr %112, align 4
  %115 = getelementptr inbounds i8, ptr %0, i32 520
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %.sroa.7.0, %116
  store i32 %117, ptr %115, align 4
  %118 = getelementptr inbounds i8, ptr %0, i32 524
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %.sroa.10.0, %119
  store i32 %120, ptr %118, align 4
  %121 = getelementptr inbounds i8, ptr %0, i32 528
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %.sroa.13.0, %122
  store i32 %123, ptr %121, align 4
  %124 = getelementptr inbounds i8, ptr %0, i32 532
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %.sroa.16.0, %125
  store i32 %126, ptr %124, align 4
  %127 = getelementptr inbounds i8, ptr %0, i32 536
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %.sroa.19.0, %128
  store i32 %129, ptr %127, align 4
  %130 = getelementptr inbounds i8, ptr %0, i32 540
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %.sroa.22.0, %131
  store i32 %132, ptr %130, align 4
  %133 = getelementptr inbounds i8, ptr %0, i32 544
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %5 = icmp ult i32 %.0, %2
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = shl nuw i32 %.0, 6
  %8 = getelementptr inbounds i8, ptr %1, i32 %7
  tail call fastcc void @Hacl_Impl_SHA2_256_update(ptr noundef %0, ptr noundef %8)
  %9 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !27

10:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update_last(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [128 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false)
  %5 = icmp ult i32 %2, 56
  %. = select i1 %5, i32 1, i32 2
  %.019.idx.sroa.sel.idx.sroa.sel.idx = select i1 %5, i32 64, i32 0
  %.019.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %4, i32 %.019.idx.sroa.sel.idx.sroa.sel.idx
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %.019.idx.sroa.sel.idx.sroa.sel, ptr align 1 %1, i32 %2, i1 false)
  %6 = getelementptr inbounds i8, ptr %0, i32 544
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %.019.idx.sroa.sel.idx.sroa.sel, i32 %2
  %9 = sub i32 55, %2
  %10 = and i32 %9, 63
  %11 = getelementptr inbounds i8, ptr %8, i32 1
  %12 = getelementptr inbounds i8, ptr %11, i32 %10
  %13 = zext i32 %7 to i64
  %14 = zext nneg i32 %2 to i64
  %15 = shl nuw nsw i64 %13, 9
  %16 = shl nuw nsw i64 %14, 3
  %17 = add nuw nsw i64 %15, %16
  store i8 -128, ptr %8, align 1
  %18 = tail call fastcc i64 @__bswap_64.69(i64 noundef %17)
  call fastcc void @store64.70(ptr noundef nonnull %12, i64 noundef %18)
  call fastcc void @Hacl_Impl_SHA2_256_update_multi(ptr noundef %0, ptr noundef nonnull %.019.idx.sroa.sel.idx.sroa.sel, i32 noundef %.)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_finish(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i32 512
  tail call fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes(ptr noundef %1, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call fastcc i32 @__bswap_32(i32 noundef %3)
  tail call fastcc void @store32.68(ptr noundef %0, i32 noundef %4)
  %5 = getelementptr inbounds i8, ptr %1, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 4
  %8 = tail call fastcc i32 @__bswap_32(i32 noundef %6)
  tail call fastcc void @store32.68(ptr noundef nonnull %7, i32 noundef %8)
  %9 = getelementptr inbounds i8, ptr %1, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 8
  %12 = tail call fastcc i32 @__bswap_32(i32 noundef %10)
  tail call fastcc void @store32.68(ptr noundef nonnull %11, i32 noundef %12)
  %13 = getelementptr inbounds i8, ptr %1, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 12
  %16 = tail call fastcc i32 @__bswap_32(i32 noundef %14)
  tail call fastcc void @store32.68(ptr noundef nonnull %15, i32 noundef %16)
  %17 = getelementptr inbounds i8, ptr %1, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 16
  %20 = tail call fastcc i32 @__bswap_32(i32 noundef %18)
  tail call fastcc void @store32.68(ptr noundef nonnull %19, i32 noundef %20)
  %21 = getelementptr inbounds i8, ptr %1, i32 20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 20
  %24 = tail call fastcc i32 @__bswap_32(i32 noundef %22)
  tail call fastcc void @store32.68(ptr noundef nonnull %23, i32 noundef %24)
  %25 = getelementptr inbounds i8, ptr %1, i32 24
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 24
  %28 = tail call fastcc i32 @__bswap_32(i32 noundef %26)
  tail call fastcc void @store32.68(ptr noundef nonnull %27, i32 noundef %28)
  %29 = getelementptr inbounds i8, ptr %1, i32 28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 28
  %32 = tail call fastcc i32 @__bswap_32(i32 noundef %30)
  tail call fastcc void @store32.68(ptr noundef nonnull %31, i32 noundef %32)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @__bswap_32(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store32.68(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  store i32 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @__bswap_64.69(i64 noundef %0) unnamed_addr #0 {
  %2 = and i64 %0, 281474976710655
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store64.70(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %4 = icmp ult i32 %.0, 16
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = shl nuw nsw i32 %.0, 2
  %7 = getelementptr inbounds i8, ptr %1, i32 %6
  %.val = load i32, ptr %7, align 1
  %8 = tail call fastcc i32 @load32.71(i32 %.val)
  %9 = tail call fastcc i32 @__bswap_32(i32 noundef %8)
  %10 = getelementptr inbounds i32, ptr %0, i32 %.0
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !28

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load32.71(i32 %.0.val) unnamed_addr #0 {
  ret i32 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_HMAC_SHA2_256_hmac(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [64 x i8], align 1
  br label %7

7:                                                ; preds = %9, %5
  %.0 = phi i32 [ 0, %5 ], [ %11, %9 ]
  %8 = icmp ult i32 %.0, 64
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds [64 x i8], ptr %6, i32 0, i32 %.0
  store i8 0, ptr %10, align 1
  %11 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !29

12:                                               ; preds = %7
  %13 = icmp ult i32 %2, 65
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 1 %1, i32 %2, i1 false)
  br label %16

15:                                               ; preds = %12
  call fastcc void @Hacl_Impl_SHA2_256_hash(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2)
  br label %16

16:                                               ; preds = %15, %14
  call fastcc void @Hacl_Impl_HMAC_SHA2_256_hmac_core(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [137 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(548) %4, i8 0, i32 548, i1 false)
  %5 = lshr i32 %2, 6
  %6 = and i32 %2, 63
  %7 = and i32 %2, -64
  %8 = getelementptr inbounds i8, ptr %1, i32 %7
  call fastcc void @Hacl_Impl_SHA2_256_init(ptr noundef nonnull %4)
  call fastcc void @Hacl_Impl_SHA2_256_update_multi(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %5)
  call fastcc void @Hacl_Impl_SHA2_256_update_last(ptr noundef nonnull %4, ptr noundef %8, i32 noundef %6)
  call fastcc void @Hacl_Impl_SHA2_256_finish(ptr noundef nonnull %4, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @Hacl_Policies_declassify_u8(i8 noundef zeroext %0) local_unnamed_addr #0 {
  ret i8 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Hacl_Policies_declassify_u32(i32 noundef %0) local_unnamed_addr #0 {
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Hacl_Policies_declassify_u64(i64 noundef %0) local_unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Policies_declassify_u128(ptr dead_on_unwind noalias writable sret(%struct.FStar_UInt128_uint128) align 4 %0, i64 %1, i64 %2) local_unnamed_addr #0 {
  store i64 %1, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  br label %5

5:                                                ; preds = %7, %4
  %.0 = phi i32 [ 0, %4 ], [ %15, %7 ]
  %6 = icmp ult i32 %.0, %2
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, ptr %0, i32 %.0
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds i8, ptr %1, i32 %.0
  %11 = load i8, ptr %10, align 1
  %12 = load i8, ptr %3, align 1
  %13 = tail call fastcc zeroext i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %9, i8 noundef zeroext %11)
  %14 = and i8 %13, %12
  store i8 %14, ptr %3, align 1
  %15 = add nuw i32 %.0, 1
  br label %5, !llvm.loop !30

16:                                               ; preds = %5
  %17 = load i8, ptr %3, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext range(i8 -1, 1) i8 @FStar_UInt8_eq_mask(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = xor i8 %0, %1
  %4 = xor i8 %3, -1
  %5 = shl i8 %4, 4
  %6 = and i8 %5, %4
  %7 = shl i8 %6, 2
  %8 = and i8 %7, %6
  %9 = shl i8 %8, 1
  %10 = and i8 %9, %8
  %11 = ashr exact i8 %10, 7
  ret i8 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @Hacl_Policies_cmp_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1 x i8], align 1
  store i8 -1, ptr %4, align 1
  %5 = call zeroext i8 @Hacl_Policies_cmp_bytes_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4)
  %6 = xor i8 %5, -1
  ret i8 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @Hacl_Poly1305_32_op_String_Access(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_mk_state(ptr dead_on_unwind noalias writable sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Poly1305_32_mk_state(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_mk_state(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  store ptr %1, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr %2, ptr %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_init(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call fastcc void @load128_le.74(ptr dead_on_unwind noalias nonnull writable align 4 %4, ptr noundef %2)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 1152921487695413244)
  %14 = load i64, ptr %8, align 8
  %15 = getelementptr inbounds i8, ptr %8, i32 8
  %16 = load i64, ptr %15, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %14, i64 %16, i32 noundef 64)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef 1152921487695413247)
  %17 = load i64, ptr %7, align 8
  %18 = getelementptr inbounds i8, ptr %7, i32 8
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %9, align 8
  %21 = getelementptr inbounds i8, ptr %9, i32 8
  %22 = load i64, ptr %21, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %17, i64 %19, i64 %20, i64 %22)
  %23 = load i64, ptr %4, align 8
  %24 = getelementptr inbounds i8, ptr %4, i32 8
  %25 = load i64, ptr %24, align 8
  %26 = load i64, ptr %6, align 8
  %27 = getelementptr inbounds i8, ptr %6, i32 8
  %28 = load i64, ptr %27, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %23, i64 %25, i64 %26, i64 %28)
  %29 = load i64, ptr %5, align 8
  %30 = getelementptr inbounds i8, ptr %5, i32 8
  %31 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %29, i64 poison)
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 67108863
  %34 = load i64, ptr %5, align 8
  %35 = load i64, ptr %30, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %34, i64 %35, i32 noundef 26)
  %36 = load i64, ptr %10, align 8
  %37 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %36, i64 poison)
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 67108863
  %40 = load i64, ptr %5, align 8
  %41 = load i64, ptr %30, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %40, i64 %41, i32 noundef 52)
  %42 = load i64, ptr %11, align 8
  %43 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %42, i64 poison)
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 67108863
  %46 = load i64, ptr %5, align 8
  %47 = load i64, ptr %30, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %46, i64 %47, i32 noundef 78)
  %48 = load i64, ptr %12, align 8
  %49 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %48, i64 poison)
  %50 = trunc i64 %49 to i32
  %51 = and i32 %50, 67108863
  %52 = load i64, ptr %5, align 8
  %53 = load i64, ptr %30, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %52, i64 %53, i32 noundef 104)
  %54 = load i64, ptr %13, align 8
  %55 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %54, i64 poison)
  %56 = trunc i64 %55 to i32
  %57 = and i32 %56, 67108863
  store i32 %33, ptr %0, align 4
  %58 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %39, ptr %58, align 4
  %59 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %45, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 %51, ptr %60, align 4
  %61 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %57, ptr %61, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @load128_le.74(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @load128_le_.75(ptr noundef %1, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @load128_le_.75(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.val = load i64, ptr %0, align 1
  %3 = tail call fastcc i64 @load64.76(i64 %.val)
  %4 = tail call fastcc i64 @__uint64_identity.77(i64 noundef %3)
  store i64 %4, ptr %1, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 8
  %.val4 = load i64, ptr %5, align 1
  %6 = tail call fastcc i64 @load64.76(i64 %.val4)
  %7 = tail call fastcc i64 @__uint64_identity.77(i64 noundef %6)
  %8 = getelementptr inbounds i8, ptr %1, i32 8
  store i64 %7, ptr %8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @load64.76(i64 %.0.val) unnamed_addr #0 {
  ret i64 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @__uint64_identity.77(i64 noundef %0) unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update_block(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Poly1305_32_poly1305_update(ptr %0, ptr %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_update(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [5 x i32], align 4
  %5 = getelementptr inbounds i8, ptr %2, i32 3
  %6 = getelementptr inbounds i8, ptr %2, i32 6
  %7 = getelementptr inbounds i8, ptr %2, i32 9
  %8 = getelementptr inbounds i8, ptr %2, i32 12
  %.val = load i32, ptr %2, align 1
  %9 = tail call fastcc i32 @load32.78(i32 %.val)
  %10 = tail call fastcc i32 @__uint32_identity.79(i32 noundef %9)
  %.val27 = load i32, ptr %5, align 1
  %11 = tail call fastcc i32 @load32.78(i32 %.val27)
  %12 = tail call fastcc i32 @__uint32_identity.79(i32 noundef %11)
  %.val28 = load i32, ptr %6, align 1
  %13 = tail call fastcc i32 @load32.78(i32 %.val28)
  %14 = tail call fastcc i32 @__uint32_identity.79(i32 noundef %13)
  %.val29 = load i32, ptr %7, align 1
  %15 = tail call fastcc i32 @load32.78(i32 %.val29)
  %16 = tail call fastcc i32 @__uint32_identity.79(i32 noundef %15)
  %.val30 = load i32, ptr %8, align 1
  %17 = tail call fastcc i32 @load32.78(i32 %.val30)
  %18 = tail call fastcc i32 @__uint32_identity.79(i32 noundef %17)
  %19 = and i32 %10, 67108863
  %20 = lshr i32 %12, 2
  %21 = and i32 %20, 67108863
  %22 = lshr i32 %14, 4
  %23 = and i32 %22, 67108863
  %24 = lshr i32 %16, 6
  %25 = lshr i32 %18, 8
  store i32 %19, ptr %4, align 4
  %26 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 %21, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 %23, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 %24, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %4, i32 16
  %30 = or disjoint i32 %25, 16777216
  store i32 %30, ptr %29, align 4
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply.80(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load32.78(i32 %.0.val) unnamed_addr #0 {
  ret i32 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @__uint32_identity.79(i32 noundef %0) unnamed_addr #0 {
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply.80(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = load i32, ptr %1, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %1, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  store i32 %11, ptr %7, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %1, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  store i32 %16, ptr %12, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %1, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  store i32 %21, ptr %17, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %1, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  store i32 %26, ptr %22, align 4
  tail call fastcc void @Hacl_Bignum_Fmul_fmul.81(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul.81(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [5 x i32], align 4
  %5 = alloca [5 x i64], align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %1, i32 20, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false)
  call fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_.82(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2)
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_.83(ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Modulo_carry_top_wide.84(ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.85(ptr noundef %0, ptr noundef nonnull %5)
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %6, 67108863
  %10 = lshr i32 %6, 26
  %11 = add i32 %8, %10
  store i32 %9, ptr %0, align 4
  store i32 %11, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_.82(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.86(ptr noundef %0, ptr noundef %1, i32 noundef %4)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.87(ptr noundef %1)
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  %6 = load i32, ptr %5, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.86(ptr noundef %0, ptr noundef %1, i32 noundef %6)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.87(ptr noundef %1)
  %7 = getelementptr inbounds i8, ptr %2, i32 8
  %8 = load i32, ptr %7, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.86(ptr noundef %0, ptr noundef %1, i32 noundef %8)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.87(ptr noundef %1)
  %9 = getelementptr inbounds i8, ptr %2, i32 12
  %10 = load i32, ptr %9, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.86(ptr noundef %0, ptr noundef %1, i32 noundef %10)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.87(ptr noundef %1)
  %11 = getelementptr inbounds i8, ptr %2, i32 16
  %12 = load i32, ptr %11, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.86(ptr noundef %0, ptr noundef %1, i32 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_.83(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = lshr i64 %2, 26
  %6 = and i64 %2, 67108863
  store i64 %6, ptr %0, align 4
  %7 = add i64 %4, %5
  store i64 %7, ptr %3, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 8
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 16
  %11 = load i64, ptr %10, align 4
  %12 = lshr i64 %9, 26
  %13 = and i64 %9, 67108863
  store i64 %13, ptr %8, align 4
  %14 = add i64 %11, %12
  store i64 %14, ptr %10, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 16
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 24
  %18 = load i64, ptr %17, align 4
  %19 = lshr i64 %16, 26
  %20 = and i64 %16, 67108863
  store i64 %20, ptr %15, align 4
  %21 = add i64 %18, %19
  store i64 %21, ptr %17, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 24
  %23 = load i64, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %0, i32 32
  %25 = load i64, ptr %24, align 4
  %26 = lshr i64 %23, 26
  %27 = and i64 %23, 67108863
  store i64 %27, ptr %22, align 4
  %28 = add i64 %25, %26
  store i64 %28, ptr %24, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_carry_top_wide.84(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 32
  %3 = load i64, ptr %2, align 4
  %4 = load i64, ptr %0, align 4
  %5 = and i64 %3, 67108863
  %6 = lshr i64 %3, 26
  %7 = trunc i64 %6 to i32
  %8 = mul i32 %7, 5
  %9 = zext i32 %8 to i64
  %10 = add i64 %4, %9
  store i64 %5, ptr %2, align 4
  store i64 %10, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.85(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = trunc i64 %3 to i32
  store i32 %4, ptr %0, align 4
  %5 = getelementptr inbounds i8, ptr %1, i32 8
  %6 = load i64, ptr %5, align 4
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %1, i32 16
  %10 = load i64, ptr %9, align 4
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 24
  %14 = load i64, ptr %13, align 4
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %1, i32 32
  %18 = load i64, ptr %17, align 4
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %19, ptr %20, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.86(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %0, align 4
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  %7 = zext i32 %2 to i64
  %8 = mul nuw i64 %6, %7
  %9 = add i64 %8, %4
  store i64 %9, ptr %0, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %1, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %15 = zext i32 %2 to i64
  %16 = mul nuw i64 %14, %15
  %17 = add i64 %16, %11
  store i64 %17, ptr %10, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 16
  %19 = load i64, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %1, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = zext i32 %2 to i64
  %24 = mul nuw i64 %22, %23
  %25 = add i64 %24, %19
  store i64 %25, ptr %18, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 24
  %27 = load i64, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %1, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  %31 = zext i32 %2 to i64
  %32 = mul nuw i64 %30, %31
  %33 = add i64 %32, %27
  store i64 %33, ptr %26, align 4
  %34 = getelementptr inbounds i8, ptr %0, i32 32
  %35 = load i64, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %1, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %37 to i64
  %39 = zext i32 %2 to i64
  %40 = mul nuw i64 %38, %39
  %41 = add i64 %40, %35
  store i64 %41, ptr %34, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_shift_reduce.87(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %0, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %13, ptr %14, align 4
  store i32 %3, ptr %0, align 4
  tail call fastcc void @Hacl_Bignum_Modulo_reduce.88(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_reduce.88(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = mul i32 %2, 5
  store i32 %3, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %6, %4
  %.tr9 = phi ptr [ %2, %4 ], [ %8, %6 ]
  %.tr10 = phi i32 [ %3, %4 ], [ %7, %6 ]
  %5 = icmp eq i32 %.tr10, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %tailrecurse
  %7 = add i32 %.tr10, -1
  %8 = getelementptr inbounds i8, ptr %.tr9, i32 16
  tail call void @Hacl_Poly1305_32_update_block(ptr %0, ptr %1, ptr noundef %.tr9)
  br label %tailrecurse

9:                                                ; preds = %tailrecurse
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_update_last(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64
  tail call fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(ptr %0, ptr %1, ptr noundef %2, i64 noundef %7)
  br label %8

8:                                                ; preds = %6, %4
  tail call fastcc void @Hacl_Impl_Poly1305_32_poly1305_last_pass(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [16 x i8], align 1
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds i8, ptr %5, i32 6
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %5, i32 7
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %5, i32 8
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %5, i32 9
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %5, i32 10
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds i8, ptr %5, i32 11
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %5, i32 12
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds i8, ptr %5, i32 13
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds i8, ptr %5, i32 14
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds i8, ptr %5, i32 15
  store i8 0, ptr %20, align 1
  %21 = trunc nuw i64 %3 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %2, i32 %21, i1 false)
  %22 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 %21
  store i8 1, ptr %22, align 1
  call fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block_(ptr noundef nonnull %5, ptr %0, ptr %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_last_pass(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_Fproduct_carry_limb_.89(ptr noundef %0)
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top.90(ptr noundef %0)
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %2, 26
  %12 = add i32 %4, %11
  %13 = and i32 %2, 67108863
  %14 = lshr i32 %12, 26
  %15 = add i32 %14, %6
  %16 = and i32 %12, 67108863
  %17 = lshr i32 %15, 26
  %18 = add i32 %17, %8
  %19 = and i32 %15, 67108863
  %20 = lshr i32 %18, 26
  %21 = add i32 %20, %10
  %22 = and i32 %18, 67108863
  store i32 %13, ptr %0, align 4
  store i32 %16, ptr %3, align 4
  store i32 %19, ptr %5, align 4
  store i32 %22, ptr %7, align 4
  store i32 %21, ptr %9, align 4
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top.90(ptr noundef nonnull %0)
  %23 = load i32, ptr %0, align 4
  %24 = load i32, ptr %3, align 4
  %25 = load i32, ptr %5, align 4
  %26 = load i32, ptr %7, align 4
  %27 = load i32, ptr %9, align 4
  %28 = lshr i32 %23, 26
  %29 = add i32 %24, %28
  %30 = and i32 %23, 67108863
  %31 = lshr i32 %29, 26
  %32 = add i32 %31, %25
  %33 = and i32 %29, 67108863
  %34 = lshr i32 %32, 26
  %35 = add i32 %34, %26
  %36 = and i32 %32, 67108863
  %37 = lshr i32 %35, 26
  %38 = add i32 %37, %27
  %39 = and i32 %35, 67108863
  store i32 %30, ptr %0, align 4
  store i32 %33, ptr %3, align 4
  store i32 %36, ptr %5, align 4
  store i32 %39, ptr %7, align 4
  store i32 %38, ptr %9, align 4
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top.90(ptr noundef nonnull %0)
  %40 = load i32, ptr %0, align 4
  %41 = load i32, ptr %3, align 4
  %42 = and i32 %40, 67108863
  %43 = lshr i32 %40, 26
  %44 = add i32 %41, %43
  store i32 %42, ptr %0, align 4
  store i32 %44, ptr %3, align 4
  %45 = load i32, ptr %5, align 4
  %46 = load i32, ptr %7, align 4
  %47 = load i32, ptr %9, align 4
  %48 = tail call fastcc i32 @FStar_UInt32_gte_mask(i32 noundef %42)
  %49 = tail call fastcc i32 @FStar_UInt32_eq_mask(i32 noundef %44)
  %50 = tail call fastcc i32 @FStar_UInt32_eq_mask(i32 noundef %45)
  %51 = tail call fastcc i32 @FStar_UInt32_eq_mask(i32 noundef %46)
  %52 = tail call fastcc i32 @FStar_UInt32_eq_mask(i32 noundef %47)
  %53 = and i32 %49, %48
  %54 = and i32 %53, %50
  %55 = and i32 %54, %51
  %56 = and i32 %55, %52
  %57 = and i32 %56, 67108859
  %58 = sub nsw i32 %42, %57
  %59 = and i32 %56, 67108863
  %60 = sub i32 %44, %59
  %61 = sub i32 %45, %59
  %62 = sub i32 %46, %59
  %63 = sub i32 %47, %59
  store i32 %58, ptr %0, align 4
  store i32 %60, ptr %3, align 4
  store i32 %61, ptr %5, align 4
  store i32 %62, ptr %7, align 4
  store i32 %63, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_limb_.89(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %2, 67108863
  %6 = lshr i32 %2, 26
  store i32 %5, ptr %0, align 4
  %7 = add i32 %4, %6
  store i32 %7, ptr %3, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 67108863
  %13 = lshr i32 %9, 26
  store i32 %12, ptr %8, align 4
  %14 = add i32 %11, %13
  store i32 %14, ptr %10, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %16, 67108863
  %20 = lshr i32 %16, 26
  store i32 %19, ptr %15, align 4
  %21 = add i32 %18, %20
  store i32 %21, ptr %17, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %0, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %23, 67108863
  %27 = lshr i32 %23, 26
  store i32 %26, ptr %22, align 4
  %28 = add i32 %25, %27
  store i32 %28, ptr %24, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_carry_top.90(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = lshr i32 %3, 26
  %6 = and i32 %3, 67108863
  store i32 %6, ptr %2, align 4
  %7 = mul nuw nsw i32 %5, 5
  %8 = add i32 %7, %4
  store i32 %8, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @FStar_UInt32_gte_mask(i32 noundef %0) unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 67108858
  %3 = sext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @FStar_UInt32_eq_mask(i32 noundef %0) unnamed_addr #0 {
  %2 = xor i32 %0, -67108864
  %3 = shl i32 %0, 16
  %4 = and i32 %2, %3
  %5 = shl i32 %4, 8
  %6 = and i32 %5, %4
  %7 = shl i32 %6, 4
  %8 = and i32 %7, %6
  %9 = shl i32 %8, 2
  %10 = and i32 %9, %8
  %11 = shl i32 %10, 1
  %12 = and i32 %11, %10
  %13 = ashr i32 %12, 31
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block_(ptr noundef %0, ptr %1, ptr %2) unnamed_addr #0 {
  %4 = alloca [5 x i32], align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 3
  %6 = getelementptr inbounds i8, ptr %0, i32 6
  %7 = getelementptr inbounds i8, ptr %0, i32 9
  %8 = getelementptr inbounds i8, ptr %0, i32 12
  %.val26 = load i32, ptr %0, align 1
  %9 = tail call fastcc i32 @load32.78(i32 %.val26)
  %10 = tail call fastcc i32 @__uint32_identity.79(i32 noundef %9)
  %.val25 = load i32, ptr %5, align 1
  %11 = tail call fastcc i32 @load32.78(i32 %.val25)
  %12 = tail call fastcc i32 @__uint32_identity.79(i32 noundef %11)
  %.val24 = load i32, ptr %6, align 1
  %13 = tail call fastcc i32 @load32.78(i32 %.val24)
  %14 = tail call fastcc i32 @__uint32_identity.79(i32 noundef %13)
  %.val23 = load i32, ptr %7, align 1
  %15 = tail call fastcc i32 @load32.78(i32 %.val23)
  %16 = tail call fastcc i32 @__uint32_identity.79(i32 noundef %15)
  %.val = load i32, ptr %8, align 1
  %17 = tail call fastcc i32 @load32.78(i32 %.val)
  %18 = tail call fastcc i32 @__uint32_identity.79(i32 noundef %17)
  %19 = and i32 %10, 67108863
  %20 = lshr i32 %12, 2
  %21 = and i32 %20, 67108863
  %22 = lshr i32 %14, 4
  %23 = and i32 %22, 67108863
  %24 = lshr i32 %16, 6
  %25 = lshr i32 %18, 8
  store i32 %19, ptr %4, align 4
  %26 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 %21, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 %23, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 %24, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %4, i32 16
  store i32 %25, ptr %29, align 4
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply.80(ptr noundef %2, ptr noundef nonnull %4, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_finish(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  call fastcc void @load128_le.74(ptr dead_on_unwind noalias nonnull writable align 4 %5, ptr noundef %3)
  %20 = load i32, ptr %1, align 4
  %21 = getelementptr inbounds i8, ptr %1, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %1, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds i8, ptr %1, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds i8, ptr %1, i32 16
  %28 = load i32, ptr %27, align 4
  %29 = zext i32 %28 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %29)
  %30 = load i64, ptr %8, align 8
  %31 = getelementptr inbounds i8, ptr %8, i32 8
  %32 = load i64, ptr %31, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %30, i64 %32, i32 noundef 104)
  %33 = zext i32 %26 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %33)
  %34 = load i64, ptr %11, align 8
  %35 = getelementptr inbounds i8, ptr %11, i32 8
  %36 = load i64, ptr %35, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %34, i64 %36, i32 noundef 78)
  %37 = zext i32 %24 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 noundef %37)
  %38 = load i64, ptr %14, align 8
  %39 = getelementptr inbounds i8, ptr %14, i32 8
  %40 = load i64, ptr %39, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %38, i64 %40, i32 noundef 52)
  %41 = zext i32 %22 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 noundef %41)
  %42 = load i64, ptr %17, align 8
  %43 = getelementptr inbounds i8, ptr %17, i32 8
  %44 = load i64, ptr %43, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 %42, i64 %44, i32 noundef 26)
  %45 = zext i32 %20 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 noundef %45)
  %46 = load i64, ptr %16, align 8
  %47 = getelementptr inbounds i8, ptr %16, i32 8
  %48 = load i64, ptr %47, align 8
  %49 = load i64, ptr %18, align 8
  %50 = getelementptr inbounds i8, ptr %18, i32 8
  %51 = load i64, ptr %50, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %46, i64 %48, i64 %49, i64 %51)
  %52 = load i64, ptr %13, align 8
  %53 = getelementptr inbounds i8, ptr %13, i32 8
  %54 = load i64, ptr %53, align 8
  %55 = load i64, ptr %15, align 8
  %56 = getelementptr inbounds i8, ptr %15, i32 8
  %57 = load i64, ptr %56, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %52, i64 %54, i64 %55, i64 %57)
  %58 = load i64, ptr %10, align 8
  %59 = getelementptr inbounds i8, ptr %10, i32 8
  %60 = load i64, ptr %59, align 8
  %61 = load i64, ptr %12, align 8
  %62 = getelementptr inbounds i8, ptr %12, i32 8
  %63 = load i64, ptr %62, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %58, i64 %60, i64 %61, i64 %63)
  %64 = load i64, ptr %7, align 8
  %65 = getelementptr inbounds i8, ptr %7, i32 8
  %66 = load i64, ptr %65, align 8
  %67 = load i64, ptr %9, align 8
  %68 = getelementptr inbounds i8, ptr %9, i32 8
  %69 = load i64, ptr %68, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %64, i64 %66, i64 %67, i64 %69)
  %70 = load i64, ptr %6, align 8
  %71 = getelementptr inbounds i8, ptr %6, i32 8
  %72 = load i64, ptr %71, align 8
  %73 = load i64, ptr %5, align 8
  %74 = getelementptr inbounds i8, ptr %5, i32 8
  %75 = load i64, ptr %74, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 %70, i64 %72, i64 %73, i64 %75)
  %76 = load i64, ptr %19, align 8
  %77 = getelementptr inbounds i8, ptr %19, i32 8
  %78 = load i64, ptr %77, align 8
  call fastcc void @store128_le.91(ptr noundef %2, i64 %76, i64 %78)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_le.91(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 %2, ptr %5, align 8
  call fastcc void @store128_le_.92(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_le_.92(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = tail call fastcc i64 @__uint64_identity.77(i64 noundef %3)
  tail call fastcc void @store64.93(ptr noundef %0, i64 noundef %4)
  %5 = getelementptr inbounds i8, ptr %0, i32 8
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  %7 = load i64, ptr %6, align 4
  %8 = tail call fastcc i64 @__uint64_identity.77(i64 noundef %7)
  tail call fastcc void @store64.93(ptr noundef nonnull %5, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store64.93(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_crypto_onetimeauth_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [10 x i32], align 4
  %6 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  %16 = alloca %struct.FStar_UInt128_uint128, align 8
  %17 = alloca %struct.FStar_UInt128_uint128, align 8
  %18 = alloca %struct.FStar_UInt128_uint128, align 8
  %19 = alloca %struct.FStar_UInt128_uint128, align 8
  %20 = alloca %struct.FStar_UInt128_uint128, align 8
  %21 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false)
  %22 = getelementptr inbounds i8, ptr %5, i32 20
  call fastcc void @Hacl_Impl_Poly1305_32_mk_state(ptr dead_on_unwind noalias nonnull writable align 4 %6, ptr noundef nonnull %5, ptr noundef nonnull %22)
  %23 = getelementptr inbounds i8, ptr %3, i32 16
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds i8, ptr %6, i32 4
  %26 = load ptr, ptr %25, align 4
  call fastcc void @Hacl_Standalone_Poly1305_32_poly1305_complete(ptr %24, ptr %26, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  %.sroa.1.0.copyload = load ptr, ptr %25, align 4
  call fastcc void @load128_le.74(ptr dead_on_unwind noalias nonnull writable align 4 %7, ptr noundef nonnull %23)
  %27 = load i32, ptr %.sroa.1.0.copyload, align 4
  %28 = getelementptr inbounds i8, ptr %.sroa.1.0.copyload, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds i8, ptr %.sroa.1.0.copyload, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %.sroa.1.0.copyload, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %.sroa.1.0.copyload, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %36)
  %37 = load i64, ptr %10, align 8
  %38 = getelementptr inbounds i8, ptr %10, i32 8
  %39 = load i64, ptr %38, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %37, i64 %39, i32 noundef 104)
  %40 = zext i32 %33 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 noundef %40)
  %41 = load i64, ptr %13, align 8
  %42 = getelementptr inbounds i8, ptr %13, i32 8
  %43 = load i64, ptr %42, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %41, i64 %43, i32 noundef 78)
  %44 = zext i32 %31 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %16, i64 noundef %44)
  %45 = load i64, ptr %16, align 8
  %46 = getelementptr inbounds i8, ptr %16, i32 8
  %47 = load i64, ptr %46, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %45, i64 %47, i32 noundef 52)
  %48 = zext i32 %29 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %19, i64 noundef %48)
  %49 = load i64, ptr %19, align 8
  %50 = getelementptr inbounds i8, ptr %19, i32 8
  %51 = load i64, ptr %50, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %18, i64 %49, i64 %51, i32 noundef 26)
  %52 = zext i32 %27 to i64
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %20, i64 noundef %52)
  %53 = load i64, ptr %18, align 8
  %54 = getelementptr inbounds i8, ptr %18, i32 8
  %55 = load i64, ptr %54, align 8
  %56 = load i64, ptr %20, align 8
  %57 = getelementptr inbounds i8, ptr %20, i32 8
  %58 = load i64, ptr %57, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %17, i64 %53, i64 %55, i64 %56, i64 %58)
  %59 = load i64, ptr %15, align 8
  %60 = getelementptr inbounds i8, ptr %15, i32 8
  %61 = load i64, ptr %60, align 8
  %62 = load i64, ptr %17, align 8
  %63 = getelementptr inbounds i8, ptr %17, i32 8
  %64 = load i64, ptr %63, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %59, i64 %61, i64 %62, i64 %64)
  %65 = load i64, ptr %12, align 8
  %66 = getelementptr inbounds i8, ptr %12, i32 8
  %67 = load i64, ptr %66, align 8
  %68 = load i64, ptr %14, align 8
  %69 = getelementptr inbounds i8, ptr %14, i32 8
  %70 = load i64, ptr %69, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %65, i64 %67, i64 %68, i64 %70)
  %71 = load i64, ptr %9, align 8
  %72 = getelementptr inbounds i8, ptr %9, i32 8
  %73 = load i64, ptr %72, align 8
  %74 = load i64, ptr %11, align 8
  %75 = getelementptr inbounds i8, ptr %11, i32 8
  %76 = load i64, ptr %75, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %71, i64 %73, i64 %74, i64 %76)
  %77 = load i64, ptr %8, align 8
  %78 = getelementptr inbounds i8, ptr %8, i32 8
  %79 = load i64, ptr %78, align 8
  %80 = load i64, ptr %7, align 8
  %81 = getelementptr inbounds i8, ptr %7, i32 8
  %82 = load i64, ptr %81, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %21, i64 %77, i64 %79, i64 %80, i64 %82)
  %83 = load i64, ptr %21, align 8
  %84 = getelementptr inbounds i8, ptr %21, i32 8
  %85 = load i64, ptr %84, align 8
  call fastcc void @store128_le.91(ptr noundef %0, i64 %83, i64 %85)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_poly1305_complete(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = lshr i64 %3, 4
  %7 = and i64 %3, 15
  tail call fastcc void @Hacl_Standalone_Poly1305_32_poly1305_partial(ptr %0, ptr %1, ptr noundef %2, i64 noundef %6, ptr noundef %4)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = trunc i64 %3 to i32
  %11 = and i32 %10, -16
  %12 = getelementptr inbounds i8, ptr %2, i32 %11
  tail call fastcc void @Hacl_Impl_Poly1305_32_poly1305_process_last_block(ptr %0, ptr %1, ptr noundef %12, i64 noundef %7)
  br label %13

13:                                               ; preds = %9, %5
  tail call fastcc void @Hacl_Impl_Poly1305_32_poly1305_last_pass(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_poly1305_partial(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  %14 = alloca %struct.FStar_UInt128_uint128, align 8
  %15 = alloca %struct.FStar_UInt128_uint128, align 8
  call fastcc void @load128_le.74(ptr dead_on_unwind noalias nonnull writable align 4 %6, ptr noundef %4)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 1152921487695413244)
  %16 = load i64, ptr %10, align 8
  %17 = getelementptr inbounds i8, ptr %10, i32 8
  %18 = load i64, ptr %17, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %16, i64 %18, i32 noundef 64)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef 1152921487695413247)
  %19 = load i64, ptr %9, align 8
  %20 = getelementptr inbounds i8, ptr %9, i32 8
  %21 = load i64, ptr %20, align 8
  %22 = load i64, ptr %11, align 8
  %23 = getelementptr inbounds i8, ptr %11, i32 8
  %24 = load i64, ptr %23, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %19, i64 %21, i64 %22, i64 %24)
  %25 = load i64, ptr %6, align 8
  %26 = getelementptr inbounds i8, ptr %6, i32 8
  %27 = load i64, ptr %26, align 8
  %28 = load i64, ptr %8, align 8
  %29 = getelementptr inbounds i8, ptr %8, i32 8
  %30 = load i64, ptr %29, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %25, i64 %27, i64 %28, i64 %30)
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds i8, ptr %7, i32 8
  %33 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %31, i64 poison)
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 67108863
  %36 = load i64, ptr %7, align 8
  %37 = load i64, ptr %32, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %36, i64 %37, i32 noundef 26)
  %38 = load i64, ptr %12, align 8
  %39 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %38, i64 poison)
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 67108863
  %42 = load i64, ptr %7, align 8
  %43 = load i64, ptr %32, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %42, i64 %43, i32 noundef 52)
  %44 = load i64, ptr %13, align 8
  %45 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %44, i64 poison)
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 67108863
  %48 = load i64, ptr %7, align 8
  %49 = load i64, ptr %32, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %14, i64 %48, i64 %49, i32 noundef 78)
  %50 = load i64, ptr %14, align 8
  %51 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %50, i64 poison)
  %52 = trunc i64 %51 to i32
  %53 = and i32 %52, 67108863
  %54 = load i64, ptr %7, align 8
  %55 = load i64, ptr %32, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %15, i64 %54, i64 %55, i32 noundef 104)
  %56 = load i64, ptr %15, align 8
  %57 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %56, i64 poison)
  %58 = trunc i64 %57 to i32
  %59 = and i32 %58, 67108863
  store i32 %35, ptr %0, align 4
  %60 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %41, ptr %60, align 4
  %61 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %47, ptr %61, align 4
  %62 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 %53, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %59, ptr %63, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i64 20, i1 false)
  call fastcc void @Hacl_Standalone_Poly1305_32_poly1305_blocks(ptr nonnull %0, ptr nonnull %1, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_32_poly1305_blocks(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %6, %4
  %.tr9 = phi ptr [ %2, %4 ], [ %8, %6 ]
  %.tr10 = phi i64 [ %3, %4 ], [ %7, %6 ]
  %5 = icmp eq i64 %.tr10, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %tailrecurse
  %7 = add nsw i64 %.tr10, -1
  %8 = getelementptr inbounds i8, ptr %.tr9, i32 16
  tail call fastcc void @Hacl_Impl_Poly1305_32_poly1305_update(ptr %0, ptr %1, ptr noundef %.tr9)
  br label %tailrecurse

9:                                                ; preds = %tailrecurse
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_mk_state(ptr dead_on_unwind noalias writable sret(%struct.Hacl_Impl_Poly1305_64_State_poly1305_state) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Poly1305_64_mk_state.94(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_mk_state.94(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  store ptr %1, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr %2, ptr %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_init(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  call fastcc void @load128_le.95(ptr dead_on_unwind noalias nonnull writable align 4 %4, ptr noundef %2)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef 1152921487695413244)
  %12 = load i64, ptr %8, align 8
  %13 = getelementptr inbounds i8, ptr %8, i32 8
  %14 = load i64, ptr %13, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %12, i64 %14, i32 noundef 64)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef 1152921487695413247)
  %15 = load i64, ptr %7, align 8
  %16 = getelementptr inbounds i8, ptr %7, i32 8
  %17 = load i64, ptr %16, align 8
  %18 = load i64, ptr %9, align 8
  %19 = getelementptr inbounds i8, ptr %9, i32 8
  %20 = load i64, ptr %19, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %15, i64 %17, i64 %18, i64 %20)
  %21 = load i64, ptr %4, align 8
  %22 = getelementptr inbounds i8, ptr %4, i32 8
  %23 = load i64, ptr %22, align 8
  %24 = load i64, ptr %6, align 8
  %25 = getelementptr inbounds i8, ptr %6, i32 8
  %26 = load i64, ptr %25, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %21, i64 %23, i64 %24, i64 %26)
  %27 = load i64, ptr %5, align 8
  %28 = getelementptr inbounds i8, ptr %5, i32 8
  %29 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %27, i64 poison)
  %30 = and i64 %29, 17592186044415
  %31 = load i64, ptr %5, align 8
  %32 = load i64, ptr %28, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %31, i64 %32, i32 noundef 44)
  %33 = load i64, ptr %10, align 8
  %34 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %33, i64 poison)
  %35 = and i64 %34, 17592186044415
  %36 = load i64, ptr %5, align 8
  %37 = load i64, ptr %28, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 %36, i64 %37, i32 noundef 88)
  %38 = load i64, ptr %11, align 8
  %39 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %38, i64 poison)
  store i64 %30, ptr %0, align 4
  %40 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %35, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %39, ptr %41, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @load128_le.95(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @load128_le_.96(ptr noundef %1, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @load128_le_.96(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.val = load i64, ptr %0, align 1
  %3 = tail call fastcc i64 @load64.97(i64 %.val)
  %4 = tail call fastcc i64 @__uint64_identity.98(i64 noundef %3)
  store i64 %4, ptr %1, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 8
  %.val4 = load i64, ptr %5, align 1
  %6 = tail call fastcc i64 @load64.97(i64 %.val4)
  %7 = tail call fastcc i64 @__uint64_identity.98(i64 noundef %6)
  %8 = getelementptr inbounds i8, ptr %1, i32 8
  store i64 %7, ptr %8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @load64.97(i64 %.0.val) unnamed_addr #0 {
  ret i64 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @__uint64_identity.98(i64 noundef %0) unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update_block(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update.99(ptr %0, ptr %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_update.99(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  call fastcc void @load128_le.95(ptr dead_on_unwind noalias nonnull writable align 4 %5, ptr noundef %2)
  %8 = load i64, ptr %5, align 8
  %9 = getelementptr inbounds i8, ptr %5, i32 8
  %10 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %8, i64 poison)
  %11 = and i64 %10, 17592186044415
  %12 = load i64, ptr %5, align 8
  %13 = load i64, ptr %9, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %12, i64 %13, i32 noundef 44)
  %14 = load i64, ptr %6, align 8
  %15 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %14, i64 poison)
  %16 = and i64 %15, 17592186044415
  %17 = load i64, ptr %5, align 8
  %18 = load i64, ptr %9, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %17, i64 %18, i32 noundef 88)
  %19 = load i64, ptr %7, align 8
  %20 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %19, i64 poison)
  store i64 %11, ptr %4, align 8
  %21 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 %16, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %4, i32 16
  %23 = or i64 %20, 1099511627776
  store i64 %23, ptr %22, align 8
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply.100(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply.100(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %0, align 4
  %5 = load i64, ptr %1, align 4
  %6 = add i64 %5, %4
  store i64 %6, ptr %0, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %1, i32 8
  %10 = load i64, ptr %9, align 4
  %11 = add i64 %10, %8
  store i64 %11, ptr %7, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 16
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %1, i32 16
  %15 = load i64, ptr %14, align 4
  %16 = add i64 %15, %13
  store i64 %16, ptr %12, align 4
  tail call fastcc void @Hacl_Bignum_Fmul_fmul.101(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_fmul.101(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca [3 x %struct.FStar_UInt128_uint128], align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) %1, i32 24, i1 false)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %7 = getelementptr inbounds i8, ptr %5, i32 16
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %8 = getelementptr inbounds i8, ptr %5, i32 32
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  call fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_.102(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %2)
  call fastcc void @Hacl_Bignum_Fproduct_carry_wide_.103(ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Modulo_carry_top_wide.104(ptr noundef nonnull %5)
  call fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.105(ptr noundef %0, ptr noundef nonnull %5)
  %9 = load i64, ptr %0, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  %11 = load i64, ptr %10, align 4
  %12 = and i64 %9, 17592186044415
  %13 = lshr i64 %9, 44
  %14 = add i64 %11, %13
  store i64 %12, ptr %0, align 4
  store i64 %14, ptr %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_mul_shift_reduce_.102(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %2, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.106(ptr noundef %0, ptr noundef %1, i64 noundef %4)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.107(ptr noundef %1)
  %5 = getelementptr inbounds i8, ptr %2, i32 8
  %6 = load i64, ptr %5, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.106(ptr noundef %0, ptr noundef %1, i64 noundef %6)
  tail call fastcc void @Hacl_Bignum_Fmul_shift_reduce.107(ptr noundef %1)
  %7 = getelementptr inbounds i8, ptr %2, i32 16
  %8 = load i64, ptr %7, align 4
  tail call fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.106(ptr noundef %0, ptr noundef %1, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_wide_.103(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 8
  %3 = alloca %struct.FStar_UInt128_uint128, align 4
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %.sroa.01.0.copyload = load i64, ptr %0, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.0.0.copyload = load i64, ptr %5, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %6 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.01.0.copyload, i64 poison)
  %7 = and i64 %6, 17592186044415
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %.sroa.01.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 44)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %7)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  %8 = load i64, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i32 8
  %10 = load i64, ptr %9, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %8, i64 %10)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %11 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.01.0.copyload.1 = load i64, ptr %11, align 4
  %.sroa.3.0..sroa_idx.1 = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.3.0.copyload.1 = load i64, ptr %.sroa.3.0..sroa_idx.1, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.0.0.copyload.1 = load i64, ptr %12, align 4
  %.sroa.2.0..sroa_idx.1 = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.2.0.copyload.1 = load i64, ptr %.sroa.2.0..sroa_idx.1, align 4
  %13 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.01.0.copyload.1, i64 poison)
  %14 = and i64 %13, 17592186044415
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %.sroa.01.0.copyload.1, i64 %.sroa.3.0.copyload.1, i32 noundef 44)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef %14)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  %15 = load i64, ptr %2, align 8
  %16 = getelementptr inbounds i8, ptr %2, i32 8
  %17 = load i64, ptr %16, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.0.0.copyload.1, i64 %.sroa.2.0.copyload.1, i64 %15, i64 %17)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_carry_top_wide.104(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.FStar_UInt128_uint128, align 4
  %3 = alloca %struct.FStar_UInt128_uint128, align 8
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 4
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.02.0.copyload = load i64, ptr %7, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %3, i64 noundef 4398046511103)
  %8 = load i64, ptr %3, align 8
  %9 = getelementptr inbounds i8, ptr %3, i32 8
  %10 = load i64, ptr %9, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %2, i64 %.sroa.02.0.copyload, i64 %.sroa.3.0.copyload, i64 %8, i64 %10)
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.02.0.copyload, i64 %.sroa.3.0.copyload, i32 noundef 42)
  %11 = load i64, ptr %4, align 8
  %12 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %11, i64 poison)
  %13 = mul i64 %12, 5
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 noundef %13)
  %14 = load i64, ptr %6, align 8
  %15 = getelementptr inbounds i8, ptr %6, i32 8
  %16 = load i64, ptr %15, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %14, i64 %16)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_copy_from_wide_.105(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %.sroa.0.0.copyload = load i64, ptr %1, align 4
  %3 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.0.0.copyload, i64 poison)
  store i64 %3, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 16
  %.sroa.0.0.copyload.1 = load i64, ptr %4, align 4
  %5 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.0.0.copyload.1, i64 poison)
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %5, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %1, i32 32
  %.sroa.0.0.copyload.2 = load i64, ptr %7, align 4
  %8 = tail call i64 @FStar_UInt128_uint128_to_uint64(i64 %.sroa.0.0.copyload.2, i64 poison)
  %9 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %8, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_sum_scalar_multiplication_.106(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 4
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %6 = load i64, ptr %1, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %6, i64 noundef %2)
  %7 = load i64, ptr %5, align 8
  %8 = getelementptr inbounds i8, ptr %5, i32 8
  %9 = load i64, ptr %8, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %7, i64 %9)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %10 = getelementptr inbounds i8, ptr %0, i32 16
  %.sroa.0.0.copyload.1 = load i64, ptr %10, align 4
  %.sroa.2.0..sroa_idx.1 = getelementptr inbounds i8, ptr %0, i32 24
  %.sroa.2.0.copyload.1 = load i64, ptr %.sroa.2.0..sroa_idx.1, align 4
  %11 = getelementptr inbounds i8, ptr %1, i32 8
  %12 = load i64, ptr %11, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %12, i64 noundef %2)
  %13 = load i64, ptr %5, align 8
  %14 = getelementptr inbounds i8, ptr %5, i32 8
  %15 = load i64, ptr %14, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.0.0.copyload.1, i64 %.sroa.2.0.copyload.1, i64 %13, i64 %15)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %16 = getelementptr inbounds i8, ptr %0, i32 32
  %.sroa.0.0.copyload.2 = load i64, ptr %16, align 4
  %.sroa.2.0..sroa_idx.2 = getelementptr inbounds i8, ptr %0, i32 40
  %.sroa.2.0.copyload.2 = load i64, ptr %.sroa.2.0..sroa_idx.2, align 4
  %17 = getelementptr inbounds i8, ptr %1, i32 16
  %18 = load i64, ptr %17, align 4
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 noundef %18, i64 noundef %2)
  %19 = load i64, ptr %5, align 8
  %20 = getelementptr inbounds i8, ptr %5, i32 8
  %21 = load i64, ptr %20, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %4, i64 %.sroa.0.0.copyload.2, i64 %.sroa.2.0.copyload.2, i64 %19, i64 %21)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fmul_shift_reduce.107(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 16
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 8
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %5, ptr %6, align 4
  %7 = load i64, ptr %0, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %7, ptr %8, align 4
  store i64 %3, ptr %0, align 4
  tail call fastcc void @Hacl_Bignum_Modulo_reduce.108(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_reduce.108(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = mul i64 %2, 20
  store i64 %3, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %6, %4
  %.tr9 = phi ptr [ %2, %4 ], [ %8, %6 ]
  %.tr10 = phi i32 [ %3, %4 ], [ %7, %6 ]
  %5 = icmp eq i32 %.tr10, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %tailrecurse
  %7 = add i32 %.tr10, -1
  %8 = getelementptr inbounds i8, ptr %.tr9, i32 16
  tail call void @Hacl_Poly1305_64_update_block(ptr %0, ptr %1, ptr noundef %.tr9)
  br label %tailrecurse

9:                                                ; preds = %tailrecurse
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_update_last(ptr %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_process_last_block(ptr %0, ptr %1, ptr noundef %2, i64 noundef %7)
  br label %8

8:                                                ; preds = %6, %4
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass.109(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_process_last_block(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [16 x i8], align 1
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds i8, ptr %5, i32 6
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %5, i32 7
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %5, i32 8
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %5, i32 9
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %5, i32 10
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds i8, ptr %5, i32 11
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %5, i32 12
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds i8, ptr %5, i32 13
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds i8, ptr %5, i32 14
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds i8, ptr %5, i32 15
  store i8 0, ptr %20, align 1
  %21 = trunc nuw i64 %3 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %2, i32 %21, i1 false)
  %22 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 %21
  store i8 1, ptr %22, align 1
  call fastcc void @Hacl_Impl_Poly1305_64_poly1305_process_last_block_(ptr noundef nonnull %5, ptr %0, ptr %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass.109(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Bignum_Fproduct_carry_limb_.110(ptr noundef %0)
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top.111(ptr noundef %0)
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  %6 = load i64, ptr %5, align 4
  %7 = and i64 %2, 17592186044415
  %8 = lshr i64 %2, 44
  %9 = add i64 %4, %8
  %10 = and i64 %9, 17592186044415
  %11 = lshr i64 %9, 44
  %12 = add i64 %11, %6
  store i64 %7, ptr %0, align 4
  store i64 %10, ptr %3, align 4
  store i64 %12, ptr %5, align 4
  tail call fastcc void @Hacl_Bignum_Modulo_carry_top.111(ptr noundef nonnull %0)
  %13 = load i64, ptr %0, align 4
  %14 = load i64, ptr %3, align 4
  %15 = and i64 %13, 17592186044415
  %16 = lshr i64 %13, 44
  %17 = add i64 %14, %16
  store i64 %15, ptr %0, align 4
  store i64 %17, ptr %3, align 4
  %18 = load i64, ptr %5, align 4
  %19 = tail call fastcc i64 @FStar_UInt64_gte_mask.112(i64 noundef %15)
  %20 = tail call fastcc i64 @FStar_UInt64_eq_mask.113(i64 noundef %17, i64 noundef 17592186044415)
  %21 = tail call fastcc i64 @FStar_UInt64_eq_mask.113(i64 noundef %18, i64 noundef 4398046511103)
  %22 = and i64 %20, %19
  %23 = and i64 %22, %21
  %24 = and i64 %23, 17592186044411
  %25 = sub nsw i64 %15, %24
  %26 = and i64 %23, 17592186044415
  %27 = sub i64 %17, %26
  %28 = and i64 %23, 4398046511103
  %29 = sub i64 %18, %28
  store i64 %25, ptr %0, align 4
  store i64 %27, ptr %3, align 4
  store i64 %29, ptr %5, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Fproduct_carry_limb_.110(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = and i64 %2, 17592186044415
  %6 = lshr i64 %2, 44
  store i64 %5, ptr %0, align 4
  %7 = add i64 %4, %6
  store i64 %7, ptr %3, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 8
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 16
  %11 = load i64, ptr %10, align 4
  %12 = and i64 %9, 17592186044415
  %13 = lshr i64 %9, 44
  store i64 %12, ptr %8, align 4
  %14 = add i64 %11, %13
  store i64 %14, ptr %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Bignum_Modulo_carry_top.111(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 16
  %3 = load i64, ptr %2, align 4
  %4 = load i64, ptr %0, align 4
  %5 = lshr i64 %3, 42
  %6 = and i64 %3, 4398046511103
  store i64 %6, ptr %2, align 4
  %7 = mul nuw nsw i64 %5, 5
  %8 = add i64 %7, %4
  store i64 %8, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @FStar_UInt64_gte_mask.112(i64 noundef %0) unnamed_addr #0 {
  %2 = and i64 %0, 9223372036854775807
  %isnotneg = icmp ugt i64 %2, 17592186044410
  %isnotneg6 = icmp sgt i64 %0, -1
  %3 = and i1 %isnotneg6, %isnotneg
  %4 = sext i1 %3 to i64
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i64 -1, 1) i64 @FStar_UInt64_eq_mask.113(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = xor i64 %0, %1
  %4 = xor i64 %3, -1
  %5 = shl i64 %4, 32
  %6 = and i64 %5, %4
  %7 = shl i64 %6, 16
  %8 = and i64 %7, %6
  %9 = shl i64 %8, 8
  %10 = and i64 %9, %8
  %11 = shl i64 %10, 4
  %12 = and i64 %11, %10
  %13 = shl i64 %12, 2
  %14 = and i64 %13, %12
  %15 = shl i64 %14, 1
  %16 = and i64 %15, %14
  %17 = ashr i64 %16, 63
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Poly1305_64_poly1305_process_last_block_(ptr noundef %0, ptr %1, ptr %2) unnamed_addr #0 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  call fastcc void @load128_le.95(ptr dead_on_unwind noalias nonnull writable align 4 %5, ptr noundef %0)
  %8 = load i64, ptr %5, align 8
  %9 = getelementptr inbounds i8, ptr %5, i32 8
  %10 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %8, i64 poison)
  %11 = and i64 %10, 17592186044415
  %12 = load i64, ptr %5, align 8
  %13 = load i64, ptr %9, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %12, i64 %13, i32 noundef 44)
  %14 = load i64, ptr %6, align 8
  %15 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %14, i64 poison)
  %16 = and i64 %15, 17592186044415
  %17 = load i64, ptr %5, align 8
  %18 = load i64, ptr %9, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %17, i64 %18, i32 noundef 88)
  %19 = load i64, ptr %7, align 8
  %20 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %19, i64 poison)
  store i64 %11, ptr %4, align 8
  %21 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 %16, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %4, i32 16
  store i64 %20, ptr %22, align 8
  call fastcc void @Hacl_Bignum_AddAndMultiply_add_and_multiply.100(ptr noundef %2, ptr noundef nonnull %4, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_finish(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  call fastcc void @load128_le.95(ptr dead_on_unwind noalias nonnull writable align 4 %5, ptr noundef %3)
  %11 = load i64, ptr %1, align 4
  %12 = getelementptr inbounds i8, ptr %1, i32 8
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %1, i32 16
  %15 = load i64, ptr %14, align 4
  %16 = shl i64 %15, 24
  %17 = lshr i64 %13, 20
  %18 = or i64 %16, %17
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %18)
  %19 = load i64, ptr %8, align 8
  %20 = getelementptr inbounds i8, ptr %8, i32 8
  %21 = load i64, ptr %20, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %19, i64 %21, i32 noundef 64)
  %22 = shl i64 %13, 44
  %23 = or i64 %22, %11
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 noundef %23)
  %24 = load i64, ptr %7, align 8
  %25 = getelementptr inbounds i8, ptr %7, i32 8
  %26 = load i64, ptr %25, align 8
  %27 = load i64, ptr %9, align 8
  %28 = getelementptr inbounds i8, ptr %9, i32 8
  %29 = load i64, ptr %28, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %24, i64 %26, i64 %27, i64 %29)
  %30 = load i64, ptr %6, align 8
  %31 = getelementptr inbounds i8, ptr %6, i32 8
  %32 = load i64, ptr %31, align 8
  %33 = load i64, ptr %5, align 8
  %34 = getelementptr inbounds i8, ptr %5, i32 8
  %35 = load i64, ptr %34, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 %30, i64 %32, i64 %33, i64 %35)
  %36 = load i64, ptr %10, align 8
  %37 = getelementptr inbounds i8, ptr %10, i32 8
  %38 = load i64, ptr %37, align 8
  call fastcc void @store128_le.114(ptr noundef %2, i64 %36, i64 %38)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_le.114(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 %2, ptr %5, align 8
  call fastcc void @store128_le_.115(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_le_.115(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = tail call fastcc i64 @__uint64_identity.98(i64 noundef %3)
  tail call fastcc void @store64.116(ptr noundef %0, i64 noundef %4)
  %5 = getelementptr inbounds i8, ptr %0, i32 8
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  %7 = load i64, ptr %6, align 4
  %8 = tail call fastcc i64 @__uint64_identity.98(i64 noundef %7)
  tail call fastcc void @store64.116(ptr noundef nonnull %5, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store64.116(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_64_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_crypto_onetimeauth_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [6 x i64], align 8
  %6 = alloca %struct.Hacl_Impl_Poly1305_64_State_poly1305_state, align 4
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i32 48, i1 false)
  %13 = getelementptr inbounds i8, ptr %5, i32 24
  call fastcc void @Hacl_Impl_Poly1305_64_mk_state.94(ptr dead_on_unwind noalias nonnull writable align 4 %6, ptr noundef nonnull %5, ptr noundef nonnull %13)
  %14 = getelementptr inbounds i8, ptr %3, i32 16
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds i8, ptr %6, i32 4
  %17 = load ptr, ptr %16, align 4
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_complete(ptr %15, ptr %17, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  %.sroa.1.0.copyload = load ptr, ptr %16, align 4
  call fastcc void @load128_le.95(ptr dead_on_unwind noalias nonnull writable align 4 %7, ptr noundef nonnull %14)
  %18 = load i64, ptr %.sroa.1.0.copyload, align 4
  %19 = getelementptr inbounds i8, ptr %.sroa.1.0.copyload, i32 8
  %20 = load i64, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %.sroa.1.0.copyload, i32 16
  %22 = load i64, ptr %21, align 4
  %23 = shl i64 %22, 24
  %24 = lshr i64 %20, 20
  %25 = or i64 %23, %24
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef %25)
  %26 = load i64, ptr %10, align 8
  %27 = getelementptr inbounds i8, ptr %10, i32 8
  %28 = load i64, ptr %27, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %26, i64 %28, i32 noundef 64)
  %29 = shl i64 %20, 44
  %30 = or i64 %29, %18
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef %30)
  %31 = load i64, ptr %9, align 8
  %32 = getelementptr inbounds i8, ptr %9, i32 8
  %33 = load i64, ptr %32, align 8
  %34 = load i64, ptr %11, align 8
  %35 = getelementptr inbounds i8, ptr %11, i32 8
  %36 = load i64, ptr %35, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %31, i64 %33, i64 %34, i64 %36)
  %37 = load i64, ptr %8, align 8
  %38 = getelementptr inbounds i8, ptr %8, i32 8
  %39 = load i64, ptr %38, align 8
  %40 = load i64, ptr %7, align 8
  %41 = getelementptr inbounds i8, ptr %7, i32 8
  %42 = load i64, ptr %41, align 8
  call void @FStar_UInt128_add_mod(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %37, i64 %39, i64 %40, i64 %42)
  %43 = load i64, ptr %12, align 8
  %44 = getelementptr inbounds i8, ptr %12, i32 8
  %45 = load i64, ptr %44, align 8
  call fastcc void @store128_le.114(ptr noundef %0, i64 %43, i64 %45)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_complete(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = lshr i64 %3, 4
  %7 = and i64 %3, 15
  tail call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_partial.117(ptr %0, ptr %1, ptr noundef %2, i64 noundef %6, ptr noundef %4)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = trunc i64 %3 to i32
  %11 = and i32 %10, -16
  %12 = getelementptr inbounds i8, ptr %2, i32 %11
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_process_last_block(ptr %0, ptr %1, ptr noundef %12, i64 noundef %7)
  br label %13

13:                                               ; preds = %9, %5
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_last_pass.109(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_partial.117(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  %9 = alloca %struct.FStar_UInt128_uint128, align 8
  %10 = alloca %struct.FStar_UInt128_uint128, align 8
  %11 = alloca %struct.FStar_UInt128_uint128, align 8
  %12 = alloca %struct.FStar_UInt128_uint128, align 8
  %13 = alloca %struct.FStar_UInt128_uint128, align 8
  call fastcc void @load128_le.95(ptr dead_on_unwind noalias nonnull writable align 4 %6, ptr noundef %4)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %10, i64 noundef 1152921487695413244)
  %14 = load i64, ptr %10, align 8
  %15 = getelementptr inbounds i8, ptr %10, i32 8
  %16 = load i64, ptr %15, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %9, i64 %14, i64 %16, i32 noundef 64)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %11, i64 noundef 1152921487695413247)
  %17 = load i64, ptr %9, align 8
  %18 = getelementptr inbounds i8, ptr %9, i32 8
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %11, align 8
  %21 = getelementptr inbounds i8, ptr %11, i32 8
  %22 = load i64, ptr %21, align 8
  call void @FStar_UInt128_logor(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 %17, i64 %19, i64 %20, i64 %22)
  %23 = load i64, ptr %6, align 8
  %24 = getelementptr inbounds i8, ptr %6, i32 8
  %25 = load i64, ptr %24, align 8
  %26 = load i64, ptr %8, align 8
  %27 = getelementptr inbounds i8, ptr %8, i32 8
  %28 = load i64, ptr %27, align 8
  call void @FStar_UInt128_logand(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 %23, i64 %25, i64 %26, i64 %28)
  %29 = load i64, ptr %7, align 8
  %30 = getelementptr inbounds i8, ptr %7, i32 8
  %31 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %29, i64 poison)
  %32 = and i64 %31, 17592186044415
  %33 = load i64, ptr %7, align 8
  %34 = load i64, ptr %30, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %12, i64 %33, i64 %34, i32 noundef 44)
  %35 = load i64, ptr %12, align 8
  %36 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %35, i64 poison)
  %37 = and i64 %36, 17592186044415
  %38 = load i64, ptr %7, align 8
  %39 = load i64, ptr %30, align 8
  call void @FStar_UInt128_shift_right(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %13, i64 %38, i64 %39, i32 noundef 88)
  %40 = load i64, ptr %13, align 8
  %41 = call i64 @FStar_UInt128_uint128_to_uint64(i64 %40, i64 poison)
  store i64 %32, ptr %0, align 4
  %42 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %37, ptr %42, align 4
  %43 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %41, ptr %43, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks.118(ptr nonnull %0, ptr nonnull %1, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Standalone_Poly1305_64_poly1305_blocks.118(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %6, %4
  %.tr9 = phi ptr [ %2, %4 ], [ %8, %6 ]
  %.tr10 = phi i64 [ %3, %4 ], [ %7, %6 ]
  %5 = icmp eq i64 %.tr10, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %tailrecurse
  %7 = add nsw i64 %.tr10, -1
  %8 = getelementptr inbounds i8, ptr %.tr9, i32 16
  tail call fastcc void @Hacl_Impl_Poly1305_64_poly1305_update.99(ptr %0, ptr %1, ptr noundef %.tr9)
  br label %tailrecurse

9:                                                ; preds = %tailrecurse
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_256_init(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_256_init.119(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_init.119(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 544
  %3 = getelementptr inbounds i8, ptr %0, i32 512
  %4 = getelementptr inbounds i8, ptr %0, i32 64
  %5 = getelementptr inbounds i8, ptr %0, i32 128
  %6 = getelementptr inbounds i8, ptr %0, i32 192
  %7 = getelementptr inbounds i8, ptr %0, i32 32
  %8 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 1116352408, ptr %0, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 1899447441, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 -1245643825, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 -373957723, ptr %11, align 4
  store i32 961987163, ptr %8, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 20
  store i32 1508970993, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 -1841331548, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 28
  store i32 -1424204075, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 48
  store i32 -670586216, ptr %7, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 36
  store i32 310598401, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 40
  store i32 607225278, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 44
  store i32 1426881987, ptr %18, align 4
  store i32 1925078388, ptr %15, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 52
  store i32 -2132889090, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 56
  store i32 -1680079193, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 60
  store i32 -1046744716, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 96
  %23 = getelementptr inbounds i8, ptr %0, i32 80
  store i32 -459576895, ptr %4, align 4
  %24 = getelementptr inbounds i8, ptr %0, i32 68
  store i32 -272742522, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %0, i32 72
  store i32 264347078, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 76
  store i32 604807628, ptr %26, align 4
  store i32 770255983, ptr %23, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 84
  store i32 1249150122, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 88
  store i32 1555081692, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 92
  store i32 1996064986, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %0, i32 112
  store i32 -1740746414, ptr %22, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 100
  store i32 -1473132947, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 104
  store i32 -1341970488, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %0, i32 108
  store i32 -1084653625, ptr %33, align 4
  store i32 -958395405, ptr %30, align 4
  %34 = getelementptr inbounds i8, ptr %0, i32 116
  store i32 -710438585, ptr %34, align 4
  %35 = getelementptr inbounds i8, ptr %0, i32 120
  store i32 113926993, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %0, i32 124
  store i32 338241895, ptr %36, align 4
  %37 = getelementptr inbounds i8, ptr %0, i32 160
  %38 = getelementptr inbounds i8, ptr %0, i32 144
  store i32 666307205, ptr %5, align 4
  %39 = getelementptr inbounds i8, ptr %0, i32 132
  store i32 773529912, ptr %39, align 4
  %40 = getelementptr inbounds i8, ptr %0, i32 136
  store i32 1294757372, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %0, i32 140
  store i32 1396182291, ptr %41, align 4
  store i32 1695183700, ptr %38, align 4
  %42 = getelementptr inbounds i8, ptr %0, i32 148
  store i32 1986661051, ptr %42, align 4
  %43 = getelementptr inbounds i8, ptr %0, i32 152
  store i32 -2117940946, ptr %43, align 4
  %44 = getelementptr inbounds i8, ptr %0, i32 156
  store i32 -1838011259, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %0, i32 176
  store i32 -1564481375, ptr %37, align 4
  %46 = getelementptr inbounds i8, ptr %0, i32 164
  store i32 -1474664885, ptr %46, align 4
  %47 = getelementptr inbounds i8, ptr %0, i32 168
  store i32 -1035236496, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %0, i32 172
  store i32 -949202525, ptr %48, align 4
  store i32 -778901479, ptr %45, align 4
  %49 = getelementptr inbounds i8, ptr %0, i32 180
  store i32 -694614492, ptr %49, align 4
  %50 = getelementptr inbounds i8, ptr %0, i32 184
  store i32 -200395387, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %0, i32 188
  store i32 275423344, ptr %51, align 4
  %52 = getelementptr inbounds i8, ptr %0, i32 224
  %53 = getelementptr inbounds i8, ptr %0, i32 208
  store i32 430227734, ptr %6, align 4
  %54 = getelementptr inbounds i8, ptr %0, i32 196
  store i32 506948616, ptr %54, align 4
  %55 = getelementptr inbounds i8, ptr %0, i32 200
  store i32 659060556, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %0, i32 204
  store i32 883997877, ptr %56, align 4
  store i32 958139571, ptr %53, align 4
  %57 = getelementptr inbounds i8, ptr %0, i32 212
  store i32 1322822218, ptr %57, align 4
  %58 = getelementptr inbounds i8, ptr %0, i32 216
  store i32 1537002063, ptr %58, align 4
  %59 = getelementptr inbounds i8, ptr %0, i32 220
  store i32 1747873779, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %0, i32 240
  store i32 1955562222, ptr %52, align 4
  %61 = getelementptr inbounds i8, ptr %0, i32 228
  store i32 2024104815, ptr %61, align 4
  %62 = getelementptr inbounds i8, ptr %0, i32 232
  store i32 -2067236844, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %0, i32 236
  store i32 -1933114872, ptr %63, align 4
  store i32 -1866530822, ptr %60, align 4
  %64 = getelementptr inbounds i8, ptr %0, i32 244
  store i32 -1538233109, ptr %64, align 4
  %65 = getelementptr inbounds i8, ptr %0, i32 248
  store i32 -1090935817, ptr %65, align 4
  %66 = getelementptr inbounds i8, ptr %0, i32 252
  store i32 -965641998, ptr %66, align 4
  %67 = getelementptr inbounds i8, ptr %0, i32 528
  store i32 1779033703, ptr %3, align 4
  %68 = getelementptr inbounds i8, ptr %0, i32 516
  store i32 -1150833019, ptr %68, align 4
  %69 = getelementptr inbounds i8, ptr %0, i32 520
  store i32 1013904242, ptr %69, align 4
  %70 = getelementptr inbounds i8, ptr %0, i32 524
  store i32 -1521486534, ptr %70, align 4
  store i32 1359893119, ptr %67, align 4
  %71 = getelementptr inbounds i8, ptr %0, i32 532
  store i32 -1694144372, ptr %71, align 4
  %72 = getelementptr inbounds i8, ptr %0, i32 536
  store i32 528734635, ptr %72, align 4
  %73 = getelementptr inbounds i8, ptr %0, i32 540
  store i32 1541459225, ptr %73, align 4
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_256_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_256_update.120(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update.120(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
.preheader102.preheader:
  %2 = alloca [16 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes.121(ptr noundef nonnull %2, ptr noundef %1)
  %3 = getelementptr inbounds i8, ptr %0, i32 512
  %4 = getelementptr inbounds i8, ptr %0, i32 256
  %5 = load i32, ptr %2, align 4
  store i32 %5, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %2, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 260
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %2, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 264
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %2, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 268
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %2, i32 16
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 272
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %2, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 276
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %2, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 280
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %2, i32 28
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 284
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %2, i32 32
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 288
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %2, i32 36
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 292
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %2, i32 40
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %0, i32 296
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %2, i32 44
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %0, i32 300
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %2, i32 48
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds i8, ptr %0, i32 304
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds i8, ptr %2, i32 52
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds i8, ptr %0, i32 308
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %2, i32 56
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds i8, ptr %0, i32 312
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %2, i32 60
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds i8, ptr %0, i32 316
  store i32 %49, ptr %50, align 4
  br label %.preheader102

.preheader102:                                    ; preds = %.preheader102.preheader, %52
  %.099 = phi i32 [ %75, %52 ], [ 16, %.preheader102.preheader ]
  %51 = icmp ult i32 %.099, 64
  br i1 %51, label %52, label %76

52:                                               ; preds = %.preheader102
  %53 = getelementptr i32, ptr %4, i32 %.099
  %54 = getelementptr i8, ptr %53, i32 -64
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %53, i32 -60
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i8, ptr %53, i32 -28
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr i8, ptr %53, i32 -8
  %61 = load i32, ptr %60, align 4
  %62 = call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 15)
  %63 = call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13)
  %64 = lshr i32 %61, 10
  %65 = xor i32 %63, %64
  %66 = xor i32 %65, %62
  %67 = call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 25)
  %68 = call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 14)
  %69 = lshr i32 %57, 3
  %70 = xor i32 %68, %69
  %71 = xor i32 %70, %67
  %72 = add i32 %59, %55
  %73 = add i32 %72, %71
  %74 = add i32 %73, %66
  store i32 %74, ptr %53, align 4
  %75 = add nuw nsw i32 %.099, 1
  br label %.preheader102, !llvm.loop !31

76:                                               ; preds = %.preheader102
  %.sroa.0.0.copyload = load i32, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 516
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 520
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 524
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 528
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 532
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 536
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 540
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 4
  br label %77

77:                                               ; preds = %79, %76
  %.sroa.22.0 = phi i32 [ %.sroa.22.0.copyload, %76 ], [ %.sroa.19.0, %79 ]
  %.sroa.19.0 = phi i32 [ %.sroa.19.0.copyload, %76 ], [ %.sroa.16.0, %79 ]
  %.sroa.16.0 = phi i32 [ %.sroa.16.0.copyload, %76 ], [ %.sroa.13.0, %79 ]
  %.sroa.13.0 = phi i32 [ %.sroa.13.0.copyload, %76 ], [ %108, %79 ]
  %.sroa.10.0 = phi i32 [ %.sroa.10.0.copyload, %76 ], [ %.sroa.7.0, %79 ]
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %76 ], [ %.sroa.4.0, %79 ]
  %.sroa.4.0 = phi i32 [ %.sroa.4.0.copyload, %76 ], [ %.sroa.0.0, %79 ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %76 ], [ %107, %79 ]
  %.0100 = phi i32 [ 0, %76 ], [ %109, %79 ]
  %78 = icmp ult i32 %.0100, 64
  br i1 %78, label %79, label %.preheader.1

79:                                               ; preds = %77
  %80 = getelementptr inbounds i32, ptr %0, i32 %.0100
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds i32, ptr %4, i32 %.0100
  %83 = load i32, ptr %82, align 4
  %84 = call i32 @llvm.fshl.i32(i32 %.sroa.13.0, i32 %.sroa.13.0, i32 26)
  %85 = call i32 @llvm.fshl.i32(i32 %.sroa.13.0, i32 %.sroa.13.0, i32 21)
  %86 = call i32 @llvm.fshl.i32(i32 %.sroa.13.0, i32 %.sroa.13.0, i32 7)
  %87 = xor i32 %85, %86
  %88 = xor i32 %87, %84
  %89 = add i32 %.sroa.22.0, %88
  %90 = and i32 %.sroa.16.0, %.sroa.13.0
  %91 = xor i32 %.sroa.13.0, -1
  %92 = and i32 %.sroa.19.0, %91
  %93 = or i32 %92, %90
  %94 = add i32 %89, %93
  %95 = add i32 %94, %81
  %96 = add i32 %95, %83
  %97 = call i32 @llvm.fshl.i32(i32 %.sroa.0.0, i32 %.sroa.0.0, i32 30)
  %98 = call i32 @llvm.fshl.i32(i32 %.sroa.0.0, i32 %.sroa.0.0, i32 19)
  %99 = call i32 @llvm.fshl.i32(i32 %.sroa.0.0, i32 %.sroa.0.0, i32 10)
  %100 = xor i32 %98, %99
  %101 = xor i32 %100, %97
  %102 = and i32 %.sroa.4.0, %.sroa.0.0
  %103 = xor i32 %.sroa.4.0, %.sroa.0.0
  %104 = and i32 %103, %.sroa.7.0
  %105 = xor i32 %104, %102
  %106 = add i32 %105, %101
  %107 = add i32 %106, %96
  %108 = add i32 %96, %.sroa.10.0
  %109 = add nuw nsw i32 %.0100, 1
  br label %77, !llvm.loop !32

.preheader.1:                                     ; preds = %77
  %110 = load i32, ptr %3, align 4
  %111 = add i32 %.sroa.0.0, %110
  store i32 %111, ptr %3, align 4
  %112 = getelementptr inbounds i8, ptr %0, i32 516
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %.sroa.4.0, %113
  store i32 %114, ptr %112, align 4
  %115 = getelementptr inbounds i8, ptr %0, i32 520
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %.sroa.7.0, %116
  store i32 %117, ptr %115, align 4
  %118 = getelementptr inbounds i8, ptr %0, i32 524
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %.sroa.10.0, %119
  store i32 %120, ptr %118, align 4
  %121 = getelementptr inbounds i8, ptr %0, i32 528
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %.sroa.13.0, %122
  store i32 %123, ptr %121, align 4
  %124 = getelementptr inbounds i8, ptr %0, i32 532
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %.sroa.16.0, %125
  store i32 %126, ptr %124, align 4
  %127 = getelementptr inbounds i8, ptr %0, i32 536
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %.sroa.19.0, %128
  store i32 %129, ptr %127, align 4
  %130 = getelementptr inbounds i8, ptr %0, i32 540
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %.sroa.22.0, %131
  store i32 %132, ptr %130, align 4
  %133 = getelementptr inbounds i8, ptr %0, i32 544
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_from_be_bytes.121(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %4 = icmp ult i32 %.0, 16
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = shl nuw nsw i32 %.0, 2
  %7 = getelementptr inbounds i8, ptr %1, i32 %6
  %.val = load i32, ptr %7, align 1
  %8 = tail call fastcc i32 @load32.122(i32 %.val)
  %9 = tail call fastcc i32 @__bswap_32.123(i32 noundef %8)
  %10 = getelementptr inbounds i32, ptr %0, i32 %.0
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !33

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load32.122(i32 %.0.val) unnamed_addr #0 {
  ret i32 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @__bswap_32.123(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_256_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_256_update_multi.124(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update_multi.124(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %5 = icmp ult i32 %.0, %2
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = shl i32 %.0, 6
  %8 = getelementptr inbounds i8, ptr %1, i32 %7
  tail call fastcc void @Hacl_Impl_SHA2_256_update.120(ptr noundef %0, ptr noundef %8)
  %9 = add nuw i32 %.0, 1
  br label %4, !llvm.loop !34

10:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_256_update_last(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_256_update_last.125(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_update_last.125(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [128 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false)
  %5 = icmp ult i32 %2, 56
  %. = select i1 %5, i32 1, i32 2
  %.019.idx.sroa.sel.idx.sroa.sel.idx = select i1 %5, i32 64, i32 0
  %.019.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %4, i32 %.019.idx.sroa.sel.idx.sroa.sel.idx
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %.019.idx.sroa.sel.idx.sroa.sel, ptr align 1 %1, i32 %2, i1 false)
  %6 = getelementptr inbounds i8, ptr %0, i32 544
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %.019.idx.sroa.sel.idx.sroa.sel, i32 %2
  %9 = sub i32 55, %2
  %10 = and i32 %9, 63
  %11 = getelementptr inbounds i8, ptr %8, i32 1
  %12 = getelementptr inbounds i8, ptr %11, i32 %10
  %13 = zext i32 %7 to i64
  %14 = zext i32 %2 to i64
  %15 = shl nuw nsw i64 %13, 9
  %16 = shl nuw nsw i64 %14, 3
  %17 = add nuw nsw i64 %15, %16
  store i8 -128, ptr %8, align 1
  %18 = tail call fastcc i64 @__bswap_64.126(i64 noundef %17)
  call fastcc void @store64.127(ptr noundef nonnull %12, i64 noundef %18)
  call fastcc void @Hacl_Impl_SHA2_256_update_multi.124(ptr noundef %0, ptr noundef nonnull %.019.idx.sroa.sel.idx.sroa.sel, i32 noundef %.)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @__bswap_64.126(i64 noundef %0) unnamed_addr #0 {
  %2 = and i64 %0, 281474976710655
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store64.127(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_256_finish(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_256_finish.128(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_finish.128(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i32 512
  tail call fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes.129(ptr noundef %1, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint32s_to_be_bytes.129(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call fastcc i32 @__bswap_32.123(i32 noundef %3)
  tail call fastcc void @store32.130(ptr noundef %0, i32 noundef %4)
  %5 = getelementptr inbounds i8, ptr %1, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 4
  %8 = tail call fastcc i32 @__bswap_32.123(i32 noundef %6)
  tail call fastcc void @store32.130(ptr noundef nonnull %7, i32 noundef %8)
  %9 = getelementptr inbounds i8, ptr %1, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 8
  %12 = tail call fastcc i32 @__bswap_32.123(i32 noundef %10)
  tail call fastcc void @store32.130(ptr noundef nonnull %11, i32 noundef %12)
  %13 = getelementptr inbounds i8, ptr %1, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 12
  %16 = tail call fastcc i32 @__bswap_32.123(i32 noundef %14)
  tail call fastcc void @store32.130(ptr noundef nonnull %15, i32 noundef %16)
  %17 = getelementptr inbounds i8, ptr %1, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 16
  %20 = tail call fastcc i32 @__bswap_32.123(i32 noundef %18)
  tail call fastcc void @store32.130(ptr noundef nonnull %19, i32 noundef %20)
  %21 = getelementptr inbounds i8, ptr %1, i32 20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 20
  %24 = tail call fastcc i32 @__bswap_32.123(i32 noundef %22)
  tail call fastcc void @store32.130(ptr noundef nonnull %23, i32 noundef %24)
  %25 = getelementptr inbounds i8, ptr %1, i32 24
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 24
  %28 = tail call fastcc i32 @__bswap_32.123(i32 noundef %26)
  tail call fastcc void @store32.130(ptr noundef nonnull %27, i32 noundef %28)
  %29 = getelementptr inbounds i8, ptr %1, i32 28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 28
  %32 = tail call fastcc i32 @__bswap_32.123(i32 noundef %30)
  tail call fastcc void @store32.130(ptr noundef nonnull %31, i32 noundef %32)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store32.130(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  store i32 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_256_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_256_hash.131(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_256_hash.131(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [137 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(548) %4, i8 0, i32 548, i1 false)
  %5 = lshr i32 %2, 6
  %6 = and i32 %2, 63
  %7 = and i32 %2, -64
  %8 = getelementptr inbounds i8, ptr %1, i32 %7
  call fastcc void @Hacl_Impl_SHA2_256_init.119(ptr noundef nonnull %4)
  call fastcc void @Hacl_Impl_SHA2_256_update_multi.124(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %5)
  call fastcc void @Hacl_Impl_SHA2_256_update_last.125(ptr noundef nonnull %4, ptr noundef %8, i32 noundef %6)
  call fastcc void @Hacl_Impl_SHA2_256_finish.128(ptr noundef nonnull %4, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_384_init(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_384_init(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 1344
  %3 = getelementptr inbounds i8, ptr %0, i32 1280
  %4 = getelementptr inbounds i8, ptr %0, i32 128
  %5 = getelementptr inbounds i8, ptr %0, i32 256
  %6 = getelementptr inbounds i8, ptr %0, i32 384
  %7 = getelementptr inbounds i8, ptr %0, i32 512
  %8 = getelementptr inbounds i8, ptr %0, i32 64
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 4794697086780616226, ptr %0, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 8158064640168781261, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 -5349999486874862801, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 -1606136188198331460, ptr %12, align 4
  store i64 4131703408338449720, ptr %9, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 40
  store i64 6480981068601479193, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 48
  store i64 -7908458776815382629, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 56
  store i64 -6116909921290321640, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 96
  store i64 -2880145864133508542, ptr %8, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 72
  store i64 1334009975649890238, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 80
  store i64 2608012711638119052, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 88
  store i64 6128411473006802146, ptr %19, align 4
  store i64 8268148722764581231, ptr %16, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 104
  store i64 -9160688886553864527, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 112
  store i64 -7215885187991268811, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 120
  store i64 -4495734319001033068, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 192
  %24 = getelementptr inbounds i8, ptr %0, i32 160
  store i64 -1973867731355612462, ptr %4, align 4
  %25 = getelementptr inbounds i8, ptr %0, i32 136
  store i64 -1171420211273849373, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 144
  store i64 1135362057144423861, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 152
  store i64 2597628984639134821, ptr %27, align 4
  store i64 3308224258029322869, ptr %24, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 168
  store i64 5365058923640841347, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 176
  store i64 6679025012923562964, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %0, i32 184
  store i64 8573033837759648693, ptr %30, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 224
  store i64 -7476448914759557205, ptr %23, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 200
  store i64 -6327057829258317296, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %0, i32 208
  store i64 -5763719355590565569, ptr %33, align 4
  %34 = getelementptr inbounds i8, ptr %0, i32 216
  store i64 -4658551843659510044, ptr %34, align 4
  store i64 -4116276920077217854, ptr %31, align 4
  %35 = getelementptr inbounds i8, ptr %0, i32 232
  store i64 -3051310485924567259, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %0, i32 240
  store i64 489312712824947311, ptr %36, align 4
  %37 = getelementptr inbounds i8, ptr %0, i32 248
  store i64 1452737877330783856, ptr %37, align 4
  %38 = getelementptr inbounds i8, ptr %0, i32 320
  %39 = getelementptr inbounds i8, ptr %0, i32 288
  store i64 2861767655752347644, ptr %5, align 4
  %40 = getelementptr inbounds i8, ptr %0, i32 264
  store i64 3322285676063803686, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %0, i32 272
  store i64 5560940570517711597, ptr %41, align 4
  %42 = getelementptr inbounds i8, ptr %0, i32 280
  store i64 5996557281743188959, ptr %42, align 4
  store i64 7280758554555802590, ptr %39, align 4
  %43 = getelementptr inbounds i8, ptr %0, i32 296
  store i64 8532644243296465576, ptr %43, align 4
  %44 = getelementptr inbounds i8, ptr %0, i32 304
  store i64 -9096487096722542874, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %0, i32 312
  store i64 -7894198246740708037, ptr %45, align 4
  %46 = getelementptr inbounds i8, ptr %0, i32 352
  store i64 -6719396339535248540, ptr %38, align 4
  %47 = getelementptr inbounds i8, ptr %0, i32 328
  store i64 -6333637450476146687, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %0, i32 336
  store i64 -4446306890439682159, ptr %48, align 4
  %49 = getelementptr inbounds i8, ptr %0, i32 344
  store i64 -4076793802049405392, ptr %49, align 4
  store i64 -3345356375505022440, ptr %46, align 4
  %50 = getelementptr inbounds i8, ptr %0, i32 360
  store i64 -2983346525034927856, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %0, i32 368
  store i64 -860691631967231958, ptr %51, align 4
  %52 = getelementptr inbounds i8, ptr %0, i32 376
  store i64 1182934255886127544, ptr %52, align 4
  %53 = getelementptr inbounds i8, ptr %0, i32 448
  %54 = getelementptr inbounds i8, ptr %0, i32 416
  store i64 1847814050463011016, ptr %6, align 4
  %55 = getelementptr inbounds i8, ptr %0, i32 392
  store i64 2177327727835720531, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %0, i32 400
  store i64 2830643537854262169, ptr %56, align 4
  %57 = getelementptr inbounds i8, ptr %0, i32 408
  store i64 3796741975233480872, ptr %57, align 4
  store i64 4115178125766777443, ptr %54, align 4
  %58 = getelementptr inbounds i8, ptr %0, i32 424
  store i64 5681478168544905931, ptr %58, align 4
  %59 = getelementptr inbounds i8, ptr %0, i32 432
  store i64 6601373596472566643, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %0, i32 440
  store i64 7507060721942968483, ptr %60, align 4
  %61 = getelementptr inbounds i8, ptr %0, i32 480
  store i64 8399075790359081724, ptr %53, align 4
  %62 = getelementptr inbounds i8, ptr %0, i32 456
  store i64 8693463985226723168, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %0, i32 464
  store i64 -8878714635349349518, ptr %63, align 4
  %64 = getelementptr inbounds i8, ptr %0, i32 472
  store i64 -8302665154208450068, ptr %64, align 4
  store i64 -8016688836872298968, ptr %61, align 4
  %65 = getelementptr inbounds i8, ptr %0, i32 488
  store i64 -6606660893046293015, ptr %65, align 4
  %66 = getelementptr inbounds i8, ptr %0, i32 496
  store i64 -4685533653050689259, ptr %66, align 4
  %67 = getelementptr inbounds i8, ptr %0, i32 504
  store i64 -4147400797238176981, ptr %67, align 4
  %68 = getelementptr inbounds i8, ptr %0, i32 576
  %69 = getelementptr inbounds i8, ptr %0, i32 544
  store i64 -3880063495543823972, ptr %7, align 4
  %70 = getelementptr inbounds i8, ptr %0, i32 520
  store i64 -3348786107499101689, ptr %70, align 4
  %71 = getelementptr inbounds i8, ptr %0, i32 528
  store i64 -1523767162380948706, ptr %71, align 4
  %72 = getelementptr inbounds i8, ptr %0, i32 536
  store i64 -757361751448694408, ptr %72, align 4
  store i64 500013540394364858, ptr %69, align 4
  %73 = getelementptr inbounds i8, ptr %0, i32 552
  store i64 748580250866718886, ptr %73, align 4
  %74 = getelementptr inbounds i8, ptr %0, i32 560
  store i64 1242879168328830382, ptr %74, align 4
  %75 = getelementptr inbounds i8, ptr %0, i32 568
  store i64 1977374033974150939, ptr %75, align 4
  %76 = getelementptr inbounds i8, ptr %0, i32 608
  store i64 2944078676154940804, ptr %68, align 4
  %77 = getelementptr inbounds i8, ptr %0, i32 584
  store i64 3659926193048069267, ptr %77, align 4
  %78 = getelementptr inbounds i8, ptr %0, i32 592
  store i64 4368137639120453308, ptr %78, align 4
  %79 = getelementptr inbounds i8, ptr %0, i32 600
  store i64 4836135668995329356, ptr %79, align 4
  store i64 5532061633213252278, ptr %76, align 4
  %80 = getelementptr inbounds i8, ptr %0, i32 616
  store i64 6448918945643986474, ptr %80, align 4
  %81 = getelementptr inbounds i8, ptr %0, i32 624
  store i64 6902733635092675308, ptr %81, align 4
  %82 = getelementptr inbounds i8, ptr %0, i32 632
  store i64 7801388544844847127, ptr %82, align 4
  %83 = getelementptr inbounds i8, ptr %0, i32 1312
  store i64 -3766243637369397544, ptr %3, align 4
  %84 = getelementptr inbounds i8, ptr %0, i32 1288
  store i64 7105036623409894663, ptr %84, align 4
  %85 = getelementptr inbounds i8, ptr %0, i32 1296
  store i64 -7973340178411365097, ptr %85, align 4
  %86 = getelementptr inbounds i8, ptr %0, i32 1304
  store i64 1526699215303891257, ptr %86, align 4
  store i64 7436329637833083697, ptr %83, align 4
  %87 = getelementptr inbounds i8, ptr %0, i32 1320
  store i64 -8163818279084223215, ptr %87, align 4
  %88 = getelementptr inbounds i8, ptr %0, i32 1328
  store i64 -2662702644619276377, ptr %88, align 4
  %89 = getelementptr inbounds i8, ptr %0, i32 1336
  store i64 5167115440072839076, ptr %89, align 4
  store i64 0, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_384_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_384_update(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_update(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
.preheader106.preheader:
  %2 = alloca [16 x i64], align 8
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %2, i32 16
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %2, i32 24
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %2, i32 32
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %2, i32 40
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %2, i32 48
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %2, i32 56
  store i64 0, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %2, i32 64
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %2, i32 72
  store i64 0, ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %2, i32 80
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %2, i32 88
  store i64 0, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %2, i32 96
  store i64 0, ptr %14, align 8
  %15 = getelementptr inbounds i8, ptr %2, i32 104
  store i64 0, ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %2, i32 112
  store i64 0, ptr %16, align 8
  %17 = getelementptr inbounds i8, ptr %2, i32 120
  store i64 0, ptr %17, align 8
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes.132(ptr noundef nonnull %2, ptr noundef %1)
  %18 = getelementptr inbounds i8, ptr %0, i32 1280
  %19 = getelementptr inbounds i8, ptr %0, i32 640
  %20 = load i64, ptr %2, align 8
  store i64 %20, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %2, i32 8
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds i8, ptr %0, i32 648
  store i64 %22, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %2, i32 16
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr %0, i32 656
  store i64 %25, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %2, i32 24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %0, i32 664
  store i64 %28, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %2, i32 32
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds i8, ptr %0, i32 672
  store i64 %31, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %2, i32 40
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds i8, ptr %0, i32 680
  store i64 %34, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %2, i32 48
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds i8, ptr %0, i32 688
  store i64 %37, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %2, i32 56
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds i8, ptr %0, i32 696
  store i64 %40, ptr %41, align 4
  %42 = getelementptr inbounds i8, ptr %2, i32 64
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds i8, ptr %0, i32 704
  store i64 %43, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %2, i32 72
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr %0, i32 712
  store i64 %46, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %2, i32 80
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds i8, ptr %0, i32 720
  store i64 %49, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %2, i32 88
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds i8, ptr %0, i32 728
  store i64 %52, ptr %53, align 4
  %54 = getelementptr inbounds i8, ptr %2, i32 96
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds i8, ptr %0, i32 736
  store i64 %55, ptr %56, align 4
  %57 = getelementptr inbounds i8, ptr %2, i32 104
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr %0, i32 744
  store i64 %58, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %2, i32 112
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds i8, ptr %0, i32 752
  store i64 %61, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %2, i32 120
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds i8, ptr %0, i32 760
  store i64 %64, ptr %65, align 4
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106.preheader, %67
  %.0103 = phi i32 [ %90, %67 ], [ 16, %.preheader106.preheader ]
  %66 = icmp ult i32 %.0103, 80
  br i1 %66, label %67, label %91

67:                                               ; preds = %.preheader106
  %68 = getelementptr i64, ptr %19, i32 %.0103
  %69 = getelementptr i8, ptr %68, i32 -128
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr i8, ptr %68, i32 -120
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr i8, ptr %68, i32 -56
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr i8, ptr %68, i32 -16
  %76 = load i64, ptr %75, align 4
  %77 = call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 45)
  %78 = call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 3)
  %79 = lshr i64 %76, 6
  %80 = xor i64 %78, %79
  %81 = xor i64 %80, %77
  %82 = call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 63)
  %83 = call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 56)
  %84 = lshr i64 %72, 7
  %85 = xor i64 %83, %84
  %86 = xor i64 %85, %82
  %87 = add i64 %74, %70
  %88 = add i64 %87, %86
  %89 = add i64 %88, %81
  store i64 %89, ptr %68, align 4
  %90 = add nuw nsw i32 %.0103, 1
  br label %.preheader106, !llvm.loop !35

91:                                               ; preds = %.preheader106
  %.sroa.0.0.copyload = load i64, ptr %18, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1288
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1296
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1304
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1312
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1320
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1328
  %.sroa.19.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1336
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 4
  br label %92

92:                                               ; preds = %94, %91
  %.sroa.22.0 = phi i64 [ %.sroa.22.0.copyload, %91 ], [ %.sroa.19.0, %94 ]
  %.sroa.19.0 = phi i64 [ %.sroa.19.0.copyload, %91 ], [ %.sroa.16.0, %94 ]
  %.sroa.16.0 = phi i64 [ %.sroa.16.0.copyload, %91 ], [ %.sroa.13.0, %94 ]
  %.sroa.13.0 = phi i64 [ %.sroa.13.0.copyload, %91 ], [ %123, %94 ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload, %91 ], [ %.sroa.7.0, %94 ]
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %91 ], [ %.sroa.4.0, %94 ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload, %91 ], [ %.sroa.0.0, %94 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %91 ], [ %122, %94 ]
  %.0104 = phi i32 [ 0, %91 ], [ %124, %94 ]
  %93 = icmp ult i32 %.0104, 80
  br i1 %93, label %94, label %.preheader.1

94:                                               ; preds = %92
  %95 = getelementptr inbounds i64, ptr %0, i32 %.0104
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds i64, ptr %19, i32 %.0104
  %98 = load i64, ptr %97, align 4
  %99 = call i64 @llvm.fshl.i64(i64 %.sroa.13.0, i64 %.sroa.13.0, i64 50)
  %100 = call i64 @llvm.fshl.i64(i64 %.sroa.13.0, i64 %.sroa.13.0, i64 46)
  %101 = call i64 @llvm.fshl.i64(i64 %.sroa.13.0, i64 %.sroa.13.0, i64 23)
  %102 = xor i64 %100, %101
  %103 = xor i64 %102, %99
  %104 = add i64 %.sroa.22.0, %103
  %105 = and i64 %.sroa.16.0, %.sroa.13.0
  %106 = xor i64 %.sroa.13.0, -1
  %107 = and i64 %.sroa.19.0, %106
  %108 = or i64 %107, %105
  %109 = add i64 %104, %108
  %110 = add i64 %109, %96
  %111 = add i64 %110, %98
  %112 = call i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 36)
  %113 = call i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 30)
  %114 = call i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 25)
  %115 = xor i64 %113, %114
  %116 = xor i64 %115, %112
  %117 = and i64 %.sroa.4.0, %.sroa.0.0
  %118 = xor i64 %.sroa.4.0, %.sroa.0.0
  %119 = and i64 %118, %.sroa.7.0
  %120 = xor i64 %119, %117
  %121 = add i64 %120, %116
  %122 = add i64 %121, %111
  %123 = add i64 %111, %.sroa.10.0
  %124 = add nuw nsw i32 %.0104, 1
  br label %92, !llvm.loop !36

.preheader.1:                                     ; preds = %92
  %125 = load i64, ptr %18, align 4
  %126 = add i64 %.sroa.0.0, %125
  store i64 %126, ptr %18, align 4
  %127 = getelementptr inbounds i8, ptr %0, i32 1288
  %128 = load i64, ptr %127, align 4
  %129 = add i64 %.sroa.4.0, %128
  store i64 %129, ptr %127, align 4
  %130 = getelementptr inbounds i8, ptr %0, i32 1296
  %131 = load i64, ptr %130, align 4
  %132 = add i64 %.sroa.7.0, %131
  store i64 %132, ptr %130, align 4
  %133 = getelementptr inbounds i8, ptr %0, i32 1304
  %134 = load i64, ptr %133, align 4
  %135 = add i64 %.sroa.10.0, %134
  store i64 %135, ptr %133, align 4
  %136 = getelementptr inbounds i8, ptr %0, i32 1312
  %137 = load i64, ptr %136, align 4
  %138 = add i64 %.sroa.13.0, %137
  store i64 %138, ptr %136, align 4
  %139 = getelementptr inbounds i8, ptr %0, i32 1320
  %140 = load i64, ptr %139, align 4
  %141 = add i64 %.sroa.16.0, %140
  store i64 %141, ptr %139, align 4
  %142 = getelementptr inbounds i8, ptr %0, i32 1328
  %143 = load i64, ptr %142, align 4
  %144 = add i64 %.sroa.19.0, %143
  store i64 %144, ptr %142, align 4
  %145 = getelementptr inbounds i8, ptr %0, i32 1336
  %146 = load i64, ptr %145, align 4
  %147 = add i64 %.sroa.22.0, %146
  store i64 %147, ptr %145, align 4
  %148 = getelementptr inbounds i8, ptr %0, i32 1344
  %149 = load i64, ptr %148, align 4
  %150 = add i64 %149, 1
  store i64 %150, ptr %148, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes.132(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %4 = icmp ult i32 %.0, 16
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = shl nuw nsw i32 %.0, 3
  %7 = getelementptr inbounds i8, ptr %1, i32 %6
  %.val = load i64, ptr %7, align 1
  %8 = tail call fastcc i64 @load64.133(i64 %.val)
  %9 = tail call fastcc i64 @__bswap_64.134(i64 noundef %8)
  %10 = getelementptr inbounds i64, ptr %0, i32 %.0
  store i64 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !37

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @load64.133(i64 %.0.val) unnamed_addr #0 {
  ret i64 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @__bswap_64.134(i64 noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_384_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_384_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %5 = icmp ult i32 %.0, %2
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = shl i32 %.0, 7
  %8 = getelementptr inbounds i8, ptr %1, i32 %7
  tail call fastcc void @Hacl_Impl_SHA2_384_update(ptr noundef %0, ptr noundef %8)
  %9 = add nuw i32 %.0, 1
  br label %4, !llvm.loop !38

10:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_384_update_last(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_384_update_last(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_update_last(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 0, i32 256, i1 false)
  %9 = icmp ult i64 %2, 112
  %. = select i1 %9, i32 1, i32 2
  %.018.idx.sroa.sel.idx.sroa.sel.idx = select i1 %9, i32 128, i32 0
  %.018.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %4, i32 %.018.idx.sroa.sel.idx.sroa.sel.idx
  %10 = trunc i64 %2 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %.018.idx.sroa.sel.idx.sroa.sel, ptr align 1 %1, i32 %10, i1 false)
  %11 = getelementptr inbounds i8, ptr %0, i32 1344
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %.018.idx.sroa.sel.idx.sroa.sel, i32 %10
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %12, i64 noundef 128)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %2)
  %14 = load i64, ptr %7, align 8
  %15 = getelementptr inbounds i8, ptr %7, i32 8
  %16 = load i64, ptr %15, align 8
  %17 = load i64, ptr %8, align 8
  %18 = getelementptr inbounds i8, ptr %8, i32 8
  %19 = load i64, ptr %18, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %14, i64 %16, i64 %17, i64 %19)
  %20 = load i64, ptr %6, align 8
  %21 = getelementptr inbounds i8, ptr %6, i32 8
  %22 = load i64, ptr %21, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %20, i64 %22, i32 noundef 3)
  %23 = sub i32 111, %10
  %24 = and i32 %23, 127
  %25 = getelementptr inbounds i8, ptr %13, i32 1
  %26 = getelementptr inbounds i8, ptr %25, i32 %24
  store i8 -128, ptr %13, align 1
  %27 = load i64, ptr %5, align 8
  %28 = getelementptr inbounds i8, ptr %5, i32 8
  %29 = load i64, ptr %28, align 8
  call fastcc void @store128_be.135(ptr noundef nonnull %26, i64 %27, i64 %29)
  call fastcc void @Hacl_Impl_SHA2_384_update_multi(ptr noundef %0, ptr noundef nonnull %.018.idx.sroa.sel.idx.sroa.sel, i32 noundef %.)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_be.135(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 %2, ptr %5, align 8
  call fastcc void @store128_be_.136(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_be_.136(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = tail call fastcc i64 @__bswap_64.134(i64 noundef %4)
  tail call fastcc void @store64.137(ptr noundef %0, i64 noundef %5)
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  %7 = load i64, ptr %1, align 4
  %8 = tail call fastcc i64 @__bswap_64.134(i64 noundef %7)
  tail call fastcc void @store64.137(ptr noundef nonnull %6, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store64.137(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_384_finish(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_384_finish(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_finish(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i32 1280
  tail call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes.138(ptr noundef %1, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes.138(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = tail call fastcc i64 @__bswap_64.134(i64 noundef %3)
  tail call fastcc void @store64.137(ptr noundef %0, i64 noundef %4)
  %5 = getelementptr inbounds i8, ptr %1, i32 8
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = tail call fastcc i64 @__bswap_64.134(i64 noundef %6)
  tail call fastcc void @store64.137(ptr noundef nonnull %7, i64 noundef %8)
  %9 = getelementptr inbounds i8, ptr %1, i32 16
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 16
  %12 = tail call fastcc i64 @__bswap_64.134(i64 noundef %10)
  tail call fastcc void @store64.137(ptr noundef nonnull %11, i64 noundef %12)
  %13 = getelementptr inbounds i8, ptr %1, i32 24
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 24
  %16 = tail call fastcc i64 @__bswap_64.134(i64 noundef %14)
  tail call fastcc void @store64.137(ptr noundef nonnull %15, i64 noundef %16)
  %17 = getelementptr inbounds i8, ptr %1, i32 32
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 32
  %20 = tail call fastcc i64 @__bswap_64.134(i64 noundef %18)
  tail call fastcc void @store64.137(ptr noundef nonnull %19, i64 noundef %20)
  %21 = getelementptr inbounds i8, ptr %1, i32 40
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 40
  %24 = tail call fastcc i64 @__bswap_64.134(i64 noundef %22)
  tail call fastcc void @store64.137(ptr noundef nonnull %23, i64 noundef %24)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_384_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_384_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_384_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [169 x i64], align 8
  br label %5

5:                                                ; preds = %7, %3
  %.0 = phi i32 [ 0, %3 ], [ %9, %7 ]
  %6 = icmp ult i32 %.0, 169
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = getelementptr inbounds [169 x i64], ptr %4, i32 0, i32 %.0
  store i64 0, ptr %8, align 8
  %9 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !39

10:                                               ; preds = %5
  %11 = lshr i32 %2, 7
  %12 = and i32 %2, 127
  %13 = and i32 %2, -128
  %14 = getelementptr inbounds i8, ptr %1, i32 %13
  call fastcc void @Hacl_Impl_SHA2_384_init(ptr noundef nonnull %4)
  call fastcc void @Hacl_Impl_SHA2_384_update_multi(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %11)
  %15 = zext nneg i32 %12 to i64
  call fastcc void @Hacl_Impl_SHA2_384_update_last(ptr noundef nonnull %4, ptr noundef %14, i64 noundef %15)
  call fastcc void @Hacl_Impl_SHA2_384_finish(ptr noundef nonnull %4, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_init(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_512_init.139(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_init.139(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i32 1344
  %3 = getelementptr inbounds i8, ptr %0, i32 1280
  %4 = getelementptr inbounds i8, ptr %0, i32 128
  %5 = getelementptr inbounds i8, ptr %0, i32 256
  %6 = getelementptr inbounds i8, ptr %0, i32 384
  %7 = getelementptr inbounds i8, ptr %0, i32 512
  %8 = getelementptr inbounds i8, ptr %0, i32 64
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 4794697086780616226, ptr %0, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 8158064640168781261, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 -5349999486874862801, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 -1606136188198331460, ptr %12, align 4
  store i64 4131703408338449720, ptr %9, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 40
  store i64 6480981068601479193, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 48
  store i64 -7908458776815382629, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 56
  store i64 -6116909921290321640, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 96
  store i64 -2880145864133508542, ptr %8, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 72
  store i64 1334009975649890238, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 80
  store i64 2608012711638119052, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 88
  store i64 6128411473006802146, ptr %19, align 4
  store i64 8268148722764581231, ptr %16, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 104
  store i64 -9160688886553864527, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 112
  store i64 -7215885187991268811, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 120
  store i64 -4495734319001033068, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 192
  %24 = getelementptr inbounds i8, ptr %0, i32 160
  store i64 -1973867731355612462, ptr %4, align 4
  %25 = getelementptr inbounds i8, ptr %0, i32 136
  store i64 -1171420211273849373, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 144
  store i64 1135362057144423861, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 152
  store i64 2597628984639134821, ptr %27, align 4
  store i64 3308224258029322869, ptr %24, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 168
  store i64 5365058923640841347, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 176
  store i64 6679025012923562964, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %0, i32 184
  store i64 8573033837759648693, ptr %30, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 224
  store i64 -7476448914759557205, ptr %23, align 4
  %32 = getelementptr inbounds i8, ptr %0, i32 200
  store i64 -6327057829258317296, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %0, i32 208
  store i64 -5763719355590565569, ptr %33, align 4
  %34 = getelementptr inbounds i8, ptr %0, i32 216
  store i64 -4658551843659510044, ptr %34, align 4
  store i64 -4116276920077217854, ptr %31, align 4
  %35 = getelementptr inbounds i8, ptr %0, i32 232
  store i64 -3051310485924567259, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %0, i32 240
  store i64 489312712824947311, ptr %36, align 4
  %37 = getelementptr inbounds i8, ptr %0, i32 248
  store i64 1452737877330783856, ptr %37, align 4
  %38 = getelementptr inbounds i8, ptr %0, i32 320
  %39 = getelementptr inbounds i8, ptr %0, i32 288
  store i64 2861767655752347644, ptr %5, align 4
  %40 = getelementptr inbounds i8, ptr %0, i32 264
  store i64 3322285676063803686, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %0, i32 272
  store i64 5560940570517711597, ptr %41, align 4
  %42 = getelementptr inbounds i8, ptr %0, i32 280
  store i64 5996557281743188959, ptr %42, align 4
  store i64 7280758554555802590, ptr %39, align 4
  %43 = getelementptr inbounds i8, ptr %0, i32 296
  store i64 8532644243296465576, ptr %43, align 4
  %44 = getelementptr inbounds i8, ptr %0, i32 304
  store i64 -9096487096722542874, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %0, i32 312
  store i64 -7894198246740708037, ptr %45, align 4
  %46 = getelementptr inbounds i8, ptr %0, i32 352
  store i64 -6719396339535248540, ptr %38, align 4
  %47 = getelementptr inbounds i8, ptr %0, i32 328
  store i64 -6333637450476146687, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %0, i32 336
  store i64 -4446306890439682159, ptr %48, align 4
  %49 = getelementptr inbounds i8, ptr %0, i32 344
  store i64 -4076793802049405392, ptr %49, align 4
  store i64 -3345356375505022440, ptr %46, align 4
  %50 = getelementptr inbounds i8, ptr %0, i32 360
  store i64 -2983346525034927856, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %0, i32 368
  store i64 -860691631967231958, ptr %51, align 4
  %52 = getelementptr inbounds i8, ptr %0, i32 376
  store i64 1182934255886127544, ptr %52, align 4
  %53 = getelementptr inbounds i8, ptr %0, i32 448
  %54 = getelementptr inbounds i8, ptr %0, i32 416
  store i64 1847814050463011016, ptr %6, align 4
  %55 = getelementptr inbounds i8, ptr %0, i32 392
  store i64 2177327727835720531, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %0, i32 400
  store i64 2830643537854262169, ptr %56, align 4
  %57 = getelementptr inbounds i8, ptr %0, i32 408
  store i64 3796741975233480872, ptr %57, align 4
  store i64 4115178125766777443, ptr %54, align 4
  %58 = getelementptr inbounds i8, ptr %0, i32 424
  store i64 5681478168544905931, ptr %58, align 4
  %59 = getelementptr inbounds i8, ptr %0, i32 432
  store i64 6601373596472566643, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %0, i32 440
  store i64 7507060721942968483, ptr %60, align 4
  %61 = getelementptr inbounds i8, ptr %0, i32 480
  store i64 8399075790359081724, ptr %53, align 4
  %62 = getelementptr inbounds i8, ptr %0, i32 456
  store i64 8693463985226723168, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %0, i32 464
  store i64 -8878714635349349518, ptr %63, align 4
  %64 = getelementptr inbounds i8, ptr %0, i32 472
  store i64 -8302665154208450068, ptr %64, align 4
  store i64 -8016688836872298968, ptr %61, align 4
  %65 = getelementptr inbounds i8, ptr %0, i32 488
  store i64 -6606660893046293015, ptr %65, align 4
  %66 = getelementptr inbounds i8, ptr %0, i32 496
  store i64 -4685533653050689259, ptr %66, align 4
  %67 = getelementptr inbounds i8, ptr %0, i32 504
  store i64 -4147400797238176981, ptr %67, align 4
  %68 = getelementptr inbounds i8, ptr %0, i32 576
  %69 = getelementptr inbounds i8, ptr %0, i32 544
  store i64 -3880063495543823972, ptr %7, align 4
  %70 = getelementptr inbounds i8, ptr %0, i32 520
  store i64 -3348786107499101689, ptr %70, align 4
  %71 = getelementptr inbounds i8, ptr %0, i32 528
  store i64 -1523767162380948706, ptr %71, align 4
  %72 = getelementptr inbounds i8, ptr %0, i32 536
  store i64 -757361751448694408, ptr %72, align 4
  store i64 500013540394364858, ptr %69, align 4
  %73 = getelementptr inbounds i8, ptr %0, i32 552
  store i64 748580250866718886, ptr %73, align 4
  %74 = getelementptr inbounds i8, ptr %0, i32 560
  store i64 1242879168328830382, ptr %74, align 4
  %75 = getelementptr inbounds i8, ptr %0, i32 568
  store i64 1977374033974150939, ptr %75, align 4
  %76 = getelementptr inbounds i8, ptr %0, i32 608
  store i64 2944078676154940804, ptr %68, align 4
  %77 = getelementptr inbounds i8, ptr %0, i32 584
  store i64 3659926193048069267, ptr %77, align 4
  %78 = getelementptr inbounds i8, ptr %0, i32 592
  store i64 4368137639120453308, ptr %78, align 4
  %79 = getelementptr inbounds i8, ptr %0, i32 600
  store i64 4836135668995329356, ptr %79, align 4
  store i64 5532061633213252278, ptr %76, align 4
  %80 = getelementptr inbounds i8, ptr %0, i32 616
  store i64 6448918945643986474, ptr %80, align 4
  %81 = getelementptr inbounds i8, ptr %0, i32 624
  store i64 6902733635092675308, ptr %81, align 4
  %82 = getelementptr inbounds i8, ptr %0, i32 632
  store i64 7801388544844847127, ptr %82, align 4
  %83 = getelementptr inbounds i8, ptr %0, i32 1312
  store i64 7640891576956012808, ptr %3, align 4
  %84 = getelementptr inbounds i8, ptr %0, i32 1288
  store i64 -4942790177534073029, ptr %84, align 4
  %85 = getelementptr inbounds i8, ptr %0, i32 1296
  store i64 4354685564936845355, ptr %85, align 4
  %86 = getelementptr inbounds i8, ptr %0, i32 1304
  store i64 -6534734903238641935, ptr %86, align 4
  store i64 5840696475078001361, ptr %83, align 4
  %87 = getelementptr inbounds i8, ptr %0, i32 1320
  store i64 -7276294671716946913, ptr %87, align 4
  %88 = getelementptr inbounds i8, ptr %0, i32 1328
  store i64 2270897969802886507, ptr %88, align 4
  %89 = getelementptr inbounds i8, ptr %0, i32 1336
  store i64 6620516959819538809, ptr %89, align 4
  store i64 0, ptr %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_512_update.140(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update.140(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
.preheader106.preheader:
  %2 = alloca [16 x i64], align 8
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %2, i32 16
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %2, i32 24
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %2, i32 32
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %2, i32 40
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %2, i32 48
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %2, i32 56
  store i64 0, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %2, i32 64
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %2, i32 72
  store i64 0, ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %2, i32 80
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %2, i32 88
  store i64 0, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %2, i32 96
  store i64 0, ptr %14, align 8
  %15 = getelementptr inbounds i8, ptr %2, i32 104
  store i64 0, ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %2, i32 112
  store i64 0, ptr %16, align 8
  %17 = getelementptr inbounds i8, ptr %2, i32 120
  store i64 0, ptr %17, align 8
  call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes.141(ptr noundef nonnull %2, ptr noundef %1)
  %18 = getelementptr inbounds i8, ptr %0, i32 1280
  %19 = getelementptr inbounds i8, ptr %0, i32 640
  %20 = load i64, ptr %2, align 8
  store i64 %20, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %2, i32 8
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds i8, ptr %0, i32 648
  store i64 %22, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %2, i32 16
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr %0, i32 656
  store i64 %25, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %2, i32 24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %0, i32 664
  store i64 %28, ptr %29, align 4
  %30 = getelementptr inbounds i8, ptr %2, i32 32
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds i8, ptr %0, i32 672
  store i64 %31, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %2, i32 40
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds i8, ptr %0, i32 680
  store i64 %34, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %2, i32 48
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds i8, ptr %0, i32 688
  store i64 %37, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %2, i32 56
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds i8, ptr %0, i32 696
  store i64 %40, ptr %41, align 4
  %42 = getelementptr inbounds i8, ptr %2, i32 64
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds i8, ptr %0, i32 704
  store i64 %43, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %2, i32 72
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr %0, i32 712
  store i64 %46, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %2, i32 80
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds i8, ptr %0, i32 720
  store i64 %49, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %2, i32 88
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds i8, ptr %0, i32 728
  store i64 %52, ptr %53, align 4
  %54 = getelementptr inbounds i8, ptr %2, i32 96
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds i8, ptr %0, i32 736
  store i64 %55, ptr %56, align 4
  %57 = getelementptr inbounds i8, ptr %2, i32 104
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr %0, i32 744
  store i64 %58, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %2, i32 112
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds i8, ptr %0, i32 752
  store i64 %61, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %2, i32 120
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds i8, ptr %0, i32 760
  store i64 %64, ptr %65, align 4
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106.preheader, %67
  %.0103 = phi i32 [ %90, %67 ], [ 16, %.preheader106.preheader ]
  %66 = icmp ult i32 %.0103, 80
  br i1 %66, label %67, label %91

67:                                               ; preds = %.preheader106
  %68 = getelementptr i64, ptr %19, i32 %.0103
  %69 = getelementptr i8, ptr %68, i32 -128
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr i8, ptr %68, i32 -120
  %72 = load i64, ptr %71, align 4
  %73 = getelementptr i8, ptr %68, i32 -56
  %74 = load i64, ptr %73, align 4
  %75 = getelementptr i8, ptr %68, i32 -16
  %76 = load i64, ptr %75, align 4
  %77 = call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 45)
  %78 = call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 3)
  %79 = lshr i64 %76, 6
  %80 = xor i64 %78, %79
  %81 = xor i64 %80, %77
  %82 = call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 63)
  %83 = call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 56)
  %84 = lshr i64 %72, 7
  %85 = xor i64 %83, %84
  %86 = xor i64 %85, %82
  %87 = add i64 %74, %70
  %88 = add i64 %87, %86
  %89 = add i64 %88, %81
  store i64 %89, ptr %68, align 4
  %90 = add nuw nsw i32 %.0103, 1
  br label %.preheader106, !llvm.loop !40

91:                                               ; preds = %.preheader106
  %.sroa.0.0.copyload = load i64, ptr %18, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1288
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1296
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1304
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1312
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1320
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1328
  %.sroa.19.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %0, i32 1336
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 4
  br label %92

92:                                               ; preds = %94, %91
  %.sroa.22.0 = phi i64 [ %.sroa.22.0.copyload, %91 ], [ %.sroa.19.0, %94 ]
  %.sroa.19.0 = phi i64 [ %.sroa.19.0.copyload, %91 ], [ %.sroa.16.0, %94 ]
  %.sroa.16.0 = phi i64 [ %.sroa.16.0.copyload, %91 ], [ %.sroa.13.0, %94 ]
  %.sroa.13.0 = phi i64 [ %.sroa.13.0.copyload, %91 ], [ %123, %94 ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload, %91 ], [ %.sroa.7.0, %94 ]
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %91 ], [ %.sroa.4.0, %94 ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload, %91 ], [ %.sroa.0.0, %94 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %91 ], [ %122, %94 ]
  %.0104 = phi i32 [ 0, %91 ], [ %124, %94 ]
  %93 = icmp ult i32 %.0104, 80
  br i1 %93, label %94, label %.preheader.1

94:                                               ; preds = %92
  %95 = getelementptr inbounds i64, ptr %0, i32 %.0104
  %96 = load i64, ptr %95, align 4
  %97 = getelementptr inbounds i64, ptr %19, i32 %.0104
  %98 = load i64, ptr %97, align 4
  %99 = call i64 @llvm.fshl.i64(i64 %.sroa.13.0, i64 %.sroa.13.0, i64 50)
  %100 = call i64 @llvm.fshl.i64(i64 %.sroa.13.0, i64 %.sroa.13.0, i64 46)
  %101 = call i64 @llvm.fshl.i64(i64 %.sroa.13.0, i64 %.sroa.13.0, i64 23)
  %102 = xor i64 %100, %101
  %103 = xor i64 %102, %99
  %104 = add i64 %.sroa.22.0, %103
  %105 = and i64 %.sroa.16.0, %.sroa.13.0
  %106 = xor i64 %.sroa.13.0, -1
  %107 = and i64 %.sroa.19.0, %106
  %108 = or i64 %107, %105
  %109 = add i64 %104, %108
  %110 = add i64 %109, %96
  %111 = add i64 %110, %98
  %112 = call i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 36)
  %113 = call i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 30)
  %114 = call i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 25)
  %115 = xor i64 %113, %114
  %116 = xor i64 %115, %112
  %117 = and i64 %.sroa.4.0, %.sroa.0.0
  %118 = xor i64 %.sroa.4.0, %.sroa.0.0
  %119 = and i64 %118, %.sroa.7.0
  %120 = xor i64 %119, %117
  %121 = add i64 %120, %116
  %122 = add i64 %121, %111
  %123 = add i64 %111, %.sroa.10.0
  %124 = add nuw nsw i32 %.0104, 1
  br label %92, !llvm.loop !41

.preheader.1:                                     ; preds = %92
  %125 = load i64, ptr %18, align 4
  %126 = add i64 %.sroa.0.0, %125
  store i64 %126, ptr %18, align 4
  %127 = getelementptr inbounds i8, ptr %0, i32 1288
  %128 = load i64, ptr %127, align 4
  %129 = add i64 %.sroa.4.0, %128
  store i64 %129, ptr %127, align 4
  %130 = getelementptr inbounds i8, ptr %0, i32 1296
  %131 = load i64, ptr %130, align 4
  %132 = add i64 %.sroa.7.0, %131
  store i64 %132, ptr %130, align 4
  %133 = getelementptr inbounds i8, ptr %0, i32 1304
  %134 = load i64, ptr %133, align 4
  %135 = add i64 %.sroa.10.0, %134
  store i64 %135, ptr %133, align 4
  %136 = getelementptr inbounds i8, ptr %0, i32 1312
  %137 = load i64, ptr %136, align 4
  %138 = add i64 %.sroa.13.0, %137
  store i64 %138, ptr %136, align 4
  %139 = getelementptr inbounds i8, ptr %0, i32 1320
  %140 = load i64, ptr %139, align 4
  %141 = add i64 %.sroa.16.0, %140
  store i64 %141, ptr %139, align 4
  %142 = getelementptr inbounds i8, ptr %0, i32 1328
  %143 = load i64, ptr %142, align 4
  %144 = add i64 %.sroa.19.0, %143
  store i64 %144, ptr %142, align 4
  %145 = getelementptr inbounds i8, ptr %0, i32 1336
  %146 = load i64, ptr %145, align 4
  %147 = add i64 %.sroa.22.0, %146
  store i64 %147, ptr %145, align 4
  %148 = getelementptr inbounds i8, ptr %0, i32 1344
  %149 = load i64, ptr %148, align 4
  %150 = add i64 %149, 1
  store i64 %150, ptr %148, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_from_be_bytes.141(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %4 = icmp ult i32 %.0, 16
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = shl nuw nsw i32 %.0, 3
  %7 = getelementptr inbounds i8, ptr %1, i32 %6
  %.val = load i64, ptr %7, align 1
  %8 = tail call fastcc i64 @load64.142(i64 %.val)
  %9 = tail call fastcc i64 @__bswap_64.143(i64 noundef %8)
  %10 = getelementptr inbounds i64, ptr %0, i32 %.0
  store i64 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !42

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @load64.142(i64 %.0.val) unnamed_addr #0 {
  ret i64 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @__bswap_64.143(i64 noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_update_multi(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_512_update_multi.144(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update_multi.144(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %5 = icmp ult i32 %.0, %2
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = shl i32 %.0, 7
  %8 = getelementptr inbounds i8, ptr %1, i32 %7
  tail call fastcc void @Hacl_Impl_SHA2_512_update.140(ptr noundef %0, ptr noundef %8)
  %9 = add nuw i32 %.0, 1
  br label %4, !llvm.loop !43

10:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_update_last(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_512_update_last.145(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_update_last.145(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.FStar_UInt128_uint128, align 8
  %6 = alloca %struct.FStar_UInt128_uint128, align 8
  %7 = alloca %struct.FStar_UInt128_uint128, align 8
  %8 = alloca %struct.FStar_UInt128_uint128, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 0, i32 256, i1 false)
  %9 = icmp ult i64 %2, 112
  %. = select i1 %9, i32 1, i32 2
  %.018.idx.sroa.sel.idx.sroa.sel.idx = select i1 %9, i32 128, i32 0
  %.018.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %4, i32 %.018.idx.sroa.sel.idx.sroa.sel.idx
  %10 = trunc i64 %2 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %.018.idx.sroa.sel.idx.sroa.sel, ptr align 1 %1, i32 %10, i1 false)
  %11 = getelementptr inbounds i8, ptr %0, i32 1344
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %.018.idx.sroa.sel.idx.sroa.sel, i32 %10
  call void @FStar_UInt128_mul_wide(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %7, i64 noundef %12, i64 noundef 128)
  call void @FStar_UInt128_uint64_to_uint128(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %8, i64 noundef %2)
  %14 = load i64, ptr %7, align 8
  %15 = getelementptr inbounds i8, ptr %7, i32 8
  %16 = load i64, ptr %15, align 8
  %17 = load i64, ptr %8, align 8
  %18 = getelementptr inbounds i8, ptr %8, i32 8
  %19 = load i64, ptr %18, align 8
  call void @FStar_UInt128_add(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %6, i64 %14, i64 %16, i64 %17, i64 %19)
  %20 = load i64, ptr %6, align 8
  %21 = getelementptr inbounds i8, ptr %6, i32 8
  %22 = load i64, ptr %21, align 8
  call void @FStar_UInt128_shift_left(ptr dead_on_unwind nonnull writable sret(%struct.FStar_UInt128_uint128) align 4 %5, i64 %20, i64 %22, i32 noundef 3)
  %23 = sub i32 111, %10
  %24 = and i32 %23, 127
  %25 = getelementptr inbounds i8, ptr %13, i32 1
  %26 = getelementptr inbounds i8, ptr %25, i32 %24
  store i8 -128, ptr %13, align 1
  %27 = load i64, ptr %5, align 8
  %28 = getelementptr inbounds i8, ptr %5, i32 8
  %29 = load i64, ptr %28, align 8
  call fastcc void @store128_be.146(ptr noundef nonnull %26, i64 %27, i64 %29)
  call fastcc void @Hacl_Impl_SHA2_512_update_multi.144(ptr noundef %0, ptr noundef nonnull %.018.idx.sroa.sel.idx.sroa.sel, i32 noundef %.)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_be.146(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #0 {
  %4 = alloca %struct.FStar_UInt128_uint128, align 8
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 %2, ptr %5, align 8
  call fastcc void @store128_be_.147(ptr noundef %0, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store128_be_.147(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i32 8
  %4 = load i64, ptr %3, align 4
  %5 = tail call fastcc i64 @__bswap_64.143(i64 noundef %4)
  tail call fastcc void @store64.148(ptr noundef %0, i64 noundef %5)
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  %7 = load i64, ptr %1, align 4
  %8 = tail call fastcc i64 @__bswap_64.143(i64 noundef %7)
  tail call fastcc void @store64.148(ptr noundef nonnull %6, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store64.148(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  store i64 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_finish(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_512_finish.149(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_finish.149(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i32 1280
  tail call fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes.150(ptr noundef %1, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Hash_Lib_LoadStore_uint64s_to_be_bytes.150(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 4
  %4 = tail call fastcc i64 @__bswap_64.143(i64 noundef %3)
  tail call fastcc void @store64.148(ptr noundef %0, i64 noundef %4)
  %5 = getelementptr inbounds i8, ptr %1, i32 8
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  %8 = tail call fastcc i64 @__bswap_64.143(i64 noundef %6)
  tail call fastcc void @store64.148(ptr noundef nonnull %7, i64 noundef %8)
  %9 = getelementptr inbounds i8, ptr %1, i32 16
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 16
  %12 = tail call fastcc i64 @__bswap_64.143(i64 noundef %10)
  tail call fastcc void @store64.148(ptr noundef nonnull %11, i64 noundef %12)
  %13 = getelementptr inbounds i8, ptr %1, i32 24
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 24
  %16 = tail call fastcc i64 @__bswap_64.143(i64 noundef %14)
  tail call fastcc void @store64.148(ptr noundef nonnull %15, i64 noundef %16)
  %17 = getelementptr inbounds i8, ptr %1, i32 32
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 32
  %20 = tail call fastcc i64 @__bswap_64.143(i64 noundef %18)
  tail call fastcc void @store64.148(ptr noundef nonnull %19, i64 noundef %20)
  %21 = getelementptr inbounds i8, ptr %1, i32 40
  %22 = load i64, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 40
  %24 = tail call fastcc i64 @__bswap_64.143(i64 noundef %22)
  tail call fastcc void @store64.148(ptr noundef nonnull %23, i64 noundef %24)
  %25 = getelementptr inbounds i8, ptr %1, i32 48
  %26 = load i64, ptr %25, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 48
  %28 = tail call fastcc i64 @__bswap_64.143(i64 noundef %26)
  tail call fastcc void @store64.148(ptr noundef nonnull %27, i64 noundef %28)
  %29 = getelementptr inbounds i8, ptr %1, i32 56
  %30 = load i64, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 56
  %32 = tail call fastcc i64 @__bswap_64.143(i64 noundef %30)
  tail call fastcc void @store64.148(ptr noundef nonnull %31, i64 noundef %32)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_SHA2_512_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_SHA2_512_hash.153(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_SHA2_512_hash.153(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [169 x i64], align 8
  br label %5

5:                                                ; preds = %7, %3
  %.0 = phi i32 [ 0, %3 ], [ %9, %7 ]
  %6 = icmp ult i32 %.0, 169
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = getelementptr inbounds [169 x i64], ptr %4, i32 0, i32 %.0
  store i64 0, ptr %8, align 8
  %9 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !44

10:                                               ; preds = %5
  %11 = lshr i32 %2, 7
  %12 = and i32 %2, 127
  %13 = and i32 %2, -128
  %14 = getelementptr inbounds i8, ptr %1, i32 %13
  call fastcc void @Hacl_Impl_SHA2_512_init.139(ptr noundef nonnull %4)
  call fastcc void @Hacl_Impl_SHA2_512_update_multi.144(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %11)
  %15 = zext nneg i32 %12 to i64
  call fastcc void @Hacl_Impl_SHA2_512_update_last.145(ptr noundef nonnull %4, ptr noundef %14, i64 noundef %15)
  call fastcc void @Hacl_Impl_SHA2_512_finish.149(ptr noundef nonnull %4, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Salsa20_salsa20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Salsa20_salsa20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_salsa20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 {
  %7 = alloca [16 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Salsa20_init(ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4)
  call fastcc void @Hacl_Impl_Salsa20_salsa20_counter_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7, i64 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Salsa20_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_salsa20_counter_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = lshr i32 %2, 6
  %7 = and i32 %2, 63
  tail call fastcc void @Hacl_Impl_Salsa20_salsa20_counter_mode_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %6, ptr noundef %3, i64 noundef %4)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %14, label %8

8:                                                ; preds = %5
  %9 = zext nneg i32 %6 to i64
  %10 = add i64 %9, %4
  %11 = and i32 %2, -64
  %12 = getelementptr inbounds i8, ptr %0, i32 %11
  %13 = getelementptr inbounds i8, ptr %1, i32 %11
  tail call fastcc void @Hacl_Impl_Salsa20_update_last(ptr noundef %12, ptr noundef %13, i32 noundef %7, ptr noundef %3, i64 noundef %10)
  br label %14

14:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_salsa20_counter_mode_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %8, %5
  %.0 = phi i32 [ 0, %5 ], [ %14, %8 ]
  %7 = icmp ult i32 %.0, %2
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = shl nuw i32 %.0, 6
  %10 = getelementptr inbounds i8, ptr %1, i32 %9
  %11 = getelementptr inbounds i8, ptr %0, i32 %9
  %12 = zext nneg i32 %.0 to i64
  %13 = add i64 %12, %4
  tail call fastcc void @Hacl_Impl_Salsa20_update(ptr noundef %11, ptr noundef %10, ptr noundef %3, i64 noundef %13)
  %14 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !45

15:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_update_last(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = alloca [64 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Salsa20_salsa20_block(ptr noundef nonnull %6, ptr noundef %3, i64 noundef %4)
  br label %7

7:                                                ; preds = %9, %5
  %.0 = phi i32 [ 0, %5 ], [ %16, %9 ]
  %8 = icmp ult i32 %.0, %2
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, ptr %1, i32 %.0
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds i8, ptr %6, i32 %.0
  %13 = load i8, ptr %12, align 1
  %14 = xor i8 %13, %11
  %15 = getelementptr inbounds i8, ptr %0, i32 %.0
  store i8 %14, ptr %15, align 1
  %16 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !46

17:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_salsa20_block(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [16 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false)
  call fastcc void @Hacl_Impl_Salsa20_salsa20_core(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %2)
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes.154(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_salsa20_core(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = trunc i64 %2 to i32
  %5 = lshr i64 %2, 32
  %6 = trunc nuw i64 %5 to i32
  %7 = getelementptr inbounds i8, ptr %1, i32 32
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 36
  store i32 %6, ptr %8, align 4
  tail call fastcc void @Hacl_Impl_Salsa20_copy_state(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @Hacl_Impl_Salsa20_rounds(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Salsa20_sum_states(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes.154(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %12, %6 ]
  %5 = icmp ult i32 %.0, %2
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = getelementptr inbounds i32, ptr %1, i32 %.0
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw nsw i32 %.0, 2
  %10 = getelementptr inbounds i8, ptr %0, i32 %9
  %11 = tail call fastcc i32 @__uint32_identity.155(i32 noundef %8)
  tail call fastcc void @store32.156(ptr noundef %10, i32 noundef %11)
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !47

13:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @__uint32_identity.155(i32 noundef %0) unnamed_addr #0 {
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store32.156(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  store i32 %1, ptr %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_copy_state(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i32 64, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_rounds(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0)
  tail call fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_sum_states(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = add i32 %4, %3
  store i32 %5, ptr %0, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %1, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  store i32 %10, ptr %6, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %1, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  store i32 %15, ptr %11, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %1, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  store i32 %20, ptr %16, align 4
  %21 = getelementptr inbounds i8, ptr %0, i32 16
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %1, i32 16
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  store i32 %25, ptr %21, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds i8, ptr %1, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  store i32 %30, ptr %26, align 4
  %31 = getelementptr inbounds i8, ptr %0, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %1, i32 24
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  store i32 %35, ptr %31, align 4
  %36 = getelementptr inbounds i8, ptr %0, i32 28
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %1, i32 28
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %37
  store i32 %40, ptr %36, align 4
  %41 = getelementptr inbounds i8, ptr %0, i32 32
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds i8, ptr %1, i32 32
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  store i32 %45, ptr %41, align 4
  %46 = getelementptr inbounds i8, ptr %0, i32 36
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds i8, ptr %1, i32 36
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %47
  store i32 %50, ptr %46, align 4
  %51 = getelementptr inbounds i8, ptr %0, i32 40
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds i8, ptr %1, i32 40
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  store i32 %55, ptr %51, align 4
  %56 = getelementptr inbounds i8, ptr %0, i32 44
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds i8, ptr %1, i32 44
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  store i32 %60, ptr %56, align 4
  %61 = getelementptr inbounds i8, ptr %0, i32 48
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds i8, ptr %1, i32 48
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %62
  store i32 %65, ptr %61, align 4
  %66 = getelementptr inbounds i8, ptr %0, i32 52
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds i8, ptr %1, i32 52
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %67
  store i32 %70, ptr %66, align 4
  %71 = getelementptr inbounds i8, ptr %0, i32 56
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds i8, ptr %1, i32 56
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, %72
  store i32 %75, ptr %71, align 4
  %76 = getelementptr inbounds i8, ptr %0, i32 60
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds i8, ptr %1, i32 60
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, %77
  store i32 %80, ptr %76, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_double_round(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 12)
  tail call fastcc void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %0, i32 noundef 5, i32 noundef 9, i32 noundef 13, i32 noundef 1)
  tail call fastcc void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %0, i32 noundef 10, i32 noundef 14, i32 noundef 2, i32 noundef 6)
  tail call fastcc void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %0, i32 noundef 15, i32 noundef 3, i32 noundef 7, i32 noundef 11)
  tail call fastcc void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3)
  tail call fastcc void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %0, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 4)
  tail call fastcc void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %0, i32 noundef 10, i32 noundef 11, i32 noundef 8, i32 noundef 9)
  tail call fastcc void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %0, i32 noundef 15, i32 noundef 12, i32 noundef 13, i32 noundef 14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_quarter_round(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_Salsa20_line(ptr noundef %0, i32 noundef %2, i32 noundef %1, i32 noundef %4, i32 noundef 7)
  tail call fastcc void @Hacl_Impl_Salsa20_line(ptr noundef %0, i32 noundef %3, i32 noundef %2, i32 noundef %1, i32 noundef 9)
  tail call fastcc void @Hacl_Impl_Salsa20_line(ptr noundef %0, i32 noundef %4, i32 noundef %3, i32 noundef %2, i32 noundef 13)
  tail call fastcc void @Hacl_Impl_Salsa20_line(ptr noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %3, i32 noundef 18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_line(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds i32, ptr %0, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i32, ptr %0, i32 %2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i32, ptr %0, i32 %3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = shl i32 %12, %4
  %14 = sub nuw nsw i32 32, %4
  %15 = lshr i32 %12, %14
  %16 = or i32 %13, %15
  %17 = xor i32 %16, %7
  store i32 %17, ptr %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [48 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %5, i8 0, i32 192, i1 false)
  %6 = getelementptr inbounds i8, ptr %5, i32 64
  %7 = getelementptr inbounds i8, ptr %5, i32 128
  call fastcc void @Hacl_Impl_Salsa20_salsa20_core(ptr noundef nonnull %5, ptr noundef %2, i64 noundef %3)
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes.157(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 16)
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %5, align 4
  %10 = xor i32 %9, %8
  store i32 %10, ptr %7, align 4
  %11 = getelementptr inbounds i8, ptr %5, i32 68
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %5, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, %12
  %16 = getelementptr inbounds i8, ptr %5, i32 132
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %5, i32 72
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %5, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, %18
  %22 = getelementptr inbounds i8, ptr %5, i32 136
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %5, i32 76
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds i8, ptr %5, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %26, %24
  %28 = getelementptr inbounds i8, ptr %5, i32 140
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %5, i32 80
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %5, i32 16
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, %30
  %34 = getelementptr inbounds i8, ptr %5, i32 144
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds i8, ptr %5, i32 84
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %5, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %38, %36
  %40 = getelementptr inbounds i8, ptr %5, i32 148
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %5, i32 88
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds i8, ptr %5, i32 24
  %44 = load i32, ptr %43, align 4
  %45 = xor i32 %44, %42
  %46 = getelementptr inbounds i8, ptr %5, i32 152
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds i8, ptr %5, i32 92
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds i8, ptr %5, i32 28
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %48
  %52 = getelementptr inbounds i8, ptr %5, i32 156
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds i8, ptr %5, i32 96
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds i8, ptr %5, i32 32
  %56 = load i32, ptr %55, align 4
  %57 = xor i32 %56, %54
  %58 = getelementptr inbounds i8, ptr %5, i32 160
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds i8, ptr %5, i32 100
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds i8, ptr %5, i32 36
  %62 = load i32, ptr %61, align 4
  %63 = xor i32 %62, %60
  %64 = getelementptr inbounds i8, ptr %5, i32 164
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds i8, ptr %5, i32 104
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds i8, ptr %5, i32 40
  %68 = load i32, ptr %67, align 4
  %69 = xor i32 %68, %66
  %70 = getelementptr inbounds i8, ptr %5, i32 168
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds i8, ptr %5, i32 108
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds i8, ptr %5, i32 44
  %74 = load i32, ptr %73, align 4
  %75 = xor i32 %74, %72
  %76 = getelementptr inbounds i8, ptr %5, i32 172
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds i8, ptr %5, i32 112
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds i8, ptr %5, i32 48
  %80 = load i32, ptr %79, align 4
  %81 = xor i32 %80, %78
  %82 = getelementptr inbounds i8, ptr %5, i32 176
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds i8, ptr %5, i32 116
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds i8, ptr %5, i32 52
  %86 = load i32, ptr %85, align 4
  %87 = xor i32 %86, %84
  %88 = getelementptr inbounds i8, ptr %5, i32 180
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds i8, ptr %5, i32 120
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds i8, ptr %5, i32 56
  %92 = load i32, ptr %91, align 4
  %93 = xor i32 %92, %90
  %94 = getelementptr inbounds i8, ptr %5, i32 184
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds i8, ptr %5, i32 124
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds i8, ptr %5, i32 60
  %98 = load i32, ptr %97, align 4
  %99 = xor i32 %98, %96
  %100 = getelementptr inbounds i8, ptr %5, i32 188
  store i32 %99, ptr %100, align 4
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes.154(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes.157(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %12, %6 ]
  %5 = icmp ult i32 %.0, %2
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = shl nuw nsw i32 %.0, 2
  %8 = getelementptr inbounds i8, ptr %1, i32 %7
  %.val = load i32, ptr %8, align 1
  %9 = tail call fastcc i32 @load32.158(i32 %.val)
  %10 = tail call fastcc i32 @__uint32_identity.155(i32 noundef %9)
  %11 = getelementptr inbounds i32, ptr %0, i32 %.0
  store i32 %10, ptr %11, align 4
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !48

13:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load32.158(i32 %.0.val) unnamed_addr #0 {
  ret i32 %.0.val
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_Salsa20_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [10 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false)
  %5 = getelementptr inbounds i8, ptr %4, i32 32
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes.157(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8)
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes.157(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 2)
  %6 = load i32, ptr %4, align 4
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %4, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %4, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %4, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %4, i32 20
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %4, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %4, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %5, align 4
  %22 = getelementptr inbounds i8, ptr %4, i32 36
  %23 = load i32, ptr %22, align 4
  call fastcc void @Hacl_Lib_Create_make_h32_16(ptr noundef %0, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %21, i32 noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Lib_Create_make_h32_16(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) unnamed_addr #0 {
  tail call fastcc void @Hacl_Lib_Create_make_h32_8(ptr noundef %0, i32 noundef 1634760805, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 857760878, i32 noundef %5, i32 noundef %6)
  %14 = getelementptr inbounds i8, ptr %0, i32 32
  tail call fastcc void @Hacl_Lib_Create_make_h32_8(ptr noundef nonnull %14, i32 noundef %7, i32 noundef %8, i32 noundef 2036477234, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef 1797285236)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Lib_Create_make_h32_8(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
  tail call fastcc void @Hacl_Lib_Create_make_h32_4(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %10 = getelementptr inbounds i8, ptr %0, i32 16
  tail call fastcc void @Hacl_Lib_Create_make_h32_4(ptr noundef nonnull %10, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Lib_Create_make_h32_4(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  store i32 %1, ptr %0, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 %4, ptr %8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Salsa20_hsalsa20(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Impl_HSalsa20_crypto_core_hsalsa20(ptr noundef %0, ptr noundef %2, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_HSalsa20_crypto_core_hsalsa20(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [24 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %4, i8 0, i32 96, i1 false)
  %5 = getelementptr inbounds i8, ptr %4, i32 64
  call fastcc void @Hacl_Impl_HSalsa20_setup(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1)
  call fastcc void @Hacl_Impl_Salsa20_rounds(ptr noundef nonnull %4)
  %6 = load i32, ptr %4, align 4
  %7 = getelementptr inbounds i8, ptr %4, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %4, i32 40
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %4, i32 60
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %4, i32 24
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %4, i32 28
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %4, i32 32
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %4, i32 36
  %20 = load i32, ptr %19, align 4
  call fastcc void @Hacl_Lib_Create_make_h32_8(ptr noundef nonnull %5, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20)
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_to_le_bytes.154(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Impl_HSalsa20_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [12 x i32], align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false)
  %5 = getelementptr inbounds i8, ptr %4, i32 32
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes.157(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8)
  call fastcc void @Hacl_Lib_LoadStore32_uint32s_from_le_bytes.157(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 4)
  %6 = load i32, ptr %4, align 4
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds i8, ptr %4, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds i8, ptr %4, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %4, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %4, i32 20
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %4, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %4, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %5, align 4
  %22 = getelementptr inbounds i8, ptr %4, i32 36
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %4, i32 40
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds i8, ptr %4, i32 44
  %27 = load i32, ptr %26, align 4
  call fastcc void @Hacl_Lib_Create_make_h32_16(ptr noundef %0, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @read_random_bytes(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.159, i32 noundef 0) #12
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %14

6:                                                ; preds = %2
  %7 = trunc i64 %0 to i32
  %8 = tail call i32 @read(i32 noundef %3, ptr noundef %1, i32 noundef %7) #12
  %9 = sext i32 %8 to i64
  %.not = icmp eq i64 %9, %0
  br i1 %.not, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.161, i64 noundef %0, i64 noundef %9)
  br label %12

12:                                               ; preds = %10, %6
  %13 = tail call i32 @close(i32 noundef %3) #12
  br label %14

14:                                               ; preds = %12, %5
  %.0 = phi i1 [ false, %5 ], [ %.not, %12 ]
  ret i1 %.0
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @read(i32 noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @hacl_aligned_malloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  store ptr null, ptr %3, align 4
  %4 = call i32 @posix_memalign(ptr noundef nonnull %3, i32 noundef %0, i32 noundef %1) #12
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %2
  %6 = zext i32 %1 to i64
  %7 = zext i32 %0 to i64
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %6, i64 noundef %7)
  br label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4
  br label %11

11:                                               ; preds = %9, %5
  %.0 = phi ptr [ null, %5 ], [ %10, %9 ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @hacl_aligned_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i1 @read_random_bytes(i64 noundef %1, ptr noundef %0)
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @exit(i32 noundef 1) #11
  unreachable

5:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [32 x i8], align 1
  %8 = trunc i64 %3 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false)
  call void @Hacl_Salsa20_hsalsa20(ptr noundef nonnull %7, ptr noundef %5, ptr noundef %4)
  %9 = add i32 %8, 32
  %10 = getelementptr inbounds i8, ptr %4, i32 16
  call void @Hacl_Salsa20_salsa20(ptr noundef %0, ptr noundef %2, i32 noundef %9, ptr noundef nonnull %7, ptr noundef nonnull %10, i64 noundef 0)
  %11 = getelementptr inbounds i8, ptr %0, i32 32
  call void @Hacl_Poly1305_64_crypto_onetimeauth(ptr noundef %1, ptr noundef nonnull %11, i64 noundef %3, ptr noundef %0)
  call fastcc void @Hacl_SecretBox_ZeroPad_set_zero_bytes(ptr noundef %0)
  call fastcc void @Hacl_SecretBox_ZeroPad_set_zero_bytes(ptr noundef nonnull %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_SecretBox_ZeroPad_set_zero_bytes(ptr noundef %0) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @NaCl_crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [112 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(112) %7, i8 0, i32 112, i1 false)
  %8 = getelementptr inbounds i8, ptr %7, i32 32
  %9 = getelementptr inbounds i8, ptr %7, i32 64
  %10 = getelementptr inbounds i8, ptr %7, i32 96
  call void @Hacl_Salsa20_hsalsa20(ptr noundef nonnull %7, ptr noundef %5, ptr noundef %4)
  %11 = getelementptr inbounds i8, ptr %4, i32 16
  call void @Hacl_Salsa20_salsa20(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 32, ptr noundef nonnull %7, ptr noundef nonnull %11, i64 noundef 0)
  %12 = getelementptr inbounds i8, ptr %1, i32 32
  call void @Hacl_Poly1305_64_crypto_onetimeauth(ptr noundef nonnull %10, ptr noundef nonnull %12, i64 noundef %3, ptr noundef nonnull %8)
  %13 = call zeroext i8 @Hacl_Policies_cmp_bytes(ptr noundef %2, ptr noundef nonnull %10, i32 noundef 16)
  %14 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %7, i8 noundef zeroext %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, ptr %3, i32 16
  %10 = trunc i64 %2 to i32
  %11 = add i32 %10, 32
  tail call void @Hacl_Salsa20_salsa20(ptr noundef %0, ptr noundef %1, i32 noundef %11, ptr noundef %4, ptr noundef nonnull %9, i64 noundef 0)
  tail call fastcc void @Hacl_SecretBox_ZeroPad_set_zero_bytes(ptr noundef %4)
  tail call fastcc void @Hacl_SecretBox_ZeroPad_set_zero_bytes(ptr noundef %0)
  br label %12

12:                                               ; preds = %6, %8
  %.0 = phi i32 [ 0, %8 ], [ -1, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_secretbox_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [16 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  call fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  %7 = getelementptr inbounds i8, ptr %0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(16) %6, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @NaCl_crypto_secretbox_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_beforenm(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Box_ZeroPad_crypto_box_beforenm(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Box_ZeroPad_crypto_box_beforenm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [48 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %4, i8 0, i32 48, i1 false)
  %5 = getelementptr inbounds i8, ptr %4, i32 32
  call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1)
  call void @Hacl_Salsa20_hsalsa20(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Box_ZeroPad_crypto_box_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Box_ZeroPad_crypto_box_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  tail call fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Box_ZeroPad_crypto_box_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Box_ZeroPad_crypto_box_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [80 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %8, i8 0, i32 80, i1 false)
  %9 = getelementptr inbounds i8, ptr %8, i32 32
  %10 = getelementptr inbounds i8, ptr %8, i32 64
  call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef nonnull %8, ptr noundef %6, ptr noundef %5)
  call void @Hacl_Salsa20_hsalsa20(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10)
  call fastcc void @Hacl_SecretBox_ZeroPad_crypto_secretbox_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @NaCl_crypto_box_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @Hacl_Box_ZeroPad_crypto_box_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [80 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %8, i8 0, i32 80, i1 false)
  %9 = getelementptr inbounds i8, ptr %8, i32 32
  %10 = getelementptr inbounds i8, ptr %8, i32 64
  call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef nonnull %8, ptr noundef %6, ptr noundef %5)
  call void @Hacl_Salsa20_hsalsa20(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10)
  %11 = call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %9)
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Box_ZeroPad_crypto_box_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Box_ZeroPad_crypto_box_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [16 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  call fastcc void @Hacl_Box_ZeroPad_crypto_box_detached_afternm(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  %7 = getelementptr inbounds i8, ptr %0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(16) %6, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NaCl_crypto_box_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  tail call fastcc void @Hacl_Box_ZeroPad_crypto_box_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @Hacl_Box_ZeroPad_crypto_box_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [16 x i8], align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false)
  call fastcc void @Hacl_Box_ZeroPad_crypto_box_detached(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %8 = getelementptr inbounds i8, ptr %0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(16) %7, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @NaCl_crypto_box_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @Hacl_Box_ZeroPad_crypto_box_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds i8, ptr %1, i32 16
  %8 = tail call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @NaCl_crypto_box_open_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @Hacl_Box_ZeroPad_crypto_box_open_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call fastcc i32 @Hacl_SecretBox_ZeroPad_crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @NaCl_crypto_box_open_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @Hacl_Box_ZeroPad_crypto_box_open_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds i8, ptr %1, i32 16
  %7 = tail call fastcc i32 @Hacl_Box_ZeroPad_crypto_box_open_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @curve25519_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  tail call void @Hacl_Chacha20_chacha20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @salsa20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  tail call void @Hacl_Salsa20_salsa20(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @poly1305_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @Hacl_Poly1305_64_crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aead_chacha20_poly1305_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call i32 @Hacl_Chacha20Poly1305_aead_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @aead_chacha20_poly1305_decrypt(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call i32 @Hacl_Chacha20Poly1305_aead_decrypt(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ed25519_secret_to_public(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @Hacl_Ed25519_secret_to_public(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ed25519_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @Hacl_Ed25519_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ed25519_verify(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call zeroext i1 @Hacl_Ed25519_verify(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i1 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha2_512_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @Hacl_SHA2_512_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_auth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = trunc i64 %2 to i32
  tail call void @Hacl_HMAC_SHA2_256_hmac_core(ptr noundef %0, ptr noundef %3, ptr noundef %1, i32 noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_auth_verify(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [32 x i8], align 1
  %6 = trunc i64 %2 to i32
  call void @Hacl_HMAC_SHA2_256_hmac_core(ptr noundef nonnull %5, ptr noundef %3, ptr noundef %1, i32 noundef %6)
  br label %7

7:                                                ; preds = %9, %4
  %.010 = phi i8 [ -1, %4 ], [ %15, %9 ]
  %.0 = phi i32 [ 0, %4 ], [ %16, %9 ]
  %8 = icmp ult i32 %.0, 32
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, ptr %0, i32 %.0
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds [32 x i8], ptr %5, i32 0, i32 %.0
  %13 = load i8, ptr %12, align 1
  %14 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %11, i8 noundef zeroext %13)
  %15 = and i8 %14, %.010
  %16 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !49

17:                                               ; preds = %7
  %18 = lshr i8 %.010, 7
  %19 = zext nneg i8 %18 to i32
  %20 = add nsw i32 %19, -1
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext range(i8 -1, 1) i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = xor i8 %0, %1
  %4 = xor i8 %3, -1
  %5 = shl i8 %4, 4
  %6 = and i8 %5, %4
  %7 = shl i8 %6, 2
  %8 = and i8 %7, %6
  %9 = shl i8 %8, 1
  %10 = and i8 %9, %8
  %11 = ashr exact i8 %10, 7
  ret i8 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_keypair(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 1
  tail call void @randombytes(ptr noundef %1, i64 noundef 32)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(32) @__const.crypto_scalarmult_base.basepoint, i32 32, i1 false)
  call void @curve25519_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @NaCl_crypto_box_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_box_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @NaCl_crypto_box_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_beforenm(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @NaCl_crypto_box_beforenm(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @NaCl_crypto_box_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_box_open_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @NaCl_crypto_box_open_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @NaCl_crypto_box_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = tail call i32 @NaCl_crypto_box_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_box_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = tail call i32 @NaCl_crypto_box_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_open_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @NaCl_crypto_box_detached_afternm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = add i64 %2, -32
  %8 = tail call i32 @crypto_box_easy(ptr noundef %0, ptr noundef %1, i64 noundef %7, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_box_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = add i64 %2, -32
  %8 = tail call i32 @crypto_box_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %7, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_box_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @NaCl_crypto_box_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_box_open_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @NaCl_crypto_box_open_easy_afternm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = trunc i64 %2 to i32
  tail call void @Hacl_SHA2_256_hash(ptr noundef %0, ptr noundef %1, i32 noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @poly1305_onetimeauth(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_onetimeauth_verify(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [16 x i8], align 1
  call void @poly1305_onetimeauth(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  %6 = load i8, ptr %5, align 1
  %7 = load i8, ptr %0, align 1
  %8 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %6, i8 noundef zeroext %7)
  %9 = getelementptr inbounds i8, ptr %5, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds i8, ptr %0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %10, i8 noundef zeroext %12)
  %14 = getelementptr inbounds i8, ptr %5, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds i8, ptr %0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %15, i8 noundef zeroext %17)
  %19 = getelementptr inbounds i8, ptr %5, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds i8, ptr %0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %20, i8 noundef zeroext %22)
  %24 = getelementptr inbounds i8, ptr %5, i32 4
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds i8, ptr %0, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %25, i8 noundef zeroext %27)
  %29 = getelementptr inbounds i8, ptr %5, i32 5
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds i8, ptr %0, i32 5
  %32 = load i8, ptr %31, align 1
  %33 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %30, i8 noundef zeroext %32)
  %34 = getelementptr inbounds i8, ptr %5, i32 6
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds i8, ptr %0, i32 6
  %37 = load i8, ptr %36, align 1
  %38 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %35, i8 noundef zeroext %37)
  %39 = getelementptr inbounds i8, ptr %5, i32 7
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr inbounds i8, ptr %0, i32 7
  %42 = load i8, ptr %41, align 1
  %43 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %40, i8 noundef zeroext %42)
  %44 = getelementptr inbounds i8, ptr %5, i32 8
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr inbounds i8, ptr %0, i32 8
  %47 = load i8, ptr %46, align 1
  %48 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %45, i8 noundef zeroext %47)
  %49 = getelementptr inbounds i8, ptr %5, i32 9
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr inbounds i8, ptr %0, i32 9
  %52 = load i8, ptr %51, align 1
  %53 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %50, i8 noundef zeroext %52)
  %54 = getelementptr inbounds i8, ptr %5, i32 10
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr inbounds i8, ptr %0, i32 10
  %57 = load i8, ptr %56, align 1
  %58 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %55, i8 noundef zeroext %57)
  %59 = getelementptr inbounds i8, ptr %5, i32 11
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr inbounds i8, ptr %0, i32 11
  %62 = load i8, ptr %61, align 1
  %63 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %60, i8 noundef zeroext %62)
  %64 = getelementptr inbounds i8, ptr %5, i32 12
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr inbounds i8, ptr %0, i32 12
  %67 = load i8, ptr %66, align 1
  %68 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %65, i8 noundef zeroext %67)
  %69 = getelementptr inbounds i8, ptr %5, i32 13
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr inbounds i8, ptr %0, i32 13
  %72 = load i8, ptr %71, align 1
  %73 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %70, i8 noundef zeroext %72)
  %74 = getelementptr inbounds i8, ptr %5, i32 14
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr inbounds i8, ptr %0, i32 14
  %77 = load i8, ptr %76, align 1
  %78 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %75, i8 noundef zeroext %77)
  %79 = getelementptr inbounds i8, ptr %5, i32 15
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr inbounds i8, ptr %0, i32 15
  %82 = load i8, ptr %81, align 1
  %83 = call fastcc zeroext i8 @FStar_UInt8_eq_mask.162(i8 noundef zeroext %80, i8 noundef zeroext %82)
  %84 = and i8 %13, %8
  %85 = and i8 %18, %84
  %86 = and i8 %23, %85
  %87 = and i8 %28, %86
  %88 = and i8 %33, %87
  %89 = and i8 %38, %88
  %90 = and i8 %43, %89
  %91 = and i8 %48, %90
  %92 = and i8 %53, %91
  %93 = and i8 %58, %92
  %94 = and i8 %63, %93
  %95 = and i8 %68, %94
  %96 = and i8 %73, %95
  %97 = and i8 %78, %96
  %98 = and i8 %83, %97
  %99 = lshr i8 %98, 7
  %100 = zext nneg i8 %99 to i32
  %101 = add nsw i32 %100, -1
  ret i32 %101
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_scalarmult_base(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(32) @__const.crypto_scalarmult_base.basepoint, i32 32, i1 false)
  call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @Hacl_Curve25519_crypto_scalarmult(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @NaCl_crypto_secretbox_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @NaCl_crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @NaCl_crypto_secretbox_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_secretbox_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @NaCl_crypto_secretbox_open_easy(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_secretbox(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = add i64 %2, -32
  %7 = tail call i32 @crypto_secretbox_easy(ptr noundef %0, ptr noundef %1, i64 noundef %6, ptr noundef %3, ptr noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_secretbox_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds i8, ptr %1, i32 16
  %7 = add i64 %2, -32
  %8 = tail call i32 @crypto_secretbox_open_detached(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i64 noundef %7, ptr noundef %3, ptr noundef %4)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = trunc i64 %3 to i32
  tail call void @Hacl_Ed25519_sign(ptr noundef %0, ptr noundef %4, ptr noundef %2, i32 noundef %6)
  %7 = getelementptr inbounds i8, ptr %0, i32 64
  tail call void @llvm.memmove.p0.p0.i32(ptr nonnull align 1 %7, ptr align 1 %2, i32 %6, i1 false)
  %8 = add i64 %3, 64
  store i64 %8, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -1, 1) i32 @crypto_sign_open(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds i8, ptr %2, i32 64
  %7 = add i64 %3, -64
  %8 = trunc i64 %7 to i32
  %9 = tail call zeroext i1 @Hacl_Ed25519_verify(ptr noundef %4, ptr noundef nonnull %6, i32 noundef %8, ptr noundef %2)
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %0, ptr nonnull align 1 %6, i32 %8, i1 false)
  store i64 %7, ptr %1, align 4
  br label %11

11:                                               ; preds = %5, %10
  %.0 = phi i32 [ 0, %10 ], [ -1, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign_keypair(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @randombytes(ptr noundef %1, i64 noundef 32)
  tail call void @Hacl_Ed25519_secret_to_public(ptr noundef %0, ptr noundef %1)
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %10, %5 ]
  %4 = icmp ult i32 %.0, 32
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %0, i32 %.0
  %7 = load i8, ptr %6, align 1
  %8 = or disjoint i32 %.0, 32
  %9 = getelementptr inbounds i8, ptr %1, i32 %8
  store i8 %7, ptr %9, align 1
  %10 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !50

11:                                               ; preds = %3
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_sign_secret_to_public(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @Hacl_Ed25519_secret_to_public(ptr noundef %0, ptr noundef %1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [32 x i8], align 1
  %6 = trunc i64 %1 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %0, i8 0, i32 %6, i1 false)
  call void @Hacl_Salsa20_hsalsa20(ptr noundef nonnull %5, ptr noundef %3, ptr noundef %2)
  %7 = getelementptr inbounds i8, ptr %2, i32 16
  call void @Hacl_Salsa20_salsa20(ptr noundef %0, ptr noundef %0, i32 noundef %6, ptr noundef nonnull %5, ptr noundef nonnull %7, i64 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_xor(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [32 x i8], align 1
  %7 = trunc i64 %2 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %0, i8 0, i32 %7, i1 false)
  call void @Hacl_Salsa20_hsalsa20(ptr noundef nonnull %6, ptr noundef %4, ptr noundef %3)
  %8 = getelementptr inbounds i8, ptr %3, i32 16
  call void @Hacl_Salsa20_salsa20(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull %6, ptr noundef nonnull %8, i64 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_string(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.163, ptr noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_bytes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 0, %2 ], [ %10, %5 ]
  %4 = icmp ult i32 %.0, %1
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %0, i32 %.0
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.164, i32 noundef %8)
  %10 = add nuw i32 %.0, 1
  br label %3, !llvm.loop !51

11:                                               ; preds = %3
  %putchar = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 19.1.7 (++20250114103238+cd708029e0b2-1~exp1~20250114103342.77)"}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
