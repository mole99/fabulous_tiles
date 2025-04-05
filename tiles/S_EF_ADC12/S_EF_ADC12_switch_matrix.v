 // NumberOfConfigBits: 62
module S_EF_ADC12_switch_matrix
    #(
        parameter NoConfigBits=62
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
        input VALID,
        input VALUE0,
        input VALUE1,
        input VALUE2,
        input VALUE3,
        input VALUE4,
        input VALUE5,
        input VALUE6,
        input VALUE7,
        input VALUE8,
        input VALUE9,
        input VALUE10,
        input VALUE11,
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
        output RESET,
        output START,
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

wire[4-1:0] N1BEG0_input;
wire[4-1:0] N1BEG1_input;
wire[4-1:0] N1BEG2_input;
wire[4-1:0] N1BEG3_input;
wire[2-1:0] N2BEG0_input;
wire[2-1:0] N2BEG1_input;
wire[2-1:0] N2BEG2_input;
wire[2-1:0] N2BEG3_input;
wire[2-1:0] N2BEG4_input;
wire[2-1:0] N2BEG5_input;
wire[2-1:0] N2BEG6_input;
wire[2-1:0] N2BEG7_input;
wire[2-1:0] N2BEGb0_input;
wire[2-1:0] N2BEGb1_input;
wire[2-1:0] N2BEGb2_input;
wire[2-1:0] N2BEGb3_input;
wire[2-1:0] N2BEGb4_input;
wire[2-1:0] N2BEGb5_input;
wire[2-1:0] N2BEGb6_input;
wire[2-1:0] N2BEGb7_input;
wire[2-1:0] N4BEG0_input;
wire[2-1:0] N4BEG1_input;
wire[2-1:0] N4BEG2_input;
wire[2-1:0] N4BEG3_input;
wire[2-1:0] N4BEG4_input;
wire[2-1:0] N4BEG5_input;
wire[2-1:0] N4BEG6_input;
wire[2-1:0] N4BEG7_input;
wire[2-1:0] N4BEG8_input;
wire[2-1:0] N4BEG9_input;
wire[2-1:0] N4BEG10_input;
wire[2-1:0] N4BEG11_input;
wire[2-1:0] N4BEG12_input;
wire[2-1:0] N4BEG13_input;
wire[2-1:0] N4BEG14_input;
wire[2-1:0] N4BEG15_input;
wire[2-1:0] NN4BEG0_input;
wire[2-1:0] NN4BEG1_input;
wire[2-1:0] NN4BEG2_input;
wire[2-1:0] NN4BEG3_input;
wire[2-1:0] NN4BEG4_input;
wire[2-1:0] NN4BEG5_input;
wire[2-1:0] NN4BEG6_input;
wire[2-1:0] NN4BEG7_input;
wire[2-1:0] NN4BEG8_input;
wire[2-1:0] NN4BEG9_input;
wire[2-1:0] NN4BEG10_input;
wire[2-1:0] NN4BEG11_input;
wire[2-1:0] NN4BEG12_input;
wire[2-1:0] NN4BEG13_input;
wire[2-1:0] NN4BEG14_input;
wire[2-1:0] NN4BEG15_input;
wire[8-1:0] RESET_input;
wire[8-1:0] START_input;

