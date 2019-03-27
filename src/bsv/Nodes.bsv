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

import GetPut           :: *;
import FIFO             :: *;
import Vector           :: *;

typedef 8 NUM_MAX_ITERATION;

// nRConnections indicates the number of connections that a particular
// check-node has with the bit-nodes
interface CheckNode # (numeric type nRConnections);
   interface Vector  #(nRConnections, Put #(Bit #(1))) b2c;
   interface Vector  #(nRConnections, Get #(Bit #(1))) c2b;
endinterface

// nCConnections indicates the number of connections that a particular
// bit-node has with the check-nodes
interface BitNode # (numeric type nCConnections);
   // External interfaces for receving code word and returning result
   interface Put     #(Bit #(nCConnections))    codeIn;
   interface Get     #(Bit #(nCConnections))    dataOut;

   // Bit Node-Check Node Interface
   interface Put     #(Bit #(nCConnections))    c2b;
   interface Get     #(Bit #(nCConnections))    b2c;
endinterface

// -----------------------------------------------------------------



//
// Module definition
module mkBitNode #(Bit #(8) nodeId) (BitNode #(nCConnections));
   // Sub-modules and state
   // Input FIFO - code word
   FIFO  #(Bit #(nCConnections))    ffCodeIn       <- mkFIFO;

   // Output FIFO - decoded code word
   FIFO  #(Bit #(nCConnections))    ffDataOut      <- mkFIFO;

   // Partially processed codeword meant for the checknodes
   FIFO  #(Bit #(nCConnections))    ffb2c       <- mkFIFO;

   // Partially processed codeword from the checknodes
   FIFO  #(Bit #(nCConnections))    ffc2b       <- mkFIFO;

   Reg   #(Bit #(4))                rgIterationCount  <- mkReg (0);

   // -----------------------------------------------------------------

   // Rules and behaviour
   function Bit #(nCConnections) fnBitNodeProcessing (Bit #(nCConnections) x);
      // XXX This is at present a dummy function which simply does an
      // inverting of the bits
      return (~x);
   endfunction


   // Rule to process the first iteration of a new code word
   rule rlProcessFirstIteration (rgIterationCount == 0);
      // As this is the first iteration, consume the codeword which is
      // currently in ffCodeIn. Carry out the computation on the codeword
      let codeIn = ffCodeIn.first; ffCodeIn.deq;
      let codeOut = fnBitNodeProcessing (codeIn);

      // Send the output to the check nodes
      ffb2c.enq (codeOut);
      
      // Bookkeeping - keep track of iterations to know when to stop
      rgIterationCount  <= rgIterationCount + 2;
   endrule

   // Rule to process remaining iterations
   rule rlProcessRemIteration (
         (rgIterationCount > 0)
      && (rgIterationCount < fromInteger (valueOf (NUM_MAX_ITERATION))));
      // As this iteration works of a partial result from the checknode,
      // the input comes from ffc2b
      let codeIn = ffc2b.first; ffc2b.deq;
      let codeOut = fnBitNodeProcessing (codeIn);

      // Send the output to the check nodes
      ffb2c.enq (codeOut);
      
      // Bookkeeping - keep track of iterations to know when to stop
      rgIterationCount  <= rgIterationCount + 2;
   endrule

   // Rule to process remaining iterations
   rule rlProcessComplete (
      (rgIterationCount == fromInteger (valueOf (NUM_MAX_ITERATION))));
      // As this iteration works of a partial result from the checknode,
      // the input comes from ffc2b
      let codeIn = ffc2b.first; ffc2b.deq;

      // Send the processed code word to the output
      ffb2c.enq (ffDataOut);
      
      // Reset rgIterationCount for the next codeword
      rgIterationCount  <= 0;
   endrule

   // -----------------------------------------------------------------

   // Interface
   interface codeIn     = toPut (ffCodeIn);
   interface dataOut    = toGet (ffDataOut);
   interface b2c        = toGet (ffb2c);
   interface c2b        = toPut (ffc2b);

   // -----------------------------------------------------------------

   endmodule : mkBitNode

// -----------------------------------------------------------------

//
// Module definition
module mkCheckNode #(Bit #(8) nodeId) (BitNode #(nRConnections));
   // Sub-modules and state
   // Input FIFO - code word
   FIFO  #(Bit #(nRConnections))    ffb2c          <- mkFIFO;

   // Output FIFO - decoded code word
   FIFO  #(Bit #(nRConnections))    ffc2b          <- mkFIFO;

   // Rules and behaviour
   function Bit #(nRConnections) fnCheckNodeProcessing (Bit #(nRConnections) x);
      // XXX This is at present a dummy function which simply does an
      // inverting of the bits
      return (~x);
   endfunction

   rule rlProcessIteration;
      // get the partial result
      let codeIn = ffb2c.first; ffb2c.deq;

      // Process the partial result further
      let codeOut = fnCheckNodeProcessing (codeIn);

      // Send the partial result to the bit node
      ffc2b.enq (codeOut);
   endrule

   // -----------------------------------------------------------------

   // Interface
   interface b2c = toPut (ffb2c);
   interface c2b = toGet (ffc2b);

   // -----------------------------------------------------------------

   endmodule : mkCheckNode
   endpackage

// -----------------------------------------------------------------


