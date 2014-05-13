library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DisplayTemperature is
    Port ( Temperature : in  STD_LOGIC_VECTOR (7 downto 0);
           clkFPGA : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           DisplayRep : out  STD_LOGIC_VECTOR (7 downto 0);
           enableLed : out  STD_LOGIC_VECTOR (3 downto 0);
			  serialOut : out  STD_LOGIC);
end DisplayTemperature;

architecture arch_DisplayTemperature of DisplayTemperature is
	
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
	
	COMPONENT BCD
	PORT(
		Digit : IN std_logic_vector(3 downto 0);          
		DisplayRep : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT DivFreq4ms
	PORT(
		clkFPGA : IN std_logic;
		reset : IN std_logic;          
		enable4ms : OUT std_logic
		);
	END COMPONENT;
	
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
	
	COMPONENT ModuloTX
	PORT(
		reset : IN std_logic;
		enable115200 : IN std_logic;
		data : IN std_logic_vector(7 downto 0);          
		serialOut : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT divFreq115200
	PORT(
		clkfpga : IN std_logic;
		reset : IN std_logic;          
		enable115200 : OUT std_logic
		);
	END COMPONENT;

signal auxUnidad : STD_LOGIC_VECTOR(3 downto 0);
signal auxDecena : STD_LOGIC_VECTOR(3 downto 0);
signal auxCentena : STD_LOGIC_VECTOR(3 downto 0);

signal RepUnidad : STD_LOGIC_VECTOR(7 downto 0);
signal RepDecena : STD_LOGIC_VECTOR(7 downto 0);
signal RepCentena : STD_LOGIC_VECTOR(7 downto 0);

signal auxEnable4ms :STD_LOGIC;

signal auxenable115200 : STD_LOGIC;


begin
	
	Inst_Convertor: Convertor PORT MAP(
		Temperature => Temperature ,
		clkFPGA => clkFPGA,
		reset => reset ,
		UND => auxUnidad,
		DEC => auxDecena,
		CENT => auxCentena 
	);
	-- para unidades
	Inst_BCD1: BCD PORT MAP(
		Digit => auxUnidad,
		DisplayRep => RepUnidad
	);
	-- para decenas
	Inst_BCD2: BCD PORT MAP(
		Digit => auxDecena,
		DisplayRep => RepDecena
	);
	-- para centenas
	Inst_BCD3: BCD PORT MAP(
		Digit => auxCentena ,
		DisplayRep => RepCentena
	);
	
	-- divosor de frecuencia para habilitar cada 4ms los display
	Inst_DivFreq4ms: DivFreq4ms PORT MAP(
		clkFPGA => clkFPGA,
		reset => reset,
		enable4ms => auxEnable4ms
	);
	
	Inst_DisplaySelector: DisplaySelector PORT MAP(
		UND => RepUnidad ,
		DEC => RepDecena,
		CEN => RepCentena,
		clkFPGA => clkFPGA,
		enable4ms => auxEnable4ms,
		DisplayRep => DisplayRep,
		enableLed => enableLed
	);
	
	Inst_divFreq115200: divFreq115200 PORT MAP(
		clkfpga => clkFPGA,
		reset => reset,
		enable115200 => auxenable115200
	);
	
	Inst_ModuloTX: ModuloTX PORT MAP(
		reset => reset,
		enable115200 => auxenable115200,
		data => Temperature,
		serialOut => serialOut
	);

end arch_DisplayTemperature;

