library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Convertor is
	Port( 	Temperature : in STD_LOGIC_VECTOR(7 downto 0);
				clkFPGA : in STD_LOGIC;
				reset : in STD_LOGIC;
				UND : out STD_LOGIC_VECTOR(3 downto 0);
				DEC : out STD_LOGIC_VECTOR(3 downto 0);
				CENT : out STD_LOGIC_VECTOR(3 downto 0));
	end Convertor;
	
architecture arch_Convertor of Convertor is

signal auxTemperature:  integer;
signal aux_Centenas: integer := 0;
signal aux_Decenas: integer := 0;
signal flag: STD_LOGIC := '1';


begin
process(clkFPGA, Temperature, auxTemperature)
begin  
	if(rising_edge(clkFPGA))then
		if(reset = '1')then
			UND <= (others=>'1');
			DEC <= (others=>'1');
			CENT <= (others=>'1');
			else	 
			if(flag = '1')then
				auxTemperature <= conv_integer(Temperature);
				aux_Decenas <= 0;
				aux_Centenas <= 0;
				flag <= '0';
			end if;
			if(auxTemperature >= 100)then
				auxTemperature <= auxTemperature - 100;
				aux_Centenas <= aux_Centenas + 1;
			end if;
			if(auxTemperature < 100 and auxTemperature >= 10)then
				auxTemperature <= auxTemperature - 10;
				aux_Decenas <= aux_Decenas + 1;
			end if;
			if(auxTemperature < 10)then
				UND <= conv_std_logic_vector(auxTemperature, 4);
				DEC <= conv_std_logic_vector(aux_Decenas, 4);
				CENT <= conv_std_logic_vector(aux_Centenas, 4);
				flag <= '1';
			end if;
		end if;
	end if;
end process;

end arch_Convertor;