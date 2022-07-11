----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:18:04 07/11/2022 
-- Design Name: 
-- Module Name:    latch_Process - Behavioral 
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

entity latch_Process is
port (dato, control: in std_logic;
salida: out std_logic);
end latch_Process;

architecture Behavioral of latch_Process is
begin
		process (dato, control) begin
			if control = '1' then
			salida <= dato;
			end if;
		end process;
end Behavioral;

