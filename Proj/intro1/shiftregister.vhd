----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:57:35 12/18/2020 
-- Design Name: 
-- Module Name:    shiftregister - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shiftregister is
Port (  	   inputnumber : in  STD_LOGIC_VECTOR (7 downto 0);
				outputnumber : out std_logic_vector ( 7 downto 0);
				SI: in  STD_LOGIC ;
            modeR: in  STD_LOGIC ;
            reset: in  STD_LOGIC ;
			   preset: in  STD_LOGIC ;
				clk : in std_logic);
end shiftregister;

architecture Behavioral of shiftregister is

begin

process (clk,reset,preset)
begin
	if reset = '1' then 
	outputnumber <= "00000000";
	elsif preset = '1' then
	outputnumber <= "11111111";
   elsif rising_edge(clk) then
		if    SI = '1' and modeR = '0' then
		
		elsif SI = '1' and modeR = '1' then
		
		elsif SI = '0' and modeR = '0' then
		
		elsif SI = '0' and modeR = '1' then
		
		end if;
	end if;
end process;

end Behavioral;

