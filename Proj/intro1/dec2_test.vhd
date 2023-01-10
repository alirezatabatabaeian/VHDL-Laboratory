--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:18:37 10/06/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/dec2_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dec4to2
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
 
ENTITY dec2_test IS
END dec2_test;
 
ARCHITECTURE behavior OF dec2_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec4to2
    PORT(
         enter : IN  std_logic_vector(1 downto 0);
         outer : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal enter : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal outer : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec4to2 PORT MAP (
          enter => enter,
          outer => outer
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
		
		enter <= "00";
      wait for 100 ns;	
		enter <= "01";
      wait for 100 ns;	
		enter <= "10";
      wait for 100 ns;	
		enter <= "11";
      wait for 100 ns;	


      wait;
   end process;

END;
