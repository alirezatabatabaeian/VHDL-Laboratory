--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: dec4to16_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 12 19:32:15 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm dec4to16 -w -dir netgen/synthesis -ofmt vhdl -sim dec4to16.ngc dec4to16_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: dec4to16.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\dec4to16_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: dec4to16
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

entity dec4to16 is
  port (
    enabler : in STD_LOGIC := 'X'; 
    outer : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    enter : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end dec4to16;

architecture Structure of dec4to16 is
  signal enabler_IBUF_1 : STD_LOGIC; 
  signal enter_0_IBUF_5 : STD_LOGIC; 
  signal enter_1_IBUF_6 : STD_LOGIC; 
  signal enter_2_IBUF_7 : STD_LOGIC; 
  signal outer_0_OBUF_16 : STD_LOGIC; 
  signal outer_1_OBUF_17 : STD_LOGIC; 
  signal outer_2_OBUF_18 : STD_LOGIC; 
  signal outer_3_OBUF_19 : STD_LOGIC; 
  signal outer_4_OBUF_20 : STD_LOGIC; 
  signal outer_5_OBUF_21 : STD_LOGIC; 
  signal outer_6_OBUF_22 : STD_LOGIC; 
  signal outer_7_OBUF_23 : STD_LOGIC; 
begin
  outer_7_and00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => enabler_IBUF_1,
      I1 => enter_0_IBUF_5,
      I2 => enter_1_IBUF_6,
      I3 => enter_2_IBUF_7,
      O => outer_7_OBUF_23
    );
  outer_6_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => enabler_IBUF_1,
      I1 => enter_0_IBUF_5,
      I2 => enter_1_IBUF_6,
      I3 => enter_2_IBUF_7,
      O => outer_6_OBUF_22
    );
  outer_5_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => enter_0_IBUF_5,
      I1 => enter_1_IBUF_6,
      I2 => enabler_IBUF_1,
      I3 => enter_2_IBUF_7,
      O => outer_5_OBUF_21
    );
  outer_4_and00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => enabler_IBUF_1,
      I1 => enter_0_IBUF_5,
      I2 => enter_1_IBUF_6,
      I3 => enter_2_IBUF_7,
      O => outer_4_OBUF_20
    );
  outer_3_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => enabler_IBUF_1,
      I1 => enter_2_IBUF_7,
      I2 => enter_0_IBUF_5,
      I3 => enter_1_IBUF_6,
      O => outer_3_OBUF_19
    );
  outer_2_and00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => enabler_IBUF_1,
      I1 => enter_0_IBUF_5,
      I2 => enter_2_IBUF_7,
      I3 => enter_1_IBUF_6,
      O => outer_2_OBUF_18
    );
  outer_1_and00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => enter_0_IBUF_5,
      I1 => enter_2_IBUF_7,
      I2 => enter_1_IBUF_6,
      I3 => enabler_IBUF_1,
      O => outer_1_OBUF_17
    );
  outer_0_and00001 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => enter_0_IBUF_5,
      I1 => enabler_IBUF_1,
      I2 => enter_2_IBUF_7,
      I3 => enter_1_IBUF_6,
      O => outer_0_OBUF_16
    );
  enabler_IBUF : IBUF
    port map (
      I => enabler,
      O => enabler_IBUF_1
    );
  enter_2_IBUF : IBUF
    port map (
      I => enter(2),
      O => enter_2_IBUF_7
    );
  enter_1_IBUF : IBUF
    port map (
      I => enter(1),
      O => enter_1_IBUF_6
    );
  enter_0_IBUF : IBUF
    port map (
      I => enter(0),
      O => enter_0_IBUF_5
    );
  outer_7_OBUF : OBUF
    port map (
      I => outer_7_OBUF_23,
      O => outer(7)
    );
  outer_6_OBUF : OBUF
    port map (
      I => outer_6_OBUF_22,
      O => outer(6)
    );
  outer_5_OBUF : OBUF
    port map (
      I => outer_5_OBUF_21,
      O => outer(5)
    );
  outer_4_OBUF : OBUF
    port map (
      I => outer_4_OBUF_20,
      O => outer(4)
    );
  outer_3_OBUF : OBUF
    port map (
      I => outer_3_OBUF_19,
      O => outer(3)
    );
  outer_2_OBUF : OBUF
    port map (
      I => outer_2_OBUF_18,
      O => outer(2)
    );
  outer_1_OBUF : OBUF
    port map (
      I => outer_1_OBUF_17,
      O => outer(1)
    );
  outer_0_OBUF : OBUF
    port map (
      I => outer_0_OBUF_16,
      O => outer(0)
    );

end Structure;

