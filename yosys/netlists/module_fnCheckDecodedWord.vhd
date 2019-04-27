--------------------------------------------------------------------------------
--
-- File Type:    VHDL 
-- Tool Version: verilog2vhdl 19.00c
-- Input file was: ./netlists/module_fnCheckDecodedWord.vg.vpp
-- Command line was: /home/sandeep/Desktop/ActualCoursework/SemII/EE705/synapticad-19.00c-x64/bin/x86_64/verilog2vhdl.bin ./netlists/module_fnCheckDecodedWord.vg -No_Component_Check -SYNTH
-- Date Created: Sat Apr 27 19:49:28 2019
--
--------------------------------------------------------------------------------



LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ASC;
USE ASC.numeric_std.all;
ENTITY module_fnCheckDecodedWord IS	-- 
    PORT (
        SIGNAL fnCheckDecodedWord_b_0 : IN std_logic;	
        SIGNAL fnCheckDecodedWord_b_1 : IN std_logic;	
        SIGNAL fnCheckDecodedWord_b_2 : IN std_logic;	
        SIGNAL fnCheckDecodedWord_b_3 : IN std_logic;	
        SIGNAL fnCheckDecodedWord_b_4 : IN std_logic;	
        SIGNAL fnCheckDecodedWord_b_5 : IN std_logic;	
        SIGNAL fnCheckDecodedWord_b_6 : IN std_logic;	
        SIGNAL fnCheckDecodedWord : OUT std_logic);	
END module_fnCheckDecodedWord;



LIBRARY ASC;

LIBRARY user_defined;
ARCHITECTURE VeriArch OF module_fnCheckDecodedWord IS
    USE ASC.FUNCTIONS.ALL;
    USE user_defined.user_package.ALL;

    SIGNAL ag_00 : std_logic;	

    SIGNAL ag_01 : std_logic;	

    SIGNAL ag_02 : std_logic;	

    SIGNAL ag_03 : std_logic;	

    SIGNAL ag_04 : std_logic;	

    SIGNAL ag_05 : std_logic;	

    SIGNAL ag_06 : std_logic;	

    SIGNAL ag_07 : std_logic;	

    SIGNAL ag_08 : std_logic;	

    SIGNAL ag_09 : std_logic;	

    SIGNAL ag_10 : std_logic;	

    SIGNAL ag_11 : std_logic;	

    SIGNAL ag_12 : std_logic;	

    SIGNAL ag_13 : std_logic;	

    SIGNAL ag_14 : std_logic;	

    SIGNAL ag_15 : std_logic;	

    SIGNAL ag_16 : std_logic;	

    SIGNAL ag_17 : std_logic;	

    SIGNAL ag_18 : std_logic;	

    SIGNAL ag_19 : std_logic;	

    SIGNAL ag_20 : std_logic;	

    SIGNAL ag_21 : std_logic;	

    SIGNAL ag_22 : std_logic;	

    SIGNAL ag_23 : std_logic;	

    SIGNAL ag_24 : std_logic;	

    SIGNAL ag_25 : std_logic;	

    SIGNAL ag_26 : std_logic;	

    SIGNAL ag_27 : std_logic;	

    SIGNAL ag_28 : std_logic;	
-- Intermediate signal for fnCheckDecodedWord
    SIGNAL V2V_fnCheckDecodedWord : std_logic;	
BEGIN
    fnCheckDecodedWord <= V2V_fnCheckDecodedWord;	

    ag_29 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_12,
        b => ag_09,
        y => ag_13);	


    ag_30 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_13,
        b => ag_11,
        y => ag_14);	


    ag_31 : user_defined.user_package.std_nor2
    PORT MAP (
        a => fnCheckDecodedWord_b_2,
        b => ag_05,
        y => ag_15);	


    ag_32 : user_defined.user_package.std_inv
    PORT MAP (
        a => fnCheckDecodedWord_b_2,
        y => ag_16);	


    ag_33 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_16,
        b => fnCheckDecodedWord_b_1,
        y => ag_17);	


    ag_34 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_17,
        b => ag_15,
        y => ag_18);	


    ag_35 : user_defined.user_package.std_inv
    PORT MAP (
        a => fnCheckDecodedWord_b_6,
        y => ag_19);	


    ag_36 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_19,
        b => fnCheckDecodedWord_b_3,
        y => ag_20);	


    ag_37 : user_defined.user_package.std_nand2
    PORT MAP (
        a => fnCheckDecodedWord_b_6,
        b => ag_07,
        y => ag_21);	


    ag_38 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_21,
        b => ag_20,
        y => ag_22);	


    ag_39 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_22,
        b => ag_18,
        y => ag_23);	


    ag_40 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_18,
        b => fnCheckDecodedWord_b_4,
        y => ag_24);	


    ag_41 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_22,
        b => ag_01,
        y => ag_25);	


    ag_42 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_25,
        b => ag_24,
        y => ag_26);	


    ag_43 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_26,
        b => ag_23,
        y => ag_27);	


    ag_44 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_27,
        b => ag_14,
        y => V2V_fnCheckDecodedWord);	


    ag_45 : user_defined.user_package.std_inv
    PORT MAP (
        a => fnCheckDecodedWord_b_5,
        y => ag_28);	


    ag_46 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_28,
        b => fnCheckDecodedWord_b_4,
        y => ag_00);	


    ag_47 : user_defined.user_package.std_inv
    PORT MAP (
        a => fnCheckDecodedWord_b_4,
        y => ag_01);	


    ag_48 : user_defined.user_package.std_nand2
    PORT MAP (
        a => fnCheckDecodedWord_b_5,
        b => ag_01,
        y => ag_02);	


    ag_49 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_02,
        b => ag_00,
        y => ag_03);	


    ag_50 : user_defined.user_package.std_inv
    PORT MAP (
        a => fnCheckDecodedWord_b_0,
        y => ag_04);	


    ag_51 : user_defined.user_package.std_inv
    PORT MAP (
        a => fnCheckDecodedWord_b_1,
        y => ag_05);	


    ag_52 : user_defined.user_package.std_nor2
    PORT MAP (
        a => fnCheckDecodedWord_b_3,
        b => ag_05,
        y => ag_06);	


    ag_53 : user_defined.user_package.std_inv
    PORT MAP (
        a => fnCheckDecodedWord_b_3,
        y => ag_07);	


    ag_54 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_07,
        b => fnCheckDecodedWord_b_1,
        y => ag_08);	


    ag_55 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_08,
        b => ag_06,
        y => ag_09);	


    ag_56 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_09,
        b => ag_04,
        y => ag_10);	


    ag_57 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_10,
        b => ag_03,
        y => ag_11);	


    ag_58 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_03,
        b => fnCheckDecodedWord_b_0,
        y => ag_12);	

END VeriArch;

