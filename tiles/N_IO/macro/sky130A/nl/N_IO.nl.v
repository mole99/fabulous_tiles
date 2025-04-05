module N_IO (A_I_top,
    A_O_top,
    A_T_top,
    A_config_C_bit0,
    A_config_C_bit1,
    A_config_C_bit2,
    A_config_C_bit3,
    B_I_top,
    B_O_top,
    B_T_top,
    B_config_C_bit0,
    B_config_C_bit1,
    B_config_C_bit2,
    B_config_C_bit3,
    Ci,
    UserCLK,
    UserCLKo,
    FrameData,
    FrameData_O,
    FrameStrobe,
    FrameStrobe_O,
    N1END,
    N2END,
    N2MID,
    N4END,
    NN4END,
    S1BEG,
    S2BEG,
    S2BEGb,
    S4BEG,
    SS4BEG);
 output A_I_top;
 input A_O_top;
 output A_T_top;
 output A_config_C_bit0;
 output A_config_C_bit1;
 output A_config_C_bit2;
 output A_config_C_bit3;
 output B_I_top;
 input B_O_top;
 output B_T_top;
 output B_config_C_bit0;
 output B_config_C_bit1;
 output B_config_C_bit2;
 output B_config_C_bit3;
 input Ci;
 input UserCLK;
 output UserCLKo;
 input [31:0] FrameData;
 output [31:0] FrameData_O;
 input [19:0] FrameStrobe;
 output [19:0] FrameStrobe_O;
 input [3:0] N1END;
 input [7:0] N2END;
 input [7:0] N2MID;
 input [15:0] N4END;
 input [15:0] NN4END;
 output [3:0] S1BEG;
 output [7:0] S2BEG;
 output [7:0] S2BEGb;
 output [15:0] S4BEG;
 output [15:0] SS4BEG;

 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net130;
 wire net131;
 wire net132;
 wire net133;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire net138;
 wire net139;
 wire net140;
 wire net141;
 wire net142;
 wire net143;
 wire net144;
 wire net145;
 wire net146;
 wire net147;
 wire net148;
 wire net149;
 wire net150;
 wire net151;
 wire net152;
 wire net153;
 wire net154;
 wire net155;
 wire net156;
 wire net157;
 wire net158;
 wire net159;
 wire net160;
 wire net161;
 wire net162;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire net167;
 wire \Inst_A_IO_1_bidirectional_frame_config_pass.Q ;
 wire \Inst_B_IO_1_bidirectional_frame_config_pass.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit0.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit1.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit10.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit11.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit12.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit13.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit14.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit15.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit16.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit17.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit18.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit19.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit2.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit20.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit21.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit22.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit23.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit24.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit25.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit26.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit27.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit28.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit29.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit3.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit30.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit31.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit4.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit5.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit6.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit7.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit8.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame0_bit9.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit0.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit1.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit10.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit11.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit12.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit13.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit14.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit15.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit16.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit17.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit18.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit19.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit2.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit20.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit21.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit22.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit23.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit24.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit25.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit26.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit27.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit28.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit29.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit3.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit30.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit31.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit4.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit5.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit6.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit7.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit8.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame1_bit9.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit0.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit1.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit10.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit11.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit12.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit13.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit14.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit15.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit16.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit17.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit18.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit19.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit2.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit20.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit21.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit22.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit23.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit24.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit25.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit26.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit27.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit28.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit29.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit3.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit30.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit31.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit4.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit5.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit6.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit7.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit8.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame2_bit9.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit14.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit15.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit16.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit17.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit18.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit19.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit20.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit21.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit22.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit23.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit24.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit25.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit26.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit27.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit28.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit29.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit30.Q ;
 wire \Inst_N_IO_ConfigMem.Inst_frame3_bit31.Q ;
 wire \Inst_N_IO_switch_matrix.S1BEG0 ;
 wire \Inst_N_IO_switch_matrix.S1BEG1 ;
 wire \Inst_N_IO_switch_matrix.S1BEG2 ;
 wire \Inst_N_IO_switch_matrix.S1BEG3 ;
 wire \Inst_N_IO_switch_matrix.S2BEG0 ;
 wire \Inst_N_IO_switch_matrix.S2BEG1 ;
 wire \Inst_N_IO_switch_matrix.S2BEG2 ;
 wire \Inst_N_IO_switch_matrix.S2BEG3 ;
 wire \Inst_N_IO_switch_matrix.S2BEG4 ;
 wire \Inst_N_IO_switch_matrix.S2BEG5 ;
 wire \Inst_N_IO_switch_matrix.S2BEG6 ;
 wire \Inst_N_IO_switch_matrix.S2BEG7 ;
 wire \Inst_N_IO_switch_matrix.S2BEGb0 ;
 wire \Inst_N_IO_switch_matrix.S2BEGb1 ;
 wire \Inst_N_IO_switch_matrix.S2BEGb2 ;
 wire \Inst_N_IO_switch_matrix.S2BEGb3 ;
 wire \Inst_N_IO_switch_matrix.S2BEGb4 ;
 wire \Inst_N_IO_switch_matrix.S2BEGb5 ;
 wire \Inst_N_IO_switch_matrix.S2BEGb6 ;
 wire \Inst_N_IO_switch_matrix.S2BEGb7 ;
 wire \Inst_N_IO_switch_matrix.S4BEG0 ;
 wire \Inst_N_IO_switch_matrix.S4BEG1 ;
 wire \Inst_N_IO_switch_matrix.S4BEG10 ;
 wire \Inst_N_IO_switch_matrix.S4BEG11 ;
 wire \Inst_N_IO_switch_matrix.S4BEG12 ;
 wire \Inst_N_IO_switch_matrix.S4BEG13 ;
 wire \Inst_N_IO_switch_matrix.S4BEG14 ;
 wire \Inst_N_IO_switch_matrix.S4BEG15 ;
 wire \Inst_N_IO_switch_matrix.S4BEG2 ;
 wire \Inst_N_IO_switch_matrix.S4BEG3 ;
 wire \Inst_N_IO_switch_matrix.S4BEG4 ;
 wire \Inst_N_IO_switch_matrix.S4BEG5 ;
 wire \Inst_N_IO_switch_matrix.S4BEG6 ;
 wire \Inst_N_IO_switch_matrix.S4BEG7 ;
 wire \Inst_N_IO_switch_matrix.S4BEG8 ;
 wire \Inst_N_IO_switch_matrix.S4BEG9 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG0 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG1 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG10 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG11 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG12 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG13 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG14 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG15 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG2 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG3 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG4 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG5 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG6 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG7 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG8 ;
 wire \Inst_N_IO_switch_matrix.SS4BEG9 ;
 wire net168;
 wire net169;
 wire net170;
 wire net171;
 wire net172;
 wire net173;
 wire net174;
 wire net175;
 wire net176;
 wire net177;
 wire net178;
 wire net179;
 wire net180;
 wire net181;
 wire net182;
 wire net183;
 wire net184;
 wire net185;
 wire net186;
 wire net187;
 wire net188;
 wire net189;
 wire net190;
 wire net191;
 wire net192;
 wire net193;
 wire net194;
 wire net195;
 wire net196;
 wire net197;
 wire net198;
 wire net199;
 wire net200;
 wire net201;
 wire net202;
 wire net203;
 wire net204;
 wire net205;
 wire net206;
 wire net207;
 wire net208;
 wire net209;
 wire net210;
 wire net211;
 wire net212;
 wire net213;
 wire net214;
 wire net215;
 wire net216;
 wire net217;
 wire net218;
 wire net219;
 wire net220;
 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire UserCLK_regs;
 wire clknet_0_UserCLK;
 wire clknet_1_0__leaf_UserCLK;
 wire clknet_0_UserCLK_regs;
 wire clknet_1_0__leaf_UserCLK_regs;
 wire clknet_1_1__leaf_UserCLK_regs;

 sky130_fd_sc_hd__mux4_1 _032_ (.A0(net50),
    .A1(net81),
    .A2(net97),
    .A3(net90),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame3_bit26.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame3_bit27.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEG4 ));
 sky130_fd_sc_hd__mux4_1 _033_ (.A0(net51),
    .A1(net82),
    .A2(net98),
    .A3(net91),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame3_bit24.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame3_bit25.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEG3 ));
 sky130_fd_sc_hd__mux4_1 _034_ (.A0(net69),
    .A1(net83),
    .A2(net99),
    .A3(net92),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame3_bit22.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame3_bit23.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEG2 ));
 sky130_fd_sc_hd__mux4_1 _035_ (.A0(net70),
    .A1(net84),
    .A2(net100),
    .A3(net93),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame3_bit20.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame3_bit21.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEG1 ));
 sky130_fd_sc_hd__mux4_1 _036_ (.A0(net71),
    .A1(net85),
    .A2(net101),
    .A3(net94),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame3_bit18.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame3_bit19.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEG0 ));
 sky130_fd_sc_hd__mux2_1 _037_ (.A0(net35),
    .A1(\Inst_B_IO_1_bidirectional_frame_config_pass.Q ),
    .S(\Inst_N_IO_ConfigMem.Inst_frame3_bit17.Q ),
    .X(\Inst_N_IO_switch_matrix.S1BEG3 ));
 sky130_fd_sc_hd__mux2_1 _038_ (.A0(net36),
    .A1(net2),
    .S(\Inst_N_IO_ConfigMem.Inst_frame3_bit16.Q ),
    .X(\Inst_N_IO_switch_matrix.S1BEG2 ));
 sky130_fd_sc_hd__mux2_1 _039_ (.A0(net37),
    .A1(\Inst_A_IO_1_bidirectional_frame_config_pass.Q ),
    .S(\Inst_N_IO_ConfigMem.Inst_frame3_bit15.Q ),
    .X(\Inst_N_IO_switch_matrix.S1BEG1 ));
 sky130_fd_sc_hd__mux2_1 _040_ (.A0(net38),
    .A1(net1),
    .S(\Inst_N_IO_ConfigMem.Inst_frame3_bit14.Q ),
    .X(\Inst_N_IO_switch_matrix.S1BEG0 ));
 sky130_fd_sc_hd__mux2_1 _041_ (.A0(net71),
    .A1(net40),
    .S(\Inst_N_IO_ConfigMem.Inst_frame0_bit23.Q ),
    .X(_020_));
 sky130_fd_sc_hd__and3b_1 _042_ (.A_N(\Inst_N_IO_ConfigMem.Inst_frame0_bit23.Q ),
    .B(\Inst_N_IO_ConfigMem.Inst_frame0_bit24.Q ),
    .C(net42),
    .X(_021_));
 sky130_fd_sc_hd__a211oi_1 _043_ (.A1(_004_),
    .A2(_020_),
    .B1(_021_),
    .C1(\Inst_N_IO_ConfigMem.Inst_frame0_bit22.Q ),
    .Y(_022_));
 sky130_fd_sc_hd__or3b_1 _044_ (.A(\Inst_N_IO_ConfigMem.Inst_frame0_bit23.Q ),
    .B(\Inst_N_IO_ConfigMem.Inst_frame0_bit24.Q ),
    .C_N(net39),
    .X(_023_));
 sky130_fd_sc_hd__o21ai_1 _045_ (.A1(net43),
    .A2(\Inst_N_IO_ConfigMem.Inst_frame0_bit23.Q ),
    .B1(\Inst_N_IO_ConfigMem.Inst_frame0_bit24.Q ),
    .Y(_024_));
 sky130_fd_sc_hd__nand2_1 _046_ (.A(net41),
    .B(\Inst_N_IO_ConfigMem.Inst_frame0_bit23.Q ),
    .Y(_025_));
 sky130_fd_sc_hd__a41o_1 _047_ (.A1(\Inst_N_IO_ConfigMem.Inst_frame0_bit22.Q ),
    .A2(_023_),
    .A3(_024_),
    .A4(_025_),
    .B1(_022_),
    .X(net105));
 sky130_fd_sc_hd__mux2_1 _048_ (.A0(net70),
    .A1(net39),
    .S(\Inst_N_IO_ConfigMem.Inst_frame0_bit30.Q ),
    .X(_026_));
 sky130_fd_sc_hd__and3b_1 _049_ (.A_N(\Inst_N_IO_ConfigMem.Inst_frame0_bit30.Q ),
    .B(\Inst_N_IO_ConfigMem.Inst_frame0_bit31.Q ),
    .C(net44),
    .X(_027_));
 sky130_fd_sc_hd__a211oi_1 _050_ (.A1(_005_),
    .A2(_026_),
    .B1(_027_),
    .C1(\Inst_N_IO_ConfigMem.Inst_frame0_bit29.Q ),
    .Y(_028_));
 sky130_fd_sc_hd__or3b_1 _051_ (.A(\Inst_N_IO_ConfigMem.Inst_frame0_bit30.Q ),
    .B(\Inst_N_IO_ConfigMem.Inst_frame0_bit31.Q ),
    .C_N(net71),
    .X(_029_));
 sky130_fd_sc_hd__o21ai_1 _052_ (.A1(net45),
    .A2(\Inst_N_IO_ConfigMem.Inst_frame0_bit30.Q ),
    .B1(\Inst_N_IO_ConfigMem.Inst_frame0_bit31.Q ),
    .Y(_030_));
 sky130_fd_sc_hd__nand2_1 _053_ (.A(net43),
    .B(\Inst_N_IO_ConfigMem.Inst_frame0_bit30.Q ),
    .Y(_031_));
 sky130_fd_sc_hd__a41o_1 _054_ (.A1(\Inst_N_IO_ConfigMem.Inst_frame0_bit29.Q ),
    .A2(_029_),
    .A3(_030_),
    .A4(_031_),
    .B1(_028_),
    .X(net111));
 sky130_fd_sc_hd__inv_2 _055_ (.A(\Inst_N_IO_ConfigMem.Inst_frame0_bit27.Q ),
    .Y(_000_));
 sky130_fd_sc_hd__inv_2 _056_ (.A(\Inst_N_IO_ConfigMem.Inst_frame0_bit28.Q ),
    .Y(_001_));
 sky130_fd_sc_hd__inv_1 _057_ (.A(\Inst_N_IO_ConfigMem.Inst_frame0_bit20.Q ),
    .Y(_002_));
 sky130_fd_sc_hd__inv_2 _058_ (.A(\Inst_N_IO_ConfigMem.Inst_frame0_bit21.Q ),
    .Y(_003_));
 sky130_fd_sc_hd__inv_1 _059_ (.A(\Inst_N_IO_ConfigMem.Inst_frame0_bit24.Q ),
    .Y(_004_));
 sky130_fd_sc_hd__inv_1 _060_ (.A(\Inst_N_IO_ConfigMem.Inst_frame0_bit31.Q ),
    .Y(_005_));
 sky130_fd_sc_hd__mux4_1 _061_ (.A0(net39),
    .A1(net40),
    .A2(net41),
    .A3(net42),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit25.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit26.Q ),
    .X(_006_));
 sky130_fd_sc_hd__or2_1 _062_ (.A(\Inst_N_IO_ConfigMem.Inst_frame0_bit27.Q ),
    .B(_006_),
    .X(_007_));
 sky130_fd_sc_hd__mux4_1 _063_ (.A0(net43),
    .A1(net44),
    .A2(net45),
    .A3(net46),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit25.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit26.Q ),
    .X(_008_));
 sky130_fd_sc_hd__o21a_1 _064_ (.A1(_000_),
    .A2(_008_),
    .B1(\Inst_N_IO_ConfigMem.Inst_frame0_bit28.Q ),
    .X(_009_));
 sky130_fd_sc_hd__mux4_1 _065_ (.A0(net51),
    .A1(net69),
    .A2(net70),
    .A3(net71),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit25.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit26.Q ),
    .X(_010_));
 sky130_fd_sc_hd__mux4_1 _066_ (.A0(net47),
    .A1(net48),
    .A2(net49),
    .A3(net50),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit25.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit26.Q ),
    .X(_011_));
 sky130_fd_sc_hd__mux2_1 _067_ (.A0(_010_),
    .A1(_011_),
    .S(_000_),
    .X(_012_));
 sky130_fd_sc_hd__a22o_1 _068_ (.A1(_007_),
    .A2(_009_),
    .B1(_012_),
    .B2(_001_),
    .X(net110));
 sky130_fd_sc_hd__mux4_1 _069_ (.A0(net39),
    .A1(net40),
    .A2(net41),
    .A3(net42),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit18.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit19.Q ),
    .X(_013_));
 sky130_fd_sc_hd__or2_1 _070_ (.A(\Inst_N_IO_ConfigMem.Inst_frame0_bit20.Q ),
    .B(_013_),
    .X(_014_));
 sky130_fd_sc_hd__mux4_1 _071_ (.A0(net43),
    .A1(net44),
    .A2(net45),
    .A3(net46),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit18.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit19.Q ),
    .X(_015_));
 sky130_fd_sc_hd__o21a_1 _072_ (.A1(_002_),
    .A2(_015_),
    .B1(\Inst_N_IO_ConfigMem.Inst_frame0_bit21.Q ),
    .X(_016_));
 sky130_fd_sc_hd__mux4_1 _073_ (.A0(net47),
    .A1(net48),
    .A2(net49),
    .A3(net50),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit18.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit19.Q ),
    .X(_017_));
 sky130_fd_sc_hd__mux4_1 _074_ (.A0(net51),
    .A1(net69),
    .A2(net70),
    .A3(net71),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit18.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit19.Q ),
    .X(_018_));
 sky130_fd_sc_hd__mux2_1 _075_ (.A0(_017_),
    .A1(_018_),
    .S(\Inst_N_IO_ConfigMem.Inst_frame0_bit20.Q ),
    .X(_019_));
 sky130_fd_sc_hd__a22o_1 _076_ (.A1(_014_),
    .A2(_016_),
    .B1(_019_),
    .B2(_003_),
    .X(net104));
 sky130_fd_sc_hd__mux4_1 _077_ (.A0(net48),
    .A1(net69),
    .A2(net50),
    .A3(net71),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit17.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit16.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG15 ));
 sky130_fd_sc_hd__mux4_1 _078_ (.A0(net47),
    .A1(net51),
    .A2(net49),
    .A3(net70),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit15.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit14.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG14 ));
 sky130_fd_sc_hd__mux4_1 _079_ (.A0(net85),
    .A1(net87),
    .A2(net74),
    .A3(\Inst_B_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit12.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit13.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG13 ));
 sky130_fd_sc_hd__mux4_1 _080_ (.A0(net79),
    .A1(net81),
    .A2(net83),
    .A3(\Inst_A_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit10.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit11.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG12 ));
 sky130_fd_sc_hd__mux4_1 _081_ (.A0(net84),
    .A1(net86),
    .A2(net73),
    .A3(net2),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit8.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit9.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG11 ));
 sky130_fd_sc_hd__mux4_1 _082_ (.A0(net72),
    .A1(net80),
    .A2(net82),
    .A3(net1),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit6.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit7.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG10 ));
 sky130_fd_sc_hd__mux4_1 _083_ (.A0(net79),
    .A1(net81),
    .A2(net83),
    .A3(net85),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit4.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit5.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG9 ));
 sky130_fd_sc_hd__mux4_1 _084_ (.A0(net82),
    .A1(net86),
    .A2(net84),
    .A3(net73),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit3.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit2.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG8 ));
 sky130_fd_sc_hd__mux4_1 _085_ (.A0(net48),
    .A1(net69),
    .A2(net50),
    .A3(net71),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame0_bit1.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame0_bit0.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG7 ));
 sky130_fd_sc_hd__mux4_1 _086_ (.A0(net47),
    .A1(net51),
    .A2(net49),
    .A3(net70),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit31.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit30.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG6 ));
 sky130_fd_sc_hd__mux4_1 _087_ (.A0(net40),
    .A1(net42),
    .A2(net44),
    .A3(net46),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit28.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit29.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG5 ));
 sky130_fd_sc_hd__mux4_1 _088_ (.A0(net39),
    .A1(net41),
    .A2(net43),
    .A3(net45),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit26.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit27.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG4 ));
 sky130_fd_sc_hd__mux4_1 _089_ (.A0(net85),
    .A1(net87),
    .A2(net74),
    .A3(\Inst_B_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit24.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit25.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG3 ));
 sky130_fd_sc_hd__mux4_1 _090_ (.A0(net79),
    .A1(net81),
    .A2(net83),
    .A3(\Inst_A_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit22.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit23.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG2 ));
 sky130_fd_sc_hd__mux4_1 _091_ (.A0(net84),
    .A1(net86),
    .A2(net73),
    .A3(net2),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit20.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit21.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG1 ));
 sky130_fd_sc_hd__mux4_1 _092_ (.A0(net72),
    .A1(net80),
    .A2(net82),
    .A3(net1),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit18.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit19.Q ),
    .X(\Inst_N_IO_switch_matrix.SS4BEG0 ));
 sky130_fd_sc_hd__mux4_1 _093_ (.A0(net72),
    .A1(net88),
    .A2(net91),
    .A3(\Inst_B_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit16.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit17.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG15 ));
 sky130_fd_sc_hd__mux4_1 _094_ (.A0(net79),
    .A1(net95),
    .A2(net92),
    .A3(\Inst_A_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit14.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit15.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG14 ));
 sky130_fd_sc_hd__mux4_1 _095_ (.A0(net35),
    .A1(net98),
    .A2(net82),
    .A3(\Inst_B_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit13.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit12.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG13 ));
 sky130_fd_sc_hd__mux4_1 _096_ (.A0(net36),
    .A1(net99),
    .A2(net83),
    .A3(\Inst_A_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit11.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit10.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG12 ));
 sky130_fd_sc_hd__mux4_1 _097_ (.A0(net86),
    .A1(net91),
    .A2(net102),
    .A3(\Inst_B_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit9.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit8.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG11 ));
 sky130_fd_sc_hd__mux4_1 _098_ (.A0(net87),
    .A1(net92),
    .A2(net103),
    .A3(\Inst_A_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit7.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit6.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG10 ));
 sky130_fd_sc_hd__mux4_1 _099_ (.A0(net35),
    .A1(net75),
    .A2(net91),
    .A3(\Inst_B_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit4.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit5.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG9 ));
 sky130_fd_sc_hd__mux4_1 _100_ (.A0(net36),
    .A1(net76),
    .A2(net92),
    .A3(\Inst_A_IO_1_bidirectional_frame_config_pass.Q ),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit2.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit3.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG8 ));
 sky130_fd_sc_hd__mux4_1 _101_ (.A0(net80),
    .A1(net96),
    .A2(net93),
    .A3(net2),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame1_bit0.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame1_bit1.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG7 ));
 sky130_fd_sc_hd__mux4_1 _102_ (.A0(net81),
    .A1(net97),
    .A2(net94),
    .A3(net1),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit30.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit31.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG6 ));
 sky130_fd_sc_hd__mux4_1 _103_ (.A0(net38),
    .A1(net100),
    .A2(net84),
    .A3(net2),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit29.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit28.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG5 ));
 sky130_fd_sc_hd__mux4_1 _104_ (.A0(net37),
    .A1(net101),
    .A2(net85),
    .A3(net1),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit27.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit26.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG4 ));
 sky130_fd_sc_hd__mux4_1 _105_ (.A0(net73),
    .A1(net93),
    .A2(net89),
    .A3(net2),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit25.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit24.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG3 ));
 sky130_fd_sc_hd__mux4_1 _106_ (.A0(net74),
    .A1(net94),
    .A2(net90),
    .A3(net1),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit23.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit22.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG2 ));
 sky130_fd_sc_hd__mux4_1 _107_ (.A0(net38),
    .A1(net77),
    .A2(net93),
    .A3(net2),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit20.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit21.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG1 ));
 sky130_fd_sc_hd__mux4_1 _108_ (.A0(net37),
    .A1(net78),
    .A2(net94),
    .A3(net1),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit18.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit19.Q ),
    .X(\Inst_N_IO_switch_matrix.S4BEG0 ));
 sky130_fd_sc_hd__mux4_1 _109_ (.A0(net39),
    .A1(net72),
    .A2(net88),
    .A3(net102),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit16.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit17.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEGb7 ));
 sky130_fd_sc_hd__mux4_1 _110_ (.A0(net40),
    .A1(net79),
    .A2(net95),
    .A3(net103),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit14.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit15.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEGb6 ));
 sky130_fd_sc_hd__mux4_1 _111_ (.A0(net41),
    .A1(net80),
    .A2(net96),
    .A3(net89),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit12.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit13.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEGb5 ));
 sky130_fd_sc_hd__mux4_1 _112_ (.A0(net42),
    .A1(net81),
    .A2(net97),
    .A3(net90),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit10.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit11.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEGb4 ));
 sky130_fd_sc_hd__mux4_1 _113_ (.A0(net43),
    .A1(net82),
    .A2(net98),
    .A3(net91),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit8.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit9.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEGb3 ));
 sky130_fd_sc_hd__mux4_1 _114_ (.A0(net44),
    .A1(net83),
    .A2(net99),
    .A3(net92),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit6.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit7.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEGb2 ));
 sky130_fd_sc_hd__mux4_1 _115_ (.A0(net45),
    .A1(net84),
    .A2(net100),
    .A3(net93),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit4.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit5.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEGb1 ));
 sky130_fd_sc_hd__mux4_1 _116_ (.A0(net46),
    .A1(net85),
    .A2(net101),
    .A3(net94),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit2.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit3.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEGb0 ));
 sky130_fd_sc_hd__mux4_1 _117_ (.A0(net47),
    .A1(net72),
    .A2(net88),
    .A3(net102),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame2_bit0.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame2_bit1.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEG7 ));
 sky130_fd_sc_hd__mux4_1 _118_ (.A0(net48),
    .A1(net79),
    .A2(net95),
    .A3(net103),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame3_bit30.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame3_bit31.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEG6 ));
 sky130_fd_sc_hd__mux4_1 _119_ (.A0(net49),
    .A1(net80),
    .A2(net96),
    .A3(net89),
    .S0(\Inst_N_IO_ConfigMem.Inst_frame3_bit28.Q ),
    .S1(\Inst_N_IO_ConfigMem.Inst_frame3_bit29.Q ),
    .X(\Inst_N_IO_switch_matrix.S2BEG5 ));
 sky130_fd_sc_hd__dlxtp_1 _120_ (.D(net31),
    .GATE(net52),
    .Q(net106));
 sky130_fd_sc_hd__dlxtp_1 _121_ (.D(net32),
    .GATE(net52),
    .Q(net107));
 sky130_fd_sc_hd__dlxtp_1 _122_ (.D(net33),
    .GATE(net52),
    .Q(net108));
 sky130_fd_sc_hd__dlxtp_1 _123_ (.D(net34),
    .GATE(net52),
    .Q(net109));
 sky130_fd_sc_hd__dlxtp_1 _124_ (.D(net4),
    .GATE(net52),
    .Q(net112));
 sky130_fd_sc_hd__dlxtp_1 _125_ (.D(net5),
    .GATE(net53),
    .Q(net113));
 sky130_fd_sc_hd__dlxtp_1 _126_ (.D(net6),
    .GATE(net53),
    .Q(net114));
 sky130_fd_sc_hd__dlxtp_1 _127_ (.D(net7),
    .GATE(net54),
    .Q(net115));
 sky130_fd_sc_hd__dlxtp_1 _128_ (.D(net8),
    .GATE(net54),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit14.Q ));
 sky130_fd_sc_hd__dlxtp_1 _129_ (.D(net9),
    .GATE(net54),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit15.Q ));
 sky130_fd_sc_hd__dlxtp_1 _130_ (.D(net10),
    .GATE(net54),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit16.Q ));
 sky130_fd_sc_hd__dlxtp_1 _131_ (.D(net11),
    .GATE(net54),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit17.Q ));
 sky130_fd_sc_hd__dlxtp_1 _132_ (.D(net12),
    .GATE(net53),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit18.Q ));
 sky130_fd_sc_hd__dlxtp_1 _133_ (.D(net13),
    .GATE(net53),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit19.Q ));
 sky130_fd_sc_hd__dlxtp_1 _134_ (.D(net15),
    .GATE(net52),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit20.Q ));
 sky130_fd_sc_hd__dlxtp_1 _135_ (.D(net16),
    .GATE(net52),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit21.Q ));
 sky130_fd_sc_hd__dlxtp_1 _136_ (.D(net17),
    .GATE(net53),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit22.Q ));
 sky130_fd_sc_hd__dlxtp_1 _137_ (.D(net18),
    .GATE(net53),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit23.Q ));
 sky130_fd_sc_hd__dlxtp_1 _138_ (.D(net19),
    .GATE(net52),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit24.Q ));
 sky130_fd_sc_hd__dlxtp_1 _139_ (.D(net20),
    .GATE(net52),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit25.Q ));
 sky130_fd_sc_hd__dlxtp_1 _140_ (.D(net21),
    .GATE(net53),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit26.Q ));
 sky130_fd_sc_hd__dlxtp_1 _141_ (.D(net22),
    .GATE(net53),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit27.Q ));
 sky130_fd_sc_hd__dlxtp_1 _142_ (.D(net23),
    .GATE(net54),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit28.Q ));
 sky130_fd_sc_hd__dlxtp_1 _143_ (.D(net24),
    .GATE(net52),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit29.Q ));
 sky130_fd_sc_hd__dlxtp_1 _144_ (.D(net26),
    .GATE(net53),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit30.Q ));
 sky130_fd_sc_hd__dlxtp_1 _145_ (.D(net27),
    .GATE(net53),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame3_bit31.Q ));
 sky130_fd_sc_hd__dlxtp_1 _146_ (.D(net3),
    .GATE(net55),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit0.Q ));
 sky130_fd_sc_hd__dlxtp_1 _147_ (.D(net14),
    .GATE(net55),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit1.Q ));
 sky130_fd_sc_hd__dlxtp_1 _148_ (.D(net25),
    .GATE(net59),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit2.Q ));
 sky130_fd_sc_hd__dlxtp_1 _149_ (.D(net28),
    .GATE(net59),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit3.Q ));
 sky130_fd_sc_hd__dlxtp_1 _150_ (.D(net29),
    .GATE(net55),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit4.Q ));
 sky130_fd_sc_hd__dlxtp_1 _151_ (.D(net30),
    .GATE(net55),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit5.Q ));
 sky130_fd_sc_hd__dlxtp_1 _152_ (.D(net31),
    .GATE(net59),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit6.Q ));
 sky130_fd_sc_hd__dlxtp_1 _153_ (.D(net32),
    .GATE(net59),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit7.Q ));
 sky130_fd_sc_hd__dlxtp_1 _154_ (.D(net33),
    .GATE(net55),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit8.Q ));
 sky130_fd_sc_hd__dlxtp_1 _155_ (.D(net34),
    .GATE(net55),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit9.Q ));
 sky130_fd_sc_hd__dlxtp_1 _156_ (.D(net4),
    .GATE(net55),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit10.Q ));
 sky130_fd_sc_hd__dlxtp_1 _157_ (.D(net5),
    .GATE(net55),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit11.Q ));
 sky130_fd_sc_hd__dlxtp_1 _158_ (.D(net6),
    .GATE(net55),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit12.Q ));
 sky130_fd_sc_hd__dlxtp_1 _159_ (.D(net7),
    .GATE(net55),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit13.Q ));
 sky130_fd_sc_hd__dlxtp_1 _160_ (.D(net8),
    .GATE(net56),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit14.Q ));
 sky130_fd_sc_hd__dlxtp_1 _161_ (.D(net9),
    .GATE(net56),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit15.Q ));
 sky130_fd_sc_hd__dlxtp_1 _162_ (.D(net10),
    .GATE(net58),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit16.Q ));
 sky130_fd_sc_hd__dlxtp_1 _163_ (.D(net11),
    .GATE(net58),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit17.Q ));
 sky130_fd_sc_hd__dlxtp_1 _164_ (.D(net12),
    .GATE(net56),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit18.Q ));
 sky130_fd_sc_hd__dlxtp_1 _165_ (.D(net13),
    .GATE(net56),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit19.Q ));
 sky130_fd_sc_hd__dlxtp_1 _166_ (.D(net15),
    .GATE(net58),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit20.Q ));
 sky130_fd_sc_hd__dlxtp_1 _167_ (.D(net16),
    .GATE(net58),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit21.Q ));
 sky130_fd_sc_hd__dlxtp_1 _168_ (.D(net17),
    .GATE(net56),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit22.Q ));
 sky130_fd_sc_hd__dlxtp_1 _169_ (.D(net18),
    .GATE(net56),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit23.Q ));
 sky130_fd_sc_hd__dlxtp_1 _170_ (.D(net19),
    .GATE(net57),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit24.Q ));
 sky130_fd_sc_hd__dlxtp_1 _171_ (.D(net20),
    .GATE(net57),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit25.Q ));
 sky130_fd_sc_hd__dlxtp_1 _172_ (.D(net21),
    .GATE(net57),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit26.Q ));
 sky130_fd_sc_hd__dlxtp_1 _173_ (.D(net22),
    .GATE(net57),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit27.Q ));
 sky130_fd_sc_hd__dlxtp_1 _174_ (.D(net23),
    .GATE(net57),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit28.Q ));
 sky130_fd_sc_hd__dlxtp_1 _175_ (.D(net24),
    .GATE(net56),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit29.Q ));
 sky130_fd_sc_hd__dlxtp_1 _176_ (.D(net26),
    .GATE(net56),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit30.Q ));
 sky130_fd_sc_hd__dlxtp_1 _177_ (.D(net27),
    .GATE(net56),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame2_bit31.Q ));
 sky130_fd_sc_hd__dlxtp_1 _178_ (.D(net3),
    .GATE(net60),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit0.Q ));
 sky130_fd_sc_hd__dlxtp_1 _179_ (.D(net14),
    .GATE(net60),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit1.Q ));
 sky130_fd_sc_hd__dlxtp_1 _180_ (.D(net25),
    .GATE(net60),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit2.Q ));
 sky130_fd_sc_hd__dlxtp_1 _181_ (.D(net28),
    .GATE(net60),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit3.Q ));
 sky130_fd_sc_hd__dlxtp_1 _182_ (.D(net29),
    .GATE(net62),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit4.Q ));
 sky130_fd_sc_hd__dlxtp_1 _183_ (.D(net30),
    .GATE(net62),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit5.Q ));
 sky130_fd_sc_hd__dlxtp_1 _184_ (.D(net31),
    .GATE(net60),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit6.Q ));
 sky130_fd_sc_hd__dlxtp_1 _185_ (.D(net32),
    .GATE(net60),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit7.Q ));
 sky130_fd_sc_hd__dlxtp_1 _186_ (.D(net33),
    .GATE(net61),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit8.Q ));
 sky130_fd_sc_hd__dlxtp_1 _187_ (.D(net34),
    .GATE(net61),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit9.Q ));
 sky130_fd_sc_hd__dlxtp_1 _188_ (.D(net4),
    .GATE(net60),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit10.Q ));
 sky130_fd_sc_hd__dlxtp_1 _189_ (.D(net5),
    .GATE(net60),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit11.Q ));
 sky130_fd_sc_hd__dlxtp_1 _190_ (.D(net6),
    .GATE(net61),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit12.Q ));
 sky130_fd_sc_hd__dlxtp_1 _191_ (.D(net7),
    .GATE(net61),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit13.Q ));
 sky130_fd_sc_hd__dlxtp_1 _192_ (.D(net8),
    .GATE(net60),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit14.Q ));
 sky130_fd_sc_hd__dlxtp_1 _193_ (.D(net9),
    .GATE(net60),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit15.Q ));
 sky130_fd_sc_hd__dlxtp_1 _194_ (.D(net10),
    .GATE(net61),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit16.Q ));
 sky130_fd_sc_hd__dlxtp_1 _195_ (.D(net11),
    .GATE(net61),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit17.Q ));
 sky130_fd_sc_hd__dlxtp_1 _196_ (.D(net12),
    .GATE(net61),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit18.Q ));
 sky130_fd_sc_hd__dlxtp_1 _197_ (.D(net13),
    .GATE(net61),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit19.Q ));
 sky130_fd_sc_hd__dlxtp_1 _198_ (.D(net15),
    .GATE(net62),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit20.Q ));
 sky130_fd_sc_hd__dlxtp_1 _199_ (.D(net16),
    .GATE(net62),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit21.Q ));
 sky130_fd_sc_hd__dlxtp_1 _200_ (.D(net17),
    .GATE(net62),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit22.Q ));
 sky130_fd_sc_hd__dlxtp_1 _201_ (.D(net18),
    .GATE(net62),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit23.Q ));
 sky130_fd_sc_hd__dlxtp_1 _202_ (.D(net19),
    .GATE(net61),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit24.Q ));
 sky130_fd_sc_hd__dlxtp_1 _203_ (.D(net20),
    .GATE(net61),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit25.Q ));
 sky130_fd_sc_hd__dlxtp_1 _204_ (.D(net21),
    .GATE(net63),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit26.Q ));
 sky130_fd_sc_hd__dlxtp_1 _205_ (.D(net22),
    .GATE(net63),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit27.Q ));
 sky130_fd_sc_hd__dlxtp_1 _206_ (.D(net23),
    .GATE(net63),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit28.Q ));
 sky130_fd_sc_hd__dlxtp_1 _207_ (.D(net24),
    .GATE(net63),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit29.Q ));
 sky130_fd_sc_hd__dlxtp_1 _208_ (.D(net26),
    .GATE(net63),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit30.Q ));
 sky130_fd_sc_hd__dlxtp_1 _209_ (.D(net27),
    .GATE(net63),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame1_bit31.Q ));
 sky130_fd_sc_hd__dlxtp_1 _210_ (.D(net3),
    .GATE(net64),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit0.Q ));
 sky130_fd_sc_hd__dlxtp_1 _211_ (.D(net14),
    .GATE(net64),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit1.Q ));
 sky130_fd_sc_hd__dlxtp_1 _212_ (.D(net25),
    .GATE(net67),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit2.Q ));
 sky130_fd_sc_hd__dlxtp_1 _213_ (.D(net28),
    .GATE(net67),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit3.Q ));
 sky130_fd_sc_hd__dlxtp_1 _214_ (.D(net29),
    .GATE(net68),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit4.Q ));
 sky130_fd_sc_hd__dlxtp_1 _215_ (.D(net30),
    .GATE(net68),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit5.Q ));
 sky130_fd_sc_hd__dlxtp_1 _216_ (.D(net31),
    .GATE(net67),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit6.Q ));
 sky130_fd_sc_hd__dlxtp_1 _217_ (.D(net32),
    .GATE(net67),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit7.Q ));
 sky130_fd_sc_hd__dlxtp_1 _218_ (.D(net33),
    .GATE(net67),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit8.Q ));
 sky130_fd_sc_hd__dlxtp_1 _219_ (.D(net34),
    .GATE(net67),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit9.Q ));
 sky130_fd_sc_hd__dlxtp_1 _220_ (.D(net4),
    .GATE(net67),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit10.Q ));
 sky130_fd_sc_hd__dlxtp_1 _221_ (.D(net5),
    .GATE(net67),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit11.Q ));
 sky130_fd_sc_hd__dlxtp_1 _222_ (.D(net6),
    .GATE(net67),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit12.Q ));
 sky130_fd_sc_hd__dlxtp_1 _223_ (.D(net7),
    .GATE(net67),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit13.Q ));
 sky130_fd_sc_hd__dlxtp_1 _224_ (.D(net8),
    .GATE(net64),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit14.Q ));
 sky130_fd_sc_hd__dlxtp_1 _225_ (.D(net9),
    .GATE(net64),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit15.Q ));
 sky130_fd_sc_hd__dlxtp_1 _226_ (.D(net10),
    .GATE(net68),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit16.Q ));
 sky130_fd_sc_hd__dlxtp_1 _227_ (.D(net11),
    .GATE(net68),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit17.Q ));
 sky130_fd_sc_hd__dlxtp_1 _228_ (.D(net12),
    .GATE(net65),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit18.Q ));
 sky130_fd_sc_hd__dlxtp_1 _229_ (.D(net13),
    .GATE(net65),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit19.Q ));
 sky130_fd_sc_hd__dlxtp_1 _230_ (.D(net15),
    .GATE(net65),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit20.Q ));
 sky130_fd_sc_hd__dlxtp_1 _231_ (.D(net16),
    .GATE(net64),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit21.Q ));
 sky130_fd_sc_hd__dlxtp_1 _232_ (.D(net17),
    .GATE(net64),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit22.Q ));
 sky130_fd_sc_hd__dlxtp_1 _233_ (.D(net18),
    .GATE(net65),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit23.Q ));
 sky130_fd_sc_hd__dlxtp_1 _234_ (.D(net19),
    .GATE(net64),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit24.Q ));
 sky130_fd_sc_hd__dlxtp_1 _235_ (.D(net20),
    .GATE(net64),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit25.Q ));
 sky130_fd_sc_hd__dlxtp_1 _236_ (.D(net21),
    .GATE(net65),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit26.Q ));
 sky130_fd_sc_hd__dlxtp_1 _237_ (.D(net22),
    .GATE(net64),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit27.Q ));
 sky130_fd_sc_hd__dlxtp_1 _238_ (.D(net23),
    .GATE(net64),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit28.Q ));
 sky130_fd_sc_hd__dlxtp_1 _239_ (.D(net24),
    .GATE(net66),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit29.Q ));
 sky130_fd_sc_hd__dlxtp_1 _240_ (.D(net26),
    .GATE(net66),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit30.Q ));
 sky130_fd_sc_hd__dlxtp_1 _241_ (.D(net27),
    .GATE(net66),
    .Q(\Inst_N_IO_ConfigMem.Inst_frame0_bit31.Q ));
 sky130_fd_sc_hd__dfxtp_1 _242_ (.CLK(clknet_1_0__leaf_UserCLK_regs),
    .D(net1),
    .Q(\Inst_A_IO_1_bidirectional_frame_config_pass.Q ));
 sky130_fd_sc_hd__dfxtp_1 _243_ (.CLK(clknet_1_1__leaf_UserCLK_regs),
    .D(net2),
    .Q(\Inst_B_IO_1_bidirectional_frame_config_pass.Q ));
 sky130_fd_sc_hd__clkbuf_2 _244_ (.A(net3),
    .X(net116));
 sky130_fd_sc_hd__clkbuf_2 _245_ (.A(net14),
    .X(net127));
 sky130_fd_sc_hd__clkbuf_1 _246_ (.A(net25),
    .X(net138));
 sky130_fd_sc_hd__clkbuf_1 _247_ (.A(net28),
    .X(net141));
 sky130_fd_sc_hd__clkbuf_2 _248_ (.A(net29),
    .X(net142));
 sky130_fd_sc_hd__clkbuf_2 _249_ (.A(net30),
    .X(net143));
 sky130_fd_sc_hd__buf_1 _250_ (.A(net31),
    .X(net144));
 sky130_fd_sc_hd__buf_1 _251_ (.A(net32),
    .X(net145));
 sky130_fd_sc_hd__clkbuf_2 _252_ (.A(net33),
    .X(net146));
 sky130_fd_sc_hd__clkbuf_2 _253_ (.A(net34),
    .X(net147));
 sky130_fd_sc_hd__clkbuf_1 _254_ (.A(net4),
    .X(net117));
 sky130_fd_sc_hd__clkbuf_1 _255_ (.A(net5),
    .X(net118));
 sky130_fd_sc_hd__clkbuf_1 _256_ (.A(net6),
    .X(net119));
 sky130_fd_sc_hd__buf_1 _257_ (.A(net7),
    .X(net120));
 sky130_fd_sc_hd__buf_1 _258_ (.A(net8),
    .X(net121));
 sky130_fd_sc_hd__clkbuf_2 _259_ (.A(net9),
    .X(net122));
 sky130_fd_sc_hd__clkbuf_1 _260_ (.A(net10),
    .X(net123));
 sky130_fd_sc_hd__clkbuf_1 _261_ (.A(net11),
    .X(net124));
 sky130_fd_sc_hd__clkbuf_2 _262_ (.A(net12),
    .X(net125));
 sky130_fd_sc_hd__clkbuf_2 _263_ (.A(net13),
    .X(net126));
 sky130_fd_sc_hd__clkbuf_2 _264_ (.A(net15),
    .X(net128));
 sky130_fd_sc_hd__clkbuf_2 _265_ (.A(net16),
    .X(net129));
 sky130_fd_sc_hd__buf_1 _266_ (.A(net17),
    .X(net130));
 sky130_fd_sc_hd__buf_1 _267_ (.A(net18),
    .X(net131));
 sky130_fd_sc_hd__clkbuf_2 _268_ (.A(net19),
    .X(net132));
 sky130_fd_sc_hd__clkbuf_2 _269_ (.A(net20),
    .X(net133));
 sky130_fd_sc_hd__buf_1 _270_ (.A(net21),
    .X(net134));
 sky130_fd_sc_hd__clkbuf_2 _271_ (.A(net22),
    .X(net135));
 sky130_fd_sc_hd__buf_1 _272_ (.A(net23),
    .X(net136));
 sky130_fd_sc_hd__clkbuf_2 _273_ (.A(net24),
    .X(net137));
 sky130_fd_sc_hd__clkbuf_2 _274_ (.A(net26),
    .X(net139));
 sky130_fd_sc_hd__clkbuf_2 _275_ (.A(net27),
    .X(net140));
 sky130_fd_sc_hd__clkbuf_1 _276_ (.A(net68),
    .X(net148));
 sky130_fd_sc_hd__clkbuf_1 _277_ (.A(net63),
    .X(net159));
 sky130_fd_sc_hd__clkbuf_1 _278_ (.A(net56),
    .X(net160));
 sky130_fd_sc_hd__buf_1 _279_ (.A(net54),
    .X(net161));
 sky130_fd_sc_hd__buf_1 _280_ (.A(FrameStrobe[4]),
    .X(net162));
 sky130_fd_sc_hd__buf_1 _281_ (.A(FrameStrobe[5]),
    .X(net163));
 sky130_fd_sc_hd__buf_1 _282_ (.A(FrameStrobe[6]),
    .X(net164));
 sky130_fd_sc_hd__buf_1 _283_ (.A(FrameStrobe[7]),
    .X(net165));
 sky130_fd_sc_hd__buf_1 _284_ (.A(FrameStrobe[8]),
    .X(net166));
 sky130_fd_sc_hd__clkbuf_1 _285_ (.A(FrameStrobe[9]),
    .X(net167));
 sky130_fd_sc_hd__clkbuf_1 _286_ (.A(FrameStrobe[10]),
    .X(net149));
 sky130_fd_sc_hd__clkbuf_1 _287_ (.A(FrameStrobe[11]),
    .X(net150));
 sky130_fd_sc_hd__buf_1 _288_ (.A(FrameStrobe[12]),
    .X(net151));
 sky130_fd_sc_hd__clkbuf_1 _289_ (.A(FrameStrobe[13]),
    .X(net152));
 sky130_fd_sc_hd__clkbuf_1 _290_ (.A(FrameStrobe[14]),
    .X(net153));
 sky130_fd_sc_hd__clkbuf_1 _291_ (.A(FrameStrobe[15]),
    .X(net154));
 sky130_fd_sc_hd__clkbuf_1 _292_ (.A(FrameStrobe[16]),
    .X(net155));
 sky130_fd_sc_hd__clkbuf_1 _293_ (.A(FrameStrobe[17]),
    .X(net156));
 sky130_fd_sc_hd__clkbuf_1 _294_ (.A(FrameStrobe[18]),
    .X(net157));
 sky130_fd_sc_hd__clkbuf_1 _295_ (.A(FrameStrobe[19]),
    .X(net158));
 sky130_fd_sc_hd__buf_1 _296_ (.A(\Inst_N_IO_switch_matrix.S1BEG0 ),
    .X(net168));
 sky130_fd_sc_hd__clkbuf_1 _297_ (.A(\Inst_N_IO_switch_matrix.S1BEG1 ),
    .X(net169));
 sky130_fd_sc_hd__buf_1 _298_ (.A(\Inst_N_IO_switch_matrix.S1BEG2 ),
    .X(net170));
 sky130_fd_sc_hd__buf_1 _299_ (.A(\Inst_N_IO_switch_matrix.S1BEG3 ),
    .X(net171));
 sky130_fd_sc_hd__clkbuf_1 _300_ (.A(\Inst_N_IO_switch_matrix.S2BEG0 ),
    .X(net172));
 sky130_fd_sc_hd__buf_1 _301_ (.A(\Inst_N_IO_switch_matrix.S2BEG1 ),
    .X(net173));
 sky130_fd_sc_hd__clkbuf_1 _302_ (.A(\Inst_N_IO_switch_matrix.S2BEG2 ),
    .X(net174));
 sky130_fd_sc_hd__buf_1 _303_ (.A(\Inst_N_IO_switch_matrix.S2BEG3 ),
    .X(net175));
 sky130_fd_sc_hd__clkbuf_1 _304_ (.A(\Inst_N_IO_switch_matrix.S2BEG4 ),
    .X(net176));
 sky130_fd_sc_hd__clkbuf_1 _305_ (.A(\Inst_N_IO_switch_matrix.S2BEG5 ),
    .X(net177));
 sky130_fd_sc_hd__clkbuf_1 _306_ (.A(\Inst_N_IO_switch_matrix.S2BEG6 ),
    .X(net178));
 sky130_fd_sc_hd__buf_1 _307_ (.A(\Inst_N_IO_switch_matrix.S2BEG7 ),
    .X(net179));
 sky130_fd_sc_hd__clkbuf_1 _308_ (.A(\Inst_N_IO_switch_matrix.S2BEGb0 ),
    .X(net180));
 sky130_fd_sc_hd__buf_1 _309_ (.A(\Inst_N_IO_switch_matrix.S2BEGb1 ),
    .X(net181));
 sky130_fd_sc_hd__clkbuf_1 _310_ (.A(\Inst_N_IO_switch_matrix.S2BEGb2 ),
    .X(net182));
 sky130_fd_sc_hd__buf_1 _311_ (.A(\Inst_N_IO_switch_matrix.S2BEGb3 ),
    .X(net183));
 sky130_fd_sc_hd__clkbuf_1 _312_ (.A(\Inst_N_IO_switch_matrix.S2BEGb4 ),
    .X(net184));
 sky130_fd_sc_hd__clkbuf_1 _313_ (.A(\Inst_N_IO_switch_matrix.S2BEGb5 ),
    .X(net185));
 sky130_fd_sc_hd__clkbuf_1 _314_ (.A(\Inst_N_IO_switch_matrix.S2BEGb6 ),
    .X(net186));
 sky130_fd_sc_hd__buf_1 _315_ (.A(\Inst_N_IO_switch_matrix.S2BEGb7 ),
    .X(net187));
 sky130_fd_sc_hd__clkbuf_1 _316_ (.A(\Inst_N_IO_switch_matrix.S4BEG0 ),
    .X(net188));
 sky130_fd_sc_hd__clkbuf_1 _317_ (.A(\Inst_N_IO_switch_matrix.S4BEG1 ),
    .X(net195));
 sky130_fd_sc_hd__clkbuf_1 _318_ (.A(\Inst_N_IO_switch_matrix.S4BEG2 ),
    .X(net196));
 sky130_fd_sc_hd__clkbuf_1 _319_ (.A(\Inst_N_IO_switch_matrix.S4BEG3 ),
    .X(net197));
 sky130_fd_sc_hd__clkbuf_1 _320_ (.A(\Inst_N_IO_switch_matrix.S4BEG4 ),
    .X(net198));
 sky130_fd_sc_hd__buf_1 _321_ (.A(\Inst_N_IO_switch_matrix.S4BEG5 ),
    .X(net199));
 sky130_fd_sc_hd__clkbuf_1 _322_ (.A(\Inst_N_IO_switch_matrix.S4BEG6 ),
    .X(net200));
 sky130_fd_sc_hd__buf_1 _323_ (.A(\Inst_N_IO_switch_matrix.S4BEG7 ),
    .X(net201));
 sky130_fd_sc_hd__clkbuf_1 _324_ (.A(\Inst_N_IO_switch_matrix.S4BEG8 ),
    .X(net202));
 sky130_fd_sc_hd__clkbuf_1 _325_ (.A(\Inst_N_IO_switch_matrix.S4BEG9 ),
    .X(net203));
 sky130_fd_sc_hd__clkbuf_1 _326_ (.A(\Inst_N_IO_switch_matrix.S4BEG10 ),
    .X(net189));
 sky130_fd_sc_hd__clkbuf_1 _327_ (.A(\Inst_N_IO_switch_matrix.S4BEG11 ),
    .X(net190));
 sky130_fd_sc_hd__clkbuf_1 _328_ (.A(\Inst_N_IO_switch_matrix.S4BEG12 ),
    .X(net191));
 sky130_fd_sc_hd__clkbuf_1 _329_ (.A(\Inst_N_IO_switch_matrix.S4BEG13 ),
    .X(net192));
 sky130_fd_sc_hd__clkbuf_1 _330_ (.A(\Inst_N_IO_switch_matrix.S4BEG14 ),
    .X(net193));
 sky130_fd_sc_hd__clkbuf_1 _331_ (.A(\Inst_N_IO_switch_matrix.S4BEG15 ),
    .X(net194));
 sky130_fd_sc_hd__buf_1 _332_ (.A(\Inst_N_IO_switch_matrix.SS4BEG0 ),
    .X(net204));
 sky130_fd_sc_hd__clkbuf_1 _333_ (.A(\Inst_N_IO_switch_matrix.SS4BEG1 ),
    .X(net211));
 sky130_fd_sc_hd__clkbuf_1 _334_ (.A(\Inst_N_IO_switch_matrix.SS4BEG2 ),
    .X(net212));
 sky130_fd_sc_hd__clkbuf_1 _335_ (.A(\Inst_N_IO_switch_matrix.SS4BEG3 ),
    .X(net213));
 sky130_fd_sc_hd__buf_1 _336_ (.A(\Inst_N_IO_switch_matrix.SS4BEG4 ),
    .X(net214));
 sky130_fd_sc_hd__buf_1 _337_ (.A(\Inst_N_IO_switch_matrix.SS4BEG5 ),
    .X(net215));
 sky130_fd_sc_hd__buf_1 _338_ (.A(\Inst_N_IO_switch_matrix.SS4BEG6 ),
    .X(net216));
 sky130_fd_sc_hd__buf_1 _339_ (.A(\Inst_N_IO_switch_matrix.SS4BEG7 ),
    .X(net217));
 sky130_fd_sc_hd__clkbuf_1 _340_ (.A(\Inst_N_IO_switch_matrix.SS4BEG8 ),
    .X(net218));
 sky130_fd_sc_hd__clkbuf_1 _341_ (.A(\Inst_N_IO_switch_matrix.SS4BEG9 ),
    .X(net219));
 sky130_fd_sc_hd__clkbuf_1 _342_ (.A(\Inst_N_IO_switch_matrix.SS4BEG10 ),
    .X(net205));
 sky130_fd_sc_hd__clkbuf_1 _343_ (.A(\Inst_N_IO_switch_matrix.SS4BEG11 ),
    .X(net206));
 sky130_fd_sc_hd__clkbuf_1 _344_ (.A(\Inst_N_IO_switch_matrix.SS4BEG12 ),
    .X(net207));
 sky130_fd_sc_hd__clkbuf_1 _345_ (.A(\Inst_N_IO_switch_matrix.SS4BEG13 ),
    .X(net208));
 sky130_fd_sc_hd__buf_1 _346_ (.A(\Inst_N_IO_switch_matrix.SS4BEG14 ),
    .X(net209));
 sky130_fd_sc_hd__buf_1 _347_ (.A(\Inst_N_IO_switch_matrix.SS4BEG15 ),
    .X(net210));
 sky130_fd_sc_hd__buf_2 _348_ (.A(clknet_1_0__leaf_UserCLK),
    .X(net220));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_121 ();
 sky130_fd_sc_hd__buf_2 fanout52 (.A(net54),
    .X(net52));
 sky130_fd_sc_hd__clkbuf_2 fanout53 (.A(net54),
    .X(net53));
 sky130_fd_sc_hd__buf_2 fanout54 (.A(FrameStrobe[3]),
    .X(net54));
 sky130_fd_sc_hd__buf_2 fanout55 (.A(net59),
    .X(net55));
 sky130_fd_sc_hd__clkbuf_2 fanout56 (.A(net57),
    .X(net56));
 sky130_fd_sc_hd__buf_1 fanout57 (.A(net58),
    .X(net57));
 sky130_fd_sc_hd__dlymetal6s2s_1 fanout58 (.A(net59),
    .X(net58));
 sky130_fd_sc_hd__clkbuf_2 fanout59 (.A(FrameStrobe[2]),
    .X(net59));
 sky130_fd_sc_hd__buf_2 fanout60 (.A(net62),
    .X(net60));
 sky130_fd_sc_hd__clkbuf_2 fanout61 (.A(net62),
    .X(net61));
 sky130_fd_sc_hd__clkbuf_2 fanout62 (.A(net63),
    .X(net62));
 sky130_fd_sc_hd__clkbuf_2 fanout63 (.A(FrameStrobe[1]),
    .X(net63));
 sky130_fd_sc_hd__clkbuf_2 fanout64 (.A(net66),
    .X(net64));
 sky130_fd_sc_hd__buf_1 fanout65 (.A(net66),
    .X(net65));
 sky130_fd_sc_hd__dlymetal6s2s_1 fanout66 (.A(net68),
    .X(net66));
 sky130_fd_sc_hd__clkbuf_2 fanout67 (.A(net68),
    .X(net67));
 sky130_fd_sc_hd__clkbuf_2 fanout68 (.A(FrameStrobe[0]),
    .X(net68));
 sky130_fd_sc_hd__buf_2 input1 (.A(A_O_top),
    .X(net1));
 sky130_fd_sc_hd__buf_2 input2 (.A(B_O_top),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(FrameData[0]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_2 input4 (.A(FrameData[10]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_2 input5 (.A(FrameData[11]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_2 input6 (.A(FrameData[12]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_2 input7 (.A(FrameData[13]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_2 input8 (.A(FrameData[14]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_2 input9 (.A(FrameData[15]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 input10 (.A(FrameData[16]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_2 input11 (.A(FrameData[17]),
    .X(net11));
 sky130_fd_sc_hd__dlymetal6s2s_1 input12 (.A(FrameData[18]),
    .X(net12));
 sky130_fd_sc_hd__dlymetal6s2s_1 input13 (.A(FrameData[19]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(FrameData[1]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_2 input15 (.A(FrameData[20]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_2 input16 (.A(FrameData[21]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_2 input17 (.A(FrameData[22]),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_2 input18 (.A(FrameData[23]),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_2 input19 (.A(FrameData[24]),
    .X(net19));
 sky130_fd_sc_hd__clkbuf_2 input20 (.A(FrameData[25]),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_2 input21 (.A(FrameData[26]),
    .X(net21));
 sky130_fd_sc_hd__clkbuf_2 input22 (.A(FrameData[27]),
    .X(net22));
 sky130_fd_sc_hd__dlymetal6s2s_1 input23 (.A(FrameData[28]),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_2 input24 (.A(FrameData[29]),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_2 input25 (.A(FrameData[2]),
    .X(net25));
 sky130_fd_sc_hd__clkbuf_2 input26 (.A(FrameData[30]),
    .X(net26));
 sky130_fd_sc_hd__clkbuf_2 input27 (.A(FrameData[31]),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_2 input28 (.A(FrameData[3]),
    .X(net28));
 sky130_fd_sc_hd__clkbuf_2 input29 (.A(FrameData[4]),
    .X(net29));
 sky130_fd_sc_hd__clkbuf_2 input30 (.A(FrameData[5]),
    .X(net30));
 sky130_fd_sc_hd__clkbuf_2 input31 (.A(FrameData[6]),
    .X(net31));
 sky130_fd_sc_hd__clkbuf_2 input32 (.A(FrameData[7]),
    .X(net32));
 sky130_fd_sc_hd__clkbuf_2 input33 (.A(FrameData[8]),
    .X(net33));
 sky130_fd_sc_hd__clkbuf_2 input34 (.A(FrameData[9]),
    .X(net34));
 sky130_fd_sc_hd__clkbuf_2 input35 (.A(N1END[0]),
    .X(net35));
 sky130_fd_sc_hd__clkbuf_2 input36 (.A(N1END[1]),
    .X(net36));
 sky130_fd_sc_hd__buf_1 input37 (.A(N1END[2]),
    .X(net37));
 sky130_fd_sc_hd__clkbuf_2 input38 (.A(N1END[3]),
    .X(net38));
 sky130_fd_sc_hd__clkbuf_2 input39 (.A(N2END[0]),
    .X(net39));
 sky130_fd_sc_hd__buf_1 input40 (.A(N2END[1]),
    .X(net40));
 sky130_fd_sc_hd__buf_1 input41 (.A(N2END[2]),
    .X(net41));
 sky130_fd_sc_hd__buf_1 input42 (.A(N2END[3]),
    .X(net42));
 sky130_fd_sc_hd__buf_1 input43 (.A(N2END[4]),
    .X(net43));
 sky130_fd_sc_hd__dlymetal6s2s_1 input44 (.A(N2END[5]),
    .X(net44));
 sky130_fd_sc_hd__buf_1 input45 (.A(N2END[6]),
    .X(net45));
 sky130_fd_sc_hd__buf_1 input46 (.A(N2END[7]),
    .X(net46));
 sky130_fd_sc_hd__buf_1 input47 (.A(N2MID[0]),
    .X(net47));
 sky130_fd_sc_hd__buf_1 input48 (.A(N2MID[1]),
    .X(net48));
 sky130_fd_sc_hd__buf_1 input49 (.A(N2MID[2]),
    .X(net49));
 sky130_fd_sc_hd__buf_1 input50 (.A(N2MID[3]),
    .X(net50));
 sky130_fd_sc_hd__clkbuf_1 input51 (.A(N2MID[4]),
    .X(net51));
 sky130_fd_sc_hd__dlymetal6s2s_1 input52 (.A(N2MID[5]),
    .X(net69));
 sky130_fd_sc_hd__buf_1 input53 (.A(N2MID[6]),
    .X(net70));
 sky130_fd_sc_hd__dlymetal6s2s_1 input54 (.A(N2MID[7]),
    .X(net71));
 sky130_fd_sc_hd__clkbuf_2 input55 (.A(N4END[0]),
    .X(net72));
 sky130_fd_sc_hd__dlymetal6s2s_1 input56 (.A(N4END[10]),
    .X(net73));
 sky130_fd_sc_hd__buf_1 input57 (.A(N4END[11]),
    .X(net74));
 sky130_fd_sc_hd__buf_1 input58 (.A(N4END[12]),
    .X(net75));
 sky130_fd_sc_hd__buf_1 input59 (.A(N4END[13]),
    .X(net76));
 sky130_fd_sc_hd__buf_1 input60 (.A(N4END[14]),
    .X(net77));
 sky130_fd_sc_hd__clkbuf_1 input61 (.A(N4END[15]),
    .X(net78));
 sky130_fd_sc_hd__clkbuf_2 input62 (.A(N4END[1]),
    .X(net79));
 sky130_fd_sc_hd__dlymetal6s2s_1 input63 (.A(N4END[2]),
    .X(net80));
 sky130_fd_sc_hd__clkbuf_2 input64 (.A(N4END[3]),
    .X(net81));
 sky130_fd_sc_hd__clkbuf_2 input65 (.A(N4END[4]),
    .X(net82));
 sky130_fd_sc_hd__clkbuf_2 input66 (.A(N4END[5]),
    .X(net83));
 sky130_fd_sc_hd__clkbuf_2 input67 (.A(N4END[6]),
    .X(net84));
 sky130_fd_sc_hd__clkbuf_2 input68 (.A(N4END[7]),
    .X(net85));
 sky130_fd_sc_hd__dlymetal6s2s_1 input69 (.A(N4END[8]),
    .X(net86));
 sky130_fd_sc_hd__buf_1 input70 (.A(N4END[9]),
    .X(net87));
 sky130_fd_sc_hd__buf_1 input71 (.A(NN4END[0]),
    .X(net88));
 sky130_fd_sc_hd__buf_1 input72 (.A(NN4END[10]),
    .X(net89));
 sky130_fd_sc_hd__buf_1 input73 (.A(NN4END[11]),
    .X(net90));
 sky130_fd_sc_hd__clkbuf_2 input74 (.A(NN4END[12]),
    .X(net91));
 sky130_fd_sc_hd__dlymetal6s2s_1 input75 (.A(NN4END[13]),
    .X(net92));
 sky130_fd_sc_hd__dlymetal6s2s_1 input76 (.A(NN4END[14]),
    .X(net93));
 sky130_fd_sc_hd__buf_1 input77 (.A(NN4END[15]),
    .X(net94));
 sky130_fd_sc_hd__buf_1 input78 (.A(NN4END[1]),
    .X(net95));
 sky130_fd_sc_hd__buf_1 input79 (.A(NN4END[2]),
    .X(net96));
 sky130_fd_sc_hd__buf_1 input80 (.A(NN4END[3]),
    .X(net97));
 sky130_fd_sc_hd__clkbuf_2 input81 (.A(NN4END[4]),
    .X(net98));
 sky130_fd_sc_hd__buf_1 input82 (.A(NN4END[5]),
    .X(net99));
 sky130_fd_sc_hd__buf_1 input83 (.A(NN4END[6]),
    .X(net100));
 sky130_fd_sc_hd__buf_1 input84 (.A(NN4END[7]),
    .X(net101));
 sky130_fd_sc_hd__buf_1 input85 (.A(NN4END[8]),
    .X(net102));
 sky130_fd_sc_hd__buf_1 input86 (.A(NN4END[9]),
    .X(net103));
 sky130_fd_sc_hd__buf_2 output87 (.A(net104),
    .X(A_I_top));
 sky130_fd_sc_hd__buf_2 output88 (.A(net105),
    .X(A_T_top));
 sky130_fd_sc_hd__buf_2 output89 (.A(net106),
    .X(A_config_C_bit0));
 sky130_fd_sc_hd__buf_2 output90 (.A(net107),
    .X(A_config_C_bit1));
 sky130_fd_sc_hd__buf_2 output91 (.A(net108),
    .X(A_config_C_bit2));
 sky130_fd_sc_hd__buf_2 output92 (.A(net109),
    .X(A_config_C_bit3));
 sky130_fd_sc_hd__buf_2 output93 (.A(net110),
    .X(B_I_top));
 sky130_fd_sc_hd__buf_2 output94 (.A(net111),
    .X(B_T_top));
 sky130_fd_sc_hd__buf_2 output95 (.A(net112),
    .X(B_config_C_bit0));
 sky130_fd_sc_hd__buf_2 output96 (.A(net113),
    .X(B_config_C_bit1));
 sky130_fd_sc_hd__buf_2 output97 (.A(net114),
    .X(B_config_C_bit2));
 sky130_fd_sc_hd__buf_2 output98 (.A(net115),
    .X(B_config_C_bit3));
 sky130_fd_sc_hd__buf_2 output99 (.A(net116),
    .X(FrameData_O[0]));
 sky130_fd_sc_hd__buf_2 output100 (.A(net117),
    .X(FrameData_O[10]));
 sky130_fd_sc_hd__buf_2 output101 (.A(net118),
    .X(FrameData_O[11]));
 sky130_fd_sc_hd__buf_2 output102 (.A(net119),
    .X(FrameData_O[12]));
 sky130_fd_sc_hd__buf_2 output103 (.A(net120),
    .X(FrameData_O[13]));
 sky130_fd_sc_hd__buf_2 output104 (.A(net121),
    .X(FrameData_O[14]));
 sky130_fd_sc_hd__buf_2 output105 (.A(net122),
    .X(FrameData_O[15]));
 sky130_fd_sc_hd__buf_2 output106 (.A(net123),
    .X(FrameData_O[16]));
 sky130_fd_sc_hd__buf_2 output107 (.A(net124),
    .X(FrameData_O[17]));
 sky130_fd_sc_hd__buf_2 output108 (.A(net125),
    .X(FrameData_O[18]));
 sky130_fd_sc_hd__buf_2 output109 (.A(net126),
    .X(FrameData_O[19]));
 sky130_fd_sc_hd__buf_2 output110 (.A(net127),
    .X(FrameData_O[1]));
 sky130_fd_sc_hd__buf_2 output111 (.A(net128),
    .X(FrameData_O[20]));
 sky130_fd_sc_hd__buf_2 output112 (.A(net129),
    .X(FrameData_O[21]));
 sky130_fd_sc_hd__buf_2 output113 (.A(net130),
    .X(FrameData_O[22]));
 sky130_fd_sc_hd__buf_2 output114 (.A(net131),
    .X(FrameData_O[23]));
 sky130_fd_sc_hd__buf_2 output115 (.A(net132),
    .X(FrameData_O[24]));
 sky130_fd_sc_hd__buf_2 output116 (.A(net133),
    .X(FrameData_O[25]));
 sky130_fd_sc_hd__buf_2 output117 (.A(net134),
    .X(FrameData_O[26]));
 sky130_fd_sc_hd__buf_2 output118 (.A(net135),
    .X(FrameData_O[27]));
 sky130_fd_sc_hd__buf_2 output119 (.A(net136),
    .X(FrameData_O[28]));
 sky130_fd_sc_hd__buf_2 output120 (.A(net137),
    .X(FrameData_O[29]));
 sky130_fd_sc_hd__buf_2 output121 (.A(net138),
    .X(FrameData_O[2]));
 sky130_fd_sc_hd__buf_2 output122 (.A(net139),
    .X(FrameData_O[30]));
 sky130_fd_sc_hd__buf_2 output123 (.A(net140),
    .X(FrameData_O[31]));
 sky130_fd_sc_hd__buf_2 output124 (.A(net141),
    .X(FrameData_O[3]));
 sky130_fd_sc_hd__buf_2 output125 (.A(net142),
    .X(FrameData_O[4]));
 sky130_fd_sc_hd__buf_2 output126 (.A(net143),
    .X(FrameData_O[5]));
 sky130_fd_sc_hd__buf_2 output127 (.A(net144),
    .X(FrameData_O[6]));
 sky130_fd_sc_hd__buf_2 output128 (.A(net145),
    .X(FrameData_O[7]));
 sky130_fd_sc_hd__buf_2 output129 (.A(net146),
    .X(FrameData_O[8]));
 sky130_fd_sc_hd__buf_2 output130 (.A(net147),
    .X(FrameData_O[9]));
 sky130_fd_sc_hd__buf_2 output131 (.A(net148),
    .X(FrameStrobe_O[0]));
 sky130_fd_sc_hd__buf_2 output132 (.A(net149),
    .X(FrameStrobe_O[10]));
 sky130_fd_sc_hd__buf_2 output133 (.A(net150),
    .X(FrameStrobe_O[11]));
 sky130_fd_sc_hd__buf_2 output134 (.A(net151),
    .X(FrameStrobe_O[12]));
 sky130_fd_sc_hd__buf_2 output135 (.A(net152),
    .X(FrameStrobe_O[13]));
 sky130_fd_sc_hd__buf_2 output136 (.A(net153),
    .X(FrameStrobe_O[14]));
 sky130_fd_sc_hd__buf_2 output137 (.A(net154),
    .X(FrameStrobe_O[15]));
 sky130_fd_sc_hd__buf_2 output138 (.A(net155),
    .X(FrameStrobe_O[16]));
 sky130_fd_sc_hd__buf_2 output139 (.A(net156),
    .X(FrameStrobe_O[17]));
 sky130_fd_sc_hd__buf_2 output140 (.A(net157),
    .X(FrameStrobe_O[18]));
 sky130_fd_sc_hd__buf_2 output141 (.A(net158),
    .X(FrameStrobe_O[19]));
 sky130_fd_sc_hd__buf_2 output142 (.A(net159),
    .X(FrameStrobe_O[1]));
 sky130_fd_sc_hd__buf_2 output143 (.A(net160),
    .X(FrameStrobe_O[2]));
 sky130_fd_sc_hd__buf_2 output144 (.A(net161),
    .X(FrameStrobe_O[3]));
 sky130_fd_sc_hd__buf_2 output145 (.A(net162),
    .X(FrameStrobe_O[4]));
 sky130_fd_sc_hd__buf_2 output146 (.A(net163),
    .X(FrameStrobe_O[5]));
 sky130_fd_sc_hd__buf_2 output147 (.A(net164),
    .X(FrameStrobe_O[6]));
 sky130_fd_sc_hd__buf_2 output148 (.A(net165),
    .X(FrameStrobe_O[7]));
 sky130_fd_sc_hd__buf_2 output149 (.A(net166),
    .X(FrameStrobe_O[8]));
 sky130_fd_sc_hd__buf_2 output150 (.A(net167),
    .X(FrameStrobe_O[9]));
 sky130_fd_sc_hd__buf_2 output151 (.A(net168),
    .X(S1BEG[0]));
 sky130_fd_sc_hd__buf_2 output152 (.A(net169),
    .X(S1BEG[1]));
 sky130_fd_sc_hd__buf_2 output153 (.A(net170),
    .X(S1BEG[2]));
 sky130_fd_sc_hd__buf_2 output154 (.A(net171),
    .X(S1BEG[3]));
 sky130_fd_sc_hd__buf_2 output155 (.A(net172),
    .X(S2BEG[0]));
 sky130_fd_sc_hd__buf_2 output156 (.A(net173),
    .X(S2BEG[1]));
 sky130_fd_sc_hd__buf_2 output157 (.A(net174),
    .X(S2BEG[2]));
 sky130_fd_sc_hd__buf_2 output158 (.A(net175),
    .X(S2BEG[3]));
 sky130_fd_sc_hd__buf_2 output159 (.A(net176),
    .X(S2BEG[4]));
 sky130_fd_sc_hd__buf_2 output160 (.A(net177),
    .X(S2BEG[5]));
 sky130_fd_sc_hd__buf_2 output161 (.A(net178),
    .X(S2BEG[6]));
 sky130_fd_sc_hd__buf_2 output162 (.A(net179),
    .X(S2BEG[7]));
 sky130_fd_sc_hd__buf_2 output163 (.A(net180),
    .X(S2BEGb[0]));
 sky130_fd_sc_hd__buf_2 output164 (.A(net181),
    .X(S2BEGb[1]));
 sky130_fd_sc_hd__buf_2 output165 (.A(net182),
    .X(S2BEGb[2]));
 sky130_fd_sc_hd__buf_2 output166 (.A(net183),
    .X(S2BEGb[3]));
 sky130_fd_sc_hd__buf_2 output167 (.A(net184),
    .X(S2BEGb[4]));
 sky130_fd_sc_hd__buf_2 output168 (.A(net185),
    .X(S2BEGb[5]));
 sky130_fd_sc_hd__buf_2 output169 (.A(net186),
    .X(S2BEGb[6]));
 sky130_fd_sc_hd__buf_2 output170 (.A(net187),
    .X(S2BEGb[7]));
 sky130_fd_sc_hd__buf_2 output171 (.A(net188),
    .X(S4BEG[0]));
 sky130_fd_sc_hd__buf_2 output172 (.A(net189),
    .X(S4BEG[10]));
 sky130_fd_sc_hd__buf_2 output173 (.A(net190),
    .X(S4BEG[11]));
 sky130_fd_sc_hd__buf_2 output174 (.A(net191),
    .X(S4BEG[12]));
 sky130_fd_sc_hd__buf_2 output175 (.A(net192),
    .X(S4BEG[13]));
 sky130_fd_sc_hd__buf_2 output176 (.A(net193),
    .X(S4BEG[14]));
 sky130_fd_sc_hd__buf_2 output177 (.A(net194),
    .X(S4BEG[15]));
 sky130_fd_sc_hd__buf_2 output178 (.A(net195),
    .X(S4BEG[1]));
 sky130_fd_sc_hd__buf_2 output179 (.A(net196),
    .X(S4BEG[2]));
 sky130_fd_sc_hd__buf_2 output180 (.A(net197),
    .X(S4BEG[3]));
 sky130_fd_sc_hd__buf_2 output181 (.A(net198),
    .X(S4BEG[4]));
 sky130_fd_sc_hd__buf_2 output182 (.A(net199),
    .X(S4BEG[5]));
 sky130_fd_sc_hd__buf_2 output183 (.A(net200),
    .X(S4BEG[6]));
 sky130_fd_sc_hd__buf_2 output184 (.A(net201),
    .X(S4BEG[7]));
 sky130_fd_sc_hd__buf_2 output185 (.A(net202),
    .X(S4BEG[8]));
 sky130_fd_sc_hd__buf_2 output186 (.A(net203),
    .X(S4BEG[9]));
 sky130_fd_sc_hd__buf_2 output187 (.A(net204),
    .X(SS4BEG[0]));
 sky130_fd_sc_hd__buf_2 output188 (.A(net205),
    .X(SS4BEG[10]));
 sky130_fd_sc_hd__buf_2 output189 (.A(net206),
    .X(SS4BEG[11]));
 sky130_fd_sc_hd__buf_2 output190 (.A(net207),
    .X(SS4BEG[12]));
 sky130_fd_sc_hd__buf_2 output191 (.A(net208),
    .X(SS4BEG[13]));
 sky130_fd_sc_hd__buf_2 output192 (.A(net209),
    .X(SS4BEG[14]));
 sky130_fd_sc_hd__buf_2 output193 (.A(net210),
    .X(SS4BEG[15]));
 sky130_fd_sc_hd__buf_2 output194 (.A(net211),
    .X(SS4BEG[1]));
 sky130_fd_sc_hd__buf_2 output195 (.A(net212),
    .X(SS4BEG[2]));
 sky130_fd_sc_hd__buf_2 output196 (.A(net213),
    .X(SS4BEG[3]));
 sky130_fd_sc_hd__buf_2 output197 (.A(net214),
    .X(SS4BEG[4]));
 sky130_fd_sc_hd__buf_2 output198 (.A(net215),
    .X(SS4BEG[5]));
 sky130_fd_sc_hd__buf_2 output199 (.A(net216),
    .X(SS4BEG[6]));
 sky130_fd_sc_hd__buf_2 output200 (.A(net217),
    .X(SS4BEG[7]));
 sky130_fd_sc_hd__buf_2 output201 (.A(net218),
    .X(SS4BEG[8]));
 sky130_fd_sc_hd__buf_2 output202 (.A(net219),
    .X(SS4BEG[9]));
 sky130_fd_sc_hd__buf_1 output203 (.A(net220),
    .X(UserCLKo));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_0_UserCLK (.A(UserCLK),
    .X(UserCLK_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_UserCLK (.A(UserCLK),
    .X(clknet_0_UserCLK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_UserCLK (.A(clknet_0_UserCLK),
    .X(clknet_1_0__leaf_UserCLK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_UserCLK_regs (.A(UserCLK_regs),
    .X(clknet_0_UserCLK_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_UserCLK_regs (.A(clknet_0_UserCLK_regs),
    .X(clknet_1_0__leaf_UserCLK_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_UserCLK_regs (.A(clknet_0_UserCLK_regs),
    .X(clknet_1_1__leaf_UserCLK_regs));
 sky130_fd_sc_hd__diode_2 ANTENNA_1 (.DIODE(net129));
 sky130_fd_sc_hd__diode_2 ANTENNA_2 (.DIODE(net130));
 sky130_fd_sc_hd__diode_2 ANTENNA_3 (.DIODE(net131));
 sky130_fd_sc_hd__diode_2 ANTENNA_4 (.DIODE(net139));
 sky130_fd_sc_hd__diode_2 ANTENNA_5 (.DIODE(net143));
 sky130_fd_sc_hd__diode_2 ANTENNA_6 (.DIODE(FrameStrobe[0]));
 sky130_fd_sc_hd__diode_2 ANTENNA_7 (.DIODE(FrameStrobe[1]));
 sky130_fd_sc_hd__diode_2 ANTENNA_8 (.DIODE(FrameStrobe[3]));
 sky130_fd_sc_hd__diode_2 ANTENNA_9 (.DIODE(net215));
 sky130_fd_sc_hd__diode_2 ANTENNA_10 (.DIODE(net217));
 sky130_fd_sc_hd__diode_2 ANTENNA_11 (.DIODE(net98));
 sky130_fd_sc_hd__diode_2 ANTENNA_12 (.DIODE(net8));
 sky130_fd_sc_hd__diode_2 ANTENNA_13 (.DIODE(net8));
 sky130_fd_sc_hd__fill_1 FILLER_0_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_34 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_261 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_278 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_321 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_335 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_353 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_384 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_393 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_397 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_67 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_235 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_335 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_386 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_393 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_397 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_33 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_218 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_251 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_253 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_266 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_362 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_369 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_390 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_402 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_409 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_133 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_146 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_259 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_345 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_389 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_393 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_405 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_409 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_131 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_209 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_218 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_251 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_307 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_309 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_313 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_326 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_362 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_385 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_391 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_403 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_409 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_61 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_169 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_228 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_233 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_247 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_258 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_281 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_286 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_314 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_321 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_334 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_382 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_390 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_393 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_405 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_409 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_162 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_201 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_224 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_230 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_307 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_333 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_343 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_388 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_400 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_404 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_408 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_116 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_184 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_218 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_274 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_329 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_337 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_383 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_391 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_393 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_401 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_128 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_168 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_187 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_195 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_200 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_204 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_209 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_234 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_247 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_251 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_257 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_261 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_298 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_306 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_330 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_334 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_363 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_380 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_392 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_409 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_47 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_98 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_167 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_204 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_220 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_225 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_275 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_279 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_281 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_316 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_320 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_358 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_374 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_386 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_393 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_400 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_410 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_41 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_79 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_138 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_147 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_188 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_197 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_202 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_210 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_246 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_282 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_312 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_316 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_324 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_353 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_361 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_377 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_381 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_385 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_394 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_17 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_61 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_89 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_111 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_123 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_145 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_155 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_192 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_197 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_203 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_207 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_269 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_275 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_279 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_281 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_307 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_317 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_323 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_341 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_347 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_359 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_363 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_365 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_383 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_397 ();
endmodule
