
-- VHDL Instantiation Created from source file counter74190.vhd -- 16:18:31 07/16/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT counter74190
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

	Inst_counter74190: counter74190 PORT MAP(
		load_in => ,
		count_out => ,
		carry_out => ,
		reset => ,
		updw => ,
		clk => ,
		loadenb => ,
		clkenb => 
	);


