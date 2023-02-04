--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: seg7_synthesis.vhd
-- /___/   /\     Timestamp: Tue Oct 13 00:04:17 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm seg7 -w -dir netgen/synthesis -ofmt vhdl -sim seg7.ngc seg7_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: seg7.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\seg7_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: seg7
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

entity seg7 is
  port (
    a : in STD_LOGIC := 'X'; 
    b : in STD_LOGIC := 'X'; 
    c : in STD_LOGIC := 'X'; 
    d : in STD_LOGIC := 'X'; 
    sout : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end seg7;

architecture Structure of seg7 is
  signal a_IBUF_1 : STD_LOGIC; 
  signal b_IBUF_3 : STD_LOGIC; 
  signal c_IBUF_5 : STD_LOGIC; 
  signal d_IBUF_7 : STD_LOGIC; 
  signal sout_0_OBUF_15 : STD_LOGIC; 
  signal sout_1_OBUF_16 : STD_LOGIC; 
  signal sout_2_OBUF_17 : STD_LOGIC; 
  signal sout_3_OBUF_18 : STD_LOGIC; 
  signal sout_4_OBUF_19 : STD_LOGIC; 
  signal sout_5_OBUF_20 : STD_LOGIC; 
  signal sout_6_OBUF_21 : STD_LOGIC; 
begin
  sout_6_or00001 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => a_IBUF_1,
      I1 => b_IBUF_3,
      I2 => d_IBUF_7,
      O => sout_6_OBUF_21
    );
  sout_4_or00001 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => d_IBUF_7,
      I1 => c_IBUF_5,
      I2 => b_IBUF_3,
      O => sout_4_OBUF_19
    );
  sout_1_or00001 : LUT3
    generic map(
      INIT => X"D7"
    )
    port map (
      I0 => b_IBUF_3,
      I1 => d_IBUF_7,
      I2 => c_IBUF_5,
      O => sout_1_OBUF_16
    );
  sout_5_or00001 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => d_IBUF_7,
      I1 => c_IBUF_5,
      I2 => b_IBUF_3,
      I3 => a_IBUF_1,
      O => sout_5_OBUF_20
    );
  sout_3_or00001 : LUT4
    generic map(
      INIT => X"FF6E"
    )
    port map (
      I0 => b_IBUF_3,
      I1 => c_IBUF_5,
      I2 => d_IBUF_7,
      I3 => a_IBUF_1,
      O => sout_3_OBUF_18
    );
  sout_2_or00001 : LUT4
    generic map(
      INIT => X"FF71"
    )
    port map (
      I0 => c_IBUF_5,
      I1 => d_IBUF_7,
      I2 => b_IBUF_3,
      I3 => a_IBUF_1,
      O => sout_2_OBUF_17
    );
  sout_0_or00001 : LUT4
    generic map(
      INIT => X"8FF9"
    )
    port map (
      I0 => b_IBUF_3,
      I1 => d_IBUF_7,
      I2 => a_IBUF_1,
      I3 => c_IBUF_5,
      O => sout_0_OBUF_15
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
  c_IBUF : IBUF
    port map (
      I => c,
      O => c_IBUF_5
    );
  d_IBUF : IBUF
    port map (
      I => d,
      O => d_IBUF_7
    );
  sout_6_OBUF : OBUF
    port map (
      I => sout_6_OBUF_21,
      O => sout(6)
    );
  sout_5_OBUF : OBUF
    port map (
      I => sout_5_OBUF_20,
      O => sout(5)
    );
  sout_4_OBUF : OBUF
    port map (
      I => sout_4_OBUF_19,
      O => sout(4)
    );
  sout_3_OBUF : OBUF
    port map (
      I => sout_3_OBUF_18,
      O => sout(3)
    );
  sout_2_OBUF : OBUF
    port map (
      I => sout_2_OBUF_17,
      O => sout(2)
    );
  sout_1_OBUF : OBUF
    port map (
      I => sout_1_OBUF_16,
      O => sout(1)
    );
  sout_0_OBUF : OBUF
    port map (
      I => sout_0_OBUF_15,
      O => sout(0)
    );

end Structure;

