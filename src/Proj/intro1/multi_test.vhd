--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:31:00 10/06/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/multi_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multi_plexer
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
 
ENTITY multi_test IS
END multi_test;
 
ARCHITECTURE behavior OF multi_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multi_plexer
    PORT(
         intout : IN  std_logic_vector(1 downto 0);
         selector : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal intout : std_logic_vector(1 downto 0) := (others => '0');
   signal selector : std_logic := '0';

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multi_plexer PORT MAP (
          intout => intout,
          selector => selector,
          output => output
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      selector <= '0';
		intout <= "00";
      wait for 100 ns;

      selector <= '0';
		intout <= "01";
      wait for 100 ns;	

      selector <= '0';
		intout <= "11";
      wait for 100 ns;

      selector <= '0';
		intout <= "10";
      wait for 100 ns;

      selector <= '1';
		intout <= "00";
      wait for 100 ns;

      selector <= '1';
		intout <= "01";
      wait for 100 ns;

      selector <= '1';
		intout <= "11";
      wait for 100 ns;

      selector <= '1';
		intout <= "10";
      wait for 100 ns;		

      wait;
   end process;

END;
