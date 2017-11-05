----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:37:24 10/31/2017 
-- Design Name: 
-- Module Name:    neander - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity neander is
	Port ( 
		clkMain, ResetMain, Start : in std_logic;
	);
end neander;

architecture Behavioral of neander is

signal CargaAC      : std_logic;
signal CargaRDM     : std_logic;
signal CargaREM     : std_logic;
signal CargaPC      : std_logic;
signal CargaRI      : std_logic;
signal incrementaPC : std_logic;
signal cargaNz      : std_logic;
signal SelMux1      : std_logic;
signal SelMux2      : std_logic;
signal readMEM      : std_logic;
signal writeMEM     : std_logic;

signal Sai_Ula_EntraAC                  : std_logic_vector(7 downto 0);
signal Sai_AC_entra_X_e_Mux2            : std_logic_vector(7 downto 0);
signal Sai_RDM_Entra_Y_PC_Mux1_RI_Bram  : std_logic_vector(7 downto 0);
signal Sai_PC_Entra_Mux1                : std_logic_vector(7 downto 0);
signal Sai_Mux2_Entra_RDM               : std_logic_vector(7 downto 0);
signal Sai_Mux1_Entra_REM               : std_logic_vector(7 downto 0);
signal Sai_RI_Entra_DECOD               : std_logic_vector(7 downto 0);
signal Sai_Ula_Entra_NZ					: std_logic_vector(1 downto 0);																																
signal Sai_NZ_Entra_UnidadeControle     : std_logic_vector(1 downto 0);
signal Sai_NZ_Entra_UnidadeControle     : std_logic_vector(1 downto 0);
signal selULA 							: std_logic_vector(2 downto 0);
signal Negativo_Ou_Zero                 : std_logic_vector(1 downto 0);
signal Sai_Bram_Entra_Mux2              : std_logic_vector(7 downto 0);
signal Sai_REM_Entra_Bram               : std_logic_vector(7 downto 0);
signal opcode                           : std_logic_vector(7 downto 0);
signal Sai_Decod_Entra_UidadeControle   : std_logic_vector(13 downto 0);

COMPONENT reg8
   PORT(
		carga : in std_logic_vector (1 downto 0);
		clk, rst, cargaReg : in std_logic;
		output : out std_logic_vector (1 downto 0)
		);
END COMPONENT;
 
COMPONENT pc
	PORT(
		carga : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;
		rst : IN std_logic;
		incrementaPC : IN std_logic;
		cargaPC : IN std_logic;          
		output : OUT std_logic_vector(7 downto 0)
		);
END COMPONENT;

COMPONENT reg_nz
	PORT(
		carga : IN std_logic_vector(1 downto 0);
		clk : IN std_logic;
		rst : IN std_logic;
		cargaReg : IN std_logic;          
		output : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
COMPONENT ula
	PORT(
		X : IN std_logic_vector(7 downto 0);
		Y : IN std_logic_vector(7 downto 0);
		selULA : IN std_logic_vector(2 downto 0);          
		output : OUT std_logic_vector(7 downto 0);
		nz : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

COMPONENT mux
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);
		sel : IN std_logic;          
		output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
COMPONENT decod
	PORT(
		opcode : IN std_logic_vector(7 downto 0);          
		instruction_output : OUT std_logic_vector(13 downto 0)
		);
	END COMPONENT;
	
COMPONENT control_unit
	PORT(
		start : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;
		NZ : IN std_logic_vector(1 downto 0);
		decod : IN std_logic_vector(13 downto 0);          
		cargaNZ : OUT std_logic;
		selULA : OUT std_logic_vector(2 downto 0);
		cargaAC : OUT std_logic;
		cargaPC : OUT std_logic;
		incrementaPC : OUT std_logic;
		cargaREM : OUT std_logic;
		selREM : OUT std_logic;
		readMEM : OUT std_logic;
		writeMEM : OUT std_logic;
		cargaRDM : OUT std_logic;
		selRDM : OUT std_logic;
		cargaRI : OUT std_logic
		);
	END COMPONENT;
			

begin


	Reg_AC : reg8 
		PORT MAP( 
			carga => Sai_Ula_EntraAC,
			clk => clkMain,
			rst => ResetMain,
			cargaReg => CargaRDM,
			output => Sai_AC_entra_X_e_Mux2
			);	
	Reg_RDM: reg8
		PORT MAP( 
			carga => Sai_Mux2_Entra_RDM,
			clk => clkMain,
			rst => ResetMain,
			cargaReg => CargaAC,
			output => Sai_RDM_Entra_Y_PC_Mux1_RI_Bram
			);
	Reg_REM: reg8
		PORT MAP( 
			carga => Sai_Mux2_Entra_RDM,
			clk => clkMain,
			rst => ResetMain,
			cargaReg => CargaREM,
			output => saidaGeral -- SERA QUE DA PRA COLOCAR DIRETO NO PINO DA BRAM. 
			);
	Reg_RI : reg8
		PORT MAP( 
			carga => Sai_RDM_Entra_Y_PC_Mux1_RI_Bram,
			clk => clkMain,
			rst => ResetMain,
			cargaReg => CargaRI,
			output => Sai_RI_Entra_DECOD -- SERA QUE DA PRA COLOCAR DIRETO NO PINO DA BRAM. 
			);
	Reg_PC : pc 
		PORT MAP(
			carga => Sai_RDM_Entra_Y_PC_Mux1_RI_Bram,
			clk => clkMain,
			rst => ResetMain,
			incrementaPC => incrementaPC ,
			cargaPC => CargaPC,
			output => Sai_PC_Entra_Mux1
		);
	NZ     : reg_nz 
		PORT MAP( 
		carga => Sai_Ula_Entra_NZ,
		clk => clkMain,
		rst => ResetMain,
		cargaReg => cargaNz,
		output => Sai_NZ_Entra_UnidadeControle
		);	
	LAU    : ula 
		PORT MAP(
		X => Sai_AC_entra_X_e_Mux2,
		Y => Sai_RDM_Entra_Y_PC_Mux1_RI_Bram,
		selULA => selULA,
		output => Sai_Ula_EntraAC,
		nz => Negativo_Ou_Zero
	);	
	Mux1   : mux 
		PORT MAP(
			A => Sai_PC_Entra_Mux1,
			B => Sai_RDM_Entra_Y_PC_Mux1_RI_Bram,
			sel => SelMux1,
			output => Sai_Mux1_Entra_REM  
		);
	Mux2   : mux 
		PORT MAP(
			A => Sai_AC_entra_X_e_Mux2,
			B => Sai_Bram_Entra_Mux2,
			sel => SelMux2,
			output => Sai_Mux2_Entra_RDM
		);
	DECODE : decod 
		PORT MAP(
		opcode => opcode,
		instruction_output => Sai_Decod_Entra_UidadeControle
	);
	UnidadeControle: control_unit 
		PORT MAP(
		start => Start,
		clk => clkMain,
		rst => ResetMain,
		NZ => Negativo_Ou_Zero,
		decod => Sai_Decod_Entra_UidadeControle,
		cargaNZ => cargaNz,
		selULA => selULA,
		cargaAC => CargaAC,
		cargaPC => CargaPC,
		incrementaPC => incrementaPC,
		cargaREM => CargaREM,
		selREM => SelMux1,
		readMEM => readMEM,
		writeMEM => writeMEM,
		cargaRDM => CargaRDM,
		selRDM => SelMux2,
		cargaRI => CargaRI
	);
end Behavioral;
