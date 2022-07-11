----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:27:53 07/11/2022 
-- Design Name: 
-- Module Name:    UsoVariables - Behavioral 
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

entity UsoVariables is
port (d, clk: in std_logic;
				q: out std_logic);
end UsoVariables;

architecture Behavioral of UsoVariables is

begin
process (clk)
variable a,b:std_logic;
begin
if (clk' envent and clk = '1') then
	a <= d;
	b <= a;
	q <= b:
end if;
end process;
end Behavioral;

