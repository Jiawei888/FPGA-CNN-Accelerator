############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Conv
set_top Conv
add_files Conv/Conv_core.h
add_files Conv/Conv_core.cpp
add_files -tb Conv/main.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 100 -name default
#source "./Conv/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
