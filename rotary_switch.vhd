-- Rotaray Switch design
-- DS Praktikum F. Winkler, 
--
-- Reference design - Rotary encoder and simple LEDs on Spartan-3E Starter Kit (Revision C)
--
-- Ken Chapman - Xilinx Ltd - November 2005
-- Revised 20th February 2006
--
-- This design demonstrates how to interface to the rotary encoder and simple LEDs.
--    At the start, only one LED is on. 
--    Turning the rotary encoder to the left or right will cause
--    the LED which is on to appear to also move in the corresponding direction.
--    Pressing the rotary encoder will invert all LEDs so that only one is off.
--
-- The design also uses the 50MHz oscillator provided on the board.
--
-- Instructional value
--   Basic VHDL including definition of inputs and outputs.
--   UCF (User Constraints File) constraints to define pin assignments to match board.
--   UCF constraints to apply pull-up and pull-down resistors to input pins.
--   Detecting rotary movement.
--   Synchronous design.
--
------------------------------------------------------------------------------------
--
-- NOTICE:
--
-- Copyright Xilinx, Inc. 2006.   This code may be contain portions patented by other 
-- third parties.  By providing this core as one possible implementation of a standard,
-- Xilinx is making no representation that the provided implementation of this standard 
-- is free from any claims of infringement by any third party.  Xilinx expressly 
-- disclaims any warranty with respect to the adequacy of the implementation, including 
-- but not limited to any warranty or representation that the implementation is free 
-- from claims of any third party.  Furthermore, Xilinx is providing this core as a 
-- courtesy to you and suggests that you contact all third parties to obtain the 
-- necessary rights to use this implementation.
--
------------------------------------------------------------------------------------
--
-- Library declarations
--
-- Standard IEEE libraries
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
------------------------------------------------------------------------------------
--
--
entity rotary_switch is
    Port (             clk : in std_logic;
	               rotary_a : in std_logic;
                  rotary_b : in std_logic;
              rotary_press : in std_logic;
						  clk_out: out std_logic;
						    reset: out std_logic; 
				         updown: out std_logic
							);
    end rotary_switch;
--
------------------------------------------------------------------------------------
--
-- Start of test architecture
--
architecture Behavioral of rotary_switch is
--
------------------------------------------------------------------------------------
--
-- Signals used to interface to rotary encoder
--
signal      rotary_a_in : std_logic;
signal      rotary_b_in : std_logic;
signal  rotary_press_in : std_logic;
signal        rotary_in : std_logic_vector(1 downto 0);
signal        rotary_q1 : std_logic;
signal        rotary_q2 : std_logic;
signal  delay_rotary_q1 : std_logic;
signal     rotary_event : std_logic;
signal      rotary_left : std_logic;
--
-- Signals used to drive LEDs

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- Start of circuit description
--
begin
  --
  ----------------------------------------------------------------------------------------------------------------------------------
  -- Interface to rotary encoder.
  -- Detection of movement and direction.
  ----------------------------------------------------------------------------------------------------------------------------------
  --
  -- The rotary switch contacts are filtered using their offset (one-hot) style to  
  -- clean them. Circuit concept by Peter Alfke.
  -- Note that the clock rate is fast compared with the switch rate.

  rotary_filter: process(clk)
  begin
    if clk'event and clk='1' then

      --Synchronise inputs to clock domain using flip-flops in input/output blocks.
      rotary_a_in <= rotary_a;
      rotary_b_in <= rotary_b;
      rotary_press_in <= rotary_press;

      --concatinate rotary input signals to form vector for case construct.
      rotary_in <= rotary_b_in & rotary_a_in;

      case rotary_in is

        when "00" => rotary_q1 <= '0';         
                     rotary_q2 <= rotary_q2;
 
        when "01" => rotary_q1 <= rotary_q1;
                     rotary_q2 <= '0';

        when "10" => rotary_q1 <= rotary_q1;
                     rotary_q2 <= '1';

        when "11" => rotary_q1 <= '1';
                     rotary_q2 <= rotary_q2; 

        when others => rotary_q1 <= rotary_q1; 
                       rotary_q2 <= rotary_q2; 
      end case;

    end if;
  end process rotary_filter;
  --
  -- The rising edges of 'rotary_q1' indicate that a rotation has occurred and the 
  -- state of 'rotary_q2' at that time will indicate the direction. 
  --
  direction: process(clk)
  begin
    if clk'event and clk='1' then

      delay_rotary_q1 <= rotary_q1;
      if rotary_q1='1' and delay_rotary_q1='0' then
        rotary_event <= '1';
        rotary_left <= rotary_q2;
       else
        rotary_event <= '0';
        rotary_left <= rotary_left;
      end if;
    end if;
  end process direction;
  
  
	updown <= rotary_left;
	reset <= rotary_press_in;
	
   gen_clk: process(clk)
	begin
		if clk'event and clk='1' then
			clk_out <= rotary_event;
		end if;
	end process;

 
end Behavioral;

------------------------------------------------------------------------------------------------------------------------------------
--
-- END OF FILE left_right_leds.vhd
--
------------------------------------------------------------------------------------------------------------------------------------

