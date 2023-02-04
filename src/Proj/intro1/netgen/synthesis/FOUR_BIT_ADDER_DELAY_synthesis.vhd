--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: FOUR_BIT_ADDER_DELAY_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 19 22:29:47 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm FOUR_BIT_ADDER_DELAY -w -dir netgen/synthesis -ofmt vhdl -sim FOUR_BIT_ADDER_DELAY.ngc FOUR_BIT_ADDER_DELAY_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: FOUR_BIT_ADDER_DELAY.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\FOUR_BIT_ADDER_DELAY_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: FOUR_BIT_ADDER_DELAY
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

entity FOUR_BIT_ADDER_DELAY is
  port (
    fouradderoutput : out STD_LOGIC_VECTOR ( 4 downto 0 ); 
    fouradderinput1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    fouradderinput2 : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end FOUR_BIT_ADDER_DELAY;

architecture Structure of FOUR_BIT_ADDER_DELAY is
  signal fouradderinput1_0_IBUF_4 : STD_LOGIC; 
  signal fouradderinput1_1_IBUF_5 : STD_LOGIC; 
  signal fouradderinput1_2_IBUF_6 : STD_LOGIC; 
  signal fouradderinput1_3_IBUF_7 : STD_LOGIC; 
  signal fouradderinput2_0_IBUF_12 : STD_LOGIC; 
  signal fouradderinput2_1_IBUF_13 : STD_LOGIC; 
  signal fouradderinput2_2_IBUF_14 : STD_LOGIC; 
  signal fouradderinput2_3_IBUF_15 : STD_LOGIC; 
  signal fouradderoutput_0_OBUF_21 : STD_LOGIC; 
  signal fouradderoutput_1_OBUF_22 : STD_LOGIC; 
  signal fouradderoutput_2_OBUF_23 : STD_LOGIC; 
  signal fouradderoutput_3_OBUF_24 : STD_LOGIC; 
  signal fouradderoutput_4_OBUF_25 : STD_LOGIC; 
  signal w2 : STD_LOGIC; 
  signal w3 : STD_LOGIC; 
begin
  FA1_HA1_xor1_or1_oroutput1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => fouradderinput1_0_IBUF_4,
      I1 => fouradderinput2_0_IBUF_12,
      O => fouradderoutput_0_OBUF_21
    );
  FA2_HA2_xor1_or1_oroutput1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => fouradderinput1_0_IBUF_4,
      I1 => fouradderinput2_0_IBUF_12,
      I2 => fouradderinput2_1_IBUF_13,
      I3 => fouradderinput1_1_IBUF_5,
      O => fouradderoutput_1_OBUF_22
    );
  FA3_HA2_xor1_or1_oroutput1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => fouradderinput1_2_IBUF_6,
      I1 => fouradderinput2_2_IBUF_14,
      I2 => w2,
      O => fouradderoutput_2_OBUF_23
    );
  FA4_OR1_oroutput1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => fouradderinput2_3_IBUF_15,
      I1 => w3,
      I2 => fouradderinput1_3_IBUF_7,
      O => fouradderoutput_4_OBUF_25
    );
  FA3_OR1_oroutput1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => fouradderinput2_2_IBUF_14,
      I1 => w2,
      I2 => fouradderinput1_2_IBUF_6,
      O => w3
    );
  FA4_HA2_xor1_or1_oroutput1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => fouradderinput1_3_IBUF_7,
      I1 => fouradderinput2_3_IBUF_15,
      I2 => w3,
      O => fouradderoutput_3_OBUF_24
    );
  FA2_OR1_oroutput1 : LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      I0 => fouradderinput1_1_IBUF_5,
      I1 => fouradderinput1_0_IBUF_4,
      I2 => fouradderinput2_0_IBUF_12,
      I3 => fouradderinput2_1_IBUF_13,
      O => w2
    );
  fouradderinput1_3_IBUF : IBUF
    port map (
      I => fouradderinput1(3),
      O => fouradderinput1_3_IBUF_7
    );
  fouradderinput1_2_IBUF : IBUF
    port map (
      I => fouradderinput1(2),
      O => fouradderinput1_2_IBUF_6
    );
  fouradderinput1_1_IBUF : IBUF
    port map (
      I => fouradderinput1(1),
      O => fouradderinput1_1_IBUF_5
    );
  fouradderinput1_0_IBUF : IBUF
    port map (
      I => fouradderinput1(0),
      O => fouradderinput1_0_IBUF_4
    );
  fouradderinput2_3_IBUF : IBUF
    port map (
      I => fouradderinput2(3),
      O => fouradderinput2_3_IBUF_15
    );
  fouradderinput2_2_IBUF : IBUF
    port map (
      I => fouradderinput2(2),
      O => fouradderinput2_2_IBUF_14
    );
  fouradderinput2_1_IBUF : IBUF
    port map (
      I => fouradderinput2(1),
      O => fouradderinput2_1_IBUF_13
    );
  fouradderinput2_0_IBUF : IBUF
    port map (
      I => fouradderinput2(0),
      O => fouradderinput2_0_IBUF_12
    );
  fouradderoutput_4_OBUF : OBUF
    port map (
      I => fouradderoutput_4_OBUF_25,
      O => fouradderoutput(4)
    );
  fouradderoutput_3_OBUF : OBUF
    port map (
      I => fouradderoutput_3_OBUF_24,
      O => fouradderoutput(3)
    );
  fouradderoutput_2_OBUF : OBUF
    port map (
      I => fouradderoutput_2_OBUF_23,
      O => fouradderoutput(2)
    );
  fouradderoutput_1_OBUF : OBUF
    port map (
      I => fouradderoutput_1_OBUF_22,
      O => fouradderoutput(1)
    );
  fouradderoutput_0_OBUF : OBUF
    port map (
      I => fouradderoutput_0_OBUF_21,
      O => fouradderoutput(0)
    );

end Structure;

