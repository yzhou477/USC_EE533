--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : XOR1_32bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 12:00:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/XOR1_32bit.sch XOR1_32bit.vhf
--Design Name: XOR1_32bit
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

entity XOR1_32bit is
   port ( b   : in    std_logic_vector (31 downto 0); 
          opr : in    std_logic; 
          z   : out   std_logic_vector (31 downto 0));
end XOR1_32bit;

architecture BEHAVIORAL of XOR1_32bit is
   component XOR1_8bit
      port ( b   : in    std_logic_vector (7 downto 0); 
             opr : in    std_logic; 
             z   : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_5 : XOR1_8bit
      port map (b(7 downto 0)=>b(31 downto 24),
                opr=>opr,
                z(7 downto 0)=>z(31 downto 24));
   
   XLXI_6 : XOR1_8bit
      port map (b(7 downto 0)=>b(23 downto 16),
                opr=>opr,
                z(7 downto 0)=>z(23 downto 16));
   
   XLXI_7 : XOR1_8bit
      port map (b(7 downto 0)=>b(15 downto 8),
                opr=>opr,
                z(7 downto 0)=>z(15 downto 8));
   
   XLXI_8 : XOR1_8bit
      port map (b(7 downto 0)=>b(7 downto 0),
                opr=>opr,
                z(7 downto 0)=>z(7 downto 0));
   
end BEHAVIORAL;


