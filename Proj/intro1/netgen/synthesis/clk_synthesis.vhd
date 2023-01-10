--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: clk_synthesis.vhd
-- /___/   /\     Timestamp: Sun Nov 08 21:38:59 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm clk -w -dir netgen/synthesis -ofmt vhdl -sim clk.ngc clk_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: clk.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\clk_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: clk
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

entity clk is
  port (
    clk : in STD_LOGIC := 'X'; 
    out1 : out STD_LOGIC 
  );
end clk;

architecture Structure of clk is
  signal out1_OBUF_2 : STD_LOGIC; 
begin
  clk_IBUF : IBUF
    port map (
      I => clk,
      O => out1_OBUF_2
    );
  out1_OBUF : OBUF
    port map (
      I => out1_OBUF_2,
      O => out1
    );

end Structure;

