
-- VHDL Instantiation Created from source file Convertor.vhd -- 17:57:41 11/06/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Convertor
	PORT(
		Temperature : IN std_logic_vector(7 downto 0);
		clkFPGA : IN std_logic;
		reset : IN std_logic;          
		UND : OUT std_logic_vector(3 downto 0);
		DEC : OUT std_logic_vector(3 downto 0);
		CENT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Convertor: Convertor PORT MAP(
		Temperature => ,
		clkFPGA => ,
		reset => ,
		UND => ,
		DEC => ,
		CENT => 
	);


