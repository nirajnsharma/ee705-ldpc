--------------------------------------------------------------------------------
--
-- File Type:    VHDL 
-- Tool Version: verilog2vhdl 19.00c
-- Input file was: ./netlists/FIFO2_1.vg.vpp
-- Command line was: /home/sandeep/Desktop/ActualCoursework/SemII/EE705/synapticad-19.00c-x64/bin/x86_64/verilog2vhdl.bin ./netlists/FIFO2_1.vg -No_Component_Check -SYNTH
-- Date Created: Sun Apr 28 12:48:28 2019
--
--------------------------------------------------------------------------------



LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ASC;
USE ASC.numeric_std.all;
ENTITY FIFO2_1 IS	-- 
    PORT (
        SIGNAL CLK : IN std_logic;	
        SIGNAL RST : IN std_logic;	
        SIGNAL D_IN : IN std_logic;	
        SIGNAL ENQ : IN std_logic;	
        SIGNAL FULL_N : OUT std_logic;	
        SIGNAL D_OUT : OUT std_logic;	
        SIGNAL DEQ : IN std_logic;	
        SIGNAL EMPTY_N : OUT std_logic;	
        SIGNAL CLR : IN std_logic);	
END FIFO2_1;



LIBRARY ASC;

LIBRARY user_defined;
ARCHITECTURE VeriArch OF FIFO2_1 IS
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

    SIGNAL ag_29 : std_logic;	

    SIGNAL ag_30 : std_logic;	

    SIGNAL ag_31 : std_logic;	

    SIGNAL ag_32 : std_logic;	

    SIGNAL ag_33 : std_logic;	

    SIGNAL ag_34 : std_logic;	

    SIGNAL ag_35 : std_logic;	

    SIGNAL ag_36 : std_logic;	
-- Intermediate signal for D_OUT
    SIGNAL V2V_D_OUT : std_logic;	
-- Intermediate signal for EMPTY_N
    SIGNAL V2V_EMPTY_N : std_logic;	
-- Intermediate signal for FULL_N
    SIGNAL V2V_FULL_N : std_logic;	

    SIGNAL data0_reg : std_logic;	

    SIGNAL data1_reg : std_logic;	

    SIGNAL empty_reg : std_logic;	

    SIGNAL full_reg : std_logic;	
BEGIN
    FULL_N <= V2V_FULL_N;	
    D_OUT <= V2V_D_OUT;	
    EMPTY_N <= V2V_EMPTY_N;	

    ag_37 : user_defined.user_package.std_inv
    PORT MAP (
        a => empty_reg,
        y => ag_04);	


    ag_38 : user_defined.user_package.std_inv
    PORT MAP (
        a => ENQ,
        y => ag_05);	


    ag_39 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_05,
        b => ag_04,
        y => ag_06);	


    ag_40 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_06,
        b => data1_reg,
        y => ag_07);	


    ag_41 : user_defined.user_package.std_inv
    PORT MAP (
        a => ag_06,
        y => ag_08);	


    ag_42 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_08,
        b => D_IN,
        y => ag_09);	


    ag_43 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_09,
        b => ag_07,
        y => ag_01);	


    ag_44 : user_defined.user_package.std_inv
    PORT MAP (
        a => full_reg,
        y => ag_10);	


    ag_45 : user_defined.user_package.std_inv
    PORT MAP (
        a => DEQ,
        y => ag_11);	


    ag_46 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_11,
        b => ENQ,
        y => ag_12);	


    ag_47 : user_defined.user_package.std_inv
    PORT MAP (
        a => ag_12,
        y => ag_13);	


    ag_48 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_13,
        b => ag_10,
        y => ag_14);	


    ag_49 : user_defined.user_package.std_nor2
    PORT MAP (
        a => DEQ,
        b => ag_05,
        y => ag_15);	


    ag_50 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_15,
        b => ag_12,
        y => ag_16);	


    ag_51 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_16,
        b => ag_04,
        y => ag_17);	


    ag_52 : user_defined.user_package.std_inv
    PORT MAP (
        a => RST,
        y => ag_18);	


    ag_53 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_18,
        b => CLR,
        y => ag_19);	


    ag_54 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_19,
        b => ag_17,
        y => ag_20);	


    ag_55 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_20,
        b => ag_14,
        y => ag_02);	


    ag_56 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_16,
        b => ag_10,
        y => ag_21);	


    ag_57 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_15,
        b => empty_reg,
        y => ag_22);	


    ag_58 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_22,
        b => ag_21,
        y => ag_23);	


    ag_59 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_23,
        b => ag_19,
        y => ag_03);	


    ag_60 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_11,
        b => empty_reg,
        y => ag_24);	


    ag_61 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_24,
        b => ENQ,
        y => ag_25);	


    ag_62 : user_defined.user_package.std_inv
    PORT MAP (
        a => data0_reg,
        y => ag_26);	


    ag_63 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_11,
        b => full_reg,
        y => ag_27);	


    ag_64 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_27,
        b => ag_26,
        y => ag_28);	


    ag_65 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_28,
        b => ag_25,
        y => ag_29);	


    ag_66 : user_defined.user_package.std_inv
    PORT MAP (
        a => data1_reg,
        y => ag_30);	


    ag_67 : user_defined.user_package.std_nand2
    PORT MAP (
        a => DEQ,
        b => ag_10,
        y => ag_31);	


    ag_68 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_31,
        b => ag_30,
        y => ag_32);	


    ag_69 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_10,
        b => empty_reg,
        y => ag_33);	


    ag_70 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_33,
        b => D_IN,
        y => ag_34);	


    ag_71 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_34,
        b => ag_25,
        y => ag_35);	


    ag_72 : user_defined.user_package.std_nor2
    PORT MAP (
        a => ag_35,
        b => ag_32,
        y => ag_36);	


    ag_73 : user_defined.user_package.std_nand2
    PORT MAP (
        a => ag_36,
        b => ag_29,
        y => ag_00);	


    ag_74 : user_defined.user_package.d_ff
    PORT MAP (
        clk => CLK,
        d => ag_00,
        q => data0_reg);	


    ns_1 : user_defined.user_package.buf4x
    PORT MAP (
        a => data0_reg,
        y => V2V_D_OUT);	


    ns_2 : user_defined.user_package.buf4x
    PORT MAP (
        a => empty_reg,
        y => V2V_EMPTY_N);	


    ns_3 : user_defined.user_package.buf4x
    PORT MAP (
        a => full_reg,
        y => V2V_FULL_N);	


    ag_75 : user_defined.user_package.d_ff
    PORT MAP (
        clk => CLK,
        d => ag_01,
        q => data1_reg);	


    ag_76 : user_defined.user_package.d_ff
    PORT MAP (
        clk => CLK,
        d => ag_03,
        q => full_reg);	


    ag_77 : user_defined.user_package.d_ff
    PORT MAP (
        clk => CLK,
        d => ag_02,
        q => empty_reg);	

END VeriArch;

