--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:18:40 10/20/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/fourcla_test.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FOURADDERCLA
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
 
ENTITY fourcla_test IS
END fourcla_test;
 
ARCHITECTURE behavior OF fourcla_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FOURADDERCLA
    PORT(
         fouradderclainput1 : IN  std_logic_vector(3 downto 0);
         fouradderclainput2 : IN  std_logic_vector(3 downto 0);
         fouradderclaoutput : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal fouradderclainput1 : std_logic_vector(3 downto 0) := (others => '0');
   signal fouradderclainput2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal fouradderclaoutput : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FOURADDERCLA PORT MAP (
          fouradderclainput1 => fouradderclainput1,
          fouradderclainput2 => fouradderclainput2,
          fouradderclaoutput => fouradderclaoutput
        );



   -- Stimulus process
   stim_proc: process
   begin
		
		fouradderclainput1 <="0001";
      fouradderclainput2 <="1111";
		wait for 100 ns;	


      wait;
   end process;

END;
