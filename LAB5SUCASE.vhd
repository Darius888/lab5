library ieee;
use ieee.std_logic_1164.all;
 
entity LAB5SUCASE is
  port (
    A    : in  std_logic;
	B    : in  std_logic;
	C    : in  std_logic;
    F  : out std_logic
);
end LAB5SUCASE;
 
architecture rtl of LAB5SUCASE is
begin
	process(A,B,C)
	begin
	
		case ((A and not B ) or (not A and not C)) is
		when '1' => F <='1';
		when '0' => F <='0';
		--when ((A and not B ) or (not A and not C))='1' => F <='1';
		--when ((A and not B ) or (not A and not C))='0' => F <='0';
		--when ((A and not B ) or (not A and not C))='1' => F <='1';
		--when ((A and not B ) or (not A and not C))='0' => F <='0';
		--when ((A and not B ) or (not A and not C))='1' => F <='1';
		--when ((A and not B ) or (not A and not C))='0' => F <='0';
		when others => null;
	    end case;
	end process;
end rtl;