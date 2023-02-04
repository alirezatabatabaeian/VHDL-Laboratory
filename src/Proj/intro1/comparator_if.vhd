----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:54:03 10/28/2020 
-- Design Name: 
-- Module Name:    comparator_if - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator_if is
    Port ( inputnumber1 : in  STD_LOGIC_VECTOR (7 downto 0);
           inputnumber2 : in  STD_LOGIC_VECTOR (7 downto 0);
           EQUAL : out  STD_LOGIC;
           LESS : out  STD_LOGIC;
           GREATER : out  STD_LOGIC);
end comparator_if;

architecture Behavioral of comparator_if is

begin

process (inputnumber1,inputnumber2)
begin
      if inputnumber1 > inputnumber2 then
      GREATER <= '1';
		LESS <= '0';
		EQUAL <= '0';
   elsif inputnumber1 < inputnumber2 then
      GREATER <= '0';
		LESS <= '1';
		EQUAL <= '0';
   else
      GREATER <= '0';
		LESS <= '0';
		EQUAL <= '1';
   end if;
end process;



end Behavioral;

