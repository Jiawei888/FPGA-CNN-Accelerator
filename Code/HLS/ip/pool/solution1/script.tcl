############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project pool
set_top Pool
add_files pool/Pool_core.cpp
add_files pool/Pool_core.h
add_files -tb pool/main.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 100 -name default
#source "./pool/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
