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
USE IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity neander is
	Port ( 
		clkMain : in std_logic; --clk
		ResetMain : in std_logic; -- botao
		Start : in std_logic; -- chave
		alt_view : in std_logic; -- chave -- alterna em visualizar a memoria ou o AC + PC -- 1 = memoria; 0 = AC + PC
		
		ender_low : in std_logic; -- botao -- conta em HEXA no display 2, para navegar a mem
		ender_high : in std_logic; -- botao -- conta em HEXA no display 1, para navegar a mem
		
		selDisplay : out std_logic_vector (3 downto 0); -- seleciona o display
		display : out std_logic_vector (6 downto 0); -- display 7 seg
		N_led : out std_logic; -- led
		Z_led : out std_logic -- led
	);
end neander;

architecture Behavioral of neander is

signal CargaAC      : std_logic;
signal CargaRDM     : std_logic;
signal CargaREM     : std_logic;
signal CargaPC      : std_logic;
signal CargaRI      : std_logic;
signal incrementaPC : std_logic;
signal cargaNZ      : std_logic;
signal SelMux1      : std_logic;
signal SelMux2      : std_logic;
signal writeMEM     : std_logic_vector (0 downto 0);

signal ULA_output                  : std_logic_vector(7 downto 0);
signal AC_output            : std_logic_vector(7 downto 0);
signal RDM_output  : std_logic_vector(7 downto 0);
signal PC_output                : std_logic_vector(7 downto 0);
signal Mux2_output               : std_logic_vector(7 downto 0);
signal Mux1_output               : std_logic_vector(7 downto 0);
signal RI_output               : std_logic_vector(7 downto 0);
signal ULA_NZ_output					: std_logic_vector(1 downto 0);																																
signal NZ_output     : std_logic_vector(1 downto 0);
signal selULA 							: std_logic_vector(2 downto 0);
signal BRAM_output              : std_logic_vector(7 downto 0);
signal REM_output               : std_logic_vector(7 downto 0);
signal Decod_output   : std_logic_vector(13 downto 0);

signal BRAM_b_output : std_logic_vector (7 downto 0);
signal BRAM_b_input : std_logic_vector (7 downto 0);
signal BRAM_b_low_input : std_logic_vector (3 downto 0);
signal BRAM_b_high_input : std_logic_vector (3 downto 0);

COMPONENT reg8
   PORT(
		carga : in std_logic_vector (7 downto 0);
		clk, rst, cargaReg : in std_logic;
		output : out std_logic_vector (7 downto 0)
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
		writeMEM : OUT std_logic_vector (0 downto 0);
		cargaRDM : OUT std_logic;
		selRDM : OUT std_logic;
		cargaRI : OUT std_logic
		);
	END COMPONENT;

COMPONENT bram
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
			
function binTo7seg(value : in std_logic_vector (3 downto 0)) return std_logic_vector is
begin
	case value is
		 when "0000" => return "1000000";
		 when "0001" => return "1111001";
		 when "0010" => return "0100100";
		 when "0011" => return "0110000";
		 when "0100" => return "0011001";
		 when "0101" => return "0010010";
		 when "0110" => return "0000010";
		 when "0111" => return "1111000";
		 when "1000" => return "0000000";
		 when "1001" => return "0010000";
		 when "1010" => return "0001000";
		 when "1011" => return "0000011";
		 when "1100" => return "1000110";
		 when "1101" => return "0100001";
		 when "1110" => return "0000110";
		 when "1111" => return "0001110";
		 when others => return "0001110";
		end case;
end binTo7seg;

