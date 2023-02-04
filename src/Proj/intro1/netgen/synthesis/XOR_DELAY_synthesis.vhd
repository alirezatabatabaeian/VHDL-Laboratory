--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: XOR_DELAY_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 19 21:02:58 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm XOR_DELAY -w -dir netgen/synthesis -ofmt vhdl -sim XOR_DELAY.ngc XOR_DELAY_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: XOR_DELAY.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\XOR_DELAY_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: XOR_DELAY
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

entity XOR_DELAY is
  port (
    xoroutput : out STD_LOGIC; 
    xorinput : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end XOR_DELAY;

architecture Structure of XOR_DELAY is
  signal xorinput_0_IBUF_2 : STD_LOGIC; 
  signal xorinput_1_IBUF_3 : STD_LOGIC; 
  signal xoroutput_OBUF_5 : STD_LOGIC; 
begin
  or1_oroutput1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => xorinput_0_IBUF_2,
      I1 => xorinput_1_IBUF_3,
      O => xoroutput_OBUF_5
    );
  xorinput_1_IBUF : IBUF
    port map (
      I => xorinput(1),
      O => xorinput_1_IBUF_3
    );
  xorinput_0_IBUF : IBUF
    port map (
      I => xorinput(0),
      O => xorinput_0_IBUF_2
    );
  xoroutput_OBUF : OBUF
    port map (
      I => xoroutput_OBUF_5,
      O => xoroutput
    );

end Structure;

