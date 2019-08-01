----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:01:17 06/17/2019 
-- Design Name: 
-- Module Name:    MuxConContSel_16a4 - Behavioral 
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

entity MuxConContSel_16a4 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC_VECTOR (3 downto 0);
           d : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk : in std_logic;
           q : out  STD_LOGIC_VECTOR (3 downto 0));
end MuxConContSel_16a4;

architecture Behavioral of MuxConContSel_16a4 is

signal tmp : unsigned(1 downto 0):="00";

begin

mux: process (tmp,a,b,c,d)
begin
   case tmp is
      when "00" => q <= a;
      when "01" => q <= b;
      when "10" => q <= c;
      when "11" => q <= d;
      when others => q <= a;
   end case;
end process;

count: process (clk)
	begin
	if clk'event and clk='1' then
		tmp <= tmp + 1;
	end if;

end process;

end Behavioral;

