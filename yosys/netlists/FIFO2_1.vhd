LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FIFO2_1 IS	-- 
    PORT (
        CLK : IN std_logic;	
        RST : IN std_logic;	
        D_IN : IN std_logic;	
        ENQ : IN std_logic;	
        FULL_N : OUT std_logic;	
        D_OUT : OUT std_logic;	
        DEQ : IN std_logic;	
        EMPTY_N : OUT std_logic;	
        CLR : IN std_logic);	
END FIFO2_1;




ARCHITECTURE VeriArch OF FIFO2_1 IS
   component std_inv
      port(a : in std_logic;
           y : out std_logic);
   end component;

   component std_nand2
      port(a,b : in std_logic;
           y : out std_logic);
   end component;
    
   component std_nand3
      port(a,b,c : in std_logic;
           y : out std_logic);
   end component;
    
   component std_nor2
      port(a,b : in std_logic;
           y : out std_logic);
   end component;
    
   component std_nor3
      port(a,b,c : in std_logic;
           y : out std_logic);
   end component;
    
   component std_aoi
      port(a,b,c : in std_logic;
           y : out std_logic);
   end component;
    
   component std_latch
      port(d, g : in std_logic;
           q : out std_logic);
   end component;

    SIGNAL ag_00 : std_logic;	
    SIGNAL ag_01 : std_logic;	
    SIGNAL ag_02 : std_logic;	
    SIGNAL ag_03 : std_logic;	
    SIGNAL ag_00b: std_logic;	
    SIGNAL ag_01b: std_logic;	
    SIGNAL ag_02b: std_logic;	
    SIGNAL ag_03b: std_logic;	

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
    SIGNAL V2V_D_OUT : std_logic;	
    SIGNAL V2V_EMPTY_N : std_logic;	
    SIGNAL V2V_FULL_N : std_logic;	

    SIGNAL CLKb : std_logic;

    SIGNAL data0_reg : std_logic;	

    SIGNAL data1_reg : std_logic;	

    SIGNAL empty_reg : std_logic;	

    SIGNAL full_reg : std_logic;	
