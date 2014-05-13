
-- VHDL Instantiation Created from source file DivFreq4ms.vhd -- 18:04:07 11/06/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DivFreq4ms
	PORT(
		clkFPGA : IN std_logic;
		reset : IN std_logic;          
		enable4ms : OUT std_logic
		);
	END COMPONENT;

	Inst_DivFreq4ms: DivFreq4ms PORT MAP(
		clkFPGA => ,
		reset => ,
		enable4ms => 
	);


