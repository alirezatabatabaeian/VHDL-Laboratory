----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:35 11/08/2020 
-- Design Name: 
-- Module Name:    test1 - Behavioral 
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

entity test1 is
    Port ( clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
			  pause : in  STD_LOGIC;
           out1 : out  STD_LOGIC_vector(3 downto 0));
end test1;
architecture Behavioral of test1 is
signal number : STD_LOGIC_VECTOR(3 downto 0) :="0000";
begin
	
	process (clk,number,reset,pause)
	variable count : integer := 0;
	begin
		if rising_edge(clk) then
			if reset = '1' then
				count := 0;
				number <= "0000";
			elsif pause = '1' then
			--
			else
				count := count + 1;
					if number = "1001" then
						if count = 100  then
							number <= "0000";
							count := 0;
						end if;
					elsif count = 100  then
						number <= number + '1';
						count := 0;
					end if;
			end if;
			out1 <= number;
		end if;
	end process;

end Behavioral;

