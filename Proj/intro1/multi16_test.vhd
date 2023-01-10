--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:07:24 10/12/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/multi16_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multi16to1by2to1
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
 
ENTITY multi16_test IS
END multi16_test;
 
ARCHITECTURE behavior OF multi16_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multi16to1by2to1
    PORT(
         input : IN  std_logic_vector(15 downto 0);
         selector : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(15 downto 0) := (others => '0');
   signal selector : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multi16to1by2to1 PORT MAP (
          input => input,
          selector => selector,
          output => output
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		input <= "0000000000000000";
		selector <= "0000";
      wait for 100 ns;
		input <= "0000000000000001";
		selector <= "0000";
      wait for 100 ns;
		input <= "0000100000000000";
		selector <= "1011";
      wait for 100 ns;
		input <= "0000001000000000";
		selector <= "1001";
      wait for 100 ns;

	


      wait;
   end process;

END;
