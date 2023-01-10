----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:17:42 10/28/2020 
-- Design Name: 
-- Module Name:    seg7case - Behavioral 
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

entity seg7case is
    Port ( inputnumber : in  STD_LOGIC_VECTOR (3 downto 0);
           ABCDEFG : out  STD_LOGIC_VECTOR (6 downto 0));
end seg7case;

architecture Behavioral of seg7case is
begin

process (inputnumber)
begin
     case (inputnumber) is 
      when "0000" =>
         ABCDEFG <= "1111110";
      when "0001" =>
         ABCDEFG <= "0110000";
      when "0010" =>
         ABCDEFG <= "1101101";
      when "0011" =>
         ABCDEFG <= "1111001";
      when "0100" =>
         ABCDEFG <= "0110011";
      when "0101" =>
         ABCDEFG <= "1011011";
      when "0110" =>
         ABCDEFG <= "1011111";
      when "0111" =>
         ABCDEFG <= "1110000";
      when "1000" =>
         ABCDEFG <= "1111111";
      when "1001" =>
         ABCDEFG <= "1111011";
		when others =>
         ABCDEFG <= "0000000";
   end case;
end process;
		

end Behavioral;

