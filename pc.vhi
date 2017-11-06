
-- VHDL Instantiation Created from source file pc.vhd -- 11:46:30 11/02/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT pc
	PORT(
		carga : IN std_logic_vector(7 downto 0);
		incrementaPC : IN std_logic;
		cargaPC : IN std_logic;          
		output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_pc: pc PORT MAP(
		carga => ,
		incrementaPC => ,
		cargaPC => ,
		output => 
	);


