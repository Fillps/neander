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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 

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
		start : in std_logic; --indica se pode iniciar
		clk, rst : in std_logic;
		--0-N, 1-Z
		NZ: in std_logic_vector (1 downto 0);
		
		--0-NOP, 1-STA, 2-LDA, 3-ADD, 4-OR, 5-AND, 6-NOT, 7-SUB, 
		--8-JMP, 9-JN, 10-JZ, 11-SHR, 12-SHL, 13-HLT
		decod: in std_logic_vector (13 downto 0);
		
		prox_passo,  passo_a_passo : in std_logic;
	--SAIDAS
		--REG_NZ
		cargaNZ : out std_logic;
		--ULA
		selULA : out std_logic_vector (2 downto 0);
		--REG_AC
		cargaAC : out std_logic;
		--PC
		cargaPC, incrementaPC : out std_logic;
		--REM
		cargaREM : out std_logic; 
		selREM : out std_logic; -- 0 => PC, 1 => RDM
		--MEM
		writeMEM : out std_logic_vector (0 downto 0);
		--RDM
		cargaRDM : out std_logic;
		selRDM : out std_logic; -- 0 => MEM, 1 => AC
		--RI
		cargaRI : out std_logic
		);
end control_unit;

architecture Behavioral of control_unit is

type state is (FIND_INSTR_1_ST, FIND_INSTR_2_ST, FIND_INSTR_3_ST, READ_INSTR_ST, RI_1_ST, RI_2_ST, FIND_DATA_ST, 
					READ_MEMORY_1_ST, READ_MEMORY_2_ST, FIND_ADDRESS_1_ST, FIND_ADDRESS_2_ST, ULA_1_ST, 
					ULA_2_ST, STA_1_ST, STA_2_ST, JMP_ST, FALSE_JMP_ST, HLT_ST, IDLE_ST, RST_ST, WAIT_STEP_ST);
signal current_st, next_st : state;
signal stop : std_logic := '0';
begin

process (clk, rst, current_st, next_st)
begin
 if rst ='1' then
   current_st <= RST_ST;
 elsif (rising_edge(clk)) then
   current_st <= next_st;
 end if;
 end process;

process(nz, decod, start, next_st, current_st, stop, passo_a_passo, prox_passo)
	variable prox_passo_feito : integer range 0 to 1;
