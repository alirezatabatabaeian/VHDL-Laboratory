----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:37:52 10/03/2020 
-- Design Name: 
-- Module Name:    comparator - Behavioral 
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

entity comparator is
    Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
           in2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Great : out  STD_LOGIC;
           Less : out  STD_LOGIC;
           Equal : out  STD_LOGIC);
end comparator;

architecture Behavioral of comparator is

   COMPONENT four_add_sub
    PORT(
         into1 : IN  std_logic_vector(3 downto 0);
         into2 : IN  std_logic_vector(3 downto 0);
         sub : IN  std_logic;
         outo : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;

signal w1,w2,w3,w4,w5,w6,w7 : std_logic :='0';

begin

w7 <= '1' ;
four_add_sub1 : four_add_sub port map ( sub => w7 , into1(0) => in1(0) , into1(1) => in1(1) , into1(2) => in1(2) , into1(3) => in1(3) ,
												   into2(0) => in2(0) , into2(1) => in2(1) , into2(2) => in2(2) , into2(3) => in2(3) ,
												   outo(4) => w1 , outo(3) => w2 , outo(2) => w3 , outo(1) => w4 , outo(0) => w5 );
												 
w6    <= not ( w2 or w3 or w4 or w5);		
Equal <=	w6 ;							 
Great <= (not w1) and ( not w6 ) ;
Less  <= (w1) and ( not w6 ) ;

end Behavioral;

