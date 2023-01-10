--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: four_bit_adder_synthesis.vhd
-- /___/   /\     Timestamp: Sat Oct 03 17:42:00 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm four_bit_adder -w -dir netgen/synthesis -ofmt vhdl -sim four_bit_adder.ngc four_bit_adder_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: four_bit_adder.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\four_bit_adder_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: four_bit_adder
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

entity four_bit_adder is
  port (
    output : out STD_LOGIC_VECTOR ( 4 downto 0 ); 
    input1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    input2 : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end four_bit_adder;

architecture Structure of four_bit_adder is
  signal input1_0_IBUF_4 : STD_LOGIC; 
  signal input1_1_IBUF_5 : STD_LOGIC; 
  signal input1_2_IBUF_6 : STD_LOGIC; 
  signal input1_3_IBUF_7 : STD_LOGIC; 
  signal input2_0_IBUF_12 : STD_LOGIC; 
  signal input2_1_IBUF_13 : STD_LOGIC; 
  signal input2_2_IBUF_14 : STD_LOGIC; 
  signal input2_3_IBUF_15 : STD_LOGIC; 
  signal output_0_OBUF_21 : STD_LOGIC; 
  signal output_1_OBUF_22 : STD_LOGIC; 
  signal output_2_OBUF_23 : STD_LOGIC; 
  signal output_3_OBUF_24 : STD_LOGIC; 
  signal output_4_OBUF_25 : STD_LOGIC; 
  signal w2 : STD_LOGIC; 
  signal w3 : STD_LOGIC; 
begin
  FA1_H1_Mxor_sum_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => input2_0_IBUF_12,
      I1 => input1_0_IBUF_4,
      O => output_0_OBUF_21
    );
  FA2_H2_Mxor_sum_Result1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => input1_0_IBUF_4,
      I1 => input2_0_IBUF_12,
      I2 => input2_1_IBUF_13,
      I3 => input1_1_IBUF_5,
      O => output_1_OBUF_22
    );
  FA3_H2_Mxor_sum_Result1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => input1_2_IBUF_6,
      I1 => input2_2_IBUF_14,
      I2 => w2,
      O => output_2_OBUF_23
    );
  FA4_b_out_1_or00001 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => input2_3_IBUF_15,
      I1 => w3,
      I2 => input1_3_IBUF_7,
      O => output_4_OBUF_25
    );
  FA3_b_out_1_or00001 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => input2_2_IBUF_14,
      I1 => w2,
      I2 => input1_2_IBUF_6,
      O => w3
    );
  FA4_H2_Mxor_sum_Result1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => input1_3_IBUF_7,
      I1 => input2_3_IBUF_15,
      I2 => w3,
      O => output_3_OBUF_24
    );
  FA2_b_out_1_or00001 : LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      I0 => input1_1_IBUF_5,
      I1 => input1_0_IBUF_4,
      I2 => input2_0_IBUF_12,
      I3 => input2_1_IBUF_13,
      O => w2
    );
  input1_3_IBUF : IBUF
    port map (
      I => input1(3),
      O => input1_3_IBUF_7
    );
  input1_2_IBUF : IBUF
    port map (
      I => input1(2),
      O => input1_2_IBUF_6
    );
  input1_1_IBUF : IBUF
    port map (
      I => input1(1),
      O => input1_1_IBUF_5
    );
  input1_0_IBUF : IBUF
    port map (
      I => input1(0),
      O => input1_0_IBUF_4
    );
  input2_3_IBUF : IBUF
    port map (
      I => input2(3),
      O => input2_3_IBUF_15
    );
  input2_2_IBUF : IBUF
    port map (
      I => input2(2),
      O => input2_2_IBUF_14
    );
  input2_1_IBUF : IBUF
    port map (
      I => input2(1),
      O => input2_1_IBUF_13
    );
  input2_0_IBUF : IBUF
    port map (
      I => input2(0),
      O => input2_0_IBUF_12
    );
  output_4_OBUF : OBUF
    port map (
      I => output_4_OBUF_25,
      O => output(4)
    );
  output_3_OBUF : OBUF
    port map (
      I => output_3_OBUF_24,
      O => output(3)
    );
  output_2_OBUF : OBUF
    port map (
      I => output_2_OBUF_23,
      O => output(2)
    );
  output_1_OBUF : OBUF
    port map (
      I => output_1_OBUF_22,
      O => output(1)
    );
  output_0_OBUF : OBUF
    port map (
      I => output_0_OBUF_21,
      O => output(0)
    );

end Structure;

