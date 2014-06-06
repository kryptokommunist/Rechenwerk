--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : adrdec2.vhf
-- /___/   /\     Timestamp : 06/04/2014 18:53:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /vol/fob-vol6/mi13/dingmarc/workspace/dsprak/rw4/adrdec2.vhf -w /vol/fob-vol6/mi13/dingmarc/workspace/dsprak/rw4/adrdec2.sch
--Design Name: adrdec2
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

entity adrdec2 is
   port ( ADR   : in    std_logic; 
          M_IN  : in    std_logic; 
          ADR_H : out   std_logic; 
          ADR_L : out   std_logic);
end adrdec2;

architecture BEHAVIORAL of adrdec2 is
   attribute BOX_TYPE   : string ;
   signal XLXN_4 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>ADR,
                I1=>M_IN,
                O=>ADR_H);
   
   XLXI_2 : AND2
      port map (I0=>XLXN_4,
                I1=>M_IN,
                O=>ADR_L);
   
   XLXI_3 : INV
      port map (I=>ADR,
                O=>XLXN_4);
   
end BEHAVIORAL;


