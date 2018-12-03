-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Wed Nov  7 10:17:14 2018
-- Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_DataManagerWrapper_0_0/design_1_DataManagerWrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_DataManagerWrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DataManagerWrapper_0_0_Counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    F_START : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SERVE_REG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \nextState1__5\ : in STD_LOGIC;
    clock : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_DataManagerWrapper_0_0_Counter : entity is "Counter";
end design_1_DataManagerWrapper_0_0_Counter;

architecture STRUCTURE of design_1_DataManagerWrapper_0_0_Counter is
  signal \count00_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \count00_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \count00_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \count00_carry__0_n_2\ : STD_LOGIC;
  signal \count00_carry__0_n_3\ : STD_LOGIC;
  signal \count00_carry__0_n_5\ : STD_LOGIC;
  signal \count00_carry__0_n_6\ : STD_LOGIC;
  signal \count00_carry__0_n_7\ : STD_LOGIC;
  signal \count00_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \count00_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \count00_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \count00_carry_i_4__0_n_0\ : STD_LOGIC;
  signal count00_carry_i_5_n_0 : STD_LOGIC;
  signal count00_carry_n_0 : STD_LOGIC;
  signal count00_carry_n_1 : STD_LOGIC;
  signal count00_carry_n_2 : STD_LOGIC;
  signal count00_carry_n_3 : STD_LOGIC;
  signal count00_carry_n_4 : STD_LOGIC;
  signal count00_carry_n_5 : STD_LOGIC;
  signal count00_carry_n_6 : STD_LOGIC;
  signal count00_carry_n_7 : STD_LOGIC;
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_count00_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count00_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of F_START_INST_0 : label is "soft_lutpair5";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of count00_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count00_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \currentState[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \currentState[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of regEn_INST_0 : label is "soft_lutpair5";
begin
F_START_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => CO(0),
      O => F_START
    );
count00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count00_carry_n_0,
      CO(2) => count00_carry_n_1,
      CO(1) => count00_carry_n_2,
      CO(0) => count00_carry_n_3,
      CYINIT => \count_reg__0\(0),
      DI(3 downto 1) => \count_reg__0\(3 downto 1),
      DI(0) => \count00_carry_i_1__0_n_0\,
      O(3) => count00_carry_n_4,
      O(2) => count00_carry_n_5,
      O(1) => count00_carry_n_6,
      O(0) => count00_carry_n_7,
      S(3) => \count00_carry_i_2__0_n_0\,
      S(2) => \count00_carry_i_3__0_n_0\,
      S(1) => \count00_carry_i_4__0_n_0\,
      S(0) => count00_carry_i_5_n_0
    );
\count00_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count00_carry_n_0,
      CO(3 downto 2) => \NLW_count00_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count00_carry__0_n_2\,
      CO(0) => \count00_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \count_reg__0\(5 downto 4),
      O(3) => \NLW_count00_carry__0_O_UNCONNECTED\(3),
      O(2) => \count00_carry__0_n_5\,
      O(1) => \count00_carry__0_n_6\,
      O(0) => \count00_carry__0_n_7\,
      S(3) => '0',
      S(2) => \count00_carry__0_i_1__0_n_0\,
      S(1) => \count00_carry__0_i_2__0_n_0\,
      S(0) => \count00_carry__0_i_3__0_n_0\
    );
\count00_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_reg__0\(6),
      I1 => \count_reg__0\(7),
      O => \count00_carry__0_i_1__0_n_0\
    );
\count00_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_reg__0\(5),
      I1 => \count_reg__0\(6),
      O => \count00_carry__0_i_2__0_n_0\
    );
\count00_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_reg__0\(4),
      I1 => \count_reg__0\(5),
      O => \count00_carry__0_i_3__0_n_0\
    );
\count00_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(1),
      O => \count00_carry_i_1__0_n_0\
    );
\count00_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(4),
      O => \count00_carry_i_2__0_n_0\
    );
