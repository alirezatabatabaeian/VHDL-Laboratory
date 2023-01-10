--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: NOT_DELAY3ns_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 19 20:31:02 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm NOT_DELAY3ns -w -dir netgen/synthesis -ofmt vhdl -sim NOT_DELAY3ns.ngc NOT_DELAY3ns_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: NOT_DELAY3ns.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\NOT_DELAY3ns_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: NOT_DELAY3ns
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

entity NOT_DELAY3ns is
  port (
    notoutput : out STD_LOGIC; 
    notinput : in STD_LOGIC := 'X' 
  );
end NOT_DELAY3ns;

architecture Structure of NOT_DELAY3ns is
  signal notinput_IBUF_1 : STD_LOGIC; 
  signal notoutput_OBUF_3 : STD_LOGIC; 
begin
  notinput_IBUF : IBUF
    port map (
      I => notinput,
      O => notinput_IBUF_1
    );
  notoutput_OBUF : OBUF
    port map (
      I => notoutput_OBUF_3,
      O => notoutput
    );
  notoutput1_INV_0 : INV
    port map (
      I => notinput_IBUF_1,
      O => notoutput_OBUF_3
    );

end Structure;

