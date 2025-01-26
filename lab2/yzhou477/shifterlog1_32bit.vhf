--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : shifterlog1_32bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 19:06:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/shifterlog1_32bit.sch shifterlog1_32bit.vhf
--Design Name: shifterlog1_32bit
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

entity shifterlog1_32bit is
   port ( d       : in    std_logic; 
          datain  : in    std_logic_vector (31 downto 0); 
          dataout : out   std_logic_vector (31 downto 0));
end shifterlog1_32bit;

architecture BEHAVIORAL of shifterlog1_32bit is
   attribute BOX_TYPE   : string ;
   signal XLXN_169 : std_logic;
   signal XLXN_182 : std_logic;
   component MUX2
      port ( s : in    std_logic; 
             a : in    std_logic; 
             b : in    std_logic; 
             z : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_56 : MUX2
      port map (a=>XLXN_169,
                b=>datain(1),
                s=>d,
                z=>dataout(0));
   
   XLXI_57 : MUX2
      port map (a=>datain(0),
                b=>datain(2),
                s=>d,
                z=>dataout(1));
   
   XLXI_102 : MUX2
      port map (a=>datain(1),
                b=>datain(3),
                s=>d,
                z=>dataout(2));
   
   XLXI_103 : MUX2
      port map (a=>datain(2),
                b=>datain(4),
                s=>d,
                z=>dataout(3));
   
   XLXI_112 : MUX2
      port map (a=>datain(3),
                b=>datain(5),
                s=>d,
                z=>dataout(4));
   
   XLXI_113 : MUX2
      port map (a=>datain(4),
                b=>datain(6),
                s=>d,
                z=>dataout(5));
   
   XLXI_114 : MUX2
      port map (a=>datain(5),
                b=>datain(7),
                s=>d,
                z=>dataout(6));
   
   XLXI_115 : MUX2
      port map (a=>datain(6),
                b=>datain(8),
                s=>d,
                z=>dataout(7));
   
   XLXI_116 : MUX2
      port map (a=>datain(7),
                b=>datain(9),
                s=>d,
                z=>dataout(8));
   
   XLXI_117 : MUX2
      port map (a=>datain(8),
                b=>datain(10),
                s=>d,
                z=>dataout(9));
   
   XLXI_118 : MUX2
      port map (a=>datain(9),
                b=>datain(11),
                s=>d,
                z=>dataout(10));
   
   XLXI_119 : MUX2
      port map (a=>datain(10),
                b=>datain(12),
                s=>d,
                z=>dataout(11));
   
   XLXI_120 : MUX2
      port map (a=>datain(11),
                b=>datain(13),
                s=>d,
                z=>dataout(12));
   
   XLXI_121 : MUX2
      port map (a=>datain(12),
                b=>datain(14),
                s=>d,
                z=>dataout(13));
   
   XLXI_122 : MUX2
      port map (a=>datain(13),
                b=>datain(15),
                s=>d,
                z=>dataout(14));
   
   XLXI_123 : MUX2
      port map (a=>datain(14),
                b=>datain(16),
                s=>d,
                z=>dataout(15));
   
   XLXI_124 : MUX2
      port map (a=>datain(15),
                b=>datain(17),
                s=>d,
                z=>dataout(16));
   
   XLXI_125 : MUX2
      port map (a=>datain(16),
                b=>datain(18),
                s=>d,
                z=>dataout(17));
   
   XLXI_126 : MUX2
      port map (a=>datain(17),
                b=>datain(19),
                s=>d,
                z=>dataout(18));
   
   XLXI_127 : MUX2
      port map (a=>datain(18),
                b=>datain(20),
                s=>d,
                z=>dataout(19));
   
   XLXI_128 : MUX2
      port map (a=>datain(19),
                b=>datain(21),
                s=>d,
                z=>dataout(20));
   
   XLXI_129 : MUX2
      port map (a=>datain(20),
                b=>datain(22),
                s=>d,
                z=>dataout(21));
   
   XLXI_130 : MUX2
      port map (a=>datain(21),
                b=>datain(23),
                s=>d,
                z=>dataout(22));
   
   XLXI_131 : MUX2
      port map (a=>datain(22),
                b=>datain(24),
                s=>d,
                z=>dataout(23));
   
   XLXI_132 : MUX2
      port map (a=>datain(23),
                b=>datain(25),
                s=>d,
                z=>dataout(24));
   
   XLXI_133 : MUX2
      port map (a=>datain(24),
                b=>datain(26),
                s=>d,
                z=>dataout(25));
   
   XLXI_134 : MUX2
      port map (a=>datain(25),
                b=>datain(27),
                s=>d,
                z=>dataout(26));
   
   XLXI_135 : MUX2
      port map (a=>datain(26),
                b=>datain(28),
                s=>d,
                z=>dataout(27));
   
   XLXI_136 : MUX2
      port map (a=>datain(27),
                b=>datain(29),
                s=>d,
                z=>dataout(28));
   
   XLXI_137 : MUX2
      port map (a=>datain(28),
                b=>datain(30),
                s=>d,
                z=>dataout(29));
   
   XLXI_138 : MUX2
      port map (a=>datain(29),
                b=>datain(31),
                s=>d,
                z=>dataout(30));
   
   XLXI_139 : MUX2
      port map (a=>datain(30),
                b=>XLXN_182,
                s=>d,
                z=>dataout(31));
   
   XLXI_140 : GND
      port map (G=>XLXN_169);
   
   XLXI_141 : GND
      port map (G=>XLXN_182);
   
end BEHAVIORAL;


