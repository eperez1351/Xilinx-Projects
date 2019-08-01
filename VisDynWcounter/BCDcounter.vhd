----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:56:27 06/26/2019 
-- Design Name: 
-- Module Name:    BCDcounter - Behavioral 
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

entity BCDcounter is
    Port ( load_in : in  STD_LOGIC_VECTOR (3 downto 0);
           count_out : out  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC;
			  reset : in std_logic;
			  updw : in std_logic;
           clk : in  STD_LOGIC;
           loadenb : in  STD_LOGIC;
           clkenb : in  STD_LOGIC);
end BCDcounter;

architecture Behavioral of BCDcounter is

signal counttmp : unsigned(3 downto 0);

begin

process (clk) 
begin
   if clk='1' and clk'event then
      if reset='1' then 
         count_out <= (others => '0');
      elsif clkenb='1' then
         if loadenb='1' then
            count_out <= load_in;
			elsif counttmp="1001" then
				counttmp <= "0000";
         else 
            if updw='1' then   
               counttmp <= counttmp + 1;
					count_out <= STD_LOGIC_VECTOR(counttmp);
            else
               counttmp <= counttmp - 1;
					count_out <= STD_LOGIC_VECTOR(counttmp);
            end if;
         end if;
      end if;
   end if;
end process; 

carry: process(counttmp)
	begin
	if counttmp="1001" then
		carry_out <= '1';
	else
		carry_out <= '0';
	end if;
end process;


end Behavioral;

