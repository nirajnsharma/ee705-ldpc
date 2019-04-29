LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity d_ff is
  port (
    d, clk : in BIT;
    q : out BIT
  );
end d_ff;

architecture behave_dff of d_ff is
  component std_latch
    port (d, g, q: inout BIT);
  end component;
  component std_inv
    port (a, y: inout BIT);
  end component;
  signal clkbar, q1 : BIT;
begin
  std_inv_0 : std_inv   port map (clk, clkbar);
  std_latch1: std_latch port map (d,   clkbar, q1);
  std_latch2: std_latch port map (q1,  clk,    q);
end behave_dff;

entity buf1 is
port(a: in std_logic;
y: out std_logic);
end buf1;
Architecture arch of buf1 is
component std_inv
port(a :in std_logic;
y: out std_logic);
end component;
signal z : std_logic;
begin
s1:std_inv port map(a,z);
s:std_inv port map(z,y);
end arch;


ENTITY FIFO2_1 IS
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




ARCHITECTURE VeriArch3 OF FIFO2_1 IS

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
    
   component d_ff
      port(clk: in std_logic; d : in std_logic;
           q : out std_logic);
   end component;
    
   component buf1 port (A : in std_logic; Y : out std_logic); end component;

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
    SIGNAL V2V_D_OUT : std_logic;	
    SIGNAL V2V_EMPTY_N : std_logic;	
    SIGNAL V2V_FULL_N : std_logic;	

    SIGNAL data0_reg : std_logic;	

    SIGNAL data1_reg : std_logic;	

    SIGNAL empty_reg : std_logic;	

    SIGNAL full_reg : std_logic;	
BEGIN
    nbuf_1 : buf1 port map (Y => V2V_D_OUT, A => data0_reg);	
    nbuf_2 : buf1 port map (Y => V2V_EMPTY_N, A => empty_reg);	
    nbuf_3 : buf1 port map (Y => V2V_FULL_N, A => full_reg);	
    nbuf_4 : buf1 port map (Y => FULL_N, A => V2V_FULL_N);	
    nbuf_5 : buf1 port map (Y => D_OUT, A => V2V_D_OUT);	
    nbuf_6 : buf1 port map (Y => EMPTY_N, A => V2V_EMPTY_N);	

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

END VeriArch3;

ENTITY module_fnChkNodeCore IS
    PORT (
        sfnChkNodeCore_i_0 : IN std_logic;	
        sfnChkNodeCore_i_1 : IN std_logic;	
        sfnChkNodeCore_i_2 : IN std_logic;	
        sfnChkNodeCore_0 : OUT std_logic;	
        sfnChkNodeCore_1 : OUT std_logic;	
        sfnChkNodeCore_2 : OUT std_logic);	
END module_fnChkNodeCore;




ARCHITECTURE VeriArch1 OF module_fnChkNodeCore IS

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
    
   component buf1 port (A : in std_logic; Y : out std_logic); end component;

    SIGNAL ag_00 : std_logic;	

    SIGNAL ag_01 : std_logic;	

    SIGNAL ag_02 : std_logic;	

    SIGNAL ag_03 : std_logic;	

    SIGNAL ag_04 : std_logic;	

    SIGNAL ag_05 : std_logic;	

    SIGNAL ag_06 : std_logic;	

    SIGNAL ag_07 : std_logic;	

    SIGNAL ag_08 : std_logic;	

    SIGNAL V2V_sfnChkNodeCore_0 : std_logic;	

    SIGNAL V2V_sfnChkNodeCore_1 : std_logic;	

    SIGNAL V2V_sfnChkNodeCore_2 : std_logic;	
BEGIN
    nbuf_1 : buf1 port map (Y => sfnChkNodeCore_0, A => V2V_sfnChkNodeCore_0);	
    nbuf_2 : buf1 port map (Y => sfnChkNodeCore_1, A => V2V_sfnChkNodeCore_1);	
    nbuf_3 : buf1 port map (Y => sfnChkNodeCore_2, A => V2V_sfnChkNodeCore_2);	

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

END VeriArch1;

