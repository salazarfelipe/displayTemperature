
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ModuloTX is
	Port ( 	reset : in  STD_LOGIC;
           	enable115200 : in  STD_LOGIC;
           	data : in  STD_LOGIC_VECTOR (7 downto 0);
           	serialOut : out  STD_LOGIC);
end ModuloTX;

architecture arch_ModulTX of ModuloTX is
signal indice: integer range 0 to 7;
signal tarea: integer range 1 to 3 := 1; 
	begin
		process(reset, enable115200, data)
			begin
				if reset = '1' then
					serialOut <= '0';
					indice <= 0;
				else
					if(rising_edge(enable115200))then			
						if tarea = 1 then
							serialOut <= '0';
							tarea <= 2;
						end if;
						if tarea = 2 then
							if(indice>=0 and indice<=7)then
								serialOut <= data(indice);
								indice <= indice + 1;
							end if;
							if indice = 7 then
									tarea <= 3;
							end if;
						end if;
						
						if tarea = 3 then
							serialOut <= '1';
							indice <= 0;
							tarea <= 1;
						end if;		
					end if;
				end if;
		end process;	
end arch_ModulTX;

