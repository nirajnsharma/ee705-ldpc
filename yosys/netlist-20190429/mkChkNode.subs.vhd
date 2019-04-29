LIBRARY ieee;
USE ieee.std_logic_1164.all;

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




ARCHITECTURE VeriArch OF FIFO2_1 IS

   component buf_4x
      port(a : in std_logic;
           y : out std_logic);
   end component;

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
    V2V_D_OUT <= data0_reg;	
    V2V_EMPTY_N <= empty_reg;	
    V2V_FULL_N <= full_reg;	
    FULL_N <= V2V_FULL_N;	
    D_OUT <= V2V_D_OUT;	
    EMPTY_N <= V2V_EMPTY_N;	

    ag_32 : std_inv
    PORT MAP (
        a => RST,
        y => ag_04);	


    ag_33 : std_nor2
    PORT MAP (
        a => CLR,
        b => ag_04,
        y => ag_05);	


    ag_34 : std_inv
    PORT MAP (
        a => full_reg,
        y => ag_06);	


    ag_35 : std_inv
    PORT MAP (
        a => DEQ,
        y => ag_07);	


    ag_36 : std_nand2
    PORT MAP (
        a => ag_07,
        b => ENQ,
        y => ag_08);	


    ag_37 : std_inv
    PORT MAP (
        a => ENQ,
        y => ag_09);	


    ag_38 : std_nand2
    PORT MAP (
        a => DEQ,
        b => ag_09,
        y => ag_10);	


    ag_39 : std_nand3
    PORT MAP (
        a => ag_10,
        b => ag_08,
        c => ag_06,
        y => ag_11);	


    ag_40 : std_nor2
    PORT MAP (
        a => DEQ,
        b => ag_09,
        y => ag_12);	


    ag_41 : std_nand2
    PORT MAP (
        a => ag_12,
        b => empty_reg,
        y => ag_13);	


    ag_42 : std_nand2
    PORT MAP (
        a => ag_13,
        b => ag_11,
        y => ag_14);	


    ag_43 : std_nand2
    PORT MAP (
        a => ag_14,
        b => ag_05,
        y => ag_03);	


    ag_44 : std_nand2
    PORT MAP (
        a => ag_10,
        b => ag_08,
        y => ag_15);	


    ag_45 : std_nor2
    PORT MAP (
        a => ag_15,
        b => empty_reg,
        y => ag_16);	


    ag_46 : std_nor2
    PORT MAP (
        a => ag_07,
        b => ENQ,
        y => ag_17);	


    ag_47 : std_nand2
    PORT MAP (
        a => ag_17,
        b => full_reg,
        y => ag_18);	


    ag_48 : std_nand2
    PORT MAP (
        a => ag_18,
        b => ag_05,
        y => ag_19);	


    ag_49 : std_nor2
    PORT MAP (
        a => ag_19,
        b => ag_16,
        y => ag_02);	


    ag_50 : std_inv
    PORT MAP (
        a => data1_reg,
        y => ag_20);	


    ag_51 : std_nand2
    PORT MAP (
        a => ENQ,
        b => empty_reg,
        y => ag_21);	


    ag_52 : std_nor2
    PORT MAP (
        a => ag_21,
        b => D_IN,
        y => ag_22);	


    ag_53 : std_aoi
    PORT MAP (
        a => ag_21,
        b => ag_20,
        c => ag_22,
        y => ag_01);	


    ag_54 : std_nand2
    PORT MAP (
        a => DEQ,
        b => ag_06,
        y => ag_23);	


    ag_55 : std_inv
    PORT MAP (
        a => data0_reg,
        y => ag_24);	


    ag_56 : std_aoi
    PORT MAP (
        a => ag_07,
        b => empty_reg,
        c => ag_09,
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
        a => ag_07,
        b => full_reg,
        y => ag_28);	


    ag_60 : std_nand2
    PORT MAP (
        a => ag_28,
        b => data1_reg,
        y => ag_29);	


    ag_61 : std_nand2
    PORT MAP (
        a => ag_06,
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


    ag_64 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_02,
        q => empty_reg);	


    ag_65 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_03,
        q => full_reg);	


    ag_66 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_01,
        q => data1_reg);	


    ag_67 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_00,
        q => data0_reg);	

