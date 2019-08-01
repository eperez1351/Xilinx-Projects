----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:13:21 06/07/2019 
-- Design Name: 
-- Module Name:    sevenSegDisp - Behavioral 
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

entity sevenSegDisp is
    Port ( q : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           digitSelect : out  STD_LOGIC_VECTOR (3 downto 0));
end sevenSegDisp;

architecture Behavioral of sevenSegDisp is

signal tmp : unsigned(1 downto 0):="00";

begin

	decode : PROCESS( q )   
	BEGIN
		CASE q IS
			when "0000"=>led<= "11000000";    --'0'
			when "0001"=>led<= "11111001";    --'1'
			when "0010"=>led<= "10100100";    --'2'
			when "0011"=>led<= "10110000";    --'3'
			when "0100"=>led<= "10011001";    --'4'
			when "0101"=>led<= "10010010";    --'5'
			when "0110"=>led<= "10000010";    --'6'
			when "0111"=>led<= "11111000";    --'7'
			when "1000"=>led<= "10000000";    --'8'
			when "1001"=>led<= "10010000";    --'9'
			when "1010"=>led<= "10001000";    --'A'
			when "1011"=>led<= "10000011";    --'b'
			when "1100"=>led<= "11000110";    --'C'
			when "1101"=>led<= "10100001";    --'d'
			when "1110"=>led<= "10000110";    --'E'
			when "1111"=>led<= "10001110";    --'F'
			when others=>led<= "XXXXXXXX";    --' '
		END CASE;
	END PROCESS;
	
	refresh : process(clk,tmp)
	begin
		if clk'event and clk='1' then
			tmp <= tmp + 1;
		end if;
		case tmp is
			when "00"=>digitSelect<= "0001";
			when "01"=>digitSelect<= "0010";
			when "10"=>digitSelect<= "0100";
			when "11"=>digitSelect<= "1000";
			when others =>digitSelect<= "0000";
		end case;
	end process;
	
end Behavioral;

