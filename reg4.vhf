--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : reg4.vhf
-- /___/   /\     Timestamp : 06/04/2014 19:03:53
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /vol/fob-vol6/mi13/dingmarc/workspace/dsprak/rw4/reg4.vhf -w /vol/fob-vol6/mi13/dingmarc/workspace/dsprak/rw4/reg4.sch
--Design Name: reg4
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity reg4 is
   port ( CE  : in    std_logic; 
          Clk : in    std_logic; 
          D   : in    std_logic_vector (3 downto 0); 
          Res : in    std_logic; 
          Q   : out   std_logic_vector (3 downto 0));
end reg4;

architecture BEHAVIORAL of reg4 is
   attribute BOX_TYPE   : string ;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   XLXI_1 : FDCE
      port map (C=>Clk,
                CE=>CE,
                CLR=>Res,
                D=>D(0),
                Q=>Q(0));
   
   XLXI_3 : FDCE
      port map (C=>Clk,
                CE=>CE,
                CLR=>Res,
                D=>D(1),
                Q=>Q(1));
   
   XLXI_4 : FDCE
      port map (C=>Clk,
                CE=>CE,
                CLR=>Res,
                D=>D(2),
                Q=>Q(2));
   
   XLXI_5 : FDCE
      port map (C=>Clk,
                CE=>CE,
                CLR=>Res,
                D=>D(3),
                Q=>Q(3));
   
end BEHAVIORAL;


