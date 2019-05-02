package LdpcTopTb;
import LdpcTop :: *;
import StmtFSM :: *;

(* synthesize *)
module mkLdpcTopTb (Empty);
   // The DUT
   AvalonIfc dut <- mkLdpcTop;

   mkAutoFSM (
      seq
         // Test 1
         //       addr  read  write wdata
         dut.req (2'h1, 1'b0, 1'b1, 32'h0000_0055);
         //       addr  read  write wdata
         dut.req (2'h0, 1'b0, 1'b1, 32'h1);
         //       addr  read  write wdata -- to reset the request lines
         dut.req (2'h0, 1'b0, 1'b0, 32'h1);

         delay (100);

         //       addr  read  write wdata
         dut.req (2'h0, 1'b1, 1'b0, 32'h0);

         //       addr  read  write wdata
         dut.req (2'h2, 1'b1, 1'b0, 32'h0);

         delay (5);
      endseq
   );
endmodule
endpackage
