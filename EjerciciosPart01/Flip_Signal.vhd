----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:40:42 07/11/2022 
-- Design Name: 
-- Module Name:    Flip_Signal - Behavioral 
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

entity Flip_Signal is
    Port ( clk : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end Flip_Signal;

architecture Behavioral of Flip_Signal is
signal q_aux:std_logic;
begin
process (clk, RESET, EN)
begin
if RESET = '1' then q_aux <= '0'
	elsif (clk' event and clk='1') then
		if (EN = '1') then
			q_aux <= D;
			else
				q_aux <= Q;
				end if;
				end if;
				end process;
				Q <= q_aux;
end Behavioral;

