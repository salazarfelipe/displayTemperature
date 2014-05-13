library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD is
    Port ( Digit : in  STD_LOGIC_VECTOR (3 downto 0); -- digito a representar
           DisplayRep : out  STD_LOGIC_VECTOR (7 downto 0)); -- representacion del digito en el display de 7 segmentos
end BCD;

architecture arch_BCD of BCD is

begin
	process(Digit)
		begin
			case(Digit) is
				when "0000" => DisplayRep<= "00000011";
				when "0001" => DisplayRep <= "10011111";
				when "0010" => DisplayRep <= "00100101";
				when "0011" => DisplayRep <= "00001101";
				when "0100" => DisplayRep <= "10011001";
				when "0101" => DisplayRep <= "01001001";
				when "0110" => DisplayRep <= "01000001";
				when "0111" => DisplayRep <= "00011111";
				when "1000" => DisplayRep <= "00000001";
				when "1001" => DisplayRep <= "00001001";
				when others => DisplayRep <= "11111101";
			end case;
	end process;
end arch_BCD;

