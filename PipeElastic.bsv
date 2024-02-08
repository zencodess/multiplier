package PipeElastic; 

import Multiplier::*;

import FIFO::*;

(* synthesize *)
module mkElasticPipe( Multiplier_IFC );
   
    FIFO#(Tuple3#(Tin,Bit#(32), Tout)) f[17];
    
    for (Integer i = 0; i < 17; i = i + 1)
        begin
        f[i]    <- mkFIFO;
        end

     for (Integer i = 1; i < 17; i = i + 1)
	    begin
	        rule cycle ( True ); 
	            Tuple3#(Tin,Bit#(32), Tout) prev= f[i-1].first();//Finside pray;
		   // pray = f[i-1].first();
	            f[i-1].deq();
		    Tin pray1= tpl_1(prev)>>1;
                    Bit#(32) pray2= tpl_2(prev)<<1;
                    Tout pray3= (tpl_1(prev)[0]==1)? (tpl_3(prev)+tpl_2(prev)):tpl_3(prev);
	           
	            f[i].enq(tuple3(pray1,pray2,pray3));
	        endrule
	    end 

    rule elas(True);
	f[16].deq();
    endrule

    method Action start(Tin m1, Tin m2) if(True);
	//Finside use1;
	    f[0].enq(tuple3(m2, {0, m1}, 0));
	
	//$display("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
       
    endmethod

    method Tout result () if (True); 
        return tpl_3(f[16].first());//$stop;//
    endmethod
    endmodule

endpackage  
