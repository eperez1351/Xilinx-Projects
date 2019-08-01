----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:35 07/31/2019 
-- Design Name: 
-- Module Name:    CKLminute - Behavioral 
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

entity CKLminute is
    Port ( clk1hz : in  STD_LOGIC;
			  reset : in std_logic;
           clk60hz : out  STD_LOGIC);
end CKLminute;

architecture Behavioral of CKLminute is
signal count: integer:=1;
signal tmp : std_logic := '0';
 
begin
 
	process(clk1hz,reset,tmp,count)
	begin
	if(reset='1') then
		count<=1;
		tmp<='0';
	elsif(clk1hz'event and clk1hz='1') then
		count <=count+1;
		-- Se asume reloj es 50 MHz. 50M/count = f_result
		if (count = 60) then
			tmp <= NOT tmp;
			count <= 1;
		end if;
	end if;
	clk60hz <= tmp;
	end process;
end Behavioral;

