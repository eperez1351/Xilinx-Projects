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
    Port ( q : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           enb : in  STD_LOGIC;
           d1 : out  STD_LOGIC_VECTOR (3 downto 0);
           d2 : out  STD_LOGIC_VECTOR (3 downto 0);
           d3 : out  STD_LOGIC_VECTOR (3 downto 0);
           d4 : out  STD_LOGIC_VECTOR (3 downto 0));
end ShiftReg4bitIN16bitOUT;

architecture Behavioral of ShiftReg4bitIN16bitOUT is

signal a,b,c,d : std_logic_vector(3 downto 0):="0000";

begin
	
	d1 <= a;
	d2 <= b;
	d3 <= c;
	d4 <= d;
	
	process(clk,q,enb,rst)
	begin
		if(clk'event and clk='1') then
			if rst='0' then
				a <= "0000";
				b <= "0000";
				c <= "0000";
				d <= "0000";
			elsif enb='1' then
				a <= q;
				b <= a;
				c <= b;
				d <= c;
			end if;
		end if;
	end process;

end Behavioral;

