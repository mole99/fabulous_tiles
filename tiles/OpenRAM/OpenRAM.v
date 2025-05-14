module OpenRAM
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
    wire[15:0] Tile_X0Y0_top2bot_DIN_A; //Port(Name=top2bot_DIN_A, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=16, Side=SOUTH)
    wire[1:0] Tile_X0Y0_top2bot_WMASK_A; //Port(Name=top2bot_WMASK_A, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=2, Side=SOUTH)
    wire[3:0] Tile_X0Y0_top2bot_ADDR_A; //Port(Name=top2bot_ADDR_A, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=4, Side=SOUTH)
    wire[3:0] Tile_X0Y0_top2bot_ADDR_B; //Port(Name=top2bot_ADDR_B, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=4, Side=SOUTH)
 //Tile_X0Y1_Direction.NORTH
    wire[3:0] Tile_X0Y1_N1BEG; //Port(Name=N1BEG, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
    wire[7:0] Tile_X0Y1_N2BEG; //Port(Name=N2BEG, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=8, Side=NORTH)
    wire[7:0] Tile_X0Y1_N2BEGb; //Port(Name=N2BEGb, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=8, Side=NORTH)
    wire[15:0] Tile_X0Y1_N4BEG; //Port(Name=N4BEG, IO=OUTPUT, XOffset=0, YOffset=-4, WireCount=4, Side=NORTH)
    wire[15:0] Tile_X0Y1_bot2top_DOUT_A; //Port(Name=bot2top_DOUT_A, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=16, Side=NORTH)
    wire[15:0] Tile_X0Y1_bot2top_DOUT_B; //Port(Name=bot2top_DOUT_B, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=16, Side=NORTH)
    wire[MaxFramesPerCol-1:0] Tile_X0Y1_FrameStrobe_O;
    wire Tile_X0Y1_UserCLKo;

OpenRAM_top
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Tile_X0Y0_Emulate_Bitstream)
    )
