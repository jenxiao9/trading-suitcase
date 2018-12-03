-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sun Dec  2 21:53:15 2018
-- Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.6 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_ControlModuleWrapper_0_0/design_1_ControlModuleWrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_ControlModuleWrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ControlModuleWrapper_0_0_counters is
  port (
    \sreg_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sreg_reg[0]_0\ : out STD_LOGIC;
    \sreg_reg[0]_1\ : out STD_LOGIC;
    \sreg_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : in STD_LOGIC;
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \nextState__0\ : in STD_LOGIC;
    RX : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ControlModuleWrapper_0_0_counters : entity is "counters";
end design_1_ControlModuleWrapper_0_0_counters;

architecture STRUCTURE of design_1_ControlModuleWrapper_0_0_counters is
  signal \count[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_5__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \sreg[7]_i_6_n_0\ : STD_LOGIC;
  signal \sreg[7]_i_7_n_0\ : STD_LOGIC;
  signal \^sreg_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sreg_reg[0]_1\ : STD_LOGIC;
  signal \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sreg[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sreg[7]_i_3\ : label is "soft_lutpair0";
begin
  \sreg_reg[0]\(1 downto 0) <= \^sreg_reg[0]\(1 downto 0);
  \sreg_reg[0]_1\ <= \^sreg_reg[0]_1\;
\count[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => \out\(1),
      O => \count[0]_i_3__0_n_0\
    );
\count[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(3),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[0]_i_4__0_n_0\
    );
\count[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => \^sreg_reg[0]\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[0]_i_5__0_n_0\
    );
\count[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => \^sreg_reg[0]\(0),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[0]_i_6__0_n_0\
    );
\count[0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => count_reg(0),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[0]_i_7__0_n_0\
    );
\count[12]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(13),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[12]_i_2__0_n_0\
    );
\count[12]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(12),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[12]_i_3__0_n_0\
    );
\count[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(7),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[4]_i_2__0_n_0\
    );
\count[4]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(6),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[4]_i_3__0_n_0\
    );
\count[4]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(5),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[4]_i_4__0_n_0\
    );
\count[4]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(4),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[4]_i_5__0_n_0\
    );
\count[8]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(11),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[8]_i_2__0_n_0\
    );
\count[8]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(10),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[8]_i_3__0_n_0\
    );
\count[8]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(9),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[8]_i_4__0_n_0\
    );
\count[8]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
        port map (
      I0 => count_reg(8),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => \count[8]_i_5__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[0]_i_2__0_n_7\,
      Q => count_reg(0)
    );
