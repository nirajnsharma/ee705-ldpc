// EE-705 Course Project -- LDPC Decoder

package Nodes;

// -----------------------------------------------------------------
// This package defines:
//
//    ChkNode        : Interface to the Check Nodes
//    BitNode        : Interface to the Bit Nodes
//    mkChkNode      : Micro-arch of the Check Node
//    mkBitNode      : Micro-arch of the Bit Node
//    mkBitNodeCore  : Core computation of the Bit Node
//    mkChkNodeCore  : Core computation of the Check Node
//
//    v1.0           : The nodes can handle one code-word at a time
//
// -----------------------------------------------------------------

import ClientServer     :: *;
import GetPut           :: *;
import FIFO             :: *;
import Vector           :: *;
import LdpcTypes        :: *;

// NConnections indicates the number of connections that a particular
// check-node has with the bit-nodes
interface ChkNode;
   interface Vector #(NConnections, Put #(Symbol)) b2c;
   interface Vector #(NConnections, Get #(Symbol)) c2b;
endinterface

// NConnections indicates the number of connections that a particular
// bit-node has with the check-nodes
interface BitNode;
   // Bit Node-Check Node Interface
   interface Vector #(NConnections, Put #(Symbol)) c2b;
   interface Get #(Symbol) b2c;


   // External interfaces for receving code word and returning result
   interface Put     #(Symbol)   codeIn;
   interface Get     #(Symbol)   dataOut;

endinterface

// -----------------------------------------------------------------



// Core function of the bitNode
(* noinline *)
function Symbol fnBitNodeCore (Vector #(NConnections, Symbol) i);
   return ((i[1]&i[2])|(i[0]&i[2])|(i[0]&i[1]));
endfunction


//
// Bit Node Module definition
(* synthesize *)
module mkBitNode (BitNode);
   // Sub-modules and state
   // Input FIFO - code word
   FIFO  #(Symbol)   ffCodeIn    <- mkFIFO;

   // Output FIFO - decoded code word
   FIFO  #(Symbol)   ffDataOut   <- mkFIFO;

   // Partially processed codeword meant for the checknodes
   FIFO  #(Symbol)      ffB2C       <- mkFIFO;

   // Partially processed codeword from the checknodes
   Vector #(
        NConnections
      , FIFO #(Symbol)) vffC2B      <- replicateM (mkFIFO);

   // Rules and behaviour

   // Rule to process new data received from the top-level
   rule rlProcessNewData;
      // As this is the first iteration, consume the codeword which is
      // currently in ffCodeIn. Carry out the computation on the codeword
      let codeIn = ffCodeIn.first; ffCodeIn.deq;

      // Send the output to the check nodes
      ffB2C.enq (codeIn);
   endrule

   // -----------------------------------------------------------------

   (* mutually_exclusive = "rlProcessChkNodeResult, rlProcessNewData" *)

   // Rule to process remaining iterations
   rule rlProcessChkNodeResult;
      // As this iteration works of a partial result from the checknode,
      // the input comes from the vector of fifos vffC2B
      Vector #(NConnections, Symbol) codeIn;
      for (Integer i=0; i<valueOf(NConnections); i=i+1) begin
         codeIn[i] = vffC2B[i].first;
         vffC2B[i].deq;
      end

      // Send the processed code word to the output
      ffDataOut.enq (fnBitNodeCore (codeIn));
   endrule

   // -----------------------------------------------------------------

   // Interface
   interface codeIn     = toPut (ffCodeIn);
   interface dataOut    = toGet (ffDataOut);
   interface c2b        = map (toPut, vffC2B);
   interface b2c        = toGet (ffB2C);

   // -----------------------------------------------------------------

endmodule : mkBitNode

// -----------------------------------------------------------------

// Core function of the check-node
(* noinline *)
function Vector#(NConnections, Symbol) fnChkNodeCore (Vector #(NConnections, Symbol) i);
   Vector #(NConnections, Symbol) o = newVector;
   o[0]=i[1]^i[2];
   o[1]=i[0]^i[2];
   o[2]=i[0]^i[1];
   return (o);
endfunction


//
// Check Node Module definition
(* synthesize *)
module mkChkNode (ChkNode);
   // Sub-modules and state
   // Input FIFO - code word
   Vector #(
        NConnections
      , FIFO #(Symbol)) vffB2C        <- replicateM (mkFIFO);

   // Output FIFO - decoded code word
   Vector #(
        NConnections
      , FIFO #(Symbol)) vffC2B        <- replicateM (mkFIFO);

   // Rules and behaviour
   rule rlProcessIteration;
      // get the partial result
      Vector #(NConnections, Symbol) codeIn;
      for (Integer i=0; i<valueOf(NConnections); i=i+1) begin
         codeIn[i] = vffB2C[i].first;
         vffB2C[i].deq;
      end

      // Send the partial result to the bit node
      let res = fnChkNodeCore (codeIn);
      for (Integer i=0; i<valueOf(NConnections); i=i+1)
         vffC2B[i].enq (res[i]);
   endrule

   // -----------------------------------------------------------------

   // Interface
   interface c2b = map (toGet, vffC2B);
   interface b2c = map (toPut, vffB2C);

   // -----------------------------------------------------------------

   endmodule : mkChkNode
   endpackage
// -----------------------------------------------------------------


