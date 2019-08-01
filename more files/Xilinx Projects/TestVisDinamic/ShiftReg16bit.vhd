----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:23:05 06/14/2019 
-- Design Name: 
-- Module Name:    ShiftReg16bit - Behavioral 
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

entity ShiftReg16bit is
    Port ( data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           data_out16 : out  STD_LOGIC_VECTOR (15 downto 0);
           data_out0 : out  STD_LOGIC_VECTOR (3 downto 0);
           data_out1 : out  STD_LOGIC_VECTOR (3 downto 0);
           data_out2 : out  STD_LOGIC_VECTOR (3 downto 0);
           data_out3 : out  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clkenb : in  STD_LOGIC);
end ShiftReg16bit;

architecture Behavioral of ShiftReg16bit is

signal tmp : std_logic_vector (15 downto 0):= (others => '0');

begin

process (clk)
begin
   if clk'event and clk='1' then  
      if rst ='1' then 
         tmp <= (others => '0'); 
      elsif clkenb = '1' then 
         tmp <= tmp(11 downto 0) & data_in;
      end if; 
   end if;
end process;
data_out16 <= tmp;
data_out0 <= tmp(3 downto 0);



end Behavioral;

