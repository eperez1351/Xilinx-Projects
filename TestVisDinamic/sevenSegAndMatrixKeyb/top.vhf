--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 06/17/2019 15:51:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/erid/Documents/GitHub/Xilinx-Projects/sevenSegAndMatrixKeyb/top.vhf -w /home/erid/Documents/GitHub/Xilinx-Projects/sevenSegAndMatrixKeyb/top.sch
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
   signal XLXN_3        : std_logic;
   signal XLXN_14       : std_logic_vector (3 downto 0);
   signal XLXN_15       : std_logic_vector (3 downto 0);
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
   
   component traductor4bit
      port ( fromKeyb   : in    std_logic_vector (3 downto 0); 
             toRegister : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : clkDivider
      port map (clk=>clk_in,
                reset=>reset,
                clkout=>XLXN_3);
   
   XLXI_2 : sevenSegDisp
      port map (clk=>XLXN_3,
                q(3 downto 0)=>XLXN_15(3 downto 0),
                digitSelect(3 downto 0)=>digitSelector(3 downto 0),
                led(7 downto 0)=>leds(7 downto 0));
   
   XLXI_3 : key44
      port map (row(3 downto 0)=>row(3 downto 0),
                rst=>reset,
                sys_clk=>clk_in,
                code(3 downto 0)=>XLXN_14(3 downto 0),
                col(3 downto 0)=>col(3 downto 0),
                valid=>open);
   
   XLXI_4 : traductor4bit
      port map (fromKeyb(3 downto 0)=>XLXN_14(3 downto 0),
                toRegister(3 downto 0)=>XLXN_15(3 downto 0));
   
end BEHAVIORAL;


