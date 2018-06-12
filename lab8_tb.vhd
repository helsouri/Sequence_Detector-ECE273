-- Vhdl test bench created from schematic C:\Temp\LAB_8.1\main.sch - Thu Mar 30 09:54:51 2017
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
ENTITY main_main_sch_tb IS
END main_main_sch_tb;
ARCHITECTURE behavioral OF main_main_sch_tb IS 

   COMPONENT main
   PORT( X	:	IN	STD_LOGIC; 
          Z	:	OUT	STD_LOGIC; 
          CLR	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          FCLK	:	OUT	STD_LOGIC; 
          SPEED	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL X	:	STD_LOGIC;
   SIGNAL Z	:	STD_LOGIC;
   SIGNAL CLR	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL FCLK	:	STD_LOGIC;
   SIGNAL SPEED	:	STD_LOGIC;

BEGIN

   UUT: main PORT MAP(
		X => X, 
		Z => Z, 
		CLR => CLR, 
		CLK => CLK, 
		FCLK => FCLK, 
		SPEED => SPEED
   );

-- *** Test Bench - User Defined Section ***
RESET : PROCESS
   BEGIN
      CLR <= '0';
		WAIT FOR 10ns;
		CLR <= '1';
		WAIT;
   END PROCESS;
CLOCK :PROCESS
	BEGIN
		CLK <= '0';
		WAIT FOR 100ns;
		CLK <= '1';
		WAIT FOR 100ns;
	END PROCESS;
SPD :PROCESS
	BEGIN
		SPEED <= '1';
		WAIT;
	END PROCESS;
tb : PROCESS
   BEGIN
      X<='1';
		WAIT FOR 200ns;
		X<='1';
		WAIT FOR 200ns;
		X<='0';
		WAIT FOR 200ns;
		X<='1';
		WAIT FOR 200ns;
		X<='0';
		WAIT FOR 200ns;
		X<='1';
		WAIT FOR 200ns;
		X<='1';
		WAIT FOR 200ns;
		X<='0';
		WAIT FOR 200ns;
		X<='1';
		WAIT FOR 200ns;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
