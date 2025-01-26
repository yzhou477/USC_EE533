--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : ALUv_32bittest.vhw
-- /___/   /\     Timestamp : Sat Jan 25 21:03:30 2025
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: ALUv_32bittest
--Device: Xilinx
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_1164.All;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY ALUv_32bittest IS
END ALUv_32bittest;

ARCHITECTURE testbench_arch OF ALUv_32bittest IS
    COMPONENT ALUv_32bit
        PORT (
            a : In STD_LOGIC_VECTOR (31 DownTo 0);
            b : In STD_LOGIC_VECTOR (31 DownTo 0);
            opr : In STD_LOGIC_VECTOR (2 DownTo 0);
            cin : In STD_LOGIC;
            shiftdir : In STD_LOGIC;
            result : Out STD_LOGIC_VECTOR (31 DownTo 0);
            add_cout : Out STD_LOGIC;
            sub_cout : Out STD_LOGIC
        );
    END COMPONENT;

    SIGNAL a : STD_LOGIC_VECTOR (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL b : STD_LOGIC_VECTOR (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL opr : STD_LOGIC_VECTOR (2 DownTo 0) := "000";
    SIGNAL cin : STD_LOGIC := '0';
    SIGNAL shiftdir : STD_LOGIC := '0';
    SIGNAL result : STD_LOGIC_VECTOR (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL add_cout : STD_LOGIC := '0';
    SIGNAL sub_cout : STD_LOGIC := '0';

    BEGIN
        UUT : ALUv_32bit
        PORT MAP (
            a => a,
            b => b,
            opr => opr,
            cin => cin,
            shiftdir => shiftdir,
            result => result,
            add_cout => add_cout,
            sub_cout => sub_cout
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  200ns
                WAIT FOR 200 ns;
                a <= "00000000000000000000000000000001";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                b <= "00000000111111111111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                a <= "11111111111111111111111111111111";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                cin <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                cin <= '0';
                opr <= "001";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                a <= "00000000000000000000000000001111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                opr <= "010";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                shiftdir <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                shiftdir <= '0';
                a <= "11110000000000000000000000000000";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                shiftdir <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                shiftdir <= '0';
                opr <= "011";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                a <= "00000000000000000000000000001111";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                opr <= "100";
                -- -------------------------------------
                WAIT FOR 600 ns;

            END PROCESS;

    END testbench_arch;

