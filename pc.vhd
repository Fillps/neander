----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:52:45 10/31/2017 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity pc is
	port(
		carga : in std_logic_vector (7 downto 0);
		clk, rst, incrementaPC, cargaPC : in std_logic;
		output : out std_logic_vector (7 downto 0)
	);
end pc;

architecture Behavioral of PC is
signal output_signal : std_logic_vector (7 downto 0 ) := "00000000";
begin

process(clk, rst, carga, incrementaPC,cargaPC)
begin
	if (rst = '1') then
		output_signal <= "00000000";
	elsif (rising_edge(clk)) then
		if (cargaPC = '1') then
			output_signal <= carga;
		elsif (incrementaPC = '1') then
			output_signal <= output_signal + 1;
		end if;
	end if;
end process;

output <= output_signal;

end Behavioral;

