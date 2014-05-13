--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:48:45 12/05/2012
-- Design Name:   
-- Module Name:   /home/felipe/Documentos/UTP/Electronica2/DisplayTemperature/tb_DisplayTemperature.vhd
-- Project Name:  DisplayTemperature
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DisplayTemperature
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_DisplayTemperature IS
END tb_DisplayTemperature;
 
ARCHITECTURE behavior OF tb_DisplayTemperature IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DisplayTemperature
    PORT(
         Temperature : IN  std_logic_vector(7 downto 0);
         clkFPGA : IN  std_logic;
         reset : IN  std_logic;
         DisplayRep : OUT  std_logic_vector(7 downto 0);
         enableLed : OUT  std_logic_vector(3 downto 0);
         serialOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Temperature : std_logic_vector(7 downto 0) := (others => '0');
   signal clkFPGA : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal DisplayRep : std_logic_vector(7 downto 0);
   signal enableLed : std_logic_vector(3 downto 0);
   signal serialOut : std_logic;

   -- Clock period definitions
   constant clkFPGA_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DisplayTemperature PORT MAP (
          Temperature => Temperature,
          clkFPGA => clkFPGA,
          reset => reset,
          DisplayRep => DisplayRep,
          enableLed => enableLed,
          serialOut => serialOut
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

      reset <= '1';
		wait for 100 ns;
		reset <= '0';
		Temperature <= "00101001";

      -- insert stimulus here 

      wait;
   end process;

END;
