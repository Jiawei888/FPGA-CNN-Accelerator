-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_7 -sv \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_9 -sv \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq/ip/pynq_processing_system7_0_0/sim/pynq_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_16 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_10 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/248c/hdl/floating_point_v7_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_AXILiteS_s_axi.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_fadd_32ns_32bkb.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_fcmp_32ns_32dEe.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_fmul_32ns_32cud.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_gmem_m_axi.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mac_mul_sub_jbC.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mac_muladd_1mb6.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mac_muladd_1ocq.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mac_muladd_8pcA.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mul_16ns_32nfYi.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mul_16ns_32shbi.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mul_32ns_16ng8j.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mul_mul_8ns_kbM.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mul_mul_16nsibs.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mul_mul_16nsncg.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_mul_mul_16s_lbW.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv_sdiv_19s_9nseOg.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/verilog/Conv.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/ip/Conv_ap_fadd_7_full_dsp_32.vhd" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/ip/Conv_ap_fcmp_2_no_dsp_32.vhd" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7130/hdl/ip/Conv_ap_fmul_3_max_dsp_32.vhd" \
  "../../../bd/pynq/ip/pynq_Conv_0_0/sim/pynq_Conv_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_AXILiteS_s_axi.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_fadd_32ns_32bkb.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_fcmp_32ns_32eOg.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_fdiv_32ns_32cud.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_gmem_m_axi.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_mac_muladd_1ncg.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_mac_muladd_1ocq.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_mul_16ns_32nhbi.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_mul_32ns_16ng8j.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_mul_32s_16nsibs.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_mul_mul_8ns_lbW.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_mul_mul_16nsjbC.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_mul_mul_16nsmb6.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_mul_mul_16s_kbM.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_udiv_16ns_8nfYi.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool_uitofp_32ns_dEe.v" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/verilog/Pool.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/ip/Pool_ap_fadd_7_full_dsp_32.vhd" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/ip/Pool_ap_fcmp_2_no_dsp_32.vhd" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/ip/Pool_ap_fdiv_28_no_dsp_32.vhd" \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/54f6/hdl/ip/Pool_ap_uitofp_6_no_dsp_32.vhd" \
  "../../../bd/pynq/ip/pynq_Pool_0_0/sim/pynq_Pool_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq/ip/pynq_rst_ps7_0_50M_0/sim/pynq_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_21 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_20 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_22 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq/ip/pynq_xbar_0/sim/pynq_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_21 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq/ip/pynq_auto_pc_0/sim/pynq_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_20 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/7589/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_21 \
  "../../../../pynq.srcs/sources_1/bd/pynq/ipshared/07be/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq/ip/pynq_auto_us_0/sim/pynq_auto_us_0.v" \
  "../../../bd/pynq/ip/pynq_auto_pc_1/sim/pynq_auto_pc_1.v" \
  "../../../bd/pynq/ip/pynq_auto_us_1/sim/pynq_auto_us_1.v" \
  "../../../bd/pynq/ip/pynq_auto_pc_2/sim/pynq_auto_pc_2.v" \
  "../../../bd/pynq/sim/pynq.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

