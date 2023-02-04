--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: fulladder_synthesis.vhd
-- /___/   /\     Timestamp: Sat Oct 03 15:53:43 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm fulladder -w -dir netgen/synthesis -ofmt vhdl -sim fulladder.ngc fulladder_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: fulladder.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\fulladder_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: fulladder
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

entity fulladder is
  port (
    b_out : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    a_in : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end fulladder;

architecture Structure of fulladder is
  signal a_in_0_IBUF_3 : STD_LOGIC; 
  signal a_in_1_IBUF_4 : STD_LOGIC; 
  signal a_in_2_IBUF_5 : STD_LOGIC; 
  signal b_out_0_OBUF_8 : STD_LOGIC; 
  signal b_out_1_OBUF_9 : STD_LOGIC; 
begin
  b_out_1_or00001 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => a_in_1_IBUF_4,
      I1 => a_in_2_IBUF_5,
      I2 => a_in_0_IBUF_3,
      O => b_out_1_OBUF_9
    );
  H2_Mxor_sum_Result1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_in_0_IBUF_3,
      I1 => a_in_1_IBUF_4,
      I2 => a_in_2_IBUF_5,
      O => b_out_0_OBUF_8
    );
  a_in_2_IBUF : IBUF
    port map (
      I => a_in(2),
      O => a_in_2_IBUF_5
    );
  a_in_1_IBUF : IBUF
    port map (
      I => a_in(1),
      O => a_in_1_IBUF_4
    );
  a_in_0_IBUF : IBUF
    port map (
      I => a_in(0),
      O => a_in_0_IBUF_3
    );
  b_out_1_OBUF : OBUF
    port map (
      I => b_out_1_OBUF_9,
      O => b_out(1)
    );
  b_out_0_OBUF : OBUF
    port map (
      I => b_out_0_OBUF_8,
      O => b_out(0)
    );

end Structure;

