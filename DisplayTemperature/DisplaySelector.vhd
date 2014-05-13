library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DisplaySelector is
    Port ( UND : in  STD_LOGIC_VECTOR (7 downto 0);
           DEC : in  STD_LOGIC_VECTOR (7 downto 0);
           CEN : in  STD_LOGIC_VECTOR (7 downto 0);
           clkFPGA : in  STD_LOGIC;
           enable4ms : in  STD_LOGIC;
           DisplayRep : out  STD_LOGIC_VECTOR (7 downto 0);
           enableLed : out  STD_LOGIC_VECTOR (3 downto 0));
end DisplaySelector;

architecture arch_DisplaySelector of DisplaySelector is

signal cont: integer := 0;

begin
	process(clkFPGA, UND, DEC, CEN,enable4ms)begin
		if(rising_edge(clkFPGA))then
			if(enable4ms = '1')then
				cont <= cont + 1;		
				if(cont = 1)then
					DisplayRep <= CEN;
					enableLed <= "0111";
				end if;	
				if(cont = 2)then
					DisplayRep <= DEC;
					enableLed <= "1011";
				end if;
				if(cont = 3)then
					DisplayRep <= UND;
					enableLed <= "1101";
				end if;
				if(cont = 4)then
					DisplayRep <= "11100101";
					enableLed <= "1110";
					cont <= 0;
				end if;	
			end if;
		end if;	
	end process;
end arch_DisplaySelector;