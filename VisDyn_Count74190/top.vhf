--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 07/05/2019 11:13:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/erid/Documents/GitHub/Xilinx-Projects/VisDyn_Count74190/top.vhf -w /home/erid/Documents/GitHub/Xilinx-Projects/VisDyn_Count74190/top.sch
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
   port ( clk       : in    std_logic; 
          reset     : in    std_logic; 
          carry_out : out   std_logic; 
          Display   : out   std_logic_vector (7 downto 0); 
          selector  : out   std_logic_vector (3 downto 0));
end top;

architecture BEHAVIORAL of top is
   attribute BOX_TYPE   : string ;
   signal led1                       : std_logic_vector (3 downto 0);
   signal updw                       : std_logic;
   signal XLXN_86                    : std_logic;
   signal XLXN_87                    : std_logic_vector (3 downto 0);
   signal XLXN_144                   : std_logic_vector (3 downto 0);
   signal XLXN_164                   : std_logic;
   signal XLXN_173                   : std_logic;
   signal XLXN_175                   : std_logic;
   signal XLXN_176                   : std_logic;
   signal XLXN_177                   : std_logic_vector (3 downto 0);
   signal XLXN_178                   : std_logic_vector (3 downto 0);
   signal XLXN_184                   : std_logic;
   signal XLXI_1_reset_openSignal    : std_logic;
   signal XLXI_32_loadenb_openSignal : std_logic;
   signal XLXI_32_load_in_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_33_loadenb_openSignal : std_logic;
   signal XLXI_33_load_in_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_42_loadenb_openSignal : std_logic;
   signal XLXI_42_load_in_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_43_loadenb_openSignal : std_logic;
   signal XLXI_43_load_in_openSignal : std_logic_vector (3 downto 0);
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
                reset=>XLXI_1_reset_openSignal,
                clkout=>XLXN_86);
   
   XLXI_2 : sevenSegDisp
      port map (clk=>XLXN_86,
                q(3 downto 0)=>XLXN_87(3 downto 0),
                digitSelect(3 downto 0)=>selector(3 downto 0),
                led(7 downto 0)=>Display(7 downto 0));
   
   XLXI_4 : clk1hz
      port map (clk=>clk,
                reset=>reset,
                output1hz=>XLXN_164);
   
   XLXI_14 : MuxConContSel_16a4
      port map (a(3 downto 0)=>led1(3 downto 0),
                b(3 downto 0)=>XLXN_144(3 downto 0),
                c(3 downto 0)=>XLXN_177(3 downto 0),
                clk=>XLXN_86,
                d(3 downto 0)=>XLXN_178(3 downto 0),
                q(3 downto 0)=>XLXN_87(3 downto 0));
   
   XLXI_32 : BCDcounter
      port map (clk=>XLXN_164,
                clkenb=>XLXN_184,
                loadenb=>XLXI_32_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_32_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>updw,
                carry_out=>XLXN_173,
                count_out(3 downto 0)=>led1(3 downto 0));
   
   XLXI_33 : BCDcounter
      port map (clk=>XLXN_164,
                clkenb=>XLXN_173,
                loadenb=>XLXI_33_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_33_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>updw,
                carry_out=>XLXN_175,
                count_out(3 downto 0)=>XLXN_144(3 downto 0));
   
   XLXI_42 : BCDcounter
      port map (clk=>XLXN_164,
                clkenb=>XLXN_175,
                loadenb=>XLXI_42_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_42_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>updw,
                carry_out=>XLXN_176,
                count_out(3 downto 0)=>XLXN_177(3 downto 0));
   
   XLXI_43 : BCDcounter
      port map (clk=>XLXN_164,
                clkenb=>XLXN_176,
                loadenb=>XLXI_43_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_43_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>updw,
                carry_out=>carry_out,
                count_out(3 downto 0)=>XLXN_178(3 downto 0));
   
   XLXI_44 : GND
      port map (G=>XLXN_184);
   
   XLXI_45 : VCC
      port map (P=>updw);
   
end BEHAVIORAL;


