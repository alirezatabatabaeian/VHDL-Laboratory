--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:48:59 12/01/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/clk_div_x2_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clk_div_x
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
 
ENTITY clk_div_x2_test IS
END clk_div_x2_test;
 
ARCHITECTURE behavior OF clk_div_x2_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clk_div_x
    PORT(
         clk : IN  std_logic;
         xin : IN  std_logic_vector(3 downto 0);
         out1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal xin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal out1 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clk_div_x PORT MAP (
          clk => clk,
          xin => xin,
          out1 => out1
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
      xin <= "1111";
      wait for 1000 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
