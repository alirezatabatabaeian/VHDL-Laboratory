----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:37:27 10/03/2020 
-- Design Name: 
-- Module Name:    four_bit_adder - Behavioral 
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

entity four_bit_adder is
    Port ( input1 : in  STD_LOGIC_VECTOR (3 downto 0);
           input2 : in  STD_LOGIC_VECTOR (3 downto 0);
			  sub0   : in  std_logic;
           output : out  STD_LOGIC_VECTOR (4 downto 0));
end four_bit_adder;

architecture Behavioral of four_bit_adder is

    
	 COMPONENT fulladder
    PORT(
         a_in : IN  std_logic_vector(2 downto 0);
         b_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;

signal w1,w2,w3 : std_logic :='0';

begin

FA1 : fulladder port map( a_in(0) => input1(0) , a_in(1) => input2(0) , a_in(2) => sub0  , b_out(0) => output(0) , b_out(1) => w1 );
FA2 : fulladder port map( a_in(0) => input1(1) , a_in(1) => input2(1) , a_in(2) => w1  , b_out(0) => output(1) , b_out(1) => w2 );
FA3 : fulladder port map( a_in(0) => input1(2) , a_in(1) => input2(2) , a_in(2) => w2  , b_out(0) => output(2) , b_out(1) => w3 );
FA4 : fulladder port map( a_in(0) => input1(3) , a_in(1) => input2(3) , a_in(2) => w3  , b_out(0) => output(3) , b_out(1) => output(4) );



end Behavioral;

