; ModuleID = 'C:/Users/luojiawei/Desktop/pynq_1/ip/Conv/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode1 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@bundle6 = internal constant [1 x i8] zeroinitializer
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle2 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@Ky_Kx_str = internal unnamed_addr constant [6 x i8] c"Ky_Kx\00"
@Hout_Wout_str = internal unnamed_addr constant [10 x i8] c"Hout_Wout\00"
@Conv_str = internal unnamed_addr constant [5 x i8] c"Conv\00"
@CHout_Hout_Wout_str = internal unnamed_addr constant [16 x i8] c"CHout_Hout_Wout\00"
@p_str9 = private unnamed_addr constant [5 x i8] c"CHin\00", align 1
@p_str8 = private unnamed_addr constant [3 x i8] c"Kx\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"Wout\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i9 @llvm.part.select.i9(i9, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i16 @_ssdm_op_Read.s_axilite.i16(i16) {
entry:
  ret i16 %0
}

define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.select.i9(i9 %0, i32 %1, i32 %2)
  %empty_6 = trunc i9 %empty to i8
  ret i8 %empty_6
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_7 = trunc i32 %empty to i8
  ret i8 %empty_7
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_8 = trunc i32 %empty to i30
  ret i30 %empty_8
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i19.i32.i32(i19, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_9 = shl i9 1, %empty
  %empty_10 = and i9 %0, %empty_9
  %empty_11 = icmp ne i9 %empty_10, 0
  ret i1 %empty_11
}

define weak i1 @_ssdm_op_BitSelect.i1.i16.i32(i16, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i16
  %empty_12 = shl i16 1, %empty
  %empty_13 = and i16 %0, %empty_12
  %empty_14 = icmp ne i16 %empty_13, 0
  ret i1 %empty_14
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_15 = zext i1 %1 to i9
  %empty_16 = shl i9 %empty, 1
  %empty_17 = or i9 %empty_16, %empty_15
  ret i9 %empty_17
}

declare void @_GLOBAL__I_a() nounwind

define void @Conv(float* %gmem, i16 %CHin_V, i16 %Hin_V, i16 %Win_V, i16 %CHout_V, i8 %Kx_V, i8 %Ky_V, i8 %Sx_V, i8 %Sy_V, i1 %mode_V, i1 %relu_en_V, i32 %feature_in, i32 %W, i32 %bias, i32 %feature_out) {
_ifconv:
  %feature_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %feature_out)
  %bias_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %bias)
  %W_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %W)
  %feature_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %feature_in)
  %relu_en_V_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %relu_en_V)
  %mode_V_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %mode_V)
  %Sy_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Sy_V)
  %Sx_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Sx_V)
  %Ky_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Ky_V)
  %Kx_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Kx_V)
  %CHout_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %CHout_V)
  %Win_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %Win_V)
  %Hin_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %Hin_V)
  %CHin_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %CHin_V)
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %feature_out_read, i32 2, i32 31)
  %tmp_10_cast = zext i30 %tmp_1 to i49
  %tmp_5 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %bias_read, i32 2, i32 31)
  %tmp_16_cast = zext i30 %tmp_5 to i31
  %tmp_10 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %W_read, i32 2, i32 31)
  %tmp_17_cast = zext i30 %tmp_10 to i49
  %tmp_16 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %feature_in_read, i32 2, i32 31)
  %tmp_21_cast = zext i30 %tmp_16 to i48
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem), !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %CHin_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %Hin_V), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %Win_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %CHout_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Kx_V), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Ky_V), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Sx_V), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Sy_V), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %mode_V), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %relu_en_V), !map !57
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Conv_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %feature_out, [10 x i8]* @mode5, i32 0, i32 0, i32 0, i64 4294967295, [1 x i8]* @bundle6, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %bias, [10 x i8]* @mode3, i32 0, i32 0, i32 0, i64 4294967295, [1 x i8]* @bundle4, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %W, [10 x i8]* @mode1, i32 0, i32 0, i32 0, i64 4294967295, [1 x i8]* @bundle2, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem, [6 x i8]* @p_str, i32 0, i32 0, i32 0, i64 4294967295, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %feature_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i64 4294967295, [1 x i8]* @bundle, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %relu_en_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %CHout_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Sx_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %Hin_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %CHin_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Kx_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %mode_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Sy_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Ky_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %Win_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %lhs_V_cast = zext i8 %Kx_V_read to i9
  %r_V = add i9 -1, %lhs_V_cast
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V, i32 8)
  %p_neg9 = sub i9 1, %lhs_V_cast
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %p_neg9, i32 1, i32 8)
  %tmp_3 = sub i8 0, %tmp_2
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %r_V, i32 1, i32 8)
  %pad_x_V = select i1 %tmp_17, i8 %tmp_3, i8 %tmp_6
  %lhs_V_1_cast = zext i8 %Ky_V_read to i9
  %r_V_1 = add i9 -1, %lhs_V_1_cast
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V_1, i32 8)
  %p_neg = sub i9 1, %lhs_V_1_cast
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %p_neg, i32 1, i32 8)
  %tmp_8 = sub i8 0, %tmp_4
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %r_V_1, i32 1, i32 8)
  %pad_y_V = select i1 %tmp_20, i8 %tmp_8, i8 %tmp_11
  %p_s = select i1 %mode_V_read, i8 %pad_x_V, i8 0
  %p_1 = select i1 %mode_V_read, i8 %pad_y_V, i8 0
  %r_V_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %p_s, i1 false)
  %r_V_2_cast = zext i9 %r_V_2 to i17
  %lhs_V_2_cast = zext i16 %Win_V_read to i17
  %r_V_3 = add i17 %lhs_V_2_cast, %r_V_2_cast
  %r_V_3_cast = zext i17 %r_V_3 to i18
  %rhs_V_2_cast = zext i8 %Kx_V_read to i18
  %r_V_4 = sub i18 %r_V_3_cast, %rhs_V_2_cast
  %r_V_4_cast = sext i18 %r_V_4 to i19
  %tmp_tr = zext i8 %Sx_V_read to i19
  %tmp_12 = sdiv i19 %r_V_4_cast, %tmp_tr
  %tmp_21 = trunc i19 %tmp_12 to i16
  %Wout_V = add i16 1, %tmp_21
  %r_V_6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %p_1, i1 false)
  %r_V_6_cast = zext i9 %r_V_6 to i17
  %lhs_V_4_cast = zext i16 %Hin_V_read to i17
  %r_V_7 = add i17 %lhs_V_4_cast, %r_V_6_cast
  %r_V_7_cast = zext i17 %r_V_7 to i18
  %rhs_V_5_cast = zext i8 %Ky_V_read to i18
  %r_V_8 = sub i18 %r_V_7_cast, %rhs_V_5_cast
  %r_V_8_cast = sext i18 %r_V_8 to i19
  %tmp_2_tr = zext i8 %Sy_V_read to i19
  %tmp_13 = sdiv i19 %r_V_8_cast, %tmp_2_tr
  %tmp_26 = trunc i19 %tmp_13 to i16
  %tmp_7 = add i16 1, %tmp_26
  %tmp_9 = zext i8 %p_1 to i16
  %tmp_s = zext i8 %p_s to i16
  %rhs_V_4_cast = zext i16 %Wout_V to i32
  %rhs_V_1 = zext i16 %CHin_V_read to i32
  %tmp_14 = zext i8 %Sy_V_read to i16
  %tmp_15 = zext i8 %Sx_V_read to i16
  %rhs_V_2 = zext i16 %Win_V_read to i48
  %rhs_V_16_cast = zext i8 %Kx_V_read to i16
  %rhs_V_12_cast = zext i16 %CHout_V_read to i48
  %rhs_V_13_cast = zext i16 %CHin_V_read to i24
  %rhs_V_14_cast = zext i16 %CHout_V_read to i32
  %cast = zext i8 %Ky_V_read to i16
  %bound = mul i16 %cast, %rhs_V_16_cast
  %cast2 = zext i16 %tmp_7 to i32
  %bound4 = mul i32 %cast2, %rhs_V_4_cast
  %cast1 = zext i32 %bound4 to i48
  %bound1 = mul i48 %rhs_V_12_cast, %cast1
  %exitcond_mid = icmp eq i16 %Wout_V, 0
  br label %0

