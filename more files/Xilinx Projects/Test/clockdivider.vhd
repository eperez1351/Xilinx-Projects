----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:19:13 05/28/2019 
-- Design Name: 
-- Module Name:    clockdivider - Behavioral 
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

entity clockdivider is
	 
    Port ( clk_in : in  STD_LOGIC;
			  reset : in std_logic;
           clk_out : out std_logic);
end clockdivider;

--definir contador de 25 bits, asignar bit mas signif a salida
--considerar: clk_in es 50Mhz

architecture Behavioral of clockdivider is

constant maximo :integer :=10000000;
signal cuenta :unsigned(25 downto 0);


begin
	contador: process(clk_in)
	begin
		if clk_in='1' and clk_in'event then
			cuenta <= cuenta + 1;
			if cuenta=maximo or reset='1' then
				cuenta <= (others => '0');
			end if;
		end if;
	end process;
	
	turn_led_on: process
	begin
		if cuenta=maximo then
			clk_out <= '1';
		else
			clk_out <= '0';
		end if;
	end process;
			
	
end Behavioral;

