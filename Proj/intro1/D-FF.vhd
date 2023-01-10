----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:27:13 11/16/2020 
-- Design Name: 
-- Module Name:    D-FF - Behavioral 
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

entity DFF is
    Port ( clk : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qbar : out  STD_LOGIC);
end DFF;

architecture Behavioral of DFF is

begin

process ( clk,d,reset )
begin
   if rising_edge(clk) then
		if reset = '1' then
			q <= '0' ;
			qbar <= '0' ;
		elsif d = '1' then
			q <= '1' ;
			qbar <= '0' ;
		elsif d = '0' then
			q <= '0' ;
			qbar <= '1' ;
		end if;
   end if;
end process;
		

end Behavioral;

