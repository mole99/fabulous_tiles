 // NumberOfConfigBits: 306
module EF_SRAM_bot_switch_matrix
    #(
        parameter NoConfigBits=306
    )
    (
        input N1END0,
        input N1END1,
        input N1END2,
        input N1END3,
        input N2MID0,
        input N2MID1,
        input N2MID2,
        input N2MID3,
        input N2MID4,
        input N2MID5,
        input N2MID6,
        input N2MID7,
        input N2END0,
        input N2END1,
        input N2END2,
        input N2END3,
        input N2END4,
        input N2END5,
        input N2END6,
        input N2END7,
        input N4END0,
        input N4END1,
        input N4END2,
        input N4END3,
        input E1END0,
        input E1END1,
        input E1END2,
        input E1END3,
        input E2MID0,
        input E2MID1,
        input E2MID2,
        input E2MID3,
        input E2MID4,
        input E2MID5,
        input E2MID6,
        input E2MID7,
        input E2END0,
        input E2END1,
        input E2END2,
        input E2END3,
        input E2END4,
        input E2END5,
        input E2END6,
        input E2END7,
        input EE4END0,
        input EE4END1,
        input EE4END2,
        input EE4END3,
        input EE4END4,
        input EE4END5,
        input EE4END6,
        input EE4END7,
        input EE4END8,
        input EE4END9,
        input EE4END10,
        input EE4END11,
        input EE4END12,
        input EE4END13,
        input EE4END14,
        input EE4END15,
        input E6END0,
        input E6END1,
        input E6END2,
        input E6END3,
        input E6END4,
        input E6END5,
        input E6END6,
        input E6END7,
        input E6END8,
        input E6END9,
        input E6END10,
        input E6END11,
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
        input top2bot_DI0,
        input top2bot_DI1,
        input top2bot_DI2,
        input top2bot_DI3,
        input top2bot_DI4,
        input top2bot_DI5,
        input top2bot_DI6,
        input top2bot_DI7,
        input top2bot_DI8,
        input top2bot_DI9,
        input top2bot_DI10,
        input top2bot_DI11,
        input top2bot_DI12,
        input top2bot_DI13,
        input top2bot_DI14,
        input top2bot_DI15,
        input top2bot_BEN0,
        input top2bot_BEN1,
        input top2bot_BEN2,
        input top2bot_BEN3,
        input top2bot_BEN4,
        input top2bot_BEN5,
        input top2bot_BEN6,
        input top2bot_BEN7,
        input top2bot_BEN8,
        input top2bot_BEN9,
        input top2bot_BEN10,
        input top2bot_BEN11,
        input top2bot_BEN12,
        input top2bot_BEN13,
        input top2bot_BEN14,
        input top2bot_BEN15,
        input top2bot_AD0,
        input top2bot_AD1,
        input top2bot_AD2,
        input top2bot_AD3,
        input top2bot_AD4,
        input DO0,
        input DO1,
        input DO2,
        input DO3,
        input DO4,
        input DO5,
        input DO6,
        input DO7,
        input DO8,
        input DO9,
        input DO10,
        input DO11,
        input DO12,
        input DO13,
        input DO14,
        input DO15,
        input DO16,
        input DO17,
        input DO18,
        input DO19,
        input DO20,
        input DO21,
        input DO22,
        input DO23,
        input DO24,
        input DO25,
        input DO26,
        input DO27,
        input DO28,
        input DO29,
        input DO30,
        input DO31,
        input J_NS4_END0,
        input J_NS4_END1,
        input J_NS4_END2,
        input J_NS4_END3,
        input J_NS4_END4,
        input J_NS4_END5,
        input J_NS4_END6,
        input J_NS4_END7,
        input J_NS4_END8,
        input J_NS4_END9,
        input J_NS4_END10,
        input J_NS4_END11,
        input J_NS4_END12,
        input J_NS4_END13,
        input J_NS4_END14,
        input J_NS4_END15,
        input J_NS2_END0,
        input J_NS2_END1,
        input J_NS2_END2,
        input J_NS2_END3,
        input J_NS2_END4,
        input J_NS2_END5,
        input J_NS2_END6,
        input J_NS2_END7,
        input J_NS1_END0,
        input J_NS1_END1,
        input J_NS1_END2,
        input J_NS1_END3,
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
        output S1BEG0,
        output S1BEG1,
        output S1BEG2,
        output S1BEG3,
        output S2BEG0,
        output S2BEG1,
        output S2BEG2,
        output S2BEG3,
        output S2BEG4,
        output S2BEG5,
        output S2BEG6,
        output S2BEG7,
        output S2BEGb0,
        output S2BEGb1,
        output S2BEGb2,
        output S2BEGb3,
        output S2BEGb4,
        output S2BEGb5,
        output S2BEGb6,
        output S2BEGb7,
        output S4BEG0,
        output S4BEG1,
        output S4BEG2,
        output S4BEG3,
        output W1BEG0,
        output W1BEG1,
        output W1BEG2,
        output W1BEG3,
        output W2BEG0,
        output W2BEG1,
        output W2BEG2,
        output W2BEG3,
        output W2BEG4,
        output W2BEG5,
        output W2BEG6,
        output W2BEG7,
        output W2BEGb0,
        output W2BEGb1,
        output W2BEGb2,
        output W2BEGb3,
        output W2BEGb4,
        output W2BEGb5,
        output W2BEGb6,
        output W2BEGb7,
        output WW4BEG0,
        output WW4BEG1,
        output WW4BEG2,
        output WW4BEG3,
        output WW4BEG4,
        output WW4BEG5,
        output WW4BEG6,
        output WW4BEG7,
        output WW4BEG8,
        output WW4BEG9,
        output WW4BEG10,
        output WW4BEG11,
        output WW4BEG12,
        output WW4BEG13,
        output WW4BEG14,
        output WW4BEG15,
        output W6BEG0,
        output W6BEG1,
        output W6BEG2,
        output W6BEG3,
        output W6BEG4,
        output W6BEG5,
        output W6BEG6,
        output W6BEG7,
        output W6BEG8,
        output W6BEG9,
        output W6BEG10,
        output W6BEG11,
        output bot2top_DO0,
        output bot2top_DO1,
        output bot2top_DO2,
        output bot2top_DO3,
        output bot2top_DO4,
        output bot2top_DO5,
        output bot2top_DO6,
        output bot2top_DO7,
        output bot2top_DO8,
        output bot2top_DO9,
        output bot2top_DO10,
        output bot2top_DO11,
        output bot2top_DO12,
        output bot2top_DO13,
        output bot2top_DO14,
        output bot2top_DO15,
        output AD0,
        output AD1,
        output AD2,
        output AD3,
        output AD4,
        output AD5,
        output AD6,
        output AD7,
        output AD8,
        output AD9,
        output BEN0,
        output BEN1,
        output BEN2,
        output BEN3,
        output BEN4,
        output BEN5,
        output BEN6,
        output BEN7,
        output BEN8,
        output BEN9,
        output BEN10,
        output BEN11,
        output BEN12,
        output BEN13,
        output BEN14,
        output BEN15,
        output BEN16,
        output BEN17,
        output BEN18,
        output BEN19,
        output BEN20,
        output BEN21,
        output BEN22,
        output BEN23,
        output BEN24,
        output BEN25,
        output BEN26,
        output BEN27,
        output BEN28,
        output BEN29,
        output BEN30,
        output BEN31,
        output DI0,
        output DI1,
        output DI2,
        output DI3,
        output DI4,
        output DI5,
        output DI6,
        output DI7,
        output DI8,
        output DI9,
        output DI10,
        output DI11,
        output DI12,
        output DI13,
        output DI14,
        output DI15,
        output DI16,
        output DI17,
        output DI18,
        output DI19,
        output DI20,
        output DI21,
        output DI22,
        output DI23,
        output DI24,
        output DI25,
        output DI26,
        output DI27,
        output DI28,
        output DI29,
        output DI30,
        output DI31,
        output EN,
        output R_WB,
        output J_NS4_BEG0,
        output J_NS4_BEG1,
        output J_NS4_BEG2,
        output J_NS4_BEG3,
        output J_NS4_BEG4,
        output J_NS4_BEG5,
        output J_NS4_BEG6,
        output J_NS4_BEG7,
        output J_NS4_BEG8,
        output J_NS4_BEG9,
        output J_NS4_BEG10,
        output J_NS4_BEG11,
        output J_NS4_BEG12,
        output J_NS4_BEG13,
        output J_NS4_BEG14,
        output J_NS4_BEG15,
        output J_NS2_BEG0,
        output J_NS2_BEG1,
        output J_NS2_BEG2,
        output J_NS2_BEG3,
        output J_NS2_BEG4,
        output J_NS2_BEG5,
        output J_NS2_BEG6,
        output J_NS2_BEG7,
        output J_NS1_BEG0,
        output J_NS1_BEG1,
        output J_NS1_BEG2,
        output J_NS1_BEG3,
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
wire[4-1:0] N2BEG0_input;
wire[4-1:0] N2BEG1_input;
wire[4-1:0] N2BEG2_input;
wire[4-1:0] N2BEG3_input;
wire[4-1:0] N2BEG4_input;
wire[4-1:0] N2BEG5_input;
wire[4-1:0] N2BEG6_input;
wire[4-1:0] N2BEG7_input;
wire[8-1:0] N4BEG0_input;
wire[8-1:0] N4BEG1_input;
wire[8-1:0] N4BEG2_input;
wire[8-1:0] N4BEG3_input;
wire[4-1:0] S1BEG0_input;
wire[4-1:0] S1BEG1_input;
wire[4-1:0] S1BEG2_input;
wire[4-1:0] S1BEG3_input;
wire[4-1:0] S2BEG0_input;
wire[4-1:0] S2BEG1_input;
wire[4-1:0] S2BEG2_input;
wire[4-1:0] S2BEG3_input;
wire[4-1:0] S2BEG4_input;
wire[4-1:0] S2BEG5_input;
wire[4-1:0] S2BEG6_input;
wire[4-1:0] S2BEG7_input;
wire[8-1:0] S4BEG0_input;
wire[8-1:0] S4BEG1_input;
wire[8-1:0] S4BEG2_input;
wire[8-1:0] S4BEG3_input;
wire[4-1:0] W1BEG0_input;
wire[4-1:0] W1BEG1_input;
wire[4-1:0] W1BEG2_input;
wire[4-1:0] W1BEG3_input;
wire[4-1:0] W2BEG0_input;
wire[4-1:0] W2BEG1_input;
wire[4-1:0] W2BEG2_input;
wire[4-1:0] W2BEG3_input;
wire[4-1:0] W2BEG4_input;
wire[4-1:0] W2BEG5_input;
wire[4-1:0] W2BEG6_input;
wire[4-1:0] W2BEG7_input;
wire[4-1:0] W2BEGb0_input;
wire[4-1:0] W2BEGb1_input;
wire[4-1:0] W2BEGb2_input;
wire[4-1:0] W2BEGb3_input;
wire[4-1:0] W2BEGb4_input;
wire[4-1:0] W2BEGb5_input;
wire[4-1:0] W2BEGb6_input;
wire[4-1:0] W2BEGb7_input;
wire[4-1:0] WW4BEG0_input;
wire[4-1:0] WW4BEG1_input;
wire[4-1:0] WW4BEG2_input;
wire[4-1:0] WW4BEG3_input;
wire[4-1:0] WW4BEG4_input;
wire[4-1:0] WW4BEG5_input;
wire[4-1:0] WW4BEG6_input;
wire[4-1:0] WW4BEG7_input;
wire[4-1:0] WW4BEG8_input;
wire[4-1:0] WW4BEG9_input;
wire[4-1:0] WW4BEG10_input;
wire[4-1:0] WW4BEG11_input;
wire[4-1:0] WW4BEG12_input;
wire[4-1:0] WW4BEG13_input;
wire[4-1:0] WW4BEG14_input;
wire[4-1:0] WW4BEG15_input;
wire[4-1:0] W6BEG0_input;
wire[4-1:0] W6BEG1_input;
wire[4-1:0] W6BEG2_input;
wire[4-1:0] W6BEG3_input;
wire[4-1:0] W6BEG4_input;
wire[4-1:0] W6BEG5_input;
wire[4-1:0] W6BEG6_input;
wire[4-1:0] W6BEG7_input;
wire[4-1:0] W6BEG8_input;
wire[4-1:0] W6BEG9_input;
wire[4-1:0] W6BEG10_input;
wire[4-1:0] W6BEG11_input;
wire[4-1:0] AD0_input;
wire[4-1:0] AD1_input;
wire[4-1:0] AD2_input;
wire[4-1:0] AD3_input;
wire[4-1:0] AD4_input;
wire[4-1:0] BEN0_input;
wire[4-1:0] BEN1_input;
wire[4-1:0] BEN2_input;
wire[4-1:0] BEN3_input;
wire[4-1:0] BEN4_input;
wire[4-1:0] BEN5_input;
wire[4-1:0] BEN6_input;
wire[4-1:0] BEN7_input;
wire[4-1:0] BEN8_input;
wire[4-1:0] BEN9_input;
wire[4-1:0] BEN10_input;
wire[4-1:0] BEN11_input;
wire[4-1:0] BEN12_input;
wire[4-1:0] BEN13_input;
wire[4-1:0] BEN14_input;
wire[4-1:0] BEN15_input;
wire[4-1:0] DI0_input;
wire[4-1:0] DI1_input;
wire[4-1:0] DI2_input;
wire[4-1:0] DI3_input;
wire[4-1:0] DI4_input;
wire[4-1:0] DI5_input;
wire[4-1:0] DI6_input;
wire[4-1:0] DI7_input;
wire[4-1:0] DI8_input;
wire[4-1:0] DI9_input;
wire[4-1:0] DI10_input;
wire[4-1:0] DI11_input;
wire[4-1:0] DI12_input;
wire[4-1:0] DI13_input;
wire[4-1:0] DI14_input;
wire[4-1:0] DI15_input;
wire[16-1:0] EN_input;
wire[16-1:0] R_WB_input;
wire[4-1:0] J_NS4_BEG0_input;
wire[4-1:0] J_NS4_BEG1_input;
wire[4-1:0] J_NS4_BEG2_input;
wire[4-1:0] J_NS4_BEG3_input;
wire[4-1:0] J_NS4_BEG4_input;
wire[4-1:0] J_NS4_BEG5_input;
wire[4-1:0] J_NS4_BEG6_input;
wire[4-1:0] J_NS4_BEG7_input;
wire[4-1:0] J_NS4_BEG8_input;
wire[4-1:0] J_NS4_BEG9_input;
wire[4-1:0] J_NS4_BEG10_input;
wire[4-1:0] J_NS4_BEG11_input;
wire[4-1:0] J_NS4_BEG12_input;
wire[4-1:0] J_NS4_BEG13_input;
wire[4-1:0] J_NS4_BEG14_input;
wire[4-1:0] J_NS4_BEG15_input;
wire[4-1:0] J_NS2_BEG0_input;
wire[4-1:0] J_NS2_BEG1_input;
wire[4-1:0] J_NS2_BEG2_input;
wire[4-1:0] J_NS2_BEG3_input;
wire[4-1:0] J_NS2_BEG4_input;
wire[4-1:0] J_NS2_BEG5_input;
wire[4-1:0] J_NS2_BEG6_input;
wire[4-1:0] J_NS2_BEG7_input;
wire[4-1:0] J_NS1_BEG0_input;
wire[4-1:0] J_NS1_BEG1_input;
wire[4-1:0] J_NS1_BEG2_input;
wire[4-1:0] J_NS1_BEG3_input;

wire[2-1:0] DEBUG_select_N1BEG0;
wire[2-1:0] DEBUG_select_N1BEG1;
wire[2-1:0] DEBUG_select_N1BEG2;
wire[2-1:0] DEBUG_select_N1BEG3;
wire[2-1:0] DEBUG_select_N2BEG0;
wire[2-1:0] DEBUG_select_N2BEG1;
wire[2-1:0] DEBUG_select_N2BEG2;
wire[2-1:0] DEBUG_select_N2BEG3;
wire[2-1:0] DEBUG_select_N2BEG4;
wire[2-1:0] DEBUG_select_N2BEG5;
wire[2-1:0] DEBUG_select_N2BEG6;
wire[2-1:0] DEBUG_select_N2BEG7;
wire[3-1:0] DEBUG_select_N4BEG0;
wire[3-1:0] DEBUG_select_N4BEG1;
wire[3-1:0] DEBUG_select_N4BEG2;
wire[3-1:0] DEBUG_select_N4BEG3;
wire[2-1:0] DEBUG_select_S1BEG0;
wire[2-1:0] DEBUG_select_S1BEG1;
wire[2-1:0] DEBUG_select_S1BEG2;
wire[2-1:0] DEBUG_select_S1BEG3;
wire[2-1:0] DEBUG_select_S2BEG0;
wire[2-1:0] DEBUG_select_S2BEG1;
wire[2-1:0] DEBUG_select_S2BEG2;
wire[2-1:0] DEBUG_select_S2BEG3;
wire[2-1:0] DEBUG_select_S2BEG4;
wire[2-1:0] DEBUG_select_S2BEG5;
wire[2-1:0] DEBUG_select_S2BEG6;
wire[2-1:0] DEBUG_select_S2BEG7;
wire[3-1:0] DEBUG_select_S4BEG0;
wire[3-1:0] DEBUG_select_S4BEG1;
wire[3-1:0] DEBUG_select_S4BEG2;
wire[3-1:0] DEBUG_select_S4BEG3;
wire[2-1:0] DEBUG_select_W1BEG0;
wire[2-1:0] DEBUG_select_W1BEG1;
wire[2-1:0] DEBUG_select_W1BEG2;
wire[2-1:0] DEBUG_select_W1BEG3;
wire[2-1:0] DEBUG_select_W2BEG0;
wire[2-1:0] DEBUG_select_W2BEG1;
wire[2-1:0] DEBUG_select_W2BEG2;
wire[2-1:0] DEBUG_select_W2BEG3;
wire[2-1:0] DEBUG_select_W2BEG4;
wire[2-1:0] DEBUG_select_W2BEG5;
wire[2-1:0] DEBUG_select_W2BEG6;
wire[2-1:0] DEBUG_select_W2BEG7;
wire[2-1:0] DEBUG_select_W2BEGb0;
wire[2-1:0] DEBUG_select_W2BEGb1;
wire[2-1:0] DEBUG_select_W2BEGb2;
wire[2-1:0] DEBUG_select_W2BEGb3;
wire[2-1:0] DEBUG_select_W2BEGb4;
wire[2-1:0] DEBUG_select_W2BEGb5;
wire[2-1:0] DEBUG_select_W2BEGb6;
wire[2-1:0] DEBUG_select_W2BEGb7;
wire[2-1:0] DEBUG_select_WW4BEG0;
wire[2-1:0] DEBUG_select_WW4BEG1;
wire[2-1:0] DEBUG_select_WW4BEG2;
wire[2-1:0] DEBUG_select_WW4BEG3;
wire[2-1:0] DEBUG_select_WW4BEG4;
wire[2-1:0] DEBUG_select_WW4BEG5;
wire[2-1:0] DEBUG_select_WW4BEG6;
wire[2-1:0] DEBUG_select_WW4BEG7;
wire[2-1:0] DEBUG_select_WW4BEG8;
wire[2-1:0] DEBUG_select_WW4BEG9;
wire[2-1:0] DEBUG_select_WW4BEG10;
wire[2-1:0] DEBUG_select_WW4BEG11;
wire[2-1:0] DEBUG_select_WW4BEG12;
wire[2-1:0] DEBUG_select_WW4BEG13;
wire[2-1:0] DEBUG_select_WW4BEG14;
wire[2-1:0] DEBUG_select_WW4BEG15;
wire[2-1:0] DEBUG_select_W6BEG0;
wire[2-1:0] DEBUG_select_W6BEG1;
wire[2-1:0] DEBUG_select_W6BEG2;
wire[2-1:0] DEBUG_select_W6BEG3;
wire[2-1:0] DEBUG_select_W6BEG4;
wire[2-1:0] DEBUG_select_W6BEG5;
wire[2-1:0] DEBUG_select_W6BEG6;
wire[2-1:0] DEBUG_select_W6BEG7;
wire[2-1:0] DEBUG_select_W6BEG8;
wire[2-1:0] DEBUG_select_W6BEG9;
wire[2-1:0] DEBUG_select_W6BEG10;
wire[2-1:0] DEBUG_select_W6BEG11;
wire[2-1:0] DEBUG_select_AD0;
wire[2-1:0] DEBUG_select_AD1;
wire[2-1:0] DEBUG_select_AD2;
wire[2-1:0] DEBUG_select_AD3;
wire[2-1:0] DEBUG_select_AD4;
wire[2-1:0] DEBUG_select_BEN0;
wire[2-1:0] DEBUG_select_BEN1;
wire[2-1:0] DEBUG_select_BEN2;
wire[2-1:0] DEBUG_select_BEN3;
wire[2-1:0] DEBUG_select_BEN4;
wire[2-1:0] DEBUG_select_BEN5;
wire[2-1:0] DEBUG_select_BEN6;
wire[2-1:0] DEBUG_select_BEN7;
wire[2-1:0] DEBUG_select_BEN8;
wire[2-1:0] DEBUG_select_BEN9;
wire[2-1:0] DEBUG_select_BEN10;
wire[2-1:0] DEBUG_select_BEN11;
wire[2-1:0] DEBUG_select_BEN12;
wire[2-1:0] DEBUG_select_BEN13;
wire[2-1:0] DEBUG_select_BEN14;
wire[2-1:0] DEBUG_select_BEN15;
wire[2-1:0] DEBUG_select_DI0;
wire[2-1:0] DEBUG_select_DI1;
wire[2-1:0] DEBUG_select_DI2;
wire[2-1:0] DEBUG_select_DI3;
wire[2-1:0] DEBUG_select_DI4;
wire[2-1:0] DEBUG_select_DI5;
wire[2-1:0] DEBUG_select_DI6;
wire[2-1:0] DEBUG_select_DI7;
wire[2-1:0] DEBUG_select_DI8;
wire[2-1:0] DEBUG_select_DI9;
wire[2-1:0] DEBUG_select_DI10;
wire[2-1:0] DEBUG_select_DI11;
wire[2-1:0] DEBUG_select_DI12;
wire[2-1:0] DEBUG_select_DI13;
wire[2-1:0] DEBUG_select_DI14;
wire[2-1:0] DEBUG_select_DI15;
wire[4-1:0] DEBUG_select_EN;
wire[4-1:0] DEBUG_select_R_WB;
wire[2-1:0] DEBUG_select_J_NS4_BEG0;
wire[2-1:0] DEBUG_select_J_NS4_BEG1;
wire[2-1:0] DEBUG_select_J_NS4_BEG2;
wire[2-1:0] DEBUG_select_J_NS4_BEG3;
wire[2-1:0] DEBUG_select_J_NS4_BEG4;
wire[2-1:0] DEBUG_select_J_NS4_BEG5;
wire[2-1:0] DEBUG_select_J_NS4_BEG6;
wire[2-1:0] DEBUG_select_J_NS4_BEG7;
wire[2-1:0] DEBUG_select_J_NS4_BEG8;
wire[2-1:0] DEBUG_select_J_NS4_BEG9;
wire[2-1:0] DEBUG_select_J_NS4_BEG10;
wire[2-1:0] DEBUG_select_J_NS4_BEG11;
wire[2-1:0] DEBUG_select_J_NS4_BEG12;
wire[2-1:0] DEBUG_select_J_NS4_BEG13;
wire[2-1:0] DEBUG_select_J_NS4_BEG14;
wire[2-1:0] DEBUG_select_J_NS4_BEG15;
wire[2-1:0] DEBUG_select_J_NS2_BEG0;
wire[2-1:0] DEBUG_select_J_NS2_BEG1;
wire[2-1:0] DEBUG_select_J_NS2_BEG2;
wire[2-1:0] DEBUG_select_J_NS2_BEG3;
wire[2-1:0] DEBUG_select_J_NS2_BEG4;
wire[2-1:0] DEBUG_select_J_NS2_BEG5;
wire[2-1:0] DEBUG_select_J_NS2_BEG6;
wire[2-1:0] DEBUG_select_J_NS2_BEG7;
wire[2-1:0] DEBUG_select_J_NS1_BEG0;
wire[2-1:0] DEBUG_select_J_NS1_BEG1;
wire[2-1:0] DEBUG_select_J_NS1_BEG2;
wire[2-1:0] DEBUG_select_J_NS1_BEG3;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer N1BEG0 MUX-4
assign N1BEG0_input = {J_NS1_END0,J_NS4_END12,E6END4,E1END0};
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
assign N1BEG1_input = {J_NS1_END1,J_NS4_END13,E6END5,E1END1};
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
assign N1BEG2_input = {J_NS1_END2,J_NS4_END14,E6END6,E1END2};
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
assign N1BEG3_input = {J_NS1_END3,J_NS4_END15,E6END7,E1END3};
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

 //switch matrix multiplexer N2BEG0 MUX-4
assign N2BEG0_input = {J_NS2_END0,E6END7,E2END7,E2MID7};
cus_mux41_buf inst_cus_mux41_buf_N2BEG0 (
    .A0(N2BEG0_input[0]),
    .A1(N2BEG0_input[1]),
    .A2(N2BEG0_input[2]),
    .A3(N2BEG0_input[3]),
    .S0(ConfigBits[8+0]),
    .S0N(ConfigBits_N[8+0]),
    .S1(ConfigBits[8+1]),
    .S1N(ConfigBits_N[8+1]),
    .X(N2BEG0)
);

 //switch matrix multiplexer N2BEG1 MUX-4
assign N2BEG1_input = {J_NS2_END1,E6END6,E2END6,E2MID6};
cus_mux41_buf inst_cus_mux41_buf_N2BEG1 (
    .A0(N2BEG1_input[0]),
    .A1(N2BEG1_input[1]),
    .A2(N2BEG1_input[2]),
    .A3(N2BEG1_input[3]),
    .S0(ConfigBits[10+0]),
    .S0N(ConfigBits_N[10+0]),
    .S1(ConfigBits[10+1]),
    .S1N(ConfigBits_N[10+1]),
    .X(N2BEG1)
);

 //switch matrix multiplexer N2BEG2 MUX-4
assign N2BEG2_input = {J_NS2_END2,E6END5,E2END5,E2MID5};
cus_mux41_buf inst_cus_mux41_buf_N2BEG2 (
    .A0(N2BEG2_input[0]),
    .A1(N2BEG2_input[1]),
    .A2(N2BEG2_input[2]),
    .A3(N2BEG2_input[3]),
    .S0(ConfigBits[12+0]),
    .S0N(ConfigBits_N[12+0]),
    .S1(ConfigBits[12+1]),
    .S1N(ConfigBits_N[12+1]),
    .X(N2BEG2)
);

 //switch matrix multiplexer N2BEG3 MUX-4
assign N2BEG3_input = {J_NS2_END3,E6END4,E2END4,E2MID4};
cus_mux41_buf inst_cus_mux41_buf_N2BEG3 (
    .A0(N2BEG3_input[0]),
    .A1(N2BEG3_input[1]),
    .A2(N2BEG3_input[2]),
    .A3(N2BEG3_input[3]),
    .S0(ConfigBits[14+0]),
    .S0N(ConfigBits_N[14+0]),
    .S1(ConfigBits[14+1]),
    .S1N(ConfigBits_N[14+1]),
    .X(N2BEG3)
);

 //switch matrix multiplexer N2BEG4 MUX-4
assign N2BEG4_input = {J_NS2_END4,E6END3,E2END3,E2MID3};
cus_mux41_buf inst_cus_mux41_buf_N2BEG4 (
    .A0(N2BEG4_input[0]),
    .A1(N2BEG4_input[1]),
    .A2(N2BEG4_input[2]),
    .A3(N2BEG4_input[3]),
    .S0(ConfigBits[16+0]),
    .S0N(ConfigBits_N[16+0]),
    .S1(ConfigBits[16+1]),
    .S1N(ConfigBits_N[16+1]),
    .X(N2BEG4)
);

 //switch matrix multiplexer N2BEG5 MUX-4
assign N2BEG5_input = {J_NS2_END5,E6END2,E2END2,E2MID2};
cus_mux41_buf inst_cus_mux41_buf_N2BEG5 (
    .A0(N2BEG5_input[0]),
    .A1(N2BEG5_input[1]),
    .A2(N2BEG5_input[2]),
    .A3(N2BEG5_input[3]),
    .S0(ConfigBits[18+0]),
    .S0N(ConfigBits_N[18+0]),
    .S1(ConfigBits[18+1]),
    .S1N(ConfigBits_N[18+1]),
    .X(N2BEG5)
);

 //switch matrix multiplexer N2BEG6 MUX-4
assign N2BEG6_input = {J_NS2_END6,E6END1,E2END1,E2MID1};
cus_mux41_buf inst_cus_mux41_buf_N2BEG6 (
    .A0(N2BEG6_input[0]),
    .A1(N2BEG6_input[1]),
    .A2(N2BEG6_input[2]),
    .A3(N2BEG6_input[3]),
    .S0(ConfigBits[20+0]),
    .S0N(ConfigBits_N[20+0]),
    .S1(ConfigBits[20+1]),
    .S1N(ConfigBits_N[20+1]),
    .X(N2BEG6)
);

 //switch matrix multiplexer N2BEG7 MUX-4
assign N2BEG7_input = {J_NS2_END7,E6END0,E2END0,E2MID0};
cus_mux41_buf inst_cus_mux41_buf_N2BEG7 (
    .A0(N2BEG7_input[0]),
    .A1(N2BEG7_input[1]),
    .A2(N2BEG7_input[2]),
    .A3(N2BEG7_input[3]),
    .S0(ConfigBits[22+0]),
    .S0N(ConfigBits_N[22+0]),
    .S1(ConfigBits[22+1]),
    .S1N(ConfigBits_N[22+1]),
    .X(N2BEG7)
);

 //switch matrix multiplexer N2BEGb0 MUX-1
assign N2BEGb0 = N2MID0;

 //switch matrix multiplexer N2BEGb1 MUX-1
assign N2BEGb1 = N2MID1;

 //switch matrix multiplexer N2BEGb2 MUX-1
assign N2BEGb2 = N2MID2;

 //switch matrix multiplexer N2BEGb3 MUX-1
assign N2BEGb3 = N2MID3;

 //switch matrix multiplexer N2BEGb4 MUX-1
assign N2BEGb4 = N2MID4;

 //switch matrix multiplexer N2BEGb5 MUX-1
assign N2BEGb5 = N2MID5;

 //switch matrix multiplexer N2BEGb6 MUX-1
assign N2BEGb6 = N2MID6;

 //switch matrix multiplexer N2BEGb7 MUX-1
assign N2BEGb7 = N2MID7;

 //switch matrix multiplexer N4BEG0 MUX-8
assign N4BEG0_input = {J_NS2_END0,J_NS4_END12,J_NS4_END8,J_NS4_END4,J_NS4_END0,E6END8,EE4END0,E1END0};
cus_mux81_buf inst_cus_mux81_buf_N4BEG0 (
    .A0(N4BEG0_input[0]),
    .A1(N4BEG0_input[1]),
    .A2(N4BEG0_input[2]),
    .A3(N4BEG0_input[3]),
    .A4(N4BEG0_input[4]),
    .A5(N4BEG0_input[5]),
    .A6(N4BEG0_input[6]),
    .A7(N4BEG0_input[7]),
    .S0(ConfigBits[24+0]),
    .S0N(ConfigBits_N[24+0]),
    .S1(ConfigBits[24+1]),
    .S1N(ConfigBits_N[24+1]),
    .S2(ConfigBits[24+2]),
    .S2N(ConfigBits_N[24+2]),
    .X(N4BEG0)
);

 //switch matrix multiplexer N4BEG1 MUX-8
assign N4BEG1_input = {J_NS2_END1,J_NS4_END13,J_NS4_END9,J_NS4_END5,J_NS4_END1,E6END9,EE4END1,E1END1};
cus_mux81_buf inst_cus_mux81_buf_N4BEG1 (
    .A0(N4BEG1_input[0]),
    .A1(N4BEG1_input[1]),
    .A2(N4BEG1_input[2]),
    .A3(N4BEG1_input[3]),
    .A4(N4BEG1_input[4]),
    .A5(N4BEG1_input[5]),
    .A6(N4BEG1_input[6]),
    .A7(N4BEG1_input[7]),
    .S0(ConfigBits[27+0]),
    .S0N(ConfigBits_N[27+0]),
    .S1(ConfigBits[27+1]),
    .S1N(ConfigBits_N[27+1]),
    .S2(ConfigBits[27+2]),
    .S2N(ConfigBits_N[27+2]),
    .X(N4BEG1)
);

 //switch matrix multiplexer N4BEG2 MUX-8
assign N4BEG2_input = {J_NS2_END2,J_NS4_END14,J_NS4_END10,J_NS4_END6,J_NS4_END2,E6END10,EE4END2,E1END2};
cus_mux81_buf inst_cus_mux81_buf_N4BEG2 (
    .A0(N4BEG2_input[0]),
    .A1(N4BEG2_input[1]),
    .A2(N4BEG2_input[2]),
    .A3(N4BEG2_input[3]),
    .A4(N4BEG2_input[4]),
    .A5(N4BEG2_input[5]),
    .A6(N4BEG2_input[6]),
    .A7(N4BEG2_input[7]),
    .S0(ConfigBits[30+0]),
    .S0N(ConfigBits_N[30+0]),
    .S1(ConfigBits[30+1]),
    .S1N(ConfigBits_N[30+1]),
    .S2(ConfigBits[30+2]),
    .S2N(ConfigBits_N[30+2]),
    .X(N4BEG2)
);

 //switch matrix multiplexer N4BEG3 MUX-8
assign N4BEG3_input = {J_NS2_END3,J_NS4_END15,J_NS4_END11,J_NS4_END7,J_NS4_END3,E6END11,EE4END3,E1END3};
cus_mux81_buf inst_cus_mux81_buf_N4BEG3 (
    .A0(N4BEG3_input[0]),
    .A1(N4BEG3_input[1]),
    .A2(N4BEG3_input[2]),
    .A3(N4BEG3_input[3]),
    .A4(N4BEG3_input[4]),
    .A5(N4BEG3_input[5]),
    .A6(N4BEG3_input[6]),
    .A7(N4BEG3_input[7]),
    .S0(ConfigBits[33+0]),
    .S0N(ConfigBits_N[33+0]),
    .S1(ConfigBits[33+1]),
    .S1N(ConfigBits_N[33+1]),
    .S2(ConfigBits[33+2]),
    .S2N(ConfigBits_N[33+2]),
    .X(N4BEG3)
);

 //switch matrix multiplexer S1BEG0 MUX-4
assign S1BEG0_input = {J_NS1_END0,J_NS4_END12,E6END8,E1END0};
cus_mux41_buf inst_cus_mux41_buf_S1BEG0 (
    .A0(S1BEG0_input[0]),
    .A1(S1BEG0_input[1]),
    .A2(S1BEG0_input[2]),
    .A3(S1BEG0_input[3]),
    .S0(ConfigBits[36+0]),
    .S0N(ConfigBits_N[36+0]),
    .S1(ConfigBits[36+1]),
    .S1N(ConfigBits_N[36+1]),
    .X(S1BEG0)
);

 //switch matrix multiplexer S1BEG1 MUX-4
assign S1BEG1_input = {J_NS1_END1,J_NS4_END13,E6END9,E1END1};
cus_mux41_buf inst_cus_mux41_buf_S1BEG1 (
    .A0(S1BEG1_input[0]),
    .A1(S1BEG1_input[1]),
    .A2(S1BEG1_input[2]),
    .A3(S1BEG1_input[3]),
    .S0(ConfigBits[38+0]),
    .S0N(ConfigBits_N[38+0]),
    .S1(ConfigBits[38+1]),
    .S1N(ConfigBits_N[38+1]),
    .X(S1BEG1)
);

 //switch matrix multiplexer S1BEG2 MUX-4
assign S1BEG2_input = {J_NS1_END2,J_NS4_END14,E6END10,E1END2};
cus_mux41_buf inst_cus_mux41_buf_S1BEG2 (
    .A0(S1BEG2_input[0]),
    .A1(S1BEG2_input[1]),
    .A2(S1BEG2_input[2]),
    .A3(S1BEG2_input[3]),
    .S0(ConfigBits[40+0]),
    .S0N(ConfigBits_N[40+0]),
    .S1(ConfigBits[40+1]),
    .S1N(ConfigBits_N[40+1]),
    .X(S1BEG2)
);

 //switch matrix multiplexer S1BEG3 MUX-4
assign S1BEG3_input = {J_NS1_END3,J_NS4_END15,E6END11,E1END3};
cus_mux41_buf inst_cus_mux41_buf_S1BEG3 (
    .A0(S1BEG3_input[0]),
    .A1(S1BEG3_input[1]),
    .A2(S1BEG3_input[2]),
    .A3(S1BEG3_input[3]),
    .S0(ConfigBits[42+0]),
    .S0N(ConfigBits_N[42+0]),
    .S1(ConfigBits[42+1]),
    .S1N(ConfigBits_N[42+1]),
    .X(S1BEG3)
);

 //switch matrix multiplexer S2BEG0 MUX-4
assign S2BEG0_input = {J_NS2_END0,E6END8,E2END7,E2MID7};
cus_mux41_buf inst_cus_mux41_buf_S2BEG0 (
    .A0(S2BEG0_input[0]),
    .A1(S2BEG0_input[1]),
    .A2(S2BEG0_input[2]),
    .A3(S2BEG0_input[3]),
    .S0(ConfigBits[44+0]),
    .S0N(ConfigBits_N[44+0]),
    .S1(ConfigBits[44+1]),
    .S1N(ConfigBits_N[44+1]),
    .X(S2BEG0)
);

 //switch matrix multiplexer S2BEG1 MUX-4
assign S2BEG1_input = {J_NS2_END1,E6END9,E2END6,E2MID6};
cus_mux41_buf inst_cus_mux41_buf_S2BEG1 (
    .A0(S2BEG1_input[0]),
    .A1(S2BEG1_input[1]),
    .A2(S2BEG1_input[2]),
    .A3(S2BEG1_input[3]),
    .S0(ConfigBits[46+0]),
    .S0N(ConfigBits_N[46+0]),
    .S1(ConfigBits[46+1]),
    .S1N(ConfigBits_N[46+1]),
    .X(S2BEG1)
);

 //switch matrix multiplexer S2BEG2 MUX-4
assign S2BEG2_input = {J_NS2_END2,E6END10,E2END5,E2MID5};
cus_mux41_buf inst_cus_mux41_buf_S2BEG2 (
    .A0(S2BEG2_input[0]),
    .A1(S2BEG2_input[1]),
    .A2(S2BEG2_input[2]),
    .A3(S2BEG2_input[3]),
    .S0(ConfigBits[48+0]),
    .S0N(ConfigBits_N[48+0]),
    .S1(ConfigBits[48+1]),
    .S1N(ConfigBits_N[48+1]),
    .X(S2BEG2)
);

 //switch matrix multiplexer S2BEG3 MUX-4
assign S2BEG3_input = {J_NS2_END3,E6END11,E2END4,E2MID4};
cus_mux41_buf inst_cus_mux41_buf_S2BEG3 (
    .A0(S2BEG3_input[0]),
    .A1(S2BEG3_input[1]),
    .A2(S2BEG3_input[2]),
    .A3(S2BEG3_input[3]),
    .S0(ConfigBits[50+0]),
    .S0N(ConfigBits_N[50+0]),
    .S1(ConfigBits[50+1]),
    .S1N(ConfigBits_N[50+1]),
    .X(S2BEG3)
);

 //switch matrix multiplexer S2BEG4 MUX-4
assign S2BEG4_input = {J_NS2_END4,E2END3,E2MID3,E1END0};
cus_mux41_buf inst_cus_mux41_buf_S2BEG4 (
    .A0(S2BEG4_input[0]),
    .A1(S2BEG4_input[1]),
    .A2(S2BEG4_input[2]),
    .A3(S2BEG4_input[3]),
    .S0(ConfigBits[52+0]),
    .S0N(ConfigBits_N[52+0]),
    .S1(ConfigBits[52+1]),
    .S1N(ConfigBits_N[52+1]),
    .X(S2BEG4)
);

 //switch matrix multiplexer S2BEG5 MUX-4
assign S2BEG5_input = {J_NS2_END5,E2END2,E2MID2,E1END1};
cus_mux41_buf inst_cus_mux41_buf_S2BEG5 (
    .A0(S2BEG5_input[0]),
    .A1(S2BEG5_input[1]),
    .A2(S2BEG5_input[2]),
    .A3(S2BEG5_input[3]),
    .S0(ConfigBits[54+0]),
    .S0N(ConfigBits_N[54+0]),
    .S1(ConfigBits[54+1]),
    .S1N(ConfigBits_N[54+1]),
    .X(S2BEG5)
);

 //switch matrix multiplexer S2BEG6 MUX-4
assign S2BEG6_input = {J_NS2_END6,E2END1,E2MID1,E1END2};
cus_mux41_buf inst_cus_mux41_buf_S2BEG6 (
    .A0(S2BEG6_input[0]),
    .A1(S2BEG6_input[1]),
    .A2(S2BEG6_input[2]),
    .A3(S2BEG6_input[3]),
    .S0(ConfigBits[56+0]),
    .S0N(ConfigBits_N[56+0]),
    .S1(ConfigBits[56+1]),
    .S1N(ConfigBits_N[56+1]),
    .X(S2BEG6)
);

 //switch matrix multiplexer S2BEG7 MUX-4
assign S2BEG7_input = {J_NS2_END7,E2END0,E2MID0,E1END3};
cus_mux41_buf inst_cus_mux41_buf_S2BEG7 (
    .A0(S2BEG7_input[0]),
    .A1(S2BEG7_input[1]),
    .A2(S2BEG7_input[2]),
    .A3(S2BEG7_input[3]),
    .S0(ConfigBits[58+0]),
    .S0N(ConfigBits_N[58+0]),
    .S1(ConfigBits[58+1]),
    .S1N(ConfigBits_N[58+1]),
    .X(S2BEG7)
);

 //switch matrix multiplexer S2BEGb0 MUX-1
assign S2BEGb0 = S2MID0;

 //switch matrix multiplexer S2BEGb1 MUX-1
assign S2BEGb1 = S2MID1;

 //switch matrix multiplexer S2BEGb2 MUX-1
assign S2BEGb2 = S2MID2;

 //switch matrix multiplexer S2BEGb3 MUX-1
assign S2BEGb3 = S2MID3;

 //switch matrix multiplexer S2BEGb4 MUX-1
assign S2BEGb4 = S2MID4;

 //switch matrix multiplexer S2BEGb5 MUX-1
assign S2BEGb5 = S2MID5;

 //switch matrix multiplexer S2BEGb6 MUX-1
assign S2BEGb6 = S2MID6;

 //switch matrix multiplexer S2BEGb7 MUX-1
assign S2BEGb7 = S2MID7;

 //switch matrix multiplexer S4BEG0 MUX-8
assign S4BEG0_input = {J_NS2_END4,J_NS4_END12,J_NS4_END8,J_NS4_END4,J_NS4_END0,E6END4,EE4END12,E1END0};
cus_mux81_buf inst_cus_mux81_buf_S4BEG0 (
    .A0(S4BEG0_input[0]),
    .A1(S4BEG0_input[1]),
    .A2(S4BEG0_input[2]),
    .A3(S4BEG0_input[3]),
    .A4(S4BEG0_input[4]),
    .A5(S4BEG0_input[5]),
    .A6(S4BEG0_input[6]),
    .A7(S4BEG0_input[7]),
    .S0(ConfigBits[60+0]),
    .S0N(ConfigBits_N[60+0]),
    .S1(ConfigBits[60+1]),
    .S1N(ConfigBits_N[60+1]),
    .S2(ConfigBits[60+2]),
    .S2N(ConfigBits_N[60+2]),
    .X(S4BEG0)
);

 //switch matrix multiplexer S4BEG1 MUX-8
assign S4BEG1_input = {J_NS2_END5,J_NS4_END13,J_NS4_END9,J_NS4_END5,J_NS4_END1,E6END5,EE4END13,E1END1};
cus_mux81_buf inst_cus_mux81_buf_S4BEG1 (
    .A0(S4BEG1_input[0]),
    .A1(S4BEG1_input[1]),
    .A2(S4BEG1_input[2]),
    .A3(S4BEG1_input[3]),
    .A4(S4BEG1_input[4]),
    .A5(S4BEG1_input[5]),
    .A6(S4BEG1_input[6]),
    .A7(S4BEG1_input[7]),
    .S0(ConfigBits[63+0]),
    .S0N(ConfigBits_N[63+0]),
    .S1(ConfigBits[63+1]),
    .S1N(ConfigBits_N[63+1]),
    .S2(ConfigBits[63+2]),
    .S2N(ConfigBits_N[63+2]),
    .X(S4BEG1)
);

 //switch matrix multiplexer S4BEG2 MUX-8
assign S4BEG2_input = {J_NS2_END6,J_NS4_END14,J_NS4_END10,J_NS4_END6,J_NS4_END2,E6END6,EE4END14,E1END2};
cus_mux81_buf inst_cus_mux81_buf_S4BEG2 (
    .A0(S4BEG2_input[0]),
    .A1(S4BEG2_input[1]),
    .A2(S4BEG2_input[2]),
    .A3(S4BEG2_input[3]),
    .A4(S4BEG2_input[4]),
    .A5(S4BEG2_input[5]),
    .A6(S4BEG2_input[6]),
    .A7(S4BEG2_input[7]),
    .S0(ConfigBits[66+0]),
    .S0N(ConfigBits_N[66+0]),
    .S1(ConfigBits[66+1]),
    .S1N(ConfigBits_N[66+1]),
    .S2(ConfigBits[66+2]),
    .S2N(ConfigBits_N[66+2]),
    .X(S4BEG2)
);

 //switch matrix multiplexer S4BEG3 MUX-8
assign S4BEG3_input = {J_NS2_END7,J_NS4_END15,J_NS4_END11,J_NS4_END7,J_NS4_END3,E6END7,EE4END15,E1END3};
cus_mux81_buf inst_cus_mux81_buf_S4BEG3 (
    .A0(S4BEG3_input[0]),
    .A1(S4BEG3_input[1]),
    .A2(S4BEG3_input[2]),
    .A3(S4BEG3_input[3]),
    .A4(S4BEG3_input[4]),
    .A5(S4BEG3_input[5]),
    .A6(S4BEG3_input[6]),
    .A7(S4BEG3_input[7]),
    .S0(ConfigBits[69+0]),
    .S0N(ConfigBits_N[69+0]),
    .S1(ConfigBits[69+1]),
    .S1N(ConfigBits_N[69+1]),
    .S2(ConfigBits[69+2]),
    .S2N(ConfigBits_N[69+2]),
    .X(S4BEG3)
);

 //switch matrix multiplexer W1BEG0 MUX-4
assign W1BEG0_input = {DO7,DO2,S1END0,N1END0};
cus_mux41_buf inst_cus_mux41_buf_W1BEG0 (
    .A0(W1BEG0_input[0]),
    .A1(W1BEG0_input[1]),
    .A2(W1BEG0_input[2]),
    .A3(W1BEG0_input[3]),
    .S0(ConfigBits[72+0]),
    .S0N(ConfigBits_N[72+0]),
    .S1(ConfigBits[72+1]),
    .S1N(ConfigBits_N[72+1]),
    .X(W1BEG0)
);

 //switch matrix multiplexer W1BEG1 MUX-4
assign W1BEG1_input = {DO6,DO3,S1END1,N1END1};
cus_mux41_buf inst_cus_mux41_buf_W1BEG1 (
    .A0(W1BEG1_input[0]),
    .A1(W1BEG1_input[1]),
    .A2(W1BEG1_input[2]),
    .A3(W1BEG1_input[3]),
    .S0(ConfigBits[74+0]),
    .S0N(ConfigBits_N[74+0]),
    .S1(ConfigBits[74+1]),
    .S1N(ConfigBits_N[74+1]),
    .X(W1BEG1)
);

 //switch matrix multiplexer W1BEG2 MUX-4
assign W1BEG2_input = {DO5,DO0,S1END2,N1END2};
cus_mux41_buf inst_cus_mux41_buf_W1BEG2 (
    .A0(W1BEG2_input[0]),
    .A1(W1BEG2_input[1]),
    .A2(W1BEG2_input[2]),
    .A3(W1BEG2_input[3]),
    .S0(ConfigBits[76+0]),
    .S0N(ConfigBits_N[76+0]),
    .S1(ConfigBits[76+1]),
    .S1N(ConfigBits_N[76+1]),
    .X(W1BEG2)
);

 //switch matrix multiplexer W1BEG3 MUX-4
assign W1BEG3_input = {DO4,DO1,S1END3,N1END3};
cus_mux41_buf inst_cus_mux41_buf_W1BEG3 (
    .A0(W1BEG3_input[0]),
    .A1(W1BEG3_input[1]),
    .A2(W1BEG3_input[2]),
    .A3(W1BEG3_input[3]),
    .S0(ConfigBits[78+0]),
    .S0N(ConfigBits_N[78+0]),
    .S1(ConfigBits[78+1]),
    .S1N(ConfigBits_N[78+1]),
    .X(W1BEG3)
);

 //switch matrix multiplexer W2BEG0 MUX-4
assign W2BEG0_input = {J_NS2_END7,J_NS2_END0,DO8,DO0};
cus_mux41_buf inst_cus_mux41_buf_W2BEG0 (
    .A0(W2BEG0_input[0]),
    .A1(W2BEG0_input[1]),
    .A2(W2BEG0_input[2]),
    .A3(W2BEG0_input[3]),
    .S0(ConfigBits[80+0]),
    .S0N(ConfigBits_N[80+0]),
    .S1(ConfigBits[80+1]),
    .S1N(ConfigBits_N[80+1]),
    .X(W2BEG0)
);

 //switch matrix multiplexer W2BEG1 MUX-4
assign W2BEG1_input = {J_NS2_END6,J_NS2_END1,DO9,DO1};
cus_mux41_buf inst_cus_mux41_buf_W2BEG1 (
    .A0(W2BEG1_input[0]),
    .A1(W2BEG1_input[1]),
    .A2(W2BEG1_input[2]),
    .A3(W2BEG1_input[3]),
    .S0(ConfigBits[82+0]),
    .S0N(ConfigBits_N[82+0]),
    .S1(ConfigBits[82+1]),
    .S1N(ConfigBits_N[82+1]),
    .X(W2BEG1)
);

 //switch matrix multiplexer W2BEG2 MUX-4
assign W2BEG2_input = {J_NS2_END5,J_NS2_END2,DO10,DO2};
cus_mux41_buf inst_cus_mux41_buf_W2BEG2 (
    .A0(W2BEG2_input[0]),
    .A1(W2BEG2_input[1]),
    .A2(W2BEG2_input[2]),
    .A3(W2BEG2_input[3]),
    .S0(ConfigBits[84+0]),
    .S0N(ConfigBits_N[84+0]),
    .S1(ConfigBits[84+1]),
    .S1N(ConfigBits_N[84+1]),
    .X(W2BEG2)
);

 //switch matrix multiplexer W2BEG3 MUX-4
assign W2BEG3_input = {J_NS2_END4,J_NS2_END3,DO11,DO3};
cus_mux41_buf inst_cus_mux41_buf_W2BEG3 (
    .A0(W2BEG3_input[0]),
    .A1(W2BEG3_input[1]),
    .A2(W2BEG3_input[2]),
    .A3(W2BEG3_input[3]),
    .S0(ConfigBits[86+0]),
    .S0N(ConfigBits_N[86+0]),
    .S1(ConfigBits[86+1]),
    .S1N(ConfigBits_N[86+1]),
    .X(W2BEG3)
);

 //switch matrix multiplexer W2BEG4 MUX-4
assign W2BEG4_input = {J_NS2_END4,J_NS2_END3,DO12,DO4};
cus_mux41_buf inst_cus_mux41_buf_W2BEG4 (
    .A0(W2BEG4_input[0]),
    .A1(W2BEG4_input[1]),
    .A2(W2BEG4_input[2]),
    .A3(W2BEG4_input[3]),
    .S0(ConfigBits[88+0]),
    .S0N(ConfigBits_N[88+0]),
    .S1(ConfigBits[88+1]),
    .S1N(ConfigBits_N[88+1]),
    .X(W2BEG4)
);

 //switch matrix multiplexer W2BEG5 MUX-4
assign W2BEG5_input = {J_NS2_END5,J_NS2_END2,DO13,DO5};
cus_mux41_buf inst_cus_mux41_buf_W2BEG5 (
    .A0(W2BEG5_input[0]),
    .A1(W2BEG5_input[1]),
    .A2(W2BEG5_input[2]),
    .A3(W2BEG5_input[3]),
    .S0(ConfigBits[90+0]),
    .S0N(ConfigBits_N[90+0]),
    .S1(ConfigBits[90+1]),
    .S1N(ConfigBits_N[90+1]),
    .X(W2BEG5)
);

 //switch matrix multiplexer W2BEG6 MUX-4
assign W2BEG6_input = {J_NS2_END6,J_NS2_END1,DO14,DO6};
cus_mux41_buf inst_cus_mux41_buf_W2BEG6 (
    .A0(W2BEG6_input[0]),
    .A1(W2BEG6_input[1]),
    .A2(W2BEG6_input[2]),
    .A3(W2BEG6_input[3]),
    .S0(ConfigBits[92+0]),
    .S0N(ConfigBits_N[92+0]),
    .S1(ConfigBits[92+1]),
    .S1N(ConfigBits_N[92+1]),
    .X(W2BEG6)
);

 //switch matrix multiplexer W2BEG7 MUX-4
assign W2BEG7_input = {J_NS2_END7,J_NS2_END0,DO15,DO7};
cus_mux41_buf inst_cus_mux41_buf_W2BEG7 (
    .A0(W2BEG7_input[0]),
    .A1(W2BEG7_input[1]),
    .A2(W2BEG7_input[2]),
    .A3(W2BEG7_input[3]),
    .S0(ConfigBits[94+0]),
    .S0N(ConfigBits_N[94+0]),
    .S1(ConfigBits[94+1]),
    .S1N(ConfigBits_N[94+1]),
    .X(W2BEG7)
);

 //switch matrix multiplexer W2BEGb0 MUX-4
assign W2BEGb0_input = {J_NS2_END7,J_NS2_END0,DO8,DO0};
cus_mux41_buf inst_cus_mux41_buf_W2BEGb0 (
    .A0(W2BEGb0_input[0]),
    .A1(W2BEGb0_input[1]),
    .A2(W2BEGb0_input[2]),
    .A3(W2BEGb0_input[3]),
    .S0(ConfigBits[96+0]),
    .S0N(ConfigBits_N[96+0]),
    .S1(ConfigBits[96+1]),
    .S1N(ConfigBits_N[96+1]),
    .X(W2BEGb0)
);

 //switch matrix multiplexer W2BEGb1 MUX-4
assign W2BEGb1_input = {J_NS2_END6,J_NS2_END1,DO9,DO1};
cus_mux41_buf inst_cus_mux41_buf_W2BEGb1 (
    .A0(W2BEGb1_input[0]),
    .A1(W2BEGb1_input[1]),
    .A2(W2BEGb1_input[2]),
    .A3(W2BEGb1_input[3]),
    .S0(ConfigBits[98+0]),
    .S0N(ConfigBits_N[98+0]),
    .S1(ConfigBits[98+1]),
    .S1N(ConfigBits_N[98+1]),
    .X(W2BEGb1)
);

 //switch matrix multiplexer W2BEGb2 MUX-4
assign W2BEGb2_input = {J_NS2_END5,J_NS2_END2,DO10,DO2};
cus_mux41_buf inst_cus_mux41_buf_W2BEGb2 (
    .A0(W2BEGb2_input[0]),
    .A1(W2BEGb2_input[1]),
    .A2(W2BEGb2_input[2]),
    .A3(W2BEGb2_input[3]),
    .S0(ConfigBits[100+0]),
    .S0N(ConfigBits_N[100+0]),
    .S1(ConfigBits[100+1]),
    .S1N(ConfigBits_N[100+1]),
    .X(W2BEGb2)
);

 //switch matrix multiplexer W2BEGb3 MUX-4
assign W2BEGb3_input = {J_NS2_END4,J_NS2_END3,DO11,DO3};
cus_mux41_buf inst_cus_mux41_buf_W2BEGb3 (
    .A0(W2BEGb3_input[0]),
    .A1(W2BEGb3_input[1]),
    .A2(W2BEGb3_input[2]),
    .A3(W2BEGb3_input[3]),
    .S0(ConfigBits[102+0]),
    .S0N(ConfigBits_N[102+0]),
    .S1(ConfigBits[102+1]),
    .S1N(ConfigBits_N[102+1]),
    .X(W2BEGb3)
);

 //switch matrix multiplexer W2BEGb4 MUX-4
assign W2BEGb4_input = {J_NS2_END4,J_NS2_END3,DO12,DO4};
cus_mux41_buf inst_cus_mux41_buf_W2BEGb4 (
    .A0(W2BEGb4_input[0]),
    .A1(W2BEGb4_input[1]),
    .A2(W2BEGb4_input[2]),
    .A3(W2BEGb4_input[3]),
    .S0(ConfigBits[104+0]),
    .S0N(ConfigBits_N[104+0]),
    .S1(ConfigBits[104+1]),
    .S1N(ConfigBits_N[104+1]),
    .X(W2BEGb4)
);

 //switch matrix multiplexer W2BEGb5 MUX-4
assign W2BEGb5_input = {J_NS2_END5,J_NS2_END2,DO13,DO5};
cus_mux41_buf inst_cus_mux41_buf_W2BEGb5 (
    .A0(W2BEGb5_input[0]),
    .A1(W2BEGb5_input[1]),
    .A2(W2BEGb5_input[2]),
    .A3(W2BEGb5_input[3]),
    .S0(ConfigBits[106+0]),
    .S0N(ConfigBits_N[106+0]),
    .S1(ConfigBits[106+1]),
    .S1N(ConfigBits_N[106+1]),
    .X(W2BEGb5)
);

 //switch matrix multiplexer W2BEGb6 MUX-4
assign W2BEGb6_input = {J_NS2_END6,J_NS2_END1,DO14,DO6};
cus_mux41_buf inst_cus_mux41_buf_W2BEGb6 (
    .A0(W2BEGb6_input[0]),
    .A1(W2BEGb6_input[1]),
    .A2(W2BEGb6_input[2]),
    .A3(W2BEGb6_input[3]),
    .S0(ConfigBits[108+0]),
    .S0N(ConfigBits_N[108+0]),
    .S1(ConfigBits[108+1]),
    .S1N(ConfigBits_N[108+1]),
    .X(W2BEGb6)
);

 //switch matrix multiplexer W2BEGb7 MUX-4
assign W2BEGb7_input = {J_NS2_END7,J_NS2_END0,DO15,DO7};
cus_mux41_buf inst_cus_mux41_buf_W2BEGb7 (
    .A0(W2BEGb7_input[0]),
    .A1(W2BEGb7_input[1]),
    .A2(W2BEGb7_input[2]),
    .A3(W2BEGb7_input[3]),
    .S0(ConfigBits[110+0]),
    .S0N(ConfigBits_N[110+0]),
    .S1(ConfigBits[110+1]),
    .S1N(ConfigBits_N[110+1]),
    .X(W2BEGb7)
);

 //switch matrix multiplexer WW4BEG0 MUX-4
assign WW4BEG0_input = {J_NS2_END7,J_NS4_END15,DO12,DO0};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG0 (
    .A0(WW4BEG0_input[0]),
    .A1(WW4BEG0_input[1]),
    .A2(WW4BEG0_input[2]),
    .A3(WW4BEG0_input[3]),
    .S0(ConfigBits[112+0]),
    .S0N(ConfigBits_N[112+0]),
    .S1(ConfigBits[112+1]),
    .S1N(ConfigBits_N[112+1]),
    .X(WW4BEG0)
);

 //switch matrix multiplexer WW4BEG1 MUX-4
assign WW4BEG1_input = {J_NS2_END6,J_NS4_END14,DO13,DO1};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG1 (
    .A0(WW4BEG1_input[0]),
    .A1(WW4BEG1_input[1]),
    .A2(WW4BEG1_input[2]),
    .A3(WW4BEG1_input[3]),
    .S0(ConfigBits[114+0]),
    .S0N(ConfigBits_N[114+0]),
    .S1(ConfigBits[114+1]),
    .S1N(ConfigBits_N[114+1]),
    .X(WW4BEG1)
);

 //switch matrix multiplexer WW4BEG2 MUX-4
assign WW4BEG2_input = {J_NS2_END5,J_NS4_END13,DO14,DO2};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG2 (
    .A0(WW4BEG2_input[0]),
    .A1(WW4BEG2_input[1]),
    .A2(WW4BEG2_input[2]),
    .A3(WW4BEG2_input[3]),
    .S0(ConfigBits[116+0]),
    .S0N(ConfigBits_N[116+0]),
    .S1(ConfigBits[116+1]),
    .S1N(ConfigBits_N[116+1]),
    .X(WW4BEG2)
);

 //switch matrix multiplexer WW4BEG3 MUX-4
assign WW4BEG3_input = {J_NS2_END4,J_NS4_END12,DO15,DO3};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG3 (
    .A0(WW4BEG3_input[0]),
    .A1(WW4BEG3_input[1]),
    .A2(WW4BEG3_input[2]),
    .A3(WW4BEG3_input[3]),
    .S0(ConfigBits[118+0]),
    .S0N(ConfigBits_N[118+0]),
    .S1(ConfigBits[118+1]),
    .S1N(ConfigBits_N[118+1]),
    .X(WW4BEG3)
);

 //switch matrix multiplexer WW4BEG4 MUX-4
assign WW4BEG4_input = {J_NS2_END3,J_NS4_END11,DO8,DO4};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG4 (
    .A0(WW4BEG4_input[0]),
    .A1(WW4BEG4_input[1]),
    .A2(WW4BEG4_input[2]),
    .A3(WW4BEG4_input[3]),
    .S0(ConfigBits[120+0]),
    .S0N(ConfigBits_N[120+0]),
    .S1(ConfigBits[120+1]),
    .S1N(ConfigBits_N[120+1]),
    .X(WW4BEG4)
);

 //switch matrix multiplexer WW4BEG5 MUX-4
assign WW4BEG5_input = {J_NS2_END2,J_NS4_END10,DO9,DO5};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG5 (
    .A0(WW4BEG5_input[0]),
    .A1(WW4BEG5_input[1]),
    .A2(WW4BEG5_input[2]),
    .A3(WW4BEG5_input[3]),
    .S0(ConfigBits[122+0]),
    .S0N(ConfigBits_N[122+0]),
    .S1(ConfigBits[122+1]),
    .S1N(ConfigBits_N[122+1]),
    .X(WW4BEG5)
);

 //switch matrix multiplexer WW4BEG6 MUX-4
assign WW4BEG6_input = {J_NS2_END1,J_NS4_END9,DO10,DO6};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG6 (
    .A0(WW4BEG6_input[0]),
    .A1(WW4BEG6_input[1]),
    .A2(WW4BEG6_input[2]),
    .A3(WW4BEG6_input[3]),
    .S0(ConfigBits[124+0]),
    .S0N(ConfigBits_N[124+0]),
    .S1(ConfigBits[124+1]),
    .S1N(ConfigBits_N[124+1]),
    .X(WW4BEG6)
);

 //switch matrix multiplexer WW4BEG7 MUX-4
assign WW4BEG7_input = {J_NS2_END0,J_NS4_END8,DO11,DO7};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG7 (
    .A0(WW4BEG7_input[0]),
    .A1(WW4BEG7_input[1]),
    .A2(WW4BEG7_input[2]),
    .A3(WW4BEG7_input[3]),
    .S0(ConfigBits[126+0]),
    .S0N(ConfigBits_N[126+0]),
    .S1(ConfigBits[126+1]),
    .S1N(ConfigBits_N[126+1]),
    .X(WW4BEG7)
);

 //switch matrix multiplexer WW4BEG8 MUX-4
assign WW4BEG8_input = {J_NS2_END7,J_NS4_END7,DO8,DO4};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG8 (
    .A0(WW4BEG8_input[0]),
    .A1(WW4BEG8_input[1]),
    .A2(WW4BEG8_input[2]),
    .A3(WW4BEG8_input[3]),
    .S0(ConfigBits[128+0]),
    .S0N(ConfigBits_N[128+0]),
    .S1(ConfigBits[128+1]),
    .S1N(ConfigBits_N[128+1]),
    .X(WW4BEG8)
);

 //switch matrix multiplexer WW4BEG9 MUX-4
assign WW4BEG9_input = {J_NS2_END6,J_NS4_END6,DO9,DO5};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG9 (
    .A0(WW4BEG9_input[0]),
    .A1(WW4BEG9_input[1]),
    .A2(WW4BEG9_input[2]),
    .A3(WW4BEG9_input[3]),
    .S0(ConfigBits[130+0]),
    .S0N(ConfigBits_N[130+0]),
    .S1(ConfigBits[130+1]),
    .S1N(ConfigBits_N[130+1]),
    .X(WW4BEG9)
);

 //switch matrix multiplexer WW4BEG10 MUX-4
assign WW4BEG10_input = {J_NS2_END5,J_NS4_END5,DO10,DO6};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG10 (
    .A0(WW4BEG10_input[0]),
    .A1(WW4BEG10_input[1]),
    .A2(WW4BEG10_input[2]),
    .A3(WW4BEG10_input[3]),
    .S0(ConfigBits[132+0]),
    .S0N(ConfigBits_N[132+0]),
    .S1(ConfigBits[132+1]),
    .S1N(ConfigBits_N[132+1]),
    .X(WW4BEG10)
);

 //switch matrix multiplexer WW4BEG11 MUX-4
assign WW4BEG11_input = {J_NS2_END4,J_NS4_END4,DO11,DO7};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG11 (
    .A0(WW4BEG11_input[0]),
    .A1(WW4BEG11_input[1]),
    .A2(WW4BEG11_input[2]),
    .A3(WW4BEG11_input[3]),
    .S0(ConfigBits[134+0]),
    .S0N(ConfigBits_N[134+0]),
    .S1(ConfigBits[134+1]),
    .S1N(ConfigBits_N[134+1]),
    .X(WW4BEG11)
);

 //switch matrix multiplexer WW4BEG12 MUX-4
assign WW4BEG12_input = {J_NS2_END3,J_NS4_END3,DO12,DO0};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG12 (
    .A0(WW4BEG12_input[0]),
    .A1(WW4BEG12_input[1]),
    .A2(WW4BEG12_input[2]),
    .A3(WW4BEG12_input[3]),
    .S0(ConfigBits[136+0]),
    .S0N(ConfigBits_N[136+0]),
    .S1(ConfigBits[136+1]),
    .S1N(ConfigBits_N[136+1]),
    .X(WW4BEG12)
);

 //switch matrix multiplexer WW4BEG13 MUX-4
assign WW4BEG13_input = {J_NS2_END2,J_NS4_END2,DO13,DO1};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG13 (
    .A0(WW4BEG13_input[0]),
    .A1(WW4BEG13_input[1]),
    .A2(WW4BEG13_input[2]),
    .A3(WW4BEG13_input[3]),
    .S0(ConfigBits[138+0]),
    .S0N(ConfigBits_N[138+0]),
    .S1(ConfigBits[138+1]),
    .S1N(ConfigBits_N[138+1]),
    .X(WW4BEG13)
);

 //switch matrix multiplexer WW4BEG14 MUX-4
assign WW4BEG14_input = {J_NS2_END1,J_NS4_END1,DO14,DO2};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG14 (
    .A0(WW4BEG14_input[0]),
    .A1(WW4BEG14_input[1]),
    .A2(WW4BEG14_input[2]),
    .A3(WW4BEG14_input[3]),
    .S0(ConfigBits[140+0]),
    .S0N(ConfigBits_N[140+0]),
    .S1(ConfigBits[140+1]),
    .S1N(ConfigBits_N[140+1]),
    .X(WW4BEG14)
);

 //switch matrix multiplexer WW4BEG15 MUX-4
assign WW4BEG15_input = {J_NS2_END0,J_NS4_END0,DO15,DO3};
cus_mux41_buf inst_cus_mux41_buf_WW4BEG15 (
    .A0(WW4BEG15_input[0]),
    .A1(WW4BEG15_input[1]),
    .A2(WW4BEG15_input[2]),
    .A3(WW4BEG15_input[3]),
    .S0(ConfigBits[142+0]),
    .S0N(ConfigBits_N[142+0]),
    .S1(ConfigBits[142+1]),
    .S1N(ConfigBits_N[142+1]),
    .X(WW4BEG15)
);

 //switch matrix multiplexer W6BEG0 MUX-4
assign W6BEG0_input = {J_NS4_END15,J_NS4_END11,S4END0,N4END0};
cus_mux41_buf inst_cus_mux41_buf_W6BEG0 (
    .A0(W6BEG0_input[0]),
    .A1(W6BEG0_input[1]),
    .A2(W6BEG0_input[2]),
    .A3(W6BEG0_input[3]),
    .S0(ConfigBits[144+0]),
    .S0N(ConfigBits_N[144+0]),
    .S1(ConfigBits[144+1]),
    .S1N(ConfigBits_N[144+1]),
    .X(W6BEG0)
);

 //switch matrix multiplexer W6BEG1 MUX-4
assign W6BEG1_input = {J_NS4_END14,J_NS4_END10,S4END1,N4END1};
cus_mux41_buf inst_cus_mux41_buf_W6BEG1 (
    .A0(W6BEG1_input[0]),
    .A1(W6BEG1_input[1]),
    .A2(W6BEG1_input[2]),
    .A3(W6BEG1_input[3]),
    .S0(ConfigBits[146+0]),
    .S0N(ConfigBits_N[146+0]),
    .S1(ConfigBits[146+1]),
    .S1N(ConfigBits_N[146+1]),
    .X(W6BEG1)
);

 //switch matrix multiplexer W6BEG2 MUX-4
assign W6BEG2_input = {J_NS4_END13,J_NS4_END9,S4END2,N4END2};
cus_mux41_buf inst_cus_mux41_buf_W6BEG2 (
    .A0(W6BEG2_input[0]),
    .A1(W6BEG2_input[1]),
    .A2(W6BEG2_input[2]),
    .A3(W6BEG2_input[3]),
    .S0(ConfigBits[148+0]),
    .S0N(ConfigBits_N[148+0]),
    .S1(ConfigBits[148+1]),
    .S1N(ConfigBits_N[148+1]),
    .X(W6BEG2)
);

 //switch matrix multiplexer W6BEG3 MUX-4
assign W6BEG3_input = {J_NS4_END12,J_NS4_END8,S4END3,N4END3};
cus_mux41_buf inst_cus_mux41_buf_W6BEG3 (
    .A0(W6BEG3_input[0]),
    .A1(W6BEG3_input[1]),
    .A2(W6BEG3_input[2]),
    .A3(W6BEG3_input[3]),
    .S0(ConfigBits[150+0]),
    .S0N(ConfigBits_N[150+0]),
    .S1(ConfigBits[150+1]),
    .S1N(ConfigBits_N[150+1]),
    .X(W6BEG3)
);

 //switch matrix multiplexer W6BEG4 MUX-4
assign W6BEG4_input = {J_NS2_END0,J_NS4_END11,J_NS4_END7,DO4};
cus_mux41_buf inst_cus_mux41_buf_W6BEG4 (
    .A0(W6BEG4_input[0]),
    .A1(W6BEG4_input[1]),
    .A2(W6BEG4_input[2]),
    .A3(W6BEG4_input[3]),
    .S0(ConfigBits[152+0]),
    .S0N(ConfigBits_N[152+0]),
    .S1(ConfigBits[152+1]),
    .S1N(ConfigBits_N[152+1]),
    .X(W6BEG4)
);

 //switch matrix multiplexer W6BEG5 MUX-4
assign W6BEG5_input = {J_NS2_END1,J_NS4_END10,J_NS4_END6,DO5};
cus_mux41_buf inst_cus_mux41_buf_W6BEG5 (
    .A0(W6BEG5_input[0]),
    .A1(W6BEG5_input[1]),
    .A2(W6BEG5_input[2]),
    .A3(W6BEG5_input[3]),
    .S0(ConfigBits[154+0]),
    .S0N(ConfigBits_N[154+0]),
    .S1(ConfigBits[154+1]),
    .S1N(ConfigBits_N[154+1]),
    .X(W6BEG5)
);

 //switch matrix multiplexer W6BEG6 MUX-4
assign W6BEG6_input = {J_NS2_END2,J_NS4_END9,J_NS4_END5,DO6};
cus_mux41_buf inst_cus_mux41_buf_W6BEG6 (
    .A0(W6BEG6_input[0]),
    .A1(W6BEG6_input[1]),
    .A2(W6BEG6_input[2]),
    .A3(W6BEG6_input[3]),
    .S0(ConfigBits[156+0]),
    .S0N(ConfigBits_N[156+0]),
    .S1(ConfigBits[156+1]),
    .S1N(ConfigBits_N[156+1]),
    .X(W6BEG6)
);

 //switch matrix multiplexer W6BEG7 MUX-4
assign W6BEG7_input = {J_NS2_END3,J_NS4_END8,J_NS4_END4,DO7};
cus_mux41_buf inst_cus_mux41_buf_W6BEG7 (
    .A0(W6BEG7_input[0]),
    .A1(W6BEG7_input[1]),
    .A2(W6BEG7_input[2]),
    .A3(W6BEG7_input[3]),
    .S0(ConfigBits[158+0]),
    .S0N(ConfigBits_N[158+0]),
    .S1(ConfigBits[158+1]),
    .S1N(ConfigBits_N[158+1]),
    .X(W6BEG7)
);

 //switch matrix multiplexer W6BEG8 MUX-4
assign W6BEG8_input = {J_NS2_END4,J_NS4_END7,J_NS4_END3,DO0};
cus_mux41_buf inst_cus_mux41_buf_W6BEG8 (
    .A0(W6BEG8_input[0]),
    .A1(W6BEG8_input[1]),
    .A2(W6BEG8_input[2]),
    .A3(W6BEG8_input[3]),
    .S0(ConfigBits[160+0]),
    .S0N(ConfigBits_N[160+0]),
    .S1(ConfigBits[160+1]),
    .S1N(ConfigBits_N[160+1]),
    .X(W6BEG8)
);

 //switch matrix multiplexer W6BEG9 MUX-4
assign W6BEG9_input = {J_NS2_END5,J_NS4_END6,J_NS4_END2,DO1};
cus_mux41_buf inst_cus_mux41_buf_W6BEG9 (
    .A0(W6BEG9_input[0]),
    .A1(W6BEG9_input[1]),
    .A2(W6BEG9_input[2]),
    .A3(W6BEG9_input[3]),
    .S0(ConfigBits[162+0]),
    .S0N(ConfigBits_N[162+0]),
    .S1(ConfigBits[162+1]),
    .S1N(ConfigBits_N[162+1]),
    .X(W6BEG9)
);

 //switch matrix multiplexer W6BEG10 MUX-4
assign W6BEG10_input = {J_NS2_END6,J_NS4_END5,J_NS4_END1,DO2};
cus_mux41_buf inst_cus_mux41_buf_W6BEG10 (
    .A0(W6BEG10_input[0]),
    .A1(W6BEG10_input[1]),
    .A2(W6BEG10_input[2]),
    .A3(W6BEG10_input[3]),
    .S0(ConfigBits[164+0]),
    .S0N(ConfigBits_N[164+0]),
    .S1(ConfigBits[164+1]),
    .S1N(ConfigBits_N[164+1]),
    .X(W6BEG10)
);

 //switch matrix multiplexer W6BEG11 MUX-4
assign W6BEG11_input = {J_NS2_END7,J_NS4_END4,J_NS4_END0,DO3};
cus_mux41_buf inst_cus_mux41_buf_W6BEG11 (
    .A0(W6BEG11_input[0]),
    .A1(W6BEG11_input[1]),
    .A2(W6BEG11_input[2]),
    .A3(W6BEG11_input[3]),
    .S0(ConfigBits[166+0]),
    .S0N(ConfigBits_N[166+0]),
    .S1(ConfigBits[166+1]),
    .S1N(ConfigBits_N[166+1]),
    .X(W6BEG11)
);

 //switch matrix multiplexer bot2top_DO0 MUX-1
assign bot2top_DO0 = DO16;

 //switch matrix multiplexer bot2top_DO1 MUX-1
assign bot2top_DO1 = DO17;

 //switch matrix multiplexer bot2top_DO2 MUX-1
assign bot2top_DO2 = DO18;

 //switch matrix multiplexer bot2top_DO3 MUX-1
assign bot2top_DO3 = DO19;

 //switch matrix multiplexer bot2top_DO4 MUX-1
assign bot2top_DO4 = DO20;

 //switch matrix multiplexer bot2top_DO5 MUX-1
assign bot2top_DO5 = DO21;

 //switch matrix multiplexer bot2top_DO6 MUX-1
assign bot2top_DO6 = DO22;

 //switch matrix multiplexer bot2top_DO7 MUX-1
assign bot2top_DO7 = DO23;

 //switch matrix multiplexer bot2top_DO8 MUX-1
assign bot2top_DO8 = DO24;

 //switch matrix multiplexer bot2top_DO9 MUX-1
assign bot2top_DO9 = DO25;

 //switch matrix multiplexer bot2top_DO10 MUX-1
assign bot2top_DO10 = DO26;

 //switch matrix multiplexer bot2top_DO11 MUX-1
assign bot2top_DO11 = DO27;

 //switch matrix multiplexer bot2top_DO12 MUX-1
assign bot2top_DO12 = DO28;

 //switch matrix multiplexer bot2top_DO13 MUX-1
assign bot2top_DO13 = DO29;

 //switch matrix multiplexer bot2top_DO14 MUX-1
assign bot2top_DO14 = DO30;

 //switch matrix multiplexer bot2top_DO15 MUX-1
assign bot2top_DO15 = DO31;

 //switch matrix multiplexer AD0 MUX-4
assign AD0_input = {GND0,J_NS2_END0,E2END0,E2MID0};
cus_mux41_buf inst_cus_mux41_buf_AD0 (
    .A0(AD0_input[0]),
    .A1(AD0_input[1]),
    .A2(AD0_input[2]),
    .A3(AD0_input[3]),
    .S0(ConfigBits[168+0]),
    .S0N(ConfigBits_N[168+0]),
    .S1(ConfigBits[168+1]),
    .S1N(ConfigBits_N[168+1]),
    .X(AD0)
);

 //switch matrix multiplexer AD1 MUX-4
assign AD1_input = {GND0,J_NS2_END1,E2END1,E2MID1};
cus_mux41_buf inst_cus_mux41_buf_AD1 (
    .A0(AD1_input[0]),
    .A1(AD1_input[1]),
    .A2(AD1_input[2]),
    .A3(AD1_input[3]),
    .S0(ConfigBits[170+0]),
    .S0N(ConfigBits_N[170+0]),
    .S1(ConfigBits[170+1]),
    .S1N(ConfigBits_N[170+1]),
    .X(AD1)
);

 //switch matrix multiplexer AD2 MUX-4
assign AD2_input = {GND0,J_NS2_END2,E2END2,E2MID2};
cus_mux41_buf inst_cus_mux41_buf_AD2 (
    .A0(AD2_input[0]),
    .A1(AD2_input[1]),
    .A2(AD2_input[2]),
    .A3(AD2_input[3]),
    .S0(ConfigBits[172+0]),
    .S0N(ConfigBits_N[172+0]),
    .S1(ConfigBits[172+1]),
    .S1N(ConfigBits_N[172+1]),
    .X(AD2)
);

 //switch matrix multiplexer AD3 MUX-4
assign AD3_input = {GND0,J_NS2_END3,E2END3,E2MID3};
cus_mux41_buf inst_cus_mux41_buf_AD3 (
    .A0(AD3_input[0]),
    .A1(AD3_input[1]),
    .A2(AD3_input[2]),
    .A3(AD3_input[3]),
    .S0(ConfigBits[174+0]),
    .S0N(ConfigBits_N[174+0]),
    .S1(ConfigBits[174+1]),
    .S1N(ConfigBits_N[174+1]),
    .X(AD3)
);

 //switch matrix multiplexer AD4 MUX-4
assign AD4_input = {GND0,J_NS2_END4,E2END4,E2MID4};
cus_mux41_buf inst_cus_mux41_buf_AD4 (
    .A0(AD4_input[0]),
    .A1(AD4_input[1]),
    .A2(AD4_input[2]),
    .A3(AD4_input[3]),
    .S0(ConfigBits[176+0]),
    .S0N(ConfigBits_N[176+0]),
    .S1(ConfigBits[176+1]),
    .S1N(ConfigBits_N[176+1]),
    .X(AD4)
);

 //switch matrix multiplexer AD5 MUX-1
assign AD5 = top2bot_AD0;

 //switch matrix multiplexer AD6 MUX-1
assign AD6 = top2bot_AD1;

 //switch matrix multiplexer AD7 MUX-1
assign AD7 = top2bot_AD2;

 //switch matrix multiplexer AD8 MUX-1
assign AD8 = top2bot_AD3;

 //switch matrix multiplexer AD9 MUX-1
assign AD9 = top2bot_AD4;

 //switch matrix multiplexer BEN0 MUX-4
assign BEN0_input = {J_NS4_END0,E6END0,EE4END8,EE4END0};
cus_mux41_buf inst_cus_mux41_buf_BEN0 (
    .A0(BEN0_input[0]),
    .A1(BEN0_input[1]),
    .A2(BEN0_input[2]),
    .A3(BEN0_input[3]),
    .S0(ConfigBits[178+0]),
    .S0N(ConfigBits_N[178+0]),
    .S1(ConfigBits[178+1]),
    .S1N(ConfigBits_N[178+1]),
    .X(BEN0)
);

 //switch matrix multiplexer BEN1 MUX-4
assign BEN1_input = {J_NS4_END1,E6END1,EE4END9,EE4END1};
cus_mux41_buf inst_cus_mux41_buf_BEN1 (
    .A0(BEN1_input[0]),
    .A1(BEN1_input[1]),
    .A2(BEN1_input[2]),
    .A3(BEN1_input[3]),
    .S0(ConfigBits[180+0]),
    .S0N(ConfigBits_N[180+0]),
    .S1(ConfigBits[180+1]),
    .S1N(ConfigBits_N[180+1]),
    .X(BEN1)
);

 //switch matrix multiplexer BEN2 MUX-4
assign BEN2_input = {J_NS4_END2,E6END2,EE4END10,EE4END2};
cus_mux41_buf inst_cus_mux41_buf_BEN2 (
    .A0(BEN2_input[0]),
    .A1(BEN2_input[1]),
    .A2(BEN2_input[2]),
    .A3(BEN2_input[3]),
    .S0(ConfigBits[182+0]),
    .S0N(ConfigBits_N[182+0]),
    .S1(ConfigBits[182+1]),
    .S1N(ConfigBits_N[182+1]),
    .X(BEN2)
);

 //switch matrix multiplexer BEN3 MUX-4
assign BEN3_input = {J_NS4_END3,E6END3,EE4END11,EE4END3};
cus_mux41_buf inst_cus_mux41_buf_BEN3 (
    .A0(BEN3_input[0]),
    .A1(BEN3_input[1]),
    .A2(BEN3_input[2]),
    .A3(BEN3_input[3]),
    .S0(ConfigBits[184+0]),
    .S0N(ConfigBits_N[184+0]),
    .S1(ConfigBits[184+1]),
    .S1N(ConfigBits_N[184+1]),
    .X(BEN3)
);

 //switch matrix multiplexer BEN4 MUX-4
assign BEN4_input = {J_NS4_END4,E6END4,EE4END12,EE4END4};
cus_mux41_buf inst_cus_mux41_buf_BEN4 (
    .A0(BEN4_input[0]),
    .A1(BEN4_input[1]),
    .A2(BEN4_input[2]),
    .A3(BEN4_input[3]),
    .S0(ConfigBits[186+0]),
    .S0N(ConfigBits_N[186+0]),
    .S1(ConfigBits[186+1]),
    .S1N(ConfigBits_N[186+1]),
    .X(BEN4)
);

 //switch matrix multiplexer BEN5 MUX-4
assign BEN5_input = {J_NS4_END5,E6END5,EE4END13,EE4END5};
cus_mux41_buf inst_cus_mux41_buf_BEN5 (
    .A0(BEN5_input[0]),
    .A1(BEN5_input[1]),
    .A2(BEN5_input[2]),
    .A3(BEN5_input[3]),
    .S0(ConfigBits[188+0]),
    .S0N(ConfigBits_N[188+0]),
    .S1(ConfigBits[188+1]),
    .S1N(ConfigBits_N[188+1]),
    .X(BEN5)
);

 //switch matrix multiplexer BEN6 MUX-4
assign BEN6_input = {J_NS4_END6,E6END6,EE4END14,EE4END6};
cus_mux41_buf inst_cus_mux41_buf_BEN6 (
    .A0(BEN6_input[0]),
    .A1(BEN6_input[1]),
    .A2(BEN6_input[2]),
    .A3(BEN6_input[3]),
    .S0(ConfigBits[190+0]),
    .S0N(ConfigBits_N[190+0]),
    .S1(ConfigBits[190+1]),
    .S1N(ConfigBits_N[190+1]),
    .X(BEN6)
);

 //switch matrix multiplexer BEN7 MUX-4
assign BEN7_input = {J_NS4_END7,E6END7,EE4END15,EE4END7};
cus_mux41_buf inst_cus_mux41_buf_BEN7 (
    .A0(BEN7_input[0]),
    .A1(BEN7_input[1]),
    .A2(BEN7_input[2]),
    .A3(BEN7_input[3]),
    .S0(ConfigBits[192+0]),
    .S0N(ConfigBits_N[192+0]),
    .S1(ConfigBits[192+1]),
    .S1N(ConfigBits_N[192+1]),
    .X(BEN7)
);

 //switch matrix multiplexer BEN8 MUX-4
assign BEN8_input = {J_NS4_END8,E6END8,EE4END8,EE4END0};
cus_mux41_buf inst_cus_mux41_buf_BEN8 (
    .A0(BEN8_input[0]),
    .A1(BEN8_input[1]),
    .A2(BEN8_input[2]),
    .A3(BEN8_input[3]),
    .S0(ConfigBits[194+0]),
    .S0N(ConfigBits_N[194+0]),
    .S1(ConfigBits[194+1]),
    .S1N(ConfigBits_N[194+1]),
    .X(BEN8)
);

 //switch matrix multiplexer BEN9 MUX-4
assign BEN9_input = {J_NS4_END9,E6END9,EE4END9,EE4END1};
cus_mux41_buf inst_cus_mux41_buf_BEN9 (
    .A0(BEN9_input[0]),
    .A1(BEN9_input[1]),
    .A2(BEN9_input[2]),
    .A3(BEN9_input[3]),
    .S0(ConfigBits[196+0]),
    .S0N(ConfigBits_N[196+0]),
    .S1(ConfigBits[196+1]),
    .S1N(ConfigBits_N[196+1]),
    .X(BEN9)
);

 //switch matrix multiplexer BEN10 MUX-4
assign BEN10_input = {J_NS4_END10,E6END10,EE4END10,EE4END2};
cus_mux41_buf inst_cus_mux41_buf_BEN10 (
    .A0(BEN10_input[0]),
    .A1(BEN10_input[1]),
    .A2(BEN10_input[2]),
    .A3(BEN10_input[3]),
    .S0(ConfigBits[198+0]),
    .S0N(ConfigBits_N[198+0]),
    .S1(ConfigBits[198+1]),
    .S1N(ConfigBits_N[198+1]),
    .X(BEN10)
);

 //switch matrix multiplexer BEN11 MUX-4
assign BEN11_input = {J_NS4_END11,E6END11,EE4END11,EE4END3};
cus_mux41_buf inst_cus_mux41_buf_BEN11 (
    .A0(BEN11_input[0]),
    .A1(BEN11_input[1]),
    .A2(BEN11_input[2]),
    .A3(BEN11_input[3]),
    .S0(ConfigBits[200+0]),
    .S0N(ConfigBits_N[200+0]),
    .S1(ConfigBits[200+1]),
    .S1N(ConfigBits_N[200+1]),
    .X(BEN11)
);

 //switch matrix multiplexer BEN12 MUX-4
assign BEN12_input = {J_NS4_END12,EE4END12,EE4END4,E1END0};
cus_mux41_buf inst_cus_mux41_buf_BEN12 (
    .A0(BEN12_input[0]),
    .A1(BEN12_input[1]),
    .A2(BEN12_input[2]),
    .A3(BEN12_input[3]),
    .S0(ConfigBits[202+0]),
    .S0N(ConfigBits_N[202+0]),
    .S1(ConfigBits[202+1]),
    .S1N(ConfigBits_N[202+1]),
    .X(BEN12)
);

 //switch matrix multiplexer BEN13 MUX-4
assign BEN13_input = {J_NS4_END13,EE4END13,EE4END5,E1END1};
cus_mux41_buf inst_cus_mux41_buf_BEN13 (
    .A0(BEN13_input[0]),
    .A1(BEN13_input[1]),
    .A2(BEN13_input[2]),
    .A3(BEN13_input[3]),
    .S0(ConfigBits[204+0]),
    .S0N(ConfigBits_N[204+0]),
    .S1(ConfigBits[204+1]),
    .S1N(ConfigBits_N[204+1]),
    .X(BEN13)
);

 //switch matrix multiplexer BEN14 MUX-4
assign BEN14_input = {J_NS4_END14,EE4END14,EE4END6,E1END2};
cus_mux41_buf inst_cus_mux41_buf_BEN14 (
    .A0(BEN14_input[0]),
    .A1(BEN14_input[1]),
    .A2(BEN14_input[2]),
    .A3(BEN14_input[3]),
    .S0(ConfigBits[206+0]),
    .S0N(ConfigBits_N[206+0]),
    .S1(ConfigBits[206+1]),
    .S1N(ConfigBits_N[206+1]),
    .X(BEN14)
);

 //switch matrix multiplexer BEN15 MUX-4
assign BEN15_input = {J_NS4_END15,EE4END15,EE4END7,E1END3};
cus_mux41_buf inst_cus_mux41_buf_BEN15 (
    .A0(BEN15_input[0]),
    .A1(BEN15_input[1]),
    .A2(BEN15_input[2]),
    .A3(BEN15_input[3]),
    .S0(ConfigBits[208+0]),
    .S0N(ConfigBits_N[208+0]),
    .S1(ConfigBits[208+1]),
    .S1N(ConfigBits_N[208+1]),
    .X(BEN15)
);

 //switch matrix multiplexer BEN16 MUX-1
assign BEN16 = top2bot_BEN0;

 //switch matrix multiplexer BEN17 MUX-1
assign BEN17 = top2bot_BEN1;

 //switch matrix multiplexer BEN18 MUX-1
assign BEN18 = top2bot_BEN2;

 //switch matrix multiplexer BEN19 MUX-1
assign BEN19 = top2bot_BEN3;

 //switch matrix multiplexer BEN20 MUX-1
assign BEN20 = top2bot_BEN4;

 //switch matrix multiplexer BEN21 MUX-1
assign BEN21 = top2bot_BEN5;

 //switch matrix multiplexer BEN22 MUX-1
assign BEN22 = top2bot_BEN6;

 //switch matrix multiplexer BEN23 MUX-1
assign BEN23 = top2bot_BEN7;

 //switch matrix multiplexer BEN24 MUX-1
assign BEN24 = top2bot_BEN8;

 //switch matrix multiplexer BEN25 MUX-1
assign BEN25 = top2bot_BEN9;

 //switch matrix multiplexer BEN26 MUX-1
assign BEN26 = top2bot_BEN10;

 //switch matrix multiplexer BEN27 MUX-1
assign BEN27 = top2bot_BEN11;

 //switch matrix multiplexer BEN28 MUX-1
assign BEN28 = top2bot_BEN12;

 //switch matrix multiplexer BEN29 MUX-1
assign BEN29 = top2bot_BEN13;

 //switch matrix multiplexer BEN30 MUX-1
assign BEN30 = top2bot_BEN14;

 //switch matrix multiplexer BEN31 MUX-1
assign BEN31 = top2bot_BEN15;

 //switch matrix multiplexer DI0 MUX-4
assign DI0_input = {J_NS4_END0,E6END0,EE4END8,EE4END0};
cus_mux41_buf inst_cus_mux41_buf_DI0 (
    .A0(DI0_input[0]),
    .A1(DI0_input[1]),
    .A2(DI0_input[2]),
    .A3(DI0_input[3]),
    .S0(ConfigBits[210+0]),
    .S0N(ConfigBits_N[210+0]),
    .S1(ConfigBits[210+1]),
    .S1N(ConfigBits_N[210+1]),
    .X(DI0)
);

 //switch matrix multiplexer DI1 MUX-4
assign DI1_input = {J_NS4_END1,E6END1,EE4END9,EE4END1};
cus_mux41_buf inst_cus_mux41_buf_DI1 (
    .A0(DI1_input[0]),
    .A1(DI1_input[1]),
    .A2(DI1_input[2]),
    .A3(DI1_input[3]),
    .S0(ConfigBits[212+0]),
    .S0N(ConfigBits_N[212+0]),
    .S1(ConfigBits[212+1]),
    .S1N(ConfigBits_N[212+1]),
    .X(DI1)
);

 //switch matrix multiplexer DI2 MUX-4
assign DI2_input = {J_NS4_END2,E6END2,EE4END10,EE4END2};
cus_mux41_buf inst_cus_mux41_buf_DI2 (
    .A0(DI2_input[0]),
    .A1(DI2_input[1]),
    .A2(DI2_input[2]),
    .A3(DI2_input[3]),
    .S0(ConfigBits[214+0]),
    .S0N(ConfigBits_N[214+0]),
    .S1(ConfigBits[214+1]),
    .S1N(ConfigBits_N[214+1]),
    .X(DI2)
);

 //switch matrix multiplexer DI3 MUX-4
assign DI3_input = {J_NS4_END3,E6END3,EE4END11,EE4END3};
cus_mux41_buf inst_cus_mux41_buf_DI3 (
    .A0(DI3_input[0]),
    .A1(DI3_input[1]),
    .A2(DI3_input[2]),
    .A3(DI3_input[3]),
    .S0(ConfigBits[216+0]),
    .S0N(ConfigBits_N[216+0]),
    .S1(ConfigBits[216+1]),
    .S1N(ConfigBits_N[216+1]),
    .X(DI3)
);

 //switch matrix multiplexer DI4 MUX-4
assign DI4_input = {J_NS4_END4,E6END4,EE4END12,EE4END4};
cus_mux41_buf inst_cus_mux41_buf_DI4 (
    .A0(DI4_input[0]),
    .A1(DI4_input[1]),
    .A2(DI4_input[2]),
    .A3(DI4_input[3]),
    .S0(ConfigBits[218+0]),
    .S0N(ConfigBits_N[218+0]),
    .S1(ConfigBits[218+1]),
    .S1N(ConfigBits_N[218+1]),
    .X(DI4)
);

 //switch matrix multiplexer DI5 MUX-4
assign DI5_input = {J_NS4_END5,E6END5,EE4END13,EE4END5};
cus_mux41_buf inst_cus_mux41_buf_DI5 (
    .A0(DI5_input[0]),
    .A1(DI5_input[1]),
    .A2(DI5_input[2]),
    .A3(DI5_input[3]),
    .S0(ConfigBits[220+0]),
    .S0N(ConfigBits_N[220+0]),
    .S1(ConfigBits[220+1]),
    .S1N(ConfigBits_N[220+1]),
    .X(DI5)
);

 //switch matrix multiplexer DI6 MUX-4
assign DI6_input = {J_NS4_END6,E6END6,EE4END14,EE4END6};
cus_mux41_buf inst_cus_mux41_buf_DI6 (
    .A0(DI6_input[0]),
    .A1(DI6_input[1]),
    .A2(DI6_input[2]),
    .A3(DI6_input[3]),
    .S0(ConfigBits[222+0]),
    .S0N(ConfigBits_N[222+0]),
    .S1(ConfigBits[222+1]),
    .S1N(ConfigBits_N[222+1]),
    .X(DI6)
);

 //switch matrix multiplexer DI7 MUX-4
assign DI7_input = {J_NS4_END7,E6END7,EE4END15,EE4END7};
cus_mux41_buf inst_cus_mux41_buf_DI7 (
    .A0(DI7_input[0]),
    .A1(DI7_input[1]),
    .A2(DI7_input[2]),
    .A3(DI7_input[3]),
    .S0(ConfigBits[224+0]),
    .S0N(ConfigBits_N[224+0]),
    .S1(ConfigBits[224+1]),
    .S1N(ConfigBits_N[224+1]),
    .X(DI7)
);

 //switch matrix multiplexer DI8 MUX-4
assign DI8_input = {J_NS4_END8,E6END8,EE4END8,EE4END0};
cus_mux41_buf inst_cus_mux41_buf_DI8 (
    .A0(DI8_input[0]),
    .A1(DI8_input[1]),
    .A2(DI8_input[2]),
    .A3(DI8_input[3]),
    .S0(ConfigBits[226+0]),
    .S0N(ConfigBits_N[226+0]),
    .S1(ConfigBits[226+1]),
    .S1N(ConfigBits_N[226+1]),
    .X(DI8)
);

 //switch matrix multiplexer DI9 MUX-4
assign DI9_input = {J_NS4_END9,E6END9,EE4END9,EE4END1};
cus_mux41_buf inst_cus_mux41_buf_DI9 (
    .A0(DI9_input[0]),
    .A1(DI9_input[1]),
    .A2(DI9_input[2]),
    .A3(DI9_input[3]),
    .S0(ConfigBits[228+0]),
    .S0N(ConfigBits_N[228+0]),
    .S1(ConfigBits[228+1]),
    .S1N(ConfigBits_N[228+1]),
    .X(DI9)
);

 //switch matrix multiplexer DI10 MUX-4
assign DI10_input = {J_NS4_END10,E6END10,EE4END10,EE4END2};
cus_mux41_buf inst_cus_mux41_buf_DI10 (
    .A0(DI10_input[0]),
    .A1(DI10_input[1]),
    .A2(DI10_input[2]),
    .A3(DI10_input[3]),
    .S0(ConfigBits[230+0]),
    .S0N(ConfigBits_N[230+0]),
    .S1(ConfigBits[230+1]),
    .S1N(ConfigBits_N[230+1]),
    .X(DI10)
);

 //switch matrix multiplexer DI11 MUX-4
assign DI11_input = {J_NS4_END11,E6END11,EE4END11,EE4END3};
cus_mux41_buf inst_cus_mux41_buf_DI11 (
    .A0(DI11_input[0]),
    .A1(DI11_input[1]),
    .A2(DI11_input[2]),
    .A3(DI11_input[3]),
    .S0(ConfigBits[232+0]),
    .S0N(ConfigBits_N[232+0]),
    .S1(ConfigBits[232+1]),
    .S1N(ConfigBits_N[232+1]),
    .X(DI11)
);

 //switch matrix multiplexer DI12 MUX-4
assign DI12_input = {J_NS4_END12,EE4END12,EE4END4,E1END0};
cus_mux41_buf inst_cus_mux41_buf_DI12 (
    .A0(DI12_input[0]),
    .A1(DI12_input[1]),
    .A2(DI12_input[2]),
    .A3(DI12_input[3]),
    .S0(ConfigBits[234+0]),
    .S0N(ConfigBits_N[234+0]),
    .S1(ConfigBits[234+1]),
    .S1N(ConfigBits_N[234+1]),
    .X(DI12)
);

 //switch matrix multiplexer DI13 MUX-4
assign DI13_input = {J_NS4_END13,EE4END13,EE4END5,E1END1};
cus_mux41_buf inst_cus_mux41_buf_DI13 (
    .A0(DI13_input[0]),
    .A1(DI13_input[1]),
    .A2(DI13_input[2]),
    .A3(DI13_input[3]),
    .S0(ConfigBits[236+0]),
    .S0N(ConfigBits_N[236+0]),
    .S1(ConfigBits[236+1]),
    .S1N(ConfigBits_N[236+1]),
    .X(DI13)
);

 //switch matrix multiplexer DI14 MUX-4
assign DI14_input = {J_NS4_END14,EE4END14,EE4END6,E1END2};
cus_mux41_buf inst_cus_mux41_buf_DI14 (
    .A0(DI14_input[0]),
    .A1(DI14_input[1]),
    .A2(DI14_input[2]),
    .A3(DI14_input[3]),
    .S0(ConfigBits[238+0]),
    .S0N(ConfigBits_N[238+0]),
    .S1(ConfigBits[238+1]),
    .S1N(ConfigBits_N[238+1]),
    .X(DI14)
);

 //switch matrix multiplexer DI15 MUX-4
assign DI15_input = {J_NS4_END15,EE4END15,EE4END7,E1END3};
cus_mux41_buf inst_cus_mux41_buf_DI15 (
    .A0(DI15_input[0]),
    .A1(DI15_input[1]),
    .A2(DI15_input[2]),
    .A3(DI15_input[3]),
    .S0(ConfigBits[240+0]),
    .S0N(ConfigBits_N[240+0]),
    .S1(ConfigBits[240+1]),
    .S1N(ConfigBits_N[240+1]),
    .X(DI15)
);

 //switch matrix multiplexer DI16 MUX-1
assign DI16 = top2bot_DI0;

 //switch matrix multiplexer DI17 MUX-1
assign DI17 = top2bot_DI1;

 //switch matrix multiplexer DI18 MUX-1
assign DI18 = top2bot_DI2;

 //switch matrix multiplexer DI19 MUX-1
assign DI19 = top2bot_DI3;

 //switch matrix multiplexer DI20 MUX-1
assign DI20 = top2bot_DI4;

 //switch matrix multiplexer DI21 MUX-1
assign DI21 = top2bot_DI5;

 //switch matrix multiplexer DI22 MUX-1
assign DI22 = top2bot_DI6;

 //switch matrix multiplexer DI23 MUX-1
assign DI23 = top2bot_DI7;

 //switch matrix multiplexer DI24 MUX-1
assign DI24 = top2bot_DI8;

 //switch matrix multiplexer DI25 MUX-1
assign DI25 = top2bot_DI9;

 //switch matrix multiplexer DI26 MUX-1
assign DI26 = top2bot_DI10;

 //switch matrix multiplexer DI27 MUX-1
assign DI27 = top2bot_DI11;

 //switch matrix multiplexer DI28 MUX-1
assign DI28 = top2bot_DI12;

 //switch matrix multiplexer DI29 MUX-1
assign DI29 = top2bot_DI13;

 //switch matrix multiplexer DI30 MUX-1
assign DI30 = top2bot_DI14;

 //switch matrix multiplexer DI31 MUX-1
assign DI31 = top2bot_DI15;

 //switch matrix multiplexer EN MUX-16
assign EN_input = {VCC0,GND0,S2END3,S2END2,S2MID0,E2END5,E2END4,E2END3,E2END2,E2END1,E2MID6,E2MID3,E2MID0,N2END3,N2END2,N2MID6};
cus_mux161_buf inst_cus_mux161_buf_EN (
    .A0(EN_input[0]),
    .A1(EN_input[1]),
    .A2(EN_input[2]),
    .A3(EN_input[3]),
    .A4(EN_input[4]),
    .A5(EN_input[5]),
    .A6(EN_input[6]),
    .A7(EN_input[7]),
    .A8(EN_input[8]),
    .A9(EN_input[9]),
    .A10(EN_input[10]),
    .A11(EN_input[11]),
    .A12(EN_input[12]),
    .A13(EN_input[13]),
    .A14(EN_input[14]),
    .A15(EN_input[15]),
    .S0(ConfigBits[242+0]),
    .S0N(ConfigBits_N[242+0]),
    .S1(ConfigBits[242+1]),
    .S1N(ConfigBits_N[242+1]),
    .S2(ConfigBits[242+2]),
    .S2N(ConfigBits_N[242+2]),
    .S3(ConfigBits[242+3]),
    .S3N(ConfigBits_N[242+3]),
    .X(EN)
);

 //switch matrix multiplexer R_WB MUX-16
assign R_WB_input = {VCC0,GND0,S2END3,S2END2,S2MID0,E2END5,E2END4,E2END3,E2END2,E2END1,E2MID6,E2MID3,E2MID0,N2END3,N2END2,N2MID6};
cus_mux161_buf inst_cus_mux161_buf_R_WB (
    .A0(R_WB_input[0]),
    .A1(R_WB_input[1]),
    .A2(R_WB_input[2]),
    .A3(R_WB_input[3]),
    .A4(R_WB_input[4]),
    .A5(R_WB_input[5]),
    .A6(R_WB_input[6]),
    .A7(R_WB_input[7]),
    .A8(R_WB_input[8]),
    .A9(R_WB_input[9]),
    .A10(R_WB_input[10]),
    .A11(R_WB_input[11]),
    .A12(R_WB_input[12]),
    .A13(R_WB_input[13]),
    .A14(R_WB_input[14]),
    .A15(R_WB_input[15]),
    .S0(ConfigBits[246+0]),
    .S0N(ConfigBits_N[246+0]),
    .S1(ConfigBits[246+1]),
    .S1N(ConfigBits_N[246+1]),
    .S2(ConfigBits[246+2]),
    .S2N(ConfigBits_N[246+2]),
    .S3(ConfigBits[246+3]),
    .S3N(ConfigBits_N[246+3]),
    .X(R_WB)
);

 //switch matrix multiplexer J_NS4_BEG0 MUX-4
assign J_NS4_BEG0_input = {S4END0,S1END0,N4END0,N1END0};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG0 (
    .A0(J_NS4_BEG0_input[0]),
    .A1(J_NS4_BEG0_input[1]),
    .A2(J_NS4_BEG0_input[2]),
    .A3(J_NS4_BEG0_input[3]),
    .S0(ConfigBits[250+0]),
    .S0N(ConfigBits_N[250+0]),
    .S1(ConfigBits[250+1]),
    .S1N(ConfigBits_N[250+1]),
    .X(J_NS4_BEG0)
);

 //switch matrix multiplexer J_NS4_BEG1 MUX-4
assign J_NS4_BEG1_input = {S4END1,S1END1,N4END1,N1END1};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG1 (
    .A0(J_NS4_BEG1_input[0]),
    .A1(J_NS4_BEG1_input[1]),
    .A2(J_NS4_BEG1_input[2]),
    .A3(J_NS4_BEG1_input[3]),
    .S0(ConfigBits[252+0]),
    .S0N(ConfigBits_N[252+0]),
    .S1(ConfigBits[252+1]),
    .S1N(ConfigBits_N[252+1]),
    .X(J_NS4_BEG1)
);

 //switch matrix multiplexer J_NS4_BEG2 MUX-4
assign J_NS4_BEG2_input = {S4END2,S1END2,N4END2,N1END2};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG2 (
    .A0(J_NS4_BEG2_input[0]),
    .A1(J_NS4_BEG2_input[1]),
    .A2(J_NS4_BEG2_input[2]),
    .A3(J_NS4_BEG2_input[3]),
    .S0(ConfigBits[254+0]),
    .S0N(ConfigBits_N[254+0]),
    .S1(ConfigBits[254+1]),
    .S1N(ConfigBits_N[254+1]),
    .X(J_NS4_BEG2)
);

 //switch matrix multiplexer J_NS4_BEG3 MUX-4
assign J_NS4_BEG3_input = {S4END3,S1END3,N4END3,N1END3};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG3 (
    .A0(J_NS4_BEG3_input[0]),
    .A1(J_NS4_BEG3_input[1]),
    .A2(J_NS4_BEG3_input[2]),
    .A3(J_NS4_BEG3_input[3]),
    .S0(ConfigBits[256+0]),
    .S0N(ConfigBits_N[256+0]),
    .S1(ConfigBits[256+1]),
    .S1N(ConfigBits_N[256+1]),
    .X(J_NS4_BEG3)
);

 //switch matrix multiplexer J_NS4_BEG4 MUX-4
assign J_NS4_BEG4_input = {S4END0,S1END0,N4END0,N1END0};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG4 (
    .A0(J_NS4_BEG4_input[0]),
    .A1(J_NS4_BEG4_input[1]),
    .A2(J_NS4_BEG4_input[2]),
    .A3(J_NS4_BEG4_input[3]),
    .S0(ConfigBits[258+0]),
    .S0N(ConfigBits_N[258+0]),
    .S1(ConfigBits[258+1]),
    .S1N(ConfigBits_N[258+1]),
    .X(J_NS4_BEG4)
);

 //switch matrix multiplexer J_NS4_BEG5 MUX-4
assign J_NS4_BEG5_input = {S4END1,S1END1,N4END1,N1END1};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG5 (
    .A0(J_NS4_BEG5_input[0]),
    .A1(J_NS4_BEG5_input[1]),
    .A2(J_NS4_BEG5_input[2]),
    .A3(J_NS4_BEG5_input[3]),
    .S0(ConfigBits[260+0]),
    .S0N(ConfigBits_N[260+0]),
    .S1(ConfigBits[260+1]),
    .S1N(ConfigBits_N[260+1]),
    .X(J_NS4_BEG5)
);

 //switch matrix multiplexer J_NS4_BEG6 MUX-4
assign J_NS4_BEG6_input = {S4END2,S1END2,N4END2,N1END2};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG6 (
    .A0(J_NS4_BEG6_input[0]),
    .A1(J_NS4_BEG6_input[1]),
    .A2(J_NS4_BEG6_input[2]),
    .A3(J_NS4_BEG6_input[3]),
    .S0(ConfigBits[262+0]),
    .S0N(ConfigBits_N[262+0]),
    .S1(ConfigBits[262+1]),
    .S1N(ConfigBits_N[262+1]),
    .X(J_NS4_BEG6)
);

 //switch matrix multiplexer J_NS4_BEG7 MUX-4
assign J_NS4_BEG7_input = {S4END3,S1END3,N4END3,N1END3};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG7 (
    .A0(J_NS4_BEG7_input[0]),
    .A1(J_NS4_BEG7_input[1]),
    .A2(J_NS4_BEG7_input[2]),
    .A3(J_NS4_BEG7_input[3]),
    .S0(ConfigBits[264+0]),
    .S0N(ConfigBits_N[264+0]),
    .S1(ConfigBits[264+1]),
    .S1N(ConfigBits_N[264+1]),
    .X(J_NS4_BEG7)
);

 //switch matrix multiplexer J_NS4_BEG8 MUX-4
assign J_NS4_BEG8_input = {S4END0,S1END0,N4END0,N1END0};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG8 (
    .A0(J_NS4_BEG8_input[0]),
    .A1(J_NS4_BEG8_input[1]),
    .A2(J_NS4_BEG8_input[2]),
    .A3(J_NS4_BEG8_input[3]),
    .S0(ConfigBits[266+0]),
    .S0N(ConfigBits_N[266+0]),
    .S1(ConfigBits[266+1]),
    .S1N(ConfigBits_N[266+1]),
    .X(J_NS4_BEG8)
);

 //switch matrix multiplexer J_NS4_BEG9 MUX-4
assign J_NS4_BEG9_input = {S4END1,S1END1,N4END1,N1END1};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG9 (
    .A0(J_NS4_BEG9_input[0]),
    .A1(J_NS4_BEG9_input[1]),
    .A2(J_NS4_BEG9_input[2]),
    .A3(J_NS4_BEG9_input[3]),
    .S0(ConfigBits[268+0]),
    .S0N(ConfigBits_N[268+0]),
    .S1(ConfigBits[268+1]),
    .S1N(ConfigBits_N[268+1]),
    .X(J_NS4_BEG9)
);

 //switch matrix multiplexer J_NS4_BEG10 MUX-4
assign J_NS4_BEG10_input = {S4END2,S1END2,N4END2,N1END2};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG10 (
    .A0(J_NS4_BEG10_input[0]),
    .A1(J_NS4_BEG10_input[1]),
    .A2(J_NS4_BEG10_input[2]),
    .A3(J_NS4_BEG10_input[3]),
    .S0(ConfigBits[270+0]),
    .S0N(ConfigBits_N[270+0]),
    .S1(ConfigBits[270+1]),
    .S1N(ConfigBits_N[270+1]),
    .X(J_NS4_BEG10)
);

 //switch matrix multiplexer J_NS4_BEG11 MUX-4
assign J_NS4_BEG11_input = {S4END3,S1END3,N4END3,N1END3};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG11 (
    .A0(J_NS4_BEG11_input[0]),
    .A1(J_NS4_BEG11_input[1]),
    .A2(J_NS4_BEG11_input[2]),
    .A3(J_NS4_BEG11_input[3]),
    .S0(ConfigBits[272+0]),
    .S0N(ConfigBits_N[272+0]),
    .S1(ConfigBits[272+1]),
    .S1N(ConfigBits_N[272+1]),
    .X(J_NS4_BEG11)
);

 //switch matrix multiplexer J_NS4_BEG12 MUX-4
assign J_NS4_BEG12_input = {S4END0,S1END0,N4END0,N1END0};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG12 (
    .A0(J_NS4_BEG12_input[0]),
    .A1(J_NS4_BEG12_input[1]),
    .A2(J_NS4_BEG12_input[2]),
    .A3(J_NS4_BEG12_input[3]),
    .S0(ConfigBits[274+0]),
    .S0N(ConfigBits_N[274+0]),
    .S1(ConfigBits[274+1]),
    .S1N(ConfigBits_N[274+1]),
    .X(J_NS4_BEG12)
);

 //switch matrix multiplexer J_NS4_BEG13 MUX-4
assign J_NS4_BEG13_input = {S4END1,S1END1,N4END1,N1END1};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG13 (
    .A0(J_NS4_BEG13_input[0]),
    .A1(J_NS4_BEG13_input[1]),
    .A2(J_NS4_BEG13_input[2]),
    .A3(J_NS4_BEG13_input[3]),
    .S0(ConfigBits[276+0]),
    .S0N(ConfigBits_N[276+0]),
    .S1(ConfigBits[276+1]),
    .S1N(ConfigBits_N[276+1]),
    .X(J_NS4_BEG13)
);

 //switch matrix multiplexer J_NS4_BEG14 MUX-4
assign J_NS4_BEG14_input = {S4END2,S1END2,N4END2,N1END2};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG14 (
    .A0(J_NS4_BEG14_input[0]),
    .A1(J_NS4_BEG14_input[1]),
    .A2(J_NS4_BEG14_input[2]),
    .A3(J_NS4_BEG14_input[3]),
    .S0(ConfigBits[278+0]),
    .S0N(ConfigBits_N[278+0]),
    .S1(ConfigBits[278+1]),
    .S1N(ConfigBits_N[278+1]),
    .X(J_NS4_BEG14)
);

 //switch matrix multiplexer J_NS4_BEG15 MUX-4
assign J_NS4_BEG15_input = {S4END3,S1END3,N4END3,N1END3};
cus_mux41_buf inst_cus_mux41_buf_J_NS4_BEG15 (
    .A0(J_NS4_BEG15_input[0]),
    .A1(J_NS4_BEG15_input[1]),
    .A2(J_NS4_BEG15_input[2]),
    .A3(J_NS4_BEG15_input[3]),
    .S0(ConfigBits[280+0]),
    .S0N(ConfigBits_N[280+0]),
    .S1(ConfigBits[280+1]),
    .S1N(ConfigBits_N[280+1]),
    .X(J_NS4_BEG15)
);

 //switch matrix multiplexer J_NS2_BEG0 MUX-4
assign J_NS2_BEG0_input = {S2END0,S2MID0,N2END0,N2MID0};
cus_mux41_buf inst_cus_mux41_buf_J_NS2_BEG0 (
    .A0(J_NS2_BEG0_input[0]),
    .A1(J_NS2_BEG0_input[1]),
    .A2(J_NS2_BEG0_input[2]),
    .A3(J_NS2_BEG0_input[3]),
    .S0(ConfigBits[282+0]),
    .S0N(ConfigBits_N[282+0]),
    .S1(ConfigBits[282+1]),
    .S1N(ConfigBits_N[282+1]),
    .X(J_NS2_BEG0)
);

 //switch matrix multiplexer J_NS2_BEG1 MUX-4
assign J_NS2_BEG1_input = {S2END1,S2MID1,N2END1,N2MID1};
cus_mux41_buf inst_cus_mux41_buf_J_NS2_BEG1 (
    .A0(J_NS2_BEG1_input[0]),
    .A1(J_NS2_BEG1_input[1]),
    .A2(J_NS2_BEG1_input[2]),
    .A3(J_NS2_BEG1_input[3]),
    .S0(ConfigBits[284+0]),
    .S0N(ConfigBits_N[284+0]),
    .S1(ConfigBits[284+1]),
    .S1N(ConfigBits_N[284+1]),
    .X(J_NS2_BEG1)
);

 //switch matrix multiplexer J_NS2_BEG2 MUX-4
assign J_NS2_BEG2_input = {S2END2,S2MID2,N2END2,N2MID2};
cus_mux41_buf inst_cus_mux41_buf_J_NS2_BEG2 (
    .A0(J_NS2_BEG2_input[0]),
    .A1(J_NS2_BEG2_input[1]),
    .A2(J_NS2_BEG2_input[2]),
    .A3(J_NS2_BEG2_input[3]),
    .S0(ConfigBits[286+0]),
    .S0N(ConfigBits_N[286+0]),
    .S1(ConfigBits[286+1]),
    .S1N(ConfigBits_N[286+1]),
    .X(J_NS2_BEG2)
);

 //switch matrix multiplexer J_NS2_BEG3 MUX-4
assign J_NS2_BEG3_input = {S2END3,S2MID3,N2END3,N2MID3};
cus_mux41_buf inst_cus_mux41_buf_J_NS2_BEG3 (
    .A0(J_NS2_BEG3_input[0]),
    .A1(J_NS2_BEG3_input[1]),
    .A2(J_NS2_BEG3_input[2]),
    .A3(J_NS2_BEG3_input[3]),
    .S0(ConfigBits[288+0]),
    .S0N(ConfigBits_N[288+0]),
    .S1(ConfigBits[288+1]),
    .S1N(ConfigBits_N[288+1]),
    .X(J_NS2_BEG3)
);

 //switch matrix multiplexer J_NS2_BEG4 MUX-4
assign J_NS2_BEG4_input = {S2END4,S2MID4,N2END4,N2MID4};
cus_mux41_buf inst_cus_mux41_buf_J_NS2_BEG4 (
    .A0(J_NS2_BEG4_input[0]),
    .A1(J_NS2_BEG4_input[1]),
    .A2(J_NS2_BEG4_input[2]),
    .A3(J_NS2_BEG4_input[3]),
    .S0(ConfigBits[290+0]),
    .S0N(ConfigBits_N[290+0]),
    .S1(ConfigBits[290+1]),
    .S1N(ConfigBits_N[290+1]),
    .X(J_NS2_BEG4)
);

 //switch matrix multiplexer J_NS2_BEG5 MUX-4
assign J_NS2_BEG5_input = {S2END5,S2MID5,N2END5,N2MID5};
cus_mux41_buf inst_cus_mux41_buf_J_NS2_BEG5 (
    .A0(J_NS2_BEG5_input[0]),
    .A1(J_NS2_BEG5_input[1]),
    .A2(J_NS2_BEG5_input[2]),
    .A3(J_NS2_BEG5_input[3]),
    .S0(ConfigBits[292+0]),
    .S0N(ConfigBits_N[292+0]),
    .S1(ConfigBits[292+1]),
    .S1N(ConfigBits_N[292+1]),
    .X(J_NS2_BEG5)
);

 //switch matrix multiplexer J_NS2_BEG6 MUX-4
assign J_NS2_BEG6_input = {S2END6,S2MID6,N2END6,N2MID6};
cus_mux41_buf inst_cus_mux41_buf_J_NS2_BEG6 (
    .A0(J_NS2_BEG6_input[0]),
    .A1(J_NS2_BEG6_input[1]),
    .A2(J_NS2_BEG6_input[2]),
    .A3(J_NS2_BEG6_input[3]),
    .S0(ConfigBits[294+0]),
    .S0N(ConfigBits_N[294+0]),
    .S1(ConfigBits[294+1]),
    .S1N(ConfigBits_N[294+1]),
    .X(J_NS2_BEG6)
);

 //switch matrix multiplexer J_NS2_BEG7 MUX-4
assign J_NS2_BEG7_input = {S2END7,S2MID7,N2END7,N2MID7};
cus_mux41_buf inst_cus_mux41_buf_J_NS2_BEG7 (
    .A0(J_NS2_BEG7_input[0]),
    .A1(J_NS2_BEG7_input[1]),
    .A2(J_NS2_BEG7_input[2]),
    .A3(J_NS2_BEG7_input[3]),
    .S0(ConfigBits[296+0]),
    .S0N(ConfigBits_N[296+0]),
    .S1(ConfigBits[296+1]),
    .S1N(ConfigBits_N[296+1]),
    .X(J_NS2_BEG7)
);

 //switch matrix multiplexer J_NS1_BEG0 MUX-4
assign J_NS1_BEG0_input = {GND0,S1END0,E6END0,N1END0};
cus_mux41_buf inst_cus_mux41_buf_J_NS1_BEG0 (
    .A0(J_NS1_BEG0_input[0]),
    .A1(J_NS1_BEG0_input[1]),
    .A2(J_NS1_BEG0_input[2]),
    .A3(J_NS1_BEG0_input[3]),
    .S0(ConfigBits[298+0]),
    .S0N(ConfigBits_N[298+0]),
    .S1(ConfigBits[298+1]),
    .S1N(ConfigBits_N[298+1]),
    .X(J_NS1_BEG0)
);

 //switch matrix multiplexer J_NS1_BEG1 MUX-4
assign J_NS1_BEG1_input = {GND0,S1END1,E6END1,N1END1};
cus_mux41_buf inst_cus_mux41_buf_J_NS1_BEG1 (
    .A0(J_NS1_BEG1_input[0]),
    .A1(J_NS1_BEG1_input[1]),
    .A2(J_NS1_BEG1_input[2]),
    .A3(J_NS1_BEG1_input[3]),
    .S0(ConfigBits[300+0]),
    .S0N(ConfigBits_N[300+0]),
    .S1(ConfigBits[300+1]),
    .S1N(ConfigBits_N[300+1]),
    .X(J_NS1_BEG1)
);

 //switch matrix multiplexer J_NS1_BEG2 MUX-4
assign J_NS1_BEG2_input = {GND0,S1END2,E6END2,N1END2};
cus_mux41_buf inst_cus_mux41_buf_J_NS1_BEG2 (
    .A0(J_NS1_BEG2_input[0]),
    .A1(J_NS1_BEG2_input[1]),
    .A2(J_NS1_BEG2_input[2]),
    .A3(J_NS1_BEG2_input[3]),
    .S0(ConfigBits[302+0]),
    .S0N(ConfigBits_N[302+0]),
    .S1(ConfigBits[302+1]),
    .S1N(ConfigBits_N[302+1]),
    .X(J_NS1_BEG2)
);

 //switch matrix multiplexer J_NS1_BEG3 MUX-4
assign J_NS1_BEG3_input = {GND0,S1END3,E6END3,N1END3};
cus_mux41_buf inst_cus_mux41_buf_J_NS1_BEG3 (
    .A0(J_NS1_BEG3_input[0]),
    .A1(J_NS1_BEG3_input[1]),
    .A2(J_NS1_BEG3_input[2]),
    .A3(J_NS1_BEG3_input[3]),
    .S0(ConfigBits[304+0]),
    .S0N(ConfigBits_N[304+0]),
    .S1(ConfigBits[304+1]),
    .S1N(ConfigBits_N[304+1]),
    .X(J_NS1_BEG3)
);


assign DEBUG_select_N1BEG0          = ConfigBits[1:0];
assign DEBUG_select_N1BEG1          = ConfigBits[3:2];
assign DEBUG_select_N1BEG2          = ConfigBits[5:4];
assign DEBUG_select_N1BEG3          = ConfigBits[7:6];
assign DEBUG_select_N2BEG0          = ConfigBits[9:8];
assign DEBUG_select_N2BEG1          = ConfigBits[11:10];
assign DEBUG_select_N2BEG2          = ConfigBits[13:12];
assign DEBUG_select_N2BEG3          = ConfigBits[15:14];
assign DEBUG_select_N2BEG4          = ConfigBits[17:16];
assign DEBUG_select_N2BEG5          = ConfigBits[19:18];
assign DEBUG_select_N2BEG6          = ConfigBits[21:20];
assign DEBUG_select_N2BEG7          = ConfigBits[23:22];
assign DEBUG_select_N4BEG0          = ConfigBits[26:24];
assign DEBUG_select_N4BEG1          = ConfigBits[29:27];
assign DEBUG_select_N4BEG2          = ConfigBits[32:30];
assign DEBUG_select_N4BEG3          = ConfigBits[35:33];
assign DEBUG_select_S1BEG0          = ConfigBits[37:36];
assign DEBUG_select_S1BEG1          = ConfigBits[39:38];
assign DEBUG_select_S1BEG2          = ConfigBits[41:40];
assign DEBUG_select_S1BEG3          = ConfigBits[43:42];
assign DEBUG_select_S2BEG0          = ConfigBits[45:44];
assign DEBUG_select_S2BEG1          = ConfigBits[47:46];
assign DEBUG_select_S2BEG2          = ConfigBits[49:48];
assign DEBUG_select_S2BEG3          = ConfigBits[51:50];
assign DEBUG_select_S2BEG4          = ConfigBits[53:52];
assign DEBUG_select_S2BEG5          = ConfigBits[55:54];
assign DEBUG_select_S2BEG6          = ConfigBits[57:56];
assign DEBUG_select_S2BEG7          = ConfigBits[59:58];
assign DEBUG_select_S4BEG0          = ConfigBits[62:60];
assign DEBUG_select_S4BEG1          = ConfigBits[65:63];
assign DEBUG_select_S4BEG2          = ConfigBits[68:66];
assign DEBUG_select_S4BEG3          = ConfigBits[71:69];
assign DEBUG_select_W1BEG0          = ConfigBits[73:72];
assign DEBUG_select_W1BEG1          = ConfigBits[75:74];
assign DEBUG_select_W1BEG2          = ConfigBits[77:76];
assign DEBUG_select_W1BEG3          = ConfigBits[79:78];
assign DEBUG_select_W2BEG0          = ConfigBits[81:80];
assign DEBUG_select_W2BEG1          = ConfigBits[83:82];
assign DEBUG_select_W2BEG2          = ConfigBits[85:84];
assign DEBUG_select_W2BEG3          = ConfigBits[87:86];
assign DEBUG_select_W2BEG4          = ConfigBits[89:88];
assign DEBUG_select_W2BEG5          = ConfigBits[91:90];
assign DEBUG_select_W2BEG6          = ConfigBits[93:92];
assign DEBUG_select_W2BEG7          = ConfigBits[95:94];
assign DEBUG_select_W2BEGb0         = ConfigBits[97:96];
assign DEBUG_select_W2BEGb1         = ConfigBits[99:98];
assign DEBUG_select_W2BEGb2         = ConfigBits[101:100];
assign DEBUG_select_W2BEGb3         = ConfigBits[103:102];
assign DEBUG_select_W2BEGb4         = ConfigBits[105:104];
assign DEBUG_select_W2BEGb5         = ConfigBits[107:106];
assign DEBUG_select_W2BEGb6         = ConfigBits[109:108];
assign DEBUG_select_W2BEGb7         = ConfigBits[111:110];
assign DEBUG_select_WW4BEG0         = ConfigBits[113:112];
assign DEBUG_select_WW4BEG1         = ConfigBits[115:114];
assign DEBUG_select_WW4BEG2         = ConfigBits[117:116];
assign DEBUG_select_WW4BEG3         = ConfigBits[119:118];
assign DEBUG_select_WW4BEG4         = ConfigBits[121:120];
assign DEBUG_select_WW4BEG5         = ConfigBits[123:122];
assign DEBUG_select_WW4BEG6         = ConfigBits[125:124];
assign DEBUG_select_WW4BEG7         = ConfigBits[127:126];
assign DEBUG_select_WW4BEG8         = ConfigBits[129:128];
assign DEBUG_select_WW4BEG9         = ConfigBits[131:130];
assign DEBUG_select_WW4BEG10        = ConfigBits[133:132];
assign DEBUG_select_WW4BEG11        = ConfigBits[135:134];
assign DEBUG_select_WW4BEG12        = ConfigBits[137:136];
assign DEBUG_select_WW4BEG13        = ConfigBits[139:138];
assign DEBUG_select_WW4BEG14        = ConfigBits[141:140];
assign DEBUG_select_WW4BEG15        = ConfigBits[143:142];
assign DEBUG_select_W6BEG0          = ConfigBits[145:144];
assign DEBUG_select_W6BEG1          = ConfigBits[147:146];
assign DEBUG_select_W6BEG2          = ConfigBits[149:148];
assign DEBUG_select_W6BEG3          = ConfigBits[151:150];
assign DEBUG_select_W6BEG4          = ConfigBits[153:152];
assign DEBUG_select_W6BEG5          = ConfigBits[155:154];
assign DEBUG_select_W6BEG6          = ConfigBits[157:156];
assign DEBUG_select_W6BEG7          = ConfigBits[159:158];
assign DEBUG_select_W6BEG8          = ConfigBits[161:160];
assign DEBUG_select_W6BEG9          = ConfigBits[163:162];
assign DEBUG_select_W6BEG10         = ConfigBits[165:164];
assign DEBUG_select_W6BEG11         = ConfigBits[167:166];
assign DEBUG_select_AD0             = ConfigBits[169:168];
assign DEBUG_select_AD1             = ConfigBits[171:170];
assign DEBUG_select_AD2             = ConfigBits[173:172];
assign DEBUG_select_AD3             = ConfigBits[175:174];
assign DEBUG_select_AD4             = ConfigBits[177:176];
assign DEBUG_select_BEN0            = ConfigBits[179:178];
assign DEBUG_select_BEN1            = ConfigBits[181:180];
assign DEBUG_select_BEN2            = ConfigBits[183:182];
assign DEBUG_select_BEN3            = ConfigBits[185:184];
assign DEBUG_select_BEN4            = ConfigBits[187:186];
assign DEBUG_select_BEN5            = ConfigBits[189:188];
assign DEBUG_select_BEN6            = ConfigBits[191:190];
assign DEBUG_select_BEN7            = ConfigBits[193:192];
assign DEBUG_select_BEN8            = ConfigBits[195:194];
assign DEBUG_select_BEN9            = ConfigBits[197:196];
assign DEBUG_select_BEN10           = ConfigBits[199:198];
assign DEBUG_select_BEN11           = ConfigBits[201:200];
assign DEBUG_select_BEN12           = ConfigBits[203:202];
assign DEBUG_select_BEN13           = ConfigBits[205:204];
assign DEBUG_select_BEN14           = ConfigBits[207:206];
assign DEBUG_select_BEN15           = ConfigBits[209:208];
assign DEBUG_select_DI0             = ConfigBits[211:210];
assign DEBUG_select_DI1             = ConfigBits[213:212];
assign DEBUG_select_DI2             = ConfigBits[215:214];
assign DEBUG_select_DI3             = ConfigBits[217:216];
assign DEBUG_select_DI4             = ConfigBits[219:218];
assign DEBUG_select_DI5             = ConfigBits[221:220];
assign DEBUG_select_DI6             = ConfigBits[223:222];
assign DEBUG_select_DI7             = ConfigBits[225:224];
assign DEBUG_select_DI8             = ConfigBits[227:226];
assign DEBUG_select_DI9             = ConfigBits[229:228];
assign DEBUG_select_DI10            = ConfigBits[231:230];
assign DEBUG_select_DI11            = ConfigBits[233:232];
assign DEBUG_select_DI12            = ConfigBits[235:234];
assign DEBUG_select_DI13            = ConfigBits[237:236];
assign DEBUG_select_DI14            = ConfigBits[239:238];
assign DEBUG_select_DI15            = ConfigBits[241:240];
assign DEBUG_select_EN              = ConfigBits[245:242];
assign DEBUG_select_R_WB            = ConfigBits[249:246];
assign DEBUG_select_J_NS4_BEG0      = ConfigBits[251:250];
assign DEBUG_select_J_NS4_BEG1      = ConfigBits[253:252];
assign DEBUG_select_J_NS4_BEG2      = ConfigBits[255:254];
assign DEBUG_select_J_NS4_BEG3      = ConfigBits[257:256];
assign DEBUG_select_J_NS4_BEG4      = ConfigBits[259:258];
assign DEBUG_select_J_NS4_BEG5      = ConfigBits[261:260];
assign DEBUG_select_J_NS4_BEG6      = ConfigBits[263:262];
assign DEBUG_select_J_NS4_BEG7      = ConfigBits[265:264];
assign DEBUG_select_J_NS4_BEG8      = ConfigBits[267:266];
assign DEBUG_select_J_NS4_BEG9      = ConfigBits[269:268];
assign DEBUG_select_J_NS4_BEG10     = ConfigBits[271:270];
assign DEBUG_select_J_NS4_BEG11     = ConfigBits[273:272];
assign DEBUG_select_J_NS4_BEG12     = ConfigBits[275:274];
assign DEBUG_select_J_NS4_BEG13     = ConfigBits[277:276];
assign DEBUG_select_J_NS4_BEG14     = ConfigBits[279:278];
assign DEBUG_select_J_NS4_BEG15     = ConfigBits[281:280];
assign DEBUG_select_J_NS2_BEG0      = ConfigBits[283:282];
assign DEBUG_select_J_NS2_BEG1      = ConfigBits[285:284];
assign DEBUG_select_J_NS2_BEG2      = ConfigBits[287:286];
assign DEBUG_select_J_NS2_BEG3      = ConfigBits[289:288];
assign DEBUG_select_J_NS2_BEG4      = ConfigBits[291:290];
assign DEBUG_select_J_NS2_BEG5      = ConfigBits[293:292];
assign DEBUG_select_J_NS2_BEG6      = ConfigBits[295:294];
assign DEBUG_select_J_NS2_BEG7      = ConfigBits[297:296];
assign DEBUG_select_J_NS1_BEG0      = ConfigBits[299:298];
assign DEBUG_select_J_NS1_BEG1      = ConfigBits[301:300];
assign DEBUG_select_J_NS1_BEG2      = ConfigBits[303:302];
assign DEBUG_select_J_NS1_BEG3      = ConfigBits[305:304];
endmodule