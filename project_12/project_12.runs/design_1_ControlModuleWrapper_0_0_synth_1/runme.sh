#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/usr/local/xilinx/Vivado-2017.2/SDK/2017.2/bin:/usr/local/xilinx/Vivado-2017.2/Vivado/2017.2/ids_lite/ISE/bin/lin64:/usr/local/xilinx/Vivado-2017.2/Vivado/2017.2/bin
else
  PATH=/usr/local/xilinx/Vivado-2017.2/SDK/2017.2/bin:/usr/local/xilinx/Vivado-2017.2/Vivado/2017.2/ids_lite/ISE/bin/lin64:/usr/local/xilinx/Vivado-2017.2/Vivado/2017.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/usr/local/xilinx/Vivado-2017.2/Vivado/2017.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/usr/local/xilinx/Vivado-2017.2/Vivado/2017.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/afs/ece.cmu.edu/usr/dworpell/project_12/project_12.runs/design_1_ControlModuleWrapper_0_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log design_1_ControlModuleWrapper_0_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source design_1_ControlModuleWrapper_0_0.tcl
