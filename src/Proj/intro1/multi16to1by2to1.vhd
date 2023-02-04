----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:34:58 10/12/2020 
-- Design Name: 
-- Module Name:    multi16to1by2to1 - Behavioral 
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

entity multi16to1by2to1 is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           selector : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC);
end multi16to1by2to1;

architecture Behavioral of multi16to1by2to1 is

    COMPONENT multi2to1
    PORT(
         i : IN  std_logic_vector(1 downto 0);
         s : IN  std_logic;
         o : OUT  std_logic
        );
    END COMPONENT;
	 
	 signal w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17 : std_logic :='0';
	 
begin
w0 <= selector(0);
w1 <= selector(1);
w2 <= selector(2);
w3 <= selector(3);
mu0  : multi2to1 port map( s => w0 , i(0) => input(0)  , i(1) => input(1)  , o => w4  );
mu1  : multi2to1 port map( s => w0 , i(0) => input(2)  , i(1) => input(3)  , o => w5  );
mu2  : multi2to1 port map( s => w0 , i(0) => input(4)  , i(1) => input(5)  , o => w6  );
mu3  : multi2to1 port map( s => w0 , i(0) => input(6)  , i(1) => input(7)  , o => w7  );
mu4  : multi2to1 port map( s => w0 , i(0) => input(8)  , i(1) => input(9)  , o => w8  );
mu5  : multi2to1 port map( s => w0 , i(0) => input(10) , i(1) => input(11) , o => w9  );
mu6  : multi2to1 port map( s => w0 , i(0) => input(12) , i(1) => input(13) , o => w10 );
mu7  : multi2to1 port map( s => w0 , i(0) => input(14) , i(1) => input(15) , o => w11 );
mu8  : multi2to1 port map( s => w1 , i(0) => w4    , i(1) => w5  , o => w12 );
mu9  : multi2to1 port map( s => w1 , i(0) => w6    , i(1) => w7  , o => w13 );
mu10 : multi2to1 port map( s => w1 , i(0) => w8    , i(1) => w9  , o => w14 );
mu11 : multi2to1 port map( s => w1 , i(0) => w10   , i(1) => w11 , o => w15 );
mu12 : multi2to1 port map( s => w2 , i(0) => w12   , i(1) => w13 , o => w16 );
mu13 : multi2to1 port map( s => w2 , i(0) => w14   , i(1) => w15 , o => w17 );
mu14 : multi2to1 port map( s => w3 , i(0) => w16   , i(1) => w17 , o => output );

end Behavioral;

