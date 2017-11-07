--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: neander_synthesis.vhd
-- /___/   /\     Timestamp: Tue Nov 07 01:43:19 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm neander -w -dir netgen/synthesis -ofmt vhdl -sim neander.ngc neander_synthesis.vhd 
-- Device	: xc3s100e-4-cp132
-- Input file	: neander.ngc
-- Output file	: D:\Documents\Google Drive\Eng Comp\UFGRS\INF\sistemas digitais\neander\netgen\synthesis\neander_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: neander
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
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


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity neander is
  port (
    N_led : out STD_LOGIC; 
    ResetMain : in STD_LOGIC := 'X'; 
    ender_low : in STD_LOGIC := 'X'; 
    Start : in STD_LOGIC := 'X'; 
    passo_a_passo : in STD_LOGIC := 'X'; 
    prox_passo : in STD_LOGIC := 'X'; 
    clkMain : in STD_LOGIC := 'X'; 
    ender_high : in STD_LOGIC := 'X'; 
    writeB : in STD_LOGIC := 'X'; 
    alt_view : in STD_LOGIC := 'X'; 
    continue : in STD_LOGIC := 'X'; 
    Z_led : out STD_LOGIC; 
    selDisplay : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    display : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end neander;

architecture Structure of neander is
  component bram
    port (
      clka : in STD_LOGIC := 'X'; 
      clkb : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      web : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addrb : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      dinb : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      doutb : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal CargaPC_inv : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output1 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output10 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output11_44 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output12 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output13 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output2 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output3 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output4 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output5 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output6 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output7 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output8 : STD_LOGIC; 
  signal DECODE_Mrom_instruction_output9 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_cy_0_rt_56 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_cy_2_rt_59 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_cy_4_rt_62 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_lut_1_Q_65 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_lut_3_Q_66 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_lut_5_Q : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_lut_6_Q_68 : STD_LOGIC; 
  signal Mcount_conta200_cy_10_rt_71 : STD_LOGIC; 
  signal Mcount_conta200_cy_11_rt_73 : STD_LOGIC; 
  signal Mcount_conta200_cy_12_rt_75 : STD_LOGIC; 
  signal Mcount_conta200_cy_13_rt_77 : STD_LOGIC; 
  signal Mcount_conta200_cy_14_rt_79 : STD_LOGIC; 
  signal Mcount_conta200_cy_1_rt_81 : STD_LOGIC; 
  signal Mcount_conta200_cy_2_rt_83 : STD_LOGIC; 
  signal Mcount_conta200_cy_3_rt_85 : STD_LOGIC; 
  signal Mcount_conta200_cy_4_rt_87 : STD_LOGIC; 
  signal Mcount_conta200_cy_5_rt_89 : STD_LOGIC; 
  signal Mcount_conta200_cy_6_rt_91 : STD_LOGIC; 
  signal Mcount_conta200_cy_7_rt_93 : STD_LOGIC; 
  signal Mcount_conta200_cy_8_rt_95 : STD_LOGIC; 
  signal Mcount_conta200_cy_9_rt_97 : STD_LOGIC; 
  signal Mcount_conta200_xor_15_rt_99 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N1001 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N1011 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N1021 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N1031 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N1121 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N1151 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N1171 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N1211 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N1241 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N721 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal Reg_PC_Mcount_output_signal : STD_LOGIC; 
  signal Reg_PC_Mcount_output_signal1 : STD_LOGIC; 
  signal Reg_PC_Mcount_output_signal2 : STD_LOGIC; 
  signal Reg_PC_Mcount_output_signal3 : STD_LOGIC; 
  signal Reg_PC_Mcount_output_signal4 : STD_LOGIC; 
  signal Reg_PC_Mcount_output_signal5 : STD_LOGIC; 
  signal Reg_PC_Mcount_output_signal6 : STD_LOGIC; 
  signal Reg_PC_Mcount_output_signal7 : STD_LOGIC; 
  signal Reg_PC_output_signal_not0001 : STD_LOGIC; 
  signal ResetMain_IBUF_279 : STD_LOGIC; 
  signal ResetMain_IBUF1 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Start_IBUF_304 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f5_320 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f51 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f52 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f53 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f54 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f55 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f56 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f57 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_328 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_41_329 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_42_330 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_43_331 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_44_332 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_45_333 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_46_334 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_47_335 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f5_336 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f51 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f52 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f53 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f54 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f55 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f56 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f57 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_5_344 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_51_345 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_510_346 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_511_347 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_512_348 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_513_349 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_514_350 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_515_351 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_52_352 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_53_353 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_54_354 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_55_355 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_56_356 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_57_357 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_58_358 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_59_359 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_6_360 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_61_361 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_62_362 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_63_363 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_64_364 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_65_365 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_66_366 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_67_367 : STD_LOGIC; 
  signal UAL_nz_0_2_368 : STD_LOGIC; 
  signal UAL_output_signal_0_1 : STD_LOGIC; 
  signal UAL_output_signal_mux0000 : STD_LOGIC; 
  signal UnidadeControle_N14 : STD_LOGIC; 
  signal UnidadeControle_cargaAC_389 : STD_LOGIC; 
  signal UnidadeControle_cargaAC_or0000 : STD_LOGIC; 
  signal UnidadeControle_cargaNZ_391 : STD_LOGIC; 
  signal UnidadeControle_cargaNZ_or0000 : STD_LOGIC; 
  signal UnidadeControle_cargaPC_393 : STD_LOGIC; 
  signal UnidadeControle_cargaPC_or0000 : STD_LOGIC; 
  signal UnidadeControle_cargaRDM_395 : STD_LOGIC; 
  signal UnidadeControle_cargaRDM_mux0000 : STD_LOGIC; 
  signal UnidadeControle_cargaRDM_or0000 : STD_LOGIC; 
  signal UnidadeControle_cargaRDM_or000013_398 : STD_LOGIC; 
  signal UnidadeControle_cargaRDM_or00004_399 : STD_LOGIC; 
  signal UnidadeControle_cargaREM_400 : STD_LOGIC; 
  signal UnidadeControle_cargaREM_mux0000 : STD_LOGIC; 
  signal UnidadeControle_cargaREM_or0000 : STD_LOGIC; 
  signal UnidadeControle_cargaREM_or000011_403 : STD_LOGIC; 
  signal UnidadeControle_cargaREM_or00004_404 : STD_LOGIC; 
  signal UnidadeControle_cargaRI_405 : STD_LOGIC; 
  signal UnidadeControle_cargaRI_or0000_406 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_427 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_mux0000 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_or0000 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_or000011 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_or0000111_431 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_or000013 : STD_LOGIC; 
  signal UnidadeControle_next_st_0_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_11_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_13_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_15_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_16_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_17_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_18_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_1_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_6_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_9_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_0_20_443 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_0_27_444 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_0_4_445 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_18_12_446 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_18_33_447 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_18_50_448 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_18_77_449 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_18_90_450 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_18_91_451 : STD_LOGIC; 
  signal UnidadeControle_prox_passo_feito_452 : STD_LOGIC; 
  signal UnidadeControle_prox_passo_feito_mux0001 : STD_LOGIC; 
  signal UnidadeControle_prox_passo_reset_454 : STD_LOGIC; 
  signal UnidadeControle_prox_passo_reset_and0000 : STD_LOGIC; 
  signal UnidadeControle_selRDM_456 : STD_LOGIC; 
  signal UnidadeControle_selRDM_or0000 : STD_LOGIC; 
  signal UnidadeControle_selREM_458 : STD_LOGIC; 
  signal UnidadeControle_selREM_or0000 : STD_LOGIC; 
  signal UnidadeControle_selULA_mux0007_0_5_464 : STD_LOGIC; 
  signal UnidadeControle_selULA_mux0007_1_16_466 : STD_LOGIC; 
  signal UnidadeControle_selULA_mux0007_1_7_467 : STD_LOGIC; 
  signal UnidadeControle_stop_469 : STD_LOGIC; 
  signal UnidadeControle_stop_or0000 : STD_LOGIC; 
  signal UnidadeControle_writeMEM_0_or0000 : STD_LOGIC; 
  signal alt_view_IBUF_475 : STD_LOGIC; 
  signal clkMain_BUFGP_477 : STD_LOGIC; 
  signal clock200hz_478 : STD_LOGIC; 
  signal clock200hz_not0003 : STD_LOGIC; 
  signal continue_IBUF_497 : STD_LOGIC; 
  signal ctrl_FSM_FFd1_498 : STD_LOGIC; 
  signal ctrl_FSM_FFd2_499 : STD_LOGIC; 
  signal ctrl_FSM_FFd3_500 : STD_LOGIC; 
  signal ctrl_FSM_FFd4_501 : STD_LOGIC; 
  signal display_0_509 : STD_LOGIC; 
  signal display_1_510 : STD_LOGIC; 
  signal display_2_511 : STD_LOGIC; 
  signal display_3_512 : STD_LOGIC; 
  signal display_4_513 : STD_LOGIC; 
  signal display_5_514 : STD_LOGIC; 
  signal display_6_515 : STD_LOGIC; 
  signal display_cmp_eq0020 : STD_LOGIC; 
  signal display_cmp_eq0036 : STD_LOGIC; 
  signal display_cmp_eq0061 : STD_LOGIC; 
  signal display_mux0017_0_Q : STD_LOGIC; 
  signal display_mux0017_0_142_520 : STD_LOGIC; 
  signal display_mux0017_0_195_521 : STD_LOGIC; 
  signal display_mux0017_0_223_522 : STD_LOGIC; 
  signal display_mux0017_0_235_523 : STD_LOGIC; 
  signal display_mux0017_0_24_524 : STD_LOGIC; 
  signal display_mux0017_0_263_525 : STD_LOGIC; 
  signal display_mux0017_0_321_526 : STD_LOGIC; 
  signal display_mux0017_0_49_527 : STD_LOGIC; 
  signal display_mux0017_0_86_528 : STD_LOGIC; 
  signal display_mux0017_1_122_529 : STD_LOGIC; 
  signal display_mux0017_1_145_530 : STD_LOGIC; 
  signal display_mux0017_1_151_531 : STD_LOGIC; 
  signal display_mux0017_1_16_532 : STD_LOGIC; 
  signal display_mux0017_1_190_533 : STD_LOGIC; 
  signal display_mux0017_1_202 : STD_LOGIC; 
  signal display_mux0017_1_37_535 : STD_LOGIC; 
  signal display_mux0017_1_46_536 : STD_LOGIC; 
  signal display_mux0017_1_52_537 : STD_LOGIC; 
  signal display_mux0017_1_64_538 : STD_LOGIC; 
  signal display_mux0017_1_66_539 : STD_LOGIC; 
  signal display_mux0017_2_Q : STD_LOGIC; 
  signal display_mux0017_2_109_541 : STD_LOGIC; 
  signal display_mux0017_2_160_542 : STD_LOGIC; 
  signal display_mux0017_2_212_543 : STD_LOGIC; 
  signal display_mux0017_2_246_544 : STD_LOGIC; 
  signal display_mux0017_2_26_545 : STD_LOGIC; 
  signal display_mux0017_2_265_546 : STD_LOGIC; 
  signal display_mux0017_2_304_547 : STD_LOGIC; 
  signal display_mux0017_2_355_548 : STD_LOGIC; 
  signal display_mux0017_2_60_549 : STD_LOGIC; 
  signal display_mux0017_3_106_550 : STD_LOGIC; 
  signal display_mux0017_3_1113_551 : STD_LOGIC; 
  signal display_mux0017_3_167_552 : STD_LOGIC; 
  signal display_mux0017_3_177_553 : STD_LOGIC; 
  signal display_mux0017_3_21_554 : STD_LOGIC; 
  signal display_mux0017_3_2113_555 : STD_LOGIC; 
  signal display_mux0017_3_233_556 : STD_LOGIC; 
  signal display_mux0017_3_283_557 : STD_LOGIC; 
  signal display_mux0017_3_310_558 : STD_LOGIC; 
  signal display_mux0017_3_320_559 : STD_LOGIC; 
  signal display_mux0017_3_387_560 : STD_LOGIC; 
  signal display_mux0017_3_399 : STD_LOGIC; 
  signal display_mux0017_3_44_562 : STD_LOGIC; 
  signal display_mux0017_3_71_563 : STD_LOGIC; 
  signal display_mux0017_4_12_564 : STD_LOGIC; 
  signal display_mux0017_4_121 : STD_LOGIC; 
  signal display_mux0017_4_166_566 : STD_LOGIC; 
  signal display_mux0017_4_197_567 : STD_LOGIC; 
  signal display_mux0017_4_209_568 : STD_LOGIC; 
  signal display_mux0017_4_242_569 : STD_LOGIC; 
  signal display_mux0017_4_285_570 : STD_LOGIC; 
  signal display_mux0017_4_307_571 : STD_LOGIC; 
  signal display_mux0017_4_319 : STD_LOGIC; 
  signal display_mux0017_4_38_573 : STD_LOGIC; 
  signal display_mux0017_4_79_574 : STD_LOGIC; 
  signal display_mux0017_4_87_575 : STD_LOGIC; 
  signal display_mux0017_5_Q : STD_LOGIC; 
  signal display_mux0017_5_144_577 : STD_LOGIC; 
  signal display_mux0017_5_186_578 : STD_LOGIC; 
  signal display_mux0017_5_249_579 : STD_LOGIC; 
  signal display_mux0017_5_289_580 : STD_LOGIC; 
  signal display_mux0017_5_311_581 : STD_LOGIC; 
  signal display_mux0017_5_334_582 : STD_LOGIC; 
  signal display_mux0017_5_34_583 : STD_LOGIC; 
  signal display_mux0017_5_345_584 : STD_LOGIC; 
  signal display_mux0017_5_399_585 : STD_LOGIC; 
  signal display_mux0017_5_419_586 : STD_LOGIC; 
  signal display_mux0017_5_81_587 : STD_LOGIC; 
  signal display_mux0017_6_100_588 : STD_LOGIC; 
  signal display_mux0017_6_139_589 : STD_LOGIC; 
  signal display_mux0017_6_183_590 : STD_LOGIC; 
  signal display_mux0017_6_210_591 : STD_LOGIC; 
  signal display_mux0017_6_226_592 : STD_LOGIC; 
  signal display_mux0017_6_298_593 : STD_LOGIC; 
  signal display_mux0017_6_328_594 : STD_LOGIC; 
  signal display_mux0017_6_340 : STD_LOGIC; 
  signal display_mux0017_6_48_596 : STD_LOGIC; 
  signal display_mux0017_6_6_597 : STD_LOGIC; 
  signal display_mux0017_6_84_598 : STD_LOGIC; 
  signal display_or0000 : STD_LOGIC; 
  signal ender_high_BUFGP_601 : STD_LOGIC; 
  signal ender_low_BUFGP_603 : STD_LOGIC; 
  signal passo_a_passo_IBUF_605 : STD_LOGIC; 
  signal prox_passo_BUFGP_607 : STD_LOGIC; 
  signal selDisplay_0_612 : STD_LOGIC; 
  signal selDisplay_1_613 : STD_LOGIC; 
  signal selDisplay_2_614 : STD_LOGIC; 
  signal selDisplay_3_615 : STD_LOGIC; 
  signal writeB_IBUF_617 : STD_LOGIC; 
  signal BRAM_b_data_in_high : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BRAM_b_data_in_high_add0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BRAM_b_data_in_low : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BRAM_b_data_in_low_add0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BRAM_b_high_input : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BRAM_b_low_input : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BRAM_b_output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BRAM_output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_clock200hz_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Mcount_conta200_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcount_conta200_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mux1_output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mux2_output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NZ_output_signal : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Reg_AC_output_signal : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Reg_PC_Mcount_output_signal_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Reg_PC_Mcount_output_signal_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Reg_PC_output_signal : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Reg_RDM_output_signal : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Reg_REM_output_signal : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Reg_RI_output_signal : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal Result : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal UAL_Maddsub_output_signal_addsub0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal UAL_Maddsub_output_signal_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal UAL_output_signal_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ULA_NZ_output : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ULA_output : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal UnidadeControle_current_st : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal UnidadeControle_selULA : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal UnidadeControle_selULA_mux0007 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal UnidadeControle_writeMEM : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal conta200 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  clock200hz : FDE
    port map (
      C => clkMain_BUFGP_477,
      CE => Mcompar_clock200hz_cmp_lt0000_cy(6),
      D => clock200hz_not0003,
      Q => clock200hz_478
    );
  display_1 : FD
    port map (
      C => clock200hz_478,
      D => display_mux0017_5_Q,
      Q => display_1_510
    );
  display_4 : FD
    port map (
      C => clock200hz_478,
      D => display_mux0017_2_Q,
      Q => display_4_513
    );
  display_6 : FD
    port map (
      C => clock200hz_478,
      D => display_mux0017_0_Q,
      Q => display_6_515
    );
  BRAM_b_data_in_high_0 : FDE
    port map (
      C => prox_passo_BUFGP_607,
      CE => alt_view_IBUF_475,
      D => BRAM_b_data_in_high_add0000(0),
      Q => BRAM_b_data_in_high(0)
    );
  BRAM_b_data_in_high_1 : FDE
    port map (
      C => prox_passo_BUFGP_607,
      CE => alt_view_IBUF_475,
      D => BRAM_b_data_in_high_add0000(1),
      Q => BRAM_b_data_in_high(1)
    );
  BRAM_b_data_in_high_2 : FDE
    port map (
      C => prox_passo_BUFGP_607,
      CE => alt_view_IBUF_475,
      D => BRAM_b_data_in_high_add0000(2),
      Q => BRAM_b_data_in_high(2)
    );
  BRAM_b_data_in_high_3 : FDE
    port map (
      C => prox_passo_BUFGP_607,
      CE => alt_view_IBUF_475,
      D => BRAM_b_data_in_high_add0000(3),
      Q => BRAM_b_data_in_high(3)
    );
  BRAM_b_data_in_low_0 : FDE
    port map (
      C => ResetMain_IBUF_279,
      CE => alt_view_IBUF_475,
      D => BRAM_b_data_in_low_add0000(0),
      Q => BRAM_b_data_in_low(0)
    );
  BRAM_b_data_in_low_1 : FDE
    port map (
      C => ResetMain_IBUF_279,
      CE => alt_view_IBUF_475,
      D => BRAM_b_data_in_low_add0000(1),
      Q => BRAM_b_data_in_low(1)
    );
  BRAM_b_data_in_low_2 : FDE
    port map (
      C => ResetMain_IBUF_279,
      CE => alt_view_IBUF_475,
      D => BRAM_b_data_in_low_add0000(2),
      Q => BRAM_b_data_in_low(2)
    );
  BRAM_b_data_in_low_3 : FDE
    port map (
      C => ResetMain_IBUF_279,
      CE => alt_view_IBUF_475,
      D => BRAM_b_data_in_low_add0000(3),
      Q => BRAM_b_data_in_low(3)
    );
  NZ_output_signal_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaNZ_391,
      CLR => ResetMain_IBUF1,
      D => ULA_NZ_output(1),
      Q => NZ_output_signal(1)
    );
  NZ_output_signal_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaNZ_391,
      CLR => ResetMain_IBUF1,
      D => ULA_NZ_output(0),
      Q => NZ_output_signal(0)
    );
  Reg_PC_Mcount_output_signal_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_cargaPC_393,
      I1 => Reg_PC_output_signal(0),
      I2 => Reg_RDM_output_signal(0),
      O => Reg_PC_Mcount_output_signal_lut(0)
    );
  Reg_PC_Mcount_output_signal_cy_0_Q : MUXCY
    port map (
      CI => CargaPC_inv,
      DI => N0,
      S => Reg_PC_Mcount_output_signal_lut(0),
      O => Reg_PC_Mcount_output_signal_cy(0)
    );
  Reg_PC_Mcount_output_signal_xor_0_Q : XORCY
    port map (
      CI => CargaPC_inv,
      LI => Reg_PC_Mcount_output_signal_lut(0),
      O => Reg_PC_Mcount_output_signal
    );
  Reg_PC_Mcount_output_signal_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_cargaPC_393,
      I1 => Reg_PC_output_signal(1),
      I2 => Reg_RDM_output_signal(1),
      O => Reg_PC_Mcount_output_signal_lut(1)
    );
  Reg_PC_Mcount_output_signal_cy_1_Q : MUXCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(0),
      DI => N0,
      S => Reg_PC_Mcount_output_signal_lut(1),
      O => Reg_PC_Mcount_output_signal_cy(1)
    );
  Reg_PC_Mcount_output_signal_xor_1_Q : XORCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(0),
      LI => Reg_PC_Mcount_output_signal_lut(1),
      O => Reg_PC_Mcount_output_signal1
    );
  Reg_PC_Mcount_output_signal_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_cargaPC_393,
      I1 => Reg_PC_output_signal(2),
      I2 => Reg_RDM_output_signal(2),
      O => Reg_PC_Mcount_output_signal_lut(2)
    );
  Reg_PC_Mcount_output_signal_cy_2_Q : MUXCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(1),
      DI => N0,
      S => Reg_PC_Mcount_output_signal_lut(2),
      O => Reg_PC_Mcount_output_signal_cy(2)
    );
  Reg_PC_Mcount_output_signal_xor_2_Q : XORCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(1),
      LI => Reg_PC_Mcount_output_signal_lut(2),
      O => Reg_PC_Mcount_output_signal2
    );
  Reg_PC_Mcount_output_signal_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_cargaPC_393,
      I1 => Reg_PC_output_signal(3),
      I2 => Reg_RDM_output_signal(3),
      O => Reg_PC_Mcount_output_signal_lut(3)
    );
  Reg_PC_Mcount_output_signal_cy_3_Q : MUXCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(2),
      DI => N0,
      S => Reg_PC_Mcount_output_signal_lut(3),
      O => Reg_PC_Mcount_output_signal_cy(3)
    );
  Reg_PC_Mcount_output_signal_xor_3_Q : XORCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(2),
      LI => Reg_PC_Mcount_output_signal_lut(3),
      O => Reg_PC_Mcount_output_signal3
    );
  Reg_PC_Mcount_output_signal_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_cargaPC_393,
      I1 => Reg_PC_output_signal(4),
      I2 => Reg_RDM_output_signal(4),
      O => Reg_PC_Mcount_output_signal_lut(4)
    );
  Reg_PC_Mcount_output_signal_cy_4_Q : MUXCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(3),
      DI => N0,
      S => Reg_PC_Mcount_output_signal_lut(4),
      O => Reg_PC_Mcount_output_signal_cy(4)
    );
  Reg_PC_Mcount_output_signal_xor_4_Q : XORCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(3),
      LI => Reg_PC_Mcount_output_signal_lut(4),
      O => Reg_PC_Mcount_output_signal4
    );
  Reg_PC_Mcount_output_signal_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_cargaPC_393,
      I1 => Reg_PC_output_signal(5),
      I2 => Reg_RDM_output_signal(5),
      O => Reg_PC_Mcount_output_signal_lut(5)
    );
  Reg_PC_Mcount_output_signal_cy_5_Q : MUXCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(4),
      DI => N0,
      S => Reg_PC_Mcount_output_signal_lut(5),
      O => Reg_PC_Mcount_output_signal_cy(5)
    );
  Reg_PC_Mcount_output_signal_xor_5_Q : XORCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(4),
      LI => Reg_PC_Mcount_output_signal_lut(5),
      O => Reg_PC_Mcount_output_signal5
    );
  Reg_PC_Mcount_output_signal_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_cargaPC_393,
      I1 => Reg_PC_output_signal(6),
      I2 => Reg_RDM_output_signal(6),
      O => Reg_PC_Mcount_output_signal_lut(6)
    );
  Reg_PC_Mcount_output_signal_cy_6_Q : MUXCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(5),
      DI => N0,
      S => Reg_PC_Mcount_output_signal_lut(6),
      O => Reg_PC_Mcount_output_signal_cy(6)
    );
  Reg_PC_Mcount_output_signal_xor_6_Q : XORCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(5),
      LI => Reg_PC_Mcount_output_signal_lut(6),
      O => Reg_PC_Mcount_output_signal6
    );
  Reg_PC_Mcount_output_signal_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_cargaPC_393,
      I1 => Reg_PC_output_signal(7),
      I2 => Reg_RDM_output_signal(7),
      O => Reg_PC_Mcount_output_signal_lut(7)
    );
  Reg_PC_Mcount_output_signal_xor_7_Q : XORCY
    port map (
      CI => Reg_PC_Mcount_output_signal_cy(6),
      LI => Reg_PC_Mcount_output_signal_lut(7),
      O => Reg_PC_Mcount_output_signal7
    );
  BRAM_b_low_input_1 : FD
    port map (
      C => ender_low_BUFGP_603,
      D => Result(1),
      Q => BRAM_b_low_input(1)
    );
  BRAM_b_low_input_2 : FD
    port map (
      C => ender_low_BUFGP_603,
      D => Result(2),
      Q => BRAM_b_low_input(2)
    );
  BRAM_b_low_input_3 : FD
    port map (
      C => ender_low_BUFGP_603,
      D => Result(3),
      Q => BRAM_b_low_input(3)
    );
  BRAM_b_high_input_1 : FD
    port map (
      C => ender_high_BUFGP_601,
      D => Result_1_2,
      Q => BRAM_b_high_input(1)
    );
  BRAM_b_high_input_2 : FD
    port map (
      C => ender_high_BUFGP_601,
      D => Result_2_2,
      Q => BRAM_b_high_input(2)
    );
  BRAM_b_high_input_3 : FD
    port map (
      C => ender_high_BUFGP_601,
      D => Result_3_2,
      Q => BRAM_b_high_input(3)
    );
  Reg_PC_output_signal_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF1,
      D => Reg_PC_Mcount_output_signal,
      Q => Reg_PC_output_signal(0)
    );
  Reg_PC_output_signal_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF1,
      D => Reg_PC_Mcount_output_signal1,
      Q => Reg_PC_output_signal(1)
    );
  Reg_PC_output_signal_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF1,
      D => Reg_PC_Mcount_output_signal2,
      Q => Reg_PC_output_signal(2)
    );
  Reg_PC_output_signal_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF1,
      D => Reg_PC_Mcount_output_signal3,
      Q => Reg_PC_output_signal(3)
    );
  Reg_PC_output_signal_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF1,
      D => Reg_PC_Mcount_output_signal4,
      Q => Reg_PC_output_signal(4)
    );
  Reg_PC_output_signal_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF1,
      D => Reg_PC_Mcount_output_signal5,
      Q => Reg_PC_output_signal(5)
    );
  Reg_PC_output_signal_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF1,
      D => Reg_PC_Mcount_output_signal6,
      Q => Reg_PC_output_signal(6)
    );
  Reg_PC_output_signal_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF1,
      D => Reg_PC_Mcount_output_signal7,
      Q => Reg_PC_output_signal(7)
    );
  conta200_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result_0_1,
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(0)
    );
  conta200_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result_1_1,
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(1)
    );
  conta200_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result_2_1,
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(2)
    );
  conta200_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result_3_1,
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(3)
    );
  conta200_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(4),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(4)
    );
  conta200_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(5),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(5)
    );
  conta200_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(6),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(6)
    );
  conta200_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(7),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(7)
    );
  conta200_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(8),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(8)
    );
  conta200_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(9),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(9)
    );
  conta200_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(10),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(10)
    );
  conta200_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(11),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(11)
    );
  conta200_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(12),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(12)
    );
  conta200_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(13),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(13)
    );
  conta200_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(14),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(14)
    );
  conta200_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => Result(15),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(15)
    );
  Mcompar_clock200hz_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_clock200hz_cmp_lt0000_cy_0_rt_56,
      O => Mcompar_clock200hz_cmp_lt0000_cy(0)
    );
  Mcompar_clock200hz_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => conta200(3),
      I1 => conta200(4),
      O => Mcompar_clock200hz_cmp_lt0000_lut_1_Q_65
    );
  Mcompar_clock200hz_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_clock200hz_cmp_lt0000_lut_1_Q_65,
      O => Mcompar_clock200hz_cmp_lt0000_cy(1)
    );
  Mcompar_clock200hz_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(1),
      DI => N0,
      S => Mcompar_clock200hz_cmp_lt0000_cy_2_rt_59,
      O => Mcompar_clock200hz_cmp_lt0000_cy(2)
    );
  Mcompar_clock200hz_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => conta200(6),
      I1 => conta200(7),
      I2 => conta200(8),
      I3 => conta200(9),
      O => Mcompar_clock200hz_cmp_lt0000_lut_3_Q_66
    );
  Mcompar_clock200hz_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_clock200hz_cmp_lt0000_lut_3_Q_66,
      O => Mcompar_clock200hz_cmp_lt0000_cy(3)
    );
  Mcompar_clock200hz_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(3),
      DI => N0,
      S => Mcompar_clock200hz_cmp_lt0000_cy_4_rt_62,
      O => Mcompar_clock200hz_cmp_lt0000_cy(4)
    );
  Mcompar_clock200hz_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(4),
      DI => N1,
      S => Mcompar_clock200hz_cmp_lt0000_lut_5_Q,
      O => Mcompar_clock200hz_cmp_lt0000_cy(5)
    );
  Mcompar_clock200hz_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => conta200(12),
      I1 => conta200(13),
      I2 => conta200(14),
      I3 => conta200(15),
      O => Mcompar_clock200hz_cmp_lt0000_lut_6_Q_68
    );
  Mcompar_clock200hz_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(5),
      DI => N0,
      S => Mcompar_clock200hz_cmp_lt0000_lut_6_Q_68,
      O => Mcompar_clock200hz_cmp_lt0000_cy(6)
    );
  Mcount_conta200_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_conta200_lut(0),
      O => Mcount_conta200_cy(0)
    );
  Mcount_conta200_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_conta200_lut(0),
      O => Result_0_1
    );
  Mcount_conta200_cy_1_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(0),
      DI => N0,
      S => Mcount_conta200_cy_1_rt_81,
      O => Mcount_conta200_cy(1)
    );
  Mcount_conta200_xor_1_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(0),
      LI => Mcount_conta200_cy_1_rt_81,
      O => Result_1_1
    );
  Mcount_conta200_cy_2_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(1),
      DI => N0,
      S => Mcount_conta200_cy_2_rt_83,
      O => Mcount_conta200_cy(2)
    );
  Mcount_conta200_xor_2_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(1),
      LI => Mcount_conta200_cy_2_rt_83,
      O => Result_2_1
    );
  Mcount_conta200_cy_3_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(2),
      DI => N0,
      S => Mcount_conta200_cy_3_rt_85,
      O => Mcount_conta200_cy(3)
    );
  Mcount_conta200_xor_3_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(2),
      LI => Mcount_conta200_cy_3_rt_85,
      O => Result_3_1
    );
  Mcount_conta200_cy_4_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(3),
      DI => N0,
      S => Mcount_conta200_cy_4_rt_87,
      O => Mcount_conta200_cy(4)
    );
  Mcount_conta200_xor_4_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(3),
      LI => Mcount_conta200_cy_4_rt_87,
      O => Result(4)
    );
  Mcount_conta200_cy_5_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(4),
      DI => N0,
      S => Mcount_conta200_cy_5_rt_89,
      O => Mcount_conta200_cy(5)
    );
  Mcount_conta200_xor_5_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(4),
      LI => Mcount_conta200_cy_5_rt_89,
      O => Result(5)
    );
  Mcount_conta200_cy_6_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(5),
      DI => N0,
      S => Mcount_conta200_cy_6_rt_91,
      O => Mcount_conta200_cy(6)
    );
  Mcount_conta200_xor_6_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(5),
      LI => Mcount_conta200_cy_6_rt_91,
      O => Result(6)
    );
  Mcount_conta200_cy_7_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(6),
      DI => N0,
      S => Mcount_conta200_cy_7_rt_93,
      O => Mcount_conta200_cy(7)
    );
  Mcount_conta200_xor_7_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(6),
      LI => Mcount_conta200_cy_7_rt_93,
      O => Result(7)
    );
  Mcount_conta200_cy_8_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(7),
      DI => N0,
      S => Mcount_conta200_cy_8_rt_95,
      O => Mcount_conta200_cy(8)
    );
  Mcount_conta200_xor_8_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(7),
      LI => Mcount_conta200_cy_8_rt_95,
      O => Result(8)
    );
  Mcount_conta200_cy_9_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(8),
      DI => N0,
      S => Mcount_conta200_cy_9_rt_97,
      O => Mcount_conta200_cy(9)
    );
  Mcount_conta200_xor_9_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(8),
      LI => Mcount_conta200_cy_9_rt_97,
      O => Result(9)
    );
  Mcount_conta200_cy_10_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(9),
      DI => N0,
      S => Mcount_conta200_cy_10_rt_71,
      O => Mcount_conta200_cy(10)
    );
  Mcount_conta200_xor_10_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(9),
      LI => Mcount_conta200_cy_10_rt_71,
      O => Result(10)
    );
  Mcount_conta200_cy_11_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(10),
      DI => N0,
      S => Mcount_conta200_cy_11_rt_73,
      O => Mcount_conta200_cy(11)
    );
  Mcount_conta200_xor_11_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(10),
      LI => Mcount_conta200_cy_11_rt_73,
      O => Result(11)
    );
  Mcount_conta200_cy_12_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(11),
      DI => N0,
      S => Mcount_conta200_cy_12_rt_75,
      O => Mcount_conta200_cy(12)
    );
  Mcount_conta200_xor_12_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(11),
      LI => Mcount_conta200_cy_12_rt_75,
      O => Result(12)
    );
  Mcount_conta200_cy_13_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(12),
      DI => N0,
      S => Mcount_conta200_cy_13_rt_77,
      O => Mcount_conta200_cy(13)
    );
  Mcount_conta200_xor_13_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(12),
      LI => Mcount_conta200_cy_13_rt_77,
      O => Result(13)
    );
  Mcount_conta200_cy_14_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(13),
      DI => N0,
      S => Mcount_conta200_cy_14_rt_79,
      O => Mcount_conta200_cy(14)
    );
  Mcount_conta200_xor_14_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(13),
      LI => Mcount_conta200_cy_14_rt_79,
      O => Result(14)
    );
  Mcount_conta200_xor_15_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(14),
      LI => Mcount_conta200_xor_15_rt_99,
      O => Result(15)
    );
  ctrl_FSM_FFd4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => clock200hz_478,
      D => ctrl_FSM_FFd1_498,
      Q => ctrl_FSM_FFd4_501
    );
  ctrl_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock200hz_478,
      D => ctrl_FSM_FFd4_501,
      Q => ctrl_FSM_FFd3_500
    );
  ctrl_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock200hz_478,
      D => ctrl_FSM_FFd3_500,
      Q => ctrl_FSM_FFd2_499
    );
  ctrl_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock200hz_478,
      D => ctrl_FSM_FFd2_499,
      Q => ctrl_FSM_FFd1_498
    );
  Reg_RI_output_signal_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRI_405,
      CLR => ResetMain_IBUF1,
      D => Reg_RDM_output_signal(7),
      Q => Reg_RI_output_signal(7)
    );
  Reg_RI_output_signal_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRI_405,
      CLR => ResetMain_IBUF1,
      D => Reg_RDM_output_signal(6),
      Q => Reg_RI_output_signal(6)
    );
  Reg_RI_output_signal_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRI_405,
      CLR => ResetMain_IBUF1,
      D => Reg_RDM_output_signal(5),
      Q => Reg_RI_output_signal(5)
    );
  Reg_RI_output_signal_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRI_405,
      CLR => ResetMain_IBUF1,
      D => Reg_RDM_output_signal(4),
      Q => Reg_RI_output_signal(4)
    );
  Reg_REM_output_signal_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaREM_400,
      CLR => ResetMain_IBUF1,
      D => Mux1_output(7),
      Q => Reg_REM_output_signal(7)
    );
  Reg_REM_output_signal_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaREM_400,
      CLR => ResetMain_IBUF1,
      D => Mux1_output(6),
      Q => Reg_REM_output_signal(6)
    );
  Reg_REM_output_signal_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaREM_400,
      CLR => ResetMain_IBUF1,
      D => Mux1_output(5),
      Q => Reg_REM_output_signal(5)
    );
  Reg_REM_output_signal_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaREM_400,
      CLR => ResetMain_IBUF1,
      D => Mux1_output(4),
      Q => Reg_REM_output_signal(4)
    );
  Reg_REM_output_signal_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaREM_400,
      CLR => ResetMain_IBUF1,
      D => Mux1_output(3),
      Q => Reg_REM_output_signal(3)
    );
  Reg_REM_output_signal_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaREM_400,
      CLR => ResetMain_IBUF1,
      D => Mux1_output(2),
      Q => Reg_REM_output_signal(2)
    );
  Reg_REM_output_signal_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaREM_400,
      CLR => ResetMain_IBUF1,
      D => Mux1_output(1),
      Q => Reg_REM_output_signal(1)
    );
  Reg_REM_output_signal_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaREM_400,
      CLR => ResetMain_IBUF1,
      D => Mux1_output(0),
      Q => Reg_REM_output_signal(0)
    );
  Reg_RDM_output_signal_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRDM_395,
      CLR => ResetMain_IBUF1,
      D => Mux2_output(7),
      Q => Reg_RDM_output_signal(7)
    );
  Reg_RDM_output_signal_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRDM_395,
      CLR => ResetMain_IBUF1,
      D => Mux2_output(6),
      Q => Reg_RDM_output_signal(6)
    );
  Reg_RDM_output_signal_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRDM_395,
      CLR => ResetMain_IBUF1,
      D => Mux2_output(5),
      Q => Reg_RDM_output_signal(5)
    );
  Reg_RDM_output_signal_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRDM_395,
      CLR => ResetMain_IBUF1,
      D => Mux2_output(4),
      Q => Reg_RDM_output_signal(4)
    );
  Reg_RDM_output_signal_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRDM_395,
      CLR => ResetMain_IBUF1,
      D => Mux2_output(3),
      Q => Reg_RDM_output_signal(3)
    );
  Reg_RDM_output_signal_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRDM_395,
      CLR => ResetMain_IBUF1,
      D => Mux2_output(2),
      Q => Reg_RDM_output_signal(2)
    );
  Reg_RDM_output_signal_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRDM_395,
      CLR => ResetMain_IBUF1,
      D => Mux2_output(1),
      Q => Reg_RDM_output_signal(1)
    );
  Reg_RDM_output_signal_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaRDM_395,
      CLR => ResetMain_IBUF1,
      D => Mux2_output(0),
      Q => Reg_RDM_output_signal(0)
    );
  Reg_AC_output_signal_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaAC_389,
      CLR => ResetMain_IBUF1,
      D => ULA_NZ_output(1),
      Q => Reg_AC_output_signal(7)
    );
  Reg_AC_output_signal_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaAC_389,
      CLR => ResetMain_IBUF1,
      D => ULA_output(6),
      Q => Reg_AC_output_signal(6)
    );
  Reg_AC_output_signal_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaAC_389,
      CLR => ResetMain_IBUF1,
      D => ULA_output(5),
      Q => Reg_AC_output_signal(5)
    );
  Reg_AC_output_signal_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaAC_389,
      CLR => ResetMain_IBUF1,
      D => ULA_output(4),
      Q => Reg_AC_output_signal(4)
    );
  Reg_AC_output_signal_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaAC_389,
      CLR => ResetMain_IBUF1,
      D => ULA_output(3),
      Q => Reg_AC_output_signal(3)
    );
  Reg_AC_output_signal_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaAC_389,
      CLR => ResetMain_IBUF1,
      D => ULA_output(2),
      Q => Reg_AC_output_signal(2)
    );
  Reg_AC_output_signal_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaAC_389,
      CLR => ResetMain_IBUF1,
      D => ULA_output(1),
      Q => Reg_AC_output_signal(1)
    );
  Reg_AC_output_signal_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CE => UnidadeControle_cargaAC_389,
      CLR => ResetMain_IBUF1,
      D => ULA_output(0),
      Q => Reg_AC_output_signal(0)
    );
  UAL_Mmux_output_signal_4 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Reg_AC_output_signal(6),
      I1 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_4_328
    );
  UAL_Mmux_output_signal_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(7),
      I2 => UAL_output_signal_addsub0000(7),
      O => UAL_Mmux_output_signal_5_344
    );
  UAL_Mmux_output_signal_3_f5 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_5_344,
      I1 => UAL_Mmux_output_signal_4_328,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f5_320
    );
  UAL_Mmux_output_signal_4_f5 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_6_360,
      I1 => UAL_Mmux_output_signal_51_345,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_4_f5_336
    );
  UAL_Mmux_output_signal_2_f6 : MUXF6
    port map (
      I0 => UAL_Mmux_output_signal_4_f5_336,
      I1 => UAL_Mmux_output_signal_3_f5_320,
      S => UnidadeControle_selULA(2),
      O => ULA_NZ_output(1)
    );
  UAL_Mmux_output_signal_41 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Reg_AC_output_signal(1),
      I1 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_41_329
    );
  UAL_Mmux_output_signal_52 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(0),
      I2 => UAL_output_signal_addsub0000(0),
      O => UAL_Mmux_output_signal_52_352
    );
  UAL_Mmux_output_signal_3_f5_0 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_52_352,
      I1 => UAL_Mmux_output_signal_41_329,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f51
    );
  UAL_Mmux_output_signal_4_f5_0 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_61_361,
      I1 => UAL_Mmux_output_signal_53_353,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_4_f51
    );
  UAL_Mmux_output_signal_2_f6_0 : MUXF6
    port map (
      I0 => UAL_Mmux_output_signal_4_f51,
      I1 => UAL_Mmux_output_signal_3_f51,
      S => UnidadeControle_selULA(2),
      O => UAL_output_signal_0_1
    );
  UAL_Mmux_output_signal_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(2),
      I2 => Reg_AC_output_signal(0),
      O => UAL_Mmux_output_signal_42_330
    );
  UAL_Mmux_output_signal_54 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(1),
      I2 => UAL_output_signal_addsub0000(1),
      O => UAL_Mmux_output_signal_54_354
    );
  UAL_Mmux_output_signal_3_f5_1 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_54_354,
      I1 => UAL_Mmux_output_signal_42_330,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f52
    );
  UAL_Mmux_output_signal_4_f5_1 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_62_362,
      I1 => UAL_Mmux_output_signal_55_355,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_4_f52
    );
  UAL_Mmux_output_signal_2_f6_1 : MUXF6
    port map (
      I0 => UAL_Mmux_output_signal_4_f52,
      I1 => UAL_Mmux_output_signal_3_f52,
      S => UnidadeControle_selULA(2),
      O => ULA_output(1)
    );
  UAL_Mmux_output_signal_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(3),
      I2 => Reg_AC_output_signal(1),
      O => UAL_Mmux_output_signal_43_331
    );
  UAL_Mmux_output_signal_56 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(2),
      I2 => UAL_output_signal_addsub0000(2),
      O => UAL_Mmux_output_signal_56_356
    );
  UAL_Mmux_output_signal_3_f5_2 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_56_356,
      I1 => UAL_Mmux_output_signal_43_331,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f53
    );
  UAL_Mmux_output_signal_4_f5_2 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_63_363,
      I1 => UAL_Mmux_output_signal_57_357,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_4_f53
    );
  UAL_Mmux_output_signal_2_f6_2 : MUXF6
    port map (
      I0 => UAL_Mmux_output_signal_4_f53,
      I1 => UAL_Mmux_output_signal_3_f53,
      S => UnidadeControle_selULA(2),
      O => ULA_output(2)
    );
  UAL_Mmux_output_signal_44 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(4),
      I2 => Reg_AC_output_signal(2),
      O => UAL_Mmux_output_signal_44_332
    );
  UAL_Mmux_output_signal_58 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(3),
      I2 => UAL_output_signal_addsub0000(3),
      O => UAL_Mmux_output_signal_58_358
    );
  UAL_Mmux_output_signal_3_f5_3 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_58_358,
      I1 => UAL_Mmux_output_signal_44_332,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f54
    );
  UAL_Mmux_output_signal_4_f5_3 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_64_364,
      I1 => UAL_Mmux_output_signal_59_359,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_4_f54
    );
  UAL_Mmux_output_signal_2_f6_3 : MUXF6
    port map (
      I0 => UAL_Mmux_output_signal_4_f54,
      I1 => UAL_Mmux_output_signal_3_f54,
      S => UnidadeControle_selULA(2),
      O => ULA_output(3)
    );
  UAL_Mmux_output_signal_45 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_AC_output_signal(3),
      O => UAL_Mmux_output_signal_45_333
    );
  UAL_Mmux_output_signal_510 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(4),
      I2 => UAL_output_signal_addsub0000(4),
      O => UAL_Mmux_output_signal_510_346
    );
  UAL_Mmux_output_signal_3_f5_4 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_510_346,
      I1 => UAL_Mmux_output_signal_45_333,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f55
    );
  UAL_Mmux_output_signal_4_f5_4 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_65_365,
      I1 => UAL_Mmux_output_signal_511_347,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_4_f55
    );
  UAL_Mmux_output_signal_2_f6_4 : MUXF6
    port map (
      I0 => UAL_Mmux_output_signal_4_f55,
      I1 => UAL_Mmux_output_signal_3_f55,
      S => UnidadeControle_selULA(2),
      O => ULA_output(4)
    );
  UAL_Mmux_output_signal_46 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(6),
      I2 => Reg_AC_output_signal(4),
      O => UAL_Mmux_output_signal_46_334
    );
  UAL_Mmux_output_signal_512 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(5),
      I2 => UAL_output_signal_addsub0000(5),
      O => UAL_Mmux_output_signal_512_348
    );
  UAL_Mmux_output_signal_3_f5_5 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_512_348,
      I1 => UAL_Mmux_output_signal_46_334,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f56
    );
  UAL_Mmux_output_signal_4_f5_5 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_66_366,
      I1 => UAL_Mmux_output_signal_513_349,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_4_f56
    );
  UAL_Mmux_output_signal_2_f6_5 : MUXF6
    port map (
      I0 => UAL_Mmux_output_signal_4_f56,
      I1 => UAL_Mmux_output_signal_3_f56,
      S => UnidadeControle_selULA(2),
      O => ULA_output(5)
    );
  UAL_Mmux_output_signal_47 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(7),
      I2 => Reg_AC_output_signal(5),
      O => UAL_Mmux_output_signal_47_335
    );
  UAL_Mmux_output_signal_514 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(6),
      I2 => UAL_output_signal_addsub0000(6),
      O => UAL_Mmux_output_signal_514_350
    );
  UAL_Mmux_output_signal_3_f5_6 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_514_350,
      I1 => UAL_Mmux_output_signal_47_335,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f57
    );
  UAL_Mmux_output_signal_4_f5_6 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_67_367,
      I1 => UAL_Mmux_output_signal_515_351,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_4_f57
    );
  UAL_Mmux_output_signal_2_f6_6 : MUXF6
    port map (
      I0 => UAL_Mmux_output_signal_4_f57,
      I1 => UAL_Mmux_output_signal_3_f57,
      S => UnidadeControle_selULA(2),
      O => ULA_output(6)
    );
  UAL_Maddsub_output_signal_addsub0000_xor_7_Q : XORCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(6),
      LI => UAL_Maddsub_output_signal_addsub0000_lut(7),
      O => UAL_output_signal_addsub0000(7)
    );
  UAL_Maddsub_output_signal_addsub0000_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => Reg_AC_output_signal(7),
      I1 => Reg_RDM_output_signal(7),
      I2 => UAL_output_signal_mux0000,
      O => UAL_Maddsub_output_signal_addsub0000_lut(7)
    );
  UAL_Maddsub_output_signal_addsub0000_xor_6_Q : XORCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(5),
      LI => UAL_Maddsub_output_signal_addsub0000_lut(6),
      O => UAL_output_signal_addsub0000(6)
    );
  UAL_Maddsub_output_signal_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(5),
      DI => Reg_AC_output_signal(6),
      S => UAL_Maddsub_output_signal_addsub0000_lut(6),
      O => UAL_Maddsub_output_signal_addsub0000_cy(6)
    );
  UAL_Maddsub_output_signal_addsub0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => UAL_output_signal_mux0000,
      I1 => Reg_RDM_output_signal(6),
      I2 => Reg_AC_output_signal(6),
      O => UAL_Maddsub_output_signal_addsub0000_lut(6)
    );
  UAL_Maddsub_output_signal_addsub0000_xor_5_Q : XORCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(4),
      LI => UAL_Maddsub_output_signal_addsub0000_lut(5),
      O => UAL_output_signal_addsub0000(5)
    );
  UAL_Maddsub_output_signal_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(4),
      DI => Reg_AC_output_signal(5),
      S => UAL_Maddsub_output_signal_addsub0000_lut(5),
      O => UAL_Maddsub_output_signal_addsub0000_cy(5)
    );
  UAL_Maddsub_output_signal_addsub0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => UAL_output_signal_mux0000,
      I1 => Reg_RDM_output_signal(5),
      I2 => Reg_AC_output_signal(5),
      O => UAL_Maddsub_output_signal_addsub0000_lut(5)
    );
  UAL_Maddsub_output_signal_addsub0000_xor_4_Q : XORCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(3),
      LI => UAL_Maddsub_output_signal_addsub0000_lut(4),
      O => UAL_output_signal_addsub0000(4)
    );
  UAL_Maddsub_output_signal_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(3),
      DI => Reg_AC_output_signal(4),
      S => UAL_Maddsub_output_signal_addsub0000_lut(4),
      O => UAL_Maddsub_output_signal_addsub0000_cy(4)
    );
  UAL_Maddsub_output_signal_addsub0000_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => UAL_output_signal_mux0000,
      I1 => Reg_RDM_output_signal(4),
      I2 => Reg_AC_output_signal(4),
      O => UAL_Maddsub_output_signal_addsub0000_lut(4)
    );
  UAL_Maddsub_output_signal_addsub0000_xor_3_Q : XORCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(2),
      LI => UAL_Maddsub_output_signal_addsub0000_lut(3),
      O => UAL_output_signal_addsub0000(3)
    );
  UAL_Maddsub_output_signal_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(2),
      DI => Reg_AC_output_signal(3),
      S => UAL_Maddsub_output_signal_addsub0000_lut(3),
      O => UAL_Maddsub_output_signal_addsub0000_cy(3)
    );
  UAL_Maddsub_output_signal_addsub0000_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => UAL_output_signal_mux0000,
      I1 => Reg_RDM_output_signal(3),
      I2 => Reg_AC_output_signal(3),
      O => UAL_Maddsub_output_signal_addsub0000_lut(3)
    );
  UAL_Maddsub_output_signal_addsub0000_xor_2_Q : XORCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(1),
      LI => UAL_Maddsub_output_signal_addsub0000_lut(2),
      O => UAL_output_signal_addsub0000(2)
    );
  UAL_Maddsub_output_signal_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(1),
      DI => Reg_AC_output_signal(2),
      S => UAL_Maddsub_output_signal_addsub0000_lut(2),
      O => UAL_Maddsub_output_signal_addsub0000_cy(2)
    );
  UAL_Maddsub_output_signal_addsub0000_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => UAL_output_signal_mux0000,
      I1 => Reg_RDM_output_signal(2),
      I2 => Reg_AC_output_signal(2),
      O => UAL_Maddsub_output_signal_addsub0000_lut(2)
    );
  UAL_Maddsub_output_signal_addsub0000_xor_1_Q : XORCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(0),
      LI => UAL_Maddsub_output_signal_addsub0000_lut(1),
      O => UAL_output_signal_addsub0000(1)
    );
  UAL_Maddsub_output_signal_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => UAL_Maddsub_output_signal_addsub0000_cy(0),
      DI => Reg_AC_output_signal(1),
      S => UAL_Maddsub_output_signal_addsub0000_lut(1),
      O => UAL_Maddsub_output_signal_addsub0000_cy(1)
    );
  UAL_Maddsub_output_signal_addsub0000_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => UAL_output_signal_mux0000,
      I1 => Reg_RDM_output_signal(1),
      I2 => Reg_AC_output_signal(1),
      O => UAL_Maddsub_output_signal_addsub0000_lut(1)
    );
  UAL_Maddsub_output_signal_addsub0000_xor_0_Q : XORCY
    port map (
      CI => UAL_output_signal_mux0000,
      LI => UAL_Maddsub_output_signal_addsub0000_lut(0),
      O => UAL_output_signal_addsub0000(0)
    );
  UAL_Maddsub_output_signal_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => UAL_output_signal_mux0000,
      DI => Reg_AC_output_signal(0),
      S => UAL_Maddsub_output_signal_addsub0000_lut(0),
      O => UAL_Maddsub_output_signal_addsub0000_cy(0)
    );
  UAL_Maddsub_output_signal_addsub0000_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => UAL_output_signal_mux0000,
      I1 => Reg_RDM_output_signal(0),
      I2 => Reg_AC_output_signal(0),
      O => UAL_Maddsub_output_signal_addsub0000_lut(0)
    );
  UnidadeControle_current_st_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_current_st(1),
      Q => UnidadeControle_current_st(2)
    );
  UnidadeControle_current_st_0 : FDC
    generic map(
      INIT => '1'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_next_st_0_Q,
      Q => UnidadeControle_current_st(0)
    );
  UnidadeControle_current_st_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_next_st_1_Q,
      Q => UnidadeControle_current_st(1)
    );
  UnidadeControle_current_st_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_current_st(4),
      Q => UnidadeControle_current_st(5)
    );
  UnidadeControle_current_st_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_current_st(2),
      Q => UnidadeControle_current_st(3)
    );
  UnidadeControle_current_st_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_current_st(3),
      Q => UnidadeControle_current_st(4)
    );
  UnidadeControle_current_st_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_current_st(7),
      Q => UnidadeControle_current_st(8)
    );
  UnidadeControle_current_st_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_next_st_6_Q,
      Q => UnidadeControle_current_st(6)
    );
  UnidadeControle_current_st_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_current_st(6),
      Q => UnidadeControle_current_st(7)
    );
  UnidadeControle_current_st_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_next_st_9_Q,
      Q => UnidadeControle_current_st(9)
    );
  UnidadeControle_current_st_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_current_st(9),
      Q => UnidadeControle_current_st(10)
    );
  UnidadeControle_current_st_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_next_st_13_Q,
      Q => UnidadeControle_current_st(13)
    );
  UnidadeControle_current_st_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_next_st_11_Q,
      Q => UnidadeControle_current_st(11)
    );
  UnidadeControle_current_st_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_current_st(11),
      Q => UnidadeControle_current_st(12)
    );
  UnidadeControle_current_st_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_current_st(13),
      Q => UnidadeControle_current_st(14)
    );
  UnidadeControle_current_st_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_next_st_15_Q,
      Q => UnidadeControle_current_st(15)
    );
  UnidadeControle_current_st_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_next_st_18_Q,
      Q => UnidadeControle_current_st(18)
    );
  UnidadeControle_current_st_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_next_st_16_Q,
      Q => UnidadeControle_current_st(16)
    );
  UnidadeControle_current_st_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      CLR => ResetMain_IBUF1,
      D => UnidadeControle_next_st_17_Q,
      Q => UnidadeControle_current_st(17)
    );
  UnidadeControle_current_st_19 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_477,
      D => N0,
      PRE => ResetMain_IBUF1,
      Q => UnidadeControle_current_st(19)
    );
  UnidadeControle_selULA_2 : LD
    port map (
      D => UnidadeControle_selULA_mux0007(0),
      G => UnidadeControle_current_st(11),
      Q => UnidadeControle_selULA(2)
    );
  UnidadeControle_selULA_1 : LD
    port map (
      D => UnidadeControle_selULA_mux0007(1),
      G => UnidadeControle_current_st(11),
      Q => UnidadeControle_selULA(1)
    );
  UnidadeControle_selULA_0 : LD
    port map (
      D => UnidadeControle_selULA_mux0007(2),
      G => UnidadeControle_current_st(11),
      Q => UnidadeControle_selULA(0)
    );
  UnidadeControle_prox_passo_feito : LD
    port map (
      D => UnidadeControle_prox_passo_feito_mux0001,
      G => UnidadeControle_current_st(0),
      Q => UnidadeControle_prox_passo_feito_452
    );
  UnidadeControle_cargaPC : LD
    port map (
      D => UnidadeControle_current_st(15),
      G => UnidadeControle_cargaPC_or0000,
      Q => UnidadeControle_cargaPC_393
    );
  UnidadeControle_cargaNZ : LD
    port map (
      D => UnidadeControle_current_st(12),
      G => UnidadeControle_cargaNZ_or0000,
      Q => UnidadeControle_cargaNZ_391
    );
  UnidadeControle_cargaRI : LD
    port map (
      D => UnidadeControle_current_st(4),
      G => UnidadeControle_cargaRI_or0000_406,
      Q => UnidadeControle_cargaRI_405
    );
  UnidadeControle_cargaRDM : LD
    port map (
      D => UnidadeControle_cargaRDM_mux0000,
      G => UnidadeControle_cargaRDM_or0000,
      Q => UnidadeControle_cargaRDM_395
    );
  UnidadeControle_cargaREM : LD
    port map (
      D => UnidadeControle_cargaREM_mux0000,
      G => UnidadeControle_cargaREM_or0000,
      Q => UnidadeControle_cargaREM_400
    );
  UnidadeControle_incrementaPC : LD
    port map (
      D => UnidadeControle_incrementaPC_mux0000,
      G => UnidadeControle_incrementaPC_or0000,
      Q => UnidadeControle_incrementaPC_427
    );
  UnidadeControle_selRDM : LD
    port map (
      D => UnidadeControle_current_st(13),
      G => UnidadeControle_selRDM_or0000,
      Q => UnidadeControle_selRDM_456
    );
  UnidadeControle_selREM : LD
    port map (
      D => UnidadeControle_current_st(9),
      G => UnidadeControle_selREM_or0000,
      Q => UnidadeControle_selREM_458
    );
  UnidadeControle_writeMEM_0 : LD
    port map (
      D => UnidadeControle_current_st(14),
      G => UnidadeControle_writeMEM_0_or0000,
      Q => UnidadeControle_writeMEM(0)
    );
  UnidadeControle_cargaAC : LD
    port map (
      D => UnidadeControle_current_st(12),
      G => UnidadeControle_cargaAC_or0000,
      Q => UnidadeControle_cargaAC_389
    );
  UnidadeControle_stop : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => UnidadeControle_current_st(17),
      G => UnidadeControle_stop_or0000,
      Q => UnidadeControle_stop_469
    );
  UnidadeControle_prox_passo_reset : FDC
    port map (
      C => prox_passo_BUFGP_607,
      CLR => UnidadeControle_prox_passo_reset_and0000,
      D => N1,
      Q => UnidadeControle_prox_passo_reset_454
    );
  display_mux0017_5_131 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => BRAM_b_output(5),
      I1 => BRAM_b_output(7),
      O => N28
    );
  display_mux0017_5_111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => BRAM_b_low_input(1),
      I1 => BRAM_b_low_input(3),
      O => N20
    );
  UnidadeControle_stop_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => UnidadeControle_current_st(17),
      I1 => UnidadeControle_current_st(19),
      O => UnidadeControle_stop_or0000
    );
  UnidadeControle_prox_passo_reset_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => UnidadeControle_prox_passo_reset_454,
      I1 => UnidadeControle_prox_passo_feito_452,
      O => UnidadeControle_prox_passo_reset_and0000
    );
  Reg_PC_output_signal_not00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => UnidadeControle_incrementaPC_427,
      I1 => UnidadeControle_cargaPC_393,
      O => Reg_PC_output_signal_not0001
    );
  Mrom_display_mux00161131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Reg_PC_output_signal(6),
      I1 => Reg_PC_output_signal(4),
      O => N124
    );
  Mrom_display_mux00151131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BRAM_b_high_input(2),
      I1 => BRAM_b_high_input(0),
      O => N1211
    );
  Madd_BRAM_b_data_in_low_add0000_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BRAM_b_output(1),
      I1 => BRAM_b_output(0),
      O => BRAM_b_data_in_low_add0000(1)
    );
  Madd_BRAM_b_data_in_high_add0000_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BRAM_b_output(5),
      I1 => BRAM_b_output(4),
      O => BRAM_b_data_in_high_add0000(1)
    );
  display_mux0017_4_2611 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Reg_PC_output_signal(3),
      I1 => Reg_PC_output_signal(1),
      I2 => Reg_PC_output_signal(2),
      O => N117
    );
  display_mux0017_4_2511 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Reg_AC_output_signal(7),
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_AC_output_signal(6),
      O => N116
    );
  display_mux0017_4_2411 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Reg_AC_output_signal(3),
      I1 => Reg_AC_output_signal(1),
      I2 => Reg_AC_output_signal(2),
      O => N114
    );
  display_mux0017_4_1611 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => BRAM_b_low_input(3),
      I1 => BRAM_b_low_input(1),
      I2 => BRAM_b_low_input(2),
      O => N1121
    );
  display_mux0017_4_1511 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => BRAM_b_output(7),
      I1 => BRAM_b_output(5),
      I2 => BRAM_b_output(6),
      O => N115
    );
  display_mux0017_0_2311 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => Reg_PC_output_signal(1),
      I1 => Reg_PC_output_signal(3),
      I2 => Reg_PC_output_signal(2),
      O => N102
    );
  display_mux0017_0_2211 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => Reg_AC_output_signal(5),
      I1 => Reg_AC_output_signal(7),
      I2 => Reg_AC_output_signal(6),
      O => N1011
    );
  display_mux0017_0_1311 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => BRAM_b_low_input(1),
      I1 => BRAM_b_low_input(3),
      I2 => BRAM_b_low_input(2),
      O => N100
    );
  display_mux0017_0_1211 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => BRAM_b_output(5),
      I1 => BRAM_b_output(7),
      I2 => BRAM_b_output(6),
      O => N103
    );
  UnidadeControle_writeMEM_0_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_current_st(14),
      I1 => UnidadeControle_current_st(0),
      I2 => UnidadeControle_current_st(19),
      O => UnidadeControle_writeMEM_0_or0000
    );
  UnidadeControle_selRDM_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_current_st(13),
      I1 => UnidadeControle_current_st(0),
      I2 => UnidadeControle_current_st(14),
      O => UnidadeControle_selRDM_or0000
    );
  UnidadeControle_incrementaPC_mux00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_current_st(8),
      I1 => UnidadeControle_current_st(3),
      I2 => UnidadeControle_current_st(16),
      O => UnidadeControle_incrementaPC_mux0000
    );
  UnidadeControle_cargaREM_mux00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_current_st(6),
      I1 => UnidadeControle_current_st(1),
      I2 => UnidadeControle_current_st(9),
      O => UnidadeControle_cargaREM_mux0000
    );
  UnidadeControle_cargaNZ_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_current_st(12),
      I1 => UnidadeControle_current_st(0),
      I2 => UnidadeControle_current_st(19),
      O => UnidadeControle_cargaNZ_or0000
    );
  UAL_output_signal_mux00002 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_selULA(1),
      I1 => UnidadeControle_selULA(0),
      I2 => UnidadeControle_selULA(2),
      O => UAL_output_signal_mux0000
    );
  Mrom_display_mux0015221 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => BRAM_b_high_input(3),
      I1 => BRAM_b_high_input(1),
      I2 => BRAM_b_high_input(2),
      O => N106
    );
  UnidadeControle_selREM_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(10),
      I1 => UnidadeControle_current_st(9),
      I2 => UnidadeControle_current_st(6),
      I3 => UnidadeControle_current_st(1),
      O => UnidadeControle_selREM_or0000
    );
  UnidadeControle_cargaRDM_mux00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(13),
      I1 => UnidadeControle_current_st(11),
      I2 => UnidadeControle_current_st(8),
      I3 => UnidadeControle_current_st(3),
      O => UnidadeControle_cargaRDM_mux0000
    );
  UnidadeControle_cargaPC_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(19),
      I1 => UnidadeControle_current_st(17),
      I2 => UnidadeControle_current_st(15),
      I3 => UnidadeControle_current_st(0),
      O => UnidadeControle_cargaPC_or0000
    );
  UnidadeControle_cargaAC_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(19),
      I1 => UnidadeControle_current_st(17),
      I2 => UnidadeControle_current_st(12),
      I3 => UnidadeControle_current_st(0),
      O => UnidadeControle_cargaAC_or0000
    );
  DECODE_Mrom_instruction_output71 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => Reg_RI_output_signal(5),
      I1 => Reg_RI_output_signal(4),
      I2 => Reg_RI_output_signal(7),
      I3 => Reg_RI_output_signal(6),
      O => DECODE_Mrom_instruction_output7
    );
  DECODE_Mrom_instruction_output51 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_RI_output_signal(7),
      I1 => Reg_RI_output_signal(6),
      I2 => Reg_RI_output_signal(4),
      I3 => Reg_RI_output_signal(5),
      O => DECODE_Mrom_instruction_output5
    );
  DECODE_Mrom_instruction_output41 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Reg_RI_output_signal(6),
      I1 => Reg_RI_output_signal(7),
      I2 => Reg_RI_output_signal(5),
      I3 => Reg_RI_output_signal(4),
      O => DECODE_Mrom_instruction_output4
    );
  DECODE_Mrom_instruction_output31 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_RI_output_signal(7),
      I1 => Reg_RI_output_signal(4),
      I2 => Reg_RI_output_signal(5),
      I3 => Reg_RI_output_signal(6),
      O => DECODE_Mrom_instruction_output3
    );
  DECODE_Mrom_instruction_output21 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Reg_RI_output_signal(5),
      I1 => Reg_RI_output_signal(7),
      I2 => Reg_RI_output_signal(4),
      I3 => Reg_RI_output_signal(6),
      O => DECODE_Mrom_instruction_output2
    );
  Mrom_display_mux0016141 : LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      I0 => Reg_PC_output_signal(4),
      I1 => Reg_PC_output_signal(6),
      I2 => Reg_PC_output_signal(7),
      I3 => Reg_PC_output_signal(5),
      O => N72
    );
  Mrom_display_mux0015141 : LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      I0 => BRAM_b_high_input(0),
      I1 => BRAM_b_high_input(2),
      I2 => BRAM_b_high_input(3),
      I3 => BRAM_b_high_input(1),
      O => N70
    );
  UnidadeControle_cargaRI_or0000_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_current_st(16),
      I1 => UnidadeControle_current_st(19),
      I2 => UnidadeControle_current_st(17),
      O => N01
    );
  UnidadeControle_cargaRI_or0000 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(0),
      I1 => UnidadeControle_current_st(5),
      I2 => UnidadeControle_current_st(4),
      I3 => N01,
      O => UnidadeControle_cargaRI_or0000_406
    );
  UnidadeControle_cargaREM_or00004 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(19),
      I1 => UnidadeControle_current_st(13),
      I2 => UnidadeControle_current_st(11),
      I3 => UnidadeControle_current_st(10),
      O => UnidadeControle_cargaREM_or00004_404
    );
  UnidadeControle_cargaREM_or000016 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => UnidadeControle_cargaREM_or00004_404,
      I1 => UnidadeControle_cargaREM_or000011_403,
      O => UnidadeControle_cargaREM_or0000
    );
  UnidadeControle_cargaRDM_or00004 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(0),
      I1 => UnidadeControle_current_st(19),
      I2 => UnidadeControle_current_st(15),
      I3 => UnidadeControle_current_st(14),
      O => UnidadeControle_cargaRDM_or00004_399
    );
  UnidadeControle_cargaRDM_or000019 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => UnidadeControle_cargaRDM_or00004_399,
      I1 => UnidadeControle_cargaRDM_or000013_398,
      O => UnidadeControle_cargaRDM_or0000
    );
  UnidadeControle_prox_passo_feito_mux00011 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => passo_a_passo_IBUF_605,
      I1 => UnidadeControle_prox_passo_reset_454,
      O => UnidadeControle_prox_passo_feito_mux0001
    );
  Mcount_BRAM_b_low_input_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BRAM_b_low_input(1),
      I1 => BRAM_b_low_input(0),
      O => Result(1)
    );
  Mcount_BRAM_b_high_input_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BRAM_b_high_input(1),
      I1 => BRAM_b_high_input(0),
      O => Result_1_2
    );
  UnidadeControle_next_st_mux0004_1_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => UnidadeControle_current_st(0),
      I1 => passo_a_passo_IBUF_605,
      I2 => UnidadeControle_prox_passo_reset_454,
      O => UnidadeControle_next_st_1_Q
    );
  Mux1_output_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_458,
      I1 => Reg_PC_output_signal(7),
      I2 => Reg_RDM_output_signal(7),
      O => Mux1_output(7)
    );
  Mux1_output_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_458,
      I1 => Reg_PC_output_signal(6),
      I2 => Reg_RDM_output_signal(6),
      O => Mux1_output(6)
    );
  Mux1_output_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_458,
      I1 => Reg_PC_output_signal(5),
      I2 => Reg_RDM_output_signal(5),
      O => Mux1_output(5)
    );
  Mux1_output_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_458,
      I1 => Reg_PC_output_signal(4),
      I2 => Reg_RDM_output_signal(4),
      O => Mux1_output(4)
    );
  Mux1_output_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_458,
      I1 => Reg_PC_output_signal(3),
      I2 => Reg_RDM_output_signal(3),
      O => Mux1_output(3)
    );
  Mux1_output_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_458,
      I1 => Reg_PC_output_signal(2),
      I2 => Reg_RDM_output_signal(2),
      O => Mux1_output(2)
    );
  Mux1_output_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_458,
      I1 => Reg_PC_output_signal(1),
      I2 => Reg_RDM_output_signal(1),
      O => Mux1_output(1)
    );
  Mux1_output_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_458,
      I1 => Reg_PC_output_signal(0),
      I2 => Reg_RDM_output_signal(0),
      O => Mux1_output(0)
    );
  Mcount_BRAM_b_high_input_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => BRAM_b_high_input(0),
      I1 => BRAM_b_high_input(2),
      I2 => BRAM_b_high_input(1),
      O => Result_2_2
    );
  Mcount_BRAM_b_high_input_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => BRAM_b_high_input(0),
      I1 => BRAM_b_high_input(3),
      I2 => BRAM_b_high_input(1),
      I3 => BRAM_b_high_input(2),
      O => Result_3_2
    );
  UnidadeControle_next_st_mux0004_13_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => UnidadeControle_current_st(10),
      I1 => DECODE_Mrom_instruction_output1,
      O => UnidadeControle_next_st_13_Q
    );
  UnidadeControle_next_st_mux0004_9_1 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => UnidadeControle_current_st(8),
      I1 => DECODE_Mrom_instruction_output10,
      I2 => DECODE_Mrom_instruction_output8,
      I3 => N153,
      O => UnidadeControle_next_st_9_Q
    );
  UnidadeControle_next_st_mux0004_15_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => UnidadeControle_current_st(8),
      I1 => DECODE_Mrom_instruction_output10,
      I2 => DECODE_Mrom_instruction_output8,
      I3 => DECODE_Mrom_instruction_output9,
      O => UnidadeControle_next_st_15_Q
    );
  DECODE_Mrom_instruction_output81 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Reg_RI_output_signal(7),
      I1 => Reg_RI_output_signal(6),
      I2 => Reg_RI_output_signal(4),
      I3 => Reg_RI_output_signal(5),
      O => DECODE_Mrom_instruction_output8
    );
  DECODE_Mrom_instruction_output112 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Reg_RI_output_signal(4),
      I1 => Reg_RI_output_signal(6),
      I2 => Reg_RI_output_signal(7),
      I3 => Reg_RI_output_signal(5),
      O => DECODE_Mrom_instruction_output1
    );
  DECODE_Mrom_instruction_output131 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => Reg_RI_output_signal(4),
      I1 => Reg_RI_output_signal(7),
      I2 => Reg_RI_output_signal(6),
      I3 => Reg_RI_output_signal(5),
      O => DECODE_Mrom_instruction_output13
    );
  UnidadeControle_next_st_mux0004_16_Q : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => DECODE_Mrom_instruction_output,
      I1 => UnidadeControle_current_st(5),
      I2 => N2,
      O => UnidadeControle_next_st_16_Q
    );
  UnidadeControle_next_st_mux0004_0_4 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(12),
      I1 => UnidadeControle_current_st(14),
      I2 => UnidadeControle_current_st(15),
      I3 => UnidadeControle_current_st(16),
      O => UnidadeControle_next_st_mux0004_0_4_445
    );
  UnidadeControle_next_st_mux0004_0_20 : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => UnidadeControle_current_st(18),
      I1 => Start_IBUF_304,
      I2 => UnidadeControle_stop_469,
      I3 => continue_IBUF_497,
      O => UnidadeControle_next_st_mux0004_0_20_443
    );
  UnidadeControle_next_st_mux0004_0_37 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => UnidadeControle_next_st_mux0004_0_4_445,
      I1 => UnidadeControle_next_st_mux0004_0_27_444,
      I2 => UnidadeControle_current_st(5),
      I3 => DECODE_Mrom_instruction_output,
      O => UnidadeControle_next_st_0_Q
    );
  DECODE_Mrom_instruction_output1111 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => Reg_RI_output_signal(4),
      I1 => Reg_RI_output_signal(5),
      I2 => Reg_RI_output_signal(6),
      I3 => Reg_RI_output_signal(7),
      O => DECODE_Mrom_instruction_output11_44
    );
  DECODE_Mrom_instruction_output11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Reg_RI_output_signal(6),
      I1 => Reg_RI_output_signal(7),
      I2 => Reg_RI_output_signal(4),
      I3 => Reg_RI_output_signal(5),
      O => DECODE_Mrom_instruction_output
    );
  UnidadeControle_next_st_mux0004_18_12 : LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      I0 => UnidadeControle_current_st(18),
      I1 => Start_IBUF_304,
      I2 => UnidadeControle_stop_469,
      I3 => continue_IBUF_497,
      O => UnidadeControle_next_st_mux0004_18_12_446
    );
  UnidadeControle_next_st_mux0004_18_50 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => UnidadeControle_current_st(15),
      I1 => UnidadeControle_current_st(16),
      I2 => UnidadeControle_current_st(18),
      I3 => UnidadeControle_current_st(1),
      O => UnidadeControle_next_st_mux0004_18_50_448
    );
  UnidadeControle_next_st_mux0004_18_77 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => UnidadeControle_current_st(2),
      I1 => UnidadeControle_current_st(3),
      I2 => UnidadeControle_current_st(4),
      I3 => UnidadeControle_current_st(5),
      O => UnidadeControle_next_st_mux0004_18_77_449
    );
  UnidadeControle_next_st_mux0004_18_90 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => UnidadeControle_current_st(6),
      I1 => UnidadeControle_current_st(7),
      I2 => UnidadeControle_current_st(8),
      I3 => UnidadeControle_current_st(9),
      O => UnidadeControle_next_st_mux0004_18_90_450
    );
  UnidadeControle_next_st_mux0004_18_91 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => UnidadeControle_next_st_mux0004_18_77_449,
      I1 => UnidadeControle_next_st_mux0004_18_90_450,
      O => UnidadeControle_next_st_mux0004_18_91_451
    );
  UnidadeControle_next_st_mux0004_18_118 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => UnidadeControle_next_st_mux0004_18_12_446,
      I1 => UnidadeControle_next_st_mux0004_18_33_447,
      I2 => UnidadeControle_next_st_mux0004_18_50_448,
      I3 => UnidadeControle_next_st_mux0004_18_91_451,
      O => UnidadeControle_next_st_18_Q
    );
  UnidadeControle_next_st_mux0004_17_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => DECODE_Mrom_instruction_output13,
      I1 => UnidadeControle_N14,
      O => UnidadeControle_next_st_17_Q
    );
  display_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => ctrl_FSM_FFd2_499,
      I2 => ctrl_FSM_FFd4_501,
      O => display_or0000
    );
  DECODE_Mrom_instruction_output61 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_RI_output_signal(4),
      I1 => Reg_RI_output_signal(5),
      I2 => Reg_RI_output_signal(6),
      I3 => Reg_RI_output_signal(7),
      O => DECODE_Mrom_instruction_output6
    );
  DECODE_Mrom_instruction_output121 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_RI_output_signal(4),
      I1 => Reg_RI_output_signal(7),
      I2 => Reg_RI_output_signal(6),
      I3 => Reg_RI_output_signal(5),
      O => DECODE_Mrom_instruction_output12
    );
  UnidadeControle_next_st_mux0004_11_3_SW0 : LUT3
    generic map(
      INIT => X"DC"
    )
    port map (
      I0 => NZ_output_signal(0),
      I1 => DECODE_Mrom_instruction_output,
      I2 => N154,
      O => N6
    );
  UnidadeControle_next_st_mux0004_11_3 : LUT4
    generic map(
      INIT => X"008C"
    )
    port map (
      I0 => NZ_output_signal(1),
      I1 => UnidadeControle_current_st(5),
      I2 => DECODE_Mrom_instruction_output9,
      I3 => N6,
      O => UnidadeControle_N14
    );
  UnidadeControle_next_st_mux0004_11_Q : LUT4
    generic map(
      INIT => X"3B0A"
    )
    port map (
      I0 => UnidadeControle_current_st(10),
      I1 => N8,
      I2 => DECODE_Mrom_instruction_output1,
      I3 => UnidadeControle_N14,
      O => UnidadeControle_next_st_11_Q
    );
  Mux2_output_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_456,
      I1 => BRAM_output(7),
      I2 => Reg_AC_output_signal(7),
      O => Mux2_output(7)
    );
  Mux2_output_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_456,
      I1 => BRAM_output(6),
      I2 => Reg_AC_output_signal(6),
      O => Mux2_output(6)
    );
  Mux2_output_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_456,
      I1 => BRAM_output(5),
      I2 => Reg_AC_output_signal(5),
      O => Mux2_output(5)
    );
  Mux2_output_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_456,
      I1 => BRAM_output(4),
      I2 => Reg_AC_output_signal(4),
      O => Mux2_output(4)
    );
  Mux2_output_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_456,
      I1 => BRAM_output(3),
      I2 => Reg_AC_output_signal(3),
      O => Mux2_output(3)
    );
  Mux2_output_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_456,
      I1 => BRAM_output(2),
      I2 => Reg_AC_output_signal(2),
      O => Mux2_output(2)
    );
  Mux2_output_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_456,
      I1 => BRAM_output(1),
      I2 => Reg_AC_output_signal(1),
      O => Mux2_output(1)
    );
  Mux2_output_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_456,
      I1 => BRAM_output(0),
      I2 => Reg_AC_output_signal(0),
      O => Mux2_output(0)
    );
  UnidadeControle_selULA_mux0007_1_16 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => UnidadeControle_selULA_mux0007_1_7_467,
      I1 => DECODE_Mrom_instruction_output5,
      I2 => DECODE_Mrom_instruction_output6,
      O => UnidadeControle_selULA_mux0007_1_16_466
    );
  display_mux0017_4_307 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => alt_view_IBUF_475,
      I1 => display_mux0017_4_209_568,
      I2 => display_mux0017_4_242_569,
      I3 => display_mux0017_4_285_570,
      O => display_mux0017_4_307_571
    );
  display_mux0017_2_265 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => display_mux0017_2_212_543,
      I2 => ctrl_FSM_FFd2_499,
      I3 => display_mux0017_2_246_544,
      O => display_mux0017_2_265_546
    );
  display_mux0017_0_235 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd4_501,
      I1 => display_mux0017_0_195_521,
      I2 => ctrl_FSM_FFd2_499,
      I3 => display_mux0017_0_223_522,
      O => display_mux0017_0_235_523
    );
  display_mux0017_5_311 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd4_501,
      I1 => display_mux0017_5_249_579,
      I2 => ctrl_FSM_FFd2_499,
      I3 => display_mux0017_5_289_580,
      O => display_mux0017_5_311_581
    );
  display_mux0017_1_37 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => display_mux0017_1_16_532,
      I1 => display_or0000,
      I2 => N106,
      I3 => N156,
      O => display_mux0017_1_37_535
    );
  display_mux0017_1_64 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => N115,
      I2 => BRAM_b_output(4),
      I3 => N103,
      O => display_mux0017_1_64_538
    );
  display_mux0017_1_66 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => display_mux0017_1_46_536,
      I1 => display_mux0017_1_52_537,
      I2 => display_mux0017_1_64_538,
      O => display_mux0017_1_66_539
    );
  display_mux0017_1_145 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ctrl_FSM_FFd4_501,
      I1 => display_cmp_eq0061,
      I2 => N114,
      O => display_mux0017_1_145_530
    );
  display_mux0017_1_151 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => N117,
      I2 => N102,
      I3 => Reg_PC_output_signal(0),
      O => display_mux0017_1_151_531
    );
  display_mux0017_3_21 : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => BRAM_b_high_input(1),
      I1 => BRAM_b_high_input(0),
      I2 => BRAM_b_high_input(2),
      I3 => BRAM_b_high_input(3),
      O => display_mux0017_3_21_554
    );
  display_mux0017_3_71 : LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      I0 => BRAM_b_output(5),
      I1 => BRAM_b_output(7),
      I2 => BRAM_b_output(4),
      I3 => BRAM_b_output(6),
      O => display_mux0017_3_71_563
    );
  display_mux0017_3_106 : LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      I0 => BRAM_b_low_input(1),
      I1 => BRAM_b_low_input(3),
      I2 => BRAM_b_low_input(0),
      I3 => BRAM_b_low_input(2),
      O => display_mux0017_3_106_550
    );
  display_mux0017_3_233 : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => Reg_PC_output_signal(5),
      I1 => Reg_PC_output_signal(4),
      I2 => Reg_PC_output_signal(6),
      I3 => Reg_PC_output_signal(7),
      O => display_mux0017_3_233_556
    );
  ResetMain_IBUF : IBUF
    port map (
      I => ResetMain,
      O => ResetMain_IBUF1
    );
  Start_IBUF : IBUF
    port map (
      I => Start,
      O => Start_IBUF_304
    );
  passo_a_passo_IBUF : IBUF
    port map (
      I => passo_a_passo,
      O => passo_a_passo_IBUF_605
    );
  writeB_IBUF : IBUF
    port map (
      I => writeB,
      O => writeB_IBUF_617
    );
  alt_view_IBUF : IBUF
    port map (
      I => alt_view,
      O => alt_view_IBUF_475
    );
  continue_IBUF : IBUF
    port map (
      I => continue,
      O => continue_IBUF_497
    );
  N_led_OBUF : OBUF
    port map (
      I => NZ_output_signal(0),
      O => N_led
    );
  Z_led_OBUF : OBUF
    port map (
      I => NZ_output_signal(1),
      O => Z_led
    );
  selDisplay_3_OBUF : OBUF
    port map (
      I => selDisplay_3_615,
      O => selDisplay(3)
    );
  selDisplay_2_OBUF : OBUF
    port map (
      I => selDisplay_2_614,
      O => selDisplay(2)
    );
  selDisplay_1_OBUF : OBUF
    port map (
      I => selDisplay_1_613,
      O => selDisplay(1)
    );
  selDisplay_0_OBUF : OBUF
    port map (
      I => selDisplay_0_612,
      O => selDisplay(0)
    );
  display_6_OBUF : OBUF
    port map (
      I => display_6_515,
      O => display(6)
    );
  display_5_OBUF : OBUF
    port map (
      I => display_5_514,
      O => display(5)
    );
  display_4_OBUF : OBUF
    port map (
      I => display_4_513,
      O => display(4)
    );
  display_3_OBUF : OBUF
    port map (
      I => display_3_512,
      O => display(3)
    );
  display_2_OBUF : OBUF
    port map (
      I => display_2_511,
      O => display(2)
    );
  display_1_OBUF : OBUF
    port map (
      I => display_1_510,
      O => display(1)
    );
  display_0_OBUF : OBUF
    port map (
      I => display_0_509,
      O => display(0)
    );
  display_0 : FDS
    port map (
      C => clock200hz_478,
      D => display_mux0017_6_340,
      S => display_mux0017_6_328_594,
      Q => display_0_509
    );
  display_mux0017_6_3401 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => alt_view_IBUF_475,
      I1 => display_mux0017_6_139_589,
      I2 => display_mux0017_6_100_588,
      O => display_mux0017_6_340
    );
  display_2 : FDS
    port map (
      C => clock200hz_478,
      D => display_mux0017_4_319,
      S => display_mux0017_4_307_571,
      Q => display_2_511
    );
  display_mux0017_4_3191 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => alt_view_IBUF_475,
      I1 => display_mux0017_4_87_575,
      I2 => display_mux0017_4_121,
      O => display_mux0017_4_319
    );
  display_3 : FDS
    port map (
      C => clock200hz_478,
      D => display_mux0017_3_399,
      S => display_mux0017_3_387_560,
      Q => display_3_512
    );
  display_mux0017_3_3991 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => alt_view_IBUF_475,
      I1 => display_mux0017_3_177_553,
      I2 => display_mux0017_3_44_562,
      O => display_mux0017_3_399
    );
  display_5 : FDS
    port map (
      C => clock200hz_478,
      D => display_mux0017_1_202,
      S => display_mux0017_1_190_533,
      Q => display_5_514
    );
  display_mux0017_1_2021 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => alt_view_IBUF_475,
      I1 => display_mux0017_1_66_539,
      I2 => display_mux0017_1_37_535,
      O => display_mux0017_1_202
    );
  selDisplay_0 : FDR
    port map (
      C => clock200hz_478,
      D => N1,
      R => ctrl_FSM_FFd4_501,
      Q => selDisplay_0_612
    );
  selDisplay_1 : FDR
    port map (
      C => clock200hz_478,
      D => N1,
      R => ctrl_FSM_FFd3_500,
      Q => selDisplay_1_613
    );
  selDisplay_2 : FDR
    port map (
      C => clock200hz_478,
      D => N1,
      R => ctrl_FSM_FFd2_499,
      Q => selDisplay_2_614
    );
  selDisplay_3 : FDR
    port map (
      C => clock200hz_478,
      D => N1,
      R => ctrl_FSM_FFd1_498,
      Q => selDisplay_3_615
    );
  BRAM_b_low_input_0 : FDR
    port map (
      C => ender_low_BUFGP_603,
      D => N1,
      R => BRAM_b_low_input(0),
      Q => BRAM_b_low_input(0)
    );
  BRAM_b_high_input_0 : FDR
    port map (
      C => ender_high_BUFGP_601,
      D => N1,
      R => BRAM_b_high_input(0),
      Q => BRAM_b_high_input(0)
    );
  Mcompar_clock200hz_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(2),
      O => Mcompar_clock200hz_cmp_lt0000_cy_0_rt_56
    );
  Mcompar_clock200hz_cmp_lt0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(5),
      O => Mcompar_clock200hz_cmp_lt0000_cy_2_rt_59
    );
  Mcompar_clock200hz_cmp_lt0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(10),
      O => Mcompar_clock200hz_cmp_lt0000_cy_4_rt_62
    );
  Mcount_conta200_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(1),
      O => Mcount_conta200_cy_1_rt_81
    );
  Mcount_conta200_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(2),
      O => Mcount_conta200_cy_2_rt_83
    );
  Mcount_conta200_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(3),
      O => Mcount_conta200_cy_3_rt_85
    );
  Mcount_conta200_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(4),
      O => Mcount_conta200_cy_4_rt_87
    );
  Mcount_conta200_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(5),
      O => Mcount_conta200_cy_5_rt_89
    );
  Mcount_conta200_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(6),
      O => Mcount_conta200_cy_6_rt_91
    );
  Mcount_conta200_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(7),
      O => Mcount_conta200_cy_7_rt_93
    );
  Mcount_conta200_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(8),
      O => Mcount_conta200_cy_8_rt_95
    );
  Mcount_conta200_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(9),
      O => Mcount_conta200_cy_9_rt_97
    );
  Mcount_conta200_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(10),
      O => Mcount_conta200_cy_10_rt_71
    );
  Mcount_conta200_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(11),
      O => Mcount_conta200_cy_11_rt_73
    );
  Mcount_conta200_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(12),
      O => Mcount_conta200_cy_12_rt_75
    );
  Mcount_conta200_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(13),
      O => Mcount_conta200_cy_13_rt_77
    );
  Mcount_conta200_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(14),
      O => Mcount_conta200_cy_14_rt_79
    );
  Mcount_conta200_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(15),
      O => Mcount_conta200_xor_15_rt_99
    );
  UAL_nz_0_27_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ULA_output(2),
      I1 => ULA_output(3),
      I2 => ULA_output(4),
      I3 => ULA_output(5),
      O => N10
    );
  UAL_nz_0_27 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => UAL_nz_0_2_368,
      I1 => ULA_NZ_output(1),
      I2 => ULA_output(6),
      I3 => N10,
      O => ULA_NZ_output(0)
    );
  UAL_Mmux_output_signal_6 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(7),
      I2 => Reg_RDM_output_signal(7),
      I3 => UAL_output_signal_addsub0000(7),
      O => UAL_Mmux_output_signal_6_360
    );
  UAL_Mmux_output_signal_67 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(6),
      I2 => Reg_RDM_output_signal(6),
      I3 => UAL_output_signal_addsub0000(6),
      O => UAL_Mmux_output_signal_67_367
    );
  UAL_Mmux_output_signal_66 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_RDM_output_signal(5),
      I3 => UAL_output_signal_addsub0000(5),
      O => UAL_Mmux_output_signal_66_366
    );
  UAL_Mmux_output_signal_65 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(4),
      I2 => Reg_RDM_output_signal(4),
      I3 => UAL_output_signal_addsub0000(4),
      O => UAL_Mmux_output_signal_65_365
    );
  UAL_Mmux_output_signal_64 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(3),
      I2 => Reg_RDM_output_signal(3),
      I3 => UAL_output_signal_addsub0000(3),
      O => UAL_Mmux_output_signal_64_364
    );
  UAL_Mmux_output_signal_63 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(2),
      I2 => Reg_RDM_output_signal(2),
      I3 => UAL_output_signal_addsub0000(2),
      O => UAL_Mmux_output_signal_63_363
    );
  UAL_Mmux_output_signal_62 : LUT4
    generic map(
      INIT => X"D580"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_AC_output_signal(1),
      I2 => Reg_RDM_output_signal(1),
      I3 => UAL_output_signal_addsub0000(1),
      O => UAL_Mmux_output_signal_62_362
    );
  UAL_Mmux_output_signal_61 : LUT4
    generic map(
      INIT => X"2A7F"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(0),
      I2 => Reg_AC_output_signal(0),
      I3 => UAL_output_signal_addsub0000(0),
      O => UAL_Mmux_output_signal_61_361
    );
  UAL_Mmux_output_signal_53 : LUT3
    generic map(
      INIT => X"89"
    )
    port map (
      I0 => Reg_AC_output_signal(0),
      I1 => UnidadeControle_selULA(0),
      I2 => Reg_RDM_output_signal(0),
      O => UAL_Mmux_output_signal_53_353
    );
  UAL_Mmux_output_signal_55 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(1),
      I1 => Reg_RDM_output_signal(1),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_55_355
    );
  UAL_Mmux_output_signal_57 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(2),
      I1 => Reg_RDM_output_signal(2),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_57_357
    );
  UAL_Mmux_output_signal_59 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(3),
      I1 => Reg_RDM_output_signal(3),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_59_359
    );
  UAL_Mmux_output_signal_511 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(4),
      I1 => Reg_RDM_output_signal(4),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_511_347
    );
  UAL_Mmux_output_signal_513 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(5),
      I1 => Reg_RDM_output_signal(5),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_513_349
    );
  UAL_Mmux_output_signal_51 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(7),
      I1 => Reg_RDM_output_signal(7),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_51_345
    );
  UAL_Mmux_output_signal_515 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(6),
      I1 => Reg_RDM_output_signal(6),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_515_351
    );
  display_mux0017_6_298 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => Reg_PC_output_signal(4),
      I1 => Reg_PC_output_signal(5),
      I2 => Reg_PC_output_signal(6),
      I3 => Reg_PC_output_signal(7),
      O => display_mux0017_6_298_593
    );
  UnidadeControle_selULA_mux0007_1_34 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => DECODE_Mrom_instruction_output2,
      I1 => DECODE_Mrom_instruction_output3,
      I2 => DECODE_Mrom_instruction_output4,
      I3 => UnidadeControle_selULA_mux0007_1_16_466,
      O => UnidadeControle_selULA_mux0007(1)
    );
  UnidadeControle_next_st_mux0004_0_27 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => UnidadeControle_current_st(0),
      I1 => passo_a_passo_IBUF_605,
      I2 => UnidadeControle_prox_passo_reset_454,
      I3 => UnidadeControle_next_st_mux0004_0_20_443,
      O => UnidadeControle_next_st_mux0004_0_27_444
    );
  display_mux0017_1_190 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => alt_view_IBUF_475,
      I1 => display_mux0017_1_145_530,
      I2 => N12,
      I3 => N155,
      O => display_mux0017_1_190_533
    );
  display_mux0017_3_387 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => alt_view_IBUF_475,
      I1 => display_mux0017_3_320_559,
      I2 => N14,
      I3 => N18,
      O => display_mux0017_3_387_560
    );
  UnidadeControle_next_st_mux0004_18_33_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_current_st(12),
      I1 => UnidadeControle_current_st(13),
      I2 => UnidadeControle_current_st(14),
      O => N16
    );
  UnidadeControle_next_st_mux0004_18_33 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => UnidadeControle_current_st(0),
      I1 => UnidadeControle_current_st(10),
      I2 => UnidadeControle_current_st(11),
      I3 => N16,
      O => UnidadeControle_next_st_mux0004_18_33_447
    );
  display_mux0017_5_446 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => alt_view_IBUF_475,
      I1 => display_mux0017_5_144_577,
      I2 => display_mux0017_5_419_586,
      I3 => N181,
      O => display_mux0017_5_Q
    );
  display_mux0017_4_197 : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => Reg_PC_output_signal(3),
      I1 => Reg_PC_output_signal(2),
      I2 => Reg_PC_output_signal(1),
      I3 => Reg_PC_output_signal(0),
      O => display_mux0017_4_197_567
    );
  UnidadeControle_cargaREM_or000011_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_current_st(6),
      I1 => UnidadeControle_current_st(7),
      I2 => UnidadeControle_current_st(9),
      O => N321
    );
  UnidadeControle_cargaREM_or000011 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(1),
      I1 => UnidadeControle_current_st(2),
      I2 => UnidadeControle_current_st(3),
      I3 => N321,
      O => UnidadeControle_cargaREM_or000011_403
    );
  UnidadeControle_cargaRDM_or000013_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(3),
      I1 => UnidadeControle_current_st(4),
      I2 => UnidadeControle_current_st(8),
      I3 => UnidadeControle_current_st(9),
      O => N34
    );
  UnidadeControle_cargaRDM_or000013 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(11),
      I1 => UnidadeControle_current_st(12),
      I2 => UnidadeControle_current_st(13),
      I3 => N34,
      O => UnidadeControle_cargaRDM_or000013_398
    );
  display_mux0017_3_177 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => display_cmp_eq0036,
      I2 => N42,
      I3 => display_mux0017_3_106_550,
      O => display_mux0017_3_177_553
    );
  UnidadeControle_next_st_mux0004_11_SW0 : LUT4
    generic map(
      INIT => X"BFD7"
    )
    port map (
      I0 => Reg_RI_output_signal(6),
      I1 => Reg_RI_output_signal(7),
      I2 => Reg_RI_output_signal(5),
      I3 => Reg_RI_output_signal(4),
      O => N8
    );
  Mcount_BRAM_b_low_input_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => BRAM_b_low_input(0),
      I1 => BRAM_b_low_input(2),
      I2 => BRAM_b_low_input(1),
      O => Result(2)
    );
  Mcount_BRAM_b_low_input_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => BRAM_b_low_input(2),
      I1 => BRAM_b_low_input(3),
      I2 => BRAM_b_low_input(0),
      I3 => BRAM_b_low_input(1),
      O => Result(3)
    );
  display_mux0017_1_122 : LUT4
    generic map(
      INIT => X"3190"
    )
    port map (
      I0 => Reg_PC_output_signal(6),
      I1 => Reg_PC_output_signal(7),
      I2 => Reg_PC_output_signal(4),
      I3 => Reg_PC_output_signal(5),
      O => display_mux0017_1_122_529
    );
  display_mux0017_5_334 : LUT3
    generic map(
      INIT => X"98"
    )
    port map (
      I0 => Reg_AC_output_signal(5),
      I1 => Reg_AC_output_signal(7),
      I2 => Reg_AC_output_signal(6),
      O => display_mux0017_5_334_582
    );
  Madd_BRAM_b_data_in_low_add0000_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => BRAM_b_output(0),
      I1 => BRAM_b_output(2),
      I2 => BRAM_b_output(1),
      O => BRAM_b_data_in_low_add0000(2)
    );
  Madd_BRAM_b_data_in_high_add0000_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => BRAM_b_output(4),
      I1 => BRAM_b_output(6),
      I2 => BRAM_b_output(5),
      O => BRAM_b_data_in_high_add0000(2)
    );
  display_mux0017_1_2111 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => Reg_AC_output_signal(2),
      I1 => Reg_AC_output_signal(3),
      I2 => Reg_AC_output_signal(1),
      I3 => Reg_AC_output_signal(0),
      O => display_cmp_eq0061
    );
  display_cmp_eq00361 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => BRAM_b_low_input(2),
      I1 => BRAM_b_low_input(1),
      I2 => BRAM_b_low_input(3),
      I3 => BRAM_b_low_input(0),
      O => display_cmp_eq0036
    );
  Madd_BRAM_b_data_in_low_add0000_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => BRAM_b_output(0),
      I1 => BRAM_b_output(3),
      I2 => BRAM_b_output(1),
      I3 => BRAM_b_output(2),
      O => BRAM_b_data_in_low_add0000(3)
    );
  Madd_BRAM_b_data_in_high_add0000_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => BRAM_b_output(4),
      I1 => BRAM_b_output(7),
      I2 => BRAM_b_output(5),
      I3 => BRAM_b_output(6),
      O => BRAM_b_data_in_high_add0000(3)
    );
  display_mux0017_5_345 : LUT4
    generic map(
      INIT => X"5040"
    )
    port map (
      I0 => Reg_AC_output_signal(4),
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_AC_output_signal(6),
      I3 => Reg_AC_output_signal(7),
      O => display_mux0017_5_345_584
    );
  display_mux0017_6_6 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => BRAM_b_output(5),
      I1 => BRAM_b_output(4),
      I2 => BRAM_b_output(6),
      I3 => BRAM_b_output(7),
      O => display_mux0017_6_6_597
    );
  display_mux0017_1_16 : LUT4
    generic map(
      INIT => X"0A82"
    )
    port map (
      I0 => BRAM_b_high_input(0),
      I1 => BRAM_b_high_input(2),
      I2 => BRAM_b_high_input(3),
      I3 => BRAM_b_high_input(1),
      O => display_mux0017_1_16_532
    );
  display_mux0017_6_328_SW1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => ctrl_FSM_FFd4_501,
      I1 => N52,
      I2 => display_mux0017_6_226_592,
      I3 => display_cmp_eq0061,
      O => N58
    );
  display_mux0017_6_328 : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => N58,
      I1 => alt_view_IBUF_475,
      I2 => display_mux0017_6_298_593,
      I3 => display_or0000,
      O => display_mux0017_6_328_594
    );
  display_mux0017_3_2115_SW0 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => N60,
      I1 => Reg_AC_output_signal(4),
      I2 => ctrl_FSM_FFd3_500,
      I3 => display_mux0017_3_2113_555,
      O => N40
    );
  display_mux0017_0_195 : LUT4
    generic map(
      INIT => X"1805"
    )
    port map (
      I0 => Reg_AC_output_signal(1),
      I1 => Reg_AC_output_signal(0),
      I2 => Reg_AC_output_signal(3),
      I3 => Reg_AC_output_signal(2),
      O => display_mux0017_0_195_521
    );
  display_mux0017_5_186 : LUT4
    generic map(
      INIT => X"D680"
    )
    port map (
      I0 => BRAM_b_high_input(0),
      I1 => BRAM_b_high_input(1),
      I2 => BRAM_b_high_input(3),
      I3 => BRAM_b_high_input(2),
      O => display_mux0017_5_186_578
    );
  display_mux0017_5_399 : LUT4
    generic map(
      INIT => X"D680"
    )
    port map (
      I0 => Reg_PC_output_signal(4),
      I1 => Reg_PC_output_signal(5),
      I2 => Reg_PC_output_signal(7),
      I3 => Reg_PC_output_signal(6),
      O => display_mux0017_5_399_585
    );
  display_mux0017_6_183 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => Reg_AC_output_signal(4),
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_AC_output_signal(6),
      I3 => Reg_AC_output_signal(7),
      O => display_mux0017_6_183_590
    );
  display_mux0017_6_210 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => Reg_PC_output_signal(0),
      I1 => Reg_PC_output_signal(1),
      I2 => Reg_PC_output_signal(2),
      I3 => Reg_PC_output_signal(3),
      O => display_mux0017_6_210_591
    );
  display_mux0017_4_166 : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => Reg_AC_output_signal(7),
      I1 => Reg_AC_output_signal(6),
      I2 => Reg_AC_output_signal(5),
      I3 => Reg_AC_output_signal(4),
      O => display_mux0017_4_166_566
    );
  display_mux0017_2_212 : LUT4
    generic map(
      INIT => X"02AE"
    )
    port map (
      I0 => Reg_AC_output_signal(4),
      I1 => Reg_AC_output_signal(6),
      I2 => Reg_AC_output_signal(5),
      I3 => Reg_AC_output_signal(7),
      O => display_mux0017_2_212_543
    );
  display_mux0017_2_246 : LUT4
    generic map(
      INIT => X"02AE"
    )
    port map (
      I0 => Reg_PC_output_signal(0),
      I1 => Reg_PC_output_signal(2),
      I2 => Reg_PC_output_signal(1),
      I3 => Reg_PC_output_signal(3),
      O => display_mux0017_2_246_544
    );
  display_mux0017_0_223 : LUT4
    generic map(
      INIT => X"1805"
    )
    port map (
      I0 => Reg_PC_output_signal(1),
      I1 => Reg_PC_output_signal(0),
      I2 => Reg_PC_output_signal(3),
      I3 => Reg_PC_output_signal(2),
      O => display_mux0017_0_223_522
    );
  display_mux0017_5_249 : LUT4
    generic map(
      INIT => X"D680"
    )
    port map (
      I0 => Reg_AC_output_signal(0),
      I1 => Reg_AC_output_signal(1),
      I2 => Reg_AC_output_signal(3),
      I3 => Reg_AC_output_signal(2),
      O => display_mux0017_5_249_579
    );
  display_mux0017_3_283 : LUT4
    generic map(
      INIT => X"8410"
    )
    port map (
      I0 => Reg_AC_output_signal(4),
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_AC_output_signal(6),
      I3 => Reg_AC_output_signal(7),
      O => display_mux0017_3_283_557
    );
  display_mux0017_6_100_SW0 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => display_mux0017_6_84_598,
      I1 => ctrl_FSM_FFd4_501,
      I2 => display_mux0017_6_48_596,
      O => N64
    );
  display_mux0017_2_355 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => ctrl_FSM_FFd3_500,
      I2 => ctrl_FSM_FFd4_501,
      I3 => N66,
      O => display_mux0017_2_355_548
    );
  display_mux0017_2_160 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => ctrl_FSM_FFd3_500,
      I2 => ctrl_FSM_FFd4_501,
      I3 => N68,
      O => display_mux0017_2_160_542
    );
  display_mux0017_6_14_SW0 : LUT4
    generic map(
      INIT => X"2012"
    )
    port map (
      I0 => BRAM_b_output(4),
      I1 => BRAM_b_output(5),
      I2 => BRAM_b_output(6),
      I3 => BRAM_b_output(7),
      O => N56
    );
  display_mux0017_6_254_SW0 : LUT4
    generic map(
      INIT => X"0812"
    )
    port map (
      I0 => Reg_AC_output_signal(0),
      I1 => Reg_AC_output_signal(1),
      I2 => Reg_AC_output_signal(2),
      I3 => Reg_AC_output_signal(3),
      O => N52
    );
  display_mux0017_3_310 : LUT4
    generic map(
      INIT => X"8410"
    )
    port map (
      I0 => Reg_PC_output_signal(0),
      I1 => Reg_PC_output_signal(1),
      I2 => Reg_PC_output_signal(2),
      I3 => Reg_PC_output_signal(3),
      O => display_mux0017_3_310_558
    );
  display_cmp_eq00201 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => BRAM_b_output(6),
      I1 => BRAM_b_output(5),
      I2 => BRAM_b_output(7),
      I3 => BRAM_b_output(4),
      O => display_cmp_eq0020
    );
  UnidadeControle_selULA_mux0007_0_29_SW0 : LUT4
    generic map(
      INIT => X"9510"
    )
    port map (
      I0 => Reg_RI_output_signal(6),
      I1 => Reg_RI_output_signal(4),
      I2 => Reg_RI_output_signal(5),
      I3 => N152,
      O => N84
    );
  UnidadeControle_selULA_mux0007_0_29 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Reg_RI_output_signal(7),
      I1 => N84,
      I2 => UnidadeControle_selULA_mux0007_0_5_464,
      O => UnidadeControle_selULA_mux0007(0)
    );
  display_mux0017_5_289 : LUT4
    generic map(
      INIT => X"D680"
    )
    port map (
      I0 => Reg_PC_output_signal(0),
      I1 => Reg_PC_output_signal(1),
      I2 => Reg_PC_output_signal(3),
      I3 => Reg_PC_output_signal(2),
      O => display_mux0017_5_289_580
    );
  display_mux0017_6_84 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => BRAM_b_output(0),
      I1 => BRAM_b_output(1),
      I2 => BRAM_b_output(2),
      I3 => BRAM_b_output(3),
      O => display_mux0017_6_84_598
    );
  display_mux0017_2_355_SW0 : LUT4
    generic map(
      INIT => X"A8FB"
    )
    port map (
      I0 => Reg_PC_output_signal(7),
      I1 => Reg_PC_output_signal(6),
      I2 => Reg_PC_output_signal(5),
      I3 => Reg_PC_output_signal(4),
      O => N66
    );
  display_mux0017_2_160_SW0 : LUT4
    generic map(
      INIT => X"A8FB"
    )
    port map (
      I0 => BRAM_b_high_input(3),
      I1 => BRAM_b_high_input(2),
      I2 => BRAM_b_high_input(1),
      I3 => BRAM_b_high_input(0),
      O => N68
    );
  display_mux0017_3_2115_SW1 : LUT3
    generic map(
      INIT => X"21"
    )
    port map (
      I0 => Reg_PC_output_signal(2),
      I1 => Reg_PC_output_signal(3),
      I2 => Reg_PC_output_signal(1),
      O => N62
    );
  display_mux0017_3_2113_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => Reg_AC_output_signal(3),
      I1 => ctrl_FSM_FFd4_501,
      O => N86
    );
  display_mux0017_3_1115_SW1 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => BRAM_b_low_input(1),
      I2 => BRAM_b_low_input(2),
      O => N88
    );
  display_mux0017_3_1115_SW0_SW0 : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => BRAM_b_output(6),
      I1 => BRAM_b_output(5),
      I2 => ctrl_FSM_FFd3_500,
      O => N90
    );
  display_mux0017_3_1115_SW0 : LUT4
    generic map(
      INIT => X"F4F0"
    )
    port map (
      I0 => BRAM_b_output(7),
      I1 => BRAM_b_output(4),
      I2 => display_mux0017_3_1113_551,
      I3 => N90,
      O => N38
    );
  display_mux0017_3_2115_SW0_SW0 : LUT3
    generic map(
      INIT => X"21"
    )
    port map (
      I0 => Reg_AC_output_signal(6),
      I1 => Reg_AC_output_signal(7),
      I2 => Reg_AC_output_signal(5),
      O => N60
    );
  display_mux0017_3_1113_SW0 : LUT3
    generic map(
      INIT => X"BE"
    )
    port map (
      I0 => BRAM_b_output(3),
      I1 => BRAM_b_output(2),
      I2 => BRAM_b_output(1),
      O => N721
    );
  clkMain_BUFGP : BUFGP
    port map (
      I => clkMain,
      O => clkMain_BUFGP_477
    );
  prox_passo_BUFGP : BUFGP
    port map (
      I => prox_passo,
      O => prox_passo_BUFGP_607
    );
  ResetMain_IBUF_BUFG : BUFG
    port map (
      I => ResetMain_IBUF1,
      O => ResetMain_IBUF_279
    );
  ender_low_BUFGP : BUFGP
    port map (
      I => ender_low,
      O => ender_low_BUFGP_603
    );
  ender_high_BUFGP : BUFGP
    port map (
      I => ender_high,
      O => ender_high_BUFGP_601
    );
  Mcompar_clock200hz_cmp_lt0000_lut_5_INV_0 : INV
    port map (
      I => conta200(11),
      O => Mcompar_clock200hz_cmp_lt0000_lut_5_Q
    );
  Mcount_conta200_lut_0_INV_0 : INV
    port map (
      I => conta200(0),
      O => Mcount_conta200_lut(0)
    );
  Madd_BRAM_b_data_in_low_add0000_xor_0_11_INV_0 : INV
    port map (
      I => BRAM_b_output(0),
      O => BRAM_b_data_in_low_add0000(0)
    );
  Madd_BRAM_b_data_in_high_add0000_xor_0_11_INV_0 : INV
    port map (
      I => BRAM_b_output(4),
      O => BRAM_b_data_in_high_add0000(0)
    );
  CargaPC_inv1_INV_0 : INV
    port map (
      I => UnidadeControle_cargaPC_393,
      O => CargaPC_inv
    );
  clock200hz_not00031_INV_0 : INV
    port map (
      I => clock200hz_478,
      O => clock200hz_not0003
    );
  UAL_output_signal_0_inv1_INV_0 : INV
    port map (
      I => UAL_output_signal_0_1,
      O => ULA_output(0)
    );
  display_mux0017_2_396 : MUXF5
    port map (
      I0 => N92,
      I1 => N93,
      S => alt_view_IBUF_475,
      O => display_mux0017_2_Q
    );
  display_mux0017_2_396_F : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => display_mux0017_2_265_546,
      I1 => display_mux0017_2_304_547,
      I2 => display_mux0017_2_355_548,
      O => N92
    );
  display_mux0017_2_396_G : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => display_mux0017_2_26_545,
      I1 => display_mux0017_2_60_549,
      I2 => display_mux0017_2_109_541,
      I3 => display_mux0017_2_160_542,
      O => N93
    );
  display_mux0017_0_364 : MUXF5
    port map (
      I0 => N94,
      I1 => N95,
      S => alt_view_IBUF_475,
      O => display_mux0017_0_Q
    );
  display_mux0017_0_364_F : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => display_mux0017_0_235_523,
      I1 => display_mux0017_0_263_525,
      I2 => display_mux0017_0_321_526,
      O => N94
    );
  display_mux0017_0_364_G : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => display_mux0017_0_24_524,
      I1 => display_mux0017_0_49_527,
      I2 => display_mux0017_0_86_528,
      I3 => display_mux0017_0_142_520,
      O => N95
    );
  display_mux0017_0_142 : MUXF5
    port map (
      I0 => N96,
      I1 => N97,
      S => BRAM_b_high_input(3),
      O => display_mux0017_0_142_520
    );
  display_mux0017_0_142_F : LUT4
    generic map(
      INIT => X"0901"
    )
    port map (
      I0 => BRAM_b_high_input(2),
      I1 => BRAM_b_high_input(1),
      I2 => display_or0000,
      I3 => BRAM_b_high_input(0),
      O => N96
    );
  display_mux0017_0_142_G : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => BRAM_b_high_input(1),
      I1 => N1211,
      I2 => display_or0000,
      O => N97
    );
  display_mux0017_0_321 : MUXF5
    port map (
      I0 => N98,
      I1 => N99,
      S => Reg_PC_output_signal(7),
      O => display_mux0017_0_321_526
    );
  display_mux0017_0_321_F : LUT4
    generic map(
      INIT => X"0901"
    )
    port map (
      I0 => Reg_PC_output_signal(6),
      I1 => Reg_PC_output_signal(5),
      I2 => display_or0000,
      I3 => Reg_PC_output_signal(4),
      O => N98
    );
  display_mux0017_0_321_G : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Reg_PC_output_signal(5),
      I1 => N124,
      I2 => display_or0000,
      O => N99
    );
  display_mux0017_5_81 : MUXF5
    port map (
      I0 => N1001,
      I1 => N101,
      S => BRAM_b_low_input(0),
      O => display_mux0017_5_81_587
    );
  display_mux0017_5_81_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => N20,
      I2 => BRAM_b_low_input(2),
      O => N1001
    );
  display_mux0017_5_81_G : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => BRAM_b_low_input(1),
      I2 => BRAM_b_low_input(3),
      I3 => BRAM_b_low_input(2),
      O => N101
    );
  display_mux0017_5_144 : MUXF5
    port map (
      I0 => N1021,
      I1 => N1031,
      S => BRAM_b_output(4),
      O => display_mux0017_5_144_577
    );
  display_mux0017_5_144_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => N28,
      I2 => BRAM_b_output(6),
      O => N1021
    );
  display_mux0017_5_144_G : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => BRAM_b_output(5),
      I2 => BRAM_b_output(7),
      I3 => BRAM_b_output(6),
      O => N1031
    );
  display_mux0017_4_285 : MUXF5
    port map (
      I0 => N104,
      I1 => N0,
      S => display_or0000,
      O => display_mux0017_4_285_570
    );
  display_mux0017_4_285_F : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => Reg_PC_output_signal(7),
      I1 => Reg_PC_output_signal(6),
      I2 => Reg_PC_output_signal(5),
      I3 => Reg_PC_output_signal(4),
      O => N104
    );
  display_mux0017_5_34 : MUXF5
    port map (
      I0 => N0,
      I1 => N107,
      S => ctrl_FSM_FFd4_501,
      O => display_mux0017_5_34_583
    );
  display_mux0017_5_34_G : LUT4
    generic map(
      INIT => X"D680"
    )
    port map (
      I0 => BRAM_b_output(0),
      I1 => BRAM_b_output(1),
      I2 => BRAM_b_output(3),
      I3 => BRAM_b_output(2),
      O => N107
    );
  display_mux0017_5_419 : MUXF5
    port map (
      I0 => N108,
      I1 => N109,
      S => ctrl_FSM_FFd3_500,
      O => display_mux0017_5_419_586
    );
  display_mux0017_5_419_F : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => display_mux0017_5_399_585,
      I1 => ctrl_FSM_FFd2_499,
      I2 => ctrl_FSM_FFd4_501,
      I3 => display_mux0017_5_311_581,
      O => N108
    );
  display_mux0017_5_419_G : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => display_mux0017_5_311_581,
      I1 => display_mux0017_5_345_584,
      I2 => Reg_AC_output_signal(4),
      I3 => display_mux0017_5_334_582,
      O => N109
    );
  display_mux0017_6_139 : MUXF5
    port map (
      I0 => N110,
      I1 => N0,
      S => display_or0000,
      O => display_mux0017_6_139_589
    );
  display_mux0017_6_139_F : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => BRAM_b_high_input(0),
      I1 => BRAM_b_high_input(1),
      I2 => BRAM_b_high_input(2),
      I3 => BRAM_b_high_input(3),
      O => N110
    );
  display_mux0017_4_1211 : MUXF5
    port map (
      I0 => N112,
      I1 => N0,
      S => display_or0000,
      O => display_mux0017_4_121
    );
  display_mux0017_4_1211_F : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => BRAM_b_high_input(3),
      I1 => BRAM_b_high_input(2),
      I2 => BRAM_b_high_input(1),
      I3 => BRAM_b_high_input(0),
      O => N112
    );
  display_mux0017_4_79 : MUXF5
    port map (
      I0 => N0,
      I1 => N1151,
      S => ctrl_FSM_FFd3_500,
      O => display_mux0017_4_79_574
    );
  display_mux0017_4_79_G : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => BRAM_b_output(7),
      I1 => BRAM_b_output(6),
      I2 => BRAM_b_output(5),
      I3 => BRAM_b_output(4),
      O => N1151
    );
  display_mux0017_0_24 : MUXF5
    port map (
      I0 => N0,
      I1 => N1171,
      S => ctrl_FSM_FFd4_501,
      O => display_mux0017_0_24_524
    );
  display_mux0017_0_24_G : LUT4
    generic map(
      INIT => X"1805"
    )
    port map (
      I0 => BRAM_b_output(1),
      I1 => BRAM_b_output(0),
      I2 => BRAM_b_output(3),
      I3 => BRAM_b_output(2),
      O => N1171
    );
  display_mux0017_2_26 : MUXF5
    port map (
      I0 => N0,
      I1 => N119,
      S => ctrl_FSM_FFd3_500,
      O => display_mux0017_2_26_545
    );
  display_mux0017_2_26_G : LUT4
    generic map(
      INIT => X"02AE"
    )
    port map (
      I0 => BRAM_b_output(4),
      I1 => BRAM_b_output(6),
      I2 => BRAM_b_output(5),
      I3 => BRAM_b_output(7),
      O => N119
    );
  display_mux0017_2_109 : MUXF5
    port map (
      I0 => N0,
      I1 => N121,
      S => ctrl_FSM_FFd4_501,
      O => display_mux0017_2_109_541
    );
  display_mux0017_2_109_G : LUT4
    generic map(
      INIT => X"02AE"
    )
    port map (
      I0 => BRAM_b_output(0),
      I1 => BRAM_b_output(2),
      I2 => BRAM_b_output(1),
      I3 => BRAM_b_output(3),
      O => N121
    );
  display_mux0017_1_190_SW0 : MUXF5
    port map (
      I0 => N122,
      I1 => N123,
      S => ctrl_FSM_FFd3_500,
      O => N12
    );
  display_mux0017_1_190_SW0_F : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => display_mux0017_1_122_529,
      I1 => ctrl_FSM_FFd2_499,
      I2 => ctrl_FSM_FFd4_501,
      I3 => display_mux0017_1_151_531,
      O => N122
    );
  display_mux0017_1_190_SW0_G : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => N116,
      I1 => display_mux0017_1_151_531,
      I2 => Reg_AC_output_signal(4),
      I3 => N1011,
      O => N123
    );
  display_mux0017_2_60 : MUXF5
    port map (
      I0 => N1241,
      I1 => N125,
      S => BRAM_b_low_input(3),
      O => display_mux0017_2_60_549
    );
  display_mux0017_2_60_F : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => BRAM_b_low_input(0),
      I2 => BRAM_b_low_input(2),
      I3 => BRAM_b_low_input(1),
      O => N1241
    );
  display_mux0017_2_60_G : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => BRAM_b_low_input(2),
      I1 => BRAM_b_low_input(0),
      I2 => ctrl_FSM_FFd2_499,
      I3 => BRAM_b_low_input(1),
      O => N125
    );
  display_mux0017_2_304 : MUXF5
    port map (
      I0 => N126,
      I1 => N127,
      S => Reg_AC_output_signal(3),
      O => display_mux0017_2_304_547
    );
  display_mux0017_2_304_F : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => ctrl_FSM_FFd4_501,
      I1 => Reg_AC_output_signal(0),
      I2 => Reg_AC_output_signal(2),
      I3 => Reg_AC_output_signal(1),
      O => N126
    );
  display_mux0017_2_304_G : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_AC_output_signal(2),
      I1 => Reg_AC_output_signal(0),
      I2 => ctrl_FSM_FFd4_501,
      I3 => Reg_AC_output_signal(1),
      O => N127
    );
  display_mux0017_4_242 : MUXF5
    port map (
      I0 => N128,
      I1 => N129,
      S => Reg_AC_output_signal(3),
      O => display_mux0017_4_242_569
    );
  display_mux0017_4_242_F : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_AC_output_signal(2),
      I1 => Reg_AC_output_signal(1),
      I2 => ctrl_FSM_FFd4_501,
      I3 => Reg_AC_output_signal(0),
      O => N128
    );
  display_mux0017_4_242_G : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => ctrl_FSM_FFd4_501,
      I1 => Reg_AC_output_signal(2),
      I2 => Reg_AC_output_signal(0),
      I3 => Reg_AC_output_signal(1),
      O => N129
    );
  display_mux0017_4_38 : MUXF5
    port map (
      I0 => N130,
      I1 => N131,
      S => BRAM_b_low_input(3),
      O => display_mux0017_4_38_573
    );
  display_mux0017_4_38_F : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => BRAM_b_low_input(2),
      I1 => BRAM_b_low_input(1),
      I2 => ctrl_FSM_FFd2_499,
      I3 => BRAM_b_low_input(0),
      O => N130
    );
  display_mux0017_4_38_G : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => BRAM_b_low_input(2),
      I2 => BRAM_b_low_input(0),
      I3 => BRAM_b_low_input(1),
      O => N131
    );
  display_mux0017_3_387_SW0 : MUXF5
    port map (
      I0 => N132,
      I1 => N133,
      S => ctrl_FSM_FFd4_501,
      O => N14
    );
  display_mux0017_3_387_SW0_F : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => ctrl_FSM_FFd2_499,
      I2 => N72,
      I3 => display_mux0017_3_233_556,
      O => N132
    );
  display_mux0017_3_387_SW0_G : LUT4
    generic map(
      INIT => X"8410"
    )
    port map (
      I0 => Reg_AC_output_signal(0),
      I1 => Reg_AC_output_signal(1),
      I2 => Reg_AC_output_signal(2),
      I3 => Reg_AC_output_signal(3),
      O => N133
    );
  UnidadeControle_selULA_mux0007_2_23 : MUXF5
    port map (
      I0 => N134,
      I1 => N135,
      S => UnidadeControle_selULA(0),
      O => UnidadeControle_selULA_mux0007(2)
    );
  UnidadeControle_selULA_mux0007_2_23_F : LUT4
    generic map(
      INIT => X"3600"
    )
    port map (
      I0 => Reg_RI_output_signal(5),
      I1 => Reg_RI_output_signal(7),
      I2 => Reg_RI_output_signal(4),
      I3 => Reg_RI_output_signal(6),
      O => N134
    );
  UnidadeControle_selULA_mux0007_2_23_G : LUT4
    generic map(
      INIT => X"FE2F"
    )
    port map (
      I0 => Reg_RI_output_signal(7),
      I1 => Reg_RI_output_signal(4),
      I2 => Reg_RI_output_signal(5),
      I3 => Reg_RI_output_signal(6),
      O => N135
    );
  display_mux0017_3_167 : MUXF5
    port map (
      I0 => N0,
      I1 => N137,
      S => ctrl_FSM_FFd4_501,
      O => display_mux0017_3_167_552
    );
  display_mux0017_3_167_G : LUT4
    generic map(
      INIT => X"8410"
    )
    port map (
      I0 => BRAM_b_output(0),
      I1 => BRAM_b_output(1),
      I2 => BRAM_b_output(2),
      I3 => BRAM_b_output(3),
      O => N137
    );
  display_mux0017_6_48 : MUXF5
    port map (
      I0 => N138,
      I1 => N139,
      S => BRAM_b_low_input(1),
      O => display_mux0017_6_48_596
    );
  display_mux0017_6_48_F : LUT4
    generic map(
      INIT => X"8028"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => BRAM_b_low_input(0),
      I2 => BRAM_b_low_input(2),
      I3 => BRAM_b_low_input(3),
      O => N138
    );
  display_mux0017_6_48_G : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => BRAM_b_low_input(0),
      I2 => BRAM_b_low_input(2),
      I3 => BRAM_b_low_input(3),
      O => N139
    );
  UnidadeControle_next_st_mux0004_6_Q : MUXF5
    port map (
      I0 => N0,
      I1 => N141,
      S => UnidadeControle_N14,
      O => UnidadeControle_next_st_6_Q
    );
  UnidadeControle_next_st_mux0004_6_G : LUT4
    generic map(
      INIT => X"571F"
    )
    port map (
      I0 => Reg_RI_output_signal(7),
      I1 => Reg_RI_output_signal(5),
      I2 => Reg_RI_output_signal(6),
      I3 => Reg_RI_output_signal(4),
      O => N141
    );
  display_mux0017_4_12 : MUXF5
    port map (
      I0 => N0,
      I1 => N143,
      S => ctrl_FSM_FFd4_501,
      O => display_mux0017_4_12_564
    );
  display_mux0017_4_12_G : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => BRAM_b_output(3),
      I1 => BRAM_b_output(2),
      I2 => BRAM_b_output(1),
      I3 => BRAM_b_output(0),
      O => N143
    );
  display_mux0017_1_46 : MUXF5
    port map (
      I0 => N0,
      I1 => N145,
      S => ctrl_FSM_FFd4_501,
      O => display_mux0017_1_46_536
    );
  display_mux0017_1_46_G : LUT4
    generic map(
      INIT => X"2404"
    )
    port map (
      I0 => BRAM_b_output(3),
      I1 => BRAM_b_output(1),
      I2 => BRAM_b_output(2),
      I3 => BRAM_b_output(0),
      O => N145
    );
  display_mux0017_0_263 : MUXF5
    port map (
      I0 => N146,
      I1 => N147,
      S => Reg_AC_output_signal(4),
      O => display_mux0017_0_263_525
    );
  display_mux0017_0_263_F : LUT4
    generic map(
      INIT => X"2002"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_AC_output_signal(6),
      I3 => Reg_AC_output_signal(7),
      O => N146
    );
  display_mux0017_0_263_G : LUT4
    generic map(
      INIT => X"2002"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => Reg_AC_output_signal(7),
      I2 => Reg_AC_output_signal(6),
      I3 => Reg_AC_output_signal(5),
      O => N147
    );
  display_mux0017_0_86 : MUXF5
    port map (
      I0 => N0,
      I1 => N149,
      S => ctrl_FSM_FFd3_500,
      O => display_mux0017_0_86_528
    );
  display_mux0017_0_86_G : LUT4
    generic map(
      INIT => X"1805"
    )
    port map (
      I0 => BRAM_b_output(5),
      I1 => BRAM_b_output(4),
      I2 => BRAM_b_output(7),
      I3 => BRAM_b_output(6),
      O => N149
    );
  display_mux0017_0_49 : MUXF5
    port map (
      I0 => N150,
      I1 => N151,
      S => BRAM_b_low_input(1),
      O => display_mux0017_0_49_527
    );
  display_mux0017_0_49_F : LUT4
    generic map(
      INIT => X"0282"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => BRAM_b_low_input(3),
      I2 => BRAM_b_low_input(2),
      I3 => BRAM_b_low_input(0),
      O => N150
    );
  display_mux0017_0_49_G : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => BRAM_b_low_input(2),
      I2 => BRAM_b_low_input(3),
      I3 => BRAM_b_low_input(0),
      O => N151
    );
  UnidadeControle_incrementaPC_or0000111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(4),
      I1 => UnidadeControle_current_st(3),
      I2 => UnidadeControle_current_st(0),
      I3 => UnidadeControle_current_st(19),
      O => UnidadeControle_incrementaPC_or0000111_431
    );
  UnidadeControle_incrementaPC_or000011_f5 : MUXF5
    port map (
      I0 => UnidadeControle_incrementaPC_or0000111_431,
      I1 => N1,
      S => UnidadeControle_current_st(8),
      O => UnidadeControle_incrementaPC_or000011
    );
  UnidadeControle_incrementaPC_or0000131 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(17),
      I1 => UnidadeControle_current_st(16),
      I2 => UnidadeControle_current_st(15),
      I3 => UnidadeControle_current_st(9),
      O => UnidadeControle_incrementaPC_or000013
    );
  UnidadeControle_incrementaPC_or000013_f5 : MUXF5
    port map (
      I0 => UnidadeControle_incrementaPC_or000013,
      I1 => N1,
      S => UnidadeControle_incrementaPC_or000011,
      O => UnidadeControle_incrementaPC_or0000
    );
  UnidadeControle_selULA_mux0007_0_5 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_selULA(2),
      I1 => DECODE_Mrom_instruction_output11_44,
      I2 => DECODE_Mrom_instruction_output12,
      I3 => DECODE_Mrom_instruction_output7,
      LO => N152,
      O => UnidadeControle_selULA_mux0007_0_5_464
    );
  UnidadeControle_next_st_mux0004_16_SW0 : LUT4_L
    generic map(
      INIT => X"CF45"
    )
    port map (
      I0 => DECODE_Mrom_instruction_output10,
      I1 => NZ_output_signal(1),
      I2 => DECODE_Mrom_instruction_output9,
      I3 => NZ_output_signal(0),
      LO => N2
    );
  DECODE_Mrom_instruction_output91 : LUT4_D
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_RI_output_signal(5),
      I1 => Reg_RI_output_signal(7),
      I2 => Reg_RI_output_signal(4),
      I3 => Reg_RI_output_signal(6),
      LO => N153,
      O => DECODE_Mrom_instruction_output9
    );
  DECODE_Mrom_instruction_output101 : LUT4_D
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_RI_output_signal(4),
      I1 => Reg_RI_output_signal(7),
      I2 => Reg_RI_output_signal(5),
      I3 => Reg_RI_output_signal(6),
      LO => N154,
      O => DECODE_Mrom_instruction_output10
    );
  UnidadeControle_selULA_mux0007_1_7 : LUT4_L
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => DECODE_Mrom_instruction_output11_44,
      I1 => DECODE_Mrom_instruction_output7,
      I2 => DECODE_Mrom_instruction_output12,
      I3 => UnidadeControle_selULA(1),
      LO => UnidadeControle_selULA_mux0007_1_7_467
    );
  display_mux0017_4_87 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => display_mux0017_4_12_564,
      I1 => display_mux0017_4_38_573,
      I2 => display_mux0017_4_79_574,
      LO => display_mux0017_4_87_575
    );
  display_mux0017_4_209 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => display_mux0017_4_166_566,
      I2 => ctrl_FSM_FFd2_499,
      I3 => display_mux0017_4_197_567,
      LO => display_mux0017_4_209_568
    );
  display_mux0017_6_226 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => display_mux0017_6_183_590,
      I2 => ctrl_FSM_FFd2_499,
      I3 => display_mux0017_6_210_591,
      LO => display_mux0017_6_226_592
    );
  display_mux0017_1_52 : LUT4_L
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => ctrl_FSM_FFd2_499,
      I1 => N1121,
      I2 => BRAM_b_low_input(0),
      I3 => N100,
      LO => display_mux0017_1_52_537
    );
  display_mux0017_3_44 : LUT4_L
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => display_mux0017_3_21_554,
      I1 => display_or0000,
      I2 => N70,
      I3 => N13,
      LO => display_mux0017_3_44_562
    );
  display_mux0017_3_320 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => display_mux0017_3_283_557,
      I2 => ctrl_FSM_FFd2_499,
      I3 => display_mux0017_3_310_558,
      LO => display_mux0017_3_320_559
    );
  UAL_nz_0_2 : LUT2_L
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => UAL_output_signal_0_1,
      I1 => ULA_output(1),
      LO => UAL_nz_0_2_368
    );
  display_mux0017_5_446_SW0 : LUT4_L
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => display_mux0017_5_81_587,
      I1 => display_mux0017_5_186_578,
      I2 => display_or0000,
      I3 => display_mux0017_5_34_583,
      LO => N181
    );
  display_mux0017_3_177_SW0 : LUT4_L
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => ctrl_FSM_FFd3_500,
      I1 => display_cmp_eq0020,
      I2 => display_mux0017_3_167_552,
      I3 => display_mux0017_3_71_563,
      LO => N42
    );
  display_mux0017_3_2115 : LUT4_D
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => N62,
      I1 => Reg_PC_output_signal(0),
      I2 => ctrl_FSM_FFd2_499,
      I3 => N40,
      LO => N155,
      O => N18
    );
  display_mux0017_6_100 : LUT4_L
    generic map(
      INIT => X"FFE0"
    )
    port map (
      I0 => display_mux0017_6_6_597,
      I1 => N56,
      I2 => ctrl_FSM_FFd3_500,
      I3 => N64,
      LO => display_mux0017_6_100_588
    );
  display_mux0017_3_1113 : LUT3_L
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => BRAM_b_output(0),
      I1 => N721,
      I2 => ctrl_FSM_FFd4_501,
      LO => display_mux0017_3_1113_551
    );
  display_mux0017_3_2113 : LUT4_L
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => Reg_AC_output_signal(1),
      I1 => Reg_AC_output_signal(2),
      I2 => Reg_AC_output_signal(0),
      I3 => N86,
      LO => display_mux0017_3_2113_555
    );
  display_mux0017_3_1115 : LUT4_D
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N88,
      I1 => BRAM_b_low_input(0),
      I2 => BRAM_b_low_input(3),
      I3 => N38,
      LO => N156,
      O => N13
    );
  memory : bram
    port map (
      clka => clkMain_BUFGP_477,
      clkb => clkMain_BUFGP_477,
      wea(0) => UnidadeControle_writeMEM(0),
      addra(7) => Reg_REM_output_signal(7),
      addra(6) => Reg_REM_output_signal(6),
      addra(5) => Reg_REM_output_signal(5),
      addra(4) => Reg_REM_output_signal(4),
      addra(3) => Reg_REM_output_signal(3),
      addra(2) => Reg_REM_output_signal(2),
      addra(1) => Reg_REM_output_signal(1),
      addra(0) => Reg_REM_output_signal(0),
      dina(7) => Reg_RDM_output_signal(7),
      dina(6) => Reg_RDM_output_signal(6),
      dina(5) => Reg_RDM_output_signal(5),
      dina(4) => Reg_RDM_output_signal(4),
      dina(3) => Reg_RDM_output_signal(3),
      dina(2) => Reg_RDM_output_signal(2),
      dina(1) => Reg_RDM_output_signal(1),
      dina(0) => Reg_RDM_output_signal(0),
      web(0) => writeB_IBUF_617,
      addrb(7) => BRAM_b_high_input(3),
      addrb(6) => BRAM_b_high_input(2),
      addrb(5) => BRAM_b_high_input(1),
      addrb(4) => BRAM_b_high_input(0),
      addrb(3) => BRAM_b_low_input(3),
      addrb(2) => BRAM_b_low_input(2),
      addrb(1) => BRAM_b_low_input(1),
      addrb(0) => BRAM_b_low_input(0),
      dinb(7) => BRAM_b_data_in_high(3),
      dinb(6) => BRAM_b_data_in_high(2),
      dinb(5) => BRAM_b_data_in_high(1),
      dinb(4) => BRAM_b_data_in_high(0),
      dinb(3) => BRAM_b_data_in_low(3),
      dinb(2) => BRAM_b_data_in_low(2),
      dinb(1) => BRAM_b_data_in_low(1),
      dinb(0) => BRAM_b_data_in_low(0),
      douta(7) => BRAM_output(7),
      douta(6) => BRAM_output(6),
      douta(5) => BRAM_output(5),
      douta(4) => BRAM_output(4),
      douta(3) => BRAM_output(3),
      douta(2) => BRAM_output(2),
      douta(1) => BRAM_output(1),
      douta(0) => BRAM_output(0),
      doutb(7) => BRAM_b_output(7),
      doutb(6) => BRAM_b_output(6),
      doutb(5) => BRAM_b_output(5),
      doutb(4) => BRAM_b_output(4),
      doutb(3) => BRAM_b_output(3),
      doutb(2) => BRAM_b_output(2),
      doutb(1) => BRAM_b_output(1),
      doutb(0) => BRAM_b_output(0)
    );

end Structure;

-- synthesis translate_on
