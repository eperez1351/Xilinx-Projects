--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 06/10/2019 15:50:32
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/Xilinx Projects/testRegister/top.vhf" -w "/home/erid/Documents/Xilinx Projects/testRegister/top.sch"
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
   port ( clk         : in    std_logic; 
          inputbutton : in    std_logic; 
          reset       : in    std_logic; 
          d1          : out   std_logic; 
          d2          : out   std_logic; 
          d3          : out   std_logic; 
          d4          : out   std_logic);
end top;

architecture BEHAVIORAL of top is
   signal XLXN_3      : std_logic;
   component clk1hz
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             output1hz : out   std_logic);
   end component;
   
   component ShiftReg4bitIN16bitOUT
      port ( q   : in    std_logic; 
             clk : in    std_logic; 
             rst : in    std_logic; 
             d1  : out   std_logic; 
             d2  : out   std_logic; 
             d3  : out   std_logic; 
             d4  : out   std_logic);
   end component;
   
begin
   XLXI_1 : clk1hz
      port map (clk=>clk,
                reset=>reset,
                output1hz=>XLXN_3);
   
   XLXI_2 : ShiftReg4bitIN16bitOUT
      port map (clk=>XLXN_3,
                q=>inputbutton,
                rst=>reset,
                d1=>d1,
                d2=>d2,
                d3=>d3,
                d4=>d4);
   
end BEHAVIORAL;


