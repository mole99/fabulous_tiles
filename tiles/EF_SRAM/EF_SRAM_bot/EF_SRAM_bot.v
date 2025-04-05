module EF_SRAM_bot
    #(
`ifdef EMULATION
        parameter [639:0] Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32,
        parameter NoConfigBits=306
    )
    (
 //Side.NORTH
        output [3:0] N1BEG,        //Port(Name=N1BEG, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [7:0] N2BEG,        //Port(Name=N2BEG, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=8, Side=NORTH)
        output [7:0] N2BEGb,        //Port(Name=N2BEGb, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=8, Side=NORTH)
        output [15:0] N4BEG,        //Port(Name=N4BEG, IO=OUTPUT, XOffset=0, YOffset=-4, WireCount=4, Side=NORTH)
        input [3:0] S1END,        //Port(Name=S1END, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [7:0] S2MID,        //Port(Name=S2MID, IO=INPUT, XOffset=0, YOffset=1, WireCount=8, Side=NORTH)
        input [7:0] S2END,        //Port(Name=S2END, IO=INPUT, XOffset=0, YOffset=1, WireCount=8, Side=NORTH)
        input [15:0] S4END,        //Port(Name=S4END, IO=INPUT, XOffset=0, YOffset=4, WireCount=4, Side=NORTH)
        output [15:0] bot2top_DO,        //Port(Name=bot2top_DO, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=16, Side=NORTH)
        input [15:0] top2bot_DI,        //Port(Name=top2bot_DI, IO=INPUT, XOffset=0, YOffset=1, WireCount=16, Side=NORTH)
        input [15:0] top2bot_BEN,        //Port(Name=top2bot_BEN, IO=INPUT, XOffset=0, YOffset=1, WireCount=16, Side=NORTH)
        input [4:0] top2bot_AD,        //Port(Name=top2bot_AD, IO=INPUT, XOffset=0, YOffset=1, WireCount=5, Side=NORTH)
 //Side.WEST
        input [3:0] E1END,        //Port(Name=E1END, IO=INPUT, XOffset=1, YOffset=0, WireCount=4, Side=WEST)
        input [7:0] E2MID,        //Port(Name=E2MID, IO=INPUT, XOffset=1, YOffset=0, WireCount=8, Side=WEST)
        input [7:0] E2END,        //Port(Name=E2END, IO=INPUT, XOffset=1, YOffset=0, WireCount=8, Side=WEST)
        input [15:0] EE4END,        //Port(Name=EE4END, IO=INPUT, XOffset=4, YOffset=0, WireCount=4, Side=WEST)
        input [11:0] E6END,        //Port(Name=E6END, IO=INPUT, XOffset=6, YOffset=0, WireCount=2, Side=WEST)
        output [3:0] W1BEG,        //Port(Name=W1BEG, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=4, Side=WEST)
        output [7:0] W2BEG,        //Port(Name=W2BEG, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=8, Side=WEST)
        output [7:0] W2BEGb,        //Port(Name=W2BEGb, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=8, Side=WEST)
        output [15:0] WW4BEG,        //Port(Name=WW4BEG, IO=OUTPUT, XOffset=-4, YOffset=0, WireCount=4, Side=WEST)
        output [11:0] W6BEG,        //Port(Name=W6BEG, IO=OUTPUT, XOffset=-6, YOffset=0, WireCount=2, Side=WEST)
 //Side.SOUTH
        input [3:0] N1END,        //Port(Name=N1END, IO=INPUT, XOffset=0, YOffset=-1, WireCount=4, Side=SOUTH)
        input [7:0] N2MID,        //Port(Name=N2MID, IO=INPUT, XOffset=0, YOffset=-1, WireCount=8, Side=SOUTH)
        input [7:0] N2END,        //Port(Name=N2END, IO=INPUT, XOffset=0, YOffset=-1, WireCount=8, Side=SOUTH)
        input [15:0] N4END,        //Port(Name=N4END, IO=INPUT, XOffset=0, YOffset=-4, WireCount=4, Side=SOUTH)
        output [3:0] S1BEG,        //Port(Name=S1BEG, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=4, Side=SOUTH)
        output [7:0] S2BEG,        //Port(Name=S2BEG, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=8, Side=SOUTH)
        output [7:0] S2BEGb,        //Port(Name=S2BEGb, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=8, Side=SOUTH)
        output [15:0] S4BEG,        //Port(Name=S4BEG, IO=OUTPUT, XOffset=0, YOffset=4, WireCount=4, Side=SOUTH)
        input DO_SRAM0,
        input DO_SRAM1,
        input DO_SRAM2,
        input DO_SRAM3,
        input DO_SRAM4,
        input DO_SRAM5,
        input DO_SRAM6,
        input DO_SRAM7,
        input DO_SRAM8,
        input DO_SRAM9,
        input DO_SRAM10,
        input DO_SRAM11,
        input DO_SRAM12,
        input DO_SRAM13,
        input DO_SRAM14,
        input DO_SRAM15,
        input DO_SRAM16,
        input DO_SRAM17,
        input DO_SRAM18,
        input DO_SRAM19,
        input DO_SRAM20,
        input DO_SRAM21,
        input DO_SRAM22,
        input DO_SRAM23,
        input DO_SRAM24,
        input DO_SRAM25,
        input DO_SRAM26,
        input DO_SRAM27,
        input DO_SRAM28,
        input DO_SRAM29,
        input DO_SRAM30,
        input DO_SRAM31,
        output AD_SRAM0,
        output AD_SRAM1,
        output AD_SRAM2,
        output AD_SRAM3,
        output AD_SRAM4,
        output AD_SRAM5,
        output AD_SRAM6,
        output AD_SRAM7,
        output AD_SRAM8,
        output AD_SRAM9,
        output BEN_SRAM0,
        output BEN_SRAM1,
        output BEN_SRAM2,
        output BEN_SRAM3,
        output BEN_SRAM4,
        output BEN_SRAM5,
        output BEN_SRAM6,
        output BEN_SRAM7,
        output BEN_SRAM8,
        output BEN_SRAM9,
        output BEN_SRAM10,
        output BEN_SRAM11,
        output BEN_SRAM12,
        output BEN_SRAM13,
        output BEN_SRAM14,
        output BEN_SRAM15,
        output BEN_SRAM16,
        output BEN_SRAM17,
        output BEN_SRAM18,
        output BEN_SRAM19,
        output BEN_SRAM20,
        output BEN_SRAM21,
        output BEN_SRAM22,
        output BEN_SRAM23,
        output BEN_SRAM24,
        output BEN_SRAM25,
        output BEN_SRAM26,
        output BEN_SRAM27,
        output BEN_SRAM28,
        output BEN_SRAM29,
        output BEN_SRAM30,
        output BEN_SRAM31,
        output CLOCK_SRAM,
        output DI_SRAM0,
        output DI_SRAM1,
        output DI_SRAM2,
        output DI_SRAM3,
        output DI_SRAM4,
        output DI_SRAM5,
        output DI_SRAM6,
        output DI_SRAM7,
        output DI_SRAM8,
        output DI_SRAM9,
        output DI_SRAM10,
        output DI_SRAM11,
        output DI_SRAM12,
        output DI_SRAM13,
        output DI_SRAM14,
        output DI_SRAM15,
        output DI_SRAM16,
        output DI_SRAM17,
        output DI_SRAM18,
        output DI_SRAM19,
        output DI_SRAM20,
        output DI_SRAM21,
        output DI_SRAM22,
        output DI_SRAM23,
        output DI_SRAM24,
        output DI_SRAM25,
        output DI_SRAM26,
        output DI_SRAM27,
        output DI_SRAM28,
        output DI_SRAM29,
        output DI_SRAM30,
        output DI_SRAM31,
        output EN_SRAM,
        output R_WB_SRAM,
    //Tile IO ports from BELs
        input UserCLK,
        output UserCLKo,
        input [FrameBitsPerRow-1:0] FrameData, //CONFIG_PORT
        output [FrameBitsPerRow-1:0] FrameData_O,
        input [MaxFramesPerCol-1:0] FrameStrobe, //CONFIG_PORT
        output [MaxFramesPerCol-1:0] FrameStrobe_O
    //global
);
 //signal declarations
 //BEL ports (e.g., slices)
wire AD0;
wire AD1;
wire AD2;
wire AD3;
wire AD4;
wire AD5;
wire AD6;
wire AD7;
wire AD8;
wire AD9;
wire BEN0;
wire BEN1;
wire BEN2;
wire BEN3;
wire BEN4;
wire BEN5;
wire BEN6;
wire BEN7;
wire BEN8;
wire BEN9;
wire BEN10;
wire BEN11;
wire BEN12;
wire BEN13;
wire BEN14;
wire BEN15;
wire BEN16;
wire BEN17;
wire BEN18;
wire BEN19;
wire BEN20;
wire BEN21;
wire BEN22;
wire BEN23;
wire BEN24;
wire BEN25;
wire BEN26;
wire BEN27;
wire BEN28;
wire BEN29;
wire BEN30;
wire BEN31;
wire DI0;
wire DI1;
wire DI2;
wire DI3;
wire DI4;
wire DI5;
wire DI6;
wire DI7;
wire DI8;
wire DI9;
wire DI10;
wire DI11;
wire DI12;
wire DI13;
wire DI14;
wire DI15;
wire DI16;
wire DI17;
wire DI18;
wire DI19;
wire DI20;
wire DI21;
wire DI22;
wire DI23;
wire DI24;
wire DI25;
wire DI26;
wire DI27;
wire DI28;
wire DI29;
wire DI30;
wire DI31;
wire EN;
wire R_WB;
wire DO0;
wire DO1;
wire DO2;
wire DO3;
wire DO4;
wire DO5;
wire DO6;
wire DO7;
wire DO8;
wire DO9;
wire DO10;
wire DO11;
wire DO12;
wire DO13;
wire DO14;
wire DO15;
wire DO16;
wire DO17;
wire DO18;
wire DO19;
wire DO20;
wire DO21;
wire DO22;
wire DO23;
wire DO24;
wire DO25;
wire DO26;
wire DO27;
wire DO28;
wire DO29;
wire DO30;
wire DO31;
 //Jump wires
wire[16-1:0] J_NS4_BEG;
wire[8-1:0] J_NS2_BEG;
wire[4-1:0] J_NS1_BEG;
 //internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
wire[NoConfigBits-1:0] ConfigBits;
wire[NoConfigBits-1:0] ConfigBits_N;

 //Connection for outgoing wires
wire[FrameBitsPerRow-1:0] FrameData_i;
wire[FrameBitsPerRow-1:0] FrameData_O_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_O_i;
wire[15:0] N4END_i;
wire[11:0] N4BEG_i;
wire[15:0] S4END_i;
wire[11:0] S4BEG_i;

assign FrameData_O_i = FrameData_i;

my_buf data_inbuf_0 (
    .A(FrameData[0]),
    .X(FrameData_i[0])
);

my_buf data_inbuf_1 (
    .A(FrameData[1]),
    .X(FrameData_i[1])
);

my_buf data_inbuf_2 (
    .A(FrameData[2]),
    .X(FrameData_i[2])
);

my_buf data_inbuf_3 (
    .A(FrameData[3]),
    .X(FrameData_i[3])
);

my_buf data_inbuf_4 (
    .A(FrameData[4]),
    .X(FrameData_i[4])
);

my_buf data_inbuf_5 (
    .A(FrameData[5]),
    .X(FrameData_i[5])
);

my_buf data_inbuf_6 (
    .A(FrameData[6]),
    .X(FrameData_i[6])
);

my_buf data_inbuf_7 (
    .A(FrameData[7]),
    .X(FrameData_i[7])
);

my_buf data_inbuf_8 (
    .A(FrameData[8]),
    .X(FrameData_i[8])
);

my_buf data_inbuf_9 (
    .A(FrameData[9]),
    .X(FrameData_i[9])
);

my_buf data_inbuf_10 (
    .A(FrameData[10]),
    .X(FrameData_i[10])
);

my_buf data_inbuf_11 (
    .A(FrameData[11]),
    .X(FrameData_i[11])
);

my_buf data_inbuf_12 (
    .A(FrameData[12]),
    .X(FrameData_i[12])
);

my_buf data_inbuf_13 (
    .A(FrameData[13]),
    .X(FrameData_i[13])
);

my_buf data_inbuf_14 (
    .A(FrameData[14]),
    .X(FrameData_i[14])
);

my_buf data_inbuf_15 (
    .A(FrameData[15]),
    .X(FrameData_i[15])
);

my_buf data_inbuf_16 (
    .A(FrameData[16]),
    .X(FrameData_i[16])
);

my_buf data_inbuf_17 (
    .A(FrameData[17]),
    .X(FrameData_i[17])
);

my_buf data_inbuf_18 (
    .A(FrameData[18]),
    .X(FrameData_i[18])
);

my_buf data_inbuf_19 (
    .A(FrameData[19]),
    .X(FrameData_i[19])
);

my_buf data_inbuf_20 (
    .A(FrameData[20]),
    .X(FrameData_i[20])
);

my_buf data_inbuf_21 (
    .A(FrameData[21]),
    .X(FrameData_i[21])
);

my_buf data_inbuf_22 (
    .A(FrameData[22]),
    .X(FrameData_i[22])
);

my_buf data_inbuf_23 (
    .A(FrameData[23]),
    .X(FrameData_i[23])
);

my_buf data_inbuf_24 (
    .A(FrameData[24]),
    .X(FrameData_i[24])
);

my_buf data_inbuf_25 (
    .A(FrameData[25]),
    .X(FrameData_i[25])
);

my_buf data_inbuf_26 (
    .A(FrameData[26]),
    .X(FrameData_i[26])
);

my_buf data_inbuf_27 (
    .A(FrameData[27]),
    .X(FrameData_i[27])
);

my_buf data_inbuf_28 (
    .A(FrameData[28]),
    .X(FrameData_i[28])
);

my_buf data_inbuf_29 (
    .A(FrameData[29]),
    .X(FrameData_i[29])
);

my_buf data_inbuf_30 (
    .A(FrameData[30]),
    .X(FrameData_i[30])
);

my_buf data_inbuf_31 (
    .A(FrameData[31]),
    .X(FrameData_i[31])
);

my_buf data_outbuf_0 (
    .A(FrameData_O_i[0]),
    .X(FrameData_O[0])
);

my_buf data_outbuf_1 (
    .A(FrameData_O_i[1]),
    .X(FrameData_O[1])
);

my_buf data_outbuf_2 (
    .A(FrameData_O_i[2]),
    .X(FrameData_O[2])
);

my_buf data_outbuf_3 (
    .A(FrameData_O_i[3]),
    .X(FrameData_O[3])
);

my_buf data_outbuf_4 (
    .A(FrameData_O_i[4]),
    .X(FrameData_O[4])
);

my_buf data_outbuf_5 (
    .A(FrameData_O_i[5]),
    .X(FrameData_O[5])
);

my_buf data_outbuf_6 (
    .A(FrameData_O_i[6]),
    .X(FrameData_O[6])
);

my_buf data_outbuf_7 (
    .A(FrameData_O_i[7]),
    .X(FrameData_O[7])
);

my_buf data_outbuf_8 (
    .A(FrameData_O_i[8]),
    .X(FrameData_O[8])
);

my_buf data_outbuf_9 (
    .A(FrameData_O_i[9]),
    .X(FrameData_O[9])
);

my_buf data_outbuf_10 (
    .A(FrameData_O_i[10]),
    .X(FrameData_O[10])
);

my_buf data_outbuf_11 (
    .A(FrameData_O_i[11]),
    .X(FrameData_O[11])
);

my_buf data_outbuf_12 (
    .A(FrameData_O_i[12]),
    .X(FrameData_O[12])
);

my_buf data_outbuf_13 (
    .A(FrameData_O_i[13]),
    .X(FrameData_O[13])
);

my_buf data_outbuf_14 (
    .A(FrameData_O_i[14]),
    .X(FrameData_O[14])
);

my_buf data_outbuf_15 (
    .A(FrameData_O_i[15]),
    .X(FrameData_O[15])
);

my_buf data_outbuf_16 (
    .A(FrameData_O_i[16]),
    .X(FrameData_O[16])
);

my_buf data_outbuf_17 (
    .A(FrameData_O_i[17]),
    .X(FrameData_O[17])
);

my_buf data_outbuf_18 (
    .A(FrameData_O_i[18]),
    .X(FrameData_O[18])
);

my_buf data_outbuf_19 (
    .A(FrameData_O_i[19]),
    .X(FrameData_O[19])
);

my_buf data_outbuf_20 (
    .A(FrameData_O_i[20]),
    .X(FrameData_O[20])
);

my_buf data_outbuf_21 (
    .A(FrameData_O_i[21]),
    .X(FrameData_O[21])
);

my_buf data_outbuf_22 (
    .A(FrameData_O_i[22]),
    .X(FrameData_O[22])
);

my_buf data_outbuf_23 (
    .A(FrameData_O_i[23]),
    .X(FrameData_O[23])
);

my_buf data_outbuf_24 (
    .A(FrameData_O_i[24]),
    .X(FrameData_O[24])
);

my_buf data_outbuf_25 (
    .A(FrameData_O_i[25]),
    .X(FrameData_O[25])
);

my_buf data_outbuf_26 (
    .A(FrameData_O_i[26]),
    .X(FrameData_O[26])
);

my_buf data_outbuf_27 (
    .A(FrameData_O_i[27]),
    .X(FrameData_O[27])
);

my_buf data_outbuf_28 (
    .A(FrameData_O_i[28]),
    .X(FrameData_O[28])
);

my_buf data_outbuf_29 (
    .A(FrameData_O_i[29]),
    .X(FrameData_O[29])
);

my_buf data_outbuf_30 (
    .A(FrameData_O_i[30]),
    .X(FrameData_O[30])
);

my_buf data_outbuf_31 (
    .A(FrameData_O_i[31]),
    .X(FrameData_O[31])
);

assign FrameStrobe_O_i = FrameStrobe_i;

my_buf strobe_inbuf_0 (
    .A(FrameStrobe[0]),
    .X(FrameStrobe_i[0])
);

my_buf strobe_inbuf_1 (
    .A(FrameStrobe[1]),
    .X(FrameStrobe_i[1])
);

my_buf strobe_inbuf_2 (
    .A(FrameStrobe[2]),
    .X(FrameStrobe_i[2])
);

my_buf strobe_inbuf_3 (
    .A(FrameStrobe[3]),
    .X(FrameStrobe_i[3])
);

my_buf strobe_inbuf_4 (
    .A(FrameStrobe[4]),
    .X(FrameStrobe_i[4])
);

my_buf strobe_inbuf_5 (
    .A(FrameStrobe[5]),
    .X(FrameStrobe_i[5])
);

my_buf strobe_inbuf_6 (
    .A(FrameStrobe[6]),
    .X(FrameStrobe_i[6])
);

my_buf strobe_inbuf_7 (
    .A(FrameStrobe[7]),
    .X(FrameStrobe_i[7])
);

my_buf strobe_inbuf_8 (
    .A(FrameStrobe[8]),
    .X(FrameStrobe_i[8])
);

my_buf strobe_inbuf_9 (
    .A(FrameStrobe[9]),
    .X(FrameStrobe_i[9])
);

my_buf strobe_inbuf_10 (
    .A(FrameStrobe[10]),
    .X(FrameStrobe_i[10])
);

my_buf strobe_inbuf_11 (
    .A(FrameStrobe[11]),
    .X(FrameStrobe_i[11])
);

my_buf strobe_inbuf_12 (
    .A(FrameStrobe[12]),
    .X(FrameStrobe_i[12])
);

my_buf strobe_inbuf_13 (
    .A(FrameStrobe[13]),
    .X(FrameStrobe_i[13])
);

my_buf strobe_inbuf_14 (
    .A(FrameStrobe[14]),
    .X(FrameStrobe_i[14])
);

my_buf strobe_inbuf_15 (
    .A(FrameStrobe[15]),
    .X(FrameStrobe_i[15])
);

my_buf strobe_inbuf_16 (
    .A(FrameStrobe[16]),
    .X(FrameStrobe_i[16])
);

my_buf strobe_inbuf_17 (
    .A(FrameStrobe[17]),
    .X(FrameStrobe_i[17])
);

my_buf strobe_inbuf_18 (
    .A(FrameStrobe[18]),
    .X(FrameStrobe_i[18])
);

my_buf strobe_inbuf_19 (
    .A(FrameStrobe[19]),
    .X(FrameStrobe_i[19])
);

my_buf strobe_outbuf_0 (
    .A(FrameStrobe_O_i[0]),
    .X(FrameStrobe_O[0])
);

my_buf strobe_outbuf_1 (
    .A(FrameStrobe_O_i[1]),
    .X(FrameStrobe_O[1])
);

my_buf strobe_outbuf_2 (
    .A(FrameStrobe_O_i[2]),
    .X(FrameStrobe_O[2])
);

my_buf strobe_outbuf_3 (
    .A(FrameStrobe_O_i[3]),
    .X(FrameStrobe_O[3])
);

my_buf strobe_outbuf_4 (
    .A(FrameStrobe_O_i[4]),
    .X(FrameStrobe_O[4])
);

my_buf strobe_outbuf_5 (
    .A(FrameStrobe_O_i[5]),
    .X(FrameStrobe_O[5])
);

my_buf strobe_outbuf_6 (
    .A(FrameStrobe_O_i[6]),
    .X(FrameStrobe_O[6])
);

my_buf strobe_outbuf_7 (
    .A(FrameStrobe_O_i[7]),
    .X(FrameStrobe_O[7])
);

my_buf strobe_outbuf_8 (
    .A(FrameStrobe_O_i[8]),
    .X(FrameStrobe_O[8])
);

my_buf strobe_outbuf_9 (
    .A(FrameStrobe_O_i[9]),
    .X(FrameStrobe_O[9])
);

my_buf strobe_outbuf_10 (
    .A(FrameStrobe_O_i[10]),
    .X(FrameStrobe_O[10])
);

my_buf strobe_outbuf_11 (
    .A(FrameStrobe_O_i[11]),
    .X(FrameStrobe_O[11])
);

my_buf strobe_outbuf_12 (
    .A(FrameStrobe_O_i[12]),
    .X(FrameStrobe_O[12])
);

my_buf strobe_outbuf_13 (
    .A(FrameStrobe_O_i[13]),
    .X(FrameStrobe_O[13])
);

my_buf strobe_outbuf_14 (
    .A(FrameStrobe_O_i[14]),
    .X(FrameStrobe_O[14])
);

my_buf strobe_outbuf_15 (
    .A(FrameStrobe_O_i[15]),
    .X(FrameStrobe_O[15])
);

my_buf strobe_outbuf_16 (
    .A(FrameStrobe_O_i[16]),
    .X(FrameStrobe_O[16])
);

my_buf strobe_outbuf_17 (
    .A(FrameStrobe_O_i[17]),
    .X(FrameStrobe_O[17])
);

my_buf strobe_outbuf_18 (
    .A(FrameStrobe_O_i[18]),
    .X(FrameStrobe_O[18])
);

my_buf strobe_outbuf_19 (
    .A(FrameStrobe_O_i[19]),
    .X(FrameStrobe_O[19])
);

assign N4BEG_i[15-4:0] = N4END_i[15:4];

my_buf N4END_inbuf_0 (
    .A(N4END[4]),
    .X(N4END_i[4])
);

my_buf N4END_inbuf_1 (
    .A(N4END[5]),
    .X(N4END_i[5])
);

my_buf N4END_inbuf_2 (
    .A(N4END[6]),
    .X(N4END_i[6])
);

my_buf N4END_inbuf_3 (
    .A(N4END[7]),
    .X(N4END_i[7])
);

my_buf N4END_inbuf_4 (
    .A(N4END[8]),
    .X(N4END_i[8])
);

my_buf N4END_inbuf_5 (
    .A(N4END[9]),
    .X(N4END_i[9])
);

my_buf N4END_inbuf_6 (
    .A(N4END[10]),
    .X(N4END_i[10])
);

my_buf N4END_inbuf_7 (
    .A(N4END[11]),
    .X(N4END_i[11])
);

my_buf N4END_inbuf_8 (
    .A(N4END[12]),
    .X(N4END_i[12])
);

my_buf N4END_inbuf_9 (
    .A(N4END[13]),
    .X(N4END_i[13])
);

my_buf N4END_inbuf_10 (
    .A(N4END[14]),
    .X(N4END_i[14])
);

my_buf N4END_inbuf_11 (
    .A(N4END[15]),
    .X(N4END_i[15])
);

my_buf N4BEG_outbuf_0 (
    .A(N4BEG_i[0]),
    .X(N4BEG[0])
);

my_buf N4BEG_outbuf_1 (
    .A(N4BEG_i[1]),
    .X(N4BEG[1])
);

my_buf N4BEG_outbuf_2 (
    .A(N4BEG_i[2]),
    .X(N4BEG[2])
);

my_buf N4BEG_outbuf_3 (
    .A(N4BEG_i[3]),
    .X(N4BEG[3])
);

my_buf N4BEG_outbuf_4 (
    .A(N4BEG_i[4]),
    .X(N4BEG[4])
);

my_buf N4BEG_outbuf_5 (
    .A(N4BEG_i[5]),
    .X(N4BEG[5])
);

my_buf N4BEG_outbuf_6 (
    .A(N4BEG_i[6]),
    .X(N4BEG[6])
);

my_buf N4BEG_outbuf_7 (
    .A(N4BEG_i[7]),
    .X(N4BEG[7])
);

my_buf N4BEG_outbuf_8 (
    .A(N4BEG_i[8]),
    .X(N4BEG[8])
);

my_buf N4BEG_outbuf_9 (
    .A(N4BEG_i[9]),
    .X(N4BEG[9])
);

my_buf N4BEG_outbuf_10 (
    .A(N4BEG_i[10]),
    .X(N4BEG[10])
);

my_buf N4BEG_outbuf_11 (
    .A(N4BEG_i[11]),
    .X(N4BEG[11])
);

assign S4BEG_i[15-4:0] = S4END_i[15:4];

my_buf S4END_inbuf_0 (
    .A(S4END[4]),
    .X(S4END_i[4])
);

my_buf S4END_inbuf_1 (
    .A(S4END[5]),
    .X(S4END_i[5])
);

my_buf S4END_inbuf_2 (
    .A(S4END[6]),
    .X(S4END_i[6])
);

my_buf S4END_inbuf_3 (
    .A(S4END[7]),
    .X(S4END_i[7])
);

my_buf S4END_inbuf_4 (
    .A(S4END[8]),
    .X(S4END_i[8])
);

my_buf S4END_inbuf_5 (
    .A(S4END[9]),
    .X(S4END_i[9])
);

my_buf S4END_inbuf_6 (
    .A(S4END[10]),
    .X(S4END_i[10])
);

my_buf S4END_inbuf_7 (
    .A(S4END[11]),
    .X(S4END_i[11])
);

my_buf S4END_inbuf_8 (
    .A(S4END[12]),
    .X(S4END_i[12])
);

my_buf S4END_inbuf_9 (
    .A(S4END[13]),
    .X(S4END_i[13])
);

my_buf S4END_inbuf_10 (
    .A(S4END[14]),
    .X(S4END_i[14])
);

my_buf S4END_inbuf_11 (
    .A(S4END[15]),
    .X(S4END_i[15])
);

my_buf S4BEG_outbuf_0 (
    .A(S4BEG_i[0]),
    .X(S4BEG[0])
);

my_buf S4BEG_outbuf_1 (
    .A(S4BEG_i[1]),
    .X(S4BEG[1])
);

my_buf S4BEG_outbuf_2 (
    .A(S4BEG_i[2]),
    .X(S4BEG[2])
);

my_buf S4BEG_outbuf_3 (
    .A(S4BEG_i[3]),
    .X(S4BEG[3])
);

my_buf S4BEG_outbuf_4 (
    .A(S4BEG_i[4]),
    .X(S4BEG[4])
);

my_buf S4BEG_outbuf_5 (
    .A(S4BEG_i[5]),
    .X(S4BEG[5])
);

my_buf S4BEG_outbuf_6 (
    .A(S4BEG_i[6]),
    .X(S4BEG[6])
);

my_buf S4BEG_outbuf_7 (
    .A(S4BEG_i[7]),
    .X(S4BEG[7])
);

my_buf S4BEG_outbuf_8 (
    .A(S4BEG_i[8]),
    .X(S4BEG[8])
);

my_buf S4BEG_outbuf_9 (
    .A(S4BEG_i[9]),
    .X(S4BEG[9])
);

my_buf S4BEG_outbuf_10 (
    .A(S4BEG_i[10]),
    .X(S4BEG[10])
);

my_buf S4BEG_outbuf_11 (
    .A(S4BEG_i[11]),
    .X(S4BEG[11])
);

clk_buf inst_clk_buf (
    .A(UserCLK),
    .X(UserCLKo)
);


 //configuration storage latches
EF_SRAM_bot_ConfigMem
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Emulate_Bitstream)
    )
`endif
    Inst_EF_SRAM_bot_ConfigMem
    (
    .FrameData(FrameData),
    .FrameStrobe(FrameStrobe),
    .ConfigBits(ConfigBits),
    .ConfigBits_N(ConfigBits_N)
);

 //BEL component instantiations
