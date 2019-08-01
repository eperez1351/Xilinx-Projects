--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 07/10/2019 14:30:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/erid/Documents/GitHub/Xilinx-Projects/sevenSegTest/top.vhf -w /home/erid/Documents/GitHub/Xilinx-Projects/sevenSegTest/top.sch
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
   attribute BOX_TYPE   : string ;
   signal XLXN_5                    : std_logic;
   signal XLXN_7                    : std_logic_vector (3 downto 0);
   signal XLXN_11                   : std_logic;
   signal XLXN_18                   : std_logic;
   signal XLXI_3_reset_openSignal   : std_logic;
   signal XLXI_4_loadenb_openSignal : std_logic;
   signal XLXI_4_load_in_openSignal : std_logic_vector (3 downto 0);
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
   
   component clk1hz
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             output1hz : out   std_logic);
   end component;
   
   component BCDcounter
      port ( reset     : in    std_logic; 
             updw      : in    std_logic; 
             clk       : in    std_logic; 
             loadenb   : in    std_logic; 
             clkenb    : in    std_logic; 
             load_in   : in    std_logic_vector (3 downto 0); 
             carry_out : out   std_logic; 
             count_out : out   std_logic_vector (3 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
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
   
   XLXI_3 : clk1hz
      port map (clk=>clk,
                reset=>XLXI_3_reset_openSignal,
                output1hz=>XLXN_11);
   
   XLXI_4 : BCDcounter
      port map (clk=>XLXN_11,
                clkenb=>XLXN_18,
                loadenb=>XLXI_4_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_4_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>XLXN_18,
                carry_out=>open,
                count_out(3 downto 0)=>XLXN_7(3 downto 0));
   
   XLXI_5 : GND
      port map (G=>open);
   
   XLXI_6 : VCC
      port map (P=>XLXN_18);
   
end BEHAVIORAL;


