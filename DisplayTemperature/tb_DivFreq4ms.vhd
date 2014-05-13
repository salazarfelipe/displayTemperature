LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_DivFreq4ms IS
END tb_DivFreq4ms;
 
ARCHITECTURE behavior OF tb_DivFreq4ms IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DivFreq4ms
    PORT(
         clkFPGA : IN  std_logic;
         reset : IN  std_logic;
         enable4ms : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clkFPGA : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal enable4ms : std_logic;

   -- Clock period definitions
   constant clkFPGA_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DivFreq4ms PORT MAP (
          clkFPGA => clkFPGA,
          reset => reset,
          enable4ms => enable4ms
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

     reset<= '1';
	  wait for 100 ns;
	  reset <= '0';
 
      -- insert stimulus here 

      wait;
   end process;

END;
