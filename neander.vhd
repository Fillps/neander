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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity neander is
end neander;

architecture Behavioral of neander is

signal clkMain : in std_logic;
signal ResetMain : in std_logic;
signal CargaAC ; : in std_logic;

signal Sai_Ula_EntraAC             : in std_logic_vector(7 downto 0);
signal Sai_AC_entra_X_e_Mux2       : in std_logic_vector(7 downto 0);
signal Sai_RDM_Entra_Y_PC_Mux1_RI  : in std_logic_vector(7 downto 0);
signal Sai_PC_Entra_Mux1  : in std_logic_vector(7 downto 0);


COMPONENT reg8
   PORT(
		carga : in std_logic_vector (1 downto 0);
		clk, rst, cargaReg : in std_logic;
		output : out std_logic_vector (1 downto 0)
		);
 END COMPONENT;

begin
	Acumulador: reg8 work.cpu
		PORT MAP( 
			carga => Sai_Ula_EntraAC,
			clk => clkMain,
			rst => ResetMain,
			cargaReg => CargaAC,
			output => Sai_AC_entra_X_e_Mux2
			);

end Behavioral;
