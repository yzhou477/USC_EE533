--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : ALUsch_32bit.vhf
-- /___/   /\     Timestamp : 01/25/2025 19:22:15
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan2e -flat -suppress -w C:/yzhou477/ALUsch_32bit.sch ALUsch_32bit.vhf
--Design Name: ALUsch_32bit
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

entity ALUsch_32bit is
   port ( a        : in    std_logic_vector (31 downto 0); 
          b        : in    std_logic_vector (31 downto 0); 
          cin      : in    std_logic; 
          opr      : in    std_logic_vector (2 downto 0); 
          shiftdir : in    std_logic; 
          add_cout : out   std_logic; 
          sub_cout : out   std_logic; 
          z        : out   std_logic_vector (31 downto 0));
end ALUsch_32bit;

architecture BEHAVIORAL of ALUsch_32bit is
   signal XLXN_11  : std_logic_vector (31 downto 0);
   signal XLXN_12  : std_logic_vector (31 downto 0);
   signal XLXN_13  : std_logic_vector (31 downto 0);
   signal XLXN_14  : std_logic_vector (31 downto 0);
   signal XLXN_15  : std_logic_vector (31 downto 0);
   signal XLXN_16  : std_logic_vector (31 downto 0);
   signal XLXN_17  : std_logic_vector (31 downto 0);
   signal XLXN_18  : std_logic_vector (31 downto 0);
   component fadd_32bit
      port ( a    : in    std_logic_vector (31 downto 0); 
             b    : in    std_logic_vector (31 downto 0); 
             cin  : in    std_logic; 
             z    : out   std_logic_vector (31 downto 0); 
             cout : out   std_logic);
   end component;
   
   component subtractor_32bit
      port ( b    : in    std_logic_vector (31 downto 0); 
             opr  : in    std_logic; 
             a    : in    std_logic_vector (31 downto 0); 
             cout : out   std_logic; 
             z    : out   std_logic_vector (31 downto 0));
   end component;
   
   component shifterlog1_32bit
      port ( d       : in    std_logic; 
             datain  : in    std_logic_vector (31 downto 0); 
             dataout : out   std_logic_vector (31 downto 0));
   end component;
   
   component AND2_32bit
      port ( a : in    std_logic_vector (31 downto 0); 
             b : in    std_logic_vector (31 downto 0); 
             z : out   std_logic_vector (31 downto 0));
   end component;
   
   component OR2_32bit
      port ( a : in    std_logic_vector (31 downto 0); 
             b : in    std_logic_vector (31 downto 0); 
             z : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX2_32bit
      port ( a   : in    std_logic_vector (31 downto 0); 
             b   : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic; 
             z   : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : fadd_32bit
      port map (a(31 downto 0)=>a(31 downto 0),
                b(31 downto 0)=>b(31 downto 0),
                cin=>cin,
                cout=>add_cout,
                z(31 downto 0)=>XLXN_11(31 downto 0));
   
   XLXI_2 : subtractor_32bit
      port map (a(31 downto 0)=>a(31 downto 0),
                b(31 downto 0)=>b(31 downto 0),
                opr=>opr(0),
                cout=>sub_cout,
                z(31 downto 0)=>XLXN_12(31 downto 0));
   
   XLXI_3 : shifterlog1_32bit
      port map (d=>shiftdir,
                datain(31 downto 0)=>a(31 downto 0),
                dataout(31 downto 0)=>XLXN_13(31 downto 0));
   
   XLXI_4 : AND2_32bit
      port map (a(31 downto 0)=>a(31 downto 0),
                b(31 downto 0)=>b(31 downto 0),
                z(31 downto 0)=>XLXN_14(31 downto 0));
   
   XLXI_5 : OR2_32bit
      port map (a(31 downto 0)=>a(31 downto 0),
                b(31 downto 0)=>b(31 downto 0),
                z(31 downto 0)=>XLXN_15(31 downto 0));
   
   XLXI_14 : MUX2_32bit
      port map (a(31 downto 0)=>XLXN_11(31 downto 0),
                b(31 downto 0)=>XLXN_12(31 downto 0),
                sel=>opr(0),
                z(31 downto 0)=>XLXN_16(31 downto 0));
   
   XLXI_15 : MUX2_32bit
      port map (a(31 downto 0)=>XLXN_13(31 downto 0),
                b(31 downto 0)=>XLXN_14(31 downto 0),
                sel=>opr(0),
                z(31 downto 0)=>XLXN_17(31 downto 0));
   
   XLXI_17 : MUX2_32bit
      port map (a(31 downto 0)=>XLXN_16(31 downto 0),
                b(31 downto 0)=>XLXN_17(31 downto 0),
                sel=>opr(1),
                z(31 downto 0)=>XLXN_18(31 downto 0));
   
   XLXI_23 : MUX2_32bit
      port map (a(31 downto 0)=>XLXN_18(31 downto 0),
                b(31 downto 0)=>XLXN_15(31 downto 0),
                sel=>opr(2),
                z(31 downto 0)=>z(31 downto 0));
   
end BEHAVIORAL;


