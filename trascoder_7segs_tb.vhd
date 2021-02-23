--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:34:03 02/23/2021
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_D/ELN2/SCORING/EQUIPE_6/chronoscore/trascoder_7segs_tb.vhd
-- Project Name:  chronoscore
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Transcoder_7segs
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
 
ENTITY trascoder_7segs_tb IS
END trascoder_7segs_tb;
 
ARCHITECTURE behavior OF transcoder_7segs_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Transcoder_7segs
    PORT(
         segs_data : IN  std_logic_vector(3 downto 0);
         sseg_7 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal segs_data : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal sseg_7 : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
-- 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Transcoder_7segs PORT MAP (
          segs_data => segs_data,
          sseg_7 => sseg_7
        );
--
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
