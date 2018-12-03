-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Mon Nov  5 10:34:21 2018
-- Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /afs/ece.cmu.edu/usr/dworpell/project_12/project_12.srcs/sources_1/bd/design_1/ip/design_1_PacketRegisterWrapper_0_0/design_1_PacketRegisterWrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_PacketRegisterWrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PacketRegisterWrapper_0_0_PacketRegister is
  port (
    sptprice : out STD_LOGIC_VECTOR ( 31 downto 0 );
    strike : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rate : out STD_LOGIC_VECTOR ( 31 downto 0 );
    volatility : out STD_LOGIC_VECTOR ( 31 downto 0 );
    time_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    otype : out STD_LOGIC_VECTOR ( 31 downto 0 );
    timet : out STD_LOGIC_VECTOR ( 31 downto 0 );
    hasUnusedData : out STD_LOGIC;
    BS_READY : in STD_LOGIC;
    clock : in STD_LOGIC;
    en : in STD_LOGIC;
    inD : in STD_LOGIC_VECTOR ( 223 downto 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PacketRegisterWrapper_0_0_PacketRegister : entity is "PacketRegister";
end design_1_PacketRegisterWrapper_0_0_PacketRegister;

architecture STRUCTURE of design_1_PacketRegisterWrapper_0_0_PacketRegister is
  signal \^hasunuseddata\ : STD_LOGIC;
  signal hasUnusedData_i_1_n_0 : STD_LOGIC;
  signal prevBS_READY : STD_LOGIC;
begin
  hasUnusedData <= \^hasunuseddata\;
hasUnusedData_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => en,
      I1 => prevBS_READY,
      I2 => BS_READY,
      I3 => \^hasunuseddata\,
      O => hasUnusedData_i_1_n_0
    );
hasUnusedData_reg: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => '1',
      CLR => reset,
      D => hasUnusedData_i_1_n_0,
      Q => \^hasunuseddata\
    );
\otype_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(32),
      Q => otype(0)
    );
\otype_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(42),
      Q => otype(10)
    );
\otype_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(43),
      Q => otype(11)
    );
\otype_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(44),
      Q => otype(12)
    );
\otype_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(45),
      Q => otype(13)
    );
\otype_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(46),
      Q => otype(14)
    );
\otype_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(47),
      Q => otype(15)
    );
\otype_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(48),
      Q => otype(16)
    );
\otype_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(49),
      Q => otype(17)
    );
\otype_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(50),
      Q => otype(18)
    );
\otype_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(51),
      Q => otype(19)
    );
\otype_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(33),
      Q => otype(1)
    );
\otype_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(52),
      Q => otype(20)
    );
\otype_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(53),
      Q => otype(21)
    );
\otype_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(54),
      Q => otype(22)
    );
\otype_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(55),
      Q => otype(23)
    );
\otype_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(56),
      Q => otype(24)
    );
\otype_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(57),
      Q => otype(25)
    );
\otype_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(58),
      Q => otype(26)
    );
\otype_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(59),
      Q => otype(27)
    );
\otype_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(60),
      Q => otype(28)
    );
\otype_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(61),
      Q => otype(29)
    );
\otype_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(34),
      Q => otype(2)
    );
\otype_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(62),
      Q => otype(30)
    );
\otype_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(63),
      Q => otype(31)
    );
\otype_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(35),
      Q => otype(3)
    );
\otype_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(36),
      Q => otype(4)
    );
\otype_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(37),
      Q => otype(5)
    );
\otype_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(38),
      Q => otype(6)
    );
\otype_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(39),
      Q => otype(7)
    );
\otype_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(40),
      Q => otype(8)
    );
\otype_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(41),
      Q => otype(9)
    );
prevBS_READY_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => BS_READY,
      Q => prevBS_READY,
      R => '0'
    );
\rate_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(128),
      Q => rate(0)
    );
\rate_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(138),
      Q => rate(10)
    );
\rate_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(139),
      Q => rate(11)
    );
\rate_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(140),
      Q => rate(12)
    );
\rate_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(141),
      Q => rate(13)
    );
\rate_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(142),
      Q => rate(14)
    );
\rate_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(143),
      Q => rate(15)
    );
\rate_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(144),
      Q => rate(16)
    );
\rate_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(145),
      Q => rate(17)
    );
\rate_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(146),
      Q => rate(18)
    );
\rate_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(147),
      Q => rate(19)
    );
\rate_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(129),
      Q => rate(1)
    );
\rate_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(148),
      Q => rate(20)
    );
\rate_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(149),
      Q => rate(21)
    );
\rate_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(150),
      Q => rate(22)
    );