`endif
    Tile_X0Y0_OpenRAM_top
    (
    .N1END(Tile_X0Y1_N1BEG),
    .N2MID(Tile_X0Y1_N2BEG),
    .N2END(Tile_X0Y1_N2BEGb),
    .N4END(Tile_X0Y1_N4BEG),
    .bot2top_DOUT_A(Tile_X0Y1_bot2top_DOUT_A),
    .bot2top_DOUT_B(Tile_X0Y1_bot2top_DOUT_B),
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
    .top2bot_DIN_A(Tile_X0Y0_top2bot_DIN_A),
    .top2bot_WMASK_A(Tile_X0Y0_top2bot_WMASK_A),
    .top2bot_ADDR_A(Tile_X0Y0_top2bot_ADDR_A),
    .top2bot_ADDR_B(Tile_X0Y0_top2bot_ADDR_B),
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

OpenRAM_bot
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Tile_X0Y1_Emulate_Bitstream)
    )
`endif
    Tile_X0Y1_OpenRAM_bot
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
    .top2bot_DIN_A(Tile_X0Y0_top2bot_DIN_A),
    .top2bot_WMASK_A(Tile_X0Y0_top2bot_WMASK_A),
    .top2bot_ADDR_A(Tile_X0Y0_top2bot_ADDR_A),
    .top2bot_ADDR_B(Tile_X0Y0_top2bot_ADDR_B),
    .N1BEG(Tile_X0Y1_N1BEG),
    .N2BEG(Tile_X0Y1_N2BEG),
    .N2BEGb(Tile_X0Y1_N2BEGb),
    .N4BEG(Tile_X0Y1_N4BEG),
    .bot2top_DOUT_A(Tile_X0Y1_bot2top_DOUT_A),
    .bot2top_DOUT_B(Tile_X0Y1_bot2top_DOUT_B),
    .S1BEG(Tile_X0Y1_S1BEG),
    .S2BEG(Tile_X0Y1_S2BEG),
    .S2BEGb(Tile_X0Y1_S2BEGb),
    .S4BEG(Tile_X0Y1_S4BEG),
    .W1BEG(Tile_X0Y1_W1BEG),
    .W2BEG(Tile_X0Y1_W2BEG),
    .W2BEGb(Tile_X0Y1_W2BEGb),
    .WW4BEG(Tile_X0Y1_WW4BEG),
    .W6BEG(Tile_X0Y1_W6BEG),
    .DOUT_A_SRAM0(DOUT_A_SRAM0),
    .DOUT_A_SRAM1(DOUT_A_SRAM1),
    .DOUT_A_SRAM2(DOUT_A_SRAM2),
    .DOUT_A_SRAM3(DOUT_A_SRAM3),
    .DOUT_A_SRAM4(DOUT_A_SRAM4),
    .DOUT_A_SRAM5(DOUT_A_SRAM5),
    .DOUT_A_SRAM6(DOUT_A_SRAM6),
    .DOUT_A_SRAM7(DOUT_A_SRAM7),
    .DOUT_A_SRAM8(DOUT_A_SRAM8),
    .DOUT_A_SRAM9(DOUT_A_SRAM9),
    .DOUT_A_SRAM10(DOUT_A_SRAM10),
    .DOUT_A_SRAM11(DOUT_A_SRAM11),
    .DOUT_A_SRAM12(DOUT_A_SRAM12),
    .DOUT_A_SRAM13(DOUT_A_SRAM13),
    .DOUT_A_SRAM14(DOUT_A_SRAM14),
    .DOUT_A_SRAM15(DOUT_A_SRAM15),
    .DOUT_A_SRAM16(DOUT_A_SRAM16),
    .DOUT_A_SRAM17(DOUT_A_SRAM17),
    .DOUT_A_SRAM18(DOUT_A_SRAM18),
    .DOUT_A_SRAM19(DOUT_A_SRAM19),
    .DOUT_A_SRAM20(DOUT_A_SRAM20),
    .DOUT_A_SRAM21(DOUT_A_SRAM21),
    .DOUT_A_SRAM22(DOUT_A_SRAM22),
    .DOUT_A_SRAM23(DOUT_A_SRAM23),
    .DOUT_A_SRAM24(DOUT_A_SRAM24),
    .DOUT_A_SRAM25(DOUT_A_SRAM25),
    .DOUT_A_SRAM26(DOUT_A_SRAM26),
    .DOUT_A_SRAM27(DOUT_A_SRAM27),
    .DOUT_A_SRAM28(DOUT_A_SRAM28),
    .DOUT_A_SRAM29(DOUT_A_SRAM29),
    .DOUT_A_SRAM30(DOUT_A_SRAM30),
    .DOUT_A_SRAM31(DOUT_A_SRAM31),
    .DOUT_B_SRAM0(DOUT_B_SRAM0),
    .DOUT_B_SRAM1(DOUT_B_SRAM1),
    .DOUT_B_SRAM2(DOUT_B_SRAM2),
    .DOUT_B_SRAM3(DOUT_B_SRAM3),
    .DOUT_B_SRAM4(DOUT_B_SRAM4),
    .DOUT_B_SRAM5(DOUT_B_SRAM5),
    .DOUT_B_SRAM6(DOUT_B_SRAM6),
    .DOUT_B_SRAM7(DOUT_B_SRAM7),
    .DOUT_B_SRAM8(DOUT_B_SRAM8),
    .DOUT_B_SRAM9(DOUT_B_SRAM9),
    .DOUT_B_SRAM10(DOUT_B_SRAM10),
    .DOUT_B_SRAM11(DOUT_B_SRAM11),
    .DOUT_B_SRAM12(DOUT_B_SRAM12),
    .DOUT_B_SRAM13(DOUT_B_SRAM13),
    .DOUT_B_SRAM14(DOUT_B_SRAM14),
    .DOUT_B_SRAM15(DOUT_B_SRAM15),
    .DOUT_B_SRAM16(DOUT_B_SRAM16),
    .DOUT_B_SRAM17(DOUT_B_SRAM17),
    .DOUT_B_SRAM18(DOUT_B_SRAM18),
    .DOUT_B_SRAM19(DOUT_B_SRAM19),
    .DOUT_B_SRAM20(DOUT_B_SRAM20),
    .DOUT_B_SRAM21(DOUT_B_SRAM21),
    .DOUT_B_SRAM22(DOUT_B_SRAM22),
    .DOUT_B_SRAM23(DOUT_B_SRAM23),
    .DOUT_B_SRAM24(DOUT_B_SRAM24),
    .DOUT_B_SRAM25(DOUT_B_SRAM25),
    .DOUT_B_SRAM26(DOUT_B_SRAM26),
    .DOUT_B_SRAM27(DOUT_B_SRAM27),
    .DOUT_B_SRAM28(DOUT_B_SRAM28),
    .DOUT_B_SRAM29(DOUT_B_SRAM29),
    .DOUT_B_SRAM30(DOUT_B_SRAM30),
    .DOUT_B_SRAM31(DOUT_B_SRAM31),
    .CONFIGURED_top(CONFIGURED_top),
    .CLK_A_SRAM(CLK_A_SRAM),
    .CSB_A_SRAM(CSB_A_SRAM),
    .WEB_A_SRAM(WEB_A_SRAM),
    .WMASK_A_SRAM0(WMASK_A_SRAM0),
    .WMASK_A_SRAM1(WMASK_A_SRAM1),
    .WMASK_A_SRAM2(WMASK_A_SRAM2),
    .WMASK_A_SRAM3(WMASK_A_SRAM3),
    .ADDR_A_SRAM0(ADDR_A_SRAM0),
    .ADDR_A_SRAM1(ADDR_A_SRAM1),
    .ADDR_A_SRAM2(ADDR_A_SRAM2),
    .ADDR_A_SRAM3(ADDR_A_SRAM3),
    .ADDR_A_SRAM4(ADDR_A_SRAM4),
    .ADDR_A_SRAM5(ADDR_A_SRAM5),
    .ADDR_A_SRAM6(ADDR_A_SRAM6),
    .ADDR_A_SRAM7(ADDR_A_SRAM7),
    .DIN_A_SRAM0(DIN_A_SRAM0),
    .DIN_A_SRAM1(DIN_A_SRAM1),
    .DIN_A_SRAM2(DIN_A_SRAM2),
    .DIN_A_SRAM3(DIN_A_SRAM3),
    .DIN_A_SRAM4(DIN_A_SRAM4),
    .DIN_A_SRAM5(DIN_A_SRAM5),
    .DIN_A_SRAM6(DIN_A_SRAM6),
    .DIN_A_SRAM7(DIN_A_SRAM7),
    .DIN_A_SRAM8(DIN_A_SRAM8),
    .DIN_A_SRAM9(DIN_A_SRAM9),
    .DIN_A_SRAM10(DIN_A_SRAM10),
    .DIN_A_SRAM11(DIN_A_SRAM11),
    .DIN_A_SRAM12(DIN_A_SRAM12),
    .DIN_A_SRAM13(DIN_A_SRAM13),
    .DIN_A_SRAM14(DIN_A_SRAM14),
    .DIN_A_SRAM15(DIN_A_SRAM15),
    .DIN_A_SRAM16(DIN_A_SRAM16),
    .DIN_A_SRAM17(DIN_A_SRAM17),
    .DIN_A_SRAM18(DIN_A_SRAM18),
    .DIN_A_SRAM19(DIN_A_SRAM19),
    .DIN_A_SRAM20(DIN_A_SRAM20),
    .DIN_A_SRAM21(DIN_A_SRAM21),
    .DIN_A_SRAM22(DIN_A_SRAM22),
    .DIN_A_SRAM23(DIN_A_SRAM23),
    .DIN_A_SRAM24(DIN_A_SRAM24),
    .DIN_A_SRAM25(DIN_A_SRAM25),
    .DIN_A_SRAM26(DIN_A_SRAM26),
    .DIN_A_SRAM27(DIN_A_SRAM27),
    .DIN_A_SRAM28(DIN_A_SRAM28),
    .DIN_A_SRAM29(DIN_A_SRAM29),
    .DIN_A_SRAM30(DIN_A_SRAM30),
    .DIN_A_SRAM31(DIN_A_SRAM31),
    .CLK_B_SRAM(CLK_B_SRAM),
    .CSB_B_SRAM(CSB_B_SRAM),
    .ADDR_B_SRAM0(ADDR_B_SRAM0),
    .ADDR_B_SRAM1(ADDR_B_SRAM1),
    .ADDR_B_SRAM2(ADDR_B_SRAM2),
    .ADDR_B_SRAM3(ADDR_B_SRAM3),
    .ADDR_B_SRAM4(ADDR_B_SRAM4),
    .ADDR_B_SRAM5(ADDR_B_SRAM5),
    .ADDR_B_SRAM6(ADDR_B_SRAM6),
    .ADDR_B_SRAM7(ADDR_B_SRAM7),
    .UserCLK(Tile_X0Y1_UserCLK),
    .UserCLKo(Tile_X0Y1_UserCLKo),
    .FrameData(Tile_X0Y1_FrameData),
    .FrameData_O(Tile_X0Y1_FrameData_O),
    .FrameStrobe(Tile_X0Y1_FrameStrobe),
    .FrameStrobe_O(Tile_X0Y1_FrameStrobe_O)
);

endmodule