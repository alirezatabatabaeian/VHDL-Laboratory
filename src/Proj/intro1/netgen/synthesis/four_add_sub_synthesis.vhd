--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: four_add_sub_synthesis.vhd
-- /___/   /\     Timestamp: Sat Oct 03 21:33:54 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm four_add_sub -w -dir netgen/synthesis -ofmt vhdl -sim four_add_sub.ngc four_add_sub_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: four_add_sub.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\four_add_sub_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: four_add_sub
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

entity four_add_sub is
  port (
    sub : in STD_LOGIC := 'X'; 
    outo : out STD_LOGIC_VECTOR ( 4 downto 0 ); 
    into1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    into2 : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end four_add_sub;

architecture Structure of four_add_sub is
  signal bitadd_w1 : STD_LOGIC; 
  signal bitadd_w2 : STD_LOGIC; 
  signal bitadd_w3 : STD_LOGIC; 
  signal into1_0_IBUF_7 : STD_LOGIC; 
  signal into1_1_IBUF_8 : STD_LOGIC; 
  signal into1_2_IBUF_9 : STD_LOGIC; 
  signal into1_3_IBUF_10 : STD_LOGIC; 
  signal into2_0_IBUF_15 : STD_LOGIC; 
  signal into2_1_IBUF_16 : STD_LOGIC; 
  signal into2_2_IBUF_17 : STD_LOGIC; 
  signal into2_3_IBUF_18 : STD_LOGIC; 
  signal outo_0_OBUF_24 : STD_LOGIC; 
  signal outo_1_OBUF_25 : STD_LOGIC; 
  signal outo_2_OBUF_26 : STD_LOGIC; 
  signal outo_3_OBUF_27 : STD_LOGIC; 
  signal outo_4_OBUF_28 : STD_LOGIC; 
  signal sub_IBUF_30 : STD_LOGIC; 
begin
  bitadd_FA1_H2_Mxor_sum_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => into1_0_IBUF_7,
      I1 => into2_0_IBUF_15,
      O => outo_0_OBUF_24
    );
  bitadd_FA2_H2_Mxor_sum_Result1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => bitadd_w1,
      I1 => into1_1_IBUF_8,
      I2 => into2_1_IBUF_16,
      I3 => sub_IBUF_30,
      O => outo_1_OBUF_25
    );
  bitadd_FA3_H2_Mxor_sum_Result1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => bitadd_w2,
      I1 => into1_2_IBUF_9,
      I2 => into2_2_IBUF_17,
      I3 => sub_IBUF_30,
      O => outo_2_OBUF_26
    );
  bitadd_FA1_b_out_1_or00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => into2_0_IBUF_15,
      I1 => sub_IBUF_30,
      I2 => into1_0_IBUF_7,
      O => bitadd_w1
    );
  bitadd_FA4_b_out_1_or00001 : LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      I0 => bitadd_w3,
      I1 => into2_3_IBUF_18,
      I2 => sub_IBUF_30,
      I3 => into1_3_IBUF_10,
      O => outo_4_OBUF_28
    );
  bitadd_FA3_b_out_1_or00001 : LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      I0 => bitadd_w2,
      I1 => into2_2_IBUF_17,
      I2 => sub_IBUF_30,
      I3 => into1_2_IBUF_9,
      O => bitadd_w3
    );
  bitadd_FA2_b_out_1_or00001 : LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      I0 => bitadd_w1,
      I1 => into2_1_IBUF_16,
      I2 => sub_IBUF_30,
      I3 => into1_1_IBUF_8,
      O => bitadd_w2
    );
  bitadd_FA4_H2_Mxor_sum_Result1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => bitadd_w3,
      I1 => into1_3_IBUF_10,
      I2 => into2_3_IBUF_18,
      I3 => sub_IBUF_30,
      O => outo_3_OBUF_27
    );
  sub_IBUF : IBUF
    port map (
      I => sub,
      O => sub_IBUF_30
    );
  into1_3_IBUF : IBUF
    port map (
      I => into1(3),
      O => into1_3_IBUF_10
    );
  into1_2_IBUF : IBUF
    port map (
      I => into1(2),
      O => into1_2_IBUF_9
    );
  into1_1_IBUF : IBUF
    port map (
      I => into1(1),
      O => into1_1_IBUF_8
    );
  into1_0_IBUF : IBUF
    port map (
      I => into1(0),
      O => into1_0_IBUF_7
    );
  into2_3_IBUF : IBUF
    port map (
      I => into2(3),
      O => into2_3_IBUF_18
    );
  into2_2_IBUF : IBUF
    port map (
      I => into2(2),
      O => into2_2_IBUF_17
    );
  into2_1_IBUF : IBUF
    port map (
      I => into2(1),
      O => into2_1_IBUF_16
    );
  into2_0_IBUF : IBUF
    port map (
      I => into2(0),
      O => into2_0_IBUF_15
    );
  outo_4_OBUF : OBUF
    port map (
      I => outo_4_OBUF_28,
      O => outo(4)
    );
  outo_3_OBUF : OBUF
    port map (
      I => outo_3_OBUF_27,
      O => outo(3)
    );
  outo_2_OBUF : OBUF
    port map (
      I => outo_2_OBUF_26,
      O => outo(2)
    );
  outo_1_OBUF : OBUF
    port map (
      I => outo_1_OBUF_25,
      O => outo(1)
    );
  outo_0_OBUF : OBUF
    port map (
      I => outo_0_OBUF_24,
      O => outo(0)
    );

end Structure;

