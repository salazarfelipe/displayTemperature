
-- VHDL Instantiation Created from source file ModuloTX.vhd -- 14:30:54 12/05/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ModuloTX
	PORT(
		reset : IN std_logic;
		enable115200 : IN std_logic;
		enableTrans : IN std_logic;
		data : IN std_logic_vector(7 downto 0);          
		transOk : OUT std_logic;
		serialOut : OUT std_logic
		);
	END COMPONENT;

	Inst_ModuloTX: ModuloTX PORT MAP(
		reset => ,
		enable115200 => ,
		enableTrans => ,
		transOk => ,
		data => ,
		serialOut => 
	);


