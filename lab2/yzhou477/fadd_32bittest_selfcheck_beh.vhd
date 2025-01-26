--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : fadd_32bittest_selfcheck.vhw
-- /___/   /\     Timestamp : Sat Jan 25 09:43:43 2025
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: fadd_32bittest_selfcheck_beh
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

ENTITY fadd_32bittest_selfcheck_beh IS
END fadd_32bittest_selfcheck_beh;

ARCHITECTURE testbench_arch OF fadd_32bittest_selfcheck_beh IS
    COMPONENT fadd_32bit
        PORT (
            a : In std_logic_vector (31 DownTo 0);
            b : In std_logic_vector (31 DownTo 0);
            cin : In std_logic;
            cout : Out std_logic;
            z : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL a : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL b : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL cin : std_logic := '0';
    SIGNAL cout : std_logic := '0';
    SIGNAL z : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : fadd_32bit
        PORT MAP (
            a => a,
            b => b,
            cin => cin,
            cout => cout,
            z => z
        );

        PROCESS
            PROCEDURE CHECK_cout(
                next_cout : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (cout /= next_cout) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns cout="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, cout);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_cout);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_z(
                next_z : std_logic_vector (31 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (z /= next_z) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns z="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, z);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_z);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                a <= "00000000000000000000000000000001";
                -- -------------------------------------
                -- -------------  Current Time:  150ns
                WAIT FOR 50 ns;
                CHECK_z("00000000000000000000000000000001", 150);
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 50 ns;
                b <= "00000000000000000000000000001111";
                -- -------------------------------------
                -- -------------  Current Time:  250ns
                WAIT FOR 50 ns;
                CHECK_z("00000000000000000000000000010000", 250);
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 50 ns;
                a <= "00000000000000000000000000101111";
                b <= "00000000000000000000000011111111";
                -- -------------------------------------
                -- -------------  Current Time:  350ns
                WAIT FOR 50 ns;
                CHECK_z("00000000000000000000000100101110", 350);
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 50 ns;
                b <= "00000000000011111111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  450ns
                WAIT FOR 50 ns;
                CHECK_z("00000000000100000000000000101110", 450);
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 50 ns;
                cin <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  550ns
                WAIT FOR 50 ns;
                CHECK_z("00000000000100000000000000101111", 550);
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 50 ns;
                cin <= '0';
                a <= "11111111111111111111111111110000";
                -- -------------------------------------
                -- -------------  Current Time:  650ns
                WAIT FOR 50 ns;
                CHECK_cout('1', 650);
                CHECK_z("00000000000011111111111111101111", 650);
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 50 ns;
                b <= "00000000000000000000000000001111";
                -- -------------------------------------
                -- -------------  Current Time:  750ns
                WAIT FOR 50 ns;
                CHECK_cout('0', 750);
                CHECK_z("11111111111111111111111111111111", 750);
                -- -------------------------------------
                WAIT FOR 1250 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

