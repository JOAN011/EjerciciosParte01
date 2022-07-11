----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:33:17 07/11/2022 
-- Design Name: 
-- Module Name:    flipD2 - Behavioral 
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

entity flipD2 is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end flipD2;

architecture Behavioral of flipD2 is

begin
	process (clk, D, RESET) begin
			if RESET = '1' then
				Q <= '0';
				elsif (clk' envent and clk = '1') then
				Q <= D;
			end if;
	end process;
end Behavioral;

