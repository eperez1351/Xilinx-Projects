----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:55:16 07/31/2019 
-- Design Name: 
-- Module Name:    ClockCounterReset - Behavioral 
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

entity ClockCounterReset is
    Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
           in2 : in  STD_LOGIC_VECTOR (3 downto 0);
           resetout : out  STD_LOGIC);
end ClockCounterReset;

architecture Behavioral of ClockCounterReset is

signal resetsignal : std_logic;

begin

reset : process
	begin
		if in1 = "0010" and in2 = "0100" then
			resetsignal <= not(resetsignal);
		else
			resetsignal <= '0';
		end if;
	end process;

resetout <= resetsignal;
end Behavioral;

