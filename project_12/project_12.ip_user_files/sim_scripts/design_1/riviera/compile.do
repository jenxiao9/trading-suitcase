vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/xlconcat_v2_1_1
vlib riviera/xlslice_v1_0_1
vlib riviera/xbip_utils_v3_0_7
vlib riviera/axi_utils_v2_0_3
vlib riviera/xbip_pipe_v3_0_3
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_3
vlib riviera/xbip_dsp48_multadd_v3_0_3
vlib riviera/xbip_bram18k_v3_0_3
vlib riviera/mult_gen_v12_0_12
vlib riviera/floating_point_v7_1_4

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1
vmap xbip_utils_v3_0_7 riviera/xbip_utils_v3_0_7
vmap axi_utils_v2_0_3 riviera/axi_utils_v2_0_3
vmap xbip_pipe_v3_0_3 riviera/xbip_pipe_v3_0_3
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_3 riviera/xbip_dsp48_addsub_v3_0_3
vmap xbip_dsp48_multadd_v3_0_3 riviera/xbip_dsp48_multadd_v3_0_3
vmap xbip_bram18k_v3_0_3 riviera/xbip_bram18k_v3_0_3
vmap mult_gen_v12_0_12 riviera/mult_gen_v12_0_12
vmap floating_point_v7_1_4 riviera/floating_point_v7_1_4

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"/usr/local/xilinx/Vivado-2017.2/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/afs/ece.cmu.edu/support/xilinx/xilinx.release/Vivado-2017.2/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"../../../bd/design_1/ip/design_1_Constants_0_0/sim/design_1_Constants_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/hdl/design_1.v" \
"../../../bd/design_1/ip/design_1_BLSControllerWrapper_0_0/sim/design_1_BLSControllerWrapper_0_0.v" \
"../../../bd/design_1/ip/design_1_PacketRegisterWrapper_0_0/sim/design_1_PacketRegisterWrapper_0_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/73b7/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/ip/design_1_DataManagerWrapper_0_0/sim/design_1_DataManagerWrapper_0_0.v" \

vlog -work xlslice_v1_0_1  -v2k5 "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/bb23/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_Mux2to1Wrapper_0_0/sim/design_1_Mux2to1Wrapper_0_0.v" \

vcom -work xbip_utils_v3_0_7 -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/3d01/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_3 -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/43f5/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_3 -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_3 -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_3 -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/779d/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_3 -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/403d/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_12 -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/f0ab/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_4 -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/4a02/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDbkb.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDcud.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDdEe.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDeOg.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDfYi.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDg8j.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDhbi.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDibs.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDjbC.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDkbM.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/CNDF38_mask_table1.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/fifo_w32_d1_A.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/fifo_w32_d4_A.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/fifo_w32_d2_A.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/start_for_Block_plbW.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/start_for_Block_pmb6.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/start_for_floorf_U0.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/start_for_Block_pncg.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/start_for_p_hls_focq.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDiv_1.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/Block_proc.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/CNDF38.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/CNDF.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/Block_proc33.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/floorf.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/Block_proc34.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/p_hls_fptosi_float_i.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/Block_proc36.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/p_BlackScholesPt2_a.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/verilog/BlkSchlsEqEuroNoDiv.v" \

vcom -work xil_defaultlib -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/ip/BlkSchlsEqEuroNoDiv_ap_faddfsub_2_full_dsp_32.vhd" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/ip/BlkSchlsEqEuroNoDiv_ap_fmul_0_max_dsp_32.vhd" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/ip/BlkSchlsEqEuroNoDiv_ap_fdiv_6_no_dsp_32.vhd" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/ip/BlkSchlsEqEuroNoDiv_ap_fsqrt_5_no_dsp_32.vhd" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/ip/BlkSchlsEqEuroNoDiv_ap_flog_4_full_dsp_32.vhd" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/ip/BlkSchlsEqEuroNoDiv_ap_fptrunc_0_no_dsp_64.vhd" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/ip/BlkSchlsEqEuroNoDiv_ap_fpext_0_no_dsp_32.vhd" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/ip/BlkSchlsEqEuroNoDiv_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/ip/BlkSchlsEqEuroNoDiv_ap_dmul_3_max_dsp_64.vhd" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/0e3c/hdl/ip/BlkSchlsEqEuroNoDiv_ap_fsub_2_full_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_BlkSchlsEqEuroNoDiv_0_0/sim/design_1_BlkSchlsEqEuroNoDiv_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../project_12.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"../../../bd/design_1/ip/design_1_xlslice_1_0/sim/design_1_xlslice_1_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_2/sim/design_1_xlslice_1_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_4/sim/design_1_xlslice_1_4.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_5/sim/design_1_xlslice_1_5.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/f105/hdl/verilog/datafake_fadd_32nbkb.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/f105/hdl/verilog/datafake_sitofp_3cud.v" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/f105/hdl/verilog/datafake.v" \

vcom -work xil_defaultlib -93 \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/f105/hdl/ip/datafake_ap_fadd_2_full_dsp_32.vhd" \
"../../../../project_12.srcs/sources_1/bd/design_1/ipshared/f105/hdl/ip/datafake_ap_sitofp_1_no_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_datafake_0_1/sim/design_1_datafake_0_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

