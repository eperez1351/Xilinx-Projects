----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:21:43 07/12/2019 
-- Design Name: 
-- Module Name:    UniversalCounter - Behavioral 
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

entity UniversalCounter is
	 generic (
	 bitwidth : integer;
    maxcount : integer := 9);
    Port ( load_in : in  STD_LOGIC_VECTOR (3 downto 0);
           count_out : out  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC;
			  reset : in std_logic;
			  updw : in std_logic;
           clk : in  STD_LOGIC;
           loadenb : in  STD_LOGIC;
           clkenb : in  STD_LOGIC);
end UniversalCounter;

architecture Behavioral of UniversalCounter is

begin


end Behavioral;

