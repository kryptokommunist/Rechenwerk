-- Vhdl test bench created from schematic /vol/home-vol3/signal/fwinkler/xilinx/ds2014/rw4/rw4.sch - Tue Apr  1 19:27:41 2014
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
ENTITY rw4_rw4_sch_tb IS
END rw4_rw4_sch_tb;
ARCHITECTURE behavioral OF rw4_rw4_sch_tb IS 

   COMPONENT rw4
   PORT( F	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          DAT	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          MF	:	IN	STD_LOGIC; 
          F_IN	:	IN	STD_LOGIC; 
          A_IN	:	IN	STD_LOGIC; 
          A	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          BA	:	IN	STD_LOGIC; 
          S	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          RAM	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          M_IN	:	IN	STD_LOGIC; 
          ROM	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Res	:	IN	STD_LOGIC; 
          Clk	:	IN	STD_LOGIC; 
          MB	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL F	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL DAT	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL MF	:	STD_LOGIC;
   SIGNAL F_IN	:	STD_LOGIC;
   SIGNAL A_IN	:	STD_LOGIC;
   SIGNAL A	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL BA	:	STD_LOGIC;
   SIGNAL S	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL RAM	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL RAM0	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL RAM1	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL RAM2	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL RAM3	:	STD_LOGIC_VECTOR (3 DOWNTO 0);	
   SIGNAL M_IN	:	STD_LOGIC;
   SIGNAL ROM	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL Res	:	STD_LOGIC;
   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL MB	:	STD_LOGIC;
	
	CONSTANT CLK_PERIOD: TIME := 40 ns;

BEGIN

   UUT: rw4 PORT MAP(
		F => F, 
		DAT => DAT, 
		MF => MF, 
		F_IN => F_IN, 
		A_IN => A_IN, 
		A => A, 
		BA => BA, 
		S => S, 
		RAM => RAM, 
		M_IN => M_IN, 
		ROM => ROM, 
		Res => Res, 
		Clk => Clk, 
		MB => MB
   );

-- *** Test Bench - Clock Section ***
	clk_process: PROCESS
	BEGIN
	if Clk = '1' then Clk <= '0'; 
	else Clk <= '1';  end if;
	WAIT FOR CLK_PERIOD/2;
	END PROCESS;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
	VARIABLE A_temp:	STD_LOGIC_VECTOR (3 DOWNTO 0) :="0000";
   BEGIN
	
	MF	   <= '0';
   F_IN	<= '0';	
   A_IN	<= '0';
   BA		<= '0';
   S		<= "0000";
   M_IN	<= '0';
   ROM	<= "0000";
   Res	<= '0';
   MB		<= '0';
	-- Check RESET
	   Res  <= '1';
		WAIT for CLK_PERIOD/2;
		RES  <= '0';
		assert A = "0000" report "(1) Res A Fehlerhaft" severity error;
		assert F = "0000" report "(1) Res F Fehlerhaft" severity error;
		
	-- Check A Load
	   ROM	<= "0101";  -- 5
		A_IN  <= '1';
		F_IN  <= '1' ;
		M_IN  <= '0' ;
		BA    <= '1'   ;     -- Logic
		S     <= "1010" ; -- Q = ROM
		WAIT for CLK_PERIOD;
		A_temp := A;
		assert A = ROM report "(2) LOAD ROM A Fehlerhaft" severity error;
	   assert F = "0000" report "(2) LOAD ROM F Fehlerhaft" severity error;  		

	-- Check STORE RAM @2
		ROM	<= "0010";  -- @2
		A_IN  <= '0';
		F_IN  <= '0' ;
		M_IN  <= '1' ;
		BA    <= '1' ;       -- Logic
		S     <= "1100";  -- Q = A (5)
		WAIT for CLK_PERIOD;
		RAM2  <= DAT;		-- @2:0001 wird zum Vergleich in Testbench gespeichert
		assert A = RAM report "(2) STORE RAM @2 Fehlerhaft" severity error;  

	-- Check ALU Logic ROM
		ROM	<= "0011";  -- 3
		A_IN  <= '1';
		F_IN  <= '1' ;
		M_IN  <= '0' ;
		BA    <= '1';        -- Logic
		S     <= "1000";  -- Q = A and ROM
		WAIT for CLK_PERIOD;
		assert A = (A_temp and ROM) report "(2) AND ROM Fehlerhaft" severity error;  
	   assert F = "0000" report "(2) AND ROM Fehlerhaft" severity error;  
		
	-- Check STORE RAM @1
		ROM	<= "0001";  -- @1
		A_IN  <= '0';
		F_IN  <= '0' ;
		M_IN  <= '1' ;
		BA    <= '1' ;      -- Logic
		S     <= "1100";  -- Q = A 
		WAIT for CLK_PERIOD;
		RAM1  <= DAT;		-- @1:0001 wird zum Vergleich in Testbench gespeichert
		assert A = RAM report "(2) STORE RAM @1 Fehlerhaft" severity error;  
		
	-- Check Clear RAM @1
  		ROM	<= "0001";  -- @1
		A_IN  <= '0';
		F_IN  <= '0';
		M_IN  <= '1' ;
		BA    <= '1' ;       -- Logic
		S     <= "0000";  -- Q = 0 
		WAIT for CLK_PERIOD;
		RAM1  <= DAT;		-- @1:0000 wird zum Vergleich in Testbench gespeichert
		assert RAM = DAT report "(2) CLEAR RAM @1 Fehlerhaft" severity error;   	
		
	-- Check ALU Logic RAM
		ROM	<= "0010";    -- @2
		A_IN  <= '1';
		F_IN  <= '1';
		M_IN  <= '0' ;
		MB    <= '1';
		BA    <= '1';       -- Logic
		S     <= "1110";    -- Q = A OR ROM
		WAIT for CLK_PERIOD;
		A_temp := A;
		assert A = (A or RAM2) report "(2) OR RAM @2 Fehlerhaft" severity error;  	
	   assert F = "0000" report "(2) OR RAM @2 Fehlerhaft" severity error;  
	
	-- Check ALU ROM Arithmetic
		ROM	<= "0011";    -- 3
		A_IN  <= '1';
		F_IN  <= '1';
		M_IN  <= '0' ;
		MB    <= '0';
		BA    <= '0';       -- Arithmetic
		S     <= "1001";    -- Q = A + ROM
		WAIT for CLK_PERIOD;
		A_temp := std_logic_vector(unsigned(ROM) + unsigned(A_temp)); 
		assert A = A_temp   report "(3) A + ROM A Fehlerhaft" severity error;  
      assert F = "1100"   report "(3) A + ROM F Fehlerhaft" severity error; 	

	-- Check FLAG set
		ROM	<= "0011";    -- 0011
		A_IN  <= '0';
		F_IN  <= '1';
		M_IN  <= '0' ;
		MB    <= '0';
		MF    <= '1';
		BA    <= '1';       -- Arithmetic
		S     <= "1010";    -- Q = B
		WAIT for CLK_PERIOD;
		assert F = ROM   report "(3) SET F Fehlerhaft" severity error;  
	
	-- Check A STORE
		ROM	<= "0011";    -- @3
		A_IN  <= '0';
		F_IN  <= '0';
		M_IN  <= '1';
		MB    <= '0';
		MF    <= '0';
		BA    <= '1';       -- Arithmetic
		S     <= "1100";    -- Q = A 
		WAIT for CLK_PERIOD;
		RAM3 <= A_temp;		-- 1000
		assert DAT = A_temp report "(3) Store @3 Fehlerhaft" severity error;  

	-- Check RESA
		A_IN  <= '1';
		F_IN  <= '1';
		M_IN  <= '0';
		MB    <= '0';
		MF    <= '0';
		BA    <= '1';       -- Arithmetic
		S     <= "0000";    -- Q = B
		WAIT for CLK_PERIOD;
		assert A = "0000" report "(3) RESA Fehlerhaft" severity error;  
	
	
	-- Check LOAD @3
		ROM	<= "0011";    -- @3
		A_IN  <= '1';
		F_IN  <= '1';
		M_IN  <= '0';
		MB    <= '1';
		MF    <= '0';
		BA    <= '1';       -- Arithmetic
		S     <= "1010";    -- Q = B
		WAIT for CLK_PERIOD;
		assert A = A_temp report "(3) LOAD @3 Fehlerhaft" severity error;  
	
	 
		report "Abbruch der Simulation" severity failure;
	
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