\rate_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(151),
      Q => rate(23)
    );
\rate_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(152),
      Q => rate(24)
    );
\rate_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(153),
      Q => rate(25)
    );
\rate_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(154),
      Q => rate(26)
    );
\rate_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(155),
      Q => rate(27)
    );
\rate_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(156),
      Q => rate(28)
    );
\rate_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(157),
      Q => rate(29)
    );
\rate_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(130),
      Q => rate(2)
    );
\rate_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(158),
      Q => rate(30)
    );
\rate_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(159),
      Q => rate(31)
    );
\rate_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(131),
      Q => rate(3)
    );
\rate_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(132),
      Q => rate(4)
    );
\rate_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(133),
      Q => rate(5)
    );
\rate_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(134),
      Q => rate(6)
    );
\rate_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(135),
      Q => rate(7)
    );
\rate_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(136),
      Q => rate(8)
    );
\rate_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(137),
      Q => rate(9)
    );
\sptprice_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(192),
      Q => sptprice(0)
    );
\sptprice_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(202),
      Q => sptprice(10)
    );
\sptprice_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(203),
      Q => sptprice(11)
    );
\sptprice_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(204),
      Q => sptprice(12)
    );
\sptprice_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(205),
      Q => sptprice(13)
    );
\sptprice_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(206),
      Q => sptprice(14)
    );
\sptprice_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(207),
      Q => sptprice(15)
    );
\sptprice_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(208),
      Q => sptprice(16)
    );
\sptprice_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(209),
      Q => sptprice(17)
    );
\sptprice_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(210),
      Q => sptprice(18)
    );
\sptprice_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(211),
      Q => sptprice(19)
    );
\sptprice_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(193),
      Q => sptprice(1)
    );
\sptprice_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(212),
      Q => sptprice(20)
    );
\sptprice_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(213),
      Q => sptprice(21)
    );
\sptprice_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(214),
      Q => sptprice(22)
    );
\sptprice_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(215),
      Q => sptprice(23)
    );
\sptprice_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(216),
      Q => sptprice(24)
    );
\sptprice_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(217),
      Q => sptprice(25)
    );
\sptprice_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(218),
      Q => sptprice(26)
    );
\sptprice_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(219),
      Q => sptprice(27)
    );
\sptprice_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(220),
      Q => sptprice(28)
    );
\sptprice_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(221),
      Q => sptprice(29)
    );
\sptprice_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(194),
      Q => sptprice(2)
    );
\sptprice_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(222),
      Q => sptprice(30)
    );
\sptprice_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(223),
      Q => sptprice(31)
    );
\sptprice_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(195),
      Q => sptprice(3)
    );
\sptprice_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(196),
      Q => sptprice(4)
    );
\sptprice_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(197),
      Q => sptprice(5)
    );
\sptprice_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(198),
      Q => sptprice(6)
    );
\sptprice_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(199),
      Q => sptprice(7)
    );
\sptprice_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(200),
      Q => sptprice(8)
    );
\sptprice_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(201),
      Q => sptprice(9)
    );
\strike_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(160),
      Q => strike(0)
    );
\strike_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(170),
      Q => strike(10)
    );
\strike_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(171),
      Q => strike(11)
    );
\strike_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(172),
      Q => strike(12)
    );
\strike_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(173),
      Q => strike(13)
    );
\strike_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(174),
      Q => strike(14)
    );
\strike_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(175),
      Q => strike(15)
    );
\strike_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(176),
      Q => strike(16)
    );
\strike_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(177),
      Q => strike(17)
    );
\strike_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(178),
      Q => strike(18)
    );
\strike_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(179),
      Q => strike(19)
    );
\strike_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(161),
      Q => strike(1)
    );
\strike_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(180),
      Q => strike(20)
    );
\strike_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(181),
      Q => strike(21)
    );
\strike_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(182),
      Q => strike(22)
    );
\strike_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(183),
      Q => strike(23)
    );
\strike_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(184),
      Q => strike(24)
    );
\strike_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(185),
      Q => strike(25)
    );
\strike_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(186),
      Q => strike(26)
    );
\strike_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(187),
      Q => strike(27)
    );
\strike_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(188),
      Q => strike(28)
    );
\strike_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(189),
      Q => strike(29)
    );
\strike_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(162),
      Q => strike(2)
    );
\strike_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(190),
      Q => strike(30)
    );
\strike_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(191),
      Q => strike(31)
    );
\strike_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(163),
      Q => strike(3)
    );
\strike_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(164),
      Q => strike(4)
    );
\strike_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(165),
      Q => strike(5)
    );
\strike_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(166),
      Q => strike(6)
    );
