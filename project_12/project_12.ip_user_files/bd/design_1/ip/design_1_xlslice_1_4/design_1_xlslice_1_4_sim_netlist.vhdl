-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Wed Nov  7 10:17:50 2018
-- Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_xlslice_1_4/design_1_xlslice_1_4_sim_netlist.vhdl
-- Design      : design_1_xlslice_1_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xlslice_1_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 127 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_xlslice_1_4 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_xlslice_1_4 : entity is "design_1_xlslice_1_4,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xlslice_1_4 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_xlslice_1_4 : entity is "xlslice_v1_0_1_xlslice,Vivado 2017.2";
end design_1_xlslice_1_4;

architecture STRUCTURE of design_1_xlslice_1_4 is
  signal \^din\ : STD_LOGIC_VECTOR ( 127 downto 0 );
begin
  Dout(31 downto 0) <= \^din\(63 downto 32);
  \^din\(63 downto 32) <= Din(63 downto 32);
end STRUCTURE;
