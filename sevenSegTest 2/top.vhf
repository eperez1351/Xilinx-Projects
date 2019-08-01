--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 07/10/2019 15:33:57
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/GitHub/Xilinx-Projects/sevenSegTest 2/top.vhf" -w "/home/erid/Documents/GitHub/Xilinx-Projects/sevenSegTest 2/top.sch"
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

entity keyboard_MUSER_top is
   port ( clk     : in    std_logic; 
          reset   : in    std_logic; 
          row     : in    std_logic_vector (3 downto 0); 
          codeout : out   std_logic_vector (3 downto 0); 
          col     : out   std_logic_vector (3 downto 0); 
          valid   : out   std_logic);
end keyboard_MUSER_top;

architecture BEHAVIORAL of keyboard_MUSER_top is
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

entity top is
   port ( clk      : in    std_logic; 
          reset    : in    std_logic; 
          row      : in    std_logic_vector (3 downto 0); 
          col      : out   std_logic_vector (3 downto 0); 
          Display  : out   std_logic_vector (7 downto 0); 
          selector : out   std_logic_vector (3 downto 0));
end top;

architecture BEHAVIORAL of top is
   attribute BOX_TYPE   : string ;
   signal XLXN_87                    : std_logic_vector (3 downto 0);
   signal XLXN_163                   : std_logic;
   signal XLXN_167                   : std_logic_vector (3 downto 0);
   signal XLXN_190                   : std_logic;
   signal XLXN_209                   : std_logic_vector (3 downto 0);
   signal XLXN_211                   : std_logic;
   signal XLXN_213                   : std_logic;
   signal XLXN_215                   : std_logic_vector (3 downto 0);
   signal XLXI_1_reset_openSignal    : std_logic;
   signal XLXI_14_c_openSignal       : std_logic_vector (3 downto 0);
   signal XLXI_14_d_openSignal       : std_logic_vector (3 downto 0);
   signal XLXI_45_loadenb_openSignal : std_logic;
   signal XLXI_45_load_in_openSignal : std_logic_vector (3 downto 0);
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
   
   component keyboard_MUSER_top
      port ( clk     : in    std_logic; 
             reset   : in    std_logic; 
             valid   : out   std_logic; 
             col     : out   std_logic_vector (3 downto 0); 
             codeout : out   std_logic_vector (3 downto 0); 
             row     : in    std_logic_vector (3 downto 0));
   end component;
   
   component reg16bitSIPO
      port ( rst    : in    std_logic; 
             clk    : in    std_logic; 
             clkenb : in    std_logic; 
             q      : in    std_logic_vector (3 downto 0); 
             d1     : out   std_logic_vector (3 downto 0); 
             d2     : out   std_logic_vector (3 downto 0); 
             d3     : out   std_logic_vector (3 downto 0); 
             d4     : out   std_logic_vector (3 downto 0));
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
   
begin
   XLXI_1 : clkDivider
      port map (clk=>clk,
                reset=>XLXI_1_reset_openSignal,
                clkout=>XLXN_190);
   
   XLXI_2 : sevenSegDisp
      port map (clk=>XLXN_190,
                q(3 downto 0)=>XLXN_87(3 downto 0),
                digitSelect(3 downto 0)=>selector(3 downto 0),
                led(7 downto 0)=>Display(7 downto 0));
   
   XLXI_4 : clk1hz
      port map (clk=>clk,
                reset=>reset,
                output1hz=>XLXN_211);
   
   XLXI_14 : MuxConContSel_16a4
      port map (a(3 downto 0)=>XLXN_209(3 downto 0),
                b(3 downto 0)=>XLXN_215(3 downto 0),
                c(3 downto 0)=>XLXI_14_c_openSignal(3 downto 0),
                clk=>XLXN_190,
                d(3 downto 0)=>XLXI_14_d_openSignal(3 downto 0),
                q(3 downto 0)=>XLXN_87(3 downto 0));
   
   XLXI_43 : keyboard_MUSER_top
      port map (clk=>clk,
                reset=>reset,
                row(3 downto 0)=>row(3 downto 0),
                codeout(3 downto 0)=>XLXN_167(3 downto 0),
                col(3 downto 0)=>col(3 downto 0),
                valid=>XLXN_163);
   
   XLXI_44 : reg16bitSIPO
      port map (clk=>XLXN_190,
                clkenb=>XLXN_163,
                q(3 downto 0)=>XLXN_167(3 downto 0),
                rst=>reset,
                d1(3 downto 0)=>XLXN_215(3 downto 0),
                d2=>open,
                d3=>open,
                d4=>open);
   
   XLXI_45 : BCDcounter
      port map (clk=>XLXN_211,
                clkenb=>XLXN_213,
                loadenb=>XLXI_45_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_45_load_in_openSignal(3 downto 0),
                reset=>XLXN_213,
                updw=>XLXN_213,
                carry_out=>open,
                count_out(3 downto 0)=>XLXN_209(3 downto 0));
   
   XLXI_48 : GND
      port map (G=>XLXN_213);
   
end BEHAVIORAL;