\strike_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(167),
      Q => strike(7)
    );
\strike_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(168),
      Q => strike(8)
    );
\strike_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(169),
      Q => strike(9)
    );
\time_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(64),
      Q => time_r(0)
    );
\time_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(74),
      Q => time_r(10)
    );
\time_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(75),
      Q => time_r(11)
    );
\time_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(76),
      Q => time_r(12)
    );
\time_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(77),
      Q => time_r(13)
    );
\time_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(78),
      Q => time_r(14)
    );
\time_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(79),
      Q => time_r(15)
    );
\time_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(80),
      Q => time_r(16)
    );
\time_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(81),
      Q => time_r(17)
    );
\time_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(82),
      Q => time_r(18)
    );
\time_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(83),
      Q => time_r(19)
    );
\time_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(65),
      Q => time_r(1)
    );
\time_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(84),
      Q => time_r(20)
    );
\time_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(85),
      Q => time_r(21)
    );
\time_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(86),
      Q => time_r(22)
    );
\time_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(87),
      Q => time_r(23)
    );
\time_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(88),
      Q => time_r(24)
    );
\time_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(89),
      Q => time_r(25)
    );
\time_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(90),
      Q => time_r(26)
    );
\time_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(91),
      Q => time_r(27)
    );
\time_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(92),
      Q => time_r(28)
    );
\time_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(93),
      Q => time_r(29)
    );
\time_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(66),
      Q => time_r(2)
    );
\time_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(94),
      Q => time_r(30)
    );
\time_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(95),
      Q => time_r(31)
    );
\time_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(67),
      Q => time_r(3)
    );
\time_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(68),
      Q => time_r(4)
    );
\time_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(69),
      Q => time_r(5)
    );
\time_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(70),
      Q => time_r(6)
    );
\time_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(71),
      Q => time_r(7)
    );
\time_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(72),
      Q => time_r(8)
    );
\time_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(73),
      Q => time_r(9)
    );
\timet_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(0),
      Q => timet(0)
    );
\timet_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(10),
      Q => timet(10)
    );
\timet_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(11),
      Q => timet(11)
    );
\timet_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(12),
      Q => timet(12)
    );
\timet_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(13),
      Q => timet(13)
    );
\timet_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(14),
      Q => timet(14)
    );
\timet_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(15),
      Q => timet(15)
    );
\timet_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(16),
      Q => timet(16)
    );
\timet_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(17),
      Q => timet(17)
    );
\timet_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(18),
      Q => timet(18)
    );
\timet_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(19),
      Q => timet(19)
    );
\timet_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(1),
      Q => timet(1)
    );
\timet_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(20),
      Q => timet(20)
    );
\timet_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(21),
      Q => timet(21)
    );
\timet_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(22),
      Q => timet(22)
    );
\timet_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(23),
      Q => timet(23)
    );
\timet_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(24),
      Q => timet(24)
    );
\timet_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(25),
      Q => timet(25)
    );
\timet_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(26),
      Q => timet(26)
    );
\timet_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(27),
      Q => timet(27)
    );
\timet_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(28),
      Q => timet(28)
    );
\timet_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(29),
      Q => timet(29)
    );
\timet_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(2),
      Q => timet(2)
    );
\timet_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(30),
      Q => timet(30)
    );
\timet_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(31),
      Q => timet(31)
    );
\timet_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(3),
      Q => timet(3)
    );
\timet_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(4),
      Q => timet(4)
    );
\timet_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(5),
      Q => timet(5)
    );
\timet_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(6),
      Q => timet(6)
    );
\timet_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(7),
      Q => timet(7)
    );
\timet_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(8),
      Q => timet(8)
    );
\timet_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(9),
      Q => timet(9)
    );
\volatility_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(96),
      Q => volatility(0)
    );
\volatility_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(106),
      Q => volatility(10)
    );
\volatility_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(107),
      Q => volatility(11)
    );
\volatility_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(108),
      Q => volatility(12)
    );
\volatility_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(109),
      Q => volatility(13)
    );
\volatility_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(110),
      Q => volatility(14)
    );
\volatility_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(111),
      Q => volatility(15)
    );
\volatility_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(112),
      Q => volatility(16)
    );
\volatility_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(113),
      Q => volatility(17)
    );
\volatility_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(114),
      Q => volatility(18)
    );
\volatility_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(115),
      Q => volatility(19)
    );
\volatility_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(97),
      Q => volatility(1)
    );
\volatility_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(116),
      Q => volatility(20)
    );
\volatility_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(117),
      Q => volatility(21)
    );
\volatility_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(118),
      Q => volatility(22)
    );
