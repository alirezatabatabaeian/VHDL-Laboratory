----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:11:05 10/19/2020 
-- Design Name: 
-- Module Name:    AND_DELAY1ns - Behavioral 
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

entity AND_DELAY1ns is
    Port ( andinput : in  STD_LOGIC_VECTOR (1 downto 0);
           andoutput : out  STD_LOGIC);
end AND_DELAY1ns;

architecture Behavioral of AND_DELAY1ns is

begin

andoutput <= andinput(0) and andinput(1) after 1 ns;

end Behavioral;

