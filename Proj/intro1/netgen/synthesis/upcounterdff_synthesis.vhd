--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: upcounterdff_synthesis.vhd
-- /___/   /\     Timestamp: Tue Nov 17 02:28:07 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm upcounterdff -w -dir netgen/synthesis -ofmt vhdl -sim upcounterdff.ngc upcounterdff_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: upcounterdff.ngc
-- Output file	: E:\Proj\intro1\netgen\synthesis\upcounterdff_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: upcounterdff
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

entity upcounterdff is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    outo : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end upcounterdff;

architecture Structure of upcounterdff is
  signal DFF1_q_0 : STD_LOGIC; 
  signal DFF1_q_or0000_1 : STD_LOGIC; 
  signal DFF1_qbar_2 : STD_LOGIC; 
  signal DFF1_qbar_or0000_3 : STD_LOGIC; 
  signal DFF2_q_4 : STD_LOGIC; 
  signal DFF2_q_or0000 : STD_LOGIC; 
  signal DFF2_q_or000017_6 : STD_LOGIC; 
  signal DFF2_q_or00008_7 : STD_LOGIC; 
  signal DFF2_qbar_8 : STD_LOGIC; 
  signal DFF2_qbar_or0000_9 : STD_LOGIC; 
  signal DFF3_q_10 : STD_LOGIC; 
  signal DFF3_q_or0000_11 : STD_LOGIC; 
  signal DFF3_qbar_12 : STD_LOGIC; 
  signal DFF3_qbar_or0000_13 : STD_LOGIC; 
  signal DFF4_q_14 : STD_LOGIC; 
  signal DFF4_q_or0000 : STD_LOGIC; 
  signal DFF4_qbar_16 : STD_LOGIC; 
  signal DFF4_qbar_or0000 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal clk_BUFGP_25 : STD_LOGIC; 
  signal reset_IBUF_31 : STD_LOGIC; 
begin
  XST_VCC : VCC
    port map (
      P => N1
    );
  DFF4_qbar : FDR
    port map (
      C => clk_BUFGP_25,
      D => N1,
      R => DFF4_qbar_or0000,
      Q => DFF4_qbar_16
    );
  DFF4_q : FDR
    port map (
      C => clk_BUFGP_25,
      D => N1,
      R => DFF4_q_or0000,
      Q => DFF4_q_14
    );
  DFF3_qbar : FDR
    port map (
      C => clk_BUFGP_25,
      D => N1,
      R => DFF3_qbar_or0000_13,
      Q => DFF3_qbar_12
    );
  DFF3_q : FDR
    port map (
      C => clk_BUFGP_25,
      D => N1,
      R => DFF3_q_or0000_11,
      Q => DFF3_q_10
    );
  DFF2_qbar : FDR
    port map (
      C => clk_BUFGP_25,
      D => N1,
      R => DFF2_qbar_or0000_9,
      Q => DFF2_qbar_8
    );
  DFF2_q : FDR
    port map (
      C => clk_BUFGP_25,
      D => N1,
      R => DFF2_q_or0000,
      Q => DFF2_q_4
    );
  DFF1_qbar : FDR
    port map (
      C => clk_BUFGP_25,
      D => N1,
      R => DFF1_qbar_or0000_3,
      Q => DFF1_qbar_2
    );
  DFF1_q : FDR
    port map (
      C => clk_BUFGP_25,
      D => N1,
      R => DFF1_q_or0000_1,
      Q => DFF1_q_0
    );
  DFF4_qbar_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset_IBUF_31,
      I1 => DFF4_qbar_16,
      O => DFF4_qbar_or0000
    );
  DFF4_q_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => DFF4_qbar_16,
      I1 => reset_IBUF_31,
      O => DFF4_q_or0000
    );
  DFF3_qbar_or0000 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => reset_IBUF_31,
      I1 => DFF3_q_10,
      I2 => DFF4_qbar_16,
      I3 => N11,
      O => DFF3_qbar_or0000_13
    );
  DFF1_qbar_or0000 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => DFF2_q_4,
      I1 => DFF4_q_14,
      I2 => DFF3_q_10,
      I3 => N3,
      O => DFF1_qbar_or0000_3
    );
  DFF3_q_or0000 : LUT4
    generic map(
      INIT => X"BFAA"
    )
    port map (
      I0 => reset_IBUF_31,
      I1 => DFF3_q_10,
      I2 => DFF4_qbar_16,
      I3 => N5,
      O => DFF3_q_or0000_11
    );
  DFF1_q_or0000 : LUT4
    generic map(
      INIT => X"BFAA"
    )
    port map (
      I0 => reset_IBUF_31,
      I1 => DFF1_q_0,
      I2 => DFF4_qbar_16,
      I3 => N7,
      O => DFF1_q_or0000_1
    );
  DFF2_qbar_or0000 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => DFF3_qbar_12,
      I1 => DFF2_q_4,
      I2 => DFF4_qbar_16,
      I3 => N9,
      O => DFF2_qbar_or0000_9
    );
  DFF2_q_or00008 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => DFF2_qbar_8,
      I1 => DFF3_q_10,
      I2 => DFF4_q_14,
      O => DFF2_q_or00008_7
    );
  DFF2_q_or000028 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => reset_IBUF_31,
      I1 => DFF2_q_or000017_6,
      I2 => DFF2_q_or00008_7,
      O => DFF2_q_or0000
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_31
    );
  outo_3_OBUF : OBUF
    port map (
      I => DFF1_q_0,
      O => outo(3)
    );
  outo_2_OBUF : OBUF
    port map (
      I => DFF2_q_4,
      O => outo(2)
    );
  outo_1_OBUF : OBUF
    port map (
      I => DFF3_q_10,
      O => outo(1)
    );
  outo_0_OBUF : OBUF
    port map (
      I => DFF4_q_14,
      O => outo(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_25
    );
  DFF3_qbar_or0000_SW0 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => DFF1_qbar_2,
      I1 => DFF3_qbar_12,
      I2 => DFF4_q_14,
      LO => N11
    );
  DFF1_qbar_or0000_SW0 : LUT3_L
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => reset_IBUF_31,
      I1 => DFF1_q_0,
      I2 => DFF4_qbar_16,
      LO => N3
    );
  DFF3_q_or0000_SW0 : LUT3_L
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => DFF1_qbar_2,
      I1 => DFF3_qbar_12,
      I2 => DFF4_q_14,
      LO => N5
    );
  DFF1_q_or0000_SW0 : LUT3_L
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => DFF2_q_4,
      I1 => DFF3_q_10,
      I2 => DFF4_q_14,
      LO => N7
    );
  DFF2_qbar_or0000_SW0 : LUT4_L
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => reset_IBUF_31,
      I1 => DFF2_qbar_8,
      I2 => DFF4_q_14,
      I3 => DFF3_q_10,
      LO => N9
    );
  DFF2_q_or000017 : LUT3_L
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => DFF2_q_4,
      I1 => DFF4_qbar_16,
      I2 => DFF3_qbar_12,
      LO => DFF2_q_or000017_6
    );

end Structure;

