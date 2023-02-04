----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:30:20 10/19/2020 
-- Design Name: 
-- Module Name:    FA_DELAY - Behavioral 
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

entity FA_DELAY is
    Port ( fainput : in  STD_LOGIC_VECTOR (2 downto 0);
           fasum : out  STD_LOGIC;
           facarry : out  STD_LOGIC);
end FA_DELAY;

architecture Behavioral of FA_DELAY is

  COMPONENT HA_DELAY
    PORT(
         hainput : IN  std_logic_vector(1 downto 0);
         hasum : OUT  std_logic;
         hacarry : OUT  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT OR_DELAY2ns
    PORT(
         orinput : IN  std_logic_vector(1 downto 0);
         oroutput : OUT  std_logic
        );
    END COMPONENT;
	
	 signal w1,w2,w3 : std_logic :='0';
	
begin

HA1 : HA_DELAY port map( hainput(0) => fainput(0) , hainput(1) => fainput(1) , hasum => w1    , hacarry => w2 );
HA2 : HA_DELAY port map( hainput(0) => w1         , hainput(1) => fainput(2) , hasum => fasum , hacarry => w3 );
OR1 : OR_DELAY2ns port map( orinput(0) => w2 , orinput(1) => w3 , oroutput => facarry );

end Behavioral;