\count00_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(3),
      O => \count00_carry_i_3__0_n_0\
    );
\count00_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(2),
      O => \count00_carry_i_4__0_n_0\
    );
count00_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9595AA95"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => SERVE_REG,
      I2 => Q(0),
      I3 => Q(1),
      I4 => CO(0),
      O => count00_carry_i_5_n_0
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => CO(0),
      I2 => Q(1),
      O => \count[0]_i_1__0_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => count00_carry_n_7,
      I1 => CO(0),
      I2 => Q(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => count00_carry_n_6,
      I1 => CO(0),
      I2 => Q(1),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => count00_carry_n_5,
      I1 => CO(0),
      I2 => Q(1),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => count00_carry_n_4,
      I1 => CO(0),
      I2 => Q(1),
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \count00_carry__0_n_7\,
      I1 => CO(0),
      I2 => Q(1),
      O => \count[5]_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \count00_carry__0_n_6\,
      I1 => CO(0),
      I2 => Q(1),
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => SERVE_REG,
      I1 => Q(0),
      I2 => Q(1),
      O => \count[7]_i_1_n_0\
    );
\count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \count00_carry__0_n_5\,
      I1 => CO(0),
      I2 => Q(1),
      O => \count[7]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count[0]_i_1__0_n_0\,
      Q => \count_reg__0\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg__0\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg__0\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count[3]_i_1_n_0\,
      Q => \count_reg__0\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count[4]_i_1_n_0\,
      Q => \count_reg__0\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count[5]_i_1_n_0\,
      Q => \count_reg__0\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count[6]_i_1_n_0\,
      Q => \count_reg__0\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count[7]_i_2_n_0\,
      Q => \count_reg__0\(7)
    );
\currentState[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => Q(1),
      I1 => CO(0),
      I2 => \nextState1__5\,
      I3 => SERVE_REG,
      I4 => Q(0),
      O => D(0)
    );
\currentState[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444F444"
    )
        port map (
      I0 => CO(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => SERVE_REG,
      I4 => \nextState1__5\,
      O => D(1)
    );
incRuns0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \count_reg__0\(6),
      I1 => SW(6),
      I2 => SW(7),
      I3 => \count_reg__0\(7),
      O => DI(3)
    );
incRuns0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \count_reg__0\(4),
      I1 => SW(4),
      I2 => SW(5),
      I3 => \count_reg__0\(5),
      O => DI(2)
    );
incRuns0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => SW(2),
      I2 => SW(3),
      I3 => \count_reg__0\(3),
      O => DI(1)
    );
incRuns0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => SW(0),
      I2 => SW(1),
      I3 => \count_reg__0\(1),
      O => DI(0)
    );
incRuns0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \count_reg__0\(6),
      I1 => SW(6),
      I2 => \count_reg__0\(7),
      I3 => SW(7),
      O => S(3)
    );
incRuns0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \count_reg__0\(4),
      I1 => SW(4),
      I2 => \count_reg__0\(5),
      I3 => SW(5),
      O => S(2)
    );
incRuns0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => SW(2),
      I2 => \count_reg__0\(3),
      I3 => SW(3),
      O => S(1)
    );
incRuns0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => SW(0),
      I2 => \count_reg__0\(1),
      I3 => SW(1),
      O => S(0)
    );
