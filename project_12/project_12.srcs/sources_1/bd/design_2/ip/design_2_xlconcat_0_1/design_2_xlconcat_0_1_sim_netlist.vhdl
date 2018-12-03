-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sat Oct 27 22:06:36 2018
-- Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_2/ip/design_2_xlconcat_0_1/design_2_xlconcat_0_1_sim_netlist.vhdl
-- Design      : design_2_xlconcat_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_2_xlconcat_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_2_xlconcat_0_1 : entity is "design_2_xlconcat_0_1,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_2_xlconcat_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_2_xlconcat_0_1 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2017.2";
end design_2_xlconcat_0_1;

architecture STRUCTURE of design_2_xlconcat_0_1 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(6 downto 0) <= In0(6 downto 0);
  \^in1\(0) <= In1(0);
  dout(7) <= \^in1\(0);
  dout(6 downto 0) <= \^in0\(6 downto 0);
end STRUCTURE;
