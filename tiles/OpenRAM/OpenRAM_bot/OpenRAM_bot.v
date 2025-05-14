module OpenRAM_bot
    #(
`ifdef EMULATION
        parameter [639:0] Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32,
        parameter NoConfigBits=288
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
        output [15:0] bot2top_DOUT_A,        //Port(Name=bot2top_DOUT_A, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=16, Side=NORTH)
        input [15:0] top2bot_DIN_A,        //Port(Name=top2bot_DIN_A, IO=INPUT, XOffset=0, YOffset=1, WireCount=16, Side=NORTH)
        input [1:0] top2bot_WMASK_A,        //Port(Name=top2bot_WMASK_A, IO=INPUT, XOffset=0, YOffset=1, WireCount=2, Side=NORTH)
        input [3:0] top2bot_ADDR_A,        //Port(Name=top2bot_ADDR_A, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        output [15:0] bot2top_DOUT_B,        //Port(Name=bot2top_DOUT_B, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=16, Side=NORTH)
        input [3:0] top2bot_ADDR_B,        //Port(Name=top2bot_ADDR_B, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
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
        input DOUT_A_SRAM0,
        input DOUT_A_SRAM1,
        input DOUT_A_SRAM2,
        input DOUT_A_SRAM3,
        input DOUT_A_SRAM4,
        input DOUT_A_SRAM5,
        input DOUT_A_SRAM6,
        input DOUT_A_SRAM7,
        input DOUT_A_SRAM8,
        input DOUT_A_SRAM9,
        input DOUT_A_SRAM10,
        input DOUT_A_SRAM11,
        input DOUT_A_SRAM12,
        input DOUT_A_SRAM13,
        input DOUT_A_SRAM14,
        input DOUT_A_SRAM15,
        input DOUT_A_SRAM16,
        input DOUT_A_SRAM17,
        input DOUT_A_SRAM18,
        input DOUT_A_SRAM19,
        input DOUT_A_SRAM20,
        input DOUT_A_SRAM21,
        input DOUT_A_SRAM22,
        input DOUT_A_SRAM23,
        input DOUT_A_SRAM24,
        input DOUT_A_SRAM25,
        input DOUT_A_SRAM26,
        input DOUT_A_SRAM27,
        input DOUT_A_SRAM28,
        input DOUT_A_SRAM29,
        input DOUT_A_SRAM30,
        input DOUT_A_SRAM31,
        input DOUT_B_SRAM0,
        input DOUT_B_SRAM1,
        input DOUT_B_SRAM2,
        input DOUT_B_SRAM3,
        input DOUT_B_SRAM4,
        input DOUT_B_SRAM5,
        input DOUT_B_SRAM6,
        input DOUT_B_SRAM7,
        input DOUT_B_SRAM8,
        input DOUT_B_SRAM9,
        input DOUT_B_SRAM10,
        input DOUT_B_SRAM11,
        input DOUT_B_SRAM12,
        input DOUT_B_SRAM13,
        input DOUT_B_SRAM14,
        input DOUT_B_SRAM15,
        input DOUT_B_SRAM16,
        input DOUT_B_SRAM17,
        input DOUT_B_SRAM18,
        input DOUT_B_SRAM19,
        input DOUT_B_SRAM20,
        input DOUT_B_SRAM21,
        input DOUT_B_SRAM22,
        input DOUT_B_SRAM23,
        input DOUT_B_SRAM24,
        input DOUT_B_SRAM25,
        input DOUT_B_SRAM26,
        input DOUT_B_SRAM27,
        input DOUT_B_SRAM28,
        input DOUT_B_SRAM29,
        input DOUT_B_SRAM30,
        input DOUT_B_SRAM31,
        input CONFIGURED_top,
        output CLK_A_SRAM,
        output CSB_A_SRAM,
        output WEB_A_SRAM,
        output WMASK_A_SRAM0,
        output WMASK_A_SRAM1,
        output WMASK_A_SRAM2,
        output WMASK_A_SRAM3,
        output ADDR_A_SRAM0,
        output ADDR_A_SRAM1,
        output ADDR_A_SRAM2,
        output ADDR_A_SRAM3,
        output ADDR_A_SRAM4,
        output ADDR_A_SRAM5,
        output ADDR_A_SRAM6,
        output ADDR_A_SRAM7,
        output DIN_A_SRAM0,
        output DIN_A_SRAM1,
        output DIN_A_SRAM2,
        output DIN_A_SRAM3,
        output DIN_A_SRAM4,
        output DIN_A_SRAM5,
        output DIN_A_SRAM6,
        output DIN_A_SRAM7,
        output DIN_A_SRAM8,
        output DIN_A_SRAM9,
        output DIN_A_SRAM10,
        output DIN_A_SRAM11,
        output DIN_A_SRAM12,
        output DIN_A_SRAM13,
        output DIN_A_SRAM14,
        output DIN_A_SRAM15,
        output DIN_A_SRAM16,
        output DIN_A_SRAM17,
        output DIN_A_SRAM18,
        output DIN_A_SRAM19,
        output DIN_A_SRAM20,
        output DIN_A_SRAM21,
        output DIN_A_SRAM22,
        output DIN_A_SRAM23,
        output DIN_A_SRAM24,
        output DIN_A_SRAM25,
        output DIN_A_SRAM26,
        output DIN_A_SRAM27,
        output DIN_A_SRAM28,
        output DIN_A_SRAM29,
        output DIN_A_SRAM30,
        output DIN_A_SRAM31,
        output CLK_B_SRAM,
        output CSB_B_SRAM,
        output ADDR_B_SRAM0,
        output ADDR_B_SRAM1,
        output ADDR_B_SRAM2,
        output ADDR_B_SRAM3,
        output ADDR_B_SRAM4,
        output ADDR_B_SRAM5,
        output ADDR_B_SRAM6,
        output ADDR_B_SRAM7,
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
wire CSB_A;
wire WEB_A;
wire WMASK_A0;
wire WMASK_A1;
wire WMASK_A2;
wire WMASK_A3;
wire ADDR_A0;
wire ADDR_A1;
wire ADDR_A2;
wire ADDR_A3;
wire ADDR_A4;
wire ADDR_A5;
wire ADDR_A6;
wire ADDR_A7;
wire DIN_A0;
wire DIN_A1;
wire DIN_A2;
wire DIN_A3;
wire DIN_A4;
wire DIN_A5;
wire DIN_A6;
wire DIN_A7;
wire DIN_A8;
wire DIN_A9;
wire DIN_A10;
wire DIN_A11;
wire DIN_A12;
wire DIN_A13;
wire DIN_A14;
wire DIN_A15;
wire DIN_A16;
wire DIN_A17;
wire DIN_A18;
wire DIN_A19;
wire DIN_A20;
wire DIN_A21;
wire DIN_A22;
wire DIN_A23;
wire DIN_A24;
wire DIN_A25;
wire DIN_A26;
wire DIN_A27;
wire DIN_A28;
wire DIN_A29;
wire DIN_A30;
wire DIN_A31;
wire CSB_B;
wire ADDR_B0;
wire ADDR_B1;
wire ADDR_B2;
wire ADDR_B3;
wire ADDR_B4;
wire ADDR_B5;
wire ADDR_B6;
wire ADDR_B7;
wire DOUT_A0;
wire DOUT_A1;
wire DOUT_A2;
wire DOUT_A3;
wire DOUT_A4;
wire DOUT_A5;
wire DOUT_A6;
wire DOUT_A7;
wire DOUT_A8;
wire DOUT_A9;
wire DOUT_A10;
wire DOUT_A11;
wire DOUT_A12;
wire DOUT_A13;
wire DOUT_A14;
wire DOUT_A15;
wire DOUT_A16;
wire DOUT_A17;
wire DOUT_A18;
wire DOUT_A19;
wire DOUT_A20;
wire DOUT_A21;
wire DOUT_A22;
wire DOUT_A23;
wire DOUT_A24;
wire DOUT_A25;
wire DOUT_A26;
wire DOUT_A27;
wire DOUT_A28;
wire DOUT_A29;
wire DOUT_A30;
wire DOUT_A31;
wire DOUT_B0;
wire DOUT_B1;
wire DOUT_B2;
wire DOUT_B3;
wire DOUT_B4;
wire DOUT_B5;
wire DOUT_B6;
wire DOUT_B7;
wire DOUT_B8;
wire DOUT_B9;
wire DOUT_B10;
wire DOUT_B11;
wire DOUT_B12;
wire DOUT_B13;
wire DOUT_B14;
wire DOUT_B15;
wire DOUT_B16;
wire DOUT_B17;
wire DOUT_B18;
wire DOUT_B19;
wire DOUT_B20;
wire DOUT_B21;
wire DOUT_B22;
wire DOUT_B23;
wire DOUT_B24;
wire DOUT_B25;
wire DOUT_B26;
wire DOUT_B27;
wire DOUT_B28;
wire DOUT_B29;
wire DOUT_B30;
wire DOUT_B31;
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
OpenRAM_bot_ConfigMem
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Emulate_Bitstream)
    )
`endif
    Inst_OpenRAM_bot_ConfigMem
    (
    .FrameData(FrameData),
    .FrameStrobe(FrameStrobe),
    .ConfigBits(ConfigBits),
    .ConfigBits_N(ConfigBits_N)
);

 //BEL component instantiations
