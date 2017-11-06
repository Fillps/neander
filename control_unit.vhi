
-- VHDL Instantiation Created from source file control_unit.vhd -- 17:27:27 11/06/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT control_unit
	PORT(
		start : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;
		NZ : IN std_logic_vector(1 downto 0);
		decod : IN std_logic_vector(13 downto 0);
		prox_passo : IN std_logic;
		passo_a_passo : IN std_logic;
		continue : IN std_logic;          
		cargaNZ : OUT std_logic;
		selULA : OUT std_logic_vector(2 downto 0);
		cargaAC : OUT std_logic;
		cargaPC : OUT std_logic;
		incrementaPC : OUT std_logic;
		cargaREM : OUT std_logic;
		selREM : OUT std_logic;
		writeMEM : OUT std_logic_vector(0 to 0);
		cargaRDM : OUT std_logic;
		selRDM : OUT std_logic;
		cargaRI : OUT std_logic
		);
	END COMPONENT;

	Inst_control_unit: control_unit PORT MAP(
		start => ,
		clk => ,
		rst => ,
		NZ => ,
		decod => ,
		prox_passo => ,
		passo_a_passo => ,
		continue => ,
		cargaNZ => ,
		selULA => ,
		cargaAC => ,
		cargaPC => ,
		incrementaPC => ,
		cargaREM => ,
		selREM => ,
		writeMEM => ,
		cargaRDM => ,
		selRDM => ,
		cargaRI => 
	);


