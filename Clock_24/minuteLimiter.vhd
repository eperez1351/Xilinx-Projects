----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:00:19 07/05/2019 
-- Design Name: 
-- Module Name:    minuteLimiter - Behavioral 
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

entity minuteLimiter is
    Port ( limit_in : in  STD_LOGIC_VECTOR (3 downto 0);
           restart_signal : in  STD_LOGIC_VECTOR (3 downto 0);
           load_bit : in  STD_LOGIC);
end minuteLimiter;

architecture Behavioral of minuteLimiter is

constant limit: std_logic_vector:="0101";

begin

	process(limit_in)
		begin
		if limit_in=limit then
			restart_signal<= "0000";
			load_bit<= '1';
		end if;
	end process;

end Behavioral;

