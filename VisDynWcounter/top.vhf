--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 06/26/2019 15:01:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/erid/Documents/GitHub/Xilinx-Projects/VisDynWcounter/top.vhf -w /home/erid/Documents/GitHub/Xilinx-Projects/VisDynWcounter/top.sch
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
   signal updw                       : std_logic;
   signal XLXN_27                    : std_logic_vector (3 downto 0);
   signal XLXN_28                    : std_logic;
   signal XLXN_29                    : std_logic;
   signal XLXN_31                    : std_logic;
   signal XLXN_32                    : std_logic;
   signal XLXN_33                    : std_logic;
   signal XLXN_37                    : std_logic_vector (3 downto 0);
   signal XLXN_38                    : std_logic_vector (3 downto 0);
   signal XLXN_39                    : std_logic_vector (3 downto 0);
   signal XLXN_40                    : std_logic_vector (3 downto 0);
   signal XLXI_7_loadenb_openSignal  : std_logic;
   signal XLXI_7_load_in_openSignal  : std_logic_vector (3 downto 0);
   signal XLXI_8_loadenb_openSignal  : std_logic;
   signal XLXI_8_load_in_openSignal  : std_logic_vector (3 downto 0);
   signal XLXI_9_loadenb_openSignal  : std_logic;
   signal XLXI_9_load_in_openSignal  : std_logic_vector (3 downto 0);
   signal XLXI_10_loadenb_openSignal : std_logic;
   signal XLXI_10_load_in_openSignal : std_logic_vector (3 downto 0);
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
   
   component MuxConContSel_16a4
      port ( clk : in    std_logic; 
             a   : in    std_logic_vector (3 downto 0); 
             b   : in    std_logic_vector (3 downto 0); 
             c   : in    std_logic_vector (3 downto 0); 
             d   : in    std_logic_vector (3 downto 0); 
             q   : out   std_logic_vector (3 downto 0));
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
   
begin
   XLXI_1 : clkDivider
      port map (clk=>clk,
                reset=>reset,
                clkout=>XLXN_28);
   
   XLXI_2 : sevenSegDisp
      port map (clk=>XLXN_28,
                q(3 downto 0)=>XLXN_27(3 downto 0),
                digitSelect(3 downto 0)=>selector(3 downto 0),
                led(7 downto 0)=>Display(7 downto 0));
   
   XLXI_4 : clk1hz
      port map (clk=>clk,
                reset=>reset,
                output1hz=>XLXN_29);
   
   XLXI_5 : MuxConContSel_16a4
      port map (a(3 downto 0)=>XLXN_37(3 downto 0),
                b(3 downto 0)=>XLXN_38(3 downto 0),
                c(3 downto 0)=>XLXN_39(3 downto 0),
                clk=>XLXN_28,
                d(3 downto 0)=>XLXN_40(3 downto 0),
                q(3 downto 0)=>XLXN_27(3 downto 0));
   
   XLXI_7 : BCDcounter
      port map (clk=>XLXN_29,
                clkenb=>XLXN_29,
                loadenb=>XLXI_7_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_7_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>updw,
                carry_out=>XLXN_31,
                count_out(3 downto 0)=>XLXN_37(3 downto 0));
   
   XLXI_8 : BCDcounter
      port map (clk=>XLXN_29,
                clkenb=>XLXN_31,
                loadenb=>XLXI_8_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_8_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>updw,
                carry_out=>XLXN_32,
                count_out(3 downto 0)=>XLXN_38(3 downto 0));
   
   XLXI_9 : BCDcounter
      port map (clk=>XLXN_29,
                clkenb=>XLXN_32,
                loadenb=>XLXI_9_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_9_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>updw,
                carry_out=>XLXN_33,
                count_out(3 downto 0)=>XLXN_39(3 downto 0));
   
   XLXI_10 : BCDcounter
      port map (clk=>XLXN_29,
                clkenb=>XLXN_33,
                loadenb=>XLXI_10_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_10_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>updw,
                carry_out=>open,
                count_out(3 downto 0)=>XLXN_40(3 downto 0));
   
end BEHAVIORAL;


