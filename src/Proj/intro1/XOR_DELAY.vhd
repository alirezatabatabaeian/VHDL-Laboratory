----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:58 10/19/2020 
-- Design Name: 
-- Module Name:    XOR_DELAY - Behavioral 
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

entity XOR_DELAY is
    Port ( xorinput : in  STD_LOGIC_VECTOR (1 downto 0);
           xoroutput : out  STD_LOGIC);
end XOR_DELAY;

architecture Behavioral of XOR_DELAY is

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
		
	 signal w1,w2,w3,w4 : std_logic :='0';
	 
begin

not1 : NOT_DELAY3ns port map( notinput => xorinput(0) , notoutput => w1 );
not2 : NOT_DELAY3ns port map( notinput => xorinput(1) , notoutput => w2 );
and1 : AND_DELAY1ns port map( andinput(0) => xorinput(0) , andinput(1) => w2 , andoutput => w3 );
and2 : AND_DELAY1ns port map( andinput(0) => xorinput(1) , andinput(1) => w1 , andoutput => w4 );
or1  : OR_DELAY2ns  port map( orinput(0)  =>  w3 , orinput(1) => w4 , oroutput => xoroutput );

end Behavioral;