wire[2-1:0] DEBUG_select_N1BEG0;
wire[2-1:0] DEBUG_select_N1BEG1;
wire[2-1:0] DEBUG_select_N1BEG2;
wire[2-1:0] DEBUG_select_N1BEG3;
wire[1-1:0] DEBUG_select_N2BEG0;
wire[1-1:0] DEBUG_select_N2BEG1;
wire[1-1:0] DEBUG_select_N2BEG2;
wire[1-1:0] DEBUG_select_N2BEG3;
wire[1-1:0] DEBUG_select_N2BEG4;
wire[1-1:0] DEBUG_select_N2BEG5;
wire[1-1:0] DEBUG_select_N2BEG6;
wire[1-1:0] DEBUG_select_N2BEG7;
wire[1-1:0] DEBUG_select_N2BEGb0;
wire[1-1:0] DEBUG_select_N2BEGb1;
wire[1-1:0] DEBUG_select_N2BEGb2;
wire[1-1:0] DEBUG_select_N2BEGb3;
wire[1-1:0] DEBUG_select_N2BEGb4;
wire[1-1:0] DEBUG_select_N2BEGb5;
wire[1-1:0] DEBUG_select_N2BEGb6;
wire[1-1:0] DEBUG_select_N2BEGb7;
wire[1-1:0] DEBUG_select_N4BEG0;
wire[1-1:0] DEBUG_select_N4BEG1;
wire[1-1:0] DEBUG_select_N4BEG2;
wire[1-1:0] DEBUG_select_N4BEG3;
wire[1-1:0] DEBUG_select_N4BEG4;
wire[1-1:0] DEBUG_select_N4BEG5;
wire[1-1:0] DEBUG_select_N4BEG6;
wire[1-1:0] DEBUG_select_N4BEG7;
wire[1-1:0] DEBUG_select_N4BEG8;
wire[1-1:0] DEBUG_select_N4BEG9;
wire[1-1:0] DEBUG_select_N4BEG10;
wire[1-1:0] DEBUG_select_N4BEG11;
wire[1-1:0] DEBUG_select_N4BEG12;
wire[1-1:0] DEBUG_select_N4BEG13;
wire[1-1:0] DEBUG_select_N4BEG14;
wire[1-1:0] DEBUG_select_N4BEG15;
wire[1-1:0] DEBUG_select_NN4BEG0;
wire[1-1:0] DEBUG_select_NN4BEG1;
wire[1-1:0] DEBUG_select_NN4BEG2;
wire[1-1:0] DEBUG_select_NN4BEG3;
wire[1-1:0] DEBUG_select_NN4BEG4;
wire[1-1:0] DEBUG_select_NN4BEG5;
wire[1-1:0] DEBUG_select_NN4BEG6;
wire[1-1:0] DEBUG_select_NN4BEG7;
wire[1-1:0] DEBUG_select_NN4BEG8;
wire[1-1:0] DEBUG_select_NN4BEG9;
wire[1-1:0] DEBUG_select_NN4BEG10;
wire[1-1:0] DEBUG_select_NN4BEG11;
wire[1-1:0] DEBUG_select_NN4BEG12;
wire[1-1:0] DEBUG_select_NN4BEG13;
wire[1-1:0] DEBUG_select_NN4BEG14;
wire[1-1:0] DEBUG_select_NN4BEG15;
wire[3-1:0] DEBUG_select_RESET;
wire[3-1:0] DEBUG_select_START;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer N1BEG0 MUX-4
assign N1BEG0_input = {VALUE11,VALUE7,VALUE3,S1END3};
cus_mux41_buf inst_cus_mux41_buf_N1BEG0 (
    .A0(N1BEG0_input[0]),
    .A1(N1BEG0_input[1]),
    .A2(N1BEG0_input[2]),
    .A3(N1BEG0_input[3]),
    .S0(ConfigBits[0+0]),
    .S0N(ConfigBits_N[0+0]),
    .S1(ConfigBits[0+1]),
    .S1N(ConfigBits_N[0+1]),
    .X(N1BEG0)
);

 //switch matrix multiplexer N1BEG1 MUX-4
assign N1BEG1_input = {VALUE10,VALUE6,VALUE2,S1END2};
cus_mux41_buf inst_cus_mux41_buf_N1BEG1 (
    .A0(N1BEG1_input[0]),
    .A1(N1BEG1_input[1]),
    .A2(N1BEG1_input[2]),
    .A3(N1BEG1_input[3]),
    .S0(ConfigBits[2+0]),
    .S0N(ConfigBits_N[2+0]),
    .S1(ConfigBits[2+1]),
    .S1N(ConfigBits_N[2+1]),
    .X(N1BEG1)
);

 //switch matrix multiplexer N1BEG2 MUX-4
