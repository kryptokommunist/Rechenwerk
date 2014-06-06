-- Vhdl test bench created from schematic /vol/home-vol3/signal/fwinkler/xilinx/ds2014/rw4/ram4.sch - Thu May 15 16:44:23 2014
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY ram4_ram4_sch_tb IS
END ram4_ram4_sch_tb;
ARCHITECTURE behavioral OF ram4_ram4_sch_tb IS 

   COMPONENT ram4
   PORT( Res	:	IN	STD_LOGIC; 
          Clk	:	IN	STD_LOGIC; 
          M_IN	:	IN	STD_LOGIC; 
          ADR	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          D	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          RAM	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;

   SIGNAL Res	:	STD_LOGIC;
   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL M_IN	:	STD_LOGIC;
   SIGNAL ADR	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL D	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL RAM	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	
	CONSTANT CLK_PERIOD : TIME := 20 ns;

BEGIN

   UUT: ram4 PORT MAP(
		Res => Res, 
		Clk => Clk, 
		M_IN => M_IN, 
		ADR => ADR, 
		D => D, 
		RAM => RAM
   );


-- *** Test Bench - User Defined Section ***
clk_process: process
	begin
		if Clk = '1' then
		Clk <= '0';
		else
		Clk <= '1';
		end if;
	WAIT for CLK_PERIOD/2;
	end process;

--- Test Pattern ----

tb : PROCESS
   BEGIN
	RES <= '1'; 
	WAIT for CLK_PERIOD/2;
	assert RAM="0000" report "(0) RAM Reset fehlerhaft" severity error;

	RES <= '0'; 	
	M_IN <= '0';
	ADR <= "00";
	D   <= "0000";
	WAIT for CLK_PERIOD;
	assert RAM="0000" report "(1) RAM Reset fehlerhaft" severity error;

-- Write Test @0
	RES <= '0'; 	
	M_IN <= '1';
	D   <= "0101";	
	ADR <= "00";
	WAIT for CLK_PERIOD;
	assert RAM = D report "(2) RAM Write @0 fehlerhaft" severity error;
	
-- Write Test @1
	RES <= '0'; 	
	M_IN <= '1';
	D   <= "0100";	
	ADR <= "01";
	WAIT for CLK_PERIOD;
	assert RAM = D report "(2) RAM Write @1 fehlerhaft" severity error;
	
-- Write Test @2
	RES <= '0'; 	
	M_IN <= '1';
	D   <= "0011";	
	ADR <= "10";
	WAIT for CLK_PERIOD;
	assert RAM = D report "(2) RAM Write @2 fehlerhaft" severity error;

-- Write Test @3
	RES <= '0'; 	
	M_IN <= '1';
	D   <= "0010";	
	ADR <= "11";
	WAIT for CLK_PERIOD;
	assert RAM = D report "(2) RAM Write @3 fehlerhaft" severity error;
	
-- Read Test @0
	RES <= '0'; 	
	M_IN <= '0';
	D   <= "0000";	
	ADR <= "00";
	WAIT for CLK_PERIOD;
	assert RAM = "0101" report "(3) RAM Read @0 fehlerhaft" severity error;

-- Read Test @1
	RES <= '0'; 	
	M_IN <= '0';
	D   <= "0000";	
	ADR <= "01";
	WAIT for CLK_PERIOD;
	assert RAM = "0100" report "(3) RAM Read @1 fehlerhaft" severity error;
	
-- Read Test @2
	RES <= '0'; 	
	M_IN <= '0';
	D   <= "0000";	
	ADR <= "10";
	WAIT for CLK_PERIOD;
	assert RAM = "0011" report "(3) RAM Read @2 fehlerhaft" severity error;
	
-- Read Test @3
	RES <= '0'; 	
	M_IN <= '0';
	D   <= "0000";	
	ADR <= "11";
	WAIT for CLK_PERIOD;
	assert RAM = "0010" report "(3) RAM Read @3 fehlerhaft" severity error;
	

	
	WAIT for CLK_PERIOD;	
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
