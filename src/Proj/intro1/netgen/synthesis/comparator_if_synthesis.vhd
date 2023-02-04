--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: comparator_if_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 28 22:05:11 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm comparator_if -w -dir netgen/synthesis -ofmt vhdl -sim comparator_if.ngc comparator_if_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: comparator_if.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\comparator_if_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: comparator_if
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

entity comparator_if is
  port (
    GREATER : out STD_LOGIC; 
    LESS : out STD_LOGIC; 
    EQUAL : out STD_LOGIC; 
    inputnumber1 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    inputnumber2 : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end comparator_if;

architecture Structure of comparator_if is
  signal EQUAL_OBUF_1 : STD_LOGIC; 
  signal GREATER_OBUF_3 : STD_LOGIC; 
  signal LESS_OBUF_5 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal inputnumber1_0_IBUF_47 : STD_LOGIC; 
  signal inputnumber1_1_IBUF_48 : STD_LOGIC; 
  signal inputnumber1_2_IBUF_49 : STD_LOGIC; 
  signal inputnumber1_3_IBUF_50 : STD_LOGIC; 
  signal inputnumber1_4_IBUF_51 : STD_LOGIC; 
  signal inputnumber1_5_IBUF_52 : STD_LOGIC; 
  signal inputnumber1_6_IBUF_53 : STD_LOGIC; 
  signal inputnumber1_7_IBUF_54 : STD_LOGIC; 
  signal inputnumber2_0_IBUF_63 : STD_LOGIC; 
  signal inputnumber2_1_IBUF_64 : STD_LOGIC; 
  signal inputnumber2_2_IBUF_65 : STD_LOGIC; 
  signal inputnumber2_3_IBUF_66 : STD_LOGIC; 
  signal inputnumber2_4_IBUF_67 : STD_LOGIC; 
  signal inputnumber2_5_IBUF_68 : STD_LOGIC; 
  signal inputnumber2_6_IBUF_69 : STD_LOGIC; 
  signal inputnumber2_7_IBUF_70 : STD_LOGIC; 
  signal Mcompar_GREATER_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_GREATER_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_LESS_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_LESS_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N1
    );
  Mcompar_GREATER_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber2_0_IBUF_63,
      I1 => inputnumber1_0_IBUF_47,
      O => Mcompar_GREATER_cmp_gt0000_lut(0)
    );
  Mcompar_GREATER_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => inputnumber2_0_IBUF_63,
      S => Mcompar_GREATER_cmp_gt0000_lut(0),
      O => Mcompar_GREATER_cmp_gt0000_cy(0)
    );
  Mcompar_GREATER_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber2_1_IBUF_64,
      I1 => inputnumber1_1_IBUF_48,
      O => Mcompar_GREATER_cmp_gt0000_lut(1)
    );
  Mcompar_GREATER_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_GREATER_cmp_gt0000_cy(0),
      DI => inputnumber2_1_IBUF_64,
      S => Mcompar_GREATER_cmp_gt0000_lut(1),
      O => Mcompar_GREATER_cmp_gt0000_cy(1)
    );
  Mcompar_GREATER_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber2_2_IBUF_65,
      I1 => inputnumber1_2_IBUF_49,
      O => Mcompar_GREATER_cmp_gt0000_lut(2)
    );
  Mcompar_GREATER_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_GREATER_cmp_gt0000_cy(1),
      DI => inputnumber2_2_IBUF_65,
      S => Mcompar_GREATER_cmp_gt0000_lut(2),
      O => Mcompar_GREATER_cmp_gt0000_cy(2)
    );
  Mcompar_GREATER_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber2_3_IBUF_66,
      I1 => inputnumber1_3_IBUF_50,
      O => Mcompar_GREATER_cmp_gt0000_lut(3)
    );
  Mcompar_GREATER_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_GREATER_cmp_gt0000_cy(2),
      DI => inputnumber2_3_IBUF_66,
      S => Mcompar_GREATER_cmp_gt0000_lut(3),
      O => Mcompar_GREATER_cmp_gt0000_cy(3)
    );
  Mcompar_GREATER_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber2_4_IBUF_67,
      I1 => inputnumber1_4_IBUF_51,
      O => Mcompar_GREATER_cmp_gt0000_lut(4)
    );
  Mcompar_GREATER_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_GREATER_cmp_gt0000_cy(3),
      DI => inputnumber2_4_IBUF_67,
      S => Mcompar_GREATER_cmp_gt0000_lut(4),
      O => Mcompar_GREATER_cmp_gt0000_cy(4)
    );
  Mcompar_GREATER_cmp_gt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber2_5_IBUF_68,
      I1 => inputnumber1_5_IBUF_52,
      O => Mcompar_GREATER_cmp_gt0000_lut(5)
    );
  Mcompar_GREATER_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_GREATER_cmp_gt0000_cy(4),
      DI => inputnumber2_5_IBUF_68,
      S => Mcompar_GREATER_cmp_gt0000_lut(5),
      O => Mcompar_GREATER_cmp_gt0000_cy(5)
    );
  Mcompar_GREATER_cmp_gt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber2_6_IBUF_69,
      I1 => inputnumber1_6_IBUF_53,
      O => Mcompar_GREATER_cmp_gt0000_lut(6)
    );
  Mcompar_GREATER_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_GREATER_cmp_gt0000_cy(5),
      DI => inputnumber2_6_IBUF_69,
      S => Mcompar_GREATER_cmp_gt0000_lut(6),
      O => Mcompar_GREATER_cmp_gt0000_cy(6)
    );
  Mcompar_GREATER_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber2_7_IBUF_70,
      I1 => inputnumber1_7_IBUF_54,
      O => Mcompar_GREATER_cmp_gt0000_lut(7)
    );
  Mcompar_GREATER_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_GREATER_cmp_gt0000_cy(6),
      DI => inputnumber2_7_IBUF_70,
      S => Mcompar_GREATER_cmp_gt0000_lut(7),
      O => Mcompar_GREATER_cmp_gt0000_cy(7)
    );
  Mcompar_LESS_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber1_0_IBUF_47,
      I1 => inputnumber2_0_IBUF_63,
      O => Mcompar_LESS_cmp_lt0000_lut(0)
    );
  Mcompar_LESS_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => inputnumber1_0_IBUF_47,
      S => Mcompar_LESS_cmp_lt0000_lut(0),
      O => Mcompar_LESS_cmp_lt0000_cy(0)
    );
  Mcompar_LESS_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber1_1_IBUF_48,
      I1 => inputnumber2_1_IBUF_64,
      O => Mcompar_LESS_cmp_lt0000_lut(1)
    );
  Mcompar_LESS_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_LESS_cmp_lt0000_cy(0),
      DI => inputnumber1_1_IBUF_48,
      S => Mcompar_LESS_cmp_lt0000_lut(1),
      O => Mcompar_LESS_cmp_lt0000_cy(1)
    );
  Mcompar_LESS_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber1_2_IBUF_49,
      I1 => inputnumber2_2_IBUF_65,
      O => Mcompar_LESS_cmp_lt0000_lut(2)
    );
  Mcompar_LESS_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_LESS_cmp_lt0000_cy(1),
      DI => inputnumber1_2_IBUF_49,
      S => Mcompar_LESS_cmp_lt0000_lut(2),
      O => Mcompar_LESS_cmp_lt0000_cy(2)
    );
  Mcompar_LESS_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber1_3_IBUF_50,
      I1 => inputnumber2_3_IBUF_66,
      O => Mcompar_LESS_cmp_lt0000_lut(3)
    );
  Mcompar_LESS_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_LESS_cmp_lt0000_cy(2),
      DI => inputnumber1_3_IBUF_50,
      S => Mcompar_LESS_cmp_lt0000_lut(3),
      O => Mcompar_LESS_cmp_lt0000_cy(3)
    );
  Mcompar_LESS_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber1_4_IBUF_51,
      I1 => inputnumber2_4_IBUF_67,
      O => Mcompar_LESS_cmp_lt0000_lut(4)
    );
  Mcompar_LESS_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_LESS_cmp_lt0000_cy(3),
      DI => inputnumber1_4_IBUF_51,
      S => Mcompar_LESS_cmp_lt0000_lut(4),
      O => Mcompar_LESS_cmp_lt0000_cy(4)
    );
  Mcompar_LESS_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber1_5_IBUF_52,
      I1 => inputnumber2_5_IBUF_68,
      O => Mcompar_LESS_cmp_lt0000_lut(5)
    );
  Mcompar_LESS_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_LESS_cmp_lt0000_cy(4),
      DI => inputnumber1_5_IBUF_52,
      S => Mcompar_LESS_cmp_lt0000_lut(5),
      O => Mcompar_LESS_cmp_lt0000_cy(5)
    );
  Mcompar_LESS_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber1_6_IBUF_53,
      I1 => inputnumber2_6_IBUF_69,
      O => Mcompar_LESS_cmp_lt0000_lut(6)
    );
  Mcompar_LESS_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_LESS_cmp_lt0000_cy(5),
      DI => inputnumber1_6_IBUF_53,
      S => Mcompar_LESS_cmp_lt0000_lut(6),
      O => Mcompar_LESS_cmp_lt0000_cy(6)
    );
  Mcompar_LESS_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => inputnumber1_7_IBUF_54,
      I1 => inputnumber2_7_IBUF_70,
      O => Mcompar_LESS_cmp_lt0000_lut(7)
    );
  Mcompar_LESS_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_LESS_cmp_lt0000_cy(6),
      DI => inputnumber1_7_IBUF_54,
      S => Mcompar_LESS_cmp_lt0000_lut(7),
      O => Mcompar_LESS_cmp_lt0000_cy(7)
    );
  inputnumber1_7_IBUF : IBUF
    port map (
      I => inputnumber1(7),
      O => inputnumber1_7_IBUF_54
    );
  inputnumber1_6_IBUF : IBUF
    port map (
      I => inputnumber1(6),
      O => inputnumber1_6_IBUF_53
    );
  inputnumber1_5_IBUF : IBUF
    port map (
      I => inputnumber1(5),
      O => inputnumber1_5_IBUF_52
    );
  inputnumber1_4_IBUF : IBUF
    port map (
      I => inputnumber1(4),
      O => inputnumber1_4_IBUF_51
    );
  inputnumber1_3_IBUF : IBUF
    port map (
      I => inputnumber1(3),
      O => inputnumber1_3_IBUF_50
    );
  inputnumber1_2_IBUF : IBUF
    port map (
      I => inputnumber1(2),
      O => inputnumber1_2_IBUF_49
    );
  inputnumber1_1_IBUF : IBUF
    port map (
      I => inputnumber1(1),
      O => inputnumber1_1_IBUF_48
    );
  inputnumber1_0_IBUF : IBUF
    port map (
      I => inputnumber1(0),
      O => inputnumber1_0_IBUF_47
    );
  inputnumber2_7_IBUF : IBUF
    port map (
      I => inputnumber2(7),
      O => inputnumber2_7_IBUF_70
    );
  inputnumber2_6_IBUF : IBUF
    port map (
      I => inputnumber2(6),
      O => inputnumber2_6_IBUF_69
    );
  inputnumber2_5_IBUF : IBUF
    port map (
      I => inputnumber2(5),
      O => inputnumber2_5_IBUF_68
    );
  inputnumber2_4_IBUF : IBUF
    port map (
      I => inputnumber2(4),
      O => inputnumber2_4_IBUF_67
    );
  inputnumber2_3_IBUF : IBUF
    port map (
      I => inputnumber2(3),
      O => inputnumber2_3_IBUF_66
    );
  inputnumber2_2_IBUF : IBUF
    port map (
      I => inputnumber2(2),
      O => inputnumber2_2_IBUF_65
    );
  inputnumber2_1_IBUF : IBUF
    port map (
      I => inputnumber2(1),
      O => inputnumber2_1_IBUF_64
    );
  inputnumber2_0_IBUF : IBUF
    port map (
      I => inputnumber2(0),
      O => inputnumber2_0_IBUF_63
    );
  GREATER_OBUF : OBUF
    port map (
      I => GREATER_OBUF_3,
      O => GREATER
    );
  LESS_OBUF : OBUF
    port map (
      I => LESS_OBUF_5,
      O => LESS
    );
  EQUAL_OBUF : OBUF
    port map (
      I => EQUAL_OBUF_1,
      O => EQUAL
    );
  LESS1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Mcompar_LESS_cmp_lt0000_cy(7),
      I1 => Mcompar_GREATER_cmp_gt0000_cy(7),
      O => LESS_OBUF_5
    );
  EQUAL1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Mcompar_GREATER_cmp_gt0000_cy(7),
      I1 => Mcompar_LESS_cmp_lt0000_cy(7),
      O => EQUAL_OBUF_1
    );
  Mcompar_GREATER_cmp_gt0000_cy_7_inv_INV_0 : INV
    port map (
      I => Mcompar_GREATER_cmp_gt0000_cy(7),
      O => GREATER_OBUF_3
    );

end Structure;