assign N1BEG2_input = {VALUE9,VALUE5,VALUE1,S1END1};
cus_mux41_buf inst_cus_mux41_buf_N1BEG2 (
    .A0(N1BEG2_input[0]),
    .A1(N1BEG2_input[1]),
    .A2(N1BEG2_input[2]),
    .A3(N1BEG2_input[3]),
    .S0(ConfigBits[4+0]),
    .S0N(ConfigBits_N[4+0]),
    .S1(ConfigBits[4+1]),
    .S1N(ConfigBits_N[4+1]),
    .X(N1BEG2)
);

 //switch matrix multiplexer N1BEG3 MUX-4
assign N1BEG3_input = {VALUE8,VALUE4,VALUE0,S1END0};
cus_mux41_buf inst_cus_mux41_buf_N1BEG3 (
    .A0(N1BEG3_input[0]),
    .A1(N1BEG3_input[1]),
    .A2(N1BEG3_input[2]),
    .A3(N1BEG3_input[3]),
    .S0(ConfigBits[6+0]),
    .S0N(ConfigBits_N[6+0]),
    .S1(ConfigBits[6+1]),
    .S1N(ConfigBits_N[6+1]),
    .X(N1BEG3)
);

 //switch matrix multiplexer N2BEG0 MUX-2
assign N2BEG0_input = {VALUE7,S2MID7};
cus_mux21 inst_cus_mux21_N2BEG0 (
    .A0(N2BEG0_input[0]),
    .A1(N2BEG0_input[1]),
    .S(ConfigBits[8+0]),
    .X(N2BEG0)
);

 //switch matrix multiplexer N2BEG1 MUX-2
assign N2BEG1_input = {VALUE6,S2MID6};
cus_mux21 inst_cus_mux21_N2BEG1 (
    .A0(N2BEG1_input[0]),
    .A1(N2BEG1_input[1]),
    .S(ConfigBits[9+0]),
    .X(N2BEG1)
);

 //switch matrix multiplexer N2BEG2 MUX-2
assign N2BEG2_input = {VALUE5,S2MID5};
cus_mux21 inst_cus_mux21_N2BEG2 (
    .A0(N2BEG2_input[0]),
    .A1(N2BEG2_input[1]),
    .S(ConfigBits[10+0]),
    .X(N2BEG2)
);

 //switch matrix multiplexer N2BEG3 MUX-2
assign N2BEG3_input = {VALUE4,S2MID4};
cus_mux21 inst_cus_mux21_N2BEG3 (
    .A0(N2BEG3_input[0]),
    .A1(N2BEG3_input[1]),
    .S(ConfigBits[11+0]),
    .X(N2BEG3)
);

 //switch matrix multiplexer N2BEG4 MUX-2
assign N2BEG4_input = {VALUE3,S2MID3};
cus_mux21 inst_cus_mux21_N2BEG4 (
    .A0(N2BEG4_input[0]),
    .A1(N2BEG4_input[1]),
    .S(ConfigBits[12+0]),
    .X(N2BEG4)
);

 //switch matrix multiplexer N2BEG5 MUX-2
assign N2BEG5_input = {VALUE2,S2MID2};
cus_mux21 inst_cus_mux21_N2BEG5 (
    .A0(N2BEG5_input[0]),
    .A1(N2BEG5_input[1]),
    .S(ConfigBits[13+0]),
    .X(N2BEG5)
);

 //switch matrix multiplexer N2BEG6 MUX-2
assign N2BEG6_input = {VALUE1,S2MID1};
cus_mux21 inst_cus_mux21_N2BEG6 (
    .A0(N2BEG6_input[0]),
    .A1(N2BEG6_input[1]),
    .S(ConfigBits[14+0]),
    .X(N2BEG6)
);

 //switch matrix multiplexer N2BEG7 MUX-2
assign N2BEG7_input = {VALUE0,S2MID0};
cus_mux21 inst_cus_mux21_N2BEG7 (
    .A0(N2BEG7_input[0]),
    .A1(N2BEG7_input[1]),
    .S(ConfigBits[15+0]),
    .X(N2BEG7)
);

 //switch matrix multiplexer N2BEGb0 MUX-2
