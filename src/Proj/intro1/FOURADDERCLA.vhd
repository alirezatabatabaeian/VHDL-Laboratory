----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:34:22 10/19/2020 
-- Design Name: 
-- Module Name:    FOURADDERCLA - Behavioral 
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

entity FOURADDERCLA is
    Port ( fouradderclainput1 : in  STD_LOGIC_VECTOR (3 downto 0);
           fouradderclainput2 : in  STD_LOGIC_VECTOR (3 downto 0);
           fouradderclaoutput : out  STD_LOGIC_VECTOR (4 downto 0));
end FOURADDERCLA;

architecture Behavioral of FOURADDERCLA is

	COMPONENT FA_DELAY
    PORT(
         fainput : IN  std_logic_vector(2 downto 0);
         fasum : OUT  std_logic;
         facarry : OUT  std_logic
        );
    END COMPONENT;
	 
    COMPONENT XOR_DELAY
    PORT(
         xorinput : IN  std_logic_vector(1 downto 0);
         xoroutput : OUT  std_logic
        );
    END COMPONENT;
	 
	 signal p1,p2,p3,c1,c2,c3,m1,m2,m3,m4,m5,m6 : std_logic :='0';

begin

xor1 : XOR_DELAY port map( xorinput(0) => fouradderclainput1(1) , xorinput(1) => fouradderclainput2(1) , xoroutput => p1 );
xor2 : XOR_DELAY port map( xorinput(0) => fouradderclainput1(2) , xorinput(1) => fouradderclainput2(2) , xoroutput => p2 );
xor3 : XOR_DELAY port map( xorinput(0) => fouradderclainput1(3) , xorinput(1) => fouradderclainput2(3) , xoroutput => p3 );
m1 <= fouradderclainput1(1) and fouradderclainput2(1) after 1 ns;
m2 <= p1 and c1 after 1 ns;
m3 <= fouradderclainput1(2) and fouradderclainput2(2) after 1 ns ;
m4 <= p2 and c2 after 1 ns;
m5 <= fouradderclainput1(3) and fouradderclainput2(3) after 1 ns;
m6 <= p3 and c3 after 1 ns;
c1 <= fouradderclainput1(0) and fouradderclainput2(0) after 1 ns;
c2 <= m1 or m2 after 2 ns;
c3 <= m3 or m4 after 2 ns;
fouradderclaoutput(4) <= m5 or m6 after 2 ns;

FA1 : FA_DELAY port map( fainput(0) => fouradderclainput1(0) , fainput(1) => fouradderclainput2(0) , fainput(2) => '0' , fasum => fouradderclaoutput(0) );
FA2 : FA_DELAY port map( fainput(0) => fouradderclainput1(1) , fainput(1) => fouradderclainput2(1) , fainput(2) => c1  , fasum => fouradderclaoutput(1) );
FA3 : FA_DELAY port map( fainput(0) => fouradderclainput1(2) , fainput(1) => fouradderclainput2(2) , fainput(2) => c2  , fasum => fouradderclaoutput(2) );
FA4 : FA_DELAY port map( fainput(0) => fouradderclainput1(3) , fainput(1) => fouradderclainput2(3) , fainput(2) => c3  , fasum => fouradderclaoutput(3) );

end Behavioral;

