-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Wed Oct 24 11:01:19 2018
-- Host        : liberty.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_BlkSchlsEqEuroNoDiv_0_0_stub.vhdl
-- Design      : design_1_BlkSchlsEqEuroNoDiv_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    sptprice : in STD_LOGIC_VECTOR ( 31 downto 0 );
    strike : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    volatility : in STD_LOGIC_VECTOR ( 31 downto 0 );
    time_r : in STD_LOGIC_VECTOR ( 31 downto 0 );
    otype : in STD_LOGIC_VECTOR ( 31 downto 0 );
    timet : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_done : out STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_idle : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sptprice[31:0],strike[31:0],rate[31:0],volatility[31:0],time_r[31:0],otype[31:0],timet[31:0],ap_clk,ap_rst,ap_return[31:0],ap_done,ap_start,ap_ready,ap_idle";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "BlkSchlsEqEuroNoDiv,Vivado 2017.2";
begin
end;
