vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -sv -L xil_defaultlib "+incdir+../../../../UART_Tester.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../UART_Tester.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"/usr/local/xilinx/Vivado-2017.2/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/afs/ece.cmu.edu/support/xilinx/xilinx.release/Vivado-2017.2/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../UART_Tester.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../UART_Tester.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"../../../bd/design_1/ip/design_1_ControlModuleWrapper_0_0/sim/design_1_ControlModuleWrapper_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

