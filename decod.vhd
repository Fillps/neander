----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:58:21 10/31/2017 
-- Design Name: 
-- Module Name:    decod - Behavioral 
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

entity decod is
	port(
		opcode : in std_logic_vector (3 downto 0);
		
		--0-NOP, 1-STA, 2-LDA, 3-ADD, 4-OR, 5-AND, 6-NOT, 7-SUB, 
		--8-JMP, 9-JN, 10-JZ, 11-SHR, 12-SHL, 13-HLT
		instruction_output : out std_logic_vector(13 downto 0)
		
		);
end decod;

architecture Behavioral of decod is
	
begin

instruction_output <= "00000000000001" when (opcode = "0000") else --NOP
							 "00000000000010" when (opcode = "0001") else --STA
							 "00000000000100" when (opcode = "0010") else --LDA
							 "00000000001000" when (opcode = "0011") else --ADD
							 "00000000010000" when (opcode = "0100") else --OR
							 "00000000100000" when (opcode = "0101") else --AND
							 "00000001000000" when (opcode = "0110") else --NOT
							 "00000010000000" when (opcode = "0111") else --SUB
							 "00000100000000" when (opcode = "1000") else --JMP
							 "00001000000000" when (opcode = "1001") else --JN
							 "00010000000000" when (opcode = "1010") else --JZ
							 "00100000000000" when (opcode = "1011") else --SHR
							 "01000000000000" when (opcode = "1100") else --SHL
							 "10000000000000"; --HLT

end Behavioral;

