
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# BLSControllerWrapper, ControlModuleWrapper, DataManagerWrapper, PacketRegisterWrapper, UARTTOMEMWrapper, Mux2to1Wrapper

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1761-2
   set_property BOARD_PART xilinx.com:vc707:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set GPIO_SW_E [ create_bd_port -dir I -type rst GPIO_SW_E ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $GPIO_SW_E
  set GPIO_SW_N [ create_bd_port -dir I GPIO_SW_N ]
  set GPIO_SW_S [ create_bd_port -dir I GPIO_SW_S ]
  set RX [ create_bd_port -dir I RX ]
  set SW [ create_bd_port -dir I -from 7 -to 0 SW ]
  set SYSCLK_N [ create_bd_port -dir I -type clk SYSCLK_N ]
  set SYSCLK_P [ create_bd_port -dir I -type clk SYSCLK_P ]

  # Create instance: BLSControllerWrapper_0, and set properties
  set block_name BLSControllerWrapper
  set block_cell_name BLSControllerWrapper_0
  if { [catch {set BLSControllerWrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $BLSControllerWrapper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: BlkSchlsEqEuroNoDiv_0, and set properties
  set BlkSchlsEqEuroNoDiv_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:BlkSchlsEqEuroNoDiv:1.0 BlkSchlsEqEuroNoDiv_0 ]

  # Create instance: ControlModuleWrapper_0, and set properties
  set block_name ControlModuleWrapper
  set block_cell_name ControlModuleWrapper_0
  if { [catch {set ControlModuleWrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ControlModuleWrapper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: DataManagerWrapper_0, and set properties
  set block_name DataManagerWrapper
  set block_cell_name DataManagerWrapper_0
  if { [catch {set DataManagerWrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DataManagerWrapper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PacketRegisterWrapper_0, and set properties
  set block_name PacketRegisterWrapper
  set block_cell_name PacketRegisterWrapper_0
  if { [catch {set PacketRegisterWrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PacketRegisterWrapper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: UARTTOMEMWrapper_0, and set properties
  set block_name UARTTOMEMWrapper
  set block_cell_name UARTTOMEMWrapper_0
  if { [catch {set UARTTOMEMWrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $UARTTOMEMWrapper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: addrA_Sel_0, and set properties
  set block_name Mux2to1Wrapper
  set block_cell_name addrA_Sel_0
  if { [catch {set addrA_Sel_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $addrA_Sel_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
CONFIG.WIDTH {32} \
 ] $addrA_Sel_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Assume_Synchronous_Clk {true} \
CONFIG.Enable_B {Use_ENB_Pin} \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {50} \
CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_1 ]
  set_property -dict [ list \
CONFIG.Assume_Synchronous_Clk {true} \
CONFIG.Enable_B {Use_ENB_Pin} \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {50} \
CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_1

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {50.0} \
CONFIG.CLKOUT1_JITTER {112.316} \
CONFIG.CLKOUT1_PHASE_ERROR {89.971} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
CONFIG.CLK_IN1_BOARD_INTERFACE {sys_diff_clock} \
CONFIG.MMCM_CLKFBOUT_MULT_F {5.000} \
CONFIG.MMCM_CLKIN1_PERIOD {5.000} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
CONFIG.RESET_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {7} \
CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_0

  # Create port connections
  connect_bd_net -net BLSControllerWrapper_0_BS_START [get_bd_pins BLSControllerWrapper_0/BS_START] [get_bd_pins BlkSchlsEqEuroNoDiv_0/ap_start]
  connect_bd_net -net BLSControllerWrapper_0_SERVE_REG [get_bd_pins BLSControllerWrapper_0/SERVE_REG] [get_bd_pins DataManagerWrapper_0/SERVE_REG]
  connect_bd_net -net BlkSchlsEqEuroNoDiv_0_ap_done [get_bd_pins BLSControllerWrapper_0/BS_DONE] [get_bd_pins BlkSchlsEqEuroNoDiv_0/ap_done]
  connect_bd_net -net BlkSchlsEqEuroNoDiv_0_ap_idle [get_bd_pins BLSControllerWrapper_0/BS_IDLE] [get_bd_pins BlkSchlsEqEuroNoDiv_0/ap_idle]
  connect_bd_net -net BlkSchlsEqEuroNoDiv_0_ap_ready [get_bd_pins BLSControllerWrapper_0/BS_READY] [get_bd_pins BlkSchlsEqEuroNoDiv_0/ap_ready] [get_bd_pins PacketRegisterWrapper_0/BS_READY]
  connect_bd_net -net BlkSchlsEqEuroNoDiv_0_ap_return [get_bd_pins BlkSchlsEqEuroNoDiv_0/ap_return] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net ControlModuleWrapper_0_UART_DATA [get_bd_pins ControlModuleWrapper_0/UART_DATA] [get_bd_pins UARTTOMEMWrapper_0/UART_DATA]
  connect_bd_net -net ControlModuleWrapper_0_done [get_bd_pins ControlModuleWrapper_0/done] [get_bd_pins UARTTOMEMWrapper_0/UART_DONE]
  connect_bd_net -net DataManagerWrapper_0_OutOfData [get_bd_pins BLSControllerWrapper_0/OutOfData] [get_bd_pins DataManagerWrapper_0/OutOfData]
  connect_bd_net -net DataManagerWrapper_0_regEn [get_bd_pins DataManagerWrapper_0/regEn] [get_bd_pins PacketRegisterWrapper_0/en]
  connect_bd_net -net GPIO_SW_S_1 [get_bd_ports GPIO_SW_S] [get_bd_pins BLSControllerWrapper_0/startSystem]
  connect_bd_net -net Mux2to1Wrapper_0_Q [get_bd_pins addrA_Sel_0/Q] [get_bd_pins blk_mem_gen_1/addra]
  connect_bd_net -net PacketRegisterWrapper_0_hasUnusedData [get_bd_pins BLSControllerWrapper_0/hasUnusedData] [get_bd_pins PacketRegisterWrapper_0/hasUnusedData]
  connect_bd_net -net PacketRegisterWrapper_0_otype [get_bd_pins BlkSchlsEqEuroNoDiv_0/otype] [get_bd_pins PacketRegisterWrapper_0/otype]
  connect_bd_net -net PacketRegisterWrapper_0_rate [get_bd_pins BlkSchlsEqEuroNoDiv_0/rate] [get_bd_pins PacketRegisterWrapper_0/rate]
  connect_bd_net -net PacketRegisterWrapper_0_sptprice [get_bd_pins BlkSchlsEqEuroNoDiv_0/sptprice] [get_bd_pins PacketRegisterWrapper_0/sptprice]
  connect_bd_net -net PacketRegisterWrapper_0_strike [get_bd_pins BlkSchlsEqEuroNoDiv_0/strike] [get_bd_pins PacketRegisterWrapper_0/strike]
  connect_bd_net -net PacketRegisterWrapper_0_time_r [get_bd_pins BlkSchlsEqEuroNoDiv_0/time_r] [get_bd_pins PacketRegisterWrapper_0/time_r]
  connect_bd_net -net PacketRegisterWrapper_0_timet [get_bd_pins BlkSchlsEqEuroNoDiv_0/timet]
  connect_bd_net -net PacketRegisterWrapper_0_volatility [get_bd_pins BlkSchlsEqEuroNoDiv_0/volatility] [get_bd_pins PacketRegisterWrapper_0/volatility]
  connect_bd_net -net RX_1 [get_bd_ports RX] [get_bd_pins ControlModuleWrapper_0/RX]
  connect_bd_net -net SW_1 [get_bd_ports SW] [get_bd_pins DataManagerWrapper_0/SW]
  connect_bd_net -net UARTTOMEMWrapper_0_dataToA [get_bd_pins UARTTOMEMWrapper_0/dataToA] [get_bd_pins addrA_Sel_0/d1]
  connect_bd_net -net clk_in1_n_1 [get_bd_ports SYSCLK_N] [get_bd_pins clk_wiz_0/clk_in1_n]
  connect_bd_net -net clk_in1_p_1 [get_bd_ports SYSCLK_P] [get_bd_pins clk_wiz_0/clk_in1_p]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins BLSControllerWrapper_0/clock] [get_bd_pins BlkSchlsEqEuroNoDiv_0/ap_clk] [get_bd_pins ControlModuleWrapper_0/clock] [get_bd_pins DataManagerWrapper_0/clock] [get_bd_pins PacketRegisterWrapper_0/clock] [get_bd_pins UARTTOMEMWrapper_0/clock] [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net reset_rtl_1 [get_bd_ports GPIO_SW_E] [get_bd_pins BLSControllerWrapper_0/reset] [get_bd_pins BlkSchlsEqEuroNoDiv_0/ap_rst] [get_bd_pins ControlModuleWrapper_0/reset] [get_bd_pins DataManagerWrapper_0/reset] [get_bd_pins PacketRegisterWrapper_0/reset] [get_bd_pins UARTTOMEMWrapper_0/reset] [get_bd_pins clk_wiz_0/reset]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


