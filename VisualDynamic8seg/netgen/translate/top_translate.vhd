--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_translate.vhd
-- /___/   /\     Timestamp: Sun Jun  9 19:10:31 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm top -w -dir netgen/translate -ofmt vhdl -sim top.ngd top_translate.vhd 
-- Device	: 3s500epq208-5
-- Input file	: top.ngd
-- Output file	: /home/erid/Documents/Xilinx Projects/VisualDynamic8seg/netgen/translate/top_translate.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity top is
  port (
    clk_in : in STD_LOGIC := 'X'; 
    col : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sevenSeg : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    digitSelect : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    row : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal N0 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal XLXI_16_Mmux_q_3_39 : STD_LOGIC; 
  signal XLXI_16_Mmux_q_31_40 : STD_LOGIC; 
  signal XLXI_16_Mmux_q_32_41 : STD_LOGIC; 
  signal XLXI_16_Mmux_q_33_42 : STD_LOGIC; 
  signal XLXI_16_Mmux_q_4_43 : STD_LOGIC; 
  signal XLXI_16_Mmux_q_41_44 : STD_LOGIC; 
  signal XLXI_16_Mmux_q_42_45 : STD_LOGIC; 
  signal XLXI_16_Mmux_q_43_46 : STD_LOGIC; 
  signal XLXI_19_N01 : STD_LOGIC; 
  signal XLXI_19_N1 : STD_LOGIC; 
  signal XLXI_19_N2 : STD_LOGIC; 
  signal XLXI_19_N24 : STD_LOGIC; 
  signal XLXI_19_N5 : STD_LOGIC; 
  signal XLXI_19_Result_4_1_62 : STD_LOGIC; 
  signal XLXI_19_Result_4_2_63 : STD_LOGIC; 
  signal XLXI_19_S_row_64 : STD_LOGIC; 
  signal XLXI_19_S_row_mux0000 : STD_LOGIC; 
  signal XLXI_19_S_row_not0001 : STD_LOGIC; 
  signal XLXI_19_S_row_not00011_67 : STD_LOGIC; 
  signal XLXI_19_S_row_not00012_68 : STD_LOGIC; 
  signal XLXI_19_clk2_69 : STD_LOGIC; 
  signal XLXI_19_clk4_70 : STD_LOGIC; 
  signal XLXI_19_code_2_1_74 : STD_LOGIC; 
  signal XLXI_19_code_2_3 : STD_LOGIC; 
  signal XLXI_19_code_3_1_77 : STD_LOGIC; 
  signal XLXI_19_count_mux0000_3_1_90 : STD_LOGIC; 
  signal XLXI_19_count_not0001 : STD_LOGIC; 
  signal XLXI_19_count_not00011_92 : STD_LOGIC; 
  signal XLXI_19_count_not00012_93 : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd1_98 : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd1_In : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd2_100 : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd2_In : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd3_102 : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd3_In : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd4_104 : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd4_In : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd5_106 : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd5_In : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd6_108 : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd6_In : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd6_In1_110 : STD_LOGIC; 
  signal XLXI_19_state_FSM_FFd6_In2_111 : STD_LOGIC; 
  signal XLXI_19_valid : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_10_rt_117 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_11_rt_119 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_12_rt_121 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_13_rt_123 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_14_rt_125 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_15_rt_127 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_16_rt_129 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_17_rt_131 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_18_rt_133 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_19_rt_135 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_1_rt_137 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_20_rt_139 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_21_rt_141 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_22_rt_143 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_23_rt_145 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_24_rt_147 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_25_rt_149 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_26_rt_151 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_27_rt_153 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_28_rt_155 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_29_rt_157 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_2_rt_159 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_30_rt_161 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_3_rt_163 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_4_rt_165 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_5_rt_167 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_6_rt_169 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_7_rt_171 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_8_rt_173 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_cy_9_rt_175 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_0 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_1 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_10 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_11 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_12 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_13 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_14 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_15 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_16 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_17 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_18 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_19 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_2 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_20 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_21 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_22 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_23 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_24 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_25 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_26 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_27 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_28 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_29 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_3 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_30 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_31 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_4 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_5 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_6 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_7 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_8 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_eqn_9 : STD_LOGIC; 
  signal XLXI_22_Mcount_count_xor_31_rt_209 : STD_LOGIC; 
  signal XLXI_22_count_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_22_tmp_258 : STD_LOGIC; 
  signal XLXI_22_tmp1 : STD_LOGIC; 
  signal XLXI_22_tmp_not0001 : STD_LOGIC; 
  signal XLXN_83 : STD_LOGIC; 
  signal clk_in_BUFGP : STD_LOGIC; 
  signal col_0_OBUF_292 : STD_LOGIC; 
  signal col_1_OBUF_293 : STD_LOGIC; 
  signal col_2_OBUF_294 : STD_LOGIC; 
  signal col_3_OBUF_295 : STD_LOGIC; 
  signal digitSelect_0_OBUF_300 : STD_LOGIC; 
  signal digitSelect_1_OBUF_301 : STD_LOGIC; 
  signal digitSelect_2_OBUF_302 : STD_LOGIC; 
  signal digitSelect_3_OBUF_303 : STD_LOGIC; 
  signal row_0_IBUF_308 : STD_LOGIC; 
  signal row_1_IBUF_309 : STD_LOGIC; 
  signal row_2_IBUF_310 : STD_LOGIC; 
  signal row_3_IBUF_311 : STD_LOGIC; 
  signal sevenSeg_0_OBUF_320 : STD_LOGIC; 
  signal sevenSeg_1_OBUF_321 : STD_LOGIC; 
  signal sevenSeg_2_OBUF_322 : STD_LOGIC; 
  signal sevenSeg_3_OBUF_323 : STD_LOGIC; 
  signal sevenSeg_4_OBUF_324 : STD_LOGIC; 
  signal sevenSeg_5_OBUF_325 : STD_LOGIC; 
  signal sevenSeg_6_OBUF_326 : STD_LOGIC; 
  signal sevenSeg_7_OBUF_327 : STD_LOGIC; 
  signal clk_in_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_19_col_reg_3_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_19_col_reg_2_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_19_col_reg_1_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_19_col_reg_0_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_19_row_reg_3_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_19_row_reg_2_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_19_row_reg_1_C : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_19_row_reg_0_C : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 1 ); 
  signal XLXI_19_Mega_cnt : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal XLXI_19_Result : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal XLXI_19_code : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_19_col_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_19_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_19_count_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_19_row_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_20_tmp : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal XLXI_22_Mcount_count_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_22_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_22_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_22_count_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal XLXI_22_count_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_23_a : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_23_b : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_23_c : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_23_d : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXN_116 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXN_82 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal NlwRenamedSig_IO_row : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  NlwRenamedSig_IO_row(3) <= row(3);
  NlwRenamedSig_IO_row(2) <= row(2);
  NlwRenamedSig_IO_row(1) <= row(1);
  NlwRenamedSig_IO_row(0) <= row(0);
  XST_GND : X_ZERO
    port map (
      O => N0
    );
  XST_VCC : X_ONE
    port map (
      O => sevenSeg_7_OBUF_327
    );
  XLXI_22_tmp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      CE => XLXI_22_count_cmp_eq0000,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_tmp_not0001,
      O => XLXI_22_tmp1,
      SET => GND
    );
  XLXI_22_count_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_in_BUFGP,
      I => XLXI_22_Mcount_count_eqn_0,
      SET => sevenSeg_7_OBUF_327,
      O => XLXI_22_count(0),
      CE => VCC,
      RST => GND
    );
  XLXI_22_count_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_1,
      O => XLXI_22_count(1),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_2,
      O => XLXI_22_count(2),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_5,
      O => XLXI_22_count(5),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_3,
      O => XLXI_22_count(3),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_4,
      O => XLXI_22_count(4),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_6,
      O => XLXI_22_count(6),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_7,
      O => XLXI_22_count(7),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_10,
      O => XLXI_22_count(10),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_8,
      O => XLXI_22_count(8),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_9,
      O => XLXI_22_count(9),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_11,
      O => XLXI_22_count(11),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_12,
      O => XLXI_22_count(12),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_15,
      O => XLXI_22_count(15),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_13,
      O => XLXI_22_count(13),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_14,
      O => XLXI_22_count(14),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_16,
      O => XLXI_22_count(16),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_17 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_17,
      O => XLXI_22_count(17),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_20,
      O => XLXI_22_count(20),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_18,
      O => XLXI_22_count(18),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_19 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_19,
      O => XLXI_22_count(19),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_21,
      O => XLXI_22_count(21),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_22 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_22,
      O => XLXI_22_count(22),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_25 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_25,
      O => XLXI_22_count(25),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_23 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_23,
      O => XLXI_22_count(23),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_24 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_24,
      O => XLXI_22_count(24),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_26 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_26,
      O => XLXI_22_count(26),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_27 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_27,
      O => XLXI_22_count(27),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_28 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_28,
      O => XLXI_22_count(28),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_29 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_29,
      O => XLXI_22_count(29),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_30 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_30,
      O => XLXI_22_count(30),
      CE => VCC,
      SET => GND
    );
  XLXI_22_count_31 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_in_BUFGP,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_22_Mcount_count_eqn_31,
      O => XLXI_22_count(31),
      CE => VCC,
      SET => GND
    );
  XLXI_20_tmp_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      I => Result(1),
      O => XLXI_20_tmp(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_22_Mcount_count_cy_0_Q : X_MUX2
    port map (
      IB => N0,
      IA => sevenSeg_7_OBUF_327,
      SEL => XLXI_22_Mcount_count_lut(0),
      O => XLXI_22_Mcount_count_cy(0)
    );
  XLXI_22_Mcount_count_xor_0_Q : X_XOR2
    port map (
      I0 => N0,
      I1 => XLXI_22_Mcount_count_lut(0),
      O => Result_0_1
    );
  XLXI_22_Mcount_count_cy_1_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(0),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_1_rt_137,
      O => XLXI_22_Mcount_count_cy(1)
    );
  XLXI_22_Mcount_count_xor_1_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(0),
      I1 => XLXI_22_Mcount_count_cy_1_rt_137,
      O => Result_1_1
    );
  XLXI_22_Mcount_count_cy_2_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(1),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_2_rt_159,
      O => XLXI_22_Mcount_count_cy(2)
    );
  XLXI_22_Mcount_count_xor_2_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(1),
      I1 => XLXI_22_Mcount_count_cy_2_rt_159,
      O => Result(2)
    );
  XLXI_22_Mcount_count_cy_3_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(2),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_3_rt_163,
      O => XLXI_22_Mcount_count_cy(3)
    );
  XLXI_22_Mcount_count_xor_3_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(2),
      I1 => XLXI_22_Mcount_count_cy_3_rt_163,
      O => Result(3)
    );
  XLXI_22_Mcount_count_cy_4_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(3),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_4_rt_165,
      O => XLXI_22_Mcount_count_cy(4)
    );
  XLXI_22_Mcount_count_xor_4_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(3),
      I1 => XLXI_22_Mcount_count_cy_4_rt_165,
      O => Result(4)
    );
  XLXI_22_Mcount_count_cy_5_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(4),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_5_rt_167,
      O => XLXI_22_Mcount_count_cy(5)
    );
  XLXI_22_Mcount_count_xor_5_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(4),
      I1 => XLXI_22_Mcount_count_cy_5_rt_167,
      O => Result(5)
    );
  XLXI_22_Mcount_count_cy_6_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(5),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_6_rt_169,
      O => XLXI_22_Mcount_count_cy(6)
    );
  XLXI_22_Mcount_count_xor_6_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(5),
      I1 => XLXI_22_Mcount_count_cy_6_rt_169,
      O => Result(6)
    );
  XLXI_22_Mcount_count_cy_7_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(6),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_7_rt_171,
      O => XLXI_22_Mcount_count_cy(7)
    );
  XLXI_22_Mcount_count_xor_7_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(6),
      I1 => XLXI_22_Mcount_count_cy_7_rt_171,
      O => Result(7)
    );
  XLXI_22_Mcount_count_cy_8_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(7),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_8_rt_173,
      O => XLXI_22_Mcount_count_cy(8)
    );
  XLXI_22_Mcount_count_xor_8_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(7),
      I1 => XLXI_22_Mcount_count_cy_8_rt_173,
      O => Result(8)
    );
  XLXI_22_Mcount_count_cy_9_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(8),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_9_rt_175,
      O => XLXI_22_Mcount_count_cy(9)
    );
  XLXI_22_Mcount_count_xor_9_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(8),
      I1 => XLXI_22_Mcount_count_cy_9_rt_175,
      O => Result(9)
    );
  XLXI_22_Mcount_count_cy_10_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(9),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_10_rt_117,
      O => XLXI_22_Mcount_count_cy(10)
    );
  XLXI_22_Mcount_count_xor_10_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(9),
      I1 => XLXI_22_Mcount_count_cy_10_rt_117,
      O => Result(10)
    );
  XLXI_22_Mcount_count_cy_11_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(10),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_11_rt_119,
      O => XLXI_22_Mcount_count_cy(11)
    );
  XLXI_22_Mcount_count_xor_11_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(10),
      I1 => XLXI_22_Mcount_count_cy_11_rt_119,
      O => Result(11)
    );
  XLXI_22_Mcount_count_cy_12_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(11),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_12_rt_121,
      O => XLXI_22_Mcount_count_cy(12)
    );
  XLXI_22_Mcount_count_xor_12_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(11),
      I1 => XLXI_22_Mcount_count_cy_12_rt_121,
      O => Result(12)
    );
  XLXI_22_Mcount_count_cy_13_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(12),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_13_rt_123,
      O => XLXI_22_Mcount_count_cy(13)
    );
  XLXI_22_Mcount_count_xor_13_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(12),
      I1 => XLXI_22_Mcount_count_cy_13_rt_123,
      O => Result(13)
    );
  XLXI_22_Mcount_count_cy_14_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(13),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_14_rt_125,
      O => XLXI_22_Mcount_count_cy(14)
    );
  XLXI_22_Mcount_count_xor_14_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(13),
      I1 => XLXI_22_Mcount_count_cy_14_rt_125,
      O => Result(14)
    );
  XLXI_22_Mcount_count_cy_15_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(14),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_15_rt_127,
      O => XLXI_22_Mcount_count_cy(15)
    );
  XLXI_22_Mcount_count_xor_15_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(14),
      I1 => XLXI_22_Mcount_count_cy_15_rt_127,
      O => Result(15)
    );
  XLXI_22_Mcount_count_cy_16_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(15),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_16_rt_129,
      O => XLXI_22_Mcount_count_cy(16)
    );
  XLXI_22_Mcount_count_xor_16_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(15),
      I1 => XLXI_22_Mcount_count_cy_16_rt_129,
      O => Result(16)
    );
  XLXI_22_Mcount_count_cy_17_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(16),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_17_rt_131,
      O => XLXI_22_Mcount_count_cy(17)
    );
  XLXI_22_Mcount_count_xor_17_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(16),
      I1 => XLXI_22_Mcount_count_cy_17_rt_131,
      O => Result(17)
    );
  XLXI_22_Mcount_count_cy_18_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(17),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_18_rt_133,
      O => XLXI_22_Mcount_count_cy(18)
    );
  XLXI_22_Mcount_count_xor_18_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(17),
      I1 => XLXI_22_Mcount_count_cy_18_rt_133,
      O => Result(18)
    );
  XLXI_22_Mcount_count_cy_19_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(18),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_19_rt_135,
      O => XLXI_22_Mcount_count_cy(19)
    );
  XLXI_22_Mcount_count_xor_19_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(18),
      I1 => XLXI_22_Mcount_count_cy_19_rt_135,
      O => Result(19)
    );
  XLXI_22_Mcount_count_cy_20_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(19),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_20_rt_139,
      O => XLXI_22_Mcount_count_cy(20)
    );
  XLXI_22_Mcount_count_xor_20_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(19),
      I1 => XLXI_22_Mcount_count_cy_20_rt_139,
      O => Result(20)
    );
  XLXI_22_Mcount_count_cy_21_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(20),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_21_rt_141,
      O => XLXI_22_Mcount_count_cy(21)
    );
  XLXI_22_Mcount_count_xor_21_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(20),
      I1 => XLXI_22_Mcount_count_cy_21_rt_141,
      O => Result(21)
    );
  XLXI_22_Mcount_count_cy_22_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(21),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_22_rt_143,
      O => XLXI_22_Mcount_count_cy(22)
    );
  XLXI_22_Mcount_count_xor_22_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(21),
      I1 => XLXI_22_Mcount_count_cy_22_rt_143,
      O => Result(22)
    );
  XLXI_22_Mcount_count_cy_23_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(22),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_23_rt_145,
      O => XLXI_22_Mcount_count_cy(23)
    );
  XLXI_22_Mcount_count_xor_23_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(22),
      I1 => XLXI_22_Mcount_count_cy_23_rt_145,
      O => Result(23)
    );
  XLXI_22_Mcount_count_cy_24_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(23),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_24_rt_147,
      O => XLXI_22_Mcount_count_cy(24)
    );
  XLXI_22_Mcount_count_xor_24_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(23),
      I1 => XLXI_22_Mcount_count_cy_24_rt_147,
      O => Result(24)
    );
  XLXI_22_Mcount_count_cy_25_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(24),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_25_rt_149,
      O => XLXI_22_Mcount_count_cy(25)
    );
  XLXI_22_Mcount_count_xor_25_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(24),
      I1 => XLXI_22_Mcount_count_cy_25_rt_149,
      O => Result(25)
    );
  XLXI_22_Mcount_count_cy_26_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(25),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_26_rt_151,
      O => XLXI_22_Mcount_count_cy(26)
    );
  XLXI_22_Mcount_count_xor_26_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(25),
      I1 => XLXI_22_Mcount_count_cy_26_rt_151,
      O => Result(26)
    );
  XLXI_22_Mcount_count_cy_27_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(26),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_27_rt_153,
      O => XLXI_22_Mcount_count_cy(27)
    );
  XLXI_22_Mcount_count_xor_27_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(26),
      I1 => XLXI_22_Mcount_count_cy_27_rt_153,
      O => Result(27)
    );
  XLXI_22_Mcount_count_cy_28_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(27),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_28_rt_155,
      O => XLXI_22_Mcount_count_cy(28)
    );
  XLXI_22_Mcount_count_xor_28_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(27),
      I1 => XLXI_22_Mcount_count_cy_28_rt_155,
      O => Result(28)
    );
  XLXI_22_Mcount_count_cy_29_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(28),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_29_rt_157,
      O => XLXI_22_Mcount_count_cy(29)
    );
  XLXI_22_Mcount_count_xor_29_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(28),
      I1 => XLXI_22_Mcount_count_cy_29_rt_157,
      O => Result(29)
    );
  XLXI_22_Mcount_count_cy_30_Q : X_MUX2
    port map (
      IB => XLXI_22_Mcount_count_cy(29),
      IA => N0,
      SEL => XLXI_22_Mcount_count_cy_30_rt_161,
      O => XLXI_22_Mcount_count_cy(30)
    );
  XLXI_22_Mcount_count_xor_30_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(29),
      I1 => XLXI_22_Mcount_count_cy_30_rt_161,
      O => Result(30)
    );
  XLXI_22_Mcount_count_xor_31_Q : X_XOR2
    port map (
      I0 => XLXI_22_Mcount_count_cy(30),
      I1 => XLXI_22_Mcount_count_xor_31_rt_209,
      O => Result(31)
    );
  XLXI_16_Mmux_q_2_f5_2 : X_MUX2
    port map (
      IA => XLXI_16_Mmux_q_43_46,
      IB => XLXI_16_Mmux_q_33_42,
      SEL => XLXI_20_tmp(1),
      O => XLXN_116(3)
    );
  XLXI_16_Mmux_q_43 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_23_a(3),
      ADR2 => XLXI_23_b(3),
      O => XLXI_16_Mmux_q_43_46
    );
  XLXI_16_Mmux_q_33 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_23_c(3),
      ADR2 => XLXI_23_d(3),
      O => XLXI_16_Mmux_q_33_42
    );
  XLXI_16_Mmux_q_2_f5_1 : X_MUX2
    port map (
      IA => XLXI_16_Mmux_q_42_45,
      IB => XLXI_16_Mmux_q_32_41,
      SEL => XLXI_20_tmp(1),
      O => XLXN_116(2)
    );
  XLXI_16_Mmux_q_42 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_23_a(2),
      ADR2 => XLXI_23_b(2),
      O => XLXI_16_Mmux_q_42_45
    );
  XLXI_16_Mmux_q_32 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_23_c(2),
      ADR2 => XLXI_23_d(2),
      O => XLXI_16_Mmux_q_32_41
    );
  XLXI_16_Mmux_q_2_f5_0 : X_MUX2
    port map (
      IA => XLXI_16_Mmux_q_41_44,
      IB => XLXI_16_Mmux_q_31_40,
      SEL => XLXI_20_tmp(1),
      O => XLXN_116(1)
    );
  XLXI_16_Mmux_q_41 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_23_a(1),
      ADR2 => XLXI_23_b(1),
      O => XLXI_16_Mmux_q_41_44
    );
  XLXI_16_Mmux_q_31 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_23_c(1),
      ADR2 => XLXI_23_d(1),
      O => XLXI_16_Mmux_q_31_40
    );
  XLXI_16_Mmux_q_2_f5 : X_MUX2
    port map (
      IA => XLXI_16_Mmux_q_4_43,
      IB => XLXI_16_Mmux_q_3_39,
      SEL => XLXI_20_tmp(1),
      O => XLXN_116(0)
    );
  XLXI_16_Mmux_q_4 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_23_a(0),
      ADR2 => XLXI_23_b(0),
      O => XLXI_16_Mmux_q_4_43
    );
  XLXI_16_Mmux_q_3 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_23_c(0),
      ADR2 => XLXI_23_d(0),
      O => XLXI_16_Mmux_q_3_39
    );
  XLXI_19_state_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_state_FSM_FFd5_In,
      O => XLXI_19_state_FSM_FFd5_106,
      CE => VCC,
      SET => GND
    );
  XLXI_19_state_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_state_FSM_FFd4_In,
      O => XLXI_19_state_FSM_FFd4_104,
      CE => VCC,
      SET => GND
    );
  XLXI_19_state_FSM_FFd6 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      I => XLXI_19_state_FSM_FFd6_In,
      SET => sevenSeg_7_OBUF_327,
      O => XLXI_19_state_FSM_FFd6_108,
      CE => VCC,
      RST => GND
    );
  XLXI_19_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_state_FSM_FFd2_In,
      O => XLXI_19_state_FSM_FFd2_100,
      CE => VCC,
      SET => GND
    );
  XLXI_19_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_state_FSM_FFd1_In,
      O => XLXI_19_state_FSM_FFd1_98,
      CE => VCC,
      SET => GND
    );
  XLXI_19_state_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_state_FSM_FFd3_In,
      O => XLXI_19_state_FSM_FFd3_102,
      CE => VCC,
      SET => GND
    );
  XLXI_19_Mega_cnt_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_Result(4),
      O => XLXI_19_Mega_cnt(4),
      CE => VCC,
      SET => GND
    );
  XLXI_19_Mega_cnt_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_Result(3),
      O => XLXI_19_Mega_cnt(3),
      CE => VCC,
      SET => GND
    );
  XLXI_19_Mega_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_Result(2),
      O => XLXI_19_Mega_cnt(2),
      CE => VCC,
      SET => GND
    );
  XLXI_19_Mega_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_Result(1),
      O => XLXI_19_Mega_cnt(1),
      CE => VCC,
      SET => GND
    );
  XLXI_19_Mega_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_Result(0),
      O => XLXI_19_Mega_cnt(0),
      CE => VCC,
      SET => GND
    );
  XLXI_19_col_reg_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_19_col_reg_3_C,
      CE => XLXN_83,
      I => col_3_OBUF_295,
      O => XLXI_19_col_reg(3),
      SET => GND,
      RST => GND
    );
  XLXI_19_col_reg_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_19_col_reg_2_C,
      CE => XLXN_83,
      I => col_2_OBUF_294,
      O => XLXI_19_col_reg(2),
      SET => GND,
      RST => GND
    );
  XLXI_19_col_reg_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_19_col_reg_1_C,
      CE => XLXN_83,
      I => col_1_OBUF_293,
      O => XLXI_19_col_reg(1),
      SET => GND,
      RST => GND
    );
  XLXI_19_col_reg_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_19_col_reg_0_C,
      CE => XLXN_83,
      I => col_0_OBUF_292,
      O => XLXI_19_col_reg(0),
      SET => GND,
      RST => GND
    );
  XLXI_19_S_row : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      CE => XLXI_19_S_row_not0001,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_S_row_mux0000,
      O => XLXI_19_S_row_64,
      SET => GND
    );
  XLXI_19_count_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      CE => XLXI_19_count_not0001,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_count_mux0000(3),
      O => XLXI_19_count(3),
      SET => GND
    );
  XLXI_19_count_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      CE => XLXI_19_count_not0001,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_count_mux0000(2),
      O => XLXI_19_count(2),
      SET => GND
    );
  XLXI_19_count_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      CE => XLXI_19_count_not0001,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_count_mux0000(1),
      O => XLXI_19_count(1),
      SET => GND
    );
  XLXI_19_count_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk4_70,
      CE => XLXI_19_count_not0001,
      RST => sevenSeg_7_OBUF_327,
      I => XLXI_19_count_mux0000(0),
      O => XLXI_19_count(0),
      SET => GND
    );
  XLXI_19_clk4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_clk2_69,
      I => sevenSeg_7_OBUF_327,
      SRST => XLXI_19_clk4_70,
      O => XLXI_19_clk4_70,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_19_clk2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_19_Mega_cnt(4),
      I => sevenSeg_7_OBUF_327,
      SRST => XLXI_19_clk2_69,
      O => XLXI_19_clk2_69,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_19_row_reg_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_19_row_reg_3_C,
      CE => XLXN_83,
      I => row_3_IBUF_311,
      O => XLXI_19_row_reg(3),
      SET => GND,
      RST => GND
    );
  XLXI_19_row_reg_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_19_row_reg_2_C,
      CE => XLXN_83,
      I => row_2_IBUF_310,
      O => XLXI_19_row_reg(2),
      SET => GND,
      RST => GND
    );
  XLXI_19_row_reg_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_19_row_reg_1_C,
      CE => XLXN_83,
      I => row_1_IBUF_309,
      O => XLXI_19_row_reg(1),
      SET => GND,
      RST => GND
    );
  XLXI_19_row_reg_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_19_row_reg_0_C,
      CE => XLXN_83,
      I => row_0_IBUF_308,
      O => XLXI_19_row_reg(0),
      SET => GND,
      RST => GND
    );
  XLXI_23_d_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_c(3),
      SRST => N0,
      O => XLXI_23_d(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_d_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_c(2),
      SRST => N0,
      O => XLXI_23_d(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_d_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_c(1),
      SRST => N0,
      O => XLXI_23_d(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_d_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_c(0),
      SRST => N0,
      O => XLXI_23_d(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_c_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_b(3),
      SRST => N0,
      O => XLXI_23_c(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_c_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_b(2),
      SRST => N0,
      O => XLXI_23_c(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_c_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_b(1),
      SRST => N0,
      O => XLXI_23_c(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_c_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_b(0),
      SRST => N0,
      O => XLXI_23_c(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_b_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_a(3),
      SRST => N0,
      O => XLXI_23_b(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_b_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_a(2),
      SRST => N0,
      O => XLXI_23_b(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_b_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_a(1),
      SRST => N0,
      O => XLXI_23_b(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_b_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXI_23_a(0),
      SRST => N0,
      O => XLXI_23_b(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_a_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXN_82(3),
      SRST => N0,
      O => XLXI_23_a(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_a_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXN_82(2),
      SRST => N0,
      O => XLXI_23_a(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_a_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXN_82(1),
      SRST => N0,
      O => XLXI_23_a(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_23_a_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      CE => XLXN_83,
      I => XLXN_82(0),
      SRST => N0,
      O => XLXI_23_a(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_22_count_cmp_eq0000_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      ADR0 => XLXI_22_count(8),
      ADR1 => XLXI_22_count(9),
      ADR2 => XLXI_22_count(7),
      ADR3 => XLXI_22_count(10),
      O => XLXI_22_count_cmp_eq0000_wg_lut(0)
    );
  XLXI_22_count_cmp_eq0000_wg_cy_0_Q : X_MUX2
    port map (
      IB => sevenSeg_7_OBUF_327,
      IA => N0,
      SEL => XLXI_22_count_cmp_eq0000_wg_lut(0),
      O => XLXI_22_count_cmp_eq0000_wg_cy(0)
    );
  XLXI_22_count_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => XLXI_22_count(11),
      ADR1 => XLXI_22_count(12),
      ADR2 => XLXI_22_count(6),
      ADR3 => XLXI_22_count(13),
      O => XLXI_22_count_cmp_eq0000_wg_lut(1)
    );
  XLXI_22_count_cmp_eq0000_wg_cy_1_Q : X_MUX2
    port map (
      IB => XLXI_22_count_cmp_eq0000_wg_cy(0),
      IA => N0,
      SEL => XLXI_22_count_cmp_eq0000_wg_lut(1),
      O => XLXI_22_count_cmp_eq0000_wg_cy(1)
    );
  XLXI_22_count_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      ADR0 => XLXI_22_count(14),
      ADR1 => XLXI_22_count(15),
      ADR2 => XLXI_22_count(5),
      ADR3 => XLXI_22_count(16),
      O => XLXI_22_count_cmp_eq0000_wg_lut(2)
    );
  XLXI_22_count_cmp_eq0000_wg_cy_2_Q : X_MUX2
    port map (
      IB => XLXI_22_count_cmp_eq0000_wg_cy(1),
      IA => N0,
      SEL => XLXI_22_count_cmp_eq0000_wg_lut(2),
      O => XLXI_22_count_cmp_eq0000_wg_cy(2)
    );
  XLXI_22_count_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => XLXI_22_count(17),
      ADR1 => XLXI_22_count(18),
      ADR2 => XLXI_22_count(4),
      ADR3 => XLXI_22_count(19),
      O => XLXI_22_count_cmp_eq0000_wg_lut(3)
    );
  XLXI_22_count_cmp_eq0000_wg_cy_3_Q : X_MUX2
    port map (
      IB => XLXI_22_count_cmp_eq0000_wg_cy(2),
      IA => N0,
      SEL => XLXI_22_count_cmp_eq0000_wg_lut(3),
      O => XLXI_22_count_cmp_eq0000_wg_cy(3)
    );
  XLXI_22_count_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => XLXI_22_count(20),
      ADR1 => XLXI_22_count(21),
      ADR2 => XLXI_22_count(3),
      ADR3 => XLXI_22_count(22),
      O => XLXI_22_count_cmp_eq0000_wg_lut(4)
    );
  XLXI_22_count_cmp_eq0000_wg_cy_4_Q : X_MUX2
    port map (
      IB => XLXI_22_count_cmp_eq0000_wg_cy(3),
      IA => N0,
      SEL => XLXI_22_count_cmp_eq0000_wg_lut(4),
      O => XLXI_22_count_cmp_eq0000_wg_cy(4)
    );
  XLXI_22_count_cmp_eq0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => XLXI_22_count(23),
      ADR1 => XLXI_22_count(24),
      ADR2 => XLXI_22_count(2),
      ADR3 => XLXI_22_count(25),
      O => XLXI_22_count_cmp_eq0000_wg_lut(5)
    );
  XLXI_22_count_cmp_eq0000_wg_cy_5_Q : X_MUX2
    port map (
      IB => XLXI_22_count_cmp_eq0000_wg_cy(4),
      IA => N0,
      SEL => XLXI_22_count_cmp_eq0000_wg_lut(5),
      O => XLXI_22_count_cmp_eq0000_wg_cy(5)
    );
  XLXI_22_count_cmp_eq0000_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => XLXI_22_count(26),
      ADR1 => XLXI_22_count(27),
      ADR2 => XLXI_22_count(1),
      ADR3 => XLXI_22_count(28),
      O => XLXI_22_count_cmp_eq0000_wg_lut(6)
    );
  XLXI_22_count_cmp_eq0000_wg_cy_6_Q : X_MUX2
    port map (
      IB => XLXI_22_count_cmp_eq0000_wg_cy(5),
      IA => N0,
      SEL => XLXI_22_count_cmp_eq0000_wg_lut(6),
      O => XLXI_22_count_cmp_eq0000_wg_cy(6)
    );
  XLXI_22_count_cmp_eq0000_wg_lut_7_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => XLXI_22_count(29),
      ADR1 => XLXI_22_count(30),
      ADR2 => XLXI_22_count(0),
      ADR3 => XLXI_22_count(31),
      O => XLXI_22_count_cmp_eq0000_wg_lut(7)
    );
  XLXI_22_count_cmp_eq0000_wg_cy_7_Q : X_MUX2
    port map (
      IB => XLXI_22_count_cmp_eq0000_wg_cy(6),
      IA => N0,
      SEL => XLXI_22_count_cmp_eq0000_wg_lut(7),
      O => XLXI_22_count_cmp_eq0000
    );
  XLXI_19_code_2_411 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => XLXI_19_N1,
      ADR1 => XLXI_19_col_reg(0),
      ADR2 => XLXI_19_row_reg(3),
      O => XLXI_19_N24
    );
  XLXI_19_code_2_11 : X_LUT3
    generic map(
      INIT => X"68"
    )
    port map (
      ADR0 => XLXI_19_row_reg(2),
      ADR1 => XLXI_19_row_reg(1),
      ADR2 => XLXI_19_row_reg(0),
      O => XLXI_19_N1
    );
  XLXI_19_code_0_11 : X_LUT4
    generic map(
      INIT => X"6880"
    )
    port map (
      ADR0 => XLXI_19_col_reg(2),
      ADR1 => XLXI_19_col_reg(3),
      ADR2 => XLXI_19_col_reg(1),
      ADR3 => XLXI_19_col_reg(0),
      O => XLXI_19_N01
    );
  XLXI_19_code_2_2_SW0 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => XLXI_19_col_reg(3),
      ADR1 => XLXI_19_col_reg(2),
      ADR2 => XLXI_19_N5,
      O => N20
    );
  XLXI_19_code_2_2_SW1 : X_LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      ADR0 => XLXI_19_col_reg(3),
      ADR1 => XLXI_19_col_reg(2),
      ADR2 => XLXI_19_N1,
      ADR3 => XLXI_19_col_reg(0),
      O => N21
    );
  XLXI_19_code_2_2 : X_LUT4
    generic map(
      INIT => X"083B"
    )
    port map (
      ADR0 => XLXI_19_row_reg(3),
      ADR1 => XLXI_19_col_reg(1),
      ADR2 => N21,
      ADR3 => N20,
      O => XLXI_19_N2
    );
  XLXI_29_Mdecod_digitSelect31 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_20_tmp(1),
      O => digitSelect_3_OBUF_303
    );
  XLXI_29_Mdecod_digitSelect21 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => XLXI_20_tmp(1),
      ADR1 => XLXI_20_tmp(0),
      O => digitSelect_2_OBUF_302
    );
  XLXI_29_Mdecod_digitSelect11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_20_tmp(1),
      O => digitSelect_1_OBUF_301
    );
  XLXI_29_Mdecod_digitSelect01 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => XLXI_20_tmp(0),
      ADR1 => XLXI_20_tmp(1),
      O => digitSelect_0_OBUF_300
    );
  XLXI_19_state_FSM_Out91 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd4_104,
      ADR1 => XLXI_19_state_FSM_FFd2_100,
      ADR2 => XLXI_19_state_FSM_FFd3_102,
      O => col_0_OBUF_292
    );
  XLXI_19_state_FSM_Out81 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd5_106,
      ADR1 => XLXI_19_state_FSM_FFd2_100,
      ADR2 => XLXI_19_state_FSM_FFd3_102,
      O => col_1_OBUF_293
    );
  XLXI_19_state_FSM_Out71 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd5_106,
      ADR1 => XLXI_19_state_FSM_FFd2_100,
      ADR2 => XLXI_19_state_FSM_FFd4_104,
      O => col_2_OBUF_294
    );
  XLXI_19_state_FSM_Out61 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd5_106,
      ADR1 => XLXI_19_state_FSM_FFd3_102,
      ADR2 => XLXI_19_state_FSM_FFd4_104,
      O => col_3_OBUF_295
    );
  XLXI_19_state_FSM_FFd5_In1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_19_S_row_64,
      ADR1 => XLXI_19_state_FSM_FFd6_108,
      O => XLXI_19_state_FSM_FFd5_In
    );
  XLXI_20_Mcount_tmp_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => XLXI_20_tmp(1),
      ADR1 => XLXI_20_tmp(0),
      O => Result(1)
    );
  XLXI_19_Mcount_Mega_cnt_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => XLXI_19_Mega_cnt(1),
      ADR1 => XLXI_19_Mega_cnt(0),
      O => XLXI_19_Result(1)
    );
  XLXI_19_Mcount_Mega_cnt_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => XLXI_19_Mega_cnt(2),
      ADR1 => XLXI_19_Mega_cnt(1),
      ADR2 => XLXI_19_Mega_cnt(0),
      O => XLXI_19_Result(2)
    );
  XLXI_19_Result_3_1 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => XLXI_19_Mega_cnt(3),
      ADR1 => XLXI_19_Mega_cnt(2),
      ADR2 => XLXI_19_Mega_cnt(1),
      ADR3 => XLXI_19_Mega_cnt(0),
      O => XLXI_19_Result(3)
    );
  XLXI_19_state_FSM_FFd4_In1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd5_106,
      ADR1 => XLXI_19_S_row_mux0000,
      O => XLXI_19_state_FSM_FFd4_In
    );
  XLXI_19_state_FSM_FFd3_In1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd4_104,
      ADR1 => XLXI_19_S_row_mux0000,
      O => XLXI_19_state_FSM_FFd3_In
    );
  XLXI_19_state_FSM_FFd2_In1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd3_102,
      ADR1 => XLXI_19_S_row_mux0000,
      O => XLXI_19_state_FSM_FFd2_In
    );
  XLXI_19_count_mux0000_0_1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => XLXI_19_S_row_mux0000,
      ADR1 => XLXI_19_count(0),
      O => XLXI_19_count_mux0000(0)
    );
  XLXI_19_state_FSM_FFd1_In1 : X_LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      ADR0 => XLXI_19_S_row_mux0000,
      ADR1 => XLXI_19_state_FSM_FFd6_108,
      ADR2 => XLXI_19_state_FSM_FFd1_98,
      O => XLXI_19_state_FSM_FFd1_In
    );
  XLXI_19_count_mux0000_1_1 : X_LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      ADR0 => XLXI_19_S_row_mux0000,
      ADR1 => XLXI_19_count(0),
      ADR2 => XLXI_19_count(1),
      O => XLXI_19_count_mux0000(1)
    );
  XLXI_19_count_mux0000_2_1 : X_LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      ADR0 => XLXI_19_S_row_mux0000,
      ADR1 => XLXI_19_count(2),
      ADR2 => XLXI_19_count(0),
      ADR3 => XLXI_19_count(1),
      O => XLXI_19_count_mux0000(2)
    );
  XLXI_19_S_row_mux00001 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => row_2_IBUF_310,
      ADR1 => row_1_IBUF_309,
      ADR2 => row_0_IBUF_308,
      ADR3 => row_3_IBUF_311,
      O => XLXI_19_S_row_mux0000
    );
  XLXI_29_Mrom_led41 : X_LUT4
    generic map(
      INIT => X"445C"
    )
    port map (
      ADR0 => XLXN_116(3),
      ADR1 => XLXN_116(0),
      ADR2 => XLXN_116(2),
      ADR3 => XLXN_116(1),
      O => sevenSeg_4_OBUF_324
    );
  XLXI_29_Mrom_led21 : X_LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      ADR0 => XLXN_116(1),
      ADR1 => XLXN_116(2),
      ADR2 => XLXN_116(3),
      ADR3 => XLXN_116(0),
      O => sevenSeg_2_OBUF_322
    );
  XLXI_29_Mrom_led61 : X_LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      ADR0 => XLXN_116(1),
      ADR1 => XLXN_116(2),
      ADR2 => XLXN_116(3),
      ADR3 => XLXN_116(0),
      O => sevenSeg_6_OBUF_326
    );
  XLXI_29_Mrom_led51 : X_LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      ADR0 => XLXN_116(1),
      ADR1 => XLXN_116(3),
      ADR2 => XLXN_116(0),
      ADR3 => XLXN_116(2),
      O => sevenSeg_5_OBUF_325
    );
  XLXI_29_Mrom_led111 : X_LUT4
    generic map(
      INIT => X"B860"
    )
    port map (
      ADR0 => XLXN_116(3),
      ADR1 => XLXN_116(0),
      ADR2 => XLXN_116(2),
      ADR3 => XLXN_116(1),
      O => sevenSeg_1_OBUF_321
    );
  XLXI_29_Mrom_led31 : X_LUT4
    generic map(
      INIT => X"9086"
    )
    port map (
      ADR0 => XLXN_116(0),
      ADR1 => XLXN_116(2),
      ADR2 => XLXN_116(1),
      ADR3 => XLXN_116(3),
      O => sevenSeg_3_OBUF_323
    );
  XLXI_29_Mrom_led11 : X_LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      ADR0 => XLXN_116(0),
      ADR1 => XLXN_116(1),
      ADR2 => XLXN_116(2),
      ADR3 => XLXN_116(3),
      O => sevenSeg_0_OBUF_320
    );
  XLXI_22_Mcount_count_eqn_01 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Result_0_1,
      ADR1 => XLXI_22_count_cmp_eq0000,
      O => XLXI_22_Mcount_count_eqn_0
    );
  XLXI_22_Mcount_count_eqn_110 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result_1_1,
      ADR1 => XLXI_22_count_cmp_eq0000,
      O => XLXI_22_Mcount_count_eqn_1
    );
  XLXI_22_Mcount_count_eqn_210 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(2),
      ADR1 => XLXI_22_count_cmp_eq0000,
      O => XLXI_22_Mcount_count_eqn_2
    );
  XLXI_22_Mcount_count_eqn_32 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(3),
      ADR1 => XLXI_22_count_cmp_eq0000,
      O => XLXI_22_Mcount_count_eqn_3
    );
  XLXI_22_Mcount_count_eqn_41 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(4),
      ADR1 => XLXI_22_count_cmp_eq0000,
      O => XLXI_22_Mcount_count_eqn_4
    );
  XLXI_22_Mcount_count_eqn_51 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(5),
      ADR1 => XLXI_22_count_cmp_eq0000,
      O => XLXI_22_Mcount_count_eqn_5
    );
  XLXI_22_Mcount_count_eqn_61 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(6),
      ADR1 => XLXI_22_count_cmp_eq0000,
      O => XLXI_22_Mcount_count_eqn_6
    );
  XLXI_22_Mcount_count_eqn_71 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(7),
      ADR1 => XLXI_22_count_cmp_eq0000,
      O => XLXI_22_Mcount_count_eqn_7
    );
  XLXI_22_Mcount_count_eqn_81 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(8),
      ADR1 => XLXI_22_count_cmp_eq0000,
      O => XLXI_22_Mcount_count_eqn_8
    );
  XLXI_22_Mcount_count_eqn_91 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(9),
      O => XLXI_22_Mcount_count_eqn_9
    );
  XLXI_22_Mcount_count_eqn_101 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(10),
      O => XLXI_22_Mcount_count_eqn_10
    );
  XLXI_22_Mcount_count_eqn_111 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(11),
      O => XLXI_22_Mcount_count_eqn_11
    );
  XLXI_22_Mcount_count_eqn_121 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(12),
      O => XLXI_22_Mcount_count_eqn_12
    );
  XLXI_22_Mcount_count_eqn_131 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(13),
      O => XLXI_22_Mcount_count_eqn_13
    );
  XLXI_22_Mcount_count_eqn_141 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(14),
      O => XLXI_22_Mcount_count_eqn_14
    );
  XLXI_22_Mcount_count_eqn_151 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(15),
      O => XLXI_22_Mcount_count_eqn_15
    );
  XLXI_22_Mcount_count_eqn_161 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(16),
      O => XLXI_22_Mcount_count_eqn_16
    );
  XLXI_22_Mcount_count_eqn_171 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(17),
      O => XLXI_22_Mcount_count_eqn_17
    );
  XLXI_22_Mcount_count_eqn_181 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(18),
      O => XLXI_22_Mcount_count_eqn_18
    );
  XLXI_22_Mcount_count_eqn_191 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(19),
      O => XLXI_22_Mcount_count_eqn_19
    );
  XLXI_22_Mcount_count_eqn_201 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(20),
      O => XLXI_22_Mcount_count_eqn_20
    );
  XLXI_22_Mcount_count_eqn_211 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(21),
      O => XLXI_22_Mcount_count_eqn_21
    );
  XLXI_22_Mcount_count_eqn_221 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(22),
      O => XLXI_22_Mcount_count_eqn_22
    );
  XLXI_22_Mcount_count_eqn_231 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(23),
      O => XLXI_22_Mcount_count_eqn_23
    );
  XLXI_22_Mcount_count_eqn_241 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(24),
      O => XLXI_22_Mcount_count_eqn_24
    );
  XLXI_22_Mcount_count_eqn_251 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(25),
      O => XLXI_22_Mcount_count_eqn_25
    );
  XLXI_22_Mcount_count_eqn_261 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(26),
      O => XLXI_22_Mcount_count_eqn_26
    );
  XLXI_22_Mcount_count_eqn_271 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(27),
      O => XLXI_22_Mcount_count_eqn_27
    );
  XLXI_22_Mcount_count_eqn_281 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(28),
      O => XLXI_22_Mcount_count_eqn_28
    );
  XLXI_22_Mcount_count_eqn_291 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(29),
      O => XLXI_22_Mcount_count_eqn_29
    );
  XLXI_22_Mcount_count_eqn_301 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(30),
      O => XLXI_22_Mcount_count_eqn_30
    );
  XLXI_22_Mcount_count_eqn_311 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_22_count_cmp_eq0000,
      ADR1 => Result(31),
      O => XLXI_22_Mcount_count_eqn_31
    );
  row_3_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_row(3),
      O => row_3_IBUF_311
    );
  row_2_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_row(2),
      O => row_2_IBUF_310
    );
  row_1_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_row(1),
      O => row_1_IBUF_309
    );
  row_0_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_row(0),
      O => row_0_IBUF_308
    );
  XLXI_20_tmp_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => XLXI_22_tmp_258,
      I => sevenSeg_7_OBUF_327,
      SRST => XLXI_20_tmp(0),
      O => XLXI_20_tmp(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_22_Mcount_count_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(1),
      O => XLXI_22_Mcount_count_cy_1_rt_137,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(2),
      O => XLXI_22_Mcount_count_cy_2_rt_159,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(3),
      O => XLXI_22_Mcount_count_cy_3_rt_163,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(4),
      O => XLXI_22_Mcount_count_cy_4_rt_165,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(5),
      O => XLXI_22_Mcount_count_cy_5_rt_167,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(6),
      O => XLXI_22_Mcount_count_cy_6_rt_169,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(7),
      O => XLXI_22_Mcount_count_cy_7_rt_171,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(8),
      O => XLXI_22_Mcount_count_cy_8_rt_173,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(9),
      O => XLXI_22_Mcount_count_cy_9_rt_175,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(10),
      O => XLXI_22_Mcount_count_cy_10_rt_117,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(11),
      O => XLXI_22_Mcount_count_cy_11_rt_119,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(12),
      O => XLXI_22_Mcount_count_cy_12_rt_121,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(13),
      O => XLXI_22_Mcount_count_cy_13_rt_123,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(14),
      O => XLXI_22_Mcount_count_cy_14_rt_125,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(15),
      O => XLXI_22_Mcount_count_cy_15_rt_127,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(16),
      O => XLXI_22_Mcount_count_cy_16_rt_129,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(17),
      O => XLXI_22_Mcount_count_cy_17_rt_131,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(18),
      O => XLXI_22_Mcount_count_cy_18_rt_133,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(19),
      O => XLXI_22_Mcount_count_cy_19_rt_135,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(20),
      O => XLXI_22_Mcount_count_cy_20_rt_139,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(21),
      O => XLXI_22_Mcount_count_cy_21_rt_141,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(22),
      O => XLXI_22_Mcount_count_cy_22_rt_143,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_23_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(23),
      O => XLXI_22_Mcount_count_cy_23_rt_145,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_24_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(24),
      O => XLXI_22_Mcount_count_cy_24_rt_147,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_25_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(25),
      O => XLXI_22_Mcount_count_cy_25_rt_149,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_26_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(26),
      O => XLXI_22_Mcount_count_cy_26_rt_151,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_27_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(27),
      O => XLXI_22_Mcount_count_cy_27_rt_153,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_28_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(28),
      O => XLXI_22_Mcount_count_cy_28_rt_155,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_29_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(29),
      O => XLXI_22_Mcount_count_cy_29_rt_157,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_cy_30_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(30),
      O => XLXI_22_Mcount_count_cy_30_rt_161,
      ADR1 => GND
    );
  XLXI_22_Mcount_count_xor_31_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_22_count(31),
      O => XLXI_22_Mcount_count_xor_31_rt_209,
      ADR1 => GND
    );
  XLXI_22_tmp_BUFG : X_CKBUF
    port map (
      I => XLXI_22_tmp1,
      O => XLXI_22_tmp_258
    );
  XLXI_22_Mcount_count_lut_0_INV_0 : X_INV
    port map (
      I => XLXI_22_count(0),
      O => XLXI_22_Mcount_count_lut(0)
    );
  XLXI_22_tmp_not00011_INV_0 : X_INV
    port map (
      I => XLXI_22_tmp1,
      O => XLXI_22_tmp_not0001
    );
  XLXI_19_Mcount_Mega_cnt_xor_0_11_INV_0 : X_INV
    port map (
      I => XLXI_19_Mega_cnt(0),
      O => XLXI_19_Result(0)
    );
  XLXI_19_code_2_31 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => XLXI_19_row_reg(0),
      ADR1 => XLXI_19_col_reg(0),
      ADR2 => XLXI_19_row_reg(2),
      ADR3 => XLXI_19_row_reg(1),
      O => XLXI_19_code_2_3
    );
  XLXI_19_code_2_3_f5 : X_MUX2
    port map (
      IA => XLXI_19_code_2_3,
      IB => N0,
      SEL => XLXI_19_row_reg(3),
      O => XLXI_19_N5
    );
  XLXI_19_code_1_1 : X_LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      ADR0 => XLXI_19_row_reg(2),
      ADR1 => XLXI_19_row_reg(1),
      ADR2 => XLXI_19_row_reg(0),
      ADR3 => XLXI_19_N01,
      O => XLXI_19_code(1)
    );
  XLXI_19_code_1_f5 : X_MUX2
    port map (
      IA => N0,
      IB => XLXI_19_code(1),
      SEL => XLXI_19_row_reg(3),
      O => XLXN_82(1)
    );
  XLXI_19_code_0_1 : X_LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      ADR0 => XLXI_19_row_reg(2),
      ADR1 => XLXI_19_row_reg(0),
      ADR2 => XLXI_19_row_reg(1),
      ADR3 => XLXI_19_N01,
      O => XLXI_19_code(0)
    );
  XLXI_19_code_0_f5 : X_MUX2
    port map (
      IA => N0,
      IB => XLXI_19_code(0),
      SEL => XLXI_19_row_reg(3),
      O => XLXN_82(0)
    );
  XLXI_19_code_3_1 : X_LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      ADR0 => XLXI_19_N2,
      ADR1 => XLXI_19_col_reg(3),
      ADR2 => XLXI_19_col_reg(1),
      ADR3 => XLXI_19_N24,
      O => XLXI_19_code(3)
    );
  XLXI_19_code_3_2 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => XLXI_19_N2,
      ADR1 => XLXI_19_col_reg(3),
      ADR2 => XLXI_19_col_reg(1),
      ADR3 => XLXI_19_N5,
      O => XLXI_19_code_3_1_77
    );
  XLXI_19_code_3_f5 : X_MUX2
    port map (
      IA => XLXI_19_code_3_1_77,
      IB => XLXI_19_code(3),
      SEL => XLXI_19_col_reg(2),
      O => XLXN_82(3)
    );
  XLXI_19_code_2_1 : X_LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      ADR0 => XLXI_19_N2,
      ADR1 => XLXI_19_col_reg(1),
      ADR2 => XLXI_19_col_reg(2),
      ADR3 => XLXI_19_N24,
      O => XLXI_19_code(2)
    );
  XLXI_19_code_2_4 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => XLXI_19_N2,
      ADR1 => XLXI_19_col_reg(1),
      ADR2 => XLXI_19_col_reg(2),
      ADR3 => XLXI_19_N5,
      O => XLXI_19_code_2_1_74
    );
  XLXI_19_code_2_f5 : X_MUX2
    port map (
      IA => XLXI_19_code_2_1_74,
      IB => XLXI_19_code(2),
      SEL => XLXI_19_col_reg(3),
      O => XLXN_82(2)
    );
  XLXI_19_valid1 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd2_100,
      ADR1 => XLXI_19_state_FSM_FFd3_102,
      ADR2 => XLXI_19_state_FSM_FFd4_104,
      ADR3 => XLXI_19_state_FSM_FFd5_106,
      O => XLXI_19_valid
    );
  XLXI_19_valid_f5 : X_MUX2
    port map (
      IA => N0,
      IB => XLXI_19_valid,
      SEL => XLXI_19_S_row_mux0000,
      O => XLXN_83
    );
  XLXI_19_state_FSM_FFd6_In1 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd6_108,
      ADR1 => XLXI_19_S_row_64,
      O => XLXI_19_state_FSM_FFd6_In1_110
    );
  XLXI_19_state_FSM_FFd6_In2 : X_LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd1_98,
      ADR1 => XLXI_19_state_FSM_FFd6_108,
      ADR2 => XLXI_19_S_row_64,
      ADR3 => XLXI_19_state_FSM_FFd2_100,
      O => XLXI_19_state_FSM_FFd6_In2_111
    );
  XLXI_19_state_FSM_FFd6_In_f5 : X_MUX2
    port map (
      IA => XLXI_19_state_FSM_FFd6_In2_111,
      IB => XLXI_19_state_FSM_FFd6_In1_110,
      SEL => XLXI_19_S_row_mux0000,
      O => XLXI_19_state_FSM_FFd6_In
    );
  XLXI_19_count_not00011 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => XLXI_19_count(3),
      ADR1 => XLXI_19_count(2),
      O => XLXI_19_count_not00011_92
    );
  XLXI_19_count_not00012 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd6_108,
      ADR1 => XLXI_19_state_FSM_FFd1_98,
      O => XLXI_19_count_not00012_93
    );
  XLXI_19_count_not0001_f5 : X_MUX2
    port map (
      IA => XLXI_19_count_not00012_93,
      IB => XLXI_19_count_not00011_92,
      SEL => XLXI_19_S_row_mux0000,
      O => XLXI_19_count_not0001
    );
  XLXI_19_S_row_not00011 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => XLXI_19_count(3),
      ADR1 => XLXI_19_count(2),
      O => XLXI_19_S_row_not00011_67
    );
  XLXI_19_S_row_not00012 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => XLXI_19_state_FSM_FFd6_108,
      ADR1 => XLXI_19_state_FSM_FFd1_98,
      O => XLXI_19_S_row_not00012_68
    );
  XLXI_19_S_row_not0001_f5 : X_MUX2
    port map (
      IA => XLXI_19_S_row_not00012_68,
      IB => XLXI_19_S_row_not00011_67,
      SEL => XLXI_19_S_row_mux0000,
      O => XLXI_19_S_row_not0001
    );
  XLXI_19_Result_4_1 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => XLXI_19_Mega_cnt(2),
      ADR1 => XLXI_19_Mega_cnt(1),
      ADR2 => XLXI_19_Mega_cnt(0),
      ADR3 => XLXI_19_Mega_cnt(3),
      O => XLXI_19_Result_4_1_62
    );
  XLXI_19_Result_4_2 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => XLXI_19_Mega_cnt(1),
      ADR1 => XLXI_19_Mega_cnt(2),
      ADR2 => XLXI_19_Mega_cnt(0),
      ADR3 => XLXI_19_Mega_cnt(3),
      O => XLXI_19_Result_4_2_63
    );
  XLXI_19_Result_4_f5 : X_MUX2
    port map (
      IA => XLXI_19_Result_4_2_63,
      IB => XLXI_19_Result_4_1_62,
      SEL => XLXI_19_Mega_cnt(4),
      O => XLXI_19_Result(4)
    );
  XLXI_19_count_mux0000_3_1 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => XLXI_19_count(3),
      ADR1 => XLXI_19_count(1),
      ADR2 => XLXI_19_count(0),
      ADR3 => XLXI_19_count(2),
      O => XLXI_19_count_mux0000_3_1_90
    );
  XLXI_19_count_mux0000_3_f5 : X_MUX2
    port map (
      IA => N0,
      IB => XLXI_19_count_mux0000_3_1_90,
      SEL => XLXI_19_S_row_mux0000,
      O => XLXI_19_count_mux0000(3)
    );
  col_0_PULLUP : X_PU
    port map (
      O => col(0)
    );
  col_1_PULLUP : X_PU
    port map (
      O => col(1)
    );
  col_2_PULLUP : X_PU
    port map (
      O => col(2)
    );
  col_3_PULLUP : X_PU
    port map (
      O => col(3)
    );
  row_0_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_row(0)
    );
  row_1_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_row(1)
    );
  row_2_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_row(2)
    );
  row_3_PULLUP : X_PU
    port map (
      O => NlwRenamedSig_IO_row(3)
    );
  clk_in_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_in_BUFGP_IBUFG_2,
      O => clk_in_BUFGP
    );
  clk_in_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk_in,
      O => clk_in_BUFGP_IBUFG_2
    );
  col_0_OBUF : X_OBUF
    port map (
      I => col_0_OBUF_292,
      O => col(0)
    );
  col_1_OBUF : X_OBUF
    port map (
      I => col_1_OBUF_293,
      O => col(1)
    );
  col_2_OBUF : X_OBUF
    port map (
      I => col_2_OBUF_294,
      O => col(2)
    );
  col_3_OBUF : X_OBUF
    port map (
      I => col_3_OBUF_295,
      O => col(3)
    );
  digitSelect_0_OBUF : X_OBUF
    port map (
      I => digitSelect_0_OBUF_300,
      O => digitSelect(0)
    );
  digitSelect_1_OBUF : X_OBUF
    port map (
      I => digitSelect_1_OBUF_301,
      O => digitSelect(1)
    );
  digitSelect_2_OBUF : X_OBUF
    port map (
      I => digitSelect_2_OBUF_302,
      O => digitSelect(2)
    );
  digitSelect_3_OBUF : X_OBUF
    port map (
      I => digitSelect_3_OBUF_303,
      O => digitSelect(3)
    );
  sevenSeg_0_OBUF : X_OBUF
    port map (
      I => sevenSeg_0_OBUF_320,
      O => sevenSeg(0)
    );
  sevenSeg_1_OBUF : X_OBUF
    port map (
      I => sevenSeg_1_OBUF_321,
      O => sevenSeg(1)
    );
  sevenSeg_2_OBUF : X_OBUF
    port map (
      I => sevenSeg_2_OBUF_322,
      O => sevenSeg(2)
    );
  sevenSeg_3_OBUF : X_OBUF
    port map (
      I => sevenSeg_3_OBUF_323,
      O => sevenSeg(3)
    );
  sevenSeg_4_OBUF : X_OBUF
    port map (
      I => sevenSeg_4_OBUF_324,
      O => sevenSeg(4)
    );
  sevenSeg_5_OBUF : X_OBUF
    port map (
      I => sevenSeg_5_OBUF_325,
      O => sevenSeg(5)
    );
  sevenSeg_6_OBUF : X_OBUF
    port map (
      I => sevenSeg_6_OBUF_326,
      O => sevenSeg(6)
    );
  sevenSeg_7_OBUF : X_OBUF
    port map (
      I => sevenSeg_7_OBUF_327,
      O => sevenSeg(7)
    );
  NlwBlock_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_XLXI_19_col_reg_3_C : X_INV
    port map (
      I => XLXI_19_Mega_cnt(4),
      O => NlwInverterSignal_XLXI_19_col_reg_3_C
    );
  NlwInverterBlock_XLXI_19_col_reg_2_C : X_INV
    port map (
      I => XLXI_19_Mega_cnt(4),
      O => NlwInverterSignal_XLXI_19_col_reg_2_C
    );
  NlwInverterBlock_XLXI_19_col_reg_1_C : X_INV
    port map (
      I => XLXI_19_Mega_cnt(4),
      O => NlwInverterSignal_XLXI_19_col_reg_1_C
    );
  NlwInverterBlock_XLXI_19_col_reg_0_C : X_INV
    port map (
      I => XLXI_19_Mega_cnt(4),
      O => NlwInverterSignal_XLXI_19_col_reg_0_C
    );
  NlwInverterBlock_XLXI_19_row_reg_3_C : X_INV
    port map (
      I => XLXI_19_Mega_cnt(4),
      O => NlwInverterSignal_XLXI_19_row_reg_3_C
    );
  NlwInverterBlock_XLXI_19_row_reg_2_C : X_INV
    port map (
      I => XLXI_19_Mega_cnt(4),
      O => NlwInverterSignal_XLXI_19_row_reg_2_C
    );
  NlwInverterBlock_XLXI_19_row_reg_1_C : X_INV
    port map (
      I => XLXI_19_Mega_cnt(4),
      O => NlwInverterSignal_XLXI_19_row_reg_1_C
    );
  NlwInverterBlock_XLXI_19_row_reg_0_C : X_INV
    port map (
      I => XLXI_19_Mega_cnt(4),
      O => NlwInverterSignal_XLXI_19_row_reg_0_C
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

