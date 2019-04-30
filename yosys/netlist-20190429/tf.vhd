entity mkLdpcCore is 
     port (
        CLK :  in std_logic;
        EN_request_put :  in std_logic;
        EN_response_get :  in std_logic;
        RDY_request_put :  out std_logic;
        RDY_response_get :  out std_logic;
        RST_N :  in std_logic;
        srequest_put_0  :  in std_logic;
        srequest_put_1  :  in std_logic;
        srequest_put_2  :  in std_logic;
        srequest_put_3  :  in std_logic;
        srequest_put_4  :  in std_logic;
        srequest_put_5  :  in std_logic;
        srequest_put_6  :  in std_logic;
        sresponse_get_0  :  out std_logic;
        sresponse_get_1  :  out std_logic;
        sresponse_get_2  :  out std_logic;
        sresponse_get_3  :  out std_logic;
        sresponse_get_4  :  out std_logic;
        sresponse_get_5  :  out std_logic;
        sresponse_get_6  :  out std_logic
    );
end entity; 


architecture rtl of mkLdpcCore is 
    signal ag_000 : std_logic;
    signal ag_001 : std_logic;
    signal ag_002 : std_logic;
    signal ag_003 : std_logic;
    signal ag_004 : std_logic;
    signal ag_005 : std_logic;
    signal ag_006 : std_logic;
    signal ag_007 : std_logic;
    signal ag_008 : std_logic;
    signal ag_009 : std_logic;
    signal ag_010 : std_logic;
    signal ag_011 : std_logic;
    signal ag_012 : std_logic;
    signal ag_013 : std_logic;
    signal ag_014 : std_logic;
    signal ag_015 : std_logic;
    signal ag_016 : std_logic;
    signal ag_017 : std_logic;
    signal ag_018 : std_logic;
    signal ag_019 : std_logic;
    signal ag_020 : std_logic;
    signal ag_021 : std_logic;
    signal ag_022 : std_logic;
    signal ag_023 : std_logic;
    signal ag_024 : std_logic;
    signal ag_025 : std_logic;
    signal ag_026 : std_logic;
    signal ag_027 : std_logic;
    signal ag_028 : std_logic;
    signal ag_029 : std_logic;
    signal ag_030 : std_logic;
    signal ag_031 : std_logic;
    signal ag_032 : std_logic;
    signal ag_033 : std_logic;
    signal ag_034 : std_logic;
    signal ag_035 : std_logic;
    signal ag_036 : std_logic;
    signal ag_037 : std_logic;
    signal ag_038 : std_logic;
    signal ag_039 : std_logic;
    signal ag_040 : std_logic;
    signal ag_041 : std_logic;
    signal ag_042 : std_logic;
    signal ag_043 : std_logic;
    signal ag_044 : std_logic;
    signal ag_045 : std_logic;
    signal ag_046 : std_logic;
    signal ag_047 : std_logic;
    signal ag_048 : std_logic;
    signal ag_049 : std_logic;
    signal ag_050 : std_logic;
    signal ag_051 : std_logic;
    signal ag_052 : std_logic;
    signal ag_053 : std_logic;
    signal ag_054 : std_logic;
    signal ag_055 : std_logic;
    signal ag_056 : std_logic;
    signal ag_057 : std_logic;
    signal ag_058 : std_logic;
    signal ag_059 : std_logic;
    signal ag_060 : std_logic;
    signal ag_061 : std_logic;
    signal ag_062 : std_logic;
    signal ag_063 : std_logic;
    signal ag_064 : std_logic;
    signal ag_065 : std_logic;
    signal ag_066 : std_logic;
    signal ag_067 : std_logic;
    signal ag_068 : std_logic;
    signal ag_069 : std_logic;
    signal ag_070 : std_logic;
    signal ag_071 : std_logic;
    signal ag_072 : std_logic;
    signal ag_073 : std_logic;
    signal ag_074 : std_logic;
    signal ag_075 : std_logic;
    signal ag_076 : std_logic;
    signal ag_077 : std_logic;
    signal ag_078 : std_logic;
    signal ag_079 : std_logic;
    signal ag_080 : std_logic;
    signal ag_081 : std_logic;
    signal ag_082 : std_logic;
    signal ag_083 : std_logic;
    signal ag_084 : std_logic;
    signal ag_085 : std_logic;
    signal ag_086 : std_logic;
    signal ag_087 : std_logic;
    signal ag_088 : std_logic;
    signal ag_089 : std_logic;
    signal ag_090 : std_logic;
    signal ag_091 : std_logic;
    signal ag_092 : std_logic;
    signal ag_093 : std_logic;
    signal ag_094 : std_logic;
    signal ag_095 : std_logic;
    signal ag_096 : std_logic;
    signal ag_097 : std_logic;
    signal ag_098 : std_logic;
    signal ag_099 : std_logic;
    signal ag_100 : std_logic;
    signal ag_101 : std_logic;
    signal ag_102 : std_logic;
    signal ag_103 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_1 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_10 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_11 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_12 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_13 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_14 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_15 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_16 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_17 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_18 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_19 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_2 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_20 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_3 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_4 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_5 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_6 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_7 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_8 : std_logic;
    signal CAN_FIRE_RL_mkConnectionGetPut_9 : std_logic;
    signal CAN_FIRE_RL_rlConnect : std_logic;
    signal CAN_FIRE_RL_rlConnect_1 : std_logic;
    signal CAN_FIRE_RL_rlConnect_2 : std_logic;
    signal CAN_FIRE_RL_rlConnect_3 : std_logic;
    signal CAN_FIRE_RL_rlConnect_4 : std_logic;
    signal CAN_FIRE_RL_rlConnect_5 : std_logic;
    signal CAN_FIRE_RL_rlConnect_6 : std_logic;
    signal CAN_FIRE_RL_rlEvaluateOutput : std_logic;
    signal CAN_FIRE_RL_rlPutCodeWordIn : std_logic;
    signal CAN_FIRE_request_put : std_logic;
    signal CAN_FIRE_response_get : std_logic;
    signal sMUX_rgIdle_write_1__SEL_1  : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_1 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_10 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_11 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_12 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_13 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_14 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_15 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_16 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_17 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_18 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_19 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_2 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_20 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_3 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_4 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_5 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_6 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_7 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_8 : std_logic;
    signal WILL_FIRE_RL_mkConnectionGetPut_9 : std_logic;
    signal WILL_FIRE_RL_rlConnect : std_logic;
    signal WILL_FIRE_RL_rlConnect_1 : std_logic;
    signal WILL_FIRE_RL_rlConnect_2 : std_logic;
    signal WILL_FIRE_RL_rlConnect_3 : std_logic;
    signal WILL_FIRE_RL_rlConnect_4 : std_logic;
    signal WILL_FIRE_RL_rlConnect_5 : std_logic;
    signal WILL_FIRE_RL_rlConnect_6 : std_logic;
    signal WILL_FIRE_RL_rlEvaluateOutput : std_logic;
    signal WILL_FIRE_RL_rlPutCodeWordIn : std_logic;
    signal WILL_FIRE_request_put : std_logic;
    signal WILL_FIRE_response_get : std_logic;
    signal sffI_DEQ : std_logic;
    signal sffI_D_IN_0 : std_logic;
    signal sffI_D_IN_1 : std_logic;
    signal sffI_D_IN_2 : std_logic;
    signal sffI_D_IN_3 : std_logic;
    signal sffI_D_IN_4 : std_logic;
    signal sffI_D_IN_5 : std_logic;
    signal sffI_D_IN_6 : std_logic;
    signal sffI_D_OUT_0 : std_logic;
    signal sffI_D_OUT_1 : std_logic;
    signal sffI_D_OUT_2 : std_logic;
    signal sffI_D_OUT_3 : std_logic;
    signal sffI_D_OUT_4 : std_logic;
    signal sffI_D_OUT_5 : std_logic;
    signal sffI_D_OUT_6 : std_logic;
    signal sffI_EMPTY_N : std_logic;
    signal sffI_ENQ : std_logic;
    signal sffI_FULL_N : std_logic;
    signal sffO_DEQ : std_logic;
    signal sffO_D_IN_0 : std_logic;
    signal sffO_D_IN_1 : std_logic;
    signal sffO_D_IN_2 : std_logic;
    signal sffO_D_IN_3 : std_logic;
    signal sffO_D_IN_4 : std_logic;
    signal sffO_D_IN_5 : std_logic;
    signal sffO_D_IN_6 : std_logic;
    signal sffO_D_OUT_0 : std_logic;
    signal sffO_D_OUT_1 : std_logic;
    signal sffO_D_OUT_2 : std_logic;
    signal sffO_D_OUT_3 : std_logic;
    signal sffO_D_OUT_4 : std_logic;
    signal sffO_D_OUT_5 : std_logic;
    signal sffO_D_OUT_6 : std_logic;
    signal sffO_EMPTY_N : std_logic;
    signal sffO_ENQ : std_logic;
    signal sffO_FULL_N : std_logic;
    signal fnCheckDecodedWord_d200 : std_logic;
    signal rgIdle : std_logic;
    signal srgIdle_D_IN  : std_logic;
    signal svBitNodes_0_EN_b2c_get : std_logic;
    signal svBitNodes_0_EN_c2b_0_put : std_logic;
    signal svBitNodes_0_EN_c2b_1_put : std_logic;
    signal svBitNodes_0_EN_c2b_2_put : std_logic;
    signal svBitNodes_0_EN_codeIn_put : std_logic;
    signal svBitNodes_0_EN_dataOut_get : std_logic;
    signal svBitNodes_0_RDY_b2c_get : std_logic;
    signal svBitNodes_0_RDY_c2b_0_put : std_logic;
    signal svBitNodes_0_RDY_c2b_1_put : std_logic;
    signal svBitNodes_0_RDY_c2b_2_put : std_logic;
    signal svBitNodes_0_RDY_codeIn_put : std_logic;
    signal svBitNodes_0_RDY_dataOut_get : std_logic;
    signal svBitNodes_0_b2c_get : std_logic;
    signal svBitNodes_0_c2b_0_put : std_logic;
    signal svBitNodes_0_c2b_1_put : std_logic;
    signal svBitNodes_0_c2b_2_put : std_logic;
    signal svBitNodes_0_codeIn_put : std_logic;
    signal svBitNodes_0_dataOut_get : std_logic;
    signal svBitNodes_1_EN_b2c_get : std_logic;
    signal svBitNodes_1_EN_c2b_0_put : std_logic;
    signal svBitNodes_1_EN_c2b_1_put : std_logic;
    signal svBitNodes_1_EN_c2b_2_put : std_logic;
    signal svBitNodes_1_EN_codeIn_put : std_logic;
    signal svBitNodes_1_EN_dataOut_get : std_logic;
    signal svBitNodes_1_RDY_b2c_get : std_logic;
    signal svBitNodes_1_RDY_c2b_0_put : std_logic;
    signal svBitNodes_1_RDY_c2b_1_put : std_logic;
    signal svBitNodes_1_RDY_c2b_2_put : std_logic;
    signal svBitNodes_1_RDY_codeIn_put : std_logic;
    signal svBitNodes_1_RDY_dataOut_get : std_logic;
    signal svBitNodes_1_b2c_get : std_logic;
    signal svBitNodes_1_c2b_0_put : std_logic;
    signal svBitNodes_1_c2b_1_put : std_logic;
    signal svBitNodes_1_c2b_2_put : std_logic;
    signal svBitNodes_1_codeIn_put : std_logic;
    signal svBitNodes_1_dataOut_get : std_logic;
    signal svBitNodes_2_EN_b2c_get : std_logic;
    signal svBitNodes_2_EN_c2b_0_put : std_logic;
    signal svBitNodes_2_EN_c2b_1_put : std_logic;
    signal svBitNodes_2_EN_c2b_2_put : std_logic;
    signal svBitNodes_2_EN_codeIn_put : std_logic;
    signal svBitNodes_2_EN_dataOut_get : std_logic;
    signal svBitNodes_2_RDY_b2c_get : std_logic;
    signal svBitNodes_2_RDY_c2b_0_put : std_logic;
    signal svBitNodes_2_RDY_c2b_1_put : std_logic;
    signal svBitNodes_2_RDY_c2b_2_put : std_logic;
    signal svBitNodes_2_RDY_codeIn_put : std_logic;
    signal svBitNodes_2_RDY_dataOut_get : std_logic;
    signal svBitNodes_2_b2c_get : std_logic;
    signal svBitNodes_2_c2b_0_put : std_logic;
    signal svBitNodes_2_c2b_1_put : std_logic;
    signal svBitNodes_2_c2b_2_put : std_logic;
    signal svBitNodes_2_codeIn_put : std_logic;
    signal svBitNodes_2_dataOut_get : std_logic;
    signal svBitNodes_3_EN_b2c_get : std_logic;
    signal svBitNodes_3_EN_c2b_0_put : std_logic;
    signal svBitNodes_3_EN_c2b_1_put : std_logic;
    signal svBitNodes_3_EN_c2b_2_put : std_logic;
    signal svBitNodes_3_EN_codeIn_put : std_logic;
    signal svBitNodes_3_EN_dataOut_get : std_logic;
    signal svBitNodes_3_RDY_b2c_get : std_logic;
    signal svBitNodes_3_RDY_c2b_0_put : std_logic;
    signal svBitNodes_3_RDY_c2b_1_put : std_logic;
    signal svBitNodes_3_RDY_c2b_2_put : std_logic;
    signal svBitNodes_3_RDY_codeIn_put : std_logic;
    signal svBitNodes_3_RDY_dataOut_get : std_logic;
    signal svBitNodes_3_b2c_get : std_logic;
    signal svBitNodes_3_c2b_0_put : std_logic;
    signal svBitNodes_3_c2b_1_put : std_logic;
    signal svBitNodes_3_c2b_2_put : std_logic;
    signal svBitNodes_3_codeIn_put : std_logic;
    signal svBitNodes_3_dataOut_get : std_logic;
    signal svBitNodes_4_EN_b2c_get : std_logic;
    signal svBitNodes_4_EN_c2b_0_put : std_logic;
    signal svBitNodes_4_EN_c2b_1_put : std_logic;
    signal svBitNodes_4_EN_c2b_2_put : std_logic;
    signal svBitNodes_4_EN_codeIn_put : std_logic;
    signal svBitNodes_4_EN_dataOut_get : std_logic;
    signal svBitNodes_4_RDY_b2c_get : std_logic;
    signal svBitNodes_4_RDY_c2b_0_put : std_logic;
    signal svBitNodes_4_RDY_c2b_1_put : std_logic;
    signal svBitNodes_4_RDY_c2b_2_put : std_logic;
    signal svBitNodes_4_RDY_codeIn_put : std_logic;
    signal svBitNodes_4_RDY_dataOut_get : std_logic;
    signal svBitNodes_4_b2c_get : std_logic;
    signal svBitNodes_4_c2b_0_put : std_logic;
    signal svBitNodes_4_c2b_1_put : std_logic;
    signal svBitNodes_4_c2b_2_put : std_logic;
    signal svBitNodes_4_codeIn_put : std_logic;
    signal svBitNodes_4_dataOut_get : std_logic;
    signal svBitNodes_5_EN_b2c_get : std_logic;
    signal svBitNodes_5_EN_c2b_0_put : std_logic;
    signal svBitNodes_5_EN_c2b_1_put : std_logic;
    signal svBitNodes_5_EN_c2b_2_put : std_logic;
    signal svBitNodes_5_EN_codeIn_put : std_logic;
    signal svBitNodes_5_EN_dataOut_get : std_logic;
    signal svBitNodes_5_RDY_b2c_get : std_logic;
    signal svBitNodes_5_RDY_c2b_0_put : std_logic;
    signal svBitNodes_5_RDY_c2b_1_put : std_logic;
    signal svBitNodes_5_RDY_c2b_2_put : std_logic;
    signal svBitNodes_5_RDY_codeIn_put : std_logic;
    signal svBitNodes_5_RDY_dataOut_get : std_logic;
    signal svBitNodes_5_b2c_get : std_logic;
    signal svBitNodes_5_c2b_0_put : std_logic;
    signal svBitNodes_5_c2b_1_put : std_logic;
    signal svBitNodes_5_c2b_2_put : std_logic;
    signal svBitNodes_5_codeIn_put : std_logic;
    signal svBitNodes_5_dataOut_get : std_logic;
    signal svBitNodes_6_EN_b2c_get : std_logic;
    signal svBitNodes_6_EN_c2b_0_put : std_logic;
    signal svBitNodes_6_EN_c2b_1_put : std_logic;
    signal svBitNodes_6_EN_c2b_2_put : std_logic;
    signal svBitNodes_6_EN_codeIn_put : std_logic;
    signal svBitNodes_6_EN_dataOut_get : std_logic;
    signal svBitNodes_6_RDY_b2c_get : std_logic;
    signal svBitNodes_6_RDY_c2b_0_put : std_logic;
    signal svBitNodes_6_RDY_c2b_1_put : std_logic;
    signal svBitNodes_6_RDY_c2b_2_put : std_logic;
    signal svBitNodes_6_RDY_codeIn_put : std_logic;
    signal svBitNodes_6_RDY_dataOut_get : std_logic;
    signal svBitNodes_6_b2c_get : std_logic;
    signal svBitNodes_6_c2b_0_put : std_logic;
    signal svBitNodes_6_c2b_1_put : std_logic;
    signal svBitNodes_6_c2b_2_put : std_logic;
    signal svBitNodes_6_codeIn_put : std_logic;
    signal svBitNodes_6_dataOut_get : std_logic;
    signal svCheckNodes_0_EN_b2c_0_put : std_logic;
    signal svCheckNodes_0_EN_b2c_1_put : std_logic;
    signal svCheckNodes_0_EN_b2c_2_put : std_logic;
    signal svCheckNodes_0_EN_c2b_0_get : std_logic;
    signal svCheckNodes_0_EN_c2b_1_get : std_logic;
    signal svCheckNodes_0_EN_c2b_2_get : std_logic;
    signal svCheckNodes_0_RDY_b2c_0_put : std_logic;
    signal svCheckNodes_0_RDY_b2c_1_put : std_logic;
    signal svCheckNodes_0_RDY_b2c_2_put : std_logic;
    signal svCheckNodes_0_RDY_c2b_0_get : std_logic;
    signal svCheckNodes_0_RDY_c2b_1_get : std_logic;
    signal svCheckNodes_0_RDY_c2b_2_get : std_logic;
    signal svCheckNodes_0_b2c_0_put : std_logic;
    signal svCheckNodes_0_b2c_1_put : std_logic;
    signal svCheckNodes_0_b2c_2_put : std_logic;
    signal svCheckNodes_0_c2b_0_get : std_logic;
    signal svCheckNodes_0_c2b_1_get : std_logic;
    signal svCheckNodes_0_c2b_2_get : std_logic;
    signal svCheckNodes_1_EN_b2c_0_put : std_logic;
    signal svCheckNodes_1_EN_b2c_1_put : std_logic;
    signal svCheckNodes_1_EN_b2c_2_put : std_logic;
    signal svCheckNodes_1_EN_c2b_0_get : std_logic;
    signal svCheckNodes_1_EN_c2b_1_get : std_logic;
    signal svCheckNodes_1_EN_c2b_2_get : std_logic;
    signal svCheckNodes_1_RDY_b2c_0_put : std_logic;
    signal svCheckNodes_1_RDY_b2c_1_put : std_logic;
    signal svCheckNodes_1_RDY_b2c_2_put : std_logic;
    signal svCheckNodes_1_RDY_c2b_0_get : std_logic;
    signal svCheckNodes_1_RDY_c2b_1_get : std_logic;
    signal svCheckNodes_1_RDY_c2b_2_get : std_logic;
    signal svCheckNodes_1_b2c_0_put : std_logic;
    signal svCheckNodes_1_b2c_1_put : std_logic;
    signal svCheckNodes_1_b2c_2_put : std_logic;
    signal svCheckNodes_1_c2b_0_get : std_logic;
    signal svCheckNodes_1_c2b_1_get : std_logic;
    signal svCheckNodes_1_c2b_2_get : std_logic;
    signal svCheckNodes_2_EN_b2c_0_put : std_logic;
    signal svCheckNodes_2_EN_b2c_1_put : std_logic;
    signal svCheckNodes_2_EN_b2c_2_put : std_logic;
    signal svCheckNodes_2_EN_c2b_0_get : std_logic;
    signal svCheckNodes_2_EN_c2b_1_get : std_logic;
    signal svCheckNodes_2_EN_c2b_2_get : std_logic;
    signal svCheckNodes_2_RDY_b2c_0_put : std_logic;
    signal svCheckNodes_2_RDY_b2c_1_put : std_logic;
    signal svCheckNodes_2_RDY_b2c_2_put : std_logic;
    signal svCheckNodes_2_RDY_c2b_0_get : std_logic;
    signal svCheckNodes_2_RDY_c2b_1_get : std_logic;
    signal svCheckNodes_2_RDY_c2b_2_get : std_logic;
    signal svCheckNodes_2_b2c_0_put : std_logic;
    signal svCheckNodes_2_b2c_1_put : std_logic;
    signal svCheckNodes_2_b2c_2_put : std_logic;
    signal svCheckNodes_2_c2b_0_get : std_logic;
    signal svCheckNodes_2_c2b_1_get : std_logic;
    signal svCheckNodes_2_c2b_2_get : std_logic;
    signal svCheckNodes_3_EN_b2c_0_put : std_logic;
    signal svCheckNodes_3_EN_b2c_1_put : std_logic;
    signal svCheckNodes_3_EN_b2c_2_put : std_logic;
    signal svCheckNodes_3_EN_c2b_0_get : std_logic;
    signal svCheckNodes_3_EN_c2b_1_get : std_logic;
    signal svCheckNodes_3_EN_c2b_2_get : std_logic;
    signal svCheckNodes_3_RDY_b2c_0_put : std_logic;
    signal svCheckNodes_3_RDY_b2c_1_put : std_logic;
    signal svCheckNodes_3_RDY_b2c_2_put : std_logic;
    signal svCheckNodes_3_RDY_c2b_0_get : std_logic;
    signal svCheckNodes_3_RDY_c2b_1_get : std_logic;
    signal svCheckNodes_3_RDY_c2b_2_get : std_logic;
    signal svCheckNodes_3_b2c_0_put : std_logic;
    signal svCheckNodes_3_b2c_1_put : std_logic;
    signal svCheckNodes_3_b2c_2_put : std_logic;
    signal svCheckNodes_3_c2b_0_get : std_logic;
    signal svCheckNodes_3_c2b_1_get : std_logic;
    signal svCheckNodes_3_c2b_2_get : std_logic;
    signal svCheckNodes_4_EN_b2c_0_put : std_logic;
    signal svCheckNodes_4_EN_b2c_1_put : std_logic;
    signal svCheckNodes_4_EN_b2c_2_put : std_logic;
    signal svCheckNodes_4_EN_c2b_0_get : std_logic;
    signal svCheckNodes_4_EN_c2b_1_get : std_logic;
    signal svCheckNodes_4_EN_c2b_2_get : std_logic;
    signal svCheckNodes_4_RDY_b2c_0_put : std_logic;
    signal svCheckNodes_4_RDY_b2c_1_put : std_logic;
    signal svCheckNodes_4_RDY_b2c_2_put : std_logic;
    signal svCheckNodes_4_RDY_c2b_0_get : std_logic;
    signal svCheckNodes_4_RDY_c2b_1_get : std_logic;
    signal svCheckNodes_4_RDY_c2b_2_get : std_logic;
    signal svCheckNodes_4_b2c_0_put : std_logic;
    signal svCheckNodes_4_b2c_1_put : std_logic;
    signal svCheckNodes_4_b2c_2_put : std_logic;
    signal svCheckNodes_4_c2b_0_get : std_logic;
    signal svCheckNodes_4_c2b_1_get : std_logic;
    signal svCheckNodes_4_c2b_2_get : std_logic;
    signal svCheckNodes_5_EN_b2c_0_put : std_logic;
    signal svCheckNodes_5_EN_b2c_1_put : std_logic;
    signal svCheckNodes_5_EN_b2c_2_put : std_logic;
    signal svCheckNodes_5_EN_c2b_0_get : std_logic;
    signal svCheckNodes_5_EN_c2b_1_get : std_logic;
    signal svCheckNodes_5_EN_c2b_2_get : std_logic;
    signal svCheckNodes_5_RDY_b2c_0_put : std_logic;
    signal svCheckNodes_5_RDY_b2c_1_put : std_logic;
    signal svCheckNodes_5_RDY_b2c_2_put : std_logic;
    signal svCheckNodes_5_RDY_c2b_0_get : std_logic;
    signal svCheckNodes_5_RDY_c2b_1_get : std_logic;
    signal svCheckNodes_5_RDY_c2b_2_get : std_logic;
    signal svCheckNodes_5_b2c_0_put : std_logic;
    signal svCheckNodes_5_b2c_1_put : std_logic;
    signal svCheckNodes_5_b2c_2_put : std_logic;
    signal svCheckNodes_5_c2b_0_get : std_logic;
    signal svCheckNodes_5_c2b_1_get : std_logic;
    signal svCheckNodes_5_c2b_2_get : std_logic;
    signal svCheckNodes_6_EN_b2c_0_put : std_logic;
    signal svCheckNodes_6_EN_b2c_1_put : std_logic;
    signal svCheckNodes_6_EN_b2c_2_put : std_logic;
    signal svCheckNodes_6_EN_c2b_0_get : std_logic;
    signal svCheckNodes_6_EN_c2b_1_get : std_logic;
    signal svCheckNodes_6_EN_c2b_2_get : std_logic;
    signal svCheckNodes_6_RDY_b2c_0_put : std_logic;
    signal svCheckNodes_6_RDY_b2c_1_put : std_logic;
    signal svCheckNodes_6_RDY_b2c_2_put : std_logic;
    signal svCheckNodes_6_RDY_c2b_0_get : std_logic;
    signal svCheckNodes_6_RDY_c2b_1_get : std_logic;
    signal svCheckNodes_6_RDY_c2b_2_get : std_logic;
    signal svCheckNodes_6_b2c_0_put : std_logic;
    signal svCheckNodes_6_b2c_1_put : std_logic;
    signal svCheckNodes_6_b2c_2_put : std_logic;
    signal svCheckNodes_6_c2b_0_get : std_logic;
    signal svCheckNodes_6_c2b_1_get : std_logic;
    signal svCheckNodes_6_c2b_2_get : std_logic;
    component std_nand2 is 
         port (
            a :  inout std_logic;
            b :  inout std_logic;
            y :  inout std_logic
        );
    end component; 
    component std_nor2 is 
         port (
            a :  inout std_logic;
            b :  inout std_logic;
            y :  inout std_logic
        );
    end component; 
    component std_inv is 
         port (
            a :  inout std_logic;
            y :  inout std_logic
        );
    end component; 
    component std_nor3 is 
         port (
            a :  inout std_logic;
            b :  inout std_logic;
            c :  inout std_logic;
            y :  inout std_logic
        );
    end component; 
    component std_nand3 is 
         port (
            a :  inout std_logic;
            b :  inout std_logic;
            c :  in std_logic;
            y :  inout std_logic
        );
    end component; 
    component std_aoi is 
         port (
            a :  inout std_logic;
            b :  inout std_logic;
            c :  inout std_logic;
            y :  inout std_logic
        );
    end component; 
    component d_ff is 
         port (
            clk :  in std_logic;
            d :  inout std_logic;
            q :  inout std_logic
        );
    end component; 
    component buf1 port (A : in std_logic; Y : out std_logic); end component;
    component FIFO2_7 is 
         port (
            CLK :  in std_logic;
            CLR :  in std_logic;
            DEQ :  in std_logic;
            SD_IN_0 :  in std_logic;
            SD_IN_1 :  in std_logic;
            SD_IN_2 :  in std_logic;
            SD_IN_3 :  in std_logic;
            SD_IN_4 :  in std_logic;
            SD_IN_5 :  in std_logic;
            SD_IN_6 :  in std_logic;
            SD_OUT_0 :  out std_logic;
            SD_OUT_1 :  out std_logic;
            SD_OUT_2 :  out std_logic;
            SD_OUT_3 :  out std_logic;
            SD_OUT_4 :  out std_logic;
            SD_OUT_5 :  out std_logic;
            SD_OUT_6 :  out std_logic;
            EMPTY_N :  out std_logic;
            ENQ :  in std_logic;
            FULL_N :  out std_logic;
            RST :  in std_logic
        );
    end component; 
    component module_fnCheckDecodedWord is 
         port (
            fnCheckDecodedWord :  out std_logic;
            sfnCheckDecodedWord_b_0 :  in std_logic;
            sfnCheckDecodedWord_b_1 :  in std_logic;
            sfnCheckDecodedWord_b_2 :  in std_logic;
            sfnCheckDecodedWord_b_3 :  in std_logic;
            sfnCheckDecodedWord_b_4 :  in std_logic;
            sfnCheckDecodedWord_b_5 :  in std_logic;
            sfnCheckDecodedWord_b_6 :  in std_logic
        );
    end component; 
    component mkBitNode is 
         port (
            CLK :  in std_logic;
            EN_b2c_get :  in std_logic;
            EN_c2b_0_put :  in std_logic;
            EN_c2b_1_put :  in std_logic;
            EN_c2b_2_put :  in std_logic;
            EN_codeIn_put :  in std_logic;
            EN_dataOut_get :  in std_logic;
            RDY_b2c_get :  out std_logic;
            RDY_c2b_0_put :  out std_logic;
            RDY_c2b_1_put :  out std_logic;
            RDY_c2b_2_put :  out std_logic;
            RDY_codeIn_put :  out std_logic;
            RDY_dataOut_get :  out std_logic;
            RST_N :  in std_logic;
            b2c_get :  out std_logic;
            c2b_0_put :  in std_logic;
            c2b_1_put :  in std_logic;
            c2b_2_put :  in std_logic;
            codeIn_put :  in std_logic;
            dataOut_get :  out std_logic
        );
    end component; 
    component mkChkNode is 
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
    end component; 
    begin 
        ag_104 : std_nand2
            port map (
                a => svCheckNodes_0_RDY_b2c_0_put,
                b => svBitNodes_0_RDY_b2c_get,
                y => ag_001
                );
        ag_105 : std_nand2
            port map (
                a => svCheckNodes_6_RDY_b2c_0_put,
                b => svCheckNodes_4_RDY_b2c_0_put,
                y => ag_002
                );
        ag_106 : std_nor2
            port map (
                a => ag_002,
                b => ag_001,
                y => svBitNodes_0_EN_b2c_get
                );
        ag_107 : std_nand2
            port map (
                a => svCheckNodes_0_RDY_b2c_1_put,
                b => svBitNodes_1_RDY_b2c_get,
                y => ag_003
                );
        ag_108 : std_nand2
            port map (
                a => svCheckNodes_5_RDY_b2c_0_put,
                b => svCheckNodes_1_RDY_b2c_0_put,
                y => ag_004
                );
        ag_109 : std_nor2
            port map (
                a => ag_004,
                b => ag_003,
                y => svBitNodes_1_EN_b2c_get
                );
        ag_110 : std_nand2
            port map (
                a => svCheckNodes_1_RDY_b2c_1_put,
                b => svBitNodes_2_RDY_b2c_get,
                y => ag_005
                );
        ag_111 : std_nand2
            port map (
                a => svCheckNodes_2_RDY_b2c_0_put,
                b => svCheckNodes_6_RDY_b2c_1_put,
                y => ag_006
                );
        ag_112 : std_nor2
            port map (
                a => ag_006,
                b => ag_005,
                y => svBitNodes_2_EN_b2c_get
                );
        ag_113 : std_nand2
            port map (
                a => svCheckNodes_0_RDY_b2c_2_put,
                b => svBitNodes_3_RDY_b2c_get,
                y => ag_007
                );
        ag_114 : std_nand2
            port map (
                a => svCheckNodes_3_RDY_b2c_0_put,
                b => svCheckNodes_2_RDY_b2c_1_put,
                y => ag_008
                );
        ag_115 : std_nor2
            port map (
                a => ag_008,
                b => ag_007,
                y => svBitNodes_3_EN_b2c_get
                );
        ag_116 : std_nand2
            port map (
                a => svCheckNodes_1_RDY_b2c_2_put,
                b => svBitNodes_4_RDY_b2c_get,
                y => ag_009
                );
        ag_117 : std_nand2
            port map (
                a => svCheckNodes_4_RDY_b2c_1_put,
                b => svCheckNodes_3_RDY_b2c_1_put,
                y => ag_010
                );
        ag_118 : std_nor2
            port map (
                a => ag_010,
                b => ag_009,
                y => svBitNodes_4_EN_b2c_get
                );
        ag_119 : std_nand2
            port map (
                a => svCheckNodes_2_RDY_b2c_2_put,
                b => svBitNodes_5_RDY_b2c_get,
                y => ag_011
                );
        ag_120 : std_nand2
            port map (
                a => svCheckNodes_5_RDY_b2c_1_put,
                b => svCheckNodes_4_RDY_b2c_2_put,
                y => ag_012
                );
        ag_121 : std_nor2
            port map (
                a => ag_012,
                b => ag_011,
                y => svBitNodes_5_EN_b2c_get
                );
        ag_122 : std_nand2
            port map (
                a => svCheckNodes_3_RDY_b2c_2_put,
                b => svBitNodes_6_RDY_b2c_get,
                y => ag_013
                );
        ag_123 : std_nand2
            port map (
                a => svCheckNodes_6_RDY_b2c_2_put,
                b => svCheckNodes_5_RDY_b2c_2_put,
                y => ag_014
                );
        ag_124 : std_nor2
            port map (
                a => ag_014,
                b => ag_013,
                y => svBitNodes_6_EN_b2c_get
                );
        ag_125 : std_inv
            port map (
                a => svBitNodes_0_RDY_c2b_0_put,
                y => ag_015
                );
        ag_126 : std_inv
            port map (
                a => svCheckNodes_0_RDY_c2b_0_get,
                y => ag_016
                );
        ag_127 : std_nor2
            port map (
                a => ag_016,
                b => ag_015,
                y => svBitNodes_0_EN_c2b_0_put
                );
        ag_128 : std_inv
            port map (
                a => svBitNodes_1_RDY_c2b_0_put,
                y => ag_017
                );
        ag_129 : std_inv
            port map (
                a => svCheckNodes_0_RDY_c2b_1_get,
                y => ag_018
                );
        ag_130 : std_nor2
            port map (
                a => ag_018,
                b => ag_017,
                y => svBitNodes_1_EN_c2b_0_put
                );
        ag_131 : std_inv
            port map (
                a => svBitNodes_3_RDY_c2b_0_put,
                y => ag_019
                );
        ag_132 : std_inv
            port map (
                a => svCheckNodes_0_RDY_c2b_2_get,
                y => ag_020
                );
        ag_133 : std_nor2
            port map (
                a => ag_020,
                b => ag_019,
                y => svBitNodes_3_EN_c2b_0_put
                );
        ag_134 : std_inv
            port map (
                a => svBitNodes_1_RDY_c2b_1_put,
                y => ag_021
                );
        ag_135 : std_inv
            port map (
                a => svCheckNodes_1_RDY_c2b_0_get,
                y => ag_022
                );
        ag_136 : std_nor2
            port map (
                a => ag_022,
                b => ag_021,
                y => svBitNodes_1_EN_c2b_1_put
                );
        ag_137 : std_inv
            port map (
                a => svBitNodes_2_RDY_c2b_0_put,
                y => ag_023
                );
        ag_138 : std_inv
            port map (
                a => svCheckNodes_1_RDY_c2b_1_get,
                y => ag_024
                );
        ag_139 : std_nor2
            port map (
                a => ag_024,
                b => ag_023,
                y => svBitNodes_2_EN_c2b_0_put
                );
        ag_140 : std_inv
            port map (
                a => svBitNodes_4_RDY_c2b_0_put,
                y => ag_025
                );
        ag_141 : std_inv
            port map (
                a => svCheckNodes_1_RDY_c2b_2_get,
                y => ag_026
                );
        ag_142 : std_nor2
            port map (
                a => ag_026,
                b => ag_025,
                y => svBitNodes_4_EN_c2b_0_put
                );
        ag_143 : std_inv
            port map (
                a => svBitNodes_2_RDY_c2b_1_put,
                y => ag_027
                );
        ag_144 : std_inv
            port map (
                a => svCheckNodes_2_RDY_c2b_0_get,
                y => ag_028
                );
        ag_145 : std_nor2
            port map (
                a => ag_028,
                b => ag_027,
                y => svBitNodes_2_EN_c2b_1_put
                );
        ag_146 : std_inv
            port map (
                a => svBitNodes_3_RDY_c2b_1_put,
                y => ag_029
                );
        ag_147 : std_inv
            port map (
                a => svCheckNodes_2_RDY_c2b_1_get,
                y => ag_030
                );
        ag_148 : std_nor2
            port map (
                a => ag_030,
                b => ag_029,
                y => svBitNodes_3_EN_c2b_1_put
                );
        ag_149 : std_inv
            port map (
                a => svBitNodes_5_RDY_c2b_0_put,
                y => ag_031
                );
        ag_150 : std_inv
            port map (
                a => svCheckNodes_2_RDY_c2b_2_get,
                y => ag_032
                );
        ag_151 : std_nor2
            port map (
                a => ag_032,
                b => ag_031,
                y => svBitNodes_5_EN_c2b_0_put
                );
        ag_152 : std_inv
            port map (
                a => svBitNodes_3_RDY_c2b_2_put,
                y => ag_033
                );
        ag_153 : std_inv
            port map (
                a => svCheckNodes_3_RDY_c2b_0_get,
                y => ag_034
                );
        ag_154 : std_nor2
            port map (
                a => ag_034,
                b => ag_033,
                y => svBitNodes_3_EN_c2b_2_put
                );
        ag_155 : std_inv
            port map (
                a => svBitNodes_4_RDY_c2b_1_put,
                y => ag_035
                );
        ag_156 : std_inv
            port map (
                a => svCheckNodes_3_RDY_c2b_1_get,
                y => ag_036
                );
        ag_157 : std_nor2
            port map (
                a => ag_036,
                b => ag_035,
                y => svBitNodes_4_EN_c2b_1_put
                );
        ag_158 : std_inv
            port map (
                a => svBitNodes_6_RDY_c2b_0_put,
                y => ag_037
                );
        ag_159 : std_inv
            port map (
                a => svCheckNodes_3_RDY_c2b_2_get,
                y => ag_038
                );
        ag_160 : std_nor2
            port map (
                a => ag_038,
                b => ag_037,
                y => svBitNodes_6_EN_c2b_0_put
                );
        ag_161 : std_inv
            port map (
                a => svBitNodes_0_RDY_c2b_1_put,
                y => ag_039
                );
        ag_162 : std_inv
            port map (
                a => svCheckNodes_4_RDY_c2b_0_get,
                y => ag_040
                );
        ag_163 : std_nor2
            port map (
                a => ag_040,
                b => ag_039,
                y => svBitNodes_0_EN_c2b_1_put
                );
        ag_164 : std_inv
            port map (
                a => svBitNodes_4_RDY_c2b_2_put,
                y => ag_041
                );
        ag_165 : std_inv
            port map (
                a => svCheckNodes_4_RDY_c2b_1_get,
                y => ag_042
                );
        ag_166 : std_nor2
            port map (
                a => ag_042,
                b => ag_041,
                y => svBitNodes_4_EN_c2b_2_put
                );
        ag_167 : std_inv
            port map (
                a => svBitNodes_5_RDY_c2b_1_put,
                y => ag_043
                );
        ag_168 : std_inv
            port map (
                a => svCheckNodes_4_RDY_c2b_2_get,
                y => ag_044
                );
        ag_169 : std_nor2
            port map (
                a => ag_044,
                b => ag_043,
                y => svBitNodes_5_EN_c2b_1_put
                );
        ag_170 : std_inv
            port map (
                a => svBitNodes_1_RDY_c2b_2_put,
                y => ag_045
                );
        ag_171 : std_inv
            port map (
                a => svCheckNodes_5_RDY_c2b_0_get,
                y => ag_046
                );
        ag_172 : std_nor2
            port map (
                a => ag_046,
                b => ag_045,
                y => svBitNodes_1_EN_c2b_2_put
                );
        ag_173 : std_inv
            port map (
                a => svBitNodes_5_RDY_c2b_2_put,
                y => ag_047
                );
        ag_174 : std_inv
            port map (
                a => svCheckNodes_5_RDY_c2b_1_get,
                y => ag_048
                );
        ag_175 : std_nor2
            port map (
                a => ag_048,
                b => ag_047,
                y => svBitNodes_5_EN_c2b_2_put
                );
        ag_176 : std_inv
            port map (
                a => svBitNodes_6_RDY_c2b_1_put,
                y => ag_049
                );
        ag_177 : std_inv
            port map (
                a => svCheckNodes_5_RDY_c2b_2_get,
                y => ag_050
                );
        ag_178 : std_nor2
            port map (
                a => ag_050,
                b => ag_049,
                y => svBitNodes_6_EN_c2b_1_put
                );
        ag_179 : std_inv
            port map (
                a => svBitNodes_0_RDY_c2b_2_put,
                y => ag_051
                );
        ag_180 : std_inv
            port map (
                a => svCheckNodes_6_RDY_c2b_0_get,
                y => ag_052
                );
        ag_181 : std_nor2
            port map (
                a => ag_052,
                b => ag_051,
                y => svBitNodes_0_EN_c2b_2_put
                );
        ag_182 : std_inv
            port map (
                a => svBitNodes_2_RDY_c2b_2_put,
                y => ag_053
                );
        ag_183 : std_inv
            port map (
                a => svCheckNodes_6_RDY_c2b_1_get,
                y => ag_054
                );
        ag_184 : std_nor2
            port map (
                a => ag_054,
                b => ag_053,
                y => svBitNodes_2_EN_c2b_2_put
                );
        ag_185 : std_inv
            port map (
                a => svBitNodes_6_RDY_c2b_2_put,
                y => ag_055
                );
        ag_186 : std_inv
            port map (
                a => svCheckNodes_6_RDY_c2b_2_get,
                y => ag_056
                );
        ag_187 : std_nor2
            port map (
                a => ag_056,
                b => ag_055,
                y => svBitNodes_6_EN_c2b_2_put
                );
        ag_188 : std_nand2
            port map (
                a => svBitNodes_2_RDY_codeIn_put,
                b => svBitNodes_1_RDY_codeIn_put,
                y => ag_057
                );
        ag_189 : std_nand2
            port map (
                a => svBitNodes_5_RDY_codeIn_put,
                b => svBitNodes_4_RDY_codeIn_put,
                y => ag_058
                );
        ag_190 : std_nand2
            port map (
                a => svBitNodes_6_RDY_codeIn_put,
                b => svBitNodes_3_RDY_codeIn_put,
                y => ag_059
                );
        ag_191 : std_nor3
            port map (
                a => ag_059,
                b => ag_058,
                c => ag_057,
                y => ag_060
                );
        ag_192 : std_inv
            port map (
                a => svBitNodes_0_RDY_codeIn_put,
                y => ag_061
                );
        ag_193 : std_inv
            port map (
                a => rgIdle,
                y => ag_062
                );
        ag_194 : std_nor2
            port map (
                a => ag_062,
                b => ag_061,
                y => ag_063
                );
        ag_195 : std_nand3
            port map (
                a => ag_063,
                b => ag_060,
                c => sffI_EMPTY_N,
                y => ag_064
                );
        ag_196 : std_inv
            port map (
                a => ag_064,
                y => WILL_FIRE_RL_rlPutCodeWordIn
                );
        ag_197 : std_nor2
            port map (
                a => ag_059,
                b => ag_057,
                y => ag_065
                );
        ag_198 : std_nand3
            port map (
                a => ag_065,
                b => svBitNodes_5_RDY_codeIn_put,
                c => svBitNodes_4_RDY_codeIn_put,
                y => ag_066
                );
        ag_199 : std_nand2
            port map (
                a => svBitNodes_5_RDY_dataOut_get,
                b => svBitNodes_4_RDY_dataOut_get,
                y => ag_067
                );
        ag_200 : std_nand2
            port map (
                a => sffO_FULL_N,
                b => svBitNodes_6_RDY_dataOut_get,
                y => ag_068
                );
        ag_201 : std_nor2
            port map (
                a => ag_068,
                b => ag_067,
                y => ag_069
                );
        ag_202 : std_nor2
            port map (
                a => rgIdle,
                b => ag_061,
                y => ag_070
                );
        ag_203 : std_nand2
            port map (
                a => svBitNodes_1_RDY_dataOut_get,
                b => svBitNodes_0_RDY_dataOut_get,
                y => ag_071
                );
        ag_204 : std_nand2
            port map (
                a => svBitNodes_3_RDY_dataOut_get,
                b => svBitNodes_2_RDY_dataOut_get,
                y => ag_072
                );
        ag_205 : std_nor2
            port map (
                a => ag_072,
                b => ag_071,
                y => ag_073
                );
        ag_206 : std_nand3
            port map (
                a => ag_073,
                b => ag_070,
                c => ag_069,
                y => ag_074
                );
        ag_207 : std_nor2
            port map (
                a => ag_074,
                b => ag_066,
                y => WILL_FIRE_RL_rlEvaluateOutput
                );
        ag_208 : std_nor3
            port map (
                a => ag_074,
                b => ag_066,
                c => fnCheckDecodedWord_d200,
                y => sffO_ENQ
                );
        ag_209 : std_nand2
            port map (
                a => WILL_FIRE_RL_rlEvaluateOutput,
                b => fnCheckDecodedWord_d200,
                y => ag_075
                );
        ag_210 : std_nand2
            port map (
                a => ag_075,
                b => ag_064,
                y => svBitNodes_0_EN_codeIn_put
                );
        ag_211 : std_inv
            port map (
                a => svBitNodes_0_dataOut_get,
                y => ag_076
                );
        ag_212 : std_inv
            port map (
                a => fnCheckDecodedWord_d200,
                y => ag_077
                );
        ag_213 : std_nand2
            port map (
                a => svBitNodes_2_RDY_dataOut_get,
                b => svBitNodes_1_RDY_dataOut_get,
                y => ag_078
                );
        ag_214 : std_nor2
            port map (
                a => ag_078,
                b => ag_067,
                y => ag_079
                );
        ag_215 : std_nand2
            port map (
                a => ag_079,
                b => ag_060,
                y => ag_080
                );
        ag_216 : std_inv
            port map (
                a => svBitNodes_6_RDY_dataOut_get,
                y => ag_081
                );
        ag_217 : std_inv
            port map (
                a => sffO_FULL_N,
                y => ag_082
                );
        ag_218 : std_nor2
            port map (
                a => ag_082,
                b => ag_081,
                y => ag_083
                );
        ag_219 : std_inv
            port map (
                a => svBitNodes_0_RDY_dataOut_get,
                y => ag_084
                );
        ag_220 : std_inv
            port map (
                a => svBitNodes_3_RDY_dataOut_get,
                y => ag_085
                );
        ag_221 : std_nor3
            port map (
                a => ag_085,
                b => ag_084,
                c => rgIdle,
                y => ag_086
                );
        ag_222 : std_nand3
            port map (
                a => ag_086,
                b => ag_083,
                c => svBitNodes_0_RDY_codeIn_put,
                y => ag_087
                );
        ag_223 : std_nor3
            port map (
                a => ag_087,
                b => ag_080,
                c => ag_077,
                y => ag_088
                );
        ag_224 : std_nor2
            port map (
                a => ag_088,
                b => sffI_D_OUT_0,
                y => ag_089
                );
        ag_225 : std_aoi
            port map (
                a => ag_088,
                b => ag_076,
                c => ag_089,
                y => svBitNodes_0_codeIn_put
                );
        ag_226 : std_inv
            port map (
                a => svBitNodes_1_dataOut_get,
                y => ag_090
                );
        ag_227 : std_nor2
            port map (
                a => ag_088,
                b => sffI_D_OUT_1,
                y => ag_091
                );
        ag_228 : std_aoi
            port map (
                a => ag_088,
                b => ag_090,
                c => ag_091,
                y => svBitNodes_1_codeIn_put
                );
        ag_229 : std_inv
            port map (
                a => svBitNodes_2_dataOut_get,
                y => ag_092
                );
        ag_230 : std_nor2
            port map (
                a => ag_088,
                b => sffI_D_OUT_2,
                y => ag_093
                );
        ag_231 : std_aoi
            port map (
                a => ag_088,
                b => ag_092,
                c => ag_093,
                y => svBitNodes_2_codeIn_put
                );
        ag_232 : std_inv
            port map (
                a => svBitNodes_3_dataOut_get,
                y => ag_094
                );
        ag_233 : std_nor2
            port map (
                a => ag_088,
                b => sffI_D_OUT_3,
                y => ag_095
                );
        ag_234 : std_aoi
            port map (
                a => ag_088,
                b => ag_094,
                c => ag_095,
                y => svBitNodes_3_codeIn_put
                );
        ag_235 : std_inv
            port map (
                a => svBitNodes_4_dataOut_get,
                y => ag_096
                );
        ag_236 : std_nor2
            port map (
                a => ag_088,
                b => sffI_D_OUT_4,
                y => ag_097
                );
        ag_237 : std_aoi
            port map (
                a => ag_088,
                b => ag_096,
                c => ag_097,
                y => svBitNodes_4_codeIn_put
                );
        ag_238 : std_inv
            port map (
                a => svBitNodes_5_dataOut_get,
                y => ag_098
                );
        ag_239 : std_nor2
            port map (
                a => ag_088,
                b => sffI_D_OUT_5,
                y => ag_099
                );
        ag_240 : std_aoi
            port map (
                a => ag_088,
                b => ag_098,
                c => ag_099,
                y => svBitNodes_5_codeIn_put
                );
        ag_241 : std_inv
            port map (
                a => svBitNodes_6_dataOut_get,
                y => ag_100
                );
        ag_242 : std_nor2
            port map (
                a => ag_088,
                b => sffI_D_OUT_6,
                y => ag_101
                );
        ag_243 : std_aoi
            port map (
                a => ag_088,
                b => ag_100,
                c => ag_101,
                y => svBitNodes_6_codeIn_put
                );
        ag_244 : std_nand2
            port map (
                a => WILL_FIRE_RL_rlEvaluateOutput,
                b => ag_077,
                y => ag_102
                );
        ag_245 : std_nand2
            port map (
                a => ag_064,
                b => rgIdle,
                y => ag_103
                );
        ag_246 : std_nand3
            port map (
                a => ag_103,
                b => ag_102,
                c => RST_N,
                y => ag_000
                );
        ag_247 : d_ff
            port map (
                clk => CLK,
                d => ag_000,
                q => rgIdle
                );
        ffI : FIFO2_7
            port map (
                CLK => CLK,
                CLR => '0',
                DEQ => WILL_FIRE_RL_rlPutCodeWordIn,
                EMPTY_N => sffI_EMPTY_N,
                ENQ => EN_request_put,
                FULL_N => sffI_FULL_N,
                RST => RST_N,
                SD_IN_0 => srequest_put_0 ,
                SD_IN_1 => srequest_put_1 ,
                SD_IN_2 => srequest_put_2 ,
                SD_IN_3 => srequest_put_3 ,
                SD_IN_4 => srequest_put_4 ,
                SD_IN_5 => srequest_put_5 ,
                SD_IN_6 => srequest_put_6 ,
                SD_OUT_0 => sffI_D_OUT_0,
                SD_OUT_1 => sffI_D_OUT_1,
                SD_OUT_2 => sffI_D_OUT_2,
                SD_OUT_3 => sffI_D_OUT_3,
                SD_OUT_4 => sffI_D_OUT_4,
                SD_OUT_5 => sffI_D_OUT_5,
                SD_OUT_6 => sffI_D_OUT_6
                );
        ffO : FIFO2_7
            port map (
                CLK => CLK,
                CLR => '0',
                DEQ => EN_response_get,
                EMPTY_N => sffO_EMPTY_N,
                ENQ => sffO_ENQ,
                FULL_N => sffO_FULL_N,
                RST => RST_N,
                SD_IN_0 => svBitNodes_0_dataOut_get,
                SD_IN_1 => svBitNodes_1_dataOut_get,
                SD_IN_2 => svBitNodes_2_dataOut_get,
                SD_IN_3 => svBitNodes_3_dataOut_get,
                SD_IN_4 => svBitNodes_4_dataOut_get,
                SD_IN_5 => svBitNodes_5_dataOut_get,
                SD_IN_6 => svBitNodes_6_dataOut_get,
                SD_OUT_0 => sffO_D_OUT_0,
                SD_OUT_1 => sffO_D_OUT_1,
                SD_OUT_2 => sffO_D_OUT_2,
                SD_OUT_3 => sffO_D_OUT_3,
                SD_OUT_4 => sffO_D_OUT_4,
                SD_OUT_5 => sffO_D_OUT_5,
                SD_OUT_6 => sffO_D_OUT_6
                );
        instance_fnCheckDecodedWord_0 : module_fnCheckDecodedWord
            port map (
                fnCheckDecodedWord => fnCheckDecodedWord_d200,
                sfnCheckDecodedWord_b_0 => svBitNodes_0_dataOut_get,
                sfnCheckDecodedWord_b_1 => svBitNodes_1_dataOut_get,
                sfnCheckDecodedWord_b_2 => svBitNodes_2_dataOut_get,
                sfnCheckDecodedWord_b_3 => svBitNodes_3_dataOut_get,
                sfnCheckDecodedWord_b_4 => svBitNodes_4_dataOut_get,
                sfnCheckDecodedWord_b_5 => svBitNodes_5_dataOut_get,
                sfnCheckDecodedWord_b_6 => svBitNodes_6_dataOut_get
                );
        vBitNodes_0 : mkBitNode
            port map (
                CLK => CLK,
                EN_b2c_get => svBitNodes_0_EN_b2c_get,
                EN_c2b_0_put => svBitNodes_0_EN_c2b_0_put,
                EN_c2b_1_put => svBitNodes_0_EN_c2b_1_put,
                EN_c2b_2_put => svBitNodes_0_EN_c2b_2_put,
                EN_codeIn_put => svBitNodes_0_EN_codeIn_put,
                EN_dataOut_get => WILL_FIRE_RL_rlEvaluateOutput,
                RDY_b2c_get => svBitNodes_0_RDY_b2c_get,
                RDY_c2b_0_put => svBitNodes_0_RDY_c2b_0_put,
                RDY_c2b_1_put => svBitNodes_0_RDY_c2b_1_put,
                RDY_c2b_2_put => svBitNodes_0_RDY_c2b_2_put,
                RDY_codeIn_put => svBitNodes_0_RDY_codeIn_put,
                RDY_dataOut_get => svBitNodes_0_RDY_dataOut_get,
                RST_N => RST_N,
                b2c_get => svBitNodes_0_b2c_get,
                c2b_0_put => svBitNodes_0_c2b_0_put,
                c2b_1_put => svBitNodes_0_c2b_1_put,
                c2b_2_put => svBitNodes_0_c2b_2_put,
                codeIn_put => svBitNodes_0_codeIn_put,
                dataOut_get => svBitNodes_0_dataOut_get
                );
        vBitNodes_1 : mkBitNode
            port map (
                CLK => CLK,
                EN_b2c_get => svBitNodes_1_EN_b2c_get,
                EN_c2b_0_put => svBitNodes_1_EN_c2b_0_put,
                EN_c2b_1_put => svBitNodes_1_EN_c2b_1_put,
                EN_c2b_2_put => svBitNodes_1_EN_c2b_2_put,
                EN_codeIn_put => svBitNodes_0_EN_codeIn_put,
                EN_dataOut_get => WILL_FIRE_RL_rlEvaluateOutput,
                RDY_b2c_get => svBitNodes_1_RDY_b2c_get,
                RDY_c2b_0_put => svBitNodes_1_RDY_c2b_0_put,
                RDY_c2b_1_put => svBitNodes_1_RDY_c2b_1_put,
                RDY_c2b_2_put => svBitNodes_1_RDY_c2b_2_put,
                RDY_codeIn_put => svBitNodes_1_RDY_codeIn_put,
                RDY_dataOut_get => svBitNodes_1_RDY_dataOut_get,
                RST_N => RST_N,
                b2c_get => svBitNodes_1_b2c_get,
                c2b_0_put => svBitNodes_1_c2b_0_put,
                c2b_1_put => svBitNodes_1_c2b_1_put,
                c2b_2_put => svBitNodes_1_c2b_2_put,
                codeIn_put => svBitNodes_1_codeIn_put,
                dataOut_get => svBitNodes_1_dataOut_get
                );
        vBitNodes_2 : mkBitNode
            port map (
                CLK => CLK,
                EN_b2c_get => svBitNodes_2_EN_b2c_get,
                EN_c2b_0_put => svBitNodes_2_EN_c2b_0_put,
                EN_c2b_1_put => svBitNodes_2_EN_c2b_1_put,
                EN_c2b_2_put => svBitNodes_2_EN_c2b_2_put,
                EN_codeIn_put => svBitNodes_0_EN_codeIn_put,
                EN_dataOut_get => WILL_FIRE_RL_rlEvaluateOutput,
                RDY_b2c_get => svBitNodes_2_RDY_b2c_get,
                RDY_c2b_0_put => svBitNodes_2_RDY_c2b_0_put,
                RDY_c2b_1_put => svBitNodes_2_RDY_c2b_1_put,
                RDY_c2b_2_put => svBitNodes_2_RDY_c2b_2_put,
                RDY_codeIn_put => svBitNodes_2_RDY_codeIn_put,
                RDY_dataOut_get => svBitNodes_2_RDY_dataOut_get,
                RST_N => RST_N,
                b2c_get => svBitNodes_2_b2c_get,
                c2b_0_put => svBitNodes_2_c2b_0_put,
                c2b_1_put => svBitNodes_2_c2b_1_put,
                c2b_2_put => svBitNodes_2_c2b_2_put,
                codeIn_put => svBitNodes_2_codeIn_put,
                dataOut_get => svBitNodes_2_dataOut_get
                );
        vBitNodes_3 : mkBitNode
            port map (
                CLK => CLK,
                EN_b2c_get => svBitNodes_3_EN_b2c_get,
                EN_c2b_0_put => svBitNodes_3_EN_c2b_0_put,
                EN_c2b_1_put => svBitNodes_3_EN_c2b_1_put,
                EN_c2b_2_put => svBitNodes_3_EN_c2b_2_put,
                EN_codeIn_put => svBitNodes_0_EN_codeIn_put,
                EN_dataOut_get => WILL_FIRE_RL_rlEvaluateOutput,
                RDY_b2c_get => svBitNodes_3_RDY_b2c_get,
                RDY_c2b_0_put => svBitNodes_3_RDY_c2b_0_put,
                RDY_c2b_1_put => svBitNodes_3_RDY_c2b_1_put,
                RDY_c2b_2_put => svBitNodes_3_RDY_c2b_2_put,
                RDY_codeIn_put => svBitNodes_3_RDY_codeIn_put,
                RDY_dataOut_get => svBitNodes_3_RDY_dataOut_get,
                RST_N => RST_N,
                b2c_get => svBitNodes_3_b2c_get,
                c2b_0_put => svBitNodes_3_c2b_0_put,
                c2b_1_put => svBitNodes_3_c2b_1_put,
                c2b_2_put => svBitNodes_3_c2b_2_put,
                codeIn_put => svBitNodes_3_codeIn_put,
                dataOut_get => svBitNodes_3_dataOut_get
                );
        vBitNodes_4 : mkBitNode
            port map (
                CLK => CLK,
                EN_b2c_get => svBitNodes_4_EN_b2c_get,
                EN_c2b_0_put => svBitNodes_4_EN_c2b_0_put,
                EN_c2b_1_put => svBitNodes_4_EN_c2b_1_put,
                EN_c2b_2_put => svBitNodes_4_EN_c2b_2_put,
                EN_codeIn_put => svBitNodes_0_EN_codeIn_put,
                EN_dataOut_get => WILL_FIRE_RL_rlEvaluateOutput,
                RDY_b2c_get => svBitNodes_4_RDY_b2c_get,
                RDY_c2b_0_put => svBitNodes_4_RDY_c2b_0_put,
                RDY_c2b_1_put => svBitNodes_4_RDY_c2b_1_put,
                RDY_c2b_2_put => svBitNodes_4_RDY_c2b_2_put,
                RDY_codeIn_put => svBitNodes_4_RDY_codeIn_put,
                RDY_dataOut_get => svBitNodes_4_RDY_dataOut_get,
                RST_N => RST_N,
                b2c_get => svBitNodes_4_b2c_get,
                c2b_0_put => svBitNodes_4_c2b_0_put,
                c2b_1_put => svBitNodes_4_c2b_1_put,
                c2b_2_put => svBitNodes_4_c2b_2_put,
                codeIn_put => svBitNodes_4_codeIn_put,
                dataOut_get => svBitNodes_4_dataOut_get
                );
        vBitNodes_5 : mkBitNode
            port map (
                CLK => CLK,
                EN_b2c_get => svBitNodes_5_EN_b2c_get,
                EN_c2b_0_put => svBitNodes_5_EN_c2b_0_put,
                EN_c2b_1_put => svBitNodes_5_EN_c2b_1_put,
                EN_c2b_2_put => svBitNodes_5_EN_c2b_2_put,
                EN_codeIn_put => svBitNodes_0_EN_codeIn_put,
                EN_dataOut_get => WILL_FIRE_RL_rlEvaluateOutput,
                RDY_b2c_get => svBitNodes_5_RDY_b2c_get,
                RDY_c2b_0_put => svBitNodes_5_RDY_c2b_0_put,
                RDY_c2b_1_put => svBitNodes_5_RDY_c2b_1_put,
                RDY_c2b_2_put => svBitNodes_5_RDY_c2b_2_put,
                RDY_codeIn_put => svBitNodes_5_RDY_codeIn_put,
                RDY_dataOut_get => svBitNodes_5_RDY_dataOut_get,
                RST_N => RST_N,
                b2c_get => svBitNodes_5_b2c_get,
                c2b_0_put => svBitNodes_5_c2b_0_put,
                c2b_1_put => svBitNodes_5_c2b_1_put,
                c2b_2_put => svBitNodes_5_c2b_2_put,
                codeIn_put => svBitNodes_5_codeIn_put,
                dataOut_get => svBitNodes_5_dataOut_get
                );
        vBitNodes_6 : mkBitNode
            port map (
                CLK => CLK,
                EN_b2c_get => svBitNodes_6_EN_b2c_get,
                EN_c2b_0_put => svBitNodes_6_EN_c2b_0_put,
                EN_c2b_1_put => svBitNodes_6_EN_c2b_1_put,
                EN_c2b_2_put => svBitNodes_6_EN_c2b_2_put,
                EN_codeIn_put => svBitNodes_0_EN_codeIn_put,
                EN_dataOut_get => WILL_FIRE_RL_rlEvaluateOutput,
                RDY_b2c_get => svBitNodes_6_RDY_b2c_get,
                RDY_c2b_0_put => svBitNodes_6_RDY_c2b_0_put,
                RDY_c2b_1_put => svBitNodes_6_RDY_c2b_1_put,
                RDY_c2b_2_put => svBitNodes_6_RDY_c2b_2_put,
                RDY_codeIn_put => svBitNodes_6_RDY_codeIn_put,
                RDY_dataOut_get => svBitNodes_6_RDY_dataOut_get,
                RST_N => RST_N,
                b2c_get => svBitNodes_6_b2c_get,
                c2b_0_put => svBitNodes_6_c2b_0_put,
                c2b_1_put => svBitNodes_6_c2b_1_put,
                c2b_2_put => svBitNodes_6_c2b_2_put,
                codeIn_put => svBitNodes_6_codeIn_put,
                dataOut_get => svBitNodes_6_dataOut_get
                );
        vCheckNodes_0 : mkChkNode
            port map (
                CLK => CLK,
                EN_b2c_0_put => svBitNodes_0_EN_b2c_get,
                EN_b2c_1_put => svBitNodes_1_EN_b2c_get,
                EN_b2c_2_put => svBitNodes_3_EN_b2c_get,
                EN_c2b_0_get => svBitNodes_0_EN_c2b_0_put,
                EN_c2b_1_get => svBitNodes_1_EN_c2b_0_put,
                EN_c2b_2_get => svBitNodes_3_EN_c2b_0_put,
                RDY_b2c_0_put => svCheckNodes_0_RDY_b2c_0_put,
                RDY_b2c_1_put => svCheckNodes_0_RDY_b2c_1_put,
                RDY_b2c_2_put => svCheckNodes_0_RDY_b2c_2_put,
                RDY_c2b_0_get => svCheckNodes_0_RDY_c2b_0_get,
                RDY_c2b_1_get => svCheckNodes_0_RDY_c2b_1_get,
                RDY_c2b_2_get => svCheckNodes_0_RDY_c2b_2_get,
                RST_N => RST_N,
                b2c_0_put => svBitNodes_0_b2c_get,
                b2c_1_put => svBitNodes_1_b2c_get,
                b2c_2_put => svBitNodes_3_b2c_get,
                c2b_0_get => svBitNodes_0_c2b_0_put,
                c2b_1_get => svBitNodes_1_c2b_0_put,
                c2b_2_get => svBitNodes_3_c2b_0_put
                );
        vCheckNodes_1 : mkChkNode
            port map (
                CLK => CLK,
                EN_b2c_0_put => svBitNodes_1_EN_b2c_get,
                EN_b2c_1_put => svBitNodes_2_EN_b2c_get,
                EN_b2c_2_put => svBitNodes_4_EN_b2c_get,
                EN_c2b_0_get => svBitNodes_1_EN_c2b_1_put,
                EN_c2b_1_get => svBitNodes_2_EN_c2b_0_put,
                EN_c2b_2_get => svBitNodes_4_EN_c2b_0_put,
                RDY_b2c_0_put => svCheckNodes_1_RDY_b2c_0_put,
                RDY_b2c_1_put => svCheckNodes_1_RDY_b2c_1_put,
                RDY_b2c_2_put => svCheckNodes_1_RDY_b2c_2_put,
                RDY_c2b_0_get => svCheckNodes_1_RDY_c2b_0_get,
                RDY_c2b_1_get => svCheckNodes_1_RDY_c2b_1_get,
                RDY_c2b_2_get => svCheckNodes_1_RDY_c2b_2_get,
                RST_N => RST_N,
                b2c_0_put => svBitNodes_1_b2c_get,
                b2c_1_put => svBitNodes_2_b2c_get,
                b2c_2_put => svBitNodes_4_b2c_get,
                c2b_0_get => svBitNodes_1_c2b_1_put,
                c2b_1_get => svBitNodes_2_c2b_0_put,
                c2b_2_get => svBitNodes_4_c2b_0_put
                );
        vCheckNodes_2 : mkChkNode
            port map (
                CLK => CLK,
                EN_b2c_0_put => svBitNodes_2_EN_b2c_get,
                EN_b2c_1_put => svBitNodes_3_EN_b2c_get,
                EN_b2c_2_put => svBitNodes_5_EN_b2c_get,
                EN_c2b_0_get => svBitNodes_2_EN_c2b_1_put,
                EN_c2b_1_get => svBitNodes_3_EN_c2b_1_put,
                EN_c2b_2_get => svBitNodes_5_EN_c2b_0_put,
                RDY_b2c_0_put => svCheckNodes_2_RDY_b2c_0_put,
                RDY_b2c_1_put => svCheckNodes_2_RDY_b2c_1_put,
                RDY_b2c_2_put => svCheckNodes_2_RDY_b2c_2_put,
                RDY_c2b_0_get => svCheckNodes_2_RDY_c2b_0_get,
                RDY_c2b_1_get => svCheckNodes_2_RDY_c2b_1_get,
                RDY_c2b_2_get => svCheckNodes_2_RDY_c2b_2_get,
                RST_N => RST_N,
                b2c_0_put => svBitNodes_2_b2c_get,
                b2c_1_put => svBitNodes_3_b2c_get,
                b2c_2_put => svBitNodes_5_b2c_get,
                c2b_0_get => svBitNodes_2_c2b_1_put,
                c2b_1_get => svBitNodes_3_c2b_1_put,
                c2b_2_get => svBitNodes_5_c2b_0_put
                );
        vCheckNodes_3 : mkChkNode
            port map (
                CLK => CLK,
                EN_b2c_0_put => svBitNodes_3_EN_b2c_get,
                EN_b2c_1_put => svBitNodes_4_EN_b2c_get,
                EN_b2c_2_put => svBitNodes_6_EN_b2c_get,
                EN_c2b_0_get => svBitNodes_3_EN_c2b_2_put,
                EN_c2b_1_get => svBitNodes_4_EN_c2b_1_put,
                EN_c2b_2_get => svBitNodes_6_EN_c2b_0_put,
                RDY_b2c_0_put => svCheckNodes_3_RDY_b2c_0_put,
                RDY_b2c_1_put => svCheckNodes_3_RDY_b2c_1_put,
                RDY_b2c_2_put => svCheckNodes_3_RDY_b2c_2_put,
                RDY_c2b_0_get => svCheckNodes_3_RDY_c2b_0_get,
                RDY_c2b_1_get => svCheckNodes_3_RDY_c2b_1_get,
                RDY_c2b_2_get => svCheckNodes_3_RDY_c2b_2_get,
                RST_N => RST_N,
                b2c_0_put => svBitNodes_3_b2c_get,
                b2c_1_put => svBitNodes_4_b2c_get,
                b2c_2_put => svBitNodes_6_b2c_get,
                c2b_0_get => svBitNodes_3_c2b_2_put,
                c2b_1_get => svBitNodes_4_c2b_1_put,
                c2b_2_get => svBitNodes_6_c2b_0_put
                );
        vCheckNodes_4 : mkChkNode
            port map (
                CLK => CLK,
                EN_b2c_0_put => svBitNodes_0_EN_b2c_get,
                EN_b2c_1_put => svBitNodes_4_EN_b2c_get,
                EN_b2c_2_put => svBitNodes_5_EN_b2c_get,
                EN_c2b_0_get => svBitNodes_0_EN_c2b_1_put,
                EN_c2b_1_get => svBitNodes_4_EN_c2b_2_put,
                EN_c2b_2_get => svBitNodes_5_EN_c2b_1_put,
                RDY_b2c_0_put => svCheckNodes_4_RDY_b2c_0_put,
                RDY_b2c_1_put => svCheckNodes_4_RDY_b2c_1_put,
                RDY_b2c_2_put => svCheckNodes_4_RDY_b2c_2_put,
                RDY_c2b_0_get => svCheckNodes_4_RDY_c2b_0_get,
                RDY_c2b_1_get => svCheckNodes_4_RDY_c2b_1_get,
                RDY_c2b_2_get => svCheckNodes_4_RDY_c2b_2_get,
                RST_N => RST_N,
                b2c_0_put => svBitNodes_0_b2c_get,
                b2c_1_put => svBitNodes_4_b2c_get,
                b2c_2_put => svBitNodes_5_b2c_get,
                c2b_0_get => svBitNodes_0_c2b_1_put,
                c2b_1_get => svBitNodes_4_c2b_2_put,
                c2b_2_get => svBitNodes_5_c2b_1_put
                );
        vCheckNodes_5 : mkChkNode
            port map (
                CLK => CLK,
                EN_b2c_0_put => svBitNodes_1_EN_b2c_get,
                EN_b2c_1_put => svBitNodes_5_EN_b2c_get,
                EN_b2c_2_put => svBitNodes_6_EN_b2c_get,
                EN_c2b_0_get => svBitNodes_1_EN_c2b_2_put,
                EN_c2b_1_get => svBitNodes_5_EN_c2b_2_put,
                EN_c2b_2_get => svBitNodes_6_EN_c2b_1_put,
                RDY_b2c_0_put => svCheckNodes_5_RDY_b2c_0_put,
                RDY_b2c_1_put => svCheckNodes_5_RDY_b2c_1_put,
                RDY_b2c_2_put => svCheckNodes_5_RDY_b2c_2_put,
                RDY_c2b_0_get => svCheckNodes_5_RDY_c2b_0_get,
                RDY_c2b_1_get => svCheckNodes_5_RDY_c2b_1_get,
                RDY_c2b_2_get => svCheckNodes_5_RDY_c2b_2_get,
                RST_N => RST_N,
                b2c_0_put => svBitNodes_1_b2c_get,
                b2c_1_put => svBitNodes_5_b2c_get,
                b2c_2_put => svBitNodes_6_b2c_get,
                c2b_0_get => svBitNodes_1_c2b_2_put,
                c2b_1_get => svBitNodes_5_c2b_2_put,
                c2b_2_get => svBitNodes_6_c2b_1_put
                );
        vCheckNodes_6 : mkChkNode
            port map (
                CLK => CLK,
                EN_b2c_0_put => svBitNodes_0_EN_b2c_get,
                EN_b2c_1_put => svBitNodes_2_EN_b2c_get,
                EN_b2c_2_put => svBitNodes_6_EN_b2c_get,
                EN_c2b_0_get => svBitNodes_0_EN_c2b_2_put,
                EN_c2b_1_get => svBitNodes_2_EN_c2b_2_put,
                EN_c2b_2_get => svBitNodes_6_EN_c2b_2_put,
                RDY_b2c_0_put => svCheckNodes_6_RDY_b2c_0_put,
                RDY_b2c_1_put => svCheckNodes_6_RDY_b2c_1_put,
                RDY_b2c_2_put => svCheckNodes_6_RDY_b2c_2_put,
                RDY_c2b_0_get => svCheckNodes_6_RDY_c2b_0_get,
                RDY_c2b_1_get => svCheckNodes_6_RDY_c2b_1_get,
                RDY_c2b_2_get => svCheckNodes_6_RDY_c2b_2_get,
                RST_N => RST_N,
                b2c_0_put => svBitNodes_0_b2c_get,
                b2c_1_put => svBitNodes_2_b2c_get,
                b2c_2_put => svBitNodes_6_b2c_get,
                c2b_0_get => svBitNodes_0_c2b_2_put,
                c2b_1_get => svBitNodes_2_c2b_2_put,
                c2b_2_get => svBitNodes_6_c2b_2_put
                );
        nbuf_1 : buf1 port map (Y => sffO_D_IN_6, A => svBitNodes_6_dataOut_get);
        nbuf_2 : buf1 port map (Y => sffO_D_IN_5, A => svBitNodes_5_dataOut_get);
        nbuf_3 : buf1 port map (Y => sffO_D_IN_4, A => svBitNodes_4_dataOut_get);
        nbuf_4 : buf1 port map (Y => sffO_D_IN_3, A => svBitNodes_3_dataOut_get);
        nbuf_5 : buf1 port map (Y => sffO_D_IN_2, A => svBitNodes_2_dataOut_get);
        nbuf_6 : buf1 port map (Y => sffO_D_IN_1, A => svBitNodes_1_dataOut_get);
        nbuf_7 : buf1 port map (Y => sffO_D_IN_0, A => svBitNodes_0_dataOut_get);
        nbuf_8 : buf1 port map (Y => sffI_D_IN_6, A => srequest_put_6) ;
        nbuf_9 : buf1 port map (Y => sffI_D_IN_5, A => srequest_put_5) ;
        nbuf_10 : buf1 port map (Y => sffI_D_IN_4, A => srequest_put_4) ;
        nbuf_11 : buf1 port map (Y => sffI_D_IN_3, A => srequest_put_3) ;
        nbuf_12 : buf1 port map (Y => sffI_D_IN_2, A => srequest_put_2) ;
        nbuf_13 : buf1 port map (Y => sffI_D_IN_1, A => srequest_put_1) ;
        nbuf_14 : buf1 port map (Y => sffI_D_IN_0, A => srequest_put_0) ;
        nbuf_15 : buf1 port map (Y => sresponse_get_6 , A => sffO_D_OUT_6);
        nbuf_16 : buf1 port map (Y => sresponse_get_5 , A => sffO_D_OUT_5);
        nbuf_17 : buf1 port map (Y => sresponse_get_4 , A => sffO_D_OUT_4);
        nbuf_18 : buf1 port map (Y => sresponse_get_3 , A => sffO_D_OUT_3);
        nbuf_19 : buf1 port map (Y => sresponse_get_2 , A => sffO_D_OUT_2);
        nbuf_20 : buf1 port map (Y => sresponse_get_1 , A => sffO_D_OUT_1);
        nbuf_21 : buf1 port map (Y => sresponse_get_0 , A => sffO_D_OUT_0);
        nbuf_22 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut, A => svBitNodes_0_EN_c2b_0_put);
        nbuf_23 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_1, A => svBitNodes_1_EN_c2b_0_put);
        nbuf_24 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_10, A => svBitNodes_4_EN_c2b_1_put);
        nbuf_25 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_11, A => svBitNodes_6_EN_c2b_0_put);
        nbuf_26 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_12, A => svBitNodes_0_EN_c2b_1_put);
        nbuf_27 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_13, A => svBitNodes_4_EN_c2b_2_put);
        nbuf_28 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_14, A => svBitNodes_5_EN_c2b_1_put);
        nbuf_29 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_15, A => svBitNodes_1_EN_c2b_2_put);
        nbuf_30 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_16, A => svBitNodes_5_EN_c2b_2_put);
        nbuf_31 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_17, A => svBitNodes_6_EN_c2b_1_put);
        nbuf_32 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_18, A => svBitNodes_0_EN_c2b_2_put);
        nbuf_33 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_19, A => svBitNodes_2_EN_c2b_2_put);
        nbuf_34 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_2, A => svBitNodes_3_EN_c2b_0_put);
        nbuf_35 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_20, A => svBitNodes_6_EN_c2b_2_put);
        nbuf_36 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_3, A => svBitNodes_1_EN_c2b_1_put);
        nbuf_37 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_4, A => svBitNodes_2_EN_c2b_0_put);
        nbuf_38 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_5, A => svBitNodes_4_EN_c2b_0_put);
        nbuf_39 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_6, A => svBitNodes_2_EN_c2b_1_put);
        nbuf_40 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_7, A => svBitNodes_3_EN_c2b_1_put);
        nbuf_41 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_8, A => svBitNodes_5_EN_c2b_0_put);
        nbuf_42 : buf1 port map (Y => CAN_FIRE_RL_mkConnectionGetPut_9, A => svBitNodes_3_EN_c2b_2_put);
        nbuf_43 : buf1 port map (Y => CAN_FIRE_RL_rlConnect, A => svBitNodes_0_EN_b2c_get);
        nbuf_44 : buf1 port map (Y => CAN_FIRE_RL_rlConnect_1, A => svBitNodes_1_EN_b2c_get);
        nbuf_45 : buf1 port map (Y => CAN_FIRE_RL_rlConnect_2, A => svBitNodes_2_EN_b2c_get);
        nbuf_46 : buf1 port map (Y => CAN_FIRE_RL_rlConnect_3, A => svBitNodes_3_EN_b2c_get);
        nbuf_47 : buf1 port map (Y => CAN_FIRE_RL_rlConnect_4, A => svBitNodes_4_EN_b2c_get);
        nbuf_48 : buf1 port map (Y => CAN_FIRE_RL_rlConnect_5, A => svBitNodes_5_EN_b2c_get);
        nbuf_49 : buf1 port map (Y => CAN_FIRE_RL_rlConnect_6, A => svBitNodes_6_EN_b2c_get);
        nbuf_50 : buf1 port map (Y => CAN_FIRE_RL_rlEvaluateOutput, A => WILL_FIRE_RL_rlEvaluateOutput);
        nbuf_51 : buf1 port map (Y => CAN_FIRE_RL_rlPutCodeWordIn, A => WILL_FIRE_RL_rlPutCodeWordIn);
        nbuf_52 : buf1 port map (Y => CAN_FIRE_request_put, A => sffI_FULL_N);
        nbuf_53 : buf1 port map (Y => CAN_FIRE_response_get, A => sffO_EMPTY_N);
        nbuf_54 : buf1 port map (Y => sMUX_rgIdle_write_1__SEL_1, A => sffO_ENQ);
        nbuf_55 : buf1 port map (Y => RDY_request_put, A => sffI_FULL_N);
        nbuf_56 : buf1 port map (Y => RDY_response_get, A => sffO_EMPTY_N);
        nbuf_57 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut, A => svBitNodes_0_EN_c2b_0_put);
        nbuf_58 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_1, A => svBitNodes_1_EN_c2b_0_put);
        nbuf_59 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_10, A => svBitNodes_4_EN_c2b_1_put);
        nbuf_60 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_11, A => svBitNodes_6_EN_c2b_0_put);
        nbuf_61 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_12, A => svBitNodes_0_EN_c2b_1_put);
        nbuf_62 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_13, A => svBitNodes_4_EN_c2b_2_put);
        nbuf_63 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_14, A => svBitNodes_5_EN_c2b_1_put);
        nbuf_64 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_15, A => svBitNodes_1_EN_c2b_2_put);
        nbuf_65 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_16, A => svBitNodes_5_EN_c2b_2_put);
        nbuf_66 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_17, A => svBitNodes_6_EN_c2b_1_put);
        nbuf_67 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_18, A => svBitNodes_0_EN_c2b_2_put);
        nbuf_68 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_19, A => svBitNodes_2_EN_c2b_2_put);
        nbuf_69 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_2, A => svBitNodes_3_EN_c2b_0_put);
        nbuf_70 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_20, A => svBitNodes_6_EN_c2b_2_put);
        nbuf_71 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_3, A => svBitNodes_1_EN_c2b_1_put);
        nbuf_72 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_4, A => svBitNodes_2_EN_c2b_0_put);
        nbuf_73 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_5, A => svBitNodes_4_EN_c2b_0_put);
        nbuf_74 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_6, A => svBitNodes_2_EN_c2b_1_put);
        nbuf_75 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_7, A => svBitNodes_3_EN_c2b_1_put);
        nbuf_76 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_8, A => svBitNodes_5_EN_c2b_0_put);
        nbuf_77 : buf1 port map (Y => WILL_FIRE_RL_mkConnectionGetPut_9, A => svBitNodes_3_EN_c2b_2_put);
        nbuf_78 : buf1 port map (Y => WILL_FIRE_RL_rlConnect, A => svBitNodes_0_EN_b2c_get);
        nbuf_79 : buf1 port map (Y => WILL_FIRE_RL_rlConnect_1, A => svBitNodes_1_EN_b2c_get);
        nbuf_80 : buf1 port map (Y => WILL_FIRE_RL_rlConnect_2, A => svBitNodes_2_EN_b2c_get);
        nbuf_81 : buf1 port map (Y => WILL_FIRE_RL_rlConnect_3, A => svBitNodes_3_EN_b2c_get);
        nbuf_82 : buf1 port map (Y => WILL_FIRE_RL_rlConnect_4, A => svBitNodes_4_EN_b2c_get);
        nbuf_83 : buf1 port map (Y => WILL_FIRE_RL_rlConnect_5, A => svBitNodes_5_EN_b2c_get);
        nbuf_84 : buf1 port map (Y => WILL_FIRE_RL_rlConnect_6, A => svBitNodes_6_EN_b2c_get);
        nbuf_85 : buf1 port map (Y => WILL_FIRE_request_put, A => EN_request_put);
        nbuf_86 : buf1 port map (Y => WILL_FIRE_response_get, A => EN_response_get);
        nbuf_87 : buf1 port map (Y => sffI_DEQ, A => WILL_FIRE_RL_rlPutCodeWordIn);
        nbuf_88 : buf1 port map (Y => sffI_ENQ, A => EN_request_put);
        nbuf_89 : buf1 port map (Y => sffO_DEQ, A => EN_response_get);
        nbuf_90 : buf1 port map (Y => srgIdle_D_IN , A => sffO_ENQ);
        nbuf_91 : buf1 port map (Y => svBitNodes_0_EN_dataOut_get, A => WILL_FIRE_RL_rlEvaluateOutput);
        nbuf_92 : buf1 port map (Y => svBitNodes_1_EN_codeIn_put, A => svBitNodes_0_EN_codeIn_put);
        nbuf_93 : buf1 port map (Y => svBitNodes_1_EN_dataOut_get, A => WILL_FIRE_RL_rlEvaluateOutput);
        nbuf_94 : buf1 port map (Y => svBitNodes_2_EN_codeIn_put, A => svBitNodes_0_EN_codeIn_put);
        nbuf_95 : buf1 port map (Y => svBitNodes_2_EN_dataOut_get, A => WILL_FIRE_RL_rlEvaluateOutput);
        nbuf_96 : buf1 port map (Y => svBitNodes_3_EN_codeIn_put, A => svBitNodes_0_EN_codeIn_put);
        nbuf_97 : buf1 port map (Y => svBitNodes_3_EN_dataOut_get, A => WILL_FIRE_RL_rlEvaluateOutput);
        nbuf_98 : buf1 port map (Y => svBitNodes_4_EN_codeIn_put, A => svBitNodes_0_EN_codeIn_put);
        nbuf_99 : buf1 port map (Y => svBitNodes_4_EN_dataOut_get, A => WILL_FIRE_RL_rlEvaluateOutput);
        nbuf_100 : buf1 port map (Y => svBitNodes_5_EN_codeIn_put, A => svBitNodes_0_EN_codeIn_put);
        nbuf_101 : buf1 port map (Y => svBitNodes_5_EN_dataOut_get, A => WILL_FIRE_RL_rlEvaluateOutput);
        nbuf_102 : buf1 port map (Y => svBitNodes_6_EN_codeIn_put, A => svBitNodes_0_EN_codeIn_put);
        nbuf_103 : buf1 port map (Y => svBitNodes_6_EN_dataOut_get, A => WILL_FIRE_RL_rlEvaluateOutput);
        nbuf_104 : buf1 port map (Y => svCheckNodes_0_EN_b2c_0_put, A => svBitNodes_0_EN_b2c_get);
        nbuf_105 : buf1 port map (Y => svCheckNodes_0_EN_b2c_1_put, A => svBitNodes_1_EN_b2c_get);
        nbuf_106 : buf1 port map (Y => svCheckNodes_0_EN_b2c_2_put, A => svBitNodes_3_EN_b2c_get);
        nbuf_107 : buf1 port map (Y => svCheckNodes_0_EN_c2b_0_get, A => svBitNodes_0_EN_c2b_0_put);
        nbuf_108 : buf1 port map (Y => svCheckNodes_0_EN_c2b_1_get, A => svBitNodes_1_EN_c2b_0_put);
        nbuf_109 : buf1 port map (Y => svCheckNodes_0_EN_c2b_2_get, A => svBitNodes_3_EN_c2b_0_put);
        nbuf_110 : buf1 port map (Y => svCheckNodes_0_b2c_0_put, A => svBitNodes_0_b2c_get);
        nbuf_111 : buf1 port map (Y => svCheckNodes_0_b2c_1_put, A => svBitNodes_1_b2c_get);
        nbuf_112 : buf1 port map (Y => svCheckNodes_0_b2c_2_put, A => svBitNodes_3_b2c_get);
        nbuf_113 : buf1 port map (Y => svCheckNodes_0_c2b_0_get, A => svBitNodes_0_c2b_0_put);
        nbuf_114 : buf1 port map (Y => svCheckNodes_0_c2b_1_get, A => svBitNodes_1_c2b_0_put);
        nbuf_115 : buf1 port map (Y => svCheckNodes_0_c2b_2_get, A => svBitNodes_3_c2b_0_put);
        nbuf_116 : buf1 port map (Y => svCheckNodes_1_EN_b2c_0_put, A => svBitNodes_1_EN_b2c_get);
        nbuf_117 : buf1 port map (Y => svCheckNodes_1_EN_b2c_1_put, A => svBitNodes_2_EN_b2c_get);
        nbuf_118 : buf1 port map (Y => svCheckNodes_1_EN_b2c_2_put, A => svBitNodes_4_EN_b2c_get);
        nbuf_119 : buf1 port map (Y => svCheckNodes_1_EN_c2b_0_get, A => svBitNodes_1_EN_c2b_1_put);
        nbuf_120 : buf1 port map (Y => svCheckNodes_1_EN_c2b_1_get, A => svBitNodes_2_EN_c2b_0_put);
        nbuf_121 : buf1 port map (Y => svCheckNodes_1_EN_c2b_2_get, A => svBitNodes_4_EN_c2b_0_put);
        nbuf_122 : buf1 port map (Y => svCheckNodes_1_b2c_0_put, A => svBitNodes_1_b2c_get);
        nbuf_123 : buf1 port map (Y => svCheckNodes_1_b2c_1_put, A => svBitNodes_2_b2c_get);
        nbuf_124 : buf1 port map (Y => svCheckNodes_1_b2c_2_put, A => svBitNodes_4_b2c_get);
        nbuf_125 : buf1 port map (Y => svCheckNodes_1_c2b_0_get, A => svBitNodes_1_c2b_1_put);
        nbuf_126 : buf1 port map (Y => svCheckNodes_1_c2b_1_get, A => svBitNodes_2_c2b_0_put);
        nbuf_127 : buf1 port map (Y => svCheckNodes_1_c2b_2_get, A => svBitNodes_4_c2b_0_put);
        nbuf_128 : buf1 port map (Y => svCheckNodes_2_EN_b2c_0_put, A => svBitNodes_2_EN_b2c_get);
        nbuf_129 : buf1 port map (Y => svCheckNodes_2_EN_b2c_1_put, A => svBitNodes_3_EN_b2c_get);
        nbuf_130 : buf1 port map (Y => svCheckNodes_2_EN_b2c_2_put, A => svBitNodes_5_EN_b2c_get);
        nbuf_131 : buf1 port map (Y => svCheckNodes_2_EN_c2b_0_get, A => svBitNodes_2_EN_c2b_1_put);
        nbuf_132 : buf1 port map (Y => svCheckNodes_2_EN_c2b_1_get, A => svBitNodes_3_EN_c2b_1_put);
        nbuf_133 : buf1 port map (Y => svCheckNodes_2_EN_c2b_2_get, A => svBitNodes_5_EN_c2b_0_put);
        nbuf_134 : buf1 port map (Y => svCheckNodes_2_b2c_0_put, A => svBitNodes_2_b2c_get);
        nbuf_135 : buf1 port map (Y => svCheckNodes_2_b2c_1_put, A => svBitNodes_3_b2c_get);
        nbuf_136 : buf1 port map (Y => svCheckNodes_2_b2c_2_put, A => svBitNodes_5_b2c_get);
        nbuf_137 : buf1 port map (Y => svCheckNodes_2_c2b_0_get, A => svBitNodes_2_c2b_1_put);
        nbuf_138 : buf1 port map (Y => svCheckNodes_2_c2b_1_get, A => svBitNodes_3_c2b_1_put);
        nbuf_139 : buf1 port map (Y => svCheckNodes_2_c2b_2_get, A => svBitNodes_5_c2b_0_put);
        nbuf_140 : buf1 port map (Y => svCheckNodes_3_EN_b2c_0_put, A => svBitNodes_3_EN_b2c_get);
        nbuf_141 : buf1 port map (Y => svCheckNodes_3_EN_b2c_1_put, A => svBitNodes_4_EN_b2c_get);
        nbuf_142 : buf1 port map (Y => svCheckNodes_3_EN_b2c_2_put, A => svBitNodes_6_EN_b2c_get);
        nbuf_143 : buf1 port map (Y => svCheckNodes_3_EN_c2b_0_get, A => svBitNodes_3_EN_c2b_2_put);
        nbuf_144 : buf1 port map (Y => svCheckNodes_3_EN_c2b_1_get, A => svBitNodes_4_EN_c2b_1_put);
        nbuf_145 : buf1 port map (Y => svCheckNodes_3_EN_c2b_2_get, A => svBitNodes_6_EN_c2b_0_put);
        nbuf_146 : buf1 port map (Y => svCheckNodes_3_b2c_0_put, A => svBitNodes_3_b2c_get);
        nbuf_147 : buf1 port map (Y => svCheckNodes_3_b2c_1_put, A => svBitNodes_4_b2c_get);
        nbuf_148 : buf1 port map (Y => svCheckNodes_3_b2c_2_put, A => svBitNodes_6_b2c_get);
        nbuf_149 : buf1 port map (Y => svCheckNodes_3_c2b_0_get, A => svBitNodes_3_c2b_2_put);
        nbuf_150 : buf1 port map (Y => svCheckNodes_3_c2b_1_get, A => svBitNodes_4_c2b_1_put);
        nbuf_151 : buf1 port map (Y => svCheckNodes_3_c2b_2_get, A => svBitNodes_6_c2b_0_put);
        nbuf_152 : buf1 port map (Y => svCheckNodes_4_EN_b2c_0_put, A => svBitNodes_0_EN_b2c_get);
        nbuf_153 : buf1 port map (Y => svCheckNodes_4_EN_b2c_1_put, A => svBitNodes_4_EN_b2c_get);
        nbuf_154 : buf1 port map (Y => svCheckNodes_4_EN_b2c_2_put, A => svBitNodes_5_EN_b2c_get);
        nbuf_155 : buf1 port map (Y => svCheckNodes_4_EN_c2b_0_get, A => svBitNodes_0_EN_c2b_1_put);
        nbuf_156 : buf1 port map (Y => svCheckNodes_4_EN_c2b_1_get, A => svBitNodes_4_EN_c2b_2_put);
        nbuf_157 : buf1 port map (Y => svCheckNodes_4_EN_c2b_2_get, A => svBitNodes_5_EN_c2b_1_put);
        nbuf_158 : buf1 port map (Y => svCheckNodes_4_b2c_0_put, A => svBitNodes_0_b2c_get);
        nbuf_159 : buf1 port map (Y => svCheckNodes_4_b2c_1_put, A => svBitNodes_4_b2c_get);
        nbuf_160 : buf1 port map (Y => svCheckNodes_4_b2c_2_put, A => svBitNodes_5_b2c_get);
        nbuf_161 : buf1 port map (Y => svCheckNodes_4_c2b_0_get, A => svBitNodes_0_c2b_1_put);
        nbuf_162 : buf1 port map (Y => svCheckNodes_4_c2b_1_get, A => svBitNodes_4_c2b_2_put);
        nbuf_163 : buf1 port map (Y => svCheckNodes_4_c2b_2_get, A => svBitNodes_5_c2b_1_put);
        nbuf_164 : buf1 port map (Y => svCheckNodes_5_EN_b2c_0_put, A => svBitNodes_1_EN_b2c_get);
        nbuf_165 : buf1 port map (Y => svCheckNodes_5_EN_b2c_1_put, A => svBitNodes_5_EN_b2c_get);
        nbuf_166 : buf1 port map (Y => svCheckNodes_5_EN_b2c_2_put, A => svBitNodes_6_EN_b2c_get);
        nbuf_167 : buf1 port map (Y => svCheckNodes_5_EN_c2b_0_get, A => svBitNodes_1_EN_c2b_2_put);
        nbuf_168 : buf1 port map (Y => svCheckNodes_5_EN_c2b_1_get, A => svBitNodes_5_EN_c2b_2_put);
        nbuf_169 : buf1 port map (Y => svCheckNodes_5_EN_c2b_2_get, A => svBitNodes_6_EN_c2b_1_put);
        nbuf_170 : buf1 port map (Y => svCheckNodes_5_b2c_0_put, A => svBitNodes_1_b2c_get);
        nbuf_171 : buf1 port map (Y => svCheckNodes_5_b2c_1_put, A => svBitNodes_5_b2c_get);
        nbuf_172 : buf1 port map (Y => svCheckNodes_5_b2c_2_put, A => svBitNodes_6_b2c_get);
        nbuf_173 : buf1 port map (Y => svCheckNodes_5_c2b_0_get, A => svBitNodes_1_c2b_2_put);
        nbuf_174 : buf1 port map (Y => svCheckNodes_5_c2b_1_get, A => svBitNodes_5_c2b_2_put);
        nbuf_175 : buf1 port map (Y => svCheckNodes_5_c2b_2_get, A => svBitNodes_6_c2b_1_put);
        nbuf_176 : buf1 port map (Y => svCheckNodes_6_EN_b2c_0_put, A => svBitNodes_0_EN_b2c_get);
        nbuf_177 : buf1 port map (Y => svCheckNodes_6_EN_b2c_1_put, A => svBitNodes_2_EN_b2c_get);
        nbuf_178 : buf1 port map (Y => svCheckNodes_6_EN_b2c_2_put, A => svBitNodes_6_EN_b2c_get);
        nbuf_179 : buf1 port map (Y => svCheckNodes_6_EN_c2b_0_get, A => svBitNodes_0_EN_c2b_2_put);
        nbuf_180 : buf1 port map (Y => svCheckNodes_6_EN_c2b_1_get, A => svBitNodes_2_EN_c2b_2_put);
        nbuf_181 : buf1 port map (Y => svCheckNodes_6_EN_c2b_2_get, A => svBitNodes_6_EN_c2b_2_put);
        nbuf_182 : buf1 port map (Y => svCheckNodes_6_b2c_0_put, A => svBitNodes_0_b2c_get);
        nbuf_183 : buf1 port map (Y => svCheckNodes_6_b2c_1_put, A => svBitNodes_2_b2c_get);
        nbuf_184 : buf1 port map (Y => svCheckNodes_6_b2c_2_put, A => svBitNodes_6_b2c_get);
        nbuf_185 : buf1 port map (Y => svCheckNodes_6_c2b_0_get, A => svBitNodes_0_c2b_2_put);
        nbuf_186 : buf1 port map (Y => svCheckNodes_6_c2b_1_get, A => svBitNodes_2_c2b_2_put);
        nbuf_187 : buf1 port map (Y => svCheckNodes_6_c2b_2_get, A => svBitNodes_6_c2b_2_put);
    end; 


