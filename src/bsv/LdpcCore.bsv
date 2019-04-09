// EE-705 Course Project -- LDPC Decoder

package LdpcCore;

// -----------------------------------------------------------------
// This package defines:
//
//    LdpcCore    : Interface of the LDPC Core module
//    mkLdpcCore  : Top-level module of the LDPC core
//
//    v1.0        : Non-pipelined. The nodes can handle one code-word
//                  at a time
//
// -----------------------------------------------------------------

import GetPut           :: *;
import ClientServer     :: *;
import FIFO             :: *;
import Vector           :: *;
import LdpcTypes        :: *;
import Nodes            :: *;

typedef Server #(DataWord, DataWord) LdpcCore;

// -----------------------------------------------------------------


module mkLdpcCore (LdpcCore);
   // Bit nodes
   Vector #(NBitNodes, BitNode) vBitNodes <- replicateM (mkBitNode);

   // Check nodes
   Vector #(NCheckNodes, CheckNode) vCheckNodes <- replicateM (mkCheckNode);

   // Input and output FIFOs
   FIFO #(DataWord) ffI <- mkFIFO;
   FIFO #(DataWord) ffO <- mkFIFO;

   // connect up all the bit nodes and check nodes
   // bit-node to check-node connections
   mkConnMulti (
        vBitNodes[0].b2c
      , vCheckNodes[0].b2c[0], vCheckNodes[4].b2c[0], vCheckNodes[6].b2c[0]);
   mkConnMulti (
        vBitNodes[1].b2c
      , vCheckNodes[0].b2c[1], vCheckNodes[1].b2c[0], vCheckNodes[5].b2c[0]);
   mkConnMulti (
        vBitNodes[2].b2c
      , vCheckNodes[1].b2c[1], vCheckNodes[2].b2c[0], vCheckNodes[6].b2c[1]);
   mkConnMulti (
        vBitNodes[3].b2c
      , vCheckNodes[0].b2c[2], vCheckNodes[2].b2c[1], vCheckNodes[3].b2c[0]);
   mkConnMulti (
        vBitNodes[4].b2c
      , vCheckNodes[1].b2c[2], vCheckNodes[3].b2c[1], vCheckNodes[4].b2c[1]);
   mkConnMulti (
        vBitNodes[5].b2c
      , vCheckNodes[2].b2c[2], vCheckNodes[4].b2c[2], vCheckNodes[5].b2c[1]);
   mkConnMulti (
        vBitNodes[6].b2c
      , vCheckNodes[3].b2c[2], vCheckNodes[5].b2c[2], vCheckNodes[6].b2c[2]);

   // check-node to bit-node connections
   mkConnMulti (
        vCheckNodes[0].c2b
      , vBitNodes[0].c2b[0], vBitNodes[1].c2b[0], vBitNodes[3].c2b[0]);

   mkConnMulti (
        vCheckNodes[1].c2b
      , vBitNodes[1].c2b[1], vBitNodes[2].c2b[0], vBitNodes[4].c2b[0]);

   mkConnMulti (
        vCheckNodes[2].c2b
      , vBitNodes[2].c2b[1], vBitNodes[3].c2b[1], vBitNodes[5].c2b[0]);

   mkConnMulti (
        vCheckNodes[3].c2b
      , vBitNodes[3].c2b[2], vBitNodes[4].c2b[1], vBitNodes[6].c2b[0]);

   mkConnMulti (
        vCheckNodes[4].c2b
      , vBitNodes[0].c2b[1], vBitNodes[4].c2b[2], vBitNodes[5].c2b[1]);

   mkConnMulti (
        vCheckNodes[5].c2b
      , vBitNodes[1].c2b[2], vBitNodes[5].c2b[2], vBitNodes[6].c2b[1]);

   mkConnMulti (
        vCheckNodes[6].c2b
      , vBitNodes[0].c2b[2], vBitNodes[2].c2b[2], vBitNodes[6].c2b[2]);

   rule rlPutCodeWordIn;
      // Get the codeword from ffI
      let codeIn = ffI.first; ffI.deq;

      // Send each bit-node a symbol
      for (Integer i=0; i<valueOf(NBitNodes); i=i+1)
         vCheckNodes[i].codeIn.put (codeIn[i]);
   endrule

   rule rlGetDecodedWordOut;
      DataWord dOut;

      // Get a symbol from each bit-node
      for (Integer i=0; i<valueOf(NBitNodes); i=i+1) begin
         let d <- vCheckNodes[i].dataOut.get ();
         dOut [i] = d;
      end

      // Write the collected symbols into the output fifo
      ffO.enq (dOut);
   endrule

   return (toGPServer (ffI, ffO));

   endmodule : mkLdpcCore



module mkConnMulti #(
     Get #(Symbol) src
   , Put #(Symbol) dst1
   , Put #(Symbol) dst2
   , Put #(Symbol) dst3)

      // Connect a "SRC" to a "DST"
      rule rlConnect ();
         let s <- src.get();
         dst1.put (s); dst2.put (s); dst3.put (s);
      endrule

   In order to get things started, the input code-word needs to be input
   to the bit nodes. The input code word will be sitting in the [[ffI]] FIFO.
   In the current architecture, we are sending one symbol per bit-node. In
   general, it is possible to fold multiple symbols onto a bit node but this
   will require more complex nodes.

   A code-word can be sent to all bit-nodes only when all of them are ready to
   receive the code words.


   endmodule
   endpackage : LdpcCore


