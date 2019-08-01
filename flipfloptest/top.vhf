--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 07/03/2019 15:54:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/erid/Documents/GitHub/Xilinx-Projects/flipfloptest/top.vhf -w /home/erid/Documents/GitHub/Xilinx-Projects/flipfloptest/top.sch
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
   port ( clk    : in    std_logic; 
          in_ff  : in    std_logic; 
          reset  : in    std_logic; 
          out_ff : out   std_logic);
end top;

architecture BEHAVIORAL of top is
   signal XLXN_2                  : std_logic;
   signal XLXI_1_reset_openSignal : std_logic;
   component clk1hz
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             output1hz : out   std_logic);
   end component;
   
   component flipflopDasync
      port ( d     : in    std_logic; 
             clk   : in    std_logic; 
             reset : in    std_logic; 
             q     : out   std_logic);
   end component;
   
begin
   XLXI_1 : clk1hz
      port map (clk=>clk,
                reset=>XLXI_1_reset_openSignal,
                output1hz=>XLXN_2);
   
   XLXI_3 : flipflopDasync
      port map (clk=>XLXN_2,
                d=>in_ff,
                reset=>reset,
                q=>out_ff);
   
end BEHAVIORAL;


