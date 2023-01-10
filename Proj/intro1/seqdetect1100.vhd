----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:48:22 12/19/2020 
-- Design Name: 
-- Module Name:    seqdetect1100 - Behavioral 
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

entity seqdetect1100 is
    Port ( xin : in  STD_LOGIC;
           y : out  STD_LOGIC;
			  clk : in  STD_LOGIC);
end seqdetect1100;
architecture Behavioral of seqdetect1100 is
signal i : std_logic_vector(1 downto 0):="00";
begin
process (clk)
begin
   if rising_edge(clk) then
		if xin = '1' and i = "00" then
			i <= "01";
			y <= '0';
		elsif xin = '0' and i = "00" then
			i <= "00";
			y <= '0';
		end if;
		if xin = '1' and i = "01" then
			i <= "10";
			y <= '0';
		elsif xin= '0' and i = "01" then
			i <= "00";
			y <= '0';
		end if;		 
		if xin= '0' and i = "10" then
			i <= "11";
			y <= '0';
		elsif xin= '1' and i = "10" then
			i <= "10";
			y <= '0';
		end if;	
		if xin= '0' and i = "11" then
			i <= "00";
			y <= '1';
		elsif xin= '1' and i = "11" then
			i <= "01";
			y <= '0';
		end if;	
	end if;
end process;


end Behavioral;

