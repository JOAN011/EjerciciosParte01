----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:27:08 07/11/2022 
-- Design Name: 
-- Module Name:    Contador_Reset_EN - Behavioral 
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

entity Contador_Reset_EN is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Contador_Reset_EN;

architecture Behavioral of Contador_Reset_EN is

begin
process(clk, reset) begin
	if(clk' event and clk = '1') then
		if (reset = '1' or q = "1001") then
			q	<= "0000";
			else
				q	<= q + 1;
		end if;
	 end if;
end process;
end Behavioral;