; <label>:0                                       ; preds = %_ifconv, %4
  %indvar_flatten1 = phi i48 [ 0, %_ifconv ], [ %indvar_flatten_next1, %4 ]
  %i_op_assign_s = phi i16 [ 0, %_ifconv ], [ %tmp_10_mid2_v, %4 ]
  %indvar_flatten7 = phi i32 [ 0, %_ifconv ], [ %indvar_flatten_next8, %4 ]
  %i_op_assign_1 = phi i16 [ 0, %_ifconv ], [ %i_op_assign_10_mid2, %4 ]
  %i_op_assign_2 = phi i16 [ 0, %_ifconv ], [ %j, %4 ]
  %i_op_assign_10_cast8 = zext i16 %i_op_assign_1 to i32
  %r_V_9 = mul i32 %i_op_assign_10_cast8, %rhs_V_4_cast
  %r_V_9_cast = zext i32 %r_V_9 to i48
  %r_V_10 = mul i48 %r_V_9_cast, %rhs_V_12_cast
  %exitcond_flatten1 = icmp eq i48 %indvar_flatten1, %bound1
  %indvar_flatten_next1 = add i48 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %5, label %.reset15

; <label>:1                                       ; preds = %.reset15, %.loopexit
  %indvar_flatten = phi i16 [ 0, %.reset15 ], [ %indvar_flatten_next, %.loopexit ]
  %i_op_assign_3 = phi i8 [ 0, %.reset15 ], [ %r_V_17_mid2_v_v_v, %.loopexit ]
  %sum_1 = phi float [ 0.000000e+00, %.reset15 ], [ %sum_3, %.loopexit ]
  %i_op_assign_4 = phi i8 [ 0, %.reset15 ], [ %jj, %.loopexit ]
  %tmp_18 = zext i8 %i_op_assign_3 to i16
  %h_V = add i16 %tmp_18, %tmp_21_mid2
  %lhs_V_7_cast = sext i16 %h_V to i17
  %slt = icmp slt i17 %lhs_V_7_cast, %lhs_V_4_cast
  %rev = xor i1 %slt, true
  %exitcond_flatten = icmp eq i16 %indvar_flatten, %bound
  %indvar_flatten_next = add i16 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %4, label %.reset

