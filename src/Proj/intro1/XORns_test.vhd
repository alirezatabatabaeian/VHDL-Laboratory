--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:58:26 10/19/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/XORns_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: XOR_DELAY
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
 
ENTITY XORns_test IS
END XORns_test;
 
ARCHITECTURE behavior OF XORns_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT XOR_DELAY
    PORT(
         xorinput : IN  std_logic_vector(1 downto 0);
         xoroutput : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal xorinput : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal xoroutput : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: XOR_DELAY PORT MAP (
          xorinput => xorinput,
          xoroutput => xoroutput
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      
		xorinput <= "00";
      wait for 100 ns;	


      wait;
   end process;

END;
