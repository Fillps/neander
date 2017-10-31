----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:30 10/31/2017 
-- Design Name: 
-- Module Name:    reg_nz - Behavioral 
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

entity reg_nz is
	port(
		carga : in std_logic_vector (1 downto 0);
		cargaReg : in std_logic;
		output : out std_logic_vector (1 downto 0)
	);
end reg_nz;

architecture Behavioral of reg_nz is
signal output_signal : std_logic_vector (1 downto 0 ) := "00"; 
begin

process (carga, cargaReg)
begin
	if (cargaReg = '1') then
		output_signal <= carga;
	end if;
end process;

output <= output_signal;

end Behavioral;
