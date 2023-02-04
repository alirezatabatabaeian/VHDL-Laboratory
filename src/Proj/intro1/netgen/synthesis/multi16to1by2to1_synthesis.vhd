--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: multi16to1by2to1_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 12 21:16:18 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm multi16to1by2to1 -w -dir netgen/synthesis -ofmt vhdl -sim multi16to1by2to1.ngc multi16to1by2to1_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: multi16to1by2to1.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\multi16to1by2to1_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: multi16to1by2to1
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

entity multi16to1by2to1 is
  port (
    output : out STD_LOGIC; 
    selector : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    input : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end multi16to1by2to1;

architecture Structure of multi16to1by2to1 is
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal input_0_IBUF_22 : STD_LOGIC; 
  signal input_10_IBUF_23 : STD_LOGIC; 
  signal input_11_IBUF_24 : STD_LOGIC; 
  signal input_12_IBUF_25 : STD_LOGIC; 
  signal input_13_IBUF_26 : STD_LOGIC; 
  signal input_14_IBUF_27 : STD_LOGIC; 
  signal input_15_IBUF_28 : STD_LOGIC; 
  signal input_1_IBUF_29 : STD_LOGIC; 
  signal input_2_IBUF_30 : STD_LOGIC; 
  signal input_3_IBUF_31 : STD_LOGIC; 
  signal input_4_IBUF_32 : STD_LOGIC; 
  signal input_5_IBUF_33 : STD_LOGIC; 
  signal input_6_IBUF_34 : STD_LOGIC; 
  signal input_7_IBUF_35 : STD_LOGIC; 
  signal input_8_IBUF_36 : STD_LOGIC; 
  signal input_9_IBUF_37 : STD_LOGIC; 
  signal mu14_o148_38 : STD_LOGIC; 
  signal mu14_o163_39 : STD_LOGIC; 
  signal mu14_o220_40 : STD_LOGIC; 
  signal mu14_o278 : STD_LOGIC; 
  signal mu14_o2781_42 : STD_LOGIC; 
  signal mu14_o44_43 : STD_LOGIC; 
  signal mu14_o99_44 : STD_LOGIC; 
  signal output_OBUF_46 : STD_LOGIC; 
  signal selector_0_IBUF_51 : STD_LOGIC; 
  signal selector_1_IBUF_52 : STD_LOGIC; 
  signal selector_2_IBUF_53 : STD_LOGIC; 
  signal selector_3_IBUF_54 : STD_LOGIC; 
begin
  mu14_o148 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => selector_2_IBUF_53,
      I1 => selector_3_IBUF_54,
      I2 => input_6_IBUF_34,
      I3 => input_14_IBUF_27,
      O => mu14_o148_38
    );
  mu14_o163 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => selector_3_IBUF_54,
      I1 => input_2_IBUF_30,
      I2 => selector_2_IBUF_53,
      I3 => input_10_IBUF_23,
      O => mu14_o163_39
    );
  selector_3_IBUF : IBUF
    port map (
      I => selector(3),
      O => selector_3_IBUF_54
    );
  selector_2_IBUF : IBUF
    port map (
      I => selector(2),
      O => selector_2_IBUF_53
    );
  selector_1_IBUF : IBUF
    port map (
      I => selector(1),
      O => selector_1_IBUF_52
    );
  selector_0_IBUF : IBUF
    port map (
      I => selector(0),
      O => selector_0_IBUF_51
    );
  input_15_IBUF : IBUF
    port map (
      I => input(15),
      O => input_15_IBUF_28
    );
  input_14_IBUF : IBUF
    port map (
      I => input(14),
      O => input_14_IBUF_27
    );
  input_13_IBUF : IBUF
    port map (
      I => input(13),
      O => input_13_IBUF_26
    );
  input_12_IBUF : IBUF
    port map (
      I => input(12),
      O => input_12_IBUF_25
    );
  input_11_IBUF : IBUF
    port map (
      I => input(11),
      O => input_11_IBUF_24
    );
  input_10_IBUF : IBUF
    port map (
      I => input(10),
      O => input_10_IBUF_23
    );
  input_9_IBUF : IBUF
    port map (
      I => input(9),
      O => input_9_IBUF_37
    );
  input_8_IBUF : IBUF
    port map (
      I => input(8),
      O => input_8_IBUF_36
    );
  input_7_IBUF : IBUF
    port map (
      I => input(7),
      O => input_7_IBUF_35
    );
  input_6_IBUF : IBUF
    port map (
      I => input(6),
      O => input_6_IBUF_34
    );
  input_5_IBUF : IBUF
    port map (
      I => input(5),
      O => input_5_IBUF_33
    );
  input_4_IBUF : IBUF
    port map (
      I => input(4),
      O => input_4_IBUF_32
    );
  input_3_IBUF : IBUF
    port map (
      I => input(3),
      O => input_3_IBUF_31
    );
  input_2_IBUF : IBUF
    port map (
      I => input(2),
      O => input_2_IBUF_30
    );
  input_1_IBUF : IBUF
    port map (
      I => input(1),
      O => input_1_IBUF_29
    );
  input_0_IBUF : IBUF
    port map (
      I => input(0),
      O => input_0_IBUF_22
    );
  output_OBUF : OBUF
    port map (
      I => output_OBUF_46,
      O => output
    );
  mu14_o220 : MUXF5
    port map (
      I0 => N14,
      I1 => N15,
      S => selector_2_IBUF_53,
      O => mu14_o220_40
    );
  mu14_o220_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selector_3_IBUF_54,
      I1 => input_0_IBUF_22,
      I2 => input_8_IBUF_36,
      O => N14
    );
  mu14_o220_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selector_3_IBUF_54,
      I1 => input_4_IBUF_32,
      I2 => input_12_IBUF_25,
      O => N15
    );
  mu14_o44 : MUXF5
    port map (
      I0 => N16,
      I1 => N17,
      S => selector_2_IBUF_53,
      O => mu14_o44_43
    );
  mu14_o44_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => selector_1_IBUF_52,
      I1 => selector_3_IBUF_54,
      I2 => input_3_IBUF_31,
      I3 => input_11_IBUF_24,
      O => N16
    );
  mu14_o44_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => selector_1_IBUF_52,
      I1 => selector_3_IBUF_54,
      I2 => input_7_IBUF_35,
      I3 => input_15_IBUF_28,
      O => N17
    );
  mu14_o99 : MUXF5
    port map (
      I0 => N18,
      I1 => N19,
      S => selector_2_IBUF_53,
      O => mu14_o99_44
    );
  mu14_o99_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => selector_3_IBUF_54,
      I1 => input_1_IBUF_29,
      I2 => selector_1_IBUF_52,
      I3 => input_9_IBUF_37,
      O => N18
    );
  mu14_o99_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => selector_3_IBUF_54,
      I1 => input_5_IBUF_33,
      I2 => selector_1_IBUF_52,
      I3 => input_13_IBUF_26,
      O => N19
    );
  mu14_o2781 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => mu14_o44_43,
      I1 => mu14_o99_44,
      O => mu14_o278
    );
  mu14_o2782 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => selector_1_IBUF_52,
      I1 => mu14_o148_38,
      I2 => mu14_o220_40,
      I3 => mu14_o163_39,
      O => mu14_o2781_42
    );
  mu14_o278_f5 : MUXF5
    port map (
      I0 => mu14_o2781_42,
      I1 => mu14_o278,
      S => selector_0_IBUF_51,
      O => output_OBUF_46
    );

end Structure;

