--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: seqdetect1100_synthesis.vhd
-- /___/   /\     Timestamp: Sat Dec 19 06:59:49 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm seqdetect1100 -w -dir netgen/synthesis -ofmt vhdl -sim seqdetect1100.ngc seqdetect1100_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: seqdetect1100.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\seqdetect1100_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: seqdetect1100
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

entity seqdetect1100 is
  port (
    clk : in STD_LOGIC := 'X'; 
    y : out STD_LOGIC; 
    xin : in STD_LOGIC := 'X' 
  );
end seqdetect1100;

architecture Structure of seqdetect1100 is
  signal clk_BUFGP_1 : STD_LOGIC; 
  signal i_FSM_FFd1_2 : STD_LOGIC; 
  signal i_FSM_FFd1_In : STD_LOGIC; 
  signal i_FSM_FFd2_4 : STD_LOGIC; 
  signal xin_IBUF_6 : STD_LOGIC; 
  signal y_OBUF_8 : STD_LOGIC; 
  signal y_mux00001 : STD_LOGIC; 
begin
  i_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      D => i_FSM_FFd1_In,
      Q => i_FSM_FFd1_2
    );
  i_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      D => xin_IBUF_6,
      Q => i_FSM_FFd2_4
    );
  i_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => xin_IBUF_6,
      I1 => i_FSM_FFd1_2,
      I2 => i_FSM_FFd2_4,
      O => i_FSM_FFd1_In
    );
  xin_IBUF : IBUF
    port map (
      I => xin,
      O => xin_IBUF_6
    );
  y_OBUF : OBUF
    port map (
      I => y_OBUF_8,
      O => y
    );
  y_6 : FDR
    port map (
      C => clk_BUFGP_1,
      D => y_mux00001,
      R => i_FSM_FFd2_4,
      Q => y_OBUF_8
    );
  y_mux000011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => xin_IBUF_6,
      I1 => i_FSM_FFd1_2,
      O => y_mux00001
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_1
    );

end Structure;

