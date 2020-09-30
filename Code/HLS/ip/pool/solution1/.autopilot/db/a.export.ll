; ModuleID = 'C:/Users/luojiawei/Desktop/pynq_1/ip/pool/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@mode1 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@bundle2 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@Pool_str = internal unnamed_addr constant [5 x i8] c"Pool\00"
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

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

define weak i2 @_ssdm_op_Read.s_axilite.i2(i2) {
entry:
  ret i2 %0
}

define weak i16 @_ssdm_op_Read.s_axilite.i16(i16) {
entry:
  ret i16 %0
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i8
  ret i8 %empty_4
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i30
  ret i30 %empty_5
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare void @_GLOBAL__I_a() nounwind

define void @Pool(float* %gmem, i16 %CHin_V, i16 %Hin_V, i16 %Win_V, i8 %Kx_V, i8 %Ky_V, i2 %mode_V, i32 %feature_in, i32 %feature_out) {
  %feature_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %feature_out)
  %feature_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %feature_in)
  %mode_V_read = call i2 @_ssdm_op_Read.s_axilite.i2(i2 %mode_V)
  %Ky_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Ky_V)
  %Kx_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Kx_V)
  %Win_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %Win_V)
  %Hin_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %Hin_V)
  %CHin_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %CHin_V)
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %feature_out_read, i32 2, i32 31)
  %tmp_7_cast = zext i30 %tmp_1 to i49
  %tmp_7 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %feature_in_read, i32 2, i32 31)
  %tmp_32_cast = zext i30 %tmp_7 to i48
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem), !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %CHin_V), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %Hin_V), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %Win_V), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Kx_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Ky_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i2 %mode_V), !map !37
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Pool_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %feature_out, [10 x i8]* @mode1, i32 0, i32 0, i32 0, i64 4294967295, [1 x i8]* @bundle2, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem, [6 x i8]* @p_str, i32 0, i32 0, i32 0, i64 4294967295, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %feature_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i64 4294967295, [1 x i8]* @bundle, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %Win_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Kx_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %Hin_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i2 %mode_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Ky_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %CHin_V, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %lhs_V = zext i8 %Kx_V_read to i16
  %r_V_14 = udiv i16 %Win_V_read, %lhs_V
  %rhs_V = zext i8 %Ky_V_read to i16
  %tmp_4 = udiv i16 %Hin_V_read, %rhs_V
  %rhs_V_1_cast = zext i16 %r_V_14 to i32
  %rhs_V_1 = zext i16 %CHin_V_read to i32
  %tmp_6 = icmp eq i2 %mode_V_read, 0
  %rhs_V_2 = zext i16 %Win_V_read to i48
  %r_V_15 = mul i16 %lhs_V, %rhs_V
  %tmp_3 = zext i16 %r_V_15 to i32
  %tmp_s = sitofp i32 %tmp_3 to float
  %rhs_V_2_cast = zext i16 %CHin_V_read to i48
  %tmp_9 = icmp eq i2 %mode_V_read, 1
  %sum = select i1 %tmp_6, float 0.000000e+00, float 0x4376345780000000
  %tmp_2 = or i1 %tmp_6, %tmp_9
  %p_sum = select i1 %tmp_2, float %sum, float 0xC376345780000000
  %cast2 = zext i16 %tmp_4 to i32
  %bound4 = mul i32 %rhs_V_1_cast, %cast2
  %cast = zext i32 %bound4 to i48
  %bound = mul i48 %cast, %rhs_V_2_cast
  %exitcond_mid = icmp eq i16 %r_V_14, 0
  br label %.preheader1010

.preheader1010:                                   ; preds = %0, %._crit_edge1014
  %indvar_flatten1 = phi i48 [ 0, %0 ], [ %indvar_flatten_next1, %._crit_edge1014 ]
  %op_assign_8 = phi i16 [ 0, %0 ], [ %i_op_assign_17_cast6_mid2_v, %._crit_edge1014 ]
  %indvar_flatten6 = phi i32 [ 0, %0 ], [ %indvar_flatten_next7, %._crit_edge1014 ]
  %i_op_assign_s = phi i16 [ 0, %0 ], [ %i_op_assign_11_mid2, %._crit_edge1014 ]
  %i_op_assign_1 = phi i16 [ 0, %0 ], [ %j, %._crit_edge1014 ]
  %i_op_assign_13_cast5 = zext i16 %i_op_assign_s to i32
  %r_V = mul i32 %i_op_assign_13_cast5, %rhs_V_1_cast
  %r_V_cast = zext i32 %r_V to i48
  %r_V_1 = mul i48 %r_V_cast, %rhs_V_2_cast
  %exitcond_flatten1 = icmp eq i48 %indvar_flatten1, %bound
  %indvar_flatten_next1 = add i48 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %6, label %.preheader1011.preheader

