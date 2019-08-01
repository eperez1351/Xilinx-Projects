----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:49:40 06/21/2019 
-- Design Name: 
-- Module Name:    flipflopTasync - Behavioral 
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

entity flipflopTasync is
    Port ( t : in  STD_LOGIC;
           q : out  STD_LOGIC;
           clk : in std_logic;
			  reset : in std_logic);
end flipflopTasync;

architecture Behavioral of flipflopTasync is

begin

process (clk, reset)
begin
   if reset='0' then   
      q <= '0';
   elsif (clk'event and clk='0') then 
      q <= not(t);
   end if;
end process;

end Behavioral;

