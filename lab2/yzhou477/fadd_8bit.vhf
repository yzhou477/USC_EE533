--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : fadd_8bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 11:59:51
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/fadd_8bit.sch fadd_8bit.vhf
--Design Name: fadd_8bit
--Device: aspartan2e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity fadd_8bit is
   port ( a    : in    std_logic_vector (7 downto 0); 
          b    : in    std_logic_vector (7 downto 0); 
          cin  : in    std_logic; 
          cout : out   std_logic; 
          z    : out   std_logic_vector (7 downto 0));
end fadd_8bit;

architecture BEHAVIORAL of fadd_8bit is
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_5  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_16 : std_logic;
   component fadd_1bit
      port ( a    : in    std_logic; 
             b    : in    std_logic; 
             cin  : in    std_logic; 
             z    : out   std_logic; 
             cout : out   std_logic);
   end component;
   
begin
   XLXI_1 : fadd_1bit
      port map (a=>a(0),
                b=>b(0),
                cin=>cin,
                cout=>XLXN_1,
                z=>z(0));
   
   XLXI_2 : fadd_1bit
      port map (a=>a(1),
                b=>b(1),
                cin=>XLXN_1,
                cout=>XLXN_2,
                z=>z(1));
   
   XLXI_3 : fadd_1bit
      port map (a=>a(2),
                b=>b(2),
                cin=>XLXN_2,
                cout=>XLXN_5,
                z=>z(2));
   
   XLXI_4 : fadd_1bit
      port map (a=>a(3),
                b=>b(3),
                cin=>XLXN_5,
                cout=>XLXN_6,
                z=>z(3));
   
   XLXI_5 : fadd_1bit
      port map (a=>a(4),
                b=>b(4),
                cin=>XLXN_6,
                cout=>XLXN_12,
                z=>z(4));
   
   XLXI_6 : fadd_1bit
      port map (a=>a(5),
                b=>b(5),
                cin=>XLXN_12,
                cout=>XLXN_14,
                z=>z(5));
   
   XLXI_7 : fadd_1bit
      port map (a=>a(6),
                b=>b(6),
                cin=>XLXN_14,
                cout=>XLXN_16,
                z=>z(6));
   
   XLXI_8 : fadd_1bit
      port map (a=>a(7),
                b=>b(7),
                cin=>XLXN_16,
                cout=>cout,
                z=>z(7));
   
end BEHAVIORAL;


