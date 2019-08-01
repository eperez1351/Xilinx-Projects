----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:52 06/10/2019 
-- Design Name: 
-- Module Name:    clk1hz - Behavioral 
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

entity clk1hz is
    Port ( clk : in  STD_LOGIC;
			  reset : in std_logic;
           output1hz : out  STD_LOGIC);
end clk1hz;

architecture Behavioral of clk1hz is
signal count: integer:=1;
signal tmp : std_logic := '0';
 
begin
 
	process(clk,reset,tmp,count)
	begin
	if(reset='1') then
		count<=1;
		tmp<='0';
	elsif(clk'event and clk='1') then
		count <=count+1;
		-- Se asume reloj es 50 MHz. 50M/count = f_result
		if (count = 25000000) then
			tmp <= NOT tmp;
			count <= 1;
		end if;
	end if;
	output1hz <= tmp;
	end process;
	
end Behavioral;

