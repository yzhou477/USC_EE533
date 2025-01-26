--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : subtractor_32bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 18:22:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/subtractor_32bit.sch subtractor_32bit.vhf
--Design Name: subtractor_32bit
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

entity subtractor_32bit is
   port ( a    : in    std_logic_vector (31 downto 0); 
          b    : in    std_logic_vector (31 downto 0); 
          opr  : in    std_logic; 
          cout : out   std_logic; 
          z    : out   std_logic_vector (31 downto 0));
end subtractor_32bit;

architecture BEHAVIORAL of subtractor_32bit is
   signal XLXN_8 : std_logic_vector (31 downto 0);
   component XOR1_32bit
      port ( b   : in    std_logic_vector (31 downto 0); 
             opr : in    std_logic; 
             z   : out   std_logic_vector (31 downto 0));
   end component;
   
   component fadd_32bit
      port ( a    : in    std_logic_vector (31 downto 0); 
             b    : in    std_logic_vector (31 downto 0); 
             cin  : in    std_logic; 
             z    : out   std_logic_vector (31 downto 0); 
             cout : out   std_logic);
   end component;
   
begin
   XLXI_1 : XOR1_32bit
      port map (b(31 downto 0)=>b(31 downto 0),
                opr=>opr,
                z(31 downto 0)=>XLXN_8(31 downto 0));
   
   XLXI_2 : fadd_32bit
      port map (a(31 downto 0)=>a(31 downto 0),
                b(31 downto 0)=>XLXN_8(31 downto 0),
                cin=>opr,
                cout=>cout,
                z(31 downto 0)=>z(31 downto 0));
   
end BEHAVIORAL;


