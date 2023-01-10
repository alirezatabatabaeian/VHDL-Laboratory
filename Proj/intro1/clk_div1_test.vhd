--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:17:42 11/30/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/clk_div1_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clk_div_5711
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
 
ENTITY clk_div1_test IS
END clk_div1_test;
 
ARCHITECTURE behavior OF clk_div1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clk_div_5711
    PORT(
         clk : IN  std_logic;
         clkoutput : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal clkoutput : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant clkoutput_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clk_div_5711 PORT MAP (
          clk => clk,
          clkoutput => clkoutput
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   clkoutput_process :process
   begin
		clkoutput <= '0';
		wait for clkoutput_period/2;
		clkoutput <= '1';
		wait for clkoutput_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
