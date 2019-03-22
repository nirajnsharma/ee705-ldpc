// EE705 - Course Project
// Node for LDPC decoder.

package Nodes;

import Vector :: *;

interface CheckNode # (numeric type nIncidence, numeric type nReverseIncidence);
   (* always_ready, always_enabled *)
   method Action b2c (Vector #(nIncidence, Bit #(1)) x);
   (* always_ready *)
   method Vector #(nReverseIncidence, Bit #(1)) c2b;
endinterface

interface BitNode # (numeric type nReverseIncidence, numeric type nIncidence);
   (* always_ready, always_enabled *)
   method Action c2b (Vector #(nReverseIncidence, Bit #(1)) x);
   (* always_ready *)
   method Vector #(nIncidence, Bit #(1)) b2c;
endinterface

module mkCheckNode #(Bit #(8) nodeId) (
      CheckNode #(nIncidence, nReverseIncidence)) provisos (
      Add #(a__, nReverseIncidence, nIncidence));
   // The nodeId identifies a node

   // Output register
   Reg #(Bit #(nReverseIncidence)) rg_y <- mkRegU;

   // interfaces
   // incoming bits from the bit-node
   method Action b2c (Vector #(nIncidence, Bit#(1)) x);
      // Just copying x to y for now with size adjustment
      // XXX replace with real operation
      rg_y <= unpack (truncate (pack (x)));
   endmethod

   // outgoing bits to the bit-node
   method Vector #(nReverseIncidence, Bit #(1)) c2b;
      return unpack (rg_y);
   endmethod
endmodule

module mkBitNode #(Bit #(8) nodeId) (
      BitNode #(nReverseIncidence, nIncidence)) provisos (
      Add #(a__, nReverseIncidence, nIncidence));
   // The nodeId identifies a node

   // Output register
   Reg #(Bit #(nIncidence)) rg_y <- mkRegU;

   // interfaces
   // incoming bits from the check-node
   method Action c2b (Vector #(nReverseIncidence, Bit#(1)) x);
      // Just copying x to y for now with size adjustment
      // XXX replace with real operation
      rg_y <= unpack (extend (pack (x)));
   endmethod

   // outgoing bits to the bit-node
   method Vector #(nIncidence, Bit #(1)) b2c;
      return unpack (rg_y);
   endmethod
endmodule

(* synthesize *)
module mkBitNode_5_7 #(Bit# (8) nodeId) (BitNode #(5,7));
   let _ifc <- mkBitNode (nodeId);
   return (_ifc);
endmodule

(* synthesize *)
module mkCheckNode_7_5 #(Bit# (8) nodeId) (CheckNode #(7,5));
   let _ifc <- mkCheckNode (nodeId);
   return (_ifc);
endmodule
endpackage
