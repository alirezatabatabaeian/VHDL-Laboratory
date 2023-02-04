----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:10:12 10/19/2020 
-- Design Name: 
-- Module Name:    FOUR_BIT_ADDER_DELAY - Behavioral 
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

entity FOUR_BIT_ADDER_DELAY is
    Port ( fouradderinput1 : in  STD_LOGIC_VECTOR (3 downto 0);
           fouradderinput2 : in  STD_LOGIC_VECTOR (3 downto 0);
           fouradderoutput : out  STD_LOGIC_VECTOR (4 downto 0));
end FOUR_BIT_ADDER_DELAY;

architecture Behavioral of FOUR_BIT_ADDER_DELAY is

  COMPONENT FA_DELAY
    PORT(
         fainput : IN  std_logic_vector(2 downto 0);
         fasum : OUT  std_logic;
         facarry : OUT  std_logic
        );
    END COMPONENT;
    
	 signal w1,w2,w3 : std_logic :='0';

begin

FA1 : FA_DELAY port map( fainput(0) => fouradderinput1(0) , fainput(1) => fouradderinput2(0) , fainput(2) => '0' , fasum => fouradderoutput(0) , facarry => w1 );
FA2 : FA_DELAY port map( fainput(0) => fouradderinput1(1) , fainput(1) => fouradderinput2(1) , fainput(2) => w1  , fasum => fouradderoutput(1) , facarry => w2 );
FA3 : FA_DELAY port map( fainput(0) => fouradderinput1(2) , fainput(1) => fouradderinput2(2) , fainput(2) => w2  , fasum => fouradderoutput(2) , facarry => w3 );
FA4 : FA_DELAY port map( fainput(0) => fouradderinput1(3) , fainput(1) => fouradderinput2(3) , fainput(2) => w3  , fasum => fouradderoutput(3) , facarry => fouradderoutput(4) );

end Behavioral;

