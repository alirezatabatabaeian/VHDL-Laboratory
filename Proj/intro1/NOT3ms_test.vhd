--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:39:12 10/19/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/NOT3ms_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: NOT_DELAY3ns
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
 
ENTITY NOT3ms_test IS
END NOT3ms_test;
 
ARCHITECTURE behavior OF NOT3ms_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NOT_DELAY3ns
    PORT(
         notinput : IN  std_logic;
         notoutput : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal notinput : std_logic := '0';

 	--Outputs
   signal notoutput : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NOT_DELAY3ns PORT MAP (
          notinput => notinput,
          notoutput => notoutput
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
		
		notinput <='0';
      wait for 100 ns;	

      wait;
   end process;

END;
