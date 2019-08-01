----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:13:34 06/17/2019 
-- Design Name: 
-- Module Name:    traductor4bit - Behavioral 
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

entity traductor4bit is
    Port ( fromKeyb : in  STD_LOGIC_VECTOR (3 downto 0);
           toRegister : out  STD_LOGIC_VECTOR (3 downto 0));
end traductor4bit;

architecture Behavioral of traductor4bit is

begin

traductor: process (fromKeyb)
	begin
	
   case (fromKeyb) is 
      when "0000" =>
         toRegister <= "0001";
      when "0001" =>
         toRegister <= "1010";
      when "0010" =>
         toRegister <= "1111";
      when "0011" =>
         toRegister <= "0000";
      when "0100" =>
         toRegister <= "1110";
      when "0101" =>
         toRegister <= "1011";
      when "0110" =>
         toRegister <= "1001";
      when "0111" =>
         toRegister <= "1000";
      when "1000" =>
         toRegister <= "0111";
      when "1001" =>
         toRegister <= "1100";
      when "1010" =>
         toRegister <= "0110";
      when "1011" =>
         toRegister <= "0101";
      when "1100" =>
         toRegister <= "0100";
      when "1101" =>
         toRegister <= "1101";
      when "1110" =>
         toRegister <= "0011";
      when "1111" =>
         toRegister <= "0010";
      when others =>
         toRegister <= "XXXX";
   end case;
end process;
end Behavioral;

