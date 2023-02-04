--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:21:42 10/19/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/fouraddns_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FOUR_BIT_ADDER_DELAY
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
 
ENTITY fouraddns_test IS
END fouraddns_test;
 
ARCHITECTURE behavior OF fouraddns_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FOUR_BIT_ADDER_DELAY
    PORT(
         fouradderinput1 : IN  std_logic_vector(3 downto 0);
         fouradderinput2 : IN  std_logic_vector(3 downto 0);
         fouradderoutput : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal fouradderinput1 : std_logic_vector(3 downto 0) := (others => '0');
   signal fouradderinput2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal fouradderoutput : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FOUR_BIT_ADDER_DELAY PORT MAP (
          fouradderinput1 => fouradderinput1,
          fouradderinput2 => fouradderinput2,
          fouradderoutput => fouradderoutput
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		fouradderinput1 <= "0000";
      fouradderinput2 <= "0000";
		wait for 100 ns;	


      wait;
   end process;

END;
