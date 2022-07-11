----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:07:16 07/11/2022 
-- Design Name: 
-- Module Name:    flipSR - Behavioral 
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

entity ffsr is port (
		S,R,clk: in std_logic;
		Q, Qn: inout std_logic);
end ffsr;
architecture a_ffsr of ffsr is
begin
	process (clk, S, R)
	begin
		if (clk' event and clk 'l') then
					if (S = 'O' and R = '1') then
						Q <= '0';
						Qn <= '1';
			elsif (S = 'l' and R '0') then
					Q <= '1' ;
					Qn <= '0';
			elsif (S = '0' and R '0') then
					Q <= Q;
					Qn <= Qn;
			else
					Q <= '-';
					Qn <= '-';
			end if;
		end if;
	end process;
end a_ffsr;


