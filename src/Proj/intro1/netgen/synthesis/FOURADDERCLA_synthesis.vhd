--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: FOURADDERCLA_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 16 23:43:29 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm FOURADDERCLA -w -dir netgen/synthesis -ofmt vhdl -sim FOURADDERCLA.ngc FOURADDERCLA_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: FOURADDERCLA.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\FOURADDERCLA_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: FOURADDERCLA
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

entity FOURADDERCLA is
  port (
    fouradderclaoutput : out STD_LOGIC_VECTOR ( 4 downto 0 ); 
    fouradderclainput1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    fouradderclainput2 : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end FOURADDERCLA;

architecture Structure of FOURADDERCLA is
  signal c2 : STD_LOGIC; 
  signal c3 : STD_LOGIC; 
  signal fouradderclainput1_0_IBUF_6 : STD_LOGIC; 
  signal fouradderclainput1_1_IBUF_7 : STD_LOGIC; 
  signal fouradderclainput1_2_IBUF_8 : STD_LOGIC; 
  signal fouradderclainput1_3_IBUF_9 : STD_LOGIC; 
  signal fouradderclainput2_0_IBUF_14 : STD_LOGIC; 
  signal fouradderclainput2_1_IBUF_15 : STD_LOGIC; 
  signal fouradderclainput2_2_IBUF_16 : STD_LOGIC; 
  signal fouradderclainput2_3_IBUF_17 : STD_LOGIC; 
  signal fouradderclaoutput_0_OBUF_23 : STD_LOGIC; 
  signal fouradderclaoutput_1_OBUF_24 : STD_LOGIC; 
  signal fouradderclaoutput_2_OBUF_25 : STD_LOGIC; 
  signal fouradderclaoutput_3_OBUF_26 : STD_LOGIC; 
  signal fouradderclaoutput_4_OBUF_27 : STD_LOGIC; 
begin
  FA1_HA1_xor1_or1_oroutput1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => fouradderclainput1_0_IBUF_6,
      I1 => fouradderclainput2_0_IBUF_14,
      O => fouradderclaoutput_0_OBUF_23
    );
  FA2_HA2_xor1_or1_oroutput1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => fouradderclainput1_0_IBUF_6,
      I1 => fouradderclainput2_0_IBUF_14,
      I2 => fouradderclainput2_1_IBUF_15,
      I3 => fouradderclainput1_1_IBUF_7,
      O => fouradderclaoutput_1_OBUF_24
    );
  FA3_HA2_xor1_or1_oroutput1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => c2,
      I1 => fouradderclainput1_2_IBUF_8,
      I2 => fouradderclainput2_2_IBUF_16,
      O => fouradderclaoutput_2_OBUF_25
    );
  fouradderclaoutput_4_or00001 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => fouradderclainput1_3_IBUF_9,
      I1 => fouradderclainput2_3_IBUF_17,
      I2 => c3,
      O => fouradderclaoutput_4_OBUF_27
    );
  c31 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => fouradderclainput1_2_IBUF_8,
      I1 => fouradderclainput2_2_IBUF_16,
      I2 => c2,
      O => c3
    );
  FA4_HA2_xor1_or1_oroutput1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => c3,
      I1 => fouradderclainput1_3_IBUF_9,
      I2 => fouradderclainput2_3_IBUF_17,
      O => fouradderclaoutput_3_OBUF_26
    );
  c21 : LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      I0 => fouradderclainput1_1_IBUF_7,
      I1 => fouradderclainput1_0_IBUF_6,
      I2 => fouradderclainput2_0_IBUF_14,
      I3 => fouradderclainput2_1_IBUF_15,
      O => c2
    );
  fouradderclainput1_3_IBUF : IBUF
    port map (
      I => fouradderclainput1(3),
      O => fouradderclainput1_3_IBUF_9
    );
  fouradderclainput1_2_IBUF : IBUF
    port map (
      I => fouradderclainput1(2),
      O => fouradderclainput1_2_IBUF_8
    );
  fouradderclainput1_1_IBUF : IBUF
    port map (
      I => fouradderclainput1(1),
      O => fouradderclainput1_1_IBUF_7
    );
  fouradderclainput1_0_IBUF : IBUF
    port map (
      I => fouradderclainput1(0),
      O => fouradderclainput1_0_IBUF_6
    );
  fouradderclainput2_3_IBUF : IBUF
    port map (
      I => fouradderclainput2(3),
      O => fouradderclainput2_3_IBUF_17
    );
  fouradderclainput2_2_IBUF : IBUF
    port map (
      I => fouradderclainput2(2),
      O => fouradderclainput2_2_IBUF_16
    );
  fouradderclainput2_1_IBUF : IBUF
    port map (
      I => fouradderclainput2(1),
      O => fouradderclainput2_1_IBUF_15
    );
  fouradderclainput2_0_IBUF : IBUF
    port map (
      I => fouradderclainput2(0),
      O => fouradderclainput2_0_IBUF_14
    );
  fouradderclaoutput_4_OBUF : OBUF
    port map (
      I => fouradderclaoutput_4_OBUF_27,
      O => fouradderclaoutput(4)
    );
  fouradderclaoutput_3_OBUF : OBUF
    port map (
      I => fouradderclaoutput_3_OBUF_26,
      O => fouradderclaoutput(3)
    );
  fouradderclaoutput_2_OBUF : OBUF
    port map (
      I => fouradderclaoutput_2_OBUF_25,
      O => fouradderclaoutput(2)
    );
  fouradderclaoutput_1_OBUF : OBUF
    port map (
      I => fouradderclaoutput_1_OBUF_24,
      O => fouradderclaoutput(1)
    );
  fouradderclaoutput_0_OBUF : OBUF
    port map (
      I => fouradderclaoutput_0_OBUF_23,
      O => fouradderclaoutput(0)
    );

end Structure;