.preheader:                                       ; preds = %.preheader1011.preheader, %._crit_edge
  %indvar_flatten = phi i16 [ 0, %.preheader1011.preheader ], [ %indvar_flatten_next, %._crit_edge ]
  %i_op_assign_2 = phi i8 [ 0, %.preheader1011.preheader ], [ %r_V_4_mid2_v_v_v_v_v_v, %._crit_edge ]
  %sum_3 = phi float [ %p_sum, %.preheader1011.preheader ], [ %sum_4, %._crit_edge ]
  %i_op_assign_3 = phi i8 [ 0, %.preheader1011.preheader ], [ %jj, %._crit_edge ]
  %exitcond_flatten = icmp eq i16 %indvar_flatten, %r_V_15
  %indvar_flatten_next = add i16 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %4, label %.preheader1009

; <label>:1                                       ; preds = %.preheader1009
  %lhs_V_1 = sext i16 %w_V to i32
  %r_V_5 = mul nsw i32 %lhs_V_1, %rhs_V_1
  %rhs_V_6_cast = sext i32 %r_V_5 to i48
  %r_V_6 = add i48 %rhs_V_6_cast, %r_V_4_mid2
  %r_V_7 = add i48 %rhs_V_7_cast_mid2, %r_V_6
  %feature_in2_sum6 = add i48 %r_V_7, %tmp_32_cast
  %feature_in2_sum6_cast = sext i48 %feature_in2_sum6 to i64
  %gmem_addr_1 = getelementptr inbounds float* %gmem, i64 %feature_in2_sum6_cast
  %gmem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr_1, i32 1)
  %gmem_addr_1_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr_1)
  %sum_2 = fadd float %sum_3, %gmem_addr_1_read
  br label %._crit_edge

; <label>:2                                       ; preds = %.preheader1009
  %lhs_V_2 = sext i16 %w_V to i32
  %r_V_8 = mul nsw i32 %lhs_V_2, %rhs_V_1
  %rhs_V_9_cast = sext i32 %r_V_8 to i48
  %r_V_9 = add i48 %rhs_V_9_cast, %r_V_4_mid2
  %r_V_10 = add i48 %rhs_V_7_cast_mid2, %r_V_9
  %feature_in2_sum5 = add i48 %tmp_32_cast, %r_V_10
  %feature_in2_sum5_cast = sext i48 %feature_in2_sum5 to i64
  %gmem_addr_2 = getelementptr inbounds float* %gmem, i64 %feature_in2_sum5_cast
  %gmem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr_2, i32 1)
  %gmem_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr_2)
  %sum_3_to_int = bitcast float %sum_3 to i32
  %tmp_13 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum_3_to_int, i32 23, i32 30)
  %tmp_14 = trunc i32 %sum_3_to_int to i23
  %feature_in_load_1_to_int = bitcast float %gmem_addr_2_read to i32
  %tmp_15 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %feature_in_load_1_to_int, i32 23, i32 30)
  %tmp_16 = trunc i32 %feature_in_load_1_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_13, -1
  %notrhs1 = icmp eq i23 %tmp_14, 0
  %tmp_17 = or i1 %notrhs1, %notlhs1
  %notlhs2 = icmp ne i8 %tmp_15, -1
  %notrhs2 = icmp eq i23 %tmp_16, 0
  %tmp_18 = or i1 %notrhs2, %notlhs2
  %tmp_19 = and i1 %tmp_17, %tmp_18
  %tmp_20 = fcmp ogt float %sum_3, %gmem_addr_2_read
  %tmp_21 = and i1 %tmp_19, %tmp_20
  %feature_in_load_1_sum_3 = select i1 %tmp_21, float %gmem_addr_2_read, float %sum_3
  br label %._crit_edge

