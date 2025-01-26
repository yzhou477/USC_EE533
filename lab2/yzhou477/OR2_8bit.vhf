--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : OR2_8bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 19:06:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/OR2_8bit.sch OR2_8bit.vhf
--Design Name: OR2_8bit
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

entity OR2_8bit is
   port ( a : in    std_logic_vector (7 downto 0); 
          b : in    std_logic_vector (7 downto 0); 
          z : out   std_logic_vector (7 downto 0));
end OR2_8bit;

architecture BEHAVIORAL of OR2_8bit is
   attribute BOX_TYPE   : string ;
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_9 : OR2
      port map (I0=>b(0),
                I1=>a(0),
                O=>z(0));
   
   XLXI_10 : OR2
      port map (I0=>b(1),
                I1=>a(1),
                O=>z(1));
   
   XLXI_11 : OR2
      port map (I0=>b(2),
                I1=>a(2),
                O=>z(2));
   
   XLXI_12 : OR2
      port map (I0=>b(3),
                I1=>a(3),
                O=>z(3));
   
   XLXI_13 : OR2
      port map (I0=>b(4),
                I1=>a(4),
                O=>z(4));
   
   XLXI_14 : OR2
      port map (I0=>b(5),
                I1=>a(5),
                O=>z(5));
   
   XLXI_15 : OR2
      port map (I0=>b(6),
                I1=>a(6),
                O=>z(6));
   
   XLXI_16 : OR2
      port map (I0=>b(7),
                I1=>a(7),
                O=>z(7));
   
end BEHAVIORAL;


