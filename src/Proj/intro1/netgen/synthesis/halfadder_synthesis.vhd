--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: halfadder_synthesis.vhd
-- /___/   /\     Timestamp: Sat Oct 03 12:59:05 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm halfadder -w -dir netgen/synthesis -ofmt vhdl -sim halfadder.ngc halfadder_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: halfadder.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\halfadder_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: halfadder
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

entity halfadder is
  port (
    carry : out STD_LOGIC; 
    a : in STD_LOGIC := 'X'; 
    b : in STD_LOGIC := 'X'; 
    sum : out STD_LOGIC 
  );
end halfadder;

architecture Structure of halfadder is
  signal a_IBUF_1 : STD_LOGIC; 
  signal b_IBUF_3 : STD_LOGIC; 
  signal carry_OBUF_5 : STD_LOGIC; 
  signal sum_OBUF_7 : STD_LOGIC; 
begin
  carry1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_IBUF_1,
      I1 => b_IBUF_3,
      O => carry_OBUF_5
    );
  Mxor_sum_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_IBUF_3,
      I1 => a_IBUF_1,
      O => sum_OBUF_7
    );
  a_IBUF : IBUF
    port map (
      I => a,
      O => a_IBUF_1
    );
  b_IBUF : IBUF
    port map (
      I => b,
      O => b_IBUF_3
    );
  carry_OBUF : OBUF
    port map (
      I => carry_OBUF_5,
      O => carry
    );
  sum_OBUF : OBUF
    port map (
      I => sum_OBUF_7,
      O => sum
    );

end Structure;

