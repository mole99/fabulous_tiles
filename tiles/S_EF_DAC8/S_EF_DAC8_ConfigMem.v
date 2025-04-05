module S_EF_DAC8_ConfigMem
    #(
`ifdef EMULATION
        parameter [639:0] Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32,
        parameter NoConfigBits=48
    )
    (
        input [FrameBitsPerRow - 1:0] FrameData,
        input [MaxFramesPerCol - 1:0] FrameStrobe,
        output [NoConfigBits - 1:0] ConfigBits,
        output [NoConfigBits - 1:0] ConfigBits_N
    );

`ifdef EMULATION
assign ConfigBits[47] = Emulate_Bitstream[31];
assign ConfigBits[46] = Emulate_Bitstream[30];
assign ConfigBits[45] = Emulate_Bitstream[29];
assign ConfigBits[44] = Emulate_Bitstream[28];
assign ConfigBits[43] = Emulate_Bitstream[27];
assign ConfigBits[42] = Emulate_Bitstream[26];
assign ConfigBits[41] = Emulate_Bitstream[25];
assign ConfigBits[40] = Emulate_Bitstream[24];
assign ConfigBits[39] = Emulate_Bitstream[23];
assign ConfigBits[38] = Emulate_Bitstream[22];
assign ConfigBits[37] = Emulate_Bitstream[21];
assign ConfigBits[36] = Emulate_Bitstream[20];
assign ConfigBits[35] = Emulate_Bitstream[19];
assign ConfigBits[34] = Emulate_Bitstream[18];
assign ConfigBits[33] = Emulate_Bitstream[17];
assign ConfigBits[32] = Emulate_Bitstream[16];
assign ConfigBits[31] = Emulate_Bitstream[15];
assign ConfigBits[30] = Emulate_Bitstream[14];
assign ConfigBits[29] = Emulate_Bitstream[13];
assign ConfigBits[28] = Emulate_Bitstream[12];
assign ConfigBits[27] = Emulate_Bitstream[11];
assign ConfigBits[26] = Emulate_Bitstream[10];
assign ConfigBits[25] = Emulate_Bitstream[9];
assign ConfigBits[24] = Emulate_Bitstream[8];
assign ConfigBits[23] = Emulate_Bitstream[7];
assign ConfigBits[22] = Emulate_Bitstream[6];
assign ConfigBits[21] = Emulate_Bitstream[5];
assign ConfigBits[20] = Emulate_Bitstream[4];
assign ConfigBits[19] = Emulate_Bitstream[3];
assign ConfigBits[18] = Emulate_Bitstream[2];
assign ConfigBits[17] = Emulate_Bitstream[1];
assign ConfigBits[16] = Emulate_Bitstream[0];
assign ConfigBits[15] = Emulate_Bitstream[63];
assign ConfigBits[14] = Emulate_Bitstream[62];
assign ConfigBits[13] = Emulate_Bitstream[61];
assign ConfigBits[12] = Emulate_Bitstream[60];
assign ConfigBits[11] = Emulate_Bitstream[59];
assign ConfigBits[10] = Emulate_Bitstream[58];
assign ConfigBits[9] = Emulate_Bitstream[57];
assign ConfigBits[8] = Emulate_Bitstream[56];
assign ConfigBits[7] = Emulate_Bitstream[55];
assign ConfigBits[6] = Emulate_Bitstream[54];
assign ConfigBits[5] = Emulate_Bitstream[53];
assign ConfigBits[4] = Emulate_Bitstream[52];
assign ConfigBits[3] = Emulate_Bitstream[51];
assign ConfigBits[2] = Emulate_Bitstream[50];
assign ConfigBits[1] = Emulate_Bitstream[49];
assign ConfigBits[0] = Emulate_Bitstream[48];
`else

 //instantiate frame latches
LHQD1 Inst_frame0_bit31 (
    .D(FrameData[31]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[47]),
    .QN(ConfigBits_N[47])
);

LHQD1 Inst_frame0_bit30 (
    .D(FrameData[30]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[46]),
    .QN(ConfigBits_N[46])
);

LHQD1 Inst_frame0_bit29 (
    .D(FrameData[29]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[45]),
    .QN(ConfigBits_N[45])
);

LHQD1 Inst_frame0_bit28 (
    .D(FrameData[28]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[44]),
    .QN(ConfigBits_N[44])
);

LHQD1 Inst_frame0_bit27 (
    .D(FrameData[27]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[43]),
    .QN(ConfigBits_N[43])
);

LHQD1 Inst_frame0_bit26 (
    .D(FrameData[26]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[42]),
    .QN(ConfigBits_N[42])
);

LHQD1 Inst_frame0_bit25 (
    .D(FrameData[25]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[41]),
    .QN(ConfigBits_N[41])
);

LHQD1 Inst_frame0_bit24 (
    .D(FrameData[24]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[40]),
    .QN(ConfigBits_N[40])
);

LHQD1 Inst_frame0_bit23 (
    .D(FrameData[23]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[39]),
    .QN(ConfigBits_N[39])
);

LHQD1 Inst_frame0_bit22 (
    .D(FrameData[22]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[38]),
    .QN(ConfigBits_N[38])
);

LHQD1 Inst_frame0_bit21 (
    .D(FrameData[21]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[37]),
    .QN(ConfigBits_N[37])
);

LHQD1 Inst_frame0_bit20 (
    .D(FrameData[20]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[36]),
    .QN(ConfigBits_N[36])
);

LHQD1 Inst_frame0_bit19 (
    .D(FrameData[19]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[35]),
    .QN(ConfigBits_N[35])
);

LHQD1 Inst_frame0_bit18 (
    .D(FrameData[18]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[34]),
    .QN(ConfigBits_N[34])
);

LHQD1 Inst_frame0_bit17 (
    .D(FrameData[17]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[33]),
    .QN(ConfigBits_N[33])
);

LHQD1 Inst_frame0_bit16 (
    .D(FrameData[16]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[32]),
    .QN(ConfigBits_N[32])
);

LHQD1 Inst_frame0_bit15 (
    .D(FrameData[15]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[31]),
    .QN(ConfigBits_N[31])
);

LHQD1 Inst_frame0_bit14 (
    .D(FrameData[14]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[30]),
    .QN(ConfigBits_N[30])
);

LHQD1 Inst_frame0_bit13 (
    .D(FrameData[13]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[29]),
    .QN(ConfigBits_N[29])
);

LHQD1 Inst_frame0_bit12 (
    .D(FrameData[12]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[28]),
    .QN(ConfigBits_N[28])
);

LHQD1 Inst_frame0_bit11 (
    .D(FrameData[11]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[27]),
    .QN(ConfigBits_N[27])
);

LHQD1 Inst_frame0_bit10 (
    .D(FrameData[10]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[26]),
    .QN(ConfigBits_N[26])
);

LHQD1 Inst_frame0_bit9 (
    .D(FrameData[9]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[25]),
    .QN(ConfigBits_N[25])
);

LHQD1 Inst_frame0_bit8 (
    .D(FrameData[8]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[24]),
    .QN(ConfigBits_N[24])
);

LHQD1 Inst_frame0_bit7 (
    .D(FrameData[7]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[23]),
    .QN(ConfigBits_N[23])
);

LHQD1 Inst_frame0_bit6 (
    .D(FrameData[6]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[22]),
    .QN(ConfigBits_N[22])
);

LHQD1 Inst_frame0_bit5 (
    .D(FrameData[5]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[21]),
    .QN(ConfigBits_N[21])
);

LHQD1 Inst_frame0_bit4 (
    .D(FrameData[4]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[20]),
    .QN(ConfigBits_N[20])
);

LHQD1 Inst_frame0_bit3 (
    .D(FrameData[3]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[19]),
    .QN(ConfigBits_N[19])
);

LHQD1 Inst_frame0_bit2 (
    .D(FrameData[2]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[18]),
    .QN(ConfigBits_N[18])
);

LHQD1 Inst_frame0_bit1 (
    .D(FrameData[1]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[17]),
    .QN(ConfigBits_N[17])
);

LHQD1 Inst_frame0_bit0 (
    .D(FrameData[0]),
    .E(FrameStrobe[0]),
    .Q(ConfigBits[16]),
    .QN(ConfigBits_N[16])
);

LHQD1 Inst_frame1_bit31 (
    .D(FrameData[31]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[15]),
    .QN(ConfigBits_N[15])
);

LHQD1 Inst_frame1_bit30 (
    .D(FrameData[30]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[14]),
    .QN(ConfigBits_N[14])
);

LHQD1 Inst_frame1_bit29 (
    .D(FrameData[29]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[13]),
    .QN(ConfigBits_N[13])
);

LHQD1 Inst_frame1_bit28 (
    .D(FrameData[28]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[12]),
    .QN(ConfigBits_N[12])
);

LHQD1 Inst_frame1_bit27 (
    .D(FrameData[27]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[11]),
    .QN(ConfigBits_N[11])
);

LHQD1 Inst_frame1_bit26 (
    .D(FrameData[26]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[10]),
    .QN(ConfigBits_N[10])
);

LHQD1 Inst_frame1_bit25 (
    .D(FrameData[25]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[9]),
    .QN(ConfigBits_N[9])
);

LHQD1 Inst_frame1_bit24 (
    .D(FrameData[24]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[8]),
    .QN(ConfigBits_N[8])
);

LHQD1 Inst_frame1_bit23 (
    .D(FrameData[23]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[7]),
    .QN(ConfigBits_N[7])
);

LHQD1 Inst_frame1_bit22 (
    .D(FrameData[22]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[6]),
    .QN(ConfigBits_N[6])
);

LHQD1 Inst_frame1_bit21 (
    .D(FrameData[21]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[5]),
    .QN(ConfigBits_N[5])
);

LHQD1 Inst_frame1_bit20 (
    .D(FrameData[20]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[4]),
    .QN(ConfigBits_N[4])
);

LHQD1 Inst_frame1_bit19 (
    .D(FrameData[19]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[3]),
    .QN(ConfigBits_N[3])
);

LHQD1 Inst_frame1_bit18 (
    .D(FrameData[18]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[2]),
    .QN(ConfigBits_N[2])
);

LHQD1 Inst_frame1_bit17 (
    .D(FrameData[17]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[1]),
    .QN(ConfigBits_N[1])
);

LHQD1 Inst_frame1_bit16 (
    .D(FrameData[16]),
    .E(FrameStrobe[1]),
    .Q(ConfigBits[0]),
    .QN(ConfigBits_N[0])
);

`endif
endmodule