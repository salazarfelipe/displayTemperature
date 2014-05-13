LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_DisplaySeletor IS
END tb_DisplaySeletor;
 
ARCHITECTURE behavior OF tb_DisplaySeletor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DisplaySelector
    PORT(
         UND : IN  std_logic_vector(7 downto 0);
         DEC : IN  std_logic_vector(7 downto 0);
         CEN : IN  std_logic_vector(7 downto 0);
         clkFPGA : IN  std_logic;
         enable4ms : IN  std_logic;
         DisplayRep : OUT  std_logic_vector(7 downto 0);
         enableLed : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal UND : std_logic_vector(7 downto 0) := (others => '0');
   signal DEC : std_logic_vector(7 downto 0) := (others => '0');
   signal CEN : std_logic_vector(7 downto 0) := (others => '0');
   signal clkFPGA : std_logic := '0';
   signal enable4ms : std_logic := '0';

 	--Outputs
   signal DisplayRep : std_logic_vector(7 downto 0);
   signal enableLed : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clkFPGA_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DisplaySelector PORT MAP (
          UND => UND,
          DEC => DEC,
          CEN => CEN,
          clkFPGA => clkFPGA,
          enable4ms => enable4ms,
          DisplayRep => DisplayRep,
          enableLed => enableLed
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		enable4ms<='1';
		CEN <= "00000011";
		enable4ms<='0';
		wait for 100 ns;
		enable4ms<='1';
		DEC <= "00100101";
		enable4ms<='0';
		wait for 100 ns;
		enable4ms<='1';
		UND <= "00011001";

      wait;
   end process;

END;
