----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:07 05/29/2019 
-- Design Name: 
-- Module Name:    counterFor16to4mux - Behavioral 
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
use IEEE.math_real.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counterFor16to4mux is
    Port ( clk : in  STD_LOGIC;
           sel_out : out  STD_LOGIC_VECTOR (1 downto 0));
end counterFor16to4mux;

architecture Behavioral of counterFor16to4mux is

signal tmp : unsigned(1 downto 0):="00";

begin
count: process (clk)
	begin
	if clk'event and clk='1' then
		tmp <= tmp + 1;
	end if;

end process;
sel_out <= std_logic_vector(tmp);
end Behavioral;