END VeriArch;



LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY module_fnChkNodeCore IS	-- 
    PORT (
        SIGNAL sfnChkNodeCore_i_0 : IN std_logic;	
        SIGNAL sfnChkNodeCore_i_1 : IN std_logic;	
        SIGNAL sfnChkNodeCore_i_2 : IN std_logic;	
        SIGNAL sfnChkNodeCore_0 : OUT std_logic;	
        SIGNAL sfnChkNodeCore_1 : OUT std_logic;	
        SIGNAL sfnChkNodeCore_2 : OUT std_logic);	
END module_fnChkNodeCore;




ARCHITECTURE VeriArch OF module_fnChkNodeCore IS

   component buf_4x
      port(a : in std_logic;
           y : out std_logic);
   end component;

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

    SIGNAL ag_04 : std_logic;	

    SIGNAL ag_05 : std_logic;	

    SIGNAL ag_06 : std_logic;	

    SIGNAL ag_07 : std_logic;	

    SIGNAL ag_08 : std_logic;	
-- Intermediate signal for sfnChkNodeCore_0
    SIGNAL V2V_sfnChkNodeCore_0 : std_logic;	
-- Intermediate signal for sfnChkNodeCore_1
    SIGNAL V2V_sfnChkNodeCore_1 : std_logic;	
-- Intermediate signal for sfnChkNodeCore_2
    SIGNAL V2V_sfnChkNodeCore_2 : std_logic;	
BEGIN
    sfnChkNodeCore_0 <= V2V_sfnChkNodeCore_0;	
    sfnChkNodeCore_1 <= V2V_sfnChkNodeCore_1;	
    sfnChkNodeCore_2 <= V2V_sfnChkNodeCore_2;	

    ag_09 : std_inv
    PORT MAP (
        a => sfnChkNodeCore_i_2,
        y => ag_06);	


    ag_10 : std_nand2
    PORT MAP (
        a => ag_06,
        b => sfnChkNodeCore_i_1,
        y => ag_07);	


    ag_11 : std_inv
    PORT MAP (
        a => sfnChkNodeCore_i_1,
        y => ag_08);	


    ag_12 : std_nand2
    PORT MAP (
        a => sfnChkNodeCore_i_2,
        b => ag_08,
        y => ag_00);	


    ag_13 : std_nand2
    PORT MAP (
        a => ag_00,
        b => ag_07,
        y => V2V_sfnChkNodeCore_0);	


    ag_14 : std_inv
    PORT MAP (
        a => sfnChkNodeCore_i_0,
        y => ag_01);	


    ag_15 : std_nand2
    PORT MAP (
        a => ag_01,
        b => sfnChkNodeCore_i_2,
        y => ag_02);	


    ag_16 : std_nand2
    PORT MAP (
        a => sfnChkNodeCore_i_0,
        b => ag_06,
        y => ag_03);	


    ag_17 : std_nand2
    PORT MAP (
        a => ag_03,
        b => ag_02,
        y => V2V_sfnChkNodeCore_1);	


    ag_18 : std_nand2
    PORT MAP (
        a => ag_01,
        b => sfnChkNodeCore_i_1,
        y => ag_04);	


    ag_19 : std_nand2
    PORT MAP (
        a => sfnChkNodeCore_i_0,
        b => ag_08,
        y => ag_05);	


    ag_20 : std_nand2
    PORT MAP (
        a => ag_05,
        b => ag_04,
        y => V2V_sfnChkNodeCore_2);	

END VeriArch;



LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mkChkNodeCtrl IS	-- 
    PORT (
        SIGNAL B2C_0_DEQ : OUT std_logic;	
        SIGNAL B2C_0_EMPTY_N : IN std_logic;	
        SIGNAL B2C_0_FULL_N : IN std_logic;	
        SIGNAL B2C_1_DEQ : OUT std_logic;	
        SIGNAL B2C_1_EMPTY_N : IN std_logic;	
        SIGNAL B2C_1_FULL_N : IN std_logic;	
        SIGNAL B2C_2_DEQ : OUT std_logic;	
        SIGNAL B2C_2_EMPTY_N : IN std_logic;	
        SIGNAL B2C_2_FULL_N : IN std_logic;	
        SIGNAL C2B_0_EMPTY_N : IN std_logic;	
        SIGNAL C2B_0_FULL_N : IN std_logic;	
        SIGNAL C2B_1_EMPTY_N : IN std_logic;	
        SIGNAL C2B_1_FULL_N : IN std_logic;	
        SIGNAL C2B_2_EMPTY_N : IN std_logic;	
        SIGNAL C2B_2_FULL_N : IN std_logic;	
        SIGNAL C2B_0_ENQ : OUT std_logic;	
        SIGNAL C2B_1_ENQ : OUT std_logic;	
        SIGNAL C2B_2_ENQ : OUT std_logic);	
END mkChkNodeCtrl;




ARCHITECTURE VeriArch OF mkChkNodeCtrl IS

   component buf_4x
      port(a : in std_logic;
           y : out std_logic);
   end component;

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
    

    SIGNAL ag_0 : std_logic;	

    SIGNAL ag_1 : std_logic;	

    SIGNAL ag_2 : std_logic;	
-- Intermediate signal for B2C_0_DEQ
    SIGNAL V2V_B2C_0_DEQ : std_logic;	
-- Intermediate signal for B2C_1_DEQ
    SIGNAL V2V_B2C_1_DEQ : std_logic;	
-- Intermediate signal for B2C_2_DEQ
    SIGNAL V2V_B2C_2_DEQ : std_logic;	
-- Intermediate signal for C2B_0_ENQ
    SIGNAL V2V_C2B_0_ENQ : std_logic;	
-- Intermediate signal for C2B_1_ENQ
    SIGNAL V2V_C2B_1_ENQ : std_logic;	
-- Intermediate signal for C2B_2_ENQ
    SIGNAL V2V_C2B_2_ENQ : std_logic;	

    SIGNAL CAN_FIRE_RL_rlProcessIteration : std_logic;	
BEGIN
    V2V_B2C_1_DEQ <= V2V_B2C_0_DEQ;	
    V2V_B2C_2_DEQ <= V2V_B2C_0_DEQ;	
    V2V_C2B_0_ENQ <= V2V_B2C_0_DEQ;	
    V2V_C2B_1_ENQ <= V2V_B2C_0_DEQ;	
    V2V_C2B_2_ENQ <= V2V_B2C_0_DEQ;	
    CAN_FIRE_RL_rlProcessIteration <= V2V_B2C_0_DEQ;	
    B2C_0_DEQ <= V2V_B2C_0_DEQ;	
    B2C_1_DEQ <= V2V_B2C_1_DEQ;	
    B2C_2_DEQ <= V2V_B2C_2_DEQ;	
    C2B_0_ENQ <= V2V_C2B_0_ENQ;	
    C2B_1_ENQ <= V2V_C2B_1_ENQ;	
    C2B_2_ENQ <= V2V_C2B_2_ENQ;	

    ag_3 : std_nand2
    PORT MAP (
        a => C2B_0_FULL_N,
        b => B2C_2_EMPTY_N,
        y => ag_1);	


    ag_4 : std_nand2
    PORT MAP (
        a => B2C_0_EMPTY_N,
        b => C2B_2_FULL_N,
        y => ag_2);	


    ag_5 : std_nand2
    PORT MAP (
        a => B2C_1_EMPTY_N,
        b => C2B_1_FULL_N,
        y => ag_0);	


    ag_6 : std_nor3
    PORT MAP (
        a => ag_0,
        b => ag_2,
        c => ag_1,
        y => V2V_B2C_0_DEQ);	

END VeriArch;

