--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 06/08/2019 15:51:10
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/Xilinx Projects/VisualDynamic8seg/top.vhf" -w "/home/erid/Documents/Xilinx Projects/VisualDynamic8seg/top.sch"
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
   port ( clk_in      : in    std_logic; 
          row         : in    std_logic_vector (3 downto 0); 
          col         : out   std_logic_vector (3 downto 0); 
          digitSelect : out   std_logic_vector (3 downto 0); 
          sevenSeg    : out   std_logic_vector (7 downto 0));
end top;

architecture BEHAVIORAL of top is
   signal XLXN_82                : std_logic_vector (3 downto 0);
   signal XLXN_83                : std_logic;
   signal XLXN_92                : std_logic_vector (1 downto 0);
   signal XLXN_101               : std_logic;
   signal XLXN_110               : std_logic_vector (3 downto 0);
   signal XLXN_113               : std_logic_vector (3 downto 0);
   signal XLXN_114               : std_logic_vector (3 downto 0);
   signal XLXN_115               : std_logic_vector (3 downto 0);
   signal XLXN_116               : std_logic_vector (3 downto 0);
   signal XLXN_121               : std_logic;
   signal XLXI_19_rst_openSignal : std_logic;
   signal XLXI_23_rst_openSignal : std_logic;
   component mux4bit_4in1out
      port ( a : in    std_logic_vector (3 downto 0); 
             b : in    std_logic_vector (3 downto 0); 
             c : in    std_logic_vector (3 downto 0); 
             d : in    std_logic_vector (3 downto 0); 
             s : in    std_logic_vector (1 downto 0); 
             q : out   std_logic_vector (3 downto 0));
   end component;
   
   component key44
      port ( sys_clk : in    std_logic; 
             rst     : in    std_logic; 
             row     : in    std_logic_vector (3 downto 0); 
             valid   : out   std_logic; 
             code    : out   std_logic_vector (3 downto 0); 
             col     : out   std_logic_vector (3 downto 0));
   end component;
   
   component counterFor16to4mux
      port ( clk     : in    std_logic; 
             sel_out : out   std_logic_vector (1 downto 0));
   end component;
   
   component clkDivider
      port ( clk    : in    std_logic; 
             reset  : in    std_logic; 
             clkout : out   std_logic);
   end component;
   
   component ShiftReg4bitIN16bitOUT
      port ( clk : in    std_logic; 
             rst : in    std_logic; 
             enb : in    std_logic; 
             q   : in    std_logic_vector (3 downto 0); 
             d1  : out   std_logic_vector (3 downto 0); 
             d2  : out   std_logic_vector (3 downto 0); 
             d3  : out   std_logic_vector (3 downto 0); 
             d4  : out   std_logic_vector (3 downto 0));
   end component;
   
   component sevenSegDisp
      port ( clk         : in    std_logic; 
             q           : in    std_logic_vector (3 downto 0); 
             led         : out   std_logic_vector (7 downto 0); 
             digitSelect : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_16 : mux4bit_4in1out
      port map (a(3 downto 0)=>XLXN_110(3 downto 0),
                b(3 downto 0)=>XLXN_113(3 downto 0),
                c(3 downto 0)=>XLXN_114(3 downto 0),
                d(3 downto 0)=>XLXN_115(3 downto 0),
                s(1 downto 0)=>XLXN_92(1 downto 0),
                q(3 downto 0)=>XLXN_116(3 downto 0));
   
   XLXI_19 : key44
      port map (row(3 downto 0)=>row(3 downto 0),
                rst=>XLXI_19_rst_openSignal,
                sys_clk=>XLXN_101,
                code(3 downto 0)=>XLXN_82(3 downto 0),
                col(3 downto 0)=>col(3 downto 0),
                valid=>XLXN_83);
   
   XLXI_20 : counterFor16to4mux
      port map (clk=>XLXN_101,
                sel_out(1 downto 0)=>XLXN_92(1 downto 0));
   
   XLXI_22 : clkDivider
      port map (clk=>clk_in,
                reset=>XLXN_121,
                clkout=>XLXN_101);
   
   XLXI_23 : ShiftReg4bitIN16bitOUT
      port map (clk=>XLXN_101,
                enb=>XLXN_83,
                q(3 downto 0)=>XLXN_82(3 downto 0),
                rst=>XLXI_23_rst_openSignal,
                d1(3 downto 0)=>XLXN_110(3 downto 0),
                d2(3 downto 0)=>XLXN_113(3 downto 0),
                d3(3 downto 0)=>XLXN_114(3 downto 0),
                d4(3 downto 0)=>XLXN_115(3 downto 0));
   
   XLXI_29 : sevenSegDisp
      port map (clk=>XLXN_101,
                q(3 downto 0)=>XLXN_116(3 downto 0),
                digitSelect(3 downto 0)=>digitSelect(3 downto 0),
                led(7 downto 0)=>sevenSeg(7 downto 0));
   
end BEHAVIORAL;


