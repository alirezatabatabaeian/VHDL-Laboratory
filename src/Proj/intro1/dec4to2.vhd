----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:22 10/06/2020 
-- Design Name: 
-- Module Name:    dec4to2 - Behavioral 
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

entity dec4to2 is
    Port ( enter : in  STD_LOGIC_VECTOR (1 downto 0);
           outer : out  STD_LOGIC_VECTOR (3 downto 0));
end dec4to2;

architecture Behavioral of dec4to2 is

begin

outer(0) <= (not enter(0)) and (not enter(1));
outer(1) <= enter(0) and (not enter(1));
outer(2) <= (not enter(0)) and enter(1);
outer(3) <= enter(0) and enter(1);

end Behavioral;

