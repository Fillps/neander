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
		clkMain, ResetMain : in std_logic;
		entradaGeral : in std_logic_vector (7 downto 0);
		saidaGeral : out std_logic_vector (7 downto 0)
	
	);
end neander;

architecture Behavioral of neander is

signal CargaAC      : in std_logic;
signal CargaRDM     : in std_logic;
signal CargaREM     : in std_logic;
signal CargaPC      : in std_logic;
signal CargaRI      : in std_logic;
signal incrementaPC : in std_logic;

signal Sai_Ula_EntraAC                  : in std_logic_vector(7 downto 0);
signal Sai_AC_entra_X_e_Mux2            : in std_logic_vector(7 downto 0);
signal Sai_RDM_Entra_Y_PC_Mux1_RI_Bram  : in std_logic_vector(7 downto 0);
signal Sai_PC_Entra_Mux1                : in std_logic_vector(7 downto 0);
signal Sai_Mux2_Entra_RDM               : in std_logic_vector(7 downto 0);
signal Sai_Mux1_Entra_REM               : in std_logic_vector(7 downto 0);
signal Sai_RI_Entra_DECOD               : in std_logic_vector(7 downto 0);


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
	Reg_RI: reg8
		PORT MAP( 
			carga => Sai_RDM_Entra_Y_PC_Mux1_RI_Bram,
			clk => clkMain,
			rst => ResetMain,
			cargaReg => CargaRI,
			output => Sai_RI_Entra_DECOD -- SERA QUE DA PRA COLOCAR DIRETO NO PINO DA BRAM. 
			);

	Reg_PC: pc 
		PORT MAP(
			carga => Sai_RDM_Entra_Y_PC_Mux1_RI_Bram,
			clk => clkMain,
			rst => ResetMain,
			incrementaPC => incrementaPC ,
			cargaPC => CargaPC,
			output => Sai_PC_Entra_Mux1
		);
	
saidaGeral <= Sai_RDM_Entra_Y_PC_Mux1_RI_Bram; 

end Behavioral;
