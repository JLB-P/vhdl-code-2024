----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2024 04:18:06 PM
-- Design Name: 
-- Module Name: bcd_7seg_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_7seg_tb is
end bcd_7seg_tb;

architecture Behavioral of bcd_7seg_tb is
--inputs
signal in_bcd: std_logic_vector(3 downto 0);
--outputs
signal a_to_g: std_logic_vector(6 downto 0);

begin
uut: 
entity work.bcd_7seg port map(in_bcd=>in_bcd,a_to_g=>a_to_g);
stimulus:
process
    begin
     in_bcd <= "0001";
     wait for 10 ns;
     in_bcd <= "0010";
     wait for 10 ns;
     in_bcd <= "0011";
     wait for 10 ns;
     in_bcd <= "0100";
     wait for 10 ns;
     in_bcd <= "0101";
     wait for 10 ns;
     in_bcd <= "0110";
     wait for 10 ns;
     in_bcd <= "0111";
     wait for 10 ns;
     in_bcd <= "1000";
     wait for 10 ns;
     in_bcd <= "1001";
     wait for 10 ns;
    end process;  
end Behavioral;
