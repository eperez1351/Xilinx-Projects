----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:30:08 06/14/2019 
-- Design Name: 
-- Module Name:    anothershiftreg - Behavioral 
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

entity anothershiftreg is
    Port ( q : in  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
			  clkenb : in std_logic;
           loadenb : in  STD_LOGIC);
end anothershiftreg;

architecture Behavioral of anothershiftreg is

signal tmp : unsigned (3 downto 0) := "0000";

begin

process (clk) 
begin 
   if clk'event and clk='1' then  
      if loadenb = '1' then 
         tmp(0) <= q; 
      elsif clkenb = '1' then 
         tmp <= tmp(3 downto 1) & q;
      end if; 
   end if;
end process;
d (3 downto 0) <= std_logic_vector(tmp(3 downto 0));

end Behavioral;

