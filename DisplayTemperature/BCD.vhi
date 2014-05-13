
-- VHDL Instantiation Created from source file BCD.vhd -- 18:02:40 11/06/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT BCD
	PORT(
		Digit : IN std_logic_vector(3 downto 0);          
		DisplayRep : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_BCD: BCD PORT MAP(
		Digit => ,
		DisplayRep => 
	);


