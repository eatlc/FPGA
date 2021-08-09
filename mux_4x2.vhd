----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2021 16:18:14
-- Design Name: 
-- Module Name: mux_4x2 - Behavioral
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

entity mux_4x2 is
port(
a_i		:in std_logic;
b_i		:in std_logic;
c_i		:in std_logic;
d_i		:in std_logic;
s1_i	:in std_logic;
s2_i	:in std_logic;
q_o		:out std_logic
);
end mux_4x2;

architecture Behavioral of mux_4x2 is

begin
mux_1:process(s1_i,s2_i,a_i,b_i,c_i,d_i) begin

	if (s1_i='0' and s2_i='0') then
		q_o <=a_i;
	elsif (s1_i='0' and s2_i='1') then
		q_o <=b_i;
	elsif (s1_i='1' and s2_i='0') then
		q_o <=c_i;
	elsif (s1_i='1' and s2_i='1') then
		q_o <=d_i;
	else q_o <='0';
	end if;
end process;
end Behavioral;
