----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:45:49 07/11/2022 
-- Design Name: 
-- Module Name:    Contador_UP_Down - Behavioral 
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

entity Contador_UP_Down is
    Port ( clk : in  STD_LOGIC;
           UP : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Contador_UP_Down;

architecture Behavioral of Contador_UP_Down is
begin
	Process (UP, clk) begin
		if (clk' event and clk = '1') then
		 if(UP = '0') then
			Q <= Q + 1;
		 else
			Q <= Q - 1;
		 end if;
		end if;
	end process;
end Behavioral;

