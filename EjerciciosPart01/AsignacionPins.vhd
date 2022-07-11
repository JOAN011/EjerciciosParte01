----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:17:43 07/11/2022 
-- Design Name: 
-- Module Name:    AsignacionPins - Behavioral 
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

entity AsignacionPins is
    Port ( clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
	 attribute pin_numbers of contador : entity is
	 " clk:1 Q(3):14 Q(2):15 Q(1):16 Q(0):17 ";
end AsignacionPins;

architecture pins of AsignacionPins is
begin
	process (clk) begin
		if (clk' event and clk = '1') then
			Q <= Q + 1;
		end if;
	end process;
end pins;

