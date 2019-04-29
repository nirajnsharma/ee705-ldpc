LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FIFO2_7 IS	-- 
    PORT (
        CLK : IN std_logic;	
        RST : IN std_logic;	
        D_IN_0 : IN std_logic;	
        D_IN_1 : IN std_logic;	
        D_IN_2 : IN std_logic;	
        D_IN_3 : IN std_logic;	
        D_IN_4 : IN std_logic;	
        D_IN_5 : IN std_logic;	
        D_IN_6 : IN std_logic;	
        ENQ : IN std_logic;	
        FULL_N : OUT std_logic;	
        D_OUT_0 : OUT std_logic;	
        D_OUT_1 : OUT std_logic;	
        D_OUT_2 : OUT std_logic;	
        D_OUT_3 : OUT std_logic;	
        D_OUT_4 : OUT std_logic;	
        D_OUT_5 : OUT std_logic;	
        D_OUT_6 : OUT std_logic;	
        DEQ : IN std_logic;	
        EMPTY_N : OUT std_logic;	
        CLR : IN std_logic);	
END FIFO2_7;




ARCHITECTURE VeriArch OF FIFO2_7 IS

   component buf1
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
    
   component std_dff
      port(d, clk : in std_logic;
           q : out std_logic);
   end component;
    

    SIGNAL V2V_D_OUT_0 : std_logic;	
    SIGNAL V2V_D_OUT_1 : std_logic;	
    SIGNAL V2V_D_OUT_2 : std_logic;	
    SIGNAL V2V_D_OUT_3 : std_logic;	
    SIGNAL V2V_D_OUT_4 : std_logic;	
    SIGNAL V2V_D_OUT_5 : std_logic;	
    SIGNAL V2V_D_OUT_6 : std_logic;	
    SIGNAL V2V_EMPTY_N : std_logic;	
    SIGNAL V2V_FULL_N : std_logic;	

    SIGNAL ag_000 : std_logic;	

    SIGNAL ag_001 : std_logic;	

    SIGNAL ag_002 : std_logic;	

    SIGNAL ag_003 : std_logic;	

    SIGNAL ag_004 : std_logic;	

    SIGNAL ag_005 : std_logic;	

    SIGNAL ag_006 : std_logic;	

    SIGNAL ag_007 : std_logic;	

    SIGNAL ag_008 : std_logic;	

    SIGNAL ag_009 : std_logic;	

    SIGNAL ag_010 : std_logic;	

    SIGNAL ag_011 : std_logic;	

    SIGNAL ag_012 : std_logic;	

    SIGNAL ag_013 : std_logic;	

    SIGNAL ag_014 : std_logic;	

    SIGNAL ag_015 : std_logic;	

    SIGNAL ag_016 : std_logic;	

    SIGNAL ag_017 : std_logic;	

    SIGNAL ag_018 : std_logic;	

    SIGNAL ag_019 : std_logic;	

    SIGNAL ag_020 : std_logic;	

    SIGNAL ag_021 : std_logic;	

    SIGNAL ag_022 : std_logic;	

    SIGNAL ag_023 : std_logic;	

    SIGNAL ag_024 : std_logic;	

    SIGNAL ag_025 : std_logic;	

    SIGNAL ag_026 : std_logic;	

    SIGNAL ag_027 : std_logic;	

    SIGNAL ag_028 : std_logic;	

    SIGNAL ag_029 : std_logic;	

    SIGNAL ag_030 : std_logic;	

    SIGNAL ag_031 : std_logic;	

    SIGNAL ag_032 : std_logic;	

    SIGNAL ag_033 : std_logic;	

    SIGNAL ag_034 : std_logic;	

    SIGNAL ag_035 : std_logic;	

    SIGNAL ag_036 : std_logic;	

    SIGNAL ag_037 : std_logic;	

    SIGNAL ag_038 : std_logic;	

    SIGNAL ag_039 : std_logic;	

    SIGNAL ag_040 : std_logic;	

    SIGNAL ag_041 : std_logic;	

    SIGNAL ag_042 : std_logic;	

    SIGNAL ag_043 : std_logic;	

    SIGNAL ag_044 : std_logic;	

    SIGNAL ag_045 : std_logic;	

    SIGNAL ag_046 : std_logic;	

    SIGNAL ag_047 : std_logic;	

    SIGNAL ag_048 : std_logic;	

    SIGNAL ag_049 : std_logic;	

    SIGNAL ag_050 : std_logic;	

    SIGNAL ag_051 : std_logic;	

    SIGNAL ag_052 : std_logic;	

    SIGNAL ag_053 : std_logic;	

    SIGNAL ag_054 : std_logic;	

    SIGNAL ag_055 : std_logic;	

    SIGNAL ag_056 : std_logic;	

    SIGNAL ag_057 : std_logic;	

    SIGNAL ag_058 : std_logic;	

    SIGNAL ag_059 : std_logic;	

    SIGNAL ag_060 : std_logic;	

    SIGNAL ag_061 : std_logic;	

    SIGNAL ag_062 : std_logic;	

    SIGNAL ag_063 : std_logic;	

    SIGNAL ag_064 : std_logic;	

    SIGNAL ag_065 : std_logic;	

    SIGNAL ag_066 : std_logic;	

    SIGNAL ag_067 : std_logic;	

    SIGNAL ag_068 : std_logic;	

    SIGNAL ag_069 : std_logic;	

    SIGNAL ag_070 : std_logic;	

    SIGNAL ag_071 : std_logic;	

    SIGNAL ag_072 : std_logic;	

    SIGNAL ag_073 : std_logic;	

    SIGNAL ag_074 : std_logic;	

    SIGNAL ag_075 : std_logic;	

    SIGNAL ag_076 : std_logic;	

    SIGNAL ag_077 : std_logic;	

    SIGNAL ag_078 : std_logic;	

    SIGNAL ag_079 : std_logic;	

    SIGNAL ag_080 : std_logic;	

    SIGNAL ag_081 : std_logic;	

    SIGNAL ag_082 : std_logic;	

    SIGNAL ag_083 : std_logic;	

    SIGNAL ag_084 : std_logic;	

    SIGNAL ag_085 : std_logic;	

    SIGNAL ag_086 : std_logic;	

    SIGNAL ag_087 : std_logic;	

    SIGNAL ag_088 : std_logic;	

    SIGNAL ag_089 : std_logic;	

    SIGNAL ag_090 : std_logic;	

    SIGNAL ag_091 : std_logic;	

    SIGNAL ag_092 : std_logic;	

    SIGNAL ag_093 : std_logic;	

    SIGNAL ag_094 : std_logic;	

    SIGNAL ag_095 : std_logic;	

    SIGNAL ag_096 : std_logic;	

    SIGNAL ag_097 : std_logic;	

    SIGNAL ag_098 : std_logic;	

    SIGNAL ag_099 : std_logic;	

    SIGNAL ag_100 : std_logic;	

    SIGNAL data0_reg_0 : std_logic;	

    SIGNAL data0_reg_1 : std_logic;	

    SIGNAL data0_reg_2 : std_logic;	

    SIGNAL data0_reg_3 : std_logic;	

    SIGNAL data0_reg_4 : std_logic;	

    SIGNAL data0_reg_5 : std_logic;	

    SIGNAL data0_reg_6 : std_logic;	

    SIGNAL data1_reg_0 : std_logic;	

    SIGNAL data1_reg_1 : std_logic;	

    SIGNAL data1_reg_2 : std_logic;	

    SIGNAL data1_reg_3 : std_logic;	

    SIGNAL data1_reg_4 : std_logic;	

    SIGNAL data1_reg_5 : std_logic;	

    SIGNAL data1_reg_6 : std_logic;	

    SIGNAL empty_reg : std_logic;	

    SIGNAL full_reg : std_logic;	
