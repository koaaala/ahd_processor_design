----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2017 07:51:14 PM
-- Design Name: 
-- Module Name: alu - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
    Port ( result : out STD_LOGIC_VECTOR (31 downto 0);
           eq : out STD_LOGIC;
			  lt : out STD_LOGIC;
           op1 : in STD_LOGIC_VECTOR (31 downto 0);
           op2 : in STD_LOGIC_VECTOR (31 downto 0);
           funct : in STD_LOGIC_VECTOR (2 downto 0));
end alu;

architecture Behavioral of alu is

begin

process(op1,op2)
begin
if op1=op2 then
	eq<='1';
	lt<='0';
elsif op1<op2 then
	lt<='1';
	eq<='0';
else
	eq<='0';
	lt<='0';

end if;
end process; 

process(funct,op1,op2) 
begin
case funct is
 when "000" => 
 result<= op1 + op2; --addition 
 when "001" => 
 result<= op1 - op2; --subtraction 
 when "010" => 
 result<= op1 and op2; --and
 when "011" => 
 result<= op1 or op2; --or
 when "100" => 
 result<= not (op1 or op2); --not or 
 when "101" => 
	case op2(4 downto 0) is
		WHEN "00001" => result <= op1(30 DOWNTO 0) & op1(31 DOWNTO 31);
		WHEN "00010" => result <= op1(29 DOWNTO 0) & op1(31 DOWNTO 30);
		WHEN "00011" => result <= op1(28 DOWNTO 0) & op1(31 DOWNTO 29);
		WHEN "00100" => result <= op1(27 DOWNTO 0) & op1(31 DOWNTO 28);
		WHEN "00101" => result <= op1(26 DOWNTO 0) & op1(31 DOWNTO 27);
		WHEN "00110" => result <= op1(25 DOWNTO 0) & op1(31 DOWNTO 26);
		WHEN "00111" => result <= op1(24 DOWNTO 0) & op1(31 DOWNTO 25);
		WHEN "01000" => result <= op1(23 DOWNTO 0) & op1(31 DOWNTO 24);
		WHEN "01001" => result <= op1(22 DOWNTO 0) & op1(31 DOWNTO 23);
		WHEN "01010" => result <= op1(21 DOWNTO 0) & op1(31 DOWNTO 22);
		WHEN "01011" => result <= op1(20 DOWNTO 0) & op1(31 DOWNTO 21);
		WHEN "01100" => result <= op1(19 DOWNTO 0) & op1(31 DOWNTO 20);
		WHEN "01101" => result <= op1(18 DOWNTO 0) & op1(31 DOWNTO 19);
		WHEN "01110" => result <= op1(17 DOWNTO 0) & op1(31 DOWNTO 18);
		WHEN "01111" => result <= op1(16 DOWNTO 0) & op1(31 DOWNTO 17);
		WHEN "10000" => result <= op1(15 DOWNTO 0) & op1(31 DOWNTO 16);
		WHEN "10001" => result <= op1(14 DOWNTO 0) & op1(31 DOWNTO 15);
		WHEN "10010" => result <= op1(13 DOWNTO 0) & op1(31 DOWNTO 14);
		WHEN "10011" => result <= op1(12 DOWNTO 0) & op1(31 DOWNTO 13);
		WHEN "10100" => result <= op1(11 DOWNTO 0) & op1(31 DOWNTO 12);
		WHEN "10101" => result <= op1(10 DOWNTO 0) & op1(31 DOWNTO 11);
		WHEN "10110" => result <= op1(9 DOWNTO 0) & op1(31 DOWNTO 10);
		WHEN "10111" => result <= op1(8 DOWNTO 0) & op1(31 DOWNTO 9);
		WHEN "11000" => result <= op1(7 DOWNTO 0) & op1(31 DOWNTO 8);
		WHEN "11001" => result <= op1(6 DOWNTO 0) & op1(31 DOWNTO 7);
		WHEN "11010" => result <= op1(5 DOWNTO 0) & op1(31 DOWNTO 6);
		WHEN "11011" => result <= op1(4 DOWNTO 0) & op1(31 DOWNTO 5);
		WHEN "11100" => result <= op1(3 DOWNTO 0) & op1(31 DOWNTO 4);
		WHEN "11101" => result <= op1(2 DOWNTO 0) & op1(31 DOWNTO 3);
		WHEN "11110" => result <= op1(1 DOWNTO 0) & op1(31 DOWNTO 2);
		WHEN "11111" => result <= op1(0 DOWNTO 0) & op1(31 DOWNTO 1);
		when others => null;
	end case;
 when "110" => 
	case op2(4 downto 0) is
		WHEN "11111" => result <= op1(30 DOWNTO 0) & op1(31 DOWNTO 31);
		WHEN "11110" => result <= op1(29 DOWNTO 0) & op1(31 DOWNTO 30);
		WHEN "11101" => result <= op1(28 DOWNTO 0) & op1(31 DOWNTO 29);
		WHEN "11100" => result <= op1(27 DOWNTO 0) & op1(31 DOWNTO 28);
		WHEN "11011" => result <= op1(26 DOWNTO 0) & op1(31 DOWNTO 27);
		WHEN "11010" => result <= op1(25 DOWNTO 0) & op1(31 DOWNTO 26);
		WHEN "11001" => result <= op1(24 DOWNTO 0) & op1(31 DOWNTO 25);
		WHEN "11000" => result <= op1(23 DOWNTO 0) & op1(31 DOWNTO 24);
		WHEN "10111" => result <= op1(22 DOWNTO 0) & op1(31 DOWNTO 23);
		WHEN "10110" => result <= op1(21 DOWNTO 0) & op1(31 DOWNTO 22);
		WHEN "10101" => result <= op1(20 DOWNTO 0) & op1(31 DOWNTO 21);
		WHEN "10100" => result <= op1(19 DOWNTO 0) & op1(31 DOWNTO 20);
		WHEN "10011" => result <= op1(18 DOWNTO 0) & op1(31 DOWNTO 19);
		WHEN "10010" => result <= op1(17 DOWNTO 0) & op1(31 DOWNTO 18);
		WHEN "10001" => result <= op1(16 DOWNTO 0) & op1(31 DOWNTO 17);
		WHEN "10000" => result <= op1(15 DOWNTO 0) & op1(31 DOWNTO 16);
		WHEN "01111" => result <= op1(14 DOWNTO 0) & op1(31 DOWNTO 15);
		WHEN "01110" => result <= op1(13 DOWNTO 0) & op1(31 DOWNTO 14);
		WHEN "01101" => result <= op1(12 DOWNTO 0) & op1(31 DOWNTO 13);
		WHEN "01100" => result <= op1(11 DOWNTO 0) & op1(31 DOWNTO 12);
		WHEN "01011" => result <= op1(10 DOWNTO 0) & op1(31 DOWNTO 11);
		WHEN "01010" => result <= op1(9 DOWNTO 0) & op1(31 DOWNTO 10);
		WHEN "01001" => result <= op1(8 DOWNTO 0) & op1(31 DOWNTO 9);
		WHEN "01000" => result <= op1(7 DOWNTO 0) & op1(31 DOWNTO 8);
		WHEN "00111" => result <= op1(6 DOWNTO 0) & op1(31 DOWNTO 7);
		WHEN "00110" => result <= op1(5 DOWNTO 0) & op1(31 DOWNTO 6);
		WHEN "00101" => result <= op1(4 DOWNTO 0) & op1(31 DOWNTO 5);
		WHEN "00100" => result <= op1(3 DOWNTO 0) & op1(31 DOWNTO 4);
		WHEN "00011" => result <= op1(2 DOWNTO 0) & op1(31 DOWNTO 3);
		WHEN "00010" => result <= op1(1 DOWNTO 0) & op1(31 DOWNTO 2);
		WHEN "00001" => result <= op1(0 DOWNTO 0) & op1(31 DOWNTO 1);
		when others => null;
	end case;
 when others =>
 NULL;
end case; 
  
end process;

end Behavioral;