assign N2BEGb0_input = {VALUE11,S2END7};
cus_mux21 inst_cus_mux21_N2BEGb0 (
    .A0(N2BEGb0_input[0]),
    .A1(N2BEGb0_input[1]),
    .S(ConfigBits[16+0]),
    .X(N2BEGb0)
);

 //switch matrix multiplexer N2BEGb1 MUX-2
assign N2BEGb1_input = {VALUE10,S2END6};
cus_mux21 inst_cus_mux21_N2BEGb1 (
    .A0(N2BEGb1_input[0]),
    .A1(N2BEGb1_input[1]),
    .S(ConfigBits[17+0]),
    .X(N2BEGb1)
);

 //switch matrix multiplexer N2BEGb2 MUX-2
assign N2BEGb2_input = {VALUE9,S2END5};
cus_mux21 inst_cus_mux21_N2BEGb2 (
    .A0(N2BEGb2_input[0]),
    .A1(N2BEGb2_input[1]),
    .S(ConfigBits[18+0]),
    .X(N2BEGb2)
);

 //switch matrix multiplexer N2BEGb3 MUX-2
assign N2BEGb3_input = {VALUE8,S2END4};
cus_mux21 inst_cus_mux21_N2BEGb3 (
    .A0(N2BEGb3_input[0]),
    .A1(N2BEGb3_input[1]),
    .S(ConfigBits[19+0]),
    .X(N2BEGb3)
);

 //switch matrix multiplexer N2BEGb4 MUX-2
assign N2BEGb4_input = {VALUE7,S2END3};
cus_mux21 inst_cus_mux21_N2BEGb4 (
    .A0(N2BEGb4_input[0]),
    .A1(N2BEGb4_input[1]),
    .S(ConfigBits[20+0]),
    .X(N2BEGb4)
);

 //switch matrix multiplexer N2BEGb5 MUX-2
assign N2BEGb5_input = {VALUE6,S2END2};
cus_mux21 inst_cus_mux21_N2BEGb5 (
    .A0(N2BEGb5_input[0]),
    .A1(N2BEGb5_input[1]),
    .S(ConfigBits[21+0]),
    .X(N2BEGb5)
);

 //switch matrix multiplexer N2BEGb6 MUX-2
assign N2BEGb6_input = {VALUE5,S2END1};
cus_mux21 inst_cus_mux21_N2BEGb6 (
    .A0(N2BEGb6_input[0]),
    .A1(N2BEGb6_input[1]),
    .S(ConfigBits[22+0]),
    .X(N2BEGb6)
);

 //switch matrix multiplexer N2BEGb7 MUX-2
assign N2BEGb7_input = {VALUE4,S2END0};
cus_mux21 inst_cus_mux21_N2BEGb7 (
    .A0(N2BEGb7_input[0]),
    .A1(N2BEGb7_input[1]),
    .S(ConfigBits[23+0]),
    .X(N2BEGb7)
);

 //switch matrix multiplexer N4BEG0 MUX-2
assign N4BEG0_input = {VALID,S4END15};
cus_mux21 inst_cus_mux21_N4BEG0 (
    .A0(N4BEG0_input[0]),
    .A1(N4BEG0_input[1]),
    .S(ConfigBits[24+0]),
    .X(N4BEG0)
);

 //switch matrix multiplexer N4BEG1 MUX-2
assign N4BEG1_input = {VALID,S4END14};
cus_mux21 inst_cus_mux21_N4BEG1 (
    .A0(N4BEG1_input[0]),
    .A1(N4BEG1_input[1]),
    .S(ConfigBits[25+0]),
    .X(N4BEG1)
);

 //switch matrix multiplexer N4BEG2 MUX-2
assign N4BEG2_input = {VALID,S4END13};
cus_mux21 inst_cus_mux21_N4BEG2 (
    .A0(N4BEG2_input[0]),
    .A1(N4BEG2_input[1]),
    .S(ConfigBits[26+0]),
    .X(N4BEG2)
);

 //switch matrix multiplexer N4BEG3 MUX-2
