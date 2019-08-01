----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:08 07/09/2019 
-- Design Name: 
-- Module Name:    reg16bitSIPO - Behavioral 
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

entity reg16bitSIPO is
    Port ( q : in  STD_LOGIC_VECTOR (3 downto 0);
           d1 : out  STD_LOGIC_VECTOR (3 downto 0);
           d2 : out  STD_LOGIC_VECTOR (3 downto 0);
           d3 : out  STD_LOGIC_VECTOR (3 downto 0);
           d4 : out  STD_LOGIC_VECTOR (3 downto 0);
           rst : in  STD_LOGIC;
           --loadenb : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  clkenb : in std_logic);
			  
end reg16bitSIPO;

architecture Behavioral of reg16bitSIPO is

signal reg : std_logic_vector(15 downto 0):= (others => '0');

begin

process (clk,rst)
begin
   if rst ='0' then 
      reg <= (others => '0'); 
   --elsif loadenb = '1' then 
      --<tmp_sig> <= <load_data>; 
   elsif clk'event and clk='1' then  
      if clkenb = '1' then 
         reg <= reg(11 downto 0) & q;
      end if; 
   end if;
end process;

d1 <= reg(3 downto 0);
d2 <= reg(7 downto 4);
d3 <= reg(11 downto 8);
d4 <= reg(15 downto 12);

end Behavioral;

