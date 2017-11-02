----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:43 10/31/2017 
-- Design Name: 
-- Module Name:    control_unit - Behavioral 
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

entity control_unit is
	port(
	--ENTRADAS
		clk, rst : in std_logic;
		--0-N, 1-Z
		NZ: in std_logic_vector (1 downto 0);
		
		--0-NOP, 1-STA, 2-LDA, 3-ADD, 4-OR, 5-AND, 6-NOT, 7-SUB, 
		--8-JMP, 9-JN, 10-JZ, 11-SHR, 12-SHL, 13-HLT
		decod: in std_logic_vector (13 downto 0);
		
	--SAIDAS
		--REG_NZ
		cargaNZ : out std_logic;
		--ULA
		selULA : out std_logic_vector (2 downto 0);
		--REG_AC
		cargaAC : out std_logic;
		--PC
		cargaPC, incrementaPC : out std_logic;
		--MUX
		sel : out std_logic;
		--REM
		cargaREm : out std_logic;
		--MEM
		readMEM, writeMEM : out std_logic;
		--RDM
		cargaRDM : out std_logic;
		--RI
		cargaRI : out std_logic
		);
end control_unit;

architecture Behavioral of control_unit is

begin


end Behavioral;

