-------------------------------------------------------------------------------
-- Title      : memory block
-- Project    : Lab5, DigDat
-------------------------------------------------------------------------------
-- File       : mem.vhd
-- Author     : Asbj�rn Djupdal  <asbjoern@djupdal.org>
-- Company    : 
-- Last update: 2008/06/18
-- Platform   : BenERA, Virtex 1000E
-------------------------------------------------------------------------------
-- Description: Generic memory block
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2003/08/05  1.0      djupdal	Created
-- 2008/09/26  1.1      grannas Adapted to DigDat
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.wb_cpu_package.all;

-------------------------------------------------------------------------------

entity wb_cpu_mem is

  port (
    -- read port
    address  : in  std_logic_vector(MEM_ADDR_BUS - 1 downto 0);
    instruction : out std_logic_vector(MEM_DATA_BUS - 1 downto 0);

	core_rst_n : in std_logic;
    core_clk : in std_logic);

end wb_cpu_mem;

-------------------------------------------------------------------------------

architecture mem_arch of wb_cpu_mem is

  -- number of words in memory
  constant MEM_SIZE : integer := 2 ** MEM_ADDR_BUS;

  type mem_type is array (0 to MEM_SIZE - 1)
    of std_logic_vector(MEM_DATA_BUS - 1 downto 0);

  signal mem_storage : mem_type := (others => (others => '0'));


