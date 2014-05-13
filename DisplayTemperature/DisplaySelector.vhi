
-- VHDL Instantiation Created from source file DisplaySelector.vhd -- 18:00:09 11/06/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DisplaySelector
	PORT(
		UND : IN std_logic_vector(7 downto 0);
		DEC : IN std_logic_vector(7 downto 0);
		CEN : IN std_logic_vector(7 downto 0);
		clkFPGA : IN std_logic;
		enable4ms : IN std_logic;          
		DisplayRep : OUT std_logic_vector(7 downto 0);
		enableLed : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_DisplaySelector: DisplaySelector PORT MAP(
		UND => ,
		DEC => ,
		CEN => ,
		clkFPGA => ,
		enable4ms => ,
		DisplayRep => ,
		enableLed => 
	);