; <label>:3                                       ; preds = %.preheader1009
  %lhs_V_3 = sext i16 %w_V to i32
  %r_V_11 = mul nsw i32 %lhs_V_3, %rhs_V_1
  %rhs_V_11_cast = sext i32 %r_V_11 to i48
  %r_V_12 = add i48 %rhs_V_11_cast, %r_V_4_mid2
  %r_V_13 = add i48 %rhs_V_7_cast_mid2, %r_V_12
  %feature_in2_sum = add i48 %tmp_32_cast, %r_V_13
  %feature_in2_sum_cast = sext i48 %feature_in2_sum to i64
  %gmem_addr_3 = getelementptr inbounds float* %gmem, i64 %feature_in2_sum_cast
  %gmem_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr_3, i32 1)
  %gmem_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr_3)
  %sum_3_to_int7 = bitcast float %sum_3 to i32
  %tmp_22 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum_3_to_int7, i32 23, i32 30)
  %tmp_23 = trunc i32 %sum_3_to_int7 to i23
  %feature_in_load_2_to_int = bitcast float %gmem_addr_3_read to i32
  %tmp_24 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %feature_in_load_2_to_int, i32 23, i32 30)
  %tmp_25 = trunc i32 %feature_in_load_2_to_int to i23
  %notlhs = icmp ne i8 %tmp_22, -1
  %notrhs = icmp eq i23 %tmp_23, 0
  %tmp_26 = or i1 %notrhs, %notlhs
  %notlhs8 = icmp ne i8 %tmp_24, -1
  %notrhs9 = icmp eq i23 %tmp_25, 0
  %tmp_27 = or i1 %notrhs9, %notlhs8
  %tmp_28 = and i1 %tmp_26, %tmp_27
  %tmp_29 = fcmp ogt float %sum_3, %gmem_addr_3_read
  %tmp_30 = and i1 %tmp_28, %tmp_29
  %sum_3_feature_in_load_2 = select i1 %tmp_30, float %sum_3, float %gmem_addr_3_read
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %2, %1, %.preheader1009
  %sum_4 = phi float [ %sum_2, %1 ], [ %sum_3, %.preheader1009 ], [ %feature_in_load_1_sum_3, %2 ], [ %sum_3_feature_in_load_2, %3 ]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp)
  %jj = add i8 %i_op_assign_14_mid2, 1
  br label %.preheader

.preheader1009:                                   ; preds = %.preheader
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65025, i64 0)
  %exitcond1 = icmp eq i8 %i_op_assign_3, %Kx_V_read
  %i_op_assign_14_mid2 = select i1 %exitcond1, i8 0, i8 %i_op_assign_3
  %ii7 = add i8 %i_op_assign_2, 1
  %r_V_4_mid2_v_v_v_v_v_v = select i1 %exitcond1, i8 %ii7, i8 %i_op_assign_2
  %r_V_4_mid2_v_v_v_v_v = zext i8 %r_V_4_mid2_v_v_v_v_v_v to i16
  %r_V_4_mid2_v_v_v_v = add i16 %r_V_4_mid2_v_v_v_v_v, %tmp_1_mid2
  %r_V_4_mid2_v_v_v = sext i16 %r_V_4_mid2_v_v_v_v to i32
  %r_V_4_mid2_v_v = mul i32 %rhs_V_1, %r_V_4_mid2_v_v_v
  %r_V_4_mid2_v = sext i32 %r_V_4_mid2_v_v to i48
  %r_V_4_mid2 = mul i48 %r_V_4_mid2_v, %rhs_V_2
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_10 = zext i8 %i_op_assign_14_mid2 to i16
  %w_V = add i16 %tmp_10, %tmp_5
  switch i2 %mode_V_read, label %._crit_edge [
    i2 0, label %1
    i2 1, label %2
    i2 -2, label %3
  ]

; <label>:4                                       ; preds = %.preheader
  br i1 %tmp_6, label %5, label %._crit_edge1014

; <label>:5                                       ; preds = %4
  %sum_1 = fdiv float %sum_3, %tmp_s
  br label %._crit_edge1014