; <label>:2                                       ; preds = %.reset
  %lhs_V = sext i16 %w_V to i32
  %lhs_V_8_cast = sext i16 %w_V to i17
  %tmp_33 = icmp slt i17 %lhs_V_8_cast, %lhs_V_2_cast
  br i1 %tmp_33, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %2
  %lhs_V_9_cast = zext i8 %i_op_assign_13_mid2 to i24
  %r_V_14 = mul nsw i32 %lhs_V, %rhs_V_1
  %rhs_V_10_cast = sext i32 %r_V_14 to i48
  %r_V_12 = add i48 %r_V_12_mid2, %rhs_V_10_cast
  %r_V_13 = mul i24 %lhs_V_9_cast, %rhs_V_13_cast
  %lhs_V_14_cast = zext i24 %r_V_13 to i32
  %tmp = add i32 %r_V_17_mid2, %lhs_V_14_cast
  %tmp_cast = zext i32 %tmp to i48
  %tmp1 = mul i48 %tmp_cast, %rhs_V_12_cast
  br label %.preheader

.preheader:                                       ; preds = %3, %.preheader.preheader
  %sum_2 = phi float [ %sum_5, %3 ], [ %sum_1, %.preheader.preheader ]
  %i_op_assign = phi i16 [ %cin, %3 ], [ 0, %.preheader.preheader ]
  %r_V_16 = phi i32 [ %next_mul, %3 ], [ 0, %.preheader.preheader ]
  %exitcond2 = icmp eq i16 %i_op_assign, %CHin_V_read
  %cin = add i16 %i_op_assign, 1
  br i1 %exitcond2, label %.loopexit, label %3

