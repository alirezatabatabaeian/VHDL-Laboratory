--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:09:03 10/28/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/comparator_if_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator_if
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
 
ENTITY comparator_if_test IS
END comparator_if_test;
 
ARCHITECTURE behavior OF comparator_if_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator_if
    PORT(
         inputnumber1 : IN  std_logic_vector(7 downto 0);
         inputnumber2 : IN  std_logic_vector(7 downto 0);
         EQUAL : OUT  std_logic;
         LESS : OUT  std_logic;
         GREATER : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inputnumber1 : std_logic_vector(7 downto 0) := (others => '0');
   signal inputnumber2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal EQUAL : std_logic;
   signal LESS : std_logic;
   signal GREATER : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator_if PORT MAP (
          inputnumber1 => inputnumber1,
          inputnumber2 => inputnumber2,
          EQUAL => EQUAL,
          LESS => LESS,
          GREATER => GREATER
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      
		inputnumber1 <= "11110000";
		inputnumber2 <= "11100000";
      wait for 100 ns;
		inputnumber1 <= "00010101";
		inputnumber2 <= "00100000";
      wait for 100 ns;		
		inputnumber1 <= "11110000";
		inputnumber2 <= "11110000";
      wait for 100 ns;


      wait;
   end process;

END;