\count_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2__0_n_0\,
      CO(2) => \count_reg[0]_i_2__0_n_1\,
      CO(1) => \count_reg[0]_i_2__0_n_2\,
      CO(0) => \count_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count[0]_i_3__0_n_0\,
      O(3) => \count_reg[0]_i_2__0_n_4\,
      O(2) => \count_reg[0]_i_2__0_n_5\,
      O(1) => \count_reg[0]_i_2__0_n_6\,
      O(0) => \count_reg[0]_i_2__0_n_7\,
      S(3) => \count[0]_i_4__0_n_0\,
      S(2) => \count[0]_i_5__0_n_0\,
      S(1) => \count[0]_i_6__0_n_0\,
      S(0) => \count[0]_i_7__0_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[8]_i_1__0_n_5\,
      Q => count_reg(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[8]_i_1__0_n_4\,
      Q => count_reg(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[12]_i_1__0_n_7\,
      Q => count_reg(12)
    );
\count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__0_n_0\,
      CO(3 downto 1) => \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_reg[12]_i_1__0_n_6\,
      O(0) => \count_reg[12]_i_1__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \count[12]_i_2__0_n_0\,
      S(0) => \count[12]_i_3__0_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[12]_i_1__0_n_6\,
      Q => count_reg(13)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[0]_i_2__0_n_6\,
      Q => \^sreg_reg[0]\(0)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[0]_i_2__0_n_5\,
      Q => \^sreg_reg[0]\(1)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[0]_i_2__0_n_4\,
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[4]_i_1__0_n_7\,
      Q => count_reg(4)
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2__0_n_0\,
      CO(3) => \count_reg[4]_i_1__0_n_0\,
      CO(2) => \count_reg[4]_i_1__0_n_1\,
      CO(1) => \count_reg[4]_i_1__0_n_2\,
      CO(0) => \count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__0_n_4\,
      O(2) => \count_reg[4]_i_1__0_n_5\,
      O(1) => \count_reg[4]_i_1__0_n_6\,
      O(0) => \count_reg[4]_i_1__0_n_7\,
      S(3) => \count[4]_i_2__0_n_0\,
      S(2) => \count[4]_i_3__0_n_0\,
      S(1) => \count[4]_i_4__0_n_0\,
      S(0) => \count[4]_i_5__0_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[4]_i_1__0_n_6\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[4]_i_1__0_n_5\,
      Q => count_reg(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[4]_i_1__0_n_4\,
      Q => count_reg(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[8]_i_1__0_n_7\,
      Q => count_reg(8)
    );
\count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__0_n_0\,
      CO(3) => \count_reg[8]_i_1__0_n_0\,
      CO(2) => \count_reg[8]_i_1__0_n_1\,
      CO(1) => \count_reg[8]_i_1__0_n_2\,
      CO(0) => \count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__0_n_4\,
      O(2) => \count_reg[8]_i_1__0_n_5\,
      O(1) => \count_reg[8]_i_1__0_n_6\,
      O(0) => \count_reg[8]_i_1__0_n_7\,
      S(3) => \count[8]_i_2__0_n_0\,
      S(2) => \count[8]_i_3__0_n_0\,
      S(1) => \count[8]_i_4__0_n_0\,
      S(0) => \count[8]_i_5__0_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \FSM_sequential_state_reg[2]\,
      CLR => reset,
      D => \count_reg[8]_i_1__0_n_6\,
      Q => count_reg(9)
    );
\sreg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \nextState__0\,
      I1 => \^sreg_reg[0]_1\,
      I2 => RX,
      I3 => count_reg(0),
      O => \sreg_reg[0]_0\
    );
\sreg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \nextState__0\,
      I1 => \^sreg_reg[0]_1\,
      I2 => RX,
      I3 => count_reg(0),
      O => \sreg_reg[1]\
    );
\sreg[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \sreg[7]_i_6_n_0\,
      I1 => count_reg(4),
      I2 => count_reg(3),
      I3 => count_reg(13),
      I4 => \sreg[7]_i_7_n_0\,
      O => \^sreg_reg[0]_1\
    );
\sreg[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(7),
      I2 => count_reg(6),
      I3 => count_reg(5),
      O => \sreg[7]_i_6_n_0\
    );
