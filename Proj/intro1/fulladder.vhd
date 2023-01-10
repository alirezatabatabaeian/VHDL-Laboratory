----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:00 10/03/2020 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
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

entity fulladder is
    Port ( a_in : in  STD_LOGIC_VECTOR (2 downto 0);
           b_out : out  STD_LOGIC_VECTOR (1 downto 0));
end fulladder;

architecture Behavioral of fulladder is

    COMPONENT halfadder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         sum : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
	 
	 signal w1,w2,w3 : std_logic :='0';
	 
begin

	H1 : halfadder port map( a => a_in(0) , b => a_in(1) , sum => w1 , carry => w2 );
	H2 : halfadder port map( a => w1      , b => a_in(2) , sum => b_out(0) , carry => w3 );
	b_out(1) <= w2 or w3;
	

end Behavioral;

