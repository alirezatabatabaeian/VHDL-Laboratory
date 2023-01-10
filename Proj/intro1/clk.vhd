----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:46 11/08/2020 
-- Design Name: 
-- Module Name:    clk - Behavioral 
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

entity clk is
    Port ( clk : in  STD_LOGIC;
           out1 : out  STD_LOGIC);
end clk;
architecture Behavioral of clk is

signal w1 : std_logic :='0';

begin

w1 <= clk;
out1 <= w1;

end Behavioral;

