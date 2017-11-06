
-- VHDL Instantiation Created from source file reg8.vhd -- 23:03:50 11/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reg8
	PORT(
		carga : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;
		rst : IN std_logic;
		cargaReg : IN std_logic;          
		output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_reg8: reg8 PORT MAP(
		carga => ,
		clk => ,
		rst => ,
		cargaReg => ,
		output => 
	);


