-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Wed Nov  7 02:17:19 2018
-- Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_BLSControllerWrapper_0_0/design_1_BLSControllerWrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_BLSControllerWrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_BLSControllerWrapper_0_0_Counter is
  port (
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RunningCount : in STD_LOGIC;
    hasUnusedData : in STD_LOGIC_VECTOR ( 0 to 0 );
    BS_IDLE : in STD_LOGIC_VECTOR ( 0 to 0 );
    OutOfData : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_BLSControllerWrapper_0_0_Counter : entity is "Counter";
end design_1_BLSControllerWrapper_0_0_Counter;

architecture STRUCTURE of design_1_BLSControllerWrapper_0_0_Counter is
  signal \^led\ : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal count00_carry_i_5_n_0 : STD_LOGIC;
  signal count00_carry_n_0 : STD_LOGIC;
  signal count00_carry_n_1 : STD_LOGIC;
  signal count00_carry_n_2 : STD_LOGIC;
  signal count00_carry_n_3 : STD_LOGIC;
  signal count00_carry_n_4 : STD_LOGIC;
  signal count00_carry_n_5 : STD_LOGIC;
  signal count00_carry_n_6 : STD_LOGIC;
  signal count00_carry_n_7 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_count00_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count00_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of count00_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \count00_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  LED(7 downto 0) <= \^led\(7 downto 0);
count00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count00_carry_n_0,
      CO(2) => count00_carry_n_1,
      CO(1) => count00_carry_n_2,
      CO(0) => count00_carry_n_3,
      CYINIT => \^led\(0),
      DI(3 downto 1) => \^led\(3 downto 1),
      DI(0) => count00_carry_i_1_n_0,
      O(3) => count00_carry_n_4,
      O(2) => count00_carry_n_5,
      O(1) => count00_carry_n_6,
      O(0) => count00_carry_n_7,
      S(3) => count00_carry_i_2_n_0,
      S(2) => count00_carry_i_3_n_0,
      S(1) => count00_carry_i_4_n_0,
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
      DI(1 downto 0) => \^led\(5 downto 4),
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
      I0 => \^led\(6),
      I1 => \^led\(7),
      O => \count00_carry__0_i_1_n_0\
    );
\count00_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^led\(5),
      I1 => \^led\(6),
      O => \count00_carry__0_i_2_n_0\
    );
\count00_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^led\(4),
      I1 => \^led\(5),
      O => \count00_carry__0_i_3_n_0\
    );
count00_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^led\(1),
      O => count00_carry_i_1_n_0
    );
count00_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^led\(3),
      I1 => \^led\(4),
      O => count00_carry_i_2_n_0
    );
count00_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^led\(2),
      I1 => \^led\(3),
      O => count00_carry_i_3_n_0
    );
count00_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^led\(1),
      I1 => \^led\(2),
      O => count00_carry_i_4_n_0
    );
