--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 06/03/2019 15:39:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/Xilinx Projects/Test/top.vhf" -w "/home/erid/Documents/Xilinx Projects/Test/top.sch"
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
   port ( clk       : in    std_logic; 
          reset     : in    std_logic; 
          clkout    : out   std_logic; 
          twoBitOut : out   std_logic_vector (1 downto 0));
end top;

architecture BEHAVIORAL of top is
   signal clkout_DUMMY : std_logic;
   component clkDivider
      port ( clk    : in    std_logic; 
             reset  : in    std_logic; 
             clkout : out   std_logic);
   end component;
   
   component counter
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             twobitOut : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   clkout <= clkout_DUMMY;
   XLXI_1 : clkDivider
      port map (clk=>clk,
                reset=>reset,
                clkout=>clkout_DUMMY);
   
   XLXI_2 : counter
      port map (clk=>clkout_DUMMY,
                reset=>reset,
                twobitOut(1 downto 0)=>twoBitOut(1 downto 0));
   
end BEHAVIORAL;


