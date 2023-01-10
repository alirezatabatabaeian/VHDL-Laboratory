--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: multi4to1by2to1byselectwhen_synthesis.vhd
-- /___/   /\     Timestamp: Thu Oct 29 00:09:06 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm multi4to1by2to1byselectwhen -w -dir netgen/synthesis -ofmt vhdl -sim multi4to1by2to1byselectwhen.ngc multi4to1by2to1byselectwhen_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: multi4to1by2to1byselectwhen.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\multi4to1by2to1byselectwhen_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: multi4to1by2to1byselectwhen
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

entity multi4to1by2to1byselectwhen is
  port (
    outputnumber : out STD_LOGIC; 
    inputnumber : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    selector : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end multi4to1by2to1byselectwhen;

architecture Structure of multi4to1by2to1byselectwhen is
  signal N5 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal inputnumber_0_IBUF_6 : STD_LOGIC; 
  signal inputnumber_1_IBUF_7 : STD_LOGIC; 
  signal inputnumber_2_IBUF_8 : STD_LOGIC; 
  signal inputnumber_3_IBUF_9 : STD_LOGIC; 
  signal outputnumber_OBUF_11 : STD_LOGIC; 
  signal selector_0_IBUF_14 : STD_LOGIC; 
  signal selector_1_IBUF_15 : STD_LOGIC; 
begin
  inputnumber_3_IBUF : IBUF
    port map (
      I => inputnumber(3),
      O => inputnumber_3_IBUF_9
    );
  inputnumber_2_IBUF : IBUF
    port map (
      I => inputnumber(2),
      O => inputnumber_2_IBUF_8
    );
  inputnumber_1_IBUF : IBUF
    port map (
      I => inputnumber(1),
      O => inputnumber_1_IBUF_7
    );
  inputnumber_0_IBUF : IBUF
    port map (
      I => inputnumber(0),
      O => inputnumber_0_IBUF_6
    );
  selector_1_IBUF : IBUF
    port map (
      I => selector(1),
      O => selector_1_IBUF_15
    );
  selector_0_IBUF : IBUF
    port map (
      I => selector(0),
      O => selector_0_IBUF_14
    );
  outputnumber_OBUF : OBUF
    port map (
      I => outputnumber_OBUF_11,
      O => outputnumber
    );
  outputnumber_8 : MUXF5
    port map (
      I0 => N5,
      I1 => N6,
      S => selector_1_IBUF_15,
      O => outputnumber_OBUF_11
    );
  outputnumber_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selector_0_IBUF_14,
      I1 => inputnumber_0_IBUF_6,
      I2 => inputnumber_1_IBUF_7,
      O => N5
    );
  outputnumber_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selector_0_IBUF_14,
      I1 => inputnumber_2_IBUF_8,
      I2 => inputnumber_3_IBUF_9,
      O => N6
    );

end Structure;

