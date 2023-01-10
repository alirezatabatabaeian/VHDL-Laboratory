--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: priorityendcoder4to2_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 28 22:38:17 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm priorityendcoder4to2 -w -dir netgen/synthesis -ofmt vhdl -sim priorityendcoder4to2.ngc priorityendcoder4to2_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: priorityendcoder4to2.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\priorityendcoder4to2_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: priorityendcoder4to2
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

entity priorityendcoder4to2 is
  port (
    outputnumber : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    inputnumber : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end priorityendcoder4to2;

architecture Structure of priorityendcoder4to2 is
  signal N0 : STD_LOGIC; 
  signal inputnumber_0_BUFGP_5 : STD_LOGIC; 
  signal inputnumber_1_IBUF_6 : STD_LOGIC; 
  signal inputnumber_2_IBUF_7 : STD_LOGIC; 
  signal inputnumber_3_IBUF_8 : STD_LOGIC; 
  signal outputnumber_0_11 : STD_LOGIC; 
  signal outputnumber_0_or0000 : STD_LOGIC; 
  signal outputnumber_0_or0001 : STD_LOGIC; 
  signal outputnumber_1_14 : STD_LOGIC; 
  signal outputnumber_1_and0000 : STD_LOGIC; 
  signal outputnumber_1_or0000 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  outputnumber_0 : LDCP
    port map (
      CLR => outputnumber_0_or0000,
      D => inputnumber_1_IBUF_6,
      G => inputnumber_0_BUFGP_5,
      PRE => outputnumber_0_or0001,
      Q => outputnumber_0_11
    );
  outputnumber_1 : LDCP
    port map (
      CLR => outputnumber_1_and0000,
      D => N0,
      G => inputnumber_0_BUFGP_5,
      PRE => outputnumber_1_or0000,
      Q => outputnumber_1_14
    );
  outputnumber_Q_1_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inputnumber_3_IBUF_8,
      I1 => inputnumber_2_IBUF_7,
      O => outputnumber_1_or0000
    );
  outputnumber_0_or00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inputnumber_3_IBUF_8,
      I1 => inputnumber_1_IBUF_6,
      O => outputnumber_0_or0001
    );
  outputnumber_0_or00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => inputnumber_3_IBUF_8,
      I1 => inputnumber_2_IBUF_7,
      O => outputnumber_0_or0000
    );
  inputnumber_3_IBUF : IBUF
    port map (
      I => inputnumber(3),
      O => inputnumber_3_IBUF_8
    );
  inputnumber_2_IBUF : IBUF
    port map (
      I => inputnumber(2),
      O => inputnumber_2_IBUF_7
    );
  inputnumber_1_IBUF : IBUF
    port map (
      I => inputnumber(1),
      O => inputnumber_1_IBUF_6
    );
  outputnumber_1_OBUF : OBUF
    port map (
      I => outputnumber_1_14,
      O => outputnumber(1)
    );
  outputnumber_0_OBUF : OBUF
    port map (
      I => outputnumber_0_11,
      O => outputnumber(0)
    );
  outputnumber_1_and00001 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => inputnumber_3_IBUF_8,
      I1 => inputnumber_2_IBUF_7,
      I2 => inputnumber_1_IBUF_6,
      O => outputnumber_1_and0000
    );
  inputnumber_0_BUFGP : BUFGP
    port map (
      I => inputnumber(0),
      O => inputnumber_0_BUFGP_5
    );

end Structure;

