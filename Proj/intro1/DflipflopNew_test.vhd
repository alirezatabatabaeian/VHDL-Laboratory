--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:57:32 12/18/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/DflipflopNew_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Dflipflop
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
 
ENTITY DflipflopNew_test IS
END DflipflopNew_test;
 
ARCHITECTURE behavior OF DflipflopNew_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Dflipflop
    PORT(
         clk : IN  std_logic;
         d : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic;
         qbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal d : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qbar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Dflipflop PORT MAP (
          clk => clk,
          d => d,
          reset => reset,
          q => q,
          qbar => qbar
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
      d<='1';
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
