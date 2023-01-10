----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:40:55 10/28/2020 
-- Design Name: 
-- Module Name:    multi4to1by2to1byselectwhen - Behavioral 
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

entity multi4to1by2to1byselectwhen is
    Port ( inputnumber : in  STD_LOGIC_VECTOR (3 downto 0);
           selector : in  STD_LOGIC_VECTOR (1 downto 0);
           outputnumber : out  STD_LOGIC);
end multi4to1by2to1byselectwhen;

architecture Behavioral of multi4to1by2to1byselectwhen is

signal w0,w1 : std_logic :='0';

begin

  with selector(0) select
      w0 <= inputnumber(0) when '0',
            inputnumber(1) when '1',
		      inputnumber(1) when others;
                
  with selector(0) select
      w1 <= inputnumber(2) when '0',
            inputnumber(3) when '1',
		      inputnumber(3) when others;
					 
	with selector(1) select
      outputnumber <= w0 when '0',
                      w1 when '1',
							 w1 when others;
			

end Behavioral;