\sreg[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_reg(12),
      I1 => count_reg(11),
      I2 => count_reg(10),
      I3 => count_reg(9),
      O => \sreg[7]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ControlModuleWrapper_0_0_counters_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    done : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \nextState__0\ : out STD_LOGIC;
    \count_reg[13]_0\ : out STD_LOGIC;
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    RX : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[2]\ : in STD_LOGIC;
    \count_reg[4]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ControlModuleWrapper_0_0_counters_0 : entity is "counters";
end design_1_ControlModuleWrapper_0_0_counters_0;

architecture STRUCTURE of design_1_ControlModuleWrapper_0_0_counters_0 is
  signal \FSM_sequential_nextState_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextState_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextState_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextState_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextState_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextState_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextState_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextState_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextState_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_nextState_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal clk_counter : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count[0]_i_10_n_0\ : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[0]_i_7_n_0\ : STD_LOGIC;
  signal \count[0]_i_8_n_0\ : STD_LOGIC;
  signal \count[0]_i_9_n_0\ : STD_LOGIC;
  signal \count[12]_i_2_n_0\ : STD_LOGIC;
  signal \count[12]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal counter_clear : STD_LOGIC;
  signal done_INST_0_i_1_n_0 : STD_LOGIC;
  signal done_INST_0_i_2_n_0 : STD_LOGIC;
  signal done_INST_0_i_3_n_0 : STD_LOGIC;
  signal \^nextstate__0\ : STD_LOGIC;
  signal \NLW_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_nextState_reg[0]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_nextState_reg[1]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_nextState_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_nextState_reg[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_nextState_reg[2]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of done_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of done_INST_0_i_2 : label is "soft_lutpair2";
begin
  \nextState__0\ <= \^nextstate__0\;
\FSM_sequential_nextState_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAAAABAAAAAAAB"
    )
        port map (
      I0 => \FSM_sequential_nextState_reg[0]_i_2_n_0\,
      I1 => RX,
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => \out\(1),
      I5 => \FSM_sequential_nextState_reg[2]_i_3_n_0\,
      O => D(0)
    );
\FSM_sequential_nextState_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]\,
      I1 => \FSM_sequential_nextState_reg[1]_i_2_n_0\,
      I2 => \FSM_sequential_nextState_reg[0]_i_4_n_0\,
      I3 => \count_reg[4]_0\,
      I4 => \FSM_sequential_state_reg[2]_0\,
      I5 => \FSM_sequential_nextState_reg[0]_i_5_n_0\,
      O => \FSM_sequential_nextState_reg[0]_i_2_n_0\
    );
\FSM_sequential_nextState_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => clk_counter(6),
      I1 => clk_counter(4),
      I2 => clk_counter(2),
      I3 => clk_counter(1),
      I4 => clk_counter(7),
      I5 => clk_counter(9),
      O => \FSM_sequential_nextState_reg[0]_i_4_n_0\
    );
\FSM_sequential_nextState_reg[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => clk_counter(5),
      I1 => clk_counter(8),
      I2 => clk_counter(0),
      I3 => clk_counter(3),
      I4 => done_INST_0_i_2_n_0,
      O => \FSM_sequential_nextState_reg[0]_i_5_n_0\
    );
\FSM_sequential_nextState_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AF30"
    )
        port map (
      I0 => \FSM_sequential_nextState_reg[2]_i_3_n_0\,
      I1 => \FSM_sequential_nextState_reg[1]_i_2_n_0\,
      I2 => \out\(0),
      I3 => \out\(1),
      O => D(1)
    );
\FSM_sequential_nextState_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => clk_counter(7),
      I1 => clk_counter(9),
      I2 => RX,
      I3 => \FSM_sequential_nextState_reg[1]_i_3_n_0\,
      I4 => done_INST_0_i_2_n_0,
      I5 => \FSM_sequential_nextState_reg[1]_i_4_n_0\,
      O => \FSM_sequential_nextState_reg[1]_i_2_n_0\
    );
\FSM_sequential_nextState_reg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => clk_counter(1),
      I1 => clk_counter(2),
      I2 => clk_counter(4),
      I3 => clk_counter(6),
      O => \FSM_sequential_nextState_reg[1]_i_3_n_0\
    );
\FSM_sequential_nextState_reg[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => clk_counter(3),
      I1 => clk_counter(0),
      I2 => clk_counter(8),
      I3 => clk_counter(5),
      O => \FSM_sequential_nextState_reg[1]_i_4_n_0\
    );
\FSM_sequential_nextState_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \FSM_sequential_nextState_reg[2]_i_3_n_0\,
      O => D(2)
    );
\FSM_sequential_nextState_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F1B"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => \^nextstate__0\,
      O => E(0)
    );
\FSM_sequential_nextState_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0057005F"
    )
        port map (
      I0 => clk_counter(9),
      I1 => clk_counter(5),
      I2 => clk_counter(7),
      I3 => done_INST_0_i_2_n_0,
      I4 => clk_counter(6),
      I5 => \FSM_sequential_nextState_reg[2]_i_5_n_0\,
      O => \FSM_sequential_nextState_reg[2]_i_3_n_0\
    );
