--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : synfadd_8bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 11:59:53
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/synfadd_8bit.sch synfadd_8bit.vhf
--Design Name: synfadd_8bit
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

entity FD8CE_MXILINX_synfadd_8bit is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (7 downto 0); 
          Q   : out   std_logic_vector (7 downto 0));
end FD8CE_MXILINX_synfadd_8bit;

architecture BEHAVIORAL of FD8CE_MXILINX_synfadd_8bit is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   component FDCE
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDCE : component is "0";
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   I_Q0 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(0),
                Q=>Q(0));
   
   I_Q1 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(1),
                Q=>Q(1));
   
   I_Q2 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(2),
                Q=>Q(2));
   
   I_Q3 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(3),
                Q=>Q(3));
   
   I_Q4 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(4),
                Q=>Q(4));
   
   I_Q5 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(5),
                Q=>Q(5));
   
   I_Q6 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(6),
                Q=>Q(6));
   
   I_Q7 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(7),
                Q=>Q(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity synfadd_8bit is
   port ( a       : in    std_logic_vector (7 downto 0); 
          b       : in    std_logic_vector (7 downto 0); 
          cin     : in    std_logic; 
          clear   : in    std_logic; 
          clk     : in    std_logic; 
          enable  : in    std_logic; 
          coutreg : out   std_logic; 
          zreg    : out   std_logic_vector (7 downto 0));
end synfadd_8bit;

architecture BEHAVIORAL of synfadd_8bit is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_88 : std_logic_vector (7 downto 0);
   signal XLXN_89 : std_logic_vector (7 downto 0);
   signal XLXN_90 : std_logic;
   signal XLXN_91 : std_logic_vector (7 downto 0);
   signal XLXN_92 : std_logic;
   component FDCE
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDCE : component is "0";
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component FD8CE_MXILINX_synfadd_8bit
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component fadd_8bit
      port ( a    : in    std_logic_vector (7 downto 0); 
             b    : in    std_logic_vector (7 downto 0); 
             cin  : in    std_logic; 
             z    : out   std_logic_vector (7 downto 0); 
             cout : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_36 : label is "XLXI_36_0";
   attribute HU_SET of XLXI_37 : label is "XLXI_37_1";
   attribute HU_SET of XLXI_42 : label is "XLXI_42_2";
begin
   XLXI_35 : FDCE
      port map (C=>clk,
                CE=>enable,
                CLR=>clear,
                D=>cin,
                Q=>XLXN_90);
   
   XLXI_36 : FD8CE_MXILINX_synfadd_8bit
      port map (C=>clk,
                CE=>enable,
                CLR=>clear,
                D(7 downto 0)=>a(7 downto 0),
                Q(7 downto 0)=>XLXN_88(7 downto 0));
   
   XLXI_37 : FD8CE_MXILINX_synfadd_8bit
      port map (C=>clk,
                CE=>enable,
                CLR=>clear,
                D(7 downto 0)=>b(7 downto 0),
                Q(7 downto 0)=>XLXN_89(7 downto 0));
   
   XLXI_40 : FDCE
      port map (C=>clk,
                CE=>enable,
                CLR=>clear,
                D=>XLXN_92,
                Q=>coutreg);
   
   XLXI_42 : FD8CE_MXILINX_synfadd_8bit
      port map (C=>clk,
                CE=>enable,
                CLR=>clear,
                D(7 downto 0)=>XLXN_91(7 downto 0),
                Q(7 downto 0)=>zreg(7 downto 0));
   
   XLXI_43 : fadd_8bit
      port map (a(7 downto 0)=>XLXN_88(7 downto 0),
                b(7 downto 0)=>XLXN_89(7 downto 0),
                cin=>XLXN_90,
                cout=>XLXN_92,
                z(7 downto 0)=>XLXN_91(7 downto 0));
   
end BEHAVIORAL;


