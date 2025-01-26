--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : subtractor_32bittest.vhw
-- /___/   /\     Timestamp : Sat Jan 25 12:03:01 2025
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: subtractor_32bittest
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY subtractor_32bittest IS
END subtractor_32bittest;

ARCHITECTURE testbench_arch OF subtractor_32bittest IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT subtractor_32bit
        PORT (
            a : In std_logic_vector (31 DownTo 0);
            b : In std_logic_vector (31 DownTo 0);
            opr : In std_logic;
            cout : Out std_logic;
            z : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL a : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL b : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL opr : std_logic := '0';
    SIGNAL cout : std_logic := '0';
    SIGNAL z : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    BEGIN
        UUT : subtractor_32bit
        PORT MAP (
            a => a,
            b => b,
            opr => opr,
            cout => cout,
            z => z
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                opr <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                a <= "00000000000000000000000000000001";
                b <= "00000000000000000000000000001111";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                a <= "00000000000000000000000011111111";
                b <= "00000000000000001111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                a <= "11111111111111111111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                b <= "00000000000000000000000000000001";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                opr <= '0';
                a <= "00000000000000000000000000001111";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                a <= "00000000000000000000000010001111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                opr <= '1';
                -- -------------------------------------
                WAIT FOR 1200 ns;

            END PROCESS;

    END testbench_arch;

