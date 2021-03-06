//
// Generated by Bluespec Compiler, version 2018.10.beta1 (build e1df8052c, 2018-10-17)
//
// On Wed May  1 14:03:29 IST 2019
//
//
// Ports:
// Name                         I/O  size props
// CLK                            I     1 clock
// RST_N                          I     1 reset
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

module mkLdpcTopTb(CLK,
		   RST_N);
  input  CLK;
  input  RST_N;

  // inlined wires
  wire start_wire$whas, state_set_pw$whas;

  // register jj_1_delay_count
  reg [4 : 0] jj_1_delay_count;
  wire [4 : 0] jj_1_delay_count$D_IN;
  wire jj_1_delay_count$EN;

  // register jj_delay_count
  reg [6 : 0] jj_delay_count;
  wire [6 : 0] jj_delay_count$D_IN;
  wire jj_delay_count$EN;

  // register running
  reg running;
  wire running$D_IN, running$EN;

  // register start_reg
  reg start_reg;
  wire start_reg$D_IN, start_reg$EN;

  // register start_reg_1
  reg start_reg_1;
  wire start_reg_1$D_IN, start_reg_1$EN;

  // register state_can_overlap
  reg state_can_overlap;
  wire state_can_overlap$D_IN, state_can_overlap$EN;

  // register state_fired
  reg state_fired;
  wire state_fired$D_IN, state_fired$EN;

  // register state_mkFSMstate
  reg [3 : 0] state_mkFSMstate;
  reg [3 : 0] state_mkFSMstate$D_IN;
  wire state_mkFSMstate$EN;

  // ports of submodule dut
  reg [31 : 0] dut$req_wdata;
  reg [1 : 0] dut$req_addr;
  wire dut$req_rd_cmd, dut$req_wr_cmd;

  // rule scheduling signals
  wire CAN_FIRE_RL_action_d_init_np,
       CAN_FIRE_RL_action_d_init_np_1,
       CAN_FIRE_RL_action_l14c13,
       CAN_FIRE_RL_action_l16c13,
       CAN_FIRE_RL_action_l18c13,
       CAN_FIRE_RL_action_l23c13,
       CAN_FIRE_RL_action_l26c13,
       CAN_FIRE_RL_action_np,
       CAN_FIRE_RL_action_np_1,
       CAN_FIRE_RL_auto_finish,
       CAN_FIRE_RL_auto_start,
       CAN_FIRE_RL_fsm_start,
       CAN_FIRE_RL_idle_l11c7,
       CAN_FIRE_RL_idle_l11c7_1,
       CAN_FIRE_RL_restart,
       CAN_FIRE_RL_start_reg__dreg_update,
       CAN_FIRE_RL_state_every,
       CAN_FIRE_RL_state_fired__dreg_update,
       CAN_FIRE_RL_state_handle_abort,
       CAN_FIRE___me_check_10,
       CAN_FIRE___me_check_11,
       CAN_FIRE___me_check_12,
       CAN_FIRE___me_check_5,
       CAN_FIRE___me_check_6,
       CAN_FIRE___me_check_7,
       CAN_FIRE___me_check_8,
       CAN_FIRE___me_check_9,
       WILL_FIRE_RL_action_d_init_np,
       WILL_FIRE_RL_action_d_init_np_1,
       WILL_FIRE_RL_action_l14c13,
       WILL_FIRE_RL_action_l16c13,
       WILL_FIRE_RL_action_l18c13,
       WILL_FIRE_RL_action_l23c13,
       WILL_FIRE_RL_action_l26c13,
       WILL_FIRE_RL_action_np,
       WILL_FIRE_RL_action_np_1,
       WILL_FIRE_RL_auto_finish,
       WILL_FIRE_RL_auto_start,
       WILL_FIRE_RL_fsm_start,
       WILL_FIRE_RL_idle_l11c7,
       WILL_FIRE_RL_idle_l11c7_1,
       WILL_FIRE_RL_restart,
       WILL_FIRE_RL_start_reg__dreg_update,
       WILL_FIRE_RL_state_every,
       WILL_FIRE_RL_state_fired__dreg_update,
       WILL_FIRE_RL_state_handle_abort,
       WILL_FIRE___me_check_10,
       WILL_FIRE___me_check_11,
       WILL_FIRE___me_check_12,
       WILL_FIRE___me_check_5,
       WILL_FIRE___me_check_6,
       WILL_FIRE___me_check_7,
       WILL_FIRE___me_check_8,
       WILL_FIRE___me_check_9;

  // inputs to muxes for submodule ports
  wire [6 : 0] MUX_jj_delay_count$write_1__VAL_1;
  wire [4 : 0] MUX_jj_1_delay_count$write_1__VAL_1;
  wire MUX_state_mkFSMstate$write_1__SEL_1;

  // remaining internal signals
  wire abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d83;

  // submodule dut
  mkLdpcTop dut(.CLK(CLK),
		.RST_N(RST_N),
		.req_addr(dut$req_addr),
		.req_rd_cmd(dut$req_rd_cmd),
		.req_wdata(dut$req_wdata),
		.req_wr_cmd(dut$req_wr_cmd),
		.readdata());

  // rule RL_restart
  assign CAN_FIRE_RL_restart = start_reg_1 && !state_fired ;
  assign WILL_FIRE_RL_restart = CAN_FIRE_RL_restart ;

  // rule RL_action_l16c13
  assign CAN_FIRE_RL_action_l16c13 = state_mkFSMstate == 4'd1 ;
  assign WILL_FIRE_RL_action_l16c13 = CAN_FIRE_RL_action_l16c13 ;

  // rule RL_action_l18c13
  assign CAN_FIRE_RL_action_l18c13 = state_mkFSMstate == 4'd2 ;
  assign WILL_FIRE_RL_action_l18c13 = CAN_FIRE_RL_action_l18c13 ;

  // rule RL_action_d_init_np
  assign CAN_FIRE_RL_action_d_init_np = state_mkFSMstate == 4'd3 ;
  assign WILL_FIRE_RL_action_d_init_np = CAN_FIRE_RL_action_d_init_np ;

  // rule RL_action_np
  assign CAN_FIRE_RL_action_np =
	     jj_delay_count != 7'd99 &&
	     (state_mkFSMstate == 4'd4 || state_mkFSMstate == 4'd5) ;
  assign WILL_FIRE_RL_action_np = CAN_FIRE_RL_action_np ;

  // rule RL_action_l23c13
  assign CAN_FIRE_RL_action_l23c13 =
	     jj_delay_count == 7'd99 &&
	     (state_mkFSMstate == 4'd4 || state_mkFSMstate == 4'd5) ;
  assign WILL_FIRE_RL_action_l23c13 = CAN_FIRE_RL_action_l23c13 ;

  // rule RL_action_l26c13
  assign CAN_FIRE_RL_action_l26c13 = state_mkFSMstate == 4'd6 ;
  assign WILL_FIRE_RL_action_l26c13 = CAN_FIRE_RL_action_l26c13 ;

  // rule RL_action_d_init_np_1
  assign CAN_FIRE_RL_action_d_init_np_1 = state_mkFSMstate == 4'd7 ;
  assign WILL_FIRE_RL_action_d_init_np_1 = CAN_FIRE_RL_action_d_init_np_1 ;

  // rule RL_action_np_1
  assign CAN_FIRE_RL_action_np_1 =
	     !jj_1_delay_count[4] &&
	     (state_mkFSMstate == 4'd8 || state_mkFSMstate == 4'd9) ;
  assign WILL_FIRE_RL_action_np_1 = CAN_FIRE_RL_action_np_1 ;

  // rule __me_check_6
  assign CAN_FIRE___me_check_6 = 1'b1 ;
  assign WILL_FIRE___me_check_6 = 1'b1 ;

  // rule __me_check_7
  assign CAN_FIRE___me_check_7 = 1'b1 ;
  assign WILL_FIRE___me_check_7 = 1'b1 ;

  // rule __me_check_8
  assign CAN_FIRE___me_check_8 = 1'b1 ;
  assign WILL_FIRE___me_check_8 = 1'b1 ;

  // rule __me_check_9
  assign CAN_FIRE___me_check_9 = 1'b1 ;
  assign WILL_FIRE___me_check_9 = 1'b1 ;

  // rule __me_check_11
  assign CAN_FIRE___me_check_11 = 1'b1 ;
  assign WILL_FIRE___me_check_11 = 1'b1 ;

  // rule __me_check_10
  assign CAN_FIRE___me_check_10 = 1'b1 ;
  assign WILL_FIRE___me_check_10 = 1'b1 ;

  // rule __me_check_12
  assign CAN_FIRE___me_check_12 = 1'b1 ;
  assign WILL_FIRE___me_check_12 = 1'b1 ;

  // rule RL_fsm_start
  assign CAN_FIRE_RL_fsm_start =
	     abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d83 &&
	     start_reg ;
  assign WILL_FIRE_RL_fsm_start = CAN_FIRE_RL_fsm_start ;

  // rule RL_action_l14c13
  assign CAN_FIRE_RL_action_l14c13 =
	     start_wire$whas && state_mkFSMstate == 4'd0 ||
	     jj_1_delay_count[4] && start_wire$whas &&
	     state_mkFSMstate == 4'd8 ||
	     jj_1_delay_count[4] && start_wire$whas &&
	     state_mkFSMstate == 4'd9 ;
  assign WILL_FIRE_RL_action_l14c13 = CAN_FIRE_RL_action_l14c13 ;

  // rule __me_check_5
  assign CAN_FIRE___me_check_5 = 1'b1 ;
  assign WILL_FIRE___me_check_5 = 1'b1 ;

  // rule RL_idle_l11c7
  assign CAN_FIRE_RL_idle_l11c7 =
	     jj_1_delay_count[4] && !start_wire$whas &&
	     state_mkFSMstate == 4'd8 ;
  assign WILL_FIRE_RL_idle_l11c7 = CAN_FIRE_RL_idle_l11c7 ;

  // rule RL_idle_l11c7_1
  assign CAN_FIRE_RL_idle_l11c7_1 =
	     jj_1_delay_count[4] && !start_wire$whas &&
	     state_mkFSMstate == 4'd9 ;
  assign WILL_FIRE_RL_idle_l11c7_1 = CAN_FIRE_RL_idle_l11c7_1 ;

  // rule RL_auto_start
  assign CAN_FIRE_RL_auto_start =
	     abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d83 &&
	     !start_reg &&
	     !running ;
  assign WILL_FIRE_RL_auto_start = CAN_FIRE_RL_auto_start ;

  // rule RL_auto_finish
  assign CAN_FIRE_RL_auto_finish =
	     running &&
	     abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d83 &&
	     !start_reg ;
  assign WILL_FIRE_RL_auto_finish = CAN_FIRE_RL_auto_finish ;

  // rule RL_start_reg__dreg_update
  assign CAN_FIRE_RL_start_reg__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_start_reg__dreg_update = 1'd1 ;

  // rule RL_state_handle_abort
  assign CAN_FIRE_RL_state_handle_abort = 1'b0 ;
  assign WILL_FIRE_RL_state_handle_abort = 1'b0 ;

  // rule RL_state_every
  assign CAN_FIRE_RL_state_every = 1'd1 ;
  assign WILL_FIRE_RL_state_every = 1'd1 ;

  // rule RL_state_fired__dreg_update
  assign CAN_FIRE_RL_state_fired__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_state_fired__dreg_update = 1'd1 ;

  // inputs to muxes for submodule ports
  assign MUX_state_mkFSMstate$write_1__SEL_1 =
	     WILL_FIRE_RL_idle_l11c7_1 || WILL_FIRE_RL_idle_l11c7 ;
  assign MUX_jj_1_delay_count$write_1__VAL_1 =
	     { jj_1_delay_count[3:0], 1'd0 } ;
  assign MUX_jj_delay_count$write_1__VAL_1 = jj_delay_count + 7'd1 ;

  // inlined wires
  assign start_wire$whas = WILL_FIRE_RL_fsm_start || WILL_FIRE_RL_restart ;
  assign state_set_pw$whas =
	     WILL_FIRE_RL_idle_l11c7_1 || WILL_FIRE_RL_idle_l11c7 ||
	     WILL_FIRE_RL_action_np_1 ||
	     WILL_FIRE_RL_action_d_init_np_1 ||
	     WILL_FIRE_RL_action_l26c13 ||
	     WILL_FIRE_RL_action_l23c13 ||
	     WILL_FIRE_RL_action_np ||
	     WILL_FIRE_RL_action_d_init_np ||
	     WILL_FIRE_RL_action_l18c13 ||
	     WILL_FIRE_RL_action_l16c13 ||
	     WILL_FIRE_RL_action_l14c13 ;

  // register jj_1_delay_count
  assign jj_1_delay_count$D_IN =
	     WILL_FIRE_RL_action_np_1 ?
	       MUX_jj_1_delay_count$write_1__VAL_1 :
	       5'd1 ;
  assign jj_1_delay_count$EN =
	     WILL_FIRE_RL_action_np_1 || WILL_FIRE_RL_action_d_init_np_1 ;

  // register jj_delay_count
  assign jj_delay_count$D_IN =
	     WILL_FIRE_RL_action_np ?
	       MUX_jj_delay_count$write_1__VAL_1 :
	       7'd0 ;
  assign jj_delay_count$EN =
	     WILL_FIRE_RL_action_np || WILL_FIRE_RL_action_d_init_np ;

  // register running
  assign running$D_IN = 1'd1 ;
  assign running$EN = CAN_FIRE_RL_auto_start ;

  // register start_reg
  assign start_reg$D_IN = !WILL_FIRE_RL_fsm_start ;
  assign start_reg$EN = WILL_FIRE_RL_fsm_start || WILL_FIRE_RL_auto_start ;

  // register start_reg_1
  assign start_reg_1$D_IN = start_wire$whas ;
  assign start_reg_1$EN = 1'd1 ;

  // register state_can_overlap
  assign state_can_overlap$D_IN = state_set_pw$whas || state_can_overlap ;
  assign state_can_overlap$EN = 1'd1 ;

  // register state_fired
  assign state_fired$D_IN = state_set_pw$whas ;
  assign state_fired$EN = 1'd1 ;

  // register state_mkFSMstate
  always@(MUX_state_mkFSMstate$write_1__SEL_1 or
	  WILL_FIRE_RL_action_l14c13 or
	  WILL_FIRE_RL_action_l16c13 or
	  WILL_FIRE_RL_action_l18c13 or
	  WILL_FIRE_RL_action_d_init_np or
	  WILL_FIRE_RL_action_np or
	  WILL_FIRE_RL_action_l23c13 or
	  WILL_FIRE_RL_action_l26c13 or
	  WILL_FIRE_RL_action_d_init_np_1 or WILL_FIRE_RL_action_np_1)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_state_mkFSMstate$write_1__SEL_1: state_mkFSMstate$D_IN = 4'd0;
      WILL_FIRE_RL_action_l14c13: state_mkFSMstate$D_IN = 4'd1;
      WILL_FIRE_RL_action_l16c13: state_mkFSMstate$D_IN = 4'd2;
      WILL_FIRE_RL_action_l18c13: state_mkFSMstate$D_IN = 4'd3;
      WILL_FIRE_RL_action_d_init_np: state_mkFSMstate$D_IN = 4'd4;
      WILL_FIRE_RL_action_np: state_mkFSMstate$D_IN = 4'd5;
      WILL_FIRE_RL_action_l23c13: state_mkFSMstate$D_IN = 4'd6;
      WILL_FIRE_RL_action_l26c13: state_mkFSMstate$D_IN = 4'd7;
      WILL_FIRE_RL_action_d_init_np_1: state_mkFSMstate$D_IN = 4'd8;
      WILL_FIRE_RL_action_np_1: state_mkFSMstate$D_IN = 4'd9;
      default: state_mkFSMstate$D_IN = 4'b1010 /* unspecified value */ ;
    endcase
  end
  assign state_mkFSMstate$EN =
	     WILL_FIRE_RL_idle_l11c7_1 || WILL_FIRE_RL_idle_l11c7 ||
	     WILL_FIRE_RL_action_l14c13 ||
	     WILL_FIRE_RL_action_l16c13 ||
	     WILL_FIRE_RL_action_l18c13 ||
	     WILL_FIRE_RL_action_d_init_np ||
	     WILL_FIRE_RL_action_np ||
	     WILL_FIRE_RL_action_l23c13 ||
	     WILL_FIRE_RL_action_l26c13 ||
	     WILL_FIRE_RL_action_d_init_np_1 ||
	     WILL_FIRE_RL_action_np_1 ;

  // submodule dut
  always@(WILL_FIRE_RL_action_l18c13 or
	  WILL_FIRE_RL_action_l16c13 or
	  WILL_FIRE_RL_action_l23c13 or
	  WILL_FIRE_RL_action_l14c13 or WILL_FIRE_RL_action_l26c13)
  begin
    case (1'b1) // synopsys parallel_case
      WILL_FIRE_RL_action_l18c13 || WILL_FIRE_RL_action_l16c13 ||
      WILL_FIRE_RL_action_l23c13:
	  dut$req_addr = 2'h0;
      WILL_FIRE_RL_action_l14c13: dut$req_addr = 2'h1;
      WILL_FIRE_RL_action_l26c13: dut$req_addr = 2'h2;
      default: dut$req_addr = 2'b10 /* unspecified value */ ;
    endcase
  end
  assign dut$req_rd_cmd =
	     !WILL_FIRE_RL_action_l18c13 && !WILL_FIRE_RL_action_l16c13 &&
	     !WILL_FIRE_RL_action_l14c13 ;
  always@(WILL_FIRE_RL_action_l23c13 or
	  WILL_FIRE_RL_action_l26c13 or
	  WILL_FIRE_RL_action_l18c13 or
	  WILL_FIRE_RL_action_l16c13 or WILL_FIRE_RL_action_l14c13)
  begin
    case (1'b1) // synopsys parallel_case
      WILL_FIRE_RL_action_l23c13 || WILL_FIRE_RL_action_l26c13:
	  dut$req_wdata = 32'h0;
      WILL_FIRE_RL_action_l18c13 || WILL_FIRE_RL_action_l16c13:
	  dut$req_wdata = 32'h00000001;
      WILL_FIRE_RL_action_l14c13: dut$req_wdata = 32'h00000055;
      default: dut$req_wdata = 32'hAAAAAAAA /* unspecified value */ ;
    endcase
  end
  assign dut$req_wr_cmd =
	     !WILL_FIRE_RL_action_l18c13 && !WILL_FIRE_RL_action_l23c13 &&
	     !WILL_FIRE_RL_action_l26c13 ;

  // remaining internal signals
  assign abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d83 =
	     (state_mkFSMstate == 4'd0 ||
	      jj_1_delay_count[4] && state_mkFSMstate == 4'd8 ||
	      jj_1_delay_count[4] && state_mkFSMstate == 4'd9) &&
	     (!start_reg_1 || state_fired) ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        jj_1_delay_count <= `BSV_ASSIGNMENT_DELAY 5'd1;
	jj_delay_count <= `BSV_ASSIGNMENT_DELAY 7'd0;
	running <= `BSV_ASSIGNMENT_DELAY 1'd0;
	start_reg <= `BSV_ASSIGNMENT_DELAY 1'd0;
	start_reg_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	state_can_overlap <= `BSV_ASSIGNMENT_DELAY 1'd1;
	state_fired <= `BSV_ASSIGNMENT_DELAY 1'd0;
	state_mkFSMstate <= `BSV_ASSIGNMENT_DELAY 4'd0;
      end
    else
      begin
        if (jj_1_delay_count$EN)
	  jj_1_delay_count <= `BSV_ASSIGNMENT_DELAY jj_1_delay_count$D_IN;
	if (jj_delay_count$EN)
	  jj_delay_count <= `BSV_ASSIGNMENT_DELAY jj_delay_count$D_IN;
	if (running$EN) running <= `BSV_ASSIGNMENT_DELAY running$D_IN;
	if (start_reg$EN) start_reg <= `BSV_ASSIGNMENT_DELAY start_reg$D_IN;
	if (start_reg_1$EN)
	  start_reg_1 <= `BSV_ASSIGNMENT_DELAY start_reg_1$D_IN;
	if (state_can_overlap$EN)
	  state_can_overlap <= `BSV_ASSIGNMENT_DELAY state_can_overlap$D_IN;
	if (state_fired$EN)
	  state_fired <= `BSV_ASSIGNMENT_DELAY state_fired$D_IN;
	if (state_mkFSMstate$EN)
	  state_mkFSMstate <= `BSV_ASSIGNMENT_DELAY state_mkFSMstate$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    jj_1_delay_count = 5'h0A;
    jj_delay_count = 7'h2A;
    running = 1'h0;
    start_reg = 1'h0;
    start_reg_1 = 1'h0;
    state_can_overlap = 1'h0;
    state_fired = 1'h0;
    state_mkFSMstate = 4'hA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_l16c13 &&
	  (WILL_FIRE_RL_action_l18c13 || WILL_FIRE_RL_action_d_init_np ||
	   WILL_FIRE_RL_action_np ||
	   WILL_FIRE_RL_action_l23c13 ||
	   WILL_FIRE_RL_action_l26c13 ||
	   WILL_FIRE_RL_action_d_init_np_1 ||
	   WILL_FIRE_RL_action_np_1))
	$display("Error: \"LdpcTopTb.bsv\", line 16, column 13: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_l16c13] and\n  [RL_action_l18c13, RL_action_d_init_np, RL_action_np, RL_action_l23c13,\n  RL_action_l26c13, RL_action_d_init_np_1, RL_action_np_1] ) fired in the same\n  clock cycle.\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_l18c13 &&
	  (WILL_FIRE_RL_action_d_init_np || WILL_FIRE_RL_action_np ||
	   WILL_FIRE_RL_action_l23c13 ||
	   WILL_FIRE_RL_action_l26c13 ||
	   WILL_FIRE_RL_action_d_init_np_1 ||
	   WILL_FIRE_RL_action_np_1))
	$display("Error: \"LdpcTopTb.bsv\", line 18, column 13: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_l18c13] and\n  [RL_action_d_init_np, RL_action_np, RL_action_l23c13, RL_action_l26c13,\n  RL_action_d_init_np_1, RL_action_np_1] ) fired in the same clock cycle.\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_d_init_np &&
	  (WILL_FIRE_RL_action_np || WILL_FIRE_RL_action_l23c13 ||
	   WILL_FIRE_RL_action_l26c13 ||
	   WILL_FIRE_RL_action_d_init_np_1 ||
	   WILL_FIRE_RL_action_np_1))
	$display("Error: \"StmtFSM.bs\", line 41, column 0: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_d_init_np] and\n  [RL_action_np, RL_action_l23c13, RL_action_l26c13, RL_action_d_init_np_1,\n  RL_action_np_1] ) fired in the same clock cycle.\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_np &&
	  (WILL_FIRE_RL_action_l23c13 || WILL_FIRE_RL_action_l26c13 ||
	   WILL_FIRE_RL_action_d_init_np_1 ||
	   WILL_FIRE_RL_action_np_1))
	$display("Error: \"StmtFSM.bs\", line 41, column 0: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_np] and\n  [RL_action_l23c13, RL_action_l26c13, RL_action_d_init_np_1, RL_action_np_1]\n  ) fired in the same clock cycle.\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_l26c13 &&
	  (WILL_FIRE_RL_action_d_init_np_1 || WILL_FIRE_RL_action_np_1))
	$display("Error: \"LdpcTopTb.bsv\", line 26, column 13: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_l26c13] and\n  [RL_action_d_init_np_1, RL_action_np_1] ) fired in the same clock cycle.\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_l23c13 &&
	  (WILL_FIRE_RL_action_l26c13 || WILL_FIRE_RL_action_d_init_np_1 ||
	   WILL_FIRE_RL_action_np_1))
	$display("Error: \"LdpcTopTb.bsv\", line 23, column 13: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_l23c13] and\n  [RL_action_l26c13, RL_action_d_init_np_1, RL_action_np_1] ) fired in the\n  same clock cycle.\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_d_init_np_1 && WILL_FIRE_RL_action_np_1)
	$display("Error: \"StmtFSM.bs\", line 41, column 0: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_d_init_np_1] and\n  [RL_action_np_1] ) fired in the same clock cycle.\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_l14c13 &&
	  (WILL_FIRE_RL_action_l16c13 || WILL_FIRE_RL_action_l18c13 ||
	   WILL_FIRE_RL_action_d_init_np ||
	   WILL_FIRE_RL_action_np ||
	   WILL_FIRE_RL_action_l23c13 ||
	   WILL_FIRE_RL_action_l26c13 ||
	   WILL_FIRE_RL_action_d_init_np_1 ||
	   WILL_FIRE_RL_action_np_1))
	$display("Error: \"LdpcTopTb.bsv\", line 14, column 13: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_l14c13] and\n  [RL_action_l16c13, RL_action_l18c13, RL_action_d_init_np, RL_action_np,\n  RL_action_l23c13, RL_action_l26c13, RL_action_d_init_np_1, RL_action_np_1] )\n  fired in the same clock cycle.\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_auto_finish) $finish(32'd0);
  end
  // synopsys translate_on
endmodule  // mkLdpcTopTb

