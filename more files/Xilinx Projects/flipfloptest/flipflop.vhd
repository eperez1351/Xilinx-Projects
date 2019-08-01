----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:18:24 06/14/2019 
-- Design Name: 
-- Module Name:    flipflop - Behavioral 
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

entity flipflop is
    Port ( q : out  STD_LOGIC_vector(3 downto 0);
           s : in  STD_LOGIC;
			  clk : in std_logic;
           r : in  STD_LOGIC);
end flipflop;

architecture Behavioral of flipflop is

signal tmp : unsigned(3 downto 0):= "0000";

begin

process (clk)
begin
   if clk'event and clk='1' then  
		tmp(3 downto 1) <= tmp(2 downto 0);
      tmp(0) <= s;
   end if;
end process;
q <= std_logic_vector(tmp);
end Behavioral;

