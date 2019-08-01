--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 07/10/2019 11:22:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/erid/Documents/GitHub/Xilinx-Projects/Clock_24/top.vhf -w /home/erid/Documents/GitHub/Xilinx-Projects/Clock_24/top.sch
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

entity VisDyn_MUSER_top is
   port ( A_in         : in    std_logic_vector (3 downto 0); 
          B_in         : in    std_logic_vector (3 downto 0); 
          clk_in       : in    std_logic; 
          C_in         : in    std_logic_vector (3 downto 0); 
          D_in         : in    std_logic_vector (3 downto 0); 
          digSelect    : out   std_logic_vector (3 downto 0); 
          sevenSegLEDs : out   std_logic_vector (7 downto 0));
end VisDyn_MUSER_top;

architecture BEHAVIORAL of VisDyn_MUSER_top is
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

entity top is
   port ( clk       : in    std_logic; 
          reset     : in    std_logic; 
          carry_out : out   std_logic; 
          display   : out   std_logic_vector (7 downto 0); 
          selector  : out   std_logic_vector (3 downto 0));
end top;

architecture BEHAVIORAL of top is
   attribute BOX_TYPE   : string ;
   signal XLXN_52                    : std_logic_vector (3 downto 0);
   signal XLXN_53                    : std_logic_vector (3 downto 0);
   signal XLXN_54                    : std_logic_vector (3 downto 0);
   signal XLXN_55                    : std_logic_vector (3 downto 0);
   signal XLXN_56                    : std_logic;
   signal XLXN_57                    : std_logic;
   signal XLXN_58                    : std_logic;
   signal XLXN_61                    : std_logic;
   signal XLXN_64                    : std_logic;
   signal XLXN_78                    : std_logic;
   signal XLXN_79                    : std_logic;
   signal XLXN_80                    : std_logic;
   signal XLXN_81                    : std_logic;
   signal XLXN_83                    : std_logic;
   signal XLXN_84                    : std_logic;
   signal XLXN_86                    : std_logic;
   signal XLXI_6_reset_openSignal    : std_logic;
   signal XLXI_26_loadenb_openSignal : std_logic;
   signal XLXI_26_load_in_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_27_loadenb_openSignal : std_logic;
   signal XLXI_27_load_in_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_28_loadenb_openSignal : std_logic;
   signal XLXI_28_load_in_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_29_loadenb_openSignal : std_logic;
   signal XLXI_29_load_in_openSignal : std_logic_vector (3 downto 0);
   component clk1hz
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             output1hz : out   std_logic);
   end component;
   
   component VisDyn_MUSER_top
      port ( A_in         : in    std_logic_vector (3 downto 0); 
             B_in         : in    std_logic_vector (3 downto 0); 
             C_in         : in    std_logic_vector (3 downto 0); 
             D_in         : in    std_logic_vector (3 downto 0); 
             clk_in       : in    std_logic; 
             sevenSegLEDs : out   std_logic_vector (7 downto 0); 
             digSelect    : out   std_logic_vector (3 downto 0));
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
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
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
   XLXI_6 : clk1hz
      port map (clk=>clk,
                reset=>XLXI_6_reset_openSignal,
                output1hz=>XLXN_64);
   
   XLXI_19 : VisDyn_MUSER_top
      port map (A_in(3 downto 0)=>XLXN_52(3 downto 0),
                B_in(3 downto 0)=>XLXN_53(3 downto 0),
                clk_in=>clk,
                C_in(3 downto 0)=>XLXN_54(3 downto 0),
                D_in(3 downto 0)=>XLXN_55(3 downto 0),
                digSelect(3 downto 0)=>selector(3 downto 0),
                sevenSegLEDs(7 downto 0)=>display(7 downto 0));
   
   XLXI_26 : BCDcounter
      port map (clk=>XLXN_64,
                clkenb=>XLXN_86,
                loadenb=>XLXI_26_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_26_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>XLXN_61,
                carry_out=>XLXN_84,
                count_out(3 downto 0)=>XLXN_52(3 downto 0));
   
   XLXI_27 : BCDcounter
      port map (clk=>XLXN_64,
                clkenb=>XLXN_58,
                loadenb=>XLXI_27_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_27_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>XLXN_61,
                carry_out=>XLXN_81,
                count_out(3 downto 0)=>XLXN_53(3 downto 0));
   
   XLXI_28 : BCDcounter
      port map (clk=>XLXN_64,
                clkenb=>XLXN_57,
                loadenb=>XLXI_28_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_28_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>XLXN_61,
                carry_out=>XLXN_78,
                count_out(3 downto 0)=>XLXN_54(3 downto 0));
   
   XLXI_29 : BCDcounter
      port map (clk=>XLXN_64,
                clkenb=>XLXN_56,
                loadenb=>XLXI_29_loadenb_openSignal,
                load_in(3 downto 0)=>XLXI_29_load_in_openSignal(3 downto 0),
                reset=>reset,
                updw=>XLXN_61,
                carry_out=>carry_out,
                count_out(3 downto 0)=>XLXN_55(3 downto 0));
   
   XLXI_30 : AND2
      port map (I0=>XLXN_86,
                I1=>XLXN_83,
                O=>XLXN_58);
   
   XLXI_31 : AND2
      port map (I0=>XLXN_58,
                I1=>XLXN_80,
                O=>XLXN_57);
   
   XLXI_32 : AND2
      port map (I0=>XLXN_57,
                I1=>XLXN_79,
                O=>XLXN_56);
   
   XLXI_35 : VCC
      port map (P=>XLXN_86);
   
   XLXI_36 : INV
      port map (I=>XLXN_78,
                O=>XLXN_79);
   
   XLXI_37 : INV
      port map (I=>XLXN_81,
                O=>XLXN_80);
   
   XLXI_38 : INV
      port map (I=>XLXN_84,
                O=>XLXN_83);
   
end BEHAVIORAL;


