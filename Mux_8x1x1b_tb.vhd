--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:57:04 02/23/2021
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_D/ELN2/SCORING/EQUIPE_6/chronoscore/Mux_8x1x1b_tb.vhd
-- Project Name:  chronoscore
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_8x1x1b
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Mux_8x1x1b_tb IS
END Mux_8x1x1b_tb;
 
ARCHITECTURE behavior OF Mux_8x1x1b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_8x1x1b
    PORT(
         AN_sel : IN  std_logic_vector(2 downto 0);
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         e : IN  std_logic;
         f : IN  std_logic;
         g : IN  std_logic;
         h : IN  std_logic;
         DP : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal AN_sel : std_logic_vector(2 downto 0) := (others => '0');
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal e : std_logic := '0';
   signal f : std_logic := '0';
   signal g : std_logic := '0';
   signal h : std_logic := '0';

 	--Outputs
   signal DP : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_8x1x1b PORT MAP (
          sel => sel,
          a => a,
          b => b,
          c => c,
          d => d,
          e => e,
          f => f,
          g => g,
          h => h,
          O=> O
        );

sel <= "000", "001" after 100ns, "010" after 200ns, "011" after 300ns, "100" after 400ns, "101" after 500ns, "110" after 600ns, "111" after 700ns;
a <= '0', '1' after 50ns;
b <= '0', '1' after 150ns;
c <= '0', '1' after 250ns;
d <= '0', '1' after 350ns;
e <= '0', '1' after 450ns;
f <= '0', '1' after 550ns;
g <= '0', '1' after 650ns;
h <= '0', '1' after 750ns;
--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
