module mkChkNodeCtrl (
      B2C_0_DEQ,
      B2C_0_EMPTY_N,
      B2C_0_FULL_N,
                   
      B2C_1_DEQ,
      B2C_1_EMPTY_N,
      B2C_1_FULL_N,
                   
      B2C_2_DEQ,
      B2C_2_EMPTY_N,
      B2C_2_FULL_N,

      C2B_0_EMPTY_N,
      C2B_0_FULL_N,

      C2B_1_EMPTY_N,
      C2B_1_FULL_N,

      C2B_2_EMPTY_N,
      C2B_2_FULL_N,

      C2B_0_ENQ,
      C2B_1_ENQ,
      C2B_2_ENQ
   );
  output   B2C_0_DEQ;
  output   B2C_1_DEQ;
  output   B2C_2_DEQ;
  output   C2B_0_ENQ;
  output   C2B_1_ENQ;
  output   C2B_2_ENQ;

  input    B2C_0_EMPTY_N;
  input    B2C_0_FULL_N;
                  
  input    B2C_1_EMPTY_N;
  input    B2C_1_FULL_N;
                  
  input    B2C_2_EMPTY_N;
  input    B2C_2_FULL_N;

  input    C2B_0_EMPTY_N;
  input    C2B_0_FULL_N;

  input    C2B_1_EMPTY_N;
  input    C2B_1_FULL_N;

  input    C2B_2_EMPTY_N;
  input    C2B_2_FULL_N;


  // signals for module outputs
  wire   B2C_0_DEQ;
  wire   B2C_1_DEQ;
  wire   B2C_2_DEQ;
  wire   C2B_0_ENQ;
  wire   C2B_1_ENQ;
  wire   C2B_2_ENQ;

  wire CAN_FIRE_RL_rlProcessIteration;
  wire vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9;

  // submodule vffB2C_0
  assign B2C_0_DEQ  = CAN_FIRE_RL_rlProcessIteration ;

  // submodule vffB2C_1
  assign B2C_1_DEQ  = CAN_FIRE_RL_rlProcessIteration ;

  // submodule vffB2C_2
  assign B2C_2_DEQ  = CAN_FIRE_RL_rlProcessIteration ;

  // rule RL_rlProcessIteration
  assign CAN_FIRE_RL_rlProcessIteration =
	     B2C_0_EMPTY_N && B2C_1_EMPTY_N &&
	     vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9 ;

  assign vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9 =
	     B2C_2_EMPTY_N && C2B_0_FULL_N && C2B_1_FULL_N && C2B_2_FULL_N ;
  assign C2B_0_ENQ =
	     B2C_0_EMPTY_N && B2C_1_EMPTY_N &&
	     vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9 ;
  assign C2B_1_ENQ =
	     B2C_0_EMPTY_N && B2C_1_EMPTY_N &&
	     vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9 ;
  assign C2B_2_ENQ =
	     B2C_0_EMPTY_N && B2C_1_EMPTY_N &&
	     vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9 ;
endmodule
