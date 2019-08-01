----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:34 06/03/2019 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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

entity counter is
    Port ( clk : in  STD_LOGIC;
			  twobitOut : out std_logic_vector(1 downto 0);
           reset : in  STD_LOGIC);
end counter;

architecture Behavioral of counter is

signal tmp: unsigned(1 downto 0):="00";

begin
count: process (clk, reset)
	begin
	if clk'event and clk='1' then
		if reset='1' then
			tmp <= "00";
		end if;
		tmp <= tmp + 1;
	end if;

end process;
twobitout <= std_logic_vector(tmp);
end Behavioral;

