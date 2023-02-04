--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:40:40 10/28/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/priorityencoder4to2_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: priorityendcoder4to2
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
 
ENTITY priorityencoder4to2_test IS
END priorityencoder4to2_test;
 
ARCHITECTURE behavior OF priorityencoder4to2_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT priorityendcoder4to2
    PORT(
         inputnumber : IN  std_logic_vector(3 downto 0);
         outputnumber : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inputnumber : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal outputnumber : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: priorityendcoder4to2 PORT MAP (
          inputnumber => inputnumber,
          outputnumber => outputnumber
        );



   -- Stimulus process
   stim_proc: process
   begin		
      
		inputnumber <= "1000";
      wait for 100 ns;
		inputnumber <= "1100";
      wait for 100 ns;
		inputnumber <= "0110";
      wait for 100 ns;
		inputnumber <= "1001";
      wait for 100 ns;
		inputnumber <= "0010";
      wait for 100 ns;


      wait;
   end process;

END;
