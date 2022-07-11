----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:27 07/11/2022 
-- Design Name: 
-- Module Name:    ejemplogen - Behavioral 
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

entity ejemplogen is
generic (contador_valor: integer:=511);
    Port ( clk : in  STD_LOGIC;
           ld : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en : in  STD_LOGIC;
           data : in  integer range 0 to contador_valor;
           Q : inout  integer range 0 to contador_valor);
end ejemplogen;

architecture Behavioral of ejemplogen is
signal contador_signal: integer range 0 to contador_valor;
begin
	process (clk, en, ld, clr) begin
		if (clr = '0') then
			contador_signal <= 0;
		elsif clk' event and clk = '1' then
			if en = '1' then
				if ld = '0' then
				contador_signal <= data;
				else
				contador_signal <= data;
				end if;
			end if;
		 end if;
		 end if;
	end process;
end Behavioral;

