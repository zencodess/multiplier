package MultiTbelastic;

// testbench for Mult1

import Multiplier::*;
import PipeElastic::*;



Tin notestinputs = 6;

(* synthesize *)
module mkMultiTbelastic (Empty);

   Reg#(int) cycle <- mkReg(0);
   Reg#(Tin) x    <- mkReg(1);
   Reg#(Tin) y    <- mkReg(2);
   
   // The dut
   Multiplier_IFC dut <- mkElasticPipe;
   
   // RULES ----------------
   rule cyclecount;
	$display("------Cycle %0d----%d----%d", cycle,x,y);
	cycle <= cycle + 1;
   endrule 
   
   rule rule_tb_1 (x <100);
      $display("Rule tb1 fired");
      $display ("Test Input: x = %0d, y = %0d", x, y);
      dut.start (x, y);
      //dut.inter();
      
      //Tout expected = extend (x-1) * extend (y-1);
      //$display("    Result =  Expected = %0d", expected);
      x <= x + 1;
      y <= y + 1;
     // $display("-------------------------------");
      
   endrule
   
   rule rule_tb_2 (x<100);
      $display("Rule tb2 fired");
      // $display("Rule tb2 fired");
     let z =dut.result();
      //dut.acknowledge();
            //let z = dut.result();
      //dut.acknowledge();
      Tout expected = extend (x-1) * extend (y-1);
      $display("    Result = %0d Expected = %0d", z, expected);
      if (z != expected) 
	begin
		$display("Error"); 
		//$finish(0);
	end
      $display("-------------------------------");
   endrule

   // TASK: Add a rule to invoke $finish(0) at the appropriate moment
   rule stop (x >= 100);
       $display("\t finish");
       $finish(0);
   endrule
      
   
endmodule : mkMultiTbelastic

endpackage : MultiTbelastic
