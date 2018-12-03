-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Mon Nov  5 10:34:19 2018
-- Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_Mux2to1Wrapper_0_0/design_1_Mux2to1Wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_Mux2to1Wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Mux2to1Wrapper_0_0_Mux2to1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Mux2to1Wrapper_0_0_Mux2to1 : entity is "Mux2to1";
end design_1_Mux2to1Wrapper_0_0_Mux2to1;

architecture STRUCTURE of design_1_Mux2to1Wrapper_0_0_Mux2to1 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q[7]_INST_0\ : label is "soft_lutpair3";
begin
\Q[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(0),
      I1 => d2(0),
      I2 => sel,
      O => Q(0)
    );
\Q[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(1),
      I1 => d2(1),
      I2 => sel,
      O => Q(1)
    );
\Q[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(2),
      I1 => d2(2),
      I2 => sel,
      O => Q(2)
    );
\Q[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(3),
      I1 => d2(3),
      I2 => sel,
      O => Q(3)
    );
\Q[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(4),
      I1 => d2(4),
      I2 => sel,
      O => Q(4)
    );
\Q[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(5),
      I1 => d2(5),
      I2 => sel,
      O => Q(5)
    );
\Q[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(6),
      I1 => d2(6),
      I2 => sel,
      O => Q(6)
    );
\Q[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => d1(7),
      I1 => d2(7),
      I2 => sel,
      O => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Mux2to1Wrapper_0_0_Mux2to1Wrapper is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    d1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Mux2to1Wrapper_0_0_Mux2to1Wrapper : entity is "Mux2to1Wrapper";
end design_1_Mux2to1Wrapper_0_0_Mux2to1Wrapper;

architecture STRUCTURE of design_1_Mux2to1Wrapper_0_0_Mux2to1Wrapper is
begin
nolabel_line29: entity work.design_1_Mux2to1Wrapper_0_0_Mux2to1
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      d1(7 downto 0) => d1(7 downto 0),
      d2(7 downto 0) => d2(7 downto 0),
      sel => sel
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Mux2to1Wrapper_0_0 is
  port (
    d1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Mux2to1Wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Mux2to1Wrapper_0_0 : entity is "design_1_Mux2to1Wrapper_0_0,Mux2to1Wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Mux2to1Wrapper_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Mux2to1Wrapper_0_0 : entity is "Mux2to1Wrapper,Vivado 2017.2";
end design_1_Mux2to1Wrapper_0_0;

architecture STRUCTURE of design_1_Mux2to1Wrapper_0_0 is
begin
inst: entity work.design_1_Mux2to1Wrapper_0_0_Mux2to1Wrapper
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      d1(7 downto 0) => d1(7 downto 0),
      d2(7 downto 0) => d2(7 downto 0),
      sel => sel
    );
end STRUCTURE;
