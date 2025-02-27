--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : ALUsch_32bittest.vhw
-- /___/   /\     Timestamp : Sat Jan 25 19:14:36 2025
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: ALUsch_32bittest
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

ENTITY ALUsch_32bittest IS
END ALUsch_32bittest;

ARCHITECTURE testbench_arch OF ALUsch_32bittest IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ALUsch_32bit
        PORT (
            a : In std_logic_vector (31 DownTo 0);
            b : In std_logic_vector (31 DownTo 0);
            cin : In std_logic;
            opr : In std_logic_vector (2 DownTo 0);
            shiftdir : In std_logic;
            add_cout : Out std_logic;
            sub_cout : Out std_logic;
            z : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL a : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL b : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL cin : std_logic := '0';
    SIGNAL opr : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL shiftdir : std_logic := '0';
    SIGNAL add_cout : std_logic := '0';
    SIGNAL sub_cout : std_logic := '0';
    SIGNAL z : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    BEGIN
        UUT : ALUsch_32bit
        PORT MAP (
            a => a,
            b => b,
            cin => cin,
            opr => opr,
            shiftdir => shiftdir,
            add_cout => add_cout,
            sub_cout => sub_cout,
            z => z
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  200ns
                WAIT FOR 200 ns;
                a <= "00000000000011111111111111111111";
                b <= "00000000000000000000111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                a <= "00000000000000001000111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                cin <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                cin <= '0';
                a <= "00000000111111111111111111111111";
                opr <= "001";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                b <= "00001111111111111111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                a <= "01101111111111111111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                a <= "00000000000000000000000000001111";
                opr <= "010";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                a <= "11110000000000000000000000000000";
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                shiftdir <= '1';
                a <= "00000000000000000000000000001111";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                a <= "11110000000000000000000000000000";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                shiftdir <= '0';
                opr <= "011";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                a <= "11111111111111111111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                opr <= "100";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                a <= "00000000000000000000000000000001";
                -- -------------------------------------
                WAIT FOR 1500 ns;

            END PROCESS;

    END testbench_arch;

