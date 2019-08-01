----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:00:52 06/22/2019 
-- Design Name: 
-- Module Name:    regPISO4shift - Behavioral 
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

entity regPISO4shift is
    Port ( d : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           loadenb : in  STD_LOGIC;
           q1 : out  STD_LOGIC_VECTOR (3 downto 0);
           q2 : out  STD_LOGIC_VECTOR (3 downto 0);
           q3 : out  STD_LOGIC_VECTOR (3 downto 0);
           q4 : out  STD_LOGIC_VECTOR (3 downto 0);
           q16 : out  STD_LOGIC_VECTOR (15 downto 0));
end regPISO4shift;

architecture Behavioral of regPISO4shift is

begin


end Behavioral;

