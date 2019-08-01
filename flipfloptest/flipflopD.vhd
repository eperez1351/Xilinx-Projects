----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:47:51 06/21/2019 
-- Design Name: 
-- Module Name:    flipflopDasync - Behavioral 
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

entity flipflopDasync is
    Port ( d : in  STD_LOGIC;
           q : out  STD_LOGIC;
			  clk : in std_logic;
           reset : in  STD_LOGIC);
end flipflopDasync;

architecture Behavioral of flipflopDasync is

begin

process (clk, reset)
begin
   if reset='1' then   
      q <= '0';
   elsif (clk'event and clk='1') then 
      q <= d;
   end if;
end process;

end Behavioral;

