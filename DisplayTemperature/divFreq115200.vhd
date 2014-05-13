library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divFreq115200 is
	Port ( clkfpga : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           enable115200 : out  STD_LOGIC);
end divFreq115200;

architecture arch_divFreq115200 of divFreq115200 is

signal contador: integer range 0 to 433;
begin
process(clkfpga,reset)
	begin
		if(reset ='1') then
			enable115200 <= '0';
			contador <= 0;
		else
			if(rising_edge(clkfpga))then
				contador<=contador+1;
				if(contador>=433)then
					enable115200<= '1';
					contador<= 0;
				else
				enable115200<= '0';
				end if;
			end if;
		end if;
end process;

end arch_divFreq115200;

