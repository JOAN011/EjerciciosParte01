----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:38:55 07/11/2022 
-- Design Name: 
-- Module Name:    ContadorInteger - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ContadorInteger is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q : inout  integer range 0 to 15);
end ContadorInteger;

architecture Behavioral of ContadorInteger is
begin
process (clk, reset) begin
if (clk' event and clk = '1') then
 if(reset = '1' or Q = 9) then
	Q <= 0;
 else
	Q <= Q + 1;
 end if;
end if;
end process;
end Behavioral;

