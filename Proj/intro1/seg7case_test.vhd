--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:44:00 10/28/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/seg7case_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seg7case
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
 
ENTITY seg7case_test IS
END seg7case_test;
 
ARCHITECTURE behavior OF seg7case_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seg7case
    PORT(
         inputnumber : IN  std_logic_vector(3 downto 0);
         ABCDEFG : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inputnumber : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ABCDEFG : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seg7case PORT MAP (
          inputnumber => inputnumber,
          ABCDEFG => ABCDEFG
        );



   -- Stimulus process
   stim_proc: process
   begin		
      
		inputnumber <= "0000";
      wait for 100 ns;	
		inputnumber <= "0010";
      wait for 100 ns;
		inputnumber <= "0110";
      wait for 100 ns;

      wait;
   end process;

END;
