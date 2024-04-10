----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2024 03:47:04 PM
-- Design Name: 
-- Module Name: sistema_combinacional_top - Behavioral
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

entity sistema_combinacional_top is
  Port ( A: in std_logic_vector(3 downto 0);
         B: in std_logic_vector(3 downto 0);
         SEL: in std_logic;
         A_TO_G: out std_logic_vector(6 downto 0)
   );
end sistema_combinacional_top;

architecture Behavioral of sistema_combinacional_top is
signal yellow_wire : std_logic_vector(3 downto 0);
begin
    U1: entity work.mux_2x1 port map (
    a => A,
    b=>B,
    sel=>SEL,
    o_mx=>yellow_wire);
    U2: entity work.bcd_7seg port map (
    in_bcd=>yellow_wire,
    a_to_g=>A_TO_G);
end Behavioral;
