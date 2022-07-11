----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:04:52 07/11/2022 
-- Design Name: 
-- Module Name:    RegistroP_4bits - Behavioral 
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

entity RegistroP_4bits is
    Port ( D : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0);
           Qn : inout  STD_LOGIC_VECTOR (3 downto 0));
end RegistroP_4bits;

architecture Behavioral of RegistroP_4bits is
begin
	process (clk, CLR) begin
		if (clk' event and clk = '1') then
			if (CLR = '1') then
				Q <= D;
				Qn <= not Q;
			else
				Q<= "0000";
				Qn <= "1111";
			end if;
		end if;
	end process;
end Behavioral;

