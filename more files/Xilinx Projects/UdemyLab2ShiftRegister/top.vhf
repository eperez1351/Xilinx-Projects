--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 06/12/2019 15:04:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/Xilinx Projects/UdemyLab2ShiftRegister/top.vhf" -w "/home/erid/Documents/Xilinx Projects/UdemyLab2ShiftRegister/top.sch"
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
   port ( clk     : in    std_logic; 
          data_in : in    std_logic; 
          reset   : in    std_logic; 
          a       : out   std_logic; 
          b       : out   std_logic; 
          c       : out   std_logic; 
          d       : out   std_logic);
end top;

architecture BEHAVIORAL of top is
   signal XLXN_1  : std_logic;
   component clk1hz
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             output1hz : out   std_logic);
   end component;
   
   component Shift_Reg
      port ( data_in : in    std_logic; 
             reset   : in    std_logic; 
             clk     : in    std_logic; 
             A       : out   std_logic; 
             B       : out   std_logic; 
             C       : out   std_logic; 
             D       : out   std_logic);
   end component;
   
begin
   XLXI_1 : clk1hz
      port map (clk=>clk,
                reset=>reset,
                output1hz=>XLXN_1);
   
   XLXI_2 : Shift_Reg
      port map (clk=>XLXN_1,
                data_in=>data_in,
                reset=>reset,
                A=>a,
                B=>b,
                C=>c,
                D=>d);
   
end BEHAVIORAL;


