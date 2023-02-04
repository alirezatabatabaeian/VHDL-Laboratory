--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: multi_plexer_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 12 19:20:50 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm multi_plexer -w -dir netgen/synthesis -ofmt vhdl -sim multi_plexer.ngc multi_plexer_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: multi_plexer.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\multi_plexer_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: multi_plexer
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

entity multi_plexer is
  port (
    selector0 : in STD_LOGIC := 'X'; 
    selector1 : in STD_LOGIC := 'X'; 
    output : out STD_LOGIC; 
    intout : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end multi_plexer;

architecture Structure of multi_plexer is
  signal N5 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal intout_0_IBUF_6 : STD_LOGIC; 
  signal intout_1_IBUF_7 : STD_LOGIC; 
  signal intout_2_IBUF_8 : STD_LOGIC; 
  signal intout_3_IBUF_9 : STD_LOGIC; 
  signal output_OBUF_11 : STD_LOGIC; 
  signal selector0_IBUF_13 : STD_LOGIC; 
  signal selector1_IBUF_15 : STD_LOGIC; 
begin
  selector0_IBUF : IBUF
    port map (
      I => selector0,
      O => selector0_IBUF_13
    );
  selector1_IBUF : IBUF
    port map (
      I => selector1,
      O => selector1_IBUF_15
    );
  intout_3_IBUF : IBUF
    port map (
      I => intout(3),
      O => intout_3_IBUF_9
    );
  intout_2_IBUF : IBUF
    port map (
      I => intout(2),
      O => intout_2_IBUF_8
    );
  intout_1_IBUF : IBUF
    port map (
      I => intout(1),
      O => intout_1_IBUF_7
    );
  intout_0_IBUF : IBUF
    port map (
      I => intout(0),
      O => intout_0_IBUF_6
    );
  output_OBUF : OBUF
    port map (
      I => output_OBUF_11,
      O => output
    );
  output_8 : MUXF5
    port map (
      I0 => N5,
      I1 => N6,
      S => selector1_IBUF_15,
      O => output_OBUF_11
    );
  output_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selector0_IBUF_13,
      I1 => intout_0_IBUF_6,
      I2 => intout_1_IBUF_7,
      O => N5
    );
  output_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selector0_IBUF_13,
      I1 => intout_2_IBUF_8,
      I2 => intout_3_IBUF_9,
      O => N6
    );

end Structure;

