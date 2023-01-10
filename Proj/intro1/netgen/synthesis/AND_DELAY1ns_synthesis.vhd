--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: AND_DELAY1ns_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 19 20:22:06 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm AND_DELAY1ns -w -dir netgen/synthesis -ofmt vhdl -sim AND_DELAY1ns.ngc AND_DELAY1ns_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: AND_DELAY1ns.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\AND_DELAY1ns_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: AND_DELAY1ns
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

entity AND_DELAY1ns is
  port (
    andoutput : out STD_LOGIC; 
    andinput : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end AND_DELAY1ns;

architecture Structure of AND_DELAY1ns is
  signal andinput_0_IBUF_2 : STD_LOGIC; 
  signal andinput_1_IBUF_3 : STD_LOGIC; 
  signal andoutput_OBUF_5 : STD_LOGIC; 
begin
  andoutput1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => andinput_0_IBUF_2,
      I1 => andinput_1_IBUF_3,
      O => andoutput_OBUF_5
    );
  andinput_1_IBUF : IBUF
    port map (
      I => andinput(1),
      O => andinput_1_IBUF_3
    );
  andinput_0_IBUF : IBUF
    port map (
      I => andinput(0),
      O => andinput_0_IBUF_2
    );
  andoutput_OBUF : OBUF
    port map (
      I => andoutput_OBUF_5,
      O => andoutput
    );

end Structure;

