--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:00:19 10/06/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/mult_test.vhd
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
 
ENTITY mult_test IS
END mult_test;
 
ARCHITECTURE behavior OF mult_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multi_plexer
    PORT(
         intout : IN  std_logic_vector(3 downto 0);
         selector0 : IN  std_logic;
         selector1 : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal intout : std_logic_vector(3 downto 0) := (others => '0');
   signal selector0 : std_logic := '0';
   signal selector1 : std_logic := '0';

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multi_plexer PORT MAP (
          intout => intout,
          selector0 => selector0,
          selector1 => selector1,
          output => output
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		selector0 <= '1';
		selector1 <= '1';
		intout <= "1100";
      wait for 100 ns;

      selector0 <= '0';
		selector1 <= '1';
		intout <= "1110";
      wait for 100 ns;		

      wait for 100 ns;	


      wait;
   end process;

END;