; <label>:3                                       ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65535, i64 0)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str9) nounwind
  %tmp_36 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %rhs_V_11_cast = zext i16 %i_op_assign to i48
  %r_V_15 = add i48 %rhs_V_11_cast, %r_V_12
  %feature_in2_sum9 = add i48 %r_V_15, %tmp_21_cast
  %feature_in2_sum9_cast = sext i48 %feature_in2_sum9 to i64
  %gmem_addr_2 = getelementptr inbounds float* %gmem, i64 %feature_in2_sum9_cast
  %gmem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr_2, i32 1)
  %gmem_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr_2)
  %next_mul = add i32 %rhs_V_14_cast, %r_V_16
  %tmp2 = add i32 %tmp_10_cast_mid2, %r_V_16
  %tmp2_cast = zext i32 %tmp2 to i48
  %tmp_37 = add i48 %tmp1, %tmp2_cast
  %tmp_39_cast_cast = zext i48 %tmp_37 to i49
  %W4_sum = add i49 %tmp_39_cast_cast, %tmp_17_cast
  %W4_sum_cast = zext i49 %W4_sum to i64
  %gmem_addr_3 = getelementptr inbounds float* %gmem, i64 %W4_sum_cast
  %gmem_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr_3, i32 1)
  %gmem_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr_3)
  %tp = fmul float %gmem_addr_2_read, %gmem_addr_3_read
  %sum_5 = fadd float %sum_2, %tp
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str9, i32 %tmp_36)
  br label %.preheader

.loopexit:                                        ; preds = %.preheader, %2, %.reset
  %sum_3 = phi float [ %sum_1, %.reset ], [ %sum_1, %2 ], [ %sum_2, %.preheader ]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([3 x i8]* @p_str8, i32 %tmp_32)
  %jj = add i8 %i_op_assign_13_mid2, 1
  br label %1

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @Ky_Kx_str)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65025, i64 0)
  %exitcond1 = icmp eq i8 %i_op_assign_4, %Kx_V_read
  %i_op_assign_13_mid2 = select i1 %exitcond1, i8 0, i8 %i_op_assign_4
  %ii = add i8 %i_op_assign_3, 1
  %tmp_18_mid1 = zext i8 %ii to i16
  %h_V_mid1 = add i16 %tmp_18_mid1, %tmp_21_mid2
  %h_V_mid2 = select i1 %exitcond1, i16 %h_V_mid1, i16 %h_V
  %lhs_V_7_cast_mid1 = sext i16 %h_V_mid1 to i17
  %r_V_12_mid2_v_v_v = sext i16 %h_V_mid2 to i32
  %r_V_12_mid2_v_v = mul i32 %rhs_V_1, %r_V_12_mid2_v_v_v
  %r_V_12_mid2_v = sext i32 %r_V_12_mid2_v_v to i48
  %r_V_12_mid2 = mul i48 %rhs_V_2, %r_V_12_mid2_v
  %r_V_17_mid2_v_v_v = select i1 %exitcond1, i8 %ii, i8 %i_op_assign_3
  %r_V_17_mid2_v_v_v_cast = zext i8 %r_V_17_mid2_v_v_v to i16
  %r_V_17_mid2_v_v = mul i16 %rhs_V_16_cast, %r_V_17_mid2_v_v_v_cast
  %r_V_17_mid2_v = zext i16 %r_V_17_mid2_v_v to i32
  %r_V_17_mid2 = mul i32 %rhs_V_1, %r_V_17_mid2_v
  %slt1 = icmp slt i17 %lhs_V_7_cast_mid1, %lhs_V_4_cast
  %rev1 = xor i1 %slt1, true
  %tmp_31_not_mid2 = select i1 %exitcond1, i1 %rev1, i1 %rev
  call void (...)* @_ssdm_op_SpecLoopName([3 x i8]* @p_str8) nounwind
  %tmp_32 = call i32 (...)* @_ssdm_op_SpecRegionBegin([3 x i8]* @p_str8)
  %tmp_27 = zext i8 %i_op_assign_13_mid2 to i16
  %w_V = add i16 %tmp_27, %tmp_24
  %tmp_28 = or i16 %w_V, %h_V_mid2
  %tmp_38 = call i1 @_ssdm_op_BitSelect.i1.i16.i32(i16 %tmp_28, i32 15)
  %brmerge = or i1 %tmp_38, %tmp_31_not_mid2
  br i1 %brmerge, label %.loopexit, label %2

