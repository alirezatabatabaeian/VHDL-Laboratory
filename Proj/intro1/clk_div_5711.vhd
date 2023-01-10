----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:48 11/30/2020 
-- Design Name: 
-- Module Name:    clk_div_5711 - Behavioral 
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

entity clk_div_5711 is
    Port ( clk : in  STD_LOGIC;
           out1 : out  STD_LOGIC;
			  out2 : out  STD_LOGIC;
			  out3 : out  STD_LOGIC;
			  out4 : out  STD_LOGIC;
			  out5 : out  STD_LOGIC);
end clk_div_5711;

architecture Behavioral of clk_div_5711 is
signal w1,w2,w3,w4,w5 : std_logic :='0';
begin
process (clk)
variable count1r,count2r,count3r,count1f,count2f,count3f,count4,count5 : integer := 0;
begin
   if rising_edge(clk) then

      count1r := count1r + 1;
		count2r := count2r + 1;
		count3r := count3r + 1;
		count4 := count4 + 1;
		count5 := count5 + 1;
	   
		if count1r = 3 then
			w1 <= not w1;
			count1r := 0;
			count1f := 0;
			out1 <= w1;
		end if;
		
		if count2r = 4 then
			w2 <= not w2;
			count2r := 0;
			count2f := 0;
			out2 <= w2;
		end if;
		
		if count3r = 6 then
			w3 <= not w3;
			count3r := 0;
			count3f := 0;
			out3 <= w3;
		end if;
		
     	if count4 = 8 then
			w4 <= not w4;
			count4 := 0;
			out4 <= w4;
		end if;
		
		if count5 = 13 then
			w5 <= not w5;
			count5 := 0;
			out5 <= w5;
		end if;
		
	elsif falling_edge(clk) then
	
		count1f := count1f + 1;
		count2f := count2f + 1;
		count3f := count3f + 1;
		
		if count1f = 3 then
			w1 <= not w1;
			count1f := 0;
			count1r := 0;
			out1 <= w1;
		end if;
		
		if count2f = 4 then
			w2 <= not w2;
			count2f := 0;
			count2r := 0;
			out2 <= w2;
		end if;
		
		if count3f = 6 then
			w3 <= not w3;
			count3f := 0;
			count3r := 0;
			out3 <= w3;
		end if;
      
   end if;
end process;

end Behavioral;

