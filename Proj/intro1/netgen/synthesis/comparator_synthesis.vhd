--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: comparator_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 05 23:48:29 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm comparator -w -dir netgen/synthesis -ofmt vhdl -sim comparator.ngc comparator_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: comparator.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\comparator_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: comparator
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

entity comparator is
  port (
    Great : out STD_LOGIC; 
    Less : out STD_LOGIC; 
    Equal : out STD_LOGIC; 
    in1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    in2 : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end comparator;

architecture Structure of comparator is
  signal Equal1 : STD_LOGIC; 
  signal Equal11 : STD_LOGIC; 
  signal Equal_OBUF_3 : STD_LOGIC; 
  signal Equal_bdd2 : STD_LOGIC; 
  signal Great11 : STD_LOGIC; 
  signal Great111_7 : STD_LOGIC; 
  signal Great_OBUF_8 : STD_LOGIC; 
  signal Great_bdd2 : STD_LOGIC; 
  signal Less11 : STD_LOGIC; 
  signal Less111_12 : STD_LOGIC; 
  signal Less_OBUF_13 : STD_LOGIC; 
  signal Less_bdd2 : STD_LOGIC; 
  signal in1_0_IBUF_19 : STD_LOGIC; 
  signal in1_1_IBUF_20 : STD_LOGIC; 
  signal in1_2_IBUF_21 : STD_LOGIC; 
  signal in1_3_IBUF_22 : STD_LOGIC; 
  signal in2_0_IBUF_27 : STD_LOGIC; 
  signal in2_1_IBUF_28 : STD_LOGIC; 
  signal in2_2_IBUF_29 : STD_LOGIC; 
  signal in2_3_IBUF_30 : STD_LOGIC; 
begin
  Great31 : LUT4
    generic map(
      INIT => X"CF4D"
    )
    port map (
      I0 => in2_0_IBUF_27,
      I1 => in1_1_IBUF_20,
      I2 => in2_1_IBUF_28,
      I3 => in1_0_IBUF_19,
      O => Great_bdd2
    );
  Less31 : LUT4
    generic map(
      INIT => X"CF4D"
    )
    port map (
      I0 => in1_0_IBUF_19,
      I1 => in2_1_IBUF_28,
      I2 => in1_1_IBUF_20,
      I3 => in2_0_IBUF_27,
      O => Less_bdd2
    );
  Equal21 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => in1_1_IBUF_20,
      I1 => in2_1_IBUF_28,
      I2 => in1_0_IBUF_19,
      I3 => in2_0_IBUF_27,
      O => Equal_bdd2
    );
  in1_3_IBUF : IBUF
    port map (
      I => in1(3),
      O => in1_3_IBUF_22
    );
  in1_2_IBUF : IBUF
    port map (
      I => in1(2),
      O => in1_2_IBUF_21
    );
  in1_1_IBUF : IBUF
    port map (
      I => in1(1),
      O => in1_1_IBUF_20
    );
  in1_0_IBUF : IBUF
    port map (
      I => in1(0),
      O => in1_0_IBUF_19
    );
  in2_3_IBUF : IBUF
    port map (
      I => in2(3),
      O => in2_3_IBUF_30
    );
  in2_2_IBUF : IBUF
    port map (
      I => in2(2),
      O => in2_2_IBUF_29
    );
  in2_1_IBUF : IBUF
    port map (
      I => in2(1),
      O => in2_1_IBUF_28
    );
  in2_0_IBUF : IBUF
    port map (
      I => in2(0),
      O => in2_0_IBUF_27
    );
  Great_OBUF : OBUF
    port map (
      I => Great_OBUF_8,
      O => Great
    );
  Less_OBUF : OBUF
    port map (
      I => Less_OBUF_13,
      O => Less
    );
  Equal_OBUF : OBUF
    port map (
      I => Equal_OBUF_3,
      O => Equal
    );
  Less111 : LUT4
    generic map(
      INIT => X"44D4"
    )
    port map (
      I0 => in2_3_IBUF_30,
      I1 => in1_3_IBUF_22,
      I2 => in1_2_IBUF_21,
      I3 => in2_2_IBUF_29,
      O => Less11
    );
  Less112 : LUT4
    generic map(
      INIT => X"CF4D"
    )
    port map (
      I0 => in2_2_IBUF_29,
      I1 => in1_3_IBUF_22,
      I2 => in2_3_IBUF_30,
      I3 => in1_2_IBUF_21,
      O => Less111_12
    );
  Less11_f5 : MUXF5
    port map (
      I0 => Less111_12,
      I1 => Less11,
      S => Less_bdd2,
      O => Less_OBUF_13
    );
  Great111 : LUT4
    generic map(
      INIT => X"2BFF"
    )
    port map (
      I0 => in2_2_IBUF_29,
      I1 => Great_bdd2,
      I2 => in1_2_IBUF_21,
      I3 => in1_3_IBUF_22,
      O => Great11
    );
  Great112 : LUT4
    generic map(
      INIT => X"0445"
    )
    port map (
      I0 => in1_3_IBUF_22,
      I1 => in2_2_IBUF_29,
      I2 => in1_2_IBUF_21,
      I3 => Great_bdd2,
      O => Great111_7
    );
  Great11_f5 : MUXF5
    port map (
      I0 => Great111_7,
      I1 => Great11,
      S => in2_3_IBUF_30,
      O => Great_OBUF_8
    );
  Equal12 : LUT4
    generic map(
      INIT => X"8200"
    )
    port map (
      I0 => in1_3_IBUF_22,
      I1 => in1_2_IBUF_21,
      I2 => in2_2_IBUF_29,
      I3 => Equal_bdd2,
      O => Equal1
    );
  Equal13 : LUT4
    generic map(
      INIT => X"4100"
    )
    port map (
      I0 => in1_3_IBUF_22,
      I1 => in1_2_IBUF_21,
      I2 => in2_2_IBUF_29,
      I3 => Equal_bdd2,
      O => Equal11
    );
  Equal1_f5 : MUXF5
    port map (
      I0 => Equal11,
      I1 => Equal1,
      S => in2_3_IBUF_30,
      O => Equal_OBUF_3
    );

end Structure;