assign N4BEG3_input = {VALID,S4END12};
cus_mux21 inst_cus_mux21_N4BEG3 (
    .A0(N4BEG3_input[0]),
    .A1(N4BEG3_input[1]),
    .S(ConfigBits[27+0]),
    .X(N4BEG3)
);

 //switch matrix multiplexer N4BEG4 MUX-2
assign N4BEG4_input = {VALUE0,S4END11};
cus_mux21 inst_cus_mux21_N4BEG4 (
    .A0(N4BEG4_input[0]),
    .A1(N4BEG4_input[1]),
    .S(ConfigBits[28+0]),
    .X(N4BEG4)
);

 //switch matrix multiplexer N4BEG5 MUX-2
assign N4BEG5_input = {VALUE1,S4END10};
cus_mux21 inst_cus_mux21_N4BEG5 (
    .A0(N4BEG5_input[0]),
    .A1(N4BEG5_input[1]),
    .S(ConfigBits[29+0]),
    .X(N4BEG5)
);

 //switch matrix multiplexer N4BEG6 MUX-2
assign N4BEG6_input = {VALUE2,S4END9};
cus_mux21 inst_cus_mux21_N4BEG6 (
    .A0(N4BEG6_input[0]),
    .A1(N4BEG6_input[1]),
    .S(ConfigBits[30+0]),
    .X(N4BEG6)
);

 //switch matrix multiplexer N4BEG7 MUX-2
assign N4BEG7_input = {VALUE3,S4END8};
cus_mux21 inst_cus_mux21_N4BEG7 (
    .A0(N4BEG7_input[0]),
    .A1(N4BEG7_input[1]),
    .S(ConfigBits[31+0]),
    .X(N4BEG7)
);

 //switch matrix multiplexer N4BEG8 MUX-2
assign N4BEG8_input = {VALUE4,S4END7};
cus_mux21 inst_cus_mux21_N4BEG8 (
    .A0(N4BEG8_input[0]),
    .A1(N4BEG8_input[1]),
    .S(ConfigBits[32+0]),
    .X(N4BEG8)
);

 //switch matrix multiplexer N4BEG9 MUX-2
assign N4BEG9_input = {VALUE5,S4END6};
cus_mux21 inst_cus_mux21_N4BEG9 (
    .A0(N4BEG9_input[0]),
    .A1(N4BEG9_input[1]),
    .S(ConfigBits[33+0]),
    .X(N4BEG9)
);

 //switch matrix multiplexer N4BEG10 MUX-2
assign N4BEG10_input = {VALUE6,S4END5};
cus_mux21 inst_cus_mux21_N4BEG10 (
    .A0(N4BEG10_input[0]),
    .A1(N4BEG10_input[1]),
    .S(ConfigBits[34+0]),
    .X(N4BEG10)
);

 //switch matrix multiplexer N4BEG11 MUX-2
assign N4BEG11_input = {VALUE7,S4END4};
cus_mux21 inst_cus_mux21_N4BEG11 (
    .A0(N4BEG11_input[0]),
    .A1(N4BEG11_input[1]),
    .S(ConfigBits[35+0]),
    .X(N4BEG11)
);

 //switch matrix multiplexer N4BEG12 MUX-2
assign N4BEG12_input = {VALUE8,S4END3};
cus_mux21 inst_cus_mux21_N4BEG12 (
    .A0(N4BEG12_input[0]),
    .A1(N4BEG12_input[1]),
    .S(ConfigBits[36+0]),
    .X(N4BEG12)
);

 //switch matrix multiplexer N4BEG13 MUX-2
assign N4BEG13_input = {VALUE9,S4END2};
cus_mux21 inst_cus_mux21_N4BEG13 (
    .A0(N4BEG13_input[0]),
    .A1(N4BEG13_input[1]),
    .S(ConfigBits[37+0]),
    .X(N4BEG13)
);

 //switch matrix multiplexer N4BEG14 MUX-2
assign N4BEG14_input = {VALUE10,S4END1};
cus_mux21 inst_cus_mux21_N4BEG14 (
    .A0(N4BEG14_input[0]),
    .A1(N4BEG14_input[1]),
    .S(ConfigBits[38+0]),
    .X(N4BEG14)
);

 //switch matrix multiplexer N4BEG15 MUX-2
