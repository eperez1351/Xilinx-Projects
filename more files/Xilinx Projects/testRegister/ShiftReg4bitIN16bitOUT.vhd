----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:54:53 06/07/2019 
-- Design Name: 
-- Module Name:    ShiftReg4bitIN16bitOUT - Behavioral 
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

entity ShiftReg4bitIN16bitOUT is
    Port ( q : in  std_logic;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           
           d1 : out  std_logic;
           d2 : out  std_logic;
           d3 : out  std_logic;
           d4 : out  std_logic);
end ShiftReg4bitIN16bitOUT;

architecture Behavioral of ShiftReg4bitIN16bitOUT is

signal a,b,c,d : std_logic:='0';

begin
	
	d1 <= a;
	d2 <= b;
	d3 <= c;
	d4 <= d;
	
	process(clk,q,rst)
	begin
		if(rising_edge(clk)) then
			if rst='1' then
				a <= '0';
				b <= '0';
				c <= '0';
				d <= '0';
			else
				a <= q;
				b <= a;
				c <= b;
				d <= c;
			end if;
		end if;
	end process;

end Behavioral;

