--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : VisDyn_drc.vhf
-- /___/   /\     Timestamp : 07/05/2019 09:34:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl VisDyn_drc.vhf -w /home/erid/Documents/GitHub/Xilinx-Projects/Clock_24/VisDyn.sch
--Design Name: VisDyn
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

entity VisDyn is
   port ( A_in         : in    std_logic_vector (3 downto 0); 
          B_in         : in    std_logic_vector (3 downto 0); 
          clk_in       : in    std_logic; 
          C_in         : in    std_logic_vector (3 downto 0); 
          dot_in       : in    std_logic; 
          D_in         : in    std_logic_vector (3 downto 0); 
          digSelect    : out   std_logic_vector (3 downto 0); 
          dot_out      : out   std_logic; 
          sevenSegLEDs : out   std_logic_vector (7 downto 0));
end VisDyn;

architecture BEHAVIORAL of VisDyn is
   attribute BOX_TYPE   : string ;
   signal XLXN_2                  : std_logic_vector (3 downto 0);
   signal XLXN_12                 : std_logic;
   signal XLXI_1_reset_openSignal : std_logic;
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
   
   component MuxConContSel_16a4
      port ( clk : in    std_logic; 
             a   : in    std_logic_vector (3 downto 0); 
             b   : in    std_logic_vector (3 downto 0); 
             c   : in    std_logic_vector (3 downto 0); 
             d   : in    std_logic_vector (3 downto 0); 
             q   : out   std_logic_vector (3 downto 0));
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   XLXI_1 : clkDivider
      port map (clk=>clk_in,
                reset=>XLXI_1_reset_openSignal,
                clkout=>XLXN_12);
   
   XLXI_2 : sevenSegDisp
      port map (clk=>XLXN_12,
                q(3 downto 0)=>XLXN_2(3 downto 0),
                digitSelect(3 downto 0)=>digSelect(3 downto 0),
                led(7 downto 0)=>sevenSegLEDs(7 downto 0));
   
   XLXI_3 : MuxConContSel_16a4
      port map (a(3 downto 0)=>A_in(3 downto 0),
                b(3 downto 0)=>B_in(3 downto 0),
                c(3 downto 0)=>C_in(3 downto 0),
                clk=>XLXN_12,
                d(3 downto 0)=>D_in(3 downto 0),
                q(3 downto 0)=>XLXN_2(3 downto 0));
   
   XLXI_6 : FD
      port map (C=>XLXN_12,
                D=>dot_in,
                Q=>dot_out);
   
end BEHAVIORAL;


