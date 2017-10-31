----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:47:06 10/31/2017 
-- Design Name: 
-- Module Name:    reg8 - Behavioral 
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

entity reg8 is
	port(
		carga : in std_logic_vector (7 downto 0);
		cargaReg : in std_logic;
		output : out std_logic_vector (7 downto 0)
	);
end reg8;

architecture Behavioral of reg8 is
signal output_signal : std_logic_vector (7 downto 0 ) := "00000000"; 
begin

process (carga, cargaReg)
begin
	if (cargaReg = '1') then
		output_signal <= carga;
	end if;
end process;

output <= output_signal;

end Behavioral;