EF_SRAM_1024x32v2 Inst_EF_SRAM_1024x32v2 (
    .AD({AD9, AD8, AD7, AD6, AD5, AD4, AD3, AD2, AD1, AD0}),
    .BEN({BEN31, BEN30, BEN29, BEN28, BEN27, BEN26, BEN25, BEN24, BEN23, BEN22, BEN21, BEN20, BEN19, BEN18, BEN17, BEN16, BEN15, BEN14, BEN13, BEN12, BEN11, BEN10, BEN9, BEN8, BEN7, BEN6, BEN5, BEN4, BEN3, BEN2, BEN1, BEN0}),
    .DI({DI31, DI30, DI29, DI28, DI27, DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18, DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9, DI8, DI7, DI6, DI5, DI4, DI3, DI2, DI1, DI0}),
    .EN(EN),
    .R_WB(R_WB),
    .DO({DO31, DO30, DO29, DO28, DO27, DO26, DO25, DO24, DO23, DO22, DO21, DO20, DO19, DO18, DO17, DO16, DO15, DO14, DO13, DO12, DO11, DO10, DO9, DO8, DO7, DO6, DO5, DO4, DO3, DO2, DO1, DO0}),
    .DO_SRAM({DO_SRAM31, DO_SRAM30, DO_SRAM29, DO_SRAM28, DO_SRAM27, DO_SRAM26, DO_SRAM25, DO_SRAM24, DO_SRAM23, DO_SRAM22, DO_SRAM21, DO_SRAM20, DO_SRAM19, DO_SRAM18, DO_SRAM17, DO_SRAM16, DO_SRAM15, DO_SRAM14, DO_SRAM13, DO_SRAM12, DO_SRAM11, DO_SRAM10, DO_SRAM9, DO_SRAM8, DO_SRAM7, DO_SRAM6, DO_SRAM5, DO_SRAM4, DO_SRAM3, DO_SRAM2, DO_SRAM1, DO_SRAM0}),
    .AD_SRAM({AD_SRAM9, AD_SRAM8, AD_SRAM7, AD_SRAM6, AD_SRAM5, AD_SRAM4, AD_SRAM3, AD_SRAM2, AD_SRAM1, AD_SRAM0}),
    .BEN_SRAM({BEN_SRAM31, BEN_SRAM30, BEN_SRAM29, BEN_SRAM28, BEN_SRAM27, BEN_SRAM26, BEN_SRAM25, BEN_SRAM24, BEN_SRAM23, BEN_SRAM22, BEN_SRAM21, BEN_SRAM20, BEN_SRAM19, BEN_SRAM18, BEN_SRAM17, BEN_SRAM16, BEN_SRAM15, BEN_SRAM14, BEN_SRAM13, BEN_SRAM12, BEN_SRAM11, BEN_SRAM10, BEN_SRAM9, BEN_SRAM8, BEN_SRAM7, BEN_SRAM6, BEN_SRAM5, BEN_SRAM4, BEN_SRAM3, BEN_SRAM2, BEN_SRAM1, BEN_SRAM0}),
    .CLOCK_SRAM(CLOCK_SRAM),
    .DI_SRAM({DI_SRAM31, DI_SRAM30, DI_SRAM29, DI_SRAM28, DI_SRAM27, DI_SRAM26, DI_SRAM25, DI_SRAM24, DI_SRAM23, DI_SRAM22, DI_SRAM21, DI_SRAM20, DI_SRAM19, DI_SRAM18, DI_SRAM17, DI_SRAM16, DI_SRAM15, DI_SRAM14, DI_SRAM13, DI_SRAM12, DI_SRAM11, DI_SRAM10, DI_SRAM9, DI_SRAM8, DI_SRAM7, DI_SRAM6, DI_SRAM5, DI_SRAM4, DI_SRAM3, DI_SRAM2, DI_SRAM1, DI_SRAM0}),
    .EN_SRAM(EN_SRAM),
    .R_WB_SRAM(R_WB_SRAM),
    .UserCLK(UserCLK)
);

