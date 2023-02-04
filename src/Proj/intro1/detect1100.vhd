----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:05:39 12/18/2020 
-- Design Name: 
-- Module Name:    detect1100 - Behavioral 
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

entity detect1100 is
    Port ( x : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           y : out  STD_LOGIC);
end detect1100;

architecture Behavioral of detect1100 is

COMPONENT Dflipflop
    PORT(
         clk : IN  std_logic;
         d : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic;
         qbar : OUT  std_logic
        );
    END COMPONENT;
	 
    signal q0,q1,q0star,q1star : std_logic :='0';
	 signal q0starnot,q1starnot : std_logic :='1';
	 
begin

process(clk)
begin
if rising_edge(clk) then
q0 <= (x and q1starnot and q0starnot) or (x and q1star and q0star) or ((not x) and q1star and q0starnot) ; 
q1 <= (q1star and q0starnot) or (x and q1starnot and q0star) ;
y  <= (not x) and q1star and q0star ;
end if;
end process;

D0 : Dflipflop port map ( clk => clk , reset => '0' , d => q0 , q => q0star , qbar => q0starnot );
D1 : Dflipflop port map ( clk => clk , reset => '0' , d => q1 , q => q1star , qbar => q1starnot );


end Behavioral;