BEGIN
    ns_01a : std_inv
    PORT MAP (
        a => data0_reg,
        y => V2V_D_OUT);	

    ns_01b : std_inv
    PORT MAP (
        a => V2V_D_OUT,
        y => D_OUT);	

    ns_02a : std_inv
    PORT MAP (
    y => V2V_EMPTY_N, a => empty_reg);
    ns_02b : std_inv
    PORT MAP (
    y => EMPTY_N, a => V2V_EMPTY_N);

    ns_03a : std_inv
    PORT MAP (
    y => V2V_FULL_N, a => full_reg);
    ns_03b : std_inv
    PORT MAP (
    y => FULL_N, a => V2V_FULL_N);

    ns_04a : std_inv
    PORT MAP (
    y => CLKb, a => CLK);

    ag_32 : std_inv
    PORT MAP (
        a => data1_reg,
        y => ag_04);	


    ag_33 : std_nand2
    PORT MAP (
        a => ENQ,
        b => empty_reg,
        y => ag_05);	


    ag_34 : std_nor2
    PORT MAP (
        a => ag_05,
        b => D_IN,
        y => ag_06);	


    ag_35 : std_aoi
    PORT MAP (
        a => ag_05,
        b => ag_04,
        c => ag_06,
        y => ag_01);	


    ag_36 : std_inv
    PORT MAP (
        a => ENQ,
        y => ag_07);	


    ag_37 : std_nand2
    PORT MAP (
        a => DEQ,
        b => ag_07,
        y => ag_08);	


    ag_38 : std_inv
    PORT MAP (
        a => DEQ,
        y => ag_09);	


    ag_39 : std_nand2
    PORT MAP (
        a => ag_09,
        b => ENQ,
        y => ag_10);	


    ag_40 : std_nand2
    PORT MAP (
        a => ag_10,
        b => ag_08,
        y => ag_11);	


    ag_41 : std_nor2
    PORT MAP (
        a => ag_11,
        b => empty_reg,
        y => ag_12);	


    ag_42 : std_inv
    PORT MAP (
        a => RST,
        y => ag_13);	


    ag_43 : std_nor2
    PORT MAP (
        a => ag_13,
        b => CLR,
        y => ag_14);	


    ag_44 : std_nor2
    PORT MAP (
        a => ag_09,
        b => ENQ,
        y => ag_15);	


    ag_45 : std_nand2
    PORT MAP (
        a => ag_15,
        b => full_reg,
        y => ag_16);	


    ag_46 : std_nand2
    PORT MAP (
        a => ag_16,
        b => ag_14,
        y => ag_17);	


    ag_47 : std_nor2
    PORT MAP (
        a => ag_17,
        b => ag_12,
        y => ag_02);	


    ag_48 : std_inv
    PORT MAP (
        a => full_reg,
        y => ag_18);	


    ag_49 : std_nand3
    PORT MAP (
        a => ag_10,
        b => ag_08,
        c => ag_18,
        y => ag_19);	


    ag_50 : std_nor2
    PORT MAP (
        a => DEQ,
        b => ag_07,
        y => ag_20);	


    ag_51 : std_nand2
    PORT MAP (
        a => ag_20,
        b => empty_reg,
        y => ag_21);	


    ag_52 : std_nand2
    PORT MAP (
        a => ag_21,
        b => ag_19,
        y => ag_22);	


    ag_53 : std_nand2
    PORT MAP (
        a => ag_22,
        b => ag_14,
        y => ag_03);	


    ag_54 : std_nand2
    PORT MAP (
        a => DEQ,
        b => ag_18,
        y => ag_23);	


    ag_55 : std_inv
    PORT MAP (
        a => data0_reg,
        y => ag_24);	


    ag_56 : std_aoi
    PORT MAP (
        a => ag_09,
        b => empty_reg,
        c => ag_07,
        y => ag_25);	


    ag_57 : std_nor2
    PORT MAP (
        a => ag_25,
        b => ag_24,
        y => ag_26);	


    ag_58 : std_nand2
    PORT MAP (
        a => ag_26,
        b => ag_23,
        y => ag_27);	


    ag_59 : std_nor2
    PORT MAP (
        a => ag_09,
        b => full_reg,
        y => ag_28);	


    ag_60 : std_nand2
    PORT MAP (
        a => ag_28,
        b => data1_reg,
        y => ag_29);	


    ag_61 : std_nand2
    PORT MAP (
        a => ag_18,
        b => empty_reg,
        y => ag_30);	


    ag_62 : std_nand3
    PORT MAP (
        a => ag_30,
        b => ag_25,
        c => D_IN,
        y => ag_31);	


    ag_63 : std_nand3
    PORT MAP (
        a => ag_31,
        b => ag_29,
        c => ag_27,
        y => ag_00);	


    ag_64a: std_latch
    PORT MAP (
        g => CLKb,
        d => ag_00,
        q => ag_00b);	

    ag_64b: std_latch
    PORT MAP (
        g => CLK,
        d => ag_00b,
        q => data0_reg);	


    ag_65a: std_latch
    PORT MAP (
        g => CLKb,
        d => ag_01,
        q => ag_01b);	

    ag_65b: std_latch
    PORT MAP (
        g => CLK,
        d => ag_01b,
        q => data1_reg);	


    ag_66a: std_latch
    PORT MAP (
        g => CLKb,
        d => ag_03,
        q => ag_03b);	

    ag_66b: std_latch
    PORT MAP (
        g => CLK,
        d => ag_03b,
        q => full_reg);	


    ag_67a: std_latch
    PORT MAP (
        g => CLKb,
        d => ag_02,
        q => ag_02b);	

    ag_67b: std_latch
    PORT MAP (
        g => CLK,
        d => ag_02b,
        q => empty_reg);	

END VeriArch;

