--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: OR_DELAY2ns_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 19 20:27:57 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm OR_DELAY2ns -w -dir netgen/synthesis -ofmt vhdl -sim OR_DELAY2ns.ngc OR_DELAY2ns_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: OR_DELAY2ns.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\OR_DELAY2ns_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: OR_DELAY2ns
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

entity OR_DELAY2ns is
  port (
    oroutput : out STD_LOGIC; 
    orinput : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end OR_DELAY2ns;

architecture Structure of OR_DELAY2ns is
  signal orinput_0_IBUF_2 : STD_LOGIC; 
  signal orinput_1_IBUF_3 : STD_LOGIC; 
  signal oroutput_OBUF_5 : STD_LOGIC; 
begin
  oroutput1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => orinput_0_IBUF_2,
      I1 => orinput_1_IBUF_3,
      O => oroutput_OBUF_5
    );
  orinput_1_IBUF : IBUF
    port map (
      I => orinput(1),
      O => orinput_1_IBUF_3
    );
  orinput_0_IBUF : IBUF
    port map (
      I => orinput(0),
      O => orinput_0_IBUF_2
    );
  oroutput_OBUF : OBUF
    port map (
      I => oroutput_OBUF_5,
      O => oroutput
    );

end Structure;

