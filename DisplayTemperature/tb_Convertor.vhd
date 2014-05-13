LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_Convertor IS
END tb_Convertor;
 
ARCHITECTURE behavior OF tb_Convertor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Convertor
    PORT(
         Temperature : IN  std_logic_vector(7 downto 0);
         clkFPGA : IN  std_logic;
         reset : IN  std_logic;
         UND : OUT  std_logic_vector(3 downto 0);
         DEC : OUT  std_logic_vector(3 downto 0);
         CENT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Temperature : std_logic_vector(7 downto 0) := (others => '0');
   signal clkFPGA : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal UND : std_logic_vector(3 downto 0);
   signal DEC : std_logic_vector(3 downto 0);
   signal CENT : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clkFPGA_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Convertor PORT MAP (
          Temperature => Temperature,
          clkFPGA => clkFPGA,
          reset => reset,
          UND => UND,
          DEC => DEC,
          CENT => CENT
        );

   -- Clock process definitions
   clkFPGA_process :process
   begin
		clkFPGA <= '0';
		wait for clkFPGA_period/2;
		clkFPGA <= '1';
		wait for clkFPGA_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset <= '1';
		wait for 100 ns;
		reset <= '0';
		Temperature <= "00011101";
		wait for 100 ns;
		Temperature <= "01111000";

      -- insert stimulus here 

      wait;
   end process;

END;
