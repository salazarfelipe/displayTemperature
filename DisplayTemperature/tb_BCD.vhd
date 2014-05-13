LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_BCD IS
END tb_BCD;
 
ARCHITECTURE behavior OF tb_BCD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCD
    PORT(
         Digit : IN  std_logic_vector(3 downto 0);
         DisplayRep : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Digit : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal DisplayRep : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCD PORT MAP (
          Digit => Digit,
          DisplayRep => DisplayRep
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      
      -- insert stimulus here 

      wait;
   end process;

END;
