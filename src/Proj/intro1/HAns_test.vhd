--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:27:05 10/19/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/HAns_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HA_DELAY
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
 
ENTITY HAns_test IS
END HAns_test;
 
ARCHITECTURE behavior OF HAns_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HA_DELAY
    PORT(
         hainput : IN  std_logic_vector(1 downto 0);
         hasum : OUT  std_logic;
         hacarry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal hainput : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal hasum : std_logic;
   signal hacarry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HA_DELAY PORT MAP (
          hainput => hainput,
          hasum => hasum,
          hacarry => hacarry
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      
		hainput <="11";
      wait for 100 ns;	


      wait;
   end process;

END;