\FSM_sequential_nextState_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \FSM_sequential_nextState_reg[2]_i_6_n_0\,
      I1 => clk_counter(7),
      I2 => clk_counter(6),
      I3 => clk_counter(3),
      I4 => clk_counter(2),
      I5 => \FSM_sequential_nextState_reg[2]_i_7_n_0\,
      O => \^nextstate__0\
    );
\FSM_sequential_nextState_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111113"
    )
        port map (
      I0 => clk_counter(8),
      I1 => done_INST_0_i_2_n_0,
      I2 => clk_counter(7),
      I3 => clk_counter(3),
      I4 => clk_counter(2),
      I5 => clk_counter(4),
      O => \FSM_sequential_nextState_reg[2]_i_5_n_0\
    );
\FSM_sequential_nextState_reg[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clk_counter(12),
      I1 => clk_counter(13),
      I2 => clk_counter(10),
      I3 => clk_counter(11),
      I4 => clk_counter(9),
      O => \FSM_sequential_nextState_reg[2]_i_6_n_0\
    );
\FSM_sequential_nextState_reg[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => clk_counter(1),
      I1 => clk_counter(0),
      I2 => clk_counter(4),
      I3 => clk_counter(5),
      I4 => clk_counter(8),
      O => \FSM_sequential_nextState_reg[2]_i_7_n_0\
    );
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAABFAAFEAABE"
    )
        port map (
      I0 => counter_clear,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => \FSM_sequential_nextState_reg[2]_i_3_n_0\,
      I5 => RX,
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => clk_counter(3),
      I1 => clk_counter(4),
      I2 => clk_counter(2),
      I3 => clk_counter(1),
      I4 => clk_counter(9),
      I5 => clk_counter(6),
      O => \count[0]_i_10_n_0\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"313F"
    )
        port map (
      I0 => \^nextstate__0\,
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      O => \count_reg[13]_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303022220000CCFF"
    )
        port map (
      I0 => \count[0]_i_9_n_0\,
      I1 => \out\(2),
      I2 => done_INST_0_i_1_n_0,
      I3 => RX,
      I4 => \out\(0),
      I5 => \out\(1),
      O => counter_clear
    );
\count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_clear,
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(3),
      I1 => counter_clear,
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(2),
      I1 => counter_clear,
      O => \count[0]_i_6_n_0\
    );
\count[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(1),
      I1 => counter_clear,
      O => \count[0]_i_7_n_0\
    );
\count[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_counter(0),
      I1 => counter_clear,
      O => \count[0]_i_8_n_0\
    );
\count[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => done_INST_0_i_2_n_0,
      I1 => clk_counter(7),
      I2 => clk_counter(8),
      I3 => clk_counter(5),
      I4 => clk_counter(0),
      I5 => \count[0]_i_10_n_0\,
      O => \count[0]_i_9_n_0\
    );
\count[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(13),
      I1 => counter_clear,
      O => \count[12]_i_2_n_0\
    );
\count[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(12),
      I1 => counter_clear,
      O => \count[12]_i_3_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(7),
      I1 => counter_clear,
      O => \count[4]_i_2_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(6),
      I1 => counter_clear,
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(5),
      I1 => counter_clear,
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(4),
      I1 => counter_clear,
      O => \count[4]_i_5_n_0\
    );
\count[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(11),
      I1 => counter_clear,
      O => \count[8]_i_2_n_0\
    );
\count[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(10),
      I1 => counter_clear,
      O => \count[8]_i_3_n_0\
    );
\count[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(9),
      I1 => counter_clear,
      O => \count[8]_i_4_n_0\
    );
