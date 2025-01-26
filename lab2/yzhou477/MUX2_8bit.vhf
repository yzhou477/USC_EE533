--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : MUX2_8bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 19:06:24
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/MUX2_8bit.sch MUX2_8bit.vhf
--Design Name: MUX2_8bit
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

entity MUX2_8bit is
   port ( a   : in    std_logic_vector (7 downto 0); 
          b   : in    std_logic_vector (7 downto 0); 
          sel : in    std_logic; 
          z   : out   std_logic_vector (7 downto 0));
end MUX2_8bit;

architecture BEHAVIORAL of MUX2_8bit is
   component MUX2
      port ( s : in    std_logic; 
             a : in    std_logic; 
             b : in    std_logic; 
             z : out   std_logic);
   end component;
   
begin
   XLXI_19 : MUX2
      port map (a=>a(1),
                b=>b(1),
                s=>sel,
                z=>z(1));
   
   XLXI_20 : MUX2
      port map (a=>a(2),
                b=>b(2),
                s=>sel,
                z=>z(2));
   
   XLXI_21 : MUX2
      port map (a=>a(3),
                b=>b(3),
                s=>sel,
                z=>z(3));
   
   XLXI_22 : MUX2
      port map (a=>a(4),
                b=>b(4),
                s=>sel,
                z=>z(4));
   
   XLXI_23 : MUX2
      port map (a=>a(5),
                b=>b(5),
                s=>sel,
                z=>z(5));
   
   XLXI_24 : MUX2
      port map (a=>a(6),
                b=>b(6),
                s=>sel,
                z=>z(6));
   
   XLXI_25 : MUX2
      port map (a=>a(7),
                b=>b(7),
                s=>sel,
                z=>z(7));
   
   XLXI_26 : MUX2
      port map (a=>a(0),
                b=>b(0),
                s=>sel,
                z=>z(0));
   
end BEHAVIORAL;