begin


	Reg_AC : reg8 
		PORT MAP( 
			carga => ULA_output,
			clk => clkMain,
			rst => ResetMain,
			cargaReg => CargaAC,
			output => AC_output
			);	
	Reg_RDM: reg8
		PORT MAP( 
			carga => Mux2_output,
			clk => clkMain,
			rst => ResetMain,
			cargaReg => CargaRDM,
			output => RDM_output
			);
	Reg_REM: reg8
		PORT MAP( 
			carga => Mux1_output,
			clk => clkMain,
			rst => ResetMain,
			cargaReg => CargaREM,
			output => REM_output 
			);
	Reg_RI : reg8
		PORT MAP( 
			carga => RDM_output,
			clk => clkMain,
			rst => ResetMain,
			cargaReg => CargaRI,
			output => RI_output
			);
	Reg_PC : pc 
		PORT MAP(
			carga => RDM_output,
			clk => clkMain,
			rst => ResetMain,
			incrementaPC => incrementaPC ,
			cargaPC => CargaPC,
			output => PC_output
		);
	NZ     : reg_nz 
		PORT MAP( 
		carga => ULA_NZ_output,
		clk => clkMain,
		rst => ResetMain,
		cargaReg => cargaNZ,
		output => NZ_output
		);	
	UAL    : ula 
		PORT MAP(
		X => AC_output,
		Y => RDM_output,
		selULA => selULA,
		output => ULA_output,
		nz => ULA_NZ_output
	);	
	Mux1   : mux 
		PORT MAP(
			A => PC_output,
			B => RDM_output,
			sel => SelMux1,
			output => Mux1_output  
		);
	Mux2   : mux 
		PORT MAP(
			A => BRAM_output,
			B => AC_output,
			sel => SelMux2,
			output => Mux2_output
		);
	DECODE : decod 
		PORT MAP(
		opcode => RI_output,
		instruction_output => Decod_output
	);
	UnidadeControle: control_unit 
		PORT MAP(
		start => Start,
		clk => clkMain,
		rst => ResetMain,
		NZ => NZ_output,
		decod => Decod_output,
		cargaNZ => cargaNZ,
		selULA => selULA,
		cargaAC => CargaAC,
		cargaPC => CargaPC,
		incrementaPC => incrementaPC,
		cargaREM => CargaREM,
		selREM => SelMux1,
		writeMEM => writeMEM,
		cargaRDM => CargaRDM,
		selRDM => SelMux2,
		cargaRI => CargaRI
	);
	
  memory : bram
  PORT MAP (
    clka => clkMain,
    wea => writeMEM,
    addra => REM_output,
    dina => RDM_output,
    douta => BRAM_output,
	 
    clkb => clkMain,
    web => "0",
    addrb => BRAM_b_input,
    dinb => "00000000",
    doutb => BRAM_b_output
  );
  
	process(clkMain, alt_view)
	variable ctrl: bit_vector(1 downto 0);
	begin
		if (rising_edge(clkMain)) then
			
			if (alt_view = '1') then -- visualizar memoria
				if (ctrl="00") then
					selDisplay<="1110";
					display <= binTo7seg(BRAM_b_output(3 downto 0));
					ctrl:="01";
				elsif (ctrl="01") then 
					selDisplay<="1101";
					display <= binTo7seg(BRAM_b_output(7 downto 4));						
					ctrl:="10";
				elsif (ctrl="10") then 
					selDisplay<="1011";
					display <= binTo7seg(BRAM_b_low_input);
					ctrl:="11";
				else
					selDisplay<="0111";
					display <= binTo7seg(BRAM_b_high_input);
					ctrl:="00";
				end if;
			else --visualizar ACC
				if (ctrl="00") then
					selDisplay<="1110";
					display <= binTo7seg(AC_output(3 downto 0));
					ctrl:="01";
				elsif (ctrl="01") then 
					selDisplay<="1101";
					display <= binTo7seg(AC_output(7 downto 4));						
					ctrl:="10";
				elsif (ctrl="10") then 
					selDisplay<="1011";
					display <= binTo7seg(PC_output(3 downto 0));
					ctrl:="11";
				else
					selDisplay<="0111";
					display <= binTo7seg(PC_output(7 downto 4));
					ctrl:="00";
				end if;
			end if;
		end if;
	end process;
	
	process(ender_low)
	begin
		if (rising_edge(ender_low)) then
			BRAM_b_low_input <= BRAM_b_low_input + 1; 
		end if;
	end process;
	
	process(ender_high)
	begin
		if (rising_edge(ender_high)) then
			BRAM_b_high_input <= BRAM_b_high_input + 1; 
		end if;
	end process;
	
	BRAM_b_input <= BRAM_b_high_input & BRAM_b_low_input;

	
end Behavioral;
