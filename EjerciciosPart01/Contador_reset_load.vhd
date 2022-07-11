----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:35 07/11/2022 
-- Design Name: 
-- Module Name:    Contador_reset_load - Behavioral 
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

entity Contador_reset_load is
    Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           LOAD : in  STD_LOGIC;
           ENP : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Contador_reset_load;

architecture Behavioral of Contador_reset_load is
begin
 process (clk, RESET, LOAD, ENP) begin
 if (RESET = '1') then
		Q <= "0000";
	 if (LOAD = '0' and ENP = '-') then
		Q <= P;
	 elsif (LOAD = '1' and ENP = '0') then
		Q <= Q;
	 elsif (LOAD = '1' and ENP = '1') then
		Q <= Q + 1;
	 end if;
 end if;
 end process;
end Behavioral;

