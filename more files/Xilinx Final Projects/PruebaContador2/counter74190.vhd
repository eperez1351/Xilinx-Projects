----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:56:46 07/10/2019 
-- Design Name: 
-- Module Name:    counter74190 - Behavioral 
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

entity counter74190 is
	 generic ( maxcount : integer := 9;
			  maxcount_inv : integer :=0);
    Port ( load_in : in  STD_LOGIC_VECTOR (3 downto 0);
           count_out : out  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC;
			  reset : in std_logic;
			  updw : in std_logic;
           clk : in  STD_LOGIC;
           loadenb : in  STD_LOGIC;
           clkenb : in  STD_LOGIC);
end counter74190;

architecture Behavioral of counter74190 is

signal tmp : unsigned(3 downto 0):="0000"; --se
signal carry_tmp : std_logic :='0';

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
					if tmp = maxcount then
						tmp <= "0000";
						carry_tmp <= not carry_tmp;
					else
						carry_tmp <= '0';
					end if;
            else
               tmp <= tmp - 1;
					if tmp = maxcount_inv then
						tmp <= "1001";
						carry_tmp <= not carry_tmp;
					else
						carry_tmp <= '0';
					end if;
            end if;
         end if;
      end if;
   end if;
end process;


count_out <= std_logic_vector(tmp); --conversion de tipo para salida
carry_out <= carry_tmp;
end Behavioral;

