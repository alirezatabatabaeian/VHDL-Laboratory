--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:00:07 10/13/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/seg_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seg7
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
 
ENTITY seg_test IS
END seg_test;
 
ARCHITECTURE behavior OF seg_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seg7
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         sout : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';

 	--Outputs
   signal sout : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seg7 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          sout => sout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
      wait for 100 ns;
		
      a <= '1';
		b <= '0';
		c <= '0';
		d <= '0';
      wait for 100 ns;		

      wait;
   end process;

END;
