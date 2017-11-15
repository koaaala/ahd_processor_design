----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2017 07:51:14 PM
-- Design Name: 
-- Module Name: ctrl_unit - Behavioral
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

entity ctrl_unit is
    Port ( lw : out STD_LOGIC;
           sw : out STD_LOGIC;
           branch : out STD_LOGIC;
           jump : out STD_LOGIC;
           funct : out STD_LOGIC_VECTOR (2 downto 0);
           op2src : out STD_LOGIC;
           regdst : out STD_LOGIC;
           regwrt : out STD_LOGIC;
           inst : in STD_LOGIC_VECTOR (31 downto 0));
end ctrl_unit;

architecture Behavioral of ctrl_unit is

begin


end Behavioral;