ENTITY mkChkNodeCtrl IS
    PORT (
        B2C_0_DEQ : OUT std_logic;	
        B2C_0_EMPTY_N : IN std_logic;	
        B2C_1_DEQ : OUT std_logic;	
        B2C_1_EMPTY_N : IN std_logic;	
        B2C_2_DEQ : OUT std_logic;	
        B2C_2_EMPTY_N : IN std_logic;	
        C2B_0_FULL_N : IN std_logic;	
        C2B_1_FULL_N : IN std_logic;	
        C2B_2_FULL_N : IN std_logic;	
        C2B_0_ENQ : OUT std_logic;	
        C2B_1_ENQ : OUT std_logic;	
        C2B_2_ENQ : OUT std_logic);	
END mkChkNodeCtrl;

ARCHITECTURE VeriArch2 OF mkChkNodeCtrl IS

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
    
   component buf1 port (A : in std_logic; Y : out std_logic); end component;

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
    nbuf_1 : buf1 port map (Y => V2V_B2C_1_DEQ, A => V2V_B2C_0_DEQ);	
    nbuf_2 : buf1 port map (Y => V2V_B2C_2_DEQ, A => V2V_B2C_0_DEQ);	
    nbuf_3 : buf1 port map (Y => V2V_C2B_0_ENQ, A => V2V_B2C_0_DEQ);	
    nbuf_4 : buf1 port map (Y => V2V_C2B_1_ENQ, A => V2V_B2C_0_DEQ);	
    nbuf_5 : buf1 port map (Y => V2V_C2B_2_ENQ, A => V2V_B2C_0_DEQ);	
    nbuf_6 : buf1 port map (Y => CAN_FIRE_RL_rlProcessIteration, A => V2V_B2C_0_DEQ);	
    nbuf_7 : buf1 port map (Y => B2C_0_DEQ, A => V2V_B2C_0_DEQ);	
    nbuf_8 : buf1 port map (Y => B2C_1_DEQ, A => V2V_B2C_1_DEQ);	
    nbuf_9 : buf1 port map (Y => B2C_2_DEQ, A => V2V_B2C_2_DEQ);	
    nbuf_10 : buf1 port map (Y => C2B_0_ENQ, A => V2V_C2B_0_ENQ);	
    nbuf_20 : buf1 port map (Y => C2B_1_ENQ, A => V2V_C2B_1_ENQ);	
    nbuf_30 : buf1 port map (Y => C2B_2_ENQ, A => V2V_C2B_2_ENQ);	

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

END VeriArch2;

entity mkChkNode is 
     port (
        CLK :  in std_logic;
        EN_b2c_0_put :  in std_logic;
        EN_b2c_1_put :  in std_logic;
        EN_b2c_2_put :  in std_logic;
        EN_c2b_0_get :  in std_logic;
        EN_c2b_1_get :  in std_logic;
        EN_c2b_2_get :  in std_logic;
        RDY_b2c_0_put :  out std_logic;
        RDY_b2c_1_put :  out std_logic;
        RDY_b2c_2_put :  out std_logic;
        RDY_c2b_0_get :  out std_logic;
        RDY_c2b_1_get :  out std_logic;
        RDY_c2b_2_get :  out std_logic;
        RST_N :  in std_logic;
        b2c_0_put :  in std_logic;
        b2c_1_put :  in std_logic;
        b2c_2_put :  in std_logic;
        c2b_0_get :  out std_logic;
        c2b_1_get :  out std_logic;
        c2b_2_get :  out std_logic
    );
end mkChkNode; 