; <label>:4                                       ; preds = %1
  %bias6_sum = add i31 %tmp_16_cast, %tmp_10_mid2_cast
  %bias6_sum_cast = zext i31 %bias6_sum to i64
  %gmem_addr = getelementptr inbounds float* %gmem, i64 %bias6_sum_cast
  %gmem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr, i32 1)
  %gmem_addr_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr)
  %sum = fadd float %sum_1, %gmem_addr_read
  %sum_5_to_int = bitcast float %sum to i32
  %tmp_25 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum_5_to_int, i32 23, i32 30)
  %tmp_35 = trunc i32 %sum_5_to_int to i23
  %notlhs = icmp ne i8 %tmp_25, -1
  %notrhs = icmp eq i23 %tmp_35, 0
  %tmp_29 = or i1 %notrhs, %notlhs
  %tmp_30 = fcmp olt float %sum, 0.000000e+00
  %rhs_V = and i1 %tmp_29, %tmp_30
  %r_V_5 = and i1 %rhs_V, %relu_en_V_read
  %sum_4 = select i1 %r_V_5, float 0.000000e+00, float %sum
  %r_V_11 = mul i32 %rhs_V_14_cast, %i_op_assign_12_cast7
  %tmp3 = add i32 %tmp_10_cast_mid2, %r_V_11
  %tmp3_cast = zext i32 %tmp3 to i48
  %tmp_19 = add i48 %r_V_10_mid2, %tmp3_cast
  %tmp_19_cast_cast = zext i48 %tmp_19 to i49
  %feature_out8_sum = add i49 %tmp_10_cast, %tmp_19_cast_cast
  %feature_out8_sum_cast = zext i49 %feature_out8_sum to i64
  %gmem_addr_1 = getelementptr inbounds float* %gmem, i64 %feature_out8_sum_cast
  %gmem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_addr_1, float %sum_4, i4 -1)
  %gmem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_addr_1)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str6, i32 %tmp_22)
  %j = add i16 1, %i_op_assign_12_mid2
  %indvar_flatten7_op = add i32 1, %indvar_flatten7
  %indvar_flatten_next8 = select i1 %exitcond_flatten2, i32 1, i32 %indvar_flatten7_op
  br label %0

