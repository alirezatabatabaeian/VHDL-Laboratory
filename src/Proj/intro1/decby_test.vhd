--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:47:39 10/12/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/decby_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dec2to4bymulti4to1
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
 
ENTITY decby_test IS
END decby_test;
 
ARCHITECTURE behavior OF decby_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec2to4bymulti4to1
    PORT(
         into : IN  std_logic_vector(1 downto 0);
         outo : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal into : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal outo : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec2to4bymulti4to1 PORT MAP (
          into => into,
          outo => outo
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		into <= "00";
      wait for 100 ns;	
		into <= "01";
      wait for 100 ns;	
		into <= "10";
      wait for 100 ns;
		into <= "11";
      wait for 100 ns;

      wait;
   end process;

END;