OPENRAM_256x32_1RW1R Inst_OPENRAM_256x32_1RW1R (
    .CSB_A(CSB_A),
    .WEB_A(WEB_A),
    .WMASK_A({WMASK_A3, WMASK_A2, WMASK_A1, WMASK_A0}),
    .ADDR_A({ADDR_A7, ADDR_A6, ADDR_A5, ADDR_A4, ADDR_A3, ADDR_A2, ADDR_A1, ADDR_A0}),
    .DIN_A({DIN_A31, DIN_A30, DIN_A29, DIN_A28, DIN_A27, DIN_A26, DIN_A25, DIN_A24, DIN_A23, DIN_A22, DIN_A21, DIN_A20, DIN_A19, DIN_A18, DIN_A17, DIN_A16, DIN_A15, DIN_A14, DIN_A13, DIN_A12, DIN_A11, DIN_A10, DIN_A9, DIN_A8, DIN_A7, DIN_A6, DIN_A5, DIN_A4, DIN_A3, DIN_A2, DIN_A1, DIN_A0}),
    .CSB_B(CSB_B),
    .ADDR_B({ADDR_B7, ADDR_B6, ADDR_B5, ADDR_B4, ADDR_B3, ADDR_B2, ADDR_B1, ADDR_B0}),
    .DOUT_A({DOUT_A31, DOUT_A30, DOUT_A29, DOUT_A28, DOUT_A27, DOUT_A26, DOUT_A25, DOUT_A24, DOUT_A23, DOUT_A22, DOUT_A21, DOUT_A20, DOUT_A19, DOUT_A18, DOUT_A17, DOUT_A16, DOUT_A15, DOUT_A14, DOUT_A13, DOUT_A12, DOUT_A11, DOUT_A10, DOUT_A9, DOUT_A8, DOUT_A7, DOUT_A6, DOUT_A5, DOUT_A4, DOUT_A3, DOUT_A2, DOUT_A1, DOUT_A0}),
    .DOUT_B({DOUT_B31, DOUT_B30, DOUT_B29, DOUT_B28, DOUT_B27, DOUT_B26, DOUT_B25, DOUT_B24, DOUT_B23, DOUT_B22, DOUT_B21, DOUT_B20, DOUT_B19, DOUT_B18, DOUT_B17, DOUT_B16, DOUT_B15, DOUT_B14, DOUT_B13, DOUT_B12, DOUT_B11, DOUT_B10, DOUT_B9, DOUT_B8, DOUT_B7, DOUT_B6, DOUT_B5, DOUT_B4, DOUT_B3, DOUT_B2, DOUT_B1, DOUT_B0}),
    .DOUT_A_SRAM({DOUT_A_SRAM31, DOUT_A_SRAM30, DOUT_A_SRAM29, DOUT_A_SRAM28, DOUT_A_SRAM27, DOUT_A_SRAM26, DOUT_A_SRAM25, DOUT_A_SRAM24, DOUT_A_SRAM23, DOUT_A_SRAM22, DOUT_A_SRAM21, DOUT_A_SRAM20, DOUT_A_SRAM19, DOUT_A_SRAM18, DOUT_A_SRAM17, DOUT_A_SRAM16, DOUT_A_SRAM15, DOUT_A_SRAM14, DOUT_A_SRAM13, DOUT_A_SRAM12, DOUT_A_SRAM11, DOUT_A_SRAM10, DOUT_A_SRAM9, DOUT_A_SRAM8, DOUT_A_SRAM7, DOUT_A_SRAM6, DOUT_A_SRAM5, DOUT_A_SRAM4, DOUT_A_SRAM3, DOUT_A_SRAM2, DOUT_A_SRAM1, DOUT_A_SRAM0}),
    .DOUT_B_SRAM({DOUT_B_SRAM31, DOUT_B_SRAM30, DOUT_B_SRAM29, DOUT_B_SRAM28, DOUT_B_SRAM27, DOUT_B_SRAM26, DOUT_B_SRAM25, DOUT_B_SRAM24, DOUT_B_SRAM23, DOUT_B_SRAM22, DOUT_B_SRAM21, DOUT_B_SRAM20, DOUT_B_SRAM19, DOUT_B_SRAM18, DOUT_B_SRAM17, DOUT_B_SRAM16, DOUT_B_SRAM15, DOUT_B_SRAM14, DOUT_B_SRAM13, DOUT_B_SRAM12, DOUT_B_SRAM11, DOUT_B_SRAM10, DOUT_B_SRAM9, DOUT_B_SRAM8, DOUT_B_SRAM7, DOUT_B_SRAM6, DOUT_B_SRAM5, DOUT_B_SRAM4, DOUT_B_SRAM3, DOUT_B_SRAM2, DOUT_B_SRAM1, DOUT_B_SRAM0}),
    .CONFIGURED_top(CONFIGURED_top),
    .CLK_A_SRAM(CLK_A_SRAM),
    .CSB_A_SRAM(CSB_A_SRAM),
    .WEB_A_SRAM(WEB_A_SRAM),
    .WMASK_A_SRAM({WMASK_A_SRAM3, WMASK_A_SRAM2, WMASK_A_SRAM1, WMASK_A_SRAM0}),
    .ADDR_A_SRAM({ADDR_A_SRAM7, ADDR_A_SRAM6, ADDR_A_SRAM5, ADDR_A_SRAM4, ADDR_A_SRAM3, ADDR_A_SRAM2, ADDR_A_SRAM1, ADDR_A_SRAM0}),
    .DIN_A_SRAM({DIN_A_SRAM31, DIN_A_SRAM30, DIN_A_SRAM29, DIN_A_SRAM28, DIN_A_SRAM27, DIN_A_SRAM26, DIN_A_SRAM25, DIN_A_SRAM24, DIN_A_SRAM23, DIN_A_SRAM22, DIN_A_SRAM21, DIN_A_SRAM20, DIN_A_SRAM19, DIN_A_SRAM18, DIN_A_SRAM17, DIN_A_SRAM16, DIN_A_SRAM15, DIN_A_SRAM14, DIN_A_SRAM13, DIN_A_SRAM12, DIN_A_SRAM11, DIN_A_SRAM10, DIN_A_SRAM9, DIN_A_SRAM8, DIN_A_SRAM7, DIN_A_SRAM6, DIN_A_SRAM5, DIN_A_SRAM4, DIN_A_SRAM3, DIN_A_SRAM2, DIN_A_SRAM1, DIN_A_SRAM0}),
    .CLK_B_SRAM(CLK_B_SRAM),
    .CSB_B_SRAM(CSB_B_SRAM),
    .ADDR_B_SRAM({ADDR_B_SRAM7, ADDR_B_SRAM6, ADDR_B_SRAM5, ADDR_B_SRAM4, ADDR_B_SRAM3, ADDR_B_SRAM2, ADDR_B_SRAM1, ADDR_B_SRAM0}),
    .UserCLK(UserCLK)
);