begin

  process (core_clk, core_rst_n)
  begin    

	if core_rst_n = '0' then
      /*
      -- Oppgave 1
      mem_storage(0) <= X"300FF100";    -- LDI R1, FF
      mem_storage(1) <= X"40000000";    -- JMP 0
		*/
      -- Oppgave 2
		/*
      mem_storage(0) <= X"30005100";    -- LDI R1, 5
      mem_storage(1) <= X"30001200";    -- LDI R2, 1 
      mem_storage(2) <= X"10800121";    -- SUB R1, R2,R1
      mem_storage(3) <= X"20002000";    -- BNZ 2 
      mem_storage(4) <= X"30011300";    -- LDI R3, 11
      mem_storage(5) <= X"40000000";    -- JMP 0
		*/
      
      -- Oppgave 3
      /*
		mem_storage(0) <= X"30001400";    -- LDI R4, 1
      mem_storage(1) <= X"30002500";    -- LDI R5, 2
      mem_storage(2) <= X"50000104";    -- IN  R1, R4
      mem_storage(3) <= X"50000205";    -- IN  R2, R5
      mem_storage(4) <= X"40002000";    -- JMP 2     
		*/
      
		-- Oppgave 4
		
      -- Initial values
      mem_storage(0) <= X"30060100";    -- LDI R1, 60 (current volume)
      
      -- Read key 1
      mem_storage(1) <= X"30001400";    -- LDI R4, 1 (Port 1 is key 1)
      mem_storage(2) <= X"50000204";    -- IN R2, R4 (Read port R4 and store the result in R2
                                           -- 0 means that the key has been pressed.
      mem_storage(3) <= X"30001400";    -- LDI R4, 1 
      mem_storage(4) <= X"10800242";    -- Sub R2, R4, R2 ( R2 = R2 - R4)
      mem_storage(5) <= X"20030000";    -- BNZ 30 (if the substraction was not zero, then the key
                                           -- was pressed). Jump to 0x30 (48) to handle it
      -- Read key 2
      mem_storage(6) <= X"30002400";    -- LDI R4, 2 (Port 2 is key 2)
      mem_storage(7) <= X"50000304";    -- IN R3, R4 (Read port R4 and store the result in R3
                                           -- 0 means that the key has been pressed.
      mem_storage(8) <= X"30001400";    -- LDI R4, 1 
      mem_storage(9) <= X"10800343";    -- Sub R3, R4, R3 ( R3 = R3 - R4)
      mem_storage(10) <= X"20050000";    -- BNZ 50 (if the substraction was not zero, then the key
                                           -- was pressed). Jump to 0x50 (80) to handle it
      -- Jump back to top
      mem_storage(11) <= X"40001000";    -- JMP 1   (Repeat until something is pressed)
      
      -- Student-kode begynner her:
       
      -- Handle keypress 1
      -- First, wait til user lets go of the key
		mem_storage(48) <= X"30001400";    -- LDI R4, 1 (Port 1 is key 1)
      mem_storage(49) <= X"50000204";    -- IN R2, R4 (Read port R4 and store the result in R2)
		mem_storage(50) <= X"30001300";		-- LDI R3, 1
		mem_storage(51) <= X"10300232";		-- XOR R2, R3, R2
		mem_storage(52) <= X"30001400";    -- LDI R4, 1
      mem_storage(53) <= X"10800242";    -- Sub R2, R4, R2 ( R2 = R2 - R4)
		mem_storage(54) <= X"2003C000";    -- BNZ 3C if the key was released. Jump to 0x3C (60) to handle it
		mem_storage(55) <= X"40030000";	  -- JMP 0x30 (48)   (Repeat until released)
      -- Don't increase it beyond 7F (max volume)
		mem_storage(60) <= X"3007F200";	  -- LDI R2, 7F (set max volum)
		mem_storage(61) <= X"10800212";    -- Sub R2, R1, R2 ( R2 = R2 - R1) (R2 = max volume - current volume)
		mem_storage(62) <= X"20040000";    -- BNZ 0x40 (64) if not zero (volume under max).  
		mem_storage(63) <= X"4006E000";    -- JMP 110 (Adjust volume)
		mem_storage(64) <= X"30001400";    -- LDI R4, 1
		mem_storage(65) <= X"10700141";	  -- R1 = R1 + R4 (R1 = current volume + 1)
		mem_storage(66) <= X"4006E000";    -- JMP 110 (Adjust volume)
		
      -- Handle keypress 2
      -- First, wait til user lets go of the key
      mem_storage(80) <= X"30002400";    -- LDI R4, 2 (Port 2 is key 2)
      mem_storage(81) <= X"50000204";    -- IN R2, R4 (Read port R4 and store the result in R2)
		mem_storage(82) <= X"30001300";		-- LDI R3, 1
		mem_storage(83) <= X"10300232";		-- XOR R2, R3, R2
		mem_storage(84) <= X"30001400";    -- LDI R4, 1
      mem_storage(85) <= X"10800242";    -- Sub R2, R4, R2 ( R2 = R2 - R4)
		mem_storage(86) <= X"2005A000";    -- BNZ 0x5A (90) if the key was released. Jump to to handle it
		mem_storage(87) <= X"40050000";	  -- JMP 0x50 (80)   (Repeat until released)
      -- Don't increase it below 1 (min volume)
		mem_storage(90) <= X"30060200";	  -- LDI R2, 60 (set min volum)
		mem_storage(91) <= X"10800221";    -- Sub R2, R2, R1 ( R2 = R1 - R2) (R2 = current volume - min volume)
		mem_storage(92) <= X"2005E000";    -- BNZ 0x5E (94) if not zero (volume over min).  
		mem_storage(93) <= X"4006E000";    -- JMP 110 (Adjust volume)
		mem_storage(94) <= X"30001400";    -- LDI R4, 1
		mem_storage(95) <= X"10800141";	  -- R1 = R1 - R4 (R1 = current volume - 1)
		mem_storage(96) <= X"4006E000";    -- JMP 110 (Adjust volume)
      
      -- Adjust volume
      mem_storage(110) <= X"30003400";    -- LDI R4, 3 (Port 3 is volume)
      mem_storage(111) <= X"60000014";    -- OUT R4, R1 (Write value R1 into R4)
      mem_storage(112) <= X"40001000";    -- JMP 1 (Back to main)
		
      

    elsif rising_edge (core_clk) then

      instruction <= mem_storage (to_integer(unsigned (address)));
    end if;
  end process;

end mem_arch;
