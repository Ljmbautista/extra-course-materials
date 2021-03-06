LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DFF is
PORT( din: IN STD_LOGIC;
      clk: IN STD_LOGIC;
      rst: IN STD_LOGIC;
      dout: OUT STD_LOGIC);
END DFF;

ARCHITECTURE behavioral of DFF is
BEGIN
   PROCESS(rst,clk,din)
      BEGIN
         IF (rst='1') THEN
         dout<='0';
      ELSIF(RISING_EDGE(clk)) THEN
         dout<= din;
      END IF;
   END PROCESS;
END behavioral;
