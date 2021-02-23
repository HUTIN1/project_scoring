----------------------------------------------------------------------------------
-- Company: 
-- Engineer: HUTIN ZHENG
-- 
-- Create Date:    10:21:41 02/23/2021 
-- Design Name: 
-- Module Name:    Mux_8x1xb - Behavioral 
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

entity Mux_8x1x1b is
    Port (sel : in  STD_LOGIC_VECTOR (2 downto 0);
           a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           e : in  STD_LOGIC;
           f : in  STD_LOGIC;
           g : in  STD_LOGIC;
           h : in  STD_LOGIC;
           O : out  STD_LOGIC);
end Mux_8x1x1b;

architecture Behavioral of Mux_8x1x1b is

begin
O<=a WHEN(sel="000") ELSE
	b WHEN (sel="001") ELSE
	c WHEN (sel="010") ELSE
	d WHEN (sel="011") ELSE
	e WHEN (sel="100") ELSE
	f WHEN (sel="101") ELSE
	g WHEN (sel="110") ELSE
	h;

end Behavioral;

