-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:BlkSchlsEqEuroNoDiv:1.0
-- IP Revision: 1811042353

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_BlkSchlsEqEuroNoDiv_0_0 IS
  PORT (
    sptprice : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    strike : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rate : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    volatility : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    time_r : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    otype : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    timet : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ap_done : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC
  );
END design_1_BlkSchlsEqEuroNoDiv_0_0;

ARCHITECTURE design_1_BlkSchlsEqEuroNoDiv_0_0_arch OF design_1_BlkSchlsEqEuroNoDiv_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_BlkSchlsEqEuroNoDiv_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT BlkSchlsEqEuroNoDiv IS
    PORT (
      sptprice : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      strike : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      rate : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      volatility : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      time_r : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      otype : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      timet : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ap_done : OUT STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC
    );
  END COMPONENT BlkSchlsEqEuroNoDiv;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF sptprice: SIGNAL IS "xilinx.com:signal:data:1.0 sptprice DATA";
  ATTRIBUTE X_INTERFACE_INFO OF strike: SIGNAL IS "xilinx.com:signal:data:1.0 strike DATA";
  ATTRIBUTE X_INTERFACE_INFO OF rate: SIGNAL IS "xilinx.com:signal:data:1.0 rate DATA";
  ATTRIBUTE X_INTERFACE_INFO OF volatility: SIGNAL IS "xilinx.com:signal:data:1.0 volatility DATA";
  ATTRIBUTE X_INTERFACE_INFO OF time_r: SIGNAL IS "xilinx.com:signal:data:1.0 time_r DATA";
  ATTRIBUTE X_INTERFACE_INFO OF otype: SIGNAL IS "xilinx.com:signal:data:1.0 otype DATA";
  ATTRIBUTE X_INTERFACE_INFO OF timet: SIGNAL IS "xilinx.com:signal:data:1.0 timet DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF ap_return: SIGNAL IS "xilinx.com:signal:data:1.0 ap_return DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
BEGIN
  U0 : BlkSchlsEqEuroNoDiv
    PORT MAP (
      sptprice => sptprice,
      strike => strike,
      rate => rate,
      volatility => volatility,
      time_r => time_r,
      otype => otype,
      timet => timet,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_return => ap_return,
      ap_done => ap_done,
      ap_start => ap_start,
      ap_ready => ap_ready,
      ap_idle => ap_idle
    );
END design_1_BlkSchlsEqEuroNoDiv_0_0_arch;
