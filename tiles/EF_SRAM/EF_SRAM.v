module EF_SRAM
    #(
`ifdef EMULATION
        parameter [639:0] Tile_X0Y0_Emulate_Bitstream=640'b0,
        parameter [639:0] Tile_X0Y1_Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32
    )
    (
    //Tile_X0Y0_Direction.NORTH
        output [3:0] Tile_X0Y0_N1BEG, //Port(Name=N1BEG, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [7:0] Tile_X0Y0_N2BEG, //Port(Name=N2BEG, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=8, Side=NORTH)
        output [7:0] Tile_X0Y0_N2BEGb, //Port(Name=N2BEGb, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=8, Side=NORTH)
        output [15:0] Tile_X0Y0_N4BEG, //Port(Name=N4BEG, IO=OUTPUT, XOffset=0, YOffset=-4, WireCount=4, Side=NORTH)
        input [3:0] Tile_X0Y0_S1END, //Port(Name=S1END, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [7:0] Tile_X0Y0_S2MID, //Port(Name=S2MID, IO=INPUT, XOffset=0, YOffset=1, WireCount=8, Side=NORTH)
        input [7:0] Tile_X0Y0_S2END, //Port(Name=S2END, IO=INPUT, XOffset=0, YOffset=1, WireCount=8, Side=NORTH)
        input [15:0] Tile_X0Y0_S4END, //Port(Name=S4END, IO=INPUT, XOffset=0, YOffset=4, WireCount=4, Side=NORTH)
    //Tile_X0Y0_Direction.EAST
        input [3:0] Tile_X0Y0_E1END, //Port(Name=E1END, IO=INPUT, XOffset=1, YOffset=0, WireCount=4, Side=WEST)
        input [7:0] Tile_X0Y0_E2MID, //Port(Name=E2MID, IO=INPUT, XOffset=1, YOffset=0, WireCount=8, Side=WEST)
        input [7:0] Tile_X0Y0_E2END, //Port(Name=E2END, IO=INPUT, XOffset=1, YOffset=0, WireCount=8, Side=WEST)
        input [15:0] Tile_X0Y0_EE4END, //Port(Name=EE4END, IO=INPUT, XOffset=4, YOffset=0, WireCount=4, Side=WEST)
        input [11:0] Tile_X0Y0_E6END, //Port(Name=E6END, IO=INPUT, XOffset=6, YOffset=0, WireCount=2, Side=WEST)
        output [3:0] Tile_X0Y0_W1BEG, //Port(Name=W1BEG, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=4, Side=WEST)
        output [7:0] Tile_X0Y0_W2BEG, //Port(Name=W2BEG, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=8, Side=WEST)
        output [7:0] Tile_X0Y0_W2BEGb, //Port(Name=W2BEGb, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=8, Side=WEST)
        output [15:0] Tile_X0Y0_WW4BEG, //Port(Name=WW4BEG, IO=OUTPUT, XOffset=-4, YOffset=0, WireCount=4, Side=WEST)
        output [11:0] Tile_X0Y0_W6BEG, //Port(Name=W6BEG, IO=OUTPUT, XOffset=-6, YOffset=0, WireCount=2, Side=WEST)
    //Tile_X0Y1_Direction.NORTH
        input [3:0] Tile_X0Y1_N1END, //Port(Name=N1END, IO=INPUT, XOffset=0, YOffset=-1, WireCount=4, Side=SOUTH)
        input [7:0] Tile_X0Y1_N2MID, //Port(Name=N2MID, IO=INPUT, XOffset=0, YOffset=-1, WireCount=8, Side=SOUTH)
        input [7:0] Tile_X0Y1_N2END, //Port(Name=N2END, IO=INPUT, XOffset=0, YOffset=-1, WireCount=8, Side=SOUTH)
        input [15:0] Tile_X0Y1_N4END, //Port(Name=N4END, IO=INPUT, XOffset=0, YOffset=-4, WireCount=4, Side=SOUTH)
        output [3:0] Tile_X0Y1_S1BEG, //Port(Name=S1BEG, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=4, Side=SOUTH)
        output [7:0] Tile_X0Y1_S2BEG, //Port(Name=S2BEG, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=8, Side=SOUTH)
        output [7:0] Tile_X0Y1_S2BEGb, //Port(Name=S2BEGb, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=8, Side=SOUTH)
        output [15:0] Tile_X0Y1_S4BEG, //Port(Name=S4BEG, IO=OUTPUT, XOffset=0, YOffset=4, WireCount=4, Side=SOUTH)
    //Tile_X0Y1_Direction.EAST
        input [3:0] Tile_X0Y1_E1END, //Port(Name=E1END, IO=INPUT, XOffset=1, YOffset=0, WireCount=4, Side=WEST)
        input [7:0] Tile_X0Y1_E2MID, //Port(Name=E2MID, IO=INPUT, XOffset=1, YOffset=0, WireCount=8, Side=WEST)
        input [7:0] Tile_X0Y1_E2END, //Port(Name=E2END, IO=INPUT, XOffset=1, YOffset=0, WireCount=8, Side=WEST)
        input [15:0] Tile_X0Y1_EE4END, //Port(Name=EE4END, IO=INPUT, XOffset=4, YOffset=0, WireCount=4, Side=WEST)
        input [11:0] Tile_X0Y1_E6END, //Port(Name=E6END, IO=INPUT, XOffset=6, YOffset=0, WireCount=2, Side=WEST)
        output [3:0] Tile_X0Y1_W1BEG, //Port(Name=W1BEG, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=4, Side=WEST)
        output [7:0] Tile_X0Y1_W2BEG, //Port(Name=W2BEG, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=8, Side=WEST)
        output [7:0] Tile_X0Y1_W2BEGb, //Port(Name=W2BEGb, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=8, Side=WEST)
        output [15:0] Tile_X0Y1_WW4BEG, //Port(Name=WW4BEG, IO=OUTPUT, XOffset=-4, YOffset=0, WireCount=4, Side=WEST)
        output [11:0] Tile_X0Y1_W6BEG, //Port(Name=W6BEG, IO=OUTPUT, XOffset=-6, YOffset=0, WireCount=2, Side=WEST)
    //Tile IO ports from BELs
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
        output [MaxFramesPerCol-1:0] Tile_X0Y0_FrameStrobe_O, //CONFIG_PORT
        input [FrameBitsPerRow-1:0] Tile_X0Y0_FrameData, //CONFIG_PORT
        output [FrameBitsPerRow-1:0] Tile_X0Y0_FrameData_O, //CONFIG_PORT
        input [FrameBitsPerRow-1:0] Tile_X0Y1_FrameData, //CONFIG_PORT
        input [MaxFramesPerCol-1:0] Tile_X0Y1_FrameStrobe, //CONFIG_PORT
        output [FrameBitsPerRow-1:0] Tile_X0Y1_FrameData_O, //CONFIG_PORT
        output Tile_X0Y0_UserCLKo,
        input Tile_X0Y1_UserCLK
);

 //signal declarations
 //Tile_X0Y0_Direction.NORTH
    wire[3:0] Tile_X0Y0_S1BEG; //Port(Name=S1BEG, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=4, Side=SOUTH)
    wire[7:0] Tile_X0Y0_S2BEG; //Port(Name=S2BEG, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=8, Side=SOUTH)
    wire[7:0] Tile_X0Y0_S2BEGb; //Port(Name=S2BEGb, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=8, Side=SOUTH)
    wire[15:0] Tile_X0Y0_S4BEG; //Port(Name=S4BEG, IO=OUTPUT, XOffset=0, YOffset=4, WireCount=4, Side=SOUTH)
    wire[15:0] Tile_X0Y0_top2bot_DI; //Port(Name=top2bot_DI, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=16, Side=SOUTH)
    wire[15:0] Tile_X0Y0_top2bot_BEN; //Port(Name=top2bot_BEN, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=16, Side=SOUTH)
    wire[4:0] Tile_X0Y0_top2bot_AD; //Port(Name=top2bot_AD, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=5, Side=SOUTH)
 //Tile_X0Y1_Direction.NORTH
    wire[3:0] Tile_X0Y1_N1BEG; //Port(Name=N1BEG, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
    wire[7:0] Tile_X0Y1_N2BEG; //Port(Name=N2BEG, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=8, Side=NORTH)
    wire[7:0] Tile_X0Y1_N2BEGb; //Port(Name=N2BEGb, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=8, Side=NORTH)
    wire[15:0] Tile_X0Y1_N4BEG; //Port(Name=N4BEG, IO=OUTPUT, XOffset=0, YOffset=-4, WireCount=4, Side=NORTH)
    wire[15:0] Tile_X0Y1_bot2top_DO; //Port(Name=bot2top_DO, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=16, Side=NORTH)
    wire[MaxFramesPerCol-1:0] Tile_X0Y1_FrameStrobe_O;
    wire Tile_X0Y1_UserCLKo;

EF_SRAM_top
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Tile_X0Y0_Emulate_Bitstream)
    )
`endif
    Tile_X0Y0_EF_SRAM_top
    (
    .N1END(Tile_X0Y1_N1BEG),
    .N2MID(Tile_X0Y1_N2BEG),
    .N2END(Tile_X0Y1_N2BEGb),
    .N4END(Tile_X0Y1_N4BEG),
    .bot2top_DO(Tile_X0Y1_bot2top_DO),
    .E1END(Tile_X0Y0_E1END),
    .E2MID(Tile_X0Y0_E2MID),
    .E2END(Tile_X0Y0_E2END),
    .EE4END(Tile_X0Y0_EE4END),
    .E6END(Tile_X0Y0_E6END),
    .S1END(Tile_X0Y0_S1END),
    .S2MID(Tile_X0Y0_S2MID),
    .S2END(Tile_X0Y0_S2END),
    .S4END(Tile_X0Y0_S4END),
    .N1BEG(Tile_X0Y0_N1BEG),
    .N2BEG(Tile_X0Y0_N2BEG),
    .N2BEGb(Tile_X0Y0_N2BEGb),
    .N4BEG(Tile_X0Y0_N4BEG),
    .S1BEG(Tile_X0Y0_S1BEG),
    .S2BEG(Tile_X0Y0_S2BEG),
    .S2BEGb(Tile_X0Y0_S2BEGb),
    .S4BEG(Tile_X0Y0_S4BEG),
    .top2bot_DI(Tile_X0Y0_top2bot_DI),
    .top2bot_BEN(Tile_X0Y0_top2bot_BEN),
    .top2bot_AD(Tile_X0Y0_top2bot_AD),
    .W1BEG(Tile_X0Y0_W1BEG),
    .W2BEG(Tile_X0Y0_W2BEG),
    .W2BEGb(Tile_X0Y0_W2BEGb),
    .WW4BEG(Tile_X0Y0_WW4BEG),
    .W6BEG(Tile_X0Y0_W6BEG),
    .UserCLK(Tile_X0Y1_UserCLKo),
    .UserCLKo(Tile_X0Y0_UserCLKo),
    .FrameData(Tile_X0Y0_FrameData),
    .FrameData_O(Tile_X0Y0_FrameData_O),
    .FrameStrobe(Tile_X0Y1_FrameStrobe_O),
    .FrameStrobe_O(Tile_X0Y0_FrameStrobe_O)
);

