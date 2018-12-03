-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sat Nov  3 23:48:11 2018
-- Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_xlconcat_0_0/design_1_xlconcat_0_0_sim_netlist.vhdl
-- Design      : design_1_xlconcat_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 223 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_xlconcat_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_xlconcat_0_0 : entity is "design_1_xlconcat_0_0,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xlconcat_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_xlconcat_0_0 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2017.2";
end design_1_xlconcat_0_0;

architecture STRUCTURE of design_1_xlconcat_0_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^in2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^in3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^in4\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^in5\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^in6\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^in0\(31 downto 0) <= In0(31 downto 0);
  \^in1\(31 downto 0) <= In1(31 downto 0);
  \^in2\(31 downto 0) <= In2(31 downto 0);
  \^in3\(31 downto 0) <= In3(31 downto 0);
  \^in4\(31 downto 0) <= In4(31 downto 0);
  \^in5\(31 downto 0) <= In5(31 downto 0);
  \^in6\(31 downto 0) <= In6(31 downto 0);
  dout(223 downto 192) <= \^in6\(31 downto 0);
  dout(191 downto 160) <= \^in5\(31 downto 0);
  dout(159 downto 128) <= \^in4\(31 downto 0);
  dout(127 downto 96) <= \^in3\(31 downto 0);
  dout(95 downto 64) <= \^in2\(31 downto 0);
  dout(63 downto 32) <= \^in1\(31 downto 0);
  dout(31 downto 0) <= \^in0\(31 downto 0);
end STRUCTURE;
