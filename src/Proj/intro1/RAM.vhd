----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:14:06 12/19/2020 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity RAM is
    Port ( addressin : in  STD_LOGIC_VECTOR (5 downto 0);
	        addressout : in  STD_LOGIC_VECTOR (5 downto 0);
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  RE : in std_logic;
			  WE : in std_logic;
			  clk : in std_logic;
			  reset : in std_logic);
end RAM;

architecture Behavioral of RAM is

type RAM is array (0 to 63) of std_logic_vector(7 downto 0);

signal myRAM : RAM :=("00000000","00000001","00000010","00000011","00000100","00000101","00000110","00000111",
							 "00001000","00001001","00001010","00001011","00001100","00001101","00001110","00001111",
							 "00010000","00010001","00010010","00010011","00010100","00010101","00010110","00010111",
							 "00011000","00011001","00011010","00011011","00011100","00011101","00011110","00011111",
							 "00100000","00100001","00100010","00100011","00100100","00100101","00100110","00100111",
							 "00101000","00101001","00101010","00101011","00101100","00101101","00101110","00101111",
							 "00110000","00110001","00110010","00110011","00110100","00110101","00110110","00110111",
							 "00111000","00111001","00111010","00111011","00111100","00111101","00111110","00111111");
signal clk1,clk2 : std_logic;
signal sigaddressin,sigaddressout : std_logic_vector(5 downto 0);
							 
begin

clk1 <= clk;
clk2 <= clk;

process (clk1,clk2,reset)
begin
   if reset = '1' then
		sigaddressin  <= "000000";
		sigaddressout <= "000000";
		myRAM <= ( others => "00000000" );
	elsif true then
		sigaddressin <= addressin;
		sigaddressout <= addressout;
		if rising_edge(clk1) and RE = '1' then
			data_out <= myRAM(to_integer(unsigned(sigaddressout)));
		end if;
		if rising_edge(clk2) and WE = '1' then
			myRAM(to_integer(unsigned(sigaddressin))) <= data_in;
		end if;
	end if;
end process;


end Behavioral;

