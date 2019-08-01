----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:11:54 06/21/2019 
-- Design Name: 
-- Module Name:    flipflopJKasync - Behavioral 
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

entity flipflopJKasync is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end flipflopJKasync;

architecture Behavioral of flipflopJKasync is

signal temp: std_logic;

begin
   process (clk) 
   begin
      if rising_edge(clk) then                 
         if Reset='1' then   
            temp <= '0';
         elsif (J='0' and K='0') then
            temp <= temp;
         elsif (J='0' and K='1') then
            temp <= '0';
         elsif (J='1' and K='0') then
            temp <= '1';
         elsif (J='1' and K='1') then
            temp <= not (temp);
         end if;
      end if;
   end process;
   q <= temp;

end Behavioral;

