----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:32:49 11/10/2020 
-- Design Name: 
-- Module Name:    coun0-9and9-0 - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count09and90 is
    Port ( clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           out1 : out  STD_LOGIC_vector(3 downto 0));
end count09and90;
architecture Behavioral of count09and90 is
signal number : STD_LOGIC_VECTOR(3 downto 0) :="0000";
signal x : STD_LOGIC :='0';
begin
process (clk,number,reset)
	variable count : integer := 0;
	begin
	   if rising_edge(clk) then
			if reset = '1' then
				count := 0;
				number <= "0000";
				x <= '0';
		   elsif x='0' then
				count := count + 1;
				if number = "1000" then
						if count = 100  then
							number <= "1001";
							count := 0;
							x <= '1';
						end if;
				elsif count = 100  then
					number <= number + '1';
					count := 0;
				end if;
			elsif x='1' then
				count := count + 1;
				if number = "0001" then
						if count = 100  then
							number <= "0000";
							count := 0;
							x <= '0';
						end if;
				elsif count = 100  then
					number <= number - '1';
					count := 0;
				end if;
			end if;
		out1 <= number;
		end if;
end process;

end Behavioral;

