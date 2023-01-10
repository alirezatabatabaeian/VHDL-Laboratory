----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:12 10/19/2020 
-- Design Name: 
-- Module Name:    NOT_DELAY3ns - Behavioral 
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

entity NOT_DELAY3ns is
    Port ( notinput : in  STD_LOGIC;
           notoutput : out  STD_LOGIC);
end NOT_DELAY3ns;

architecture Behavioral of NOT_DELAY3ns is

begin

notoutput <= not notinput after 3 ns;

end Behavioral;

