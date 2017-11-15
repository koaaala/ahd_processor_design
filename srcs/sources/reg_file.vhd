----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2017 07:51:14 PM
-- Design Name: 
-- Module Name: reg_file - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_file is
    Port ( rd1 : out STD_LOGIC_VECTOR (31 downto 0);
           rd2 : out STD_LOGIC_VECTOR (31 downto 0);
           clk : in STD_LOGIC;
           we : in STD_LOGIC;
           rs : in STD_LOGIC_VECTOR (4 downto 0);
           rt : in STD_LOGIC_VECTOR (4 downto 0);
           rd : in STD_LOGIC_VECTOR (4 downto 0);
           wd : in STD_LOGIC_VECTOR (31 downto 0));
end reg_file;

architecture Behavioral of reg_file is

begin


end Behavioral;
