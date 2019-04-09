// EE-705 Course Project -- LDPC Decoder

package Nodes;

// -----------------------------------------------------------------
// This package defines:
//
//    CheckNode   : Interface to the Check Nodes
//    BitNode     : Interface to the Bit Nodes
//    mkCheckNode : Micro-arch of the Check Node
//    mkBitNode   : Micro-arch of the Bit Node
//
//    v1.0        : The nodes can handle one code-word at a time
//
// -----------------------------------------------------------------

import ClientServer     :: *;
import GetPut           :: *;
import FIFO             :: *;
import Vector           :: *;
import LdpcTypes        :: *;

// NConnections indicates the number of connections that a particular
// check-node has with the bit-nodes
interface CheckNode;
   interface Vector #(NConnections, Put #(Symbol)) b2c;
   interface Get #(Symbol) c2b;
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

   Reg   #(Bit #(4))                rgIterationCount  <- mkReg (0);

   // -----------------------------------------------------------------

   // Rules and behaviour
   function Symbol fnBitNodeProcessing (Vector #(NConnections, Symbol) x);
      // XXX This is at present a dummy function which simply does an
      // XOR of the symbols
      // It will actually do some sort of a zip function which goes:
      // Vector#(N,Symbol) -> Symbol
      return (foldl1 (\^ , x));
   endfunction


   function Symbol fnInitialBitNodeProcessing (Symbol x);
      // XXX This is at present a dummy function which simply does an
      // forwards the signal to the output
      return (x);
   endfunction


   // Rule to process the first iteration of a new code word
   rule rlProcessFirstIteration (rgIterationCount == 0);
      // As this is the first iteration, consume the codeword which is
      // currently in ffCodeIn. Carry out the computation on the codeword
      let codeIn = ffCodeIn.first; ffCodeIn.deq;
      let codeOut = fnInitialBitNodeProcessing (codeIn);

      // Send the output to the check nodes
      ffB2C.enq (codeOut);
      
      // Bookkeeping - keep track of iterations to know when to stop. The
      // first iteration is treated as the first time the code word goes
      // through the check node
      rgIterationCount  <= rgIterationCount + 1;
   endrule

   // Rule to process remaining iterations
   rule rlProcessRemIteration (
         (rgIterationCount > 0)
      && (rgIterationCount < fromInteger (valueOf (NIterations))));
      // As this iteration works of a partial result from the checknode,
      // the input comes from the vector of fifos vffC2B
      Vector #(NConnections, Symbol) codeIn;
      for (Integer i=0; i<valueOf(NConnections); i=i+1) begin
         codeIn[i] = vffC2B[i].first;
         vffC2B[i].deq;
      end

      let codeOut = fnBitNodeProcessing (codeIn);

      // Bookkeeping - keep track of iterations to know when to stop
      if (rgIterationCount == (fromInteger (valueOf (NIterations))-1)) begin
         // time to stop
         rgIterationCount <= 0;

         // Send the processed code word to the output
         ffDataOut.enq (codeOut);
      end
      
      // continue with more iterations
      else begin
         rgIterationCount  <= rgIterationCount + 2;

         // Send the output to the check nodes
         ffB2C.enq (codeOut);
      end
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

//
// Check Node Module definition
(* synthesize *)
module mkCheckNode (CheckNode);
   // Sub-modules and state
   // Input FIFO - code word
   Vector #(
        NConnections
      , FIFO #(Symbol)) vffB2C        <- replicateM (mkFIFO);

   // Output FIFO - decoded code word
   FIFO  #(Symbol)      ffC2B         <- mkFIFO;

   // Rules and behaviour
   function Symbol fnCheckNodeProcessing (Vector #(NConnections, Symbol) x);
      // XXX This is at present a dummy function which simply does an
      // inverting of the bits
      // It will actually do some sort of a zip function which goes:
      // Vector#(N,Symbol) -> Symbol
      return (foldl1 (\^ , x));
   endfunction

   rule rlProcessIteration;
      // get the partial result
      Vector #(NConnections, Symbol) codeIn;
      for (Integer i=0; i<valueOf(NConnections); i=i+1) begin
         codeIn[i] = vffB2C[i].first;
         vffB2C[i].deq;
      end

      // Process the partial result further
      let codeOut = fnCheckNodeProcessing (codeIn);

      // Send the partial result to the bit node
      ffC2B.enq (codeOut);
   endrule

   // -----------------------------------------------------------------

   // Interface
   interface c2b = toGet (ffC2B);
   interface b2c = map (toPut, vffB2C);

   // -----------------------------------------------------------------

   endmodule : mkCheckNode
   endpackage
// -----------------------------------------------------------------


