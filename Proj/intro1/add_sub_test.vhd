--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:12:17 10/04/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/add_sub_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_add_sub
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
 
ENTITY add_sub_test IS
END add_sub_test;
 
ARCHITECTURE behavior OF add_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_add_sub
    PORT(
         into1 : IN  std_logic_vector(3 downto 0);
         into2 : IN  std_logic_vector(3 downto 0);
         sub : IN  std_logic;
         outo : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal into1 : std_logic_vector(3 downto 0) := (others => '0');
   signal into2 : std_logic_vector(3 downto 0) := (others => '0');
   signal sub : std_logic := '0';

 	--Outputs
   signal outo : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_add_sub PORT MAP (
          into1 => into1,
          into2 => into2,
          sub => sub,
          outo => outo
        );

 

   -- Stimulus process
   stim_proc: process
   begin		

		sub <= '0';
		into1 <= "1000" ;
      into2 <= "0010" ;
		wait for 100 ns;
		
		
		
		
		sub <= '1';
		into1 <= "1011" ;
      into2 <= "0010" ;
		wait for 100 ns;
		
      wait;
   end process;

END;
