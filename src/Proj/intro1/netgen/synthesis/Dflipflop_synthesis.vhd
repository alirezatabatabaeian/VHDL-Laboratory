--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Dflipflop_synthesis.vhd
-- /___/   /\     Timestamp: Fri Dec 18 02:56:37 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Dflipflop -w -dir netgen/synthesis -ofmt vhdl -sim Dflipflop.ngc Dflipflop_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: Dflipflop.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\Dflipflop_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Dflipflop
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

entity Dflipflop is
  port (
    clk : in STD_LOGIC := 'X'; 
    qbar : out STD_LOGIC; 
    reset : in STD_LOGIC := 'X'; 
    d : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC 
  );
end Dflipflop;

architecture Structure of Dflipflop is
  signal clk_BUFGP_1 : STD_LOGIC; 
  signal d_IBUF_3 : STD_LOGIC; 
  signal q_OBUF_5 : STD_LOGIC; 
  signal qbar_OBUF_7 : STD_LOGIC; 
  signal qbar_mux0001 : STD_LOGIC; 
  signal reset_IBUF_10 : STD_LOGIC; 
begin
  q_1 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => reset_IBUF_10,
      D => d_IBUF_3,
      Q => q_OBUF_5
    );
  qbar_2 : FDP
    port map (
      C => clk_BUFGP_1,
      D => qbar_mux0001,
      PRE => reset_IBUF_10,
      Q => qbar_OBUF_7
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_10
    );
  d_IBUF : IBUF
    port map (
      I => d,
      O => d_IBUF_3
    );
  qbar_OBUF : OBUF
    port map (
      I => qbar_OBUF_7,
      O => qbar
    );
  q_OBUF : OBUF
    port map (
      I => q_OBUF_5,
      O => q
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_1
    );
  qbar_mux00011_INV_0 : INV
    port map (
      I => d_IBUF_3,
      O => qbar_mux0001
    );

end Structure;

