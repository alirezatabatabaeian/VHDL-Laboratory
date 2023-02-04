--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:24:17 12/19/2020
-- Design Name:   
-- Module Name:   E:/Proj/intro1/RAM_test0.vhd
-- Project Name:  intro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
 
ENTITY RAM_test0 IS
END RAM_test0;
 
ARCHITECTURE behavior OF RAM_test0 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         addressin : IN  std_logic_vector(5 downto 0);
         addressout : IN  std_logic_vector(5 downto 0);
         data_in : IN  std_logic_vector(7 downto 0);
         data_out : OUT  std_logic_vector(7 downto 0);
         RE : IN  std_logic;
         WE : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal addressin : std_logic_vector(5 downto 0) := (others => '0');
   signal addressout : std_logic_vector(5 downto 0) := (others => '0');
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal RE : std_logic := '0';
   signal WE : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          addressin => addressin,
          addressout => addressout,
          data_in => data_in,
          data_out => data_out,
          RE => RE,
          WE => WE,
          clk => clk,
          reset => reset
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		reset <= '0';
		RE <= '1';
		WE <= '0';
		addressout <= "010101";
		addressin <= "000000";
		data_in <= "11111111";
      wait for 10 ns;	
		reset <= '0';
		RE <= '0';
		WE <= '1';
		addressout <= "000000";
		addressin <= "000000";
		data_in <= "11111111";
      wait for 10 ns;	
		reset <= '0';
		RE <= '1';
		WE <= '1';
		addressout <= "000000";
		addressin <= "000000";
		data_in <= "10101010";
      wait for 20 ns;	
		reset <= '1';
		wait for 10 ns;
		reset <= '0';
		RE <= '1';
		WE <= '0';
		addressout <= "000000";
		addressin <= "000000";
		data_in <= "11111111";
      wait for 10 ns;	
 

      wait;
   end process;

END;
