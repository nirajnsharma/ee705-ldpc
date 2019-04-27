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
import Connectable      :: *;
import FIFO             :: *;
import Vector           :: *;
import LdpcTypes        :: *;
import Nodes            :: *;

typedef Server #(DataWord, DataWord) LdpcCore;

// -----------------------------------------------------------------


(* synthesize *)
module mkLdpcCore (LdpcCore);
   // Bit nodes
   Vector #(NBitNodes, BitNode) vBitNodes <- replicateM (mkBitNode);

   // Check nodes
   Vector #(NCheckNodes, ChkNode) vCheckNodes <- replicateM (mkChkNode);

   // Input and output FIFOs
   FIFO #(DataWord) ffI <- mkFIFO;
   FIFO #(DataWord) ffO <- mkFIFO;

   Reg #(Bool) rgIdle <- mkReg(True);

   function Bit#(1) fnCheckDecodedWord (DataWord b);
   return (
         (b[0]^b[1]^b[3])
       | (b[1]^b[2]^b[4])
       | (b[2]^b[3]^b[5])
       | (b[3]^b[4]^b[6])
       | (b[0]^b[4]^b[5])
       | (b[1]^b[5]^b[6])
       | (b[0]^b[2]^b[6]));
   endfunction

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
   // From check-node 0
   mkConnection (vCheckNodes[0].c2b[0], vBitNodes[0].c2b[0]);
   mkConnection (vCheckNodes[0].c2b[1], vBitNodes[1].c2b[0]);
   mkConnection (vCheckNodes[0].c2b[2], vBitNodes[3].c2b[0]);

   // From check-node 1
   mkConnection (vCheckNodes[1].c2b[0], vBitNodes[1].c2b[1]);
   mkConnection (vCheckNodes[1].c2b[1], vBitNodes[2].c2b[0]);
   mkConnection (vCheckNodes[1].c2b[2], vBitNodes[4].c2b[0]);

   // From check-node 2
   mkConnection (vCheckNodes[2].c2b[0], vBitNodes[2].c2b[1]);
   mkConnection (vCheckNodes[2].c2b[1], vBitNodes[3].c2b[1]);
   mkConnection (vCheckNodes[2].c2b[2], vBitNodes[5].c2b[0]);

   // From check-node 3
   mkConnection (vCheckNodes[3].c2b[0], vBitNodes[3].c2b[2]);
   mkConnection (vCheckNodes[3].c2b[1], vBitNodes[4].c2b[1]);
   mkConnection (vCheckNodes[3].c2b[2], vBitNodes[6].c2b[0]);

   // From check-node 4
   mkConnection (vCheckNodes[4].c2b[0], vBitNodes[0].c2b[1]);
   mkConnection (vCheckNodes[4].c2b[1], vBitNodes[4].c2b[2]);
   mkConnection (vCheckNodes[4].c2b[2], vBitNodes[5].c2b[1]);

   // From check-node 5
   mkConnection (vCheckNodes[5].c2b[0], vBitNodes[1].c2b[2]);
   mkConnection (vCheckNodes[5].c2b[1], vBitNodes[5].c2b[2]);
   mkConnection (vCheckNodes[5].c2b[2], vBitNodes[6].c2b[1]);

   // From check-node 6
   mkConnection (vCheckNodes[6].c2b[0], vBitNodes[0].c2b[2]);
   mkConnection (vCheckNodes[6].c2b[1], vBitNodes[2].c2b[2]);
   mkConnection (vCheckNodes[6].c2b[2], vBitNodes[6].c2b[2]);

   rule rlPutCodeWordIn (rgIdle);
      // Get the codeword from ffI
      let codeIn = ffI.first; ffI.deq;
      
      // The decoder is busy now
      rgIdle <= False;

      // Send each bit-node a symbol
      for (Integer i=0; i<valueOf(NBitNodes); i=i+1)
         vBitNodes[i].codeIn.put (codeIn[i]);
   endrule

   rule rlEvaluateOutput (!rgIdle);
      DataWord vBitNodeOuts;
      for (Integer i=0; i<valueOf(NBitNodes); i=i+1) begin
         let d <- vBitNodes[i].dataOut.get();
         vBitNodeOuts[i] = d;
      end

      // Check if the decoding is complete
      // Decoding is good
      if (fnCheckDecodedWord (vBitNodeOuts) == 1'b0) begin
         ffO.enq (vBitNodeOuts);
         rgIdle <= True;
      end

      // Decoding is not complete - back to the bit node
      else begin
         // Send each bit-node a symbol
         for (Integer i=0; i<valueOf(NBitNodes); i=i+1)
            vBitNodes[i].codeIn.put (vBitNodeOuts[i]);
      end
   endrule

   return (toGPServer (ffI, ffO));

   endmodule : mkLdpcCore



module mkConnMulti #(
     Get #(Symbol) src
   , Put #(Symbol) dst1
   , Put #(Symbol) dst2
   , Put #(Symbol) dst3) (Empty);

      // Connect a "SRC" to a "DST"
      rule rlConnect;
         let s <- src.get();
         dst1.put (s); dst2.put (s); dst3.put (s);
      endrule


endmodule : mkConnMulti
endpackage : LdpcCore


