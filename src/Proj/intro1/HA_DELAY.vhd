----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:09:09 10/19/2020 
-- Design Name: 
-- Module Name:    HA_DELAY - Behavioral 
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

entity HA_DELAY is
    Port ( hainput : in  STD_LOGIC_VECTOR (1 downto 0);
           hasum : out  STD_LOGIC;
           hacarry : out  STD_LOGIC);
end HA_DELAY;

architecture Behavioral of HA_DELAY is

   COMPONENT AND_DELAY1ns
    PORT(
         andinput : IN  std_logic_vector(1 downto 0);
         andoutput : OUT  std_logic
        );
    END COMPONENT;
	 
	     COMPONENT OR_DELAY2ns
    PORT(
         orinput : IN  std_logic_vector(1 downto 0);
         oroutput : OUT  std_logic
        );
    END COMPONENT;
	 
	     COMPONENT NOT_DELAY3ns
    PORT(
         notinput : IN  std_logic;
         notoutput : OUT  std_logic
        );
    END COMPONENT;
	 
	     COMPONENT XOR_DELAY
    PORT(
         xorinput : IN  std_logic_vector(1 downto 0);
         xoroutput : OUT  std_logic
        );
    END COMPONENT;

begin

xor1 : XOR_DELAY port map( xorinput(0) => hainput(0) , xorinput(1) => hainput(1) , xoroutput => hasum );
and1 : AND_DELAY1ns port map( andinput(0) => hainput(0) , andinput(1) => hainput(1) , andoutput => hacarry );

end Behavioral;

