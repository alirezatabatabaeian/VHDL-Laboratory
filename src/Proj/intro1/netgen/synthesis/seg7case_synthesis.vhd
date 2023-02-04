--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: seg7case_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 28 20:43:18 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm seg7case -w -dir netgen/synthesis -ofmt vhdl -sim seg7case.ngc seg7case_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: seg7case.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\seg7case_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: seg7case
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

entity seg7case is
  port (
    ABCDEFG : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    inputnumber : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end seg7case;

architecture Structure of seg7case is
  signal ABCDEFG_0_OBUF_7 : STD_LOGIC; 
  signal ABCDEFG_1_OBUF_8 : STD_LOGIC; 
  signal ABCDEFG_2_OBUF_9 : STD_LOGIC; 
  signal ABCDEFG_3_OBUF_10 : STD_LOGIC; 
  signal ABCDEFG_4_OBUF_11 : STD_LOGIC; 
  signal ABCDEFG_5_OBUF_12 : STD_LOGIC; 
  signal ABCDEFG_6_OBUF_13 : STD_LOGIC; 
  signal inputnumber_0_IBUF_18 : STD_LOGIC; 
  signal inputnumber_1_IBUF_19 : STD_LOGIC; 
  signal inputnumber_2_IBUF_20 : STD_LOGIC; 
  signal inputnumber_3_IBUF_21 : STD_LOGIC; 
begin
  Mrom_ABCDEFG41 : LUT4
    generic map(
      INIT => X"545F"
    )
    port map (
      I0 => inputnumber_3_IBUF_21,
      I1 => inputnumber_0_IBUF_18,
      I2 => inputnumber_2_IBUF_20,
      I3 => inputnumber_1_IBUF_19,
      O => ABCDEFG_4_OBUF_11
    );
  Mrom_ABCDEFG21 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => inputnumber_0_IBUF_18,
      I1 => inputnumber_1_IBUF_19,
      I2 => inputnumber_2_IBUF_20,
      I3 => inputnumber_3_IBUF_21,
      O => ABCDEFG_2_OBUF_9
    );
  Mrom_ABCDEFG51 : LUT4
    generic map(
      INIT => X"2177"
    )
    port map (
      I0 => inputnumber_1_IBUF_19,
      I1 => inputnumber_3_IBUF_21,
      I2 => inputnumber_0_IBUF_18,
      I3 => inputnumber_2_IBUF_20,
      O => ABCDEFG_5_OBUF_12
    );
  Mrom_ABCDEFG61 : LUT4
    generic map(
      INIT => X"3627"
    )
    port map (
      I0 => inputnumber_1_IBUF_19,
      I1 => inputnumber_3_IBUF_21,
      I2 => inputnumber_2_IBUF_20,
      I3 => inputnumber_0_IBUF_18,
      O => ABCDEFG_6_OBUF_13
    );
  Mrom_ABCDEFG111 : LUT4
    generic map(
      INIT => X"130D"
    )
    port map (
      I0 => inputnumber_0_IBUF_18,
      I1 => inputnumber_3_IBUF_21,
      I2 => inputnumber_1_IBUF_19,
      I3 => inputnumber_2_IBUF_20,
      O => ABCDEFG_1_OBUF_8
    );
  Mrom_ABCDEFG11 : LUT4
    generic map(
      INIT => X"1636"
    )
    port map (
      I0 => inputnumber_2_IBUF_20,
      I1 => inputnumber_3_IBUF_21,
      I2 => inputnumber_1_IBUF_19,
      I3 => inputnumber_0_IBUF_18,
      O => ABCDEFG_0_OBUF_7
    );
  Mrom_ABCDEFG31 : LUT4
    generic map(
      INIT => X"161B"
    )
    port map (
      I0 => inputnumber_1_IBUF_19,
      I1 => inputnumber_2_IBUF_20,
      I2 => inputnumber_3_IBUF_21,
      I3 => inputnumber_0_IBUF_18,
      O => ABCDEFG_3_OBUF_10
    );
  inputnumber_3_IBUF : IBUF
    port map (
      I => inputnumber(3),
      O => inputnumber_3_IBUF_21
    );
  inputnumber_2_IBUF : IBUF
    port map (
      I => inputnumber(2),
      O => inputnumber_2_IBUF_20
    );
  inputnumber_1_IBUF : IBUF
    port map (
      I => inputnumber(1),
      O => inputnumber_1_IBUF_19
    );
  inputnumber_0_IBUF : IBUF
    port map (
      I => inputnumber(0),
      O => inputnumber_0_IBUF_18
    );
  ABCDEFG_6_OBUF : OBUF
    port map (
      I => ABCDEFG_6_OBUF_13,
      O => ABCDEFG(6)
    );
  ABCDEFG_5_OBUF : OBUF
    port map (
      I => ABCDEFG_5_OBUF_12,
      O => ABCDEFG(5)
    );
  ABCDEFG_4_OBUF : OBUF
    port map (
      I => ABCDEFG_4_OBUF_11,
      O => ABCDEFG(4)
    );
  ABCDEFG_3_OBUF : OBUF
    port map (
      I => ABCDEFG_3_OBUF_10,
      O => ABCDEFG(3)
    );
  ABCDEFG_2_OBUF : OBUF
    port map (
      I => ABCDEFG_2_OBUF_9,
      O => ABCDEFG(2)
    );
  ABCDEFG_1_OBUF : OBUF
    port map (
      I => ABCDEFG_1_OBUF_8,
      O => ABCDEFG(1)
    );
  ABCDEFG_0_OBUF : OBUF
    port map (
      I => ABCDEFG_0_OBUF_7,
      O => ABCDEFG(0)
    );

end Structure;

