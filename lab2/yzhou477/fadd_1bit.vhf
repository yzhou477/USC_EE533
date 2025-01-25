--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : fadd_1bit.vhf
-- /___/   /\     Timestamp : 01/24/2025 23:57:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/fadd_1bit.sch fadd_1bit.vhf
--Design Name: fadd_1bit
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

entity fadd_1bit is
   port ( a    : in    std_logic; 
          b    : in    std_logic; 
          cin  : in    std_logic; 
          cout : out   std_logic; 
          z    : out   std_logic);
end fadd_1bit;

architecture BEHAVIORAL of fadd_1bit is
   attribute BOX_TYPE   : string ;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_1 : XOR2
      port map (I0=>b,
                I1=>a,
                O=>XLXN_3);
   
   XLXI_2 : XOR2
      port map (I0=>cin,
                I1=>XLXN_3,
                O=>z);
   
   XLXI_3 : AND2
      port map (I0=>b,
                I1=>a,
                O=>XLXN_4);
   
   XLXI_4 : AND2
      port map (I0=>cin,
                I1=>a,
                O=>XLXN_11);
   
   XLXI_5 : AND2
      port map (I0=>cin,
                I1=>b,
                O=>XLXN_12);
   
   XLXI_6 : OR3
      port map (I0=>XLXN_12,
                I1=>XLXN_11,
                I2=>XLXN_4,
                O=>cout);
   
end BEHAVIORAL;


