----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:49 10/31/2017 
-- Design Name: 
-- Module Name:    ula - Behavioral 
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

entity ula is
	port(
			X,Y : in std_logic_vector (7 downto 0);
			selULA : in std_logic_vector (2 downto 0);
			output : out std_logic_vector (7 downto 0);
			nz : out std_logic_vector (1 downto 0)
		);
end ula;

architecture Behavioral of ula is
signal output_signal : std_logic_vector (7 downto 0 ) := "00000000"; 
begin

process (X,Y,selULA)
begin
	case selULA is
		when "000" => output_signal <= X + Y;
		when "001" => output_signal <= X and Y;
		when "010" => output_signal <= X or Y;
		when "011" => output_signal <= not X;
		when others => output <= Y;
	end case;

	if (output_signal(7) = '1') then
		nz <= "10";
	elsif (output_signal="00000000") then
		nz <= "01";
	else
		nz <= "00";
	end if;
end process;

output <= output_signal;

end Behavioral;

