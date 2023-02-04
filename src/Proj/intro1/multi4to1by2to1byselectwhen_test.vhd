--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:09:59 10/29/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/multi4to1by2to1byselectwhen_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multi4to1by2to1byselectwhen
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
 
ENTITY multi4to1by2to1byselectwhen_test IS
END multi4to1by2to1byselectwhen_test;
 
ARCHITECTURE behavior OF multi4to1by2to1byselectwhen_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multi4to1by2to1byselectwhen
    PORT(
         inputnumber : IN  std_logic_vector(3 downto 0);
         selector : IN  std_logic_vector(1 downto 0);
         outputnumber : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inputnumber : std_logic_vector(3 downto 0) := (others => '0');
   signal selector : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal outputnumber : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multi4to1by2to1byselectwhen PORT MAP (
          inputnumber => inputnumber,
          selector => selector,
          outputnumber => outputnumber
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
     
	   inputnumber <="1010";
		selector <="00";
      wait for 100 ns;	
	   inputnumber <="1000";
		selector <="11";
      wait for 100 ns;

      wait;
   end process;

END;
