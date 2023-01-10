--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:44:23 10/19/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/FAns_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FA_DELAY
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
 
ENTITY FAns_test IS
END FAns_test;
 
ARCHITECTURE behavior OF FAns_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FA_DELAY
    PORT(
         fainput : IN  std_logic_vector(2 downto 0);
         fasum : OUT  std_logic;
         facarry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal fainput : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal fasum : std_logic;
   signal facarry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FA_DELAY PORT MAP (
          fainput => fainput,
          fasum => fasum,
          facarry => facarry
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		fainput <="100";
      wait for 100 ns;


      wait;
   end process;

END;
