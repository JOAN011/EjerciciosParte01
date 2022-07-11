----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:51:12 07/11/2022 
-- Design Name: 
-- Module Name:    Contador_CargaP - Behavioral 
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

entity Contador_CargaP is
    Port ( clk : in  STD_LOGIC;
           LD : in  STD_LOGIC;
           UP : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (2 downto 0);
           Q : inout  STD_LOGIC_VECTOR (2 downto 0));
end Contador_CargaP;

architecture Behavioral of Contador_CargaP is
begin
	process (clk, LD, D, UP) begin
		if (clk' event and clk = '1') then
			if (LD = '0') then
				Q <= D;
			elsif UP = '1' then
				Q <= Q+1;
			end if;
		end if;
	end process;
end Behavioral;

