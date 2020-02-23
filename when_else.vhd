library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CODIGO_WHEN_ELSE2 is
    Port ( BCD : in  STD_LOGIC_VECTOR (3 downto 0);
           SECMENTOS : out  STD_LOGIC_VECTOR (6 downto 0));
end CODIGO_WHEN_ELSE2;

architecture Behavioral of CODIGO_WHEN_ELSE2 is

begin
--PROCESS (BCD)
	--BEGIN 
	SECMENTOS <= "1111110" WHEN (BCD = "0000") ELSE 
					 "0110000" WHEN (BCD = "0001") ELSE
					 "1101101" WHEN (BCD = "0010") ELSE
					 "1111001" WHEN (BCD = "0011")ELSE		
                "0110011" WHEN (BCD = "0100") ELSE
                "1011011" WHEN (BCD = "0101") ELSE
					 "1011111" WHEN (BCD = "0110") ELSE
					 "1110000" WHEN (BCD = "0111") ELSE
					 "1111111" WHEN (BCD = "1000") ELSE
					 "1111011" WHEN (BCD = "1001") ELSE
					 "0110000" WHEN (BCD = "0001") ELSE
					 "1001111";
					-- END PROCESS;
					
end Behavioral;
