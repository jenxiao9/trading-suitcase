#LED
set_property PACKAGE_PIN AM39 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[0]}]
set_property PACKAGE_PIN AN39 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[1]}]
set_property PACKAGE_PIN AR37 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[2]}]
set_property PACKAGE_PIN AT37 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[3]}]
set_property PACKAGE_PIN AR35 [get_ports {LED[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[4]}]
set_property PACKAGE_PIN AP41 [get_ports {LED[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[5]}]
set_property PACKAGE_PIN AP42 [get_ports {LED[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[6]}]
set_property PACKAGE_PIN AU39 [get_ports {LED[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[7]}]
#SWITCHES

#PUSH BUTTONS
set_property PACKAGE_PIN AV40 [get_ports CPU_RESET]
set_property IOSTANDARD LVCMOS18 [get_ports CPU_RESET]
set_property PACKAGE_PIN AP40 [get_ports GPIO_SW_S]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_S]
set_property PACKAGE_PIN AR40 [get_ports GPIO_SW_N]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_N]
set_property PACKAGE_PIN AV39 [get_ports GPIO_SW_C]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_C]
set_property PACKAGE_PIN AU38 [get_ports GPIO_SW_E]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_E]
set_property PACKAGE_PIN AW40 [get_ports GPIO_SW_W]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_SW_W]

#USR CLOCKS
set_property IOSTANDARD LVDS [get_ports SYSCLK_P]
set_property PACKAGE_PIN E19 [get_ports SYSCLK_P]
set_property PACKAGE_PIN E18 [get_ports SYSCLK_N]
set_property IOSTANDARD LVDS [get_ports SYSCLK_N]

#UART
set_property PACKAGE_PIN AU36 [get_ports TX]
set_property IOSTANDARD LVCMOS18 [get_ports TX]
set_property PACKAGE_PIN AU33 [get_ports RX]
set_property IOSTANDARD LVCMOS18 [get_ports RX]
set_property PACKAGE_PIN AT32 [get_ports RTS]
set_property IOSTANDARD LVCMOS18 [get_ports RTS]
set_property PACKAGE_PIN AR34 [get_ports CTS]
set_property IOSTANDARD LVCMOS18 [get_ports CTS]





connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/sreg0[0]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/sreg0[1]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/sreg0[2]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/sreg0[3]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/sreg0[4]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/sreg0[5]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/sreg0[6]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/sreg0[7]}]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/clk_wiz_0/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 12 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[0]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[3]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[4]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[5]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[6]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[7]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[8]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[9]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[10]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[11]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[12]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/BIT_COUNTER/count_reg[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 3 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/state[0]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/state[1]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/state[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/LED[0]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/LED[1]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/LED[2]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/LED[3]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/LED[4]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/LED[5]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/LED[6]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/LED[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 14 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[0]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[1]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[2]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[3]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[4]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[5]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[6]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[7]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[8]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[9]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[10]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[11]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[12]} {design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/SAMPLE_CLK_COUNTER/clk_counter[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list design_1_i/ControlModuleWrapper_0/inst/nolabel_line31/clear_sreg]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out1]
