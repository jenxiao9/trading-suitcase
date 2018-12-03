-makelib ies/xil_defaultlib -sv \
  "/usr/local/xilinx/Vivado-2017.2/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "/afs/ece.cmu.edu/support/xilinx/xilinx.release/Vivado-2017.2/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_ControlModuleWrapper_0_0/sim/design_1_ControlModuleWrapper_0_0.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
  "../../../bd/design_1/hdl/design_1.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

