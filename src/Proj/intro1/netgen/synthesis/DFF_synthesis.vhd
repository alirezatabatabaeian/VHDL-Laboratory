--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: DFF_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 16 23:45:45 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm DFF -w -dir netgen/synthesis -ofmt vhdl -sim DFF.ngc DFF_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: DFF.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\DFF_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: DFF
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

entity DFF is
  port (
    clk : in STD_LOGIC := 'X'; 
    qbar : out STD_LOGIC; 
    reset : in STD_LOGIC := 'X'; 
    d : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC 
  );
end DFF;

architecture Structure of DFF is
  signal N1 : STD_LOGIC; 
  signal clk_BUFGP_2 : STD_LOGIC; 
  signal d_IBUF_4 : STD_LOGIC; 
  signal q_OBUF_6 : STD_LOGIC; 
  signal q_or0000 : STD_LOGIC; 
  signal qbar_OBUF_9 : STD_LOGIC; 
  signal qbar_or0000 : STD_LOGIC; 
  signal reset_IBUF_12 : STD_LOGIC; 
begin
  XST_VCC : VCC
    port map (
      P => N1
    );
  q_2 : FDR
    port map (
      C => clk_BUFGP_2,
      D => N1,
      R => q_or0000,
      Q => q_OBUF_6
    );
  qbar_3 : FDR
    port map (
      C => clk_BUFGP_2,
      D => N1,
      R => qbar_or0000,
      Q => qbar_OBUF_9
    );
  qbar_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset_IBUF_12,
      I1 => d_IBUF_4,
      O => qbar_or0000
    );
  q_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => d_IBUF_4,
      I1 => reset_IBUF_12,
      O => q_or0000
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_12
    );
  d_IBUF : IBUF
    port map (
      I => d,
      O => d_IBUF_4
    );
  qbar_OBUF : OBUF
    port map (
      I => qbar_OBUF_9,
      O => qbar
    );
  q_OBUF : OBUF
    port map (
      I => q_OBUF_6,
      O => q
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_2
    );

end Structure;