EF_SRAM_bot_switch_matrix Inst_EF_SRAM_bot_switch_matrix (
    .N1END0(N1END[0]),
    .N1END1(N1END[1]),
    .N1END2(N1END[2]),
    .N1END3(N1END[3]),
    .N2MID0(N2MID[0]),
    .N2MID1(N2MID[1]),
    .N2MID2(N2MID[2]),
    .N2MID3(N2MID[3]),
    .N2MID4(N2MID[4]),
    .N2MID5(N2MID[5]),
    .N2MID6(N2MID[6]),
    .N2MID7(N2MID[7]),
    .N2END0(N2END[0]),
    .N2END1(N2END[1]),
    .N2END2(N2END[2]),
    .N2END3(N2END[3]),
    .N2END4(N2END[4]),
    .N2END5(N2END[5]),
    .N2END6(N2END[6]),
    .N2END7(N2END[7]),
    .N4END0(N4END[0]),
    .N4END1(N4END[1]),
    .N4END2(N4END[2]),
    .N4END3(N4END[3]),
    .E1END0(E1END[0]),
    .E1END1(E1END[1]),
    .E1END2(E1END[2]),
    .E1END3(E1END[3]),
    .E2MID0(E2MID[0]),
    .E2MID1(E2MID[1]),
    .E2MID2(E2MID[2]),
    .E2MID3(E2MID[3]),
    .E2MID4(E2MID[4]),
    .E2MID5(E2MID[5]),
    .E2MID6(E2MID[6]),
    .E2MID7(E2MID[7]),
    .E2END0(E2END[0]),
    .E2END1(E2END[1]),
    .E2END2(E2END[2]),
    .E2END3(E2END[3]),
    .E2END4(E2END[4]),
    .E2END5(E2END[5]),
    .E2END6(E2END[6]),
    .E2END7(E2END[7]),
    .EE4END0(EE4END[0]),
    .EE4END1(EE4END[1]),
    .EE4END2(EE4END[2]),
    .EE4END3(EE4END[3]),
    .EE4END4(EE4END[4]),
    .EE4END5(EE4END[5]),
    .EE4END6(EE4END[6]),
    .EE4END7(EE4END[7]),
    .EE4END8(EE4END[8]),
    .EE4END9(EE4END[9]),
    .EE4END10(EE4END[10]),
    .EE4END11(EE4END[11]),
    .EE4END12(EE4END[12]),
    .EE4END13(EE4END[13]),
    .EE4END14(EE4END[14]),
    .EE4END15(EE4END[15]),
    .E6END0(E6END[0]),
    .E6END1(E6END[1]),
    .E6END2(E6END[2]),
    .E6END3(E6END[3]),
    .E6END4(E6END[4]),
    .E6END5(E6END[5]),
    .E6END6(E6END[6]),
    .E6END7(E6END[7]),
    .E6END8(E6END[8]),
    .E6END9(E6END[9]),
    .E6END10(E6END[10]),
    .E6END11(E6END[11]),
    .S1END0(S1END[0]),
    .S1END1(S1END[1]),
    .S1END2(S1END[2]),
    .S1END3(S1END[3]),
    .S2MID0(S2MID[0]),
    .S2MID1(S2MID[1]),
    .S2MID2(S2MID[2]),
    .S2MID3(S2MID[3]),
    .S2MID4(S2MID[4]),
    .S2MID5(S2MID[5]),
    .S2MID6(S2MID[6]),
    .S2MID7(S2MID[7]),
    .S2END0(S2END[0]),
    .S2END1(S2END[1]),
    .S2END2(S2END[2]),
    .S2END3(S2END[3]),
    .S2END4(S2END[4]),
    .S2END5(S2END[5]),
    .S2END6(S2END[6]),
    .S2END7(S2END[7]),
    .S4END0(S4END[0]),
    .S4END1(S4END[1]),
    .S4END2(S4END[2]),
    .S4END3(S4END[3]),
    .top2bot_DI0(top2bot_DI[0]),
    .top2bot_DI1(top2bot_DI[1]),
    .top2bot_DI2(top2bot_DI[2]),
    .top2bot_DI3(top2bot_DI[3]),
    .top2bot_DI4(top2bot_DI[4]),
    .top2bot_DI5(top2bot_DI[5]),
    .top2bot_DI6(top2bot_DI[6]),
    .top2bot_DI7(top2bot_DI[7]),
    .top2bot_DI8(top2bot_DI[8]),
    .top2bot_DI9(top2bot_DI[9]),
    .top2bot_DI10(top2bot_DI[10]),
    .top2bot_DI11(top2bot_DI[11]),
    .top2bot_DI12(top2bot_DI[12]),
    .top2bot_DI13(top2bot_DI[13]),
    .top2bot_DI14(top2bot_DI[14]),
    .top2bot_DI15(top2bot_DI[15]),
    .top2bot_BEN0(top2bot_BEN[0]),
    .top2bot_BEN1(top2bot_BEN[1]),
    .top2bot_BEN2(top2bot_BEN[2]),
    .top2bot_BEN3(top2bot_BEN[3]),
    .top2bot_BEN4(top2bot_BEN[4]),
    .top2bot_BEN5(top2bot_BEN[5]),
    .top2bot_BEN6(top2bot_BEN[6]),
    .top2bot_BEN7(top2bot_BEN[7]),
    .top2bot_BEN8(top2bot_BEN[8]),
    .top2bot_BEN9(top2bot_BEN[9]),
    .top2bot_BEN10(top2bot_BEN[10]),
    .top2bot_BEN11(top2bot_BEN[11]),
    .top2bot_BEN12(top2bot_BEN[12]),
    .top2bot_BEN13(top2bot_BEN[13]),
    .top2bot_BEN14(top2bot_BEN[14]),
    .top2bot_BEN15(top2bot_BEN[15]),
    .top2bot_AD0(top2bot_AD[0]),
    .top2bot_AD1(top2bot_AD[1]),
    .top2bot_AD2(top2bot_AD[2]),
    .top2bot_AD3(top2bot_AD[3]),
    .top2bot_AD4(top2bot_AD[4]),
    .DO0(DO0),
    .DO1(DO1),
    .DO2(DO2),
    .DO3(DO3),
    .DO4(DO4),
    .DO5(DO5),
    .DO6(DO6),
    .DO7(DO7),
    .DO8(DO8),
    .DO9(DO9),
    .DO10(DO10),
    .DO11(DO11),
    .DO12(DO12),
    .DO13(DO13),
    .DO14(DO14),
    .DO15(DO15),
    .DO16(DO16),
    .DO17(DO17),
    .DO18(DO18),
    .DO19(DO19),
    .DO20(DO20),
    .DO21(DO21),
    .DO22(DO22),
    .DO23(DO23),
    .DO24(DO24),
    .DO25(DO25),
    .DO26(DO26),
    .DO27(DO27),
    .DO28(DO28),
    .DO29(DO29),
    .DO30(DO30),
    .DO31(DO31),
    .J_NS4_END0(J_NS4_BEG[0]),
    .J_NS4_END1(J_NS4_BEG[1]),
    .J_NS4_END2(J_NS4_BEG[2]),
    .J_NS4_END3(J_NS4_BEG[3]),
    .J_NS4_END4(J_NS4_BEG[4]),
    .J_NS4_END5(J_NS4_BEG[5]),
    .J_NS4_END6(J_NS4_BEG[6]),
    .J_NS4_END7(J_NS4_BEG[7]),
    .J_NS4_END8(J_NS4_BEG[8]),
    .J_NS4_END9(J_NS4_BEG[9]),
    .J_NS4_END10(J_NS4_BEG[10]),
    .J_NS4_END11(J_NS4_BEG[11]),
    .J_NS4_END12(J_NS4_BEG[12]),
    .J_NS4_END13(J_NS4_BEG[13]),
    .J_NS4_END14(J_NS4_BEG[14]),
    .J_NS4_END15(J_NS4_BEG[15]),
    .J_NS2_END0(J_NS2_BEG[0]),
    .J_NS2_END1(J_NS2_BEG[1]),
    .J_NS2_END2(J_NS2_BEG[2]),
    .J_NS2_END3(J_NS2_BEG[3]),
    .J_NS2_END4(J_NS2_BEG[4]),
    .J_NS2_END5(J_NS2_BEG[5]),
    .J_NS2_END6(J_NS2_BEG[6]),
    .J_NS2_END7(J_NS2_BEG[7]),
    .J_NS1_END0(J_NS1_BEG[0]),
    .J_NS1_END1(J_NS1_BEG[1]),
    .J_NS1_END2(J_NS1_BEG[2]),
    .J_NS1_END3(J_NS1_BEG[3]),
    .N1BEG0(N1BEG[0]),
    .N1BEG1(N1BEG[1]),
    .N1BEG2(N1BEG[2]),
    .N1BEG3(N1BEG[3]),
    .N2BEG0(N2BEG[0]),
    .N2BEG1(N2BEG[1]),
    .N2BEG2(N2BEG[2]),
    .N2BEG3(N2BEG[3]),
    .N2BEG4(N2BEG[4]),
    .N2BEG5(N2BEG[5]),
    .N2BEG6(N2BEG[6]),
    .N2BEG7(N2BEG[7]),
    .N2BEGb0(N2BEGb[0]),
    .N2BEGb1(N2BEGb[1]),
    .N2BEGb2(N2BEGb[2]),
    .N2BEGb3(N2BEGb[3]),
    .N2BEGb4(N2BEGb[4]),
    .N2BEGb5(N2BEGb[5]),
    .N2BEGb6(N2BEGb[6]),
    .N2BEGb7(N2BEGb[7]),
    .N4BEG0(N4BEG[12]),
    .N4BEG1(N4BEG[13]),
    .N4BEG2(N4BEG[14]),
    .N4BEG3(N4BEG[15]),
    .S1BEG0(S1BEG[0]),
    .S1BEG1(S1BEG[1]),
    .S1BEG2(S1BEG[2]),
    .S1BEG3(S1BEG[3]),
    .S2BEG0(S2BEG[0]),
    .S2BEG1(S2BEG[1]),
    .S2BEG2(S2BEG[2]),
    .S2BEG3(S2BEG[3]),
    .S2BEG4(S2BEG[4]),
    .S2BEG5(S2BEG[5]),
    .S2BEG6(S2BEG[6]),
    .S2BEG7(S2BEG[7]),
    .S2BEGb0(S2BEGb[0]),
    .S2BEGb1(S2BEGb[1]),
    .S2BEGb2(S2BEGb[2]),
    .S2BEGb3(S2BEGb[3]),
    .S2BEGb4(S2BEGb[4]),
    .S2BEGb5(S2BEGb[5]),
    .S2BEGb6(S2BEGb[6]),
    .S2BEGb7(S2BEGb[7]),
    .S4BEG0(S4BEG[12]),
    .S4BEG1(S4BEG[13]),
    .S4BEG2(S4BEG[14]),
    .S4BEG3(S4BEG[15]),
    .W1BEG0(W1BEG[0]),
    .W1BEG1(W1BEG[1]),
    .W1BEG2(W1BEG[2]),
    .W1BEG3(W1BEG[3]),
    .W2BEG0(W2BEG[0]),
    .W2BEG1(W2BEG[1]),
    .W2BEG2(W2BEG[2]),
    .W2BEG3(W2BEG[3]),
    .W2BEG4(W2BEG[4]),
    .W2BEG5(W2BEG[5]),
    .W2BEG6(W2BEG[6]),
    .W2BEG7(W2BEG[7]),
    .W2BEGb0(W2BEGb[0]),
    .W2BEGb1(W2BEGb[1]),
    .W2BEGb2(W2BEGb[2]),
    .W2BEGb3(W2BEGb[3]),
    .W2BEGb4(W2BEGb[4]),
    .W2BEGb5(W2BEGb[5]),
    .W2BEGb6(W2BEGb[6]),
    .W2BEGb7(W2BEGb[7]),
    .WW4BEG0(WW4BEG[0]),
    .WW4BEG1(WW4BEG[1]),
    .WW4BEG2(WW4BEG[2]),
    .WW4BEG3(WW4BEG[3]),
    .WW4BEG4(WW4BEG[4]),
    .WW4BEG5(WW4BEG[5]),
    .WW4BEG6(WW4BEG[6]),
    .WW4BEG7(WW4BEG[7]),
    .WW4BEG8(WW4BEG[8]),
    .WW4BEG9(WW4BEG[9]),
    .WW4BEG10(WW4BEG[10]),
    .WW4BEG11(WW4BEG[11]),
    .WW4BEG12(WW4BEG[12]),
    .WW4BEG13(WW4BEG[13]),
    .WW4BEG14(WW4BEG[14]),
    .WW4BEG15(WW4BEG[15]),
    .W6BEG0(W6BEG[0]),
    .W6BEG1(W6BEG[1]),
    .W6BEG2(W6BEG[2]),
    .W6BEG3(W6BEG[3]),
    .W6BEG4(W6BEG[4]),
    .W6BEG5(W6BEG[5]),
    .W6BEG6(W6BEG[6]),
    .W6BEG7(W6BEG[7]),
    .W6BEG8(W6BEG[8]),
    .W6BEG9(W6BEG[9]),
    .W6BEG10(W6BEG[10]),
    .W6BEG11(W6BEG[11]),
    .bot2top_DO0(bot2top_DO[0]),
    .bot2top_DO1(bot2top_DO[1]),
    .bot2top_DO2(bot2top_DO[2]),
    .bot2top_DO3(bot2top_DO[3]),
    .bot2top_DO4(bot2top_DO[4]),
    .bot2top_DO5(bot2top_DO[5]),
    .bot2top_DO6(bot2top_DO[6]),
    .bot2top_DO7(bot2top_DO[7]),
    .bot2top_DO8(bot2top_DO[8]),
    .bot2top_DO9(bot2top_DO[9]),
    .bot2top_DO10(bot2top_DO[10]),
    .bot2top_DO11(bot2top_DO[11]),
    .bot2top_DO12(bot2top_DO[12]),
    .bot2top_DO13(bot2top_DO[13]),
    .bot2top_DO14(bot2top_DO[14]),
    .bot2top_DO15(bot2top_DO[15]),
    .AD0(AD0),
    .AD1(AD1),
    .AD2(AD2),
    .AD3(AD3),
    .AD4(AD4),
    .AD5(AD5),
    .AD6(AD6),
    .AD7(AD7),
    .AD8(AD8),
    .AD9(AD9),
    .BEN0(BEN0),
    .BEN1(BEN1),
    .BEN2(BEN2),
    .BEN3(BEN3),
    .BEN4(BEN4),
    .BEN5(BEN5),
    .BEN6(BEN6),
    .BEN7(BEN7),
    .BEN8(BEN8),
    .BEN9(BEN9),
    .BEN10(BEN10),
    .BEN11(BEN11),
    .BEN12(BEN12),
    .BEN13(BEN13),
    .BEN14(BEN14),
    .BEN15(BEN15),
    .BEN16(BEN16),
    .BEN17(BEN17),
    .BEN18(BEN18),
    .BEN19(BEN19),
    .BEN20(BEN20),
    .BEN21(BEN21),
    .BEN22(BEN22),
    .BEN23(BEN23),
    .BEN24(BEN24),
    .BEN25(BEN25),
    .BEN26(BEN26),
    .BEN27(BEN27),
    .BEN28(BEN28),
    .BEN29(BEN29),
    .BEN30(BEN30),
    .BEN31(BEN31),
    .DI0(DI0),
    .DI1(DI1),
    .DI2(DI2),
    .DI3(DI3),
    .DI4(DI4),
    .DI5(DI5),
    .DI6(DI6),
    .DI7(DI7),
    .DI8(DI8),
    .DI9(DI9),
    .DI10(DI10),
    .DI11(DI11),
    .DI12(DI12),
    .DI13(DI13),
    .DI14(DI14),
    .DI15(DI15),
    .DI16(DI16),
    .DI17(DI17),
    .DI18(DI18),
    .DI19(DI19),
    .DI20(DI20),
    .DI21(DI21),
    .DI22(DI22),
    .DI23(DI23),
    .DI24(DI24),
    .DI25(DI25),
    .DI26(DI26),
    .DI27(DI27),
    .DI28(DI28),
    .DI29(DI29),
    .DI30(DI30),
    .DI31(DI31),
    .EN(EN),
    .R_WB(R_WB),
    .J_NS4_BEG0(J_NS4_BEG[0]),
    .J_NS4_BEG1(J_NS4_BEG[1]),
    .J_NS4_BEG2(J_NS4_BEG[2]),
    .J_NS4_BEG3(J_NS4_BEG[3]),
    .J_NS4_BEG4(J_NS4_BEG[4]),
    .J_NS4_BEG5(J_NS4_BEG[5]),
    .J_NS4_BEG6(J_NS4_BEG[6]),
    .J_NS4_BEG7(J_NS4_BEG[7]),
    .J_NS4_BEG8(J_NS4_BEG[8]),
    .J_NS4_BEG9(J_NS4_BEG[9]),
    .J_NS4_BEG10(J_NS4_BEG[10]),
    .J_NS4_BEG11(J_NS4_BEG[11]),
    .J_NS4_BEG12(J_NS4_BEG[12]),
    .J_NS4_BEG13(J_NS4_BEG[13]),
    .J_NS4_BEG14(J_NS4_BEG[14]),
    .J_NS4_BEG15(J_NS4_BEG[15]),
    .J_NS2_BEG0(J_NS2_BEG[0]),
    .J_NS2_BEG1(J_NS2_BEG[1]),
    .J_NS2_BEG2(J_NS2_BEG[2]),
    .J_NS2_BEG3(J_NS2_BEG[3]),
    .J_NS2_BEG4(J_NS2_BEG[4]),
    .J_NS2_BEG5(J_NS2_BEG[5]),
    .J_NS2_BEG6(J_NS2_BEG[6]),
    .J_NS2_BEG7(J_NS2_BEG[7]),
    .J_NS1_BEG0(J_NS1_BEG[0]),
    .J_NS1_BEG1(J_NS1_BEG[1]),
    .J_NS1_BEG2(J_NS1_BEG[2]),
    .J_NS1_BEG3(J_NS1_BEG[3]),
    .ConfigBits(ConfigBits[306-1:0]),
    .ConfigBits_N(ConfigBits_N[306-1:0])
);

endmodule