regEn_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => CO(0),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DataManagerWrapper_0_0_Counter_0 is
  port (
    inc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OutOfData : out STD_LOGIC;
    \nextState1__5\ : out STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_DataManagerWrapper_0_0_Counter_0 : entity is "Counter";
end design_1_DataManagerWrapper_0_0_Counter_0;

architecture STRUCTURE of design_1_DataManagerWrapper_0_0_Counter_0 is
  signal OutOfData_INST_0_i_2_n_0 : STD_LOGIC;
  signal \count00_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count00_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count00_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count00_carry__0_n_2\ : STD_LOGIC;
  signal \count00_carry__0_n_3\ : STD_LOGIC;
  signal \count00_carry__0_n_5\ : STD_LOGIC;
  signal \count00_carry__0_n_6\ : STD_LOGIC;
  signal \count00_carry__0_n_7\ : STD_LOGIC;
  signal count00_carry_i_1_n_0 : STD_LOGIC;
  signal count00_carry_i_2_n_0 : STD_LOGIC;
  signal count00_carry_i_3_n_0 : STD_LOGIC;
  signal count00_carry_i_4_n_0 : STD_LOGIC;
  signal \count00_carry_i_5__0_n_0\ : STD_LOGIC;
  signal count00_carry_n_0 : STD_LOGIC;
  signal count00_carry_n_1 : STD_LOGIC;
  signal count00_carry_n_2 : STD_LOGIC;
  signal count00_carry_n_3 : STD_LOGIC;
  signal count00_carry_n_4 : STD_LOGIC;
  signal count00_carry_n_5 : STD_LOGIC;
  signal count00_carry_n_6 : STD_LOGIC;
  signal count00_carry_n_7 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \^inc\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^nextstate1__5\ : STD_LOGIC;
  signal \NLW_count00_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count00_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of count00_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count00_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  inc(7 downto 0) <= \^inc\(7 downto 0);
  \nextState1__5\ <= \^nextstate1__5\;
OutOfData_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => Q(0),
      I1 => \^nextstate1__5\,
      I2 => Q(1),
      O => OutOfData
    );
OutOfData_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => OutOfData_INST_0_i_2_n_0,
      I1 => \^inc\(6),
      I2 => \^inc\(5),
      I3 => \^inc\(7),
      O => \^nextstate1__5\
    );
OutOfData_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0015"
    )
        port map (
      I0 => \^inc\(3),
      I1 => \^inc\(2),
      I2 => \^inc\(1),
      I3 => \^inc\(4),
      O => OutOfData_INST_0_i_2_n_0
    );
count00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count00_carry_n_0,
      CO(2) => count00_carry_n_1,
      CO(1) => count00_carry_n_2,
      CO(0) => count00_carry_n_3,
      CYINIT => \^inc\(0),
      DI(3 downto 1) => \^inc\(3 downto 1),
      DI(0) => count00_carry_i_1_n_0,
      O(3) => count00_carry_n_4,
      O(2) => count00_carry_n_5,
      O(1) => count00_carry_n_6,
      O(0) => count00_carry_n_7,
      S(3) => count00_carry_i_2_n_0,
      S(2) => count00_carry_i_3_n_0,
      S(1) => count00_carry_i_4_n_0,
      S(0) => \count00_carry_i_5__0_n_0\
    );
\count00_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count00_carry_n_0,
      CO(3 downto 2) => \NLW_count00_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count00_carry__0_n_2\,
      CO(0) => \count00_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^inc\(5 downto 4),
      O(3) => \NLW_count00_carry__0_O_UNCONNECTED\(3),
      O(2) => \count00_carry__0_n_5\,
      O(1) => \count00_carry__0_n_6\,
      O(0) => \count00_carry__0_n_7\,
      S(3) => '0',
      S(2) => \count00_carry__0_i_1_n_0\,
      S(1) => \count00_carry__0_i_2_n_0\,
      S(0) => \count00_carry__0_i_3_n_0\
    );
\count00_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inc\(6),
      I1 => \^inc\(7),
      O => \count00_carry__0_i_1_n_0\
    );
\count00_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inc\(5),
      I1 => \^inc\(6),
      O => \count00_carry__0_i_2_n_0\
    );
\count00_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inc\(4),
      I1 => \^inc\(5),
      O => \count00_carry__0_i_3_n_0\
    );
count00_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^inc\(1),
      O => count00_carry_i_1_n_0
    );
count00_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inc\(3),
      I1 => \^inc\(4),
      O => count00_carry_i_2_n_0
    );
