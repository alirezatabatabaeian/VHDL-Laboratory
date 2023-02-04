--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: count09and90_synthesis.vhd
-- /___/   /\     Timestamp: Tue Nov 10 19:53:49 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm count09and90 -w -dir netgen/synthesis -ofmt vhdl -sim count09and90.ngc count09and90_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: count09and90.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\count09and90_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: count09and90
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

entity count09and90 is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    out1 : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end count09and90;

architecture Structure of count09and90 is
  signal Madd_count_add0000_cy_10_rt_2 : STD_LOGIC; 
  signal Madd_count_add0000_cy_11_rt_4 : STD_LOGIC; 
  signal Madd_count_add0000_cy_12_rt_6 : STD_LOGIC; 
  signal Madd_count_add0000_cy_13_rt_8 : STD_LOGIC; 
  signal Madd_count_add0000_cy_14_rt_10 : STD_LOGIC; 
  signal Madd_count_add0000_cy_15_rt_12 : STD_LOGIC; 
  signal Madd_count_add0000_cy_16_rt_14 : STD_LOGIC; 
  signal Madd_count_add0000_cy_17_rt_16 : STD_LOGIC; 
  signal Madd_count_add0000_cy_18_rt_18 : STD_LOGIC; 
  signal Madd_count_add0000_cy_19_rt_20 : STD_LOGIC; 
  signal Madd_count_add0000_cy_1_rt_22 : STD_LOGIC; 
  signal Madd_count_add0000_cy_20_rt_24 : STD_LOGIC; 
  signal Madd_count_add0000_cy_21_rt_26 : STD_LOGIC; 
  signal Madd_count_add0000_cy_22_rt_28 : STD_LOGIC; 
  signal Madd_count_add0000_cy_23_rt_30 : STD_LOGIC; 
  signal Madd_count_add0000_cy_24_rt_32 : STD_LOGIC; 
  signal Madd_count_add0000_cy_25_rt_34 : STD_LOGIC; 
  signal Madd_count_add0000_cy_26_rt_36 : STD_LOGIC; 
  signal Madd_count_add0000_cy_27_rt_38 : STD_LOGIC; 
  signal Madd_count_add0000_cy_28_rt_40 : STD_LOGIC; 
  signal Madd_count_add0000_cy_29_rt_42 : STD_LOGIC; 
  signal Madd_count_add0000_cy_2_rt_44 : STD_LOGIC; 
  signal Madd_count_add0000_cy_30_rt_46 : STD_LOGIC; 
  signal Madd_count_add0000_cy_3_rt_48 : STD_LOGIC; 
  signal Madd_count_add0000_cy_4_rt_50 : STD_LOGIC; 
  signal Madd_count_add0000_cy_5_rt_52 : STD_LOGIC; 
  signal Madd_count_add0000_cy_6_rt_54 : STD_LOGIC; 
  signal Madd_count_add0000_cy_7_rt_56 : STD_LOGIC; 
  signal Madd_count_add0000_cy_8_rt_58 : STD_LOGIC; 
  signal Madd_count_add0000_cy_9_rt_60 : STD_LOGIC; 
  signal Madd_count_add0000_xor_31_rt_62 : STD_LOGIC; 
  signal Mcount_count_cy_10_rt_65 : STD_LOGIC; 
  signal Mcount_count_cy_11_rt_67 : STD_LOGIC; 
  signal Mcount_count_cy_12_rt_69 : STD_LOGIC; 
  signal Mcount_count_cy_13_rt_71 : STD_LOGIC; 
  signal Mcount_count_cy_14_rt_73 : STD_LOGIC; 
  signal Mcount_count_cy_15_rt_75 : STD_LOGIC; 
  signal Mcount_count_cy_16_rt_77 : STD_LOGIC; 
  signal Mcount_count_cy_17_rt_79 : STD_LOGIC; 
  signal Mcount_count_cy_18_rt_81 : STD_LOGIC; 
  signal Mcount_count_cy_19_rt_83 : STD_LOGIC; 
  signal Mcount_count_cy_1_rt_85 : STD_LOGIC; 
  signal Mcount_count_cy_20_rt_87 : STD_LOGIC; 
  signal Mcount_count_cy_21_rt_89 : STD_LOGIC; 
  signal Mcount_count_cy_22_rt_91 : STD_LOGIC; 
  signal Mcount_count_cy_23_rt_93 : STD_LOGIC; 
  signal Mcount_count_cy_24_rt_95 : STD_LOGIC; 
  signal Mcount_count_cy_25_rt_97 : STD_LOGIC; 
  signal Mcount_count_cy_26_rt_99 : STD_LOGIC; 
  signal Mcount_count_cy_27_rt_101 : STD_LOGIC; 
  signal Mcount_count_cy_28_rt_103 : STD_LOGIC; 
  signal Mcount_count_cy_29_rt_105 : STD_LOGIC; 
  signal Mcount_count_cy_2_rt_107 : STD_LOGIC; 
  signal Mcount_count_cy_30_rt_109 : STD_LOGIC; 
  signal Mcount_count_cy_3_rt_111 : STD_LOGIC; 
  signal Mcount_count_cy_4_rt_113 : STD_LOGIC; 
  signal Mcount_count_cy_5_rt_115 : STD_LOGIC; 
  signal Mcount_count_cy_6_rt_117 : STD_LOGIC; 
  signal Mcount_count_cy_7_rt_119 : STD_LOGIC; 
  signal Mcount_count_cy_8_rt_121 : STD_LOGIC; 
  signal Mcount_count_cy_9_rt_123 : STD_LOGIC; 
  signal Mcount_count_xor_31_rt_125 : STD_LOGIC; 
  signal Mcount_number : STD_LOGIC; 
  signal Mcount_number1 : STD_LOGIC; 
  signal Mcount_number2 : STD_LOGIC; 
  signal Mcount_number3 : STD_LOGIC; 
  signal Mcount_number31_130 : STD_LOGIC; 
  signal Mcount_number32_131 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal clk_BUFGP_169 : STD_LOGIC; 
  signal count_or0000 : STD_LOGIC; 
  signal number_cmp_eq0000 : STD_LOGIC; 
  signal number_or0000_255 : STD_LOGIC; 
  signal out1_0_260 : STD_LOGIC; 
  signal out1_1_261 : STD_LOGIC; 
  signal out1_2_262 : STD_LOGIC; 
  signal out1_3_263 : STD_LOGIC; 
  signal reset_IBUF_265 : STD_LOGIC; 
  signal x_266 : STD_LOGIC; 
  signal x_mux0000 : STD_LOGIC; 
  signal x_not0001_268 : STD_LOGIC; 
  signal Madd_count_add0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Madd_count_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_count_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal count_add0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal number : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal number_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal number_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  x : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      CE => x_not0001_268,
      D => x_mux0000,
      R => reset_IBUF_265,
      Q => x_266
    );
  out1_0 : FD
    port map (
      C => clk_BUFGP_169,
      D => number(0),
      Q => out1_0_260
    );
  out1_1 : FD
    port map (
      C => clk_BUFGP_169,
      D => number(1),
      Q => out1_1_261
    );
  out1_2 : FD
    port map (
      C => clk_BUFGP_169,
      D => number(2),
      Q => out1_2_262
    );
  out1_3 : FD
    port map (
      C => clk_BUFGP_169,
      D => number(3),
      Q => out1_3_263
    );
  number_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      CE => number_cmp_eq0000,
      D => Mcount_number,
      R => number_or0000_255,
      Q => number(0)
    );
  number_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      CE => number_cmp_eq0000,
      D => Mcount_number1,
      R => number_or0000_255,
      Q => number(1)
    );
  number_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      CE => number_cmp_eq0000,
      D => Mcount_number2,
      R => number_or0000_255,
      Q => number(2)
    );
  number_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      CE => number_cmp_eq0000,
      D => Mcount_number3,
      R => number_or0000_255,
      Q => number(3)
    );
  count_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(0),
      R => count_or0000,
      Q => count(0)
    );
  count_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(1),
      R => count_or0000,
      Q => count(1)
    );
  count_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(2),
      R => count_or0000,
      Q => count(2)
    );
  count_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(3),
      R => count_or0000,
      Q => count(3)
    );
  count_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(4),
      R => count_or0000,
      Q => count(4)
    );
  count_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(5),
      R => count_or0000,
      Q => count(5)
    );
  count_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(6),
      R => count_or0000,
      Q => count(6)
    );
  count_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(7),
      R => count_or0000,
      Q => count(7)
    );
  count_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(8),
      R => count_or0000,
      Q => count(8)
    );
  count_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(9),
      R => count_or0000,
      Q => count(9)
    );
  count_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(10),
      R => count_or0000,
      Q => count(10)
    );
  count_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(11),
      R => count_or0000,
      Q => count(11)
    );
  count_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(12),
      R => count_or0000,
      Q => count(12)
    );
  count_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(13),
      R => count_or0000,
      Q => count(13)
    );
  count_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(14),
      R => count_or0000,
      Q => count(14)
    );
  count_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(15),
      R => count_or0000,
      Q => count(15)
    );
  count_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(16),
      R => count_or0000,
      Q => count(16)
    );
  count_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(17),
      R => count_or0000,
      Q => count(17)
    );
  count_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(18),
      R => count_or0000,
      Q => count(18)
    );
  count_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(19),
      R => count_or0000,
      Q => count(19)
    );
  count_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(20),
      R => count_or0000,
      Q => count(20)
    );
  count_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(21),
      R => count_or0000,
      Q => count(21)
    );
  count_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(22),
      R => count_or0000,
      Q => count(22)
    );
  count_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(23),
      R => count_or0000,
      Q => count(23)
    );
  count_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(24),
      R => count_or0000,
      Q => count(24)
    );
  count_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(25),
      R => count_or0000,
      Q => count(25)
    );
  count_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(26),
      R => count_or0000,
      Q => count(26)
    );
  count_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(27),
      R => count_or0000,
      Q => count(27)
    );
  count_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(28),
      R => count_or0000,
      Q => count(28)
    );
  count_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(29),
      R => count_or0000,
      Q => count(29)
    );
  count_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(30),
      R => count_or0000,
      Q => count(30)
    );
  count_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_169,
      D => Result(31),
      R => count_or0000,
      Q => count(31)
    );
  Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_count_lut(0),
      O => Mcount_count_cy(0)
    );
  Mcount_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_count_lut(0),
      O => Result(0)
    );
  Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => Mcount_count_cy(0),
      DI => N0,
      S => Mcount_count_cy_1_rt_85,
      O => Mcount_count_cy(1)
    );
  Mcount_count_xor_1_Q : XORCY
    port map (
      CI => Mcount_count_cy(0),
      LI => Mcount_count_cy_1_rt_85,
      O => Result(1)
    );
  Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => Mcount_count_cy(1),
      DI => N0,
      S => Mcount_count_cy_2_rt_107,
      O => Mcount_count_cy(2)
    );
  Mcount_count_xor_2_Q : XORCY
    port map (
      CI => Mcount_count_cy(1),
      LI => Mcount_count_cy_2_rt_107,
      O => Result(2)
    );
  Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => Mcount_count_cy(2),
      DI => N0,
      S => Mcount_count_cy_3_rt_111,
      O => Mcount_count_cy(3)
    );
  Mcount_count_xor_3_Q : XORCY
    port map (
      CI => Mcount_count_cy(2),
      LI => Mcount_count_cy_3_rt_111,
      O => Result(3)
    );
  Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => Mcount_count_cy(3),
      DI => N0,
      S => Mcount_count_cy_4_rt_113,
      O => Mcount_count_cy(4)
    );
  Mcount_count_xor_4_Q : XORCY
    port map (
      CI => Mcount_count_cy(3),
      LI => Mcount_count_cy_4_rt_113,
      O => Result(4)
    );
  Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => Mcount_count_cy(4),
      DI => N0,
      S => Mcount_count_cy_5_rt_115,
      O => Mcount_count_cy(5)
    );
  Mcount_count_xor_5_Q : XORCY
    port map (
      CI => Mcount_count_cy(4),
      LI => Mcount_count_cy_5_rt_115,
      O => Result(5)
    );
  Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => Mcount_count_cy(5),
      DI => N0,
      S => Mcount_count_cy_6_rt_117,
      O => Mcount_count_cy(6)
    );
  Mcount_count_xor_6_Q : XORCY
    port map (
      CI => Mcount_count_cy(5),
      LI => Mcount_count_cy_6_rt_117,
      O => Result(6)
    );
  Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => Mcount_count_cy(6),
      DI => N0,
      S => Mcount_count_cy_7_rt_119,
      O => Mcount_count_cy(7)
    );
  Mcount_count_xor_7_Q : XORCY
    port map (
      CI => Mcount_count_cy(6),
      LI => Mcount_count_cy_7_rt_119,
      O => Result(7)
    );
  Mcount_count_cy_8_Q : MUXCY
    port map (
      CI => Mcount_count_cy(7),
      DI => N0,
      S => Mcount_count_cy_8_rt_121,
      O => Mcount_count_cy(8)
    );
  Mcount_count_xor_8_Q : XORCY
    port map (
      CI => Mcount_count_cy(7),
      LI => Mcount_count_cy_8_rt_121,
      O => Result(8)
    );
  Mcount_count_cy_9_Q : MUXCY
    port map (
      CI => Mcount_count_cy(8),
      DI => N0,
      S => Mcount_count_cy_9_rt_123,
      O => Mcount_count_cy(9)
    );
  Mcount_count_xor_9_Q : XORCY
    port map (
      CI => Mcount_count_cy(8),
      LI => Mcount_count_cy_9_rt_123,
      O => Result(9)
    );
  Mcount_count_cy_10_Q : MUXCY
    port map (
      CI => Mcount_count_cy(9),
      DI => N0,
      S => Mcount_count_cy_10_rt_65,
      O => Mcount_count_cy(10)
    );
  Mcount_count_xor_10_Q : XORCY
    port map (
      CI => Mcount_count_cy(9),
      LI => Mcount_count_cy_10_rt_65,
      O => Result(10)
    );
  Mcount_count_cy_11_Q : MUXCY
    port map (
      CI => Mcount_count_cy(10),
      DI => N0,
      S => Mcount_count_cy_11_rt_67,
      O => Mcount_count_cy(11)
    );
  Mcount_count_xor_11_Q : XORCY
    port map (
      CI => Mcount_count_cy(10),
      LI => Mcount_count_cy_11_rt_67,
      O => Result(11)
    );
  Mcount_count_cy_12_Q : MUXCY
    port map (
      CI => Mcount_count_cy(11),
      DI => N0,
      S => Mcount_count_cy_12_rt_69,
      O => Mcount_count_cy(12)
    );
  Mcount_count_xor_12_Q : XORCY
    port map (
      CI => Mcount_count_cy(11),
      LI => Mcount_count_cy_12_rt_69,
      O => Result(12)
    );
  Mcount_count_cy_13_Q : MUXCY
    port map (
      CI => Mcount_count_cy(12),
      DI => N0,
      S => Mcount_count_cy_13_rt_71,
      O => Mcount_count_cy(13)
    );
  Mcount_count_xor_13_Q : XORCY
    port map (
      CI => Mcount_count_cy(12),
      LI => Mcount_count_cy_13_rt_71,
      O => Result(13)
    );
  Mcount_count_cy_14_Q : MUXCY
    port map (
      CI => Mcount_count_cy(13),
      DI => N0,
      S => Mcount_count_cy_14_rt_73,
      O => Mcount_count_cy(14)
    );
  Mcount_count_xor_14_Q : XORCY
    port map (
      CI => Mcount_count_cy(13),
      LI => Mcount_count_cy_14_rt_73,
      O => Result(14)
    );
  Mcount_count_cy_15_Q : MUXCY
    port map (
      CI => Mcount_count_cy(14),
      DI => N0,
      S => Mcount_count_cy_15_rt_75,
      O => Mcount_count_cy(15)
    );
  Mcount_count_xor_15_Q : XORCY
    port map (
      CI => Mcount_count_cy(14),
      LI => Mcount_count_cy_15_rt_75,
      O => Result(15)
    );
  Mcount_count_cy_16_Q : MUXCY
    port map (
      CI => Mcount_count_cy(15),
      DI => N0,
      S => Mcount_count_cy_16_rt_77,
      O => Mcount_count_cy(16)
    );
  Mcount_count_xor_16_Q : XORCY
    port map (
      CI => Mcount_count_cy(15),
      LI => Mcount_count_cy_16_rt_77,
      O => Result(16)
    );
  Mcount_count_cy_17_Q : MUXCY
    port map (
      CI => Mcount_count_cy(16),
      DI => N0,
      S => Mcount_count_cy_17_rt_79,
      O => Mcount_count_cy(17)
    );
  Mcount_count_xor_17_Q : XORCY
    port map (
      CI => Mcount_count_cy(16),
      LI => Mcount_count_cy_17_rt_79,
      O => Result(17)
    );
  Mcount_count_cy_18_Q : MUXCY
    port map (
      CI => Mcount_count_cy(17),
      DI => N0,
      S => Mcount_count_cy_18_rt_81,
      O => Mcount_count_cy(18)
    );
  Mcount_count_xor_18_Q : XORCY
    port map (
      CI => Mcount_count_cy(17),
      LI => Mcount_count_cy_18_rt_81,
      O => Result(18)
    );
  Mcount_count_cy_19_Q : MUXCY
    port map (
      CI => Mcount_count_cy(18),
      DI => N0,
      S => Mcount_count_cy_19_rt_83,
      O => Mcount_count_cy(19)
    );
  Mcount_count_xor_19_Q : XORCY
    port map (
      CI => Mcount_count_cy(18),
      LI => Mcount_count_cy_19_rt_83,
      O => Result(19)
    );
  Mcount_count_cy_20_Q : MUXCY
    port map (
      CI => Mcount_count_cy(19),
      DI => N0,
      S => Mcount_count_cy_20_rt_87,
      O => Mcount_count_cy(20)
    );
  Mcount_count_xor_20_Q : XORCY
    port map (
      CI => Mcount_count_cy(19),
      LI => Mcount_count_cy_20_rt_87,
      O => Result(20)
    );
  Mcount_count_cy_21_Q : MUXCY
    port map (
      CI => Mcount_count_cy(20),
      DI => N0,
      S => Mcount_count_cy_21_rt_89,
      O => Mcount_count_cy(21)
    );
  Mcount_count_xor_21_Q : XORCY
    port map (
      CI => Mcount_count_cy(20),
      LI => Mcount_count_cy_21_rt_89,
      O => Result(21)
    );
  Mcount_count_cy_22_Q : MUXCY
    port map (
      CI => Mcount_count_cy(21),
      DI => N0,
      S => Mcount_count_cy_22_rt_91,
      O => Mcount_count_cy(22)
    );
  Mcount_count_xor_22_Q : XORCY
    port map (
      CI => Mcount_count_cy(21),
      LI => Mcount_count_cy_22_rt_91,
      O => Result(22)
    );
  Mcount_count_cy_23_Q : MUXCY
    port map (
      CI => Mcount_count_cy(22),
      DI => N0,
      S => Mcount_count_cy_23_rt_93,
      O => Mcount_count_cy(23)
    );
  Mcount_count_xor_23_Q : XORCY
    port map (
      CI => Mcount_count_cy(22),
      LI => Mcount_count_cy_23_rt_93,
      O => Result(23)
    );
  Mcount_count_cy_24_Q : MUXCY
    port map (
      CI => Mcount_count_cy(23),
      DI => N0,
      S => Mcount_count_cy_24_rt_95,
      O => Mcount_count_cy(24)
    );
  Mcount_count_xor_24_Q : XORCY
    port map (
      CI => Mcount_count_cy(23),
      LI => Mcount_count_cy_24_rt_95,
      O => Result(24)
    );
  Mcount_count_cy_25_Q : MUXCY
    port map (
      CI => Mcount_count_cy(24),
      DI => N0,
      S => Mcount_count_cy_25_rt_97,
      O => Mcount_count_cy(25)
    );
  Mcount_count_xor_25_Q : XORCY
    port map (
      CI => Mcount_count_cy(24),
      LI => Mcount_count_cy_25_rt_97,
      O => Result(25)
    );
  Mcount_count_cy_26_Q : MUXCY
    port map (
      CI => Mcount_count_cy(25),
      DI => N0,
      S => Mcount_count_cy_26_rt_99,
      O => Mcount_count_cy(26)
    );
  Mcount_count_xor_26_Q : XORCY
    port map (
      CI => Mcount_count_cy(25),
      LI => Mcount_count_cy_26_rt_99,
      O => Result(26)
    );
  Mcount_count_cy_27_Q : MUXCY
    port map (
      CI => Mcount_count_cy(26),
      DI => N0,
      S => Mcount_count_cy_27_rt_101,
      O => Mcount_count_cy(27)
    );
  Mcount_count_xor_27_Q : XORCY
    port map (
      CI => Mcount_count_cy(26),
      LI => Mcount_count_cy_27_rt_101,
      O => Result(27)
    );
  Mcount_count_cy_28_Q : MUXCY
    port map (
      CI => Mcount_count_cy(27),
      DI => N0,
      S => Mcount_count_cy_28_rt_103,
      O => Mcount_count_cy(28)
    );
  Mcount_count_xor_28_Q : XORCY
    port map (
      CI => Mcount_count_cy(27),
      LI => Mcount_count_cy_28_rt_103,
      O => Result(28)
    );
  Mcount_count_cy_29_Q : MUXCY
    port map (
      CI => Mcount_count_cy(28),
      DI => N0,
      S => Mcount_count_cy_29_rt_105,
      O => Mcount_count_cy(29)
    );
  Mcount_count_xor_29_Q : XORCY
    port map (
      CI => Mcount_count_cy(28),
      LI => Mcount_count_cy_29_rt_105,
      O => Result(29)
    );
  Mcount_count_cy_30_Q : MUXCY
    port map (
      CI => Mcount_count_cy(29),
      DI => N0,
      S => Mcount_count_cy_30_rt_109,
      O => Mcount_count_cy(30)
    );
  Mcount_count_xor_30_Q : XORCY
    port map (
      CI => Mcount_count_cy(29),
      LI => Mcount_count_cy_30_rt_109,
      O => Result(30)
    );
  Mcount_count_xor_31_Q : XORCY
    port map (
      CI => Mcount_count_cy(30),
      LI => Mcount_count_xor_31_rt_125,
      O => Result(31)
    );
  Madd_count_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Madd_count_add0000_lut(0),
      O => Madd_count_add0000_cy(0)
    );
  Madd_count_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Madd_count_add0000_lut(0),
      O => count_add0000(0)
    );
  Madd_count_add0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(0),
      DI => N0,
      S => Madd_count_add0000_cy_1_rt_22,
      O => Madd_count_add0000_cy(1)
    );
  Madd_count_add0000_xor_1_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(0),
      LI => Madd_count_add0000_cy_1_rt_22,
      O => count_add0000(1)
    );
  Madd_count_add0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(1),
      DI => N0,
      S => Madd_count_add0000_cy_2_rt_44,
      O => Madd_count_add0000_cy(2)
    );
  Madd_count_add0000_xor_2_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(1),
      LI => Madd_count_add0000_cy_2_rt_44,
      O => count_add0000(2)
    );
  Madd_count_add0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(2),
      DI => N0,
      S => Madd_count_add0000_cy_3_rt_48,
      O => Madd_count_add0000_cy(3)
    );
  Madd_count_add0000_xor_3_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(2),
      LI => Madd_count_add0000_cy_3_rt_48,
      O => count_add0000(3)
    );
  Madd_count_add0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(3),
      DI => N0,
      S => Madd_count_add0000_cy_4_rt_50,
      O => Madd_count_add0000_cy(4)
    );
  Madd_count_add0000_xor_4_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(3),
      LI => Madd_count_add0000_cy_4_rt_50,
      O => count_add0000(4)
    );
  Madd_count_add0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(4),
      DI => N0,
      S => Madd_count_add0000_cy_5_rt_52,
      O => Madd_count_add0000_cy(5)
    );
  Madd_count_add0000_xor_5_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(4),
      LI => Madd_count_add0000_cy_5_rt_52,
      O => count_add0000(5)
    );
  Madd_count_add0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(5),
      DI => N0,
      S => Madd_count_add0000_cy_6_rt_54,
      O => Madd_count_add0000_cy(6)
    );
  Madd_count_add0000_xor_6_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(5),
      LI => Madd_count_add0000_cy_6_rt_54,
      O => count_add0000(6)
    );
  Madd_count_add0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(6),
      DI => N0,
      S => Madd_count_add0000_cy_7_rt_56,
      O => Madd_count_add0000_cy(7)
    );
  Madd_count_add0000_xor_7_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(6),
      LI => Madd_count_add0000_cy_7_rt_56,
      O => count_add0000(7)
    );
  Madd_count_add0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(7),
      DI => N0,
      S => Madd_count_add0000_cy_8_rt_58,
      O => Madd_count_add0000_cy(8)
    );
  Madd_count_add0000_xor_8_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(7),
      LI => Madd_count_add0000_cy_8_rt_58,
      O => count_add0000(8)
    );
  Madd_count_add0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(8),
      DI => N0,
      S => Madd_count_add0000_cy_9_rt_60,
      O => Madd_count_add0000_cy(9)
    );
  Madd_count_add0000_xor_9_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(8),
      LI => Madd_count_add0000_cy_9_rt_60,
      O => count_add0000(9)
    );
  Madd_count_add0000_cy_10_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(9),
      DI => N0,
      S => Madd_count_add0000_cy_10_rt_2,
      O => Madd_count_add0000_cy(10)
    );
  Madd_count_add0000_xor_10_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(9),
      LI => Madd_count_add0000_cy_10_rt_2,
      O => count_add0000(10)
    );
  Madd_count_add0000_cy_11_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(10),
      DI => N0,
      S => Madd_count_add0000_cy_11_rt_4,
      O => Madd_count_add0000_cy(11)
    );
  Madd_count_add0000_xor_11_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(10),
      LI => Madd_count_add0000_cy_11_rt_4,
      O => count_add0000(11)
    );
  Madd_count_add0000_cy_12_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(11),
      DI => N0,
      S => Madd_count_add0000_cy_12_rt_6,
      O => Madd_count_add0000_cy(12)
    );
  Madd_count_add0000_xor_12_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(11),
      LI => Madd_count_add0000_cy_12_rt_6,
      O => count_add0000(12)
    );
  Madd_count_add0000_cy_13_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(12),
      DI => N0,
      S => Madd_count_add0000_cy_13_rt_8,
      O => Madd_count_add0000_cy(13)
    );
  Madd_count_add0000_xor_13_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(12),
      LI => Madd_count_add0000_cy_13_rt_8,
      O => count_add0000(13)
    );
  Madd_count_add0000_cy_14_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(13),
      DI => N0,
      S => Madd_count_add0000_cy_14_rt_10,
      O => Madd_count_add0000_cy(14)
    );
  Madd_count_add0000_xor_14_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(13),
      LI => Madd_count_add0000_cy_14_rt_10,
      O => count_add0000(14)
    );
  Madd_count_add0000_cy_15_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(14),
      DI => N0,
      S => Madd_count_add0000_cy_15_rt_12,
      O => Madd_count_add0000_cy(15)
    );
  Madd_count_add0000_xor_15_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(14),
      LI => Madd_count_add0000_cy_15_rt_12,
      O => count_add0000(15)
    );
  Madd_count_add0000_cy_16_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(15),
      DI => N0,
      S => Madd_count_add0000_cy_16_rt_14,
      O => Madd_count_add0000_cy(16)
    );
  Madd_count_add0000_xor_16_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(15),
      LI => Madd_count_add0000_cy_16_rt_14,
      O => count_add0000(16)
    );
  Madd_count_add0000_cy_17_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(16),
      DI => N0,
      S => Madd_count_add0000_cy_17_rt_16,
      O => Madd_count_add0000_cy(17)
    );
  Madd_count_add0000_xor_17_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(16),
      LI => Madd_count_add0000_cy_17_rt_16,
      O => count_add0000(17)
    );
  Madd_count_add0000_cy_18_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(17),
      DI => N0,
      S => Madd_count_add0000_cy_18_rt_18,
      O => Madd_count_add0000_cy(18)
    );
  Madd_count_add0000_xor_18_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(17),
      LI => Madd_count_add0000_cy_18_rt_18,
      O => count_add0000(18)
    );
  Madd_count_add0000_cy_19_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(18),
      DI => N0,
      S => Madd_count_add0000_cy_19_rt_20,
      O => Madd_count_add0000_cy(19)
    );
  Madd_count_add0000_xor_19_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(18),
      LI => Madd_count_add0000_cy_19_rt_20,
      O => count_add0000(19)
    );
  Madd_count_add0000_cy_20_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(19),
      DI => N0,
      S => Madd_count_add0000_cy_20_rt_24,
      O => Madd_count_add0000_cy(20)
    );
  Madd_count_add0000_xor_20_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(19),
      LI => Madd_count_add0000_cy_20_rt_24,
      O => count_add0000(20)
    );
  Madd_count_add0000_cy_21_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(20),
      DI => N0,
      S => Madd_count_add0000_cy_21_rt_26,
      O => Madd_count_add0000_cy(21)
    );
  Madd_count_add0000_xor_21_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(20),
      LI => Madd_count_add0000_cy_21_rt_26,
      O => count_add0000(21)
    );
  Madd_count_add0000_cy_22_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(21),
      DI => N0,
      S => Madd_count_add0000_cy_22_rt_28,
      O => Madd_count_add0000_cy(22)
    );
  Madd_count_add0000_xor_22_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(21),
      LI => Madd_count_add0000_cy_22_rt_28,
      O => count_add0000(22)
    );
  Madd_count_add0000_cy_23_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(22),
      DI => N0,
      S => Madd_count_add0000_cy_23_rt_30,
      O => Madd_count_add0000_cy(23)
    );
  Madd_count_add0000_xor_23_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(22),
      LI => Madd_count_add0000_cy_23_rt_30,
      O => count_add0000(23)
    );
  Madd_count_add0000_cy_24_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(23),
      DI => N0,
      S => Madd_count_add0000_cy_24_rt_32,
      O => Madd_count_add0000_cy(24)
    );
  Madd_count_add0000_xor_24_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(23),
      LI => Madd_count_add0000_cy_24_rt_32,
      O => count_add0000(24)
    );
  Madd_count_add0000_cy_25_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(24),
      DI => N0,
      S => Madd_count_add0000_cy_25_rt_34,
      O => Madd_count_add0000_cy(25)
    );
  Madd_count_add0000_xor_25_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(24),
      LI => Madd_count_add0000_cy_25_rt_34,
      O => count_add0000(25)
    );
  Madd_count_add0000_cy_26_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(25),
      DI => N0,
      S => Madd_count_add0000_cy_26_rt_36,
      O => Madd_count_add0000_cy(26)
    );
  Madd_count_add0000_xor_26_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(25),
      LI => Madd_count_add0000_cy_26_rt_36,
      O => count_add0000(26)
    );
  Madd_count_add0000_cy_27_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(26),
      DI => N0,
      S => Madd_count_add0000_cy_27_rt_38,
      O => Madd_count_add0000_cy(27)
    );
  Madd_count_add0000_xor_27_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(26),
      LI => Madd_count_add0000_cy_27_rt_38,
      O => count_add0000(27)
    );
  Madd_count_add0000_cy_28_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(27),
      DI => N0,
      S => Madd_count_add0000_cy_28_rt_40,
      O => Madd_count_add0000_cy(28)
    );
  Madd_count_add0000_xor_28_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(27),
      LI => Madd_count_add0000_cy_28_rt_40,
      O => count_add0000(28)
    );
  Madd_count_add0000_cy_29_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(28),
      DI => N0,
      S => Madd_count_add0000_cy_29_rt_42,
      O => Madd_count_add0000_cy(29)
    );
  Madd_count_add0000_xor_29_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(28),
      LI => Madd_count_add0000_cy_29_rt_42,
      O => count_add0000(29)
    );
  Madd_count_add0000_cy_30_Q : MUXCY
    port map (
      CI => Madd_count_add0000_cy(29),
      DI => N0,
      S => Madd_count_add0000_cy_30_rt_46,
      O => Madd_count_add0000_cy(30)
    );
  Madd_count_add0000_xor_30_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(29),
      LI => Madd_count_add0000_cy_30_rt_46,
      O => count_add0000(30)
    );
  Madd_count_add0000_xor_31_Q : XORCY
    port map (
      CI => Madd_count_add0000_cy(30),
      LI => Madd_count_add0000_xor_31_rt_62,
      O => count_add0000(31)
    );
  number_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => count_add0000(21),
      I1 => count_add0000(22),
      I2 => count_add0000(23),
      I3 => count_add0000(24),
      O => number_cmp_eq0000_wg_lut(0)
    );
  number_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => number_cmp_eq0000_wg_lut(0),
      O => number_cmp_eq0000_wg_cy(0)
    );
  number_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => count_add0000(18),
      I1 => count_add0000(19),
      I2 => count_add0000(20),
      I3 => count_add0000(25),
      O => number_cmp_eq0000_wg_lut(1)
    );
  number_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => number_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => number_cmp_eq0000_wg_lut(1),
      O => number_cmp_eq0000_wg_cy(1)
    );
  number_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => count_add0000(15),
      I1 => count_add0000(16),
      I2 => count_add0000(17),
      I3 => count_add0000(26),
      O => number_cmp_eq0000_wg_lut(2)
    );
  number_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => number_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => number_cmp_eq0000_wg_lut(2),
      O => number_cmp_eq0000_wg_cy(2)
    );
  number_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => count_add0000(12),
      I1 => count_add0000(13),
      I2 => count_add0000(14),
      I3 => count_add0000(27),
      O => number_cmp_eq0000_wg_lut(3)
    );
  number_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => number_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => number_cmp_eq0000_wg_lut(3),
      O => number_cmp_eq0000_wg_cy(3)
    );
  number_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => count_add0000(9),
      I1 => count_add0000(10),
      I2 => count_add0000(11),
      I3 => count_add0000(28),
      O => number_cmp_eq0000_wg_lut(4)
    );
  number_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => number_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => number_cmp_eq0000_wg_lut(4),
      O => number_cmp_eq0000_wg_cy(4)
    );
  number_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => count_add0000(6),
      I1 => count_add0000(7),
      I2 => count_add0000(8),
      I3 => count_add0000(29),
      O => number_cmp_eq0000_wg_lut(5)
    );
  number_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => number_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => number_cmp_eq0000_wg_lut(5),
      O => number_cmp_eq0000_wg_cy(5)
    );
  number_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => count_add0000(3),
      I1 => count_add0000(4),
      I2 => count_add0000(5),
      I3 => count_add0000(30),
      O => number_cmp_eq0000_wg_lut(6)
    );
  number_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => number_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => number_cmp_eq0000_wg_lut(6),
      O => number_cmp_eq0000_wg_cy(6)
    );
  number_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => count_add0000(0),
      I1 => count_add0000(1),
      I2 => count_add0000(2),
      I3 => count_add0000(31),
      O => number_cmp_eq0000_wg_lut(7)
    );
  number_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => number_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => number_cmp_eq0000_wg_lut(7),
      O => number_cmp_eq0000
    );
  Mcount_number_xor_1_11 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => number(0),
      I1 => number(1),
      I2 => x_266,
      O => Mcount_number1
    );
  Mcount_number_xor_2_11 : LUT4
    generic map(
      INIT => X"9AA6"
    )
    port map (
      I0 => number(2),
      I1 => x_266,
      I2 => number(1),
      I3 => number(0),
      O => Mcount_number2
    );
  x_not0001_SW0 : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => x_266,
      I1 => number(0),
      I2 => number(3),
      O => N2
    );
  x_not0001 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => number(2),
      I1 => number(1),
      I2 => N2,
      I3 => number_cmp_eq0000,
      O => x_not0001_268
    );
  count_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset_IBUF_265,
      I1 => number_cmp_eq0000,
      O => count_or0000
    );
  number_or0000_SW0 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => number(2),
      I1 => number(3),
      I2 => number(1),
      I3 => number(0),
      O => N4
    );
  number_or0000 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => reset_IBUF_265,
      I1 => x_266,
      I2 => N4,
      I3 => number_cmp_eq0000,
      O => number_or0000_255
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_265
    );
  out1_3_OBUF : OBUF
    port map (
      I => out1_3_263,
      O => out1(3)
    );
  out1_2_OBUF : OBUF
    port map (
      I => out1_2_262,
      O => out1(2)
    );
  out1_1_OBUF : OBUF
    port map (
      I => out1_1_261,
      O => out1(1)
    );
  out1_0_OBUF : OBUF
    port map (
      I => out1_0_260,
      O => out1(0)
    );
  Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(1),
      O => Mcount_count_cy_1_rt_85
    );
  Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(2),
      O => Mcount_count_cy_2_rt_107
    );
  Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(3),
      O => Mcount_count_cy_3_rt_111
    );
  Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(4),
      O => Mcount_count_cy_4_rt_113
    );
  Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(5),
      O => Mcount_count_cy_5_rt_115
    );
  Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(6),
      O => Mcount_count_cy_6_rt_117
    );
  Mcount_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(7),
      O => Mcount_count_cy_7_rt_119
    );
  Mcount_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(8),
      O => Mcount_count_cy_8_rt_121
    );
  Mcount_count_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(9),
      O => Mcount_count_cy_9_rt_123
    );
  Mcount_count_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(10),
      O => Mcount_count_cy_10_rt_65
    );
  Mcount_count_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(11),
      O => Mcount_count_cy_11_rt_67
    );
  Mcount_count_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(12),
      O => Mcount_count_cy_12_rt_69
    );
  Mcount_count_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(13),
      O => Mcount_count_cy_13_rt_71
    );
  Mcount_count_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(14),
      O => Mcount_count_cy_14_rt_73
    );
  Mcount_count_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(15),
      O => Mcount_count_cy_15_rt_75
    );
  Mcount_count_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(16),
      O => Mcount_count_cy_16_rt_77
    );
  Mcount_count_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(17),
      O => Mcount_count_cy_17_rt_79
    );
  Mcount_count_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(18),
      O => Mcount_count_cy_18_rt_81
    );
  Mcount_count_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(19),
      O => Mcount_count_cy_19_rt_83
    );
  Mcount_count_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(20),
      O => Mcount_count_cy_20_rt_87
    );
  Mcount_count_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(21),
      O => Mcount_count_cy_21_rt_89
    );
  Mcount_count_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(22),
      O => Mcount_count_cy_22_rt_91
    );
  Mcount_count_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(23),
      O => Mcount_count_cy_23_rt_93
    );
  Mcount_count_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(24),
      O => Mcount_count_cy_24_rt_95
    );
  Mcount_count_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(25),
      O => Mcount_count_cy_25_rt_97
    );
  Mcount_count_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(26),
      O => Mcount_count_cy_26_rt_99
    );
  Mcount_count_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(27),
      O => Mcount_count_cy_27_rt_101
    );
  Mcount_count_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(28),
      O => Mcount_count_cy_28_rt_103
    );
  Mcount_count_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(29),
      O => Mcount_count_cy_29_rt_105
    );
  Mcount_count_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(30),
      O => Mcount_count_cy_30_rt_109
    );
  Madd_count_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(1),
      O => Madd_count_add0000_cy_1_rt_22
    );
  Madd_count_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(2),
      O => Madd_count_add0000_cy_2_rt_44
    );
  Madd_count_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(3),
      O => Madd_count_add0000_cy_3_rt_48
    );
  Madd_count_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(4),
      O => Madd_count_add0000_cy_4_rt_50
    );
  Madd_count_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(5),
      O => Madd_count_add0000_cy_5_rt_52
    );
  Madd_count_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(6),
      O => Madd_count_add0000_cy_6_rt_54
    );
  Madd_count_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(7),
      O => Madd_count_add0000_cy_7_rt_56
    );
  Madd_count_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(8),
      O => Madd_count_add0000_cy_8_rt_58
    );
  Madd_count_add0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(9),
      O => Madd_count_add0000_cy_9_rt_60
    );
  Madd_count_add0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(10),
      O => Madd_count_add0000_cy_10_rt_2
    );
  Madd_count_add0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(11),
      O => Madd_count_add0000_cy_11_rt_4
    );
  Madd_count_add0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(12),
      O => Madd_count_add0000_cy_12_rt_6
    );
  Madd_count_add0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(13),
      O => Madd_count_add0000_cy_13_rt_8
    );
  Madd_count_add0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(14),
      O => Madd_count_add0000_cy_14_rt_10
    );
  Madd_count_add0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(15),
      O => Madd_count_add0000_cy_15_rt_12
    );
  Madd_count_add0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(16),
      O => Madd_count_add0000_cy_16_rt_14
    );
  Madd_count_add0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(17),
      O => Madd_count_add0000_cy_17_rt_16
    );
  Madd_count_add0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(18),
      O => Madd_count_add0000_cy_18_rt_18
    );
  Madd_count_add0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(19),
      O => Madd_count_add0000_cy_19_rt_20
    );
  Madd_count_add0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(20),
      O => Madd_count_add0000_cy_20_rt_24
    );
  Madd_count_add0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(21),
      O => Madd_count_add0000_cy_21_rt_26
    );
  Madd_count_add0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(22),
      O => Madd_count_add0000_cy_22_rt_28
    );
  Madd_count_add0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(23),
      O => Madd_count_add0000_cy_23_rt_30
    );
  Madd_count_add0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(24),
      O => Madd_count_add0000_cy_24_rt_32
    );
  Madd_count_add0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(25),
      O => Madd_count_add0000_cy_25_rt_34
    );
  Madd_count_add0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(26),
      O => Madd_count_add0000_cy_26_rt_36
    );
  Madd_count_add0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(27),
      O => Madd_count_add0000_cy_27_rt_38
    );
  Madd_count_add0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(28),
      O => Madd_count_add0000_cy_28_rt_40
    );
  Madd_count_add0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(29),
      O => Madd_count_add0000_cy_29_rt_42
    );
  Madd_count_add0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(30),
      O => Madd_count_add0000_cy_30_rt_46
    );
  Mcount_count_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(31),
      O => Mcount_count_xor_31_rt_125
    );
  Madd_count_add0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count(31),
      O => Madd_count_add0000_xor_31_rt_62
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_169
    );
  Mcount_count_lut_0_INV_0 : INV
    port map (
      I => count(0),
      O => Mcount_count_lut(0)
    );
  Madd_count_add0000_lut_0_INV_0 : INV
    port map (
      I => count(0),
      O => Madd_count_add0000_lut(0)
    );
  x_mux00001_INV_0 : INV
    port map (
      I => x_266,
      O => x_mux0000
    );
  Mcount_number_xor_0_11_INV_0 : INV
    port map (
      I => number(0),
      O => Mcount_number
    );
  Mcount_number31 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => number(3),
      I1 => number(2),
      I2 => number(0),
      I3 => number(1),
      O => Mcount_number31_130
    );
  Mcount_number32 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => number(3),
      I1 => number(2),
      I2 => number(0),
      I3 => number(1),
      O => Mcount_number32_131
    );
  Mcount_number3_f5 : MUXF5
    port map (
      I0 => Mcount_number32_131,
      I1 => Mcount_number31_130,
      S => x_266,
      O => Mcount_number3
    );

end Structure;

