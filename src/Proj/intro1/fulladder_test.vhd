--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:55:41 10/03/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/fulladder_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladder
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
 
ENTITY fulladder_test IS
END fulladder_test;
 
ARCHITECTURE behavior OF fulladder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladder
    PORT(
         a_in : IN  std_logic_vector(2 downto 0);
         b_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_in : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal b_out : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladder PORT MAP (
          a_in => a_in,
          b_out => b_out
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      a_in <= "000" ;
      wait for 100 ns;	
		
	   a_in <= "001" ;
      wait for 100 ns;
		
		a_in <= "010" ;
      wait for 100 ns;
		
		a_in <= "011" ;
      wait for 100 ns;
		
		a_in <= "100" ;
      wait for 100 ns;
		
      a_in <= "101" ;
      wait for 100 ns;
		
		a_in <= "110" ;
      wait for 100 ns;
		
		a_in <= "111" ;
      wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
