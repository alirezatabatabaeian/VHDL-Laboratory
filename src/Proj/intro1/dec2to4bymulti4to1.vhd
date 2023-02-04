----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:41:10 10/12/2020 
-- Design Name: 
-- Module Name:    dec2to4bymulti4to1 - Behavioral 
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

entity dec2to4bymulti4to1 is
    Port ( into : in  STD_LOGIC_VECTOR (1 downto 0);
           outo : out  STD_LOGIC_VECTOR (3 downto 0));
end dec2to4bymulti4to1;

architecture Behavioral of dec2to4bymulti4to1 is

COMPONENT multi_plexer
    PORT(
         intout : IN  std_logic_vector(3 downto 0);
         selector0 : IN  std_logic;
         selector1 : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
	 
	 signal w0,w1 : std_logic :='0';
	 
begin

w0 <= into(0);
w1 <= into(1);
mu0 : multi_plexer port map ( selector0 => w0 , selector1 => w1 , intout => "0001" , output => outo(0) );
mu1 : multi_plexer port map ( selector0 => w0 , selector1 => w1 , intout => "0010" , output => outo(1) );
mu2 : multi_plexer port map ( selector0 => w0 , selector1 => w1 , intout => "0100" , output => outo(2) );
mu3 : multi_plexer port map ( selector0 => w0 , selector1 => w1 , intout => "1000" , output => outo(3) );

end Behavioral;

