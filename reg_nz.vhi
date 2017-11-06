
-- VHDL Instantiation Created from source file reg_nz.vhd -- 11:45:49 11/02/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reg_nz
	PORT(
		carga : IN std_logic_vector(1 downto 0);
		cargaReg : IN std_logic;          
		output : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_reg_nz: reg_nz PORT MAP(
		carga => ,
		cargaReg => ,
		output => 
	);


