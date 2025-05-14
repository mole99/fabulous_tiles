 // NumberOfConfigBits: 0
module W_term_single_switch_matrix
    (
        input W1END0,
        input W1END1,
        input W1END2,
        input W1END3,
        input W2MID0,
        input W2MID1,
        input W2MID2,
        input W2MID3,
        input W2MID4,
        input W2MID5,
        input W2MID6,
        input W2MID7,
        input W2END0,
        input W2END1,
        input W2END2,
        input W2END3,
        input W2END4,
        input W2END5,
        input W2END6,
        input W2END7,
        input WW4END0,
        input WW4END1,
        input WW4END2,
        input WW4END3,
        input WW4END4,
        input WW4END5,
        input WW4END6,
        input WW4END7,
        input WW4END8,
        input WW4END9,
        input WW4END10,
        input WW4END11,
        input WW4END12,
        input WW4END13,
        input WW4END14,
        input WW4END15,
        input W6END0,
        input W6END1,
        input W6END2,
        input W6END3,
        input W6END4,
        input W6END5,
        input W6END6,
        input W6END7,
        input W6END8,
        input W6END9,
        input W6END10,
        input W6END11,
        output E1BEG0,
        output E1BEG1,
        output E1BEG2,
        output E1BEG3,
        output E2BEG0,
        output E2BEG1,
        output E2BEG2,
        output E2BEG3,
        output E2BEG4,
        output E2BEG5,
        output E2BEG6,
        output E2BEG7,
        output E2BEGb0,
        output E2BEGb1,
        output E2BEGb2,
        output E2BEGb3,
        output E2BEGb4,
        output E2BEGb5,
        output E2BEGb6,
        output E2BEGb7,
        output EE4BEG0,
        output EE4BEG1,
        output EE4BEG2,
        output EE4BEG3,
        output EE4BEG4,
        output EE4BEG5,
        output EE4BEG6,
        output EE4BEG7,
        output EE4BEG8,
        output EE4BEG9,
        output EE4BEG10,
        output EE4BEG11,
        output EE4BEG12,
        output EE4BEG13,
        output EE4BEG14,
        output EE4BEG15,
        output E6BEG0,
        output E6BEG1,
        output E6BEG2,
        output E6BEG3,
        output E6BEG4,
        output E6BEG5,
        output E6BEG6,
        output E6BEG7,
        output E6BEG8,
        output E6BEG9,
        output E6BEG10,
        output E6BEG11
 //global
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;


 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer E1BEG0 MUX-1
assign E1BEG0 = W1END3;

 //switch matrix multiplexer E1BEG1 MUX-1
assign E1BEG1 = W1END2;

 //switch matrix multiplexer E1BEG2 MUX-1
assign E1BEG2 = W1END1;

 //switch matrix multiplexer E1BEG3 MUX-1
assign E1BEG3 = W1END0;

 //switch matrix multiplexer E2BEG0 MUX-1
assign E2BEG0 = W2MID7;

 //switch matrix multiplexer E2BEG1 MUX-1
assign E2BEG1 = W2MID6;

 //switch matrix multiplexer E2BEG2 MUX-1
assign E2BEG2 = W2MID5;

 //switch matrix multiplexer E2BEG3 MUX-1
assign E2BEG3 = W2MID4;

 //switch matrix multiplexer E2BEG4 MUX-1
assign E2BEG4 = W2MID3;

 //switch matrix multiplexer E2BEG5 MUX-1
assign E2BEG5 = W2MID2;

 //switch matrix multiplexer E2BEG6 MUX-1
assign E2BEG6 = W2MID1;

 //switch matrix multiplexer E2BEG7 MUX-1
assign E2BEG7 = W2MID0;

 //switch matrix multiplexer E2BEGb0 MUX-1
assign E2BEGb0 = W2END7;

 //switch matrix multiplexer E2BEGb1 MUX-1
assign E2BEGb1 = W2END6;

 //switch matrix multiplexer E2BEGb2 MUX-1
assign E2BEGb2 = W2END5;

 //switch matrix multiplexer E2BEGb3 MUX-1
assign E2BEGb3 = W2END4;

 //switch matrix multiplexer E2BEGb4 MUX-1
assign E2BEGb4 = W2END3;

 //switch matrix multiplexer E2BEGb5 MUX-1
assign E2BEGb5 = W2END2;

 //switch matrix multiplexer E2BEGb6 MUX-1
assign E2BEGb6 = W2END1;

 //switch matrix multiplexer E2BEGb7 MUX-1
assign E2BEGb7 = W2END0;

 //switch matrix multiplexer EE4BEG0 MUX-1
assign EE4BEG0 = WW4END15;

 //switch matrix multiplexer EE4BEG1 MUX-1
assign EE4BEG1 = WW4END14;

 //switch matrix multiplexer EE4BEG2 MUX-1
assign EE4BEG2 = WW4END13;

 //switch matrix multiplexer EE4BEG3 MUX-1
assign EE4BEG3 = WW4END12;

 //switch matrix multiplexer EE4BEG4 MUX-1
assign EE4BEG4 = WW4END11;

 //switch matrix multiplexer EE4BEG5 MUX-1
assign EE4BEG5 = WW4END10;

 //switch matrix multiplexer EE4BEG6 MUX-1
assign EE4BEG6 = WW4END9;

 //switch matrix multiplexer EE4BEG7 MUX-1
assign EE4BEG7 = WW4END8;

 //switch matrix multiplexer EE4BEG8 MUX-1
assign EE4BEG8 = WW4END7;

 //switch matrix multiplexer EE4BEG9 MUX-1
assign EE4BEG9 = WW4END6;

 //switch matrix multiplexer EE4BEG10 MUX-1
assign EE4BEG10 = WW4END5;

 //switch matrix multiplexer EE4BEG11 MUX-1
assign EE4BEG11 = WW4END4;

 //switch matrix multiplexer EE4BEG12 MUX-1
assign EE4BEG12 = WW4END3;

 //switch matrix multiplexer EE4BEG13 MUX-1
assign EE4BEG13 = WW4END2;

 //switch matrix multiplexer EE4BEG14 MUX-1
assign EE4BEG14 = WW4END1;

 //switch matrix multiplexer EE4BEG15 MUX-1
assign EE4BEG15 = WW4END0;

 //switch matrix multiplexer E6BEG0 MUX-1
assign E6BEG0 = W6END11;

 //switch matrix multiplexer E6BEG1 MUX-1
assign E6BEG1 = W6END10;

 //switch matrix multiplexer E6BEG2 MUX-1
assign E6BEG2 = W6END9;

 //switch matrix multiplexer E6BEG3 MUX-1
assign E6BEG3 = W6END8;

 //switch matrix multiplexer E6BEG4 MUX-1
assign E6BEG4 = W6END7;

 //switch matrix multiplexer E6BEG5 MUX-1
assign E6BEG5 = W6END6;

 //switch matrix multiplexer E6BEG6 MUX-1
assign E6BEG6 = W6END5;

 //switch matrix multiplexer E6BEG7 MUX-1
assign E6BEG7 = W6END4;

 //switch matrix multiplexer E6BEG8 MUX-1
assign E6BEG8 = W6END3;

 //switch matrix multiplexer E6BEG9 MUX-1
assign E6BEG9 = W6END2;

 //switch matrix multiplexer E6BEG10 MUX-1
assign E6BEG10 = W6END1;

 //switch matrix multiplexer E6BEG11 MUX-1
assign E6BEG11 = W6END0;


endmodule