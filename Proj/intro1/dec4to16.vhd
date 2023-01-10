----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:30 10/06/2020 
-- Design Name: 
-- Module Name:    dec4to16 - Behavioral 
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

entity dec4to16 is
    Port ( enter : in  STD_LOGIC_VECTOR (2 downto 0);
           outer : out  STD_LOGIC_VECTOR (7 downto 0);
			  enabler : in std_logic);
end dec4to16;

architecture Behavioral of dec4to16 is

begin

outer(0) <= (not enter(0)) and (not enter(1)) and (not enter(2)) and enabler;
outer(1) <= (enter(0))     and (not enter(1)) and (not enter(2)) and enabler;
outer(2) <= (not enter(0)) and (enter(1))     and (not enter(2)) and enabler;
outer(3) <= (enter(0))     and (enter(1))     and (not enter(2)) and enabler;
outer(4) <= (not enter(0)) and (not enter(1)) and (enter(2)) 	  and enabler;
outer(5) <= (enter(0))     and (not enter(1)) and (enter(2))     and enabler;
outer(6) <= (not enter(0)) and (enter(1))     and (enter(2))     and enabler;
outer(7) <= (enter(0))     and (enter(1))     and (enter(2))     and enabler;


end Behavioral;

