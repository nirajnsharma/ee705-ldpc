package LdpcTop;

import GetPut     :: *;
import ClientServer :: *;
import LdpcCore   :: *;
import LdpcTypes  :: *;

interface AvalonIfc;
   (* always_enabled, always_ready *)
   method Action req (Bit #(2) addr, Bit #(1) rd_cmd, Bit #(1) wr_cmd, Bit #(32) wdata);
   (* always_ready *)
   method Bit #(32) readdata;
endinterface

(* synthesize *)
module mkLdpcTop (AvalonIfc);

// This bit when set starts off the computation. Set by SW, clear by HW
Reg #(Bit #(1)) rg_go <- mkReg (0);
Reg #(Bit #(1)) rg_busy <- mkReg (0);

// This bit when set indicates that the task is complete. Set by HW, clear by SW
Reg #(Bit #(1)) rg_cmpl <- mkReg (0);

Reg #(Bit #(32)) rg_read_data <- mkReg (0);
Reg #(Bit #(7)) rg_op1      <- mkReg (0);
Reg #(Bit #(7)) rg_result   <- mkReg (0);

// Instantiate the core
LdpcCore core <- mkLdpcCore;

// Send request to core. The core has implicit condition which ensures that
// the core will only take in a new request if it is not busy
rule rl_req_to_core ((rg_busy == 1'b0) && (rg_go == 1'b1));
   core.request.put (unpack (rg_op1));
   rg_busy <= 1'b1;
endrule

// Receive response from core. Set the cmpl flag and clear the go flag
rule rl_rsp_from_core;
   let rsp <- core.response.get ();
   rg_result <= pack (rsp);
   rg_cmpl <= 1'b1;
   rg_busy <= 1'b0; rg_go <= 1'b0;
   $display ("(%0d): LdpcTop: Decoded code-word : %02h", $stime, pack (rsp));
endrule

// --------
// Interface
method Action req (Bit #(2) addr, Bit #(1) rd_cmd, Bit #(1) wr_cmd, Bit #(32) wdata);
   // A read from Avalon
   if ((rd_cmd == 1'b1) && (wr_cmd == 1'b0)) begin
      case (addr)
         2'b00 : rg_read_data <= extend ({rg_cmpl, rg_go});
         2'b01 : rg_read_data <= extend (rg_op1);
         2'b10 : rg_read_data <= extend (rg_result);             // result
         default: begin
            rg_read_data       <= 32'b0;
            $display ("LdpcTop: Bad read address: %03b", addr);
         end
      endcase
   end

   // A write from Avalon
   else if ((rd_cmd == 1'b0) && (wr_cmd == 1'b1)) begin
      case (addr)
         2'b00 : rg_go  <= truncate (wdata);
         2'b01 : begin
            rg_op1 <= truncate (wdata);
            $display ("(%0d): LdpcTop: Accepting code-word : %08h", $stime, wdata);
         end
         default: $display ("LdpcTop: Bad write address: %02b", addr);
      endcase
   end
endmethod

method Bit #(32) readdata;
   return (extend (rg_read_data));
endmethod
endmodule

endpackage