count00_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inc\(2),
      I1 => \^inc\(3),
      O => count00_carry_i_3_n_0
    );
count00_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inc\(1),
      I1 => \^inc\(2),
      O => count00_carry_i_4_n_0
    );
\count00_carry_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \^inc\(1),
      I1 => CO(0),
      I2 => Q(1),
      O => \count00_carry_i_5__0_n_0\
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^inc\(0),
      O => \count[0]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => E(0),
      CLR => reset,
      D => \count[0]_i_1_n_0\,
      Q => \^inc\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => E(0),
      CLR => reset,
      D => count00_carry_n_7,
      Q => \^inc\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => E(0),
      CLR => reset,
      D => count00_carry_n_6,
      Q => \^inc\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => E(0),
      CLR => reset,
      D => count00_carry_n_5,
      Q => \^inc\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => E(0),
      CLR => reset,
      D => count00_carry_n_4,
      Q => \^inc\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => E(0),
      CLR => reset,
      D => \count00_carry__0_n_7\,
      Q => \^inc\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => E(0),
      CLR => reset,
      D => \count00_carry__0_n_6\,
      Q => \^inc\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => E(0),
      CLR => reset,
      D => \count00_carry__0_n_5\,
      Q => \^inc\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DataManagerWrapper_0_0_DataManager is
  port (
    inc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    F_START : out STD_LOGIC;
    OutOfData : out STD_LOGIC;
    SERVE_REG : in STD_LOGIC;
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_DataManagerWrapper_0_0_DataManager : entity is "DataManager";
end design_1_DataManagerWrapper_0_0_DataManager;

architecture STRUCTURE of design_1_DataManagerWrapper_0_0_DataManager is
  signal DelayCount_n_10 : STD_LOGIC;
  signal DelayCount_n_11 : STD_LOGIC;
  signal DelayCount_n_2 : STD_LOGIC;
  signal DelayCount_n_3 : STD_LOGIC;
  signal DelayCount_n_4 : STD_LOGIC;
  signal DelayCount_n_5 : STD_LOGIC;
  signal DelayCount_n_6 : STD_LOGIC;
  signal DelayCount_n_7 : STD_LOGIC;
  signal DelayCount_n_8 : STD_LOGIC;
  signal DelayCount_n_9 : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal currentState : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal incRuns0_carry_n_1 : STD_LOGIC;
  signal incRuns0_carry_n_2 : STD_LOGIC;
  signal incRuns0_carry_n_3 : STD_LOGIC;
  signal \nextState1__5\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal NLW_incRuns0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of incRuns0_carry : label is "{SYNTH-8 {cell *THIS*}}";
begin
  E(0) <= \^e\(0);
DelayCount: entity work.design_1_DataManagerWrapper_0_0_Counter
     port map (
      CO(0) => p_0_in,
      D(1) => DelayCount_n_10,
      D(0) => DelayCount_n_11,
      DI(3) => DelayCount_n_6,
      DI(2) => DelayCount_n_7,
      DI(1) => DelayCount_n_8,
      DI(0) => DelayCount_n_9,
      E(0) => \^e\(0),
      F_START => F_START,
      Q(1 downto 0) => currentState(1 downto 0),
      S(3) => DelayCount_n_2,
      S(2) => DelayCount_n_3,
      S(1) => DelayCount_n_4,
      S(0) => DelayCount_n_5,
      SERVE_REG => SERVE_REG,
      SW(7 downto 0) => SW(7 downto 0),
      clock => clock,
      \nextState1__5\ => \nextState1__5\,
      reset => reset
    );
OptionsRun: entity work.design_1_DataManagerWrapper_0_0_Counter_0
     port map (
      CO(0) => p_0_in,
      E(0) => \^e\(0),
      OutOfData => OutOfData,
      Q(1 downto 0) => currentState(1 downto 0),
      clock => clock,
      inc(7 downto 0) => inc(7 downto 0),
      \nextState1__5\ => \nextState1__5\,
      reset => reset
    );
\currentState_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clock,
      CE => '1',
      D => DelayCount_n_11,
      PRE => reset,
      Q => currentState(0)
    );
