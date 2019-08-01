----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:00 07/12/2019 
-- Design Name: 
-- Module Name:    FlexCount - Behavioral 
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

entity FlexCount is
	 generic (
    maxcount : integer := 9;
	 bitwidth : integer := 4);
    Port ( load_in : in  STD_LOGIC_VECTOR (bitwidth-1 downto 0);
           count_out : out  STD_LOGIC_VECTOR (bitwidth-1 downto 0);
           carry_out : out  STD_LOGIC;
			  reset : in std_logic;
			  updw : in std_logic;
           clk : in  STD_LOGIC;
           loadenb : in  STD_LOGIC;
           clkenb : in  STD_LOGIC);
end FlexCount;

architecture Behavioral of FlexCount is

signal tmp : unsigned(bitwidth-1 downto 0):= (others => '0');

begin

process (clk) 
begin
   if clk='1' and clk'event then
      if reset='1' then 
         tmp <= (others => '0');
      elsif clkenb='1' then
         if loadenb='1' then
            tmp <= load_in;
         else 
				tmp <= tmp + 1;
				if tmp = maxcount then
					tmp <= (others => '0');
            end if;
         end if;
      end if;
   end if;
end process; 
end Behavioral;

