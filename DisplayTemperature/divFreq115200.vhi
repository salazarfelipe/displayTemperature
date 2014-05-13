
-- VHDL Instantiation Created from source file divFreq115200.vhd -- 14:32:19 12/05/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT divFreq115200
	PORT(
		clkfpga : IN std_logic;
		reset : IN std_logic;          
		enable115200 : OUT std_logic
		);
	END COMPONENT;

	Inst_divFreq115200: divFreq115200 PORT MAP(
		clkfpga => ,
		reset => ,
		enable115200 => 
	);


