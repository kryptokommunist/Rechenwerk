--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : ram2.vhf
-- /___/   /\     Timestamp : 06/04/2014 19:03:53
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /vol/fob-vol6/mi13/dingmarc/workspace/dsprak/rw4/ram2.vhf -w /vol/fob-vol6/mi13/dingmarc/workspace/dsprak/rw4/ram2.sch
--Design Name: ram2
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

entity mux2_MUSER_ram2 is
   port ( S  : in    std_logic; 
          X0 : in    std_logic; 
          X1 : in    std_logic; 
          Y  : out   std_logic);
end mux2_MUSER_ram2;

architecture BEHAVIORAL of mux2_MUSER_ram2 is
   attribute BOX_TYPE   : string ;
   signal XLXN_15 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_19 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_3 : AND2
      port map (I0=>X0,
                I1=>XLXN_19,
                O=>XLXN_16);
   
   XLXI_4 : AND2
      port map (I0=>S,
                I1=>X1,
                O=>XLXN_15);
   
   XLXI_5 : OR2
      port map (I0=>XLXN_16,
                I1=>XLXN_15,
                O=>Y);
   
   XLXI_6 : INV
      port map (I=>S,
                O=>XLXN_19);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux4_MUSER_ram2 is
   port ( S  : in    std_logic; 
          X0 : in    std_logic_vector (3 downto 0); 
          X1 : in    std_logic_vector (3 downto 0); 
          Y  : out   std_logic_vector (3 downto 0));
end mux4_MUSER_ram2;

architecture BEHAVIORAL of mux4_MUSER_ram2 is
   component mux2_MUSER_ram2
      port ( S  : in    std_logic; 
             X0 : in    std_logic; 
             X1 : in    std_logic; 
             Y  : out   std_logic);
   end component;
   
begin
   XLXI_1 : mux2_MUSER_ram2
      port map (S=>S,
                X0=>X0(3),
                X1=>X1(3),
                Y=>Y(3));
   
   XLXI_2 : mux2_MUSER_ram2
      port map (S=>S,
                X0=>X0(2),
                X1=>X1(2),
                Y=>Y(2));
   
   XLXI_3 : mux2_MUSER_ram2
      port map (S=>S,
                X0=>X0(1),
                X1=>X1(1),
                Y=>Y(1));
   
   XLXI_4 : mux2_MUSER_ram2
      port map (S=>S,
                X0=>X0(0),
                X1=>X1(0),
                Y=>Y(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity reg4_MUSER_ram2 is
   port ( CE  : in    std_logic; 
          Clk : in    std_logic; 
          D   : in    std_logic_vector (3 downto 0); 
          Res : in    std_logic; 
          Q   : out   std_logic_vector (3 downto 0));
end reg4_MUSER_ram2;

architecture BEHAVIORAL of reg4_MUSER_ram2 is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity adrdec2_MUSER_ram2 is
   port ( ADR   : in    std_logic; 
          M_IN  : in    std_logic; 
          ADR_H : out   std_logic; 
          ADR_L : out   std_logic);
end adrdec2_MUSER_ram2;

architecture BEHAVIORAL of adrdec2_MUSER_ram2 is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ram2 is
   port ( ADR  : in    std_logic; 
          Clk  : in    std_logic; 
          D    : in    std_logic_vector (3 downto 0); 
          M_IN : in    std_logic; 
          Res  : in    std_logic; 
          Q    : out   std_logic_vector (3 downto 0));
end ram2;

architecture BEHAVIORAL of ram2 is
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic_vector (3 downto 0);
   signal XLXN_4 : std_logic_vector (3 downto 0);
   component reg4_MUSER_ram2
      port ( Clk : in    std_logic; 
             CE  : in    std_logic; 
             Res : in    std_logic; 
             D   : in    std_logic_vector (3 downto 0); 
             Q   : out   std_logic_vector (3 downto 0));
   end component;
   
   component adrdec2_MUSER_ram2
      port ( ADR   : in    std_logic; 
             ADR_H : out   std_logic; 
             ADR_L : out   std_logic; 
             M_IN  : in    std_logic);
   end component;
   
   component mux4_MUSER_ram2
      port ( S  : in    std_logic; 
             X0 : in    std_logic_vector (3 downto 0); 
             X1 : in    std_logic_vector (3 downto 0); 
             Y  : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   REG4_H : reg4_MUSER_ram2
      port map (CE=>XLXN_1,
                Clk=>Clk,
                D(3 downto 0)=>D(3 downto 0),
                Res=>Res,
                Q(3 downto 0)=>XLXN_3(3 downto 0));
   
   REG4_L : reg4_MUSER_ram2
      port map (CE=>XLXN_2,
                Clk=>Clk,
                D(3 downto 0)=>D(3 downto 0),
                Res=>Res,
                Q(3 downto 0)=>XLXN_4(3 downto 0));
   
   XLXI_1 : adrdec2_MUSER_ram2
      port map (ADR=>ADR,
                M_IN=>M_IN,
                ADR_H=>XLXN_1,
                ADR_L=>XLXN_2);
   
   XLXI_4 : mux4_MUSER_ram2
      port map (S=>ADR,
                X0(3 downto 0)=>XLXN_4(3 downto 0),
                X1(3 downto 0)=>XLXN_3(3 downto 0),
                Y(3 downto 0)=>Q(3 downto 0));
   
end BEHAVIORAL;


