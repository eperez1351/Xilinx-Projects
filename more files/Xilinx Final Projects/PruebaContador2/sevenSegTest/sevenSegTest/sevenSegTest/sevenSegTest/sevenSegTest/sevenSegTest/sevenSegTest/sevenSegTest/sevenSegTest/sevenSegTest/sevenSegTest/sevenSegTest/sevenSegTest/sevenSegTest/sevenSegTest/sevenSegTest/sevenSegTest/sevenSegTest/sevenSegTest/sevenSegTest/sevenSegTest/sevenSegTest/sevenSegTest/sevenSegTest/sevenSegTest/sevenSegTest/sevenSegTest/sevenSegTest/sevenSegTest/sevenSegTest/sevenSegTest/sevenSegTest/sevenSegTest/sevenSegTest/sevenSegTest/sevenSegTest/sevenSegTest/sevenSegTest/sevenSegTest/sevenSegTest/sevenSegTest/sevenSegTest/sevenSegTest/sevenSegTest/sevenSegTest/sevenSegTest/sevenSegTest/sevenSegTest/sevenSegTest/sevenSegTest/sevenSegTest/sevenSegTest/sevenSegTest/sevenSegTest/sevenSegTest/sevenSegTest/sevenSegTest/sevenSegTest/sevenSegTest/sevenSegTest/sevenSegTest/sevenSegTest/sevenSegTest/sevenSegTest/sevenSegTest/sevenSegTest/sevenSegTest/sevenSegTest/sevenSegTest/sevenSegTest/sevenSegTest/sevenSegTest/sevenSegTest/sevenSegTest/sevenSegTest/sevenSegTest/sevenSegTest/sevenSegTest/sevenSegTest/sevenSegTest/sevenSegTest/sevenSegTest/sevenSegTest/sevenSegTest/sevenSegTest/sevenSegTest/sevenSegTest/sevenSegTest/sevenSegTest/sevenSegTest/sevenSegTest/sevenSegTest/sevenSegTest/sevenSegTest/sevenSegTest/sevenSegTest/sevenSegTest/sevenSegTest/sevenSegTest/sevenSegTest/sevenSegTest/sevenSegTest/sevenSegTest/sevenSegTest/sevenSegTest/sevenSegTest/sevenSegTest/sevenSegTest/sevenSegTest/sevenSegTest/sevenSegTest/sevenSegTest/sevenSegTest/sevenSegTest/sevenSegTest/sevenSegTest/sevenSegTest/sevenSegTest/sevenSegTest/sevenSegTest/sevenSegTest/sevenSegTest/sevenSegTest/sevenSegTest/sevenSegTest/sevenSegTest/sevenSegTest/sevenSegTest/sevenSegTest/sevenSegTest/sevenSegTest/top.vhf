--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 06/10/2019 14:37:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/Xilinx Projects/sevenSegTest/top.vhf" -w "/home/erid/Documents/Xilinx Projects/sevenSegTest/top.sch"
--Design Name: top
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity top is
   port ( clk      : in    std_logic; 
          reset    : in    std_logic; 
          Display  : out   std_logic_vector (7 downto 0); 
          selector : out   std_logic_vector (3 downto 0));
end top;

architecture BEHAVIORAL of top is
   signal XLXN_5   : std_logic;
   signal XLXN_7   : std_logic_vector (3 downto 0);
   signal XLXN_12  : std_logic;
   component clkDivider
      port ( clk    : in    std_logic; 
             reset  : in    std_logic; 
             clkout : out   std_logic);
   end component;
   
   component sevenSegDisp
      port ( clk         : in    std_logic; 
             q           : in    std_logic_vector (3 downto 0); 
             led         : out   std_logic_vector (7 downto 0); 
             digitSelect : out   std_logic_vector (3 downto 0));
   end component;
   
   component upcounter16bit
      port ( clk        : in    std_logic; 
             output4bit : out   std_logic_vector (3 downto 0));
   end component;
   
   component clk1hz
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             output1hz : out   std_logic);
   end component;
   
begin
   XLXI_1 : clkDivider
      port map (clk=>clk,
                reset=>reset,
                clkout=>XLXN_5);
   
   XLXI_2 : sevenSegDisp
      port map (clk=>XLXN_5,
                q(3 downto 0)=>XLXN_7(3 downto 0),
                digitSelect(3 downto 0)=>selector(3 downto 0),
                led(7 downto 0)=>Display(7 downto 0));
   
   XLXI_3 : upcounter16bit
      port map (clk=>XLXN_12,
                output4bit(3 downto 0)=>XLXN_7(3 downto 0));
   
   XLXI_4 : clk1hz
      port map (clk=>clk,
                reset=>reset,
                output1hz=>XLXN_12);
   
end BEHAVIORAL;


