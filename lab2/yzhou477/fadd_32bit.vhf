--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : fadd_32bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 11:59:56
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/fadd_32bit.sch fadd_32bit.vhf
--Design Name: fadd_32bit
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

entity fadd_32bit is
   port ( a    : in    std_logic_vector (31 downto 0); 
          b    : in    std_logic_vector (31 downto 0); 
          cin  : in    std_logic; 
          cout : out   std_logic; 
          z    : out   std_logic_vector (31 downto 0));
end fadd_32bit;

architecture BEHAVIORAL of fadd_32bit is
   signal XLXN_31 : std_logic;
   signal XLXN_32 : std_logic;
   signal XLXN_33 : std_logic;
   component fadd_8bit
      port ( a    : in    std_logic_vector (7 downto 0); 
             b    : in    std_logic_vector (7 downto 0); 
             cin  : in    std_logic; 
             z    : out   std_logic_vector (7 downto 0); 
             cout : out   std_logic);
   end component;
   
begin
   XLXI_1 : fadd_8bit
      port map (a(7 downto 0)=>a(7 downto 0),
                b(7 downto 0)=>b(7 downto 0),
                cin=>cin,
                cout=>XLXN_31,
                z(7 downto 0)=>z(7 downto 0));
   
   XLXI_2 : fadd_8bit
      port map (a(7 downto 0)=>a(15 downto 8),
                b(7 downto 0)=>b(15 downto 8),
                cin=>XLXN_31,
                cout=>XLXN_32,
                z(7 downto 0)=>z(15 downto 8));
   
   XLXI_3 : fadd_8bit
      port map (a(7 downto 0)=>a(23 downto 16),
                b(7 downto 0)=>b(23 downto 16),
                cin=>XLXN_32,
                cout=>XLXN_33,
                z(7 downto 0)=>z(23 downto 16));
   
   XLXI_4 : fadd_8bit
      port map (a(7 downto 0)=>a(31 downto 24),
                b(7 downto 0)=>b(31 downto 24),
                cin=>XLXN_33,
                cout=>cout,
                z(7 downto 0)=>z(31 downto 24));
   
end BEHAVIORAL;


