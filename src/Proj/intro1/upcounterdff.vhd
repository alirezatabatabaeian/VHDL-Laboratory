----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:02:19 11/17/2020 
-- Design Name: 
-- Module Name:    upcounterdff - Behavioral 
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

entity upcounterdff is
    Port (clk : in std_logic;
	       reset : in std_logic;
			 outo : out  STD_LOGIC_VECTOR (3 downto 0));
end upcounterdff;

architecture Behavioral of upcounterdff is

    COMPONENT DFF
    PORT(
         clk : IN  std_logic;
         d : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic;
         qbar : OUT  std_logic
        );
    END COMPONENT;
    signal a,b,c,d : std_logic :='0';
	 signal nota,notb,notc,notd : std_logic :='1';
	 signal w1,w2,w3,w4 : std_logic :='0';
begin
outo(3) <= a;
outo(2) <= b;
outo(1) <= c;
outo(0) <= d;
DFF1 : DFF port map(clk => clk , reset => reset , d => w1 , q => a , qbar => nota);
DFF2 : DFF port map(clk => clk , reset => reset , d => w2 , q => b , qbar => notb);
DFF3 : DFF port map(clk => clk , reset => reset , d => w3 , q => c , qbar => notc);
DFF4 : DFF port map(clk => clk , reset => reset , d => w4 , q => d , qbar => notd);
w1 <= (a and notd) or (b and c and d);
w2 <= (b and notc) or (b and notd) or (notb and c and d);
w3 <= (c and notd) or (nota and notc and d);
w4 <= notd;

end Behavioral;

