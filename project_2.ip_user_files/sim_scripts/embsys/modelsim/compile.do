vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/dist_mem_gen_v8_0_12
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_0
vlib modelsim_lib/msim/lib_fifo_v1_0_9
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_quad_spi_v3_2_13
vlib modelsim_lib/msim/axi_gpio_v2_0_16
vlib modelsim_lib/msim/microblaze_v10_0_4
vlib modelsim_lib/msim/axi_timer_v2_0_16
vlib modelsim_lib/msim/fit_timer_v2_0_8
vlib modelsim_lib/msim/axi_uartlite_v2_0_18
vlib modelsim_lib/msim/axi_intc_v4_1_10
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/mdm_v3_2_11
vlib modelsim_lib/msim/proc_sys_reset_v5_0_12
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_14
vlib modelsim_lib/msim/axi_data_fifo_v2_1_13
vlib modelsim_lib/msim/axi_crossbar_v2_1_15
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_13
vlib modelsim_lib/msim/blk_mem_gen_v8_4_0

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap fifo_generator_v13_2_0 modelsim_lib/msim/fifo_generator_v13_2_0
vmap lib_fifo_v1_0_9 modelsim_lib/msim/lib_fifo_v1_0_9
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_13 modelsim_lib/msim/axi_quad_spi_v3_2_13
vmap axi_gpio_v2_0_16 modelsim_lib/msim/axi_gpio_v2_0_16
vmap microblaze_v10_0_4 modelsim_lib/msim/microblaze_v10_0_4
vmap axi_timer_v2_0_16 modelsim_lib/msim/axi_timer_v2_0_16
vmap fit_timer_v2_0_8 modelsim_lib/msim/fit_timer_v2_0_8
vmap axi_uartlite_v2_0_18 modelsim_lib/msim/axi_uartlite_v2_0_18
vmap axi_intc_v4_1_10 modelsim_lib/msim/axi_intc_v4_1_10
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap mdm_v3_2_11 modelsim_lib/msim/mdm_v3_2_11
vmap proc_sys_reset_v5_0_12 modelsim_lib/msim/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_14 modelsim_lib/msim/axi_register_slice_v2_1_14
vmap axi_data_fifo_v2_1_13 modelsim_lib/msim/axi_data_fifo_v2_1_13
vmap axi_crossbar_v2_1_15 modelsim_lib/msim/axi_crossbar_v2_1_15
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_13 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_13
vmap blk_mem_gen_v8_4_0 modelsim_lib/msim/blk_mem_gen_v8_4_0

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5bf9/src/rgbpwm.v" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5bf9/src/sevensegment.v" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5bf9/src/debounce.v" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5bf9/hdl/nexys4IO_v2_0_S00_AXI.v" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5bf9/hdl/nexys4IO_v2_0.v" \
"../../../bd/embsys/ip/embsys_nexys4IO_0_0/sim/embsys_nexys4IO_0_0.v" \
"../../../bd/embsys/ipshared/7602/hdl/PmodENC_v1_0_S00_AXI.v" \
"../../../bd/embsys/ipshared/7602/hdl/PmodENC_v1_0.v" \
"../../../bd/embsys/ipshared/7602/src/debouncer.v" \
"../../../bd/embsys/ipshared/7602/src/encoder.v" \
"../../../bd/embsys/ip/embsys_PmodENC_0_0/sim/embsys_PmodENC_0_0.v" \

vlog -work dist_mem_gen_v8_0_12 -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_0 -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_0 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_0 -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_9 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_13 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_quad_spi_0_0/sim/PmodOLEDrgb_axi_quad_spi_0_0.vhd" \

vcom -work axi_gpio_v2_0_16 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_gpio_0_1/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_axi_gpio_0_1/sim/PmodOLEDrgb_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_pmod_bridge_0_0/src/pmod_concat.v" \
"../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/ip/PmodOLEDrgb_pmod_bridge_0_0/sim/PmodOLEDrgb_pmod_bridge_0_0.v" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/4ff8/hdl/PmodOLEDrgb_v1_0.v" \
"../../../bd/embsys/ip/embsys_PmodOLEDrgb_0_0/sim/embsys_PmodOLEDrgb_0_0.v" \

vcom -work microblaze_v10_0_4 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5eb2/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_microblaze_0_0/sim/embsys_microblaze_0_0.vhd" \

vcom -work axi_timer_v2_0_16 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/f3cd/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_axi_timer_0_0/sim/embsys_axi_timer_0_0.vhd" \

vcom -work fit_timer_v2_0_8 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/d59c/hdl/fit_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_fit_timer_0_0/sim/embsys_fit_timer_0_0.vhd" \

vcom -work axi_uartlite_v2_0_18 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/a8a5/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_axi_uartlite_0_0/sim/embsys_axi_uartlite_0_0.vhd" \
"../../../bd/embsys/ip/embsys_axi_gpio_0_0/sim/embsys_axi_gpio_0_0.vhd" \
"../../../bd/embsys/ip/embsys_axi_gpio_1_0/sim/embsys_axi_gpio_1_0.vhd" \
"../../../bd/embsys/ip/embsys_axi_gpio_2_0/sim/embsys_axi_gpio_2_0.vhd" \

vcom -work axi_intc_v4_1_10 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/cf04/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_microblaze_0_axi_intc_0/sim/embsys_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_microblaze_0_xlconcat_0/sim/embsys_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_11 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/aa5e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_mdm_1_0/sim/embsys_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_rst_clk_wiz_1_100M_0/sim/embsys_rst_clk_wiz_1_100M_0.vhd" \
"../../../bd/embsys/ip/embsys_axi_gpio_3_0/sim/embsys_axi_gpio_3_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_14 -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/a259/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_13 -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/74ae/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_15 -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/a1b8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_xbar_0/sim/embsys_xbar_0.v" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_dlmb_v10_0/sim/embsys_dlmb_v10_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_v10_0/sim/embsys_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_13 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/0739/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embsys/ip/embsys_dlmb_bram_if_cntlr_0/sim/embsys_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_bram_if_cntlr_0/sim/embsys_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_0 -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_2.srcs/sources_1/bd/embsys/ipshared/e50b/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/5123" "+incdir+../../../../project_2.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_lmb_bram_0/sim/embsys_lmb_bram_0.v" \
"../../../bd/embsys/sim/embsys.v" \

vlog -work xil_defaultlib \
"glbl.v"