\count[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter(8),
      I1 => counter_clear,
      O => \count[8]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[0]_i_2_n_7\,
      Q => clk_counter(0)
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2) => \count_reg[0]_i_2_n_1\,
      CO(1) => \count_reg[0]_i_2_n_2\,
      CO(0) => \count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count[0]_i_4_n_0\,
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3) => \count[0]_i_5_n_0\,
      S(2) => \count[0]_i_6_n_0\,
      S(1) => \count[0]_i_7_n_0\,
      S(0) => \count[0]_i_8_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[8]_i_1_n_5\,
      Q => clk_counter(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[8]_i_1_n_4\,
      Q => clk_counter(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[12]_i_1_n_7\,
      Q => clk_counter(12)
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \count[12]_i_2_n_0\,
      S(0) => \count[12]_i_3_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[12]_i_1_n_6\,
      Q => clk_counter(13)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[0]_i_2_n_6\,
      Q => clk_counter(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[0]_i_2_n_5\,
      Q => clk_counter(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[0]_i_2_n_4\,
      Q => clk_counter(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[4]_i_1_n_7\,
      Q => clk_counter(4)
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => \count[4]_i_2_n_0\,
      S(2) => \count[4]_i_3_n_0\,
      S(1) => \count[4]_i_4_n_0\,
      S(0) => \count[4]_i_5_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[4]_i_1_n_6\,
      Q => clk_counter(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[4]_i_1_n_5\,
      Q => clk_counter(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[4]_i_1_n_4\,
      Q => clk_counter(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[8]_i_1_n_7\,
      Q => clk_counter(8)
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3) => \count[8]_i_2_n_0\,
      S(2) => \count[8]_i_3_n_0\,
      S(1) => \count[8]_i_4_n_0\,
      S(0) => \count[8]_i_5_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[0]_i_1_n_0\,
      CLR => reset,
      D => \count_reg[8]_i_1_n_6\,
      Q => clk_counter(9)
    );
done_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \out\(1),
      I1 => done_INST_0_i_1_n_0,
      I2 => \out\(2),
      I3 => \out\(0),
      O => done
    );
done_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAEAEAAAAA"
    )
        port map (
      I0 => done_INST_0_i_2_n_0,
      I1 => clk_counter(8),
      I2 => clk_counter(7),
      I3 => done_INST_0_i_3_n_0,
      I4 => clk_counter(9),
      I5 => clk_counter(6),
      O => done_INST_0_i_1_n_0
    );
done_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clk_counter(11),
      I1 => clk_counter(10),
      I2 => clk_counter(13),
      I3 => clk_counter(12),
      O => done_INST_0_i_2_n_0
    );
done_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => clk_counter(2),
      I1 => clk_counter(3),
      I2 => clk_counter(4),
      I3 => clk_counter(5),
      I4 => clk_counter(8),
      O => done_INST_0_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ControlModuleWrapper_0_0_ControlModule is
  port (
    done : out STD_LOGIC;
    UART_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    RX : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ControlModuleWrapper_0_0_ControlModule : entity is "ControlModule";
end design_1_ControlModuleWrapper_0_0_ControlModule;

architecture STRUCTURE of design_1_ControlModuleWrapper_0_0_ControlModule is
  signal BIT_COUNTER_n_2 : STD_LOGIC;
  signal BIT_COUNTER_n_3 : STD_LOGIC;
  signal BIT_COUNTER_n_4 : STD_LOGIC;
  signal \FSM_sequential_nextState_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal SAMPLE_CLK_COUNTER_n_0 : STD_LOGIC;
  signal SAMPLE_CLK_COUNTER_n_1 : STD_LOGIC;
  signal SAMPLE_CLK_COUNTER_n_2 : STD_LOGIC;
  signal SAMPLE_CLK_COUNTER_n_4 : STD_LOGIC;
  signal SAMPLE_CLK_COUNTER_n_6 : STD_LOGIC;
  signal \^uart_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clear_sreg : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal nextState : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \nextState__0\ : STD_LOGIC;
  signal \sreg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[5]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[6]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sreg[7]_i_2_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_nextState_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_nextState_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_nextState_reg[2]\ : label is "LD";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
begin
  UART_DATA(7 downto 0) <= \^uart_data\(7 downto 0);
BIT_COUNTER: entity work.design_1_ControlModuleWrapper_0_0_counters
     port map (
      \FSM_sequential_state_reg[2]\ => SAMPLE_CLK_COUNTER_n_6,
      RX => RX,
      clock => clock,
      \nextState__0\ => \nextState__0\,
      \out\(2 downto 0) => state(2 downto 0),
      reset => reset,
      \sreg_reg[0]\(1 downto 0) => count_reg(2 downto 1),
      \sreg_reg[0]_0\ => BIT_COUNTER_n_2,
      \sreg_reg[0]_1\ => BIT_COUNTER_n_3,
      \sreg_reg[1]\ => BIT_COUNTER_n_4
    );
\FSM_sequential_nextState_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => SAMPLE_CLK_COUNTER_n_2,
      G => SAMPLE_CLK_COUNTER_n_4,
      GE => '1',
      Q => nextState(0)
    );
\FSM_sequential_nextState_reg[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => \FSM_sequential_nextState_reg[0]_i_3_n_0\
    );
\FSM_sequential_nextState_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => SAMPLE_CLK_COUNTER_n_1,
      G => SAMPLE_CLK_COUNTER_n_4,
      GE => '1',
      Q => nextState(1)
    );
\FSM_sequential_nextState_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => SAMPLE_CLK_COUNTER_n_0,
      G => SAMPLE_CLK_COUNTER_n_4,
      GE => '1',
      Q => nextState(2)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => nextState(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => nextState(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => nextState(2),
      Q => state(2)
    );
SAMPLE_CLK_COUNTER: entity work.design_1_ControlModuleWrapper_0_0_counters_0
     port map (
      D(2) => SAMPLE_CLK_COUNTER_n_0,
      D(1) => SAMPLE_CLK_COUNTER_n_1,
      D(0) => SAMPLE_CLK_COUNTER_n_2,
      E(0) => SAMPLE_CLK_COUNTER_n_4,
      \FSM_sequential_state_reg[2]\ => \FSM_sequential_nextState_reg[0]_i_3_n_0\,
      \FSM_sequential_state_reg[2]_0\ => \sreg[7]_i_2_n_0\,
      RX => RX,
      clock => clock,
      \count_reg[13]_0\ => SAMPLE_CLK_COUNTER_n_6,
      \count_reg[4]_0\ => BIT_COUNTER_n_3,
      done => done,
      \nextState__0\ => \nextState__0\,
      \out\(2 downto 0) => state(2 downto 0),
      reset => reset
    );
\sreg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0008"
    )
        port map (
      I0 => \sreg[7]_i_2_n_0\,
      I1 => BIT_COUNTER_n_2,
      I2 => count_reg(1),
      I3 => count_reg(2),
      I4 => \^uart_data\(0),
      I5 => clear_sreg,
      O => \sreg[0]_i_1_n_0\
    );
\sreg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0008"
    )
        port map (
      I0 => \sreg[7]_i_2_n_0\,
      I1 => BIT_COUNTER_n_4,
      I2 => count_reg(1),
      I3 => count_reg(2),
      I4 => \^uart_data\(1),
      I5 => clear_sreg,
      O => \sreg[1]_i_1_n_0\
    );
\sreg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0080"
    )
        port map (
      I0 => \sreg[7]_i_2_n_0\,
      I1 => BIT_COUNTER_n_2,
      I2 => count_reg(1),
      I3 => count_reg(2),
      I4 => \^uart_data\(2),
      I5 => clear_sreg,
      O => \sreg[2]_i_1_n_0\
    );