begin
	case current_st is 
		when FIND_INSTR_1_ST =>
			cargaNZ <= '0';
			cargaAC <= '0';
			cargaPC <= '0';
			cargaRDM <= '0';
			cargaRI <= '0';
			writeMEM <= "0";
			incrementaPC <= '0';
			selRDM <= '0';
			if (prox_passo = '0') then
				prox_passo_feito := 1;
			end if;
			if ((prox_passo = '1' and prox_passo_feito = 1) or passo_a_passo = '0') then
				prox_passo_feito := 0;
				next_st <= FIND_INSTR_2_ST;
			else
				next_st <= FIND_INSTR_1_ST;
			end if;
		when FIND_INSTR_2_ST =>
			
			selREM <= '0'; -- REM <= PC
			cargaREM <= '1';
			next_st <= FIND_INSTR_3_ST;
		when FIND_INSTR_3_ST =>
			cargaREM <= '0';
		
			next_st <= READ_INSTR_ST;
		when READ_INSTR_ST =>
			cargaREM <= '0';
			cargaRDM <= '1';
			incrementaPC <= '1';
			
			next_st <= RI_1_ST;
		when RI_1_ST =>
			incrementaPC <= '0';
			cargaRDM <= '0';
			
			cargaRI <= '1';
			next_st <= RI_2_ST;
		when RI_2_ST =>
			cargaRI <= '0';
			
			if (decod(0) = '1') then --NOP
				next_st <= FIND_INSTR_1_ST;
			elsif ((decod(9) = '1' and nz(0) = '0') or (decod(10) = '1' and nz(1) = '0')) then --JZ and N = 0, JN and Z = 0
				next_st <= FALSE_JMP_ST;
			elsif (decod(13) = '1') then --HLT
				next_st <= HLT_ST;
			elsif (decod(6) = '1') then --NOT
				next_st <= ULA_2_ST;
			else 	
				next_st <= FIND_DATA_ST;
			end if;
		when FIND_DATA_ST =>
			
			selREM <= '0';
			cargaREM <= '1';
			next_st <= READ_MEMORY_1_ST;
		when READ_MEMORY_1_ST => --espera o clk da bram
			cargaREM <= '0';
			
			next_st <= READ_MEMORY_2_ST;
		when READ_MEMORY_2_ST =>
			cargaRDM <= '1';
			incrementaPC <= '1';
			if (decod(8) = '1' or decod(9) = '1' or decod(10) = '1') then
				next_st <= JMP_ST;
			else
				next_st <= FIND_ADDRESS_1_ST;
			end if;
		when FIND_ADDRESS_1_ST =>
			cargaRDM <= '0';
			incrementaPC <= '0';
			
			selREM <= '1';
			cargaREM <= '1';
			next_st <= FIND_ADDRESS_2_ST;
		when FIND_ADDRESS_2_ST =>
			cargaREM <= '0';
			selREM <= '0';
			
			if (decod(1) = '1') then
				next_st <= STA_1_ST;
			else
				next_st <= ULA_1_ST;
			end if;
		when ULA_1_ST =>
			cargaRDM <= '1';
			cargaREM <= '0';
			--0-NOP, 1-STA, 2-LDA, 3-ADD, 4-OR, 5-AND, 6-NOT, 7-SUB, 
			--8-JMP, 9-JN, 10-JZ, 11-SHR, 12-SHL, 13-HLT
			-- 000 - ADD
			-- 001 - AND
			-- 010 - OR
			-- 011 - NOT
			-- 100 - Y
			-- 101 - SUB
			-- 110 - SHR
			-- 111 - SHL
			if (decod(2) = '1') then 		-- LDA
				selULA <= "100";
			elsif (decod(3) = '1') then 	-- ADD
				selULA <= "000";
			elsif (decod(4) = '1') then  	-- OR
				selULA <= "010";	
			elsif (decod(5) = '1') then 	-- AND
				selULA <= "001";
			elsif (decod(6) = '1') then 	-- NOT
				selULA <= "011";
			elsif (decod(7) = '1') then 	-- SUB
				selULA <= "101";
			elsif (decod(11) = '1') then 	-- SHR
				selULA <= "110";
			elsif (decod(12) = '1') then 	-- SHL
				selULA <= "111";
			end if;
			next_st <= ULA_2_ST;
		when ULA_2_ST =>
			cargaRDM <= '0';
			cargaNZ <= '1';
			cargaAC <= '1';
			next_st <= FIND_INSTR_1_ST;
		when STA_1_ST =>
			cargaREM <= '0';
			
			selRDM <= '1';
			cargaRDM <= '1';
			
			next_st <= STA_2_ST;
		when STA_2_ST =>
			cargaRDM <= '0';
			selRDM <= '0';
			
			writeMEM <= "1";
			next_st <= FIND_INSTR_1_ST;
		when JMP_ST =>
			cargaRDM <= '0';
			incrementaPC <= '0';
			
			cargaPC <= '1';
			next_st <= FIND_INSTR_1_ST;
		when FALSE_JMP_ST =>
			cargaRI <= '0';
			
			incrementaPC <= '1';
			next_st <= FIND_INSTR_1_ST;
		when HLT_ST =>
			cargaRI <= '0';
			cargaPC <= '0';
			cargaAC <= '0';
			incrementaPC <= '0';
			
			stop <= '1';
			next_st <= IDLE_ST;
		when IDLE_ST =>
			if (stop = '0' and start = '1') then
				next_st <= FIND_INSTR_1_ST;
			else
				next_st <= IDLE_ST;
			end if;
		when RST_ST =>
			cargaNZ <= '0';
			cargaRI <= '0';
			cargaRDM <= '0';
			cargaREM <= '0';
			cargaAC <= '0';
			cargaPC <= '0';
			incrementaPC <= '0';
			writeMEM <= "0";
			stop <= '0';
			next_st <= IDLE_ST;
		when WAIT_STEP_ST =>
			
		when others =>
			next_st <= IDLE_ST;
	end case;
end process;
	
	
end Behavioral;