EF_SRAM_bot
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Tile_X0Y1_Emulate_Bitstream)
    )
`endif
    Tile_X0Y1_EF_SRAM_bot
    (
    .N1END(Tile_X0Y1_N1END),
    .N2MID(Tile_X0Y1_N2MID),
    .N2END(Tile_X0Y1_N2END),
    .N4END(Tile_X0Y1_N4END),
    .E1END(Tile_X0Y1_E1END),
    .E2MID(Tile_X0Y1_E2MID),
    .E2END(Tile_X0Y1_E2END),
    .EE4END(Tile_X0Y1_EE4END),
    .E6END(Tile_X0Y1_E6END),
    .S1END(Tile_X0Y0_S1BEG),
    .S2MID(Tile_X0Y0_S2BEG),
    .S2END(Tile_X0Y0_S2BEGb),
    .S4END(Tile_X0Y0_S4BEG),
    .top2bot_DI(Tile_X0Y0_top2bot_DI),
    .top2bot_BEN(Tile_X0Y0_top2bot_BEN),
    .top2bot_AD(Tile_X0Y0_top2bot_AD),
    .N1BEG(Tile_X0Y1_N1BEG),
    .N2BEG(Tile_X0Y1_N2BEG),
    .N2BEGb(Tile_X0Y1_N2BEGb),
    .N4BEG(Tile_X0Y1_N4BEG),
    .bot2top_DO(Tile_X0Y1_bot2top_DO),
    .S1BEG(Tile_X0Y1_S1BEG),
    .S2BEG(Tile_X0Y1_S2BEG),
    .S2BEGb(Tile_X0Y1_S2BEGb),
    .S4BEG(Tile_X0Y1_S4BEG),
    .W1BEG(Tile_X0Y1_W1BEG),
    .W2BEG(Tile_X0Y1_W2BEG),
    .W2BEGb(Tile_X0Y1_W2BEGb),
    .WW4BEG(Tile_X0Y1_WW4BEG),
    .W6BEG(Tile_X0Y1_W6BEG),
    .DO_SRAM0(DO_SRAM0),
    .DO_SRAM1(DO_SRAM1),
    .DO_SRAM2(DO_SRAM2),
    .DO_SRAM3(DO_SRAM3),
    .DO_SRAM4(DO_SRAM4),
    .DO_SRAM5(DO_SRAM5),
    .DO_SRAM6(DO_SRAM6),
    .DO_SRAM7(DO_SRAM7),
    .DO_SRAM8(DO_SRAM8),
    .DO_SRAM9(DO_SRAM9),
    .DO_SRAM10(DO_SRAM10),
    .DO_SRAM11(DO_SRAM11),
    .DO_SRAM12(DO_SRAM12),
    .DO_SRAM13(DO_SRAM13),
    .DO_SRAM14(DO_SRAM14),
    .DO_SRAM15(DO_SRAM15),
    .DO_SRAM16(DO_SRAM16),
    .DO_SRAM17(DO_SRAM17),
    .DO_SRAM18(DO_SRAM18),
    .DO_SRAM19(DO_SRAM19),
    .DO_SRAM20(DO_SRAM20),
    .DO_SRAM21(DO_SRAM21),
    .DO_SRAM22(DO_SRAM22),
    .DO_SRAM23(DO_SRAM23),
    .DO_SRAM24(DO_SRAM24),
    .DO_SRAM25(DO_SRAM25),
    .DO_SRAM26(DO_SRAM26),
    .DO_SRAM27(DO_SRAM27),
    .DO_SRAM28(DO_SRAM28),
    .DO_SRAM29(DO_SRAM29),
    .DO_SRAM30(DO_SRAM30),
    .DO_SRAM31(DO_SRAM31),
    .AD_SRAM0(AD_SRAM0),
    .AD_SRAM1(AD_SRAM1),
    .AD_SRAM2(AD_SRAM2),
    .AD_SRAM3(AD_SRAM3),
    .AD_SRAM4(AD_SRAM4),
    .AD_SRAM5(AD_SRAM5),
    .AD_SRAM6(AD_SRAM6),
    .AD_SRAM7(AD_SRAM7),
    .AD_SRAM8(AD_SRAM8),
    .AD_SRAM9(AD_SRAM9),
    .BEN_SRAM0(BEN_SRAM0),
    .BEN_SRAM1(BEN_SRAM1),
    .BEN_SRAM2(BEN_SRAM2),
    .BEN_SRAM3(BEN_SRAM3),
    .BEN_SRAM4(BEN_SRAM4),
    .BEN_SRAM5(BEN_SRAM5),
    .BEN_SRAM6(BEN_SRAM6),
    .BEN_SRAM7(BEN_SRAM7),
    .BEN_SRAM8(BEN_SRAM8),
    .BEN_SRAM9(BEN_SRAM9),
    .BEN_SRAM10(BEN_SRAM10),
    .BEN_SRAM11(BEN_SRAM11),
    .BEN_SRAM12(BEN_SRAM12),
    .BEN_SRAM13(BEN_SRAM13),
    .BEN_SRAM14(BEN_SRAM14),
    .BEN_SRAM15(BEN_SRAM15),
    .BEN_SRAM16(BEN_SRAM16),
    .BEN_SRAM17(BEN_SRAM17),
    .BEN_SRAM18(BEN_SRAM18),
    .BEN_SRAM19(BEN_SRAM19),
    .BEN_SRAM20(BEN_SRAM20),
    .BEN_SRAM21(BEN_SRAM21),
    .BEN_SRAM22(BEN_SRAM22),
    .BEN_SRAM23(BEN_SRAM23),
    .BEN_SRAM24(BEN_SRAM24),
    .BEN_SRAM25(BEN_SRAM25),
    .BEN_SRAM26(BEN_SRAM26),
    .BEN_SRAM27(BEN_SRAM27),
    .BEN_SRAM28(BEN_SRAM28),
    .BEN_SRAM29(BEN_SRAM29),
    .BEN_SRAM30(BEN_SRAM30),
    .BEN_SRAM31(BEN_SRAM31),
    .CLOCK_SRAM(CLOCK_SRAM),
    .DI_SRAM0(DI_SRAM0),
    .DI_SRAM1(DI_SRAM1),
    .DI_SRAM2(DI_SRAM2),
    .DI_SRAM3(DI_SRAM3),
    .DI_SRAM4(DI_SRAM4),
    .DI_SRAM5(DI_SRAM5),
    .DI_SRAM6(DI_SRAM6),
    .DI_SRAM7(DI_SRAM7),
    .DI_SRAM8(DI_SRAM8),
    .DI_SRAM9(DI_SRAM9),
    .DI_SRAM10(DI_SRAM10),
    .DI_SRAM11(DI_SRAM11),
    .DI_SRAM12(DI_SRAM12),
    .DI_SRAM13(DI_SRAM13),
    .DI_SRAM14(DI_SRAM14),
    .DI_SRAM15(DI_SRAM15),
    .DI_SRAM16(DI_SRAM16),
    .DI_SRAM17(DI_SRAM17),
    .DI_SRAM18(DI_SRAM18),
    .DI_SRAM19(DI_SRAM19),
    .DI_SRAM20(DI_SRAM20),
    .DI_SRAM21(DI_SRAM21),
    .DI_SRAM22(DI_SRAM22),
    .DI_SRAM23(DI_SRAM23),
    .DI_SRAM24(DI_SRAM24),
    .DI_SRAM25(DI_SRAM25),
    .DI_SRAM26(DI_SRAM26),
    .DI_SRAM27(DI_SRAM27),
    .DI_SRAM28(DI_SRAM28),
    .DI_SRAM29(DI_SRAM29),
    .DI_SRAM30(DI_SRAM30),
    .DI_SRAM31(DI_SRAM31),
    .EN_SRAM(EN_SRAM),
    .R_WB_SRAM(R_WB_SRAM),
    .UserCLK(Tile_X0Y1_UserCLK),
    .UserCLKo(Tile_X0Y1_UserCLKo),
    .FrameData(Tile_X0Y1_FrameData),
    .FrameData_O(Tile_X0Y1_FrameData_O),
    .FrameStrobe(Tile_X0Y1_FrameStrobe),
    .FrameStrobe_O(Tile_X0Y1_FrameStrobe_O)
);

endmodule