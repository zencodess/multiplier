//
// Generated by Bluespec Compiler, version 2016.07.beta1 (build 34806, 2016-07-05)
//
// On Wed Dec  5 17:59:25 IST 2018
//
//
// Ports:
// Name                         I/O  size props
// RDY_start                      O     1 reg
// result                         O    32 reg
// RDY_result                     O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// start_m1                       I    16 reg
// start_m2                       I    16 reg
// EN_start                       I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkElasticPipe(CLK,
		     RST_N,

		     start_m1,
		     start_m2,
		     EN_start,
		     RDY_start,

		     result,
		     RDY_result);
  input  CLK;
  input  RST_N;

  // action method start
  input  [15 : 0] start_m1;
  input  [15 : 0] start_m2;
  input  EN_start;
  output RDY_start;

  // value method result
  output [31 : 0] result;
  output RDY_result;

  // signals for module outputs
  wire [31 : 0] result;
  wire RDY_result, RDY_start;

  // ports of submodule f_0
  wire [79 : 0] f_0$D_IN, f_0$D_OUT;
  wire f_0$CLR, f_0$DEQ, f_0$EMPTY_N, f_0$ENQ, f_0$FULL_N;

  // ports of submodule f_1
  wire [79 : 0] f_1$D_IN, f_1$D_OUT;
  wire f_1$CLR, f_1$DEQ, f_1$EMPTY_N, f_1$ENQ, f_1$FULL_N;

  // ports of submodule f_10
  wire [79 : 0] f_10$D_IN, f_10$D_OUT;
  wire f_10$CLR, f_10$DEQ, f_10$EMPTY_N, f_10$ENQ, f_10$FULL_N;

  // ports of submodule f_11
  wire [79 : 0] f_11$D_IN, f_11$D_OUT;
  wire f_11$CLR, f_11$DEQ, f_11$EMPTY_N, f_11$ENQ, f_11$FULL_N;

  // ports of submodule f_12
  wire [79 : 0] f_12$D_IN, f_12$D_OUT;
  wire f_12$CLR, f_12$DEQ, f_12$EMPTY_N, f_12$ENQ, f_12$FULL_N;

  // ports of submodule f_13
  wire [79 : 0] f_13$D_IN, f_13$D_OUT;
  wire f_13$CLR, f_13$DEQ, f_13$EMPTY_N, f_13$ENQ, f_13$FULL_N;

  // ports of submodule f_14
  wire [79 : 0] f_14$D_IN, f_14$D_OUT;
  wire f_14$CLR, f_14$DEQ, f_14$EMPTY_N, f_14$ENQ, f_14$FULL_N;

  // ports of submodule f_15
  wire [79 : 0] f_15$D_IN, f_15$D_OUT;
  wire f_15$CLR, f_15$DEQ, f_15$EMPTY_N, f_15$ENQ, f_15$FULL_N;

  // ports of submodule f_16
  wire [79 : 0] f_16$D_IN, f_16$D_OUT;
  wire f_16$CLR, f_16$DEQ, f_16$EMPTY_N, f_16$ENQ, f_16$FULL_N;

  // ports of submodule f_2
  wire [79 : 0] f_2$D_IN, f_2$D_OUT;
  wire f_2$CLR, f_2$DEQ, f_2$EMPTY_N, f_2$ENQ, f_2$FULL_N;

  // ports of submodule f_3
  wire [79 : 0] f_3$D_IN, f_3$D_OUT;
  wire f_3$CLR, f_3$DEQ, f_3$EMPTY_N, f_3$ENQ, f_3$FULL_N;

  // ports of submodule f_4
  wire [79 : 0] f_4$D_IN, f_4$D_OUT;
  wire f_4$CLR, f_4$DEQ, f_4$EMPTY_N, f_4$ENQ, f_4$FULL_N;

  // ports of submodule f_5
  wire [79 : 0] f_5$D_IN, f_5$D_OUT;
  wire f_5$CLR, f_5$DEQ, f_5$EMPTY_N, f_5$ENQ, f_5$FULL_N;

  // ports of submodule f_6
  wire [79 : 0] f_6$D_IN, f_6$D_OUT;
  wire f_6$CLR, f_6$DEQ, f_6$EMPTY_N, f_6$ENQ, f_6$FULL_N;

  // ports of submodule f_7
  wire [79 : 0] f_7$D_IN, f_7$D_OUT;
  wire f_7$CLR, f_7$DEQ, f_7$EMPTY_N, f_7$ENQ, f_7$FULL_N;

  // ports of submodule f_8
  wire [79 : 0] f_8$D_IN, f_8$D_OUT;
  wire f_8$CLR, f_8$DEQ, f_8$EMPTY_N, f_8$ENQ, f_8$FULL_N;

  // ports of submodule f_9
  wire [79 : 0] f_9$D_IN, f_9$D_OUT;
  wire f_9$CLR, f_9$DEQ, f_9$EMPTY_N, f_9$ENQ, f_9$FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_cycle,
       CAN_FIRE_RL_cycle_1,
       CAN_FIRE_RL_cycle_10,
       CAN_FIRE_RL_cycle_11,
       CAN_FIRE_RL_cycle_12,
       CAN_FIRE_RL_cycle_13,
       CAN_FIRE_RL_cycle_14,
       CAN_FIRE_RL_cycle_15,
       CAN_FIRE_RL_cycle_2,
       CAN_FIRE_RL_cycle_3,
       CAN_FIRE_RL_cycle_4,
       CAN_FIRE_RL_cycle_5,
       CAN_FIRE_RL_cycle_6,
       CAN_FIRE_RL_cycle_7,
       CAN_FIRE_RL_cycle_8,
       CAN_FIRE_RL_cycle_9,
       CAN_FIRE_RL_elas,
       CAN_FIRE_start,
       WILL_FIRE_RL_cycle,
       WILL_FIRE_RL_cycle_1,
       WILL_FIRE_RL_cycle_10,
       WILL_FIRE_RL_cycle_11,
       WILL_FIRE_RL_cycle_12,
       WILL_FIRE_RL_cycle_13,
       WILL_FIRE_RL_cycle_14,
       WILL_FIRE_RL_cycle_15,
       WILL_FIRE_RL_cycle_2,
       WILL_FIRE_RL_cycle_3,
       WILL_FIRE_RL_cycle_4,
       WILL_FIRE_RL_cycle_5,
       WILL_FIRE_RL_cycle_6,
       WILL_FIRE_RL_cycle_7,
       WILL_FIRE_RL_cycle_8,
       WILL_FIRE_RL_cycle_9,
       WILL_FIRE_RL_elas,
       WILL_FIRE_start;

  // remaining internal signals
  wire [31 : 0] x__h2194,
		x__h2216,
		x__h2380,
		x__h2395,
		x__h2557,
		x__h2572,
		x__h2734,
		x__h2749,
		x__h2911,
		x__h2926,
		x__h3088,
		x__h3103,
		x__h3265,
		x__h3280,
		x__h3442,
		x__h3457,
		x__h3619,
		x__h3634,
		x__h3796,
		x__h3811,
		x__h3973,
		x__h3988,
		x__h4150,
		x__h4165,
		x__h4327,
		x__h4342,
		x__h4504,
		x__h4519,
		x__h4681,
		x__h4696,
		x__h4858,
		x__h4873,
		x__h5019;
  wire [15 : 0] x__h2158,
		x__h2352,
		x__h2529,
		x__h2706,
		x__h2883,
		x__h3060,
		x__h3237,
		x__h3414,
		x__h3591,
		x__h3768,
		x__h3945,
		x__h4122,
		x__h4299,
		x__h4476,
		x__h4653,
		x__h4830;

  // action method start
  assign RDY_start = f_0$FULL_N ;
  assign CAN_FIRE_start = f_0$FULL_N ;
  assign WILL_FIRE_start = EN_start ;

  // value method result
  assign result = f_16$D_OUT[31:0] ;
  assign RDY_result = f_16$EMPTY_N ;

  // submodule f_0
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_0(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(f_0$D_IN),
					       .ENQ(f_0$ENQ),
					       .DEQ(f_0$DEQ),
					       .CLR(f_0$CLR),
					       .D_OUT(f_0$D_OUT),
					       .FULL_N(f_0$FULL_N),
					       .EMPTY_N(f_0$EMPTY_N));

  // submodule f_1
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_1(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(f_1$D_IN),
					       .ENQ(f_1$ENQ),
					       .DEQ(f_1$DEQ),
					       .CLR(f_1$CLR),
					       .D_OUT(f_1$D_OUT),
					       .FULL_N(f_1$FULL_N),
					       .EMPTY_N(f_1$EMPTY_N));

  // submodule f_10
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_10(.RST(RST_N),
						.CLK(CLK),
						.D_IN(f_10$D_IN),
						.ENQ(f_10$ENQ),
						.DEQ(f_10$DEQ),
						.CLR(f_10$CLR),
						.D_OUT(f_10$D_OUT),
						.FULL_N(f_10$FULL_N),
						.EMPTY_N(f_10$EMPTY_N));

  // submodule f_11
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_11(.RST(RST_N),
						.CLK(CLK),
						.D_IN(f_11$D_IN),
						.ENQ(f_11$ENQ),
						.DEQ(f_11$DEQ),
						.CLR(f_11$CLR),
						.D_OUT(f_11$D_OUT),
						.FULL_N(f_11$FULL_N),
						.EMPTY_N(f_11$EMPTY_N));

  // submodule f_12
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_12(.RST(RST_N),
						.CLK(CLK),
						.D_IN(f_12$D_IN),
						.ENQ(f_12$ENQ),
						.DEQ(f_12$DEQ),
						.CLR(f_12$CLR),
						.D_OUT(f_12$D_OUT),
						.FULL_N(f_12$FULL_N),
						.EMPTY_N(f_12$EMPTY_N));

  // submodule f_13
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_13(.RST(RST_N),
						.CLK(CLK),
						.D_IN(f_13$D_IN),
						.ENQ(f_13$ENQ),
						.DEQ(f_13$DEQ),
						.CLR(f_13$CLR),
						.D_OUT(f_13$D_OUT),
						.FULL_N(f_13$FULL_N),
						.EMPTY_N(f_13$EMPTY_N));

  // submodule f_14
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_14(.RST(RST_N),
						.CLK(CLK),
						.D_IN(f_14$D_IN),
						.ENQ(f_14$ENQ),
						.DEQ(f_14$DEQ),
						.CLR(f_14$CLR),
						.D_OUT(f_14$D_OUT),
						.FULL_N(f_14$FULL_N),
						.EMPTY_N(f_14$EMPTY_N));

  // submodule f_15
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_15(.RST(RST_N),
						.CLK(CLK),
						.D_IN(f_15$D_IN),
						.ENQ(f_15$ENQ),
						.DEQ(f_15$DEQ),
						.CLR(f_15$CLR),
						.D_OUT(f_15$D_OUT),
						.FULL_N(f_15$FULL_N),
						.EMPTY_N(f_15$EMPTY_N));

  // submodule f_16
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_16(.RST(RST_N),
						.CLK(CLK),
						.D_IN(f_16$D_IN),
						.ENQ(f_16$ENQ),
						.DEQ(f_16$DEQ),
						.CLR(f_16$CLR),
						.D_OUT(f_16$D_OUT),
						.FULL_N(f_16$FULL_N),
						.EMPTY_N(f_16$EMPTY_N));

  // submodule f_2
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_2(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(f_2$D_IN),
					       .ENQ(f_2$ENQ),
					       .DEQ(f_2$DEQ),
					       .CLR(f_2$CLR),
					       .D_OUT(f_2$D_OUT),
					       .FULL_N(f_2$FULL_N),
					       .EMPTY_N(f_2$EMPTY_N));

  // submodule f_3
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_3(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(f_3$D_IN),
					       .ENQ(f_3$ENQ),
					       .DEQ(f_3$DEQ),
					       .CLR(f_3$CLR),
					       .D_OUT(f_3$D_OUT),
					       .FULL_N(f_3$FULL_N),
					       .EMPTY_N(f_3$EMPTY_N));

  // submodule f_4
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_4(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(f_4$D_IN),
					       .ENQ(f_4$ENQ),
					       .DEQ(f_4$DEQ),
					       .CLR(f_4$CLR),
					       .D_OUT(f_4$D_OUT),
					       .FULL_N(f_4$FULL_N),
					       .EMPTY_N(f_4$EMPTY_N));

  // submodule f_5
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_5(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(f_5$D_IN),
					       .ENQ(f_5$ENQ),
					       .DEQ(f_5$DEQ),
					       .CLR(f_5$CLR),
					       .D_OUT(f_5$D_OUT),
					       .FULL_N(f_5$FULL_N),
					       .EMPTY_N(f_5$EMPTY_N));

  // submodule f_6
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_6(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(f_6$D_IN),
					       .ENQ(f_6$ENQ),
					       .DEQ(f_6$DEQ),
					       .CLR(f_6$CLR),
					       .D_OUT(f_6$D_OUT),
					       .FULL_N(f_6$FULL_N),
					       .EMPTY_N(f_6$EMPTY_N));

  // submodule f_7
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_7(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(f_7$D_IN),
					       .ENQ(f_7$ENQ),
					       .DEQ(f_7$DEQ),
					       .CLR(f_7$CLR),
					       .D_OUT(f_7$D_OUT),
					       .FULL_N(f_7$FULL_N),
					       .EMPTY_N(f_7$EMPTY_N));

  // submodule f_8
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_8(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(f_8$D_IN),
					       .ENQ(f_8$ENQ),
					       .DEQ(f_8$DEQ),
					       .CLR(f_8$CLR),
					       .D_OUT(f_8$D_OUT),
					       .FULL_N(f_8$FULL_N),
					       .EMPTY_N(f_8$EMPTY_N));

  // submodule f_9
  FIFO2 #(.width(32'd80), .guarded(32'd1)) f_9(.RST(RST_N),
					       .CLK(CLK),
					       .D_IN(f_9$D_IN),
					       .ENQ(f_9$ENQ),
					       .DEQ(f_9$DEQ),
					       .CLR(f_9$CLR),
					       .D_OUT(f_9$D_OUT),
					       .FULL_N(f_9$FULL_N),
					       .EMPTY_N(f_9$EMPTY_N));

  // rule RL_cycle
  assign CAN_FIRE_RL_cycle = f_0$EMPTY_N && f_1$FULL_N ;
  assign WILL_FIRE_RL_cycle = CAN_FIRE_RL_cycle ;

  // rule RL_cycle_1
  assign CAN_FIRE_RL_cycle_1 = f_1$EMPTY_N && f_2$FULL_N ;
  assign WILL_FIRE_RL_cycle_1 = CAN_FIRE_RL_cycle_1 ;

  // rule RL_cycle_2
  assign CAN_FIRE_RL_cycle_2 = f_2$EMPTY_N && f_3$FULL_N ;
  assign WILL_FIRE_RL_cycle_2 = CAN_FIRE_RL_cycle_2 ;

  // rule RL_cycle_3
  assign CAN_FIRE_RL_cycle_3 = f_3$EMPTY_N && f_4$FULL_N ;
  assign WILL_FIRE_RL_cycle_3 = CAN_FIRE_RL_cycle_3 ;

  // rule RL_cycle_4
  assign CAN_FIRE_RL_cycle_4 = f_4$EMPTY_N && f_5$FULL_N ;
  assign WILL_FIRE_RL_cycle_4 = CAN_FIRE_RL_cycle_4 ;

  // rule RL_cycle_5
  assign CAN_FIRE_RL_cycle_5 = f_5$EMPTY_N && f_6$FULL_N ;
  assign WILL_FIRE_RL_cycle_5 = CAN_FIRE_RL_cycle_5 ;

  // rule RL_cycle_6
  assign CAN_FIRE_RL_cycle_6 = f_6$EMPTY_N && f_7$FULL_N ;
  assign WILL_FIRE_RL_cycle_6 = CAN_FIRE_RL_cycle_6 ;

  // rule RL_cycle_7
  assign CAN_FIRE_RL_cycle_7 = f_7$EMPTY_N && f_8$FULL_N ;
  assign WILL_FIRE_RL_cycle_7 = CAN_FIRE_RL_cycle_7 ;

  // rule RL_cycle_8
  assign CAN_FIRE_RL_cycle_8 = f_8$EMPTY_N && f_9$FULL_N ;
  assign WILL_FIRE_RL_cycle_8 = CAN_FIRE_RL_cycle_8 ;

  // rule RL_cycle_9
  assign CAN_FIRE_RL_cycle_9 = f_9$EMPTY_N && f_10$FULL_N ;
  assign WILL_FIRE_RL_cycle_9 = CAN_FIRE_RL_cycle_9 ;

  // rule RL_cycle_10
  assign CAN_FIRE_RL_cycle_10 = f_10$EMPTY_N && f_11$FULL_N ;
  assign WILL_FIRE_RL_cycle_10 = CAN_FIRE_RL_cycle_10 ;

  // rule RL_cycle_11
  assign CAN_FIRE_RL_cycle_11 = f_11$EMPTY_N && f_12$FULL_N ;
  assign WILL_FIRE_RL_cycle_11 = CAN_FIRE_RL_cycle_11 ;

  // rule RL_cycle_12
  assign CAN_FIRE_RL_cycle_12 = f_12$EMPTY_N && f_13$FULL_N ;
  assign WILL_FIRE_RL_cycle_12 = CAN_FIRE_RL_cycle_12 ;

  // rule RL_cycle_13
  assign CAN_FIRE_RL_cycle_13 = f_13$EMPTY_N && f_14$FULL_N ;
  assign WILL_FIRE_RL_cycle_13 = CAN_FIRE_RL_cycle_13 ;

  // rule RL_cycle_14
  assign CAN_FIRE_RL_cycle_14 = f_14$EMPTY_N && f_15$FULL_N ;
  assign WILL_FIRE_RL_cycle_14 = CAN_FIRE_RL_cycle_14 ;

  // rule RL_cycle_15
  assign CAN_FIRE_RL_cycle_15 = f_15$EMPTY_N && f_16$FULL_N ;
  assign WILL_FIRE_RL_cycle_15 = CAN_FIRE_RL_cycle_15 ;

  // rule RL_elas
  assign CAN_FIRE_RL_elas = f_16$EMPTY_N ;
  assign WILL_FIRE_RL_elas = f_16$EMPTY_N ;

  // submodule f_0
  assign f_0$D_IN = { start_m2, x__h5019, 32'd0 } ;
  assign f_0$ENQ = EN_start ;
  assign f_0$DEQ = CAN_FIRE_RL_cycle ;
  assign f_0$CLR = 1'b0 ;

  // submodule f_1
  assign f_1$D_IN = { x__h2158, x__h2194, x__h2216 } ;
  assign f_1$ENQ = CAN_FIRE_RL_cycle ;
  assign f_1$DEQ = CAN_FIRE_RL_cycle_1 ;
  assign f_1$CLR = 1'b0 ;

  // submodule f_10
  assign f_10$D_IN = { x__h3768, x__h3796, x__h3811 } ;
  assign f_10$ENQ = CAN_FIRE_RL_cycle_9 ;
  assign f_10$DEQ = CAN_FIRE_RL_cycle_10 ;
  assign f_10$CLR = 1'b0 ;

  // submodule f_11
  assign f_11$D_IN = { x__h3945, x__h3973, x__h3988 } ;
  assign f_11$ENQ = CAN_FIRE_RL_cycle_10 ;
  assign f_11$DEQ = CAN_FIRE_RL_cycle_11 ;
  assign f_11$CLR = 1'b0 ;

  // submodule f_12
  assign f_12$D_IN = { x__h4122, x__h4150, x__h4165 } ;
  assign f_12$ENQ = CAN_FIRE_RL_cycle_11 ;
  assign f_12$DEQ = CAN_FIRE_RL_cycle_12 ;
  assign f_12$CLR = 1'b0 ;

  // submodule f_13
  assign f_13$D_IN = { x__h4299, x__h4327, x__h4342 } ;
  assign f_13$ENQ = CAN_FIRE_RL_cycle_12 ;
  assign f_13$DEQ = CAN_FIRE_RL_cycle_13 ;
  assign f_13$CLR = 1'b0 ;

  // submodule f_14
  assign f_14$D_IN = { x__h4476, x__h4504, x__h4519 } ;
  assign f_14$ENQ = CAN_FIRE_RL_cycle_13 ;
  assign f_14$DEQ = CAN_FIRE_RL_cycle_14 ;
  assign f_14$CLR = 1'b0 ;

  // submodule f_15
  assign f_15$D_IN = { x__h4653, x__h4681, x__h4696 } ;
  assign f_15$ENQ = CAN_FIRE_RL_cycle_14 ;
  assign f_15$DEQ = CAN_FIRE_RL_cycle_15 ;
  assign f_15$CLR = 1'b0 ;

  // submodule f_16
  assign f_16$D_IN = { x__h4830, x__h4858, x__h4873 } ;
  assign f_16$ENQ = CAN_FIRE_RL_cycle_15 ;
  assign f_16$DEQ = f_16$EMPTY_N ;
  assign f_16$CLR = 1'b0 ;

  // submodule f_2
  assign f_2$D_IN = { x__h2352, x__h2380, x__h2395 } ;
  assign f_2$ENQ = CAN_FIRE_RL_cycle_1 ;
  assign f_2$DEQ = CAN_FIRE_RL_cycle_2 ;
  assign f_2$CLR = 1'b0 ;

  // submodule f_3
  assign f_3$D_IN = { x__h2529, x__h2557, x__h2572 } ;
  assign f_3$ENQ = CAN_FIRE_RL_cycle_2 ;
  assign f_3$DEQ = CAN_FIRE_RL_cycle_3 ;
  assign f_3$CLR = 1'b0 ;

  // submodule f_4
  assign f_4$D_IN = { x__h2706, x__h2734, x__h2749 } ;
  assign f_4$ENQ = CAN_FIRE_RL_cycle_3 ;
  assign f_4$DEQ = CAN_FIRE_RL_cycle_4 ;
  assign f_4$CLR = 1'b0 ;

  // submodule f_5
  assign f_5$D_IN = { x__h2883, x__h2911, x__h2926 } ;
  assign f_5$ENQ = CAN_FIRE_RL_cycle_4 ;
  assign f_5$DEQ = CAN_FIRE_RL_cycle_5 ;
  assign f_5$CLR = 1'b0 ;

  // submodule f_6
  assign f_6$D_IN = { x__h3060, x__h3088, x__h3103 } ;
  assign f_6$ENQ = CAN_FIRE_RL_cycle_5 ;
  assign f_6$DEQ = CAN_FIRE_RL_cycle_6 ;
  assign f_6$CLR = 1'b0 ;

  // submodule f_7
  assign f_7$D_IN = { x__h3237, x__h3265, x__h3280 } ;
  assign f_7$ENQ = CAN_FIRE_RL_cycle_6 ;
  assign f_7$DEQ = CAN_FIRE_RL_cycle_7 ;
  assign f_7$CLR = 1'b0 ;

  // submodule f_8
  assign f_8$D_IN = { x__h3414, x__h3442, x__h3457 } ;
  assign f_8$ENQ = CAN_FIRE_RL_cycle_7 ;
  assign f_8$DEQ = CAN_FIRE_RL_cycle_8 ;
  assign f_8$CLR = 1'b0 ;

  // submodule f_9
  assign f_9$D_IN = { x__h3591, x__h3619, x__h3634 } ;
  assign f_9$ENQ = CAN_FIRE_RL_cycle_8 ;
  assign f_9$DEQ = CAN_FIRE_RL_cycle_9 ;
  assign f_9$CLR = 1'b0 ;

  // remaining internal signals
  assign x__h2158 = { 1'd0, f_0$D_OUT[79:65] } ;
  assign x__h2194 = { f_0$D_OUT[62:32], 1'd0 } ;
  assign x__h2216 =
	     f_0$D_OUT[64] ?
	       f_0$D_OUT[31:0] + f_0$D_OUT[63:32] :
	       f_0$D_OUT[31:0] ;
  assign x__h2352 = { 1'd0, f_1$D_OUT[79:65] } ;
  assign x__h2380 = { f_1$D_OUT[62:32], 1'd0 } ;
  assign x__h2395 =
	     f_1$D_OUT[64] ?
	       f_1$D_OUT[31:0] + f_1$D_OUT[63:32] :
	       f_1$D_OUT[31:0] ;
  assign x__h2529 = { 1'd0, f_2$D_OUT[79:65] } ;
  assign x__h2557 = { f_2$D_OUT[62:32], 1'd0 } ;
  assign x__h2572 =
	     f_2$D_OUT[64] ?
	       f_2$D_OUT[31:0] + f_2$D_OUT[63:32] :
	       f_2$D_OUT[31:0] ;
  assign x__h2706 = { 1'd0, f_3$D_OUT[79:65] } ;
  assign x__h2734 = { f_3$D_OUT[62:32], 1'd0 } ;
  assign x__h2749 =
	     f_3$D_OUT[64] ?
	       f_3$D_OUT[31:0] + f_3$D_OUT[63:32] :
	       f_3$D_OUT[31:0] ;
  assign x__h2883 = { 1'd0, f_4$D_OUT[79:65] } ;
  assign x__h2911 = { f_4$D_OUT[62:32], 1'd0 } ;
  assign x__h2926 =
	     f_4$D_OUT[64] ?
	       f_4$D_OUT[31:0] + f_4$D_OUT[63:32] :
	       f_4$D_OUT[31:0] ;
  assign x__h3060 = { 1'd0, f_5$D_OUT[79:65] } ;
  assign x__h3088 = { f_5$D_OUT[62:32], 1'd0 } ;
  assign x__h3103 =
	     f_5$D_OUT[64] ?
	       f_5$D_OUT[31:0] + f_5$D_OUT[63:32] :
	       f_5$D_OUT[31:0] ;
  assign x__h3237 = { 1'd0, f_6$D_OUT[79:65] } ;
  assign x__h3265 = { f_6$D_OUT[62:32], 1'd0 } ;
  assign x__h3280 =
	     f_6$D_OUT[64] ?
	       f_6$D_OUT[31:0] + f_6$D_OUT[63:32] :
	       f_6$D_OUT[31:0] ;
  assign x__h3414 = { 1'd0, f_7$D_OUT[79:65] } ;
  assign x__h3442 = { f_7$D_OUT[62:32], 1'd0 } ;
  assign x__h3457 =
	     f_7$D_OUT[64] ?
	       f_7$D_OUT[31:0] + f_7$D_OUT[63:32] :
	       f_7$D_OUT[31:0] ;
  assign x__h3591 = { 1'd0, f_8$D_OUT[79:65] } ;
  assign x__h3619 = { f_8$D_OUT[62:32], 1'd0 } ;
  assign x__h3634 =
	     f_8$D_OUT[64] ?
	       f_8$D_OUT[31:0] + f_8$D_OUT[63:32] :
	       f_8$D_OUT[31:0] ;
  assign x__h3768 = { 1'd0, f_9$D_OUT[79:65] } ;
  assign x__h3796 = { f_9$D_OUT[62:32], 1'd0 } ;
  assign x__h3811 =
	     f_9$D_OUT[64] ?
	       f_9$D_OUT[31:0] + f_9$D_OUT[63:32] :
	       f_9$D_OUT[31:0] ;
  assign x__h3945 = { 1'd0, f_10$D_OUT[79:65] } ;
  assign x__h3973 = { f_10$D_OUT[62:32], 1'd0 } ;
  assign x__h3988 =
	     f_10$D_OUT[64] ?
	       f_10$D_OUT[31:0] + f_10$D_OUT[63:32] :
	       f_10$D_OUT[31:0] ;
  assign x__h4122 = { 1'd0, f_11$D_OUT[79:65] } ;
  assign x__h4150 = { f_11$D_OUT[62:32], 1'd0 } ;
  assign x__h4165 =
	     f_11$D_OUT[64] ?
	       f_11$D_OUT[31:0] + f_11$D_OUT[63:32] :
	       f_11$D_OUT[31:0] ;
  assign x__h4299 = { 1'd0, f_12$D_OUT[79:65] } ;
  assign x__h4327 = { f_12$D_OUT[62:32], 1'd0 } ;
  assign x__h4342 =
	     f_12$D_OUT[64] ?
	       f_12$D_OUT[31:0] + f_12$D_OUT[63:32] :
	       f_12$D_OUT[31:0] ;
  assign x__h4476 = { 1'd0, f_13$D_OUT[79:65] } ;
  assign x__h4504 = { f_13$D_OUT[62:32], 1'd0 } ;
  assign x__h4519 =
	     f_13$D_OUT[64] ?
	       f_13$D_OUT[31:0] + f_13$D_OUT[63:32] :
	       f_13$D_OUT[31:0] ;
  assign x__h4653 = { 1'd0, f_14$D_OUT[79:65] } ;
  assign x__h4681 = { f_14$D_OUT[62:32], 1'd0 } ;
  assign x__h4696 =
	     f_14$D_OUT[64] ?
	       f_14$D_OUT[31:0] + f_14$D_OUT[63:32] :
	       f_14$D_OUT[31:0] ;
  assign x__h4830 = { 1'd0, f_15$D_OUT[79:65] } ;
  assign x__h4858 = { f_15$D_OUT[62:32], 1'd0 } ;
  assign x__h4873 =
	     f_15$D_OUT[64] ?
	       f_15$D_OUT[31:0] + f_15$D_OUT[63:32] :
	       f_15$D_OUT[31:0] ;
  assign x__h5019 = { 16'd0, start_m1 } ;
endmodule  // mkElasticPipe
