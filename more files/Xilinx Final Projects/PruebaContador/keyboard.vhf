--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : keyboard.vhf
-- /___/   /\     Timestamp : 07/16/2019 15:21:59
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/Xilinx Final Projects/PruebaContador/keyboard.vhf" -w "/home/erid/Documents/Xilinx Final Projects/PruebaContador/keyboard.sch"
--Design Name: keyboard
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

entity keyboard is
   port ( clk     : in    std_logic; 
          reset   : in    std_logic; 
          row     : in    std_logic_vector (3 downto 0); 
          codeout : out   std_logic_vector (3 downto 0); 
          col     : out   std_logic_vector (3 downto 0); 
          valid   : out   std_logic);
end keyboard;

architecture BEHAVIORAL of keyboard is
   signal XLXN_1  : std_logic_vector (3 downto 0);
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
   XLXI_1 : key44
      port map (row(3 downto 0)=>row(3 downto 0),
                rst=>reset,
                sys_clk=>clk,
                code(3 downto 0)=>XLXN_1(3 downto 0),
                col(3 downto 0)=>col(3 downto 0),
                valid=>valid);
   
   XLXI_2 : traductor4bit
      port map (fromKeyb(3 downto 0)=>XLXN_1(3 downto 0),
                toRegister(3 downto 0)=>codeout(3 downto 0));
   
end BEHAVIORAL;


