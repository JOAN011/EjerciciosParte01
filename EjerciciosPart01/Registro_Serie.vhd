----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:15:25 07/11/2022 
-- Design Name: 
-- Module Name:    Registro_Serie - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Registro_Serie is
port (d, clk: in std_logic;
		q: out std_logic);
end Registro_Serie;

architecture Behavioral of Registro_Serie is
signal a,b: in std_logic;
begin
process (clk)
begin
if ( clk'event and clk='l' ) then
		a<=d;
		b<=a;
		q<=d;
end if;
end Behavioral;

