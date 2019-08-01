----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:19 07/14/2019 
-- Design Name: 
-- Module Name:    ClockCounter - Behavioral 
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

entity ClockCounter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           loadenb : in  STD_LOGIC;
           clkenb : in  STD_LOGIC;
			  updw : in std_logic;
           load0 : in  STD_LOGIC_VECTOR (3 downto 0);
           load1 : in  STD_LOGIC_VECTOR (3 downto 0);
           load2 : in  STD_LOGIC_VECTOR (3 downto 0);
           load3 : in  STD_LOGIC_VECTOR (3 downto 0);
           hourd : out  STD_LOGIC_VECTOR (3 downto 0);
           houru : out  STD_LOGIC_VECTOR (3 downto 0);
           mind : out  STD_LOGIC_VECTOR (3 downto 0);
           minu : out  STD_LOGIC_VECTOR (3 downto 0));
end ClockCounter;

architecture Behavioral of ClockCounter is

COMPONENT counter74190
	generic(maxcount : integer := 9);
	PORT(
		load_in : IN std_logic_vector(3 downto 0);
		reset : IN std_logic;
		updw : IN std_logic;
		clk : IN std_logic;
		loadenb : IN std_logic;
		clkenb : IN std_logic;          
		count_out : OUT std_logic_vector(3 downto 0);
		carry_out : OUT std_logic
		);
END COMPONENT;

signal carrytmp1 : std_logic;
signal carrytmp2 : std_logic;
signal carrytmp3 : std_logic;
signal carry1 : std_logic;
signal carry2 : std_logic; 
signal carry3 : std_logic; 

begin
carry1 <= carrytmp1 and clkenb;
carry2 <= carrytmp1 and carrytmp2;
carry3 <= carrytmp2 and carrytmp3;

   minu_counter74190: counter74190
	generic map(maxcount => 9)
	PORT MAP(
		load_in => load0,
		count_out => minu,
		carry_out => carrytmp1,
		reset => reset,
		updw => updw,
		clk => clk,
		loadenb => loadenb,
		clkenb => clkenb
	);
	
	mind_counter74190: counter74190 
	generic map(maxcount => 5)
	PORT MAP(
		load_in => load1,
		count_out => mind,
		carry_out => carrytmp2,
		reset => reset,
		updw => updw,
		clk => clk,
		loadenb => loadenb,
		clkenb => carry1
	);
	
	houru_counter74190: counter74190 
	generic map(maxcount => 9)
	PORT MAP(
		load_in => load2,
		count_out => houru,
		carry_out => carrytmp3,
		reset => reset,
		updw => updw,
		clk => clk,
		loadenb => loadenb,
		clkenb => carry2
	);
	
	hourd_counter74190: counter74190 
	generic map(maxcount => 2)
	PORT MAP(
		load_in => load3,
		count_out => hourd,
		carry_out => open,
		reset => reset,
		updw => updw,
		clk => clk,
		loadenb => loadenb,
		clkenb => carry3
	);

end Behavioral;

