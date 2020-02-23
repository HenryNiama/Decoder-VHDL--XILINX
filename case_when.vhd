
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity CODIGO_CESE_WHEN is
    Port ( BCD : in  STD_LOGIC_VECTOR (3 downto 0);
           SEJ : out  STD_LOGIC_VECTOR (6 downto 0));
end CODIGO_CESE_WHEN;

architecture Behavioral of CODIGO_CESE_WHEN is

begin
PROCESS (BCD)
BEGIN
case BCD is
		
	        when "0000" => SEJ <="1111110";
	
		when "0001" => SEJ <="0110000";
	
		when "0010" => SEJ <="1101101";
	
		when "0011" => SEJ <="1111001";
	
		when "0100" => SEJ <="0110011";
	
		when "0101" => SEJ <="1011011";
	
		when "0110" => SEJ <="1011111";
	
		when "0111" => SEJ <="1110000";
	
		when "1000" => SEJ <="1111111";

	        when "1001" => SEJ <="1111011";

		when others => SEJ <="1001111";

		end case;
 END PROCESS;
end Behavioral;