#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2017.3.1 (64-bit)
#
# Filename    : embsys.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Wed Jan 24 04:23:07 +0530 2018
# SW Build 2035080 on Fri Oct 20 14:20:01 MDT 2017
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved. 
#
# usage: embsys.sh [-help]
# usage: embsys.sh [-lib_map_path]
# usage: embsys.sh [-noclean_files]
# usage: embsys.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'embsys.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm dist_mem_gen_v8_0_12 lib_pkg_v1_0_2 lib_cdc_v1_0_2 lib_srl_fifo_v1_0_2 fifo_generator_v13_2_0 lib_fifo_v1_0_9 axi_lite_ipif_v3_0_4 interrupt_control_v3_1_4 axi_quad_spi_v3_2_13 axi_gpio_v2_0_16 microblaze_v10_0_4 axi_timer_v2_0_16 fit_timer_v2_0_8 axi_uartlite_v2_0_18 axi_intc_v4_1_10 xlconcat_v2_1_1 mdm_v3_2_11 proc_sys_reset_v5_0_12 generic_baseblocks_v2_1_0 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_14 axi_data_fifo_v2_1_13 axi_crossbar_v2_1_15 lmb_v10_v3_0_9 lmb_bram_if_cntlr_v4_0_13 blk_mem_gen_v8_4_0)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "embsys.sh - Script generated by export_simulation (Vivado v2017.3.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5bf9/src/rgbpwm.v" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5bf9/src/sevensegment.v" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5bf9/src/debounce.v" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5bf9/hdl/nexys4IO_v2_0_S00_AXI.v" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5bf9/hdl/nexys4IO_v2_0.v" \
    "$ref_dir/../../../bd/embsys/ip/embsys_nexys4IO_0_0/sim/embsys_nexys4IO_0_0.v" \
    "$ref_dir/../../../bd/embsys/ipshared/7602/hdl/PmodENC_v1_0_S00_AXI.v" \
    "$ref_dir/../../../bd/embsys/ipshared/7602/hdl/PmodENC_v1_0.v" \
    "$ref_dir/../../../bd/embsys/ipshared/7602/src/debouncer.v" \
    "$ref_dir/../../../bd/embsys/ipshared/7602/src/encoder.v" \
    "$ref_dir/../../../bd/embsys/ip/embsys_PmodENC_0_0/sim/embsys_PmodENC_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work dist_mem_gen_v8_0_12 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/simulation/dist_mem_gen_v8_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_pkg_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_srl_fifo_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_0 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_fifo_v1_0_9 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work interrupt_control_v3_1_4 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_quad_spi_v3_2_13 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/axi_quad_spi_v3_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/sim/PmodOLEDrgb_axi_quad_spi_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_gpio_v2_0_16 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_gpio_0_1/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_gpio_0_1/sim/PmodOLEDrgb_axi_gpio_0_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_pmod_bridge_0_0/src/pmod_concat.v" \
    "$ref_dir/../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_pmod_bridge_0_0/sim/PmodOLEDrgb_pmod_bridge_0_0.v" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/4ff8/hdl/PmodOLEDrgb_v1_0.v" \
    "$ref_dir/../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/sim/embsys_PmodOLEDrgb_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work microblaze_v10_0_4 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5eb2/hdl/microblaze_v10_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_microblaze_0_0/sim/embsys_microblaze_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_timer_v2_0_16 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/f3cd/hdl/axi_timer_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_axi_timer_0_0/sim/embsys_axi_timer_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work fit_timer_v2_0_8 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/d59c/hdl/fit_timer_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_fit_timer_0_0/sim/embsys_fit_timer_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_uartlite_v2_0_18 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/a8a5/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_axi_uartlite_0_0/sim/embsys_axi_uartlite_0_0.vhd" \
    "$ref_dir/../../../bd/embsys/ip/embsys_axi_gpio_0_0/sim/embsys_axi_gpio_0_0.vhd" \
    "$ref_dir/../../../bd/embsys/ip/embsys_axi_gpio_1_0/sim/embsys_axi_gpio_1_0.vhd" \
    "$ref_dir/../../../bd/embsys/ip/embsys_axi_gpio_2_0/sim/embsys_axi_gpio_2_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_intc_v4_1_10 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/cf04/hdl/axi_intc_v4_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_microblaze_0_axi_intc_0/sim/embsys_microblaze_0_axi_intc_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xlconcat_v2_1_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/embsys/ip/embsys_microblaze_0_xlconcat_0/sim/embsys_microblaze_0_xlconcat_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work mdm_v3_2_11 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/aa5e/hdl/mdm_v3_2_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_mdm_1_0/sim/embsys_mdm_1_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0_clk_wiz.v" \
    "$ref_dir/../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work proc_sys_reset_v5_0_12 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_rst_clk_wiz_1_100M_0/sim/embsys_rst_clk_wiz_1_100M_0.vhd" \
    "$ref_dir/../../../bd/embsys/ip/embsys_axi_gpio_3_0/sim/embsys_axi_gpio_3_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_14 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/a259/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_13 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/74ae/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_15 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/a1b8/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/embsys/ip/embsys_xbar_0/sim/embsys_xbar_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lmb_v10_v3_0_9 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_dlmb_v10_0/sim/embsys_dlmb_v10_0.vhd" \
    "$ref_dir/../../../bd/embsys/ip/embsys_ilmb_v10_0/sim/embsys_ilmb_v10_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_bram_if_cntlr_v4_0_13 $vhdlan_opts \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/0739/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/embsys/ip/embsys_dlmb_bram_if_cntlr_0/sim/embsys_dlmb_bram_if_cntlr_0.vhd" \
    "$ref_dir/../../../bd/embsys/ip/embsys_ilmb_bram_if_cntlr_0/sim/embsys_ilmb_bram_if_cntlr_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work blk_mem_gen_v8_4_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/e50b/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" +incdir+"$ref_dir/../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/embsys/ip/embsys_lmb_bram_0/sim/embsys_lmb_bram_0.v" \
    "$ref_dir/../../../bd/embsys/sim/embsys.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.embsys xil_defaultlib.glbl -o embsys_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./embsys_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./embsys.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key embsys_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc embsys_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./embsys.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: embsys.sh [-help]\n\
Usage: embsys.sh [-lib_map_path]\n\
Usage: embsys.sh [-reset_run]\n\
Usage: embsys.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