assign N4BEG15_input = {VALUE11,S4END0};
cus_mux21 inst_cus_mux21_N4BEG15 (
    .A0(N4BEG15_input[0]),
    .A1(N4BEG15_input[1]),
    .S(ConfigBits[39+0]),
    .X(N4BEG15)
);

 //switch matrix multiplexer NN4BEG0 MUX-2
assign NN4BEG0_input = {VALUE11,SS4END15};
cus_mux21 inst_cus_mux21_NN4BEG0 (
    .A0(NN4BEG0_input[0]),
    .A1(NN4BEG0_input[1]),
    .S(ConfigBits[40+0]),
    .X(NN4BEG0)
);

 //switch matrix multiplexer NN4BEG1 MUX-2
assign NN4BEG1_input = {VALUE10,SS4END14};
cus_mux21 inst_cus_mux21_NN4BEG1 (
    .A0(NN4BEG1_input[0]),
    .A1(NN4BEG1_input[1]),
    .S(ConfigBits[41+0]),
    .X(NN4BEG1)
);

 //switch matrix multiplexer NN4BEG2 MUX-2
assign NN4BEG2_input = {VALUE9,SS4END13};
cus_mux21 inst_cus_mux21_NN4BEG2 (
    .A0(NN4BEG2_input[0]),
    .A1(NN4BEG2_input[1]),
    .S(ConfigBits[42+0]),
    .X(NN4BEG2)
);

 //switch matrix multiplexer NN4BEG3 MUX-2
assign NN4BEG3_input = {VALUE8,SS4END12};
cus_mux21 inst_cus_mux21_NN4BEG3 (
    .A0(NN4BEG3_input[0]),
    .A1(NN4BEG3_input[1]),
    .S(ConfigBits[43+0]),
    .X(NN4BEG3)
);

 //switch matrix multiplexer NN4BEG4 MUX-2
assign NN4BEG4_input = {VALUE7,SS4END11};
cus_mux21 inst_cus_mux21_NN4BEG4 (
    .A0(NN4BEG4_input[0]),
    .A1(NN4BEG4_input[1]),
    .S(ConfigBits[44+0]),
    .X(NN4BEG4)
);

 //switch matrix multiplexer NN4BEG5 MUX-2
assign NN4BEG5_input = {VALUE6,SS4END10};
cus_mux21 inst_cus_mux21_NN4BEG5 (
    .A0(NN4BEG5_input[0]),
    .A1(NN4BEG5_input[1]),
    .S(ConfigBits[45+0]),
    .X(NN4BEG5)
);

 //switch matrix multiplexer NN4BEG6 MUX-2
assign NN4BEG6_input = {VALUE5,SS4END9};
cus_mux21 inst_cus_mux21_NN4BEG6 (
    .A0(NN4BEG6_input[0]),
    .A1(NN4BEG6_input[1]),
    .S(ConfigBits[46+0]),
    .X(NN4BEG6)
);

 //switch matrix multiplexer NN4BEG7 MUX-2
assign NN4BEG7_input = {VALUE4,SS4END8};
cus_mux21 inst_cus_mux21_NN4BEG7 (
    .A0(NN4BEG7_input[0]),
    .A1(NN4BEG7_input[1]),
    .S(ConfigBits[47+0]),
    .X(NN4BEG7)
);

 //switch matrix multiplexer NN4BEG8 MUX-2
assign NN4BEG8_input = {VALUE3,SS4END7};
cus_mux21 inst_cus_mux21_NN4BEG8 (
    .A0(NN4BEG8_input[0]),
    .A1(NN4BEG8_input[1]),
    .S(ConfigBits[48+0]),
    .X(NN4BEG8)
);

 //switch matrix multiplexer NN4BEG9 MUX-2
assign NN4BEG9_input = {VALUE2,SS4END6};
cus_mux21 inst_cus_mux21_NN4BEG9 (
    .A0(NN4BEG9_input[0]),
    .A1(NN4BEG9_input[1]),
    .S(ConfigBits[49+0]),
    .X(NN4BEG9)
);

 //switch matrix multiplexer NN4BEG10 MUX-2
