--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 06/14/2019 09:59:54
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/Xilinx Projects/flipfloptest/top.vhf" -w "/home/erid/Documents/Xilinx Projects/flipfloptest/top.sch"
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
   port ( clk : in    std_logic; 
          s   : in    std_logic; 
          led : out   std_logic_vector (3 downto 0));
end top;

architecture BEHAVIORAL of top is
   signal XLXN_1                  : std_logic;
   signal XLXI_1_reset_openSignal : std_logic;
   signal XLXI_2_r_openSignal     : std_logic;
   component clk1hz
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             output1hz : out   std_logic);
   end component;
   
   component flipflop
      port ( s   : in    std_logic; 
             clk : in    std_logic; 
             r   : in    std_logic; 
             q   : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : clk1hz
      port map (clk=>clk,
                reset=>XLXI_1_reset_openSignal,
                output1hz=>XLXN_1);
   
   XLXI_2 : flipflop
      port map (clk=>XLXN_1,
                r=>XLXI_2_r_openSignal,
                s=>s,
                q(3 downto 0)=>led(3 downto 0));
   
end BEHAVIORAL;


