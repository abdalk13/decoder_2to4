library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_2to4 is
  Port ( a : in STD_LOGIC_VECTOR(1 downto0);
   enable : in std_logic;
   b : out STD_LOGIC_VECTOR(3downto0));
end decoder_2to4;

 architecture Behavioral of decoder_2to4 is
  
begin
  process(enable, a)
  begin
  if enable = '1' then
     case a is
       when"00"=>b<="0001";
       when"01"=>b<="0010";
       when"10"=>b<="0100";
       when"11"=>b<="1000";
       whenothers =>b<="0000";
     end case;
  else
    b <="0000";-- output = zero när Enable är '0'
  end if;
  end process;
end Behavioral;
