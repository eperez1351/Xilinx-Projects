----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:27 05/21/2019 
-- Design Name: 
-- Module Name:    toptest - Behavioral 
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

entity toptest is
    Port ( --bttn : in  STD_LOGIC_VECTOR (7 downto 0);
           --led : out  STD_LOGIC_VECTOR (3 downto 0);
			  --clk : in std_logic;
			  a : in std_logic;
			  b : in std_logic;
			  x : out std_logic);
end toptest;

architecture Behavioral of toptest is

begin

process (a)
    begin
        if (a'event and a='1') then
            x <= b;
        end if;
    end process;

--process( bttn )
--	begin
--		if(bttn= "11111110") then
--				led  <= "0001";
--		else  led  <= "0000";
--		end if;
--end process;

end Behavioral;