\sreg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0080"
    )
        port map (
      I0 => \sreg[7]_i_2_n_0\,
      I1 => BIT_COUNTER_n_4,
      I2 => count_reg(1),
      I3 => count_reg(2),
      I4 => \^uart_data\(3),
      I5 => clear_sreg,
      O => \sreg[3]_i_1_n_0\
    );
\sreg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0080"
    )
        port map (
      I0 => \sreg[7]_i_2_n_0\,
      I1 => BIT_COUNTER_n_2,
      I2 => count_reg(2),
      I3 => count_reg(1),
      I4 => \^uart_data\(4),
      I5 => clear_sreg,
      O => \sreg[4]_i_1_n_0\
    );
\sreg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0080"
    )
        port map (
      I0 => \sreg[7]_i_2_n_0\,
      I1 => BIT_COUNTER_n_4,
      I2 => count_reg(2),
      I3 => count_reg(1),
      I4 => \^uart_data\(5),
      I5 => clear_sreg,
      O => \sreg[5]_i_1_n_0\
    );
\sreg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => \sreg[7]_i_2_n_0\,
      I1 => BIT_COUNTER_n_2,
      I2 => count_reg(1),
      I3 => count_reg(2),
      I4 => \^uart_data\(6),
      I5 => clear_sreg,
      O => \sreg[6]_i_1_n_0\
    );
