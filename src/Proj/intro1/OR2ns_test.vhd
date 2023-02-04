--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:26:09 10/19/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/OR2ns_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OR_DELAY2ns
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
 
ENTITY OR2ns_test IS
END OR2ns_test;
 
ARCHITECTURE behavior OF OR2ns_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OR_DELAY2ns
    PORT(
         orinput : IN  std_logic_vector(1 downto 0);
         oroutput : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal orinput : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal oroutput : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OR_DELAY2ns PORT MAP (
          orinput => orinput,
          oroutput => oroutput
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      
		orinput <="01";
      wait for 100 ns;	


      wait;
   end process;

END;
