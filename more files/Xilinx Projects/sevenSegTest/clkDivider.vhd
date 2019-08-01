----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:44:32 06/03/2019 
-- Design Name: 
-- Module Name:    clkDivider - Behavioral 
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

entity clkDivider is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clkout : out  STD_LOGIC);
end clkDivider;

architecture Behavioral of clkDivider is
signal count: integer:=1;
signal tmp : std_logic := '0';
 
begin
 
	process(clk,reset,tmp,count)
	begin
	if(reset='0') then
		count<=1;
		tmp<='0';
	elsif(clk'event and clk='1') then
		count <=count+1;
		-- Se asume reloj es 50 MHz. (50M/count)/2 = f_result
		if (count = 100000) then
			tmp <= NOT tmp;
			count <= 1;
		end if;
	end if;
	clkout <= tmp;
	end process;
	
end Behavioral;

