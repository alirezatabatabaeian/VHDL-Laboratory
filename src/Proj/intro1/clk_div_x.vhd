----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:54:17 12/01/2020 
-- Design Name: 
-- Module Name:    clk_div_x - Behavioral 
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
use IEEE.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_div_x is
 Port ( clk : in  STD_LOGIC;
           xin : in  STD_LOGIC_VECTOR(4 downto 0);
           out1 : out  STD_LOGIC);
end clk_div_x;

architecture Behavioral of clk_div_x is
signal w1,w2 : std_logic :='0';
begin
process (clk)
variable count1r,count1f,count2r : integer := 0;
variable xinteger : integer := 0;
begin
xinteger := to_integer(unsigned(xin));
   if rising_edge(clk) then

      count1r := count1r + 1;
		count2r := count2r + 1;
	   
		if (xinteger mod 2 = 1) and (count1r = (xinteger + 1)/2)  then
			w1 <= not w1;
			count1r := 0;
			count1f := 0;
			out1 <= w1;
		end if;
		
		if (xinteger mod 2 = 0) and (count2r = xinteger/2)  then
			w2 <= not w2;
			count2r := 0;
			out1 <= w2;
		end if;
	 
	elsif falling_edge(clk) then
	
		count1f := count1f + 1;
		
		if (xinteger mod 2 = 1) and (count1f = (xinteger+1)/2)  then
			w1 <= not w1;
			count1f := 0;
			count1r := 0;
			out1 <= w1;
		end if;
      
   end if;
end process;

end Behavioral;

