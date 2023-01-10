----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:29 10/20/2020 
-- Design Name: 
-- Module Name:    choice - Behavioral 
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

entity choice is
    Port ( choicein : in  STD_LOGIC_VECTOR (3 downto 0);
           choiceselector : in  STD_LOGIC_VECTOR (1 downto 0);
           choiceout : in  STD_LOGIC);
end choice;

architecture Behavioral of choice is

begin



end Behavioral;

