package PipeInelastic; 

import Multiplier::*;

typedef struct {
    Reg#(Tin) intmp;
    Reg#(Bit#(32)) intmc;
    Reg#(Tout) stsum;
    Reg#(Bool) valid;
} PipeRegister;

(* synthesize *)
module mkInelasticPipe( Multiplier_IFC );
    Reg#(Bool) done <- mkReg(True);
    //Reg#(Bool) flag <- mkReg(False);
    PipeRegister inputReg;
    inputReg.valid  <- mkReg(False);
    inputReg.intmp  <- mkRegU();
    inputReg.intmc  <- mkRegU();
    inputReg.stsum  <- mkReg(0);

    PipeRegister outReg;
    outReg.valid    <- mkReg(False);
    outReg.intmp    <- mkRegU();
    outReg.intmc    <- mkRegU();
    outReg.stsum    <- mkRegU();

    PipeRegister stageReg[17];

    for (Integer i = 0; i < 17; i = i + 1)
        begin
        stageReg[i].valid <- mkReg(False);
        stageReg[i].intmp <- mkRegU();
        stageReg[i].intmc <- mkRegU();
        stageReg[i].stsum <- mkRegU();
        end

    rule cycle ( stageReg[0].valid ); 
        for (Integer i = 1; i < 17; i = i + 1)
            begin
            stageReg[i].intmp <= stageReg[i-1].intmp>>1;
            stageReg[i].intmc <= stageReg[i-1].intmc<<1;
            stageReg[i].stsum <= (stageReg[i-1].intmp[0] == 1) ? stageReg[i-1].stsum + stageReg[i-1].intmc : stageReg[i-1].stsum;
            stageReg[i].valid <= stageReg[i-1].valid;
	   // $display(stageReg[i-1].valid);
            end 
        stageReg[0].valid <= False;done<=True;
    endrule
//for (Integer i = 0; i < 17; i = i + 1)
  //      begin $display(stageReg[i].valid); end

    method Action start(Tin m1, Tin m2) ;
        stageReg[0].intmp    <= m2;
        stageReg[0].intmc    <= { 0, m1 };
        stageReg[0].stsum    <= 0;
        stageReg[0].valid    <= True;done <= False;
	//$display("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
       // flag                 <= True;//start
    endmethod

    method Tout result () if ( stageReg[16].valid == True); 
        return (stageReg[16].stsum);//$stop;//
    endmethod

  //  method Action acknowledge() if (!done);
       // flag <= False;
//done <= True;
  //  endmethod

    endmodule

endpackage  
