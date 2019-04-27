LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY module_fnBitNodeCore is
    PORT (
       fnBitNodeCore_i0 : IN std_logic;	
       fnBitNodeCore_i1 : IN std_logic;	
        fnBitNodeCore_i2 : IN std_logic;	
        fnBitNodeCore : OUT std_logic);	
END module_fnBitNodeCore;
ARCHITECTURE VeriArch OF module_fnBitNodeCore IS
component std_inv
port(a : in std_logic;
y : out std_logic);
end component;

component std_nand2
port(a,b : in std_logic;
y : out std_logic);
end component;

    SIGNAL a1,b1,c1,d1,e1: std_logic;	
 

BEGIN

    s1 : std_nand2
    PORT MAP (fnBitNodeCore_i0, fnBitNodeCore_i1, a1);	


    s2 : std_inv
    PORT MAP (
        a => fnBitNodeCore_i1,
        y => b1);	


    s3 : std_inv
    PORT MAP (
        a => fnBitNodeCore_i0,
        y => c1);	


    s4 : std_nand2
    PORT MAP (
        a => c1,
        b => b1,
        y => d1);	


    s5 : std_nand2
    PORT MAP (
        a => d1,
        b => fnBitNodeCore_i2,
        y => e1);	


    s6 : std_nand2
    PORT MAP (
        a => e1,
        b => a1,
        y => fnBitNodeCore);	

END VeriArch;