\sreg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => \sreg[7]_i_2_n_0\,
      I1 => BIT_COUNTER_n_4,
      I2 => count_reg(1),
      I3 => count_reg(2),
      I4 => \^uart_data\(7),
      I5 => clear_sreg,
      O => \sreg[7]_i_1_n_0\
    );
\sreg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => \sreg[7]_i_2_n_0\
    );
\sreg[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => clear_sreg
    );
\sreg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => \sreg[0]_i_1_n_0\,
      Q => \^uart_data\(0)
    );
\sreg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => \sreg[1]_i_1_n_0\,
      Q => \^uart_data\(1)
    );
\sreg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => \sreg[2]_i_1_n_0\,
      Q => \^uart_data\(2)
    );
\sreg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => \sreg[3]_i_1_n_0\,
      Q => \^uart_data\(3)
    );
\sreg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => \sreg[4]_i_1_n_0\,
      Q => \^uart_data\(4)
    );
\sreg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => \sreg[5]_i_1_n_0\,
      Q => \^uart_data\(5)
    );
\sreg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => \sreg[6]_i_1_n_0\,
      Q => \^uart_data\(6)
    );
\sreg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => \sreg[7]_i_1_n_0\,
      Q => \^uart_data\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ControlModuleWrapper_0_0_ControlModuleWrapper is
  port (
    done : out STD_LOGIC;
    UART_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    RX : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ControlModuleWrapper_0_0_ControlModuleWrapper : entity is "ControlModuleWrapper";
end design_1_ControlModuleWrapper_0_0_ControlModuleWrapper;

architecture STRUCTURE of design_1_ControlModuleWrapper_0_0_ControlModuleWrapper is
begin
nolabel_line30: entity work.design_1_ControlModuleWrapper_0_0_ControlModule
     port map (
      RX => RX,
      UART_DATA(7 downto 0) => UART_DATA(7 downto 0),
      clock => clock,
      done => done,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ControlModuleWrapper_0_0 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    RX : in STD_LOGIC;
    done : out STD_LOGIC;
    UART_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ControlModuleWrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ControlModuleWrapper_0_0 : entity is "design_1_ControlModuleWrapper_0_0,ControlModuleWrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ControlModuleWrapper_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ControlModuleWrapper_0_0 : entity is "ControlModuleWrapper,Vivado 2017.2";
end design_1_ControlModuleWrapper_0_0;

architecture STRUCTURE of design_1_ControlModuleWrapper_0_0 is
begin
inst: entity work.design_1_ControlModuleWrapper_0_0_ControlModuleWrapper
     port map (
      RX => RX,
      UART_DATA(7 downto 0) => UART_DATA(7 downto 0),
      clock => clock,
      done => done,
      reset => reset
    );
end STRUCTURE;
