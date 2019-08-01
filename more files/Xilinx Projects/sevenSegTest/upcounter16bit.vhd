----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:47 06/10/2019 
-- Design Name: 
-- Module Name:    upcounter16bit - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity upcounter16bit is
    Port ( clk : in  STD_LOGIC;
           output4bit : out  STD_LOGIC_VECTOR (3 downto 0));
end upcounter16bit;

architecture Behavioral of upcounter16bit is

signal tmp : unsigned(3 downto 0):="0000";

begin
count: process (clk)
	begin
	if clk'event and clk='1' then
		tmp <= tmp + 1;
	end if;

end process;
output4bit <= std_logic_vector(tmp);
end Behavioral;

