--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: detect1100_synthesis.vhd
-- /___/   /\     Timestamp: Sat Dec 19 07:04:42 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm detect1100 -w -dir netgen/synthesis -ofmt vhdl -sim detect1100.ngc detect1100_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: detect1100.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\detect1100_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: detect1100
-- Xilinx	: E:\ISE\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity detect1100 is
  port (
    clk : in STD_LOGIC := 'X'; 
    x : in STD_LOGIC := 'X'; 
    y : out STD_LOGIC 
  );
end detect1100;

architecture Structure of detect1100 is
  signal D0_q_0 : STD_LOGIC; 
  signal D0_qbar_1 : STD_LOGIC; 
  signal D0_qbar_mux0001 : STD_LOGIC; 
  signal D1_q_3 : STD_LOGIC; 
  signal D1_qbar_4 : STD_LOGIC; 
  signal D1_qbar_mux0001 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal clk_BUFGP_11 : STD_LOGIC; 
  signal q0_12 : STD_LOGIC; 
  signal q0_or0000_13 : STD_LOGIC; 
  signal q1_14 : STD_LOGIC; 
  signal q1_or0000_15 : STD_LOGIC; 
  signal x_IBUF_17 : STD_LOGIC; 
  signal y_OBUF_19 : STD_LOGIC; 
  signal y_and00001 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  q0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_11,
      D => q0_or0000_13,
      Q => q0_12
    );
  q1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_11,
      D => q1_or0000_15,
      Q => q1_14
    );
  D1_qbar : FDP
    port map (
      C => clk_BUFGP_11,
      D => D1_qbar_mux0001,
      PRE => N0,
      Q => D1_qbar_4
    );
  D1_q : FDC
    port map (
      C => clk_BUFGP_11,
      CLR => N0,
      D => q1_14,
      Q => D1_q_3
    );
  D0_qbar : FDP
    port map (
      C => clk_BUFGP_11,
      D => D0_qbar_mux0001,
      PRE => N0,
      Q => D0_qbar_1
    );
  D0_q : FDC
    port map (
      C => clk_BUFGP_11,
      CLR => N0,
      D => q0_12,
      Q => D0_q_0
    );
  q1_or0000 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => D1_qbar_4,
      I1 => D0_qbar_1,
      I2 => D1_q_3,
      I3 => N11,
      O => q1_or0000_15
    );
  x_IBUF : IBUF
    port map (
      I => x,
      O => x_IBUF_17
    );
  y_OBUF : OBUF
    port map (
      I => y_OBUF_19,
      O => y
    );
  y_11 : FDR
    port map (
      C => clk_BUFGP_11,
      D => y_and00001,
      R => x_IBUF_17,
      Q => y_OBUF_19
    );
  y_and000011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => D1_q_3,
      I1 => D0_q_0,
      O => y_and00001
    );
  q0_or0000 : MUXF5
    port map (
      I0 => N6,
      I1 => N7,
      S => D0_q_0,
      O => q0_or0000_13
    );
  q0_or0000_F : LUT4
    generic map(
      INIT => X"8A80"
    )
    port map (
      I0 => D0_qbar_1,
      I1 => D1_qbar_4,
      I2 => x_IBUF_17,
      I3 => D1_q_3,
      O => N6
    );
  q0_or0000_G : LUT4
    generic map(
      INIT => X"FA80"
    )
    port map (
      I0 => x_IBUF_17,
      I1 => D1_qbar_4,
      I2 => D0_qbar_1,
      I3 => D1_q_3,
      O => N7
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_11
    );
  D1_qbar_mux00011_INV_0 : INV
    port map (
      I => q1_14,
      O => D1_qbar_mux0001
    );
  D0_qbar_mux00011_INV_0 : INV
    port map (
      I => q0_12,
      O => D0_qbar_mux0001
    );
  q1_or0000_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => x_IBUF_17,
      I1 => D0_q_0,
      LO => N11
    );

end Structure;

