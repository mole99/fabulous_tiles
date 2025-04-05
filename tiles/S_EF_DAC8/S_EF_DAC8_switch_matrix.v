 // NumberOfConfigBits: 48
module S_EF_DAC8_switch_matrix
    #(
        parameter NoConfigBits=48
    )
    (
        input S1END0,
        input S1END1,
        input S1END2,
        input S1END3,
        input S2MID0,
        input S2MID1,
        input S2MID2,
        input S2MID3,
        input S2MID4,
        input S2MID5,
        input S2MID6,
        input S2MID7,
        input S2END0,
        input S2END1,
        input S2END2,
        input S2END3,
        input S2END4,
        input S2END5,
        input S2END6,
        input S2END7,
        input S4END0,
        input S4END1,
        input S4END2,
        input S4END3,
        input S4END4,
        input S4END5,
        input S4END6,
        input S4END7,
        input S4END8,
        input S4END9,
        input S4END10,
        input S4END11,
        input S4END12,
        input S4END13,
        input S4END14,
        input S4END15,
        input SS4END0,
        input SS4END1,
        input SS4END2,
        input SS4END3,
        input SS4END4,
        input SS4END5,
        input SS4END6,
        input SS4END7,
        input SS4END8,
        input SS4END9,
        input SS4END10,
        input SS4END11,
        input SS4END12,
        input SS4END13,
        input SS4END14,
        input SS4END15,
        output N1BEG0,
        output N1BEG1,
        output N1BEG2,
        output N1BEG3,
        output N2BEG0,
        output N2BEG1,
        output N2BEG2,
        output N2BEG3,
        output N2BEG4,
        output N2BEG5,
        output N2BEG6,
        output N2BEG7,
        output N2BEGb0,
        output N2BEGb1,
        output N2BEGb2,
        output N2BEGb3,
        output N2BEGb4,
        output N2BEGb5,
        output N2BEGb6,
        output N2BEGb7,
        output N4BEG0,
        output N4BEG1,
        output N4BEG2,
        output N4BEG3,
        output N4BEG4,
        output N4BEG5,
        output N4BEG6,
        output N4BEG7,
        output N4BEG8,
        output N4BEG9,
        output N4BEG10,
        output N4BEG11,
        output N4BEG12,
        output N4BEG13,
        output N4BEG14,
        output N4BEG15,
        output NN4BEG0,
        output NN4BEG1,
        output NN4BEG2,
        output NN4BEG3,
        output NN4BEG4,
        output NN4BEG5,
        output NN4BEG6,
        output NN4BEG7,
        output NN4BEG8,
        output NN4BEG9,
        output NN4BEG10,
        output NN4BEG11,
        output NN4BEG12,
        output NN4BEG13,
        output NN4BEG14,
        output NN4BEG15,
        output Co0,
        output VALUE0,
        output VALUE1,
        output VALUE2,
        output VALUE3,
        output VALUE4,
        output VALUE5,
        output VALUE6,
        output VALUE7,
 //global
        input [NoConfigBits-1:0] ConfigBits,
        input [NoConfigBits-1:0] ConfigBits_N
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[4-1:0] N2BEG0_input;
wire[4-1:0] N2BEG1_input;
wire[4-1:0] N2BEG2_input;
wire[4-1:0] N2BEG3_input;
wire[4-1:0] N2BEG4_input;
wire[4-1:0] N2BEG5_input;
wire[4-1:0] N2BEG6_input;
wire[4-1:0] N2BEG7_input;
wire[4-1:0] N2BEGb0_input;
wire[4-1:0] N2BEGb1_input;
wire[4-1:0] N2BEGb2_input;
wire[4-1:0] N2BEGb3_input;
wire[4-1:0] N2BEGb4_input;
wire[4-1:0] N2BEGb5_input;
wire[4-1:0] N2BEGb6_input;
wire[4-1:0] N2BEGb7_input;
wire[4-1:0] VALUE0_input;
wire[4-1:0] VALUE1_input;
wire[4-1:0] VALUE2_input;
wire[4-1:0] VALUE3_input;
wire[4-1:0] VALUE4_input;
wire[4-1:0] VALUE5_input;
wire[4-1:0] VALUE6_input;
wire[4-1:0] VALUE7_input;

wire[2-1:0] DEBUG_select_N2BEG0;
wire[2-1:0] DEBUG_select_N2BEG1;
wire[2-1:0] DEBUG_select_N2BEG2;
wire[2-1:0] DEBUG_select_N2BEG3;
wire[2-1:0] DEBUG_select_N2BEG4;
wire[2-1:0] DEBUG_select_N2BEG5;
wire[2-1:0] DEBUG_select_N2BEG6;
wire[2-1:0] DEBUG_select_N2BEG7;
wire[2-1:0] DEBUG_select_N2BEGb0;
wire[2-1:0] DEBUG_select_N2BEGb1;
wire[2-1:0] DEBUG_select_N2BEGb2;
wire[2-1:0] DEBUG_select_N2BEGb3;
wire[2-1:0] DEBUG_select_N2BEGb4;
wire[2-1:0] DEBUG_select_N2BEGb5;
wire[2-1:0] DEBUG_select_N2BEGb6;
wire[2-1:0] DEBUG_select_N2BEGb7;
wire[2-1:0] DEBUG_select_VALUE0;
wire[2-1:0] DEBUG_select_VALUE1;
wire[2-1:0] DEBUG_select_VALUE2;
wire[2-1:0] DEBUG_select_VALUE3;
wire[2-1:0] DEBUG_select_VALUE4;
wire[2-1:0] DEBUG_select_VALUE5;
wire[2-1:0] DEBUG_select_VALUE6;
wire[2-1:0] DEBUG_select_VALUE7;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer N1BEG0 MUX-1
assign N1BEG0 = S1END3;

 //switch matrix multiplexer N1BEG1 MUX-1
assign N1BEG1 = S1END2;

 //switch matrix multiplexer N1BEG2 MUX-1
assign N1BEG2 = S1END1;

 //switch matrix multiplexer N1BEG3 MUX-1
assign N1BEG3 = S1END0;

 //switch matrix multiplexer N2BEG0 MUX-4
assign N2BEG0_input = {SS4END15,SS4END7,S4END7,S2MID7};
cus_mux41_buf inst_cus_mux41_buf_N2BEG0 (
    .A0(N2BEG0_input[0]),
    .A1(N2BEG0_input[1]),
    .A2(N2BEG0_input[2]),
    .A3(N2BEG0_input[3]),
    .S0(ConfigBits[0+0]),
    .S0N(ConfigBits_N[0+0]),
    .S1(ConfigBits[0+1]),
    .S1N(ConfigBits_N[0+1]),
    .X(N2BEG0)
);

 //switch matrix multiplexer N2BEG1 MUX-4
assign N2BEG1_input = {SS4END14,SS4END6,S4END6,S2MID6};
cus_mux41_buf inst_cus_mux41_buf_N2BEG1 (
    .A0(N2BEG1_input[0]),
    .A1(N2BEG1_input[1]),
    .A2(N2BEG1_input[2]),
    .A3(N2BEG1_input[3]),
    .S0(ConfigBits[2+0]),
    .S0N(ConfigBits_N[2+0]),
    .S1(ConfigBits[2+1]),
    .S1N(ConfigBits_N[2+1]),
    .X(N2BEG1)
);

 //switch matrix multiplexer N2BEG2 MUX-4
assign N2BEG2_input = {SS4END13,SS4END5,S4END5,S2MID5};
cus_mux41_buf inst_cus_mux41_buf_N2BEG2 (
    .A0(N2BEG2_input[0]),
    .A1(N2BEG2_input[1]),
    .A2(N2BEG2_input[2]),
    .A3(N2BEG2_input[3]),
    .S0(ConfigBits[4+0]),
    .S0N(ConfigBits_N[4+0]),
    .S1(ConfigBits[4+1]),
    .S1N(ConfigBits_N[4+1]),
    .X(N2BEG2)
);

 //switch matrix multiplexer N2BEG3 MUX-4
assign N2BEG3_input = {SS4END12,SS4END4,S4END4,S2MID4};
cus_mux41_buf inst_cus_mux41_buf_N2BEG3 (
    .A0(N2BEG3_input[0]),
    .A1(N2BEG3_input[1]),
    .A2(N2BEG3_input[2]),
    .A3(N2BEG3_input[3]),
    .S0(ConfigBits[6+0]),
    .S0N(ConfigBits_N[6+0]),
    .S1(ConfigBits[6+1]),
    .S1N(ConfigBits_N[6+1]),
    .X(N2BEG3)
);

 //switch matrix multiplexer N2BEG4 MUX-4
assign N2BEG4_input = {SS4END11,SS4END3,S4END3,S2MID3};
cus_mux41_buf inst_cus_mux41_buf_N2BEG4 (
    .A0(N2BEG4_input[0]),
    .A1(N2BEG4_input[1]),
    .A2(N2BEG4_input[2]),
    .A3(N2BEG4_input[3]),
    .S0(ConfigBits[8+0]),
    .S0N(ConfigBits_N[8+0]),
    .S1(ConfigBits[8+1]),
    .S1N(ConfigBits_N[8+1]),
    .X(N2BEG4)
);

 //switch matrix multiplexer N2BEG5 MUX-4
assign N2BEG5_input = {SS4END10,SS4END2,S4END2,S2MID2};
cus_mux41_buf inst_cus_mux41_buf_N2BEG5 (
    .A0(N2BEG5_input[0]),
    .A1(N2BEG5_input[1]),
    .A2(N2BEG5_input[2]),
    .A3(N2BEG5_input[3]),
    .S0(ConfigBits[10+0]),
    .S0N(ConfigBits_N[10+0]),
    .S1(ConfigBits[10+1]),
    .S1N(ConfigBits_N[10+1]),
    .X(N2BEG5)
);

 //switch matrix multiplexer N2BEG6 MUX-4
assign N2BEG6_input = {SS4END9,SS4END1,S4END1,S2MID1};
cus_mux41_buf inst_cus_mux41_buf_N2BEG6 (
    .A0(N2BEG6_input[0]),
    .A1(N2BEG6_input[1]),
    .A2(N2BEG6_input[2]),
    .A3(N2BEG6_input[3]),
    .S0(ConfigBits[12+0]),
    .S0N(ConfigBits_N[12+0]),
    .S1(ConfigBits[12+1]),
    .S1N(ConfigBits_N[12+1]),
    .X(N2BEG6)
);

 //switch matrix multiplexer N2BEG7 MUX-4
assign N2BEG7_input = {SS4END8,SS4END0,S4END0,S2MID0};
cus_mux41_buf inst_cus_mux41_buf_N2BEG7 (
    .A0(N2BEG7_input[0]),
    .A1(N2BEG7_input[1]),
    .A2(N2BEG7_input[2]),
    .A3(N2BEG7_input[3]),
    .S0(ConfigBits[14+0]),
    .S0N(ConfigBits_N[14+0]),
    .S1(ConfigBits[14+1]),
    .S1N(ConfigBits_N[14+1]),
    .X(N2BEG7)
);

 //switch matrix multiplexer N2BEGb0 MUX-4
assign N2BEGb0_input = {SS4END15,SS4END7,S4END7,S2END7};
cus_mux41_buf inst_cus_mux41_buf_N2BEGb0 (
    .A0(N2BEGb0_input[0]),
    .A1(N2BEGb0_input[1]),
    .A2(N2BEGb0_input[2]),
    .A3(N2BEGb0_input[3]),
    .S0(ConfigBits[16+0]),
    .S0N(ConfigBits_N[16+0]),
    .S1(ConfigBits[16+1]),
    .S1N(ConfigBits_N[16+1]),
    .X(N2BEGb0)
);

 //switch matrix multiplexer N2BEGb1 MUX-4
assign N2BEGb1_input = {SS4END14,SS4END6,S4END6,S2END6};
cus_mux41_buf inst_cus_mux41_buf_N2BEGb1 (
    .A0(N2BEGb1_input[0]),
    .A1(N2BEGb1_input[1]),
    .A2(N2BEGb1_input[2]),
    .A3(N2BEGb1_input[3]),
    .S0(ConfigBits[18+0]),
    .S0N(ConfigBits_N[18+0]),
    .S1(ConfigBits[18+1]),
    .S1N(ConfigBits_N[18+1]),
    .X(N2BEGb1)
);

 //switch matrix multiplexer N2BEGb2 MUX-4
assign N2BEGb2_input = {SS4END13,SS4END5,S4END5,S2END5};
cus_mux41_buf inst_cus_mux41_buf_N2BEGb2 (
    .A0(N2BEGb2_input[0]),
    .A1(N2BEGb2_input[1]),
    .A2(N2BEGb2_input[2]),
    .A3(N2BEGb2_input[3]),
    .S0(ConfigBits[20+0]),
    .S0N(ConfigBits_N[20+0]),
    .S1(ConfigBits[20+1]),
    .S1N(ConfigBits_N[20+1]),
    .X(N2BEGb2)
);

 //switch matrix multiplexer N2BEGb3 MUX-4
assign N2BEGb3_input = {SS4END12,SS4END4,S4END4,S2END4};
cus_mux41_buf inst_cus_mux41_buf_N2BEGb3 (
    .A0(N2BEGb3_input[0]),
    .A1(N2BEGb3_input[1]),
    .A2(N2BEGb3_input[2]),
    .A3(N2BEGb3_input[3]),
    .S0(ConfigBits[22+0]),
    .S0N(ConfigBits_N[22+0]),
    .S1(ConfigBits[22+1]),
    .S1N(ConfigBits_N[22+1]),
    .X(N2BEGb3)
);

 //switch matrix multiplexer N2BEGb4 MUX-4
assign N2BEGb4_input = {SS4END11,SS4END3,S4END3,S2END3};
cus_mux41_buf inst_cus_mux41_buf_N2BEGb4 (
    .A0(N2BEGb4_input[0]),
    .A1(N2BEGb4_input[1]),
    .A2(N2BEGb4_input[2]),
    .A3(N2BEGb4_input[3]),
    .S0(ConfigBits[24+0]),
    .S0N(ConfigBits_N[24+0]),
    .S1(ConfigBits[24+1]),
    .S1N(ConfigBits_N[24+1]),
    .X(N2BEGb4)
);

 //switch matrix multiplexer N2BEGb5 MUX-4
assign N2BEGb5_input = {SS4END10,SS4END2,S4END2,S2END2};
cus_mux41_buf inst_cus_mux41_buf_N2BEGb5 (
    .A0(N2BEGb5_input[0]),
    .A1(N2BEGb5_input[1]),
    .A2(N2BEGb5_input[2]),
    .A3(N2BEGb5_input[3]),
    .S0(ConfigBits[26+0]),
    .S0N(ConfigBits_N[26+0]),
    .S1(ConfigBits[26+1]),
    .S1N(ConfigBits_N[26+1]),
    .X(N2BEGb5)
);

 //switch matrix multiplexer N2BEGb6 MUX-4
assign N2BEGb6_input = {SS4END9,SS4END1,S4END1,S2END1};
cus_mux41_buf inst_cus_mux41_buf_N2BEGb6 (
    .A0(N2BEGb6_input[0]),
    .A1(N2BEGb6_input[1]),
    .A2(N2BEGb6_input[2]),
    .A3(N2BEGb6_input[3]),
    .S0(ConfigBits[28+0]),
    .S0N(ConfigBits_N[28+0]),
    .S1(ConfigBits[28+1]),
    .S1N(ConfigBits_N[28+1]),
    .X(N2BEGb6)
);

 //switch matrix multiplexer N2BEGb7 MUX-4
assign N2BEGb7_input = {SS4END8,SS4END0,S4END0,S2END0};
cus_mux41_buf inst_cus_mux41_buf_N2BEGb7 (
    .A0(N2BEGb7_input[0]),
    .A1(N2BEGb7_input[1]),
    .A2(N2BEGb7_input[2]),
    .A3(N2BEGb7_input[3]),
    .S0(ConfigBits[30+0]),
    .S0N(ConfigBits_N[30+0]),
    .S1(ConfigBits[30+1]),
    .S1N(ConfigBits_N[30+1]),
    .X(N2BEGb7)
);

 //switch matrix multiplexer N4BEG0 MUX-1
assign N4BEG0 = S4END15;

 //switch matrix multiplexer N4BEG1 MUX-1
assign N4BEG1 = S4END14;

 //switch matrix multiplexer N4BEG2 MUX-1
assign N4BEG2 = S4END13;

 //switch matrix multiplexer N4BEG3 MUX-1
assign N4BEG3 = S4END12;

 //switch matrix multiplexer N4BEG4 MUX-1
assign N4BEG4 = S4END11;

 //switch matrix multiplexer N4BEG5 MUX-1
assign N4BEG5 = S4END10;

 //switch matrix multiplexer N4BEG6 MUX-1
assign N4BEG6 = S4END9;

 //switch matrix multiplexer N4BEG7 MUX-1
assign N4BEG7 = S4END8;

 //switch matrix multiplexer N4BEG8 MUX-1
assign N4BEG8 = S4END7;

 //switch matrix multiplexer N4BEG9 MUX-1
assign N4BEG9 = S4END6;

 //switch matrix multiplexer N4BEG10 MUX-1
assign N4BEG10 = S4END5;

 //switch matrix multiplexer N4BEG11 MUX-1
assign N4BEG11 = S4END4;

 //switch matrix multiplexer N4BEG12 MUX-1
assign N4BEG12 = S4END3;

 //switch matrix multiplexer N4BEG13 MUX-1
assign N4BEG13 = S4END2;

 //switch matrix multiplexer N4BEG14 MUX-1
assign N4BEG14 = S4END1;

 //switch matrix multiplexer N4BEG15 MUX-1
assign N4BEG15 = S4END0;

 //switch matrix multiplexer NN4BEG0 MUX-1
assign NN4BEG0 = SS4END15;

 //switch matrix multiplexer NN4BEG1 MUX-1
assign NN4BEG1 = SS4END14;

 //switch matrix multiplexer NN4BEG2 MUX-1
assign NN4BEG2 = SS4END13;

 //switch matrix multiplexer NN4BEG3 MUX-1
assign NN4BEG3 = SS4END12;

 //switch matrix multiplexer NN4BEG4 MUX-1
assign NN4BEG4 = SS4END11;

 //switch matrix multiplexer NN4BEG5 MUX-1
assign NN4BEG5 = SS4END10;

 //switch matrix multiplexer NN4BEG6 MUX-1
assign NN4BEG6 = SS4END9;

 //switch matrix multiplexer NN4BEG7 MUX-1
assign NN4BEG7 = SS4END8;

 //switch matrix multiplexer NN4BEG8 MUX-1
assign NN4BEG8 = SS4END7;

 //switch matrix multiplexer NN4BEG9 MUX-1
assign NN4BEG9 = SS4END6;

 //switch matrix multiplexer NN4BEG10 MUX-1
assign NN4BEG10 = SS4END5;

 //switch matrix multiplexer NN4BEG11 MUX-1
assign NN4BEG11 = SS4END4;

 //switch matrix multiplexer NN4BEG12 MUX-1
assign NN4BEG12 = SS4END3;

 //switch matrix multiplexer NN4BEG13 MUX-1
assign NN4BEG13 = SS4END2;

 //switch matrix multiplexer NN4BEG14 MUX-1
assign NN4BEG14 = SS4END1;

 //switch matrix multiplexer NN4BEG15 MUX-1
assign NN4BEG15 = SS4END0;

 //switch matrix multiplexer Co0 MUX-1
assign Co0 = GND0;

 //switch matrix multiplexer VALUE0 MUX-4
assign VALUE0_input = {SS4END0,S4END0,S2END4,S2MID0};
cus_mux41_buf inst_cus_mux41_buf_VALUE0 (
    .A0(VALUE0_input[0]),
    .A1(VALUE0_input[1]),
    .A2(VALUE0_input[2]),
    .A3(VALUE0_input[3]),
    .S0(ConfigBits[32+0]),
    .S0N(ConfigBits_N[32+0]),
    .S1(ConfigBits[32+1]),
    .S1N(ConfigBits_N[32+1]),
    .X(VALUE0)
);

 //switch matrix multiplexer VALUE1 MUX-4
assign VALUE1_input = {SS4END1,S4END1,S2END5,S2MID1};
cus_mux41_buf inst_cus_mux41_buf_VALUE1 (
    .A0(VALUE1_input[0]),
    .A1(VALUE1_input[1]),
    .A2(VALUE1_input[2]),
    .A3(VALUE1_input[3]),
    .S0(ConfigBits[34+0]),
    .S0N(ConfigBits_N[34+0]),
    .S1(ConfigBits[34+1]),
    .S1N(ConfigBits_N[34+1]),
    .X(VALUE1)
);

 //switch matrix multiplexer VALUE2 MUX-4
assign VALUE2_input = {SS4END2,S4END2,S2END6,S2MID2};
cus_mux41_buf inst_cus_mux41_buf_VALUE2 (
    .A0(VALUE2_input[0]),
    .A1(VALUE2_input[1]),
    .A2(VALUE2_input[2]),
    .A3(VALUE2_input[3]),
    .S0(ConfigBits[36+0]),
    .S0N(ConfigBits_N[36+0]),
    .S1(ConfigBits[36+1]),
    .S1N(ConfigBits_N[36+1]),
    .X(VALUE2)
);

 //switch matrix multiplexer VALUE3 MUX-4
assign VALUE3_input = {SS4END3,S4END3,S2END7,S2MID3};
cus_mux41_buf inst_cus_mux41_buf_VALUE3 (
    .A0(VALUE3_input[0]),
    .A1(VALUE3_input[1]),
    .A2(VALUE3_input[2]),
    .A3(VALUE3_input[3]),
    .S0(ConfigBits[38+0]),
    .S0N(ConfigBits_N[38+0]),
    .S1(ConfigBits[38+1]),
    .S1N(ConfigBits_N[38+1]),
    .X(VALUE3)
);

 //switch matrix multiplexer VALUE4 MUX-4
assign VALUE4_input = {SS4END4,S4END4,S2END0,S1END0};
cus_mux41_buf inst_cus_mux41_buf_VALUE4 (
    .A0(VALUE4_input[0]),
    .A1(VALUE4_input[1]),
    .A2(VALUE4_input[2]),
    .A3(VALUE4_input[3]),
    .S0(ConfigBits[40+0]),
    .S0N(ConfigBits_N[40+0]),
    .S1(ConfigBits[40+1]),
    .S1N(ConfigBits_N[40+1]),
    .X(VALUE4)
);

 //switch matrix multiplexer VALUE5 MUX-4
assign VALUE5_input = {SS4END5,S4END5,S2END1,S1END1};
cus_mux41_buf inst_cus_mux41_buf_VALUE5 (
    .A0(VALUE5_input[0]),
    .A1(VALUE5_input[1]),
    .A2(VALUE5_input[2]),
    .A3(VALUE5_input[3]),
    .S0(ConfigBits[42+0]),
    .S0N(ConfigBits_N[42+0]),
    .S1(ConfigBits[42+1]),
    .S1N(ConfigBits_N[42+1]),
    .X(VALUE5)
);

 //switch matrix multiplexer VALUE6 MUX-4
assign VALUE6_input = {SS4END6,S4END6,S2END2,S1END2};
cus_mux41_buf inst_cus_mux41_buf_VALUE6 (
    .A0(VALUE6_input[0]),
    .A1(VALUE6_input[1]),
    .A2(VALUE6_input[2]),
    .A3(VALUE6_input[3]),
    .S0(ConfigBits[44+0]),
    .S0N(ConfigBits_N[44+0]),
    .S1(ConfigBits[44+1]),
    .S1N(ConfigBits_N[44+1]),
    .X(VALUE6)
);

 //switch matrix multiplexer VALUE7 MUX-4
assign VALUE7_input = {SS4END7,S4END7,S2END3,S1END3};
cus_mux41_buf inst_cus_mux41_buf_VALUE7 (
    .A0(VALUE7_input[0]),
    .A1(VALUE7_input[1]),
    .A2(VALUE7_input[2]),
    .A3(VALUE7_input[3]),
    .S0(ConfigBits[46+0]),
    .S0N(ConfigBits_N[46+0]),
    .S1(ConfigBits[46+1]),
    .S1N(ConfigBits_N[46+1]),
    .X(VALUE7)
);


assign DEBUG_select_N2BEG0          = ConfigBits[1:0];
assign DEBUG_select_N2BEG1          = ConfigBits[3:2];
assign DEBUG_select_N2BEG2          = ConfigBits[5:4];
assign DEBUG_select_N2BEG3          = ConfigBits[7:6];
assign DEBUG_select_N2BEG4          = ConfigBits[9:8];
assign DEBUG_select_N2BEG5          = ConfigBits[11:10];
assign DEBUG_select_N2BEG6          = ConfigBits[13:12];
assign DEBUG_select_N2BEG7          = ConfigBits[15:14];
assign DEBUG_select_N2BEGb0         = ConfigBits[17:16];
assign DEBUG_select_N2BEGb1         = ConfigBits[19:18];
assign DEBUG_select_N2BEGb2         = ConfigBits[21:20];
assign DEBUG_select_N2BEGb3         = ConfigBits[23:22];
assign DEBUG_select_N2BEGb4         = ConfigBits[25:24];
assign DEBUG_select_N2BEGb5         = ConfigBits[27:26];
assign DEBUG_select_N2BEGb6         = ConfigBits[29:28];
assign DEBUG_select_N2BEGb7         = ConfigBits[31:30];
assign DEBUG_select_VALUE0          = ConfigBits[33:32];
assign DEBUG_select_VALUE1          = ConfigBits[35:34];
assign DEBUG_select_VALUE2          = ConfigBits[37:36];
assign DEBUG_select_VALUE3          = ConfigBits[39:38];
assign DEBUG_select_VALUE4          = ConfigBits[41:40];
assign DEBUG_select_VALUE5          = ConfigBits[43:42];
assign DEBUG_select_VALUE6          = ConfigBits[45:44];
assign DEBUG_select_VALUE7          = ConfigBits[47:46];
endmodule