assign NN4BEG10_input = {VALUE1,SS4END5};
cus_mux21 inst_cus_mux21_NN4BEG10 (
    .A0(NN4BEG10_input[0]),
    .A1(NN4BEG10_input[1]),
    .S(ConfigBits[50+0]),
    .X(NN4BEG10)
);

 //switch matrix multiplexer NN4BEG11 MUX-2
assign NN4BEG11_input = {VALUE0,SS4END4};
cus_mux21 inst_cus_mux21_NN4BEG11 (
    .A0(NN4BEG11_input[0]),
    .A1(NN4BEG11_input[1]),
    .S(ConfigBits[51+0]),
    .X(NN4BEG11)
);

 //switch matrix multiplexer NN4BEG12 MUX-2
assign NN4BEG12_input = {VALID,SS4END3};
cus_mux21 inst_cus_mux21_NN4BEG12 (
    .A0(NN4BEG12_input[0]),
    .A1(NN4BEG12_input[1]),
    .S(ConfigBits[52+0]),
    .X(NN4BEG12)
);

 //switch matrix multiplexer NN4BEG13 MUX-2
assign NN4BEG13_input = {VALID,SS4END2};
cus_mux21 inst_cus_mux21_NN4BEG13 (
    .A0(NN4BEG13_input[0]),
    .A1(NN4BEG13_input[1]),
    .S(ConfigBits[53+0]),
    .X(NN4BEG13)
);

 //switch matrix multiplexer NN4BEG14 MUX-2
assign NN4BEG14_input = {VALID,SS4END1};
cus_mux21 inst_cus_mux21_NN4BEG14 (
    .A0(NN4BEG14_input[0]),
    .A1(NN4BEG14_input[1]),
    .S(ConfigBits[54+0]),
    .X(NN4BEG14)
);

 //switch matrix multiplexer NN4BEG15 MUX-2
assign NN4BEG15_input = {VALID,SS4END0};
cus_mux21 inst_cus_mux21_NN4BEG15 (
    .A0(NN4BEG15_input[0]),
    .A1(NN4BEG15_input[1]),
    .S(ConfigBits[55+0]),
    .X(NN4BEG15)
);

 //switch matrix multiplexer Co0 MUX-1
assign Co0 = GND0;

 //switch matrix multiplexer RESET MUX-8
assign RESET_input = {SS4END3,SS4END1,S4END3,S2END7,S2END5,S2MID3,S2MID1,S1END1};
cus_mux81_buf inst_cus_mux81_buf_RESET (
    .A0(RESET_input[0]),
    .A1(RESET_input[1]),
    .A2(RESET_input[2]),
    .A3(RESET_input[3]),
    .A4(RESET_input[4]),
    .A5(RESET_input[5]),
    .A6(RESET_input[6]),
    .A7(RESET_input[7]),
    .S0(ConfigBits[56+0]),
    .S0N(ConfigBits_N[56+0]),
    .S1(ConfigBits[56+1]),
    .S1N(ConfigBits_N[56+1]),
    .S2(ConfigBits[56+2]),
    .S2N(ConfigBits_N[56+2]),
    .X(RESET)
);

 //switch matrix multiplexer START MUX-8
assign START_input = {SS4END2,SS4END0,S4END2,S2END6,S2END4,S2MID2,S2MID0,S1END0};
cus_mux81_buf inst_cus_mux81_buf_START (
    .A0(START_input[0]),
    .A1(START_input[1]),
    .A2(START_input[2]),
    .A3(START_input[3]),
    .A4(START_input[4]),
    .A5(START_input[5]),
    .A6(START_input[6]),
    .A7(START_input[7]),
    .S0(ConfigBits[59+0]),
    .S0N(ConfigBits_N[59+0]),
    .S1(ConfigBits[59+1]),
    .S1N(ConfigBits_N[59+1]),
    .S2(ConfigBits[59+2]),
    .S2N(ConfigBits_N[59+2]),
    .X(START)
);


