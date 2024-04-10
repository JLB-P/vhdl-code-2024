----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2024 03:40:22 PM
-- Design Name: 
-- Module Name: mux_2x1_tb - Behavioral
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

entity mux_2x1_tb is
end mux_2x1_tb;

architecture Behavioral of mux_2x1_tb is
--inputs
signal a: std_logic_vector(3 downto 0);
signal b: std_logic_vector(3 downto 0);
signal sel: std_logic;
signal o_mx: std_logic_vector(3 downto 0); --output
begin
uut: 
entity work.mux_2x1 port map(a=>a,b=>b,sel=>sel,o_mx=>o_mx);
stimulus:
    process
    begin
     a <= "0001";
     wait for 10 ns;
     b <= "1110";
     wait for 10 ns;
     sel <= '0';
     wait for 10 ns;
     sel <= '1';
    end process;  
end Behavioral;
