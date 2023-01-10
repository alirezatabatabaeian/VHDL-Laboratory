--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:25:38 12/19/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/seqdetect1100_test2.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seqdetect1100
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY seqdetect1100_test2 IS
END seqdetect1100_test2;
 
ARCHITECTURE behavior OF seqdetect1100_test2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seqdetect1100
    PORT(
         xin : IN  std_logic;
         y : OUT  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal xin : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal y : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seqdetect1100 PORT MAP (
          xin => xin,
          y => y,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		xin <= '1';
      wait for clk_period;
		xin <= '1';
      wait for clk_period;
		xin <= '0';
      wait for clk_period;
		xin <= '0';
      wait for clk_period;
		xin <= '0';
      wait for clk_period;
		xin <= '0';
      wait for clk_period;
		xin <= '1';
      wait for clk_period;
		xin <= '1';
      wait for clk_period;
		xin <= '0';
      wait for clk_period;
		xin <= '1';
      wait for clk_period;

      wait;
   end process;

END;