count00_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9AAAAAA55555555"
    )
        port map (
      I0 => \^led\(1),
      I1 => RunningCount,
      I2 => hasUnusedData(0),
      I3 => BS_IDLE(0),
      I4 => OutOfData,
      I5 => Q(0),
      O => count00_carry_i_5_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^led\(0),
      O => \count[0]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA2A"
    )
        port map (
      I0 => Q(0),
      I1 => OutOfData,
      I2 => BS_IDLE(0),
      I3 => hasUnusedData(0),
      I4 => RunningCount,
      O => \count[7]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count[0]_i_1_n_0\,
      Q => \^led\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => count00_carry_n_7,
      Q => \^led\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => count00_carry_n_6,
      Q => \^led\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => count00_carry_n_5,
      Q => \^led\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => count00_carry_n_4,
      Q => \^led\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count00_carry__0_n_7\,
      Q => \^led\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count00_carry__0_n_6\,
      Q => \^led\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => \count[7]_i_1_n_0\,
      CLR => reset,
      D => \count00_carry__0_n_5\,
      Q => \^led\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_BLSControllerWrapper_0_0_BLSController is
  port (
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BS_START : out STD_LOGIC_VECTOR ( 0 to 0 );
    SERVE_REG : out STD_LOGIC_VECTOR ( 0 to 0 );
    hasUnusedData : in STD_LOGIC_VECTOR ( 0 to 0 );
    BS_IDLE : in STD_LOGIC_VECTOR ( 0 to 0 );
    OutOfData : in STD_LOGIC;
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    BS_READY : in STD_LOGIC_VECTOR ( 0 to 0 );
    BS_DONE : in STD_LOGIC_VECTOR ( 0 to 0 );
    startSystem : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_BLSControllerWrapper_0_0_BLSController : entity is "BLSController";
end design_1_BLSControllerWrapper_0_0_BLSController;

architecture STRUCTURE of design_1_BLSControllerWrapper_0_0_BLSController is
  signal RunningCount : STD_LOGIC;
  signal RunningCount0 : STD_LOGIC;
  signal SecRunningCount : STD_LOGIC;
  signal SecRunningCount0 : STD_LOGIC;
  signal currentState : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \currentState[0]_i_2_n_0\ : STD_LOGIC;
  signal \currentState[1]_i_1_n_0\ : STD_LOGIC;
  signal nextState : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BS_START[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \RunningCount[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SERVE_REG[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \currentState[0]_i_2\ : label is "soft_lutpair1";
begin
\BS_START[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentState(0),
      I1 => hasUnusedData(0),
      O => BS_START(0)
    );
Clock_Count: entity work.design_1_BLSControllerWrapper_0_0_Counter
     port map (
      BS_IDLE(0) => BS_IDLE(0),
      LED(7 downto 0) => LED(7 downto 0),
      OutOfData => OutOfData,
      Q(0) => currentState(0),
      RunningCount => RunningCount,
      clock => clock,
      hasUnusedData(0) => hasUnusedData(0),
      reset => reset
    );
\RunningCount[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFAAFF00"
    )
        port map (
      I0 => hasUnusedData(0),
      I1 => SecRunningCount,
      I2 => BS_DONE(0),
      I3 => RunningCount,
      I4 => currentState(0),
      O => RunningCount0
    );
\RunningCount_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => RunningCount0,
      Q => RunningCount
    );
\SERVE_REG[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => currentState(0),
      I1 => OutOfData,
      I2 => hasUnusedData(0),
      O => SERVE_REG(0)
    );
\SecRunningCount[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF8080FFFF0000"
    )
        port map (
      I0 => RunningCount,
      I1 => hasUnusedData(0),
      I2 => BS_READY(0),
      I3 => BS_DONE(0),
      I4 => SecRunningCount,
      I5 => currentState(0),
      O => SecRunningCount0
    );
\SecRunningCount_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => SecRunningCount0,
      Q => SecRunningCount
    );
\currentState[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \currentState[0]_i_2_n_0\,
      I1 => startSystem,
      I2 => currentState(1),
      I3 => currentState(0),
      O => nextState(0)
    );
\currentState[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => OutOfData,
      I1 => BS_IDLE(0),
      I2 => hasUnusedData(0),
      I3 => RunningCount,
      I4 => currentState(0),
      O => \currentState[0]_i_2_n_0\
    );
\currentState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
        port map (
      I0 => currentState(1),
      I1 => currentState(0),
      I2 => RunningCount,
      I3 => hasUnusedData(0),
      I4 => BS_IDLE(0),
      I5 => OutOfData,
      O => \currentState[1]_i_1_n_0\
    );
\currentState_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => nextState(0),
      Q => currentState(0)
    );
\currentState_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => \currentState[1]_i_1_n_0\,
      Q => currentState(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_BLSControllerWrapper_0_0_BLSControllerWrapper is
  port (
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BS_START : out STD_LOGIC_VECTOR ( 0 to 0 );
    SERVE_REG : out STD_LOGIC_VECTOR ( 0 to 0 );
    hasUnusedData : in STD_LOGIC_VECTOR ( 0 to 0 );
    BS_IDLE : in STD_LOGIC_VECTOR ( 0 to 0 );
    OutOfData : in STD_LOGIC;
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    BS_READY : in STD_LOGIC_VECTOR ( 0 to 0 );
    BS_DONE : in STD_LOGIC_VECTOR ( 0 to 0 );
    startSystem : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_BLSControllerWrapper_0_0_BLSControllerWrapper : entity is "BLSControllerWrapper";
end design_1_BLSControllerWrapper_0_0_BLSControllerWrapper;

architecture STRUCTURE of design_1_BLSControllerWrapper_0_0_BLSControllerWrapper is
begin
nolabel_line40: entity work.design_1_BLSControllerWrapper_0_0_BLSController
     port map (
      BS_DONE(0) => BS_DONE(0),
      BS_IDLE(0) => BS_IDLE(0),
      BS_READY(0) => BS_READY(0),
      BS_START(0) => BS_START(0),
      LED(7 downto 0) => LED(7 downto 0),
      OutOfData => OutOfData,
      SERVE_REG(0) => SERVE_REG(0),
      clock => clock,
      hasUnusedData(0) => hasUnusedData(0),
      reset => reset,
      startSystem => startSystem
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_BLSControllerWrapper_0_0 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    startSystem : in STD_LOGIC;
    OutOfData : in STD_LOGIC;
    BS_READY : in STD_LOGIC_VECTOR ( 0 to 0 );
    BS_DONE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BS_IDLE : in STD_LOGIC_VECTOR ( 0 to 0 );
    hasUnusedData : in STD_LOGIC_VECTOR ( 0 to 0 );
    BS_START : out STD_LOGIC_VECTOR ( 0 to 0 );
    SERVE_REG : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_BLSControllerWrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_BLSControllerWrapper_0_0 : entity is "design_1_BLSControllerWrapper_0_0,BLSControllerWrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_BLSControllerWrapper_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_BLSControllerWrapper_0_0 : entity is "BLSControllerWrapper,Vivado 2017.2";
end design_1_BLSControllerWrapper_0_0;

architecture STRUCTURE of design_1_BLSControllerWrapper_0_0 is
begin
inst: entity work.design_1_BLSControllerWrapper_0_0_BLSControllerWrapper
     port map (
      BS_DONE(0) => BS_DONE(0),
      BS_IDLE(0) => BS_IDLE(0),
      BS_READY(0) => BS_READY(0),
      BS_START(0) => BS_START(0),
      LED(7 downto 0) => LED(7 downto 0),
      OutOfData => OutOfData,
      SERVE_REG(0) => SERVE_REG(0),
      clock => clock,
      hasUnusedData(0) => hasUnusedData(0),
      reset => reset,
      startSystem => startSystem
    );
end STRUCTURE;
