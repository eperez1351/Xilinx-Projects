--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 06/17/2019 16:09:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/Xilinx Projects/sevenSegAndMatrixKeyb/top.vhf" -w "/home/erid/Documents/Xilinx Projects/sevenSegAndMatrixKeyb/top.sch"
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
   port ( clk_in        : in    std_logic; 
          reset         : in    std_logic; 
          row           : in    std_logic_vector (3 downto 0); 
          col           : out   std_logic_vector (3 downto 0); 
          digitSelector : out   std_logic_vector (3 downto 0); 
          leds          : out   std_logic_vector (7 downto 0));
end top;

architecture BEHAVIORAL of top is
   signal XLXN_44       : std_logic;
   signal XLXN_108      : std_logic_vector (3 downto 0);
   signal XLXN_129      : std_logic;
   signal XLXN_162      : std_logic;
   signal XLXN_163      : std_logic_vector (3 downto 0);
   signal XLXN_164      : std_logic_vector (3 downto 0);
   signal XLXN_165      : std_logic_vector (3 downto 0);
   signal XLXN_166      : std_logic_vector (3 downto 0);
   signal XLXN_172      : std_logic_vector (3 downto 0);
   signal XLXN_173      : std_logic_vector (3 downto 0);
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
   
   component key44
      port ( sys_clk : in    std_logic; 
             rst     : in    std_logic; 
             row     : in    std_logic_vector (3 downto 0); 
             valid   : out   std_logic; 
             code    : out   std_logic_vector (3 downto 0); 
             col     : out   std_logic_vector (3 downto 0));
   end component;
   
   component MuxConContSel_16a4
      port ( clk : in    std_logic; 
             a   : in    std_logic_vector (3 downto 0); 
             b   : in    std_logic_vector (3 downto 0); 
             c   : in    std_logic_vector (3 downto 0); 
             d   : in    std_logic_vector (3 downto 0); 
             q   : out   std_logic_vector (3 downto 0));
   end component;
   
   component flancoP
      port ( ck : in    std_logic; 
             da : in    std_logic; 
             p  : out   std_logic);
   end component;
   
   component registro
      port ( ck : in    std_logic; 
             ce : in    std_logic; 
             d  : in    std_logic_vector (3 downto 0); 
             q  : out   std_logic_vector (3 downto 0));
   end component;
   
   component traductor4bit
      port ( fromKeyb   : in    std_logic_vector (3 downto 0); 
             toRegister : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : clkDivider
      port map (clk=>clk_in,
                reset=>reset,
                clkout=>XLXN_44);
   
   XLXI_2 : sevenSegDisp
      port map (clk=>XLXN_44,
                q(3 downto 0)=>XLXN_108(3 downto 0),
                digitSelect(3 downto 0)=>digitSelector(3 downto 0),
                led(7 downto 0)=>leds(7 downto 0));
   
   XLXI_3 : key44
      port map (row(3 downto 0)=>row(3 downto 0),
                rst=>reset,
                sys_clk=>clk_in,
                code(3 downto 0)=>XLXN_163(3 downto 0),
                col(3 downto 0)=>col(3 downto 0),
                valid=>XLXN_129);
   
   XLXI_13 : MuxConContSel_16a4
      port map (a(3 downto 0)=>XLXN_172(3 downto 0),
                b(3 downto 0)=>XLXN_173(3 downto 0),
                c(3 downto 0)=>XLXN_166(3 downto 0),
                clk=>XLXN_44,
                d(3 downto 0)=>XLXN_165(3 downto 0),
                q(3 downto 0)=>XLXN_108(3 downto 0));
   
   XLXI_34 : flancoP
      port map (ck=>clk_in,
                da=>XLXN_129,
                p=>XLXN_162);
   
   XLXI_35 : registro
      port map (ce=>XLXN_162,
                ck=>clk_in,
                d(3 downto 0)=>XLXN_173(3 downto 0),
                q(3 downto 0)=>XLXN_172(3 downto 0));
   
   XLXI_36 : registro
      port map (ce=>XLXN_162,
                ck=>clk_in,
                d(3 downto 0)=>XLXN_166(3 downto 0),
                q(3 downto 0)=>XLXN_173(3 downto 0));
   
   XLXI_37 : registro
      port map (ce=>XLXN_162,
                ck=>clk_in,
                d(3 downto 0)=>XLXN_165(3 downto 0),
                q(3 downto 0)=>XLXN_166(3 downto 0));
   
   XLXI_38 : registro
      port map (ce=>XLXN_162,
                ck=>clk_in,
                d(3 downto 0)=>XLXN_164(3 downto 0),
                q(3 downto 0)=>XLXN_165(3 downto 0));
   
   XLXI_48 : traductor4bit
      port map (fromKeyb(3 downto 0)=>XLXN_163(3 downto 0),
                toRegister(3 downto 0)=>XLXN_164(3 downto 0));
   
end BEHAVIORAL;


