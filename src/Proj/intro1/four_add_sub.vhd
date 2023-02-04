----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:28 10/03/2020 
-- Design Name: 
-- Module Name:    four_add_sub - Behavioral 
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

entity four_add_sub is
    Port ( into1 : in  STD_LOGIC_VECTOR (3 downto 0);
           into2 : in  STD_LOGIC_VECTOR (3 downto 0);
           sub   : in  std_logic ;
			  outo  : out STD_LOGIC_VECTOR (4 downto 0));
end four_add_sub;

architecture Behavioral of four_add_sub is

   COMPONENT four_bit_adder
    PORT(
         input1 : IN  std_logic_vector(3 downto 0);
         input2 : IN  std_logic_vector(3 downto 0);
         sub0 : IN  std_logic;
         output : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
	 
	 signal w0,w1,w2,w3,w4 : std_logic :='0';
	 
begin

w0 <= into2(0) xor sub ;
w1 <= into2(1) xor sub ;
w2 <= into2(2) xor sub ;
w3 <= into2(3) xor sub ;

bitadd : four_bit_adder port map( input1(0) => into1(0) , input1(1) => into1(1) , input1(2) => into1(2) , input1(3) => into1(3) , sub0 => sub ,
                                  input2(0) => w0 , input2(1) => w1 , input2(2) => w2 , input2(3) => w3 ,
								       output(0) => outo(0) , output(1) => outo(1) ,output(2) => outo(2) ,output(3) => outo(3) ,output(4) => outo(4) );
										 

end Behavioral;

