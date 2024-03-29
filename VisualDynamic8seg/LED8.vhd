---------------------------------------------------------------------------------------------------
--*
--* File                : keyboard.vhd
--* Hardware Environment:
--* Build Environment   : Quartus II Version 9.1
--* Version             : 
--* By                  : Su Wei Feng
--*
--*                                  (c) Copyright 2005-2011, WaveShare
--*                                       http://www.waveshare.net
--*                                          All Rights Reserved
--*
---------------------------------------------------------------------------------------------------

-- VHDL library Declarations 
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
-- The Entity Declarations 
ENTITY LED8 IS
	PORT 
	(
		-----------------------------------------------
		-- Reset & Clock Signal 
		RESET: 		IN STD_LOGIC; 
		ClockScan:	IN STD_LOGIC;
		
		--LED0:	 IN STD_LOGIC_VECTOR(3 downto 0);
		
		LED1, LED2, LED3, LED4, LED5, LED6, LED7, LED8:	 IN STD_LOGIC_VECTOR(3 downto 0);
		
		-----------------------------------------------
		-- Eight Green LED PIN 
		light:		OUT	std_logic_vector(7 DOWNTO 0);
		
		-- LED8 PIN 
		LEDOut:		 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);	-- LED Segment 
		DigitSelect: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)	-- LED Digit 
	);
END LED8;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
-- The Architecture of Entity Declarations 
ARCHITECTURE LED8_arch OF LED8 IS
	SIGNAL LED:	STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL Refresh: STD_LOGIC_VECTOR(3 downto 0);
BEGIN
	
	-------------------------------------------------
	-- Encoder 
	-------------------------------------------------
	-- HEX-to-seven-segment decoder 
	-- segment encoding 
	--      0 
	--     ---  
	--  5 |   | 1
	--     ---   <- 6
	--  4 |   | 2
	--     ---  
	--      3
	PROCESS( LED )   
	BEGIN
		CASE LED IS
			when "0000"=>LEDOut<= "11000000";    --'0'
			when "0001"=>LEDOut<= "11111001";    --'1'
			when "0010"=>LEDOut<= "10100100";    --'2'
			when "0011"=>LEDOut<= "10110000";    --'3'
			when "0100"=>LEDOut<= "10011001";    --'4'
			when "0101"=>LEDOut<= "10010010";    --'5'
			when "0110"=>LEDOut<= "10000010";    --'6'
			when "0111"=>LEDOut<= "11111000";    --'7'
			when "1000"=>LEDOut<= "10000000";    --'8'
			when "1001"=>LEDOut<= "10010000";    --'9'
			when "1010"=>LEDOut<= "10001000";    --'A'
			when "1011"=>LEDOut<= "10000011";    --'b'
			when "1100"=>LEDOut<= "11000110";    --'C'
			when "1101"=>LEDOut<= "10100001";    --'d'
			when "1110"=>LEDOut<= "10000110";    --'E'
			when "1111"=>LEDOut<= "10001110";    --'F'
			when others=>LEDOut<= "XXXXXXXX";    --' '
		END CASE;
	END PROCESS;
	
	-------------------------------------------------
	-- clock 
	PROCESS( ClockScan, Refresh )   
	BEGIN
		IF( ClockScan'EVENT AND ClockScan = '1' )THEN 
			Refresh <= Refresh + 1; 
		END IF; 
		
		-------------------------------------------------
		--  LED Digit Select 
		DigitSelect <= Refresh; 
	END PROCESS;
	
	-------------------------------------------------
	-- MUX 
	LED <= --LED0;
	LED1 when( Refresh=0 ) else
	LED2 when( Refresh=1 ) else
	LED3 when( Refresh=2 ) else
	LED4 when( Refresh=3 ) else
	LED5 when( Refresh=4 ) else
	LED6 when( Refresh=5 ) else
	LED7 when( Refresh=6 ) else
	LED8;
	
	-------------------------------------------------
	-- 
	Light <= NOT(LED1 & LED2); 
	--Light <= LED0;
END LED8_arch;