BEGIN
    ns_buf_1: buf1 PORT MAP (Y => V2V_D_OUT_6, A => data0_reg_6);	
    ns_buf_1: buf1 PORT MAP (Y => V2V_D_OUT_5, A => data0_reg_5);	
    ns_buf_1: buf1 PORT MAP (Y => V2V_D_OUT_4, A => data0_reg_4);	
    ns_buf_1: buf1 PORT MAP (Y => V2V_D_OUT_3, A => data0_reg_3);	
    ns_buf_1: buf1 PORT MAP (Y => V2V_D_OUT_2, A => data0_reg_2);	
    ns_buf_1: buf1 PORT MAP (Y => V2V_D_OUT_1, A => data0_reg_1);	
    ns_buf_1: buf1 PORT MAP (Y => V2V_D_OUT_0, A => data0_reg_0);	
    ns_buf_1: buf1 PORT MAP (Y => V2V_EMPTY_N, A => empty_reg);	
    ns_buf_1: buf1 PORT MAP (Y => V2V_FULL_N, A => full_reg);	
    ns_buf_1: buf1 PORT MAP (Y => FULL_N, A => V2V_FULL_N);	
    ns_buf_1: buf1 PORT MAP (Y => D_OUT_0, A => V2V_D_OUT_0);	
    ns_buf_1: buf1 PORT MAP (Y => D_OUT_1, A => V2V_D_OUT_1);	
    ns_buf_1: buf1 PORT MAP (Y => D_OUT_2, A => V2V_D_OUT_2);	
    ns_buf_1: buf1 PORT MAP (Y => D_OUT_3, A => V2V_D_OUT_3);	
    ns_buf_1: buf1 PORT MAP (Y => D_OUT_4, A => V2V_D_OUT_4);	
    ns_buf_1: buf1 PORT MAP (Y => D_OUT_5, A => V2V_D_OUT_5);	
    ns_buf_1: buf1 PORT MAP (Y => D_OUT_6, A => V2V_D_OUT_6);	
    ns_buf_1: buf1 PORT MAP (Y => EMPTY_N, A => V2V_EMPTY_N);	

    ag_101 : std_inv
    PORT MAP (
        a => empty_reg,
        y => ag_055);	


    ag_102 : std_inv
    PORT MAP (
        a => ENQ,
        y => ag_056);	


    ag_103 : std_nor2
    PORT MAP (
        a => ag_056,
        b => ag_055,
        y => ag_057);	


    ag_104 : std_nand2
    PORT MAP (
        a => ag_057,
        b => D_IN_0,
        y => ag_058);	


    ag_105 : std_inv
    PORT MAP (
        a => ag_057,
        y => ag_059);	


    ag_106 : std_nand2
    PORT MAP (
        a => ag_059,
        b => data1_reg_0,
        y => ag_060);	


    ag_107 : std_nand2
    PORT MAP (
        a => ag_060,
        b => ag_058,
        y => ag_007);	


    ag_108 : std_nand2
    PORT MAP (
        a => ag_057,
        b => D_IN_1,
        y => ag_061);	


    ag_109 : std_nand2
    PORT MAP (
        a => ag_059,
        b => data1_reg_1,
        y => ag_062);	


    ag_110 : std_nand2
    PORT MAP (
        a => ag_062,
        b => ag_061,
        y => ag_008);	


    ag_111 : std_nand2
    PORT MAP (
        a => ag_057,
        b => D_IN_2,
        y => ag_063);	


    ag_112 : std_nand2
    PORT MAP (
        a => ag_059,
        b => data1_reg_2,
        y => ag_064);	


    ag_113 : std_nand2
    PORT MAP (
        a => ag_064,
        b => ag_063,
        y => ag_009);	


    ag_114 : std_nand2
    PORT MAP (
        a => ag_057,
        b => D_IN_3,
        y => ag_065);	


    ag_115 : std_nand2
    PORT MAP (
        a => ag_059,
        b => data1_reg_3,
        y => ag_066);	


    ag_116 : std_nand2
    PORT MAP (
        a => ag_066,
        b => ag_065,
        y => ag_010);	


    ag_117 : std_nand2
    PORT MAP (
        a => ag_057,
        b => D_IN_4,
        y => ag_067);	


    ag_118 : std_nand2
    PORT MAP (
        a => ag_059,
        b => data1_reg_4,
        y => ag_068);	


    ag_119 : std_nand2
    PORT MAP (
        a => ag_068,
        b => ag_067,
        y => ag_011);	


    ag_120 : std_nand2
    PORT MAP (
        a => ag_057,
        b => D_IN_5,
        y => ag_069);	


    ag_121 : std_nand2
    PORT MAP (
        a => ag_059,
        b => data1_reg_5,
        y => ag_070);	


    ag_122 : std_nand2
    PORT MAP (
        a => ag_070,
        b => ag_069,
        y => ag_012);	


    ag_123 : std_nand2
    PORT MAP (
        a => ag_057,
        b => D_IN_6,
        y => ag_071);	


    ag_124 : std_nand2
    PORT MAP (
        a => ag_059,
        b => data1_reg_6,
        y => ag_072);	


    ag_125 : std_nand2
    PORT MAP (
        a => ag_072,
        b => ag_071,
        y => ag_013);	


    ag_126 : std_inv
    PORT MAP (
        a => full_reg,
        y => ag_073);	


    ag_127 : std_inv
    PORT MAP (
        a => DEQ,
        y => ag_074);	


    ag_128 : std_nor2
    PORT MAP (
        a => ag_074,
        b => ENQ,
        y => ag_075);	


    ag_129 : std_inv
    PORT MAP (
        a => ag_075,
        y => ag_076);	


    ag_130 : std_nor2
    PORT MAP (
        a => ag_076,
        b => ag_073,
        y => ag_077);	


    ag_131 : std_nor2
    PORT MAP (
        a => DEQ,
        b => ag_056,
        y => ag_078);	


    ag_132 : std_nor2
    PORT MAP (
        a => ag_078,
        b => ag_075,
        y => ag_079);	


    ag_133 : std_nand2
    PORT MAP (
        a => ag_079,
        b => ag_055,
        y => ag_080);	


    ag_134 : std_inv
    PORT MAP (
        a => RST,
        y => ag_081);	


    ag_135 : std_nor2
    PORT MAP (
        a => ag_081,
        b => CLR,
        y => ag_082);	


    ag_136 : std_nand2
    PORT MAP (
        a => ag_082,
        b => ag_080,
        y => ag_083);	


    ag_137 : std_nor2
    PORT MAP (
        a => ag_083,
        b => ag_077,
        y => ag_014);	


    ag_138 : std_nand2
    PORT MAP (
        a => ag_079,
        b => ag_073,
        y => ag_084);	


    ag_139 : std_nand2
    PORT MAP (
        a => ag_078,
        b => empty_reg,
        y => ag_085);	


    ag_140 : std_nand2
    PORT MAP (
        a => ag_085,
        b => ag_084,
        y => ag_086);	


    ag_141 : std_nand2
    PORT MAP (
        a => ag_086,
        b => ag_082,
        y => ag_015);	


    ag_142 : std_nand2
    PORT MAP (
        a => ag_074,
        b => empty_reg,
        y => ag_087);	


    ag_143 : std_nand2
    PORT MAP (
        a => ag_087,
        b => ENQ,
        y => ag_088);	


    ag_144 : std_nand2
    PORT MAP (
        a => ag_073,
        b => empty_reg,
        y => ag_089);	


    ag_145 : std_inv
    PORT MAP (
        a => ag_089,
        y => ag_090);	


    ag_146 : std_nor2
    PORT MAP (
        a => ag_090,
        b => ag_088,
        y => ag_091);	


    ag_147 : std_nand2
    PORT MAP (
        a => ag_091,
        b => D_IN_0,
        y => ag_092);	


    ag_148 : std_inv
    PORT MAP (
        a => data1_reg_0,
        y => ag_093);	


    ag_149 : std_nand2
    PORT MAP (
        a => DEQ,
        b => ag_073,
        y => ag_094);	


    ag_150 : std_nor2
    PORT MAP (
        a => ag_094,
        b => ag_093,
        y => ag_095);	


    ag_151 : std_inv
    PORT MAP (
        a => data0_reg_0,
        y => ag_096);	


    ag_152 : std_nand2
    PORT MAP (
        a => ag_088,
        b => ag_094,
        y => ag_097);	


    ag_153 : std_nor2
    PORT MAP (
        a => ag_097,
        b => ag_096,
        y => ag_098);	


    ag_154 : std_nor2
    PORT MAP (
        a => ag_098,
        b => ag_095,
        y => ag_099);	


    ag_155 : std_nand2
    PORT MAP (
        a => ag_099,
        b => ag_092,
        y => ag_000);	


    ag_156 : std_nand2
    PORT MAP (
        a => ag_091,
        b => D_IN_1,
        y => ag_100);	


    ag_157 : std_inv
    PORT MAP (
        a => data1_reg_1,
        y => ag_016);	


    ag_158 : std_nor2
    PORT MAP (
        a => ag_094,
        b => ag_016,
        y => ag_017);	


    ag_159 : std_inv
    PORT MAP (
        a => data0_reg_1,
        y => ag_018);	


    ag_160 : std_nor2
    PORT MAP (
        a => ag_097,
        b => ag_018,
        y => ag_019);	


    ag_161 : std_nor2
    PORT MAP (
        a => ag_019,
        b => ag_017,
        y => ag_020);	


    ag_162 : std_nand2
    PORT MAP (
        a => ag_020,
        b => ag_100,
        y => ag_001);	


    ag_163 : std_inv
    PORT MAP (
        a => ag_094,
        y => ag_021);	


    ag_164 : std_nand2
    PORT MAP (
        a => ag_021,
        b => data1_reg_2,
        y => ag_022);	


    ag_165 : std_inv
    PORT MAP (
        a => data0_reg_2,
        y => ag_023);	


    ag_166 : std_nor2
    PORT MAP (
        a => ag_097,
        b => ag_023,
        y => ag_024);	


    ag_167 : std_inv
    PORT MAP (
        a => D_IN_2,
        y => ag_025);	


    ag_168 : std_nor2
    PORT MAP (
        a => DEQ,
        b => ag_055,
        y => ag_026);	


    ag_169 : std_nor2
    PORT MAP (
        a => ag_026,
        b => ag_056,
        y => ag_027);	


    ag_170 : std_nand2
    PORT MAP (
        a => ag_089,
        b => ag_027,
        y => ag_028);	


    ag_171 : std_nor2
    PORT MAP (
        a => ag_028,
        b => ag_025,
        y => ag_029);	


    ag_172 : std_nor2
    PORT MAP (
        a => ag_029,
        b => ag_024,
        y => ag_030);	


    ag_173 : std_nand2
    PORT MAP (
        a => ag_030,
        b => ag_022,
        y => ag_002);	


    ag_174 : std_nand2
    PORT MAP (
        a => ag_091,
        b => D_IN_3,
        y => ag_031);	


    ag_175 : std_inv
    PORT MAP (
        a => data1_reg_3,
        y => ag_032);	


    ag_176 : std_nor2
    PORT MAP (
        a => ag_094,
        b => ag_032,
        y => ag_033);	


    ag_177 : std_inv
    PORT MAP (
        a => data0_reg_3,
        y => ag_034);	


    ag_178 : std_nor2
    PORT MAP (
        a => ag_097,
        b => ag_034,
        y => ag_035);	


    ag_179 : std_nor2
    PORT MAP (
        a => ag_035,
        b => ag_033,
        y => ag_036);	


    ag_180 : std_nand2
    PORT MAP (
        a => ag_036,
        b => ag_031,
        y => ag_003);	


    ag_181 : std_nand2
    PORT MAP (
        a => ag_091,
        b => D_IN_4,
        y => ag_037);	


    ag_182 : std_inv
    PORT MAP (
        a => data1_reg_4,
        y => ag_038);	


    ag_183 : std_nor2
    PORT MAP (
        a => ag_094,
        b => ag_038,
        y => ag_039);	


    ag_184 : std_inv
    PORT MAP (
        a => data0_reg_4,
        y => ag_040);	


    ag_185 : std_nor2
    PORT MAP (
        a => ag_097,
        b => ag_040,
        y => ag_041);	


    ag_186 : std_nor2
    PORT MAP (
        a => ag_041,
        b => ag_039,
        y => ag_042);	


    ag_187 : std_nand2
    PORT MAP (
        a => ag_042,
        b => ag_037,
        y => ag_004);	


    ag_188 : std_nand2
    PORT MAP (
        a => ag_091,
        b => D_IN_5,
        y => ag_043);	


    ag_189 : std_inv
    PORT MAP (
        a => data1_reg_5,
        y => ag_044);	


    ag_190 : std_nor2
    PORT MAP (
        a => ag_094,
        b => ag_044,
        y => ag_045);	


    ag_191 : std_inv
    PORT MAP (
        a => data0_reg_5,
        y => ag_046);	


    ag_192 : std_nor2
    PORT MAP (
        a => ag_097,
        b => ag_046,
        y => ag_047);	


    ag_193 : std_nor2
    PORT MAP (
        a => ag_047,
        b => ag_045,
        y => ag_048);	


    ag_194 : std_nand2
    PORT MAP (
        a => ag_048,
        b => ag_043,
        y => ag_005);	


    ag_195 : std_nand2
    PORT MAP (
        a => ag_091,
        b => D_IN_6,
        y => ag_049);	


    ag_196 : std_inv
    PORT MAP (
        a => data1_reg_6,
        y => ag_050);	


    ag_197 : std_nor2
    PORT MAP (
        a => ag_094,
        b => ag_050,
        y => ag_051);	


    ag_198 : std_inv
    PORT MAP (
        a => data0_reg_6,
        y => ag_052);	


    ag_199 : std_nor2
    PORT MAP (
        a => ag_097,
        b => ag_052,
        y => ag_053);	


    ag_200 : std_nor2
    PORT MAP (
        a => ag_053,
        b => ag_051,
        y => ag_054);	


    ag_201 : std_nand2
    PORT MAP (
        a => ag_054,
        b => ag_049,
        y => ag_006);	


    ag_202 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_000,
        q => data0_reg_0);	


    ag_203 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_001,
        q => data0_reg_1);	


    ag_204 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_002,
        q => data0_reg_2);	


    ag_205 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_003,
        q => data0_reg_3);	


    ag_206 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_004,
        q => data0_reg_4);	


    ag_207 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_005,
        q => data0_reg_5);	


    ag_208 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_006,
        q => data0_reg_6);	


    ag_209 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_007,
        q => data1_reg_0);	


    ag_210 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_008,
        q => data1_reg_1);	


    ag_211 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_009,
        q => data1_reg_2);	


    ag_212 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_010,
        q => data1_reg_3);	


    ag_213 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_011,
        q => data1_reg_4);	


    ag_214 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_012,
        q => data1_reg_5);	


    ag_215 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_013,
        q => data1_reg_6);	


    ag_216 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_015,
        q => full_reg);	


    ag_217 : d_ff
    PORT MAP (
        clk => CLK,
        d => ag_014,
        q => empty_reg);	

END VeriArch;

