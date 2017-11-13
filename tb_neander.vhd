--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:38:14 11/07/2017
-- Design Name:   
-- Module Name:   D:/Documents/Google Drive/Eng Comp/UFGRS/INF/sistemas digitais/neander/tb_neander.vhd
-- Project Name:  neander
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: neander
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tb_neander IS
END tb_neander;
 
ARCHITECTURE behavior OF tb_neander IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT neander
    PORT(
         clkMain : IN  std_logic;
         rst_or_bram_in_low : IN  std_logic;
         alt_view : IN  std_logic;
         writeB : IN  std_logic;
         ender_low : IN  std_logic;
         ender_high : IN  std_logic;
         passo_a_passo : IN  std_logic;
         run_or_bram_in_high : IN  std_logic;
         selDisplay : OUT  std_logic_vector(3 downto 0);
         display : OUT  std_logic_vector(6 downto 0);
         N_led : OUT  std_logic;
         Z_led : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clkMain : std_logic := '0';
   signal rst_or_bram_in_low : std_logic := '0';
   signal alt_view : std_logic := '0';
   signal writeB : std_logic := '0';
   signal ender_low : std_logic := '0';
   signal ender_high : std_logic := '0';
   signal passo_a_passo : std_logic := '0';
   signal run_or_bram_in_high : std_logic := '0';
	

 	--Outputs
   signal selDisplay : std_logic_vector(3 downto 0);
   signal display : std_logic_vector(6 downto 0);
   signal N_led : std_logic;
   signal Z_led : std_logic;

   -- Clock period definitions
   constant clkMain_period : time := 20 ns;
	
	signal rst : std_logic;
	signal run : std_logic;
 
BEGIN
	rst_or_bram_in_low <= rst;
	run_or_bram_in_high <= run;
	
	-- Instantiate the Unit Under Test (UUT)
   uut: neander PORT MAP (
          clkMain => clkMain,
          rst_or_bram_in_low => rst_or_bram_in_low,
          alt_view => alt_view,
          writeB => writeB,
          ender_low => ender_low,
          ender_high => ender_high,
          passo_a_passo => passo_a_passo,
          run_or_bram_in_high => run_or_bram_in_high,
          selDisplay => selDisplay,
          display => display,
          N_led => N_led,
          Z_led => Z_led
        );

   -- Clock process definitions
   clkMain_process :process
   begin
		clkMain <= '0';
		wait for clkMain_period/2;
		clkMain <= '1';
		wait for clkMain_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clkMain_period*10;

      -- insert stimulus here 
		rst <= '1';
		run <= '0';
		alt_view <= '0';
		passo_a_passo <= '0';
		writeB <= '0';
		ender_low <= '0';
		ender_high <= '0';
		
		wait for clkMain_period;
		rst <= '0';
		run <= '1';
		
		wait for clkMain_period;
		
		run <= '0';
		

      wait;
   end process;

END;
