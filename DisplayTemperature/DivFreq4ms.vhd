library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DivFreq4ms is
    Port ( clkFPGA : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           enable4ms : out  STD_LOGIC);
end DivFreq4ms;

architecture arch_DivFreq4ms of DivFreq4ms is
signal cont: integer := 0;
begin
	process(clkFPGA)begin
		if(rising_edge(clkFPGA))then
			if(reset = '1')then	
				cont <= 0;
			else	
				cont <= cont + 1;	
				if(cont = 200000)then
					enable4ms <= '1';
					cont <= 0;
				else
					enable4ms <= '0';
				end if;
			end if;
		end if;	
end process;


end arch_DivFreq4ms;

