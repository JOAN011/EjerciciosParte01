----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:12:39 07/11/2022 
-- Design Name: 
-- Module Name:    Contador_4bits - Behavioral 
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

entity Contador_4bits is
    Port ( clk : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Contador_4bits;

architecture Behavioral of Contador_4bits is

begin
	process (clk) begin
		if (clk' event and clk = '1') then
			q <= q + 1;
		end if;
	end process;
end Behavioral;