\volatility_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(119),
      Q => volatility(23)
    );
\volatility_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(120),
      Q => volatility(24)
    );
\volatility_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(121),
      Q => volatility(25)
    );
\volatility_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(122),
      Q => volatility(26)
    );
\volatility_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(123),
      Q => volatility(27)
    );
\volatility_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(124),
      Q => volatility(28)
    );
\volatility_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(125),
      Q => volatility(29)
    );
\volatility_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(98),
      Q => volatility(2)
    );
\volatility_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(126),
      Q => volatility(30)
    );
\volatility_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(127),
      Q => volatility(31)
    );
\volatility_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(99),
      Q => volatility(3)
    );
\volatility_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(100),
      Q => volatility(4)
    );
\volatility_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(101),
      Q => volatility(5)
    );
\volatility_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(102),
      Q => volatility(6)
    );
\volatility_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(103),
      Q => volatility(7)
    );
\volatility_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(104),
      Q => volatility(8)
    );
\volatility_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock,
      CE => en,
      CLR => reset,
      D => inD(105),
      Q => volatility(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PacketRegisterWrapper_0_0_PacketRegisterWrapper is
  port (
    sptprice : out STD_LOGIC_VECTOR ( 31 downto 0 );
    strike : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rate : out STD_LOGIC_VECTOR ( 31 downto 0 );
    volatility : out STD_LOGIC_VECTOR ( 31 downto 0 );
    time_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    otype : out STD_LOGIC_VECTOR ( 31 downto 0 );
    timet : out STD_LOGIC_VECTOR ( 31 downto 0 );
    hasUnusedData : out STD_LOGIC;
    BS_READY : in STD_LOGIC;
    clock : in STD_LOGIC;
    en : in STD_LOGIC;
    inD : in STD_LOGIC_VECTOR ( 223 downto 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PacketRegisterWrapper_0_0_PacketRegisterWrapper : entity is "PacketRegisterWrapper";
end design_1_PacketRegisterWrapper_0_0_PacketRegisterWrapper;

architecture STRUCTURE of design_1_PacketRegisterWrapper_0_0_PacketRegisterWrapper is
begin
PR: entity work.design_1_PacketRegisterWrapper_0_0_PacketRegister
     port map (
      BS_READY => BS_READY,
      clock => clock,
      en => en,
      hasUnusedData => hasUnusedData,
      inD(223 downto 0) => inD(223 downto 0),
      otype(31 downto 0) => otype(31 downto 0),
      rate(31 downto 0) => rate(31 downto 0),
      reset => reset,
      sptprice(31 downto 0) => sptprice(31 downto 0),
      strike(31 downto 0) => strike(31 downto 0),
      time_r(31 downto 0) => time_r(31 downto 0),
      timet(31 downto 0) => timet(31 downto 0),
      volatility(31 downto 0) => volatility(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PacketRegisterWrapper_0_0 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    en : in STD_LOGIC;
    BS_READY : in STD_LOGIC;
    inD : in STD_LOGIC_VECTOR ( 223 downto 0 );
    hasUnusedData : out STD_LOGIC;
    sptprice : out STD_LOGIC_VECTOR ( 31 downto 0 );
    strike : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rate : out STD_LOGIC_VECTOR ( 31 downto 0 );
    volatility : out STD_LOGIC_VECTOR ( 31 downto 0 );
    time_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    otype : out STD_LOGIC_VECTOR ( 31 downto 0 );
    timet : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_PacketRegisterWrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_PacketRegisterWrapper_0_0 : entity is "design_1_PacketRegisterWrapper_0_0,PacketRegisterWrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_PacketRegisterWrapper_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_PacketRegisterWrapper_0_0 : entity is "PacketRegisterWrapper,Vivado 2017.2";
end design_1_PacketRegisterWrapper_0_0;

architecture STRUCTURE of design_1_PacketRegisterWrapper_0_0 is
begin
inst: entity work.design_1_PacketRegisterWrapper_0_0_PacketRegisterWrapper
     port map (
      BS_READY => BS_READY,
      clock => clock,
      en => en,
      hasUnusedData => hasUnusedData,
      inD(223 downto 0) => inD(223 downto 0),
      otype(31 downto 0) => otype(31 downto 0),
      rate(31 downto 0) => rate(31 downto 0),
      reset => reset,
      sptprice(31 downto 0) => sptprice(31 downto 0),
      strike(31 downto 0) => strike(31 downto 0),
      time_r(31 downto 0) => time_r(31 downto 0),
      timet(31 downto 0) => timet(31 downto 0),
      volatility(31 downto 0) => volatility(31 downto 0)
    );
end STRUCTURE;
