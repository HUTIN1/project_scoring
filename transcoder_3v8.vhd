----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:12:11 02/23/2021 
-- Design Name: 
-- Module Name:    transcoder_3v8 - Behavioral 
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

-- Engineer: GUILLAUME_CORSETTI

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity transcoder_3v8 is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           0 : out  STD_LOGIC_VECTOR (7 downto 0));
end transcoder_3v8;

architecture Behavioral of transcoder_3v8 is

begin
with A select
	 O <="01111111" when "000",
		"10111111" when "001",
		"11011111" when "010",
		"11101111" when "011",
		"11110111" when "100",
		"11111011" when "101",
		"11111101" when "110",
		"11111110" when "111";

end Behavioral;