assign DEBUG_select_N1BEG0          = ConfigBits[1:0];
assign DEBUG_select_N1BEG1          = ConfigBits[3:2];
assign DEBUG_select_N1BEG2          = ConfigBits[5:4];
assign DEBUG_select_N1BEG3          = ConfigBits[7:6];
assign DEBUG_select_N2BEG0          = ConfigBits[8:8];
assign DEBUG_select_N2BEG1          = ConfigBits[9:9];
assign DEBUG_select_N2BEG2          = ConfigBits[10:10];
assign DEBUG_select_N2BEG3          = ConfigBits[11:11];
assign DEBUG_select_N2BEG4          = ConfigBits[12:12];
assign DEBUG_select_N2BEG5          = ConfigBits[13:13];
assign DEBUG_select_N2BEG6          = ConfigBits[14:14];
assign DEBUG_select_N2BEG7          = ConfigBits[15:15];
assign DEBUG_select_N2BEGb0         = ConfigBits[16:16];
assign DEBUG_select_N2BEGb1         = ConfigBits[17:17];
assign DEBUG_select_N2BEGb2         = ConfigBits[18:18];
assign DEBUG_select_N2BEGb3         = ConfigBits[19:19];
assign DEBUG_select_N2BEGb4         = ConfigBits[20:20];
assign DEBUG_select_N2BEGb5         = ConfigBits[21:21];
assign DEBUG_select_N2BEGb6         = ConfigBits[22:22];
assign DEBUG_select_N2BEGb7         = ConfigBits[23:23];
assign DEBUG_select_N4BEG0          = ConfigBits[24:24];
assign DEBUG_select_N4BEG1          = ConfigBits[25:25];
assign DEBUG_select_N4BEG2          = ConfigBits[26:26];
assign DEBUG_select_N4BEG3          = ConfigBits[27:27];
assign DEBUG_select_N4BEG4          = ConfigBits[28:28];
assign DEBUG_select_N4BEG5          = ConfigBits[29:29];
assign DEBUG_select_N4BEG6          = ConfigBits[30:30];
assign DEBUG_select_N4BEG7          = ConfigBits[31:31];
assign DEBUG_select_N4BEG8          = ConfigBits[32:32];
assign DEBUG_select_N4BEG9          = ConfigBits[33:33];
assign DEBUG_select_N4BEG10         = ConfigBits[34:34];
assign DEBUG_select_N4BEG11         = ConfigBits[35:35];
assign DEBUG_select_N4BEG12         = ConfigBits[36:36];
assign DEBUG_select_N4BEG13         = ConfigBits[37:37];
assign DEBUG_select_N4BEG14         = ConfigBits[38:38];
assign DEBUG_select_N4BEG15         = ConfigBits[39:39];
assign DEBUG_select_NN4BEG0         = ConfigBits[40:40];
assign DEBUG_select_NN4BEG1         = ConfigBits[41:41];
assign DEBUG_select_NN4BEG2         = ConfigBits[42:42];
assign DEBUG_select_NN4BEG3         = ConfigBits[43:43];
assign DEBUG_select_NN4BEG4         = ConfigBits[44:44];
assign DEBUG_select_NN4BEG5         = ConfigBits[45:45];
assign DEBUG_select_NN4BEG6         = ConfigBits[46:46];
assign DEBUG_select_NN4BEG7         = ConfigBits[47:47];
assign DEBUG_select_NN4BEG8         = ConfigBits[48:48];
assign DEBUG_select_NN4BEG9         = ConfigBits[49:49];
assign DEBUG_select_NN4BEG10        = ConfigBits[50:50];
assign DEBUG_select_NN4BEG11        = ConfigBits[51:51];
assign DEBUG_select_NN4BEG12        = ConfigBits[52:52];
assign DEBUG_select_NN4BEG13        = ConfigBits[53:53];
assign DEBUG_select_NN4BEG14        = ConfigBits[54:54];
assign DEBUG_select_NN4BEG15        = ConfigBits[55:55];
assign DEBUG_select_RESET           = ConfigBits[58:56];
assign DEBUG_select_START           = ConfigBits[61:59];
endmodule