--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: multi2to1_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 12 20:28:34 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm multi2to1 -w -dir netgen/synthesis -ofmt vhdl -sim multi2to1.ngc multi2to1_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: multi2to1.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\multi2to1_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: multi2to1
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

entity multi2to1 is
  port (
    o : out STD_LOGIC; 
    s : in STD_LOGIC := 'X'; 
    i : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end multi2to1;

architecture Structure of multi2to1 is
  signal i_0_IBUF_2 : STD_LOGIC; 
  signal i_1_IBUF_3 : STD_LOGIC; 
  signal o_OBUF_5 : STD_LOGIC; 
  signal s_IBUF_7 : STD_LOGIC; 
begin
  o1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => s_IBUF_7,
      I1 => i_1_IBUF_3,
      I2 => i_0_IBUF_2,
      O => o_OBUF_5
    );
  s_IBUF : IBUF
    port map (
      I => s,
      O => s_IBUF_7
    );
  i_1_IBUF : IBUF
    port map (
      I => i(1),
      O => i_1_IBUF_3
    );
  i_0_IBUF : IBUF
    port map (
      I => i(0),
      O => i_0_IBUF_2
    );
  o_OBUF : OBUF
    port map (
      I => o_OBUF_5,
      O => o
    );

end Structure;