.reset15:                                         ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @CHout_Hout_Wout_str)
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 281462092005375, i64 0)
  %exitcond_flatten2 = icmp eq i32 %indvar_flatten7, %bound4
  %i_op_assign_10_mid = select i1 %exitcond_flatten2, i16 0, i16 %i_op_assign_1
  %cout = add i16 %i_op_assign_s, 1
  %tmp_10_mid2_v = select i1 %exitcond_flatten2, i16 %cout, i16 %i_op_assign_s
  %tmp_10_mid2_cast = zext i16 %tmp_10_mid2_v to i31
  %tmp_10_cast_mid2 = zext i16 %tmp_10_mid2_v to i32
  %tmp_34 = mul i16 %tmp_14, %i_op_assign_1
  %tmp_21_mid227_v = select i1 %exitcond_flatten2, i16 0, i16 %tmp_34
  %r_V_10_mid = select i1 %exitcond_flatten2, i48 0, i48 %r_V_10
  %exitcond = icmp eq i16 %i_op_assign_2, %Wout_V
  %exitcond_mid1 = select i1 %exitcond_flatten2, i1 %exitcond_mid, i1 %exitcond
  %i = add i16 %i_op_assign_10_mid, 1
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @Hout_Wout_str)
  %tmp_31 = or i1 %exitcond_mid1, %exitcond_flatten2
  %i_op_assign_12_mid2 = select i1 %tmp_31, i16 0, i16 %i_op_assign_2
  %i_op_assign_10_cast8_mid1 = zext i16 %i to i32
  %r_V_9_mid1 = mul i32 %i_op_assign_10_cast8_mid1, %rhs_V_4_cast
  %r_V_9_cast_mid1 = zext i32 %r_V_9_mid1 to i48
  %tmp_20_mid1 = mul i16 %i, %tmp_14
  %tmp_21_mid2_v = select i1 %exitcond_mid1, i16 %tmp_20_mid1, i16 %tmp_21_mid227_v
  %tmp_21_mid2 = sub i16 %tmp_21_mid2_v, %tmp_9
  %r_V_10_mid1 = mul i48 %r_V_9_cast_mid1, %rhs_V_12_cast
  %r_V_10_mid2 = select i1 %exitcond_mid1, i48 %r_V_10_mid1, i48 %r_V_10_mid
  %i_op_assign_10_mid2 = select i1 %exitcond_mid1, i16 %i, i16 %i_op_assign_10_mid
  %i_op_assign_12_cast7 = zext i16 %i_op_assign_12_mid2 to i32
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str6)
  %tmp_23 = mul i16 %i_op_assign_12_mid2, %tmp_15
  %tmp_24 = sub i16 %tmp_23, %tmp_s
  br label %1

; <label>:5                                       ; preds = %0
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}
!axi4.master.portmap = !{!7}
!axi4.slave.bundlemap = !{!8, !9, !10, !11}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !"gmem", metadata !"feature_in", metadata !"READONLY", metadata !"W", metadata !"READONLY", metadata !"bias", metadata !"READONLY", metadata !"feature_out", metadata !"WRITEONLY"}
!8 = metadata !{metadata !"feature_in", metadata !""}
!9 = metadata !{metadata !"W", metadata !""}
!10 = metadata !{metadata !"bias", metadata !""}
!11 = metadata !{metadata !"feature_out", metadata !""}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 31, metadata !14}
!14 = metadata !{metadata !15, metadata !16, metadata !17, metadata !18}
!15 = metadata !{metadata !"feature_in", metadata !5, metadata !"float", i32 0, i32 31}
!16 = metadata !{metadata !"W", metadata !5, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !"bias", metadata !5, metadata !"float", i32 0, i32 31}
!18 = metadata !{metadata !"feature_out", metadata !5, metadata !"float", i32 0, i32 31}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 15, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"CHin.V", metadata !23, metadata !"uint16", i32 0, i32 15}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, i32 0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 15, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"Hin.V", metadata !23, metadata !"uint16", i32 0, i32 15}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 15, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"Win.V", metadata !23, metadata !"uint16", i32 0, i32 15}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 15, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"CHout.V", metadata !23, metadata !"uint16", i32 0, i32 15}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 7, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"Kx.V", metadata !23, metadata !"uint8", i32 0, i32 7}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 7, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"Ky.V", metadata !23, metadata !"uint8", i32 0, i32 7}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 7, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"Sx.V", metadata !23, metadata !"uint8", i32 0, i32 7}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 7, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"Sy.V", metadata !23, metadata !"uint8", i32 0, i32 7}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"mode.V", metadata !23, metadata !"uint1", i32 0, i32 0}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 0, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"relu_en.V", metadata !23, metadata !"uint1", i32 0, i32 0}
