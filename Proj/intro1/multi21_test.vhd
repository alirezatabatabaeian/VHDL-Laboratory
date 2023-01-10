--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:29:07 10/12/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/multi21_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multi2to1
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
 
ENTITY multi21_test IS
END multi21_test;
 
ARCHITECTURE behavior OF multi21_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multi2to1
    PORT(
         i : IN  std_logic_vector(1 downto 0);
         s : IN  std_logic;
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(1 downto 0) := (others => '0');
   signal s : std_logic := '0';

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multi2to1 PORT MAP (
          i => i,
          s => s,
          o => o
        );



   -- Stimulus process
   stim_proc: process
   begin		
		
		s <= '1';
		i <= "00";
      wait for 100 ns;
		s <= '1';
		i <= "01";
      wait for 100 ns;
		s <= '1';
		i <= "10";
      wait for 100 ns;
		s <= '1';
		i <= "11";
      wait for 100 ns;
		


      wait;
   end process;

END;
