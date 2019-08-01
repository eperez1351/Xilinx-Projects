----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:35 07/03/2019 
-- Design Name: 
-- Module Name:    FlexibleCounter - Behavioral 
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

entity FlexibleCounter is
    Port ( load_in : in  STD_LOGIC_VECTOR (3 downto 0);
           count_out : out  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC;
			  reset : in std_logic;
			  updw : in std_logic;
           clk : in  STD_LOGIC;
           loadenb : in  STD_LOGIC;
           clkenb : in  STD_LOGIC);
end FlexibleCounter;

architecture Behavioral of FlexibleCounter is

signal tmp : unsigned(3 downto 0):="0000"; --se

begin

count : process (clk) 
begin
   if clk='1' and clk'event then
      if reset='1' then 
         tmp <= (others => '0');
      elsif clkenb='1' then
         if loadenb='1' then
            tmp <= unsigned(load_in);
         else 
            if updw='1' then   
               tmp <= tmp + 1;
            else
               tmp <= tmp - 1;
            end if;
         end if;
      end if;
   end if;
end process;

count_out <= std_logic_vector(tmp); --conversion de tipo para salida

end Behavioral;
