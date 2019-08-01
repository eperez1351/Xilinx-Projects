--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : topmodule.vhf
-- /___/   /\     Timestamp : 07/16/2019 15:21:59
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/Xilinx Final Projects/PruebaContador/topmodule.vhf" -w "/home/erid/Documents/Xilinx Final Projects/PruebaContador/topmodule.sch"
--Design Name: topmodule
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

entity keyboard_MUSER_topmodule is
   port ( clk     : in    std_logic; 
          reset   : in    std_logic; 
          row     : in    std_logic_vector (3 downto 0); 
          codeout : out   std_logic_vector (3 downto 0); 
          col     : out   std_logic_vector (3 downto 0); 
          valid   : out   std_logic);
end keyboard_MUSER_topmodule;

architecture BEHAVIORAL of keyboard_MUSER_topmodule is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity topmodule is
   port ( clk       : in    std_logic; 
          rst       : in    std_logic; 
          XLXN_21   : in    std_logic_vector (3 downto 0); 
          carry_out : out   std_logic; 
          led       : out   std_logic_vector (3 downto 0); 
          XLXN_22   : out   std_logic_vector (3 downto 0));
end topmodule;

architecture BEHAVIORAL of topmodule is
   attribute BOX_TYPE   : string ;
   signal XLXN_1    : std_logic;
   signal XLXN_5    : std_logic;
   signal XLXN_18   : std_logic;
   signal XLXN_20   : std_logic;
   signal XLXN_23   : std_logic_vector (3 downto 0);
   signal XLXN_25   : std_logic;
   component counter74190
      port ( reset     : in    std_logic; 
             updw      : in    std_logic; 
             clk       : in    std_logic; 
             loadenb   : in    std_logic; 
             clkenb    : in    std_logic; 
             load_in   : in    std_logic_vector (3 downto 0); 
             carry_out : out   std_logic; 
             count_out : out   std_logic_vector (3 downto 0));
   end component;
   
   component clk1hz
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             output1hz : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component keyboard_MUSER_topmodule
      port ( clk     : in    std_logic; 
             reset   : in    std_logic; 
             row     : in    std_logic_vector (3 downto 0); 
             valid   : out   std_logic; 
             col     : out   std_logic_vector (3 downto 0); 
             codeout : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : counter74190
      port map (clk=>XLXN_1,
                clkenb=>XLXN_5,
                loadenb=>XLXN_25,
                load_in(3 downto 0)=>XLXN_23(3 downto 0),
                reset=>XLXN_20,
                updw=>XLXN_5,
                carry_out=>XLXN_18,
                count_out(3 downto 0)=>led(3 downto 0));
   
   XLXI_2 : clk1hz
      port map (clk=>clk,
                reset=>XLXN_20,
                output1hz=>XLXN_1);
   
   XLXI_4 : VCC
      port map (P=>XLXN_5);
   
   XLXI_5 : INV
      port map (I=>rst,
                O=>XLXN_20);
   
   XLXI_6 : INV
      port map (I=>XLXN_18,
                O=>carry_out);
   
   XLXI_7 : keyboard_MUSER_topmodule
      port map (clk=>clk,
                reset=>XLXN_20,
                row(3 downto 0)=>XLXN_21(3 downto 0),
                codeout(3 downto 0)=>XLXN_23(3 downto 0),
                col(3 downto 0)=>XLXN_22(3 downto 0),
                valid=>XLXN_25);
   
end BEHAVIORAL;