._crit_edge1014:                                  ; preds = %5, %4
  %sum_5 = phi float [ %sum_1, %5 ], [ %sum_3, %4 ]
  %r_V_2 = mul i32 %rhs_V_1, %i_op_assign_15_cast4
  %tmp1 = add i32 %i_op_assign_17_cast6_mid2, %r_V_2
  %tmp1_cast = zext i32 %tmp1 to i48
  %tmp_8 = add i48 %r_V_1_mid2, %tmp1_cast
  %tmp_17_cast_cast = zext i48 %tmp_8 to i49
  %feature_out4_sum = add i49 %tmp_17_cast_cast, %tmp_7_cast
  %feature_out4_sum_cast = zext i49 %feature_out4_sum to i64
  %gmem_addr = getelementptr inbounds float* %gmem, i64 %feature_out4_sum_cast
  %gmem_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_addr, float %sum_5, i4 -1)
  %gmem_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_addr)
  %j = add i16 %i_op_assign_13_mid2, 1
  %indvar_flatten6_op = add i32 %indvar_flatten6, 1
  %indvar_flatten_next7 = select i1 %exitcond_flatten2, i32 1, i32 %indvar_flatten6_op
  br label %.preheader1010

.preheader1011.preheader:                         ; preds = %.preheader1010
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 281462092005375, i64 0)
  %exitcond_flatten2 = icmp eq i32 %indvar_flatten6, %bound4
  %i_op_assign_11_mid = select i1 %exitcond_flatten2, i16 0, i16 %i_op_assign_s
  %c = add i16 %op_assign_8, 1
  %i_op_assign_17_cast6_mid2_v = select i1 %exitcond_flatten2, i16 %c, i16 %op_assign_8
  %i_op_assign_17_cast6_mid2 = zext i16 %i_op_assign_17_cast6_mid2_v to i32
  %rhs_V_7_cast_mid2 = zext i16 %i_op_assign_17_cast6_mid2_v to i48
  %tmp_11 = mul i16 %i_op_assign_s, %rhs_V
  %tmp_1_mid = select i1 %exitcond_flatten2, i16 0, i16 %tmp_11
  %r_V_1_mid = select i1 %exitcond_flatten2, i48 0, i48 %r_V_1
  %exitcond = icmp eq i16 %i_op_assign_1, %r_V_14
  %exitcond_mid1 = select i1 %exitcond_flatten2, i1 %exitcond_mid, i1 %exitcond
  %i = add i16 %i_op_assign_11_mid, 1
  %tmp_12 = or i1 %exitcond_mid1, %exitcond_flatten2
  %i_op_assign_13_mid2 = select i1 %tmp_12, i16 0, i16 %i_op_assign_1
  %i_op_assign_13_cast5_mid1 = zext i16 %i to i32
  %r_V_mid1 = mul i32 %rhs_V_1_cast, %i_op_assign_13_cast5_mid1
  %r_V_cast_mid1 = zext i32 %r_V_mid1 to i48
  %tmp_1_mid1 = mul i16 %rhs_V, %i
  %tmp_1_mid2 = select i1 %exitcond_mid1, i16 %tmp_1_mid1, i16 %tmp_1_mid
  %r_V_1_mid1 = mul i48 %rhs_V_2_cast, %r_V_cast_mid1
  %r_V_1_mid2 = select i1 %exitcond_mid1, i48 %r_V_1_mid1, i48 %r_V_1_mid
  %i_op_assign_11_mid2 = select i1 %exitcond_mid1, i16 %i, i16 %i_op_assign_11_mid
  %i_op_assign_15_cast4 = zext i16 %i_op_assign_13_mid2 to i32
  %tmp_5 = mul i16 %lhs_V, %i_op_assign_13_mid2
  br label %.preheader

; <label>:6                                       ; preds = %.preheader1010
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}
!axi4.master.portmap = !{!7}
!axi4.slave.bundlemap = !{!8, !9}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !"gmem", metadata !"feature_in", metadata !"READONLY", metadata !"feature_out", metadata !"WRITEONLY"}
!8 = metadata !{metadata !"feature_in", metadata !""}
!9 = metadata !{metadata !"feature_out", metadata !""}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13, metadata !14}
!13 = metadata !{metadata !"feature_in", metadata !5, metadata !"float", i32 0, i32 31}
!14 = metadata !{metadata !"feature_out", metadata !5, metadata !"float", i32 0, i32 31}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 15, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"CHin.V", metadata !19, metadata !"uint16", i32 0, i32 15}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, i32 0}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 15, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"Hin.V", metadata !19, metadata !"uint16", i32 0, i32 15}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 15, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"Win.V", metadata !19, metadata !"uint16", i32 0, i32 15}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 7, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"Kx.V", metadata !19, metadata !"uint8", i32 0, i32 7}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 7, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"Ky.V", metadata !19, metadata !"uint8", i32 0, i32 7}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 1, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"mode.V", metadata !19, metadata !"uint2", i32 0, i32 1}
