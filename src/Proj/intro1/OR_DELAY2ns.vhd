----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:24:03 10/19/2020 
-- Design Name: 
-- Module Name:    OR_DELAY2ns - Behavioral 
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

entity OR_DELAY2ns is
    Port ( orinput : in  STD_LOGIC_VECTOR (1 downto 0);
           oroutput : out  STD_LOGIC);
end OR_DELAY2ns;

architecture Behavioral of OR_DELAY2ns is

begin

oroutput <= orinput(0) or orinput(1) after 2 ns;

end Behavioral;

