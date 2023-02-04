--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:35:23 10/06/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/dec4.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dec4to16
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
 
ENTITY dec4 IS
END dec4;
 
ARCHITECTURE behavior OF dec4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec4to16
    PORT(
         enter : IN  std_logic_vector(2 downto 0);
         outer : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal enter : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal outer : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec4to16 PORT MAP (
          enter => enter,
          outer => outer
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
    		enter <= "000";
      wait for 100 ns;	
		enter <= "001";
      wait for 100 ns;	
		enter <= "010";
      wait for 100 ns;	
		enter <= "011";
      wait for 100 ns;		
		enter <= "100";
      wait for 100 ns;	
		enter <= "101";
      wait for 100 ns;	
		enter <= "110";
      wait for 100 ns;	
		enter <= "111";
      wait for 100 ns;


      wait;
   end process;

END;
