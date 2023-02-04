----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:21:12 10/06/2020 
-- Design Name: 
-- Module Name:    multi_plexer - Behavioral 
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

entity multi_plexer is
    Port ( intout : in  STD_LOGIC_VECTOR (3 downto 0);
           selector0 : in  STD_LOGIC;
			  selector1 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end multi_plexer;

architecture Behavioral of multi_plexer is

begin

output <= (intout(0) and (not selector0) and (not selector1)) or (intout(1) and selector0 and (not selector1)) or
(intout(2) and (not selector0) and selector1) or (intout(3) and selector0 and selector1);

end Behavioral;

