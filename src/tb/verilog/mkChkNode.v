//
// Generated by Bluespec Compiler, version 2018.10.beta1 (build e1df8052c, 2018-10-17)
//
// On Wed May  1 14:05:33 IST 2019
//
//
// Ports:
// Name                         I/O  size props
// RDY_b2c_0_put                  O     1 reg
// RDY_b2c_1_put                  O     1 reg
// RDY_b2c_2_put                  O     1 reg
// c2b_0_get                      O     1 reg
// RDY_c2b_0_get                  O     1 reg
// c2b_1_get                      O     1 reg
// RDY_c2b_1_get                  O     1 reg
// c2b_2_get                      O     1 reg
// RDY_c2b_2_get                  O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// b2c_0_put                      I     1 reg
// b2c_1_put                      I     1 reg
// b2c_2_put                      I     1 reg
// EN_b2c_0_put                   I     1
// EN_b2c_1_put                   I     1
// EN_b2c_2_put                   I     1
// EN_c2b_0_get                   I     1
// EN_c2b_1_get                   I     1
// EN_c2b_2_get                   I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkChkNode(CLK,
		 RST_N,

		 b2c_0_put,
		 EN_b2c_0_put,
		 RDY_b2c_0_put,

		 b2c_1_put,
		 EN_b2c_1_put,
		 RDY_b2c_1_put,

		 b2c_2_put,
		 EN_b2c_2_put,
		 RDY_b2c_2_put,

		 EN_c2b_0_get,
		 c2b_0_get,
		 RDY_c2b_0_get,

		 EN_c2b_1_get,
		 c2b_1_get,
		 RDY_c2b_1_get,

		 EN_c2b_2_get,
		 c2b_2_get,
		 RDY_c2b_2_get);
  input  CLK;
  input  RST_N;

  // action method b2c_0_put
  input  b2c_0_put;
  input  EN_b2c_0_put;
  output RDY_b2c_0_put;

  // action method b2c_1_put
  input  b2c_1_put;
  input  EN_b2c_1_put;
  output RDY_b2c_1_put;

  // action method b2c_2_put
  input  b2c_2_put;
  input  EN_b2c_2_put;
  output RDY_b2c_2_put;

  // actionvalue method c2b_0_get
  input  EN_c2b_0_get;
  output c2b_0_get;
  output RDY_c2b_0_get;

  // actionvalue method c2b_1_get
  input  EN_c2b_1_get;
  output c2b_1_get;
  output RDY_c2b_1_get;

  // actionvalue method c2b_2_get
  input  EN_c2b_2_get;
  output c2b_2_get;
  output RDY_c2b_2_get;

  // signals for module outputs
  wire RDY_b2c_0_put,
       RDY_b2c_1_put,
       RDY_b2c_2_put,
       RDY_c2b_0_get,
       RDY_c2b_1_get,
       RDY_c2b_2_get,
       c2b_0_get,
       c2b_1_get,
       c2b_2_get;

  // ports of submodule vffB2C_0
  wire vffB2C_0$CLR,
       vffB2C_0$DEQ,
       vffB2C_0$D_IN,
       vffB2C_0$D_OUT,
       vffB2C_0$EMPTY_N,
       vffB2C_0$ENQ,
       vffB2C_0$FULL_N;

  // ports of submodule vffB2C_1
  wire vffB2C_1$CLR,
       vffB2C_1$DEQ,
       vffB2C_1$D_IN,
       vffB2C_1$D_OUT,
       vffB2C_1$EMPTY_N,
       vffB2C_1$ENQ,
       vffB2C_1$FULL_N;

  // ports of submodule vffB2C_2
  wire vffB2C_2$CLR,
       vffB2C_2$DEQ,
       vffB2C_2$D_IN,
       vffB2C_2$D_OUT,
       vffB2C_2$EMPTY_N,
       vffB2C_2$ENQ,
       vffB2C_2$FULL_N;

  // ports of submodule vffC2B_0
  wire vffC2B_0$CLR,
       vffC2B_0$DEQ,
       vffC2B_0$D_IN,
       vffC2B_0$D_OUT,
       vffC2B_0$EMPTY_N,
       vffC2B_0$ENQ,
       vffC2B_0$FULL_N;

  // ports of submodule vffC2B_1
  wire vffC2B_1$CLR,
       vffC2B_1$DEQ,
       vffC2B_1$D_IN,
       vffC2B_1$D_OUT,
       vffC2B_1$EMPTY_N,
       vffC2B_1$ENQ,
       vffC2B_1$FULL_N;

  // ports of submodule vffC2B_2
  wire vffC2B_2$CLR,
       vffC2B_2$DEQ,
       vffC2B_2$D_IN,
       vffC2B_2$D_OUT,
       vffC2B_2$EMPTY_N,
       vffC2B_2$ENQ,
       vffC2B_2$FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_rlProcessIteration,
       CAN_FIRE_b2c_0_put,
       CAN_FIRE_b2c_1_put,
       CAN_FIRE_b2c_2_put,
       CAN_FIRE_c2b_0_get,
       CAN_FIRE_c2b_1_get,
       CAN_FIRE_c2b_2_get,
       WILL_FIRE_RL_rlProcessIteration,
       WILL_FIRE_b2c_0_put,
       WILL_FIRE_b2c_1_put,
       WILL_FIRE_b2c_2_put,
       WILL_FIRE_c2b_0_get,
       WILL_FIRE_c2b_1_get,
       WILL_FIRE_c2b_2_get;

  // remaining internal signals
  wire [2 : 0] fnChkNodeCore___d16;
  wire vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9;

  // action method b2c_0_put
  assign RDY_b2c_0_put = vffB2C_0$FULL_N ;
  assign CAN_FIRE_b2c_0_put = vffB2C_0$FULL_N ;
  assign WILL_FIRE_b2c_0_put = EN_b2c_0_put ;

  // action method b2c_1_put
  assign RDY_b2c_1_put = vffB2C_1$FULL_N ;
  assign CAN_FIRE_b2c_1_put = vffB2C_1$FULL_N ;
  assign WILL_FIRE_b2c_1_put = EN_b2c_1_put ;

  // action method b2c_2_put
  assign RDY_b2c_2_put = vffB2C_2$FULL_N ;
  assign CAN_FIRE_b2c_2_put = vffB2C_2$FULL_N ;
  assign WILL_FIRE_b2c_2_put = EN_b2c_2_put ;

  // actionvalue method c2b_0_get
  assign c2b_0_get = vffC2B_0$D_OUT ;
  assign RDY_c2b_0_get = vffC2B_0$EMPTY_N ;
  assign CAN_FIRE_c2b_0_get = vffC2B_0$EMPTY_N ;
  assign WILL_FIRE_c2b_0_get = EN_c2b_0_get ;

  // actionvalue method c2b_1_get
  assign c2b_1_get = vffC2B_1$D_OUT ;
  assign RDY_c2b_1_get = vffC2B_1$EMPTY_N ;
  assign CAN_FIRE_c2b_1_get = vffC2B_1$EMPTY_N ;
  assign WILL_FIRE_c2b_1_get = EN_c2b_1_get ;

  // actionvalue method c2b_2_get
  assign c2b_2_get = vffC2B_2$D_OUT ;
  assign RDY_c2b_2_get = vffC2B_2$EMPTY_N ;
  assign CAN_FIRE_c2b_2_get = vffC2B_2$EMPTY_N ;
  assign WILL_FIRE_c2b_2_get = EN_c2b_2_get ;

  // submodule vffB2C_0
  FIFO2 #(.width(32'd1), .guarded(32'd1)) vffB2C_0(.RST(RST_N),
						   .CLK(CLK),
						   .D_IN(vffB2C_0$D_IN),
						   .ENQ(vffB2C_0$ENQ),
						   .DEQ(vffB2C_0$DEQ),
						   .CLR(vffB2C_0$CLR),
						   .D_OUT(vffB2C_0$D_OUT),
						   .FULL_N(vffB2C_0$FULL_N),
						   .EMPTY_N(vffB2C_0$EMPTY_N));

  // submodule vffB2C_1
  FIFO2 #(.width(32'd1), .guarded(32'd1)) vffB2C_1(.RST(RST_N),
						   .CLK(CLK),
						   .D_IN(vffB2C_1$D_IN),
						   .ENQ(vffB2C_1$ENQ),
						   .DEQ(vffB2C_1$DEQ),
						   .CLR(vffB2C_1$CLR),
						   .D_OUT(vffB2C_1$D_OUT),
						   .FULL_N(vffB2C_1$FULL_N),
						   .EMPTY_N(vffB2C_1$EMPTY_N));

  // submodule vffB2C_2
  FIFO2 #(.width(32'd1), .guarded(32'd1)) vffB2C_2(.RST(RST_N),
						   .CLK(CLK),
						   .D_IN(vffB2C_2$D_IN),
						   .ENQ(vffB2C_2$ENQ),
						   .DEQ(vffB2C_2$DEQ),
						   .CLR(vffB2C_2$CLR),
						   .D_OUT(vffB2C_2$D_OUT),
						   .FULL_N(vffB2C_2$FULL_N),
						   .EMPTY_N(vffB2C_2$EMPTY_N));

  // submodule vffC2B_0
  FIFO2 #(.width(32'd1), .guarded(32'd1)) vffC2B_0(.RST(RST_N),
						   .CLK(CLK),
						   .D_IN(vffC2B_0$D_IN),
						   .ENQ(vffC2B_0$ENQ),
						   .DEQ(vffC2B_0$DEQ),
						   .CLR(vffC2B_0$CLR),
						   .D_OUT(vffC2B_0$D_OUT),
						   .FULL_N(vffC2B_0$FULL_N),
						   .EMPTY_N(vffC2B_0$EMPTY_N));

  // submodule vffC2B_1
  FIFO2 #(.width(32'd1), .guarded(32'd1)) vffC2B_1(.RST(RST_N),
						   .CLK(CLK),
						   .D_IN(vffC2B_1$D_IN),
						   .ENQ(vffC2B_1$ENQ),
						   .DEQ(vffC2B_1$DEQ),
						   .CLR(vffC2B_1$CLR),
						   .D_OUT(vffC2B_1$D_OUT),
						   .FULL_N(vffC2B_1$FULL_N),
						   .EMPTY_N(vffC2B_1$EMPTY_N));

  // submodule vffC2B_2
  FIFO2 #(.width(32'd1), .guarded(32'd1)) vffC2B_2(.RST(RST_N),
						   .CLK(CLK),
						   .D_IN(vffC2B_2$D_IN),
						   .ENQ(vffC2B_2$ENQ),
						   .DEQ(vffC2B_2$DEQ),
						   .CLR(vffC2B_2$CLR),
						   .D_OUT(vffC2B_2$D_OUT),
						   .FULL_N(vffC2B_2$FULL_N),
						   .EMPTY_N(vffC2B_2$EMPTY_N));

  // rule RL_rlProcessIteration
  assign CAN_FIRE_RL_rlProcessIteration =
	     vffB2C_0$EMPTY_N && vffB2C_1$EMPTY_N &&
	     vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9 ;
  assign WILL_FIRE_RL_rlProcessIteration = CAN_FIRE_RL_rlProcessIteration ;

  // submodule vffB2C_0
  assign vffB2C_0$D_IN = b2c_0_put ;
  assign vffB2C_0$ENQ = EN_b2c_0_put ;
  assign vffB2C_0$DEQ = CAN_FIRE_RL_rlProcessIteration ;
  assign vffB2C_0$CLR = 1'b0 ;

  // submodule vffB2C_1
  assign vffB2C_1$D_IN = b2c_1_put ;
  assign vffB2C_1$ENQ = EN_b2c_1_put ;
  assign vffB2C_1$DEQ = CAN_FIRE_RL_rlProcessIteration ;
  assign vffB2C_1$CLR = 1'b0 ;

  // submodule vffB2C_2
  assign vffB2C_2$D_IN = b2c_2_put ;
  assign vffB2C_2$ENQ = EN_b2c_2_put ;
  assign vffB2C_2$DEQ = CAN_FIRE_RL_rlProcessIteration ;
  assign vffB2C_2$CLR = 1'b0 ;

  // submodule vffC2B_0
  assign vffC2B_0$D_IN = fnChkNodeCore___d16[0] ;
  assign vffC2B_0$ENQ =
	     vffB2C_0$EMPTY_N && vffB2C_1$EMPTY_N &&
	     vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9 ;
  assign vffC2B_0$DEQ = EN_c2b_0_get ;
  assign vffC2B_0$CLR = 1'b0 ;

  // submodule vffC2B_1
  assign vffC2B_1$D_IN = fnChkNodeCore___d16[1] ;
  assign vffC2B_1$ENQ =
	     vffB2C_0$EMPTY_N && vffB2C_1$EMPTY_N &&
	     vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9 ;
  assign vffC2B_1$DEQ = EN_c2b_1_get ;
  assign vffC2B_1$CLR = 1'b0 ;

  // submodule vffC2B_2
  assign vffC2B_2$D_IN = fnChkNodeCore___d16[2] ;
  assign vffC2B_2$ENQ =
	     vffB2C_0$EMPTY_N && vffB2C_1$EMPTY_N &&
	     vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9 ;
  assign vffC2B_2$DEQ = EN_c2b_2_get ;
  assign vffC2B_2$CLR = 1'b0 ;

  // remaining internal signals
  module_fnChkNodeCore instance_fnChkNodeCore_0(.fnChkNodeCore_i({ vffB2C_2$D_OUT,
								   vffB2C_1$D_OUT,
								   vffB2C_0$D_OUT }),
						.fnChkNodeCore(fnChkNodeCore___d16));
  assign vffB2C_2_i_notEmpty_AND_vffC2B_0_i_notFull_AND_ETC___d9 =
	     vffB2C_2$EMPTY_N && vffC2B_0$FULL_N && vffC2B_1$FULL_N &&
	     vffC2B_2$FULL_N ;
endmodule  // mkChkNode

