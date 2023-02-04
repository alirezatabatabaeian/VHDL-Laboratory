----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:30 10/12/2020 
-- Design Name: 
-- Module Name:    seg7 - Behavioral 
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

entity seg7 is
    Port ( a : in  STD_LOGIC ;
			  b : in  STD_LOGIC ;
			  c : in  STD_LOGIC ;
			  d : in  STD_LOGIC ;
           sout : out  STD_LOGIC_VECTOR (6 downto 0));
end seg7;

architecture Behavioral of seg7 is

begin

sout(0) <= (a and (not c)) or (b and d) or ((not a) and c) or ((not a) and (not b) and (not d));
sout(1) <= (not b) or ((not c) and (not d)) or (c and d);
sout(2) <=  a or (b and (not c)) or (b and (not d)) or ((not c) and (not d)) ;
sout(3) <=  a or (b and (not c)) or (c and (not d)) or (c and (not b));
sout(4) <=  (not c) or d or (b and c);
sout(5) <= ((not b) and (not c) and (not d)) or ((not a) and c and (not d));
sout(6) <=  a or (c and d) or ((not b) and d) or (b and (not c) and d) or ((not a) and (not b) and (not d));

end Behavioral;

