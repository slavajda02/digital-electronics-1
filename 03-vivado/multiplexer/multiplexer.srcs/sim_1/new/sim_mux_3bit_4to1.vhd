----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2023 12:19:59 PM
-- Design Name: 
-- Module Name: sim_mux_3bit_4to1 - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_mux_3bit_4to1 is
    -- Entity of testbench is always empty
end entity tb_mux_3bit_4to1;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_mux_3bit_4to1 is

    -- Local signals
    signal s_sel : std_logic_vector(1 downto 0);
    signal s_a   : std_logic;
    signal s_b   : std_logic;
    signal s_c   : std_logic;
    signal s_d   : std_logic;
    signal s_f   : std_logic;

begin
    -- Connecting testbench signals with mux_3bit_4to1
    -- entity (Unit Under Test)
    uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
        port map(
            sel_i => s_sel,
            a_i   => s_a,
            b_i   => s_b,
            c_i   => s_c,
            d_i   => s_d,
            f_o   => s_f
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started";
        
        s_sel <= "00";
        s_a   <= '1';
        s_b   <= '0';
        s_c   <= '1';
        s_d   <= '0';
         
        wait for 100 ns;
        -- Expected output
        assert ((s_f = '1'))
        -- If false, then report an error
        report "Input combination s_sel =00 failed!" severity error;
		
		        
        s_sel <= "10";
        s_a   <= '1';
        s_b   <= '0';
        s_c   <= '1';
        s_d   <= '0';
         
        wait for 100 ns;
        -- Expected output
        assert ((s_f = '1'))
        -- If false, then report an error
        report "Input combination s_sel =10 failed!" severity error;
		
		        
        s_sel <= "11";
        s_a   <= '1';
        s_b   <= '0';
        s_c   <= '1';
        s_d   <= '0';
         
        wait for 100 ns;
        -- Expected output
        assert ((s_f = '0'))
        -- If false, then report an error
        report "Input combination s_sel =11 failed!" severity error;
		
		report "Stimulus process finished";
		
        wait; -- Data generation process is suspended forever
    end process p_stimulus;

end architecture testbench;