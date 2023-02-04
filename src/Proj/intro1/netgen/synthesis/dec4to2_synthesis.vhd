--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: dec4to2_synthesis.vhd
-- /___/   /\     Timestamp: Tue Oct 06 14:17:51 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm dec4to2 -w -dir netgen/synthesis -ofmt vhdl -sim dec4to2.ngc dec4to2_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: dec4to2.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\dec4to2_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: dec4to2
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

entity dec4to2 is
  port (
    outer : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    enter : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end dec4to2;

architecture Structure of dec4to2 is
  signal enter_0_IBUF_2 : STD_LOGIC; 
  signal enter_1_IBUF_3 : STD_LOGIC; 
  signal outer_0_OBUF_8 : STD_LOGIC; 
  signal outer_1_OBUF_9 : STD_LOGIC; 
  signal outer_2_OBUF_10 : STD_LOGIC; 
  signal outer_3_OBUF_11 : STD_LOGIC; 
begin
  outer_3_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => enter_0_IBUF_2,
      I1 => enter_1_IBUF_3,
      O => outer_3_OBUF_11
    );
  outer_2_and00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => enter_0_IBUF_2,
      I1 => enter_1_IBUF_3,
      O => outer_2_OBUF_10
    );
  outer_1_and00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => enter_1_IBUF_3,
      I1 => enter_0_IBUF_2,
      O => outer_1_OBUF_9
    );
  outer_0_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => enter_0_IBUF_2,
      I1 => enter_1_IBUF_3,
      O => outer_0_OBUF_8
    );
  enter_1_IBUF : IBUF
    port map (
      I => enter(1),
      O => enter_1_IBUF_3
    );
  enter_0_IBUF : IBUF
    port map (
      I => enter(0),
      O => enter_0_IBUF_2
    );
  outer_3_OBUF : OBUF
    port map (
      I => outer_3_OBUF_11,
      O => outer(3)
    );
  outer_2_OBUF : OBUF
    port map (
      I => outer_2_OBUF_10,
      O => outer(2)
    );
  outer_1_OBUF : OBUF
    port map (
      I => outer_1_OBUF_9,
      O => outer(1)
    );
  outer_0_OBUF : OBUF
    port map (
      I => outer_0_OBUF_8,
      O => outer(0)
    );

end Structure;

