--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: HA_DELAY_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 19 21:25:25 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm HA_DELAY -w -dir netgen/synthesis -ofmt vhdl -sim HA_DELAY.ngc HA_DELAY_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: HA_DELAY.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\HA_DELAY_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: HA_DELAY
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

entity HA_DELAY is
  port (
    hasum : out STD_LOGIC; 
    hacarry : out STD_LOGIC; 
    hainput : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end HA_DELAY;

architecture Structure of HA_DELAY is
  signal hacarry_OBUF_1 : STD_LOGIC; 
  signal hainput_0_IBUF_4 : STD_LOGIC; 
  signal hainput_1_IBUF_5 : STD_LOGIC; 
  signal hasum_OBUF_7 : STD_LOGIC; 
begin
  and1_andoutput1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hainput_0_IBUF_4,
      I1 => hainput_1_IBUF_5,
      O => hacarry_OBUF_1
    );
  xor1_or1_oroutput1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => hainput_0_IBUF_4,
      I1 => hainput_1_IBUF_5,
      O => hasum_OBUF_7
    );
  hainput_1_IBUF : IBUF
    port map (
      I => hainput(1),
      O => hainput_1_IBUF_5
    );
  hainput_0_IBUF : IBUF
    port map (
      I => hainput(0),
      O => hainput_0_IBUF_4
    );
  hasum_OBUF : OBUF
    port map (
      I => hasum_OBUF_7,
      O => hasum
    );
  hacarry_OBUF : OBUF
    port map (
      I => hacarry_OBUF_1,
      O => hacarry
    );

end Structure;

