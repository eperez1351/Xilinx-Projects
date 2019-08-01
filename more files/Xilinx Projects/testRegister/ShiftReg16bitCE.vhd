----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:36:34 06/12/2019 
-- Design Name: 
-- Module Name:    ShiftReg16bitCE - Behavioral 
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

entity ShiftReg16bitCE is
    Port ( clk : in  STD_LOGIC;
           enb : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           in : in  STD_LOGIC_VECTOR (3 downto 0);
           out1 : out  STD_LOGIC_VECTOR (3 downto 0);
           out2 : out  STD_LOGIC_VECTOR (3 downto 0);
           out3 : out  STD_LOGIC_VECTOR (3 downto 0);
           out4 : out  STD_LOGIC_VECTOR (3 downto 0));
end ShiftReg16bitCE;

architecture Behavioral of ShiftReg16bitCE is

signal tmp16 : unsigned := (others => '0';

begin

process (clk) 
begin 
   if clk'event and clk='1' then  
      if enb = '1' then 
         <tmp_sig> <= <load_data>; 
      elsif <clock_enable> = '1' then 
         <tmp_sig> <= <tmp_sig>(<width>-2 downto 0) & <input>;
      end if; 
   end if;
end process;
<output> <= <tmp_sig>(<width>-1);


end Behavioral;

