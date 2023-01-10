--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: FA_DELAY_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 19 21:43:09 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm FA_DELAY -w -dir netgen/synthesis -ofmt vhdl -sim FA_DELAY.ngc FA_DELAY_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: FA_DELAY.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\FA_DELAY_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: FA_DELAY
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

entity FA_DELAY is
  port (
    fasum : out STD_LOGIC; 
    facarry : out STD_LOGIC; 
    fainput : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end FA_DELAY;

architecture Structure of FA_DELAY is
  signal facarry_OBUF_1 : STD_LOGIC; 
  signal fainput_0_IBUF_5 : STD_LOGIC; 
  signal fainput_1_IBUF_6 : STD_LOGIC; 
  signal fainput_2_IBUF_7 : STD_LOGIC; 
  signal fasum_OBUF_9 : STD_LOGIC; 
begin
  OR1_oroutput1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => fainput_1_IBUF_6,
      I1 => fainput_2_IBUF_7,
      I2 => fainput_0_IBUF_5,
      O => facarry_OBUF_1
    );
  HA2_xor1_or1_oroutput1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => fainput_0_IBUF_5,
      I1 => fainput_1_IBUF_6,
      I2 => fainput_2_IBUF_7,
      O => fasum_OBUF_9
    );
  fainput_2_IBUF : IBUF
    port map (
      I => fainput(2),
      O => fainput_2_IBUF_7
    );
  fainput_1_IBUF : IBUF
    port map (
      I => fainput(1),
      O => fainput_1_IBUF_6
    );
  fainput_0_IBUF : IBUF
    port map (
      I => fainput(0),
      O => fainput_0_IBUF_5
    );
  fasum_OBUF : OBUF
    port map (
      I => fasum_OBUF_9,
      O => fasum
    );
  facarry_OBUF : OBUF
    port map (
      I => facarry_OBUF_1,
      O => facarry
    );

end Structure;