\currentState_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => DelayCount_n_10,
      Q => currentState(1)
    );
incRuns0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_in,
      CO(2) => incRuns0_carry_n_1,
      CO(1) => incRuns0_carry_n_2,
      CO(0) => incRuns0_carry_n_3,
      CYINIT => '0',
      DI(3) => DelayCount_n_6,
      DI(2) => DelayCount_n_7,
      DI(1) => DelayCount_n_8,
      DI(0) => DelayCount_n_9,
      O(3 downto 0) => NLW_incRuns0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => DelayCount_n_2,
      S(2) => DelayCount_n_3,
      S(1) => DelayCount_n_4,
      S(0) => DelayCount_n_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DataManagerWrapper_0_0_DataManagerWrapper is
  port (
    inc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    F_START : out STD_LOGIC;
    OutOfData : out STD_LOGIC;
    SERVE_REG : in STD_LOGIC;
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_DataManagerWrapper_0_0_DataManagerWrapper : entity is "DataManagerWrapper";
end design_1_DataManagerWrapper_0_0_DataManagerWrapper;

architecture STRUCTURE of design_1_DataManagerWrapper_0_0_DataManagerWrapper is
begin
nolabel_line33: entity work.design_1_DataManagerWrapper_0_0_DataManager
     port map (
      E(0) => E(0),
      F_START => F_START,
      OutOfData => OutOfData,
      SERVE_REG => SERVE_REG,
      SW(7 downto 0) => SW(7 downto 0),
      clock => clock,
      inc(7 downto 0) => inc(7 downto 0),
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DataManagerWrapper_0_0 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    SERVE_REG : in STD_LOGIC;
    F_READY : in STD_LOGIC;
    F_IDLE : in STD_LOGIC;
    F_DONE : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OutOfData : out STD_LOGIC;
    regEn : out STD_LOGIC;
    F_START : out STD_LOGIC;
    inc : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_DataManagerWrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_DataManagerWrapper_0_0 : entity is "design_1_DataManagerWrapper_0_0,DataManagerWrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_DataManagerWrapper_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_DataManagerWrapper_0_0 : entity is "DataManagerWrapper,Vivado 2017.2";
end design_1_DataManagerWrapper_0_0;

architecture STRUCTURE of design_1_DataManagerWrapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^inc\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  inc(31) <= \<const0>\;
  inc(30) <= \<const0>\;
  inc(29) <= \<const0>\;
  inc(28) <= \<const0>\;
  inc(27) <= \<const0>\;
  inc(26) <= \<const0>\;
  inc(25) <= \<const0>\;
  inc(24) <= \<const0>\;
  inc(23) <= \<const0>\;
  inc(22) <= \<const0>\;
  inc(21) <= \<const0>\;
  inc(20) <= \<const0>\;
  inc(19) <= \<const0>\;
  inc(18) <= \<const0>\;
  inc(17) <= \<const0>\;
  inc(16) <= \<const0>\;
  inc(15) <= \<const0>\;
  inc(14) <= \<const0>\;
  inc(13) <= \<const0>\;
  inc(12) <= \<const0>\;
  inc(11) <= \<const0>\;
  inc(10) <= \<const0>\;
  inc(9) <= \<const0>\;
  inc(8) <= \<const0>\;
  inc(7 downto 0) <= \^inc\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_DataManagerWrapper_0_0_DataManagerWrapper
     port map (
      E(0) => regEn,
      F_START => F_START,
      OutOfData => OutOfData,
      SERVE_REG => SERVE_REG,
      SW(7 downto 0) => SW(7 downto 0),
      clock => clock,
      inc(7 downto 0) => \^inc\(7 downto 0),
      reset => reset
    );
end STRUCTURE;
