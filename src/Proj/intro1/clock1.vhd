----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:42:25 10/27/2020 
-- Design Name: 
-- Module Name:    clock - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock is
    Port ( clk   : in  STD_LOGIC;
			  sig_out  : out  STD_LOGIC_vector(3 downto 0));
end clock;

architecture Behavioral of clock is

signal so : std_logic_vector(3 downto 0) :="0000";

begin



process(clk)
	variable count : integer := 0;
	begin
		if rising_edge(clk) then 
			count := count + 1;
			if count=100 then
				so <= so + 1;
				sig_out <= so;
				count :=0;
			end if;
			if so="1010" then
				so <= "0000";
			end if;
		end if;
end process;



end Behavioral;

