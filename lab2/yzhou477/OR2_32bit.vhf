--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : OR2_32bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 19:06:14
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/OR2_32bit.sch OR2_32bit.vhf
--Design Name: OR2_32bit
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

entity OR2_32bit is
   port ( a : in    std_logic_vector (31 downto 0); 
          b : in    std_logic_vector (31 downto 0); 
          z : out   std_logic_vector (31 downto 0));
end OR2_32bit;

architecture BEHAVIORAL of OR2_32bit is
   component OR2_8bit
      port ( a : in    std_logic_vector (7 downto 0); 
             b : in    std_logic_vector (7 downto 0); 
             z : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_5 : OR2_8bit
      port map (a(7 downto 0)=>a(7 downto 0),
                b(7 downto 0)=>b(7 downto 0),
                z(7 downto 0)=>z(7 downto 0));
   
   XLXI_6 : OR2_8bit
      port map (a(7 downto 0)=>a(15 downto 8),
                b(7 downto 0)=>b(15 downto 8),
                z(7 downto 0)=>z(15 downto 8));
   
   XLXI_7 : OR2_8bit
      port map (a(7 downto 0)=>a(23 downto 16),
                b(7 downto 0)=>b(23 downto 16),
                z(7 downto 0)=>z(23 downto 16));
   
   XLXI_8 : OR2_8bit
      port map (a(7 downto 0)=>a(31 downto 24),
                b(7 downto 0)=>b(31 downto 24),
                z(7 downto 0)=>z(31 downto 24));
   
end BEHAVIORAL;


