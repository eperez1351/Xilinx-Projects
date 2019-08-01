----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:01:07 07/14/2019 
-- Design Name: 
-- Module Name:    CarryGenerator - Behavioral 
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

entity CarryGenerator is
	 generic( carryTrig : unsigned :=9);
    Port ( clk : in  STD_LOGIC;
           carry_in : in  STD_LOGIC;
			  reset : in std_logic;
           carry_out : out  STD_LOGIC);
end CarryGenerator;

architecture Behavioral of CarryGenerator is

signal carrytrigsettmp : integer := carrytrigset;

begin

carrygen : process(clk)
	begin
	
   end if;
	end process;

end Behavioral;

