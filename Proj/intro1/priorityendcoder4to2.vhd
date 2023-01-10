----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:30:55 10/28/2020 
-- Design Name: 
-- Module Name:    priorityendcoder4to2 - Behavioral 
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

entity priorityendcoder4to2 is
    Port ( inputnumber : in  STD_LOGIC_VECTOR (3 downto 0);
           outputnumber : out  STD_LOGIC_VECTOR (1 downto 0));
end priorityendcoder4to2;

architecture Behavioral of priorityendcoder4to2 is

begin

process (inputnumber)
begin
   if inputnumber(3)='1' then
		outputnumber <= "11";
   elsif inputnumber(2)='1' then
      outputnumber <= "10";
	elsif inputnumber(1)='1' then
      outputnumber <= "01";
	elsif inputnumber(0)='1' then
      outputnumber <= "00";
   end if;
			
end process;
		

end Behavioral;