OpenRAM_bot_switch_matrix Inst_OpenRAM_bot_switch_matrix (
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
    .top2bot_DIN_A0(top2bot_DIN_A[0]),
    .top2bot_DIN_A1(top2bot_DIN_A[1]),
    .top2bot_DIN_A2(top2bot_DIN_A[2]),
    .top2bot_DIN_A3(top2bot_DIN_A[3]),
    .top2bot_DIN_A4(top2bot_DIN_A[4]),
    .top2bot_DIN_A5(top2bot_DIN_A[5]),
    .top2bot_DIN_A6(top2bot_DIN_A[6]),
    .top2bot_DIN_A7(top2bot_DIN_A[7]),
    .top2bot_DIN_A8(top2bot_DIN_A[8]),
    .top2bot_DIN_A9(top2bot_DIN_A[9]),
    .top2bot_DIN_A10(top2bot_DIN_A[10]),
    .top2bot_DIN_A11(top2bot_DIN_A[11]),
    .top2bot_DIN_A12(top2bot_DIN_A[12]),
    .top2bot_DIN_A13(top2bot_DIN_A[13]),
    .top2bot_DIN_A14(top2bot_DIN_A[14]),
    .top2bot_DIN_A15(top2bot_DIN_A[15]),
    .top2bot_WMASK_A0(top2bot_WMASK_A[0]),
    .top2bot_WMASK_A1(top2bot_WMASK_A[1]),
    .top2bot_ADDR_A0(top2bot_ADDR_A[0]),
    .top2bot_ADDR_A1(top2bot_ADDR_A[1]),
    .top2bot_ADDR_A2(top2bot_ADDR_A[2]),
    .top2bot_ADDR_A3(top2bot_ADDR_A[3]),
    .top2bot_ADDR_B0(top2bot_ADDR_B[0]),
    .top2bot_ADDR_B1(top2bot_ADDR_B[1]),
    .top2bot_ADDR_B2(top2bot_ADDR_B[2]),
    .top2bot_ADDR_B3(top2bot_ADDR_B[3]),
    .DOUT_A0(DOUT_A0),
    .DOUT_A1(DOUT_A1),
    .DOUT_A2(DOUT_A2),
    .DOUT_A3(DOUT_A3),
    .DOUT_A4(DOUT_A4),
    .DOUT_A5(DOUT_A5),
    .DOUT_A6(DOUT_A6),
    .DOUT_A7(DOUT_A7),
    .DOUT_A8(DOUT_A8),
    .DOUT_A9(DOUT_A9),
    .DOUT_A10(DOUT_A10),
    .DOUT_A11(DOUT_A11),
    .DOUT_A12(DOUT_A12),
    .DOUT_A13(DOUT_A13),
    .DOUT_A14(DOUT_A14),
    .DOUT_A15(DOUT_A15),
    .DOUT_A16(DOUT_A16),
    .DOUT_A17(DOUT_A17),
    .DOUT_A18(DOUT_A18),
    .DOUT_A19(DOUT_A19),
    .DOUT_A20(DOUT_A20),
    .DOUT_A21(DOUT_A21),
    .DOUT_A22(DOUT_A22),
    .DOUT_A23(DOUT_A23),
    .DOUT_A24(DOUT_A24),
    .DOUT_A25(DOUT_A25),
    .DOUT_A26(DOUT_A26),
    .DOUT_A27(DOUT_A27),
    .DOUT_A28(DOUT_A28),
    .DOUT_A29(DOUT_A29),
    .DOUT_A30(DOUT_A30),
    .DOUT_A31(DOUT_A31),
    .DOUT_B0(DOUT_B0),
    .DOUT_B1(DOUT_B1),
    .DOUT_B2(DOUT_B2),
    .DOUT_B3(DOUT_B3),
    .DOUT_B4(DOUT_B4),
    .DOUT_B5(DOUT_B5),
    .DOUT_B6(DOUT_B6),
    .DOUT_B7(DOUT_B7),
    .DOUT_B8(DOUT_B8),
    .DOUT_B9(DOUT_B9),
    .DOUT_B10(DOUT_B10),
    .DOUT_B11(DOUT_B11),
    .DOUT_B12(DOUT_B12),
    .DOUT_B13(DOUT_B13),
    .DOUT_B14(DOUT_B14),
    .DOUT_B15(DOUT_B15),
    .DOUT_B16(DOUT_B16),
    .DOUT_B17(DOUT_B17),
    .DOUT_B18(DOUT_B18),
    .DOUT_B19(DOUT_B19),
    .DOUT_B20(DOUT_B20),
    .DOUT_B21(DOUT_B21),
    .DOUT_B22(DOUT_B22),
    .DOUT_B23(DOUT_B23),
    .DOUT_B24(DOUT_B24),
    .DOUT_B25(DOUT_B25),
    .DOUT_B26(DOUT_B26),
    .DOUT_B27(DOUT_B27),
    .DOUT_B28(DOUT_B28),
    .DOUT_B29(DOUT_B29),
    .DOUT_B30(DOUT_B30),
    .DOUT_B31(DOUT_B31),
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
    .bot2top_DOUT_A0(bot2top_DOUT_A[0]),
    .bot2top_DOUT_A1(bot2top_DOUT_A[1]),
    .bot2top_DOUT_A2(bot2top_DOUT_A[2]),
    .bot2top_DOUT_A3(bot2top_DOUT_A[3]),
    .bot2top_DOUT_A4(bot2top_DOUT_A[4]),
    .bot2top_DOUT_A5(bot2top_DOUT_A[5]),
    .bot2top_DOUT_A6(bot2top_DOUT_A[6]),
    .bot2top_DOUT_A7(bot2top_DOUT_A[7]),
    .bot2top_DOUT_A8(bot2top_DOUT_A[8]),
    .bot2top_DOUT_A9(bot2top_DOUT_A[9]),
    .bot2top_DOUT_A10(bot2top_DOUT_A[10]),
    .bot2top_DOUT_A11(bot2top_DOUT_A[11]),
    .bot2top_DOUT_A12(bot2top_DOUT_A[12]),
    .bot2top_DOUT_A13(bot2top_DOUT_A[13]),
    .bot2top_DOUT_A14(bot2top_DOUT_A[14]),
    .bot2top_DOUT_A15(bot2top_DOUT_A[15]),
    .bot2top_DOUT_B0(bot2top_DOUT_B[0]),
    .bot2top_DOUT_B1(bot2top_DOUT_B[1]),
    .bot2top_DOUT_B2(bot2top_DOUT_B[2]),
    .bot2top_DOUT_B3(bot2top_DOUT_B[3]),
    .bot2top_DOUT_B4(bot2top_DOUT_B[4]),
    .bot2top_DOUT_B5(bot2top_DOUT_B[5]),
    .bot2top_DOUT_B6(bot2top_DOUT_B[6]),
    .bot2top_DOUT_B7(bot2top_DOUT_B[7]),
    .bot2top_DOUT_B8(bot2top_DOUT_B[8]),
    .bot2top_DOUT_B9(bot2top_DOUT_B[9]),
    .bot2top_DOUT_B10(bot2top_DOUT_B[10]),
    .bot2top_DOUT_B11(bot2top_DOUT_B[11]),
    .bot2top_DOUT_B12(bot2top_DOUT_B[12]),
    .bot2top_DOUT_B13(bot2top_DOUT_B[13]),
    .bot2top_DOUT_B14(bot2top_DOUT_B[14]),
    .bot2top_DOUT_B15(bot2top_DOUT_B[15]),
    .CSB_A(CSB_A),
    .WEB_A(WEB_A),
    .WMASK_A0(WMASK_A0),
    .WMASK_A1(WMASK_A1),
    .WMASK_A2(WMASK_A2),
    .WMASK_A3(WMASK_A3),
    .ADDR_A0(ADDR_A0),
    .ADDR_A1(ADDR_A1),
    .ADDR_A2(ADDR_A2),
    .ADDR_A3(ADDR_A3),
    .ADDR_A4(ADDR_A4),
    .ADDR_A5(ADDR_A5),
    .ADDR_A6(ADDR_A6),
    .ADDR_A7(ADDR_A7),
    .DIN_A0(DIN_A0),
    .DIN_A1(DIN_A1),
    .DIN_A2(DIN_A2),
    .DIN_A3(DIN_A3),
    .DIN_A4(DIN_A4),
    .DIN_A5(DIN_A5),
    .DIN_A6(DIN_A6),
    .DIN_A7(DIN_A7),
    .DIN_A8(DIN_A8),
    .DIN_A9(DIN_A9),
    .DIN_A10(DIN_A10),
    .DIN_A11(DIN_A11),
    .DIN_A12(DIN_A12),
    .DIN_A13(DIN_A13),
    .DIN_A14(DIN_A14),
    .DIN_A15(DIN_A15),
    .DIN_A16(DIN_A16),
    .DIN_A17(DIN_A17),
    .DIN_A18(DIN_A18),
    .DIN_A19(DIN_A19),
    .DIN_A20(DIN_A20),
    .DIN_A21(DIN_A21),
    .DIN_A22(DIN_A22),
    .DIN_A23(DIN_A23),
    .DIN_A24(DIN_A24),
    .DIN_A25(DIN_A25),
    .DIN_A26(DIN_A26),
    .DIN_A27(DIN_A27),
    .DIN_A28(DIN_A28),
    .DIN_A29(DIN_A29),
    .DIN_A30(DIN_A30),
    .DIN_A31(DIN_A31),
    .CSB_B(CSB_B),
    .ADDR_B0(ADDR_B0),
    .ADDR_B1(ADDR_B1),
    .ADDR_B2(ADDR_B2),
    .ADDR_B3(ADDR_B3),
    .ADDR_B4(ADDR_B4),
    .ADDR_B5(ADDR_B5),
    .ADDR_B6(ADDR_B6),
    .ADDR_B7(ADDR_B7),
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
    .ConfigBits(ConfigBits[288-1:0]),
    .ConfigBits_N(ConfigBits_N[288-1:0])
);

endmodule