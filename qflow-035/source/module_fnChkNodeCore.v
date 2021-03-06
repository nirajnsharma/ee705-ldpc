//
// Generated by Bluespec Compiler, version 2018.10.beta1 (build e1df8052c, 2018-10-17)
//
// On Sat Apr 27 13:13:11 IST 2019
//
//
// Ports:
// Name                         I/O  size props
// fnChkNodeCore                  O     3
// fnChkNodeCore_i                I     3
//
// Combinational paths from inputs to outputs:
//   fnChkNodeCore_i -> fnChkNodeCore
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

module module_fnChkNodeCore(fnChkNodeCore_i,
			    fnChkNodeCore);
  // value method fnChkNodeCore
  input  [2 : 0] fnChkNodeCore_i;
  output [2 : 0] fnChkNodeCore;

  // signals for module outputs
  wire [2 : 0] fnChkNodeCore;

  // value method fnChkNodeCore
  assign fnChkNodeCore =
	     { fnChkNodeCore_i[0] ^ fnChkNodeCore_i[1],
	       fnChkNodeCore_i[0] ^ fnChkNodeCore_i[2],
	       fnChkNodeCore_i[1] ^ fnChkNodeCore_i[2] } ;
endmodule  // module_fnChkNodeCore

