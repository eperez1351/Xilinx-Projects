----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:56:27 06/26/2019 
-- Design Name: 
-- Module Name:    BCDcounter - Behavioral 
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

entity BCDcounter is
    Port ( load_in : in  STD_LOGIC_VECTOR (3 downto 0);
           count_out : out  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC;
			  reset : in std_logic;
			  updw : in std_logic;
           clk : in  STD_LOGIC;
           loadenb : in  STD_LOGIC;
           clkenb : in  STD_LOGIC);
end BCDcounter;

architecture Behavioral of BCDcounter is

signal tmp : unsigned(3 downto 0):="0000"; --se

begin
count: process (clk, reset, loadenb, load_in, clkenb, updw)
	begin
	if reset='0' then -- reset en alta prioridad
		tmp <= "0000";
	elsif loadenb='1' then -- carga paralela
		tmp <= unsigned(load_in);
	elsif clkenb='0' then -- habilitador reloj
		if clk'event and clk='1' then
			if updw='1' then	--direccion de contador
				tmp <= tmp + 1;
				if tmp = "1001" then --limite BCD
					tmp <= "0000";
				end if;
				carry_out <= not(tmp(0) and tmp(3)); --operacion de acarreo para bcd
			else
				tmp <= tmp - 1;
				if tmp = "0000" then --limite BCD inverso
					tmp <= "1001";
				end if;
				carry_out <= not((tmp(3) nor tmp(2)) and (tmp(0) and (tmp(0) xor tmp(1)))); --operacion de acarreo para bcd inverso
			end if;
		end if;
	end if;

end process;

count_out <= std_logic_vector(tmp); --conversion de tipo para salida

end Behavioral;

