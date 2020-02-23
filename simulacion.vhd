
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY CODIG_WHEN_ELSE2TB IS
END CODIG_WHEN_ELSE2TB;
 
ARCHITECTURE behavior OF CODIG_WHEN_ELSE2TB IS 
 
 
 
    COMPONENT CODIGO_WHEN_ELSE2
    PORT(
         BCD : IN  std_logic_vector(3 downto 0);
         SECMENTOS : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal BCD : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal SECMENTOS : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CODIGO_WHEN_ELSE2 PORT MAP (
          BCD => BCD,
          SECMENTOS => SECMENTOS
        );

   -- Clock process definitions
  -- <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
	
   stim_proc: process
   begin		
	BCD <= "0000", "0001" AFTER 50 NS, "0010" AFTER 100 NS,
	               "0011" AFTER 150 NS, "0100" AFTER 200 NS,
			         "0101" AFTER 250 NS, "0110" AFTER 300 NS,
			         "0111" AFTER 350 NS, "1000" AFTER 400 NS,
			         "1001" AFTER 450 NS, "1010" AFTER 500 NS,
			         "1011" AFTER 550 NS, "1100" AFTER 600 NS;
			 
			
      -- hold reset state for 100 ns.
      wait for 800 ns;	

      --wait for <clock>_period*10;