architecture rtl of mkChkNode is 
    signal sfnChkNodeCore_d16_0 : std_logic;
    signal sfnChkNodeCore_d16_1 : std_logic;
    signal sfnChkNodeCore_d16_2 : std_logic;
    signal svffB2C_0_DEQ : std_logic;
    signal svffB2C_0_D_OUT : std_logic;
    signal svffB2C_0_EMPTY_N : std_logic;
    signal svffB2C_0_FULL_N : std_logic;
    signal svffB2C_1_DEQ : std_logic;
    signal svffB2C_1_D_OUT : std_logic;
    signal svffB2C_1_EMPTY_N : std_logic;
    signal svffB2C_1_FULL_N : std_logic;
    signal svffB2C_2_DEQ : std_logic;
    signal svffB2C_2_D_OUT : std_logic;
    signal svffB2C_2_EMPTY_N : std_logic;
    signal svffB2C_2_FULL_N : std_logic;
    signal svffC2B_0_D_OUT : std_logic;
    signal svffC2B_0_EMPTY_N : std_logic;
    signal svffC2B_0_ENQ : std_logic;
    signal svffC2B_0_FULL_N : std_logic;
    signal svffC2B_1_D_OUT : std_logic;
    signal svffC2B_1_EMPTY_N : std_logic;
    signal svffC2B_1_ENQ : std_logic;
    signal svffC2B_1_FULL_N : std_logic;
    signal svffC2B_2_D_OUT : std_logic;
    signal svffC2B_2_EMPTY_N : std_logic;
    signal svffC2B_2_ENQ : std_logic;
    signal svffC2B_2_FULL_N : std_logic;
    signal fifo_clr : std_logic;
    signal svffB2C_0_DEQb : std_logic;
    component mkChkNodeCtrl 
         port (
        B2C_0_DEQ : OUT std_logic;	
        B2C_0_EMPTY_N : IN std_logic;	
        B2C_1_DEQ : OUT std_logic;	
        B2C_1_EMPTY_N : IN std_logic;	
        B2C_2_DEQ : OUT std_logic;	
        B2C_2_EMPTY_N : IN std_logic;	
        C2B_0_FULL_N : IN std_logic;	
        C2B_1_FULL_N : IN std_logic;	
        C2B_2_FULL_N : IN std_logic;	
        C2B_0_ENQ : OUT std_logic;	
        C2B_1_ENQ : OUT std_logic;	
        C2B_2_ENQ : OUT std_logic);	
    end component; 
    component module_fnChkNodeCore
         port (
        sfnChkNodeCore_i_0 : IN std_logic;	
        sfnChkNodeCore_i_1 : IN std_logic;	
        sfnChkNodeCore_i_2 : IN std_logic;	
        sfnChkNodeCore_0 : OUT std_logic;	
        sfnChkNodeCore_1 : OUT std_logic;	
        sfnChkNodeCore_2 : OUT std_logic);
    end component; 
    component FIFO2_1
         port (
            CLK :  in std_logic;
            CLR :  in std_logic;
            DEQ :  in std_logic;
            D_IN :  in std_logic;
            D_OUT :  out std_logic;
            EMPTY_N :  out std_logic;
            ENQ :  in std_logic;
            FULL_N :  out std_logic;
            RST :  in std_logic);
    end component; 
    component buf1 port (A : in std_logic; Y : out std_logic); end component;
   component std_inv
      port(a : in std_logic;
           y : out std_logic);
   end component;

   component std_nand2
      port(a,b : in std_logic;
           y : out std_logic);
   end component;
    
    begin 
        ctrl : mkChkNodeCtrl
            port map (
                B2C_0_DEQ => svffB2C_0_DEQ,
                B2C_0_EMPTY_N => svffB2C_0_EMPTY_N,
                B2C_1_DEQ => svffB2C_1_DEQ,
                B2C_1_EMPTY_N => svffB2C_1_EMPTY_N,
                B2C_2_DEQ => svffB2C_2_DEQ,
                B2C_2_EMPTY_N => svffB2C_2_EMPTY_N,
                C2B_0_ENQ => svffC2B_0_ENQ,
                C2B_0_FULL_N => svffC2B_0_FULL_N,
                C2B_1_ENQ => svffC2B_1_ENQ,
                C2B_1_FULL_N => svffC2B_1_FULL_N,
                C2B_2_ENQ => svffC2B_2_ENQ,
                C2B_2_FULL_N => svffC2B_2_FULL_N);
        instance_fnChkNodeCore_0 : module_fnChkNodeCore
            port map (
                sfnChkNodeCore_0 => sfnChkNodeCore_d16_0,
                sfnChkNodeCore_1 => sfnChkNodeCore_d16_1,
                sfnChkNodeCore_2 => sfnChkNodeCore_d16_2,
                sfnChkNodeCore_i_0 => svffB2C_0_D_OUT,
                sfnChkNodeCore_i_1 => svffB2C_1_D_OUT,
                sfnChkNodeCore_i_2 => svffB2C_2_D_OUT);
        vffB2C_0 : FIFO2_1
            port map (
                CLK => CLK,
                CLR => fifo_clr,
                DEQ => svffB2C_0_DEQ,
                D_IN => b2c_0_put,
                D_OUT => svffB2C_0_D_OUT,
                EMPTY_N => svffB2C_0_EMPTY_N,
                ENQ => EN_b2c_0_put,
                FULL_N => svffB2C_0_FULL_N,
                RST => RST_N
                );
        vffB2C_1 : FIFO2_1
            port map (
                CLK => CLK,
                CLR => fifo_clr,
                DEQ => svffB2C_1_DEQ,
                D_IN => b2c_1_put,
                D_OUT => svffB2C_1_D_OUT,
                EMPTY_N => svffB2C_1_EMPTY_N,
                ENQ => EN_b2c_1_put,
                FULL_N => svffB2C_1_FULL_N,
                RST => RST_N
                );
        vffB2C_2 : FIFO2_1
            port map (
                CLK => CLK,
                CLR => fifo_clr,
                DEQ => svffB2C_2_DEQ,
                D_IN => b2c_2_put,
                D_OUT => svffB2C_2_D_OUT,
                EMPTY_N => svffB2C_2_EMPTY_N,
                ENQ => EN_b2c_2_put,
                FULL_N => svffB2C_2_FULL_N,
                RST => RST_N
                );
        vffC2B_0 : FIFO2_1
            port map (
                CLK => CLK,
                CLR => fifo_clr,
                DEQ => EN_c2b_0_get,
                D_IN => sfnChkNodeCore_d16_0,
                D_OUT => svffC2B_0_D_OUT,
                EMPTY_N => svffC2B_0_EMPTY_N,
                ENQ => svffC2B_0_ENQ,
                FULL_N => svffC2B_0_FULL_N,
                RST => RST_N
                );
        vffC2B_1 : FIFO2_1
            port map (
                CLK => CLK,
                CLR => fifo_clr,
                DEQ => EN_c2b_1_get,
                D_IN => sfnChkNodeCore_d16_1,
                D_OUT => svffC2B_1_D_OUT,
                EMPTY_N => svffC2B_1_EMPTY_N,
                ENQ => svffC2B_1_ENQ,
                FULL_N => svffC2B_1_FULL_N,
                RST => RST_N
                );
        vffC2B_2 : FIFO2_1
            port map (
                CLK => CLK,
                CLR => fifo_clr,
                DEQ => EN_c2b_2_get,
                D_IN => sfnChkNodeCore_d16_2,
                D_OUT => svffC2B_2_D_OUT,
                EMPTY_N => svffC2B_2_EMPTY_N,
                ENQ => svffC2B_2_ENQ,
                FULL_N => svffC2B_2_FULL_N,
                RST => RST_N
                );
        nbuf_1 : buf1 port map (Y => RDY_b2c_0_put, A => svffB2C_0_FULL_N);
        nbuf_2 : buf1 port map (Y => RDY_b2c_1_put, A => svffB2C_1_FULL_N);
        nbuf_3 : buf1 port map (Y => RDY_b2c_2_put, A => svffB2C_2_FULL_N);
        nbuf_4 : buf1 port map (Y => RDY_c2b_0_get, A => svffC2B_0_EMPTY_N);
        nbuf_5 : buf1 port map (Y => RDY_c2b_1_get, A => svffC2B_1_EMPTY_N);
        nbuf_6 : buf1 port map (Y => RDY_c2b_2_get, A => svffC2B_2_EMPTY_N);
        nbuf_7 : buf1 port map (Y => c2b_0_get, A => svffC2B_0_D_OUT);
        nbuf_8 : buf1 port map (Y => c2b_1_get, A => svffC2B_1_D_OUT);
        nbuf_9 : buf1 port map (Y => c2b_2_get, A => svffC2B_2_D_OUT);
	ngnd_0 : std_inv port map (Y=>svffB2C_0_DEQb, A=>svffB2C_0_DEQ);
	ngnd_1 : std_nand2 port map (Y=>fifo_clr, A=>svffB2C_0_DEQb, B=>svffB2C_0_DEQ);
    end; 



