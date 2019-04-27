package LdpcTb;
import StmtFSM :: *;
import ClientServer :: *;
import GetPut :: *;
import LdpcCore :: *;
import LdpcTypes :: *;

module mkLdpcTb (Empty);
   LdpcCore core <- mkLdpcCore;

   let s = (
      seq
         // Test one
         action
            Bit #(7) x = 7'b101_0101;
            core.request.put (unpack (x));
            $display ("(%5d):LdpcTb:IN: %07b", $time, x);
         endaction
         action
            let x <- core.response.get ();
            if (pack (x) == 7'b0111010)
               $display (           "(%5d):LdpcTb:    PASS: %07b", $time, x);
            else
               $display (           "(%5d):LdpcTb:    FAIL: %07b", $time, x);
         endaction


         // Test two
         action
            Bit #(7) x = 7'b011_0011;
            core.request.put (unpack (x));
            $display ("(%5d):LdpcTb:IN: %07b", $time, x);
         endaction
         action
            let x <- core.response.get ();
            if (pack (x) == 7'b1001110)
               $display ("          (%5d):LdpcTb:PASS: %07b", $time, x);
            else
               $display ("          (%5d):LdpcTb:FAIL: %07b", $time, x);
         endaction

         // Test three
         action
            Bit #(7) x = 7'b011_0100;
            core.request.put (unpack (x));
            $display ("(%5d):LdpcTb:IN: %07b", $time, x);
         endaction
         action
            let x <- core.response.get ();
            if (pack (x) == 7'b1110100)
               $display (           "(%5d):LdpcTb:PASS: %07b", $time, x);
            else
               $display (           "(%5d):LdpcTb:FAIL: %07b", $time, x);
         endaction
      endseq
   );
   mkAutoFSM (s);
endmodule
endpackage
