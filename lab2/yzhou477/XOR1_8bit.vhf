--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : XOR1_8bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 12:00:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/XOR1_8bit.sch XOR1_8bit.vhf
--Design Name: XOR1_8bit
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

entity XOR1_8bit is
   port ( b   : in    std_logic_vector (7 downto 0); 
          opr : in    std_logic; 
          z   : out   std_logic_vector (7 downto 0));
end XOR1_8bit;

architecture BEHAVIORAL of XOR1_8bit is
   attribute BOX_TYPE   : string ;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_9 : XOR2
      port map (I0=>b(7),
                I1=>opr,
                O=>z(7));
   
   XLXI_10 : XOR2
      port map (I0=>b(6),
                I1=>opr,
                O=>z(6));
   
   XLXI_11 : XOR2
      port map (I0=>b(5),
                I1=>opr,
                O=>z(5));
   
   XLXI_12 : XOR2
      port map (I0=>b(4),
                I1=>opr,
                O=>z(4));
   
   XLXI_13 : XOR2
      port map (I0=>b(3),
                I1=>opr,
                O=>z(3));
   
   XLXI_14 : XOR2
      port map (I0=>b(2),
                I1=>opr,
                O=>z(2));
   
   XLXI_15 : XOR2
      port map (I0=>b(1),
                I1=>opr,
                O=>z(1));
   
   XLXI_16 : XOR2
      port map (I0=>b(0),
                I1=>opr,
                O=>z(0));
   
end BEHAVIORAL;


