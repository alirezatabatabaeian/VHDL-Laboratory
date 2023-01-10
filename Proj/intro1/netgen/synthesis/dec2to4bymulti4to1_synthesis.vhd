--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: dec2to4bymulti4to1_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 12 22:50:13 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm dec2to4bymulti4to1 -w -dir netgen/synthesis -ofmt vhdl -sim dec2to4bymulti4to1.ngc dec2to4bymulti4to1_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: dec2to4bymulti4to1.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\dec2to4bymulti4to1_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: dec2to4bymulti4to1
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

entity dec2to4bymulti4to1 is
  port (
    outo : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    into : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end dec2to4bymulti4to1;

architecture Structure of dec2to4bymulti4to1 is
  signal into_0_IBUF_2 : STD_LOGIC; 
  signal into_1_IBUF_3 : STD_LOGIC; 
  signal outo_0_OBUF_8 : STD_LOGIC; 
  signal outo_1_OBUF_9 : STD_LOGIC; 
  signal outo_2_OBUF_10 : STD_LOGIC; 
  signal outo_3_OBUF_11 : STD_LOGIC; 
begin
  mu3_output_and00031 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => into_0_IBUF_2,
      I1 => into_1_IBUF_3,
      O => outo_3_OBUF_11
    );
  mu2_output_and00021 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => into_0_IBUF_2,
      I1 => into_1_IBUF_3,
      O => outo_2_OBUF_10
    );
  mu1_output_and00011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => into_1_IBUF_3,
      I1 => into_0_IBUF_2,
      O => outo_1_OBUF_9
    );
  mu0_output_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => into_0_IBUF_2,
      I1 => into_1_IBUF_3,
      O => outo_0_OBUF_8
    );
  into_1_IBUF : IBUF
    port map (
      I => into(1),
      O => into_1_IBUF_3
    );
  into_0_IBUF : IBUF
    port map (
      I => into(0),
      O => into_0_IBUF_2
    );
  outo_3_OBUF : OBUF
    port map (
      I => outo_3_OBUF_11,
      O => outo(3)
    );
  outo_2_OBUF : OBUF
    port map (
      I => outo_2_OBUF_10,
      O => outo(2)
    );
  outo_1_OBUF : OBUF
    port map (
      I => outo_1_OBUF_9,
      O => outo(1)
    );
  outo_0_OBUF : OBUF
    port map (
      I => outo_0_OBUF_8,
      O => outo(0)
    );

end Structure;

