--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : MUX2_32bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 19:06:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/MUX2_32bit.sch MUX2_32bit.vhf
--Design Name: MUX2_32bit
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

entity MUX2_32bit is
   port ( a   : in    std_logic_vector (31 downto 0); 
          b   : in    std_logic_vector (31 downto 0); 
          sel : in    std_logic; 
          z   : out   std_logic_vector (31 downto 0));
end MUX2_32bit;

architecture BEHAVIORAL of MUX2_32bit is
   component MUX2_8bit
      port ( a   : in    std_logic_vector (7 downto 0); 
             b   : in    std_logic_vector (7 downto 0); 
             sel : in    std_logic; 
             z   : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_9 : MUX2_8bit
      port map (a(7 downto 0)=>a(7 downto 0),
                b(7 downto 0)=>b(7 downto 0),
                sel=>sel,
                z(7 downto 0)=>z(7 downto 0));
   
   XLXI_10 : MUX2_8bit
      port map (a(7 downto 0)=>a(15 downto 8),
                b(7 downto 0)=>b(15 downto 8),
                sel=>sel,
                z(7 downto 0)=>z(15 downto 8));
   
   XLXI_11 : MUX2_8bit
      port map (a(7 downto 0)=>a(23 downto 16),
                b(7 downto 0)=>b(23 downto 16),
                sel=>sel,
                z(7 downto 0)=>z(23 downto 16));
   
   XLXI_12 : MUX2_8bit
      port map (a(7 downto 0)=>a(31 downto 24),
                b(7 downto 0)=>b(31 downto 24),
                sel=>sel,
                z(7 downto 0)=>z(31 downto 24));
   
end BEHAVIORAL;


