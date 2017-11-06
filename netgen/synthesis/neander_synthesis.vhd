--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: neander_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 06 15:03:17 2017
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
    alt_view : in STD_LOGIC := 'X'; 
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
  signal DECODE_Mrom_instruction_output11_28 : STD_LOGIC; 
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
  signal Mcompar_clock200hz_cmp_lt0000_cy_0_rt_40 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_cy_2_rt_43 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_cy_4_rt_46 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_lut_1_Q_49 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_lut_3_Q_50 : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_lut_5_Q : STD_LOGIC; 
  signal Mcompar_clock200hz_cmp_lt0000_lut_6_Q_52 : STD_LOGIC; 
  signal Mcount_conta200_cy_10_rt_55 : STD_LOGIC; 
  signal Mcount_conta200_cy_11_rt_57 : STD_LOGIC; 
  signal Mcount_conta200_cy_12_rt_59 : STD_LOGIC; 
  signal Mcount_conta200_cy_13_rt_61 : STD_LOGIC; 
  signal Mcount_conta200_cy_14_rt_63 : STD_LOGIC; 
  signal Mcount_conta200_cy_1_rt_65 : STD_LOGIC; 
  signal Mcount_conta200_cy_2_rt_67 : STD_LOGIC; 
  signal Mcount_conta200_cy_3_rt_69 : STD_LOGIC; 
  signal Mcount_conta200_cy_4_rt_71 : STD_LOGIC; 
  signal Mcount_conta200_cy_5_rt_73 : STD_LOGIC; 
  signal Mcount_conta200_cy_6_rt_75 : STD_LOGIC; 
  signal Mcount_conta200_cy_7_rt_77 : STD_LOGIC; 
  signal Mcount_conta200_cy_8_rt_79 : STD_LOGIC; 
  signal Mcount_conta200_cy_9_rt_81 : STD_LOGIC; 
  signal Mcount_conta200_xor_15_rt_83 : STD_LOGIC; 
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
  signal N104 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N1121 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N1131 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N1151 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N1161 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N1171 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N1191 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N1221 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
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
  signal ResetMain_IBUF_262 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Start_IBUF_286 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f5_302 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f51 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f52 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f53 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f54 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f55 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f56 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_3_f57 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_310 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_41_311 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_42_312 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_43_313 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_44_314 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_45_315 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_46_316 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_47_317 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f5_318 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f51 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f52 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f53 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f54 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f55 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f56 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_4_f57 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_5_326 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_51_327 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_510_328 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_511_329 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_512_330 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_513_331 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_514_332 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_515_333 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_52_334 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_53_335 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_54_336 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_55_337 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_56_338 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_57_339 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_58_340 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_59_341 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_6_342 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_61_343 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_62_344 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_63_345 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_64_346 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_65_347 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_66_348 : STD_LOGIC; 
  signal UAL_Mmux_output_signal_67_349 : STD_LOGIC; 
  signal UAL_nz_0_2_350 : STD_LOGIC; 
  signal UAL_output_signal_0_1 : STD_LOGIC; 
  signal UAL_output_signal_mux0000 : STD_LOGIC; 
  signal UnidadeControle_N13 : STD_LOGIC; 
  signal UnidadeControle_cargaAC_371 : STD_LOGIC; 
  signal UnidadeControle_cargaAC_or0000 : STD_LOGIC; 
  signal UnidadeControle_cargaNZ_373 : STD_LOGIC; 
  signal UnidadeControle_cargaNZ_or0000 : STD_LOGIC; 
  signal UnidadeControle_cargaPC_375 : STD_LOGIC; 
  signal UnidadeControle_cargaPC_or0000 : STD_LOGIC; 
  signal UnidadeControle_cargaRDM_377 : STD_LOGIC; 
  signal UnidadeControle_cargaRDM_mux0000 : STD_LOGIC; 
  signal UnidadeControle_cargaRDM_or0000 : STD_LOGIC; 
  signal UnidadeControle_cargaRDM_or000013_380 : STD_LOGIC; 
  signal UnidadeControle_cargaRDM_or00004_381 : STD_LOGIC; 
  signal UnidadeControle_cargaREM_382 : STD_LOGIC; 
  signal UnidadeControle_cargaREM_mux0000 : STD_LOGIC; 
  signal UnidadeControle_cargaREM_or0000 : STD_LOGIC; 
  signal UnidadeControle_cargaREM_or000011_385 : STD_LOGIC; 
  signal UnidadeControle_cargaREM_or00004_386 : STD_LOGIC; 
  signal UnidadeControle_cargaRI_387 : STD_LOGIC; 
  signal UnidadeControle_cargaRI_or0000_388 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_409 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_mux0000 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_or0000 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_or000011 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_or0000111_413 : STD_LOGIC; 
  signal UnidadeControle_incrementaPC_or000013 : STD_LOGIC; 
  signal UnidadeControle_next_st_0_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_11_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_12_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_13_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_15_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_16_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_17_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_18_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_1_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_6_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_9_Q : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_0_21_426 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_0_28_427 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_0_4_428 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_18_26_429 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_18_43_430 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_18_70_431 : STD_LOGIC; 
  signal UnidadeControle_next_st_mux0004_18_83_432 : STD_LOGIC; 
  signal UnidadeControle_prox_passo_feito_0_mux0000 : STD_LOGIC; 
  signal UnidadeControle_selRDM_435 : STD_LOGIC; 
  signal UnidadeControle_selRDM_or0000 : STD_LOGIC; 
  signal UnidadeControle_selREM_437 : STD_LOGIC; 
  signal UnidadeControle_selREM_or0000 : STD_LOGIC; 
  signal UnidadeControle_selULA_mux0007_0_5_443 : STD_LOGIC; 
  signal UnidadeControle_selULA_mux0007_1_16_445 : STD_LOGIC; 
  signal UnidadeControle_selULA_mux0007_1_7_446 : STD_LOGIC; 
  signal UnidadeControle_stop_448 : STD_LOGIC; 
  signal UnidadeControle_stop_or0000 : STD_LOGIC; 
  signal UnidadeControle_writeMEM_0_or0000 : STD_LOGIC; 
  signal alt_view_IBUF_454 : STD_LOGIC; 
  signal clkMain_BUFGP_456 : STD_LOGIC; 
  signal clock200hz_457 : STD_LOGIC; 
  signal clock200hz_not0003 : STD_LOGIC; 
  signal ctrl_FSM_FFd1_475 : STD_LOGIC; 
  signal ctrl_FSM_FFd2_476 : STD_LOGIC; 
  signal ctrl_FSM_FFd3_477 : STD_LOGIC; 
  signal ctrl_FSM_FFd4_478 : STD_LOGIC; 
  signal ctrl_FSM_FFd4_1_479 : STD_LOGIC; 
  signal display_0_487 : STD_LOGIC; 
  signal display_1_488 : STD_LOGIC; 
  signal display_2_489 : STD_LOGIC; 
  signal display_3_490 : STD_LOGIC; 
  signal display_4_491 : STD_LOGIC; 
  signal display_5_492 : STD_LOGIC; 
  signal display_6_493 : STD_LOGIC; 
  signal display_cmp_eq0013 : STD_LOGIC; 
  signal display_cmp_eq0061 : STD_LOGIC; 
  signal display_mux0017_0_Q : STD_LOGIC; 
  signal display_mux0017_0_142_497 : STD_LOGIC; 
  signal display_mux0017_0_195_498 : STD_LOGIC; 
  signal display_mux0017_0_223_499 : STD_LOGIC; 
  signal display_mux0017_0_235_500 : STD_LOGIC; 
  signal display_mux0017_0_24_501 : STD_LOGIC; 
  signal display_mux0017_0_263_502 : STD_LOGIC; 
  signal display_mux0017_0_321_503 : STD_LOGIC; 
  signal display_mux0017_0_49_504 : STD_LOGIC; 
  signal display_mux0017_0_84_505 : STD_LOGIC; 
  signal display_mux0017_1_122_506 : STD_LOGIC; 
  signal display_mux0017_1_145_507 : STD_LOGIC; 
  signal display_mux0017_1_151_508 : STD_LOGIC; 
  signal display_mux0017_1_16_509 : STD_LOGIC; 
  signal display_mux0017_1_190_510 : STD_LOGIC; 
  signal display_mux0017_1_202 : STD_LOGIC; 
  signal display_mux0017_1_37_512 : STD_LOGIC; 
  signal display_mux0017_1_46_513 : STD_LOGIC; 
  signal display_mux0017_1_52_514 : STD_LOGIC; 
  signal display_mux0017_1_64_515 : STD_LOGIC; 
  signal display_mux0017_1_66_516 : STD_LOGIC; 
  signal display_mux0017_2_Q : STD_LOGIC; 
  signal display_mux0017_2_109_518 : STD_LOGIC; 
  signal display_mux0017_2_160_519 : STD_LOGIC; 
  signal display_mux0017_2_212_520 : STD_LOGIC; 
  signal display_mux0017_2_246_521 : STD_LOGIC; 
  signal display_mux0017_2_26_522 : STD_LOGIC; 
  signal display_mux0017_2_265_523 : STD_LOGIC; 
  signal display_mux0017_2_304_524 : STD_LOGIC; 
  signal display_mux0017_2_355_525 : STD_LOGIC; 
  signal display_mux0017_2_60_526 : STD_LOGIC; 
  signal display_mux0017_3_107_527 : STD_LOGIC; 
  signal display_mux0017_3_1113_528 : STD_LOGIC; 
  signal display_mux0017_3_149_529 : STD_LOGIC; 
  signal display_mux0017_3_157_530 : STD_LOGIC; 
  signal display_mux0017_3_21_531 : STD_LOGIC; 
  signal display_mux0017_3_2113_532 : STD_LOGIC; 
  signal display_mux0017_3_2121_533 : STD_LOGIC; 
  signal display_mux0017_3_262_534 : STD_LOGIC; 
  signal display_mux0017_3_289_535 : STD_LOGIC; 
  signal display_mux0017_3_299_536 : STD_LOGIC; 
  signal display_mux0017_3_366_537 : STD_LOGIC; 
  signal display_mux0017_3_378 : STD_LOGIC; 
  signal display_mux0017_3_44_539 : STD_LOGIC; 
  signal display_mux0017_3_71_540 : STD_LOGIC; 
  signal display_mux0017_4_133_541 : STD_LOGIC; 
  signal display_mux0017_4_178_542 : STD_LOGIC; 
  signal display_mux0017_4_209_543 : STD_LOGIC; 
  signal display_mux0017_4_21_544 : STD_LOGIC; 
  signal display_mux0017_4_221_545 : STD_LOGIC; 
  signal display_mux0017_4_254_546 : STD_LOGIC; 
  signal display_mux0017_4_297_547 : STD_LOGIC; 
  signal display_mux0017_4_319_548 : STD_LOGIC; 
  signal display_mux0017_4_331 : STD_LOGIC; 
  signal display_mux0017_4_49_550 : STD_LOGIC; 
  signal display_mux0017_4_90_551 : STD_LOGIC; 
  signal display_mux0017_4_98_552 : STD_LOGIC; 
  signal display_mux0017_5_Q : STD_LOGIC; 
  signal display_mux0017_5_136_554 : STD_LOGIC; 
  signal display_mux0017_5_147_555 : STD_LOGIC; 
  signal display_mux0017_5_177_556 : STD_LOGIC; 
  signal display_mux0017_5_22_557 : STD_LOGIC; 
  signal display_mux0017_5_240_558 : STD_LOGIC; 
  signal display_mux0017_5_280_559 : STD_LOGIC; 
  signal display_mux0017_5_302_560 : STD_LOGIC; 
  signal display_mux0017_5_349_561 : STD_LOGIC; 
  signal display_mux0017_5_390_562 : STD_LOGIC; 
  signal display_mux0017_5_76_563 : STD_LOGIC; 
  signal display_mux0017_6_100_564 : STD_LOGIC; 
  signal display_mux0017_6_139_565 : STD_LOGIC; 
  signal display_mux0017_6_183_566 : STD_LOGIC; 
  signal display_mux0017_6_210_567 : STD_LOGIC; 
  signal display_mux0017_6_226_568 : STD_LOGIC; 
  signal display_mux0017_6_298_569 : STD_LOGIC; 
  signal display_mux0017_6_328_570 : STD_LOGIC; 
  signal display_mux0017_6_340 : STD_LOGIC; 
  signal display_mux0017_6_48_572 : STD_LOGIC; 
  signal display_mux0017_6_84_573 : STD_LOGIC; 
  signal display_or0000 : STD_LOGIC; 
  signal ender_high_BUFGP_576 : STD_LOGIC; 
  signal ender_low_BUFGP_578 : STD_LOGIC; 
  signal passo_a_passo_IBUF_580 : STD_LOGIC; 
  signal prox_passo_IBUF_582 : STD_LOGIC; 
  signal selDisplay_0_587 : STD_LOGIC; 
  signal selDisplay_1_588 : STD_LOGIC; 
  signal selDisplay_2_589 : STD_LOGIC; 
  signal selDisplay_3_590 : STD_LOGIC; 
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
  signal UnidadeControle_prox_passo_feito : STD_LOGIC_VECTOR ( 0 downto 0 ); 
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
      C => clkMain_BUFGP_456,
      CE => Mcompar_clock200hz_cmp_lt0000_cy(6),
      D => clock200hz_not0003,
      Q => clock200hz_457
    );
  display_1 : FD
    port map (
      C => clock200hz_457,
      D => display_mux0017_5_Q,
      Q => display_1_488
    );
  display_4 : FD
    port map (
      C => clock200hz_457,
      D => display_mux0017_2_Q,
      Q => display_4_491
    );
  display_6 : FD
    port map (
      C => clock200hz_457,
      D => display_mux0017_0_Q,
      Q => display_6_493
    );
  NZ_output_signal_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaNZ_373,
      CLR => ResetMain_IBUF_262,
      D => ULA_NZ_output(1),
      Q => NZ_output_signal(1)
    );
  NZ_output_signal_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaNZ_373,
      CLR => ResetMain_IBUF_262,
      D => ULA_NZ_output(0),
      Q => NZ_output_signal(0)
    );
  Reg_PC_Mcount_output_signal_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_cargaPC_375,
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
      I0 => UnidadeControle_cargaPC_375,
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
      I0 => UnidadeControle_cargaPC_375,
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
      I0 => UnidadeControle_cargaPC_375,
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
      I0 => UnidadeControle_cargaPC_375,
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
      I0 => UnidadeControle_cargaPC_375,
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
      I0 => UnidadeControle_cargaPC_375,
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
      I0 => UnidadeControle_cargaPC_375,
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
      C => ender_low_BUFGP_578,
      D => Result(1),
      Q => BRAM_b_low_input(1)
    );
  BRAM_b_low_input_2 : FD
    port map (
      C => ender_low_BUFGP_578,
      D => Result(2),
      Q => BRAM_b_low_input(2)
    );
  BRAM_b_low_input_3 : FD
    port map (
      C => ender_low_BUFGP_578,
      D => Result(3),
      Q => BRAM_b_low_input(3)
    );
  Reg_PC_output_signal_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF_262,
      D => Reg_PC_Mcount_output_signal,
      Q => Reg_PC_output_signal(0)
    );
  Reg_PC_output_signal_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF_262,
      D => Reg_PC_Mcount_output_signal1,
      Q => Reg_PC_output_signal(1)
    );
  Reg_PC_output_signal_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF_262,
      D => Reg_PC_Mcount_output_signal2,
      Q => Reg_PC_output_signal(2)
    );
  Reg_PC_output_signal_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF_262,
      D => Reg_PC_Mcount_output_signal3,
      Q => Reg_PC_output_signal(3)
    );
  Reg_PC_output_signal_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF_262,
      D => Reg_PC_Mcount_output_signal4,
      Q => Reg_PC_output_signal(4)
    );
  Reg_PC_output_signal_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF_262,
      D => Reg_PC_Mcount_output_signal5,
      Q => Reg_PC_output_signal(5)
    );
  Reg_PC_output_signal_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF_262,
      D => Reg_PC_Mcount_output_signal6,
      Q => Reg_PC_output_signal(6)
    );
  Reg_PC_output_signal_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => Reg_PC_output_signal_not0001,
      CLR => ResetMain_IBUF_262,
      D => Reg_PC_Mcount_output_signal7,
      Q => Reg_PC_output_signal(7)
    );
  BRAM_b_high_input_1 : FD
    port map (
      C => ender_high_BUFGP_576,
      D => Result_1_2,
      Q => BRAM_b_high_input(1)
    );
  BRAM_b_high_input_2 : FD
    port map (
      C => ender_high_BUFGP_576,
      D => Result_2_2,
      Q => BRAM_b_high_input(2)
    );
  BRAM_b_high_input_3 : FD
    port map (
      C => ender_high_BUFGP_576,
      D => Result_3_2,
      Q => BRAM_b_high_input(3)
    );
  conta200_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result_0_1,
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(0)
    );
  conta200_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result_1_1,
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(1)
    );
  conta200_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result_2_1,
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(2)
    );
  conta200_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result_3_1,
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(3)
    );
  conta200_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(4),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(4)
    );
  conta200_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(5),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(5)
    );
  conta200_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(6),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(6)
    );
  conta200_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(7),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(7)
    );
  conta200_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(8),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(8)
    );
  conta200_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(9),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(9)
    );
  conta200_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(10),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(10)
    );
  conta200_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(11),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(11)
    );
  conta200_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(12),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(12)
    );
  conta200_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(13),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(13)
    );
  conta200_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(14),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(14)
    );
  conta200_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => Result(15),
      R => Mcompar_clock200hz_cmp_lt0000_cy(6),
      Q => conta200(15)
    );
  Mcompar_clock200hz_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_clock200hz_cmp_lt0000_cy_0_rt_40,
      O => Mcompar_clock200hz_cmp_lt0000_cy(0)
    );
  Mcompar_clock200hz_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => conta200(3),
      I1 => conta200(4),
      O => Mcompar_clock200hz_cmp_lt0000_lut_1_Q_49
    );
  Mcompar_clock200hz_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_clock200hz_cmp_lt0000_lut_1_Q_49,
      O => Mcompar_clock200hz_cmp_lt0000_cy(1)
    );
  Mcompar_clock200hz_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(1),
      DI => N0,
      S => Mcompar_clock200hz_cmp_lt0000_cy_2_rt_43,
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
      O => Mcompar_clock200hz_cmp_lt0000_lut_3_Q_50
    );
  Mcompar_clock200hz_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_clock200hz_cmp_lt0000_lut_3_Q_50,
      O => Mcompar_clock200hz_cmp_lt0000_cy(3)
    );
  Mcompar_clock200hz_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(3),
      DI => N0,
      S => Mcompar_clock200hz_cmp_lt0000_cy_4_rt_46,
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
      O => Mcompar_clock200hz_cmp_lt0000_lut_6_Q_52
    );
  Mcompar_clock200hz_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_clock200hz_cmp_lt0000_cy(5),
      DI => N0,
      S => Mcompar_clock200hz_cmp_lt0000_lut_6_Q_52,
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
      S => Mcount_conta200_cy_1_rt_65,
      O => Mcount_conta200_cy(1)
    );
  Mcount_conta200_xor_1_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(0),
      LI => Mcount_conta200_cy_1_rt_65,
      O => Result_1_1
    );
  Mcount_conta200_cy_2_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(1),
      DI => N0,
      S => Mcount_conta200_cy_2_rt_67,
      O => Mcount_conta200_cy(2)
    );
  Mcount_conta200_xor_2_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(1),
      LI => Mcount_conta200_cy_2_rt_67,
      O => Result_2_1
    );
  Mcount_conta200_cy_3_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(2),
      DI => N0,
      S => Mcount_conta200_cy_3_rt_69,
      O => Mcount_conta200_cy(3)
    );
  Mcount_conta200_xor_3_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(2),
      LI => Mcount_conta200_cy_3_rt_69,
      O => Result_3_1
    );
  Mcount_conta200_cy_4_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(3),
      DI => N0,
      S => Mcount_conta200_cy_4_rt_71,
      O => Mcount_conta200_cy(4)
    );
  Mcount_conta200_xor_4_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(3),
      LI => Mcount_conta200_cy_4_rt_71,
      O => Result(4)
    );
  Mcount_conta200_cy_5_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(4),
      DI => N0,
      S => Mcount_conta200_cy_5_rt_73,
      O => Mcount_conta200_cy(5)
    );
  Mcount_conta200_xor_5_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(4),
      LI => Mcount_conta200_cy_5_rt_73,
      O => Result(5)
    );
  Mcount_conta200_cy_6_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(5),
      DI => N0,
      S => Mcount_conta200_cy_6_rt_75,
      O => Mcount_conta200_cy(6)
    );
  Mcount_conta200_xor_6_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(5),
      LI => Mcount_conta200_cy_6_rt_75,
      O => Result(6)
    );
  Mcount_conta200_cy_7_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(6),
      DI => N0,
      S => Mcount_conta200_cy_7_rt_77,
      O => Mcount_conta200_cy(7)
    );
  Mcount_conta200_xor_7_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(6),
      LI => Mcount_conta200_cy_7_rt_77,
      O => Result(7)
    );
  Mcount_conta200_cy_8_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(7),
      DI => N0,
      S => Mcount_conta200_cy_8_rt_79,
      O => Mcount_conta200_cy(8)
    );
  Mcount_conta200_xor_8_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(7),
      LI => Mcount_conta200_cy_8_rt_79,
      O => Result(8)
    );
  Mcount_conta200_cy_9_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(8),
      DI => N0,
      S => Mcount_conta200_cy_9_rt_81,
      O => Mcount_conta200_cy(9)
    );
  Mcount_conta200_xor_9_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(8),
      LI => Mcount_conta200_cy_9_rt_81,
      O => Result(9)
    );
  Mcount_conta200_cy_10_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(9),
      DI => N0,
      S => Mcount_conta200_cy_10_rt_55,
      O => Mcount_conta200_cy(10)
    );
  Mcount_conta200_xor_10_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(9),
      LI => Mcount_conta200_cy_10_rt_55,
      O => Result(10)
    );
  Mcount_conta200_cy_11_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(10),
      DI => N0,
      S => Mcount_conta200_cy_11_rt_57,
      O => Mcount_conta200_cy(11)
    );
  Mcount_conta200_xor_11_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(10),
      LI => Mcount_conta200_cy_11_rt_57,
      O => Result(11)
    );
  Mcount_conta200_cy_12_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(11),
      DI => N0,
      S => Mcount_conta200_cy_12_rt_59,
      O => Mcount_conta200_cy(12)
    );
  Mcount_conta200_xor_12_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(11),
      LI => Mcount_conta200_cy_12_rt_59,
      O => Result(12)
    );
  Mcount_conta200_cy_13_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(12),
      DI => N0,
      S => Mcount_conta200_cy_13_rt_61,
      O => Mcount_conta200_cy(13)
    );
  Mcount_conta200_xor_13_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(12),
      LI => Mcount_conta200_cy_13_rt_61,
      O => Result(13)
    );
  Mcount_conta200_cy_14_Q : MUXCY
    port map (
      CI => Mcount_conta200_cy(13),
      DI => N0,
      S => Mcount_conta200_cy_14_rt_63,
      O => Mcount_conta200_cy(14)
    );
  Mcount_conta200_xor_14_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(13),
      LI => Mcount_conta200_cy_14_rt_63,
      O => Result(14)
    );
  Mcount_conta200_xor_15_Q : XORCY
    port map (
      CI => Mcount_conta200_cy(14),
      LI => Mcount_conta200_xor_15_rt_83,
      O => Result(15)
    );
  ctrl_FSM_FFd4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => clock200hz_457,
      D => ctrl_FSM_FFd1_475,
      Q => ctrl_FSM_FFd4_478
    );
  ctrl_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock200hz_457,
      D => ctrl_FSM_FFd4_478,
      Q => ctrl_FSM_FFd3_477
    );
  ctrl_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock200hz_457,
      D => ctrl_FSM_FFd3_477,
      Q => ctrl_FSM_FFd2_476
    );
  ctrl_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock200hz_457,
      D => ctrl_FSM_FFd2_476,
      Q => ctrl_FSM_FFd1_475
    );
  Reg_RI_output_signal_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRI_387,
      CLR => ResetMain_IBUF_262,
      D => Reg_RDM_output_signal(7),
      Q => Reg_RI_output_signal(7)
    );
  Reg_RI_output_signal_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRI_387,
      CLR => ResetMain_IBUF_262,
      D => Reg_RDM_output_signal(6),
      Q => Reg_RI_output_signal(6)
    );
  Reg_RI_output_signal_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRI_387,
      CLR => ResetMain_IBUF_262,
      D => Reg_RDM_output_signal(5),
      Q => Reg_RI_output_signal(5)
    );
  Reg_RI_output_signal_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRI_387,
      CLR => ResetMain_IBUF_262,
      D => Reg_RDM_output_signal(4),
      Q => Reg_RI_output_signal(4)
    );
  Reg_REM_output_signal_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaREM_382,
      CLR => ResetMain_IBUF_262,
      D => Mux1_output(7),
      Q => Reg_REM_output_signal(7)
    );
  Reg_REM_output_signal_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaREM_382,
      CLR => ResetMain_IBUF_262,
      D => Mux1_output(6),
      Q => Reg_REM_output_signal(6)
    );
  Reg_REM_output_signal_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaREM_382,
      CLR => ResetMain_IBUF_262,
      D => Mux1_output(5),
      Q => Reg_REM_output_signal(5)
    );
  Reg_REM_output_signal_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaREM_382,
      CLR => ResetMain_IBUF_262,
      D => Mux1_output(4),
      Q => Reg_REM_output_signal(4)
    );
  Reg_REM_output_signal_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaREM_382,
      CLR => ResetMain_IBUF_262,
      D => Mux1_output(3),
      Q => Reg_REM_output_signal(3)
    );
  Reg_REM_output_signal_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaREM_382,
      CLR => ResetMain_IBUF_262,
      D => Mux1_output(2),
      Q => Reg_REM_output_signal(2)
    );
  Reg_REM_output_signal_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaREM_382,
      CLR => ResetMain_IBUF_262,
      D => Mux1_output(1),
      Q => Reg_REM_output_signal(1)
    );
  Reg_REM_output_signal_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaREM_382,
      CLR => ResetMain_IBUF_262,
      D => Mux1_output(0),
      Q => Reg_REM_output_signal(0)
    );
  Reg_RDM_output_signal_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRDM_377,
      CLR => ResetMain_IBUF_262,
      D => Mux2_output(7),
      Q => Reg_RDM_output_signal(7)
    );
  Reg_RDM_output_signal_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRDM_377,
      CLR => ResetMain_IBUF_262,
      D => Mux2_output(6),
      Q => Reg_RDM_output_signal(6)
    );
  Reg_RDM_output_signal_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRDM_377,
      CLR => ResetMain_IBUF_262,
      D => Mux2_output(5),
      Q => Reg_RDM_output_signal(5)
    );
  Reg_RDM_output_signal_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRDM_377,
      CLR => ResetMain_IBUF_262,
      D => Mux2_output(4),
      Q => Reg_RDM_output_signal(4)
    );
  Reg_RDM_output_signal_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRDM_377,
      CLR => ResetMain_IBUF_262,
      D => Mux2_output(3),
      Q => Reg_RDM_output_signal(3)
    );
  Reg_RDM_output_signal_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRDM_377,
      CLR => ResetMain_IBUF_262,
      D => Mux2_output(2),
      Q => Reg_RDM_output_signal(2)
    );
  Reg_RDM_output_signal_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRDM_377,
      CLR => ResetMain_IBUF_262,
      D => Mux2_output(1),
      Q => Reg_RDM_output_signal(1)
    );
  Reg_RDM_output_signal_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaRDM_377,
      CLR => ResetMain_IBUF_262,
      D => Mux2_output(0),
      Q => Reg_RDM_output_signal(0)
    );
  Reg_AC_output_signal_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaAC_371,
      CLR => ResetMain_IBUF_262,
      D => ULA_NZ_output(1),
      Q => Reg_AC_output_signal(7)
    );
  Reg_AC_output_signal_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaAC_371,
      CLR => ResetMain_IBUF_262,
      D => ULA_output(6),
      Q => Reg_AC_output_signal(6)
    );
  Reg_AC_output_signal_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaAC_371,
      CLR => ResetMain_IBUF_262,
      D => ULA_output(5),
      Q => Reg_AC_output_signal(5)
    );
  Reg_AC_output_signal_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaAC_371,
      CLR => ResetMain_IBUF_262,
      D => ULA_output(4),
      Q => Reg_AC_output_signal(4)
    );
  Reg_AC_output_signal_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaAC_371,
      CLR => ResetMain_IBUF_262,
      D => ULA_output(3),
      Q => Reg_AC_output_signal(3)
    );
  Reg_AC_output_signal_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaAC_371,
      CLR => ResetMain_IBUF_262,
      D => ULA_output(2),
      Q => Reg_AC_output_signal(2)
    );
  Reg_AC_output_signal_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaAC_371,
      CLR => ResetMain_IBUF_262,
      D => ULA_output(1),
      Q => Reg_AC_output_signal(1)
    );
  Reg_AC_output_signal_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CE => UnidadeControle_cargaAC_371,
      CLR => ResetMain_IBUF_262,
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
      O => UAL_Mmux_output_signal_4_310
    );
  UAL_Mmux_output_signal_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(7),
      I2 => UAL_output_signal_addsub0000(7),
      O => UAL_Mmux_output_signal_5_326
    );
  UAL_Mmux_output_signal_3_f5 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_5_326,
      I1 => UAL_Mmux_output_signal_4_310,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f5_302
    );
  UAL_Mmux_output_signal_4_f5 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_6_342,
      I1 => UAL_Mmux_output_signal_51_327,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_4_f5_318
    );
  UAL_Mmux_output_signal_2_f6 : MUXF6
    port map (
      I0 => UAL_Mmux_output_signal_4_f5_318,
      I1 => UAL_Mmux_output_signal_3_f5_302,
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
      O => UAL_Mmux_output_signal_41_311
    );
  UAL_Mmux_output_signal_52 : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(0),
      I2 => UAL_output_signal_addsub0000(0),
      O => UAL_Mmux_output_signal_52_334
    );
  UAL_Mmux_output_signal_3_f5_0 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_52_334,
      I1 => UAL_Mmux_output_signal_41_311,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f51
    );
  UAL_Mmux_output_signal_4_f5_0 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_61_343,
      I1 => UAL_Mmux_output_signal_53_335,
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
      O => UAL_Mmux_output_signal_42_312
    );
  UAL_Mmux_output_signal_54 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(1),
      I2 => UAL_output_signal_addsub0000(1),
      O => UAL_Mmux_output_signal_54_336
    );
  UAL_Mmux_output_signal_3_f5_1 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_54_336,
      I1 => UAL_Mmux_output_signal_42_312,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f52
    );
  UAL_Mmux_output_signal_4_f5_1 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_62_344,
      I1 => UAL_Mmux_output_signal_55_337,
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
      O => UAL_Mmux_output_signal_43_313
    );
  UAL_Mmux_output_signal_56 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(2),
      I2 => UAL_output_signal_addsub0000(2),
      O => UAL_Mmux_output_signal_56_338
    );
  UAL_Mmux_output_signal_3_f5_2 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_56_338,
      I1 => UAL_Mmux_output_signal_43_313,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f53
    );
  UAL_Mmux_output_signal_4_f5_2 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_63_345,
      I1 => UAL_Mmux_output_signal_57_339,
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
      O => UAL_Mmux_output_signal_44_314
    );
  UAL_Mmux_output_signal_58 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(3),
      I2 => UAL_output_signal_addsub0000(3),
      O => UAL_Mmux_output_signal_58_340
    );
  UAL_Mmux_output_signal_3_f5_3 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_58_340,
      I1 => UAL_Mmux_output_signal_44_314,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f54
    );
  UAL_Mmux_output_signal_4_f5_3 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_64_346,
      I1 => UAL_Mmux_output_signal_59_341,
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
      O => UAL_Mmux_output_signal_45_315
    );
  UAL_Mmux_output_signal_510 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(4),
      I2 => UAL_output_signal_addsub0000(4),
      O => UAL_Mmux_output_signal_510_328
    );
  UAL_Mmux_output_signal_3_f5_4 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_510_328,
      I1 => UAL_Mmux_output_signal_45_315,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f55
    );
  UAL_Mmux_output_signal_4_f5_4 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_65_347,
      I1 => UAL_Mmux_output_signal_511_329,
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
      O => UAL_Mmux_output_signal_46_316
    );
  UAL_Mmux_output_signal_512 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(5),
      I2 => UAL_output_signal_addsub0000(5),
      O => UAL_Mmux_output_signal_512_330
    );
  UAL_Mmux_output_signal_3_f5_5 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_512_330,
      I1 => UAL_Mmux_output_signal_46_316,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f56
    );
  UAL_Mmux_output_signal_4_f5_5 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_66_348,
      I1 => UAL_Mmux_output_signal_513_331,
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
      O => UAL_Mmux_output_signal_47_317
    );
  UAL_Mmux_output_signal_514 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selULA(0),
      I1 => Reg_RDM_output_signal(6),
      I2 => UAL_output_signal_addsub0000(6),
      O => UAL_Mmux_output_signal_514_332
    );
  UAL_Mmux_output_signal_3_f5_6 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_514_332,
      I1 => UAL_Mmux_output_signal_47_317,
      S => UnidadeControle_selULA(1),
      O => UAL_Mmux_output_signal_3_f57
    );
  UAL_Mmux_output_signal_4_f5_6 : MUXF5
    port map (
      I0 => UAL_Mmux_output_signal_67_349,
      I1 => UAL_Mmux_output_signal_515_333,
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
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_current_st(1),
      Q => UnidadeControle_current_st(2)
    );
  UnidadeControle_current_st_0 : FDC
    generic map(
      INIT => '1'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_0_Q,
      Q => UnidadeControle_current_st(0)
    );
  UnidadeControle_current_st_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_1_Q,
      Q => UnidadeControle_current_st(1)
    );
  UnidadeControle_current_st_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_current_st(4),
      Q => UnidadeControle_current_st(5)
    );
  UnidadeControle_current_st_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_current_st(2),
      Q => UnidadeControle_current_st(3)
    );
  UnidadeControle_current_st_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_current_st(3),
      Q => UnidadeControle_current_st(4)
    );
  UnidadeControle_current_st_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_current_st(7),
      Q => UnidadeControle_current_st(8)
    );
  UnidadeControle_current_st_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_6_Q,
      Q => UnidadeControle_current_st(6)
    );
  UnidadeControle_current_st_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_current_st(6),
      Q => UnidadeControle_current_st(7)
    );
  UnidadeControle_current_st_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_9_Q,
      Q => UnidadeControle_current_st(9)
    );
  UnidadeControle_current_st_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_current_st(9),
      Q => UnidadeControle_current_st(10)
    );
  UnidadeControle_current_st_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_13_Q,
      Q => UnidadeControle_current_st(13)
    );
  UnidadeControle_current_st_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_11_Q,
      Q => UnidadeControle_current_st(11)
    );
  UnidadeControle_current_st_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_12_Q,
      Q => UnidadeControle_current_st(12)
    );
  UnidadeControle_current_st_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_current_st(13),
      Q => UnidadeControle_current_st(14)
    );
  UnidadeControle_current_st_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_15_Q,
      Q => UnidadeControle_current_st(15)
    );
  UnidadeControle_current_st_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_18_Q,
      Q => UnidadeControle_current_st(18)
    );
  UnidadeControle_current_st_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_16_Q,
      Q => UnidadeControle_current_st(16)
    );
  UnidadeControle_current_st_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      CLR => ResetMain_IBUF_262,
      D => UnidadeControle_next_st_17_Q,
      Q => UnidadeControle_current_st(17)
    );
  UnidadeControle_current_st_19 : FDP
    generic map(
      INIT => '0'
    )
    port map (
      C => clkMain_BUFGP_456,
      D => N0,
      PRE => ResetMain_IBUF_262,
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
  UnidadeControle_prox_passo_feito_0 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => UnidadeControle_prox_passo_feito_0_mux0000,
      G => UnidadeControle_current_st(0),
      Q => UnidadeControle_prox_passo_feito(0)
    );
  UnidadeControle_cargaPC : LD
    port map (
      D => UnidadeControle_current_st(15),
      G => UnidadeControle_cargaPC_or0000,
      Q => UnidadeControle_cargaPC_375
    );
  UnidadeControle_cargaNZ : LD
    port map (
      D => UnidadeControle_current_st(12),
      G => UnidadeControle_cargaNZ_or0000,
      Q => UnidadeControle_cargaNZ_373
    );
  UnidadeControle_cargaRI : LD
    port map (
      D => UnidadeControle_current_st(4),
      G => UnidadeControle_cargaRI_or0000_388,
      Q => UnidadeControle_cargaRI_387
    );
  UnidadeControle_cargaRDM : LD
    port map (
      D => UnidadeControle_cargaRDM_mux0000,
      G => UnidadeControle_cargaRDM_or0000,
      Q => UnidadeControle_cargaRDM_377
    );
  UnidadeControle_cargaREM : LD
    port map (
      D => UnidadeControle_cargaREM_mux0000,
      G => UnidadeControle_cargaREM_or0000,
      Q => UnidadeControle_cargaREM_382
    );
  UnidadeControle_incrementaPC : LD
    port map (
      D => UnidadeControle_incrementaPC_mux0000,
      G => UnidadeControle_incrementaPC_or0000,
      Q => UnidadeControle_incrementaPC_409
    );
  UnidadeControle_selRDM : LD
    port map (
      D => UnidadeControle_current_st(13),
      G => UnidadeControle_selRDM_or0000,
      Q => UnidadeControle_selRDM_435
    );
  UnidadeControle_selREM : LD
    port map (
      D => UnidadeControle_current_st(9),
      G => UnidadeControle_selREM_or0000,
      Q => UnidadeControle_selREM_437
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
      Q => UnidadeControle_cargaAC_371
    );
  UnidadeControle_stop : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => UnidadeControle_current_st(17),
      G => UnidadeControle_stop_or0000,
      Q => UnidadeControle_stop_448
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
  Reg_PC_output_signal_not00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => UnidadeControle_incrementaPC_409,
      I1 => UnidadeControle_cargaPC_375,
      O => Reg_PC_output_signal_not0001
    );
  Mrom_display_mux00161131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Reg_PC_output_signal(6),
      I1 => Reg_PC_output_signal(4),
      O => N122
    );
  Mrom_display_mux00151131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BRAM_b_high_input(2),
      I1 => BRAM_b_high_input(0),
      O => N119
    );
  display_mux0017_4_2611 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Reg_PC_output_signal(3),
      I1 => Reg_PC_output_signal(1),
      I2 => Reg_PC_output_signal(2),
      O => N116
    );
  display_mux0017_4_2511 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Reg_AC_output_signal(7),
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_AC_output_signal(6),
      O => N114
    );
  display_mux0017_4_2411 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Reg_AC_output_signal(3),
      I1 => Reg_AC_output_signal(1),
      I2 => Reg_AC_output_signal(2),
      O => N115
    );
  display_mux0017_4_1611 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => BRAM_b_low_input(3),
      I1 => BRAM_b_low_input(1),
      I2 => BRAM_b_low_input(2),
      O => N113
    );
  display_mux0017_4_1511 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => BRAM_b_output(7),
      I1 => BRAM_b_output(5),
      I2 => BRAM_b_output(6),
      O => N117
    );
  display_mux0017_4_1411 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => BRAM_b_output(3),
      I1 => BRAM_b_output(1),
      I2 => BRAM_b_output(2),
      O => N1121
    );
  display_mux0017_0_2311 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Reg_PC_output_signal(2),
      I1 => Reg_PC_output_signal(3),
      I2 => Reg_PC_output_signal(1),
      O => N1011
    );
  display_mux0017_0_2211 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Reg_AC_output_signal(6),
      I1 => Reg_AC_output_signal(7),
      I2 => Reg_AC_output_signal(5),
      O => N102
    );
  display_mux0017_0_1311 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => BRAM_b_low_input(2),
      I1 => BRAM_b_low_input(3),
      I2 => BRAM_b_low_input(1),
      O => N100
    );
  display_mux0017_0_1211 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => BRAM_b_output(6),
      I1 => BRAM_b_output(7),
      I2 => BRAM_b_output(5),
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
  DECODE_Mrom_instruction_output121 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_RI_output_signal(5),
      I1 => Reg_RI_output_signal(6),
      I2 => Reg_RI_output_signal(7),
      I3 => Reg_RI_output_signal(4),
      O => DECODE_Mrom_instruction_output12
    );
  DECODE_Mrom_instruction_output1111 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => Reg_RI_output_signal(7),
      I1 => Reg_RI_output_signal(4),
      I2 => Reg_RI_output_signal(6),
      I3 => Reg_RI_output_signal(5),
      O => DECODE_Mrom_instruction_output11_28
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
      O => UnidadeControle_cargaRI_or0000_388
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
      O => UnidadeControle_cargaREM_or00004_386
    );
  UnidadeControle_cargaREM_or000016 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => UnidadeControle_cargaREM_or00004_386,
      I1 => UnidadeControle_cargaREM_or000011_385,
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
      O => UnidadeControle_cargaRDM_or00004_381
    );
  UnidadeControle_cargaRDM_or000019 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => UnidadeControle_cargaRDM_or00004_381,
      I1 => UnidadeControle_cargaRDM_or000013_380,
      O => UnidadeControle_cargaRDM_or0000
    );
  UnidadeControle_prox_passo_feito_0_mux00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => passo_a_passo_IBUF_580,
      I1 => prox_passo_IBUF_582,
      O => UnidadeControle_prox_passo_feito_0_mux0000
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
  Mux1_output_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_437,
      I1 => Reg_PC_output_signal(7),
      I2 => Reg_RDM_output_signal(7),
      O => Mux1_output(7)
    );
  Mux1_output_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_437,
      I1 => Reg_PC_output_signal(6),
      I2 => Reg_RDM_output_signal(6),
      O => Mux1_output(6)
    );
  Mux1_output_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_437,
      I1 => Reg_PC_output_signal(5),
      I2 => Reg_RDM_output_signal(5),
      O => Mux1_output(5)
    );
  Mux1_output_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_437,
      I1 => Reg_PC_output_signal(4),
      I2 => Reg_RDM_output_signal(4),
      O => Mux1_output(4)
    );
  Mux1_output_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_437,
      I1 => Reg_PC_output_signal(3),
      I2 => Reg_RDM_output_signal(3),
      O => Mux1_output(3)
    );
  Mux1_output_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_437,
      I1 => Reg_PC_output_signal(2),
      I2 => Reg_RDM_output_signal(2),
      O => Mux1_output(2)
    );
  Mux1_output_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_437,
      I1 => Reg_PC_output_signal(1),
      I2 => Reg_RDM_output_signal(1),
      O => Mux1_output(1)
    );
  Mux1_output_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selREM_437,
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
  UnidadeControle_next_st_mux0004_1_1 : LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => UnidadeControle_current_st(0),
      I1 => passo_a_passo_IBUF_580,
      I2 => prox_passo_IBUF_582,
      I3 => UnidadeControle_prox_passo_feito(0),
      O => UnidadeControle_next_st_1_Q
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
  UnidadeControle_next_st_mux0004_11_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => UnidadeControle_current_st(10),
      I1 => DECODE_Mrom_instruction_output1,
      O => UnidadeControle_next_st_11_Q
    );
  UnidadeControle_next_st_mux0004_9_1 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => UnidadeControle_current_st(8),
      I1 => N148,
      I2 => DECODE_Mrom_instruction_output8,
      I3 => DECODE_Mrom_instruction_output9,
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
  DECODE_Mrom_instruction_output111 : LUT4
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
      O => UnidadeControle_next_st_mux0004_0_4_428
    );
  UnidadeControle_next_st_mux0004_0_21 : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => UnidadeControle_current_st(0),
      I1 => passo_a_passo_IBUF_580,
      I2 => prox_passo_IBUF_582,
      I3 => UnidadeControle_prox_passo_feito(0),
      O => UnidadeControle_next_st_mux0004_0_21_426
    );
  UnidadeControle_next_st_mux0004_0_38 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => UnidadeControle_next_st_mux0004_0_4_428,
      I1 => UnidadeControle_next_st_mux0004_0_28_427,
      I2 => UnidadeControle_current_st(5),
      I3 => DECODE_Mrom_instruction_output,
      O => UnidadeControle_next_st_0_Q
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
  UnidadeControle_next_st_mux0004_18_43 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => UnidadeControle_current_st(15),
      I1 => UnidadeControle_current_st(16),
      I2 => UnidadeControle_current_st(18),
      I3 => UnidadeControle_current_st(1),
      O => UnidadeControle_next_st_mux0004_18_43_430
    );
  UnidadeControle_next_st_mux0004_18_70 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => UnidadeControle_current_st(2),
      I1 => UnidadeControle_current_st(3),
      I2 => UnidadeControle_current_st(4),
      I3 => UnidadeControle_current_st(5),
      O => UnidadeControle_next_st_mux0004_18_70_431
    );
  UnidadeControle_next_st_mux0004_18_83 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => UnidadeControle_current_st(6),
      I1 => UnidadeControle_current_st(7),
      I2 => UnidadeControle_current_st(8),
      I3 => UnidadeControle_current_st(9),
      O => UnidadeControle_next_st_mux0004_18_83_432
    );
  UnidadeControle_next_st_mux0004_17_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => DECODE_Mrom_instruction_output13,
      I1 => N149,
      O => UnidadeControle_next_st_17_Q
    );
  display_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => ctrl_FSM_FFd2_476,
      I2 => ctrl_FSM_FFd4_478,
      O => display_or0000
    );
  UnidadeControle_next_st_mux0004_6_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => DECODE_Mrom_instruction_output13,
      I1 => UnidadeControle_N13,
      I2 => DECODE_Mrom_instruction_output6,
      O => UnidadeControle_next_st_6_Q
    );
  UnidadeControle_next_st_mux0004_12_1 : LUT4
    generic map(
      INIT => X"BAAA"
    )
    port map (
      I0 => UnidadeControle_current_st(11),
      I1 => DECODE_Mrom_instruction_output13,
      I2 => DECODE_Mrom_instruction_output6,
      I3 => UnidadeControle_N13,
      O => UnidadeControle_next_st_12_Q
    );
  UnidadeControle_next_st_mux0004_12_2_SW0 : LUT3
    generic map(
      INIT => X"DC"
    )
    port map (
      I0 => NZ_output_signal(0),
      I1 => DECODE_Mrom_instruction_output,
      I2 => N147,
      O => N4
    );
  Mux2_output_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_435,
      I1 => BRAM_output(7),
      I2 => Reg_AC_output_signal(7),
      O => Mux2_output(7)
    );
  Mux2_output_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_435,
      I1 => BRAM_output(6),
      I2 => Reg_AC_output_signal(6),
      O => Mux2_output(6)
    );
  Mux2_output_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_435,
      I1 => BRAM_output(5),
      I2 => Reg_AC_output_signal(5),
      O => Mux2_output(5)
    );
  Mux2_output_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_435,
      I1 => BRAM_output(4),
      I2 => Reg_AC_output_signal(4),
      O => Mux2_output(4)
    );
  Mux2_output_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_435,
      I1 => BRAM_output(3),
      I2 => Reg_AC_output_signal(3),
      O => Mux2_output(3)
    );
  Mux2_output_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_435,
      I1 => BRAM_output(2),
      I2 => Reg_AC_output_signal(2),
      O => Mux2_output(2)
    );
  Mux2_output_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_435,
      I1 => BRAM_output(1),
      I2 => Reg_AC_output_signal(1),
      O => Mux2_output(1)
    );
  Mux2_output_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => UnidadeControle_selRDM_435,
      I1 => BRAM_output(0),
      I2 => Reg_AC_output_signal(0),
      O => Mux2_output(0)
    );
  UnidadeControle_selULA_mux0007_1_16 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => UnidadeControle_selULA_mux0007_1_7_446,
      I1 => DECODE_Mrom_instruction_output5,
      I2 => DECODE_Mrom_instruction_output6,
      O => UnidadeControle_selULA_mux0007_1_16_445
    );
  display_mux0017_4_319 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => alt_view_IBUF_454,
      I1 => display_mux0017_4_221_545,
      I2 => display_mux0017_4_254_546,
      I3 => display_mux0017_4_297_547,
      O => display_mux0017_4_319_548
    );
  display_mux0017_2_265 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => display_mux0017_2_212_520,
      I2 => ctrl_FSM_FFd2_476,
      I3 => display_mux0017_2_246_521,
      O => display_mux0017_2_265_523
    );
  display_mux0017_0_235 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd4_478,
      I1 => display_mux0017_0_195_498,
      I2 => ctrl_FSM_FFd2_476,
      I3 => display_mux0017_0_223_499,
      O => display_mux0017_0_235_500
    );
  display_mux0017_5_147 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => display_mux0017_5_76_563,
      I1 => display_mux0017_5_136_554,
      I2 => ctrl_FSM_FFd4_478,
      I3 => display_mux0017_5_22_557,
      O => display_mux0017_5_147_555
    );
  display_mux0017_5_302 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd4_478,
      I1 => display_mux0017_5_240_558,
      I2 => ctrl_FSM_FFd2_476,
      I3 => display_mux0017_5_280_559,
      O => display_mux0017_5_302_560
    );
  display_mux0017_1_37 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => display_mux0017_1_16_509,
      I1 => display_or0000,
      I2 => N106,
      I3 => N151,
      O => display_mux0017_1_37_512
    );
  display_mux0017_1_52 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => N113,
      I2 => BRAM_b_low_input(0),
      I3 => N100,
      O => display_mux0017_1_52_514
    );
  display_mux0017_1_64 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => N117,
      I2 => BRAM_b_output(4),
      I3 => N103,
      O => display_mux0017_1_64_515
    );
  display_mux0017_1_66 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => display_mux0017_1_46_513,
      I1 => display_mux0017_1_52_514,
      I2 => display_mux0017_1_64_515,
      O => display_mux0017_1_66_516
    );
  display_mux0017_1_145 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ctrl_FSM_FFd4_478,
      I1 => display_cmp_eq0061,
      I2 => N115,
      O => display_mux0017_1_145_507
    );
  display_mux0017_1_151 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => N116,
      I2 => N1011,
      I3 => Reg_PC_output_signal(0),
      O => display_mux0017_1_151_508
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
      O => display_mux0017_3_21_531
    );
  display_mux0017_3_157 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => display_mux0017_3_107_527,
      I1 => display_mux0017_3_149_529,
      I2 => ctrl_FSM_FFd3_477,
      I3 => display_mux0017_3_71_540,
      O => display_mux0017_3_157_530
    );
  display_mux0017_3_2121 : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => Reg_PC_output_signal(5),
      I1 => Reg_PC_output_signal(4),
      I2 => Reg_PC_output_signal(6),
      I3 => Reg_PC_output_signal(7),
      O => display_mux0017_3_2121_533
    );
  ResetMain_IBUF : IBUF
    port map (
      I => ResetMain,
      O => ResetMain_IBUF_262
    );
  Start_IBUF : IBUF
    port map (
      I => Start,
      O => Start_IBUF_286
    );
  passo_a_passo_IBUF : IBUF
    port map (
      I => passo_a_passo,
      O => passo_a_passo_IBUF_580
    );
  prox_passo_IBUF : IBUF
    port map (
      I => prox_passo,
      O => prox_passo_IBUF_582
    );
  alt_view_IBUF : IBUF
    port map (
      I => alt_view,
      O => alt_view_IBUF_454
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
      I => selDisplay_3_590,
      O => selDisplay(3)
    );
  selDisplay_2_OBUF : OBUF
    port map (
      I => selDisplay_2_589,
      O => selDisplay(2)
    );
  selDisplay_1_OBUF : OBUF
    port map (
      I => selDisplay_1_588,
      O => selDisplay(1)
    );
  selDisplay_0_OBUF : OBUF
    port map (
      I => selDisplay_0_587,
      O => selDisplay(0)
    );
  display_6_OBUF : OBUF
    port map (
      I => display_6_493,
      O => display(6)
    );
  display_5_OBUF : OBUF
    port map (
      I => display_5_492,
      O => display(5)
    );
  display_4_OBUF : OBUF
    port map (
      I => display_4_491,
      O => display(4)
    );
  display_3_OBUF : OBUF
    port map (
      I => display_3_490,
      O => display(3)
    );
  display_2_OBUF : OBUF
    port map (
      I => display_2_489,
      O => display(2)
    );
  display_1_OBUF : OBUF
    port map (
      I => display_1_488,
      O => display(1)
    );
  display_0_OBUF : OBUF
    port map (
      I => display_0_487,
      O => display(0)
    );
  display_0 : FDS
    port map (
      C => clock200hz_457,
      D => display_mux0017_6_340,
      S => display_mux0017_6_328_570,
      Q => display_0_487
    );
  display_mux0017_6_3401 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => alt_view_IBUF_454,
      I1 => display_mux0017_6_100_564,
      I2 => display_mux0017_6_139_565,
      O => display_mux0017_6_340
    );
  display_2 : FDS
    port map (
      C => clock200hz_457,
      D => display_mux0017_4_331,
      S => display_mux0017_4_319_548,
      Q => display_2_489
    );
  display_mux0017_4_3311 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => alt_view_IBUF_454,
      I1 => display_mux0017_4_98_552,
      I2 => display_mux0017_4_133_541,
      O => display_mux0017_4_331
    );
  display_3 : FDS
    port map (
      C => clock200hz_457,
      D => display_mux0017_3_378,
      S => display_mux0017_3_366_537,
      Q => display_3_490
    );
  display_mux0017_3_3781 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => alt_view_IBUF_454,
      I1 => display_mux0017_3_157_530,
      I2 => display_mux0017_3_44_539,
      O => display_mux0017_3_378
    );
  display_5 : FDS
    port map (
      C => clock200hz_457,
      D => display_mux0017_1_202,
      S => display_mux0017_1_190_510,
      Q => display_5_492
    );
  display_mux0017_1_2021 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => alt_view_IBUF_454,
      I1 => display_mux0017_1_66_516,
      I2 => display_mux0017_1_37_512,
      O => display_mux0017_1_202
    );
  selDisplay_0 : FDR
    port map (
      C => clock200hz_457,
      D => N1,
      R => ctrl_FSM_FFd4_478,
      Q => selDisplay_0_587
    );
  selDisplay_1 : FDR
    port map (
      C => clock200hz_457,
      D => N1,
      R => ctrl_FSM_FFd3_477,
      Q => selDisplay_1_588
    );
  selDisplay_2 : FDR
    port map (
      C => clock200hz_457,
      D => N1,
      R => ctrl_FSM_FFd2_476,
      Q => selDisplay_2_589
    );
  selDisplay_3 : FDR
    port map (
      C => clock200hz_457,
      D => N1,
      R => ctrl_FSM_FFd1_475,
      Q => selDisplay_3_590
    );
  BRAM_b_low_input_0 : FDR
    port map (
      C => ender_low_BUFGP_578,
      D => N1,
      R => BRAM_b_low_input(0),
      Q => BRAM_b_low_input(0)
    );
  BRAM_b_high_input_0 : FDR
    port map (
      C => ender_high_BUFGP_576,
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
      O => Mcompar_clock200hz_cmp_lt0000_cy_0_rt_40
    );
  Mcompar_clock200hz_cmp_lt0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(5),
      O => Mcompar_clock200hz_cmp_lt0000_cy_2_rt_43
    );
  Mcompar_clock200hz_cmp_lt0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(10),
      O => Mcompar_clock200hz_cmp_lt0000_cy_4_rt_46
    );
  Mcount_conta200_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(1),
      O => Mcount_conta200_cy_1_rt_65
    );
  Mcount_conta200_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(2),
      O => Mcount_conta200_cy_2_rt_67
    );
  Mcount_conta200_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(3),
      O => Mcount_conta200_cy_3_rt_69
    );
  Mcount_conta200_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(4),
      O => Mcount_conta200_cy_4_rt_71
    );
  Mcount_conta200_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(5),
      O => Mcount_conta200_cy_5_rt_73
    );
  Mcount_conta200_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(6),
      O => Mcount_conta200_cy_6_rt_75
    );
  Mcount_conta200_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(7),
      O => Mcount_conta200_cy_7_rt_77
    );
  Mcount_conta200_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(8),
      O => Mcount_conta200_cy_8_rt_79
    );
  Mcount_conta200_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(9),
      O => Mcount_conta200_cy_9_rt_81
    );
  Mcount_conta200_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(10),
      O => Mcount_conta200_cy_10_rt_55
    );
  Mcount_conta200_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(11),
      O => Mcount_conta200_cy_11_rt_57
    );
  Mcount_conta200_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(12),
      O => Mcount_conta200_cy_12_rt_59
    );
  Mcount_conta200_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(13),
      O => Mcount_conta200_cy_13_rt_61
    );
  Mcount_conta200_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(14),
      O => Mcount_conta200_cy_14_rt_63
    );
  Mcount_conta200_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => conta200(15),
      O => Mcount_conta200_xor_15_rt_83
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
      O => N6
    );
  UAL_nz_0_27 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => UAL_nz_0_2_350,
      I1 => ULA_NZ_output(1),
      I2 => ULA_output(6),
      I3 => N6,
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
      O => UAL_Mmux_output_signal_6_342
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
      O => UAL_Mmux_output_signal_67_349
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
      O => UAL_Mmux_output_signal_66_348
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
      O => UAL_Mmux_output_signal_65_347
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
      O => UAL_Mmux_output_signal_64_346
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
      O => UAL_Mmux_output_signal_63_345
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
      O => UAL_Mmux_output_signal_62_344
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
      O => UAL_Mmux_output_signal_61_343
    );
  UAL_Mmux_output_signal_53 : LUT3
    generic map(
      INIT => X"89"
    )
    port map (
      I0 => Reg_AC_output_signal(0),
      I1 => UnidadeControle_selULA(0),
      I2 => Reg_RDM_output_signal(0),
      O => UAL_Mmux_output_signal_53_335
    );
  UAL_Mmux_output_signal_55 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(1),
      I1 => Reg_RDM_output_signal(1),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_55_337
    );
  UAL_Mmux_output_signal_57 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(2),
      I1 => Reg_RDM_output_signal(2),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_57_339
    );
  UAL_Mmux_output_signal_59 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(3),
      I1 => Reg_RDM_output_signal(3),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_59_341
    );
  UAL_Mmux_output_signal_511 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(4),
      I1 => Reg_RDM_output_signal(4),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_511_329
    );
  UAL_Mmux_output_signal_513 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(5),
      I1 => Reg_RDM_output_signal(5),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_513_331
    );
  UAL_Mmux_output_signal_51 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(7),
      I1 => Reg_RDM_output_signal(7),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_51_327
    );
  UAL_Mmux_output_signal_515 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => Reg_AC_output_signal(6),
      I1 => Reg_RDM_output_signal(6),
      I2 => UnidadeControle_selULA(0),
      O => UAL_Mmux_output_signal_515_333
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
      O => display_mux0017_6_298_569
    );
  UnidadeControle_selULA_mux0007_1_34 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => DECODE_Mrom_instruction_output2,
      I1 => DECODE_Mrom_instruction_output3,
      I2 => DECODE_Mrom_instruction_output4,
      I3 => UnidadeControle_selULA_mux0007_1_16_445,
      O => UnidadeControle_selULA_mux0007(1)
    );
  UnidadeControle_next_st_mux0004_0_28 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => UnidadeControle_current_st(18),
      I1 => Start_IBUF_286,
      I2 => UnidadeControle_stop_448,
      I3 => UnidadeControle_next_st_mux0004_0_21_426,
      O => UnidadeControle_next_st_mux0004_0_28_427
    );
  display_mux0017_1_190 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => alt_view_IBUF_454,
      I1 => display_mux0017_1_145_507,
      I2 => N8,
      I3 => N150,
      O => display_mux0017_1_190_510
    );
  display_mux0017_3_366 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => alt_view_IBUF_454,
      I1 => display_mux0017_3_299_536,
      I2 => N10,
      I3 => N18,
      O => display_mux0017_3_366_537
    );
  UnidadeControle_next_st_mux0004_18_26 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => UnidadeControle_current_st(0),
      I1 => UnidadeControle_current_st(10),
      I2 => UnidadeControle_current_st(11),
      I3 => N12,
      O => UnidadeControle_next_st_mux0004_18_26_429
    );
  display_mux0017_4_209 : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => Reg_PC_output_signal(3),
      I1 => Reg_PC_output_signal(2),
      I2 => Reg_PC_output_signal(1),
      I3 => Reg_PC_output_signal(0),
      O => display_mux0017_4_209_543
    );
  UnidadeControle_cargaREM_or000011_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_current_st(6),
      I1 => UnidadeControle_current_st(7),
      I2 => UnidadeControle_current_st(9),
      O => N241
    );
  UnidadeControle_cargaREM_or000011 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(1),
      I1 => UnidadeControle_current_st(2),
      I2 => UnidadeControle_current_st(3),
      I3 => N241,
      O => UnidadeControle_cargaREM_or000011_385
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
      O => N26
    );
  UnidadeControle_cargaRDM_or000013 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => UnidadeControle_current_st(11),
      I1 => UnidadeControle_current_st(12),
      I2 => UnidadeControle_current_st(13),
      I3 => N26,
      O => UnidadeControle_cargaRDM_or000013_380
    );
  UnidadeControle_next_st_mux0004_18_111 : LUT4
    generic map(
      INIT => X"FAF2"
    )
    port map (
      I0 => UnidadeControle_current_st(18),
      I1 => Start_IBUF_286,
      I2 => N34,
      I3 => UnidadeControle_stop_448,
      O => UnidadeControle_next_st_18_Q
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
      O => display_mux0017_1_122_506
    );
  display_mux0017_1_2111 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => Reg_AC_output_signal(3),
      I1 => Reg_AC_output_signal(0),
      I2 => Reg_AC_output_signal(1),
      I3 => Reg_AC_output_signal(2),
      O => display_cmp_eq0061
    );
  display_mux0017_1_1111 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => BRAM_b_output(3),
      I1 => BRAM_b_output(0),
      I2 => BRAM_b_output(1),
      I3 => BRAM_b_output(2),
      O => display_cmp_eq0013
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
      O => display_mux0017_1_16_509
    );
  display_mux0017_6_328_SW1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => ctrl_FSM_FFd4_478,
      I1 => N50,
      I2 => display_mux0017_6_226_568,
      I3 => display_cmp_eq0061,
      O => N56
    );
  display_mux0017_6_328 : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => N56,
      I1 => alt_view_IBUF_454,
      I2 => display_mux0017_6_298_569,
      I3 => display_or0000,
      O => display_mux0017_6_328_570
    );
  display_mux0017_3_2115_SW0 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => N58,
      I1 => Reg_AC_output_signal(4),
      I2 => ctrl_FSM_FFd3_477,
      I3 => display_mux0017_3_2113_532,
      O => N32
    );
  display_mux0017_0_195 : LUT4
    generic map(
      INIT => X"0843"
    )
    port map (
      I0 => Reg_AC_output_signal(0),
      I1 => Reg_AC_output_signal(2),
      I2 => Reg_AC_output_signal(3),
      I3 => Reg_AC_output_signal(1),
      O => display_mux0017_0_195_498
    );
  display_mux0017_5_177 : LUT4
    generic map(
      INIT => X"E228"
    )
    port map (
      I0 => BRAM_b_high_input(2),
      I1 => BRAM_b_high_input(0),
      I2 => BRAM_b_high_input(1),
      I3 => BRAM_b_high_input(3),
      O => display_mux0017_5_177_556
    );
  display_mux0017_5_390 : LUT4
    generic map(
      INIT => X"E228"
    )
    port map (
      I0 => Reg_PC_output_signal(6),
      I1 => Reg_PC_output_signal(4),
      I2 => Reg_PC_output_signal(5),
      I3 => Reg_PC_output_signal(7),
      O => display_mux0017_5_390_562
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
      O => display_mux0017_6_183_566
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
      O => display_mux0017_6_210_567
    );
  display_mux0017_4_178 : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => Reg_AC_output_signal(7),
      I1 => Reg_AC_output_signal(6),
      I2 => Reg_AC_output_signal(5),
      I3 => Reg_AC_output_signal(4),
      O => display_mux0017_4_178_542
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
      O => display_mux0017_2_212_520
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
      O => display_mux0017_2_246_521
    );
  display_mux0017_0_223 : LUT4
    generic map(
      INIT => X"0843"
    )
    port map (
      I0 => Reg_PC_output_signal(0),
      I1 => Reg_PC_output_signal(2),
      I2 => Reg_PC_output_signal(3),
      I3 => Reg_PC_output_signal(1),
      O => display_mux0017_0_223_499
    );
  display_mux0017_5_22 : LUT4
    generic map(
      INIT => X"E228"
    )
    port map (
      I0 => BRAM_b_output(2),
      I1 => BRAM_b_output(0),
      I2 => BRAM_b_output(1),
      I3 => BRAM_b_output(3),
      O => display_mux0017_5_22_557
    );
  display_mux0017_5_240 : LUT4
    generic map(
      INIT => X"E228"
    )
    port map (
      I0 => Reg_AC_output_signal(2),
      I1 => Reg_AC_output_signal(0),
      I2 => Reg_AC_output_signal(1),
      I3 => Reg_AC_output_signal(3),
      O => display_mux0017_5_240_558
    );
  display_mux0017_3_71 : LUT4
    generic map(
      INIT => X"8410"
    )
    port map (
      I0 => BRAM_b_output(4),
      I1 => BRAM_b_output(5),
      I2 => BRAM_b_output(6),
      I3 => BRAM_b_output(7),
      O => display_mux0017_3_71_540
    );
  display_mux0017_3_262 : LUT4
    generic map(
      INIT => X"8410"
    )
    port map (
      I0 => Reg_AC_output_signal(4),
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_AC_output_signal(6),
      I3 => Reg_AC_output_signal(7),
      O => display_mux0017_3_262_534
    );
  display_mux0017_2_355 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => ctrl_FSM_FFd3_477,
      I2 => ctrl_FSM_FFd4_478,
      I3 => N62,
      O => display_mux0017_2_355_525
    );
  display_mux0017_2_160 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => ctrl_FSM_FFd3_477,
      I2 => ctrl_FSM_FFd4_478,
      I3 => N64,
      O => display_mux0017_2_160_519
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
      O => N50
    );
  display_mux0017_3_289 : LUT4
    generic map(
      INIT => X"8410"
    )
    port map (
      I0 => Reg_PC_output_signal(0),
      I1 => Reg_PC_output_signal(1),
      I2 => Reg_PC_output_signal(2),
      I3 => Reg_PC_output_signal(3),
      O => display_mux0017_3_289_535
    );
  display_mux0017_3_1115_SW0 : LUT4
    generic map(
      INIT => X"F4F0"
    )
    port map (
      I0 => BRAM_b_output(7),
      I1 => BRAM_b_output(4),
      I2 => display_mux0017_3_1113_528,
      I3 => N76,
      O => N30
    );
  UnidadeControle_selULA_mux0007_0_29_SW0 : LUT4
    generic map(
      INIT => X"9510"
    )
    port map (
      I0 => Reg_RI_output_signal(6),
      I1 => Reg_RI_output_signal(4),
      I2 => Reg_RI_output_signal(5),
      I3 => N146,
      O => N78
    );
  UnidadeControle_selULA_mux0007_0_29 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Reg_RI_output_signal(7),
      I1 => N78,
      I2 => UnidadeControle_selULA_mux0007_0_5_443,
      O => UnidadeControle_selULA_mux0007(0)
    );
  display_mux0017_5_280 : LUT4
    generic map(
      INIT => X"E228"
    )
    port map (
      I0 => Reg_PC_output_signal(2),
      I1 => Reg_PC_output_signal(0),
      I2 => Reg_PC_output_signal(1),
      I3 => Reg_PC_output_signal(3),
      O => display_mux0017_5_280_559
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
      O => display_mux0017_6_84_573
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
      O => N62
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
      O => N64
    );
  display_mux0017_3_2115_SW1 : LUT3
    generic map(
      INIT => X"21"
    )
    port map (
      I0 => Reg_PC_output_signal(2),
      I1 => Reg_PC_output_signal(3),
      I2 => Reg_PC_output_signal(1),
      O => N60
    );
  display_mux0017_3_2113_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => Reg_AC_output_signal(3),
      I1 => ctrl_FSM_FFd4_1_479,
      O => N80
    );
  display_mux0017_3_1115_SW1 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => BRAM_b_low_input(1),
      I2 => BRAM_b_low_input(2),
      O => N82
    );
  display_mux0017_3_2115_SW0_SW0 : LUT3
    generic map(
      INIT => X"21"
    )
    port map (
      I0 => Reg_AC_output_signal(6),
      I1 => Reg_AC_output_signal(7),
      I2 => Reg_AC_output_signal(5),
      O => N58
    );
  ctrl_FSM_FFd4_1 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => clock200hz_457,
      D => ctrl_FSM_FFd1_475,
      Q => ctrl_FSM_FFd4_1_479
    );
  clkMain_BUFGP : BUFGP
    port map (
      I => clkMain,
      O => clkMain_BUFGP_456
    );
  ender_low_BUFGP : BUFGP
    port map (
      I => ender_low,
      O => ender_low_BUFGP_578
    );
  ender_high_BUFGP : BUFGP
    port map (
      I => ender_high,
      O => ender_high_BUFGP_576
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
  CargaPC_inv1_INV_0 : INV
    port map (
      I => UnidadeControle_cargaPC_375,
      O => CargaPC_inv
    );
  clock200hz_not00031_INV_0 : INV
    port map (
      I => clock200hz_457,
      O => clock200hz_not0003
    );
  UAL_output_signal_0_inv1_INV_0 : INV
    port map (
      I => UAL_output_signal_0_1,
      O => ULA_output(0)
    );
  display_mux0017_2_396 : MUXF5
    port map (
      I0 => N84,
      I1 => N85,
      S => alt_view_IBUF_454,
      O => display_mux0017_2_Q
    );
  display_mux0017_2_396_F : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => display_mux0017_2_265_523,
      I1 => display_mux0017_2_304_524,
      I2 => display_mux0017_2_355_525,
      O => N84
    );
  display_mux0017_2_396_G : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => display_mux0017_2_26_522,
      I1 => display_mux0017_2_60_526,
      I2 => display_mux0017_2_109_518,
      I3 => display_mux0017_2_160_519,
      O => N85
    );
  display_mux0017_0_364 : MUXF5
    port map (
      I0 => N86,
      I1 => N87,
      S => alt_view_IBUF_454,
      O => display_mux0017_0_Q
    );
  display_mux0017_0_364_F : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => display_mux0017_0_235_500,
      I1 => display_mux0017_0_263_502,
      I2 => display_mux0017_0_321_503,
      O => N86
    );
  display_mux0017_0_364_G : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => display_mux0017_0_24_501,
      I1 => display_mux0017_0_49_504,
      I2 => display_mux0017_0_84_505,
      I3 => display_mux0017_0_142_497,
      O => N87
    );
  display_mux0017_0_142 : MUXF5
    port map (
      I0 => N88,
      I1 => N89,
      S => BRAM_b_high_input(3),
      O => display_mux0017_0_142_497
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
      O => N88
    );
  display_mux0017_0_142_G : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => BRAM_b_high_input(1),
      I1 => N119,
      I2 => display_or0000,
      O => N89
    );
  display_mux0017_0_321 : MUXF5
    port map (
      I0 => N90,
      I1 => N91,
      S => Reg_PC_output_signal(7),
      O => display_mux0017_0_321_503
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
      O => N90
    );
  display_mux0017_0_321_G : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Reg_PC_output_signal(5),
      I1 => N122,
      I2 => display_or0000,
      O => N91
    );
  display_mux0017_5_437 : MUXF5
    port map (
      I0 => N92,
      I1 => N93,
      S => alt_view_IBUF_454,
      O => display_mux0017_5_Q
    );
  display_mux0017_5_437_F : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => display_mux0017_5_302_560,
      I1 => display_mux0017_5_390_562,
      I2 => display_or0000,
      I3 => display_mux0017_5_349_561,
      O => N92
    );
  display_mux0017_5_437_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => display_mux0017_5_147_555,
      I1 => display_mux0017_5_177_556,
      I2 => display_or0000,
      O => N93
    );
  display_mux0017_5_76 : MUXF5
    port map (
      I0 => N94,
      I1 => N95,
      S => BRAM_b_low_input(0),
      O => display_mux0017_5_76_563
    );
  display_mux0017_5_76_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => BRAM_b_low_input(2),
      I2 => N20,
      O => N94
    );
  display_mux0017_5_76_G : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => BRAM_b_low_input(1),
      I2 => BRAM_b_low_input(3),
      I3 => BRAM_b_low_input(2),
      O => N95
    );
  display_mux0017_4_297 : MUXF5
    port map (
      I0 => N96,
      I1 => N0,
      S => display_or0000,
      O => display_mux0017_4_297_547
    );
  display_mux0017_4_297_F : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => Reg_PC_output_signal(7),
      I1 => Reg_PC_output_signal(6),
      I2 => Reg_PC_output_signal(5),
      I3 => Reg_PC_output_signal(4),
      O => N96
    );
  display_mux0017_5_136 : MUXF5
    port map (
      I0 => N0,
      I1 => N99,
      S => ctrl_FSM_FFd3_477,
      O => display_mux0017_5_136_554
    );
  display_mux0017_5_136_G : LUT4
    generic map(
      INIT => X"E228"
    )
    port map (
      I0 => BRAM_b_output(6),
      I1 => BRAM_b_output(4),
      I2 => BRAM_b_output(7),
      I3 => BRAM_b_output(5),
      O => N99
    );
  display_mux0017_5_349 : MUXF5
    port map (
      I0 => N1001,
      I1 => N101,
      S => Reg_AC_output_signal(7),
      O => display_mux0017_5_349_561
    );
  display_mux0017_5_349_F : LUT4
    generic map(
      INIT => X"2800"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_AC_output_signal(4),
      I3 => Reg_AC_output_signal(6),
      O => N1001
    );
  display_mux0017_5_349_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => Reg_AC_output_signal(4),
      I2 => Reg_AC_output_signal(6),
      I3 => Reg_AC_output_signal(5),
      O => N101
    );
  display_mux0017_6_139 : MUXF5
    port map (
      I0 => N1021,
      I1 => N0,
      S => display_or0000,
      O => display_mux0017_6_139_565
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
      O => N1021
    );
  display_mux0017_4_133 : MUXF5
    port map (
      I0 => N104,
      I1 => N0,
      S => display_or0000,
      O => display_mux0017_4_133_541
    );
  display_mux0017_4_133_F : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => BRAM_b_high_input(3),
      I1 => BRAM_b_high_input(2),
      I2 => BRAM_b_high_input(1),
      I3 => BRAM_b_high_input(0),
      O => N104
    );
  display_mux0017_4_21 : MUXF5
    port map (
      I0 => N0,
      I1 => N107,
      S => ctrl_FSM_FFd3_477,
      O => display_mux0017_4_21_544
    );
  display_mux0017_4_21_G : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => BRAM_b_output(7),
      I1 => BRAM_b_output(6),
      I2 => BRAM_b_output(5),
      I3 => BRAM_b_output(4),
      O => N107
    );
  display_mux0017_4_90 : MUXF5
    port map (
      I0 => N0,
      I1 => N109,
      S => ctrl_FSM_FFd4_478,
      O => display_mux0017_4_90_551
    );
  display_mux0017_4_90_G : LUT4
    generic map(
      INIT => X"8098"
    )
    port map (
      I0 => BRAM_b_output(3),
      I1 => BRAM_b_output(2),
      I2 => BRAM_b_output(1),
      I3 => BRAM_b_output(0),
      O => N109
    );
  display_mux0017_0_24 : MUXF5
    port map (
      I0 => N0,
      I1 => N111,
      S => ctrl_FSM_FFd4_478,
      O => display_mux0017_0_24_501
    );
  display_mux0017_0_24_G : LUT4
    generic map(
      INIT => X"0843"
    )
    port map (
      I0 => BRAM_b_output(0),
      I1 => BRAM_b_output(2),
      I2 => BRAM_b_output(3),
      I3 => BRAM_b_output(1),
      O => N111
    );
  display_mux0017_2_26 : MUXF5
    port map (
      I0 => N0,
      I1 => N1131,
      S => ctrl_FSM_FFd3_477,
      O => display_mux0017_2_26_522
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
      O => N1131
    );
  display_mux0017_2_109 : MUXF5
    port map (
      I0 => N0,
      I1 => N1151,
      S => ctrl_FSM_FFd4_478,
      O => display_mux0017_2_109_518
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
      O => N1151
    );
  display_mux0017_1_190_SW0 : MUXF5
    port map (
      I0 => N1161,
      I1 => N1171,
      S => ctrl_FSM_FFd3_477,
      O => N8
    );
  display_mux0017_1_190_SW0_F : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => display_mux0017_1_122_506,
      I1 => ctrl_FSM_FFd2_476,
      I2 => ctrl_FSM_FFd4_478,
      I3 => display_mux0017_1_151_508,
      O => N1161
    );
  display_mux0017_1_190_SW0_G : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => N114,
      I1 => display_mux0017_1_151_508,
      I2 => Reg_AC_output_signal(4),
      I3 => N102,
      O => N1171
    );
  display_mux0017_2_60 : MUXF5
    port map (
      I0 => N118,
      I1 => N1191,
      S => BRAM_b_low_input(3),
      O => display_mux0017_2_60_526
    );
  display_mux0017_2_60_F : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => BRAM_b_low_input(0),
      I2 => BRAM_b_low_input(2),
      I3 => BRAM_b_low_input(1),
      O => N118
    );
  display_mux0017_2_60_G : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => BRAM_b_low_input(2),
      I1 => BRAM_b_low_input(0),
      I2 => ctrl_FSM_FFd2_476,
      I3 => BRAM_b_low_input(1),
      O => N1191
    );
  display_mux0017_2_304 : MUXF5
    port map (
      I0 => N120,
      I1 => N121,
      S => Reg_AC_output_signal(3),
      O => display_mux0017_2_304_524
    );
  display_mux0017_2_304_F : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => ctrl_FSM_FFd4_478,
      I1 => Reg_AC_output_signal(0),
      I2 => Reg_AC_output_signal(2),
      I3 => Reg_AC_output_signal(1),
      O => N120
    );
  display_mux0017_2_304_G : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_AC_output_signal(2),
      I1 => Reg_AC_output_signal(0),
      I2 => ctrl_FSM_FFd4_478,
      I3 => Reg_AC_output_signal(1),
      O => N121
    );
  display_mux0017_4_254 : MUXF5
    port map (
      I0 => N1221,
      I1 => N123,
      S => Reg_AC_output_signal(3),
      O => display_mux0017_4_254_546
    );
  display_mux0017_4_254_F : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => Reg_AC_output_signal(2),
      I1 => Reg_AC_output_signal(1),
      I2 => ctrl_FSM_FFd4_478,
      I3 => Reg_AC_output_signal(0),
      O => N1221
    );
  display_mux0017_4_254_G : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => ctrl_FSM_FFd4_478,
      I1 => Reg_AC_output_signal(2),
      I2 => Reg_AC_output_signal(0),
      I3 => Reg_AC_output_signal(1),
      O => N123
    );
  display_mux0017_3_107 : MUXF5
    port map (
      I0 => N124,
      I1 => N125,
      S => BRAM_b_low_input(1),
      O => display_mux0017_3_107_527
    );
  display_mux0017_3_107_F : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => BRAM_b_low_input(3),
      I1 => BRAM_b_low_input(2),
      I2 => ctrl_FSM_FFd2_476,
      I3 => BRAM_b_low_input(0),
      O => N124
    );
  display_mux0017_3_107_G : LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => BRAM_b_low_input(3),
      I2 => BRAM_b_low_input(0),
      I3 => BRAM_b_low_input(2),
      O => N125
    );
  display_mux0017_4_49 : MUXF5
    port map (
      I0 => N126,
      I1 => N127,
      S => BRAM_b_low_input(3),
      O => display_mux0017_4_49_550
    );
  display_mux0017_4_49_F : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => BRAM_b_low_input(2),
      I1 => BRAM_b_low_input(1),
      I2 => ctrl_FSM_FFd2_476,
      I3 => BRAM_b_low_input(0),
      O => N126
    );
  display_mux0017_4_49_G : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => BRAM_b_low_input(2),
      I2 => BRAM_b_low_input(0),
      I3 => BRAM_b_low_input(1),
      O => N127
    );
  display_mux0017_3_366_SW0 : MUXF5
    port map (
      I0 => N128,
      I1 => N129,
      S => ctrl_FSM_FFd4_478,
      O => N10
    );
  display_mux0017_3_366_SW0_F : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => ctrl_FSM_FFd2_476,
      I2 => N72,
      I3 => display_mux0017_3_2121_533,
      O => N128
    );
  display_mux0017_3_366_SW0_G : LUT4
    generic map(
      INIT => X"8410"
    )
    port map (
      I0 => Reg_AC_output_signal(0),
      I1 => Reg_AC_output_signal(1),
      I2 => Reg_AC_output_signal(2),
      I3 => Reg_AC_output_signal(3),
      O => N129
    );
  UnidadeControle_selULA_mux0007_2_26 : MUXF5
    port map (
      I0 => N130,
      I1 => N131,
      S => UnidadeControle_selULA(0),
      O => UnidadeControle_selULA_mux0007(2)
    );
  UnidadeControle_selULA_mux0007_2_26_F : LUT4
    generic map(
      INIT => X"3600"
    )
    port map (
      I0 => Reg_RI_output_signal(5),
      I1 => Reg_RI_output_signal(7),
      I2 => Reg_RI_output_signal(4),
      I3 => Reg_RI_output_signal(6),
      O => N130
    );
  UnidadeControle_selULA_mux0007_2_26_G : LUT4
    generic map(
      INIT => X"FE2F"
    )
    port map (
      I0 => Reg_RI_output_signal(7),
      I1 => Reg_RI_output_signal(4),
      I2 => Reg_RI_output_signal(5),
      I3 => Reg_RI_output_signal(6),
      O => N131
    );
  display_mux0017_3_1113 : MUXF5
    port map (
      I0 => N0,
      I1 => N133,
      S => ctrl_FSM_FFd4_478,
      O => display_mux0017_3_1113_528
    );
  display_mux0017_3_1113_G : LUT4
    generic map(
      INIT => X"2002"
    )
    port map (
      I0 => BRAM_b_output(0),
      I1 => BRAM_b_output(3),
      I2 => BRAM_b_output(1),
      I3 => BRAM_b_output(2),
      O => N133
    );
  display_mux0017_6_100_SW0 : MUXF5
    port map (
      I0 => N0,
      I1 => N135,
      S => ctrl_FSM_FFd3_477,
      O => N16
    );
  display_mux0017_6_100_SW0_G : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => BRAM_b_output(4),
      I1 => BRAM_b_output(5),
      I2 => BRAM_b_output(6),
      I3 => BRAM_b_output(7),
      O => N135
    );
  display_mux0017_3_149 : MUXF5
    port map (
      I0 => N0,
      I1 => N137,
      S => ctrl_FSM_FFd4_478,
      O => display_mux0017_3_149_529
    );
  display_mux0017_3_149_G : LUT4
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
  display_mux0017_0_84 : MUXF5
    port map (
      I0 => N0,
      I1 => N139,
      S => ctrl_FSM_FFd3_477,
      O => display_mux0017_0_84_505
    );
  display_mux0017_0_84_G : LUT4
    generic map(
      INIT => X"0843"
    )
    port map (
      I0 => BRAM_b_output(4),
      I1 => BRAM_b_output(6),
      I2 => BRAM_b_output(7),
      I3 => BRAM_b_output(5),
      O => N139
    );
  display_mux0017_6_48 : MUXF5
    port map (
      I0 => N140,
      I1 => N141,
      S => BRAM_b_low_input(1),
      O => display_mux0017_6_48_572
    );
  display_mux0017_6_48_F : LUT4
    generic map(
      INIT => X"8028"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => BRAM_b_low_input(0),
      I2 => BRAM_b_low_input(2),
      I3 => BRAM_b_low_input(3),
      O => N140
    );
  display_mux0017_6_48_G : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => BRAM_b_low_input(0),
      I2 => BRAM_b_low_input(2),
      I3 => BRAM_b_low_input(3),
      O => N141
    );
  display_mux0017_0_263 : MUXF5
    port map (
      I0 => N142,
      I1 => N143,
      S => Reg_AC_output_signal(4),
      O => display_mux0017_0_263_502
    );
  display_mux0017_0_263_F : LUT4
    generic map(
      INIT => X"2002"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => Reg_AC_output_signal(5),
      I2 => Reg_AC_output_signal(6),
      I3 => Reg_AC_output_signal(7),
      O => N142
    );
  display_mux0017_0_263_G : LUT4
    generic map(
      INIT => X"2002"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => Reg_AC_output_signal(7),
      I2 => Reg_AC_output_signal(6),
      I3 => Reg_AC_output_signal(5),
      O => N143
    );
  display_mux0017_0_49 : MUXF5
    port map (
      I0 => N144,
      I1 => N145,
      S => BRAM_b_low_input(1),
      O => display_mux0017_0_49_504
    );
  display_mux0017_0_49_F : LUT4
    generic map(
      INIT => X"0282"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => BRAM_b_low_input(3),
      I2 => BRAM_b_low_input(2),
      I3 => BRAM_b_low_input(0),
      O => N144
    );
  display_mux0017_0_49_G : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ctrl_FSM_FFd2_476,
      I1 => BRAM_b_low_input(2),
      I2 => BRAM_b_low_input(3),
      I3 => BRAM_b_low_input(0),
      O => N145
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
      O => UnidadeControle_incrementaPC_or0000111_413
    );
  UnidadeControle_incrementaPC_or000011_f5 : MUXF5
    port map (
      I0 => UnidadeControle_incrementaPC_or0000111_413,
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
      I1 => DECODE_Mrom_instruction_output11_28,
      I2 => DECODE_Mrom_instruction_output12,
      I3 => DECODE_Mrom_instruction_output7,
      LO => N146,
      O => UnidadeControle_selULA_mux0007_0_5_443
    );
  UnidadeControle_next_st_mux0004_16_SW0 : LUT4_L
    generic map(
      INIT => X"CF45"
    )
    port map (
      I0 => DECODE_Mrom_instruction_output9,
      I1 => NZ_output_signal(1),
      I2 => DECODE_Mrom_instruction_output10,
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
      LO => N147,
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
      LO => N148,
      O => DECODE_Mrom_instruction_output10
    );
  UnidadeControle_next_st_mux0004_12_2 : LUT4_D
    generic map(
      INIT => X"008C"
    )
    port map (
      I0 => NZ_output_signal(1),
      I1 => UnidadeControle_current_st(5),
      I2 => DECODE_Mrom_instruction_output10,
      I3 => N4,
      LO => N149,
      O => UnidadeControle_N13
    );
  UnidadeControle_selULA_mux0007_1_7 : LUT4_L
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => DECODE_Mrom_instruction_output11_28,
      I1 => DECODE_Mrom_instruction_output7,
      I2 => DECODE_Mrom_instruction_output12,
      I3 => UnidadeControle_selULA(1),
      LO => UnidadeControle_selULA_mux0007_1_7_446
    );
  display_mux0017_4_98 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => display_mux0017_4_21_544,
      I1 => display_mux0017_4_49_550,
      I2 => display_mux0017_4_90_551,
      LO => display_mux0017_4_98_552
    );
  display_mux0017_4_221 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => display_mux0017_4_178_542,
      I2 => ctrl_FSM_FFd2_476,
      I3 => display_mux0017_4_209_543,
      LO => display_mux0017_4_221_545
    );
  display_mux0017_6_226 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => display_mux0017_6_183_566,
      I2 => ctrl_FSM_FFd2_476,
      I3 => display_mux0017_6_210_567,
      LO => display_mux0017_6_226_568
    );
  display_mux0017_1_46 : LUT3_L
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ctrl_FSM_FFd4_478,
      I1 => display_cmp_eq0013,
      I2 => N1121,
      LO => display_mux0017_1_46_513
    );
  display_mux0017_3_44 : LUT4_L
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => display_mux0017_3_21_531,
      I1 => display_or0000,
      I2 => N70,
      I3 => N13,
      LO => display_mux0017_3_44_539
    );
  display_mux0017_3_299 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => ctrl_FSM_FFd3_477,
      I1 => display_mux0017_3_262_534,
      I2 => ctrl_FSM_FFd2_476,
      I3 => display_mux0017_3_289_535,
      LO => display_mux0017_3_299_536
    );
  UAL_nz_0_2 : LUT2_L
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => UAL_output_signal_0_1,
      I1 => ULA_output(1),
      LO => UAL_nz_0_2_350
    );
  UnidadeControle_next_st_mux0004_18_26_SW0 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => UnidadeControle_current_st(12),
      I1 => UnidadeControle_current_st(13),
      I2 => UnidadeControle_current_st(14),
      LO => N12
    );
  display_mux0017_6_100 : LUT4_L
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => display_mux0017_6_48_572,
      I1 => N16,
      I2 => ctrl_FSM_FFd4_478,
      I3 => display_mux0017_6_84_573,
      LO => display_mux0017_6_100_564
    );
  UnidadeControle_next_st_mux0004_18_111_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => UnidadeControle_next_st_mux0004_18_26_429,
      I1 => UnidadeControle_next_st_mux0004_18_43_430,
      I2 => UnidadeControle_next_st_mux0004_18_70_431,
      I3 => UnidadeControle_next_st_mux0004_18_83_432,
      LO => N34
    );
  display_mux0017_3_2115 : LUT4_D
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => N60,
      I1 => Reg_PC_output_signal(0),
      I2 => ctrl_FSM_FFd2_476,
      I3 => N32,
      LO => N150,
      O => N18
    );
  display_mux0017_3_1115_SW0_SW0 : LUT3_L
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => BRAM_b_output(6),
      I1 => BRAM_b_output(5),
      I2 => ctrl_FSM_FFd3_477,
      LO => N76
    );
  display_mux0017_3_2113 : LUT4_L
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => Reg_AC_output_signal(1),
      I1 => Reg_AC_output_signal(2),
      I2 => Reg_AC_output_signal(0),
      I3 => N80,
      LO => display_mux0017_3_2113_532
    );
  display_mux0017_3_1115 : LUT4_D
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N82,
      I1 => BRAM_b_low_input(0),
      I2 => BRAM_b_low_input(3),
      I3 => N30,
      LO => N151,
      O => N13
    );
  memory : bram
    port map (
      clka => clkMain_BUFGP_456,
      clkb => clkMain_BUFGP_456,
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
      web(0) => N0,
      addrb(7) => BRAM_b_high_input(3),
      addrb(6) => BRAM_b_high_input(2),
      addrb(5) => BRAM_b_high_input(1),
      addrb(4) => BRAM_b_high_input(0),
      addrb(3) => BRAM_b_low_input(3),
      addrb(2) => BRAM_b_low_input(2),
      addrb(1) => BRAM_b_low_input(1),
      addrb(0) => BRAM_b_low_input(0),
      dinb(7) => N0,
      dinb(6) => N0,
      dinb(5) => N0,
      dinb(4) => N0,
      dinb(3) => N0,
      dinb(2) => N0,
      dinb(1) => N0,
      dinb(0) => N0,
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
