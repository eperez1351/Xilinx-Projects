--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : topmodule.vhf
-- /___/   /\     Timestamp : 07/31/2019 14:29:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "/home/erid/Documents/Xilinx Final Projects/PruebaContador2/topmodule.vhf" -w "/home/erid/Documents/Xilinx Final Projects/PruebaContador2/topmodule.sch"
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

entity VisDyn_MUSER_topmodule is
   port ( A_in         : in    std_logic_vector (3 downto 0); 
          B_in         : in    std_logic_vector (3 downto 0); 
          clk_in       : in    std_logic; 
          C_in         : in    std_logic_vector (3 downto 0); 
          D_in         : in    std_logic_vector (3 downto 0); 
          digSelect    : out   std_logic_vector (3 downto 0); 
          sevenSegLEDs : out   std_logic_vector (7 downto 0));
end VisDyn_MUSER_topmodule;

architecture BEHAVIORAL of VisDyn_MUSER_topmodule is
   attribute BOX_TYPE   : string ;
   signal XLXN_2       : std_logic_vector (3 downto 0);
   signal XLXN_12      : std_logic;
   signal XLXN_16      : std_logic;
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : clkDivider
      port map (clk=>clk_in,
                reset=>XLXN_16,
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
   
   XLXI_7 : GND
      port map (G=>XLXN_16);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity topmodule is
   port ( clk      : in    std_logic; 
          reset    : in    std_logic; 
          Display  : out   std_logic_vector (7 downto 0); 
          Selector : out   std_logic_vector (3 downto 0));
end topmodule;

architecture BEHAVIORAL of topmodule is
   attribute BOX_TYPE   : string ;
   signal XLXN_6                  : std_logic;
   signal XLXN_14                 : std_logic;
   signal XLXN_21                 : std_logic_vector (3 downto 0);
   signal XLXN_24                 : std_logic_vector (3 downto 0);
   signal XLXN_25                 : std_logic_vector (3 downto 0);
   signal XLXN_26                 : std_logic_vector (3 downto 0);
   signal XLXN_33                 : std_logic;
   signal XLXN_34                 : std_logic;
   signal XLXI_3_load0_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_3_load1_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_3_load2_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_3_load3_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_5_reset_openSignal : std_logic;
   component VisDyn_MUSER_topmodule
      port ( A_in         : in    std_logic_vector (3 downto 0); 
             B_in         : in    std_logic_vector (3 downto 0); 
             C_in         : in    std_logic_vector (3 downto 0); 
             D_in         : in    std_logic_vector (3 downto 0); 
             clk_in       : in    std_logic; 
             sevenSegLEDs : out   std_logic_vector (7 downto 0); 
             digSelect    : out   std_logic_vector (3 downto 0));
   end component;
   
   component ClockCounter
      port ( clk     : in    std_logic; 
             reset   : in    std_logic; 
             loadenb : in    std_logic; 
             clkenb  : in    std_logic; 
             updw    : in    std_logic; 
             load0   : in    std_logic_vector (3 downto 0); 
             load1   : in    std_logic_vector (3 downto 0); 
             load2   : in    std_logic_vector (3 downto 0); 
             load3   : in    std_logic_vector (3 downto 0); 
             hourd   : out   std_logic_vector (3 downto 0); 
             houru   : out   std_logic_vector (3 downto 0); 
             mind    : out   std_logic_vector (3 downto 0); 
             minu    : out   std_logic_vector (3 downto 0));
   end component;
   
   component ClockCounterReset
      port ( in1      : in    std_logic_vector (3 downto 0); 
             in2      : in    std_logic_vector (3 downto 0); 
             resetout : out   std_logic);
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
   
begin
   XLXI_1 : VisDyn_MUSER_topmodule
      port map (A_in(3 downto 0)=>XLXN_26(3 downto 0),
                B_in(3 downto 0)=>XLXN_25(3 downto 0),
                clk_in=>clk,
                C_in(3 downto 0)=>XLXN_24(3 downto 0),
                D_in(3 downto 0)=>XLXN_21(3 downto 0),
                digSelect(3 downto 0)=>Selector(3 downto 0),
                sevenSegLEDs(7 downto 0)=>Display(7 downto 0));
   
   XLXI_3 : ClockCounter
      port map (clk=>XLXN_34,
                clkenb=>XLXN_33,
                loadenb=>XLXN_14,
                load0(3 downto 0)=>XLXI_3_load0_openSignal(3 downto 0),
                load1(3 downto 0)=>XLXI_3_load1_openSignal(3 downto 0),
                load2(3 downto 0)=>XLXI_3_load2_openSignal(3 downto 0),
                load3(3 downto 0)=>XLXI_3_load3_openSignal(3 downto 0),
                reset=>XLXN_6,
                updw=>XLXN_33,
                hourd(3 downto 0)=>XLXN_21(3 downto 0),
                houru(3 downto 0)=>XLXN_24(3 downto 0),
                mind(3 downto 0)=>XLXN_25(3 downto 0),
                minu(3 downto 0)=>XLXN_26(3 downto 0));
   
   XLXI_4 : ClockCounterReset
      port map (in1(3 downto 0)=>XLXN_21(3 downto 0),
                in2(3 downto 0)=>XLXN_24(3 downto 0),
                resetout=>XLXN_6);
   
   XLXI_5 : clk1hz
      port map (clk=>clk,
                reset=>XLXI_5_reset_openSignal,
                output1hz=>XLXN_34);
   
   XLXI_6 : VCC
      port map (P=>XLXN_33);
   
   XLXI_7 : INV
      port map (I=>reset,
                O=>XLXN_14);
   
end BEHAVIORAL;


